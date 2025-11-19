uint64_t sub_1DB04891C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D74756F656D6974 && a2 == 0xEC000000696C6C69 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67656C6976697270 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v5 = sub_1DB09E254();

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

uint64_t sub_1DB048B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB048C54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FBA8, &qword_1DB0B7760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB04AD34();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = 0;
  v12 = sub_1DB09E044();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_1DB09E044();
  v24 = v15;
  v26 = 2;
  v16 = sub_1DB09E044();
  v17 = v10;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v25;
  a2[1] = v14;
  v21 = v24;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

char *sub_1DB048E9C(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E3F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v18);
    if (sub_1DB09E204())
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      v12 = v3;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
        sub_1DB0428BC();
        sub_1DB09E1F4();
        v13 = v15[2];
        v14 = v15[3];
        v15[0] = v16[0];
        *(v15 + 10) = *(v16 + 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1DAF7315C(0, *(v2 + 2) + 1, 1, v2);
        }

        v6 = *(v2 + 2);
        v5 = *(v2 + 3);
        if (v6 >= v5 >> 1)
        {
          v2 = sub_1DAF7315C((v5 > 1), v6 + 1, 1, v2);
        }

        *(v2 + 2) = v6 + 1;
        v7 = &v2[64 * v6];
        v8 = v13;
        v9 = v14;
        v10 = v15[0];
        *(v7 + 74) = *(v15 + 10);
        *(v7 + 3) = v9;
        *(v7 + 4) = v10;
        *(v7 + 2) = v8;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v3 = v12;
      }

      while ((sub_1DB09E204() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v2;
}

uint64_t sub_1DB04929C()
{
  v0 = sub_1DB09E004();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DB0492E8()
{
  result = qword_1ECC0F9A8;
  if (!qword_1ECC0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9A8);
  }

  return result;
}

unint64_t sub_1DB04933C()
{
  result = qword_1ECC0F9B0;
  if (!qword_1ECC0F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9B0);
  }

  return result;
}

uint64_t sub_1DB049390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 6582895 && a2 == 0xE300000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6583407 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581359 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0CACD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DB0494EC()
{
  result = qword_1ECC0F9C0;
  if (!qword_1ECC0F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9C0);
  }

  return result;
}

unint64_t sub_1DB049540()
{
  result = qword_1ECC0F9D0;
  if (!qword_1ECC0F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9D0);
  }

  return result;
}

unint64_t sub_1DB049594()
{
  result = qword_1ECC0F9D8;
  if (!qword_1ECC0F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9D8);
  }

  return result;
}

unint64_t sub_1DB049618()
{
  result = qword_1ECC0F9E8;
  if (!qword_1ECC0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9E8);
  }

  return result;
}

unint64_t sub_1DB04966C()
{
  result = qword_1ECC0F9F8;
  if (!qword_1ECC0F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F9F8);
  }

  return result;
}

unint64_t sub_1DB0496F8()
{
  result = qword_1EE3011C0;
  if (!qword_1EE3011C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011C0);
  }

  return result;
}

uint64_t sub_1DB04974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_1DB049760()
{
  result = qword_1ECC0FA10;
  if (!qword_1ECC0FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA10);
  }

  return result;
}

unint64_t sub_1DB0497EC()
{
  result = qword_1EE301358;
  if (!qword_1EE301358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301358);
  }

  return result;
}

unint64_t sub_1DB049840()
{
  result = qword_1EE300ED0;
  if (!qword_1EE300ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300ED0);
  }

  return result;
}

unint64_t sub_1DB049894()
{
  result = qword_1EE300EE8;
  if (!qword_1EE300EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EE8);
  }

  return result;
}

unint64_t sub_1DB0498E8()
{
  result = qword_1ECC0FA30;
  if (!qword_1ECC0FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA30);
  }

  return result;
}

unint64_t sub_1DB04993C()
{
  result = qword_1EE301818;
  if (!qword_1EE301818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301818);
  }

  return result;
}

unint64_t sub_1DB049990()
{
  result = qword_1EE301808;
  if (!qword_1EE301808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301808);
  }

  return result;
}

unint64_t sub_1DB0499E4()
{
  result = qword_1ECC0FA58;
  if (!qword_1ECC0FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA58);
  }

  return result;
}

unint64_t sub_1DB049A38()
{
  result = qword_1ECC0FA68;
  if (!qword_1ECC0FA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0FA60, &qword_1DB0B68A0);
    sub_1DB049B94(&qword_1ECC0FA70, v1, type metadata accessor for AppleCredentials);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA68);
  }

  return result;
}

unint64_t sub_1DB049AEC()
{
  result = qword_1ECC0FA88;
  if (!qword_1ECC0FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FA88);
  }

  return result;
}

unint64_t sub_1DB049B40()
{
  result = qword_1ECC0FAA0;
  if (!qword_1ECC0FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAA0);
  }

  return result;
}

uint64_t sub_1DB049B94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DB049BDC()
{
  result = qword_1ECC0FAC0;
  if (!qword_1ECC0FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAC0);
  }

  return result;
}

unint64_t sub_1DB049C30()
{
  result = qword_1ECC0FAC8;
  if (!qword_1ECC0FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAC8);
  }

  return result;
}

unint64_t sub_1DB049C84()
{
  result = qword_1ECC0FAD0;
  if (!qword_1ECC0FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAD0);
  }

  return result;
}

unint64_t sub_1DB049CD8()
{
  result = qword_1ECC0FAD8;
  if (!qword_1ECC0FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAD8);
  }

  return result;
}

unint64_t sub_1DB049D2C()
{
  result = qword_1ECC0FAE0;
  if (!qword_1ECC0FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAE0);
  }

  return result;
}

unint64_t sub_1DB049D80()
{
  result = qword_1ECC0FAE8;
  if (!qword_1ECC0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAE8);
  }

  return result;
}

unint64_t sub_1DB049DD4()
{
  result = qword_1EE301ED8;
  if (!qword_1EE301ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301ED8);
  }

  return result;
}

unint64_t sub_1DB049E28()
{
  result = qword_1EE302DF8[0];
  if (!qword_1EE302DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE302DF8);
  }

  return result;
}

unint64_t sub_1DB049E7C()
{
  result = qword_1ECC0FAF0;
  if (!qword_1ECC0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FAF0);
  }

  return result;
}

unint64_t sub_1DB049ED0()
{
  result = qword_1EE304360;
  if (!qword_1EE304360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304360);
  }

  return result;
}

uint64_t sub_1DB049F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DB049F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1DB04A00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1DB04A054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB04A138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1DB04A194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB04A20C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
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

uint64_t sub_1DB04A254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB04A2F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_1DB04A33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB04A3F0()
{
  result = qword_1ECC0FB00;
  if (!qword_1ECC0FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB00);
  }

  return result;
}

unint64_t sub_1DB04A448()
{
  result = qword_1ECC0FB08;
  if (!qword_1ECC0FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB08);
  }

  return result;
}

unint64_t sub_1DB04A4A0()
{
  result = qword_1ECC0FB10;
  if (!qword_1ECC0FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB10);
  }

  return result;
}

unint64_t sub_1DB04A4F8()
{
  result = qword_1ECC0FB18;
  if (!qword_1ECC0FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB18);
  }

  return result;
}

unint64_t sub_1DB04A550()
{
  result = qword_1ECC0FB20;
  if (!qword_1ECC0FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB20);
  }

  return result;
}

unint64_t sub_1DB04A5A8()
{
  result = qword_1ECC0FB28;
  if (!qword_1ECC0FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB28);
  }

  return result;
}

unint64_t sub_1DB04A600()
{
  result = qword_1ECC0FB30;
  if (!qword_1ECC0FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB30);
  }

  return result;
}

unint64_t sub_1DB04A658()
{
  result = qword_1ECC0FB38;
  if (!qword_1ECC0FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB38);
  }

  return result;
}

unint64_t sub_1DB04A6B0()
{
  result = qword_1ECC0FB40;
  if (!qword_1ECC0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB40);
  }

  return result;
}

unint64_t sub_1DB04A708()
{
  result = qword_1ECC0FB48;
  if (!qword_1ECC0FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB48);
  }

  return result;
}

unint64_t sub_1DB04A760()
{
  result = qword_1ECC0FB50;
  if (!qword_1ECC0FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB50);
  }

  return result;
}

unint64_t sub_1DB04A7B8()
{
  result = qword_1ECC0FB58;
  if (!qword_1ECC0FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB58);
  }

  return result;
}

unint64_t sub_1DB04A810()
{
  result = qword_1ECC0FB60;
  if (!qword_1ECC0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB60);
  }

  return result;
}

unint64_t sub_1DB04A868()
{
  result = qword_1EE3017F8;
  if (!qword_1EE3017F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017F8);
  }

  return result;
}

unint64_t sub_1DB04A8C0()
{
  result = qword_1EE301800;
  if (!qword_1EE301800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301800);
  }

  return result;
}

unint64_t sub_1DB04A918()
{
  result = qword_1EE300ED8;
  if (!qword_1EE300ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300ED8);
  }

  return result;
}

unint64_t sub_1DB04A970()
{
  result = qword_1EE300EE0;
  if (!qword_1EE300EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EE0);
  }

  return result;
}

unint64_t sub_1DB04A9C8()
{
  result = qword_1EE3011B0;
  if (!qword_1EE3011B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011B0);
  }

  return result;
}

unint64_t sub_1DB04AA20()
{
  result = qword_1EE3011B8;
  if (!qword_1EE3011B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3011B8);
  }

  return result;
}

unint64_t sub_1DB04AA78()
{
  result = qword_1ECC0FB68;
  if (!qword_1ECC0FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB68);
  }

  return result;
}

unint64_t sub_1DB04AAD0()
{
  result = qword_1ECC0FB70;
  if (!qword_1ECC0FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB70);
  }

  return result;
}

unint64_t sub_1DB04AB28()
{
  result = qword_1ECC0FB78;
  if (!qword_1ECC0FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB78);
  }

  return result;
}

unint64_t sub_1DB04AB80()
{
  result = qword_1ECC0FB80;
  if (!qword_1ECC0FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB80);
  }

  return result;
}

unint64_t sub_1DB04ABD8()
{
  result = qword_1ECC0FB88;
  if (!qword_1ECC0FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB88);
  }

  return result;
}

unint64_t sub_1DB04AC30()
{
  result = qword_1ECC0FB90;
  if (!qword_1ECC0FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB90);
  }

  return result;
}

unint64_t sub_1DB04AC88()
{
  result = qword_1ECC0FB98;
  if (!qword_1ECC0FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FB98);
  }

  return result;
}

unint64_t sub_1DB04ACE0()
{
  result = qword_1ECC0FBA0;
  if (!qword_1ECC0FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBA0);
  }

  return result;
}

unint64_t sub_1DB04AD34()
{
  result = qword_1ECC0FBB0;
  if (!qword_1ECC0FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBB0);
  }

  return result;
}

unint64_t sub_1DB04AD88()
{
  result = qword_1EE301850;
  if (!qword_1EE301850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301850);
  }

  return result;
}

unint64_t sub_1DB04ADDC()
{
  result = qword_1EE301718;
  if (!qword_1EE301718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301718);
  }

  return result;
}

unint64_t sub_1DB04AE30()
{
  result = qword_1EE300A38;
  if (!qword_1EE300A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F358, &qword_1DB0AFAC8);
    sub_1DB04AEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300A38);
  }

  return result;
}

unint64_t sub_1DB04AEB4()
{
  result = qword_1EE3017D8;
  if (!qword_1EE3017D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017D8);
  }

  return result;
}

unint64_t sub_1DB04AF08()
{
  result = qword_1ECC0FBC8;
  if (!qword_1ECC0FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBC8);
  }

  return result;
}

unint64_t sub_1DB04AF5C()
{
  result = qword_1EE304478;
  if (!qword_1EE304478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304478);
  }

  return result;
}

unint64_t sub_1DB04AFB0()
{
  result = qword_1ECC0FBD8;
  if (!qword_1ECC0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FBD8);
  }

  return result;
}

unint64_t sub_1DB04B004()
{
  result = qword_1EE304368;
  if (!qword_1EE304368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304368);
  }

  return result;
}

unint64_t sub_1DB04B058()
{
  result = qword_1EE302930;
  if (!qword_1EE302930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302930);
  }

  return result;
}

unint64_t sub_1DB04B0AC()
{
  result = qword_1EE303428;
  if (!qword_1EE303428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ORDRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ORDRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB04B2A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DB04B2E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DB04B33C()
{
  result = qword_1ECC0FC10;
  if (!qword_1ECC0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC10);
  }

  return result;
}

unint64_t sub_1DB04B394()
{
  result = qword_1ECC0FC18;
  if (!qword_1ECC0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC18);
  }

  return result;
}

unint64_t sub_1DB04B3EC()
{
  result = qword_1ECC0FC20;
  if (!qword_1ECC0FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC20);
  }

  return result;
}

unint64_t sub_1DB04B444()
{
  result = qword_1ECC0FC28;
  if (!qword_1ECC0FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC28);
  }

  return result;
}

unint64_t sub_1DB04B49C()
{
  result = qword_1ECC0FC30;
  if (!qword_1ECC0FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC30);
  }

  return result;
}

unint64_t sub_1DB04B4F4()
{
  result = qword_1ECC0FC38;
  if (!qword_1ECC0FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC38);
  }

  return result;
}

unint64_t sub_1DB04B54C()
{
  result = qword_1EE303418;
  if (!qword_1EE303418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303418);
  }

  return result;
}

unint64_t sub_1DB04B5A4()
{
  result = qword_1EE303420;
  if (!qword_1EE303420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303420);
  }

  return result;
}

unint64_t sub_1DB04B5FC()
{
  result = qword_1EE302920;
  if (!qword_1EE302920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302920);
  }

  return result;
}

unint64_t sub_1DB04B654()
{
  result = qword_1EE302928;
  if (!qword_1EE302928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302928);
  }

  return result;
}

unint64_t sub_1DB04B6AC()
{
  result = qword_1EE304468;
  if (!qword_1EE304468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304468);
  }

  return result;
}

unint64_t sub_1DB04B704()
{
  result = qword_1EE304470;
  if (!qword_1EE304470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304470);
  }

  return result;
}

unint64_t sub_1DB04B75C()
{
  result = qword_1ECC0FC40;
  if (!qword_1ECC0FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC40);
  }

  return result;
}

unint64_t sub_1DB04B7B4()
{
  result = qword_1ECC0FC48;
  if (!qword_1ECC0FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC48);
  }

  return result;
}

unint64_t sub_1DB04B80C()
{
  result = qword_1EE301840;
  if (!qword_1EE301840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301840);
  }

  return result;
}

unint64_t sub_1DB04B864()
{
  result = qword_1EE301848;
  if (!qword_1EE301848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301848);
  }

  return result;
}

unint64_t sub_1DB04B8BC()
{
  result = qword_1ECC0FC50;
  if (!qword_1ECC0FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC50);
  }

  return result;
}

unint64_t sub_1DB04B914()
{
  result = qword_1ECC0FC58;
  if (!qword_1ECC0FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC58);
  }

  return result;
}

unint64_t sub_1DB04B968()
{
  result = qword_1EE301730;
  if (!qword_1EE301730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301730);
  }

  return result;
}

unint64_t sub_1DB04B9D0()
{
  result = qword_1ECC0FC70;
  if (!qword_1ECC0FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC70);
  }

  return result;
}

unint64_t sub_1DB04BA28()
{
  result = qword_1EE301720;
  if (!qword_1EE301720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301720);
  }

  return result;
}

unint64_t sub_1DB04BA80()
{
  result = qword_1EE301728;
  if (!qword_1EE301728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301728);
  }

  return result;
}

uint64_t Logger.LogCategory.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB09E2B4();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t Logger.LogCategory.rawValue.getter()
{
  result = 0x52656C69666F7250;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265746E49495041;
      break;
    case 3:
      result = 0x63614D6574617453;
      break;
    case 4:
      result = 0x6E6F697461636F4CLL;
      break;
    case 5:
      result = 0x6C6C6F4361746144;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x656E654764697547;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0x746C7561666544;
      break;
    case 0xF:
      result = 0x6E6F7473656C694DLL;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0x696B726F7774654ELL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DB04BDFC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = Logger.LogCategory.rawValue.getter();
  v4 = v3;
  if (v2 == Logger.LogCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DB09E254();
  }

  return v7 & 1;
}

unint64_t sub_1DB04BE9C()
{
  result = qword_1ECC0FC78;
  if (!qword_1ECC0FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC78);
  }

  return result;
}

uint64_t sub_1DB04BEF0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB04BF58()
{
  v2 = *v0;
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DB04BFBC()
{
  v1 = *v0;
  sub_1DB09E3A4();
  Logger.LogCategory.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB04C020@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Logger.LogCategory.init(rawValue:)(a1);
}

unint64_t sub_1DB04C02C@<X0>(unint64_t *a1@<X8>)
{
  result = Logger.LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11LogCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11LogCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB04C1A4()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A0B0);
  __swift_project_value_buffer(v0, qword_1EE30A0B0);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C2EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A0C8);
  __swift_project_value_buffer(v0, qword_1EE30A0C8);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C36C()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E20);
  __swift_project_value_buffer(v0, qword_1EE309E20);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C3EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E38);
  __swift_project_value_buffer(v0, qword_1EE309E38);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C46C()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E50);
  __swift_project_value_buffer(v0, qword_1EE309E50);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C4EC()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E80);
  __swift_project_value_buffer(v0, qword_1EE309E80);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C594()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1ECC25E28);
  __swift_project_value_buffer(v0, qword_1ECC25E28);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C614()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE309E68);
  __swift_project_value_buffer(v0, qword_1EE309E68);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C700(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB04C778()
{
  v0 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v0, qword_1EE30A080);
  v1 = __swift_project_value_buffer(v0, qword_1EE30A080);
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE304020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ODIAccountManager.shared.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE302B58;
  a1[3] = type metadata accessor for ODIAccountManager();
  a1[4] = &protocol witness table for ODIAccountManager;
  *a1 = v2;
}

void *sub_1DB04C8C0()
{
  type metadata accessor for ODIAccountManager();
  v0 = swift_allocObject();
  result = sub_1DB04C920();
  qword_1EE302B58 = v0;
  return result;
}

void *sub_1DB04C920()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000015;
  v0[15] = 0x80000001DB0C1030;
  v0[17] = 0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  }

  v0[16] = v1;
  v2 = [v1 aa_primaryAppleAccount];
  v3 = v0[17];
  v0[17] = v2;

  return v0;
}

uint64_t sub_1DB04C9C4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB04CA90, v0, 0);
}

uint64_t sub_1DB04CA90()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = *(v1[19] + 128);
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1DB04CC60;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC88, &unk_1DB0B8A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DB04CE6C;
  v1[13] = &block_descriptor_38_0;
  [v11 aa:v4 primaryAppleAccountWithCompletion:?];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DB04CC60()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1DB04CDF8;
  }

  else
  {
    v5 = sub_1DB04CD80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DB04CD80()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v2 + 136);
  *(v2 + 136) = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB04CDF8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

void sub_1DB04CE6C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
    sub_1DB09D9A4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
    sub_1DB09D9B4();
  }
}

uint64_t sub_1DB04CF34()
{
  v1 = *(v0[2] + 136);
  if (v1)
  {
    v10 = v0[1];
    v2 = v1;

    return v10(v1);
  }

  else
  {
    if (qword_1EE304018 != -1)
    {
      swift_once();
    }

    v4 = sub_1DB09D4B4();
    __swift_project_value_buffer(v4, qword_1EE304020);
    v5 = sub_1DB09D494();
    v6 = sub_1DB09DB54();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DAF16000, v5, v6, "Primary account is nil. Will attempt to reload", v7, 2u);
      MEMORY[0x1E1281810](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_1DB04D0D4;
    v9 = v0[2];

    return sub_1DB04C9C4();
  }
}

uint64_t sub_1DB04D0D4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DB04D218, v7, 0);
  }
}

uint64_t sub_1DB04D218()
{
  v1 = *(*(v0 + 16) + 136);
  v4 = *(v0 + 8);
  v2 = v1;

  return v4(v1);
}

uint64_t sub_1DB04D28C()
{
  *(v1 + 224) = v0;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1DB04D31C;

  return sub_1DB04CF14();
}

uint64_t sub_1DB04D31C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 224);

    return MEMORY[0x1EEE6DFA0](sub_1DB04D464, v8, 0);
  }
}

uint64_t sub_1DB04D464()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = [*(v0 + 240) appleID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v21 + 16))
    {
      v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v23)
      {
        sub_1DAF409DC(*(v21 + 56) + 32 * v22, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 216);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DAF72EC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v33 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v20);
      v26 = v25 + 1;
      v20 = v33;
    }

    *(v20 + 2) = v26;
    v27 = &v20[56 * v25];
    *(v27 + 4) = 0xD000000000000016;
    *(v27 + 5) = 0x80000001DB0CB010;
    *(v27 + 6) = 0xD000000000000029;
    *(v27 + 7) = 0x80000001DB0CAFE0;
    *(v27 + 8) = 0x284449656C707061;
    *(v27 + 9) = 0xE900000000000029;
    *(v27 + 10) = 114;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v20;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-22202 userInfo:v31];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 208);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD000000000000028;
    *(v15 + 5) = 0x80000001DB0CAFB0;
    *(v15 + 6) = 0xD000000000000029;
    *(v15 + 7) = 0x80000001DB0CAFE0;
    *(v15 + 8) = 0x284449656C707061;
    *(v15 + 9) = 0xE900000000000029;
    *(v15 + 10) = 111;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v9;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, v16);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-22200 userInfo:v19];

    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1DB04DA34()
{
  *(v1 + 224) = v0;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1DB04DAC4;

  return sub_1DB04CF14();
}

uint64_t sub_1DB04DAC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 224);

    return MEMORY[0x1EEE6DFA0](sub_1DB04DC0C, v8, 0);
  }
}

uint64_t sub_1DB04DC0C()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = [*(v0 + 240) aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v21 + 16))
    {
      v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v23)
      {
        sub_1DAF409DC(*(v21 + 56) + 32 * v22, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 216);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1DAF72EC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v33 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v20);
      v26 = v25 + 1;
      v20 = v33;
    }

    *(v20 + 2) = v26;
    v27 = &v20[56 * v25];
    *(v27 + 4) = 0xD000000000000017;
    *(v27 + 5) = 0x80000001DB0CB2B0;
    *(v27 + 6) = 0xD000000000000029;
    *(v27 + 7) = 0x80000001DB0CAFE0;
    *(v27 + 8) = 0xD000000000000019;
    *(v27 + 9) = 0x80000001DB0CB2D0;
    *(v27 + 10) = 128;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v20;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1DB09D6B4();
    v31 = sub_1DB09D604();
    [v29 initWithDomain:v30 code:-22203 userInfo:v31];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 16))
    {
      v11 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v12)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v11, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 208);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72EC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_1DAF72EC0((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[56 * v14];
    *(v15 + 4) = 0xD000000000000028;
    *(v15 + 5) = 0x80000001DB0CAFB0;
    *(v15 + 6) = 0xD000000000000029;
    *(v15 + 7) = 0x80000001DB0CAFE0;
    *(v15 + 8) = 0xD000000000000019;
    *(v15 + 9) = 0x80000001DB0CB2D0;
    *(v15 + 10) = 125;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v9;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, v16);
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1DB09D6B4();
    v19 = sub_1DB09D604();
    [v17 initWithDomain:v18 code:-22200 userInfo:v19];

    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

id sub_1DB04E1DC()
{
  v0 = *MEMORY[0x1E6959930];
  v1 = sub_1DB09D6C4();
  v3 = sub_1DB0528D0(v1, v2);

  if (v3)
  {
    v4 = [v3 normalizedDSID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1DB09D6C4();
      v8 = v7;

      if (qword_1EE304018 != -1)
      {
        swift_once();
      }

      v9 = sub_1DB09D4B4();
      v10 = __swift_project_value_buffer(v9, qword_1EE304020);

      sub_1DB016628(v10, v6, v8);
    }

    else
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v21 = MEMORY[0x1E69E7CC0];
      v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v22 + 16))
      {
        v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v24)
        {
          sub_1DAF409DC(*(v22 + 56) + 32 * v23, &v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v21 = *&v35[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DAF72EC0(0, *(v21 + 2) + 1, 1, v21);
      }

      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v34 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v21);
        v27 = v26 + 1;
        v21 = v34;
      }

      *(v21 + 2) = v27;
      v28 = &v21[56 * v26];
      *(v28 + 4) = 0xD000000000000017;
      *(v28 + 5) = 0x80000001DB0CB2B0;
      *(v28 + 6) = 0xD000000000000029;
      *(v28 + 7) = 0x80000001DB0CAFE0;
      *(v28 + 8) = 0xD000000000000013;
      *(v28 + 9) = 0x80000001DB0CB290;
      *(v28 + 10) = 149;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v36 = v21;
      sub_1DAF40D20(&v36, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v22;
      sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v6 = v38;
      v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v31 = sub_1DB09D6B4();
      v32 = sub_1DB09D604();
      [v30 initWithDomain:v31 code:-22205 userInfo:v32];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v12 + 16))
    {
      v13 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v14)
      {
        sub_1DAF409DC(*(v12 + 56) + 32 * v13, &v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v11 = *&v35[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAF72EC0(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      v11 = sub_1DAF72EC0((v15 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 2) = v16 + 1;
    v17 = &v11[56 * v16];
    *(v17 + 4) = 0xD00000000000001ELL;
    *(v17 + 5) = 0x80000001DB0CB270;
    *(v17 + 6) = 0xD000000000000029;
    *(v17 + 7) = 0x80000001DB0CAFE0;
    *(v17 + 8) = 0xD000000000000013;
    *(v17 + 9) = 0x80000001DB0CB290;
    *(v17 + 10) = 146;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v36 = v11;
    sub_1DAF40D20(&v36, v35);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v12;
    sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, v18);
    v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v19 = sub_1DB09D6B4();
    v20 = sub_1DB09D604();
    [v6 initWithDomain:v19 code:-22201 userInfo:v20];

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1DB04E7C8(uint64_t a1, uint64_t a2)
{
  v3[128] = v2;
  v3[127] = a2;
  v3[126] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC80, &unk_1DB0B89F8);
  v3[129] = v4;
  v5 = *(v4 - 8);
  v3[130] = v5;
  v6 = *(v5 + 64) + 15;
  v3[131] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E688, &qword_1DB0A3380);
  v3[132] = v7;
  v8 = *(v7 - 8);
  v3[133] = v8;
  v9 = *(v8 + 64) + 15;
  v3[134] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB04E904, v2, 0);
}

uint64_t sub_1DB04E904()
{
  v1 = *(v0 + 1024);
  if (!*(v0 + 1016))
  {
    v7 = *(v1 + 128);
    *(v0 + 1080) = v7;
    v8 = [v7 aida_accountForPrimaryiCloudAccount];
    if (!v8)
    {
      v9 = v0 + 80;
      v24 = *(v0 + 1048);
      v25 = *(v0 + 1040);
      v26 = *(v0 + 1032);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 1000;
      *(v0 + 88) = sub_1DB04FE94;
      swift_continuation_init();
      *(v0 + 328) = v26;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FC88, &unk_1DB0B8A08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
      sub_1DB09D994();
      (*(v25 + 32))(boxed_opaque_existential_0, v24, v26);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1DB04CE6C;
      *(v0 + 296) = &block_descriptor_15;
      [v7 aa_primaryAppleAccountWithCompletion_];
      (*(v25 + 8))(boxed_opaque_existential_0, v26);
      goto LABEL_8;
    }

    v6 = v8;
    v75 = v7;
    goto LABEL_6;
  }

  v2 = *(v0 + 1008);
  v3 = *(v1 + 128);
  v4 = *(v0 + 1016);
  v5 = sub_1DB09D6B4();
  v6 = [v3 aida:v5 accountForAltDSID:?];

  if (v6)
  {
    v75 = v3;
LABEL_6:
    v9 = v0 + 144;
    *(v0 + 1088) = v6;
    v10 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = *(v0 + 1024);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E570, &qword_1DB0A2828);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB0A04E0;
    v15 = *(v13 + 112);
    v16 = *(v13 + 120);
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v73 = v6;

    v17 = sub_1DB09D914();
    *(v0 + 1096) = v17;

    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 984;
    *(v0 + 152) = sub_1DB04F5C4;
    swift_continuation_init();
    *(v0 + 264) = v12;
    v18 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v11 + 32))(v18, v10, v12);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1DAF68EFC;
    *(v0 + 232) = &block_descriptor_33;
    [v75 aida:v73 renewCredentialsForAccount:v17 services:1 force:? completion:?];
LABEL_7:
    (*(v11 + 8))(v18, v12);
LABEL_8:

    return MEMORY[0x1EEE6DEC8](v9);
  }

  v19 = *(v0 + 1008);
  v20 = sub_1DB09D6B4();
  v21 = [v3 aa:v20 appleAccountWithAltDSID:?];

  *(v0 + 1120) = v21;
  if (v21)
  {
    v9 = v0 + 16;
    v76 = v3;
    v22 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v74 = v21;
    v23 = sub_1DB09D6B4();
    *(v0 + 1128) = v23;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 968;
    *(v0 + 24) = sub_1DB0508A0;
    swift_continuation_init();
    *(v0 + 392) = v12;
    v18 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v11 + 32))(v18, v22, v12);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1DAF68EFC;
    *(v0 + 360) = &block_descriptor_29;
    [v76 renewCredentialsForAccount:v74 force:0 reason:v23 completion:?];
    goto LABEL_7;
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v28 = MEMORY[0x1E69E7CC0];
  v29 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v29 + 16))
  {
    v30 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v31)
    {
      sub_1DAF409DC(*(v29 + 56) + 32 * v30, v0 + 592);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 992);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1DAF72EC0(0, *(v28 + 2) + 1, 1, v28);
  }

  v33 = *(v28 + 2);
  v32 = *(v28 + 3);
  if (v33 >= v32 >> 1)
  {
    v28 = sub_1DAF72EC0((v32 > 1), v33 + 1, 1, v28);
  }

  *(v28 + 2) = v33 + 1;
  v34 = &v28[56 * v33];
  *(v34 + 4) = 0xD000000000000028;
  *(v34 + 5) = 0x80000001DB0CAFB0;
  *(v34 + 6) = 0xD000000000000029;
  *(v34 + 7) = 0x80000001DB0CAFE0;
  *(v34 + 8) = 0xD000000000000017;
  *(v34 + 9) = 0x80000001DB0CB1D0;
  *(v34 + 10) = 196;
  *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 624) = v28;
  sub_1DAF40D20((v0 + 624), (v0 + 656));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v29;
  sub_1DAF3B11C((v0 + 656), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v37 = sub_1DB09D6B4();
  v38 = sub_1DB09D604();
  v39 = [v36 initWithDomain:v37 code:-22200 userInfo:v38];

  swift_willThrow();
  v40 = v39;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v41 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v42 = v39;
  v43 = sub_1DB09CE64();
  v44 = [v43 domain];
  v45 = sub_1DB09D6C4();
  v47 = v46;

  if (v45 == 0x726F72724549444FLL && v47 == 0xE800000000000000)
  {

    goto LABEL_31;
  }

  v48 = sub_1DB09E254();

  if (v48)
  {
LABEL_31:
    ODIErrorCode.init(rawValue:)([v43 code]);
    v49 = [v43 userInfo];
    v50 = sub_1DB09D624();

    if (v77 == 211)
    {
      v51 = 195;
    }

    else
    {
      v51 = v77 ^ 0x80u;
    }

    goto LABEL_35;
  }

  v52 = *MEMORY[0x1E696AA08];
  v53 = sub_1DB09D6C4();
  v55 = v54;
  *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 432) = v43;
  sub_1DAF40D20((v0 + 432), (v0 + 464));
  v56 = v43;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 464), v53, v55, v57);

  v50 = v41;
  v51 = 195;
LABEL_35:
  if (*(v50 + 16) && (v58 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v59 & 1) != 0) && (sub_1DAF409DC(*(v50 + 56) + 32 * v58, v0 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v60 = *(v0 + 944);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1DAF72EC0(0, *(v60 + 2) + 1, 1, v60);
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1DAF72EC0((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[56 * v62];
  *(v63 + 4) = 0xD00000000000001BLL;
  *(v63 + 5) = 0x80000001DB0CB1B0;
  *(v63 + 6) = 0xD000000000000029;
  *(v63 + 7) = 0x80000001DB0CAFE0;
  *(v63 + 8) = 0xD000000000000017;
  *(v63 + 9) = 0x80000001DB0CB1D0;
  *(v63 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v60;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v64);
  v65 = qword_1DB0B8A18[v51];
  v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v67 = sub_1DB09D6B4();
  v68 = sub_1DB09D604();
  [v66 initWithDomain:v67 code:v65 userInfo:v68];

  swift_willThrow();

  v69 = *(v0 + 1072);
  v70 = *(v0 + 1048);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_1DB04F5C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1104) = v3;
  v4 = *(v1 + 1024);
  if (v3)
  {
    v5 = sub_1DB051120;
  }

  else
  {
    v5 = sub_1DB04F6E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DB04F6E4()
{
  v1 = *(v0 + 1096);

  v2 = *(v0 + 984);
  v3 = *(v0 + 1088);
  switch(v2)
  {
    case 0:
      v12 = *(v0 + 1072);
      v13 = *(v0 + 1048);

      v14 = *(v0 + 8);
      goto LABEL_43;
    case 2:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v9 + 16))
      {
        v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v11)
        {
          sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 848);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v8 = *(v0 + 952);
          }

          else
          {
            v8 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v43 = sub_1DAF72EC0((v19 > 1), v20 + 1, 1, v8);
        v21 = v20 + 1;
        v8 = v43;
      }

      *(v8 + 2) = v21;
      v22 = &v8[56 * v20];
      *(v22 + 4) = 0xD000000000000019;
      *(v22 + 5) = 0x80000001DB0CB220;
      *(v22 + 6) = 0xD000000000000029;
      *(v22 + 7) = 0x80000001DB0CAFE0;
      *(v22 + 8) = 0xD000000000000017;
      *(v22 + 9) = 0x80000001DB0CB1D0;
      *(v22 + 10) = 212;
      *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 880) = v8;
      sub_1DAF40D20((v0 + 880), (v0 + 912));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = (v0 + 912);
      break;
    case 1:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v4 = MEMORY[0x1E69E7CC0];
      v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v5 + 16))
      {
        v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v7)
        {
          sub_1DAF409DC(*(v5 + 56) + 32 * v6, v0 + 400);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v4 = *(v0 + 976);
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v44 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v4);
        v27 = v26 + 1;
        v4 = v44;
      }

      *(v4 + 2) = v27;
      v28 = &v4[56 * v26];
      *(v28 + 4) = 0xD000000000000020;
      *(v28 + 5) = 0x80000001DB0CB240;
      *(v28 + 6) = 0xD000000000000029;
      *(v28 + 7) = 0x80000001DB0CAFE0;
      *(v28 + 8) = 0xD000000000000017;
      *(v28 + 9) = 0x80000001DB0CB1D0;
      *(v28 + 10) = 209;
      *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 816) = v4;
      sub_1DAF40D20((v0 + 816), (v0 + 784));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = (v0 + 784);
      break;
    default:
      v46 = *(v0 + 1088);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v15 = MEMORY[0x1E69E7CC0];
      v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v16 + 16))
      {
        v17 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v18)
        {
          sub_1DAF409DC(*(v16 + 56) + 32 * v17, v0 + 688);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v15 = *(v0 + 960);
          }

          else
          {
            v15 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DAF72EC0(0, *(v15 + 2) + 1, 1, v15);
      }

      v33 = *(v15 + 2);
      v32 = *(v15 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v45 = sub_1DAF72EC0((v32 > 1), v33 + 1, 1, v15);
        v34 = v33 + 1;
        v15 = v45;
      }

      *(v15 + 2) = v34;
      v35 = &v15[56 * v33];
      *(v35 + 4) = 0xD000000000000021;
      *(v35 + 5) = 0x80000001DB0CB1F0;
      *(v35 + 6) = 0xD000000000000029;
      *(v35 + 7) = 0x80000001DB0CAFE0;
      *(v35 + 8) = 0xD000000000000017;
      *(v35 + 9) = 0x80000001DB0CB1D0;
      *(v35 + 10) = 215;
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 720) = v15;
      sub_1DAF40D20((v0 + 720), (v0 + 752));
      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 752), 0x636F766E4949444FLL, 0xEE00736E6F697461, v36);
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = sub_1DB09D6B4();
      v39 = sub_1DB09D604();
      [v37 initWithDomain:v38 code:-1104 userInfo:v39];

      v3 = v46;
      goto LABEL_42;
  }

  sub_1DAF3B11C(v24, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1DB09D6B4();
  v31 = sub_1DB09D604();
  [v29 initWithDomain:v30 code:-1104 userInfo:v31];

LABEL_42:
  swift_willThrow();

  v40 = *(v0 + 1072);
  v41 = *(v0 + 1048);

  v14 = *(v0 + 8);
LABEL_43:

  return v14();
}

uint64_t sub_1DB04FE94()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1112) = v3;
  v4 = *(v1 + 1024);
  if (v3)
  {
    v5 = sub_1DB051600;
  }

  else
  {
    v5 = sub_1DB04FFB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DB04FFB4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 1080);
  *(v0 + 1120) = v1;
  if (v1)
  {
    v3 = *(v0 + 1072);
    v4 = *(v0 + 1064);
    v5 = *(v0 + 1056);
    v54 = v2;
    v53 = v1;
    v6 = sub_1DB09D6B4();
    *(v0 + 1128) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 968;
    *(v0 + 24) = sub_1DB0508A0;
    swift_continuation_init();
    *(v0 + 392) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    type metadata accessor for ACAccountCredentialRenewResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    sub_1DB09D994();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1DAF68EFC;
    *(v0 + 360) = &block_descriptor_29;
    [v54 renewCredentialsForAccount:v53 force:0 reason:v6 completion:?];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v9 + 16))
  {
    v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v11)
    {
      sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 592);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 992);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  if (v13 >= v12 >> 1)
  {
    v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
  }

  *(v8 + 2) = v13 + 1;
  v14 = &v8[56 * v13];
  *(v14 + 4) = 0xD000000000000028;
  *(v14 + 5) = 0x80000001DB0CAFB0;
  *(v14 + 6) = 0xD000000000000029;
  *(v14 + 7) = 0x80000001DB0CAFE0;
  *(v14 + 8) = 0xD000000000000017;
  *(v14 + 9) = 0x80000001DB0CB1D0;
  *(v14 + 10) = 196;
  *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 624) = v8;
  sub_1DAF40D20((v0 + 624), (v0 + 656));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v9;
  sub_1DAF3B11C((v0 + 656), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1DB09D6B4();
  v18 = sub_1DB09D604();
  v19 = [v16 initWithDomain:v17 code:-22200 userInfo:v18];

  swift_willThrow();
  v20 = v19;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v22 = v19;
  v23 = sub_1DB09CE64();
  v24 = [v23 domain];
  v25 = sub_1DB09D6C4();
  v27 = v26;

  if (v25 == 0x726F72724549444FLL && v27 == 0xE800000000000000)
  {

    goto LABEL_22;
  }

  v28 = sub_1DB09E254();

  if (v28)
  {
LABEL_22:
    ODIErrorCode.init(rawValue:)([v23 code]);
    v29 = [v23 userInfo];
    v30 = sub_1DB09D624();

    if (v55 == 211)
    {
      v31 = 195;
    }

    else
    {
      v31 = v55 ^ 0x80u;
    }

    if (!*(v30 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v32 = *MEMORY[0x1E696AA08];
  v33 = sub_1DB09D6C4();
  v35 = v34;
  *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 432) = v23;
  sub_1DAF40D20((v0 + 432), (v0 + 464));
  v36 = v23;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 464), v33, v35, v37);

  v30 = v21;
  v31 = 195;
  if (!*(v21 + 16))
  {
LABEL_31:
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

LABEL_28:
  v38 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
  if ((v39 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_1DAF409DC(*(v30 + 56) + 32 * v38, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  if (!swift_dynamicCast())
  {
    goto LABEL_31;
  }

  v40 = *(v0 + 944);
LABEL_32:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_1DAF72EC0(0, *(v40 + 2) + 1, 1, v40);
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_1DAF72EC0((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v43 = &v40[56 * v42];
  *(v43 + 4) = 0xD00000000000001BLL;
  *(v43 + 5) = 0x80000001DB0CB1B0;
  *(v43 + 6) = 0xD000000000000029;
  *(v43 + 7) = 0x80000001DB0CAFE0;
  *(v43 + 8) = 0xD000000000000017;
  *(v43 + 9) = 0x80000001DB0CB1D0;
  *(v43 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v40;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v44);
  v45 = qword_1DB0B8A18[v31];
  v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v47 = sub_1DB09D6B4();
  v48 = sub_1DB09D604();
  [v46 initWithDomain:v47 code:v45 userInfo:v48];

  swift_willThrow();

  v49 = *(v0 + 1072);
  v50 = *(v0 + 1048);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1DB0508A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1136) = v3;
  v4 = *(v1 + 1024);
  if (v3)
  {
    v5 = sub_1DB051AC0;
  }

  else
  {
    v5 = sub_1DB0509C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DB0509C0()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);

  v3 = *(v0 + 968);
  switch(v3)
  {
    case 0:
      v12 = *(v0 + 1072);
      v13 = *(v0 + 1048);

      v14 = *(v0 + 8);
      goto LABEL_43;
    case 2:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v8 = MEMORY[0x1E69E7CC0];
      v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v9 + 16))
      {
        v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v11)
        {
          sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 848);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v8 = *(v0 + 952);
          }

          else
          {
            v8 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v40 = sub_1DAF72EC0((v19 > 1), v20 + 1, 1, v8);
        v21 = v20 + 1;
        v8 = v40;
      }

      *(v8 + 2) = v21;
      v22 = &v8[56 * v20];
      *(v22 + 4) = 0xD000000000000019;
      *(v22 + 5) = 0x80000001DB0CB220;
      *(v22 + 6) = 0xD000000000000029;
      *(v22 + 7) = 0x80000001DB0CAFE0;
      *(v22 + 8) = 0xD000000000000017;
      *(v22 + 9) = 0x80000001DB0CB1D0;
      *(v22 + 10) = 212;
      *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 880) = v8;
      sub_1DAF40D20((v0 + 880), (v0 + 912));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = (v0 + 912);
      break;
    case 1:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v4 = MEMORY[0x1E69E7CC0];
      v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v5 + 16))
      {
        v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v7)
        {
          sub_1DAF409DC(*(v5 + 56) + 32 * v6, v0 + 400);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v4 = *(v0 + 976);
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v41 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v4);
        v27 = v26 + 1;
        v4 = v41;
      }

      *(v4 + 2) = v27;
      v28 = &v4[56 * v26];
      *(v28 + 4) = 0xD000000000000020;
      *(v28 + 5) = 0x80000001DB0CB240;
      *(v28 + 6) = 0xD000000000000029;
      *(v28 + 7) = 0x80000001DB0CAFE0;
      *(v28 + 8) = 0xD000000000000017;
      *(v28 + 9) = 0x80000001DB0CB1D0;
      *(v28 + 10) = 209;
      *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 816) = v4;
      sub_1DAF40D20((v0 + 816), (v0 + 784));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = (v0 + 784);
      break;
    default:
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v15 = MEMORY[0x1E69E7CC0];
      v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v16 + 16))
      {
        v17 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v18)
        {
          sub_1DAF409DC(*(v16 + 56) + 32 * v17, v0 + 688);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v15 = *(v0 + 960);
          }

          else
          {
            v15 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DAF72EC0(0, *(v15 + 2) + 1, 1, v15);
      }

      v32 = *(v15 + 2);
      v31 = *(v15 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v42 = sub_1DAF72EC0((v31 > 1), v32 + 1, 1, v15);
        v33 = v32 + 1;
        v15 = v42;
      }

      *(v15 + 2) = v33;
      v34 = &v15[56 * v32];
      *(v34 + 4) = 0xD000000000000021;
      *(v34 + 5) = 0x80000001DB0CB1F0;
      *(v34 + 6) = 0xD000000000000029;
      *(v34 + 7) = 0x80000001DB0CAFE0;
      *(v34 + 8) = 0xD000000000000017;
      *(v34 + 9) = 0x80000001DB0CB1D0;
      *(v34 + 10) = 215;
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 720) = v15;
      sub_1DAF40D20((v0 + 720), (v0 + 752));
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 752), 0x636F766E4949444FLL, 0xEE00736E6F697461, v35);
      v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v30 = sub_1DB09D6B4();
      goto LABEL_42;
  }

  sub_1DAF3B11C(v24, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1DB09D6B4();
LABEL_42:
  v36 = sub_1DB09D604();
  [v29 initWithDomain:v30 code:-1104 userInfo:v36];

  swift_willThrow();
  v37 = *(v0 + 1072);
  v38 = *(v0 + 1048);

  v14 = *(v0 + 8);
LABEL_43:

  return v14();
}

uint64_t sub_1DB051120()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  swift_willThrow();

  v4 = *(v0 + 1104);
  v39 = *(v0 + 1088);
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v14 = sub_1DB09E254();

    if ((v14 & 1) == 0)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16 = sub_1DB09D6C4();
      v18 = v17;
      *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v0 + 432) = v8;
      sub_1DAF40D20((v0 + 432), (v0 + 464));
      v19 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 464), v16, v18, isUniquelyReferenced_nonNull_native);

      v21 = v6;
      v22 = 195;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v23 = [v8 userInfo];
  v21 = sub_1DB09D624();

  if (v40 == 211)
  {
    v22 = 195;
  }

  else
  {
    v22 = v40 ^ 0x80u;
  }

LABEL_13:
  if (*(v21 + 16) && (v24 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v25 & 1) != 0) && (sub_1DAF409DC(*(v21 + 56) + 32 * v24, v0 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v26 = *(v0 + 944);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1DAF72EC0(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1DAF72EC0((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[56 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x80000001DB0CB1B0;
  *(v29 + 6) = 0xD000000000000029;
  *(v29 + 7) = 0x80000001DB0CAFE0;
  *(v29 + 8) = 0xD000000000000017;
  *(v29 + 9) = 0x80000001DB0CB1D0;
  *(v29 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v26;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v30);
  v31 = qword_1DB0B8A18[v22];
  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_1DB09D6B4();
  v34 = sub_1DB09D604();
  [v32 initWithDomain:v33 code:v31 userInfo:v34];

  swift_willThrow();

  v35 = *(v0 + 1072);
  v36 = *(v0 + 1048);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1DB051600()
{
  v1 = *(v0 + 1112);
  swift_willThrow();
  v2 = *(v0 + 1112);
  v3 = v2;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v5 = v2;
  v6 = sub_1DB09CE64();
  v7 = [v6 domain];
  v8 = sub_1DB09D6C4();
  v10 = v9;

  if (v8 == 0x726F72724549444FLL && v10 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_1DB09E254();

    if ((v12 & 1) == 0)
    {
      v13 = *MEMORY[0x1E696AA08];
      v14 = sub_1DB09D6C4();
      v16 = v15;
      *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v0 + 432) = v6;
      sub_1DAF40D20((v0 + 432), (v0 + 464));
      v17 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 464), v14, v16, isUniquelyReferenced_nonNull_native);

      v19 = v4;
      v20 = 195;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v6 code]);
  v21 = [v6 userInfo];
  v19 = sub_1DB09D624();

  if (v37 == 211)
  {
    v20 = 195;
  }

  else
  {
    v20 = v37 ^ 0x80u;
  }

LABEL_13:
  if (*(v19 + 16) && (v22 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v23 & 1) != 0) && (sub_1DAF409DC(*(v19 + 56) + 32 * v22, v0 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v24 = *(v0 + 944);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DAF72EC0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[56 * v26];
  *(v27 + 4) = 0xD00000000000001BLL;
  *(v27 + 5) = 0x80000001DB0CB1B0;
  *(v27 + 6) = 0xD000000000000029;
  *(v27 + 7) = 0x80000001DB0CAFE0;
  *(v27 + 8) = 0xD000000000000017;
  *(v27 + 9) = 0x80000001DB0CB1D0;
  *(v27 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v24;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v28);
  v29 = qword_1DB0B8A18[v20];
  v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v31 = sub_1DB09D6B4();
  v32 = sub_1DB09D604();
  [v30 initWithDomain:v31 code:v29 userInfo:v32];

  swift_willThrow();

  v33 = *(v0 + 1072);
  v34 = *(v0 + 1048);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DB051AC0()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  swift_willThrow();

  v4 = *(v0 + 1136);
  v5 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v7 = v4;
  v8 = sub_1DB09CE64();
  v9 = [v8 domain];
  v10 = sub_1DB09D6C4();
  v12 = v11;

  if (v10 == 0x726F72724549444FLL && v12 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      v17 = *MEMORY[0x1E696AA08];
      v18 = sub_1DB09D6C4();
      v20 = v19;
      *(v0 + 456) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *(v0 + 432) = v8;
      sub_1DAF40D20((v0 + 432), (v0 + 464));
      v21 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 464), v18, v20, isUniquelyReferenced_nonNull_native);

      v15 = v6;
      v16 = 195;
      goto LABEL_11;
    }
  }

  ODIErrorCode.init(rawValue:)([v8 code]);
  v14 = [v8 userInfo];
  v15 = sub_1DB09D624();

  if (v38 == 211)
  {
    v16 = 195;
  }

  else
  {
    v16 = v38 ^ 0x80u;
  }

LABEL_11:
  if (*(v15 + 16) && (v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v24 & 1) != 0) && (sub_1DAF409DC(*(v15 + 56) + 32 * v23, v0 + 496), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v25 = *(v0 + 944);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = 0xD00000000000001BLL;
  *(v28 + 5) = 0x80000001DB0CB1B0;
  *(v28 + 6) = 0xD000000000000029;
  *(v28 + 7) = 0x80000001DB0CAFE0;
  *(v28 + 8) = 0xD000000000000017;
  *(v28 + 9) = 0x80000001DB0CB1D0;
  *(v28 + 10) = 201;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 528) = v25;
  sub_1DAF40D20((v0 + 528), (v0 + 560));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 560), 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
  v30 = qword_1DB0B8A18[v16];
  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1DB09D6B4();
  v33 = sub_1DB09D604();
  [v31 initWithDomain:v32 code:v30 userInfo:v33];

  swift_willThrow();

  v34 = *(v0 + 1072);
  v35 = *(v0 + 1048);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DB051F9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 128);
    v4 = sub_1DB09D6B4();
    v5 = [v3 aida:v4 accountForAltDSID:?];

    v6 = qword_1EE301DE8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    sub_1DB09DB84();
    sub_1DB09D444();
  }

  else
  {
    v7 = [*(v2 + 128) aida_accountForPrimaryiCloudAccount];
  }

  if (v7)
  {
    v8 = [v7 aida_alternateDSID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1DB09D6C4();
      v12 = v11;

      v13 = *(v2 + 112);
      v14 = *(v2 + 120);
      v15 = sub_1DB09D6B4();
      v16 = [v7 aida:v15 tokenForService:?];

      if (v16)
      {
        v17 = sub_1DB09D6C4();
        v19 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1DB0A0500;
        v21 = MEMORY[0x1E69E6158];
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v22 = sub_1DAF4DC24();
        *(v20 + 32) = v10;
        *(v20 + 40) = v12;
        *(v20 + 96) = v21;
        *(v20 + 104) = v22;
        *(v20 + 64) = v22;
        *(v20 + 72) = v17;
        *(v20 + 80) = v19;
        v23 = sub_1DB09D704();

        return v23;
      }

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v50 = MEMORY[0x1E69E7CC0];
      v51 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v51 + 16))
      {
        v52 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v53)
        {
          sub_1DAF409DC(*(v51 + 56) + 32 * v52, &v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v50 = *&v63[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1DAF72EC0(0, *(v50 + 2) + 1, 1, v50);
      }

      v55 = *(v50 + 2);
      v54 = *(v50 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v62 = sub_1DAF72EC0((v54 > 1), v55 + 1, 1, v50);
        v56 = v55 + 1;
        v50 = v62;
      }

      *(v50 + 2) = v56;
      v57 = &v50[56 * v55];
      *(v57 + 4) = 0xD00000000000001DLL;
      *(v57 + 5) = 0x80000001DB0CB150;
      *(v57 + 6) = 0xD000000000000029;
      *(v57 + 7) = 0x80000001DB0CAFE0;
      *(v57 + 8) = 0xD000000000000013;
      *(v57 + 9) = 0x80000001DB0CB100;
      *(v57 + 10) = 239;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v64 = v50;
      sub_1DAF40D20(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1DB09D6B4();
      v48 = sub_1DB09D604();
      v49 = [v59 initWithDomain:v47 code:-22208 userInfo:v48];
    }

    else
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v37 = MEMORY[0x1E69E7CC0];
      v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v38 + 16))
      {
        v39 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v40)
        {
          sub_1DAF409DC(*(v38 + 56) + 32 * v39, &v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v37 = *&v63[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DAF72EC0(0, *(v37 + 2) + 1, 1, v37);
      }

      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v61 = sub_1DAF72EC0((v41 > 1), v42 + 1, 1, v37);
        v43 = v42 + 1;
        v37 = v61;
      }

      *(v37 + 2) = v43;
      v44 = &v37[56 * v42];
      *(v44 + 4) = 0xD000000000000026;
      *(v44 + 5) = 0x80000001DB0CB120;
      *(v44 + 6) = 0xD000000000000029;
      *(v44 + 7) = 0x80000001DB0CAFE0;
      *(v44 + 8) = 0xD000000000000013;
      *(v44 + 9) = 0x80000001DB0CB100;
      *(v44 + 10) = 236;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v64 = v37;
      sub_1DAF40D20(&v64, v63);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, v45);
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1DB09D6B4();
      v48 = sub_1DB09D604();
      v49 = [v46 initWithDomain:v47 code:-22207 userInfo:v48];
    }

    v60 = v49;

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v26 + 16))
    {
      v27 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v28)
      {
        sub_1DAF409DC(*(v26 + 56) + 32 * v27, &v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v25 = *&v63[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = sub_1DAF72EC0((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    v31 = &v25[56 * v30];
    *(v31 + 4) = 0xD000000000000028;
    *(v31 + 5) = 0x80000001DB0CAFB0;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x80000001DB0CAFE0;
    *(v31 + 8) = 0xD000000000000013;
    *(v31 + 9) = 0x80000001DB0CB100;
    *(v31 + 10) = 233;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v64 = v25;
    sub_1DAF40D20(&v64, v63);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v63, 0x636F766E4949444FLL, 0xEE00736E6F697461, v32);
    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = sub_1DB09D6B4();
    v35 = sub_1DB09D604();
    v36 = [v33 initWithDomain:v34 code:-22206 userInfo:v35];

    swift_willThrow();
  }

  return 0;
}

id sub_1DB0528D0(SEL *a1, unint64_t *a2)
{
  v5 = *(v2 + 128);
  v6 = sub_1DB09D6B4();
  v7 = [v5 accountTypeWithAccountTypeIdentifier_];

  v8 = [v5 accountsWithAccountType_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1DB09D934();
  }

  else
  {
    v10 = 0;
  }

  if (qword_1EE301DE8 != -1)
  {
LABEL_28:
    swift_once();
  }

  sub_1DB09DB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1DB0A0500;
  if (v10)
  {
    v13 = *(v10 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = MEMORY[0x1E69E6530];
  *(v11 + 64) = v14;
  *(v11 + 32) = v13;
  *(v11 + 96) = MEMORY[0x1E69E6158];
  *(v11 + 104) = sub_1DAF4DC24();
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  sub_1DB09D444();

  if (v10)
  {
    v23 = v7;
    v15 = *(v10 + 16);

    v7 = 0;
    a2 = &qword_1EE300978;
    a1 = &unk_1E85EE000;
    v16 = &unk_1E85EE000;
    while (1)
    {
      if (v7 == v15)
      {
        v28 = 0u;
        v29 = 0u;
        v7 = v15;
      }

      else
      {
        if (v7 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1DAF409DC(v10 + 32 + 32 * v7++, &v28);
      }

      v27[0] = v28;
      v27[1] = v29;
      if (!*(&v29 + 1))
      {
        swift_bridgeObjectRelease_n();
        v7 = v23;
        break;
      }

      sub_1DAF40D20(v27, v26);
      sub_1DAF409DC(v26, v24);
      sub_1DAF4062C(0, &qword_1EE300978, 0x1E6959A28);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v25 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v17 = v25;
      if (v25)
      {
        if ([v25 a1[297]])
        {
          if ([v17 v16[298]])
          {
            v18 = [v17 normalizedDSID];
            if (v18)
            {
              v19 = v18;
              sub_1DB09D6C4();

              a1 = &unk_1E85EE000;
              v20 = sub_1DB09D7A4();

              v21 = v20 <= 3;
              v16 = &unk_1E85EE000;
              if (!v21)
              {
                swift_bridgeObjectRelease_n();
                v7 = v23;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  sub_1DB09DB44();
  sub_1DB09D444();
  v17 = 0;
LABEL_26:

  return v17;
}

uint64_t ODIAccountManager.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIAccountManager.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DB052CE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF97898;

  return sub_1DB04CF14();
}

uint64_t sub_1DB052D70(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB052D94, v4, 0);
}

uint64_t sub_1DB052D94()
{
  v1 = *(v0 + 32);
  v2 = sub_1DB0528D0(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t dispatch thunk of ODIAccountManagerProtocol.primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB0532CC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAFD37FC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ODIAccountManager.primaryAppleAccount()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF61E90;

  return v6();
}

uint64_t dispatch thunk of ODIAccountManager.appleID()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF680EC;

  return v6();
}

uint64_t sub_1DB0532E0(uint64_t *a1)
{
  v3 = sub_1DB09D734();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v79[1] = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v88 = *a1;
  v94 = v7;
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a1[8];
  v15 = a1[9];
  v93 = a1[10];
  v92 = a1[11];
  v91 = a1[12];
  v90 = a1[13];
  v89 = a1[14];
  v16 = (a1 + 15);
  v17 = *(a1 + 17);
  v155 = *(a1 + 15);
  v156 = v17;
  v18 = *(a1 + 19);
  v19 = *(a1 + 21);
  v20 = *(a1 + 23);
  v160 = *(a1 + 25);
  v159 = v20;
  v158 = v19;
  v157 = v18;
  v21 = *(a1 + 27);
  v22 = *(a1 + 29);
  v23 = *(a1 + 31);
  v24 = *(a1 + 35);
  v164 = *(a1 + 33);
  v163 = v23;
  v162 = v22;
  v161 = v21;
  v25 = *(a1 + 37);
  v26 = *(a1 + 39);
  v168 = *(a1 + 328);
  v167 = v26;
  v166 = v25;
  v165 = v24;
  v80 = *v1;
  if (v9)
  {
    v83 = v14;
    v84 = v12;
    v86 = v11;
    v87 = v8;
    v85 = v10;
  }

  else
  {
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
    v15 = 0;
    v13 = 0;
    v87 = 0;
  }

  v27 = *(a1 + 37);
  v151 = *(a1 + 35);
  v152 = v27;
  v153 = *(a1 + 39);
  v154 = *(a1 + 328);
  v28 = *(a1 + 29);
  v147 = *(a1 + 27);
  v148 = v28;
  v29 = *(a1 + 33);
  v149 = *(a1 + 31);
  v150 = v29;
  v30 = *(a1 + 21);
  v143 = *(a1 + 19);
  v144 = v30;
  v31 = *(a1 + 25);
  v145 = *(a1 + 23);
  v146 = v31;
  v32 = *(a1 + 17);
  v141 = *v16;
  v142 = v32;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(&v141) == 1)
  {
    v82 = 0;
    v33 = 0;
  }

  else
  {
    v33 = *(&v142 + 1);
    v82 = v142;
  }

  v34 = v16[11];
  v137 = v16[10];
  v138 = v34;
  v139 = v16[12];
  v140 = *(v16 + 208);
  v35 = v16[6];
  v134 = v16[7];
  v36 = v16[9];
  v135 = v16[8];
  v136 = v36;
  v37 = v16[3];
  v129 = v16[2];
  v130 = v37;
  v38 = v16[5];
  v131 = v16[4];
  v132 = v38;
  v133 = v35;
  v39 = v16[1];
  v128[0] = *v16;
  v128[1] = v39;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v128) == 1)
  {
    sub_1DB053A2C(&v118);
  }

  else
  {
    *&v112[40] = v130;
    *&v112[56] = v131;
    *&v112[72] = v132;
    *&v112[88] = v133;
    v117 = v137;
    *&v112[24] = v129;
    v109 = v128[0];
    LOBYTE(v110) = v140;
    *(&v110 + 1) = *(&v136 + 1);
    LOBYTE(v111) = v137;
    *(&v111 + 1) = v136;
    *v112 = *(&v139 + 1);
    *&v112[8] = v138;
    nullsub_3(&v109);

    sub_1DB053AA4(&v129, v97);
    v124 = *&v112[48];
    v125 = *&v112[64];
    v126 = *&v112[80];
    v127 = *&v112[96];
    v120 = v111;
    v121 = *v112;
    v122 = *&v112[16];
    v123 = *&v112[32];
    v118 = v109;
    v119 = v110;
  }

  v105 = v124;
  v106 = v125;
  v107 = v126;
  v108 = v127;
  v101 = v120;
  v102 = v121;
  v103 = v122;
  v104 = v123;
  v99 = v118;
  v100 = v119;
  v40 = v16[11];
  v113 = v16[10];
  v114 = v40;
  v115 = v16[12];
  v116 = *(v16 + 208);
  v41 = v16[7];
  *&v112[48] = v16[6];
  *&v112[64] = v41;
  v42 = v16[9];
  *&v112[80] = v16[8];
  *&v112[96] = v42;
  v43 = v16[3];
  v111 = v16[2];
  *v112 = v43;
  v44 = v16[5];
  *&v112[16] = v16[4];
  *&v112[32] = v44;
  v45 = v16[1];
  v109 = *v16;
  v110 = v45;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(&v109) == 1)
  {
    v46 = 0xE200000000000000;
    v81 = 12589;
  }

  else
  {
    v46 = *&v112[88];
    v81 = *&v112[80];
  }

  type metadata accessor for AMPCristalPayloadData();
  v47 = swift_allocObject();
  v48 = v85;
  *(v47 + 16) = v86;
  *(v47 + 24) = v48;
  v49 = v84;
  *(v47 + 32) = v83;
  *(v47 + 40) = v15;
  *(v47 + 48) = v49;
  *(v47 + 56) = v13;
  *(v47 + 64) = v87;
  *(v47 + 72) = v9;
  *(v47 + 80) = v82;
  *(v47 + 88) = v33;
  v50 = v94;
  *(v47 + 96) = v88;
  *(v47 + 104) = v50;
  v51 = v106;
  *(v47 + 208) = v105;
  *(v47 + 224) = v51;
  *(v47 + 240) = v107;
  v52 = v108;
  v53 = v102;
  *(v47 + 144) = v101;
  *(v47 + 160) = v53;
  v54 = v104;
  *(v47 + 176) = v103;
  *(v47 + 192) = v54;
  v55 = v100;
  *(v47 + 112) = v99;
  *(v47 + 128) = v55;
  v57 = v92;
  v56 = v93;
  *(v47 + 256) = v52;
  *(v47 + 264) = v56;
  v59 = v90;
  v58 = v91;
  *(v47 + 272) = v57;
  *(v47 + 280) = v58;
  v60 = v89;
  *(v47 + 288) = v59;
  *(v47 + 296) = v60;
  *(v47 + 304) = v81;
  *(v47 + 312) = v46;
  v61 = sub_1DB09CC54();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();

  sub_1DAFB85E4(v56, v57, v58, v59, v60);
  sub_1DB09CC44();
  *&v97[0] = v47;
  sub_1DB053A4C();
  v73 = sub_1DB09CC34();
  v75 = v74;

  sub_1DB09D714();
  v76 = sub_1DB09D6E4();
  v78 = v77;
  sub_1DAF40780(v73, v75);
  if (v78)
  {

    return v76;
  }

  else
  {
    v97[0] = v80;
    LOBYTE(v95) = 14;

    CoreODILogger.fault(_:category:)(0xD00000000000001BLL, 0x80000001DB0C3390, &v95);

    v97[10] = v165;
    v97[11] = v166;
    v97[12] = v167;
    v98 = v168;
    v97[6] = v161;
    v97[7] = v162;
    v97[8] = v163;
    v97[9] = v164;
    v97[2] = v157;
    v97[3] = v158;
    v97[4] = v159;
    v97[5] = v160;
    v97[0] = v155;
    v97[1] = v156;
    if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v97) == 1)
    {
      v64 = 0xE700000000000000;
      v65 = 0x6E776F6E6B6E75;
    }

    else
    {
      v64 = *(&v97[0] + 1);
      v65 = *&v97[0];
    }

    v95 = 0;
    v96 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000002FLL, 0x80000001DB0C33B0);
    MEMORY[0x1E127FE90](v65, v64);

    MEMORY[0x1E127FE90](8224034, 0xE300000000000000);
    v66 = sub_1DAF484E4(v95, v96);
    v68 = v67;
    v69 = sub_1DB09D014();
    v71 = v70;
    sub_1DAF40780(v66, v68);
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_1DB09DE44();

    v95 = 0x737365737361227BLL;
    v96 = 0xEF223A22746E656DLL;
    MEMORY[0x1E127FE90](v69, v71);

    MEMORY[0x1E127FE90](0xD00000000000001BLL, 0x80000001DB0CB2F0);

    return v95;
  }
}

double sub_1DB053A2C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1DB053A4C()
{
  result = qword_1ECC0FC90;
  if (!qword_1ECC0FC90)
  {
    type metadata accessor for AMPCristalPayloadData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC90);
  }

  return result;
}

uint64_t sub_1DB053AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8A0, &qword_1DB0A6650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB053B14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DB09D074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      sub_1DAF40780(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = sub_1DB07F6C8(v12, 0);
      v16 = sub_1DB09CF94();
      sub_1DAF40780(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *sub_1DB053C90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DAFF6FB0(*(a1 + 16), 0);
  v4 = sub_1DAFF7F6C(&v6, v3 + 4, v2, a1);
  sub_1DAF333A4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ArmandDeviceData.hasValidData.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v11 = *(v1 + 16);
  if (!v11)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 65);
  while (v2 < *(v1 + 16))
  {
    v12 = *(v3 - 33);
    v4 = *(v3 - 17);
    v5 = *(v3 - 9);
    v22[0] = *v3;
    *(v22 + 9) = *(v3 + 9);
    v6 = *(v3 - 1);
    v17 = v1;
    memcpy(v18, v0 + 1, 0x402uLL);
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16[0] = v22[0];
    *(v16 + 9) = *(v22 + 9);
    sub_1DB06829C(&v12, v19);
    v7 = v20;
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v17 = v4;
    v18[0] = v5;
    LOBYTE(v18[1]) = v6 & 1;
    v9 = *(v8 + 8);
    sub_1DB042B1C(v4, v5, v6 & 1);
    v9(&v12, &v17, v7, v8);
    sub_1DB041AD8(v17, v18[0], v18[1]);
    LODWORD(v9) = v12;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    if (v9 == 211)
    {
      return 1;
    }

    ++v2;
    v3 += 4;
    if (v11 == v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ArmandDeviceData.isLessComplete(lhs:than:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 56);
  v109[2] = *(v2 + 40);
  v109[3] = v7;
  v110 = *(v2 + 72);
  v8 = *(v2 + 8);
  v109[1] = v6;
  v109[0] = v8;
  v9 = *(v2 + 128);
  v113 = *(v2 + 112);
  v114 = v9;
  v115 = *(v2 + 144);
  v116 = *(v2 + 160);
  v10 = *(v2 + 96);
  v111 = *(v2 + 80);
  v112 = v10;
  v11 = *(v2 + 176);
  v82 = *(v2 + 168);
  v12 = *(v2 + 184);
  v13 = *(v2 + 208);
  v117 = *(v2 + 192);
  v118 = v13;
  v119[0] = *(v2 + 224);
  *(v119 + 9) = *(v2 + 233);
  v14 = *(v2 + 304);
  v122 = *(v2 + 288);
  v123[0] = v14;
  *(v123 + 15) = *(v2 + 319);
  v15 = *(v2 + 256);
  v121 = *(v2 + 272);
  v120 = v15;
  v80 = *(v2 + 336);
  v81 = *(v2 + 328);
  v79 = *(v2 + 344);
  v74 = *(v2 + 346);
  v75 = *(v2 + 345);
  v70 = *(v2 + 360);
  v71 = *(v2 + 352);
  v69 = *(v2 + 368);
  v130 = *(v2 + 472);
  v16 = *(v2 + 440);
  v129 = *(v2 + 456);
  v128 = v16;
  v17 = *(v2 + 408);
  v127 = *(v2 + 424);
  v126 = v17;
  v18 = *(v2 + 376);
  v125 = *(v2 + 392);
  v124 = v18;
  v65 = *(v2 + 480);
  v64 = *(v2 + 488);
  memcpy(__dst, (v2 + 496), 0x119uLL);
  v61 = *(v5 + 800);
  v59 = *(v5 + 784);
  v60 = *(v5 + 816);
  v19 = *(v5 + 904);
  v136 = *(v5 + 888);
  v137 = v19;
  v138[0] = *(v5 + 920);
  *(v138 + 10) = *(v5 + 930);
  v20 = *(v5 + 840);
  v132 = *(v5 + 824);
  v133 = v20;
  v21 = *(v5 + 872);
  v134 = *(v5 + 856);
  v135 = v21;
  v22 = *(v4 + 24);
  v23 = *(v4 + 56);
  v139[2] = *(v4 + 40);
  v139[3] = v23;
  v140 = *(v4 + 72);
  v24 = *(v4 + 8);
  v139[1] = v22;
  v139[0] = v24;
  v25 = *(v4 + 128);
  v143 = *(v4 + 112);
  v144 = v25;
  v145 = *(v4 + 144);
  v146 = *(v4 + 160);
  v26 = *(v4 + 96);
  v141 = *(v4 + 80);
  v142 = v26;
  v27 = *(v4 + 168);
  v28 = *(v4 + 176);
  v29 = *(v4 + 184);
  *(v149 + 9) = *(v4 + 233);
  v30 = *(v4 + 208);
  v149[0] = *(v4 + 224);
  v31 = *(v4 + 192);
  v148 = v30;
  v147 = v31;
  *(v153 + 15) = *(v4 + 319);
  v32 = *(v4 + 288);
  v153[0] = *(v4 + 304);
  v152 = v32;
  v33 = *(v4 + 272);
  v150 = *(v4 + 256);
  v151 = v33;
  v77 = *(v4 + 336);
  v78 = *(v4 + 328);
  v76 = *(v4 + 344);
  v72 = *(v4 + 346);
  v73 = *(v4 + 345);
  v67 = *(v4 + 360);
  v68 = *(v4 + 352);
  v66 = *(v4 + 368);
  v34 = *(v4 + 376);
  v155 = *(v4 + 392);
  v154 = v34;
  v35 = *(v4 + 408);
  v36 = *(v4 + 424);
  v37 = *(v4 + 440);
  v38 = *(v4 + 456);
  v160 = *(v4 + 472);
  v159 = v38;
  v158 = v37;
  v156 = v35;
  v157 = v36;
  v63 = *(v4 + 480);
  v62 = *(v4 + 488);
  memcpy(v161, (v4 + 496), 0x119uLL);
  v57 = *(v4 + 800);
  v58 = *(v4 + 784);
  v56 = *(v4 + 816);
  v39 = *(v4 + 904);
  v166 = *(v4 + 888);
  v167 = v39;
  v168[0] = *(v4 + 920);
  *(v168 + 10) = *(v4 + 930);
  v40 = *(v4 + 840);
  v162 = *(v4 + 824);
  v163 = v40;
  v41 = *(v4 + 872);
  v164 = *(v4 + 856);
  v165 = v41;
  v42 = *(v5 + 24);
  v43 = *(v5 + 56);
  v92[2] = *(v5 + 40);
  v92[3] = v43;
  LOBYTE(v92[4]) = *(v5 + 72);
  v44 = *(v5 + 8);
  v92[1] = v42;
  v92[0] = v44;
  v45 = *(v4 + 24);
  v46 = *(v4 + 56);
  v91[2] = *(v4 + 40);
  v91[3] = v46;
  LOBYTE(v91[4]) = *(v4 + 72);
  v47 = *(v4 + 8);
  v91[1] = v45;
  v91[0] = v47;
  sub_1DB08B170(v109, v90);
  sub_1DB08B170(v139, v90);
  LOBYTE(v4) = sub_1DB0878EC(v92, v91);
  v169[2] = v91[2];
  v169[3] = v91[3];
  v170 = v91[4];
  v169[0] = v91[0];
  v169[1] = v91[1];
  sub_1DAF40AEC(v169, &qword_1ECC0FC98, &qword_1DB0B92A0);
  v171[2] = v92[2];
  v171[3] = v92[3];
  v172 = v92[4];
  v171[0] = v92[0];
  v171[1] = v92[1];
  sub_1DAF40AEC(v171, &qword_1ECC0FC98, &qword_1DB0B92A0);
  if (v4)
  {
    goto LABEL_13;
  }

  v92[2] = v113;
  v92[3] = v114;
  v92[4] = v115;
  LOWORD(v92[5]) = v116;
  v92[0] = v111;
  v92[1] = v112;
  v91[2] = v143;
  v91[3] = v144;
  v91[4] = v145;
  LOWORD(v91[5]) = v146;
  v91[0] = v141;
  v91[1] = v142;
  sub_1DB08B1A8(&v111, v90);
  sub_1DB08B1A8(&v141, v90);
  v48 = sub_1DB087B44(v92, v91);
  v105[2] = v91[2];
  v105[3] = v91[3];
  v105[4] = v91[4];
  v106 = v91[5];
  v105[0] = v91[0];
  v105[1] = v91[1];
  sub_1DAF40AEC(v105, &qword_1ECC0FCA0, &qword_1DB0B92A8);
  v107[2] = v92[2];
  v107[3] = v92[3];
  v107[4] = v92[4];
  v108 = v92[5];
  v107[0] = v92[0];
  v107[1] = v92[1];
  sub_1DAF40AEC(v107, &qword_1ECC0FCA0, &qword_1DB0B92A8);
  if (v48)
  {
    goto LABEL_13;
  }

  if ((sub_1DB0561D4(v27, v28, v29, v82, v11, v12) & 1) == 0)
  {
    goto LABEL_13;
  }

  v92[0] = v117;
  v92[1] = v118;
  v92[2] = v119[0];
  *(&v92[2] + 9) = *(v119 + 9);
  v91[0] = v147;
  v91[1] = v148;
  v91[2] = v149[0];
  *(&v91[2] + 9) = *(v149 + 9);
  sub_1DB08B1E0(&v117, v90);
  sub_1DB08B1E0(&v147, v90);
  v49 = sub_1DB087E14(v92, v91);
  v101[0] = v91[0];
  v101[1] = v91[1];
  v102[0] = v91[2];
  *(v102 + 9) = *(&v91[2] + 9);
  sub_1DAF40AEC(v101, &qword_1ECC0FCA8, &qword_1DB0B92B0);
  v103[0] = v92[0];
  v103[1] = v92[1];
  v104[0] = v92[2];
  *(v104 + 9) = *(&v92[2] + 9);
  sub_1DAF40AEC(v103, &qword_1ECC0FCA8, &qword_1DB0B92B0);
  if (v49)
  {
    goto LABEL_13;
  }

  v92[2] = v122;
  v92[3] = v123[0];
  *(&v92[3] + 15) = *(v123 + 15);
  v92[1] = v121;
  v92[0] = v120;
  v91[2] = v152;
  v91[3] = v153[0];
  *(&v91[3] + 15) = *(v153 + 15);
  v91[1] = v151;
  v91[0] = v150;
  sub_1DB08B218(&v120, v90);
  sub_1DB08B218(&v150, v90);
  v50 = sub_1DB087FF0(v92, v91);
  v97[2] = v91[2];
  v98[0] = v91[3];
  *(v98 + 15) = *(&v91[3] + 15);
  v97[1] = v91[1];
  v97[0] = v91[0];
  sub_1DAF40AEC(v97, &qword_1ECC0FCB0, &qword_1DB0B92B8);
  v99[2] = v92[2];
  v100[0] = v92[3];
  *(v100 + 15) = *(&v92[3] + 15);
  v99[1] = v92[1];
  v99[0] = v92[0];
  sub_1DAF40AEC(v99, &qword_1ECC0FCB0, &qword_1DB0B92B8);
  if (v50)
  {
    goto LABEL_13;
  }

  v92[4] = v128;
  v92[5] = v129;
  LOWORD(v92[6]) = v130;
  v92[0] = v124;
  v92[1] = v125;
  v92[3] = v127;
  v92[2] = v126;
  v91[4] = v158;
  v91[5] = v159;
  LOWORD(v91[6]) = v160;
  v91[0] = v154;
  v91[1] = v155;
  v91[3] = v157;
  v91[2] = v156;
  sub_1DB08B250(&v124, v90);
  sub_1DB08B250(&v154, v90);
  v51 = sub_1DB088294(v92, v91);
  v93[4] = v91[4];
  v93[5] = v91[5];
  v94 = v91[6];
  v93[0] = v91[0];
  v93[1] = v91[1];
  v93[3] = v91[3];
  v93[2] = v91[2];
  sub_1DAF40AEC(v93, &qword_1ECC0FCB8, &qword_1DB0B92C0);
  v95[4] = v92[4];
  v95[5] = v92[5];
  v96 = v92[6];
  v95[0] = v92[0];
  v95[1] = v92[1];
  v95[3] = v92[3];
  v95[2] = v92[2];
  sub_1DAF40AEC(v95, &qword_1ECC0FCB8, &qword_1DB0B92C0);
  if (v51)
  {
    goto LABEL_13;
  }

  if ((sub_1DB0561D4(v78, v77, v76, v81, v80, v79) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1DB056364(v73 | (v72 << 8), v75 | (v74 << 8)) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1DB0561D4(v68, v67, v66, v71, v70, v69) & 1) == 0)
  {
    goto LABEL_13;
  }

  *&v92[0] = v65;
  BYTE8(v92[0]) = v64;
  *&v91[0] = v63;
  BYTE8(v91[0]) = v62;

  v52 = sub_1DB0884F4(v92, v91);
  sub_1DB08B288(*&v91[0]);
  sub_1DB08B288(*&v92[0]);
  if (v52)
  {
    goto LABEL_13;
  }

  memcpy(__src, __dst, 0x119uLL);
  nullsub_3(__src);
  memcpy(v88, __src, 0x119uLL);
  memcpy(v90, v161, 0x119uLL);
  nullsub_3(v90);
  memcpy(v87, v90, 0x119uLL);
  sub_1DB08B298(__dst, v85);
  sub_1DB08B298(v161, v85);
  v53 = sub_1DB088D78(v88, v87);
  memcpy(v91, v87, 0x119uLL);
  sub_1DAF40AEC(v91, &qword_1ECC0FCC0, &qword_1DB0B92C8);
  memcpy(v92, v88, 0x119uLL);
  sub_1DAF40AEC(v92, &qword_1ECC0FCC0, &qword_1DB0B92C8);
  if (v53 & 1) != 0 || (v88[0] = v59, v88[1] = v61, LODWORD(v88[2]) = v60, v87[0] = v58, v87[1] = v57, LODWORD(v87[2]) = v56, (sub_1DB089824(v88, v87)))
  {
LABEL_13:
    v54 = 0;
  }

  else
  {
    v87[4] = v136;
    v87[5] = v137;
    v87[6] = v138[0];
    *(&v87[6] + 10) = *(v138 + 10);
    v87[0] = v132;
    v87[1] = v133;
    v87[2] = v134;
    v87[3] = v135;
    nullsub_3(v87);
    v85[4] = v87[4];
    v85[5] = v87[5];
    v86[0] = v87[6];
    *(v86 + 10) = *(&v87[6] + 10);
    v85[0] = v87[0];
    v85[1] = v87[1];
    v85[2] = v87[2];
    v85[3] = v87[3];
    v88[2] = v164;
    v88[3] = v165;
    v88[0] = v162;
    v88[1] = v163;
    *(&v88[6] + 10) = *(v168 + 10);
    v88[6] = v168[0];
    v88[5] = v167;
    v88[4] = v166;
    nullsub_3(v88);
    v83[4] = v88[4];
    v83[5] = v88[5];
    v84[0] = v88[6];
    *(v84 + 10) = *(&v88[6] + 10);
    v83[0] = v88[0];
    v83[1] = v88[1];
    v83[2] = v88[2];
    v83[3] = v88[3];
    v54 = sub_1DB089958(v85, v83) ^ 1;
  }

  return v54 & 1;
}

unint64_t ArmandDeviceData.description.getter()
{
  v0 = sub_1DB09D734();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = sub_1DB054C84();
  v5 = v4;
  sub_1DB09D714();
  v6 = sub_1DB09D6E4();
  v8 = v7;
  sub_1DAF40780(v3, v5);
  if (!v8)
  {
    return 0xD00000000000001FLL;
  }

  MEMORY[0x1E127FF00](v6, v8);

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_1DB09D6B4();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    sub_1DB09DE44();

    v15 = 0x6144656369766544;
    v12 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v12);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    MEMORY[0x1E127FE90](v6, v8);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
  }

  else
  {

    sub_1DB09DE44();

    v15 = 0xD000000000000011;
    v14 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v14);
  }

  return v15;
}

uint64_t sub_1DB054C84()
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  memcpy(__dst, v0 + 1, sizeof(__dst));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

    goto LABEL_21;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = 32;
  v37 = v2;
  v38 = v1;
  do
  {
    v39 = v6;
    v7 = (v2 + v6);
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *(v48 + 10) = *(v7 + 42);
    v48[0] = v8;
    v46 = v10;
    v47 = v9;
    v11 = v10;
    *&v42[0] = v1;
    memcpy(v42 + 8, __dst, 0x402uLL);
    v40[0] = *v7;
    v40[1] = v7[1];
    v41[0] = v7[2];
    *(v41 + 10) = *(v7 + 42);
    sub_1DB06829C(v40, v43);
    v12 = v44;
    v13 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v42[0] = v46;
    v42[1] = v47;
    v42[2] = v48[0];
    *(&v42[2] + 10) = *(v48 + 10);
    v14 = *(v13 + 24);
    sub_1DB042BD4(&v46, v40);
    v14(v40, v42, v12, v13);
    v15 = *&v40[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v5;
    v17 = sub_1DAF35210(v11, *(&v11 + 1));
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v23 = v18;
    if (v5[3] < v22)
    {
      sub_1DAF378E0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1DAF35210(v11, *(&v11 + 1));
      if ((v23 & 1) != (v24 & 1))
      {
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }

LABEL_11:
      v5 = *&v42[0];
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v27 = v17;
    sub_1DAF3C590();
    v17 = v27;
    v5 = *&v42[0];
    if (v23)
    {
LABEL_12:
      v25 = v5[7];
      v26 = *(v25 + 8 * v17);
      *(v25 + 8 * v17) = v15;

      sub_1DB042C0C(&v46);
      goto LABEL_16;
    }

LABEL_14:
    v5[(v17 >> 6) + 8] |= 1 << v17;
    *(v5[6] + 16 * v17) = v11;
    *(v5[7] + 8 * v17) = v15;

    sub_1DB042C0C(&v46);
    v28 = v5[2];
    v21 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v5[2] = v29;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v2 = v37;
    v1 = v38;
    if (v3 - 1 == v4)
    {
      goto LABEL_19;
    }

    ++v4;
    v6 = v39 + 64;
  }

  while (v4 < *(v37 + 16));
  __break(1u);
LABEL_19:

LABEL_21:
  v30 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B8, &qword_1DB0A5198);
  v31 = sub_1DB09D604();

  *&v42[0] = 0;
  v32 = [v30 dataWithJSONObject:v31 options:0 error:v42];

  v33 = *&v42[0];
  if (v32)
  {
    v34 = sub_1DB09D034();
  }

  else
  {
    v34 = v33;
    sub_1DB09CE74();

    swift_willThrow();
  }

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t sub_1DB055070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v21 - v10;
  sub_1DAF40A84(a1, v21 - v10, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v12 = sub_1DB09DA24();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAF40AEC(v11, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1DB09D984();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB09DA14();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_1DB055260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v9 = MEMORY[0x1E69E6158];
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v10 = MEMORY[0x1E69E6168];
    *(inited + 72) = v9;
    *(inited + 80) = v10;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((a3 + 45) >= 9u)
    {
      v11 = qword_1DB0BD040[a3 ^ 0x80u];
    }

    else
    {
      v11 = -(a3 + 45);
    }

    v14 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v14;
    *(inited + 104) = v11;
    v15 = inited;

    v12 = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB0A04E0;
    *(v12 + 32) = 0x646F43726F727265;
    *(v12 + 40) = 0xE900000000000065;
    if ((a3 + 45) >= 9u)
    {
      v13 = qword_1DB0BD040[a3 ^ 0x80u];
    }

    else
    {
      v13 = -(a3 + 45);
    }

    v16 = MEMORY[0x1E69E6540];
    *(v12 + 72) = MEMORY[0x1E69E6530];
    *(v12 + 80) = v16;
    *(v12 + 48) = v13;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(v12, a4);
}

uint64_t sub_1DB0553F8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E76E8];
    *(inited + 72) = MEMORY[0x1E69E76D8];
    *(inited + 80) = v8;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v9 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB055578@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v2 = HIBYTE(a1);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (v4 == 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((v2 + 45) >= 9u)
    {
      v6 = qword_1DB0BD040[v2 ^ 0x80u];
    }

    else
    {
      v6 = -(v2 + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v6;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v7 = MEMORY[0x1E69E6370];
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E6380];
    *(inited + 72) = v7;
    *(inited + 80) = v8;
    *(inited + 48) = v4 & 1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((v2 + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[v2 ^ 0x80u];
    }

    else
    {
      v9 = -(v2 + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
}

uint64_t sub_1DB055700@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v11;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v10 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v10 = -(HIBYTE(a2) + 45);
    }

    *(inited + 128) = v8;
    *(inited + 136) = v9;
    *(inited + 104) = v10;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB055870@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E63D0];
    *(inited + 72) = MEMORY[0x1E69E63B0];
    *(inited + 80) = v8;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v9 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB0559F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB08E6B0(v2, v8, type metadata accessor for AnyODIKnownBinding.BindingContent);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v12 = *v8;
        v13 = v8[1];
        v14 = MEMORY[0x1E69E6168];
        a1[3] = MEMORY[0x1E69E6158];
        a1[4] = v14;
        *a1 = v12;
        a1[1] = v13;
      }

      else
      {
        v20 = *v8;
        v21 = MEMORY[0x1E69E6540];
        a1[3] = MEMORY[0x1E69E6530];
        a1[4] = v21;
        *a1 = v20;
      }
    }

    else
    {
      v18 = *v8;
      v19 = MEMORY[0x1E69E63D0];
      a1[3] = MEMORY[0x1E69E63B0];
      a1[4] = v19;
      *a1 = v18;
    }
  }

  else if (result > 4)
  {
    if (result == 5)
    {
      v15 = *(*v8 + 16);

      v17 = sub_1DB0588FC(v16);

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
      a1[4] = sub_1DB08E57C();

      *a1 = v17;
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      a1[3] = sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
      result = sub_1DB08E5F8(&qword_1ECC0FF28, &qword_1ECC0E818, 0x1E695DFB0);
      a1[4] = result;
      *a1 = v24;
    }
  }

  else if (result == 3)
  {
    v10 = sub_1DB09D154();
    a1[3] = v10;
    a1[4] = sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, v8, v10);
  }

  else
  {
    v22 = *v8;
    v23 = MEMORY[0x1E69E6380];
    a1[3] = MEMORY[0x1E69E6370];
    a1[4] = v23;
    *a1 = v22;
  }

  return result;
}

uint64_t sub_1DB055C74(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (a3)
  {
    sub_1DB09E3C4();
  }

  else
  {
    sub_1DB09E3C4();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E1280AA0](v5);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v6 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v6 = (v3 + 45);
  }

  return MEMORY[0x1E1280A80](v6);
}

uint64_t sub_1DB055D08(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 <= 0xD6u)
  {
    if (a3 > 0xD4u)
    {
      if (a3 == 213)
      {
        if (a6 != 213)
        {
          return 0;
        }
      }

      else
      {
        if (a3 != 214)
        {
          goto LABEL_31;
        }

        if (a6 != 214)
        {
          return 0;
        }
      }
    }

    else
    {
      if (a3 != 211)
      {
        if (a3 == 212)
        {
          if (a6 == 212)
          {
            goto LABEL_33;
          }

          return 0;
        }

LABEL_31:
        if (a6 - 211 >= 9 && qword_1DB0BD040[a3 ^ 0x80u] == qword_1DB0BD040[a6 ^ 0x80u])
        {
          goto LABEL_33;
        }

        return 0;
      }

      if (a6 != 211)
      {
        return 0;
      }
    }
  }

  else if (a3 <= 0xD8u)
  {
    if (a3 == 215)
    {
      if (a6 != 215)
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 216)
      {
        goto LABEL_31;
      }

      if (a6 != 216)
      {
        return 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 0xD9u:
        if (a6 != 217)
        {
          return 0;
        }

        break;
      case 0xDAu:
        if (a6 != 218)
        {
          return 0;
        }

        break;
      case 0xDBu:
        if (a6 == 219)
        {
          break;
        }

        return 0;
      default:
        goto LABEL_31;
    }
  }

LABEL_33:
  v6 = (a2 | a5) == 0;
  if (!a2 || !a5)
  {
    return v6;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1DB09E254();
}

uint64_t sub_1DB055E54(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1) > 0xD6u)
  {
    if (HIBYTE(a1) <= 0xD8u)
    {
      if (HIBYTE(a1) == 215)
      {
        if (HIBYTE(a2) == 215)
        {
          goto LABEL_33;
        }

        return 0;
      }

      if (HIBYTE(a1) == 216)
      {
        if (HIBYTE(a2) == 216)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    else
    {
      switch(HIBYTE(a1))
      {
        case 0xD9u:
          if (HIBYTE(a2) == 217)
          {
            goto LABEL_33;
          }

          return 0;
        case 0xDAu:
          if (HIBYTE(a2) == 218)
          {
            goto LABEL_33;
          }

          return 0;
        case 0xDBu:
          if (HIBYTE(a2) == 219)
          {
            goto LABEL_33;
          }

          return 0;
      }
    }

    goto LABEL_31;
  }

  if (HIBYTE(a1) > 0xD4u)
  {
    if (HIBYTE(a1) == 213)
    {
      if (HIBYTE(a2) == 213)
      {
        goto LABEL_33;
      }

      return 0;
    }

    if (HIBYTE(a1) == 214)
    {
      if (HIBYTE(a2) == 214)
      {
        goto LABEL_33;
      }

      return 0;
    }

    goto LABEL_31;
  }

  if (HIBYTE(a1) == 211)
  {
    if (HIBYTE(a2) == 211)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (HIBYTE(a1) != 212)
  {
LABEL_31:
    if (HIBYTE(a2) - 211 < 9 || qword_1DB0BD040[HIBYTE(a1) ^ 0x80u] != qword_1DB0BD040[HIBYTE(a2) ^ 0x80u])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (HIBYTE(a2) != 212)
  {
    return 0;
  }

LABEL_33:
  v2 = a2 == 2 && a1 == 2;
  if (a1 != 2 && a2 != 2)
  {
    v2 = a1 ^ a2 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1DB055FA0(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  if (HIBYTE(a2) <= 0xD6u)
  {
    if (HIBYTE(a2) > 0xD4u)
    {
      if (HIBYTE(a2) == 213)
      {
        v4 = BYTE1(a4) == 213;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 214)
      {
        v4 = BYTE1(a4) == 214;
        goto LABEL_25;
      }
    }

    else
    {
      if (HIBYTE(a2) == 211)
      {
        v4 = BYTE1(a4) == 211;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 212)
      {
        v4 = BYTE1(a4) == 212;
        goto LABEL_25;
      }
    }
  }

  else if (HIBYTE(a2) <= 0xD8u)
  {
    if (HIBYTE(a2) == 215)
    {
      v4 = BYTE1(a4) == 215;
      goto LABEL_25;
    }

    if (HIBYTE(a2) == 216)
    {
      v4 = BYTE1(a4) == 216;
      goto LABEL_25;
    }
  }

  else
  {
    switch(HIBYTE(a2))
    {
      case 0xD9u:
        v4 = BYTE1(a4) == 217;
        goto LABEL_25;
      case 0xDAu:
        v4 = BYTE1(a4) == 218;
        goto LABEL_25;
      case 0xDBu:
        v4 = BYTE1(a4) == 219;
        goto LABEL_25;
    }
  }

  if (BYTE1(a4) - 211 < 9)
  {
    return 0;
  }

  v4 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u] == qword_1DB0BD040[BYTE1(a4) ^ 0x80u];
LABEL_25:
  v6 = v4;
  v7 = v6 & a4;
  if (!v4 || (a2 & 1) != 0)
  {
    return v7;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

BOOL sub_1DB0560B4(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2) <= 0xD6u)
  {
    if (HIBYTE(a2) > 0xD4u)
    {
      if (HIBYTE(a2) == 213)
      {
        v4 = HIBYTE(a4) == 213;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 214)
      {
        v4 = HIBYTE(a4) == 214;
        goto LABEL_25;
      }
    }

    else
    {
      if (HIBYTE(a2) == 211)
      {
        v4 = HIBYTE(a4) == 211;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 212)
      {
        v4 = HIBYTE(a4) == 212;
        goto LABEL_25;
      }
    }
  }

  else if (HIBYTE(a2) <= 0xD8u)
  {
    if (HIBYTE(a2) == 215)
    {
      v4 = HIBYTE(a4) == 215;
      goto LABEL_25;
    }

    if (HIBYTE(a2) == 216)
    {
      v4 = HIBYTE(a4) == 216;
      goto LABEL_25;
    }
  }

  else
  {
    switch(HIBYTE(a2))
    {
      case 0xD9u:
        v4 = HIBYTE(a4) == 217;
        goto LABEL_25;
      case 0xDAu:
        v4 = HIBYTE(a4) == 218;
        goto LABEL_25;
      case 0xDBu:
        v4 = HIBYTE(a4) == 219;
        goto LABEL_25;
    }
  }

  if (HIBYTE(a4) - 211 < 9)
  {
    return 0;
  }

  v4 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u] == qword_1DB0BD040[HIBYTE(a4) ^ 0x80u];
LABEL_25:
  v6 = !v4;
  v7 = v6 | a2;
  v8 = (v6 ^ (v6 | a2)) & a4;
  if (v7 & 1) != 0 || (a4)
  {
    return v8 & 1;
  }

  else
  {
    return *&a1 == *&a3;
  }
}

uint64_t sub_1DB0561D4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a5 == 1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return 1;
  }

  if (a6 != 211)
  {
    if (a3 <= 0xD6u)
    {
      if (a3 > 0xD4u)
      {
        if (a3 == 213)
        {
          if (a6 == 213)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (a3 != 214)
          {
            goto LABEL_42;
          }

          if (a6 == 214)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        if (a3 == 211)
        {
          return 0;
        }

        if (a3 != 212)
        {
          goto LABEL_42;
        }

        if (a6 == 212)
        {
          goto LABEL_7;
        }
      }
    }

    else if (a3 <= 0xD8u)
    {
      if (a3 == 215)
      {
        if (a6 == 215)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (a3 != 216)
        {
          goto LABEL_42;
        }

        if (a6 == 216)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      switch(a3)
      {
        case 0xD9u:
          if (a6 == 217)
          {
            goto LABEL_7;
          }

          break;
        case 0xDAu:
          if (a6 == 218)
          {
            goto LABEL_7;
          }

          break;
        case 0xDBu:
          if (a6 == 219)
          {
            goto LABEL_7;
          }

          return 0;
        default:
LABEL_42:
          if (a6 - 211 >= 9 && qword_1DB0BD040[a3 ^ 0x80u] == qword_1DB0BD040[a6 ^ 0x80u])
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    return 0;
  }

  if (a3 != 211)
  {
    return 1;
  }

LABEL_7:
  v7 = (a2 | a5) == 0;
  if (a2 && a5)
  {
    if (a1 == a4 && a2 == a5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1DB09E254();
    }
  }

  return (v7 ^ 1) & 1;
}

uint64_t sub_1DB056364(__int16 a1, __int16 a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (HIBYTE(a2) != 211)
  {
    if (HIBYTE(a1) <= 0xD6u)
    {
      if (HIBYTE(a1) > 0xD4u)
      {
        if (HIBYTE(a1) == 213)
        {
          if (HIBYTE(a2) == 213)
          {
            goto LABEL_7;
          }
        }

        else if (HIBYTE(a2) == 214)
        {
          goto LABEL_7;
        }

        return 0;
      }

      if (HIBYTE(a1) == 211)
      {
        return 0;
      }

      if (HIBYTE(a1) == 212)
      {
        if (HIBYTE(a2) == 212)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      if (HIBYTE(a1) <= 0xD8u)
      {
        if (HIBYTE(a1) == 215)
        {
          if (HIBYTE(a2) == 215)
          {
            goto LABEL_7;
          }
        }

        else if (HIBYTE(a2) == 216)
        {
          goto LABEL_7;
        }

        return 0;
      }

      switch(HIBYTE(a1))
      {
        case 0xD9u:
          if (HIBYTE(a2) == 217)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDAu:
          if (HIBYTE(a2) == 218)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDBu:
          if (HIBYTE(a2) == 219)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (HIBYTE(a2) - 211 >= 9 && qword_1DB0BD040[HIBYTE(a1) ^ 0x80u] == qword_1DB0BD040[HIBYTE(a2) ^ 0x80u])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (HIBYTE(a1) != 211)
  {
    return 1;
  }

LABEL_7:
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 ^ a2;
  }

  if (a1 == 2)
  {
    return a2 != 2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB0564C0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (BYTE1(a4) == 220)
  {
    return 0;
  }

  if (BYTE1(a2) == 220)
  {
    return 1;
  }

  if (BYTE1(a4) != 211)
  {
    if (BYTE1(a2) <= 0xD6u)
    {
      if (BYTE1(a2) > 0xD4u)
      {
        if (BYTE1(a2) == 213)
        {
          if (BYTE1(a4) == 213)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 214)
        {
          goto LABEL_7;
        }

        return 0;
      }

      if (BYTE1(a2) == 211)
      {
        return 0;
      }

      if (BYTE1(a2) == 212)
      {
        if (BYTE1(a4) == 212)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      if (BYTE1(a2) <= 0xD8u)
      {
        if (BYTE1(a2) == 215)
        {
          if (BYTE1(a4) == 215)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 216)
        {
          goto LABEL_7;
        }

        return 0;
      }

      switch(BYTE1(a2))
      {
        case 0xD9u:
          if (BYTE1(a4) == 217)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDAu:
          if (BYTE1(a4) == 218)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDBu:
          if (BYTE1(a4) == 219)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (BYTE1(a4) - 211 >= 9 && qword_1DB0BD040[BYTE1(a2) ^ 0x80u] == qword_1DB0BD040[BYTE1(a4) ^ 0x80u])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (BYTE1(a2) != 211)
  {
    return 1;
  }

LABEL_7:
  v5 = a2 & a4;
  v6 = *&a1 == *&a3;
  if (a4)
  {
    v6 = a2 & a4;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  return (v5 ^ 1) & 1;
}

uint64_t sub_1DB056618(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DB090428();
  result = MEMORY[0x1E12801C0](v2, MEMORY[0x1E6969080], v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1DAF40780(v15[0], v15[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1DAF40674(*v12, v14);
    sub_1DB081398(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DB05673C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v4 = sub_1DB08E5F8(&qword_1ECC0F310, &qword_1ECC0E240, 0x1E695CF60);
  v5 = 0;
  v12[1] = MEMORY[0x1E12801C0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1DB081D14(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1DB05687C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6369447974706D65;
    if (a1 != 8)
    {
      v5 = 0x726F727245636170;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 != 5)
    {
      v6 = 0x676E69646F636E65;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7272456F6ELL;
    v2 = 0x6F6974704F6C696ELL;
    v3 = 0x6465696E6564;
    if (a1 != 3)
    {
      v3 = 0x7463657078656E75;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C61567465736E75;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB0569EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08E208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB056A20(uint64_t a1)
{
  v2 = sub_1DB08B2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056A5C(uint64_t a1)
{
  v2 = sub_1DB08B2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056A98(uint64_t a1)
{
  v2 = sub_1DB08B51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056AD4(uint64_t a1)
{
  v2 = sub_1DB08B51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056B10(uint64_t a1)
{
  v2 = sub_1DB08B378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056B4C(uint64_t a1)
{
  v2 = sub_1DB08B378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056B88(uint64_t a1)
{
  v2 = sub_1DB08B420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056BC4(uint64_t a1)
{
  v2 = sub_1DB08B420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056C00(uint64_t a1)
{
  v2 = sub_1DB08B570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056C3C(uint64_t a1)
{
  v2 = sub_1DB08B570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056C78(uint64_t a1)
{
  v2 = sub_1DB08B618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056CB4(uint64_t a1)
{
  v2 = sub_1DB08B618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056CF0(uint64_t a1)
{
  v2 = sub_1DB08B3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056D2C(uint64_t a1)
{
  v2 = sub_1DB08B3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056D68(uint64_t a1)
{
  v2 = sub_1DB08B324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056DA4(uint64_t a1)
{
  v2 = sub_1DB08B324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056DE0(uint64_t a1)
{
  v2 = sub_1DB08B4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056E1C(uint64_t a1)
{
  v2 = sub_1DB08B4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056E58(uint64_t a1)
{
  v2 = sub_1DB08B5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056E94(uint64_t a1)
{
  v2 = sub_1DB08B5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056ED0(uint64_t a1)
{
  v2 = sub_1DB08B474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056F0C(uint64_t a1)
{
  v2 = sub_1DB08B474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArmandDeviceDataErrorCode.hash(into:)()
{
  v1 = *v0;
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v2);
}

uint64_t ArmandDeviceDataErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  MEMORY[0x1E1280A80](v2);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB057028()
{
  v2 = *v0;
  sub_1DB09E3A4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t ArmandDeviceDataErrorCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCC8, &qword_1DB0B92D0);
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v92 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCD0, &qword_1DB0B92D8);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v89 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCD8, &qword_1DB0B92E0);
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v86 = &v75 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCE0, &qword_1DB0B92E8);
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85, v16);
  v83 = &v75 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCE8, &qword_1DB0B92F0);
  v81 = *(v82 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82, v19);
  v80 = &v75 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCF0, &qword_1DB0B92F8);
  v78 = *(v79 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79, v22);
  v77 = &v75 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCF8, &qword_1DB0B9300);
  v100 = *(v76 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v76, v25);
  v99 = &v75 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD00, &qword_1DB0B9308);
  v97 = *(v27 - 8);
  v98 = v27;
  v28 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v96 = &v75 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD08, &qword_1DB0B9310);
  v75 = *(v31 - 8);
  v32 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v75 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD10, &qword_1DB0B9318);
  v95 = *(v36 - 8);
  v37 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v75 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD18, &qword_1DB0B9320);
  v42 = *(v41 - 8);
  v102 = v41;
  v103 = v42;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  v46 = &v75 - v45;
  v47 = *v1;
  v48 = a1;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(v48, v50);
  sub_1DB08B2D0();
  v101 = v46;
  sub_1DB09E434();
  if (v47 <= 214)
  {
    v57 = v95;
    v56 = v96;
    v90 = v31;
    v91 = v36;
    v59 = v97;
    v58 = v98;
    v60 = v99;
    v61 = v100;
    if (v47 > 212)
    {
      if (v47 == 213)
      {
        v106 = 2;
        sub_1DB08B570();
        v67 = v56;
        v53 = v101;
        v52 = v102;
        sub_1DB09E0F4();
        (*(v59 + 8))(v67, v58);
      }

      else
      {
        v107 = 3;
        sub_1DB08B51C();
        v62 = v60;
        v53 = v101;
        v52 = v102;
        sub_1DB09E0F4();
        (*(v61 + 8))(v62, v76);
      }

      return (*(v103 + 8))(v53, v52);
    }

    if (v47 == 211)
    {
      v104 = 0;
      sub_1DB08B618();
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      (*(v57 + 8))(v40, v91);
    }

    else
    {
      if (v47 != 212)
      {
        goto LABEL_24;
      }

      v105 = 1;
      sub_1DB08B5C4();
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      (*(v75 + 8))(v35, v90);
    }

    return (*(v103 + 8))(v53, v52);
  }

  if (v47 <= 216)
  {
    if (v47 == 215)
    {
      v108 = 4;
      sub_1DB08B4C8();
      v69 = v77;
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      v64 = *(v78 + 8);
      v65 = v69;
      v66 = &v115;
    }

    else
    {
      v109 = 5;
      sub_1DB08B474();
      v63 = v80;
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      v64 = *(v81 + 8);
      v65 = v63;
      v66 = &v116;
    }

    v54 = *(v66 - 32);
    goto LABEL_22;
  }

  switch(v47)
  {
    case 217:
      v110 = 6;
      sub_1DB08B420();
      v68 = v83;
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      (*(v84 + 8))(v68, v85);
      return (*(v103 + 8))(v53, v52);
    case 218:
      v111 = 7;
      sub_1DB08B3CC();
      v51 = v86;
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      v55 = v87;
      v54 = v88;
      goto LABEL_21;
    case 219:
      v112 = 8;
      sub_1DB08B378();
      v51 = v89;
      v53 = v101;
      v52 = v102;
      sub_1DB09E0F4();
      v55 = v90;
      v54 = v91;
LABEL_21:
      v64 = *(v55 + 8);
      v65 = v51;
LABEL_22:
      v64(v65, v54);
      return (*(v103 + 8))(v53, v52);
  }

LABEL_24:
  v114 = 9;
  sub_1DB08B324();
  v71 = v92;
  v73 = v101;
  v72 = v102;
  sub_1DB09E0F4();
  v113 = v47;
  sub_1DB04993C();
  v74 = v94;
  sub_1DB09E194();
  (*(v93 + 8))(v71, v74);
  return (*(v103 + 8))(v73, v72);
}

uint64_t ArmandDeviceDataErrorCode.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD78, &qword_1DB0B9328);
  v4 = *(v3 - 8);
  v100 = v3;
  v101 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v104 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD80, &qword_1DB0B9330);
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v105 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD88, &qword_1DB0B9338);
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v109 = &v80 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD90, &qword_1DB0B9340);
  v94 = *(v95 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95, v17);
  v108 = &v80 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD98, &qword_1DB0B9348);
  v92 = *(v93 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93, v20);
  v107 = &v80 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDA0, &qword_1DB0B9350);
  v91 = *(v90 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90, v23);
  v102 = &v80 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDA8, &qword_1DB0B9358);
  v88 = *(v89 - 8);
  v25 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89, v26);
  v103 = &v80 - v27;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDB0, &qword_1DB0B9360);
  v86 = *(v87 - 8);
  v28 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87, v29);
  v106 = &v80 - v30;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDB8, &qword_1DB0B9368);
  v84 = *(v85 - 8);
  v31 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85, v32);
  v34 = &v80 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDC0, &qword_1DB0B9370);
  v83 = *(v35 - 8);
  v36 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v80 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDC8, &qword_1DB0B9378);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v80 - v44;
  v46 = a1[3];
  v47 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1DB08B2D0();
  v48 = v112;
  sub_1DB09E414();
  if (v48)
  {
    goto LABEL_13;
  }

  v49 = v39;
  v80 = v35;
  v81 = v34;
  v50 = v106;
  v51 = v107;
  v82 = 0;
  v52 = v108;
  v53 = v109;
  v112 = v41;
  v54 = v110;
  v55 = sub_1DB09E0D4();
  v56 = (2 * *(v55 + 16)) | 1;
  v113 = v55;
  v114 = v55 + 32;
  v115 = 0;
  v116 = v56;
  v57 = sub_1DB028438();
  if (v57 == 10 || v115 != v116 >> 1)
  {
    v63 = sub_1DB09DEA4();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380) + 48);
    *v65 = &type metadata for ArmandDeviceDataErrorCode;
    sub_1DB09E034();
    sub_1DB09DE84();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
  }

  else
  {
    if (v57 > 4u)
    {
      if (v57 <= 6u)
      {
        if (v57 == 5)
        {
          v117 = 5;
          sub_1DB08B474();
          v70 = v82;
          sub_1DB09E024();
          v71 = v112;
          if (!v70)
          {
            (*(v92 + 8))(v51, v93);
            (*(v71 + 8))(v45, v40);
            swift_unknownObjectRelease();
            v61 = -40;
            v62 = v111;
            goto LABEL_40;
          }
        }

        else
        {
          v117 = 6;
          sub_1DB08B420();
          v79 = v82;
          sub_1DB09E024();
          v71 = v112;
          if (!v79)
          {
            (*(v94 + 8))(v52, v95);
            (*(v71 + 8))(v45, v40);
            swift_unknownObjectRelease();
            v61 = -39;
            v62 = v111;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v57 != 7)
        {
          v59 = v112;
          if (v57 == 8)
          {
            v117 = 8;
            sub_1DB08B378();
            v68 = v105;
            v69 = v82;
            sub_1DB09E024();
            if (!v69)
            {
              (*(v98 + 8))(v68, v99);
              (*(v59 + 8))(v45, v40);
              swift_unknownObjectRelease();
              v61 = -37;
              v62 = v111;
              goto LABEL_40;
            }
          }

          else
          {
            v74 = v54;
            v117 = 9;
            sub_1DB08B324();
            v75 = v104;
            v76 = v82;
            sub_1DB09E024();
            if (!v76)
            {
              sub_1DB0498E8();
              v77 = v100;
              sub_1DB09E0C4();
              (*(v101 + 8))(v75, v77);
              (*(v59 + 8))(v45, v40);
              swift_unknownObjectRelease();
              v61 = v117;
              v62 = v111;
              v54 = v74;
              goto LABEL_40;
            }
          }

          goto LABEL_34;
        }

        v117 = 7;
        sub_1DB08B3CC();
        v72 = v82;
        sub_1DB09E024();
        v71 = v112;
        if (!v72)
        {
          (*(v96 + 8))(v53, v97);
          (*(v71 + 8))(v45, v40);
          swift_unknownObjectRelease();
          v61 = -38;
          v62 = v111;
          goto LABEL_40;
        }
      }

LABEL_38:
      (*(v71 + 8))(v45, v40);
      goto LABEL_12;
    }

    v58 = v82;
    if (v57 > 1u)
    {
      if (v57 != 2)
      {
        v59 = v112;
        if (v57 == 3)
        {
          v117 = 3;
          sub_1DB08B51C();
          v60 = v103;
          sub_1DB09E024();
          if (!v58)
          {
            (*(v88 + 8))(v60, v89);
            (*(v59 + 8))(v45, v40);
            swift_unknownObjectRelease();
            v61 = -42;
            v62 = v111;
LABEL_40:
            *v54 = v61;
            return __swift_destroy_boxed_opaque_existential_1Tm(v62);
          }
        }

        else
        {
          v117 = 4;
          sub_1DB08B4C8();
          v73 = v102;
          sub_1DB09E024();
          if (!v58)
          {
            (*(v91 + 8))(v73, v90);
            (*(v59 + 8))(v45, v40);
            swift_unknownObjectRelease();
            v61 = -41;
            v62 = v111;
            goto LABEL_40;
          }
        }

LABEL_34:
        (*(v59 + 8))(v45, v40);
        goto LABEL_12;
      }

      v117 = 2;
      sub_1DB08B570();
      sub_1DB09E024();
      v71 = v112;
      if (!v58)
      {
        (*(v86 + 8))(v50, v87);
        (*(v71 + 8))(v45, v40);
        swift_unknownObjectRelease();
        v61 = -43;
        v62 = v111;
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (v57)
    {
      v117 = 1;
      sub_1DB08B5C4();
      v78 = v81;
      sub_1DB09E024();
      if (!v58)
      {
        (*(v84 + 8))(v78, v85);
        (*(v112 + 8))(v45, v40);
        swift_unknownObjectRelease();
        v61 = -44;
        v62 = v111;
        goto LABEL_40;
      }
    }

    else
    {
      v117 = 0;
      sub_1DB08B618();
      sub_1DB09E024();
      if (!v58)
      {
        (*(v83 + 8))(v49, v80);
        (*(v112 + 8))(v45, v40);
        swift_unknownObjectRelease();
        v61 = -45;
        v62 = v111;
        goto LABEL_40;
      }
    }
  }

  (*(v112 + 8))(v45, v40);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v62 = v111;
  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

char *sub_1DB0588FC(uint64_t a1)
{
  v2 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AnyODIKnownBinding(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E6158];
    v17 = *(v10 + 72);
    v36 = v2;
    v37 = v17;
    while (1)
    {
      sub_1DB08E6B0(v14, v12, type metadata accessor for AnyODIKnownBinding);
      sub_1DB08E6B0(v12, v6, type metadata accessor for AnyODIKnownBinding.BindingContent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v22 = *v6;
            v23 = v6[1];
            v39 = v16;
            v40 = MEMORY[0x1E69E6168];
            *&v38 = v22;
            *(&v38 + 1) = v23;
          }

          else
          {
            v28 = *v6;
            v40 = MEMORY[0x1E69E6540];
            v39 = MEMORY[0x1E69E6530];
            *&v38 = v28;
          }
        }

        else
        {
          v27 = *v6;
          v39 = MEMORY[0x1E69E63B0];
          v40 = MEMORY[0x1E69E63D0];
          *&v38 = v27;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v24 = *(*v6 + 16);

          v26 = sub_1DB0588FC(v25);
          v16 = MEMORY[0x1E69E6158];

          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
          v40 = sub_1DB08E57C();
          *&v38 = v26;
          sub_1DB08E718(v12, type metadata accessor for AnyODIKnownBinding);

          goto LABEL_19;
        }

        v30 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v39 = sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
        v40 = sub_1DB08E5F8(&qword_1ECC0FF28, &qword_1ECC0E818, 0x1E695DFB0);
        *&v38 = v30;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v20 = sub_1DB09D154();
        v39 = v20;
        v40 = sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530]);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v38);
        (*(*(v20 - 8) + 32))(boxed_opaque_existential_0, v6, v20);
      }

      else
      {
        v29 = *v6;
        v39 = MEMORY[0x1E69E6370];
        v40 = MEMORY[0x1E69E6380];
        LOBYTE(v38) = v29;
      }

      sub_1DB08E718(v12, type metadata accessor for AnyODIKnownBinding);
LABEL_19:
      sub_1DAF332B8(&v38, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      if (swift_dynamicCast())
      {
        v31 = v43;
        if (v43)
        {
          v32 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1DAF72DB4(0, *(v15 + 2) + 1, 1, v15);
          }

          v34 = *(v15 + 2);
          v33 = *(v15 + 3);
          if (v34 >= v33 >> 1)
          {
            v15 = sub_1DAF72DB4((v33 > 1), v34 + 1, 1, v15);
          }

          *(v15 + 2) = v34 + 1;
          v18 = &v15[16 * v34];
          *(v18 + 4) = v32;
          *(v18 + 5) = v31;
          v16 = MEMORY[0x1E69E6158];
        }
      }

      v14 += v37;
      if (!--v13)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DB058D9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103C8, &qword_1DB0BC680);
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v86 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103D0, &qword_1DB0BC688);
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v89 = &v76 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103D8, &qword_1DB0BC690);
  v80 = *(v82 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82, v11);
  v77 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103E0, &qword_1DB0BC698);
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v79 = &v76 - v16;
  v83 = sub_1DB09D154();
  v81 = *(v83 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83, v18);
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103E8, &qword_1DB0BC6A0);
  v76 = *(v96 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v96, v21);
  v95 = &v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103F0, &qword_1DB0BC6A8);
  v93 = *(v23 - 8);
  v94 = v23;
  v24 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103F8, &qword_1DB0BC6B0);
  v92 = *(v28 - 8);
  v29 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v76 - v31;
  v33 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = (&v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10400, &qword_1DB0BC6B8);
  v39 = *(v38 - 8);
  v99 = v38;
  v100 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v76 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09475C();
  v97 = v43;
  sub_1DB09E434();
  sub_1DB08E6B0(v98, v37, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v54 = v92;
    v53 = v93;
    v56 = v94;
    v55 = v95;
    v57 = v96;
    if (!EnumCaseMultiPayload)
    {
      v68 = *v37;
      v101 = 0;
      sub_1DB0949A8();
      v69 = v99;
      v70 = v97;
      sub_1DB09E0F4();
      sub_1DB09E174();
      (*(v54 + 8))(v32, v28);
      return (*(v100 + 8))(v70, v69);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v58 = *v37;
      v59 = v37[1];
      v102 = 1;
      sub_1DB094954();
      v60 = v99;
      v61 = v97;
      sub_1DB09E0F4();
      sub_1DB09E154();

      (*(v53 + 8))(v27, v56);
      return (*(v100 + 8))(v61, v60);
    }

    v71 = *v37;
    v103 = 2;
    sub_1DB094900();
    v46 = v99;
    v47 = v97;
    sub_1DB09E0F4();
    sub_1DB09E184();
    (*(v76 + 8))(v55, v57);
    return (*(v100 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v46 = v99;
    v47 = v97;
    if (EnumCaseMultiPayload == 3)
    {
      v48 = v81;
      v49 = v78;
      v50 = v83;
      (*(v81 + 32))(v78, v37, v83);
      v104 = 3;
      sub_1DB0948AC();
      v51 = v79;
      sub_1DB09E0F4();
      sub_1DB08E648(&qword_1ECC0F150, 255, MEMORY[0x1E6969530]);
      v52 = v85;
      sub_1DB09E194();
      (*(v84 + 8))(v51, v52);
      (*(v48 + 8))(v49, v50);
    }

    else
    {
      v72 = *v37;
      v105 = 4;
      sub_1DB094858();
      v73 = v77;
      sub_1DB09E0F4();
      v74 = v82;
      sub_1DB09E164();
      (*(v80 + 8))(v73, v74);
    }

    return (*(v100 + 8))(v47, v46);
  }

  v63 = v99;
  v64 = v97;
  if (EnumCaseMultiPayload == 5)
  {
    v65 = *(*v37 + 16);
    v107 = 5;
    sub_1DB094804();

    v66 = v89;
    sub_1DB09E0F4();
    v106 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10390, &qword_1DB0BC678);
    sub_1DB0949FC(&qword_1ECC10408, &qword_1ECC101A8);
    v67 = v91;
    sub_1DB09E194();
    (*(v90 + 8))(v66, v67);
    (*(v100 + 8))(v64, v63);
  }

  else
  {
    v108 = 6;
    sub_1DB0947B0();
    v75 = v86;
    sub_1DB09E0F4();
    (*(v87 + 8))(v75, v88);
    return (*(v100 + 8))(v64, v63);
  }
}

uint64_t sub_1DB059844(uint64_t a1)
{
  v3 = type metadata accessor for AnyODIKnownBinding(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB09D154();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB08E6B0(v1, v19, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        (*(v10 + 32))(v14, v19, v9);
        MEMORY[0x1E1280A80](3);
        sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530]);
        sub_1DB09D684();
        return (*(v10 + 8))(v14, v9);
      }

      else
      {
        v32 = *v19;
        MEMORY[0x1E1280A80](4);
        return sub_1DB09E3C4();
      }
    }

    if (EnumCaseMultiPayload == 5)
    {
      v24 = *(*v19 + 16);
      MEMORY[0x1E1280A80](5);
      MEMORY[0x1E1280A80](*(v24 + 16));
      v25 = *(v24 + 16);
      if (!v25)
      {
      }

      v26 = v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v27 = *(v4 + 72);

      do
      {
        sub_1DB08E6B0(v26, v8, type metadata accessor for AnyODIKnownBinding);
        sub_1DB059844(a1);
        sub_1DB08E718(v8, type metadata accessor for AnyODIKnownBinding);
        v26 += v27;
        --v25;
      }

      while (v25);
    }

    v31 = 6;
    return MEMORY[0x1E1280A80](v31);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v19;
      v23 = v19[1];
      MEMORY[0x1E1280A80](1);
      sub_1DB09D794();
    }

    v30 = *v19;
    MEMORY[0x1E1280A80](2);
    v31 = v30;
    return MEMORY[0x1E1280A80](v31);
  }

  v28 = *v19;
  MEMORY[0x1E1280A80](0);
  v29 = 0.0;
  if (v28 != 0.0)
  {
    v29 = v28;
  }

  return MEMORY[0x1E1280AA0](*&v29);
}

uint64_t sub_1DB059BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10338, &qword_1DB0BC638);
  v116 = *(v117 - 8);
  v3 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117, v4);
  v123 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10340, &qword_1DB0BC640);
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v129 = &v101 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10348, &qword_1DB0BC648);
  v113 = *(v115 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115, v12);
  v122 = &v101 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10350, &qword_1DB0BC650);
  v112 = *(v114 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114, v15);
  v121 = &v101 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10358, &qword_1DB0BC658);
  v111 = *(v108 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v108, v18);
  v128 = &v101 - v19;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10360, &qword_1DB0BC660);
  v109 = *(v110 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110, v21);
  v120 = &v101 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10368, &qword_1DB0BC668);
  v106 = *(v107 - 8);
  v23 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107, v24);
  v126 = &v101 - v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10370, &qword_1DB0BC670);
  v125 = *(v127 - 8);
  v26 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v127, v27);
  v29 = &v101 - v28;
  v124 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v30 = *(*(v124 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v124, v31);
  v105 = (&v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v101 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v101 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = (&v101 - v44);
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v49 = &v101 - v48;
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = (&v101 - v51);
  v53 = a1[3];
  v54 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1DB09475C();
  v55 = v132;
  sub_1DB09E414();
  if (v55)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v131);
  }

  v101 = v49;
  v102 = v45;
  v103 = v41;
  v56 = v126;
  v104 = v37;
  v58 = v128;
  v57 = v129;
  v132 = v52;
  v59 = v130;
  v60 = v127;
  v61 = sub_1DB09E0D4();
  v62 = (2 * *(v61 + 16)) | 1;
  v134 = v61;
  v135 = v61 + 32;
  v136 = 0;
  v137 = v62;
  v63 = sub_1DB02846C();
  if (v63 == 7 || v136 != v137 >> 1)
  {
    v68 = sub_1DB09DEA4();
    swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380) + 48);
    *v70 = v124;
    sub_1DB09E034();
    sub_1DB09DE84();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    (*(v125 + 8))(v29, v60);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v131);
  }

  if (v63 <= 2u)
  {
    if (v63)
    {
      if (v63 != 1)
      {
        v133 = 2;
        sub_1DB094900();
        sub_1DB09E024();
        v80 = v108;
        v81 = sub_1DB09E0B4();
        v126 = 0;
        v82 = v125;
        v94 = v81;
        (*(v111 + 8))(v58, v80);
        (*(v82 + 8))(v29, v60);
        swift_unknownObjectRelease();
        v95 = v103;
        *v103 = v94;
        swift_storeEnumTagMultiPayload();
        v96 = v95;
        goto LABEL_20;
      }

      v133 = 1;
      sub_1DB094954();
      v73 = v120;
      sub_1DB09E024();
      v74 = v110;
      v90 = sub_1DB09E084();
      v92 = v91;
      v126 = 0;
      (*(v109 + 8))(v73, v74);
      (*(v125 + 8))(v29, v60);
      swift_unknownObjectRelease();
      v93 = v102;
      *v102 = v90;
      v93[1] = v92;
    }

    else
    {
      v133 = 0;
      sub_1DB0949A8();
      sub_1DB09E024();
      v77 = v107;
      sub_1DB09E0A4();
      v79 = v78;
      (*(v106 + 8))(v56, v77);
      (*(v125 + 8))(v29, v60);
      swift_unknownObjectRelease();
      v126 = 0;
      v93 = v101;
      *v101 = v79;
    }

LABEL_19:
    swift_storeEnumTagMultiPayload();
    v96 = v93;
    goto LABEL_20;
  }

  if (v63 <= 4u)
  {
    v64 = v125;
    if (v63 == 3)
    {
      v133 = 3;
      sub_1DB0948AC();
      v65 = v121;
      sub_1DB09E024();
      sub_1DB09D154();
      sub_1DB08E648(&qword_1ECC0F110, 255, MEMORY[0x1E6969530]);
      v66 = v104;
      v67 = v114;
      sub_1DB09E0C4();
      v126 = 0;
      (*(v112 + 8))(v65, v67);
      (*(v64 + 8))(v29, v60);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v96 = v66;
LABEL_20:
      v97 = v132;
      sub_1DB08E91C(v96, v132, type metadata accessor for AnyODIKnownBinding.BindingContent);
      goto LABEL_21;
    }

    v133 = 4;
    sub_1DB094858();
    v83 = v122;
    sub_1DB09E024();
    v88 = v115;
    v89 = sub_1DB09E094();
    v126 = 0;
    v99 = v89;
    (*(v113 + 8))(v83, v88);
    (*(v64 + 8))(v29, v60);
    swift_unknownObjectRelease();
    v100 = v99 & 1;
    v93 = v105;
    *v105 = v100;
    goto LABEL_19;
  }

  v75 = v125;
  if (v63 != 5)
  {
    v133 = 6;
    sub_1DB0947B0();
    v84 = v123;
    sub_1DB09E024();
    v126 = 0;
    (*(v116 + 8))(v84, v117);
    (*(v75 + 8))(v29, v60);
    swift_unknownObjectRelease();
    v97 = v132;
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v98 = v131;
    goto LABEL_22;
  }

  v133 = 5;
  sub_1DB094804();
  v76 = v57;
  sub_1DB09E024();
  v85 = v59;
  v128 = v29;
  v86 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10390, &qword_1DB0BC678);
  sub_1DB0949FC(&qword_1ECC10398, &qword_1ECC101A0);
  v87 = v118;
  sub_1DB09E0C4();
  v126 = 0;
  (*(v119 + 8))(v76, v87);
  (*(v75 + 8))(v128, v60);
  swift_unknownObjectRelease();
  v97 = v132;
  *v132 = v86;
  swift_storeEnumTagMultiPayload();
  v98 = v131;
  v59 = v85;
LABEL_22:
  sub_1DB08E91C(v97, v59, type metadata accessor for AnyODIKnownBinding.BindingContent);
  return __swift_destroy_boxed_opaque_existential_1Tm(v98);
}

uint64_t sub_1DB05AB6C(uint64_t a1)
{
  v2 = sub_1DB094804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05ABA8(uint64_t a1)
{
  v2 = sub_1DB094804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05ABE4(uint64_t a1)
{
  v2 = sub_1DB094858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AC20(uint64_t a1)
{
  v2 = sub_1DB094858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AC5C()
{
  v1 = *v0;
  v2 = 0x656C62756F44;
  v3 = 0x7961727241;
  if (v1 != 5)
  {
    v3 = 1819047246;
  }

  v4 = 1702125892;
  if (v1 != 3)
  {
    v4 = 1819242306;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727453;
  if (v1 != 1)
  {
    v5 = 7630409;
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

uint64_t sub_1DB05AD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08EE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB05AD30(uint64_t a1)
{
  v2 = sub_1DB09475C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AD6C(uint64_t a1)
{
  v2 = sub_1DB09475C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05ADA8(uint64_t a1)
{
  v2 = sub_1DB0948AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05ADE4(uint64_t a1)
{
  v2 = sub_1DB0948AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AE20(uint64_t a1)
{
  v2 = sub_1DB0949A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AE5C(uint64_t a1)
{
  v2 = sub_1DB0949A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AE98(uint64_t a1)
{
  v2 = sub_1DB094900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AED4(uint64_t a1)
{
  v2 = sub_1DB094900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AF10(uint64_t a1)
{
  v2 = sub_1DB0947B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AF4C(uint64_t a1)
{
  v2 = sub_1DB0947B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AF88(uint64_t a1)
{
  v2 = sub_1DB094954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AFC4(uint64_t a1)
{
  v2 = sub_1DB094954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05B030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1DB09D154();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for AnyODIKnownBinding(0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v50 - v21;
  sub_1DAF3523C(a1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if (swift_dynamicCast())
  {
    *v13 = v58;
LABEL_36:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    sub_1DB08E91C(v13, v22, type metadata accessor for AnyODIKnownBinding.BindingContent);
    sub_1DB08E91C(v22, v55, type metadata accessor for AnyODIKnownBinding);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (swift_dynamicCast())
  {
    v23 = *(&v58 + 1);
    *v13 = v58;
    v13[1] = v23;
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    *v13 = v58;
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    (*(v4 + 32))(v13, v8, v3);
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    *v13 = v58;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10148, &qword_1DB0BB1A8);
  if (swift_dynamicCast())
  {
    v24 = v62;
    v25 = swift_allocObject();
    v26 = v25;
    v27 = *(v24 + 16);
    if (!v27)
    {

      v29 = MEMORY[0x1E69E7CC0];
LABEL_35:
      *(v26 + 2) = v29;
      *v13 = v26;
      goto LABEL_36;
    }

    v50 = v25;
    v51 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    v52 = v27;
    sub_1DAF5F6EC(0, v27, 0);
    v28 = 0;
    v29 = v60;
    v53 = v24;
    v30 = v24 + 32;
    while (v28 < *(v53 + 16))
    {
      sub_1DAF3523C(v30, &v58);
      sub_1DAF3523C(&v58, v57);
      v31 = v56;
      sub_1DB05B030(v57);
      if (v31)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v58);

        swift_deallocUninitializedObject();
        goto LABEL_34;
      }

      v56 = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(&v58);
      v60 = v29;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      v26 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        sub_1DAF5F6EC(v32 > 1, v33 + 1, 1);
        v29 = v60;
      }

      ++v28;
      *(v29 + 16) = v26;
      sub_1DB08E91C(v19, v29 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v33, type metadata accessor for AnyODIKnownBinding);
      v30 += 40;
      if (v52 == v28)
      {

        a1 = v51;
        v26 = v50;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_23;
  }

  sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    goto LABEL_36;
  }

  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBA50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v34 = sub_1DB09E474();
  MEMORY[0x1E127FE90](v34);

  MEMORY[0x1E127FE90](0x203A6C617620, 0xE600000000000000);
  v35 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1DB09E234();
  v30 = *(&v58 + 1);
  v56 = v58;
  v26 = "CoreODIEssentials/ArmandDeviceData.swift";
  if (qword_1EE301E08 != -1)
  {
    goto LABEL_38;
  }

LABEL_23:
  v36 = v26 - 32;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v39 = *(v38 + 16);

  if (v39)
  {
    v40 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v41)
    {
      sub_1DAF409DC(*(v38 + 56) + 32 * v40, &v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v37 = *&v57[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1DAF72EC0(0, *(v37 + 2) + 1, 1, v37);
  }

  v43 = *(v37 + 2);
  v42 = *(v37 + 3);
  if (v43 >= v42 >> 1)
  {
    v37 = sub_1DAF72EC0((v42 > 1), v43 + 1, 1, v37);
  }

  *(v37 + 2) = v43 + 1;
  v44 = &v37[56 * v43];
  *(v44 + 4) = v56;
  *(v44 + 5) = v30;
  *(v44 + 6) = 0xD000000000000028;
  *(v44 + 7) = v36 | 0x8000000000000000;
  strcpy(v44 + 64, "init(inVal:)");
  v44[77] = 0;
  *(v44 + 39) = -5120;
  *(v44 + 10) = 116;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v58 = v37;
  sub_1DAF40D20(&v58, v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v38;
  sub_1DAF3B11C(v57, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v47 = sub_1DB09D6B4();
  v48 = sub_1DB09D604();
  [v46 initWithDomain:v47 code:-2125 userInfo:v48];

  swift_willThrow();
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t sub_1DB05B8C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10410, &qword_1DB0BC6C0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for AnyODIKnownBinding(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB094A9C();
  sub_1DB09E414();
  if (!v2)
  {
    v19 = v22;
    sub_1DB08E648(&qword_1ECC10420, 255, type metadata accessor for AnyODIKnownBinding.BindingContent);
    v20 = v24;
    sub_1DB09E0C4();
    (*(v23 + 8))(v12, v8);
    sub_1DB08E91C(v20, v17, type metadata accessor for AnyODIKnownBinding.BindingContent);
    sub_1DB08E91C(v17, v19, type metadata accessor for AnyODIKnownBinding);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB05BB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05BBE0(uint64_t a1)
{
  v2 = sub_1DB094A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05BC1C(uint64_t a1)
{
  v2 = sub_1DB094A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05BC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10428, &qword_1DB0BC6C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB094A9C();
  sub_1DB09E434();
  type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  sub_1DB08E648(&qword_1ECC10430, 255, type metadata accessor for AnyODIKnownBinding.BindingContent);
  sub_1DB09E194();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1DB05BDEC()
{
  sub_1DB09E3A4();
  sub_1DB059844(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05BE2C()
{
  sub_1DB09E3A4();
  sub_1DB059844(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05BE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  switch(v7)
  {
    case 16:
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
      break;
    case 18:
      v8 = *(v2 + 48);
      v9 = *(v2 + 56);
      v10 = *(v2 + 64);
      break;
    case 17:
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      break;
    default:
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB0A04E0;
      *(inited + 32) = 0x646F43726F727265;
      *(inited + 40) = 0xE900000000000065;
      v5 = MEMORY[0x1E69E6540];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 80) = v5;
      *(inited + 48) = -5;
      return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  return sub_1DB055260(v8, v9, v10, a2);
}

uint64_t sub_1DB05BF5C()
{
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  if (v0[1])
  {
    v8 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v1 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v1 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v6)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v9 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v9);
}

uint64_t sub_1DB05C0C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v10 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v11 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (v8)
  {
    sub_1DB09D794();
  }

  if ((v9 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v9 ^ 0x80u];
  }

  else
  {
    v12 = (v9 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05C260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10130, &qword_1DB0BB180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED98();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = 0;
    v36 = 0;
    v37 = -44;
    v38 = 0;
    v39 = 0;
    v40 = -44;
    v41 = 0;
    v42 = 0;
    v43 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v27) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v26 = v35;
    v25 = v36;
    v44 = v37;

    LOBYTE(v27) = 1;
    sub_1DB09E0C4();
    v24 = v6;
    v23 = a2;
    v12 = v35;
    v13 = v36;
    v14 = v37;

    v45 = 2;
    sub_1DB09E0C4();
    (*(v24 + 8))(v10, v5);
    v16 = v32;
    v17 = v33;
    v18 = v34;

    v19 = v25;
    *&v27 = v26;
    *(&v27 + 1) = v25;
    LOBYTE(v28) = v44;
    *(&v28 + 1) = v12;
    *&v29 = v13;
    BYTE8(v29) = v14;
    *&v30 = v16;
    *(&v30 + 1) = v17;
    v31 = v18;
    v20 = v23;
    *(v23 + 64) = v18;
    v21 = v30;
    v20[2] = v29;
    v20[3] = v21;
    v22 = v28;
    *v20 = v27;
    v20[1] = v22;
    sub_1DB08B170(&v27, &v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = v26;
    v36 = v19;
    v37 = v44;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v16;
    v42 = v17;
    v43 = v18;
  }

  return sub_1DB08EDEC(&v35);
}

uint64_t sub_1DB05C634()
{
  v1 = 0x645F64756F6C6369;
  if (*v0 != 1)
  {
    v1 = 0x4449656C707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x645F73656E757469;
  }
}

uint64_t sub_1DB05C694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB05C6BC(uint64_t a1)
{
  v2 = sub_1DB08ED98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05C6F8(uint64_t a1)
{
  v2 = sub_1DB08ED98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05C734@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = *result;
    if (v4 != 17)
    {
      v3 = -40;
    }

    if (v4 == 18)
    {
      v3 = v2[64];
    }

    if (v4 == 16)
    {
      v3 = v2[40];
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05C7DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 <= 2)
  {
    if (!*(a1 + 16))
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      goto LABEL_14;
    }

    if (v7 == 2)
    {
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
LABEL_14:

      return sub_1DB055260(v8, v9, v10, a2);
    }

LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  if (v7 == 3)
  {
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    goto LABEL_14;
  }

  if (v7 != 4)
  {
    goto LABEL_2;
  }

  v11 = *(v2 + 72);
  v12 = *(v2 + 80) | (*(v2 + 81) << 8);

  return sub_1DB055700(v11, v12, a2);
}

uint64_t sub_1DB05C90C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10128, &qword_1DB0BB178);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[4];
  v25 = v1[3];
  v26 = v11;
  v32 = *(v1 + 40);
  v12 = v1[6];
  v23 = v1[7];
  v24 = v12;
  LODWORD(v12) = *(v1 + 64);
  v19 = v1[9];
  v20 = *(v1 + 80);
  v21 = *(v1 + 81);
  v22 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED14();

  sub_1DB09E434();
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v14 = v27;
  sub_1DB09E194();
  if (v14)
  {

    return (*(v28 + 8))(v7, v3);
  }

  else
  {
    v17 = v23;
    v16 = v24;
    v18 = v28;

    v29 = v25;
    v30 = v26;
    v31 = v32;
    v33 = 1;

    sub_1DB09E194();

    v29 = v16;
    v30 = v17;
    v31 = v22;
    v33 = 2;

    sub_1DB09E194();

    v29 = v19;
    LOBYTE(v30) = v20;
    BYTE1(v30) = v21;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DB09E194();
    return (*(v18 + 8))(v7, v3);
  }
}

uint64_t sub_1DB05CC50()
{
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[7];
  v6 = *(v0 + 64);
  v12 = v0[9];
  v13 = v0[6];
  v14 = *(v0 + 80);
  v7 = *(v0 + 81);
  if (v0[1])
  {
    v8 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v1 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v1 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v5)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v9 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  sub_1DB09E3C4();
  if (!v14)
  {
    MEMORY[0x1E1280A80](v12);
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v10 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v10);
}