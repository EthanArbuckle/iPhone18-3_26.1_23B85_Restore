uint64_t sub_24AE360A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v5 || (sub_24AE3A51C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AE40930 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE3A51C();

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

uint64_t sub_24AE36184(uint64_t a1)
{
  v2 = sub_24AE36CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE361C0(uint64_t a1)
{
  v2 = sub_24AE36CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeneratedTokens.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7C18, &qword_24AE3D700);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[5];
  v24 = v1[4];
  v25 = v9;
  v12 = v1[7];
  v26 = v1[6];
  v27 = v11;
  v28 = v1[8];
  v29 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v10);
  sub_24AE36CE4();
  sub_24AE3A5DC();
  v32 = v7;
  v33 = v8;
  v34 = v10;
  v38 = 0;
  sub_24AE36D38();
  v14 = v30;
  sub_24AE3A4EC();
  sub_24AE25204(v33, v34);
  if (!v14)
  {
    v32 = v25;
    v33 = v24;
    v16 = v26;
    v15 = v27;
    v34 = v27;
    v35 = v26;
    v18 = v28;
    v17 = v29;
    v36 = v29;
    v37 = v28;
    v38 = 1;
    sub_24AE26834(v25, v24);
    sub_24AE251B0(v15, v16);
    sub_24AE26834(v17, v18);
    sub_24AE36D8C();
    sub_24AE3A4EC();
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    sub_24AE26804(v32, v33);
    sub_24AE25204(v19, v20);
    sub_24AE26804(v21, v22);
  }

  return (*(v31 + 8))(v6, v3);
}

uint64_t GeneratedTokens.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  MEMORY[0x24C232630](*v0);
  sub_24AE251B0(v1, v3);
  sub_24AE3A14C();
  sub_24AE25204(v1, v3);
  sub_24AE3A59C();
  if (v5 >> 60 != 15)
  {
    sub_24AE251B0(v2, v5);
    sub_24AE3A14C();
    sub_24AE26804(v2, v5);
  }

  sub_24AE251B0(v4, v7);
  sub_24AE3A14C();
  sub_24AE25204(v4, v7);
  if (v8 >> 60 == 15)
  {
    return sub_24AE3A59C();
  }

  sub_24AE3A59C();
  sub_24AE251B0(v6, v8);
  sub_24AE3A14C();

  return sub_24AE26804(v6, v8);
}

uint64_t GeneratedTokens.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v4);
  sub_24AE3A14C();
  sub_24AE25204(v2, v4);
  sub_24AE3A59C();
  if (v6 >> 60 != 15)
  {
    sub_24AE251B0(v3, v6);
    sub_24AE3A14C();
    sub_24AE26804(v3, v6);
  }

  sub_24AE251B0(v5, v8);
  sub_24AE3A14C();
  sub_24AE25204(v5, v8);
  sub_24AE3A59C();
  if (v9 >> 60 != 15)
  {
    sub_24AE251B0(v7, v9);
    sub_24AE3A14C();
    sub_24AE26804(v7, v9);
  }

  return sub_24AE3A5BC();
}

uint64_t GeneratedTokens.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7C38, &qword_24AE3D708);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE36CE4();
  sub_24AE3A5CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27) = 0;
  sub_24AE36DE0();
  sub_24AE3A4BC();
  v11 = v33;
  v26 = v32;
  v12 = v34;
  v45 = 1;
  sub_24AE36E34();
  sub_24AE3A4BC();
  (*(v6 + 8))(v9, v5);
  v25 = v41;
  v13 = *(&v42 + 1);
  v24 = v42;
  v23 = *(&v43 + 1);
  v14 = v43;
  v15 = v44;
  v16 = v26;
  *&v27 = v26;
  *(&v27 + 1) = v11;
  *&v28 = v12;
  *(&v28 + 1) = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v17 = v27;
  v18 = v28;
  v19 = v42;
  v20 = v43;
  *(a2 + 64) = v44;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *a2 = v17;
  *(a2 + 16) = v18;
  sub_24AE36E88(&v27, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v16;
  v33 = v11;
  v34 = v12;
  v35 = v25;
  v36 = v24;
  v37 = v13;
  v38 = v14;
  v39 = v23;
  v40 = v15;
  return sub_24AE36EC0(&v32);
}

uint64_t sub_24AE369C0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  MEMORY[0x24C232630](*v0);
  sub_24AE251B0(v1, v2);
  sub_24AE3A14C();
  sub_24AE25204(v1, v2);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  return DiversifiedRootKeys.hash(into:)();
}

uint64_t sub_24AE36A5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[7];
  v5 = v0[8];
  sub_24AE3A57C();
  MEMORY[0x24C232630](v1);
  sub_24AE251B0(v2, v3);
  sub_24AE3A14C();
  sub_24AE25204(v2, v3);
  v8 = *(v0 + 5);
  v7 = *(v0 + 3);
  DiversifiedRootKeys.hash(into:)();
  return sub_24AE3A5BC();
}

BOOL _s12FindMyCrypto15GeneratedTokensV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v22 = a1[4];
  v23 = a1[3];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a2[4];
  v24 = a2[3];
  v25 = a2[6];
  v28 = a2[7];
  v26 = a2[5];
  v27 = a2[8];
  v8 = a2[1];
  v7 = a2[2];
  v10 = a1[1];
  v9 = a1[2];
  sub_24AE251B0(v10, v9);
  sub_24AE251B0(v8, v7);
  v11 = sub_24AE2A27C(v10, v9, v8, v7);
  sub_24AE25204(v8, v7);
  sub_24AE25204(v10, v9);
  if (v11)
  {
    v35 = v23;
    v36 = v22;
    v37 = v2;
    v38 = v3;
    v39 = v4;
    v40 = v5;
    v29 = v24;
    v30 = v6;
    v31 = v26;
    v32 = v25;
    v33 = v28;
    v34 = v27;
    sub_24AE26834(v23, v22);
    sub_24AE251B0(v2, v3);
    sub_24AE26834(v4, v5);
    sub_24AE26834(v24, v6);
    sub_24AE251B0(v26, v25);
    sub_24AE26834(v28, v27);
    MyCrypto19DiversifiedRootKeysV2eeoiySbAC_ACtFZ_0 = _s12FindMyCrypto19DiversifiedRootKeysV2eeoiySbAC_ACtFZ_0(&v35, &v29);
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
    sub_24AE26804(v29, v30);
    sub_24AE25204(v13, v14);
    sub_24AE26804(v15, v16);
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    sub_24AE26804(v35, v36);
    sub_24AE25204(v17, v18);
    sub_24AE26804(v19, v20);
  }

  else
  {
    return 0;
  }

  return MyCrypto19DiversifiedRootKeysV2eeoiySbAC_ACtFZ_0;
}

unint64_t sub_24AE36CE4()
{
  result = qword_27EFB7C20;
  if (!qword_27EFB7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C20);
  }

  return result;
}

unint64_t sub_24AE36D38()
{
  result = qword_27EFB7C28;
  if (!qword_27EFB7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C28);
  }

  return result;
}

unint64_t sub_24AE36D8C()
{
  result = qword_27EFB7C30;
  if (!qword_27EFB7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C30);
  }

  return result;
}

unint64_t sub_24AE36DE0()
{
  result = qword_27EFB7C40;
  if (!qword_27EFB7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C40);
  }

  return result;
}

unint64_t sub_24AE36E34()
{
  result = qword_27EFB7C48;
  if (!qword_27EFB7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C48);
  }

  return result;
}

unint64_t sub_24AE36EF4()
{
  result = qword_27EFB7C50;
  if (!qword_27EFB7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C50);
  }

  return result;
}

uint64_t sub_24AE36F48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AE36F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24AE37020()
{
  result = qword_27EFB7C58;
  if (!qword_27EFB7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C58);
  }

  return result;
}

unint64_t sub_24AE37078()
{
  result = qword_27EFB7C60;
  if (!qword_27EFB7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C60);
  }

  return result;
}

unint64_t sub_24AE370D0()
{
  result = qword_27EFB7C68;
  if (!qword_27EFB7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C68);
  }

  return result;
}

uint64_t sub_24AE37124@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 28)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE371A0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 57)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE3721C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 72)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE37298@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 6)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE37314@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 32)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE37390@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 16)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE3740C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 85)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_24AE25204(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE37490()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x2000000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB7C70 = v4;
  *algn_27EFB7C78 = v5 | 0x4000000000000000;
  return result;
}

uint64_t P256PrivateKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t P256PrivateKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t static P256PrivateKey.random()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24AE3A31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE3A2FC();
  v7 = sub_24AE3A2DC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  return P256PrivateKey.init(data:)(v7, v9, a1);
}

uint64_t P256PrivateKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27EFB7730 != -1)
  {
    swift_once();
  }

  result = sub_24AE2A27C(a1, a2, qword_27EFB7C70, *algn_27EFB7C78);
  if (result)
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
LABEL_25:
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 != 32)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 32)
      {
        goto LABEL_15;
      }

LABEL_12:
      *a3 = a1;
      a3[1] = a2;
      return result;
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v8 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v8 != 1)
  {
LABEL_23:
    v13 = BYTE6(a2);
    goto LABEL_24;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v13 = HIDWORD(a1) - a1;
LABEL_24:
    sub_24AE2A708();
    swift_allocError();
    *v16 = 32;
    *(v16 + 8) = v13;
    *(v16 + 16) = 0;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 P256PrivateKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE37810(uint64_t a1)
{
  v2 = sub_24AE2453C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE3784C(uint64_t a1)
{
  v2 = sub_24AE2453C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t P256PrivateKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7C80, &qword_24AE3DB20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE2453C();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AE37A24(uint64_t a1)
{
  result = sub_24AE37A4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE37A4C()
{
  result = qword_27EFB7C98;
  if (!qword_27EFB7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7C98);
  }

  return result;
}

unint64_t sub_24AE37AA0(void *a1)
{
  a1[1] = sub_24AE37AE0();
  a1[2] = sub_24AE37B34();
  a1[3] = sub_24AE37B88();
  result = sub_24AE37BDC();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE37AE0()
{
  result = qword_27EFB7CA0;
  if (!qword_27EFB7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CA0);
  }

  return result;
}

unint64_t sub_24AE37B34()
{
  result = qword_27EFB7CA8;
  if (!qword_27EFB7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CA8);
  }

  return result;
}

unint64_t sub_24AE37B88()
{
  result = qword_27EFB7CB0;
  if (!qword_27EFB7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CB0);
  }

  return result;
}

unint64_t sub_24AE37BDC()
{
  result = qword_27EFB7CB8;
  if (!qword_27EFB7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CB8);
  }

  return result;
}

unint64_t sub_24AE37C34()
{
  result = qword_27EFB7CC0;
  if (!qword_27EFB7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CC0);
  }

  return result;
}

unint64_t sub_24AE37C8C()
{
  result = qword_27EFB7CC8;
  if (!qword_27EFB7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7CC8);
  }

  return result;
}

uint64_t sub_24AE37CEC()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x2000000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB7CE0 = v4;
  *algn_27EFB7CE8 = v5 | 0x4000000000000000;
  return result;
}

uint64_t SymmetricKey256.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t SymmetricKey256.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

uint64_t static SymmetricKey256.random()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24AE3A2BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24AE3A29C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE3A2AC();
  sub_24AE3A28C();
  sub_24AE3A26C();
  v9 = v13;
  v10 = v14;
  sub_24AE251B0(v13, v14);
  SymmetricKey256.init(data:)(v9, v10, a1);
  (*(v5 + 8))(v8, v4);
  return sub_24AE25204(v9, v10);
}

uint64_t sub_24AE37F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_24AE38674(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_24AE38734(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_24AE25E38(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t SymmetricKey256.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27EFB7738 != -1)
  {
    swift_once();
  }

  result = sub_24AE2A27C(a1, a2, qword_27EFB7CE0, *algn_27EFB7CE8);
  if (result)
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
LABEL_25:
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 != 32)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 32)
      {
        goto LABEL_15;
      }

LABEL_12:
      *a3 = a1;
      a3[1] = a2;
      return result;
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v8 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v8 != 1)
  {
LABEL_23:
    v13 = BYTE6(a2);
    goto LABEL_24;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v13 = HIDWORD(a1) - a1;
LABEL_24:
    sub_24AE2A708();
    swift_allocError();
    *v16 = 32;
    *(v16 + 8) = v13;
    *(v16 + 16) = 0;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 SymmetricKey256.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE381C4(uint64_t a1)
{
  v2 = sub_24AE24C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE38200(uint64_t a1)
{
  v2 = sub_24AE24C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymmetricKey256.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7CF0, &qword_24AE3DE10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE24C78();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24AE383B8(uint64_t a1)
{
  result = sub_24AE383E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE383E0()
{
  result = qword_27EFB7D08;
  if (!qword_27EFB7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D08);
  }

  return result;
}

unint64_t sub_24AE38434(void *a1)
{
  a1[1] = sub_24AE38474();
  a1[2] = sub_24AE384C8();
  a1[3] = sub_24AE3851C();
  result = sub_24AE38570();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE38474()
{
  result = qword_27EFB7D10;
  if (!qword_27EFB7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D10);
  }

  return result;
}

unint64_t sub_24AE384C8()
{
  result = qword_27EFB7D18;
  if (!qword_27EFB7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D18);
  }

  return result;
}

unint64_t sub_24AE3851C()
{
  result = qword_27EFB7D20;
  if (!qword_27EFB7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D20);
  }

  return result;
}

unint64_t sub_24AE38570()
{
  result = qword_27EFB7D28;
  if (!qword_27EFB7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D28);
  }

  return result;
}

unint64_t sub_24AE385C8()
{
  result = qword_27EFB7D30;
  if (!qword_27EFB7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D30);
  }

  return result;
}

unint64_t sub_24AE38620()
{
  result = qword_27EFB7D38;
  if (!qword_27EFB7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D38);
  }

  return result;
}

unint64_t sub_24AE38674(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_24AE2E350(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AE38734(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24AE3A0AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24AE3A05C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24AE3A0FC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24AE387B8()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x1000000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB7D50 = v4;
  *algn_27EFB7D58 = v5 | 0x4000000000000000;
  return result;
}

uint64_t LongTermKey.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE3A16C();
}

uint64_t LongTermKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 LongTermKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t LongTermKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if (qword_27EFB7740 != -1)
  {
    swift_once();
  }

  result = sub_24AE2A27C(a1, a2, qword_27EFB7D50, *algn_27EFB7D58);
  if (result)
  {
    sub_24AE2A708();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
LABEL_31:
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      a3 = 0;
      goto LABEL_30;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 >= 16)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 16)
      {
        goto LABEL_18;
      }

LABEL_12:
      if (v9 == 2)
      {
        v16 = *(a1 + 16);
        v15 = *(a1 + 24);
        a3 = v15 - v16;
        if (!__OFSUB__(v15, v16))
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_26;
      }

      if (v9 != 1)
      {
LABEL_29:
        a3 = BYTE6(a2);
        goto LABEL_30;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        a3 = HIDWORD(a1) - a1;
LABEL_30:
        sub_24AE2A708();
        swift_allocError();
        *v19 = 16;
        *(v19 + 8) = a3;
        *(v19 + 16) = 0;
        goto LABEL_31;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (v9 == 2)
  {
LABEL_26:
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v14 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v9 == 1)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v14 = HIDWORD(a1) - a1;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  v14 = BYTE6(a2);
LABEL_34:
  result = sub_24AE29878(a1, a2, v14, &v20);
  if (!v3)
  {
    *a3 = v20;
  }

  return result;
}

uint64_t sub_24AE38A60(uint64_t a1)
{
  v2 = sub_24AE390C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE38A9C(uint64_t a1)
{
  v2 = sub_24AE390C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LongTermKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7D60, &qword_24AE3E108);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE390C0();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t LongTermKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7D70, &qword_24AE3E110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE390C0();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AE38DAC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24AE3A16C();
}

uint64_t sub_24AE38DF4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  v3 = sub_24AE3A16C();
  v5 = v4;
  sub_24AE3A14C();
  sub_24AE25204(v3, v5);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE38E68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_24AE3A16C();
  v5 = v4;
  sub_24AE3A14C();

  return sub_24AE25204(v3, v5);
}

uint64_t sub_24AE38ED0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE3A57C();
  v3 = sub_24AE3A16C();
  v5 = v4;
  sub_24AE3A14C();
  sub_24AE25204(v3, v5);
  return sub_24AE3A5BC();
}

uint64_t sub_24AE38F4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = sub_24AE3A16C();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_24AE38F80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_24AE3A16C();
  v8 = v7;
  v9 = sub_24AE3A16C();
  v11 = v10;
  v12 = sub_24AE2A27C(v6, v8, v9, v10);
  sub_24AE25204(v9, v11);
  sub_24AE25204(v6, v8);
  return v12 & 1;
}

uint64_t sub_24AE39018(int *a1, int a2)
{
  result = sub_24AE3A0EC();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_24AE3A06C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_24AE3A09C();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_24AE3A08C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

unint64_t sub_24AE390C0()
{
  result = qword_27EFB7D68;
  if (!qword_27EFB7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D68);
  }

  return result;
}

unint64_t sub_24AE39114(uint64_t a1)
{
  result = sub_24AE3913C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE3913C()
{
  result = qword_27EFB7D78;
  if (!qword_27EFB7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D78);
  }

  return result;
}

unint64_t sub_24AE39190(void *a1)
{
  a1[1] = sub_24AE391D0();
  a1[2] = sub_24AE39224();
  a1[3] = sub_24AE39278();
  result = sub_24AE392CC();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE391D0()
{
  result = qword_27EFB7D80;
  if (!qword_27EFB7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D80);
  }

  return result;
}

unint64_t sub_24AE39224()
{
  result = qword_27EFB7D88;
  if (!qword_27EFB7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D88);
  }

  return result;
}

unint64_t sub_24AE39278()
{
  result = qword_27EFB7D90;
  if (!qword_27EFB7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D90);
  }

  return result;
}

unint64_t sub_24AE392CC()
{
  result = qword_27EFB7D98;
  if (!qword_27EFB7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7D98);
  }

  return result;
}

unint64_t sub_24AE39324()
{
  result = qword_27EFB7DA0;
  if (!qword_27EFB7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DA0);
  }

  return result;
}

unint64_t sub_24AE3939C()
{
  result = qword_27EFB7DA8;
  if (!qword_27EFB7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DA8);
  }

  return result;
}

unint64_t sub_24AE393F4()
{
  result = qword_27EFB7DB0;
  if (!qword_27EFB7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DB0);
  }

  return result;
}

unint64_t sub_24AE3944C()
{
  result = qword_27EFB7DB8;
  if (!qword_27EFB7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DB8);
  }

  return result;
}

uint64_t TokenSequenceError.hashValue.getter()
{
  sub_24AE3A57C();
  MEMORY[0x24C232610](0);
  return sub_24AE3A5BC();
}

unint64_t sub_24AE39518()
{
  result = qword_27EFB7DC0;
  if (!qword_27EFB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DC0);
  }

  return result;
}

uint64_t PrivateKey.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27EFB7748 != -1)
  {
    swift_once();
  }

  result = sub_24AE2A27C(a1, a2, qword_27EFB7DC8, unk_27EFB7DD0);
  if (result)
  {
    sub_24AE2A708();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
LABEL_25:
    swift_willThrow();
    return sub_24AE25204(a1, a2);
  }

  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 != 85)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 85)
      {
        goto LABEL_15;
      }

LABEL_12:
      *a3 = a1;
      a3[1] = a2;
      return result;
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) == 85)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v8 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v8 != 1)
  {
LABEL_23:
    v13 = BYTE6(a2);
    goto LABEL_24;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v13 = HIDWORD(a1) - a1;
LABEL_24:
    sub_24AE2A708();
    swift_allocError();
    *v16 = 85;
    *(v16 + 8) = v13;
    *(v16 + 16) = 0;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t PrivateKey.data.getter()
{
  v1 = *v0;
  sub_24AE251B0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_24AE39754()
{
  v0 = sub_24AE3A0AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v4 = 0x5500000000;
  v5 = sub_24AE3A07C();
  result = sub_24AE39018(&v4, 0);
  qword_27EFB7DC8 = v4;
  unk_27EFB7DD0 = v5 | 0x4000000000000000;
  return result;
}

uint64_t PrivateKey.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24AE251B0(v2, v3);
}

__n128 PrivateKey.init(key:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE39840(uint64_t a1)
{
  v2 = sub_24AE39C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE3987C(uint64_t a1)
{
  v2 = sub_24AE39C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7DD8, &qword_24AE3E4D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE251B0(v8, v9);
  sub_24AE39C94();
  sub_24AE3A5DC();
  v12 = v8;
  v13 = v9;
  sub_24AE28998();
  sub_24AE3A4EC();
  sub_24AE25204(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t PrivateKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFB7DE8, &qword_24AE3E4D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE39C94();
  sub_24AE3A5CC();
  if (!v2)
  {
    sub_24AE24590();
    sub_24AE3A4BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_24AE251B0(v4, v3);
  sub_24AE27F98(57, v4, v3, v7);
  result = sub_24AE371A0(v7[0], v7[1], &v8);
  v6 = v9;
  if (v9 >> 60 == 15)
  {
    result = sub_24AE3A49C();
    __break(1u);
  }

  else
  {
    *a1 = v8;
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_24AE39C94()
{
  result = qword_27EFB7DE0;
  if (!qword_27EFB7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DE0);
  }

  return result;
}

unint64_t sub_24AE39CE8(uint64_t a1)
{
  result = sub_24AE39D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE39D10()
{
  result = qword_27EFB7DF0;
  if (!qword_27EFB7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DF0);
  }

  return result;
}

unint64_t sub_24AE39D64(void *a1)
{
  a1[1] = sub_24AE301C8();
  a1[2] = sub_24AE30120();
  a1[3] = sub_24AE39DA4();
  result = sub_24AE39DF8();
  a1[4] = result;
  return result;
}

unint64_t sub_24AE39DA4()
{
  result = qword_27EFB7DF8;
  if (!qword_27EFB7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7DF8);
  }

  return result;
}

unint64_t sub_24AE39DF8()
{
  result = qword_27EFB7E00;
  if (!qword_27EFB7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7E00);
  }

  return result;
}

unint64_t sub_24AE39E50()
{
  result = qword_27EFB7E08;
  if (!qword_27EFB7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7E08);
  }

  return result;
}

unint64_t sub_24AE39EC8()
{
  result = qword_27EFB7E10;
  if (!qword_27EFB7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7E10);
  }

  return result;
}

unint64_t sub_24AE39F20()
{
  result = qword_27EFB7E18;
  if (!qword_27EFB7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7E18);
  }

  return result;
}

unint64_t sub_24AE39F78()
{
  result = qword_27EFB7E20;
  if (!qword_27EFB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFB7E20);
  }

  return result;
}