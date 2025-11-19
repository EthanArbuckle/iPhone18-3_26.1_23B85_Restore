uint64_t sub_1E5AFE100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5AFE150(uint64_t a1)
{
  sub_1E5AF9EA8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_getFunctionTypeMetadata1();
      sub_1E5B3CB74();
      if (v6 <= 0x3F)
      {
        v8 = *(a1 + 32);
        type metadata accessor for TVLibraryView.FocusedView();
        sub_1E5B3DB94();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1E5B3CDC4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5AFE304(char a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1E5AFE33C(unsigned __int8 *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1);
}

__n128 LibraryGalleryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t LibraryGalleryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A30, &unk_1E5B3FFC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  if (*a4 != 1)
  {
    return result;
  }

  v15 = *v4;
  v14 = v4[1];
  if (*(a2 + 2) <= 3u)
  {
    *(a2 + 2);
    goto LABEL_8;
  }

  if (*(a2 + 2) != 6)
  {
LABEL_8:
    v16 = sub_1E5B3DDA4();

    if ((v16 & 1) == 0)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
      v18 = v17[12];
      v19 = v17[16];
      v20 = v17[20];
      v21 = &v13[v17[24]];
      sub_1E5AFE784();
      sub_1E5B3DBC4();
      sub_1E5B3DAC4();
      v22 = *MEMORY[0x1E6999B50];
      v23 = sub_1E5B3D8E4();
      (*(*(v23 - 8) + 104))(&v13[v19], v22, v23);
      v24 = *MEMORY[0x1E6999B40];
      v25 = sub_1E5B3D8D4();
      (*(*(v25 - 8) + 104))(&v13[v20], v24, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = v15;
      *(v26 + 24) = v14;
      *v21 = &unk_1E5B3FFD8;
      *(v21 + 1) = v26;
      (*(v9 + 104))(v13, *MEMORY[0x1E6999AD8], v8);
      v27 = *a3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1E5AF67C0(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1E5AF67C0(v28 > 1, v29 + 1, 1, v27);
      }

      v27[2] = v29 + 1;
      result = (*(v9 + 32))(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, v13, v8);
      *a3 = v27;
    }

    return result;
  }
}

unint64_t sub_1E5AFE784()
{
  result = qword_1ED031B28;
  if (!qword_1ED031B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B28);
  }

  return result;
}

uint64_t sub_1E5AFE7D8(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5B3DAB4();
  v2[3] = sub_1E5B3DAA4();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E5AF6058;

  return v7(0);
}

uint64_t sub_1E5AFE8EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5AF632C;

  return sub_1E5AFE7D8(a1, v5);
}

unint64_t sub_1E5AFE9A0()
{
  result = qword_1ED031B30;
  if (!qword_1ED031B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B30);
  }

  return result;
}

unint64_t sub_1E5AFE9F8()
{
  result = qword_1ED031B38;
  if (!qword_1ED031B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B38);
  }

  return result;
}

unint64_t sub_1E5AFEA50()
{
  result = qword_1ED031B40;
  if (!qword_1ED031B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B40);
  }

  return result;
}

unint64_t sub_1E5AFEAC8()
{
  result = qword_1ED031B48;
  if (!qword_1ED031B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B48);
  }

  return result;
}

uint64_t sub_1E5AFEB1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x796C746E65636572;
    v10 = 0xED00006465646441;
    if (a1 != 6)
    {
      v9 = 0x656E696C66666FLL;
      v10 = 0xE700000000000000;
    }

    v11 = 0xD000000000000014;
    v12 = 0x80000001E5B45B90;
    if (a1 != 4)
    {
      v11 = 0x64616F6C6E776F64;
      v12 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736B63617473;
    if (a1 != 2)
    {
      v5 = 0x736D6172676F7270;
      v4 = 0xE800000000000000;
    }

    v6 = 0x697461746964656DLL;
    if (a1)
    {
      v3 = 0xEB00000000736E6FLL;
    }

    else
    {
      v6 = 0x7374756F6B726F77;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00006465646441;
        if (v7 != 0x796C746E65636572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x656E696C66666FLL)
        {
LABEL_47:
          v14 = sub_1E5B3DDA4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000001E5B45B90;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEA00000000006465;
      if (v7 != 0x64616F6C6E776F64)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x736B63617473)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x736D6172676F7270)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v7 != 0x697461746964656DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x7374756F6B726F77)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1E5AFEDC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6172676F7270;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x74756F6B726F77;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x80000001E5B45C10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6B63617473;
    }

    else
    {
      v5 = 0x6D6172676F7270;
    }

    if (v3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x74756F6B726F77;
  v8 = 0x80000001E5B45C10;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v2 = 0x6B63617473;
    v4 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E5B3DDA4();
  }

  return v11 & 1;
}

_WORD *LibraryGalleryState.init(layout:page:)@<X0>(_WORD *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 2) = a2;
  return result;
}

uint64_t sub_1E5AFEF08()
{
  if (*v0)
  {
    result = 1701273968;
  }

  else
  {
    result = 0x74756F79616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E5AFEF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AFF010(uint64_t a1)
{
  v2 = sub_1E5AFF228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFF04C(uint64_t a1)
{
  v2 = sub_1E5AFF228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryGalleryState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B50, &qword_1E5B40100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 2);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFF228();
  sub_1E5B3DE14();
  v17 = v9;
  v16 = 0;
  sub_1E5AFBAC4();
  sub_1E5B3DD74();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E5AFF228()
{
  result = qword_1ED031B58;
  if (!qword_1ED031B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B58);
  }

  return result;
}

uint64_t LibraryGalleryState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B60, &qword_1E5B40108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFF228();
  sub_1E5B3DE04();
  if (!v2)
  {
    v18 = 0;
    sub_1E5AFC010();
    sub_1E5B3DCF4();
    v11 = v19;
    v12 = v20;
    v16 = 1;
    sub_1E5AFBF78();
    sub_1E5B3DCF4();
    (*(v6 + 8))(v9, v5);
    v13 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static LibraryGalleryState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  v4 = a1[1];
  v5 = a2[1];
  if ((sub_1E5B3CCB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5AFEB1C(v2, v3);
}

uint64_t sub_1E5AFF4F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  v4 = a1[1];
  v5 = a2[1];
  if ((sub_1E5B3CCB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5AFEB1C(v2, v3);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryGalleryState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryGalleryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1E5AFF694()
{
  result = qword_1ED031B68;
  if (!qword_1ED031B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B68);
  }

  return result;
}

unint64_t sub_1E5AFF6EC()
{
  result = qword_1ED031B70;
  if (!qword_1ED031B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B70);
  }

  return result;
}

unint64_t sub_1E5AFF744()
{
  result = qword_1ED031B78;
  if (!qword_1ED031B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B78);
  }

  return result;
}

uint64_t sub_1E5AFF798()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_1E5AFF7CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_1E5AFF800()
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

uint64_t sub_1E5AFF834()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_1E5AFF88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x684374756F79616CLL && a2 == 0xED00006465676E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFF91C(uint64_t a1)
{
  v2 = sub_1E5AFFCB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFF958(uint64_t a1)
{
  v2 = sub_1E5AFFCB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AFF9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFFA2C(uint64_t a1)
{
  v2 = sub_1E5AFFD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFFA68(uint64_t a1)
{
  v2 = sub_1E5AFFD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryGalleryAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B80, &qword_1E5B402D0);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031B88, &qword_1E5B402D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFFCB4();
  sub_1E5B3DE14();
  sub_1E5AFFD08();
  sub_1E5B3DD24();
  v20 = v13;
  sub_1E5AFBAC4();
  v15 = v18;
  sub_1E5B3DD74();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1E5AFFCB4()
{
  result = qword_1ED031B90;
  if (!qword_1ED031B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B90);
  }

  return result;
}

unint64_t sub_1E5AFFD08()
{
  result = qword_1ED031B98;
  if (!qword_1ED031B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B98);
  }

  return result;
}

uint64_t LibraryGalleryAction.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BA0, &qword_1E5B402E0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BA8, &qword_1E5B402E8);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFFCB4();
  sub_1E5B3DE04();
  if (v2)
  {
    goto LABEL_5;
  }

  v23 = a1;
  v24 = v8;
  v13 = v27;
  if (*(sub_1E5B3DD04() + 16) != 1)
  {
    v15 = sub_1E5B3DC04();
    swift_allocError();
    v16 = v13;
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v18 = &type metadata for LibraryGalleryAction;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v24 + 8))(v11, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_5:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_1E5AFFD08();
  sub_1E5B3DC94();
  v14 = v24;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  (*(v26 + 8))(v7, v4);
  (*(v14 + 8))(v11, v13);
  swift_unknownObjectRelease();
  *v25 = v28;
  v21 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1E5B00140()
{
  result = qword_1ED031BB0;
  if (!qword_1ED031BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BB0);
  }

  return result;
}

unint64_t sub_1E5B00198()
{
  result = qword_1ED031BB8;
  if (!qword_1ED031BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BB8);
  }

  return result;
}

unint64_t sub_1E5B001F0()
{
  result = qword_1ED031BC0;
  if (!qword_1ED031BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BC0);
  }

  return result;
}

unint64_t sub_1E5B00248()
{
  result = qword_1ED031BC8;
  if (!qword_1ED031BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BC8);
  }

  return result;
}

unint64_t sub_1E5B002A0()
{
  result = qword_1ED031BD0;
  if (!qword_1ED031BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BD0);
  }

  return result;
}

unint64_t sub_1E5B002F8()
{
  result = qword_1ED031BD8;
  if (!qword_1ED031BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031BD8);
  }

  return result;
}

uint64_t LibraryGalleryEnvironment.init(popCurrentView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1E5B00370()
{
  v1 = 0x6168437375636F66;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x684374756F79616CLL;
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

uint64_t sub_1E5B00404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B01FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B00438(uint64_t a1)
{
  v2 = sub_1E5B00EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00474(uint64_t a1)
{
  v2 = sub_1E5B00EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B004D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5064657375636F66 && a2 == 0xEB00000000656761)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B0055C(uint64_t a1)
{
  v2 = sub_1E5B00FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00598(uint64_t a1)
{
  v2 = sub_1E5B00FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B005F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F79614C77656ELL && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B00680(uint64_t a1)
{
  v2 = sub_1E5B00FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B006BC(uint64_t a1)
{
  v2 = sub_1E5B00FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B006F8(uint64_t a1)
{
  v2 = sub_1E5B00F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00734(uint64_t a1)
{
  v2 = sub_1E5B00F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B00770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B00854(uint64_t a1)
{
  v2 = sub_1E5B00EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B00890(uint64_t a1)
{
  v2 = sub_1E5B00EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BE0, &qword_1E5B405F0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BE8, &qword_1E5B405F8);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BF0, &qword_1E5B40600);
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031BF8, &qword_1E5B40608);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C00, &qword_1E5B40610);
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v43 = *v2;
  v22 = *(v2 + 2);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B00EA4();
  sub_1E5B3DE14();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1E5B00F4C();
      v26 = v37;
      v27 = v46;
      sub_1E5B3DD24();
      v28 = BYTE1(v43);
      v54 = v43;
      v53 = 0;
      sub_1E5AFBA70();
      v29 = v39;
      v30 = v44;
      sub_1E5B3DD74();
      if (!v30)
      {
        v52 = v28;
        v51 = 1;
        sub_1E5AEE494();
        sub_1E5B3DD74();
      }

      v31 = v38;
    }

    else
    {
      v60 = 3;
      sub_1E5B00EF8();
      v26 = v40;
      v27 = v46;
      sub_1E5B3DD24();
      v32 = BYTE1(v43);
      v59 = v43;
      v58 = 0;
      sub_1E5AFBA70();
      v29 = v42;
      v33 = v44;
      sub_1E5B3DD74();
      if (!v33)
      {
        v57 = v32;
        v56 = 1;
        sub_1E5AEE494();
        sub_1E5B3DD74();
      }

      v31 = v41;
    }

    (*(v31 + 8))(v26, v29);
  }

  else
  {
    if (!v22)
    {
      v48 = 0;
      sub_1E5B00FF4();
      v24 = v46;
      sub_1E5B3DD24();
      v47 = v43;
      sub_1E5AFBA70();
      sub_1E5B3DD74();
      (*(v35 + 8))(v17, v14);
      return (*(v45 + 8))(v21, v24);
    }

    v50 = 1;
    sub_1E5B00FA0();
    v27 = v46;
    sub_1E5B3DD24();
    v49 = v43;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    (*(v36 + 8))(v13, v10);
  }

  return (*(v45 + 8))(v21, v27);
}

unint64_t sub_1E5B00EA4()
{
  result = qword_1ED031C08;
  if (!qword_1ED031C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C08);
  }

  return result;
}

unint64_t sub_1E5B00EF8()
{
  result = qword_1ED031C10;
  if (!qword_1ED031C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C10);
  }

  return result;
}

unint64_t sub_1E5B00F4C()
{
  result = qword_1ED031C18;
  if (!qword_1ED031C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C18);
  }

  return result;
}

unint64_t sub_1E5B00FA0()
{
  result = qword_1ED031C20;
  if (!qword_1ED031C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C20);
  }

  return result;
}

unint64_t sub_1E5B00FF4()
{
  result = qword_1ED031C28;
  if (!qword_1ED031C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C28);
  }

  return result;
}

uint64_t LibraryAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C30, &qword_1E5B40618);
  v63 = *(v61 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v54 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C38, &qword_1E5B40620);
  v62 = *(v60 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C40, &qword_1E5B40628);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C48, &qword_1E5B40630);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031C50, &unk_1E5B40638);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5B00EA4();
  v23 = v67;
  sub_1E5B3DE04();
  if (!v23)
  {
    v54 = v15;
    v55 = v11;
    v24 = v64;
    v25 = v65;
    v56 = 0;
    v67 = v17;
    v26 = v66;
    v27 = v20;
    v28 = sub_1E5B3DD04();
    v29 = (2 * *(v28 + 16)) | 1;
    v69 = v28;
    v70 = v28 + 32;
    v71 = 0;
    v72 = v29;
    v30 = sub_1E5B00350();
    v31 = v16;
    if (v30 == 4 || v71 != v72 >> 1)
    {
      v35 = sub_1E5B3DC04();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
      *v37 = &type metadata for LibraryAction;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v67 + 8))(v27, v16);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v68);
    }

    v73 = v30;
    if (v30 <= 1u)
    {
      v32 = v20;
      if (v30)
      {
        LOBYTE(v74) = 1;
        sub_1E5B00FA0();
        v47 = v55;
        v46 = v56;
        sub_1E5B3DC94();
        if (v46)
        {
LABEL_15:
          (*(v67 + 8))(v20, v31);
          goto LABEL_9;
        }

        sub_1E5AFC010();
        v50 = v58;
        sub_1E5B3DCF4();
        v51 = v67;
        (*(v59 + 8))(v47, v50);
        (*(v51 + 8))(v32, v31);
        swift_unknownObjectRelease();
        v49 = v74;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_1E5B00FF4();
        v33 = v54;
        v34 = v56;
        sub_1E5B3DC94();
        if (v34)
        {
          goto LABEL_15;
        }

        sub_1E5AFBF78();
        sub_1E5B3DCF4();
        (*(v57 + 8))(v33, v12);
        (*(v67 + 8))(v20, v31);
        swift_unknownObjectRelease();
        v49 = v74;
      }

LABEL_22:
      *v26 = v49;
      *(v26 + 2) = v73;
      return __swift_destroy_boxed_opaque_existential_1(v68);
    }

    v40 = v67;
    v41 = v20;
    if (v30 == 2)
    {
      LOBYTE(v74) = 2;
      sub_1E5B00F4C();
      v42 = v24;
      v43 = v31;
      v44 = v56;
      sub_1E5B3DC94();
      if (!v44)
      {
        v76 = 0;
        sub_1E5AFBF78();
        v45 = v60;
        sub_1E5B3DCF4();
        v53 = v74;
        v75 = 1;
        sub_1E5AEE75C();
        sub_1E5B3DCF4();
        (*(v62 + 8))(v42, v45);
LABEL_21:
        (*(v40 + 8))(v41, v31);
        swift_unknownObjectRelease();
        v49 = v53 | (v76 << 8);
        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v74) = 3;
      sub_1E5B00EF8();
      v43 = v31;
      v48 = v56;
      sub_1E5B3DC94();
      if (!v48)
      {
        v76 = 0;
        sub_1E5AFBF78();
        v52 = v61;
        sub_1E5B3DCF4();
        v53 = v74;
        v75 = 1;
        sub_1E5AEE75C();
        sub_1E5B3DCF4();
        (*(v63 + 8))(v25, v52);
        goto LABEL_21;
      }
    }

    (*(v40 + 8))(v41, v43);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t getEnumTagSinglePayload for LibraryAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 >= 4)
  {
    return (v6 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1E5B01A10(unsigned __int16 *a1)
{
  result = *(a1 + 2);
  if (result >= 4)
  {
    return (*a1 | (result << 16)) - 262140;
  }

  return result;
}

uint64_t sub_1E5B01A38(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    a2 = ((a2 - 4) >> 16) + 4;
    *result = v2;
  }

  *(result + 2) = a2;
  return result;
}

unint64_t sub_1E5B01ABC()
{
  result = qword_1ED031C58;
  if (!qword_1ED031C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C58);
  }

  return result;
}

unint64_t sub_1E5B01B14()
{
  result = qword_1ED031C60;
  if (!qword_1ED031C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C60);
  }

  return result;
}

unint64_t sub_1E5B01B6C()
{
  result = qword_1ED031C68;
  if (!qword_1ED031C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C68);
  }

  return result;
}

unint64_t sub_1E5B01BC4()
{
  result = qword_1ED031C70;
  if (!qword_1ED031C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C70);
  }

  return result;
}

unint64_t sub_1E5B01C1C()
{
  result = qword_1ED031C78;
  if (!qword_1ED031C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C78);
  }

  return result;
}

unint64_t sub_1E5B01C74()
{
  result = qword_1ED031C80;
  if (!qword_1ED031C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C80);
  }

  return result;
}

unint64_t sub_1E5B01CCC()
{
  result = qword_1ED031C88;
  if (!qword_1ED031C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C88);
  }

  return result;
}

unint64_t sub_1E5B01D24()
{
  result = qword_1ED031C90;
  if (!qword_1ED031C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C90);
  }

  return result;
}

unint64_t sub_1E5B01D7C()
{
  result = qword_1ED031C98;
  if (!qword_1ED031C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031C98);
  }

  return result;
}

unint64_t sub_1E5B01DD4()
{
  result = qword_1ED031CA0;
  if (!qword_1ED031CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CA0);
  }

  return result;
}

unint64_t sub_1E5B01E2C()
{
  result = qword_1ED031CA8;
  if (!qword_1ED031CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CA8);
  }

  return result;
}

unint64_t sub_1E5B01E84()
{
  result = qword_1ED031CB0;
  if (!qword_1ED031CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CB0);
  }

  return result;
}

unint64_t sub_1E5B01EDC()
{
  result = qword_1ED031CB8;
  if (!qword_1ED031CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CB8);
  }

  return result;
}

unint64_t sub_1E5B01F34()
{
  result = qword_1ED031CC0;
  if (!qword_1ED031CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CC0);
  }

  return result;
}

unint64_t sub_1E5B01F8C()
{
  result = qword_1ED031CC8;
  if (!qword_1ED031CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CC8);
  }

  return result;
}

uint64_t sub_1E5B01FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168437375636F66 && a2 == 0xEC0000006465676ELL;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684374756F79616CLL && a2 == 0xED00006465676E61 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B46000 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B46020 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t LibraryCanvasContentView.init(store:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a4 = sub_1E5AEFB94;
  *(a4 + 8) = v8;
  *(a4 + 16) = 0;
  v9 = *(type metadata accessor for LibraryCanvasContentView() + 36);

  a3(v10);
}

uint64_t sub_1E5B02250()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D18, "R~");
  sub_1E5AF13EC(&qword_1EE2C2400, &qword_1ED031D18, "R~");

  return sub_1E5B3CE44();
}

uint64_t LibraryCanvasContentView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v107 = a2;
  v110 = sub_1E5B3CB44();
  v106 = *(v110 - 8);
  v3 = *(v106 + 64);
  v4 = MEMORY[0x1EEE9AC00](v110);
  v105 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(a1 - 8);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  v117 = *(a1 + 16);
  sub_1E5B3D164();
  sub_1E5B3D164();
  v7 = sub_1E5B3D774();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v80 - v9;
  v84 = v7;
  v10 = sub_1E5B3CF34();
  v103 = *(v10 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v80 - v12;
  v86 = v10;
  v13 = sub_1E5B3CF34();
  v104 = *(v13 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  v17 = sub_1E5B02F64();
  v18 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
  v115 = *(a1 + 24);
  v137 = v18;
  v138 = v115;
  WitnessTable = swift_getWitnessTable();
  v135 = v17;
  v136 = WitnessTable;
  v20 = swift_getWitnessTable();
  v132 = MEMORY[0x1E6981E60];
  v133 = v20;
  v134 = MEMORY[0x1E6981E60];
  v83 = swift_getWitnessTable();
  v21 = MEMORY[0x1E69805D0];
  v130 = v83;
  v131 = MEMORY[0x1E69805D0];
  v85 = swift_getWitnessTable();
  v128 = v85;
  v129 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80);
  v124 = v13;
  v125 = v16;
  v24 = v13;
  v87 = v13;
  v90 = v16;
  v126 = v22;
  v127 = v23;
  v25 = v22;
  v89 = v22;
  v26 = v23;
  v88 = v23;
  v27 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = OpaqueTypeMetadata2;
  v102 = *(OpaqueTypeMetadata2 - 8);
  v29 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v111 = &v80 - v30;
  v124 = v24;
  v125 = v16;
  v126 = v25;
  v127 = v26;
  v98 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v94 = sub_1E5B03044();
  v124 = OpaqueTypeMetadata2;
  v125 = v110;
  v126 = OpaqueTypeConformance2;
  v127 = v94;
  v99 = swift_getOpaqueTypeMetadata2();
  v100 = *(v99 - 8);
  v32 = *(v100 + 64);
  v33 = MEMORY[0x1EEE9AC00](v99);
  v91 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v97 = (&v80 - v35);
  v36 = v117;
  v37 = v115;
  v120 = v117;
  v121 = v115;
  v38 = v113;
  v122 = v113;
  v39 = v92;
  sub_1E5B3D764();
  v40 = v118;
  v108 = *(v118 + 16);
  v114 = v118 + 16;
  v41 = v112;
  v80 = a1;
  v108(v112, v38, a1);
  v116 = *(v40 + 80);
  v42 = v40;
  v43 = (v116 + 32) & ~v116;
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  *(v44 + 24) = v37;
  v45 = v36;
  v46 = v37;
  v81 = *(v42 + 32);
  v118 = v42 + 32;
  v81(v44 + v43, v41, a1);
  v47 = v93;
  v48 = v84;
  sub_1E5B3D554();

  (*(v101 + 8))(v39, v48);
  v49 = v41;
  v50 = v41;
  v51 = v113;
  v52 = v80;
  v53 = v108;
  v108(v50, v113, v80);
  v82 = v43;
  v54 = swift_allocObject();
  *(v54 + 16) = v45;
  *(v54 + 24) = v46;
  v55 = v81;
  v81(v54 + v43, v49, v52);
  v56 = v86;
  sub_1E5B3D454();

  (*(v103 + 8))(v47, v56);
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  v123 = v124;
  v57 = v112;
  v58 = v51;
  v59 = v51;
  v60 = v52;
  v53(v112, v58, v52);
  v61 = v82;
  v62 = swift_allocObject();
  v63 = v115;
  *(v62 + 16) = v117;
  *(v62 + 24) = v63;
  v55(v62 + v61, v57, v60);
  v64 = v87;
  v65 = v109;
  sub_1E5B3D574();

  (*(v104 + 8))(v65, v64);
  sub_1E5B02250();
  swift_getKeyPath();
  v66 = v105;
  sub_1E5B3D904();

  v108(v57, v59, v60);
  v67 = swift_allocObject();
  v68 = v115;
  *(v67 + 16) = v117;
  *(v67 + 24) = v68;
  v55(v67 + v61, v57, v60);
  v69 = v91;
  v70 = v96;
  v71 = v110;
  v72 = v95;
  v73 = v94;
  v74 = v111;
  sub_1E5B3D574();

  (*(v106 + 8))(v66, v71);
  (*(v102 + 8))(v74, v70);
  v124 = v70;
  v125 = v71;
  v126 = v72;
  v127 = v73;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v97;
  v77 = v99;
  sub_1E5AF144C(v97, v69, v99, v75);
  v78 = *(v100 + 8);
  v78(v69, v77);
  sub_1E5AF144C(v107, v76, v77, v75);
  return (v78)(v76, v77);
}

unint64_t sub_1E5B02F64()
{
  result = qword_1ED031CE8;
  if (!qword_1ED031CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
    sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88);
    sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031CE8);
  }

  return result;
}

unint64_t sub_1E5B03044()
{
  result = qword_1ED031D10;
  if (!qword_1ED031D10)
  {
    sub_1E5B3CB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D10);
  }

  return result;
}

uint64_t sub_1E5B0309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v85 = a4;
  v71 = *(a2 - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v70 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v69 = (&v68 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  v12 = sub_1E5B3D164();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - v17;
  v79 = v11;
  v18 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D20, &qword_1E5B40D68);
  v21 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v23 = &v68 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CF8, &qword_1E5B40C88);
  v24 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CD0, &qword_1E5B40C70);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v74 = &v68 - v29;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v31 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v27;
  v78 = v12;
  v34 = sub_1E5B3D164();
  v82 = *(v34 - 8);
  v83 = v34;
  v35 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v81 = &v68 - v36;
  v84 = a3;
  v37 = type metadata accessor for LibraryCanvasContentView();
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_1E5B02250();
    swift_getKeyPath();
    sub_1E5B3D904();

    v48 = v88;
    v49 = sub_1E5B3D114();
    if (v48 == 1)
    {
      *v26 = v49;
      *(v26 + 1) = 0;
      v26[16] = 1;
      v50 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D38, &qword_1E5B40DC0) + 44)];
      sub_1E5B3CE64();
      v51 = &qword_1ED031CF8;
      v52 = &qword_1E5B40C88;
      sub_1E5B0429C(v26, v23, &qword_1ED031CF8, &qword_1E5B40C88);
      swift_storeEnumTagMultiPayload();
      sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
      v53 = v74;
      sub_1E5B3D154();
      v54 = v26;
    }

    else
    {
      *v20 = v49;
      *(v20 + 1) = 0;
      v20[16] = 1;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D30, &qword_1E5B40D98);
      sub_1E5B03AC0(v37, &v20[*(v55 + 44)]);
      v51 = &qword_1ED031CD8;
      v52 = &qword_1E5B40C78;
      sub_1E5B0429C(v20, v23, &qword_1ED031CD8, &qword_1E5B40C78);
      swift_storeEnumTagMultiPayload();
      sub_1E5AF13EC(&qword_1ED031CF0, &qword_1ED031CF8, &qword_1E5B40C88);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
      v53 = v74;
      sub_1E5B3D154();
      v54 = v20;
    }

    sub_1E5B04304(v54, v51, v52);
    sub_1E5B02F64();
    v56 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
    v44 = v84;
    v86 = v56;
    v87 = v84;
    swift_getWitnessTable();
    v57 = v81;
    sub_1E5AF7058(v53, v80);
    sub_1E5B04304(v53, &qword_1ED031CD0, &qword_1E5B40C70);
  }

  else
  {
    v38 = *v33;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
    v40 = sub_1E5B3CB44();
    (*(*(v40 - 8) + 8))(&v33[v39], v40);
    v41 = *(v38 + 16);

    if (v41)
    {
      v42 = a1 + *(v37 + 36);
      v43 = v69;
      v44 = v84;
      sub_1E5AF144C(v69, v42, a2, v84);
      v45 = v70;
      sub_1E5AF144C(v70, v43, a2, v44);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
      v46 = v75;
      sub_1E5AF7150(v45, v79, a2);
      v47 = *(v71 + 8);
      v47(v45, a2);
      v47(v43, a2);
    }

    else
    {
      *v20 = sub_1E5B3D114();
      *(v20 + 1) = 0;
      v20[16] = 1;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D30, &qword_1E5B40D98);
      sub_1E5B03AC0(v37, &v20[*(v58 + 44)]);
      sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
      v46 = v75;
      v44 = v84;
      sub_1E5AF7058(v20, v79);
      sub_1E5B04304(v20, &qword_1ED031CD8, &qword_1E5B40C78);
    }

    v93 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
    v94 = v44;
    v59 = v78;
    WitnessTable = swift_getWitnessTable();
    v61 = v76;
    sub_1E5AF144C(v76, v46, v59, WitnessTable);
    sub_1E5B02F64();
    v57 = v81;
    sub_1E5AF7150(v61, v80, v59);
    v62 = *(v77 + 8);
    v62(v61, v59);
    v62(v46, v59);
  }

  v63 = sub_1E5B02F64();
  v91 = sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
  v92 = v44;
  v64 = swift_getWitnessTable();
  v89 = v63;
  v90 = v64;
  v65 = v83;
  v66 = swift_getWitnessTable();
  sub_1E5AF144C(v85, v57, v65, v66);
  return (*(v82 + 8))(v57, v65);
}

uint64_t sub_1E5B03AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D40, &qword_1E5B40DE8);
  sub_1E5AF13EC(&qword_1ED031D48, &qword_1ED031D40, &qword_1E5B40DE8);
  sub_1E5B3D1A4();
  MEMORY[0x1E6936190](0x62694C7974706D45, 0xED00002D79726172);
  sub_1E5B3DC24();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D50, &unk_1E5B40DF0);
  v5 = (a2 + *(result + 52));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1E5B03CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for LibraryCanvasContentView() - 8) + 80);
  return sub_1E5B03D28();
}

uint64_t sub_1E5B03D28()
{
  type metadata accessor for LibraryCanvasContentView();
  sub_1E5B02250();
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm_0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for LibraryCanvasContentView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1E5AF0DEC();
  (*(*(v2 - 8) + 8))(v0 + v4 + v3[11], v2);

  return swift_deallocObject();
}

uint64_t sub_1E5B03EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5B3D644();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B03FF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryCanvasContentView();
  sub_1E5B02250();
  swift_getKeyPath();
  sub_1E5B3D904();

  v11 = a2(v10, a1);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v18[0] = v11;
  v18[1] = v13;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  return result;
}

void sub_1E5B04170(uint64_t a1)
{
  sub_1E5B041F8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B041F8()
{
  if (!qword_1EE2C2420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D18, "R~");
    sub_1E5AF13EC(&qword_1EE2C2400, &qword_1ED031D18, "R~");
    v0 = sub_1E5B3CE54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C2420);
    }
  }
}

uint64_t sub_1E5B0429C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B04304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5B04364()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  v2 = *(v0 + 32);
  return sub_1E5B3D664();
}

uint64_t sub_1E5B043F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1E5B03FF8(*(v1 + 32), LibraryPage.emptyDescription(locale:), a1);
}

unint64_t sub_1E5B04428()
{
  result = qword_1ED031D58;
  if (!qword_1ED031D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D58);
  }

  return result;
}

uint64_t sub_1E5B0447C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1E5B03FF8(*(v1 + 32), LibraryPage.emptyTitle(locale:), a1);
}

uint64_t localizedLibraryString(_:locale:comment:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CB44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1E5B3D9E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  if (qword_1EE2C23D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE2C4020;
  (*(v5 + 16))(v8, a2, v4);
  v14 = v13;
  return sub_1E5B3DA04();
}

uint64_t sub_1E5B046D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5B3D1E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_1E5B3D1F4();
  if (sub_1E5B3D204())
  {
  }

  else
  {
    v8 = sub_1E5B3D5C4();
  }

  v9 = sub_1E5B3D2A4();
  (*(v4 + 32))(a1, v7, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D60, &qword_1E5B40E90);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

unint64_t sub_1E5B04800()
{
  result = qword_1ED031D68;
  if (!qword_1ED031D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D60, &qword_1E5B40E90);
    sub_1E5B0488C();
    sub_1E5B048E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D68);
  }

  return result;
}

unint64_t sub_1E5B0488C()
{
  result = qword_1ED031D70;
  if (!qword_1ED031D70)
  {
    sub_1E5B3D1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D70);
  }

  return result;
}

unint64_t sub_1E5B048E4()
{
  result = qword_1ED031D78;
  if (!qword_1ED031D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D80, &qword_1E5B40E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D78);
  }

  return result;
}

uint64_t LibraryCanvasContentState.init(allowedContentRatings:activeLayout:loadState:locale:page:isSubscribed:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for LibraryCanvasContentState();
  v15 = v14[9];
  *a7 = a1;
  *(a7 + 8) = v13;
  sub_1E5B04A10(a3, a7 + v14[7]);
  v16 = v14[8];
  v17 = sub_1E5B3CB44();
  result = (*(*(v17 - 8) + 32))(a7 + v16, a4, v17);
  *(a7 + 10) = a5;
  *(a7 + v15) = a6;
  return result;
}

uint64_t sub_1E5B04A10(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t LibraryCanvasContentState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryCanvasContentState() + 28);

  return sub_1E5B04B18(a1, v3);
}

uint64_t sub_1E5B04B18(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t LibraryCanvasContentState.isSubscribed.setter(char a1)
{
  result = type metadata accessor for LibraryCanvasContentState();
  *(v1 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_1E5B04C60()
{
  v1 = *v0;
  v2 = 0x614C657669746361;
  v3 = 0x7461745364616F6CLL;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x7263736275537369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701273968;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1E5B04D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B05F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B04D50(uint64_t a1)
{
  v2 = sub_1E5B05474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B04D8C(uint64_t a1)
{
  v2 = sub_1E5B05474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentState.withActiveLayout(_:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = type metadata accessor for LibraryCanvasContentState();
  sub_1E5B05C2C(v2 + v6[7], a2 + v6[7], type metadata accessor for LibraryCanvasContentLoadState);
  v7 = v6[8];
  v8 = sub_1E5B3CB44();
  (*(*(v8 - 8) + 16))(a2 + v7, v2 + v7, v8);
  v9 = *(v2 + 10);
  v10 = v6[9];
  v11 = *(v2 + v10);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 10) = v9;
  *(a2 + v10) = v11;
}

uint64_t LibraryCanvasContentState.withLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = type metadata accessor for LibraryCanvasContentState();
  sub_1E5B05C2C(v2 + v7[7], a2 + v7[7], type metadata accessor for LibraryCanvasContentLoadState);
  v8 = v7[8];
  v9 = sub_1E5B3CB44();
  (*(*(v9 - 8) + 16))(a2 + v8, a1, v9);
  v10 = *(v2 + 10);
  v11 = v7[9];
  v12 = *(v2 + v11);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 10) = v10;
  *(a2 + v11) = v12;
}

uint64_t LibraryCanvasContentState.withAllowedContentRatings(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = type metadata accessor for LibraryCanvasContentState();
  sub_1E5B05C2C(v2 + v6[7], a2 + v6[7], type metadata accessor for LibraryCanvasContentLoadState);
  v7 = v6[8];
  v8 = sub_1E5B3CB44();
  (*(*(v8 - 8) + 16))(a2 + v7, v2 + v7, v8);
  v9 = *(v2 + 10);
  v10 = v6[9];
  v11 = *(v2 + v10);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 10) = v9;
  *(a2 + v10) = v11;
}

uint64_t LibraryCanvasContentState.withSubscription(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  v7 = type metadata accessor for LibraryCanvasContentState();
  sub_1E5B05C2C(v2 + v7[7], a2 + v7[7], type metadata accessor for LibraryCanvasContentLoadState);
  v8 = v7[8];
  v9 = sub_1E5B3CB44();
  (*(*(v9 - 8) + 16))(a2 + v8, v2 + v8, v9);
  v10 = *(v2 + 10);
  v11 = v7[9];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 10) = v10;
  *(a2 + v11) = a1;
}

uint64_t LibraryCanvasContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D88, &unk_1E5B40EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B05474();
  sub_1E5B3DE14();
  v17 = *v3;
  HIBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B05B18(&qword_1ED031D98, sub_1E5B054C8);
  sub_1E5B3DD74();
  if (!v2)
  {
    LOWORD(v17) = *(v3 + 4);
    HIBYTE(v16) = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v17) = *(v3 + 10);
    HIBYTE(v16) = 2;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    v11 = type metadata accessor for LibraryCanvasContentState();
    v12 = v11[7];
    LOBYTE(v17) = 3;
    type metadata accessor for LibraryCanvasContentLoadState();
    sub_1E5B05BE4(&qword_1ED031DA8, type metadata accessor for LibraryCanvasContentLoadState);
    sub_1E5B3DD74();
    v13 = v11[8];
    LOBYTE(v17) = 4;
    sub_1E5B3CB44();
    sub_1E5B05BE4(&qword_1ED031AD0, MEMORY[0x1E6969770]);
    sub_1E5B3DD74();
    v14 = *(v3 + v11[9]);
    LOBYTE(v17) = 5;
    sub_1E5B3DD54();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5B05474()
{
  result = qword_1ED031D90;
  if (!qword_1ED031D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D90);
  }

  return result;
}

unint64_t sub_1E5B054C8()
{
  result = qword_1ED031DA0;
  if (!qword_1ED031DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031DA0);
  }

  return result;
}

uint64_t LibraryCanvasContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1E5B3CB44();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v8 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DB0, &qword_1E5B40EB0);
  v35 = *(v39 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LibraryCanvasContentState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E5B05474();
  v38 = v13;
  v20 = v40;
  sub_1E5B3DE04();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v10;
  v33 = v6;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  v42 = 0;
  sub_1E5B05B18(&qword_1ED031DB8, sub_1E5B05B90);
  v24 = v38;
  sub_1E5B3DCF4();
  v25 = v43;
  *v17 = v43;
  v42 = 1;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  v32 = v25;
  *(v17 + 4) = v43;
  v42 = 2;
  sub_1E5AFBF78();
  sub_1E5B3DCF4();
  v17[10] = v43;
  LOBYTE(v43) = 3;
  sub_1E5B05BE4(&qword_1ED031DC8, type metadata accessor for LibraryCanvasContentLoadState);
  sub_1E5B3DCF4();
  v32 = v14;
  sub_1E5B04A10(v40, &v17[*(v14 + 28)]);
  LOBYTE(v43) = 4;
  sub_1E5B05BE4(&qword_1ED031AF8, MEMORY[0x1E6969770]);
  v26 = v33;
  sub_1E5B3DCF4();
  v27 = v17;
  v28 = v32;
  (*(v22 + 32))(v27 + *(v32 + 32), v26, v23);
  LOBYTE(v43) = 5;
  LOBYTE(v26) = sub_1E5B3DCD4();
  v29 = *(v28 + 36);
  (*(v21 + 8))(v24, v39);
  *(v27 + v29) = v26 & 1;
  sub_1E5B05C2C(v27, v34, type metadata accessor for LibraryCanvasContentState);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1E5B05C94(v27, type metadata accessor for LibraryCanvasContentState);
}

uint64_t sub_1E5B05B18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B05B90()
{
  result = qword_1ED031DC0;
  if (!qword_1ED031DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031DC0);
  }

  return result;
}

uint64_t sub_1E5B05BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B05C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B05C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14FitnessLibrary0B18CanvasContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5B0ED9C(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && (v4 = *(a1 + 9), v5 = *(a2 + 9), (sub_1E5B3CCB4()) && (sub_1E5AFEB1C(*(a1 + 10), *(a2 + 10)) & 1) != 0 && (v6 = type metadata accessor for LibraryCanvasContentState(), (_s14FitnessLibrary0B22CanvasContentLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v6[7], a2 + v6[7])) && (MEMORY[0x1E6935290](a1 + v6[8], a2 + v6[8]))
  {
    v7 = *(a1 + v6[9]) ^ *(a2 + v6[9]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1E5B05E28()
{
  result = qword_1ED031DD0;
  if (!qword_1ED031DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031DD0);
  }

  return result;
}

unint64_t sub_1E5B05E80()
{
  result = qword_1ED031DD8;
  if (!qword_1ED031DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031DD8);
  }

  return result;
}

unint64_t sub_1E5B05ED8()
{
  result = qword_1ED031DE0;
  if (!qword_1ED031DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031DE0);
  }

  return result;
}

uint64_t sub_1E5B05F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5B46070 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B06150()
{
  v1 = 0x656E676953746F6ELL;
  if (*v0 == 1)
  {
    v1 = 0x6E4964656E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4964656E676973;
  }
}

uint64_t sub_1E5B061B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B06964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B061D8(uint64_t a1)
{
  v2 = sub_1E5B06744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06214(uint64_t a1)
{
  v2 = sub_1E5B06744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0625C(uint64_t a1)
{
  v2 = sub_1E5B06798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06298(uint64_t a1)
{
  v2 = sub_1E5B06798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B062D4(uint64_t a1)
{
  v2 = sub_1E5B067EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06310(uint64_t a1)
{
  v2 = sub_1E5B067EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0634C(uint64_t a1)
{
  v2 = sub_1E5B06840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B06388(uint64_t a1)
{
  v2 = sub_1E5B06840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryAccountState.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DE8, &qword_1E5B41080);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DF0, &qword_1E5B41088);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031DF8, &qword_1E5B41090);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E00, &qword_1E5B41098);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B06744();
  sub_1E5B3DE14();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E5B067EC();
      sub_1E5B3DD24();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E5B06798();
      v21 = v27;
      sub_1E5B3DD24();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E5B06840();
    sub_1E5B3DD24();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E5B06744()
{
  result = qword_1ED031E08;
  if (!qword_1ED031E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E08);
  }

  return result;
}

unint64_t sub_1E5B06798()
{
  result = qword_1ED031E10;
  if (!qword_1ED031E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E10);
  }

  return result;
}

unint64_t sub_1E5B067EC()
{
  result = qword_1ED031E18;
  if (!qword_1ED031E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E18);
  }

  return result;
}

unint64_t sub_1E5B06840()
{
  result = qword_1ED031E20;
  if (!qword_1ED031E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E20);
  }

  return result;
}

uint64_t sub_1E5B068AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5B06A88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LibraryAccountState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B06964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E4964656E676973 && a2 == 0xE800000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4964656E676973 && a2 == 0xEF74736575477341 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E676953746F6ELL && a2 == 0xEB000000006E4964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B06A88(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E78, &qword_1E5B414C0);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E80, &qword_1E5B414C8);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E88, &qword_1E5B414D0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E90, &qword_1E5B414D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5B06744();
  v18 = v39;
  sub_1E5B3DE04();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5B3DD04();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5B0034C();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E5B067EC();
          sub_1E5B3DC94();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E5B06798();
        v29 = v15;
        sub_1E5B3DC94();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E5B06840();
        v29 = v15;
        sub_1E5B3DC94();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5B3DC04();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v27 = &type metadata for LibraryAccountState;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E5B06FFC()
{
  result = qword_1ED031E28;
  if (!qword_1ED031E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E28);
  }

  return result;
}

unint64_t sub_1E5B070A4()
{
  result = qword_1ED031E30;
  if (!qword_1ED031E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E30);
  }

  return result;
}

unint64_t sub_1E5B070FC()
{
  result = qword_1ED031E38;
  if (!qword_1ED031E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E38);
  }

  return result;
}

unint64_t sub_1E5B07154()
{
  result = qword_1ED031E40;
  if (!qword_1ED031E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E40);
  }

  return result;
}

unint64_t sub_1E5B071AC()
{
  result = qword_1ED031E48;
  if (!qword_1ED031E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E48);
  }

  return result;
}

unint64_t sub_1E5B07204()
{
  result = qword_1ED031E50;
  if (!qword_1ED031E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E50);
  }

  return result;
}

unint64_t sub_1E5B0725C()
{
  result = qword_1ED031E58;
  if (!qword_1ED031E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E58);
  }

  return result;
}

unint64_t sub_1E5B072B4()
{
  result = qword_1ED031E60;
  if (!qword_1ED031E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E60);
  }

  return result;
}

unint64_t sub_1E5B0730C()
{
  result = qword_1ED031E68;
  if (!qword_1ED031E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E68);
  }

  return result;
}

unint64_t sub_1E5B07364()
{
  result = qword_1ED031E70;
  if (!qword_1ED031E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031E70);
  }

  return result;
}

uint64_t sub_1E5B073C8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E5B3D844();
}

uint64_t LibraryView.init(navigationViewBuilder:canvasViewBuilder:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibraryView();
  v7 = a3 + *(v6 + 52);
  v11 = a1(v6, v8, v9, v10);
  a2(v11);
}

uint64_t LibraryView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1E5B3D184();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v6 = *(a1 + 24);
  v25 = *(a1 + 16);
  v26 = v6;
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  v7 = sub_1E5B3CDF4();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  WitnessTable = swift_getWitnessTable();
  v36 = v7;
  v37 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v24 - v18);
  sub_1E5B3D284();
  v32 = v25;
  v33 = v26;
  v34 = *(a1 + 32);
  v35 = v28;
  v20 = v27;
  sub_1E5AF0C6C();
  sub_1E5B3D174();
  LOBYTE(a1) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != a1)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D4E4();
  (*(v29 + 8))(v20, v30);
  (*(v24 + 8))(v10, v7);
  v36 = v7;
  v37 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E5AF144C(v19, v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v22 = *(v13 + 8);
  v22(v17, OpaqueTypeMetadata2);
  sub_1E5AF144C(v31, v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v22)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B07A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  v10 = sub_1E5B3D724();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v21 - v16);
  sub_1E5B3D7D4();
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = a1;
  sub_1E5B3D714();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v17, v15, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_1E5AF144C(v22, v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_1E5B07D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B07D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v40 = a3;
  v41 = a1;
  v47 = a6;
  v38 = a2;
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1E5B3D704();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = sub_1E5B3CF34();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v35 - v15;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v39);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  v51 = 0;
  LOBYTE(v52) = 1;
  v23 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v23)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  v24 = sub_1E5B3D4F4();
  MEMORY[0x1EEE9AC00](v24);
  v25 = v40;
  *(&v35 - 6) = v38;
  *(&v35 - 5) = v25;
  v26 = v43;
  *(&v35 - 4) = v42;
  *(&v35 - 3) = v26;
  *(&v35 - 2) = v41;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  sub_1E5B3D2B4();
  v27 = swift_getWitnessTable();
  sub_1E5B3D534();
  (*(v44 + 8))(v9, v6);
  v53 = v27;
  v54 = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_1E5AF144C(v46, v14, v10, v28);
  v30 = v45;
  v36 = v22;
  v31 = *(v45 + 8);
  v31(v14, v10);
  v32 = v39;
  (*(v16 + 16))(v20, v22, v39);
  v51 = v20;
  (*(v30 + 16))(v14, v29, v10);
  v52 = v14;
  v50[0] = v32;
  v50[1] = v10;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v49 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v28;
  sub_1E5B073C8(&v51, 2uLL, v50);
  v31(v29, v10);
  v33 = *(v16 + 8);
  v33(v36, v32);
  v31(v14, v10);
  return (v33)(v20, v32);
}

uint64_t sub_1E5B08284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v30 = type metadata accessor for LibraryView();
  sub_1E5AF144C(v25, a1 + *(v30 + 52), a3, a5);
  v31 = a1;
  v32 = a4;
  sub_1E5AF144C(v17, v31, a2, a4);
  (*(v19 + 16))(v23, v25, a3);
  v42 = v23;
  v33 = v38;
  (*(v11 + 16))(v38, v17, a2);
  v43 = v33;
  v41[0] = a3;
  v41[1] = a2;
  v39 = a5;
  v40 = v32;
  sub_1E5B073C8(&v42, 2uLL, v41);
  v34 = *(v11 + 8);
  v34(v17, a2);
  v35 = *(v19 + 8);
  v35(v25, a3);
  v34(v38, a2);
  return v35(v23, a3);
}

uint64_t sub_1E5B08510(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B0859C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1E5B08778(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1E5B08A90()
{
  v1 = 0x647261646E617473;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_1E5B08AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B09B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B08B08(uint64_t a1)
{
  v2 = sub_1E5B090C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08B44(uint64_t a1)
{
  v2 = sub_1E5B090C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08B80(uint64_t a1)
{
  v2 = sub_1E5B091C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08BBC(uint64_t a1)
{
  v2 = sub_1E5B091C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08BF8(uint64_t a1)
{
  v2 = sub_1E5B09170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08C34(uint64_t a1)
{
  v2 = sub_1E5B09170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B08C70(uint64_t a1)
{
  v2 = sub_1E5B0911C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B08CAC(uint64_t a1)
{
  v2 = sub_1E5B0911C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryInterface.hashValue.getter()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v1);
  return sub_1E5B3DDF4();
}

uint64_t LibraryInterface.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031E98, &qword_1E5B41560);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EA0, &qword_1E5B41568);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EA8, &qword_1E5B41570);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EB0, &qword_1E5B41578);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B090C8();
  sub_1E5B3DE14();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E5B09170();
      v12 = v26;
      sub_1E5B3DD24();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E5B0911C();
      v12 = v29;
      sub_1E5B3DD24();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E5B091C4();
    sub_1E5B3DD24();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E5B090C8()
{
  result = qword_1ED031EB8;
  if (!qword_1ED031EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031EB8);
  }

  return result;
}

unint64_t sub_1E5B0911C()
{
  result = qword_1ED031EC0;
  if (!qword_1ED031EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031EC0);
  }

  return result;
}

unint64_t sub_1E5B09170()
{
  result = qword_1ED031EC8;
  if (!qword_1ED031EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031EC8);
  }

  return result;
}

unint64_t sub_1E5B091C4()
{
  result = qword_1ED031ED0;
  if (!qword_1ED031ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031ED0);
  }

  return result;
}

uint64_t LibraryInterface.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031ED8, &qword_1E5B41580);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EE0, &qword_1E5B41588);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EE8, &qword_1E5B41590);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031EF0, &unk_1E5B41598);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E5B090C8();
  v20 = v43;
  sub_1E5B3DE04();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E5B3DD04();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E5B0034C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E5B3DC04();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
      *v30 = &type metadata for LibraryInterface;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E5B09170();
          sub_1E5B3DC94();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E5B0911C();
          v33 = v22;
          sub_1E5B3DC94();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E5B091C4();
        sub_1E5B3DC94();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_1E5B0978C()
{
  result = qword_1ED031EF8;
  if (!qword_1ED031EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031EF8);
  }

  return result;
}

unint64_t sub_1E5B09864()
{
  result = qword_1ED031F00;
  if (!qword_1ED031F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F00);
  }

  return result;
}

unint64_t sub_1E5B098BC()
{
  result = qword_1ED031F08;
  if (!qword_1ED031F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F08);
  }

  return result;
}

unint64_t sub_1E5B09914()
{
  result = qword_1ED031F10;
  if (!qword_1ED031F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F10);
  }

  return result;
}

unint64_t sub_1E5B0996C()
{
  result = qword_1ED031F18;
  if (!qword_1ED031F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F18);
  }

  return result;
}

unint64_t sub_1E5B099C4()
{
  result = qword_1ED031F20;
  if (!qword_1ED031F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F20);
  }

  return result;
}

unint64_t sub_1E5B09A1C()
{
  result = qword_1ED031F28;
  if (!qword_1ED031F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F28);
  }

  return result;
}

unint64_t sub_1E5B09A74()
{
  result = qword_1ED031F30;
  if (!qword_1ED031F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F30);
  }

  return result;
}

unint64_t sub_1E5B09ACC()
{
  result = qword_1ED031F38;
  if (!qword_1ED031F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F38);
  }

  return result;
}

unint64_t sub_1E5B09B24()
{
  result = qword_1ED031F40;
  if (!qword_1ED031F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F40);
  }

  return result;
}

uint64_t sub_1E5B09B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t LibraryCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LibraryCanvasPlaceholder.secondaryIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall LibraryCanvasPlaceholder.init(identifier:secondaryIdentifier:referenceType:)(FitnessLibrary::LibraryCanvasPlaceholder *__return_ptr retstr, Swift::String identifier, Swift::String_optional secondaryIdentifier, FitnessLibrary::LibraryCanvasPlaceholderReferenceType referenceType)
{
  retstr->identifier = identifier;
  retstr->secondaryIdentifier = secondaryIdentifier;
  retstr->referenceType = referenceType;
}

uint64_t sub_1E5B09D00()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x636E657265666572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5B09D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B0A8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B09D98(uint64_t a1)
{
  v2 = sub_1E5B0A00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B09DD4(uint64_t a1)
{
  v2 = sub_1E5B0A00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F48, &qword_1E5B419D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[1] = v1[3];
  v15[2] = v10;
  v16 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0A00C();
  sub_1E5B3DE14();
  v20 = 0;
  v12 = v15[3];
  sub_1E5B3DD44();
  if (!v12)
  {
    v14 = v16;
    v19 = 1;
    sub_1E5B3DD34();
    v18 = v14;
    v17 = 2;
    sub_1E5B0A060();
    sub_1E5B3DD74();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5B0A00C()
{
  result = qword_1ED031F50;
  if (!qword_1ED031F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F50);
  }

  return result;
}

unint64_t sub_1E5B0A060()
{
  result = qword_1ED031F58;
  if (!qword_1ED031F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F58);
  }

  return result;
}

uint64_t LibraryCanvasPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F60, &qword_1E5B419D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0A00C();
  sub_1E5B3DE04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1E5B3DCC4();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_1E5B3DCB4();
  v20 = v14;
  v22 = 2;
  sub_1E5B0A330();
  sub_1E5B3DCF4();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5B0A330()
{
  result = qword_1ED031F68;
  if (!qword_1ED031F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F68);
  }

  return result;
}

uint64_t LibraryCanvasPlaceholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1E5B3DA14();
  sub_1E5B3DDE4();
  if (v4)
  {
    sub_1E5B3DA14();
  }

  sub_1E5B3DA14();
}

uint64_t LibraryCanvasPlaceholder.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0A518()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0A578()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_1E5B3DDC4();
  LibraryCanvasPlaceholder.hash(into:)();
  return sub_1E5B3DDF4();
}

uint64_t _s14FitnessLibrary0B17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1E5B3DDA4() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = v2 == v6 && v3 == v5;
      if (v9 || (sub_1E5B3DDA4() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return sub_1E5AFEDC4(v4, v7);
}

unint64_t sub_1E5B0A6A4()
{
  result = qword_1ED031F70;
  if (!qword_1ED031F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F70);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B0A70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1E5B0A754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5B0A7BC()
{
  result = qword_1ED031F78;
  if (!qword_1ED031F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F78);
  }

  return result;
}

unint64_t sub_1E5B0A814()
{
  result = qword_1ED031F80;
  if (!qword_1ED031F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F80);
  }

  return result;
}

unint64_t sub_1E5B0A86C()
{
  result = qword_1ED031F88;
  if (!qword_1ED031F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031F88);
  }

  return result;
}

uint64_t sub_1E5B0A8C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B46090 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B0A9F0(uint64_t a1)
{
  v2 = sub_1E5B0B404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AA2C(uint64_t a1)
{
  v2 = sub_1E5B0B404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AA68()
{
  v1 = 0x756F6D796E6F6E61;
  v2 = 0x65746F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6C61636F6CLL;
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

uint64_t sub_1E5B0AAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B0C734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B0AB08(uint64_t a1)
{
  v2 = sub_1E5B0B260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AB44(uint64_t a1)
{
  v2 = sub_1E5B0B260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AB80(uint64_t a1)
{
  v2 = sub_1E5B0B3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0ABBC(uint64_t a1)
{
  v2 = sub_1E5B0B3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0AC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B0AC84(uint64_t a1)
{
  v2 = sub_1E5B0B308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0ACC0(uint64_t a1)
{
  v2 = sub_1E5B0B308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B0ACFC(uint64_t a1)
{
  v2 = sub_1E5B0B2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0AD38(uint64_t a1)
{
  v2 = sub_1E5B0B2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F90, &qword_1E5B41C30);
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v28 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031F98, &qword_1E5B41C38);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FA0, &qword_1E5B41C40);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FA8, &qword_1E5B41C48);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FB0, &qword_1E5B41C50);
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = v1[1];
  v28 = *v1;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B0B260();
  sub_1E5B3DE14();
  switch(v19)
  {
    case 3:
      LOBYTE(v40) = 3;
      sub_1E5B0B2B4();
      v24 = v32;
      v23 = v39;
      sub_1E5B3DD24();
      (*(v34 + 8))(v24, v36);
      return (*(v38 + 8))(v18, v23);
    case 2:
      LOBYTE(v40) = 1;
      sub_1E5B0B3B0();
      v23 = v39;
      sub_1E5B3DD24();
      (*(v30 + 8))(v10, v31);
      return (*(v38 + 8))(v18, v23);
    case 1:
      LOBYTE(v40) = 0;
      sub_1E5B0B404();
      v21 = v39;
      sub_1E5B3DD24();
      (*(v29 + 8))(v14, v11);
      return (*(v38 + 8))(v18, v21);
    default:
      LOBYTE(v40) = 2;
      sub_1E5B0B308();
      v25 = v33;
      v26 = v39;
      sub_1E5B3DD24();
      v40 = v28;
      v41 = v19;
      sub_1E5B0B35C();
      v27 = v37;
      sub_1E5B3DD74();
      (*(v35 + 8))(v25, v27);
      return (*(v38 + 8))(v18, v26);
  }
}

unint64_t sub_1E5B0B260()
{
  result = qword_1ED031FB8;
  if (!qword_1ED031FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FB8);
  }

  return result;
}

unint64_t sub_1E5B0B2B4()
{
  result = qword_1ED031FC0;
  if (!qword_1ED031FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FC0);
  }

  return result;
}

unint64_t sub_1E5B0B308()
{
  result = qword_1ED031FC8;
  if (!qword_1ED031FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FC8);
  }

  return result;
}

unint64_t sub_1E5B0B35C()
{
  result = qword_1ED031FD0;
  if (!qword_1ED031FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FD0);
  }

  return result;
}

unint64_t sub_1E5B0B3B0()
{
  result = qword_1ED031FD8;
  if (!qword_1ED031FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FD8);
  }

  return result;
}

unint64_t sub_1E5B0B404()
{
  result = qword_1ED031FE0;
  if (!qword_1ED031FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031FE0);
  }

  return result;
}

uint64_t BrowsingIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FE8, &qword_1E5B41C58);
  v52 = *(v57 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FF0, &qword_1E5B41C60);
  v53 = *(v50 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031FF8, &qword_1E5B41C68);
  v51 = *(v54 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032000, &qword_1E5B41C70);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032008, &unk_1E5B41C78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5B0B260();
  v21 = v59;
  sub_1E5B3DE04();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v46 = v10;
  v47 = v13;
  v22 = v54;
  v23 = v55;
  v48 = 0;
  v25 = v56;
  v24 = v57;
  v59 = v15;
  v26 = v58;
  v27 = sub_1E5B3DD04();
  v28 = (2 * *(v27 + 16)) | 1;
  v61 = v27;
  v62 = v27 + 32;
  v63 = 0;
  v64 = v28;
  v29 = sub_1E5B00350();
  if (v29 == 4 || v63 != v64 >> 1)
  {
    v34 = sub_1E5B3DC04();
    swift_allocError();
    v36 = v35;
    v37 = v18;
    v38 = v14;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v36 = &type metadata for BrowsingIdentity;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v59 + 8))(v37, v38);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v29 > 1u)
  {
    v33 = v26;
    v41 = v59;
    if (v29 == 2)
    {
      LOBYTE(v60) = 2;
      sub_1E5B0B308();
      v42 = v48;
      sub_1E5B3DC94();
      if (!v42)
      {
        sub_1E5B0BBC4();
        v45 = v50;
        sub_1E5B3DCF4();
        (*(v53 + 8))(v23, v45);
        (*(v41 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v32 = v60;
        goto LABEL_21;
      }
    }

    else
    {
      LOBYTE(v60) = 3;
      sub_1E5B0B2B4();
      v44 = v48;
      sub_1E5B3DC94();
      if (!v44)
      {
        (*(v52 + 8))(v25, v24);
        (*(v41 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v32 = xmmword_1E5B41C00;
        goto LABEL_21;
      }
    }

    (*(v41 + 8))(v18, v14);
    goto LABEL_9;
  }

  if (v29)
  {
    LOBYTE(v60) = 1;
    sub_1E5B0B3B0();
    v43 = v48;
    sub_1E5B3DC94();
    if (!v43)
    {
      (*(v51 + 8))(v9, v22);
      (*(v59 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v32 = xmmword_1E5B41C10;
      v33 = v26;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  LOBYTE(v60) = 0;
  sub_1E5B0B404();
  v31 = v47;
  v30 = v48;
  sub_1E5B3DC94();
  if (v30)
  {
LABEL_15:
    (*(v59 + 8))(v18, v14);
    goto LABEL_9;
  }

  (*(v49 + 8))(v31, v46);
  (*(v59 + 8))(v18, v14);
  swift_unknownObjectRelease();
  v32 = xmmword_1E5B41C20;
  v33 = v26;
LABEL_21:
  *v33 = v32;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

unint64_t sub_1E5B0BBC4()
{
  result = qword_1ED032010;
  if (!qword_1ED032010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032010);
  }

  return result;
}

uint64_t BrowsingIdentity.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 3:
      v2 = 3;
      return MEMORY[0x1E6936540](v2);
    case 2:
      v2 = 1;
      return MEMORY[0x1E6936540](v2);
    case 1:
      v2 = 0;
      return MEMORY[0x1E6936540](v2);
  }

  v4 = *v0;
  MEMORY[0x1E6936540](2);
  if (!v1)
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t BrowsingIdentity.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1E5B3DDC4();
  switch(v1)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x1E6936540](v3);
      return sub_1E5B3DDF4();
  }

  MEMORY[0x1E6936540](2);
  sub_1E5B3DDE4();
  if (v1)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B0BDB0()
{
  v1 = v0[1];
  switch(v1)
  {
    case 3:
      v2 = 3;
      return MEMORY[0x1E6936540](v2);
    case 2:
      v2 = 1;
      return MEMORY[0x1E6936540](v2);
    case 1:
      v2 = 0;
      return MEMORY[0x1E6936540](v2);
  }

  v4 = *v0;
  MEMORY[0x1E6936540](2);
  if (!v1)
  {
    return sub_1E5B3DDE4();
  }

  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t sub_1E5B0BE60()
{
  sub_1E5B3DDC4();
  v1 = v0[1];
  switch(v1)
  {
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 1:
      v2 = 0;
LABEL_7:
      MEMORY[0x1E6936540](v2);
      return sub_1E5B3DDF4();
  }

  v4 = *v0;
  MEMORY[0x1E6936540](2);
  sub_1E5B3DDE4();
  if (v1)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

BOOL _s14FitnessLibrary16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_12;
    }

    sub_1E5B0C8B0(*a1, 3);
    v6 = v4;
    v7 = 3;
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    sub_1E5B0C8B0(*a1, 2);
    v6 = v4;
    v7 = 2;
LABEL_10:
    sub_1E5B0C8B0(v6, v7);
    return 1;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 3)
    {
      goto LABEL_12;
    }

    if (v3)
    {
      if (v5)
      {
        if (v2 != v4 || v3 != v5)
        {
          v12 = *a1;
          v13 = sub_1E5B3DDA4();
          sub_1E5B0C898(v4, v5);
          sub_1E5B0C898(v2, v3);
          sub_1E5B0C8B0(v2, v3);
          sub_1E5B0C8B0(v4, v5);
          return (v13 & 1) != 0;
        }

        sub_1E5B0C898(*a1, v3);
        sub_1E5B0C898(v2, v3);
        sub_1E5B0C8B0(v2, v3);
        v6 = v2;
        v7 = v3;
        goto LABEL_10;
      }

      sub_1E5B0C898(*a2, 0);
      sub_1E5B0C898(v2, v3);
      sub_1E5B0C8B0(v2, v3);
    }

    else
    {
      v11 = a2[1];

      sub_1E5B0C898(v4, v5);
      sub_1E5B0C898(v2, 0);
      sub_1E5B0C8B0(v2, 0);
      sub_1E5B0C8B0(v4, v5);
      if (!v5)
      {
        sub_1E5B0C8B0(v4, 0);
        v6 = v2;
        v7 = 0;
        goto LABEL_10;
      }

      sub_1E5B0C8B0(v4, v5);
      v4 = v2;
    }

    v8 = v4;
    v9 = 0;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
LABEL_12:
    sub_1E5B0C898(*a2, a2[1]);
    sub_1E5B0C898(v2, v3);
    sub_1E5B0C8B0(v2, v3);
    v8 = v4;
    v9 = v5;
LABEL_13:
    sub_1E5B0C8B0(v8, v9);
    return 0;
  }

  sub_1E5B0C8B0(*a1, 1);
  sub_1E5B0C8B0(v4, 1);
  return v5;
}

unint64_t sub_1E5B0C154()
{
  result = qword_1ED032018;
  if (!qword_1ED032018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032018);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14FitnessLibrary16BrowsingIdentityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5B0C1CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B0C22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1E5B0C288(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1E5B0C318()
{
  result = qword_1ED032020;
  if (!qword_1ED032020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032020);
  }

  return result;
}

unint64_t sub_1E5B0C370()
{
  result = qword_1ED032028;
  if (!qword_1ED032028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032028);
  }

  return result;
}

unint64_t sub_1E5B0C3C8()
{
  result = qword_1ED032030;
  if (!qword_1ED032030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032030);
  }

  return result;
}

unint64_t sub_1E5B0C420()
{
  result = qword_1ED032038;
  if (!qword_1ED032038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032038);
  }

  return result;
}

unint64_t sub_1E5B0C478()
{
  result = qword_1ED032040;
  if (!qword_1ED032040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032040);
  }

  return result;
}

unint64_t sub_1E5B0C4D0()
{
  result = qword_1ED032048;
  if (!qword_1ED032048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032048);
  }

  return result;
}

unint64_t sub_1E5B0C528()
{
  result = qword_1ED032050;
  if (!qword_1ED032050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032050);
  }

  return result;
}

unint64_t sub_1E5B0C580()
{
  result = qword_1ED032058;
  if (!qword_1ED032058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032058);
  }

  return result;
}

unint64_t sub_1E5B0C5D8()
{
  result = qword_1ED032060;
  if (!qword_1ED032060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032060);
  }

  return result;
}

unint64_t sub_1E5B0C630()
{
  result = qword_1ED032068;
  if (!qword_1ED032068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032068);
  }

  return result;
}

unint64_t sub_1E5B0C688()
{
  result = qword_1ED032070;
  if (!qword_1ED032070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032070);
  }

  return result;
}

unint64_t sub_1E5B0C6E0()
{
  result = qword_1ED032078;
  if (!qword_1ED032078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032078);
  }

  return result;
}

uint64_t sub_1E5B0C734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B0C898(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1E5B0C8B0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t TVLibraryPickerView.init(store:pages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E5AF4F0C();
  sub_1E5B3CDB4();
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_1E5AEFB94;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 48) = a3;
  return result;
}

uint64_t TVLibraryPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v78 = sub_1E5B3D244();
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v71 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032080, &qword_1E5B42220);
  v4 = *(v64 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v64);
  v66 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = v58 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032088, &qword_1E5B42228);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v11 = v58 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032090, &qword_1E5B42230);
  v69 = *(v68 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v81 = v58 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032098, &qword_1E5B42238);
  v74 = *(v73 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v82 = v58 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320A0, &qword_1E5B42240);
  v77 = *(v79 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v70 = v58 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320A8, &qword_1E5B42248);
  v18 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v58 - v19;
  v20 = v1[1];
  v91 = *v1;
  *v92 = v20;
  *&v92[16] = v1[2];
  v93 = *(v1 + 6);
  *v11 = sub_1E5B3D114();
  *(v11 + 1) = 0x4018000000000000;
  v11[16] = 0;
  v61 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320B0, &unk_1E5B42250) + 44)];
  v94 = v93;
  *&v86 = v93;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  v22 = v1[1];
  *(v21 + 16) = *v1;
  *(v21 + 32) = v22;
  *(v21 + 48) = v1[2];
  *(v21 + 64) = *(v1 + 6);
  sub_1E5B0DB74(&v94, &v88);
  sub_1E5B0DBE4(&v91, &v88);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320B8, &qword_1E5B42280);
  v58[0] = sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8);
  v23 = sub_1E5AF4F0C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320C8, &qword_1E5B42288);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320D0, &qword_1E5B42290);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320D8, &qword_1E5B42298);
  v27 = type metadata accessor for TVLibraryItemCell();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
  v63 = v28;
  v29 = sub_1E5B0DC1C();
  v62 = sub_1E5B0DC74();
  *&v88 = v27;
  *(&v88 + 1) = v28;
  v89 = v29;
  v90 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v88 = v26;
  *(&v88 + 1) = &type metadata for LibraryPage;
  v89 = OpaqueTypeConformance2;
  v90 = v23;
  v31 = swift_getOpaqueTypeConformance2();
  *&v88 = v25;
  *(&v88 + 1) = v31;
  v32 = swift_getOpaqueTypeConformance2();
  *&v88 = v24;
  *(&v88 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v65;
  sub_1E5B3D744();
  v34 = v4[2];
  v35 = v66;
  v36 = v64;
  v34(v66, v33, v64);
  v37 = v61;
  v34(v61, v35, v36);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320F8, &qword_1E5B422A8) + 48)];
  *v38 = 0;
  v38[8] = 1;
  v39 = v4[1];
  v39(v33, v36);
  v39(v35, v36);
  v40 = sub_1E5AF13EC(&qword_1ED032100, &qword_1ED032088, &qword_1E5B42228);
  v41 = v67;
  sub_1E5B3D3B4();
  sub_1E5B04304(v11, &qword_1ED032088, &qword_1E5B42228);
  v88 = *&v92[8];
  LOBYTE(v89) = v92[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032108, &unk_1E5B422B0);
  sub_1E5B3CDA4();
  v66 = v86;
  v88 = v86;
  LOBYTE(v89) = v87;
  v65 = *(&v91 + 1);
  v42 = v91;
  LODWORD(v37) = v92[0];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  v43 = sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  v61 = v42;
  LODWORD(KeyPath) = v37;
  v59 = v43;
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v85 = v83;
  v44 = v71;
  sub_1E5B3D234();
  *&v86 = v41;
  *(&v86 + 1) = v40;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v68;
  v47 = v63;
  v48 = v62;
  v49 = v81;
  MEMORY[0x1E6935BD0](&v88, &v85, v44, v68, v63, v45, v62);
  (*(v76 + 8))(v44, v78);

  (*(v69 + 8))(v49, v46);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D924();

  v83 = v86;
  v84 = v87;
  *&v88 = v46;
  *(&v88 + 1) = v47;
  v89 = v45;
  v90 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1E5B0DCF8();
  v50 = v70;
  v51 = v73;
  v52 = v82;
  sub_1E5B3D4D4();

  (*(v74 + 8))(v52, v51);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (v88)
  {
    v53 = 0.3;
  }

  else
  {
    v53 = 1.0;
  }

  v54 = v72;
  (*(v77 + 32))(v72, v50, v79);
  *(v54 + *(v75 + 36)) = v53;
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  LOBYTE(v83) = v86;
  v55 = swift_allocObject();
  v56 = *v92;
  *(v55 + 16) = v91;
  *(v55 + 32) = v56;
  *(v55 + 48) = *&v92[16];
  *(v55 + 64) = v93;
  sub_1E5B0DBE4(&v91, &v88);
  sub_1E5B0DED8();
  sub_1E5B06FFC();
  sub_1E5B3D574();

  return sub_1E5B04304(v54, &qword_1ED0320A8, &qword_1E5B42248);
}

uint64_t sub_1E5B0D5F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for TVLibraryItemCell();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320D8, &qword_1E5B42298);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320D0, &qword_1E5B42290);
  v14 = *(v13 - 8);
  v50 = v13;
  v51 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320C8, &qword_1E5B42288);
  v18 = *(v17 - 8);
  v52 = v17;
  v53 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v44 - v20;
  v21 = *a1;
  v22 = *a2;
  v23 = *(a2 + 8);
  v24 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v25 = swift_allocObject();
  v26 = *(a2 + 16);
  *(v25 + 16) = *a2;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a2 + 32);
  *(v25 + 64) = *(a2 + 48);
  *(v25 + 72) = v21;
  v8[*(v5 + 20)] = v21;
  v27 = &v8[*(v5 + 24)];
  *v27 = sub_1E5B0E1D8;
  v27[1] = v25;
  v59 = *(a2 + 24);
  v60 = *(a2 + 40);
  sub_1E5B0DBE4(a2, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032108, &unk_1E5B422B0);
  sub_1E5B3CDA4();
  LOBYTE(v59) = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0320E0, &qword_1E5B422A0);
  v29 = sub_1E5B0DC1C();
  v30 = sub_1E5B0DC74();
  v31 = v45;
  sub_1E5B3D524();

  sub_1E5B0E1E4(v8);
  LOBYTE(v59) = v21;
  v55 = v5;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E5AF4F0C();
  v35 = v46;
  v34 = v47;
  sub_1E5B3D434();
  v36 = v34;
  (*(v48 + 8))(v31, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E5B42210;
  v55 = 0;
  v56 = 0xE000000000000000;
  LOBYTE(v59) = v21;
  sub_1E5B3DC24();
  v38 = v56;
  *(v37 + 32) = v55;
  *(v37 + 40) = v38;
  v55 = v36;
  v56 = &type metadata for LibraryPage;
  v57 = OpaqueTypeConformance2;
  v58 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v41 = v49;
  v40 = v50;
  sub_1E5B3D3C4();

  (*(v51 + 8))(v35, v40);
  v55 = v40;
  v56 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_1E5B3D3A4();
  return (*(v53 + 8))(v41, v42);
}

uint64_t sub_1E5B0DB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B0DC1C()
{
  result = qword_1ED0320E8;
  if (!qword_1ED0320E8)
  {
    type metadata accessor for TVLibraryItemCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0320E8);
  }

  return result;
}

unint64_t sub_1E5B0DC74()
{
  result = qword_1ED0320F0;
  if (!qword_1ED0320F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
    sub_1E5AF4F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0320F0);
  }

  return result;
}

unint64_t sub_1E5B0DCF8()
{
  result = qword_1ED032110;
  if (!qword_1ED032110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032110);
  }

  return result;
}

uint64_t sub_1E5B0DD4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

uint64_t sub_1E5B0DE14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

unint64_t sub_1E5B0DED8()
{
  result = qword_1ED032118;
  if (!qword_1ED032118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320A8, &qword_1E5B42248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032098, &qword_1E5B42238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032090, &qword_1E5B42230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320E0, &qword_1E5B422A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032088, &qword_1E5B42228);
    sub_1E5AF13EC(&qword_1ED032100, &qword_1ED032088, &qword_1E5B42228);
    swift_getOpaqueTypeConformance2();
    sub_1E5B0DC74();
    swift_getOpaqueTypeConformance2();
    sub_1E5B0DCF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032118);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5B0E0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E5B0E124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5AF0DEC();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1E5B0E1E4(uint64_t a1)
{
  v2 = type metadata accessor for TVLibraryItemCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 LibraryPageCountEnvironment.init(makeBookmarkUpdatedStream:makeCatalogUpdatedStream:makeDownloadedAssetsCountUpdateStream:makePlaylistCountUpdateStream:navigateToLibraryGalleryPage:queryLibraryPageCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E5B0E280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E5B0E2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B0E330(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = a3;
  v7 = sub_1E5B3CB44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v16 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = a2[1];
  sub_1E5B0E5E0(v4, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = *v18;
      v29 = v18[8];
      v30 = v18[9];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
      (*(v8 + 32))(v14, &v18[*(v31 + 64)], v7);
      v32 = sub_1E5B0E8D0(v28, a1);

      v22 = 1;
      if ((v32 & 1) == 0 || v29 != v19 || (sub_1E5B3CCB4() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = *v18;
      v24 = v18[8];
      v25 = v18[9];
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
      (*(v8 + 32))(v11, &v18[*(v26 + 64)], v7);
      v27 = sub_1E5B0E8D0(v23, a1);

      v22 = 1;
      if ((v27 & 1) == 0 || v24 != v19)
      {
        v14 = v11;
        goto LABEL_13;
      }

      v14 = v11;
      if ((sub_1E5B3CCB4() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1E5B03044();
    v22 = sub_1E5B3D974() ^ 1;
LABEL_13:
    (*(v8 + 8))(v14, v7);
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1E5B0E5E0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LibraryCanvasContentLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E5B0E644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;
      if (*(v4 - 4) != *(v3 - 4) || *(v4 - 3) != *(v3 - 3))
      {
        v13 = *(v4 - 3);
        if ((sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      if (v7)
      {
        if (!v9 || (v6 != v10 || v7 != v9) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v14 = 0xE700000000000000;
          v15 = 0x74756F6B726F77;
          if (v11 <= 1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v15 = 0xD000000000000013;
          v14 = 0x80000001E5B45C10;
          if (v11 <= 1)
          {
LABEL_31:
            if (v11)
            {
              v16 = 0xE500000000000000;
              if (v15 != 0x6B63617473)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v16 = 0xE700000000000000;
              if (v15 != 0x6D6172676F7270)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_37;
          }
        }
      }

      else if (v8)
      {
        v14 = 0xE500000000000000;
        v15 = 0x6B63617473;
        if (v11 <= 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x6D6172676F7270;
        if (v11 <= 1)
        {
          goto LABEL_31;
        }
      }

      if (v11 == 2)
      {
        v16 = 0xE700000000000000;
        if (v15 != 0x74756F6B726F77)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0x80000001E5B45C10;
        if (v15 != 0xD000000000000013)
        {
          goto LABEL_5;
        }
      }

LABEL_37:
      if (v14 != v16)
      {
LABEL_5:
        v5 = sub_1E5B3DDA4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1E5B0E8D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v15 = a1;
    v16 = a2;
    while (1)
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v7 = *(a1 + v3 + 64);
      v6 = *(a1 + v3 + 72);
      v18 = *(a1 + v3 + 40);
      v19 = *(a1 + v3 + 80);
      v9 = *(a2 + v3 + 48);
      v8 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v11 = *(a2 + v3 + 72);
      v12 = *(a2 + v3 + 80);
      v20 = v8;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40))
      {
        v13 = sub_1E5B3DDA4();
        v8 = v20;
        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      if (v5)
      {
        if (!v8 || (v4 != v9 || v5 != v8) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v6)
      {
        if (!v11 || (v7 != v10 || v6 != v11) && (sub_1E5B3DDA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v17 = sub_1E5B0E644(v19, v12);

      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v3 += 56;
      --v2;
      a1 = v15;
      a2 = v16;
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for LibrarySidebarButtonStyle()
{
  result = qword_1ED032130;
  if (!qword_1ED032130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5B0EB4C()
{
  sub_1E5B0EBE8();
  if (v0 <= 0x3F)
  {
    sub_1E5B0EC38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B0EBE8()
{
  if (!qword_1ED032140)
  {
    v0 = sub_1E5B3CE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED032140);
    }
  }
}

void sub_1E5B0EC38()
{
  if (!qword_1ED032148)
  {
    sub_1E5B3CE14();
    v0 = sub_1E5B3CE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED032148);
    }
  }
}

uint64_t LibraryPageCountState.init(layout:locale:focusedLibraryPage:pageCounts:allowedContentRatings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for LibraryPageCountState();
  sub_1E5B10060(a1, a6 + *(v12 + 28));
  v13 = *(v12 + 32);
  v14 = sub_1E5B3CB44();
  (*(*(v14 - 8) + 32))(a6 + v13, a2, v14);

  *(a6 + 8) = a3;
  *a6 = a4;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_1E5B0ED9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_1E5B3DDC4();
    sub_1E5B3DA14();

    v17 = sub_1E5B3DDF4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v28 = v12;
    v20 = ~v18;
    while (!*(*(a2 + 48) + v19))
    {
      v21 = 0xE500000000000000;
      v22 = 0x6E61656C63;
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v15 == 1)
      {
        v23 = 0x746963696C707865;
      }

      else
      {
        v23 = 0x6669636570736E75;
      }

      if (v15 == 1)
      {
        v24 = 0xE800000000000000;
      }

      else
      {
        v24 = 0xEB00000000646569;
      }

      if (v22 == v23)
      {
        goto LABEL_28;
      }

LABEL_29:
      v25 = sub_1E5B3DDA4();

      if (v25)
      {
        goto LABEL_35;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19) == 1)
    {
      v21 = 0xE800000000000000;
      v22 = 0x746963696C707865;
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v22 = 0x6669636570736E75;
    v21 = 0xEB00000000646569;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_27:
    v24 = 0xE500000000000000;
    if (v22 != 0x6E61656C63)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v21 != v24)
    {
      goto LABEL_29;
    }

LABEL_35:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryPageCountState.pageCounts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t sub_1E5B0F100()
{
  v1 = *v0;
  v2 = 0x6E756F4365676170;
  v3 = 0xD000000000000015;
  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x656C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E5B0F1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B1050C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B0F1CC(uint64_t a1)
{
  v2 = sub_1E5B100C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B0F208(uint64_t a1)
{
  v2 = sub_1E5B100C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountState.withAllowedContentRatings(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LibraryPageCountState();
  sub_1E5B101E4(v2 + *(v5 + 28), a2 + *(v5 + 28), type metadata accessor for LibraryPageCountLayout);
  v6 = *(v5 + 32);
  v7 = sub_1E5B3CB44();
  (*(*(v7 - 8) + 16))(a2 + v6, v2 + v6, v7);
  LOBYTE(v6) = *(v2 + 8);
  v8 = *v2;

  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);

  *(a2 + 8) = v6;
  *a2 = v8;
  *(a2 + 16) = a1;
}

uint64_t LibraryPageCountState.withFocusedLibraryPage(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LibraryPageCountState();
  sub_1E5B101E4(&v2[*(v5 + 28)], a2 + *(v5 + 28), type metadata accessor for LibraryPageCountLayout);
  v6 = *(v5 + 32);
  v7 = sub_1E5B3CB44();
  (*(*(v7 - 8) + 16))(a2 + v6, &v2[v6], v7);
  v8 = *v2;
  v9 = *(v2 + 2);

  sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);

  *(a2 + 8) = a1;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t LibraryPageCountState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032150, &qword_1E5B42520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B100C4();
  sub_1E5B3DE14();
  v16 = *v3;
  HIBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032160, &unk_1E5B42528);
  sub_1E5B10118(&qword_1ED032168, sub_1E5AFBA70);
  sub_1E5B3DD74();
  if (!v2)
  {
    LOBYTE(v16) = *(v3 + 8);
    HIBYTE(v15) = 1;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    v16 = v3[2];
    HIBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
    sub_1E5B05B18(&qword_1ED031D98, sub_1E5B054C8);
    sub_1E5B3DD74();
    v11 = type metadata accessor for LibraryPageCountState();
    v12 = *(v11 + 28);
    LOBYTE(v16) = 3;
    type metadata accessor for LibraryPageCountLayout();
    sub_1E5B1019C(&qword_1ED032170, type metadata accessor for LibraryPageCountLayout);
    sub_1E5B3DD74();
    v13 = *(v11 + 32);
    LOBYTE(v16) = 4;
    sub_1E5B3CB44();
    sub_1E5B1019C(&qword_1ED031AD0, MEMORY[0x1E6969770]);
    sub_1E5B3DD74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LibraryPageCountState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E5B3CB44();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryPageCountLayout();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032178, &qword_1E5B42538);
  v28 = *(v30 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v13 = v25 - v12;
  v29 = type metadata accessor for LibraryPageCountState();
  v14 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1E5B0FF28(MEMORY[0x1E69E7CC0]);
  v33 = a1;
  v34 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B100C4();
  v18 = v31;
  sub_1E5B3DE04();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v25[1] = v7;
    v31 = v10;
    v19 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032160, &unk_1E5B42528);
    v35 = 0;
    sub_1E5B10118(&qword_1ED032180, sub_1E5AFBF78);
    sub_1E5B3DCF4();

    v21 = v36;
    v22 = v32;
    *v32 = v36;
    v35 = 1;
    sub_1E5AFBF78();
    sub_1E5B3DCF4();
    *(v22 + 8) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
    v35 = 2;
    sub_1E5B05B18(&qword_1ED031DB8, sub_1E5B05B90);
    sub_1E5B3DCF4();
    *(v22 + 16) = v36;
    LOBYTE(v36) = 3;
    sub_1E5B1019C(&qword_1ED032188, type metadata accessor for LibraryPageCountLayout);
    v23 = v31;
    sub_1E5B3DCF4();
    v34 = v21;
    v24 = v29;
    sub_1E5B10060(v23, v22 + *(v29 + 28));
    LOBYTE(v36) = 4;
    sub_1E5B1019C(&qword_1ED031AF8, MEMORY[0x1E6969770]);
    sub_1E5B3DCF4();
    (*(v19 + 8))(v13, v30);
    (*(v26 + 32))(v22 + *(v24 + 32), v6, v3);
    sub_1E5B101E4(v22, v27, type metadata accessor for LibraryPageCountState);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return sub_1E5B1024C(v22, type metadata accessor for LibraryPageCountState);
  }
}

unint64_t sub_1E5B0FD70(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1E5B1E10C(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14FitnessLibrary0B14PageCountStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E5B0FD70(*a1, *a2) & 1) != 0 && (sub_1E5AFEB1C(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1E5B0ED9C(*(a1 + 16), *(a2 + 16)))
  {
    v4 = type metadata accessor for LibraryPageCountState();
    if (MEMORY[0x1E69353B0](a1 + *(v4 + 28), a2 + *(v4 + 28)))
    {
      v5 = *(v4 + 32);

      JUMPOUT(0x1E6935290);
    }
  }

  return 0;
}

unint64_t sub_1E5B0FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
    v3 = sub_1E5B3DC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E5B1E10C(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for LibraryPageCountState()
{
  result = qword_1ED032190;
  if (!qword_1ED032190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B10060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B100C4()
{
  result = qword_1ED032158;
  if (!qword_1ED032158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032158);
  }

  return result;
}

uint64_t sub_1E5B10118(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032160, &unk_1E5B42528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B1019C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B101E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B1024C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E5B102D4()
{
  sub_1E5B10390();
  if (v0 <= 0x3F)
  {
    sub_1E5AE88E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LibraryPageCountLayout();
      if (v2 <= 0x3F)
      {
        sub_1E5B3CB44();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5B10390()
{
  if (!qword_1ED0321A0)
  {
    sub_1E5AF4F0C();
    v0 = sub_1E5B3D944();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED0321A0);
    }
  }
}

unint64_t sub_1E5B10408()
{
  result = qword_1ED0321A8;
  if (!qword_1ED0321A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321A8);
  }

  return result;
}

unint64_t sub_1E5B10460()
{
  result = qword_1ED0321B0;
  if (!qword_1ED0321B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321B0);
  }

  return result;
}

unint64_t sub_1E5B104B8()
{
  result = qword_1ED0321B8;
  if (!qword_1ED0321B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321B8);
  }

  return result;
}

uint64_t sub_1E5B1050C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F4365676170 && a2 == 0xEA00000000007374;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5B45FC0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5B46070 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

__n128 LibraryPageCountFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

unint64_t LibraryPageCountFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, void **a3, unint64_t a4, uint64_t a5)
{
  v169 = a3;
  v171 = a2;
  v168 = a1;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A20, &unk_1E5B42720);
  v8 = *(v170 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v170);
  v12 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v152 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v152 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v152 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v152 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v29 = &v152 - v28;
  v30 = v5[3];
  v175 = v5[2];
  v176 = v30;
  v31 = v5[5];
  v177 = v5[4];
  v178 = v31;
  v32 = v5[1];
  v173 = *v5;
  v174 = v32;
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      v33 = v171;
      v34 = *v171;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v172[0] = *v33;
      result = sub_1E5B1586C(a5, a4, isUniquelyReferenced_nonNull_native);
      *v33 = *&v172[0];
    }

    else if (a4 > 0x8000000000000001)
    {
      if (a4 ^ 0x8000000000000002 | a5)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v73 = v72[12];
        v74 = v72[16];
        v75 = v72[20];
        v76 = &v12[v72[24]];
        LOBYTE(v172[0]) = 0;
        sub_1E5B116F0();
        sub_1E5B3DBC4();
        sub_1E5B3DAC4();
        v77 = *MEMORY[0x1E6999B60];
        v78 = sub_1E5B3D8E4();
        (*(*(v78 - 8) + 104))(&v12[v74], v77, v78);
        v79 = swift_allocObject();
        v80 = v176;
        v79[3] = v175;
        v79[4] = v80;
        v81 = v178;
        v79[5] = v177;
        v79[6] = v81;
        v82 = v174;
        v79[1] = v173;
        v79[2] = v82;
        *v76 = &unk_1E5B42738;
        *(v76 + 1) = v79;
        v83 = *MEMORY[0x1E6999B48];
        v84 = sub_1E5B3D8D4();
        (*(*(v84 - 8) + 104))(&v12[v75], v83, v84);
        v85 = v170;
        (*(v8 + 104))(v12, *MEMORY[0x1E6999AD8], v170);
        v86 = v169;
        v87 = *v169;
        sub_1E5B14944(&v173, v172);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1E5AF67E4(0, v87[2] + 1, 1, v87);
        }

        v89 = v87[2];
        v88 = v87[3];
        if (v89 >= v88 >> 1)
        {
          v87 = sub_1E5AF67E4(v88 > 1, v89 + 1, 1, v87);
        }

        v87[2] = v89 + 1;
        result = (*(v8 + 32))(v87 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v89, v12, v85);
        *v86 = v87;
      }
    }

    else if (a4 ^ 0x8000000000000000 | a5)
    {
      if (!*(*v171 + 16))
      {
        v154 = v27;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v91 = v90[12];
        v92 = v90[16];
        v93 = v90[20];
        v94 = &v22[v90[24]];
        LOBYTE(v172[0]) = 3;
        v167 = sub_1E5B116F0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v95 = *MEMORY[0x1E6999B60];
        v96 = sub_1E5B3D8E4();
        v97 = *(v96 - 8);
        v98 = *(v97 + 104);
        v166 = v95;
        v165 = v96;
        v164 = v98;
        v163 = v97 + 104;
        (v98)(&v22[v92], v95);
        v99 = *MEMORY[0x1E6999B40];
        v100 = sub_1E5B3D8D4();
        v101 = *(v100 - 8);
        v102 = *(v101 + 104);
        v153 = v99;
        v162 = v100;
        v161 = v102;
        v160 = v101 + 104;
        (v102)(&v22[v93], v99);
        v103 = swift_allocObject();
        v104 = v176;
        v103[3] = v175;
        v103[4] = v104;
        v105 = v178;
        v103[5] = v177;
        v103[6] = v105;
        v106 = v174;
        v103[1] = v173;
        v103[2] = v106;
        *v94 = &unk_1E5B42748;
        *(v94 + 1) = v103;
        v107 = *(v8 + 104);
        v159 = *MEMORY[0x1E6999AD8];
        v158 = v107;
        v107(v22);
        v108 = *v169;
        sub_1E5B14944(&v173, v172);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1E5AF67E4(0, *(v108 + 2) + 1, 1, v108);
        }

        v110 = *(v108 + 2);
        v109 = *(v108 + 3);
        v152 = v8 + 104;
        if (v110 >= v109 >> 1)
        {
          v108 = sub_1E5AF67E4(v109 > 1, v110 + 1, 1, v108);
        }

        *(v108 + 2) = v110 + 1;
        v112 = *(v8 + 32);
        v111 = v8 + 32;
        v156 = (*(v111 + 48) + 32) & ~*(v111 + 48);
        v155 = *(v111 + 40);
        v113 = v170;
        v157 = v112;
        v112(&v108[v156 + v155 * v110], v22, v170);
        v114 = v90[12];
        v115 = v90[16];
        v116 = v90[20];
        v117 = &v19[v90[24]];
        LOBYTE(v172[0]) = 4;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v164(&v19[v115], v166, v165);
        v161(&v19[v116], v153, v162);
        v118 = swift_allocObject();
        v119 = v176;
        v118[3] = v175;
        v118[4] = v119;
        v120 = v178;
        v118[5] = v177;
        v118[6] = v120;
        v121 = v174;
        v118[1] = v173;
        v118[2] = v121;
        *v117 = &unk_1E5B42758;
        *(v117 + 1) = v118;
        v158(v19, v159, v113);
        sub_1E5B14944(&v173, v172);
        v123 = *(v108 + 2);
        v122 = *(v108 + 3);
        if (v123 >= v122 >> 1)
        {
          v108 = sub_1E5AF67E4(v122 > 1, v123 + 1, 1, v108);
        }

        *(v108 + 2) = v123 + 1;
        v124 = v19;
        v125 = v170;
        v157(&v108[v156 + v123 * v155], v124, v170);
        v126 = v90[12];
        v127 = v90[16];
        v128 = v90[20];
        v129 = &v16[v90[24]];
        LOBYTE(v172[0]) = 6;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v164(&v16[v127], v166, v165);
        v130 = &v16[v128];
        v131 = v153;
        v161(v130, v153, v162);
        v132 = swift_allocObject();
        v133 = v176;
        v132[3] = v175;
        v132[4] = v133;
        v134 = v178;
        v132[5] = v177;
        v132[6] = v134;
        v135 = v174;
        v132[1] = v173;
        v132[2] = v135;
        *v129 = &unk_1E5B42768;
        *(v129 + 1) = v132;
        v158(v16, v159, v125);
        sub_1E5B14944(&v173, v172);
        v137 = *(v108 + 2);
        v136 = *(v108 + 3);
        if (v137 >= v136 >> 1)
        {
          v108 = sub_1E5AF67E4(v136 > 1, v137 + 1, 1, v108);
        }

        *(v108 + 2) = v137 + 1;
        v157(&v108[v156 + v137 * v155], v16, v125);
        v138 = v90[12];
        v139 = v90[16];
        v140 = v90[20];
        v141 = v154;
        v142 = &v154[v90[24]];
        LOBYTE(v172[0]) = 5;
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v164(&v141[v139], v166, v165);
        v161(&v141[v140], v131, v162);
        v143 = swift_allocObject();
        v144 = v176;
        v143[3] = v175;
        v143[4] = v144;
        v145 = v178;
        v143[5] = v177;
        v143[6] = v145;
        v146 = v174;
        v143[1] = v173;
        v143[2] = v146;
        *v142 = &unk_1E5B42778;
        *(v142 + 1) = v143;
        v158(v141, v159, v125);
        sub_1E5B14944(&v173, v172);
        v148 = *(v108 + 2);
        v147 = *(v108 + 3);
        if (v148 >= v147 >> 1)
        {
          v108 = sub_1E5AF67E4(v147 > 1, v148 + 1, 1, v108);
        }

        v149 = v169;
        v150 = v171;
        v151 = v168;
        *(v108 + 2) = v148 + 1;
        v157(&v108[v156 + v148 * v155], v154, v125);
        *v149 = v108;
        v172[2] = v175;
        v172[3] = v176;
        v172[4] = v177;
        v172[5] = v178;
        v172[0] = v173;
        v172[1] = v174;
        return LibraryPageCountFeature.reduce(localState:sharedState:sideEffects:action:)(v151, v150, v149, 0x8000000000000003, 0);
      }
    }

    else
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
      v55 = v54[12];
      v56 = v54[16];
      v57 = v54[20];
      v58 = &v29[v54[24]];
      LOBYTE(v172[0]) = 1;
      sub_1E5B116F0();
      sub_1E5B3DBC4();
      sub_1E5B3DAE4();
      v59 = *MEMORY[0x1E6999B60];
      v60 = sub_1E5B3D8E4();
      (*(*(v60 - 8) + 104))(&v29[v56], v59, v60);
      v61 = swift_allocObject();
      v62 = v176;
      v61[3] = v175;
      v61[4] = v62;
      v63 = v178;
      v61[5] = v177;
      v61[6] = v63;
      v64 = v174;
      v61[1] = v173;
      v61[2] = v64;
      *v58 = &unk_1E5B42798;
      *(v58 + 1) = v61;
      v65 = *MEMORY[0x1E6999B48];
      v66 = sub_1E5B3D8D4();
      (*(*(v66 - 8) + 104))(&v29[v57], v65, v66);
      v67 = v170;
      (*(v8 + 104))(v29, *MEMORY[0x1E6999AD8], v170);
      v68 = v169;
      v69 = *v169;
      sub_1E5B14944(&v173, v172);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1E5AF67E4(0, v69[2] + 1, 1, v69);
      }

      v71 = v69[2];
      v70 = v69[3];
      if (v71 >= v70 >> 1)
      {
        v69 = sub_1E5AF67E4(v70 > 1, v71 + 1, 1, v69);
      }

      v69[2] = v71 + 1;
      result = (*(v8 + 32))(v69 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v71, v29, v67);
      *v68 = v69;
    }
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
    v37 = v36[12];
    v38 = v36[16];
    v39 = v36[20];
    v40 = &v25[v36[24]];
    LOBYTE(v172[0]) = 2;
    sub_1E5B116F0();
    sub_1E5B3DBC4();
    sub_1E5B3DAC4();
    v41 = *MEMORY[0x1E6999B50];
    v42 = sub_1E5B3D8E4();
    (*(*(v42 - 8) + 104))(&v25[v38], v41, v42);
    v43 = swift_allocObject();
    v44 = v176;
    *(v43 + 48) = v175;
    *(v43 + 64) = v44;
    v45 = v178;
    *(v43 + 80) = v177;
    *(v43 + 96) = v45;
    v46 = v174;
    *(v43 + 16) = v173;
    *(v43 + 32) = v46;
    *(v43 + 112) = a4;
    *v40 = &unk_1E5B42788;
    *(v40 + 1) = v43;
    v47 = *MEMORY[0x1E6999B48];
    v48 = sub_1E5B3D8D4();
    (*(*(v48 - 8) + 104))(&v25[v39], v47, v48);
    v49 = v170;
    (*(v8 + 104))(v25, *MEMORY[0x1E6999AD8], v170);
    v50 = v169;
    v51 = *v169;
    sub_1E5B14944(&v173, v172);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1E5AF67E4(0, v51[2] + 1, 1, v51);
    }

    v53 = v51[2];
    v52 = v51[3];
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1E5AF67E4(v52 > 1, v53 + 1, 1, v51);
    }

    v51[2] = v53 + 1;
    result = (*(v8 + 32))(v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v53, v25, v49);
    *v50 = v51;
    v171[8] = a4;
  }

  return result;
}

unint64_t sub_1E5B116F0()
{
  result = qword_1ED0321C8;
  if (!qword_1ED0321C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321C8);
  }

  return result;
}

uint64_t sub_1E5B11744(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1E5B3DAB4();
  v2[5] = sub_1E5B3DAA4();
  v4 = sub_1E5B3DA84();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5B117E0, v4, v3);
}

uint64_t sub_1E5B117E0()
{
  v1 = v0[2].i64[0];
  v6 = v0[1];
  v0[4].i64[0] = sub_1E5B3DAA4();
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  *(v2 + 16) = &unk_1F5F6DCC8;
  *(v2 + 24) = vextq_s8(v6, v6, 8uLL);
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  v0[5].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1E5B118F8;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E5B118F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E6936830);
  }

  v5 = v2[8];
  v6 = v2[9];

  v7 = v2[6];
  v8 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1E5B16388, v7, v8);
}

uint64_t sub_1E5B11A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v5[37] = v6;
  v7 = *(v6 - 8);
  v5[38] = v7;
  v5[39] = *(v7 + 64);
  v5[40] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  sub_1E5B3DAB4();
  v5[43] = sub_1E5B3DAA4();
  v10 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B11B88, v10, v9);
}

uint64_t sub_1E5B11B88()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 272) + 32);
    v40 = **(v0 + 264);
    v41 = *(v0 + 304);
    v5 = sub_1E5B3DB04();
    v6 = *(v5 - 8);
    v39 = *(v6 + 56);
    v38 = (v6 + 48);
    v37 = (v6 + 8);
    do
    {
      v44 = v3;
      v9 = *(v0 + 336);
      v11 = *(v0 + 312);
      v10 = *(v0 + 320);
      v12 = *(v0 + 288);
      v13 = *(v0 + 296);
      v14 = *(v0 + 280);
      v42 = *v4;
      v43 = *(v0 + 328);
      v39(v9, 1, 1, v5);
      (*(v41 + 16))(v10, v12, v13);
      v15 = v5;
      v16 = (*(v41 + 80) + 129) & ~*(v41 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = (v17 + 16);
      *(v17 + 24) = 0;
      v20 = v14[4];
      v19 = v14[5];
      v21 = v14[3];
      *(v17 + 64) = v14[2];
      *(v17 + 80) = v21;
      *(v17 + 96) = v20;
      *(v17 + 112) = v19;
      v22 = v14[1];
      *(v17 + 32) = *v14;
      *(v17 + 48) = v22;
      *(v17 + 128) = v42;
      v23 = v17 + v16;
      v5 = v15;
      (*(v41 + 32))(v23, v10, v13);
      sub_1E5B15DE4(v9, v43);
      v24 = (*v38)(v43, 1, v15);
      v25 = *(v0 + 328);
      v26 = *(v0 + 280);
      if (v24 == 1)
      {
        sub_1E5B14944(v26, v0 + 16);
        sub_1E5B15E54(v25);
      }

      else
      {
        sub_1E5B14944(v26, v0 + 112);
        sub_1E5B3DAF4();
        (*v37)(v25, v5);
      }

      ++v4;
      if (*v18)
      {
        v27 = *(v17 + 24);
        v28 = *v18;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_1E5B3DA84();
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      if (v31 | v29)
      {
        v7 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v29;
        *(v0 + 232) = v31;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 336);
      *(v0 + 240) = 1;
      *(v0 + 248) = v7;
      *(v0 + 256) = v40;
      swift_task_create();

      sub_1E5B15E54(v8);
      v3 = v44 - 1;
    }

    while (v44 != 1);
  }

  v33 = *(v0 + 328);
  v32 = *(v0 + 336);
  v34 = *(v0 + 320);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1E5B11EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 56) = a5;
  v8 = *(a4 + 88);
  v12 = (*(a4 + 80) + **(a4 + 80));
  v9 = *(*(a4 + 80) + 4);
  v10 = swift_task_alloc();
  *(v6 + 40) = v10;
  *v10 = v6;
  v10[1] = sub_1E5B11FE4;

  return v12(a5);
}

uint64_t sub_1E5B11FE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 16) = *(v4 + 56) | 0x4000000000000000;
    *(v4 + 24) = a1;
    v9 = v4 + 16;
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v11 = swift_task_alloc();
    *(v9 + 32) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v11 = v6;
    v11[1] = sub_1E5B16380;
    v13 = *(v9 + 16);

    return MEMORY[0x1EEE01A40](v9, v12);
  }
}

uint64_t sub_1E5B12184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5B3DAB4();
  v3[3] = sub_1E5B3DAA4();
  v6 = *(a2 + 72);
  v10 = (*(a2 + 64) + **(a2 + 64));
  v7 = *(*(a2 + 64) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5AF6058;

  return v10(a3);
}

uint64_t sub_1E5B12298(uint64_t a1, int **a2)
{
  v2[14] = a1;
  v2[15] = sub_1E5B3DAB4();
  v2[16] = sub_1E5B3DAA4();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[17] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B123AC;

  return v8(v2 + 2);
}

uint64_t sub_1E5B123AC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_1E5B3DA84();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_1E5B12B14;
  }

  else
  {
    v9 = sub_1E5B1250C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B1250C()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[15];
  v7 = sub_1E5B3DAA4();
  v0[21] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B126DC;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v7, v11);
}

uint64_t sub_1E5B126DC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5B127F0, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B127F0()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = xmmword_1E5B42700;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v5 = v0;
    v5[1] = sub_1E5B12918;
    v7 = *(v0 + 112);

    return MEMORY[0x1EEE01A40](v0 + 96, v6);
  }
}

uint64_t sub_1E5B12918()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B12A38, v4, v3);
}

uint64_t sub_1E5B12A38()
{
  v1 = v0[15];
  v2 = sub_1E5B3DAA4();
  v0[21] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B126DC;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v2, v6);
}

uint64_t sub_1E5B12B14()
{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_1E5B12B78(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = sub_1E5B3DAB4();
  v2[16] = sub_1E5B3DAA4();
  v4 = *(a2 + 24);
  v8 = (*(a2 + 16) + **(a2 + 16));
  v5 = *(*(a2 + 16) + 4);
  v6 = swift_task_alloc();
  v2[17] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B12C8C;

  return v8(v2 + 2);
}

uint64_t sub_1E5B12C8C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_1E5B3DA84();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_1E5B16378;
  }

  else
  {
    v9 = sub_1E5B12DEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B12DEC()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[15];
  v7 = sub_1E5B3DAA4();
  v0[21] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B12FBC;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v7, v11);
}

uint64_t sub_1E5B12FBC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5B130D0, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B130D0()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = xmmword_1E5B42710;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v5 = v0;
    v5[1] = sub_1E5B131F8;
    v7 = *(v0 + 112);

    return MEMORY[0x1EEE01A40](v0 + 96, v6);
  }
}

uint64_t sub_1E5B131F8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B13318, v4, v3);
}

uint64_t sub_1E5B13318()
{
  v1 = v0[15];
  v2 = sub_1E5B3DAA4();
  v0[21] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B12FBC;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 24, v2, v6);
}

uint64_t sub_1E5B133F4(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = sub_1E5B3DAB4();
  v2[18] = sub_1E5B3DAA4();
  v4 = *(a2 + 56);
  v8 = (*(a2 + 48) + **(a2 + 48));
  v5 = *(*(a2 + 48) + 4);
  v6 = swift_task_alloc();
  v2[19] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B13508;

  return v8(v2 + 2);
}

uint64_t sub_1E5B13508()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v11 = *v1;
  v3[20] = v2;

  v8 = sub_1E5B3DA84();
  v3[21] = v8;
  v3[22] = v7;
  if (v2)
  {
    v9 = sub_1E5B13C78;
  }

  else
  {
    v9 = sub_1E5B13668;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B13668()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[17];
  v7 = sub_1E5B3DAA4();
  v0[23] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B13838;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v7, v11);
}

uint64_t sub_1E5B13838()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[23];

    v6 = v2[21];
    v7 = v2[22];

    return MEMORY[0x1EEE6DFA0](sub_1E5B1394C, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B1394C()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 144);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 112);
    *(v0 + 96) = 0x4000000000000002;
    *(v0 + 104) = v4;
    v5 = *(MEMORY[0x1E6999AF0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v6 = v0;
    v6[1] = sub_1E5B13A7C;
    v8 = *(v0 + 128);

    return MEMORY[0x1EEE01A40](v0 + 96, v7);
  }
}

uint64_t sub_1E5B13A7C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5B13B9C, v4, v3);
}

uint64_t sub_1E5B13B9C()
{
  v1 = v0[17];
  v2 = sub_1E5B3DAA4();
  v0[23] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B13838;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v2, v6);
}

uint64_t sub_1E5B13C78()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_1E5B13CDC(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = sub_1E5B3DAB4();
  v2[18] = sub_1E5B3DAA4();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[19] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B13DF0;

  return v8(v2 + 2);
}

uint64_t sub_1E5B13DF0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v11 = *v1;
  v3[20] = v2;

  v8 = sub_1E5B3DA84();
  v3[21] = v8;
  v3[22] = v7;
  if (v2)
  {
    v9 = sub_1E5B1637C;
  }

  else
  {
    v9 = sub_1E5B13F50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B13F50()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[17];
  v7 = sub_1E5B3DAA4();
  v0[23] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B14120;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v7, v11);
}

uint64_t sub_1E5B14120()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[23];

    v6 = v2[21];
    v7 = v2[22];

    return MEMORY[0x1EEE6DFA0](sub_1E5B14234, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B14234()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 144);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 112);
    *(v0 + 96) = 0x4000000000000005;
    *(v0 + 104) = v4;
    v5 = *(MEMORY[0x1E6999AF0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v6 = v0;
    v6[1] = sub_1E5B14364;
    v8 = *(v0 + 128);

    return MEMORY[0x1EEE01A40](v0 + 96, v7);
  }
}

uint64_t sub_1E5B14364()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5B14484, v4, v3);
}

uint64_t sub_1E5B14484()
{
  v1 = v0[17];
  v2 = sub_1E5B3DAA4();
  v0[23] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B14120;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 14, v2, v6);
}

uint64_t sub_1E5B14560(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1E5B3DAB4();
  v2[5] = sub_1E5B3DAA4();
  v4 = sub_1E5B3DA84();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5B145FC, v4, v3);
}

uint64_t sub_1E5B145FC()
{
  v1 = v0[2].i64[0];
  v6 = v0[1];
  v0[4].i64[0] = sub_1E5B3DAA4();
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  v0[5].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1E5B14708;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E5B14708()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E6936830);
  }

  v5 = v2[8];
  v6 = v2[9];

  v7 = v2[6];
  v8 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1E5B14848, v7, v8);
}

uint64_t sub_1E5B14848()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B148AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B14560(a1, v1 + 16);
}

uint64_t sub_1E5B1497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[33] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v4[38] = *(v6 + 64);
  v4[39] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_1E5B3DAB4();
  v4[42] = sub_1E5B3DAA4();
  v9 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B14ACC, v9, v8);
}

uint64_t sub_1E5B14ACC()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[33];

  v40 = *v3;
  v41 = v2;
  v4 = sub_1E5B3DB04();
  v5 = 0;
  v6 = *(v4 - 8);
  v39 = *(v6 + 56);
  v38 = (v6 + 48);
  v37 = (v6 + 8);
  do
  {
    v9 = v0[41];
    v43 = v0[40];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[35];
    v13 = v0[36];
    v14 = v0[34];
    v44 = v5;
    v42 = *(&unk_1F5F6D998 + v5 + 32);
    v39(v9, 1, 1, v4);
    (*(v41 + 16))(v10, v12, v13);
    v15 = v4;
    v16 = (*(v41 + 80) + 129) & ~*(v41 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = (v17 + 16);
    *(v17 + 24) = 0;
    v20 = v14[4];
    v19 = v14[5];
    v21 = v14[3];
    *(v17 + 64) = v14[2];
    *(v17 + 80) = v21;
    *(v17 + 96) = v20;
    *(v17 + 112) = v19;
    v22 = v14[1];
    *(v17 + 32) = *v14;
    *(v17 + 48) = v22;
    *(v17 + 128) = v42;
    v23 = v17 + v16;
    v4 = v15;
    (*(v41 + 32))(v23, v10, v13);
    sub_1E5B15DE4(v9, v43);
    v24 = (*v38)(v43, 1, v15);
    v25 = v0[40];
    v26 = v0[34];
    if (v24 == 1)
    {
      sub_1E5B14944(v26, (v0 + 2));
      sub_1E5B15E54(v25);
    }

    else
    {
      sub_1E5B14944(v26, (v0 + 14));
      sub_1E5B3DAF4();
      (*v37)(v25, v4);
    }

    if (*v18)
    {
      v27 = *(v17 + 24);
      v28 = *v18;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_1E5B3DA84();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    if (v31 | v29)
    {
      v7 = v0 + 26;
      v0[26] = 0;
      v0[27] = 0;
      v0[28] = v29;
      v0[29] = v31;
    }

    else
    {
      v7 = 0;
    }

    ++v5;
    v8 = v0[41];
    v0[30] = 1;
    v0[31] = v7;
    v0[32] = v40;
    swift_task_create();

    sub_1E5B15E54(v8);
  }

  while (v44 != 5);
  v33 = v0[40];
  v32 = v0[41];
  v34 = v0[39];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1E5B14E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 56) = a5;
  v8 = *(a4 + 88);
  v12 = (*(a4 + 80) + **(a4 + 80));
  v9 = *(*(a4 + 80) + 4);
  v10 = swift_task_alloc();
  *(v6 + 40) = v10;
  *v10 = v6;
  v10[1] = sub_1E5B14F28;

  return v12(a5);
}

uint64_t sub_1E5B14F28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 16) = *(v4 + 56) | 0x4000000000000000;
    *(v4 + 24) = a1;
    v9 = v4 + 16;
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v11 = swift_task_alloc();
    *(v9 + 32) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
    *v11 = v6;
    v11[1] = sub_1E5B150C8;
    v13 = *(v9 + 16);

    return MEMORY[0x1EEE01A40](v9, v12);
  }
}

uint64_t sub_1E5B150C8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5B151D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B12298(a1, (v1 + 16));
}

uint64_t sub_1E5B15268(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B12B78(a1, v1 + 16);
}

uint64_t sub_1E5B15300(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B133F4(a1, v1 + 16);
}

uint64_t sub_1E5B15398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B13CDC(a1, v1 + 16);
}

uint64_t sub_1E5B15430(uint64_t a1)
{
  v4 = *(v1 + 112);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5AF632C;

  return sub_1E5B12184(a1, v1 + 16, v4);
}

uint64_t sub_1E5B154D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
  result = sub_1E5B3DC44();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_1E5B3DDC4();
      sub_1E5B3DA14();

      result = sub_1E5B3DDF4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1E5B1586C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E5B1E10C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E5B15EBC();
    result = v17;
    goto LABEL_8;
  }

  sub_1E5B154D8(v14, a3 & 1);
  v18 = *v4;
  result = sub_1E5B1E10C(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E5B3DDB4();
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E5B159FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B11744(a1, v1 + 16);
}

unint64_t sub_1E5B15A98()
{
  result = qword_1ED0321D0;
  if (!qword_1ED0321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321D0);
  }

  return result;
}

unint64_t sub_1E5B15AF0()
{
  result = qword_1ED0321D8;
  if (!qword_1ED0321D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321D8);
  }

  return result;
}

unint64_t sub_1E5B15B48()
{
  result = qword_1ED0321E0;
  if (!qword_1ED0321E0)
  {
    type metadata accessor for LibraryPageCountState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321E0);
  }

  return result;
}

unint64_t sub_1E5B15BC4()
{
  result = qword_1ED0321E8;
  if (!qword_1ED0321E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0321E8);
  }

  return result;
}

uint64_t sub_1E5B15C18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5B16384;

  return sub_1E5B11A38(a1, a2, v6, v7, v8);
}

uint64_t sub_1E5B15CDC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0) - 8);
  v5 = (*(v4 + 80) + 129) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B16384;

  return sub_1E5B11EE8(a1, v6, v7, v1 + 32, v8, v1 + v5);
}

uint64_t sub_1E5B15DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B15E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F8, &qword_1E5B428F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E5B15EBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321C0, &unk_1E5B426F0);
  v2 = *v0;
  v3 = sub_1E5B3DC34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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