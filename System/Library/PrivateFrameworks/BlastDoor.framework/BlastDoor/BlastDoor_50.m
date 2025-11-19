BOOL sub_21445CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  do
  {
    sub_2146D96F8();
    v4 = v5 == 0;
    if (!v5)
    {
      break;
    }

    sub_2146D9508();
    v7 = v6;
  }

  while ((v7 & 1) == 0);

  return v4;
}

uint64_t sub_21445CF3C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v7 > a3)
      {
        return 0;
      }
    }

    else if (a3 < 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v3)
  {
    return BYTE6(a2) <= a3;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    return HIDWORD(result) - result <= a3;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21445CFB0(uint64_t a1, uint64_t a2)
{
  result = sub_2146D96A8();
  if (result)
  {
    if (a1 == 0xD000000000000010 && 0x800000021479ACB0 == a2 || (sub_2146DA6A8() & 1) != 0)
    {
      return 1;
    }

    else
    {

      v5 = sub_2146D96F8();
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        do
        {
          sub_2146D9508();
          if ((v10 & 1) == 0 || v7 == 43 && v8 == 0xE100000000000000 || ((v11 = sub_2146DA6A8(), v7 == 95) ? (v12 = v8 == 0xE100000000000000) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), (v11 & 1) != 0 || v13))
          {
          }

          else
          {
            v14 = sub_2146DA6A8();

            if ((v14 & 1) == 0)
            {
              v15 = 0;
              goto LABEL_24;
            }
          }

          v7 = sub_2146D96F8();
          v8 = v9;
        }

        while (v9);
      }

      v15 = 1;
LABEL_24:

      return v15;
    }
  }

  return result;
}

unint64_t sub_21445D11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0 && sub_2146D96A8() > a3)
  {
    return 0;
  }

  v5 = sub_2146D96F8();
  if (!v6)
  {
LABEL_35:
    v4 = 1;
LABEL_38:

    return v4;
  }

  v7 = v5;
  v8 = v6;
  while (1)
  {
    if (v7 == 2573 && v8 == 0xE200000000000000)
    {
      goto LABEL_29;
    }

    result = sub_2146DA6A8();
    if (result)
    {
      goto LABEL_29;
    }

    v11 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v16 = sub_2146D9658();
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v13 = v7;
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_2146D9F88();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_36;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_36:

LABEL_37:
      v4 = 0;
      goto LABEL_38;
    }

    result = sub_214458070(v7, v8);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_41;
    }

LABEL_29:
    if (sub_2146D9528() & 1) != 0 || (sub_2146D9538())
    {
    }

    else
    {
      v17 = sub_2146D94F8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v7 = sub_2146D96F8();
    v8 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_21445D330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;

  sub_2146D91B8();
  v8 = sub_2146D91A8();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_213FB2DF4(v7, &qword_27C913D58, &qword_214747238);
  if (v9 == 1)
  {
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2146EA710;
    v16[0] = a1;
    v16[1] = a2;

    v11 = MEMORY[0x277D837D0];
    v12 = sub_2146D9618();
    v14 = v13;
    *(v10 + 56) = v11;
    *(v10 + 64) = sub_213FB2DA0();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_2146D91D8();
  }

  return v9 != 1;
}

uint64_t sub_21445D518(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8() & 1;
  }
}

uint64_t sub_21445D60C(unsigned int a1)
{
  v2 = HIBYTE(a1);
  v3 = sub_2140958E0(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2140958E0((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[4 * v5 + 32] = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  if (v7 >= v6 >> 1)
  {
    v3 = sub_2140958E0((v6 > 1), v7 + 1, 1, v3);
  }

  *(v3 + 2) = v7 + 1;
  *&v3[4 * v7 + 32] = BYTE2(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_2140958E0((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  *&v3[4 * v9 + 32] = BYTE1(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2140958E0(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_2140958E0((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  *&v3[4 * v11 + 32] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D60, qword_214747268);
  sub_21445D82C();
  sub_2146D9668();

  return 0;
}

unint64_t sub_21445D82C()
{
  result = qword_27C913D68;
  if (!qword_27C913D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913D60, qword_214747268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D68);
  }

  return result;
}

unint64_t sub_21445D890(uint64_t a1)
{
  *(a1 + 8) = sub_21431EB4C();
  result = sub_21431DFE0();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6972745378616DLL && a2 == 0xEE00746E756F4365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21445D9B4(uint64_t a1)
{
  v2 = sub_21445DB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21445D9F0(uint64_t a1)
{
  v2 = sub_21445DB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21445DA2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D70, &qword_2147472E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21445DB64()
{
  result = qword_280B30490;
  if (!qword_280B30490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30490);
  }

  return result;
}

uint64_t sub_21445DBB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D78, &qword_2147472E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21445DD24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D70, &qword_2147472E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445DB64();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21445DE8C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_21445DEBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_21445DF14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21445DF44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_21445DF9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21445DFCC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21445E024()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_21445E054(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

unint64_t sub_21445E0AC()
{
  v1 = *v0;
  v2 = 0x6572436567616D69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21445E158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21445ED6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21445E180(uint64_t a1)
{
  v2 = sub_21445E41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21445E1BC(uint64_t a1)
{
  v2 = sub_21445E41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21445E1F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D80, &qword_2147472F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v17[5] = v1[2];
  v17[6] = v8;
  v11 = v1[5];
  v17[3] = v1[4];
  v17[4] = v10;
  v12 = v1[7];
  v17[0] = v1[6];
  v17[1] = v12;
  v17[2] = v11;
  v13 = v1[8];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445E41C();
  sub_2146DAA28();
  v23 = 0;
  v15 = v18;
  sub_2146DA368();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v13;
  v22 = 1;
  sub_2146DA2B8();
  v21 = 2;
  sub_2146DA2B8();
  v20 = 3;
  sub_2146DA2B8();
  v19 = 4;
  sub_2146DA2B8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21445E41C()
{
  result = qword_280B304A8;
  if (!qword_280B304A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B304A8);
  }

  return result;
}

uint64_t sub_21445E470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D88, &qword_2147472F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21445E41C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v34 = sub_2146DA1A8();
    LOBYTE(v40[0]) = 1;
    v11 = sub_2146DA0F8();
    v13 = v12;
    v33 = v11;
    LOBYTE(v40[0]) = 2;
    v14 = sub_2146DA0F8();
    v16 = v15;
    v32 = v14;
    LOBYTE(v40[0]) = 3;
    v17 = sub_2146DA0F8();
    v19 = v18;
    v31 = v17;
    v41 = 4;
    v20 = sub_2146DA0F8();
    v21 = *(v6 + 8);
    v30 = v20;
    v22 = v9;
    v24 = v23;
    v21(v22, v5);
    v25 = v34;
    *&v35 = v34;
    *(&v35 + 1) = v33;
    v26 = v32;
    *&v36 = v13;
    *(&v36 + 1) = v32;
    *&v37 = v16;
    *(&v37 + 1) = v31;
    *&v38 = v19;
    *(&v38 + 1) = v30;
    v39 = v24;
    *(a2 + 64) = v24;
    v27 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v27;
    v28 = v36;
    *a2 = v35;
    *(a2 + 16) = v28;
    sub_21445E79C(&v35, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v25;
    v40[1] = v33;
    v40[2] = v13;
    v40[3] = v26;
    v40[4] = v16;
    v40[5] = v31;
    v40[6] = v19;
    v40[7] = v30;
    v40[8] = v24;
    return sub_21445E7D4(v40);
  }
}

uint64_t sub_21445E834@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t sub_21445E85C()
{
  result = qword_280B30470;
  if (!qword_280B30470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30470);
  }

  return result;
}

unint64_t sub_21445E8B4()
{
  result = qword_280B30478;
  if (!qword_280B30478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30478);
  }

  return result;
}

unint64_t sub_21445E908(uint64_t a1)
{
  result = sub_21445E930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21445E930()
{
  result = qword_280B30458;
  if (!qword_280B30458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30458);
  }

  return result;
}

unint64_t sub_21445E984(uint64_t a1)
{
  *(a1 + 8) = sub_21445E9B4();
  result = sub_21445EA08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21445E9B4()
{
  result = qword_280B30460;
  if (!qword_280B30460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30460);
  }

  return result;
}

unint64_t sub_21445EA08()
{
  result = qword_280B30468;
  if (!qword_280B30468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30468);
  }

  return result;
}

uint64_t sub_21445EA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21445EAB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_21445EB60()
{
  result = qword_27C913D90;
  if (!qword_27C913D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D90);
  }

  return result;
}

unint64_t sub_21445EBB8()
{
  result = qword_27C913D98;
  if (!qword_27C913D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913D98);
  }

  return result;
}

unint64_t sub_21445EC10()
{
  result = qword_280B30498;
  if (!qword_280B30498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30498);
  }

  return result;
}

unint64_t sub_21445EC68()
{
  result = qword_280B304A0;
  if (!qword_280B304A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B304A0);
  }

  return result;
}

unint64_t sub_21445ECC0()
{
  result = qword_280B30480;
  if (!qword_280B30480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30480);
  }

  return result;
}

unint64_t sub_21445ED18()
{
  result = qword_280B30488;
  if (!qword_280B30488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30488);
  }

  return result;
}

uint64_t sub_21445ED6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021479ACD0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479ACF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479AD10 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572436567616D69 && a2 == 0xEB00000000746964 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479AD30 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BlastDoor::ErrorMessage::ErrorType_optional __swiftcall ErrorMessage.ErrorType.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue > 0x18Fu)
  {
    if (rawValue <= 0x1F5u)
    {
      if (rawValue == 400)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 500)
      {
        *v1 = 6;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x1F6u:
          *v1 = 7;
          return rawValue;
        case 0x258u:
          *v1 = 8;
          return rawValue;
        case 0x259u:
          *v1 = 9;
          return rawValue;
      }
    }

    goto LABEL_23;
  }

  if (rawValue <= 0xC8u)
  {
    if (!rawValue)
    {
LABEL_24:
      *v1 = v2;
      return rawValue;
    }

    if (rawValue == 120)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_23:
    v2 = 10;
    goto LABEL_24;
  }

  if (rawValue == 201)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 202)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 250)
  {
    goto LABEL_23;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_21445F048()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = word_214747842[v1];
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21445F0D0()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = word_214747842[v1];
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t ErrorMessage.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ErrorMessage();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ErrorMessage()
{
  result = qword_280B30A68;
  if (!qword_280B30A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ErrorMessage.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ErrorMessage();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t ErrorMessage.additionalInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for ErrorMessage() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ErrorMessage.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ErrorMessage() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_21445F3EC()
{
  result = qword_27C913DA0;
  if (!qword_27C913DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913DA0);
  }

  return result;
}

unint64_t sub_21445F440(uint64_t a1)
{
  *(a1 + 8) = sub_2142EEDB4();
  result = sub_2142EEE08();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445F470(uint64_t a1)
{
  *(a1 + 8) = sub_21445F4D8(&qword_27C913DA8);
  result = sub_21445F4D8(&qword_27C913DB0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21445F4D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ErrorMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21445F544()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21445F5E0()
{
  result = qword_27C913DB8;
  if (!qword_27C913DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913DB8);
  }

  return result;
}

uint64_t sub_21445F634@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21445F690()
{
  v1 = 0x313030327061;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (*v0)
  {
    v1 = 0x323030327061;
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

uint64_t sub_21445F714()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21445F7D4()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21445F880()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21445F93C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_21445F634(a1);
}

void sub_21445F948(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x313030327061;
  v4 = 0xD00000000000001BLL;
  v5 = 0x8000000214787FB0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000022;
    v5 = 0x8000000214787FD0;
  }

  if (*v1)
  {
    v3 = 0x323030327061;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21445FAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21445FB34()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21445FB64(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21445FBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 40);
  return sub_213FDC9D0(v2, v3);
}

__n128 sub_21445FBD8(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_213FDC6D0(*(v1 + 16), *(v1 + 24));
  result = v7;
  *(v1 + 16) = v7;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_21445FCBC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 24);

  return sub_21445FD00(a1, v3);
}

uint64_t sub_21445FD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21445FDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_213FB2E54(v17, v16, &qword_27C909270, &qword_2146F5620);
}

__n128 sub_21445FE6C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GSMARCSApplicationCharacteristic(0) + 28);
  v4 = *(v3 + 112);
  v12[6] = *(v3 + 96);
  v12[7] = v4;
  v13 = *(v3 + 128);
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v6 = *(v3 + 80);
  v12[4] = *(v3 + 64);
  v12[5] = v6;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  sub_21445FEFC(v12);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 128) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_21445FEFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_21445FFAC()
{
  v1 = type metadata accessor for ApplicationCharacteristic(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214460080(v0, v4, type metadata accessor for ApplicationCharacteristic);
  v5 = swift_getEnumCaseMultiPayload() == 2;
  sub_2144600E8(v4);
  return v5;
}

uint64_t sub_214460080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144600E8(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationCharacteristic(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214460148()
{
  result = qword_27C913DC0;
  if (!qword_27C913DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913DC0);
  }

  return result;
}

uint64_t sub_21446019C(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C90CDD8, type metadata accessor for IMS3GPPApplicationCharacteristic);
  result = sub_214460240(&qword_27C90CDB8, type metadata accessor for IMS3GPPApplicationCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214460240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214460288(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C90CDD0, type metadata accessor for GSMARCSApplicationCharacteristic);
  result = sub_214460240(&qword_27C90CDB0, type metadata accessor for GSMARCSApplicationCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21446030C(uint64_t a1)
{
  *(a1 + 8) = sub_214460240(&qword_27C909870, type metadata accessor for ApplicationCharacteristic);
  result = sub_214460240(&qword_27C9098D0, type metadata accessor for ApplicationCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144603C8()
{
  result = type metadata accessor for IMS3GPPCharacteristic();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21446045C()
{
  sub_21403BEC8(319, &qword_27C913DE8);
  if (v0 <= 0x3F)
  {
    sub_214460528();
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C913DF8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214460528()
{
  if (!qword_27C913DF0)
  {
    type metadata accessor for MessagingCharacteristic(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C913DF0);
    }
  }
}

uint64_t sub_214460580()
{
  result = type metadata accessor for IMS3GPPApplicationCharacteristic(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GSMARCSApplicationCharacteristic(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2144605F4()
{
  result = qword_27C913E10;
  if (!qword_27C913E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E10);
  }

  return result;
}

uint64_t MBDChipAction.dictionaryRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v170 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v170 - v10;
  v12 = type metadata accessor for MBDChipAction();
  sub_213FB2E54(v0 + *(v12 + 24), v11, &qword_27C906180, &qword_2146F4250);
  v13 = type metadata accessor for MBDActionContent();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2146E6910;
    *(v14 + 32) = 0x6974736567677573;
    *(v14 + 40) = 0xEA00000000006E6FLL;
    v15 = v0[1];
    *&v193[0] = *v0;
    *(&v193[0] + 1) = v15;
    v16 = *(v0 + 2);
    v193[1] = *(v0 + 1);
    v193[2] = v16;
    v17 = sub_2143E26FC();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v14 + 48) = v17;
    *(v14 + 72) = v18;
    *(v14 + 80) = 1701869940;
    *(v14 + 120) = MEMORY[0x277D83B88];
    *(v14 + 88) = 0xE400000000000000;
    *(v14 + 96) = -1;
    v19 = sub_214045690(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
LABEL_3:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v20 = sub_2140418B8(v19);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v77 = *v11;
        v78 = *(v11 + 1);
        v79 = *(v11 + 2);
        v80 = *(v11 + 3);
        v81 = v11[32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2146E68D0;
        *(v82 + 32) = 0x6974736567677573;
        *(v82 + 40) = 0xEA00000000006E6FLL;
        v83 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v83;
        v84 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v84;
        v85 = sub_2143E26FC();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v82 + 48) = v85;
        *(v82 + 72) = v86;
        *(v82 + 80) = 1701869940;
        v87 = MEMORY[0x277D83B88];
        *(v82 + 88) = 0xE400000000000000;
        *(v82 + 96) = 1;
        *(v82 + 120) = v87;
        *(v82 + 128) = 0x6E6F69746361;
        *(v82 + 136) = 0xE600000000000000;
        v171 = v78;
        if (!v77)
        {
          goto LABEL_34;
        }

        v88 = v86;
        v170 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_2146EA710;
        *(v89 + 32) = 7107189;
        v90 = v89 + 32;
        v91 = 0xE300000000000000;
        goto LABEL_24;
      case 2u:
        v92 = *(v11 + 3);
        v193[2] = *(v11 + 2);
        v193[3] = v92;
        *(&v193[3] + 9) = *(v11 + 57);
        v93 = *(v11 + 1);
        v193[0] = *v11;
        v193[1] = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_2146E68D0;
        *(v94 + 32) = 0x6974736567677573;
        *(v94 + 40) = 0xEA00000000006E6FLL;
        v95 = v0[1];
        *&v172 = *v0;
        *(&v172 + 1) = v95;
        v96 = *(v0 + 2);
        v173 = *(v0 + 1);
        v174 = v96;
        v97 = sub_2143E26FC();
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v94 + 48) = v97;
        *(v94 + 72) = v98;
        *(v94 + 80) = 1701869940;
        v99 = MEMORY[0x277D83B88];
        *(v94 + 88) = 0xE400000000000000;
        *(v94 + 96) = 2;
        *(v94 + 120) = v99;
        *(v94 + 128) = 0x6E6F69746361;
        *(v94 + 136) = 0xE600000000000000;
        if (*&v193[0])
        {
          v100 = v98;
          *&v188[0] = *&v193[0];
          *(&v188[1] + 8) = *(&v193[1] + 8);
          *(&v188[2] + 8) = *(&v193[2] + 8);
          *(&v188[3] + 8) = *(&v193[3] + 8);
          BYTE8(v188[4]) = BYTE8(v193[4]);
          *(v188 + 8) = *(v193 + 8);
          v101 = sub_2143A5734();
        }

        else
        {
          v101 = 0;
          v100 = 0;
          *(v94 + 152) = 0;
          *(v94 + 160) = 0;
        }

        *(v94 + 144) = v101;
        *(v94 + 168) = v100;
        v166 = sub_214045690(v94);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v166);

        v159 = &unk_27C90C6E8;
        v160 = &unk_2146F6D88;
        goto LABEL_57;
      case 3u:
        v41 = *v11;
        v171 = *(v11 + 1);
        v42 = *(v11 + 2);
        v43 = *(v11 + 3);
        v44 = v11[32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_2146E68D0;
        *(v45 + 32) = 0x6974736567677573;
        *(v45 + 40) = 0xEA00000000006E6FLL;
        v46 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v46;
        v47 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v47;
        v48 = sub_2143E26FC();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v45 + 48) = v48;
        *(v45 + 72) = v49;
        *(v45 + 80) = 1701869940;
        v50 = MEMORY[0x277D83B88];
        *(v45 + 88) = 0xE400000000000000;
        *(v45 + 96) = 3;
        *(v45 + 120) = v50;
        *(v45 + 128) = 0x6E6F69746361;
        *(v45 + 136) = 0xE600000000000000;
        if (v41)
        {
          v51 = v49;
          v170 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_2146EA710;
          *(v52 + 32) = 0x6D754E656E6F6870;
          v53 = v52 + 32;
          *(v52 + 40) = 0xEB00000000726562;
          if (!v43)
          {
            goto LABEL_60;
          }

          *(v52 + 72) = MEMORY[0x277D837D0];
          *(v52 + 48) = v42;
          *(v52 + 56) = v43;
          v54 = v52;

          v55 = sub_2140457C0(v54);
          swift_setDeallocating();
          sub_213FB2DF4(v53, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
          *(v45 + 168) = v51;
          *(v45 + 144) = v55;
          v41 = v170;
        }

        else
        {
          *(v45 + 144) = 0u;
          *(v45 + 160) = 0u;
        }

        v164 = sub_214045690(v45);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v164);

        v157 = v41;
        goto LABEL_48;
      case 4u:
        v77 = *v11;
        v110 = *(v11 + 1);
        v79 = *(v11 + 2);
        v80 = *(v11 + 3);
        v111 = v11[32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2146E68D0;
        *(v82 + 32) = 0x6974736567677573;
        *(v82 + 40) = 0xEA00000000006E6FLL;
        v112 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v112;
        v113 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v113;
        v114 = sub_2143E26FC();
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v82 + 48) = v114;
        *(v82 + 72) = v115;
        *(v82 + 80) = 1701869940;
        v116 = MEMORY[0x277D83B88];
        *(v82 + 88) = 0xE400000000000000;
        *(v82 + 96) = 4;
        *(v82 + 120) = v116;
        *(v82 + 128) = 0x6E6F69746361;
        *(v82 + 136) = 0xE600000000000000;
        v171 = v110;
        if (v77)
        {
          v88 = v115;
          v170 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_2146EA710;
          *(v89 + 32) = 0x6D754E656E6F6870;
          v90 = v89 + 32;
          v91 = 0xEB00000000726562;
LABEL_24:
          *(v89 + 40) = v91;
          if (!v80)
          {
LABEL_60:
            result = sub_2146DA018();
            __break(1u);
            return result;
          }

          *(v89 + 72) = MEMORY[0x277D837D0];
          *(v89 + 48) = v79;
          *(v89 + 56) = v80;
          v117 = v89;

          v118 = sub_2140457C0(v117);
          swift_setDeallocating();
          sub_213FB2DF4(v90, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
          *(v82 + 168) = v88;
          *(v82 + 144) = v118;
          v77 = v170;
        }

        else
        {
LABEL_34:
          *(v82 + 144) = 0u;
          *(v82 + 160) = 0u;
        }

        v156 = sub_214045690(v82);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v156);

        v157 = v77;
LABEL_48:
        sub_21431E10C(v157);
        break;
      case 5u:
        v125 = *(v11 + 9);
        v189 = *(v11 + 8);
        v190 = v125;
        v191 = *(v11 + 10);
        v192 = v11[176];
        v126 = *(v11 + 5);
        v188[4] = *(v11 + 4);
        v188[5] = v126;
        v127 = *(v11 + 7);
        v188[6] = *(v11 + 6);
        v188[7] = v127;
        v128 = *(v11 + 1);
        v188[0] = *v11;
        v188[1] = v128;
        v129 = *(v11 + 3);
        v188[2] = *(v11 + 2);
        v188[3] = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_2146E68D0;
        *(v130 + 32) = 0x6974736567677573;
        *(v130 + 40) = 0xEA00000000006E6FLL;
        v131 = v0[1];
        v184 = *v0;
        v185 = v131;
        v132 = *(v0 + 2);
        v186 = *(v0 + 1);
        v187 = v132;
        v133 = sub_2143E26FC();
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v130 + 48) = v133;
        *(v130 + 72) = v134;
        *(v130 + 80) = 1701869940;
        v135 = MEMORY[0x277D83B88];
        *(v130 + 88) = 0xE400000000000000;
        *(v130 + 96) = 5;
        *(v130 + 120) = v135;
        *(v130 + 128) = 0x6E6F69746361;
        *(v130 + 136) = 0xE600000000000000;
        v194 = v189;
        v195 = v190;
        v196 = v191;
        v197 = v192;
        v193[4] = v188[4];
        v193[5] = v188[5];
        v193[6] = v188[6];
        v193[7] = v188[7];
        v193[0] = v188[0];
        v193[1] = v188[1];
        v193[2] = v188[2];
        v193[3] = v188[3];
        if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v193) == 1)
        {
          v136 = 0;
          v134 = 0;
          *(v130 + 152) = 0;
          *(v130 + 160) = 0;
        }

        else
        {
          v180 = v194;
          v181 = v195;
          v182 = v196;
          v183 = v197;
          v176 = v193[4];
          v177 = v193[5];
          v178 = v193[6];
          v179 = v193[7];
          v172 = v193[0];
          v173 = v193[1];
          v174 = v193[2];
          v175 = v193[3];
          v136 = sub_2143BE6A8();
        }

        *(v130 + 144) = v136;
        *(v130 + 168) = v134;
        v158 = sub_214045690(v130);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v158);

        v159 = &unk_27C90C6A0;
        v160 = &unk_2146F6D70;
        v161 = v188;
        goto LABEL_58;
      case 6u:
        v102 = *v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_2146E68D0;
        *(v57 + 32) = 0x6974736567677573;
        *(v57 + 40) = 0xEA00000000006E6FLL;
        v103 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v103;
        v104 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v104;
        v105 = sub_2143E26FC();
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v57 + 48) = v105;
        *(v57 + 72) = v106;
        *(v57 + 80) = 1701869940;
        v107 = MEMORY[0x277D83B88];
        *(v57 + 88) = 0xE400000000000000;
        *(v57 + 96) = 6;
        *(v57 + 120) = v107;
        *(v57 + 128) = 0x6E6F69746361;
        *(v57 + 136) = 0xE600000000000000;
        if (v102 == 2)
        {
          goto LABEL_27;
        }

        v63 = v106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_2146EA710;
        *(v108 + 32) = 0x68737550646E6573;
        v65 = v108 + 32;
        *(v108 + 40) = 0xE800000000000000;
        v109 = sub_2146D9988();
        *(v108 + 72) = sub_21403EBDC();
        *(v108 + 48) = v109;
        v64 = v108;
        goto LABEL_38;
      case 7u:
        sub_214463DEC(v11, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_2146E68D0;
        *(v148 + 32) = 0x6974736567677573;
        *(v148 + 40) = 0xEA00000000006E6FLL;
        v149 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v149;
        v150 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v150;
        v151 = sub_2143E26FC();
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v148 + 48) = v151;
        *(v148 + 72) = v152;
        *(v148 + 80) = 1701869940;
        v153 = MEMORY[0x277D83B88];
        *(v148 + 88) = 0xE400000000000000;
        *(v148 + 96) = 7;
        *(v148 + 120) = v153;
        *(v148 + 128) = 0x6E6F69746361;
        *(v148 + 136) = 0xE600000000000000;
        sub_213FB2E54(v7, v5, &qword_27C90C5E0, &qword_2146F6D30);
        v154 = type metadata accessor for MBDActionCalendar();
        if ((*(*(v154 - 8) + 48))(v5, 1, v154) == 1)
        {
          sub_213FB2DF4(v5, &qword_27C90C5E0, &qword_2146F6D30);
          v155 = 0;
          v152 = 0;
          *(v148 + 152) = 0;
          *(v148 + 160) = 0;
        }

        else
        {
          v155 = sub_2144455C0();
          sub_214463F14(v5, type metadata accessor for MBDActionCalendar);
        }

        *(v148 + 144) = v155;
        *(v148 + 168) = v152;
        v162 = sub_214045690(v148);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v162);

        v159 = &qword_27C90C5E0;
        v160 = &qword_2146F6D30;
        v161 = v7;
        goto LABEL_58;
      case 8u:
        v67 = *(v11 + 3);
        v193[2] = *(v11 + 2);
        v193[3] = v67;
        *(&v193[3] + 9) = *(v11 + 57);
        v68 = *(v11 + 1);
        v193[0] = *v11;
        v193[1] = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_2146E68D0;
        *(v69 + 32) = 0x6974736567677573;
        *(v69 + 40) = 0xEA00000000006E6FLL;
        v70 = v0[1];
        *&v172 = *v0;
        *(&v172 + 1) = v70;
        v71 = *(v0 + 2);
        v173 = *(v0 + 1);
        v174 = v71;
        v72 = sub_2143E26FC();
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v69 + 48) = v72;
        *(v69 + 72) = v73;
        *(v69 + 80) = 1701869940;
        v74 = MEMORY[0x277D83B88];
        *(v69 + 88) = 0xE400000000000000;
        *(v69 + 96) = 8;
        *(v69 + 120) = v74;
        *(v69 + 128) = 0x6E6F69746361;
        *(v69 + 136) = 0xE600000000000000;
        if (*&v193[0])
        {
          v75 = v73;
          *&v188[0] = *&v193[0];
          *(&v188[1] + 8) = *(&v193[1] + 8);
          *(&v188[2] + 8) = *(&v193[2] + 8);
          *(&v188[3] + 8) = *(&v193[3] + 8);
          BYTE8(v188[4]) = BYTE8(v193[4]);
          *(v188 + 8) = *(v193 + 8);
          v76 = sub_2144D8EF4();
        }

        else
        {
          v76 = 0;
          v75 = 0;
          *(v69 + 152) = 0;
          *(v69 + 160) = 0;
        }

        *(v69 + 144) = v76;
        *(v69 + 168) = v75;
        v165 = sub_214045690(v69);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v165);

        v159 = &unk_27C90C660;
        v160 = &unk_2146F6D60;
        goto LABEL_57;
      case 9u:
        v137 = *(v11 + 5);
        v193[4] = *(v11 + 4);
        v193[5] = v137;
        v193[6] = *(v11 + 6);
        LOBYTE(v193[7]) = v11[112];
        v138 = *(v11 + 1);
        v193[0] = *v11;
        v193[1] = v138;
        v139 = *(v11 + 3);
        v193[2] = *(v11 + 2);
        v193[3] = v139;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_2146E68D0;
        *(v140 + 32) = 0x6974736567677573;
        *(v140 + 40) = 0xEA00000000006E6FLL;
        v141 = v0[1];
        *&v172 = *v0;
        *(&v172 + 1) = v141;
        v142 = *(v0 + 2);
        v173 = *(v0 + 1);
        v174 = v142;
        v143 = sub_2143E26FC();
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v140 + 48) = v143;
        *(v140 + 72) = v144;
        *(v140 + 80) = 1701869940;
        v145 = MEMORY[0x277D83B88];
        *(v140 + 88) = 0xE400000000000000;
        *(v140 + 96) = 9;
        *(v140 + 120) = v145;
        *(v140 + 128) = 0x6E6F69746361;
        *(v140 + 136) = 0xE600000000000000;
        if (*&v193[0])
        {
          v146 = v144;
          *&v188[0] = *&v193[0];
          *(&v188[3] + 8) = *(&v193[3] + 8);
          *(&v188[4] + 8) = *(&v193[4] + 8);
          *(&v188[5] + 8) = *(&v193[5] + 8);
          *(&v188[6] + 1) = *(&v193[6] + 1);
          *(v188 + 8) = *(v193 + 8);
          *(&v188[1] + 8) = *(&v193[1] + 8);
          *(&v188[2] + 8) = *(&v193[2] + 8);
          v147 = sub_214419CDC();
        }

        else
        {
          v147 = 0;
          v146 = 0;
          *(v140 + 152) = 0;
          *(v140 + 160) = 0;
        }

        *(v140 + 144) = v147;
        *(v140 + 168) = v146;
        v168 = sub_214045690(v140);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v168);

        v159 = &unk_27C90C648;
        v160 = &unk_214747AA0;
        goto LABEL_57;
      case 0xAu:
        v31 = *(v11 + 3);
        v193[2] = *(v11 + 2);
        v193[3] = v31;
        *(&v193[3] + 9) = *(v11 + 57);
        v32 = *(v11 + 1);
        v193[0] = *v11;
        v193[1] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_2146E68D0;
        *(v33 + 32) = 0x6974736567677573;
        *(v33 + 40) = 0xEA00000000006E6FLL;
        v34 = v0[1];
        *&v172 = *v0;
        *(&v172 + 1) = v34;
        v35 = *(v0 + 2);
        v173 = *(v0 + 1);
        v174 = v35;
        v36 = sub_2143E26FC();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v33 + 48) = v36;
        *(v33 + 72) = v37;
        *(v33 + 80) = 1701869940;
        v38 = MEMORY[0x277D83B88];
        *(v33 + 88) = 0xE400000000000000;
        *(v33 + 96) = 10;
        *(v33 + 120) = v38;
        *(v33 + 128) = 0x6E6F69746361;
        *(v33 + 136) = 0xE600000000000000;
        if (*&v193[0])
        {
          v39 = v37;
          *&v188[0] = *&v193[0];
          *(&v188[1] + 8) = *(&v193[1] + 8);
          *(&v188[2] + 8) = *(&v193[2] + 8);
          *(&v188[3] + 8) = *(&v193[3] + 8);
          BYTE8(v188[4]) = BYTE8(v193[4]);
          *(v188 + 8) = *(v193 + 8);
          v40 = sub_214699178();
        }

        else
        {
          v40 = 0;
          v39 = 0;
          *(v33 + 152) = 0;
          *(v33 + 160) = 0;
        }

        *(v33 + 144) = v40;
        *(v33 + 168) = v39;
        v163 = sub_214045690(v33);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v163);

        v159 = &unk_27C90C630;
        v160 = &unk_2146F6D50;
        goto LABEL_57;
      case 0xBu:
        v56 = *v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_2146E68D0;
        *(v57 + 32) = 0x6974736567677573;
        *(v57 + 40) = 0xEA00000000006E6FLL;
        v58 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v58;
        v59 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v59;
        v60 = sub_2143E26FC();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v57 + 48) = v60;
        *(v57 + 72) = v61;
        *(v57 + 80) = 1701869940;
        v62 = MEMORY[0x277D83B88];
        *(v57 + 88) = 0xE400000000000000;
        *(v57 + 96) = 11;
        *(v57 + 120) = v62;
        *(v57 + 128) = 0x6E6F69746361;
        *(v57 + 136) = 0xE600000000000000;
        if (v56 == 2)
        {
          goto LABEL_27;
        }

        v63 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v64 = swift_allocObject();
        *(v64 + 32) = 1701869940;
        v65 = v64 + 32;
        *(v64 + 16) = xmmword_2146EA710;
        v66 = (v56 & 1) - 1;
        goto LABEL_37;
      case 0xCu:
        v119 = *v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_2146E68D0;
        *(v57 + 32) = 0x6974736567677573;
        *(v57 + 40) = 0xEA00000000006E6FLL;
        v120 = v0[1];
        *&v193[0] = *v0;
        *(&v193[0] + 1) = v120;
        v121 = *(v0 + 2);
        v193[1] = *(v0 + 1);
        v193[2] = v121;
        v122 = sub_2143E26FC();
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v57 + 48) = v122;
        *(v57 + 72) = v123;
        *(v57 + 80) = 1701869940;
        v62 = MEMORY[0x277D83B88];
        *(v57 + 88) = 0xE400000000000000;
        *(v57 + 96) = 12;
        *(v57 + 120) = v62;
        *(v57 + 128) = 0x6E6F69746361;
        *(v57 + 136) = 0xE600000000000000;
        if (v119 == 3)
        {
LABEL_27:
          v124 = 0;
          v63 = 0;
          *(v57 + 152) = 0;
          *(v57 + 160) = 0;
        }

        else
        {
          v63 = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_2146EA710;
          *(v64 + 32) = 1701869940;
          v65 = v64 + 32;
          v66 = v119 - 1;
LABEL_37:
          *(v64 + 72) = v62;
          *(v64 + 40) = 0xE400000000000000;
          *(v64 + 48) = v66;
LABEL_38:
          v124 = sub_2140457C0(v64);
          swift_setDeallocating();
          sub_213FB2DF4(v65, &qword_27C903FE0, &unk_2146EA760);
          swift_deallocClassInstance();
        }

        *(v57 + 144) = v124;
        *(v57 + 168) = v63;
        v19 = sub_214045690(v57);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        goto LABEL_3;
      case 0xDu:
        goto LABEL_2;
      default:
        v21 = *(v11 + 3);
        v193[2] = *(v11 + 2);
        v193[3] = v21;
        v193[4] = *(v11 + 4);
        LOBYTE(v193[5]) = v11[80];
        v22 = *(v11 + 1);
        v193[0] = *v11;
        v193[1] = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_2146E68D0;
        *(v23 + 32) = 0x6974736567677573;
        *(v23 + 40) = 0xEA00000000006E6FLL;
        v24 = v0[1];
        *&v172 = *v0;
        *(&v172 + 1) = v24;
        v25 = *(v0 + 2);
        v173 = *(v0 + 1);
        v174 = v25;
        v26 = sub_2143E26FC();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v23 + 48) = v26;
        *(v23 + 72) = v27;
        *(v23 + 80) = 1701869940;
        v28 = MEMORY[0x277D83B88];
        *(v23 + 88) = 0xE400000000000000;
        *(v23 + 96) = 0;
        *(v23 + 120) = v28;
        *(v23 + 128) = 0x6E6F69746361;
        *(v23 + 136) = 0xE600000000000000;
        if (*(&v193[0] + 1))
        {
          v29 = v27;
          v188[0] = v193[0];
          v188[3] = v193[3];
          v188[4] = v193[4];
          LOBYTE(v188[5]) = v193[5];
          v188[1] = v193[1];
          v188[2] = v193[2];
          v30 = sub_214698A70();
        }

        else
        {
          v30 = 0;
          v29 = 0;
          *(v23 + 152) = 0;
          *(v23 + 160) = 0;
        }

        *(v23 + 144) = v30;
        *(v23 + 168) = v29;
        v167 = sub_214045690(v23);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v20 = sub_2140418B8(v167);

        v159 = &unk_27C90C718;
        v160 = &unk_214747AB0;
LABEL_57:
        v161 = v193;
LABEL_58:
        sub_213FB2DF4(v161, v159, v160);
        return v20;
    }
  }

  return v20;
}

uint64_t sub_214461F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  if (v2 != 1)
  {
    v4 = 0x6E6F69746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974736567677573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (*a2 != 1)
  {
    v8 = 0x6E6F69746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974736567677573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006E6FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214462004()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144620A0()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214462128()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144621C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214464630();
  *a2 = result;
  return result;
}

void sub_2144621F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974736567677573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214462248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214464630();
  *a1 = result;
  return result;
}

uint64_t sub_214462270(uint64_t a1)
{
  v2 = sub_214463E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144622AC(uint64_t a1)
{
  v2 = sub_214463E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v74 - v5;
  v7 = type metadata accessor for MBDActionContent();
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913E18, &qword_214747AB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v74 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214463E5C();
  v18 = v86;
  sub_2146DAA08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v81 = v6;
  v19 = v84;
  v82 = v7;
  v20 = v85;
  v86 = v12;
  v83 = v10;
  v99 = 0;
  sub_2142EA230();
  sub_2146DA1C8();
  v21 = v15;
  v23 = *(&v88 + 1);
  v79 = v88;
  v24 = *(&v89 + 1);
  v80 = v89;
  v25 = v21;
  v26 = v90;
  v99 = 1;
  sub_2142EA284();
  sub_2146DA1C8();
  v78 = v24;
  v75 = v11;
  v76 = v23;
  v77 = *(&v26 + 1);
  v27 = v88;
  swift_storeEnumTagMultiPayload();
  v74 = v27;
  v28 = v20;
  switch(v27)
  {
    case 1:
      v99 = 2;
      sub_21431EDD4();
      v52 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v52);
      v53 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v53;
      *(v31 + 64) = *&v91[16];
      *(v31 + 80) = v92;
      v54 = v89;
      *v31 = v88;
      *(v31 + 16) = v54;
      v33 = v82;
      goto LABEL_19;
    case 2:
      v99 = 2;
      sub_21431ECFC();
      v45 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v45);
      v46 = v90;
      v47 = v89;
      *v31 = v88;
      *(v31 + 16) = v47;
      *(v31 + 32) = v46;
      v33 = v82;
      goto LABEL_19;
    case 3:
      v99 = 2;
      sub_21431EC24();
      v48 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v48);
      v49 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v49;
      *(v31 + 57) = *&v91[9];
      v50 = v89;
      *v31 = v88;
      *(v31 + 16) = v50;
      v33 = v82;
      goto LABEL_19;
    case 4:
      v99 = 2;
      sub_21431EB4C();
      v38 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v38);
      v39 = v90;
      v40 = v89;
      *v31 = v88;
      *(v31 + 16) = v40;
      *(v31 + 32) = v39;
      v33 = v82;
      goto LABEL_19;
    case 5:
      v99 = 2;
      sub_21431EA74();
      v55 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v55);
      v56 = v90;
      v57 = v89;
      *v31 = v88;
      *(v31 + 16) = v57;
      *(v31 + 32) = v56;
      v33 = v82;
      goto LABEL_19;
    case 6:
      v99 = 2;
      sub_214464070();
      v59 = v75;
      sub_2146DA0C8();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v59);
      v60 = v96;
      *(v31 + 128) = v95;
      *(v31 + 144) = v60;
      *(v31 + 160) = v97;
      *(v31 + 176) = v98;
      v61 = v92;
      *(v31 + 64) = *&v91[16];
      *(v31 + 80) = v61;
      v62 = v94;
      *(v31 + 96) = v93;
      *(v31 + 112) = v62;
      v63 = v89;
      *v31 = v88;
      *(v31 + 16) = v63;
      v64 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v64;
      v33 = v82;
      goto LABEL_19;
    case 7:
      v99 = 2;
      sub_21431E8C4();
      v51 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v51);
      *v31 = v88;
      v33 = v82;
      goto LABEL_19;
    case 8:
      v29 = v19;
      type metadata accessor for MBDActionCalendar();
      LOBYTE(v88) = 2;
      sub_2144643EC(&qword_27C913E40);
      v69 = v75;
      sub_2146DA0C8();
      v34 = v80;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v69);
      sub_214463DEC(v81, v31);
      v33 = v82;
      goto LABEL_19;
    case 9:
      v99 = 2;
      sub_21446401C();
      v42 = v75;
      sub_2146DA0C8();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v42);
      v43 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v43;
      *(v31 + 57) = *&v91[9];
      v44 = v89;
      *v31 = v88;
      *(v31 + 16) = v44;
      v33 = v82;
      goto LABEL_19;
    case 10:
      v99 = 2;
      sub_214463FC8();
      v65 = v75;
      sub_2146DA0C8();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v65);
      v66 = v92;
      *(v31 + 64) = *&v91[16];
      *(v31 + 80) = v66;
      *(v31 + 96) = v93;
      *(v31 + 112) = v94;
      v67 = v89;
      *v31 = v88;
      *(v31 + 16) = v67;
      v68 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v68;
      v33 = v82;
      goto LABEL_19;
    case 11:
      v99 = 2;
      sub_214463F74();
      v35 = v75;
      sub_2146DA0C8();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v35);
      v36 = *v91;
      *(v31 + 32) = v90;
      *(v31 + 48) = v36;
      *(v31 + 57) = *&v91[9];
      v37 = v89;
      *v31 = v88;
      *(v31 + 16) = v37;
      v33 = v82;
      goto LABEL_19;
    case 12:
      v99 = 2;
      sub_21431E4B0();
      v41 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v41);
      *v31 = v88;
      v33 = v82;
      goto LABEL_19;
    case 13:
      v99 = 2;
      sub_21431E3D8();
      v58 = v75;
      sub_2146DA148();
      v34 = v80;
      v29 = v19;
      v30 = v26;
      v31 = v83;
      sub_214463F14(v83, type metadata accessor for MBDActionContent);
      (*(v86 + 8))(v25, v58);
      *v31 = v88;
      v33 = v82;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v32 = v87;
      break;
    default:
      v29 = v19;
      v30 = v26;
      (*(v86 + 8))(v25, v75);
      v31 = v83;
      v32 = v87;
      v33 = v82;
      v34 = v80;
      break;
  }

  v70 = *(type metadata accessor for MBDChipAction() + 24);
  sub_214463EB0(v31, v28 + v70);
  (*(v29 + 56))(v28 + v70, 0, 1, v33);
  v71 = v76;
  *v28 = v79;
  *(v28 + 8) = v71;
  v72 = v78;
  *(v28 + 16) = v34;
  *(v28 + 24) = v72;
  v73 = v77;
  *(v28 + 32) = v30;
  *(v28 + 40) = v73;
  *(v28 + 48) = v74;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t MBDChipAction.encode(to:configuration:)(void *a1)
{
  v2 = v1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913E50, &unk_214747AC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214463E5C();
  sub_2146DAA28();
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = *(v2 + 40);
  *&v92 = *v2;
  *(&v92 + 1) = v18;
  *(v93 + 8) = *(v2 + 24);
  *&v93[0] = v19;
  *(&v93[1] + 1) = v20;
  LOBYTE(v81) = 0;
  sub_2142EA38C();

  v21 = v103;
  sub_2146DA388();
  if (v21)
  {

    return (*(v13 + 8))(v16, v12);
  }

  else
  {

    LOBYTE(v92) = *(v2 + 48);
    LOBYTE(v81) = 1;
    sub_2142EA3E0();
    sub_2146DA388();
    v23 = type metadata accessor for MBDChipAction();
    v24 = v11;
    sub_213FB2E54(v2 + *(v23 + 24), v11, &qword_27C906180, &qword_2146F4250);
    v25 = type metadata accessor for MBDActionContent();
    if ((*(*(v25 - 8) + 48))(v11, 1, v25) != 1)
    {
      v26 = v80;
      sub_213FB2E54(v11, v80, &qword_27C906180, &qword_2146F4250);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v55 = v26;
          v56 = *v26;
          v57 = *(v55 + 8);
          v103 = *(v55 + 16);
          v79 = *(v55 + 24);
          LODWORD(v80) = *(v55 + 32);
          *&v92 = v56;
          *(&v92 + 1) = v57;
          *&v93[0] = v103;
          *(&v93[0] + 1) = v79;
          LOBYTE(v93[1]) = v80;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C700, &unk_2146F6D90);
          sub_21431E150();
          sub_2146DA388();
          (*(v13 + 8))(v16, v12);
          sub_21431E10C(v56);
          goto LABEL_7;
        case 2u:
          v45 = *(v26 + 16);
          v46 = *(v26 + 48);
          v93[1] = *(v26 + 32);
          v94[0] = v46;
          *(v94 + 9) = *(v26 + 57);
          v47 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v47;
          v48 = *(v26 + 48);
          v83 = v93[1];
          v84[0] = v48;
          *(v84 + 9) = *(v26 + 57);
          v81 = v92;
          v82 = v45;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6E8, &qword_2146F6D88);
          sub_21431E034();
          sub_2146DA388();
          (*(v13 + 8))(v16, v12);
          v43 = &qword_27C90C6E8;
          v44 = &qword_2146F6D88;
          goto LABEL_23;
        case 3u:
          v49 = v26;
          v32 = *v26;
          v50 = *(v49 + 8);
          v51 = *(v49 + 16);
          v52 = *(v49 + 24);
          LODWORD(v49) = *(v49 + 32);
          *&v92 = v32;
          *(&v92 + 1) = v50;
          v103 = v50;
          v79 = v52;
          v80 = v51;
          *&v93[0] = v51;
          *(&v93[0] + 1) = v52;
          LODWORD(v78) = v49;
          LOBYTE(v93[1]) = v49;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6D0, &qword_2146F6D80);
          sub_21431DF5C();
          goto LABEL_14;
        case 4u:
          v31 = v26;
          v32 = *v26;
          v33 = *(v31 + 8);
          v34 = *(v31 + 16);
          v35 = *(v31 + 24);
          LODWORD(v31) = *(v31 + 32);
          *&v92 = v32;
          *(&v92 + 1) = v33;
          v103 = v33;
          v79 = v35;
          v80 = v34;
          *&v93[0] = v34;
          *(&v93[0] + 1) = v35;
          LODWORD(v78) = v31;
          LOBYTE(v93[1]) = v31;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6B8, &qword_214747AE0);
          sub_21431DE84();
LABEL_14:
          sub_2146DA388();
          (*(v13 + 8))(v16, v12);
          sub_21431E10C(v32);
          return sub_213FB2DF4(v24, &qword_27C906180, &qword_2146F4250);
        case 5u:
          v58 = *(v26 + 144);
          v59 = *(v26 + 112);
          v98 = *(v26 + 128);
          v99 = v58;
          v60 = *(v26 + 144);
          v100 = *(v26 + 160);
          v61 = *(v26 + 80);
          v62 = *(v26 + 48);
          v94[1] = *(v26 + 64);
          v95 = v61;
          v63 = *(v26 + 80);
          v64 = *(v26 + 112);
          v96 = *(v26 + 96);
          v97 = v64;
          v65 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v65;
          v66 = *(v26 + 48);
          v68 = *v26;
          v67 = *(v26 + 16);
          v93[1] = *(v26 + 32);
          v94[0] = v66;
          v88 = v98;
          v89 = v60;
          v90 = *(v26 + 160);
          v84[1] = v94[1];
          v85 = v63;
          v86 = v96;
          v87 = v59;
          v81 = v68;
          v82 = v67;
          v101 = *(v26 + 176);
          v91 = *(v26 + 176);
          v83 = v93[1];
          v84[0] = v62;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C6A0, &unk_2146F6D70);
          sub_214464430();
          sub_2146DA2A8();
          (*(v13 + 8))(v16, v12);
          v43 = &qword_27C90C6A0;
          v44 = &unk_2146F6D70;
          goto LABEL_23;
        case 6u:
          LOBYTE(v92) = *v26;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C688, &qword_2146F6D68);
          sub_21431DCD4();
          goto LABEL_20;
        case 7u:
          v53 = v26;
          v54 = v78;
          sub_214463DEC(v53, v78);
          LOBYTE(v92) = 2;
          sub_21446434C();
          sub_2146DA2A8();
          sub_213FB2DF4(v54, &qword_27C90C5E0, &qword_2146F6D30);
          break;
        case 8u:
          v73 = *(v26 + 16);
          v74 = *(v26 + 48);
          v93[1] = *(v26 + 32);
          v94[0] = v74;
          *(v94 + 9) = *(v26 + 57);
          v75 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v75;
          v76 = *(v26 + 48);
          v83 = v93[1];
          v84[0] = v76;
          *(v84 + 9) = *(v26 + 57);
          v81 = v92;
          v82 = v73;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C660, &qword_2146F6D60);
          sub_214464274();
          sub_2146DA2A8();
          (*(v13 + 8))(v16, v12);
          v43 = &qword_27C90C660;
          v44 = &qword_2146F6D60;
          goto LABEL_23;
        case 9u:
          v36 = *(v26 + 80);
          v37 = *(v26 + 48);
          v94[1] = *(v26 + 64);
          v95 = v36;
          v38 = *(v26 + 80);
          v96 = *(v26 + 96);
          v39 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v39;
          v40 = *(v26 + 48);
          v42 = *v26;
          v41 = *(v26 + 16);
          v93[1] = *(v26 + 32);
          v94[0] = v40;
          v84[1] = v94[1];
          v85 = v38;
          v86 = *(v26 + 96);
          v81 = v42;
          v82 = v41;
          LOBYTE(v97) = *(v26 + 112);
          LOBYTE(v87) = *(v26 + 112);
          v83 = v93[1];
          v84[0] = v37;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C648, &unk_214747AA0);
          sub_21446419C();
          sub_2146DA2A8();
          (*(v13 + 8))(v16, v12);
          v43 = &qword_27C90C648;
          v44 = &unk_214747AA0;
          goto LABEL_23;
        case 0xAu:
          v69 = *(v26 + 16);
          v70 = *(v26 + 48);
          v93[1] = *(v26 + 32);
          v94[0] = v70;
          *(v94 + 9) = *(v26 + 57);
          v71 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v71;
          v72 = *(v26 + 48);
          v83 = v93[1];
          v84[0] = v72;
          *(v84 + 9) = *(v26 + 57);
          v81 = v92;
          v82 = v69;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C630, &unk_2146F6D50);
          sub_2144640C4();
          sub_2146DA2A8();
          (*(v13 + 8))(v16, v12);
          v43 = &qword_27C90C630;
          v44 = &unk_2146F6D50;
LABEL_23:
          sub_213FB2DF4(&v92, v43, v44);
          return sub_213FB2DF4(v24, &qword_27C906180, &qword_2146F4250);
        case 0xBu:
          LOBYTE(v92) = *v26;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C618, &unk_214747AD0);
          sub_21431D8C0();
          goto LABEL_20;
        case 0xCu:
          LOBYTE(v92) = *v26;
          LOBYTE(v81) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C600, &unk_2146F6D40);
          sub_21431D7E8();
LABEL_20:
          sub_2146DA388();
          break;
        case 0xDu:
          (*(v13 + 8))(v16, v12);
          sub_214463F14(v26, type metadata accessor for MBDActionContent);
          return sub_213FB2DF4(v24, &qword_27C906180, &qword_2146F4250);
        default:
          v27 = *(v26 + 48);
          v28 = *(v26 + 16);
          v93[1] = *(v26 + 32);
          v94[0] = v27;
          v29 = *(v26 + 48);
          v94[1] = *(v26 + 64);
          v30 = *(v26 + 16);
          v92 = *v26;
          v93[0] = v30;
          v83 = v93[1];
          v84[0] = v29;
          v84[1] = *(v26 + 64);
          LOBYTE(v95) = *(v26 + 80);
          LOBYTE(v85) = *(v26 + 80);
          v81 = v92;
          v82 = v28;
          v102 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C718, &qword_214747AB0);
          sub_21431E228();
          sub_2146DA388();
          (*(v13 + 8))(v16, v12);
          sub_213FB2DF4(&v92, &qword_27C90C718, &qword_214747AB0);
LABEL_7:
          v24 = v11;
          return sub_213FB2DF4(v24, &qword_27C906180, &qword_2146F4250);
      }
    }

    (*(v13 + 8))(v16, v12);
    return sub_213FB2DF4(v24, &qword_27C906180, &qword_2146F4250);
  }
}

uint64_t sub_214463DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C5E0, &qword_2146F6D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214463E5C()
{
  result = qword_27C913E20;
  if (!qword_27C913E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E20);
  }

  return result;
}

uint64_t sub_214463EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDActionContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214463F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214463F74()
{
  result = qword_27C913E28;
  if (!qword_27C913E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E28);
  }

  return result;
}

unint64_t sub_214463FC8()
{
  result = qword_27C913E30;
  if (!qword_27C913E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E30);
  }

  return result;
}

unint64_t sub_21446401C()
{
  result = qword_27C913E38;
  if (!qword_27C913E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E38);
  }

  return result;
}

unint64_t sub_214464070()
{
  result = qword_27C913E48;
  if (!qword_27C913E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E48);
  }

  return result;
}

unint64_t sub_2144640C4()
{
  result = qword_27C913E58;
  if (!qword_27C913E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C630, &unk_2146F6D50);
    sub_214464148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E58);
  }

  return result;
}

unint64_t sub_214464148()
{
  result = qword_27C913E60;
  if (!qword_27C913E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E60);
  }

  return result;
}

unint64_t sub_21446419C()
{
  result = qword_27C913E68;
  if (!qword_27C913E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C648, &unk_214747AA0);
    sub_214464220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E68);
  }

  return result;
}

unint64_t sub_214464220()
{
  result = qword_27C913E70;
  if (!qword_27C913E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E70);
  }

  return result;
}

unint64_t sub_214464274()
{
  result = qword_27C913E78;
  if (!qword_27C913E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C660, &qword_2146F6D60);
    sub_2144642F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E78);
  }

  return result;
}

unint64_t sub_2144642F8()
{
  result = qword_27C913E80;
  if (!qword_27C913E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E80);
  }

  return result;
}

unint64_t sub_21446434C()
{
  result = qword_27C913E88;
  if (!qword_27C913E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C5E0, &qword_2146F6D30);
    sub_2144643EC(&qword_27C913E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E88);
  }

  return result;
}

uint64_t sub_2144643EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MBDActionCalendar();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214464430()
{
  result = qword_27C913E98;
  if (!qword_27C913E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90C6A0, &unk_2146F6D70);
    sub_2144644B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913E98);
  }

  return result;
}

unint64_t sub_2144644B4()
{
  result = qword_27C913EA0;
  if (!qword_27C913EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913EA0);
  }

  return result;
}

unint64_t sub_21446452C()
{
  result = qword_27C913EA8;
  if (!qword_27C913EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913EA8);
  }

  return result;
}

unint64_t sub_214464584()
{
  result = qword_27C913EB0;
  if (!qword_27C913EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913EB0);
  }

  return result;
}

unint64_t sub_2144645DC()
{
  result = qword_27C913EB8;
  if (!qword_27C913EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913EB8);
  }

  return result;
}

uint64_t sub_214464630()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21446467C()
{
  sub_214464724();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144646D0()
{
  sub_214464724();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214464724()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v36 = v0[27];
  v37 = v0[28];
  v7 = *(v0 + 5);
  v8 = *(v0 + 10);
  v33 = *(v0 + 4);
  v34 = *(v0 + 9);
  v38 = v0[48];
  v39 = v0[89];
  v9 = *(v0 + 13);
  v35 = *(v0 + 12);
  v41 = v0[112];
  v42 = *(v0 + 136);
  v43 = v0[153];
  v44 = *(v0 + 22);
  v40 = *(v0 + 23);
  v45 = v0[193];
  v46 = v0[194];
  v49 = MEMORY[0x277D84B78];
  LOBYTE(v48) = v1;
  sub_213FDC730(&v48, v47);
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 116, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v12 = MEMORY[0x277D83E88];
  v49 = MEMORY[0x277D83E88];
  *&v48 = v2;
  sub_213FDC730(&v48, v47);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 118, 0xE100000000000000, v13);
  if ((v4 & 1) == 0)
  {
    v49 = v12;
    *&v48 = v3;
    sub_213FDC730(&v48, v47);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 26723, 0xE200000000000000, v14);
  }

  v15 = MEMORY[0x277D839B0];
  if (v5 != 2)
  {
    v49 = MEMORY[0x277D839B0];
    LOBYTE(v48) = v5 & 1;
    sub_213FDC730(&v48, v47);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25956, 0xE200000000000000, v16);
  }

  if (v6 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v6 & 1;
    sub_213FDC730(&v48, v47);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25715, 0xE200000000000000, v17);
  }

  if (v36 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v36 & 1;
    sub_213FDC730(&v48, v47);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 26989, 0xE200000000000000, v18);
  }

  if (v37 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v37 & 1;
    sub_213FDC730(&v48, v47);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 7500147, 0xE300000000000000, v19);
  }

  if (v7 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v33;
    *(&v48 + 1) = v7;
    sub_213FDC730(&v48, v47);
    sub_213FDCA18(v33, v7);
    sub_21402D9F8(v33, v7);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 98, 0xE100000000000000, v20);
    sub_213FDC6BC(v33, v7);
  }

  if (v38 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v38 & 1;
    sub_213FDC730(&v48, v47);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 29810, 0xE200000000000000, v21);
  }

  if (v8 >> 60 == 11)
  {
    goto LABEL_31;
  }

  if (v8 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v34;
    *(&v48 + 1) = v8;
    sub_213FDC730(&v48, v47);
    sub_21404F7E0(v34, v8);
    sub_213FDCA18(v34, v8);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 0xD00000000000001ALL, 0x800000021478B000, v22);
    sub_214032564(v34, v8);
  }

  if (v39 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v39 & 1;
    sub_213FDC730(&v48, v47);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 25970, 0xE200000000000000, v23);
  }

  if (v9 >> 60 != 15)
  {
    v49 = MEMORY[0x277CC9318];
    *&v48 = v35;
    *(&v48 + 1) = v9;
    sub_213FDC730(&v48, v47);
    sub_213FDCA18(v35, v9);
    sub_21402D9F8(v35, v9);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 99, 0xE100000000000000, v24);
    sub_213FDC6BC(v35, v9);
  }

  if (v41 != 2)
  {
    v49 = v15;
    LOBYTE(v48) = v41 & 1;
    sub_213FDC730(&v48, v47);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 1835819888, 0xE400000000000000, v25);
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_31;
  }

  v26 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D837D0];
  v48 = v42;
  sub_213FDC730(&v48, v47);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 112, 0xE100000000000000, v27);
  v49 = v15;
  LOBYTE(v48) = v43;
  sub_213FDC730(&v48, v47);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v47, 100, 0xE100000000000000, v28);
  if (v40)
  {
    v49 = v26;
    *&v48 = v44;
    *(&v48 + 1) = v40;
    sub_213FDC730(&v48, v47);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v47, 115, 0xE100000000000000, v29);
    if (v45 != 2)
    {
      v49 = v15;
      LOBYTE(v48) = v45 & 1;
      sub_213FDC730(&v48, v47);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v47, 6579056, 0xE300000000000000, v30);
    }

    if (v46 != 2)
    {
      v49 = v15;
      LOBYTE(v48) = v46 & 1;
      sub_213FDC730(&v48, v47);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v47, 25443, 0xE200000000000000, v31);
    }

    return v10;
  }

  else
  {
LABEL_31:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214464E10(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v16 == 0;

    if (!v16)
    {
      return v17;
    }

    v18 = sub_21408C2B8(v13);
    if ((v19 & 1) == 0 || (v20 = *(a2 + 56) + 16 * v18, *v20 != v15))
    {

      return 0;
    }

    v21 = *(v20 + 8);

    v23 = sub_2143D5098(v22, v16);

    if (!v23)
    {
      return v17;
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

uint64_t sub_214464F80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v43 = (v5 + 63) >> 6;
  v44 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(result + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_2143DA468(v16, v17, v18);
    v19 = v13 == 0;
    if (!v13)
    {
      return v19;
    }

    v20 = sub_21408C300(v14, v13);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_50;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_47;
        }

        v34 = *(v23 + 8);
        sub_2143DA468(*v23, v24, 3);
        sub_2143DA468(v25, v34, 3);
        sub_2143DA468(v16, v17, 3);
        v30 = sub_2143D80E4(v25, v16);
        sub_2143DA490(v16, v17, 3);
        sub_2143DA490(v25, v34, 3);
        sub_2143DA490(v25, v34, 3);
        v31 = v16;
        v32 = v17;
        v33 = 3;
        goto LABEL_36;
      }

      if (v26 != 4)
      {
        sub_2143DA490(*v23, v24, 5);
        if (v18 != 5 || (v17 | v16) != 0)
        {
          goto LABEL_50;
        }

        v37 = 0;
        v38 = 0;
        v39 = 5;
        goto LABEL_45;
      }

      sub_2143DA490(*v23, v24, 4);
      if (v18 != 4)
      {
        goto LABEL_50;
      }

      sub_2143DA490(v16, v17, 4);
      result = v44;
      v19 = 0;
      if ((v25 ^ v16))
      {
        return v19;
      }
    }

    else if (*(v23 + 16))
    {
      if (v26 == 1)
      {
        sub_2143DA490(*v23, v24, 1);
        if (v18 != 1)
        {
          goto LABEL_50;
        }

        sub_2143DA490(v16, v17, 1);
        result = v44;
        v19 = 0;
        if (v25 != v16)
        {
          return v19;
        }
      }

      else
      {
        if (v18 != 2)
        {
LABEL_47:
          v41 = *(v23 + 8);
          v42 = *v23;
LABEL_49:

          sub_2143DA490(v25, v41, v26);
LABEL_50:
          sub_2143DA490(v16, v17, v18);
          return 0;
        }

        v35 = *(v23 + 8);
        sub_2143DA468(*v23, v24, 2);
        sub_2143DA468(v25, v35, 2);
        sub_2143DA468(v16, v17, 2);
        v30 = sub_214464F80(v25, v16);
        sub_2143DA490(v16, v17, 2);
        sub_2143DA490(v25, v35, 2);
        sub_2143DA490(v25, v35, 2);
        v31 = v16;
        v32 = v17;
        v33 = 2;
LABEL_36:
        sub_2143DA490(v31, v32, v33);
        result = v44;
        v19 = 0;
        if ((v30 & 1) == 0)
        {
          return v19;
        }
      }
    }

    else
    {
      if (v18)
      {
        v41 = *(v23 + 8);
        goto LABEL_49;
      }

      if (v25 != v16 || v24 != v17)
      {
        v28 = *v23;
        v29 = *(v23 + 8);
        v30 = sub_2146DA6A8();

        sub_2143DA490(v25, v29, 0);
        v31 = v16;
        v32 = v17;
        v33 = 0;
        goto LABEL_36;
      }

      v40 = *(v23 + 8);

      sub_2143DA490(v16, v17, 0);
      v37 = v16;
      v38 = v17;
      v39 = 0;
LABEL_45:
      sub_2143DA490(v37, v38, v39);
      result = v44;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v43)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2144653A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2144653C0, 0, 0);
}

uint64_t sub_2144653C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913ED8, &qword_214747D60);
  v1 = sub_2146D8BB8();
  v0[8] = v1;
  v2 = *(MEMORY[0x277D82DC0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_21446548C;
  v4 = v0[7];

  return MEMORY[0x2821FAF00](v0 + 4, v1, 0, 0);
}

uint64_t sub_21446548C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_214465B24;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2144655A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2144655A8()
{
  v1 = v0[4];
  v0[11] = v1;
  if (v1 >> 62)
  {
    v2 = sub_2146DA028();
    result = sub_2146DA028();
    v0[12] = v2;
    v0[13] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[11];
    v10 = v0[6];
    v9 = v0[7];

    v11 = MEMORY[0x277D84F98];
    *v10 = v2;
    v10[1] = v11;
    v12 = v0[1];

    return v12();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = v2;
  v0[12] = v2;
  v0[13] = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[14] = MEMORY[0x277D84F98];
  v4 = v0[11];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216054E00](0);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
  }

  v0[15] = v5;
  v0[16] = 1;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_214465738;

  return sub_2143D4060((v0 + 2), v6);
}

uint64_t sub_214465738()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 88);

    v6 = sub_214465B90;
  }

  else
  {
    v6 = sub_214465860;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_214465860()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  v5 = [*(v0 + 120) trackID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v3;
  v7 = sub_21408C2B8(v5);
  v9 = *(v3 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_24:
    v31 = v7;
    sub_214483778();
    v7 = v31;
    goto LABEL_8;
  }

  v1 = v8;
  if (*(*(v0 + 112) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  sub_214051C9C(v12, isUniquelyReferenced_nonNull_native);
  v13 = *(v0 + 40);
  v7 = sub_21408C2B8(v5);
  if ((v1 & 1) != (v14 & 1))
  {

    sub_2146DA8D8();
    return;
  }

LABEL_8:
  v15 = *(v0 + 40);
  v16 = *(v0 + 120);
  if (v1)
  {
    v17 = v15[7] + 16 * v7;
    v18 = *(v17 + 8);
    *v17 = v2;
    *(v17 + 8) = v4;
  }

  else
  {
    v15[(v7 >> 6) + 8] |= 1 << v7;
    *(v15[6] + 4 * v7) = v5;
    v19 = v15[7] + 16 * v7;
    *v19 = v2;
    *(v19 + 8) = v4;

    v20 = v15[2];
    v11 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v11)
    {
      __break(1u);
LABEL_26:
      v28 = MEMORY[0x216054E00](v16);
      goto LABEL_19;
    }

    v15[2] = v21;
  }

  v16 = *(v0 + 128);
  if (v16 == *(v0 + 104))
  {
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);

    *v25 = v23;
    v25[1] = v15;
    v26 = *(v0 + 8);

    v26();
    return;
  }

  *(v0 + 112) = v15;
  v27 = *(v0 + 88);
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v16 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v28 = *(v27 + 8 * v16 + 32);
LABEL_19:
  *(v0 + 120) = v28;
  *(v0 + 128) = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v29 = v28;
  v30 = swift_task_alloc();
  *(v0 + 136) = v30;
  *v30 = v0;
  v30[1] = sub_214465738;

  sub_2143D4060(v0 + 16, v29);
}

uint64_t sub_214465B24()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214465B90()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214465BFC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_214464E10(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214465C20(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_214464E10(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214465C44(uint64_t a1)
{
  v4 = v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21409A9C0;

  return sub_2144653A0(a1, v4);
}

uint64_t sub_214465CF4()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 168) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_214465D84, 0, 0);
}

uint64_t sub_214465D84()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = *MEMORY[0x277CE5F48];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_214465EE4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913EC0, &qword_214747CE8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21446663C;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 loadMetadataForFormat:v2 completionHandler:v0 + 10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214465EE4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_214466504;
  }

  else
  {
    v3 = sub_214466020;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_214466020()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = objc_opt_self();
  sub_214466734();
  v3 = sub_2146D98E8();

  v4 = sub_2146D9588();
  v5 = [v2 metadataItemsFromArray:v3 withKey:v4 keySpace:*MEMORY[0x277CE5FB0]];

  v6 = sub_2146D9918();
  if (v6 >> 62)
  {
    if (sub_2146DA028() >= 1 && sub_2146DA028())
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216054E00](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v7 = *(v6 + 32);
    }

    v0[23] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913ED0, qword_214747CF0);
    v8 = sub_2146D8BA8();
    v0[24] = v8;
    v9 = *(MEMORY[0x277D82DC0] + 4);
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_21446629C;
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821FAF00](v0 + 18, v8, 0, 0);
  }

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12(0);
}

uint64_t sub_21446629C()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_2144665A0;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_2144663EC;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2144663EC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {

    v2 = 0;
  }

  else
  {
    *(v0 + 216) = 0;
    v3 = *(v0 + 184);
    v4 = *(v0 + 144);
    v5 = sub_2145B089C((v0 + 216), (v0 + 220));
    v7 = v6;
    v2 = sub_214466780(v4, v1, v5, v6 & 0xFFFFFFFFFFFFFFLL);
    sub_213FB54FC(v5, v7 & 0xFFFFFFFFFFFFFFLL);
    sub_213FDC6BC(v4, v1);
  }

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8(v2 & 1);
}

uint64_t sub_214466504()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 176);
  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3(0);
}

uint64_t sub_2144665A0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3(0);
}

uint64_t sub_21446663C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_214466734();
    **(*(v4 + 64) + 40) = sub_2146D9918();

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_214466734()
{
  result = qword_27C913EC8;
  if (!qword_27C913EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C913EC8);
  }

  return result;
}

uint64_t sub_214466780(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21402D9F8(a3, a4);
          return sub_2143D9C50(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2144668E8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2145B089C(a1, &a1[a2]);
  }

  v3 = sub_2146D8778();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2146D8718();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2146D89D8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t Endianness.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

unint64_t sub_214466A3C()
{
  result = qword_27C913EE0[0];
  if (!qword_27C913EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C913EE0);
  }

  return result;
}

uint64_t sub_214466AD4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t sub_214466B20(uint64_t a1)
{
  *(a1 + 8) = sub_214303DFC();
  result = sub_214303F04();
  *(a1 + 16) = result;
  return result;
}

double Handwriting.DrawingStrokePoint.location.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Handwriting.DrawingStroke.strokePoints.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double Handwriting.Drawing.canvasBounds.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

void Handwriting.Drawing.canvasBounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

double Handwriting.Drawing.strokesFrame.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  return result;
}

void Handwriting.Drawing.strokesFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t Handwriting.Drawing.strokes.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Handwriting.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Handwriting.sessionIdentifier.setter(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Handwriting.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Handwriting() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Handwriting()
{
  result = qword_280B30AF0;
  if (!qword_280B30AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Handwriting.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Handwriting() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Handwriting.drawing.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Handwriting() + 24));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2142F395C(v10, &v9);
}

__n128 Handwriting.drawing.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Handwriting() + 24));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2142F3A0C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_21446712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214467194(uint64_t a1)
{
  *(a1 + 8) = sub_2144671FC(&qword_27C90CF18);
  result = sub_2144671FC(&qword_27C90CEE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144671FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Handwriting();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214467268()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    result = sub_2146D8B08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214467314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21446735C(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t sub_214467420(uint64_t a1)
{
  *(a1 + 8) = sub_214311430();
  result = sub_214311484();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214467460(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2144674D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

char *sub_214467610(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
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

unint64_t sub_214467870()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x746E756F4378616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2144678CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214468FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2144678F4(uint64_t a1)
{
  v2 = sub_214467B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214467930(uint64_t a1)
{
  v2 = sub_214467B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21446796C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F68, &qword_2147480D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214467B2C();
  sub_2146DAA28();
  v16 = 0;
  sub_2146DA368();
  if (!v2)
  {
    v15 = 1;
    sub_2146DA348();
    v14 = 2;
    sub_2146DA368();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_214467B2C()
{
  result = qword_27C913F70;
  if (!qword_27C913F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913F70);
  }

  return result;
}

uint64_t sub_214467B80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F78, &qword_2147480D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214467B2C();
  sub_2146DAA08();
  if (!v2)
  {
    v16[15] = 0;
    v11 = sub_2146DA1A8();
    v16[14] = 1;
    sub_2146DA188();
    v14 = v13;
    v16[13] = 2;
    v15 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214467D84@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_214467E1C(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_214467E9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_214467FB4(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_214468008(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_214468094()
{
  result = *(v0 + 440);
  v2 = *(v0 + 448);
  return result;
}

uint64_t sub_2144680A0(uint64_t result, char a2)
{
  *(v2 + 440) = result;
  *(v2 + 448) = a2 & 1;
  return result;
}

uint64_t sub_214468108()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return v1;
}

uint64_t sub_214468138(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 464);

  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
  return result;
}

uint64_t sub_214468190()
{
  v1 = 0x6567616D69;
  v2 = 0x4572656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x7453657079547475;
  }

  if (*v0)
  {
    v1 = 0x727544656D617266;
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

uint64_t sub_214468228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214469104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214468250(uint64_t a1)
{
  v2 = sub_21446850C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21446828C(uint64_t a1)
{
  v2 = sub_21446850C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144682C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F80, &qword_2147480E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21446850C();
  sub_2146DAA28();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  if (!v2)
  {
    v12 = *(v3 + 440);
    v13 = *(v3 + 448);
    v16[14] = 1;
    sub_2146DA2D8();
    v16[13] = *(v3 + 449);
    v16[12] = 2;
    sub_214097618();
    sub_2146DA388();
    v14 = *(v3 + 456);
    v15 = *(v3 + 464);
    v16[11] = 3;
    sub_2146DA2B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21446850C()
{
  result = qword_27C913F88;
  if (!qword_27C913F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913F88);
  }

  return result;
}

uint64_t sub_214468560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F90, &qword_2147480E8);
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v17 - v6;
  LOWORD(v40[0]) = 0;
  sub_2140615D0(v40);
  v32 = v40[9];
  v33 = v40[10];
  v34 = v40[11];
  v28 = v40[5];
  v29 = v40[6];
  v30 = v40[7];
  v31 = v40[8];
  v24 = v40[1];
  v25 = v40[2];
  v26 = v40[3];
  v27 = v40[4];
  v23 = v40[0];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21446850C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v21, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v9 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v19 = 0;
    sub_2140A4DD4(&qword_280B30CB8);
    v10 = v41;
    sub_2146DA1C8();
    sub_2140A4E24(v20, v21);
    v20[0] = 1;
    v35 = sub_2146DA118();
    v36 = v11 & 1;
    v19 = 2;
    sub_2140975C4();
    sub_2146DA1C8();
    v37 = v20[0];
    v20[0] = 3;
    v12 = sub_2146DA0F8();
    v13 = v7;
    v15 = v14;
    (*(v4 + 8))(v13, v10);
    v38 = v12;
    v39 = v15;
    sub_21446887C(v21, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2144688B4(v21);
  }
}

__n128 sub_214468914@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a4;
  LOWORD(v31[0]) = 0;
  sub_2140615D0(v31);
  v14 = v31[8];
  v15 = v31[10];
  v16 = v31[11];
  *(a7 + 392) = v31[9];
  *(a7 + 408) = v15;
  *(a7 + 424) = v16;
  v17 = v31[4];
  v18 = v31[6];
  v19 = v31[7];
  *(a7 + 328) = v31[5];
  *(a7 + 344) = v18;
  *(a7 + 360) = v19;
  *(a7 + 376) = v14;
  v20 = v31[1];
  *(a7 + 248) = v31[0];
  v21 = v31[2];
  v22 = v31[3];
  *(a7 + 264) = v20;
  *(a7 + 280) = v21;
  *(a7 + 296) = v22;
  *(a7 + 312) = v17;
  *(a7 + 240) = 0;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  *(a7 + 440) = a2;
  *(a7 + 448) = a3 & 1;
  *(a7 + 456) = a5;
  *(a7 + 464) = a6;
  *(a7 + 449) = v13;
  sub_213FB2DF4(a7, &qword_27C904858, &qword_214736F00);
  v23 = *(a1 + 208);
  *(a7 + 192) = *(a1 + 192);
  *(a7 + 208) = v23;
  *(a7 + 224) = *(a1 + 224);
  *(a7 + 240) = *(a1 + 240);
  v24 = *(a1 + 144);
  *(a7 + 128) = *(a1 + 128);
  *(a7 + 144) = v24;
  v25 = *(a1 + 176);
  *(a7 + 160) = *(a1 + 160);
  *(a7 + 176) = v25;
  v26 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v26;
  v27 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v27;
  v28 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v28;
  result = *(a1 + 32);
  v30 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v30;
  return result;
}

uint64_t sub_214468A4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

unint64_t sub_214468A60()
{
  result = qword_27C913F98;
  if (!qword_27C913F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913F98);
  }

  return result;
}

unint64_t sub_214468AB8()
{
  result = qword_27C913FA0;
  if (!qword_27C913FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FA0);
  }

  return result;
}

unint64_t sub_214468B0C(uint64_t a1)
{
  result = sub_214468B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214468B34()
{
  result = qword_27C913FA8;
  if (!qword_27C913FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FA8);
  }

  return result;
}

unint64_t sub_214468B88(uint64_t a1)
{
  *(a1 + 8) = sub_214468BB8();
  result = sub_214468C0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214468BB8()
{
  result = qword_27C913FB0;
  if (!qword_27C913FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FB0);
  }

  return result;
}

unint64_t sub_214468C0C()
{
  result = qword_27C913FB8;
  if (!qword_27C913FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FB8);
  }

  return result;
}

uint64_t sub_214468C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_214468CB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 472) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214468DD8()
{
  result = qword_27C913FC0;
  if (!qword_27C913FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FC0);
  }

  return result;
}

unint64_t sub_214468E30()
{
  result = qword_27C913FC8;
  if (!qword_27C913FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FC8);
  }

  return result;
}

unint64_t sub_214468E88()
{
  result = qword_27C913FD0;
  if (!qword_27C913FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FD0);
  }

  return result;
}

unint64_t sub_214468EE0()
{
  result = qword_27C913FD8;
  if (!qword_27C913FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FD8);
  }

  return result;
}

unint64_t sub_214468F38()
{
  result = qword_27C913FE0;
  if (!qword_27C913FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FE0);
  }

  return result;
}

unint64_t sub_214468F90()
{
  result = qword_27C913FE8;
  if (!qword_27C913FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913FE8);
  }

  return result;
}

uint64_t sub_214468FE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214469104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727544656D617266 && a2 == 0xED00006E6F697461 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4572656B63697473 && a2 == 0xED00007463656666 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_214469278(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F6FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2144692C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214469310(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F654();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21446935C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21447064C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_214469384@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21447064C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2144693B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F4D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2144693FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F47C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214469498()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C88);
  __swift_project_value_buffer(v0, qword_27CA19C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareURL";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214469660()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for HealthSharingSetupInvitationToken(0) + 20);
      sub_2146D8F38();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for HealthSharingSetupInvitationToken(0) + 24);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_21446971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21446A864(v3, a1, a2, a3, type metadata accessor for HealthSharingSetupInvitationToken);
  if (!v4)
  {
    sub_2144697A0(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144697A0(uint64_t a1)
{
  result = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

double sub_214469840@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = *(a1 + 24);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2144698CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914220, type metadata accessor for HealthSharingSetupInvitationToken);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446996C(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144699D8()
{
  sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken);

  return sub_2146D9008();
}

uint64_t sub_214469A58()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CA0);
  __swift_project_value_buffer(v0, qword_27CA19CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "syncCircleIdentifier";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ownerParticipant";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sourceProfileIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shareParticipant";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ownerCloudKitEmailAddress";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "invitationToken";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214469D24()
{
  result = sub_2146D8E78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for HealthSharingSetupMetadata(0) + 36);
LABEL_5:
            v0 = v3;
            sub_2146D8EC8();
            break;
          case 5:
            v6 = v0;
            v9 = *(type metadata accessor for HealthSharingSetupMetadata(0) + 40);
            goto LABEL_20;
          case 100:
            type metadata accessor for HealthSharingSetupInvitationToken(0);
            sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken);
            sub_2146D8F78();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v6 = v0;
            v7 = *(type metadata accessor for HealthSharingSetupMetadata(0) + 24);
LABEL_20:
            v0 = v6;
            sub_2146D8F38();
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for HealthSharingSetupMetadata(0) + 28);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for HealthSharingSetupMetadata(0) + 32);
            goto LABEL_5;
        }
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214469EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21446A8E0(v3, a1, a2, a3, type metadata accessor for HealthSharingSetupMetadata);
  if (!v4)
  {
    sub_21446A038(v3);
    sub_21446A0D8(v3);
    sub_21446A178(v3);
    sub_21446A218(v3);
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for HealthSharingSetupInvitationToken(0);
      sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken);
      sub_2146D90D8();
    }

    v8 = v5 + *(type metadata accessor for HealthSharingSetupMetadata(0) + 20);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21446A038(uint64_t a1)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v3 = a1 + *(result + 28);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_21446A0D8(uint64_t a1)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_21446A178(uint64_t a1)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_21446A218(uint64_t a1)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

double sub_21446A294@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  sub_2146D8DE8();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_2146E68C0;
  v8 = a1[9];
  *(a2 + a1[8]) = xmmword_2146E68C0;
  *(a2 + v8) = xmmword_2146E68C0;
  v9 = (a2 + a1[10]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_21446A34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914228, type metadata accessor for HealthSharingSetupMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446A3EC(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446A458()
{
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata);

  return sub_2146D9008();
}

uint64_t sub_21446A4D8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CB8);
  __swift_project_value_buffer(v0, qword_27CA19CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "authorizationIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displaySubtitle";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446A6EC()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for HealthSharingAuthorization(0) + 28);
LABEL_3:
        v0 = 0;
        sub_2146D8F38();
        break;
      case 2:
        v1 = *(type metadata accessor for HealthSharingAuthorization(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for HealthSharingAuthorization(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_21446A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21446A864(v3, a1, a2, a3, type metadata accessor for HealthSharingAuthorization);
  if (!v4)
  {
    sub_21446A8E0(v3, a1, a2, a3, type metadata accessor for HealthSharingAuthorization);
    sub_21446A964(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21446A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A964(uint64_t a1)
{
  result = type metadata accessor for HealthSharingAuthorization(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A9DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_21446AA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914230, type metadata accessor for HealthSharingAuthorization);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446AB10(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446AB7C()
{
  sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization);

  return sub_2146D9008();
}

uint64_t sub_21446ABFC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CD0);
  __swift_project_value_buffer(v0, qword_27CA19CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2147486B0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "primaryContactIdentifier";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "allContactIdentifiers";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "firstName";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastName";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "direction";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "status";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sharingSetupMetadata";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "dateModified";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "authorizationCategories";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "dateAccepted";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "dateInvited";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "invitationUUID";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "cloudKitIdentifier";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "ownerParticipant";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "notificationStatus";
  *(v37 + 8) = 18;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 40;
  *v39 = "sharingAuthorizations";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 41;
  *v41 = "userWheelchairMode";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21446B1C4()
{
  v0 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21446B204();
  qword_27C913FF0 = result;
  return result;
}

uint64_t sub_21446B204()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 514;
  *(v0 + 90) = 5;
  v2 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v3 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories) = v1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode) = 3;
  return v0;
}

void *sub_21446B348()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata, &qword_27C913098, qword_21473D710);
  v6 = *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories);

  v7 = *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier + 8);

  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant), *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant + 8));
  v9 = *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations);

  return v0;
}

uint64_t sub_21446B404()
{
  v0 = *sub_21446B348();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21446B480()
{
  sub_21446B8F8(319, &qword_27C914060, type metadata accessor for HealthSharingSetupMetadata, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21446B61C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21446B740()
{
  result = sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthSummarySharingEntry._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21446B7EC()
{
  sub_21446B8F8(319, &qword_27C914098, type metadata accessor for HealthSharingSetupInvitationToken, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21446B8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21446B9A4()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21446BA64()
{
  result = qword_27C9140B0;
  if (!qword_27C9140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140B0);
  }

  return result;
}

unint64_t sub_21446BABC()
{
  result = qword_27C9140B8;
  if (!qword_27C9140B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140B8);
  }

  return result;
}

unint64_t sub_21446BB14()
{
  result = qword_27C9140C0;
  if (!qword_27C9140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140C0);
  }

  return result;
}

unint64_t sub_21446BB6C()
{
  result = qword_27C9140C8;
  if (!qword_27C9140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140C8);
  }

  return result;
}

unint64_t sub_21446BBC4()
{
  result = qword_27C9140D0;
  if (!qword_27C9140D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140D0);
  }

  return result;
}

unint64_t sub_21446BC1C()
{
  result = qword_27C9140D8;
  if (!qword_27C9140D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140D8);
  }

  return result;
}

unint64_t sub_21446BC74()
{
  result = qword_27C9140E0;
  if (!qword_27C9140E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140E0);
  }

  return result;
}

unint64_t sub_21446BCCC()
{
  result = qword_27C9140E8;
  if (!qword_27C9140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140E8);
  }

  return result;
}

unint64_t sub_21446BD24()
{
  result = qword_27C9140F0;
  if (!qword_27C9140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140F0);
  }

  return result;
}

unint64_t sub_21446BD7C()
{
  result = qword_27C9140F8;
  if (!qword_27C9140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9140F8);
  }

  return result;
}

unint64_t sub_21446BDD4()
{
  result = qword_27C914100;
  if (!qword_27C914100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914100);
  }

  return result;
}

unint64_t sub_21446BE2C()
{
  result = qword_27C914108;
  if (!qword_27C914108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914108);
  }

  return result;
}

unint64_t sub_21446BE84()
{
  result = qword_27C914110;
  if (!qword_27C914110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914110);
  }

  return result;
}

unint64_t sub_21446BEDC()
{
  result = qword_27C914118;
  if (!qword_27C914118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914118);
  }

  return result;
}

unint64_t sub_21446BF34()
{
  result = qword_27C914120;
  if (!qword_27C914120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914120);
  }

  return result;
}

uint64_t sub_21446BF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for HealthSummarySharingEntry(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_21446FF10(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_21446C03C(v11, a1, a2, a3);
}

uint64_t sub_21446C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21401FE70();
          break;
        case 2:
          sub_21446C38C();
          break;
        case 3:
          sub_21446C410();
          break;
        case 4:
          sub_21446C494();
          break;
        case 5:
          sub_21446C518();
          break;
        case 6:
          sub_21446C59C();
          break;
        case 7:
          sub_21446C630();
          break;
        case 8:
          sub_21446C6C4();
          break;
        case 9:
          sub_21446C758();
          break;
        case 10:
          v23 = a2;
          v24 = a1;
          v25 = a3;
          v26 = a4;
          v27 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
          goto LABEL_24;
        case 11:
          sub_21446C834();
          break;
        case 12:
          v23 = a2;
          v24 = a1;
          v25 = a3;
          v26 = a4;
          v27 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
          goto LABEL_24;
        case 13:
          v23 = a2;
          v24 = a1;
          v25 = a3;
          v26 = a4;
          v27 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
LABEL_24:
          sub_2140204C0(v23, v24, v25, v26, v27);
          break;
        case 14:
          v11 = MEMORY[0x277D217D0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid;
          goto LABEL_5;
        case 15:
          v11 = MEMORY[0x277D217D0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier;
          goto LABEL_5;
        case 16:
          v11 = MEMORY[0x277D21760];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant;
LABEL_5:
          sub_21446C8C0(v12, v13, v14, v15, v16, v11);
          break;
        case 17:
          v17 = sub_21446F4D0;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
          goto LABEL_28;
        case 40:
          sub_21446C958();
          break;
        case 41:
          v17 = sub_21446F47C;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
LABEL_28:
          sub_21446CA34(v18, v19, v20, v21, v22, v17);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21446C38C()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C410()
{
  swift_beginAccess();
  sub_2146D8F18();
  return swift_endAccess();
}

uint64_t sub_21446C494()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C518()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C59C()
{
  swift_beginAccess();
  sub_21446F6FC();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C630()
{
  swift_beginAccess();
  sub_21446F6A8();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C6C4()
{
  swift_beginAccess();
  sub_21446F654();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C758()
{
  swift_beginAccess();
  type metadata accessor for HealthSharingSetupMetadata(0);
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21446C834()
{
  swift_beginAccess();
  sub_2146D8F18();
  return swift_endAccess();
}

uint64_t sub_21446C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21446C958()
{
  swift_beginAccess();
  type metadata accessor for HealthSharingAuthorization(0);
  sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21446CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446CADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for HealthSummarySharingEntry(0);
  result = sub_21446CB48(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21446CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2140206BC(a1);
  if (!v4)
  {
    sub_21446CEFC(a1);
    swift_beginAccess();
    if (*(*(a1 + 48) + 16))
    {
      v10 = *(a1 + 48);

      sub_2146D9088();
    }

    sub_21446CF98(a1);
    sub_21446D034(a1);
    sub_21446D0D0(a1);
    sub_21446D170(a1);
    sub_21446D210(a1);
    sub_21446D2AC(a1, a2, a3, a4);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified);
    v11 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {

      sub_2146D9088();
    }

    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
    sub_21446D4A0(a1);
    sub_21446D554(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus, sub_21446F4D0);
    v12 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {
      type metadata accessor for HealthSharingAuthorization(0);
      sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization);

      sub_2146D90D8();
    }

    return sub_21446D554(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode, sub_21446F47C);
  }

  return result;
}

uint64_t sub_21446CEFC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446CF98(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446D034(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446D0D0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 2)
  {
    sub_21446F6FC();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D170(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 89) != 2)
  {
    sub_21446F6A8();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D210(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 90) != 5)
  {
    sub_21446F654();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for HealthSharingSetupMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_21446F524(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913098, qword_21473D710);
  }

  sub_21446F594(v8, v13);
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata);
  sub_2146D90F8();
  return sub_21446F5F8(v13);
}

uint64_t sub_21446D4A0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    sub_21402D9F8(v4, v3);
    sub_2146D9048();
    return sub_213FDC6BC(v4, v3);
  }

  return result;
}

uint64_t sub_21446D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return sub_2146D9038();
  }

  return result;
}

BOOL sub_21446D614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  v95 = *(v4 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914238, &qword_2147494A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v96 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = (&v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v94 - v16;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v18)
  {
    if (!v20 || (v19 != *(a2 + 16) || v18 != v20) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!v23 || (v21 != *(a2 + 32) || v22 != v23) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_2143D53BC(v24, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  swift_beginAccess();
  v27 = *(a2 + 64);
  if (v26)
  {
    if (!v27 || (v25 != *(a2 + 56) || v26 != v27) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  swift_beginAccess();
  v30 = *(a2 + 80);
  if (v29)
  {
    if (!v30 || (v28 != *(a2 + 72) || v29 != v30) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  swift_beginAccess();
  v32 = *(a2 + 88);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 89);
  swift_beginAccess();
  v35 = *(a2 + 89);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v35 == 2 || ((v35 ^ v34) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 90);
  swift_beginAccess();
  v37 = *(a2 + 90);
  if (v36 == 5)
  {
    if (v37 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v37 == 5 || v36 != v37)
    {
      return result;
    }
  }

  v38 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_21446F524(a1 + v38, v17);
  v39 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  v40 = *(v8 + 48);
  v41 = v96;
  sub_21446F524(v17, v96);
  v42 = a2 + v39;
  v43 = v41;
  v94 = v40;
  sub_21446F524(v42, v41 + v40);
  v44 = *(v95 + 48);
  if (v44(v43, 1, v4) == 1)
  {

    sub_213FB2DF4(v17, &qword_27C913098, qword_21473D710);
    if (v44(v43 + v94, 1, v4) == 1)
    {
      sub_213FB2DF4(v43, &qword_27C913098, qword_21473D710);
      goto LABEL_55;
    }

LABEL_50:
    sub_213FB2DF4(v43, &qword_27C914238, &qword_2147494A0);
    goto LABEL_51;
  }

  sub_21446F524(v43, v15);
  if (v44(v43 + v94, 1, v4) == 1)
  {

    sub_213FB2DF4(v17, &qword_27C913098, qword_21473D710);
    sub_21446F5F8(v15);
    goto LABEL_50;
  }

  sub_21446F594(v43 + v94, v7);

  v45 = sub_21446FAA8(v15, v7);
  sub_21446F5F8(v7);
  sub_213FB2DF4(v17, &qword_27C913098, qword_21473D710);
  sub_21446F5F8(v15);
  sub_213FB2DF4(v43, &qword_27C913098, qword_21473D710);
  if ((v45 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_55:
  v46 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  swift_beginAccess();
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  swift_beginAccess();
  v50 = *(v49 + 8);
  if (v48)
  {
    if ((*(v49 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v49 + 8) & 1) != 0 || v47 != *v49)
  {
    goto LABEL_51;
  }

  v51 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  if ((sub_2143D53BC(v52, *(a2 + v53)) & 1) == 0)
  {
    goto LABEL_51;
  }

  v54 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  swift_beginAccess();
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  swift_beginAccess();
  v58 = *(v57 + 8);
  if (v56)
  {
    if ((*(v57 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v57 + 8) & 1) != 0 || v55 != *v57)
  {
    goto LABEL_51;
  }

  v59 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  swift_beginAccess();
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  swift_beginAccess();
  v63 = *(v62 + 8);
  if (v61)
  {
    if ((*(v62 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v62 + 8) & 1) != 0 || v60 != *v62)
  {
    goto LABEL_51;
  }

  v64 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (v65 != *v67 || v66 != v68) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v68)
  {
    goto LABEL_51;
  }

  v69 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  v72 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v73 = v72[1];
  if (v71)
  {
    if (!v73 || (v70 != *v72 || v71 != v73) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v73)
  {
    goto LABEL_51;
  }

  v74 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v76 = *v74;
  v75 = v74[1];
  v77 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  sub_213FDCA18(v76, v75);
  sub_213FDCA18(v78, v79);
  if (v75 >> 60 == 15)
  {
    if (v79 >> 60 == 15)
    {
      sub_213FDC6BC(v76, v75);
      goto LABEL_93;
    }

LABEL_91:
    sub_213FDC6BC(v76, v75);
    sub_213FDC6BC(v78, v79);
    return 0;
  }

  sub_213FDCA18(v76, v75);
  sub_213FDCA18(v78, v79);
  if (v79 >> 60 == 15)
  {

    sub_213FDC6BC(v78, v79);
    sub_213FDC6BC(v76, v75);
    goto LABEL_91;
  }

  v80 = sub_214466780(v76, v75, v78, v79);
  sub_213FDC6BC(v78, v79);
  sub_213FDC6BC(v76, v75);
  sub_213FDC6BC(v78, v79);
  sub_213FDC6BC(v76, v75);
  if ((v80 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_93:
  v81 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v84 = *(a2 + v83);
  if (v82 == 3)
  {
    if (v84 == 3)
    {
      goto LABEL_98;
    }

LABEL_51:

    return 0;
  }

  if (v84 == 3 || v82 != v84)
  {
    goto LABEL_51;
  }

LABEL_98:
  v85 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v88 = *(a2 + v87);

  v89 = sub_2143D9534(v86, v88);

  if ((v89 & 1) == 0)
  {
    goto LABEL_51;
  }

  v90 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v91 = *(a1 + v90);

  v92 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v93 = *(a2 + v92);

  if (v91 == 3)
  {
    return v93 == 3;
  }

  result = 0;
  if (v93 != 3 && v91 == v93)
  {
    return 1;
  }

  return result;
}

uint64_t sub_21446E18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = *(a1 + 20);
  if (qword_27C9030D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27C913FF0;
}

uint64_t sub_21446E250(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C9141F0, type metadata accessor for HealthSummarySharingEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446E2F0(uint64_t a1)
{
  v2 = sub_21446EF54(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446E35C()
{
  sub_21446EF54(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry);

  return sub_2146D9008();
}

uint64_t sub_21446E3DC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CE8);
  __swift_project_value_buffer(v0, qword_27CA19CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Invite";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Request";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446E5C8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D00);
  __swift_project_value_buffer(v0, qword_27CA19D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Outgoing";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Incoming";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446E7B4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D18);
  __swift_project_value_buffer(v0, qword_27CA19D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "StatusPending";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "StatusAccepted";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "StatusDeclined";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "StatusRescinded";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "StatusRevoked";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21446EA60()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D30);
  __swift_project_value_buffer(v0, qword_27CA19D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Pending";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Accepted";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446EC94()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D48);
  __swift_project_value_buffer(v0, qword_27CA19D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NotSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "No";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Yes";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446EF54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21446F47C()
{
  result = qword_27C9141F8;
  if (!qword_27C9141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9141F8);
  }

  return result;
}

unint64_t sub_21446F4D0()
{
  result = qword_27C914200;
  if (!qword_27C914200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914200);
  }

  return result;
}

uint64_t sub_21446F524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21446F594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21446F5F8(uint64_t a1)
{
  v2 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21446F654()
{
  result = qword_27C914208;
  if (!qword_27C914208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914208);
  }

  return result;
}

unint64_t sub_21446F6A8()
{
  result = qword_27C914210;
  if (!qword_27C914210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914210);
  }

  return result;
}

unint64_t sub_21446F6FC()
{
  result = qword_27C914218;
  if (!qword_27C914218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914218);
  }

  return result;
}

uint64_t sub_21446F750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v5 = *(v4 + 20);
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_14;
    }

    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    v20 = sub_214466780(v15, v14, v18, v17);
    sub_213FDC6BC(v18, v17);
    sub_213FDC6BC(v15, v14);
    if (v20)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_14:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  sub_213FDC6BC(v15, v14);
LABEL_17:
  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446F928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingAuthorization(0);
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_2146D8DF8();
    sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21446FAA8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  v5 = v4[6];
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
    if (!v10 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    v17 = sub_214466780(v13, v12, v16, v15);
    sub_213FDC6BC(v16, v15);
    sub_213FDC6BC(v13, v12);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v13 = *(a1 + v18);
  v12 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v16 = *v19;
  v15 = v19[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    v20 = sub_214466780(v13, v12, v16, v15);
    sub_213FDC6BC(v16, v15);
    sub_213FDC6BC(v13, v12);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v13 = *(a1 + v21);
  v12 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v16 = *v22;
  v15 = v22[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      sub_213FDCA18(v13, v12);
      sub_213FDCA18(v16, v15);
      sub_213FDC6BC(v13, v12);
      goto LABEL_27;
    }

LABEL_24:
    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
    sub_213FDC6BC(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_24;
  }

  sub_213FDCA18(v13, v12);
  sub_213FDCA18(v16, v15);
  v24 = sub_214466780(v13, v12, v16, v15);
  sub_213FDC6BC(v16, v15);
  sub_213FDC6BC(v13, v12);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((sub_2143D544C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v30 = v4[5];
  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446FE28(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HealthSummarySharingEntry(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_21446D614(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446FF10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v69 - v5;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 88) = 514;
  v69 = (v1 + 88);
  *(v1 + 90) = 5;
  v6 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v70 = (v1 + 90);
  v71 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v7 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  v72 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  *v8 = 0;
  *(v8 + 8) = 1;
  v74 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  v9 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories) = MEMORY[0x277D84F90];
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  v75 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  v76 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  v77 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  v78 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  *v13 = 0;
  v13[1] = 0;
  v79 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant) = xmmword_2146E68C0;
  v80 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus) = 3;
  v81 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations) = v9;
  v82 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode) = 3;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v16;
  *(v1 + 40) = v17;
  swift_beginAccess();
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v18;

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  swift_beginAccess();
  v21 = *(v1 + 64);
  *(v1 + 56) = v19;
  *(v1 + 64) = v20;

  swift_beginAccess();
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  swift_beginAccess();
  v24 = *(v1 + 80);
  *(v1 + 72) = v22;
  *(v1 + 80) = v23;

  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 88);
  v25 = v69;
  swift_beginAccess();
  *v25 = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 89);
  swift_beginAccess();
  *(v1 + 89) = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 90);
  v26 = v70;
  swift_beginAccess();
  *v26 = v22;
  v27 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v73;
  sub_21446F524(v28, v73);
  v30 = v71;
  swift_beginAccess();
  sub_214423A00(v29, v1 + v30);
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v33 = v72;
  swift_beginAccess();
  *v33 = v32;
  *(v33 + 8) = v31;
  v34 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v74;
  swift_beginAccess();
  v37 = *(v1 + v36);
  *(v1 + v36) = v35;

  v38 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v75;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v76;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v77;
  swift_beginAccess();
  v48 = v47[1];
  *v47 = v46;
  v47[1] = v45;

  v49 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v78;
  swift_beginAccess();
  v53 = v52[1];
  *v52 = v51;
  v52[1] = v50;

  v54 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v79;
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  *v57 = v56;
  v57[1] = v55;
  sub_213FDCA18(v56, v55);
  sub_213FDC6BC(v58, v59);
  v60 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v80;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v63 = *(a1 + v62);
  v64 = v81;
  swift_beginAccess();
  v65 = *(v1 + v64);
  *(v1 + v64) = v63;

  v66 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v66);
  v67 = v82;
  swift_beginAccess();
  *(v1 + v67) = a1;
  return v1;
}

unint64_t sub_21447064C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_214470664()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x68737550646E6573;
  *(inited + 40) = 0xE800000000000000;
  v3 = sub_2146D9988();
  *(inited + 72) = sub_21403EBDC();
  *(inited + 48) = v3;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(inited + 32);
  return v4;
}

unint64_t sub_21447071C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x68737550646E6573;
  *(inited + 40) = 0xE800000000000000;
  v3 = sub_2146D9988();
  *(inited + 72) = sub_21403EBDC();
  *(inited + 48) = v3;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(inited + 32);
  return v4;
}

unint64_t sub_2144707D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147494C0;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214471750;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214470918@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214470A38@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146F3C70;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

uint64_t sub_214470B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v34 = MEMORY[0x277D84F98];
  if (*(v0 + 25))
  {
    goto LABEL_16;
  }

  v9 = *(v0 + 24);
  v10 = MEMORY[0x277D84F98];
  if ((v9 & 1) == 0)
  {
    v11 = v1[2];
    v33 = MEMORY[0x277D83B88];
    *&v32 = v11;
    sub_213FDC730(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v10;
    sub_2140524DC(v31, 0x646E616D6D6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v10 = v30;
    v34 = v30;
  }

  v13 = v1[7];
  if (v13)
  {
    if (v13 != 1)
    {
      v14 = v1[6];
      v33 = MEMORY[0x277D837D0];
      *&v32 = v14;
      *(&v32 + 1) = v13;
      sub_213FDC730(&v32, v31);

      v15 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v10;
      sub_2140524DC(v31, 0x746E65696C63, 0xE600000000000000, v15);
      v34 = v30;
      goto LABEL_7;
    }

LABEL_16:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = type metadata accessor for IDSSampleMessage(0);
  v17 = *(v16 + 24);
  sub_2144716D8(v1 + v17, v8);
  v18 = sub_2146D8B08();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v8, 1, v18);
  sub_213FB2DF4(v8, &qword_27C913090, &unk_2146E9DB0);
  if (v21 != 1)
  {
    sub_2144716D8(v1 + v17, v6);
    if (v20(v6, 1, v18) == 1)
    {
      sub_213FB2DF4(v6, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(1702125924, 0xE400000000000000, &v32);
      sub_213FB2DF4(&v32, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v33 = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
      (*(v19 + 32))(boxed_opaque_existential_0, v6, v18);
      sub_213FDC730(&v32, v31);
      v23 = v34;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v23;
      sub_2140524DC(v31, 1702125924, 0xE400000000000000, v24);
      v34 = v30;
    }
  }

  v25 = v1 + *(v16 + 28);
  if (v25[25])
  {
    goto LABEL_16;
  }

  if (v25[24])
  {
    return v34;
  }

  v27 = *(v25 + 2);
  v33 = MEMORY[0x277D83B88];
  *&v32 = v27;
  sub_213FDC730(&v32, v31);
  v28 = v34;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v28;
  sub_2140524DC(v31, 0x6E6F6973726576, 0xE700000000000000, v29);
  return v30;
}

uint64_t sub_214470F48()
{
  sub_214470B7C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214470F9C()
{
  sub_214470B7C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214471034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214471098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144710FC(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214471158()
{
  v1 = v0;
  v2 = type metadata accessor for IDSSampleMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSSampleMessageType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214471034(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214471098(v9, v5);
    sub_214470B7C();
    sub_2144710FC(v5);
  }

  else
  {
    v10 = *v9;
    v18 = MEMORY[0x277D83E88];
    *&v17 = v10;
    sub_213FDC730(&v17, v16);
    v11 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[1] = v11;
    sub_2140524DC(v16, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  }

  v13 = sub_2146D9468();

  return v13;
}

uint64_t sub_2144712EC(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C90CA50, type metadata accessor for IDSSampleMessage);
  result = sub_214471370(&qword_27C90C970, type metadata accessor for IDSSampleMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214471370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144713B8(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C9078E0, type metadata accessor for IDSSampleMessageType);
  result = sub_214471370(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21447143C(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C914240, type metadata accessor for IDSSampleMessageResult);
  result = sub_214471370(&qword_27C914248, type metadata accessor for IDSSampleMessageResult);
  *(a1 + 16) = result;
  return result;
}

void sub_214471508()
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_21409320C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2144715D8()
{
  result = type metadata accessor for IDSSampleMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21447166C()
{
  result = type metadata accessor for IDSSampleMessageType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2144716D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214471758@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2144717B0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214471838()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21447188C()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2144718D0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_214471940@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214471998(uint64_t a1)
{
  v2 = sub_214471CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144719D4(uint64_t a1)
{
  v2 = sub_214471CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214471A10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2146D87D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2146D87C8();
  sub_21404B9BC();
  v6 = sub_2146D87B8();
  v8 = v7;
  sub_21402D9F8(v6, v7);
  v9 = sub_2146D8A38();
  sub_213FB54FC(v6, v8);
  sub_213FB54FC(v6, v8);

  return v9;
}

uint64_t sub_214471AD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2146D87D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2146D87C8();
  sub_21404B9BC();
  v6 = sub_2146D87B8();
  v8 = v7;
  sub_21402D9F8(v6, v7);
  v9 = sub_2146D8A38();
  sub_213FB54FC(v6, v8);
  sub_213FB54FC(v6, v8);

  return v9;
}

unint64_t sub_214471B94()
{
  result = qword_27C914250;
  if (!qword_27C914250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914250);
  }

  return result;
}

unint64_t sub_214471BEC()
{
  result = qword_27C914258;
  if (!qword_27C914258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914258);
  }

  return result;
}

unint64_t sub_214471C44()
{
  result = qword_27C914260;
  if (!qword_27C914260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914260);
  }

  return result;
}

unint64_t sub_214471C98(uint64_t a1)
{
  *(a1 + 8) = sub_21432085C();
  result = sub_21404B9BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214471CE8()
{
  result = qword_27C914268;
  if (!qword_27C914268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914268);
  }

  return result;
}

uint64_t sub_214471D70@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214471DC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214471E30()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214471EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214471EFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214471F58()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214471FD4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2143E05A8;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2143E05A8;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  sub_214042B80(v4, a1 + 40);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2143E05A8;
  *(v7 + 24) = 0;
  *(v6 + 32) = v7;
  sub_214042B80(v6, a1 + 80);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2143E05A8;
  *(v9 + 24) = 0;
  *(v8 + 32) = v9;
  sub_214042B80(v8, a1 + 120);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2143E05A8;
  *(v11 + 24) = 0;
  *(v10 + 32) = v11;
  sub_214042B80(v10, a1 + 160);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21447B15C;
  *(v14 + 24) = 0;
  *(v13 + 32) = v14;
  v15 = sub_2142E0070(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_214032610;
  *(v16 + 24) = v17;
  *(v12 + 32) = v16;
  sub_214042A28(v12, a1 + 200);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2143E05A8;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  v21 = sub_2142E0070(v19);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_214032610;
  *(v22 + 24) = v23;
  *(v18 + 32) = v22;
  return sub_214042A28(v18, a1 + 240);
}

uint64_t sub_21447233C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472388(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144723E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472430(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21447248C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144724D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472534@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 136);
  v3 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472580(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 144);

  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2144725DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472628(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_u64[1];
  v7 = v1[11].n128_u64[1];

  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472684@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}