uint64_t sub_2142B7AB4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B7B64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214388698();
  *a2 = result;
  return result;
}

void sub_2142B7B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0xEB00000000746E61;
  v5 = 0x7069636974726170;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E79616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142B7CB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD50, &qword_2146F6E80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v15 = v1[1];
  v16 = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 33);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321244();
  sub_2146DAA28();
  if (v10)
  {
    if (v10 != 1)
    {
      LOBYTE(v18) = 2;
      v21 = 0;
      sub_214321298();
      goto LABEL_8;
    }

    LOBYTE(v18) = 1;
    v21 = 0;
    sub_214321298();
    v12 = v17;
    sub_2146DA388();
    if (!v12)
    {
      LOBYTE(v18) = v16 & 1;
      *(&v18 + 1) = *(&v16 + 1);
      v21 = 2;
      sub_2143212EC();
LABEL_8:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    v21 = 0;
    sub_214321298();
    v13 = v17;
    sub_2146DA388();
    if (!v13)
    {
      v19 = v15;
      v18 = v16;
      v20 = v9;
      v21 = 1;
      sub_214321340();
      goto LABEL_8;
    }
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2142B7F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD78, &qword_2146F6E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321244();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_214321394();
    sub_2146DA1C8();
    v11 = v18;
    if (v18)
    {
      if (v18 == 1)
      {
        v22 = 2;
        sub_2143213E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v12 = 0;
        v13 = v18;
        v14 = v19;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        v14 = 0;
        v12 = 0;
      }

      v15 = 0uLL;
    }

    else
    {
      v22 = 1;
      sub_21432143C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v12 = v21;
    }

    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v12;
    *(a2 + 33) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142B81C8()
{
  v1 = 0x5F50504733736D69;
  if (*v0 != 1)
  {
    v1 = 0x5F534352616D7367;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_2142B8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143886E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B8258(uint64_t a1)
{
  v2 = sub_214321490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B8294(uint64_t a1)
{
  v2 = sub_214321490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B82D0(char *a1, char *a2)
{
  if (*&aIms3gpp_2[8 * *a1] == *&aIms3gpp_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2142B8338()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aIms3gpp_2[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B8394()
{
  v1 = *&aIms3gpp_2[8 * *v0];
  sub_2146D9698();
}

uint64_t sub_2142B83D4()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aIms3gpp_2[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B842C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438886C();
  *a2 = result;
  return result;
}

uint64_t sub_2142B8528(void *a1)
{
  v2 = v1;
  v26 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IMS3GPPApplicationCharacteristic(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ApplicationCharacteristic(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD98, &qword_2146F6E90);
  v30 = *(v28 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v16 = &v25 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321490();
  sub_2146DAA28();
  sub_2143287C0(v2, v13, type metadata accessor for ApplicationCharacteristic);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v27;
      sub_214328704(v13, v27, type metadata accessor for GSMARCSApplicationCharacteristic);
      v35 = 1;
      v34 = 0;
      sub_2143214E4();
      v20 = v28;
      v21 = v29;
      sub_2146DA388();
      if (!v21)
      {
        v33 = 2;
        sub_214328930(&qword_27C90CDB0, type metadata accessor for GSMARCSApplicationCharacteristic);
        sub_2146DA388();
      }

      sub_21432887C(v19, type metadata accessor for GSMARCSApplicationCharacteristic);
    }

    else
    {
      v37 = 2;
      v36 = 0;
      sub_2143214E4();
      v20 = v28;
      sub_2146DA388();
    }

    return (*(v30 + 8))(v16, v20);
  }

  else
  {
    sub_214328704(v13, v9, type metadata accessor for IMS3GPPApplicationCharacteristic);
    v32 = 0;
    sub_2143214E4();
    v23 = v28;
    v22 = v29;
    sub_2146DA388();
    if (!v22)
    {
      v31 = 1;
      sub_214328930(&qword_27C90CDB8, type metadata accessor for IMS3GPPApplicationCharacteristic);
      sub_2146DA388();
    }

    sub_21432887C(v9, type metadata accessor for IMS3GPPApplicationCharacteristic);
    return (*(v30 + 8))(v16, v23);
  }
}

uint64_t sub_2142B896C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IMS3GPPApplicationCharacteristic(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CDC0, &qword_2146F6E98);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ApplicationCharacteristic(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_214321490();
  v19 = v34;
  sub_2146DAA08();
  if (!v19)
  {
    v20 = v8;
    v29 = v16;
    v34 = v13;
    v22 = v32;
    v21 = v33;
    v38 = 0;
    sub_214321538();
    sub_2146DA1C8();
    v23 = v22;
    if (v39)
    {
      if (v39 == 1)
      {
        v37 = 2;
        sub_214328930(&qword_27C90CDD0, type metadata accessor for GSMARCSApplicationCharacteristic);
        v24 = v30;
        sub_2146DA1C8();
        (*(v23 + 8))(v12, v9);
        v25 = v21;
        v26 = v29;
        sub_214328704(v24, v29, type metadata accessor for GSMARCSApplicationCharacteristic);
      }

      else
      {
        (*(v22 + 8))(v12, v9);
        v25 = v21;
        v26 = v29;
      }
    }

    else
    {
      v36 = 1;
      sub_214328930(&qword_27C90CDD8, type metadata accessor for IMS3GPPApplicationCharacteristic);
      sub_2146DA1C8();
      (*(v22 + 8))(v12, v9);
      v26 = v29;
      sub_214328704(v20, v29, type metadata accessor for IMS3GPPApplicationCharacteristic);
      v25 = v21;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v26, v25, type metadata accessor for ApplicationCharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_2142B8DD8()
{
  v1 = *v0;
  v2 = 0x565F657461647075;
  v3 = 0x5F68736572666572;
  v4 = 0x5F74736575716572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t sub_2142B8E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143888B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B8EC4(uint64_t a1)
{
  v2 = sub_21432158C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B8F00(uint64_t a1)
{
  v2 = sub_21432158C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B8F48()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B9014()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B90CC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B9194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214388AE0();
  *a2 = result;
  return result;
}

void sub_2142B91C4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x657461647075;
  v4 = 0xE700000000000000;
  v5 = 0x74736575716572;
  if (*v1 != 2)
  {
    v5 = 0x5274736575716572;
    v4 = 0xEF65736E6F707365;
  }

  if (*v1)
  {
    v3 = 0x68736572666572;
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

uint64_t sub_2142B92FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CDE0, &qword_2146F6EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432158C();
  sub_2146DAA28();
  memcpy(v21, v3, 0x122uLL);
  v11 = sub_2143215E0(v21);
  v12 = sub_213FBF540(v21);
  v13 = v12;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v19 = *v12;
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      LOBYTE(v20[0]) = 2;
      v22 = 0;
      sub_2143215EC();
      sub_2146DA388();
      if (!v2)
      {
        v20[0] = v19;
        *&v20[1] = v15;
        *(&v20[1] + 1) = v16;
        LOBYTE(v20[2]) = v17;
        v22 = 3;
        sub_214321694();
LABEL_13:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v20[0]) = 3;
      v22 = 0;
      sub_2143215EC();
      sub_2146DA388();
      if (!v2)
      {
        memcpy(v20, v13, 0x122uLL);
        v14 = 4;
        goto LABEL_12;
      }
    }
  }

  else if (v11)
  {
    LOBYTE(v20[0]) = 1;
    v22 = 0;
    sub_2143215EC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v20, v13, 0x122uLL);
      v14 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v22 = 0;
    sub_2143215EC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v20, v13, 0x122uLL);
      v14 = 1;
LABEL_12:
      v22 = v14;
      sub_214321640();
      goto LABEL_13;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142B95FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE08, &qword_2146F6EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v15 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21432158C();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_2143216E8();
    sub_2146DA1C8();
    if (v21 > 1u)
    {
      if (v21 == 2)
      {
        v19 = 3;
        sub_2143217E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[0] = v16[0];
        v17[1] = v16[1];
        LOBYTE(v17[2]) = v16[2];
        sub_21432183C(v17);
        v13 = v17;
LABEL_12:
        memcpy(v18, v13, sizeof(v18));
        memcpy(a2, v18, 0x122uLL);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      v19 = 4;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      memcpy(v16, v17, 0x122uLL);
      sub_214321790(v16);
    }

    else if (v21)
    {
      v19 = 2;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      memcpy(v16, v17, 0x122uLL);
      sub_214321894(v16);
    }

    else
    {
      v19 = 1;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      memcpy(v16, v17, 0x122uLL);
      sub_2143218EC(v16);
    }

    v13 = v16;
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_2142B99C8()
{
  v1 = *v0;
  v2 = 0x534A74656C6C6177;
  v3 = 0x565F7463656A626FLL;
  v4 = 0x61565F7961727261;
  if (v1 != 4)
  {
    v4 = 0x6C61565F6C6F6F62;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x565F676E69727473;
  if (v1 != 1)
  {
    v5 = 0x565F7265626D756ELL;
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

uint64_t sub_2142B9AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214388B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142B9AD4(uint64_t a1)
{
  v2 = sub_214321940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B9B10(uint64_t a1)
{
  v2 = sub_214321940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B9B60()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142B9C38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214388D98();
  *a2 = result;
  return result;
}

void sub_2142B9C68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE500000000000000;
  v6 = 0x7961727261;
  v7 = 1819242338;
  if (v2 != 4)
  {
    v7 = 1819047278;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0x7265626D756ELL;
  if (v2 != 1)
  {
    v8 = 0x7463656A626FLL;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t WalletJSON.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE28, &qword_2146F6EB0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = v1[1];
  v13 = *v1;
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321940();
  sub_2146DAA28();
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      LOBYTE(v15) = 3;
      v16 = 0;
      sub_214321994();
      sub_2146DA388();
      if (v2)
      {
        return (*(v14 + 8))(v7, v4);
      }

      v15 = v13;
      v16 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE40, &qword_2146F6EB8);
      sub_2143219E8();
      goto LABEL_17;
    }

    if (v9 != 4)
    {
      LOBYTE(v15) = 5;
      v16 = 0;
      sub_214321994();
      goto LABEL_17;
    }

    LOBYTE(v15) = 4;
    v16 = 0;
    sub_214321994();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v15) = 5;
      sub_2146DA338();
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        LOBYTE(v15) = 1;
        v16 = 0;
        sub_214321994();
        sub_2146DA388();
        if (!v2)
        {
          LOBYTE(v15) = 2;
          sub_2146DA368();
        }

        return (*(v14 + 8))(v7, v4);
      }

      LOBYTE(v15) = 2;
      v16 = 0;
      sub_214321994();
      sub_2146DA388();
      if (v2)
      {
        return (*(v14 + 8))(v7, v4);
      }

      v15 = v13;
      v16 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE58, &qword_2146F6EC0);
      sub_214321AC0();
LABEL_17:
      sub_2146DA388();
      return (*(v14 + 8))(v7, v4);
    }

    LOBYTE(v15) = 0;
    v16 = 0;
    sub_214321994();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v15) = 1;
      sub_2146DA328();
    }
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t WalletJSON.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE68, &qword_2146F6EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321940();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_214321B4C();
    sub_2146DA1C8();
    v11 = v18;
    if (v18 > 2u)
    {
      if (v18 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE40, &qword_2146F6EB8);
        v19 = 4;
        sub_214321BA0();
LABEL_12:
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v14 = 0;
        v12 = v18;
        goto LABEL_15;
      }

      if (v18 != 4)
      {
        (*(v6 + 8))(v9, v5);
        v12 = 0;
        goto LABEL_14;
      }

      LOBYTE(v18) = 5;
      v13 = sub_2146DA178();
      (*(v6 + 8))(v9, v5);
      v14 = 0;
      v12 = v13 & 1;
    }

    else
    {
      if (v18)
      {
        if (v18 == 1)
        {
          LOBYTE(v18) = 2;
          v12 = sub_2146DA1A8();
          (*(v6 + 8))(v9, v5);
LABEL_14:
          v14 = 0;
          goto LABEL_15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE58, &qword_2146F6EC0);
        v19 = 3;
        sub_214321C78();
        goto LABEL_12;
      }

      LOBYTE(v18) = 1;
      v12 = sub_2146DA168();
      v14 = v15;
      (*(v6 + 8))(v9, v5);
    }

LABEL_15:
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142BA4BC()
{
  v1 = *v0;
  v2 = 0x5F72656B63697473;
  v3 = 0x746F68506576696CLL;
  if (v1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000027;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2142BA59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214388DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BA5C4(uint64_t a1)
{
  v2 = sub_214321D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BA600(uint64_t a1)
{
  v2 = sub_214321D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BA648()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BA744()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BA82C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BA924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214389048();
  *a2 = result;
  return result;
}

void sub_2142BA954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x72656B63697473;
  v7 = 0xE90000000000006FLL;
  v8 = 0x746F68506576696CLL;
  if (v2 != 3)
  {
    v8 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x616D49696A6F6D65;
    v3 = 0xEA00000000006567;
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

uint64_t sub_2142BAABC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE90, &qword_2146F6ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321D04();
  sub_2146DAA28();
  memcpy(v29, v3, 0x139uLL);
  v11 = sub_214321D58(v29);
  v12 = sub_213FBF550(v29);
  if (v11 <= 1)
  {
    if (v11)
    {
      v23 = v12;
      LOBYTE(v28[0]) = 1;
      v30 = 0;
      sub_214321D64();
      sub_2146DA388();
      if (!v2)
      {
        memcpy(v28, v23, 0x111uLL);
        v30 = 2;
        sub_214321E60();
        goto LABEL_15;
      }
    }

    else
    {
      v16 = *v12;
      v17 = *(v12 + 8);
      LOBYTE(v28[0]) = 0;
      v30 = 0;
      sub_214321D64();
      sub_2146DA388();
      if (!v2)
      {
        *&v28[0] = v16;
        *(&v28[0] + 1) = v17;
        v30 = 1;
        sub_214321EB4();
        goto LABEL_15;
      }
    }
  }

  else if (v11 == 2)
  {
    v18 = v12;
    LOBYTE(v28[0]) = 2;
    v30 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v28, v18, 0x139uLL);
      v30 = 3;
      sub_2142FF1A0();
      goto LABEL_15;
    }
  }

  else if (v11 == 3)
  {
    v27 = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    LOBYTE(v28[0]) = 3;
    v30 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      v28[0] = v27;
      *&v28[1] = v13;
      *(&v28[1] + 1) = v14;
      LOBYTE(v28[2]) = v15;
      v30 = 4;
      sub_214321E0C();
LABEL_15:
      sub_2146DA388();
    }
  }

  else
  {
    v27 = *v12;
    v19 = *(v12 + 16);
    v20 = *(v12 + 24);
    v21 = *(v12 + 32);
    v22 = *(v12 + 40);
    v25 = *(v12 + 48);
    v26 = v22;
    LOBYTE(v28[0]) = 4;
    v30 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      v28[0] = v27;
      *&v28[1] = v19;
      *(&v28[1] + 1) = v20;
      LOBYTE(v28[2]) = v21;
      *(&v28[2] + 1) = v26;
      *&v28[3] = v25;
      v30 = 5;
      sub_214321DB8();
      goto LABEL_15;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142BAE70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEA8, &qword_2146F6ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v15 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214321D04();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_214321F08();
    sub_2146DA1C8();
    if (v21 <= 1u)
    {
      if (v21)
      {
        v19 = 2;
        sub_21432210C();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        memcpy(v17, v16, 0x111uLL);
        sub_214322160(v17);
      }

      else
      {
        v19 = 1;
        sub_2143221B8();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[0] = v16[0];
        sub_21432220C(v17);
      }
    }

    else
    {
      if (v21 == 2)
      {
        v19 = 3;
        sub_2142FF14C();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        memcpy(v16, v17, 0x139uLL);
        sub_2143220B4(v16);
        v13 = v16;
LABEL_14:
        memcpy(v18, v13, sizeof(v18));
        memcpy(a2, v18, 0x139uLL);
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      if (v21 == 3)
      {
        v19 = 4;
        sub_214322008();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[0] = v16[0];
        v17[1] = v16[1];
        LOBYTE(v17[2]) = v16[2];
        sub_21432205C(v17);
      }

      else
      {
        v19 = 5;
        sub_214321F5C();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[0] = v16[0];
        v17[1] = v16[1];
        LOBYTE(v17[2]) = v16[2];
        *(&v17[2] + 8) = *(&v16[2] + 8);
        sub_214321FB0(v17);
      }
    }

    v13 = v17;
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_2142BB2BC()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000022;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2142BB384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BB3AC(uint64_t a1)
{
  v2 = sub_214322260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BB3E8(uint64_t a1)
{
  v2 = sub_214322260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BB438()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BB548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438932C();
  *a2 = result;
  return result;
}

unint64_t sub_2142BB578@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0x74697277646E6168;
  v5 = 0x8000000214786C70;
  v6 = 0xD00000000000001CLL;
  v7 = 0x8000000214786C90;
  v8 = 0xD000000000000013;
  result = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000214786CB0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000214786C50;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000214786C30;
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
  return result;
}

uint64_t BalloonPlugin.Payload.encode(to:)(void *a1)
{
  v48 = type metadata accessor for MessagesAppCustomAcknowledgement();
  v2 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DigitalTouchBalloon(0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CombinedPluginAttachmentInfo();
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Handwriting();
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MessagesAppBalloon();
  v13 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BalloonPlugin.Payload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEC0, &qword_2146F6EE0);
  v55 = *(v20 - 8);
  v21 = *(v55 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322260();
  v54 = v23;
  sub_2146DAA28();
  sub_2143287C0(v56, v19, type metadata accessor for BalloonPlugin.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v50;
      sub_214328704(v19, v50, type metadata accessor for CombinedPluginAttachmentInfo);
      v57 = 768;
      sub_2143222B4();
      v38 = v53;
      v32 = v54;
      sub_2146DA388();
      if (!v38)
      {
        HIBYTE(v57) = 4;
        sub_214328930(&qword_27C90CEE0, type metadata accessor for CombinedPluginAttachmentInfo);
        sub_2146DA388();
      }

      v34 = type metadata accessor for CombinedPluginAttachmentInfo;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v31 = v51;
      sub_214328704(v19, v51, type metadata accessor for DigitalTouchBalloon);
      v57 = 1024;
      sub_2143222B4();
      v33 = v53;
      v32 = v54;
      sub_2146DA388();
      if (!v33)
      {
        HIBYTE(v57) = 5;
        sub_214328930(&qword_27C906960, type metadata accessor for DigitalTouchBalloon);
        sub_2146DA388();
      }

      v34 = type metadata accessor for DigitalTouchBalloon;
    }

    else
    {
      v31 = v52;
      sub_214328704(v19, v52, type metadata accessor for MessagesAppCustomAcknowledgement);
      v57 = 1280;
      sub_2143222B4();
      v42 = v53;
      v32 = v54;
      sub_2146DA388();
      if (!v42)
      {
        HIBYTE(v57) = 6;
        sub_214328930(&qword_27C90CED8, type metadata accessor for MessagesAppCustomAcknowledgement);
        sub_2146DA388();
      }

      v34 = type metadata accessor for MessagesAppCustomAcknowledgement;
    }

    v36 = v34;
    v37 = v31;
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_214328704(v19, v15, type metadata accessor for MessagesAppBalloon);
    v57 = 0;
    sub_2143222B4();
    v35 = v53;
    v32 = v54;
    sub_2146DA388();
    if (!v35)
    {
      HIBYTE(v57) = 1;
      sub_214328930(&qword_27C90CEF0, type metadata accessor for MessagesAppBalloon);
      sub_2146DA388();
    }

    v36 = type metadata accessor for MessagesAppBalloon;
    v37 = v15;
LABEL_26:
    sub_21432887C(v37, v36);
    return (*(v55 + 8))(v32, v20);
  }

  v26 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    sub_214328704(v19, v12, type metadata accessor for Handwriting);
    v57 = 256;
    sub_2143222B4();
    v28 = v53;
    v27 = v54;
    sub_2146DA388();
    if (!v28)
    {
      HIBYTE(v57) = 2;
      sub_214328930(&qword_27C90CEE8, type metadata accessor for Handwriting);
      sub_2146DA388();
    }

    v29 = type metadata accessor for Handwriting;
    v30 = v12;
  }

  else
  {
    v39 = v49;
    sub_214328704(v19, v49, type metadata accessor for LinkPresentation.MessagesPayload);
    v57 = 512;
    sub_2143222B4();
    v40 = v53;
    v27 = v54;
    sub_2146DA388();
    if (!v40)
    {
      HIBYTE(v57) = 3;
      sub_214328930(&qword_27C9048A0, type metadata accessor for LinkPresentation.MessagesPayload);
      sub_2146DA388();
    }

    v29 = type metadata accessor for LinkPresentation.MessagesPayload;
    v30 = v39;
  }

  sub_21432887C(v30, v29);
  return (*(v55 + 8))(v27, v26);
}

uint64_t BalloonPlugin.Payload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = type metadata accessor for MessagesAppCustomAcknowledgement();
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DigitalTouchBalloon(0);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v43 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CombinedPluginAttachmentInfo();
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Handwriting();
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v40 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessagesAppBalloon();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEF8, &qword_2146F6EE8);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v38 - v19;
  v21 = type metadata accessor for BalloonPlugin.Payload(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_214322260();
  v27 = v51;
  sub_2146DAA08();
  if (!v27)
  {
    v38[1] = v13;
    v28 = v47;
    v51 = v24;
    v29 = v50;
    v59 = 0;
    sub_214322308();
    v30 = v20;
    sub_2146DA1C8();
    if (v60 > 2u)
    {
      v34 = v29;
      if (v60 == 3)
      {
        v56 = 4;
        sub_214328930(&qword_27C90CF10, type metadata accessor for CombinedPluginAttachmentInfo);
        sub_2146DA1C8();
        (*(v49 + 8))(v30, v17);
        v33 = v51;
        sub_214328704(v28, v51, type metadata accessor for CombinedPluginAttachmentInfo);
      }

      else if (v60 == 4)
      {
        v57 = 5;
        sub_214328930(&qword_27C906930, type metadata accessor for DigitalTouchBalloon);
        v35 = v43;
        sub_2146DA1C8();
        (*(v49 + 8))(v30, v17);
        v33 = v51;
        sub_214328704(v35, v51, type metadata accessor for DigitalTouchBalloon);
      }

      else
      {
        v58 = 6;
        sub_214328930(&qword_27C90CF08, type metadata accessor for MessagesAppCustomAcknowledgement);
        v37 = v44;
        sub_2146DA1C8();
        (*(v49 + 8))(v30, v17);
        v33 = v51;
        sub_214328704(v37, v51, type metadata accessor for MessagesAppCustomAcknowledgement);
      }
    }

    else if (v60)
    {
      if (v60 == 1)
      {
        v54 = 2;
        sub_214328930(&qword_27C90CF18, type metadata accessor for Handwriting);
        v32 = v40;
        sub_2146DA1C8();
        (*(v49 + 8))(v20, v17);
        v33 = v51;
        sub_214328704(v32, v51, type metadata accessor for Handwriting);
      }

      else
      {
        v55 = 3;
        sub_214328930(&qword_27C904898, type metadata accessor for LinkPresentation.MessagesPayload);
        v36 = v42;
        sub_2146DA1C8();
        (*(v49 + 8))(v20, v17);
        v33 = v51;
        sub_214328704(v36, v51, type metadata accessor for LinkPresentation.MessagesPayload);
      }

      v34 = v29;
    }

    else
    {
      v53 = 1;
      sub_214328930(&qword_27C90CF20, type metadata accessor for MessagesAppBalloon);
      sub_2146DA1C8();
      (*(v49 + 8))(v20, v17);
      v33 = v51;
      sub_214328704(v16, v51, type metadata accessor for MessagesAppBalloon);
      v34 = v29;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v33, v34, type metadata accessor for BalloonPlugin.Payload);
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_2142BC7E0()
{
  v1 = *v0;
  v2 = 0x5F6B636162706174;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2142BC8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BC8F0(uint64_t a1)
{
  v2 = sub_21432235C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BC92C(uint64_t a1)
{
  v2 = sub_21432235C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BC97C()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BCAA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214389620();
  *a2 = result;
  return result;
}

void sub_2142BCAD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF726F7461636964;
  v4 = 0x6E49676E69707974;
  v5 = 0xEC00000065676173;
  v6 = 0x73654D6F69647561;
  v7 = 0xEB00000000646574;
  v8 = 0x726F707075736E75;
  if (v2 != 4)
  {
    v8 = 0x706154696A6F6D65;
    v7 = 0xEC0000006B636162;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000656761;
  v10 = 0x7373654D74786574;
  if (v2 != 1)
  {
    v10 = 0x6B636162706174;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2142BCC6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CF28, &qword_2146F6EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432235C();
  sub_2146DAA28();
  v11 = v3[9];
  v61[8] = v3[8];
  v62[0] = v11;
  *(v62 + 9) = *(v3 + 153);
  v12 = v3[5];
  v61[4] = v3[4];
  v61[5] = v12;
  v13 = v3[7];
  v61[6] = v3[6];
  v61[7] = v13;
  v14 = v3[1];
  v61[0] = *v3;
  v61[1] = v14;
  v15 = v3[3];
  v61[2] = v3[2];
  v61[3] = v15;
  v16 = sub_2143223B0(v61);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v29 = nullsub_1(v61);
      LOBYTE(v51) = 3;
      v63 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[3];
        v53 = v29[2];
        v54 = v32;
        v51 = v30;
        v52 = v31;
        v63 = 4;
        sub_214322460();
        goto LABEL_18;
      }
    }

    else if (v16 == 4)
    {
      v23 = nullsub_1(v61);
      v50 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      LOBYTE(v51) = 4;
      v63 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v51 = v50;
        *&v52 = v24;
        BYTE8(v52) = v25;
        v63 = 5;
        sub_21408E85C();
        goto LABEL_18;
      }
    }

    else
    {
      v40 = nullsub_1(v61);
      LOBYTE(v51) = 5;
      v63 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v41 = *v40;
        v42 = *(v40 + 32);
        v52 = *(v40 + 16);
        v53 = v42;
        v51 = v41;
        v43 = *(v40 + 48);
        v44 = *(v40 + 64);
        v45 = *(v40 + 96);
        v56[0] = *(v40 + 80);
        v56[1] = v45;
        v54 = v43;
        v55 = v44;
        v46 = *(v40 + 112);
        v47 = *(v40 + 128);
        v48 = *(v40 + 144);
        v60 = *(v40 + 160);
        v58 = v47;
        v59 = v48;
        v57 = v46;
        v63 = 6;
        sub_21432240C();
        goto LABEL_18;
      }
    }
  }

  else if (v16)
  {
    if (v16 == 1)
    {
      v17 = nullsub_1(v61);
      LOBYTE(v51) = 1;
      v63 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v18 = *v17;
        v19 = v17[2];
        v52 = v17[1];
        v53 = v19;
        v51 = v18;
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[5];
        *(v56 + 9) = *(v17 + 89);
        v55 = v21;
        v56[0] = v22;
        v54 = v20;
        v63 = 2;
        sub_214322508();
LABEL_18:
        sub_2146DA388();
      }
    }

    else
    {
      v33 = nullsub_1(v61);
      LOBYTE(v51) = 2;
      v63 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[3];
        v53 = v33[2];
        v54 = v36;
        v51 = v34;
        v52 = v35;
        v37 = v33[4];
        v38 = v33[5];
        v39 = v33[7];
        v56[1] = v33[6];
        v57 = v39;
        v55 = v37;
        v56[0] = v38;
        v63 = 3;
        sub_2143224B4();
        goto LABEL_18;
      }
    }
  }

  else
  {
    v26 = nullsub_1(v61);
    v27 = *v26;
    v28 = *(v26 + 8);
    LOBYTE(v51) = 0;
    v63 = 0;
    sub_2143223B8();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v51) = v27;
      *(&v51 + 1) = v28;
      v63 = 1;
      sub_21432255C();
      goto LABEL_18;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142BD118@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CF68, &qword_2146F6EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21432235C();
  sub_2146DAA08();
  if (!v2)
  {
    v48 = 0;
    sub_2143225B0();
    sub_2146DA1C8();
    if (v49 > 2u)
    {
      if (v49 == 3)
      {
        v27 = 4;
        sub_214322670();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        sub_2143226C4(&v18);
      }

      else if (v49 == 4)
      {
        v27 = 5;
        sub_21408E808();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v18 = v28;
        *&v19 = v29;
        BYTE8(v19) = BYTE8(v29);
        sub_214322664(&v18);
      }

      else
      {
        v27 = 6;
        sub_214322604();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v25 = v35;
        *v26 = v36;
        *&v26[16] = v37;
        v22 = v32;
        v23[0] = v33[0];
        v23[1] = v33[1];
        v24 = v34;
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        sub_214322658(&v18);
      }
    }

    else if (v49)
    {
      if (v49 == 1)
      {
        v27 = 2;
        sub_214322730();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v22 = v32;
        v23[0] = v33[0];
        *(v23 + 9) = *(v33 + 9);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        sub_214322784(&v18);
      }

      else
      {
        v27 = 3;
        sub_2143226D0();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v22 = v32;
        v23[0] = v33[0];
        v23[1] = v33[1];
        v24 = v34;
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        sub_214322724(&v18);
      }
    }

    else
    {
      v27 = 1;
      sub_214322790();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      LOBYTE(v18) = v28;
      *(&v18 + 1) = *(&v28 + 1);
      sub_2143227E4(&v18);
    }

    v46 = v25;
    *v47 = *v26;
    *&v47[9] = *&v26[9];
    v42 = v22;
    v43 = v23[0];
    v44 = v23[1];
    v45 = v24;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v13 = *v47;
    a2[8] = v25;
    a2[9] = v13;
    *(a2 + 153) = *&v47[9];
    v14 = v43;
    a2[4] = v42;
    a2[5] = v14;
    v15 = v45;
    a2[6] = v44;
    a2[7] = v15;
    v16 = v39;
    *a2 = v38;
    a2[1] = v16;
    v17 = v41;
    a2[2] = v40;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_2142BD66C()
{
  v1 = 0x61565F726568746FLL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD00000000000001DLL;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142BD6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438966C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BD724(uint64_t a1)
{
  v2 = sub_2143227EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BD760(uint64_t a1)
{
  v2 = sub_2143227EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BD79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726568746FLL;
  v5 = 0x8000000214786D20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000214786D20;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7373656E69737562;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEF6567617373654DLL;
  }

  v8 = 0x726568746FLL;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7373656E69737562;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF6567617373654DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142BD898()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BD948()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BD9E4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BDA90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214389834();
  *a2 = result;
  return result;
}

void sub_2142BDAC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6567617373654DLL;
  v4 = 0xE500000000000000;
  v5 = 0x726568746FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x8000000214786D20;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7373656E69737562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142BDBDC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BusinessMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFA0, &qword_2146F6F00);
  v29 = *(v27 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143227EC();
  sub_2146DAA28();
  sub_2143287C0(v2, v11, type metadata accessor for EncodedAppData.EncodedContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v11;
      v17 = v11[1];
      LOBYTE(v30) = 1;
      v32 = 0;
      sub_214322840();
      v19 = v27;
      v20 = v28;
      sub_2146DA388();
      if (!v20)
      {
        v30 = v18;
        v31 = v17;
        v21 = 2;
LABEL_10:
        v32 = v21;
        sub_214322894();
        sub_2146DA388();
      }
    }

    else
    {
      v18 = *v11;
      v17 = v11[1];
      LOBYTE(v30) = 2;
      v32 = 0;
      sub_214322840();
      v19 = v27;
      v25 = v28;
      sub_2146DA388();
      if (!v25)
      {
        v30 = v18;
        v31 = v17;
        v21 = 3;
        goto LABEL_10;
      }
    }

    (*(v29 + 8))(v14, v19);
    return sub_213FB54FC(v18, v17);
  }

  sub_214328704(v11, v7, type metadata accessor for BusinessMessage);
  LOBYTE(v30) = 0;
  v32 = 0;
  sub_214322840();
  v23 = v27;
  v22 = v28;
  sub_2146DA388();
  if (!v22)
  {
    LOBYTE(v30) = 1;
    sub_214328930(&qword_27C90CFC0, type metadata accessor for BusinessMessage);
    sub_2146DA388();
  }

  sub_21432887C(v7, type metadata accessor for BusinessMessage);
  return (*(v29 + 8))(v14, v23);
}

uint64_t sub_2142BDF98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BusinessMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFC8, &qword_2146F6F08);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2143227EC();
  v17 = v27;
  sub_2146DAA08();
  if (!v17)
  {
    v24 = v14;
    v27 = v11;
    v18 = v25;
    v19 = v26;
    v30 = 0;
    sub_2143228E8();
    sub_2146DA1C8();
    if (v29)
    {
      v30 = 2;
      sub_21432293C();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v19;
      v22 = v24;
      *v24 = v29;
    }

    else
    {
      LOBYTE(v29) = 1;
      sub_214328930(&qword_27C90CFE0, type metadata accessor for BusinessMessage);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v24;
      sub_214328704(v6, v24, type metadata accessor for BusinessMessage);
      v21 = v19;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v21, type metadata accessor for EncodedAppData.EncodedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_2142BE3B0()
{
  v1 = 0x6C61565F63747361;
  if (*v0 != 1)
  {
    v1 = 0x61565F726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2142BE41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BE444(uint64_t a1)
{
  v2 = sub_214322990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BE480(uint64_t a1)
{
  v2 = sub_214322990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BE4BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726568746FLL;
  }

  else
  {
    v4 = 1668576097;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726568746FLL;
  }

  else
  {
    v6 = 1668576097;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
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
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142BE558()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BE5D0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BE634()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142BE6B4(uint64_t *a1@<X8>)
{
  v2 = 1668576097;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142BE798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFE8, &qword_2146F6F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322990();
  sub_2146DAA28();
  sub_2143229E4(v3, v17);
  if (v18)
  {
    v12 = *v17;
    v11 = *&v17[8];
    v15[0] = 1;
    v16 = 0;
    sub_214322A40();
    sub_2146DA388();
    if (!v2)
    {
      *v15 = v12;
      *&v15[8] = v11;
      v16 = 2;
      sub_214322A94();
      sub_2146DA388();
    }

    (*(v6 + 8))(v9, v5);
    return sub_213FB54FC(v12, v11);
  }

  else
  {
    memcpy(v15, v17, sizeof(v15));
    v16 = 0;
    v14[7] = 0;
    sub_214322A40();
    sub_2146DA388();
    if (!v2)
    {
      v16 = 1;
      sub_214322AE8();
      sub_2146DA388();
    }

    sub_214309B44(v15);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2142BE9FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D010, &qword_2146F6F18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322990();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v15;
    v19 = 0;
    sub_214322B3C();
    sub_2146DA1C8();
    v12 = (v5 + 8);
    if (v16)
    {
      v19 = 2;
      sub_214322B90();
      sub_2146DA1C8();
      (*v12)(v8, v4);
      v13 = v16;
      v20 = 1;
    }

    else
    {
      v19 = 1;
      sub_214322BE4();
      sub_2146DA1C8();
      (*v12)(v8, v4);
      v14 = v16;
      memcpy(v18, v17, sizeof(v18));
      v13 = v16;
      v20 = 0;
    }

    *v10 = v13;
    memcpy((v10 + 16), v18, 0x1C9uLL);
    *(v10 + 473) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142BECAC()
{
  v1 = 0xD000000000000016;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_2142BED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BED48(uint64_t a1)
{
  v2 = sub_214322C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BED84(uint64_t a1)
{
  v2 = sub_214322C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BEDC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00657461647055;
  v3 = 0xD000000000000010;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x796C6E4F656D616ELL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4 == 1)
  {
    v6 = 0xEE00657461647055;
  }

  else
  {
    v6 = 0x8000000214786D70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000214786D40;
  }

  if (*a2 == 1)
  {
    v3 = 0x796C6E4F656D616ELL;
  }

  else
  {
    v2 = 0x8000000214786D70;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000214786D40;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142BEEA8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BEF64()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BF00C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BF0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214389BC4();
  *a2 = result;
  return result;
}

void sub_2142BF0F4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657461647055;
  v4 = 0x796C6E4F656D616ELL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000214786D70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000214786D40;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t NameAndPhoto.UpdateType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D030, &qword_2146F6F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322C38();
  sub_2146DAA28();
  memcpy(v33, v3, 0x261uLL);
  v11 = sub_214322C8C(v33);
  v12 = sub_213FBF560(v33);
  v13 = v12;
  if (v11)
  {
    if (v11 == 1)
    {
      v14 = *v12;
      v30 = *(v12 + 16);
      v31 = v14;
      v15 = *(v12 + 32);
      v16 = *(v12 + 40);
      LOBYTE(v32[0]) = 1;
      v34 = 0;
      sub_214322C98();
      sub_2146DA388();
      if (!v2)
      {
        v32[0] = v31;
        v32[1] = v30;
        *&v32[2] = v15;
        BYTE8(v32[2]) = v16;
        v34 = 2;
        sub_214322D40();
LABEL_9:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v32[0]) = 2;
      v34 = 0;
      sub_214322C98();
      sub_2146DA388();
      if (!v2)
      {
        v17 = *v13;
        v18 = v13[1];
        v19 = v13[3];
        v32[2] = v13[2];
        v32[3] = v19;
        v32[0] = v17;
        v32[1] = v18;
        v20 = v13[4];
        v21 = v13[5];
        v22 = v13[7];
        v32[6] = v13[6];
        v32[7] = v22;
        v32[4] = v20;
        v32[5] = v21;
        v23 = v13[8];
        v24 = v13[9];
        v25 = v13[11];
        v32[10] = v13[10];
        v32[11] = v25;
        v32[8] = v23;
        v32[9] = v24;
        v26 = v13[12];
        v27 = v13[13];
        v28 = v13[14];
        *(&v32[14] + 9) = *(v13 + 233);
        v32[13] = v27;
        v32[14] = v28;
        v32[12] = v26;
        v34 = 3;
        sub_214322CEC();
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v34 = 0;
    sub_214322C98();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v32, v13, 0x261uLL);
      v34 = 1;
      sub_214322D94();
      goto LABEL_9;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NameAndPhoto.UpdateType.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D060, &qword_2146F6F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v15 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214322C38();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_214322DE8();
    sub_2146DA1C8();
    if (v21)
    {
      if (v21 == 1)
      {
        v19 = 2;
        sub_214322F14();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[0] = v16[0];
        v17[1] = v16[1];
        *&v17[2] = *&v16[2];
        BYTE8(v17[2]) = BYTE8(v16[2]);
        sub_214322F68(v17);
      }

      else
      {
        v19 = 3;
        sub_214322E3C();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v17[12] = v16[12];
        v17[13] = v16[13];
        v17[14] = v16[14];
        *(&v17[14] + 9) = *(&v16[14] + 9);
        v17[8] = v16[8];
        v17[9] = v16[9];
        v17[10] = v16[10];
        v17[11] = v16[11];
        v17[4] = v16[4];
        v17[5] = v16[5];
        v17[6] = v16[6];
        v17[7] = v16[7];
        v17[0] = v16[0];
        v17[1] = v16[1];
        v17[2] = v16[2];
        v17[3] = v16[3];
        sub_214322E90(v17);
      }

      v13 = v17;
    }

    else
    {
      v19 = 1;
      sub_214322FEC();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      memcpy(v16, v17, 0x261uLL);
      sub_214323040(v16);
      v13 = v16;
    }

    memcpy(v18, v13, sizeof(v18));
    memcpy(a2, v18, 0x261uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_2142BF8A4()
{
  v1 = 0x61565F64696C6F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_2142BF914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142BF93C(uint64_t a1)
{
  v2 = sub_2143230C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BF978(uint64_t a1)
{
  v2 = sub_2143230C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BF9B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72477261656E696CLL;
  }

  else
  {
    v4 = 0x64696C6F73;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEE00746E65696461;
  }

  if (*a2)
  {
    v6 = 0x72477261656E696CLL;
  }

  else
  {
    v6 = 0x64696C6F73;
  }

  if (*a2)
  {
    v7 = 0xEE00746E65696461;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142BFA64()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BFAF0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142BFB68()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142BFBFC(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x72477261656E696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00746E65696461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AvatarRecipe.BackgroundRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D088, &qword_2146F6F30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v15 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + 32);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143230C0();
  sub_2146DAA28();
  if (v12)
  {
    LOBYTE(v16) = 1;
    v20 = 0;
    sub_214323114();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v20 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A848, &qword_2146F5FA0);
      sub_21430F8FC();
LABEL_6:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v20 = 0;
    sub_214323114();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v17 = v9;
      v18 = v10;
      v19 = v11;
      v20 = 1;
      sub_2142FCF88();
      goto LABEL_6;
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AvatarRecipe.BackgroundRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0A0, &qword_2146F6F38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143230C0();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_214323168();
    sub_2146DA1C8();
    v12 = v16;
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A848, &qword_2146F5FA0);
      v19 = 2;
      sub_21430F5F0();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v13 = 0;
      v14 = v16;
      v15 = 0uLL;
    }

    else
    {
      v19 = 1;
      sub_2142FCE0C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v14 = v16;
      v15 = v17;
      v13 = v18;
    }

    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 24) = v13;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C01CC()
{
  v1 = 0x565F6F5465766F6DLL;
  v2 = 0x565F6F54656E696CLL;
  if (*v0 != 2)
  {
    v2 = 0x5F6F546576727563;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000027;
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

uint64_t sub_2142C025C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C0284(uint64_t a1)
{
  v2 = sub_2143231BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C02C0(uint64_t a1)
{
  v2 = sub_2143231BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C0308()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C03C8()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C0474()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C0530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214389F64();
  *a2 = result;
  return result;
}

void sub_2142C0560(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6F5465766F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x6F546576727563;
  if (*v1 != 2)
  {
    v5 = 0x74615065736F6C63;
    v4 = 0xE900000000000068;
  }

  if (*v1)
  {
    v3 = 0x6F54656E696CLL;
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

uint64_t AvatarRecipe.MonogramRecipe.CommandType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0B0, &qword_2146F6F40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v14 = v1[1];
  v15 = v9;
  v10 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143231BC();
  sub_2146DAA28();
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      LOBYTE(v16) = 3;
      v18 = 0;
      sub_214323210();
      goto LABEL_12;
    }

    LOBYTE(v16) = 2;
    v18 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v18 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0C8, &qword_2146F6F48);
      sub_214323264();
LABEL_12:
      sub_2146DA388();
    }
  }

  else if (v10)
  {
    LOBYTE(v16) = 1;
    v18 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v17 = v14;
      v12 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v18 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v17 = v14;
      v12 = 1;
LABEL_10:
      v18 = v12;
      sub_21430E274();
      goto LABEL_12;
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AvatarRecipe.MonogramRecipe.CommandType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0D8, &qword_2146F6F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143231BC();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2143232E8();
    sub_2146DA1C8();
    v11 = v15;
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0C8, &qword_2146F6F48);
        v16 = 3;
        sub_21432333C();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        *&v13 = v15;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v13 = 0uLL;
      }
    }

    else
    {
      if (v15)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v16 = v12;
      sub_21430E148();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v13 = v15;
    }

    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C0BE0()
{
  v1 = 0x6D6172676F6E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x61565F696A6F6D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2142C0C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214389FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C0C7C(uint64_t a1)
{
  v2 = sub_2143233C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C0CB8(uint64_t a1)
{
  v2 = sub_2143233C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C0D00()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C0DC0()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C0E6C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C0F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438A134();
  *a2 = result;
  return result;
}

void sub_2142C0F58(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006574;
  v3 = 0x7465756F686C6973;
  v4 = 0x696A6F6D65;
  if (*v1 != 2)
  {
    v4 = 0x6567616D69;
  }

  if (*v1)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t AvatarRecipe.Recipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0F0, &qword_2146F6F58);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v17 = v1[1];
  v18 = v7;
  v8 = v1[3];
  v16 = v1[2];
  v9 = *(v1 + 32);
  v10 = *(v1 + 33);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143233C0();
  sub_2146DAA28();
  if (v10)
  {
    if (v10 != 1)
    {
      if (v16 | v17 | v18 | v8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0;
      }

      if (v14)
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        LOBYTE(v21) = 3;
      }

      v26 = 0;
      sub_214323414();
      goto LABEL_14;
    }

    LOBYTE(v21) = 2;
    v26 = 0;
    sub_214323414();
    v12 = v19;
    sub_2146DA388();
    if (!v12)
    {
      v21 = v18;
      v22 = v17;
      v23 = v16;
      v24 = v8;
      v25 = v9;
      v26 = 2;
      sub_214323468();
LABEL_14:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v21) = 1;
    v26 = 0;
    sub_214323414();
    v13 = v19;
    sub_2146DA388();
    if (!v13)
    {
      v21 = v18;
      v22 = v17;
      v23 = v16;
      v26 = 1;
      sub_2143234BC();
      goto LABEL_14;
    }
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t AvatarRecipe.Recipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D118, &qword_2146F6F60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143233C0();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_214323510();
    sub_2146DA1C8();
    if (v19 > 1u)
    {
      if (v19 == 2)
      {
        v24 = 2;
        sub_214323564();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v11 = v19;
        v12 = v20;
        v13 = v21;
        v14 = v22;
        v16 = 1;
        v15 = v23;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 2;
        v11 = 1;
      }
    }

    else if (v19)
    {
      v24 = 1;
      sub_2143235B8();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v11 = v19;
      v12 = v20;
      v13 = v21;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 33) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C160C()
{
  v1 = *v0;
  v2 = 0x565F736F746F6870;
  v3 = 0x5F63696D616E7964;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6D6172676F6E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x746E656964617267;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  if (v1 != 1)
  {
    v2 = 0x565F696A6F6D656DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2142C1714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438A180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C173C(uint64_t a1)
{
  v2 = sub_21432360C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C1778(uint64_t a1)
{
  v2 = sub_21432360C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C17C8()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C18C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438A43C();
  *a2 = result;
  return result;
}

void sub_2142C18F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736F746F6870;
  v5 = 0xE800000000000000;
  v6 = 0x746E656964617267;
  v7 = 0xEB00000000584656;
  v8 = 0x746E656964617267;
  if (v2 != 4)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x696A6F6D656DLL;
  if (v2 != 1)
  {
    v10 = 0x6D6172676F6E6F6DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PosterArchive.Provider.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D138, &qword_2146F6F68);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432360C();
  sub_2146DAA28();
  sub_214323660(v3, v19);
  if (v20 > 2u)
  {
    if (v20 == 3)
    {
      v14 = *&v19[16];
      v15 = *v19;
      v11 = v19[32];
      v17[0] = 3;
      LOBYTE(v16[0]) = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        *v17 = v15;
        *&v17[16] = v14;
        v17[32] = v11;
        LOBYTE(v16[0]) = 4;
        sub_2143237B8();
LABEL_22:
        sub_2146DA388();
      }
    }

    else
    {
      if (v20 == 4)
      {
        *&v17[128] = *&v19[128];
        *&v17[144] = *&v19[144];
        *&v17[160] = *&v19[160];
        *&v17[174] = *&v19[174];
        *&v17[64] = *&v19[64];
        *&v17[80] = *&v19[80];
        *&v17[96] = *&v19[96];
        *&v17[112] = *&v19[112];
        *v17 = *v19;
        *&v17[16] = *&v19[16];
        *&v17[32] = *&v19[32];
        *&v17[48] = *&v19[48];
        LOBYTE(v16[0]) = 4;
        v18 = 0;
        sub_2143236BC();
        sub_2146DA388();
        if (!v2)
        {
          v16[8] = *&v17[128];
          v16[9] = *&v17[144];
          v16[10] = *&v17[160];
          *(&v16[10] + 14) = *&v17[174];
          v16[4] = *&v17[64];
          v16[5] = *&v17[80];
          v16[6] = *&v17[96];
          v16[7] = *&v17[112];
          v16[0] = *v17;
          v16[1] = *&v17[16];
          v16[2] = *&v17[32];
          v16[3] = *&v17[48];
          v18 = 5;
          sub_214323764();
          sub_2146DA388();
        }

        (*(v21 + 8))(v8, v5);
        return sub_2142FD404(v17);
      }

      v12 = v19[0];
      v14 = *&v19[24];
      v15 = *&v19[8];
      v13 = v19[40];
      v17[0] = 5;
      LOBYTE(v16[0]) = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        v17[0] = v12;
        *&v17[24] = v14;
        *&v17[8] = v15;
        v17[40] = v13;
        LOBYTE(v16[0]) = 6;
        sub_214323710();
        goto LABEL_22;
      }
    }

    return (*(v21 + 8))(v8, v5);
  }

  if (v20)
  {
    if (v20 == 1)
    {
      memcpy(v17, v19, 0x209uLL);
      LOBYTE(v16[0]) = 1;
      v18 = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        LOBYTE(v16[0]) = 2;
        sub_214323908();
        sub_2146DA388();
      }

      sub_2143238B4(v17);
      return (*(v21 + 8))(v8, v5);
    }

    *&v17[160] = *&v19[160];
    *&v17[176] = *&v19[176];
    *&v17[185] = *&v19[185];
    *&v17[96] = *&v19[96];
    *&v17[112] = *&v19[112];
    *&v17[128] = *&v19[128];
    *&v17[144] = *&v19[144];
    *&v17[32] = *&v19[32];
    *&v17[48] = *&v19[48];
    *&v17[64] = *&v19[64];
    *&v17[80] = *&v19[80];
    *v17 = *v19;
    *&v17[16] = *&v19[16];
    LOBYTE(v16[0]) = 2;
    v18 = 0;
    sub_2143236BC();
    sub_2146DA388();
    if (!v2)
    {
      v16[10] = *&v17[160];
      v16[11] = *&v17[176];
      *(&v16[11] + 9) = *&v17[185];
      v16[6] = *&v17[96];
      v16[7] = *&v17[112];
      v16[8] = *&v17[128];
      v16[9] = *&v17[144];
      v16[2] = *&v17[32];
      v16[3] = *&v17[48];
      v16[4] = *&v17[64];
      v16[5] = *&v17[80];
      v16[0] = *v17;
      v16[1] = *&v17[16];
      v18 = 3;
      sub_214323860();
      sub_2146DA388();
    }

    (*(v21 + 8))(v8, v5);
    return sub_21432380C(v17);
  }

  else
  {
    memcpy(v17, v19, sizeof(v17));
    LOBYTE(v16[0]) = 0;
    v18 = 0;
    sub_2143236BC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v16, v17, 0x2D8uLL);
      v18 = 1;
      sub_21432395C();
      sub_2146DA388();
    }

    (*(v21 + 8))(v8, v5);
    return sub_2142FC228(v17);
  }
}

uint64_t PosterArchive.Provider.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D180, &qword_2146F6F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21432360C();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    sub_2143239B0();
    sub_2146DA1C8();
    v13 = v20;
    if (v20 > 2u)
    {
      if (v20 == 3)
      {
        v26 = 4;
        sub_214323AAC();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v16 = 0;
        v14 = v20;
        v17 = v21;
        v15 = v22;
        LOBYTE(v18) = v23;
        goto LABEL_16;
      }

      if (v20 != 4)
      {
        v26 = 6;
        sub_214323A04();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v14 = v20;
        v17 = v21;
        v15 = v22;
        LOBYTE(v18) = v23;
        LOBYTE(v5) = v24;
        v16 = v23 & 0xFFFFFFFFFFFFFF00;
        v28 = v24;
        goto LABEL_16;
      }

      v26 = 5;
      sub_214323A58();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v14 = v20;
      v17 = v21;
      v15 = v22;
      v18 = v23;
      LOBYTE(v5) = v24;
      v27[6] = v25[6];
      v27[7] = v25[7];
      v27[8] = v25[8];
      *(&v27[8] + 13) = *(&v25[8] + 13);
    }

    else
    {
      if (!v20)
      {
        v26 = 1;
        sub_214323BA8();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v14 = v20;
        v19 = v21;
        v15 = v22;
        LOBYTE(v5) = v24;
        memcpy(v27, v25, 0x2AFuLL);
        v17 = v21;
        v16 = v23 & 0xFFFFFFFFFFFFFF00;
        LOBYTE(v18) = v23;
        goto LABEL_16;
      }

      if (v20 == 1)
      {
        v26 = 2;
        sub_214323B54();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v14 = v20;
        v19 = v21;
        v15 = v22;
        v16 = v23 & 0xFFFFFFFFFFFFFF00;
        LOBYTE(v5) = v24;
        memcpy(v27, v25, 0x1E0uLL);
        v17 = v21;
        LOBYTE(v18) = v23;
LABEL_16:
        *a2 = v14;
        *(a2 + 8) = v17;
        *(a2 + 24) = v15;
        *(a2 + 32) = v16 | v18;
        *(a2 + 40) = v5;
        memcpy((a2 + 41), v27, 0x2AFuLL);
        *(a2 + 728) = v13;
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v26 = 3;
      sub_214323B00();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v14 = v20;
      v17 = v21;
      v15 = v22;
      v18 = v23;
      LOBYTE(v5) = v24;
      v27[6] = v25[6];
      v27[7] = v25[7];
      v27[8] = v25[8];
      v27[9] = v25[9];
    }

    v27[2] = v25[2];
    v27[3] = v25[3];
    v27[4] = v25[4];
    v27[5] = v25[5];
    v16 = v18 & 0xFFFFFFFFFFFFFF00;
    v27[0] = v25[0];
    v27[1] = v25[1];
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_2142C25A4()
{
  v1 = 0x6569666963657073;
  if (*v0 != 1)
  {
    v1 = 0x565F6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656853656C797473;
  }
}

uint64_t sub_2142C2620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438A488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C2648(uint64_t a1)
{
  v2 = sub_214323BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C2684(uint64_t a1)
{
  v2 = sub_214323BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C26C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6574737973;
  }

  else
  {
    v4 = 0x6569666963657073;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6574737973;
  }

  else
  {
    v6 = 0x6569666963657073;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142C2768()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C27EC()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C285C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C28E8(uint64_t *a1@<X8>)
{
  v2 = 0x6569666963657073;
  if (*v1)
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t StyleSheet.Font.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D1C0, &qword_2146F6F78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323BFC();
  sub_2146DAA28();
  if (v10 < 0)
  {
    LOBYTE(v16) = 1;
    v21 = 0;
    sub_214323C50();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v16) = v15;
      v21 = 2;
      sub_214323CA4();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v21 = 0;
    sub_214323C50();
    sub_2146DA388();
    if (!v2)
    {
      v16 = v15;
      v17 = v10;
      v18 = BYTE2(v10);
      v19 = BYTE3(v10);
      v20 = v14;
      v21 = 1;
      sub_214323CF8();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Font.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D1E8, &qword_2146F6F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323BFC();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_214323D4C();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v17)
    {
      v20 = 2;
      sub_214323DA0();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = 0;
      v14 = v17;
      v15 = 0x8000000000000000;
    }

    else
    {
      v20 = 1;
      sub_214323DF4();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v14 = v17;
      v15 = v18;
      v13 = v19;
    }

    *a2 = v14;
    a2[1] = v15;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C2E7C()
{
  v1 = 0x6574756C6F736261;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142C2F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438A608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C2F34(uint64_t a1)
{
  v2 = sub_214323E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C2F70(uint64_t a1)
{
  v2 = sub_214323E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C2FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574756C6F736261;
  }

  else
  {
    v4 = 0x6569666963657073;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574756C6F736261;
  }

  else
  {
    v6 = 0x6569666963657073;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142C3058()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C30E0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C3154()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C31E4(uint64_t *a1@<X8>)
{
  v2 = 0x6569666963657073;
  if (*v1)
  {
    v2 = 0x6574756C6F736261;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t StyleSheet.Font.Size.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D208, &qword_2146F6F88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v12 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323E48();
  sub_2146DAA28();
  if (v9 < 0)
  {
    v20 = 1;
    v19 = 0;
    sub_214323E9C();
    sub_2146DA388();
    if (!v2)
    {
      v18 = v12;
      v17 = 3;
      sub_214323EF0();
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    sub_214323E9C();
    sub_2146DA388();
    if (!v2)
    {
      v15 = 1;
      sub_2146DA348();
      v14 = v9;
      v13 = 2;
      sub_214323F44();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Font.Size.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D230, &qword_2146F6F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214323E48();
  sub_2146DAA08();
  if (!v2)
  {
    v16[14] = 0;
    sub_214323F98();
    sub_2146DA1C8();
    if (v16[15])
    {
      v16[12] = 3;
      sub_214323FEC();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v12 = v16[13];
      v13 = 0x80;
    }

    else
    {
      v16[11] = 1;
      sub_2146DA188();
      v15 = v14;
      v16[9] = 2;
      sub_214324040();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v13 = v16[10];
      v12 = v15;
    }

    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C37A4()
{
  v1 = 0x656853656C797473;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2142C3880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438A7D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C38A8(uint64_t a1)
{
  v2 = sub_214324094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C38E4(uint64_t a1)
{
  v2 = sub_214324094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C3920(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F7779654B7461;
  }

  else
  {
    v2 = 0x656966696C617571;
  }

  if (*a2)
  {
    v3 = 0x726F7779654B7461;
  }

  else
  {
    v3 = 0x656966696C617571;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2142C39B4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C3A34()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C3A98()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C3B20(uint64_t *a1@<X8>)
{
  v2 = 0x656966696C617571;
  if (*v1)
  {
    v2 = 0x726F7779654B7461;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000064;
}

uint64_t StyleSheet.Rule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D250, &qword_2146F6F98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v17 = v1[1];
  v18 = v9;
  v10 = v1[2];
  v15[1] = v1[3];
  v16 = v10;
  v15[0] = v1[4];
  v11 = *(v1 + 40);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324094();
  sub_2146DAA28();
  if ((v11 & 1) == 0)
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    sub_2143240E8();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v19) = 1;
      sub_2146DA328();
      v19 = v16;
      v13 = 2;
      goto LABEL_7;
    }

    return (*(v5 + 8))(v8, v4);
  }

  LOBYTE(v19) = 1;
  v20 = 0;
  sub_2143240E8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  LOBYTE(v19) = 3;
  sub_2146DA328();
  LOBYTE(v19) = 4;
  sub_2146DA328();
  v19 = v15[0];
  v13 = 5;
LABEL_7:
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
  sub_21432413C();
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Rule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D280, &qword_2146F6FA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324094();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    sub_214324214();
    sub_2146DA1C8();
    v12 = v25;
    if (v25)
    {
      LOBYTE(v25) = 3;
      v13 = sub_2146DA168();
      v15 = v14;
      v24 = v13;
      LOBYTE(v25) = 4;
      v22 = sub_2146DA168();
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
      v26 = 5;
      sub_214324268();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v19 = v25;
      v20 = v22;
      v21 = v23;
    }

    else
    {
      LOBYTE(v25) = 1;
      v17 = sub_2146DA168();
      v15 = v18;
      v24 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D268, &qword_2146F6FA0);
      v26 = 2;
      sub_214324268();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v21 = 0;
      v19 = 0;
      v20 = v25;
    }

    *a2 = v24;
    *(a2 + 8) = v15;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v19;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C4234()
{
  v1 = 0x5F64696C61766E69;
  v2 = *v0;
  v3 = 0x6C61565F746E6F66;
  if (v2 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x67696C4174786574;
  if (v2 == 4)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x61565F726F6C6F63;
  if (v2 == 2)
  {
    v5 = 0x5F64696C61766E69;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142C4350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438AA40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C4378(uint64_t a1)
{
  v2 = sub_214324340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C43B4(uint64_t a1)
{
  v2 = sub_214324340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C4404()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C44FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438AD50();
  *a2 = result;
  return result;
}

void sub_2142C452C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE90000000000006ELL;
  v6 = 0x67696C4174786574;
  v7 = 0xE400000000000000;
  v8 = 1953394534;
  if (v2 != 4)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEF6567616D49646ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x726F6C6F63;
  if (v2 != 1)
  {
    v10 = 0x756F72676B636162;
    v9 = 0xEF726F6C6F43646ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t StyleSheet.Rule.Declaration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2A0, &qword_2146F6FB0);
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v15 = v1[1];
  v16 = v8;
  v9 = v1[3];
  v14 = v1[2];
  v10 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324340();
  sub_2146DAA28();
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      LOBYTE(v18) = 3;
      v21 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        LOBYTE(v18) = v16;
        v21 = 5;
        sub_21432443C();
        goto LABEL_18;
      }
    }

    else if (v10 == 4)
    {
      LOBYTE(v18) = 4;
      v21 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v18 = v16;
        v19 = v15;
        v20 = v14;
        v21 = 6;
        sub_2143243E8();
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v18) = 5;
      v21 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v18 = v16;
        v19 = v15;
        v21 = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        goto LABEL_18;
      }
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      LOBYTE(v18) = 1;
      v21 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v18 = v16;
        LODWORD(v19) = v15;
        v21 = 3;
        sub_214324514();
LABEL_18:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v18) = 2;
      v21 = 0;
      sub_214324394();
      sub_2146DA388();
      if (!v2)
      {
        v18 = v16;
        LODWORD(v19) = v15;
        BYTE4(v19) = BYTE4(v15) & 1;
        v21 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2C8, &qword_2146F6FB8);
        sub_214324490();
        goto LABEL_18;
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    v21 = 0;
    sub_214324394();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v18) = 1;
      sub_2146DA328();
      LOBYTE(v18) = 2;
      sub_2146DA328();
    }
  }

  return (*(v17 + 8))(v7, v4);
}

uint64_t StyleSheet.Rule.Declaration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2E0, &qword_2146F6FC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324340();
  sub_2146DAA08();
  if (!v2)
  {
    v27 = 0;
    sub_214324568();
    sub_2146DA1C8();
    v12 = v24;
    if (v24 > 2u)
    {
      if (v24 == 3)
      {
        v27 = 5;
        sub_214324610();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v16 = 0;
        v13 = 0;
        v14 = 0;
        v15 = v24;
      }

      else if (v24 == 4)
      {
        v27 = 6;
        sub_2143245BC();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v14 = 0;
        v15 = v24;
        v16 = v25;
        v13 = v26;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        v27 = 7;
        sub_2142E12FC();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        v14 = 0;
        v15 = v24;
        v16 = v25;
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v27 = 3;
        sub_2143246E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        v14 = 0;
        v15 = v24;
        v16 = v25;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D2C8, &qword_2146F6FB8);
        v27 = 4;
        sub_214324664();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        v14 = 0;
        v15 = v24;
        v19 = 0x100000000;
        if (!BYTE4(v25))
        {
          v19 = 0;
        }

        v16 = v19 | v25;
      }
    }

    else
    {
      LOBYTE(v24) = 1;
      v17 = sub_2146DA168();
      v16 = v18;
      v23 = v17;
      LOBYTE(v24) = 2;
      v13 = sub_2146DA168();
      v20 = v9;
      v22 = v21;
      (*(v6 + 8))(v20, v5);
      v14 = v22;
      v15 = v23;
    }

    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C4F74()
{
  v1 = *v0;
  v2 = 0x61565F6E69616C70;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x6C61565F6C696D73;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2142C5044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438AD9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C506C(uint64_t a1)
{
  v2 = sub_21432473C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C50A8(uint64_t a1)
{
  v2 = sub_21432473C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C50F0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C51D0()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C529C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C5378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438B000();
  *a2 = result;
  return result;
}

void sub_2142C53A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E69616C70;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x656D686361747461;
  v7 = 0xD000000000000012;
  v8 = 0x8000000214786E80;
  if (v2 != 3)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000214786EA0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 1818848627;
    v3 = 0xE400000000000000;
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

uint64_t sub_2142C54F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D310, &qword_2146F6FC8);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v14 = *v1;
  v15 = v8;
  v9 = v1[2];
  v13 = v1[3];
  v10 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432473C();
  sub_2146DAA28();
  if (v10 <= 1)
  {
    if (v10)
    {
      LOBYTE(v17) = 1;
      v21 = 0;
      sub_214324790();
      sub_2146DA388();
      if (!v2)
      {
        v17 = v14;
        v18 = v15;
        v19 = v9;
        v20 = v13;
        v21 = 2;
        sub_21405D548();
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
      v21 = 0;
      sub_214324790();
      sub_2146DA388();
      if (!v2)
      {
        v17 = v14;
        v18 = v15;
        v21 = 1;
        sub_21405D2CC();
        goto LABEL_15;
      }
    }
  }

  else if (v10 == 2)
  {
    LOBYTE(v17) = 2;
    v21 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v17 = v14;
      v18 = v15;
      v19 = v9;
      v20 = v13;
      v21 = 3;
      sub_21405D61C();
      goto LABEL_15;
    }
  }

  else if (v10 == 3)
  {
    LOBYTE(v17) = 3;
    v21 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v17 = v14;
      LOBYTE(v18) = v15;
      v21 = 4;
      sub_21405D3A0();
LABEL_15:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v17) = 4;
    v21 = 0;
    sub_214324790();
    sub_2146DA388();
    if (!v2)
    {
      v17 = v14;
      v18 = v15;
      v21 = 5;
      sub_21405D474();
      goto LABEL_15;
    }
  }

  return (*(v16 + 8))(v7, v4);
}

uint64_t sub_2142C5850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D328, &qword_2146F6FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432473C();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_2143247E4();
    sub_2146DA1C8();
    v12 = v16;
    if (v16 <= 1u)
    {
      if (!v16)
      {
        v19 = 1;
        sub_21405D278();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
        goto LABEL_12;
      }

      v19 = 2;
      sub_21405D4F4();
    }

    else
    {
      if (v16 != 2)
      {
        if (v16 == 3)
        {
          v19 = 4;
          sub_21405D34C();
          sub_2146DA1C8();
          (*(v6 + 8))(v9, v5);
          v13 = 0;
          v14 = 0;
          *&v15 = v16;
          *(&v15 + 1) = BYTE8(v16);
LABEL_15:
          *a2 = v15;
          *(a2 + 16) = v13;
          *(a2 + 24) = v14;
          *(a2 + 32) = v12;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v19 = 5;
        sub_21405D420();
        sub_2146DA1C8();
        (*(v6 + 8))(v9, v5);
LABEL_12:
        v13 = 0;
        v14 = 0;
        v15 = v16;
        goto LABEL_15;
      }

      v19 = 3;
      sub_21405D5C8();
    }

    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v16;
    v13 = v17;
    v14 = v18;
    goto LABEL_15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C5B90(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001ALL;
      if (a1 != 10)
      {
        v6 = 0x6449617245736C6DLL;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000020;
      if (a1 == 7)
      {
        v5 = 0xD000000000000016;
      }

      if (a1 == 6)
      {
        return 0xD000000000000021;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x65756C61565F6F74;
    v2 = 0x656D695465746164;
    v3 = 0x63617073656D616ELL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x6C61565F6D6F7266;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2142C5D54(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 28532;
    v5 = 0x656D695465746164;
    v6 = 0x63617073656D616ELL;
    if (a1 != 3)
    {
      v6 = 0x7373654D6E646D69;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 1836020326;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v2 = 0xD000000000000015;
      v1 = 0xD000000000000014;
      if (a1 != 9)
      {
        v1 = 0x6449617245736C6DLL;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000010;
      v2 = 0xD00000000000001BLL;
      if (a1 != 6)
      {
        v1 = 0xD00000000000001ALL;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142C5EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438B04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C5F1C(uint64_t a1)
{
  v2 = sub_214324838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C5F58(uint64_t a1)
{
  v2 = sub_214324838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C5FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438B478();
  *a2 = result;
  return result;
}

unint64_t sub_2142C6024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142C5D54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CPIMMessage.Header.encode(to:)(void *a1)
{
  v83 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  v2 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CPIMMessage.Header(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D338, &qword_2146F6FD8);
  v14 = *(v13 - 8);
  v87 = v13;
  v88 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v82 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324838();
  v86 = v17;
  sub_2146DAA28();
  sub_2143287C0(v84, v12, type metadata accessor for CPIMMessage.Header);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v44 = v8;
        sub_214328704(v12, v8, type metadata accessor for CPIMMessage.DateTimeHeader);
        LOBYTE(v89) = 2;
        v94 = 0;
        sub_21432488C();
        v26 = v86;
        v25 = v87;
        v45 = v85;
        sub_2146DA388();
        if (!v45)
        {
          LOBYTE(v89) = 3;
          sub_214328930(&qword_27C90D390, type metadata accessor for CPIMMessage.DateTimeHeader);
          sub_2146DA388();
        }

        v28 = type metadata accessor for CPIMMessage.DateTimeHeader;
        v29 = v44;
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v56 = *v12;
          v57 = *(v12 + 1);
          v59 = *(v12 + 2);
          v58 = *(v12 + 3);
          v60 = v12[32];
          LOBYTE(v89) = 4;
          v94 = 0;
          sub_21432488C();
          v35 = v86;
          v36 = v87;
          v61 = v85;
          sub_2146DA388();
          if (v61)
          {
            goto LABEL_38;
          }

          v89 = v56;
          v90 = v57;
          v91 = v59;
          v92 = v58;
          v93 = v60;
          v94 = 5;
          sub_214324AD8();
          goto LABEL_37;
        }

        sub_214328704(v12, v4, type metadata accessor for CPIMMessage.NamespaceHeader);
        LOBYTE(v89) = 3;
        v94 = 0;
        sub_21432488C();
        v26 = v86;
        v25 = v87;
        v27 = v85;
        sub_2146DA388();
        if (!v27)
        {
          LOBYTE(v89) = 4;
          sub_214328930(&qword_27C90D388, type metadata accessor for CPIMMessage.NamespaceHeader);
          sub_2146DA388();
        }

        v28 = type metadata accessor for CPIMMessage.NamespaceHeader;
        v29 = v4;
      }

      sub_21432887C(v29, v28);
      return (*(v88 + 8))(v26, v25);
    }

    if (EnumCaseMultiPayload)
    {
      v62 = *v12;
      v63 = *(v12 + 1);
      v65 = *(v12 + 2);
      v64 = *(v12 + 3);
      v66 = v12[32];
      LOBYTE(v89) = 1;
      v94 = 0;
      sub_21432488C();
      v35 = v86;
      v36 = v87;
      v67 = v85;
      sub_2146DA388();
      if (v67)
      {
        goto LABEL_38;
      }

      v89 = v62;
      v90 = v63;
      v91 = v65;
      v92 = v64;
      v93 = v66;
      v94 = 2;
      sub_214324B2C();
    }

    else
    {
      v38 = *v12;
      v39 = *(v12 + 1);
      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      v42 = v12[32];
      LOBYTE(v89) = 0;
      v94 = 0;
      sub_21432488C();
      v35 = v86;
      v36 = v87;
      v43 = v85;
      sub_2146DA388();
      if (v43)
      {
        goto LABEL_38;
      }

      v89 = v38;
      v90 = v39;
      v91 = v41;
      v92 = v40;
      v93 = v42;
      v94 = 1;
      sub_214324B80();
    }

LABEL_37:
    sub_2146DA388();
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v46 = *v12;
      LOBYTE(v89) = 5;
      v94 = 0;
      sub_21432488C();
      v47 = v86;
      v48 = v87;
      v49 = v85;
      sub_2146DA388();
      if (!v49)
      {
        v89 = v46;
        v94 = 6;
        sub_214324A84();
        sub_2146DA388();
      }

      (*(v88 + 8))(v47, v48);
    }

    if (EnumCaseMultiPayload == 6)
    {
      v20 = *v12;
      LOBYTE(v89) = 6;
      v94 = 0;
      sub_21432488C();
      v21 = v86;
      v22 = v87;
      v23 = v85;
      sub_2146DA388();
      if (!v23)
      {
        LOBYTE(v89) = v20;
        v94 = 7;
        sub_214324A30();
        sub_2146DA388();
      }

      return (*(v88 + 8))(v21, v22);
    }

    v68 = *v12;
    v69 = *(v12 + 1);
    v71 = *(v12 + 2);
    v70 = *(v12 + 3);
    v72 = v12[32];
    LOBYTE(v89) = 7;
    v94 = 0;
    sub_21432488C();
    v35 = v86;
    v36 = v87;
    v73 = v85;
    sub_2146DA388();
    if (!v73)
    {
      v89 = v68;
      v90 = v69;
      v91 = v71;
      v92 = v70;
      v93 = v72;
      v94 = 8;
      sub_2143249DC();
      goto LABEL_37;
    }

LABEL_38:
    (*(v88 + 8))(v35, v36);
  }

  if (EnumCaseMultiPayload == 8)
  {
    v50 = *v12;
    v51 = *(v12 + 1);
    v53 = *(v12 + 2);
    v52 = *(v12 + 3);
    v54 = v12[32];
    LOBYTE(v89) = 8;
    v94 = 0;
    sub_21432488C();
    v35 = v86;
    v36 = v87;
    v55 = v85;
    sub_2146DA388();
    if (v55)
    {
      goto LABEL_38;
    }

    v89 = v50;
    v90 = v51;
    v91 = v53;
    v92 = v52;
    v93 = v54;
    v94 = 9;
    sub_214324988();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v30 = *v12;
    v31 = *(v12 + 1);
    v33 = *(v12 + 2);
    v32 = *(v12 + 3);
    v34 = v12[32];
    LOBYTE(v89) = 9;
    v94 = 0;
    sub_21432488C();
    v35 = v86;
    v36 = v87;
    v37 = v85;
    sub_2146DA388();
    if (v37)
    {
      goto LABEL_38;
    }

    v89 = v30;
    v90 = v31;
    v91 = v33;
    v92 = v32;
    v93 = v34;
    v94 = 10;
    sub_214324934();
    goto LABEL_37;
  }

  v75 = *v12;
  v74 = *(v12 + 1);
  v76 = *(v12 + 2);
  v77 = v12[24];
  v78 = v12[25];
  LOBYTE(v89) = 10;
  v94 = 0;
  sub_21432488C();
  v79 = v86;
  v80 = v87;
  v81 = v85;
  sub_2146DA388();
  if (!v81)
  {
    v89 = v75;
    v90 = v74;
    v91 = v76;
    LOBYTE(v92) = v77;
    BYTE1(v92) = v78;
    v94 = 11;
    sub_2143248E0();
    sub_2146DA388();
  }

  (*(v88 + 8))(v79, v80);
}

uint64_t CPIMMessage.Header.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D3A8, &qword_2146F6FE0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CPIMMessage.Header(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_214324838();
  v19 = v44;
  sub_2146DAA08();
  if (v19)
  {
    v22 = v43;
  }

  else
  {
    v44 = v16;
    v21 = v41;
    v20 = v42;
    v48 = 0;
    sub_214324BD4();
    sub_2146DA1C8();
    if (v45 <= 4u)
    {
      if (v45 <= 1u)
      {
        v48 = 1;
        sub_214324EC8();
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v27 = v47;
        v28 = v46;
        v24 = v44;
        *v44 = v45;
        v24[1] = v28;
        *(v24 + 32) = v27;
      }

      else if (v45 == 2)
      {
        LOBYTE(v45) = 3;
        sub_214328930(&qword_27C90D3F8, type metadata accessor for CPIMMessage.DateTimeHeader);
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v24 = v44;
        sub_214328704(v8, v44, type metadata accessor for CPIMMessage.DateTimeHeader);
      }

      else if (v45 == 3)
      {
        LOBYTE(v45) = 4;
        sub_214328930(&qword_27C90D3F0, type metadata accessor for CPIMMessage.NamespaceHeader);
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v24 = v44;
        sub_214328704(v21, v44, type metadata accessor for CPIMMessage.NamespaceHeader);
      }

      else
      {
        v48 = 5;
        sub_214324E20();
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v36 = v47;
        v37 = v46;
        v24 = v44;
        *v44 = v45;
        v24[1] = v37;
        *(v24 + 32) = v36;
      }
    }

    else if (v45 > 7u)
    {
      if (v45 == 8)
      {
        v48 = 9;
        sub_214324CD0();
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v29 = v47;
        v30 = v46;
        v24 = v44;
        *v44 = v45;
        v24[1] = v30;
        *(v24 + 32) = v29;
      }

      else if (v45 == 9)
      {
        v48 = 10;
        sub_214324C7C();
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v25 = v47;
        v26 = v46;
        v24 = v44;
        *v44 = v45;
        v24[1] = v26;
        *(v24 + 32) = v25;
      }

      else
      {
        v48 = 11;
        sub_214324C28();
        sub_2146DA1C8();
        (*(v40 + 8))(v12, v9);
        v33 = v46;
        v34 = BYTE8(v46);
        v35 = BYTE9(v46);
        v24 = v44;
        *v44 = v45;
        *(v24 + 2) = v33;
        *(v24 + 24) = v34;
        *(v24 + 25) = v35;
      }
    }

    else if (v45 == 5)
    {
      v48 = 6;
      sub_214324DCC();
      sub_2146DA1C8();
      (*(v40 + 8))(v12, v9);
      v24 = v44;
      *v44 = v45;
    }

    else if (v45 == 6)
    {
      v48 = 7;
      sub_214324D78();
      sub_2146DA1C8();
      (*(v40 + 8))(v12, v9);
      v24 = v44;
      *v44 = v45;
    }

    else
    {
      v48 = 8;
      sub_214324D24();
      sub_2146DA1C8();
      (*(v40 + 8))(v12, v9);
      v31 = v47;
      v32 = v46;
      v24 = v44;
      *v44 = v45;
      v24[1] = v32;
      *(v24 + 32) = v31;
    }

    v38 = v43;
    swift_storeEnumTagMultiPayload();
    sub_214328704(v24, v20, type metadata accessor for CPIMMessage.Header);
    v22 = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_2142C7250(char a1)
{
  result = 0x69616C5074786574;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6C61565F6E646D69;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x756C61565F736C6DLL;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000027;
      break;
  }

  return result;
}

unint64_t sub_2142C73E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 7564397;
    v7 = 0x6C4D726576726573;
    if (a1 != 10)
    {
      v7 = 0x54656C6946736C6DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 1852075369;
    if (a1 != 7)
    {
      v9 = 0x6E657265666E6F63;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4C68737550736372;
    v2 = 0x617373654D746F62;
    v3 = 0x6E617254656C6966;
    if (a1 != 4)
    {
      v3 = 0x69616C5074786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x70756F72476D7063;
    if (a1 != 1)
    {
      v4 = 0x6567677553746F62;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2142C75D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438B4C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C7600(uint64_t a1)
{
  v2 = sub_214324F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C763C(uint64_t a1)
{
  v2 = sub_214324F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C76D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438B938();
  *a2 = result;
  return result;
}

unint64_t sub_2142C7708@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142C73E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.encode(to:)(void *a1)
{
  v66 = type metadata accessor for SIPConferenceInfo(0);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for IMDispositionNotification();
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for IMCompositionIndication();
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for RCSFileTransferInfo();
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Chatbot.RootMessage(0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D410, &qword_2146F6FE8);
  v75 = *(v19 - 8);
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214324F1C();
  sub_2146DAA28();
  sub_2143287C0(v73, v18, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      v29 = v22;
      if (EnumCaseMultiPayload == 6)
      {
        v30 = v70;
        sub_214328704(v18, v70, type metadata accessor for IMCompositionIndication);
        LOBYTE(v80) = 6;
        LOBYTE(v76) = 0;
        sub_214324F70();
        v45 = v74;
        sub_2146DA388();
        if (!v45)
        {
          LOBYTE(v80) = 7;
          sub_214328930(&qword_27C90D450, type metadata accessor for IMCompositionIndication);
          sub_2146DA388();
        }

        v32 = type metadata accessor for IMCompositionIndication;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v30 = v71;
        sub_214328704(v18, v71, type metadata accessor for IMDispositionNotification);
        LOBYTE(v80) = 7;
        LOBYTE(v76) = 0;
        sub_214324F70();
        v31 = v74;
        sub_2146DA388();
        if (!v31)
        {
          LOBYTE(v80) = 8;
          sub_214328930(&qword_27C90D448, type metadata accessor for IMDispositionNotification);
          sub_2146DA388();
        }

        v32 = type metadata accessor for IMDispositionNotification;
      }

      else
      {
        v30 = v72;
        sub_214328704(v18, v72, type metadata accessor for SIPConferenceInfo);
        LOBYTE(v80) = 8;
        LOBYTE(v76) = 0;
        sub_214324F70();
        v54 = v74;
        sub_2146DA388();
        if (!v54)
        {
          LOBYTE(v80) = 9;
          sub_214328930(&qword_27C90D440, type metadata accessor for SIPConferenceInfo);
          sub_2146DA388();
        }

        v32 = type metadata accessor for SIPConferenceInfo;
      }

      v47 = v32;
      v48 = v30;
      goto LABEL_42;
    }

    v36 = v22;
    if (EnumCaseMultiPayload == 9)
    {
      v50 = *v18;
      v49 = *(v18 + 1);
      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      v51 = v18[32];
      LOBYTE(v80) = 9;
      LOBYTE(v76) = 0;
      sub_214324F70();
      v52 = v74;
      sub_2146DA388();
      if (!v52)
      {
        *&v80 = v50;
        *(&v80 + 1) = v49;
        *&v81 = v40;
        *(&v81 + 1) = v39;
        v82[0] = v51;
        LOBYTE(v76) = 10;
        sub_21432506C();
        goto LABEL_48;
      }
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v38 = *v18;
      v37 = *(v18 + 1);
      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      v41 = v18[32];
      LOBYTE(v80) = 10;
      LOBYTE(v76) = 0;
      sub_214324F70();
      v42 = v74;
      sub_2146DA388();
      if (!v42)
      {
        *&v80 = v38;
        *(&v80 + 1) = v37;
        *&v81 = v40;
        *(&v81 + 1) = v39;
        v82[0] = v41;
        LOBYTE(v76) = 11;
        sub_214325018();
LABEL_48:
        sub_2146DA388();
      }
    }

    else
    {
      v59 = *v18;
      v58 = *(v18 + 1);
      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      v60 = v18[32];
      LOBYTE(v80) = 11;
      LOBYTE(v76) = 0;
      sub_214324F70();
      v61 = v74;
      sub_2146DA388();
      if (!v61)
      {
        *&v80 = v59;
        *(&v80 + 1) = v58;
        *&v81 = v40;
        *(&v81 + 1) = v39;
        v82[0] = v60;
        LOBYTE(v76) = 12;
        sub_214324FC4();
        goto LABEL_48;
      }
    }

    (*(v75 + 8))(v36, v19);

    return sub_213FDC6BC(v40, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = v68;
      sub_214328704(v18, v68, type metadata accessor for Chatbot.RootMessage);
      LOBYTE(v80) = 3;
      LOBYTE(v76) = 0;
      sub_214324F70();
      v29 = v22;
      v46 = v74;
      sub_2146DA388();
      if (!v46)
      {
        LOBYTE(v80) = 4;
        sub_214328930(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage);
        sub_2146DA388();
      }

      v35 = type metadata accessor for Chatbot.RootMessage;
    }

    else
    {
      v29 = v22;
      if (EnumCaseMultiPayload != 4)
      {
        v56 = *v18;
        v55 = *(v18 + 1);
        LOBYTE(v80) = 5;
        LOBYTE(v76) = 0;
        sub_214324F70();
        v57 = v74;
        sub_2146DA388();
        if (!v57)
        {
          LOBYTE(v80) = 6;
          sub_2146DA328();
        }

        (*(v75 + 8))(v22, v19);
      }

      v33 = v69;
      sub_214328704(v18, v69, type metadata accessor for RCSFileTransferInfo);
      LOBYTE(v80) = 4;
      LOBYTE(v76) = 0;
      sub_214324F70();
      v34 = v74;
      sub_2146DA388();
      if (!v34)
      {
        LOBYTE(v80) = 5;
        sub_214328930(&qword_27C90D458, type metadata accessor for RCSFileTransferInfo);
        sub_2146DA388();
      }

      v35 = type metadata accessor for RCSFileTransferInfo;
    }

    v47 = v35;
    v48 = v33;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *(v18 + 3);
      *v82 = *(v18 + 2);
      *&v82[16] = v25;
      v83 = *(v18 + 32);
      v26 = *(v18 + 1);
      v80 = *v18;
      v81 = v26;
      LOBYTE(v76) = 1;
      v84 = 0;
      sub_214324F70();
      v27 = v74;
      sub_2146DA388();
      if (!v27)
      {
        *v78 = *v82;
        *&v78[16] = *&v82[16];
        v79 = v83;
        v76 = v80;
        v77 = v81;
        v84 = 2;
        sub_2143250C0();
        sub_2146DA388();
      }

      (*(v75 + 8))(v22, v19);
      return sub_21430280C(&v80);
    }

    sub_214328704(v18, v14, type metadata accessor for Chatbot.RootMessage);
    LOBYTE(v80) = 2;
    LOBYTE(v76) = 0;
    sub_214324F70();
    v29 = v22;
    v53 = v74;
    sub_2146DA388();
    if (!v53)
    {
      LOBYTE(v80) = 3;
      sub_214328930(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage);
      sub_2146DA388();
    }

    v47 = type metadata accessor for Chatbot.RootMessage;
    v48 = v14;
LABEL_42:
    sub_21432887C(v48, v47);
    return (*(v75 + 8))(v29, v19);
  }

  v43 = *(v18 + 1);
  v80 = *v18;
  v81 = v43;
  *v82 = *(v18 + 2);
  *&v82[10] = *(v18 + 42);
  LOBYTE(v76) = 0;
  v84 = 0;
  sub_214324F70();
  v44 = v74;
  sub_2146DA388();
  if (!v44)
  {
    v76 = v80;
    v77 = v81;
    *v78 = *v82;
    *&v78[10] = *&v82[10];
    v84 = 1;
    sub_214325168();
    sub_2146DA388();
  }

  (*(v75 + 8))(v22, v19);
  return sub_214325114(&v80);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = type metadata accessor for SIPConferenceInfo(0);
  v3 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for IMDispositionNotification();
  v5 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for IMCompositionIndication();
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for RCSFileTransferInfo();
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Chatbot.RootMessage(0);
  v11 = *(*(v57 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D478, &qword_2146F6FF0);
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v21 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_214324F1C();
  v27 = v61;
  sub_2146DAA08();
  if (!v27)
  {
    v49 = v16;
    v28 = v14;
    v29 = v58;
    v61 = v21;
    v30 = v59;
    v67 = 0;
    sub_2143251BC();
    v31 = v20;
    sub_2146DA1C8();
    if (v63 > 5u)
    {
      if (v63 > 8u)
      {
        v34 = v30;
        if (v63 == 9)
        {
          v67 = 10;
          sub_2143252B8();
        }

        else
        {
          v67 = 11;
          sub_214325264();
        }

        sub_2146DA1C8();
        (*(v60 + 8))(v31, v17);
        v39 = v65[0];
        v40 = v64;
        *v24 = v63;
        *(v24 + 1) = v40;
        v24[32] = v39;
      }

      else
      {
        v34 = v30;
        if (v63 == 6)
        {
          LOBYTE(v63) = 7;
          sub_214328930(&qword_27C90D4B0, type metadata accessor for IMCompositionIndication);
          sub_2146DA1C8();
          (*(v60 + 8))(v31, v17);
          sub_214328704(v29, v24, type metadata accessor for IMCompositionIndication);
        }

        else if (v63 == 7)
        {
          LOBYTE(v63) = 8;
          sub_214328930(&qword_27C90D4A8, type metadata accessor for IMDispositionNotification);
          v37 = v53;
          sub_2146DA1C8();
          (*(v60 + 8))(v31, v17);
          sub_214328704(v37, v24, type metadata accessor for IMDispositionNotification);
        }

        else
        {
          LOBYTE(v63) = 9;
          sub_214328930(&qword_27C90D4A0, type metadata accessor for SIPConferenceInfo);
          v43 = v54;
          sub_2146DA1C8();
          (*(v60 + 8))(v31, v17);
          sub_214328704(v43, v24, type metadata accessor for SIPConferenceInfo);
        }
      }

      goto LABEL_27;
    }

    if (v63 > 2u)
    {
      if (v63 != 3)
      {
        if (v63 == 4)
        {
          LOBYTE(v63) = 5;
          sub_214328930(&qword_27C90D4B8, type metadata accessor for RCSFileTransferInfo);
          v38 = v52;
          sub_2146DA1C8();
          v34 = v30;
          (*(v60 + 8))(v31, v17);
          sub_214328704(v38, v24, type metadata accessor for RCSFileTransferInfo);
        }

        else
        {
          LOBYTE(v63) = 6;
          v44 = sub_2146DA168();
          v45 = v20;
          v46 = v44;
          v48 = v47;
          v34 = v30;
          (*(v60 + 8))(v45, v17);
          *v24 = v46;
          *(v24 + 1) = v48;
        }

        goto LABEL_27;
      }

      LOBYTE(v63) = 4;
      sub_214328930(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage);
      sub_2146DA1C8();
      (*(v60 + 8))(v20, v17);
      sub_214328704(v28, v24, type metadata accessor for Chatbot.RootMessage);
    }

    else if (v63)
    {
      v33 = v60;
      if (v63 == 1)
      {
        v67 = 2;
        sub_21432530C();
        sub_2146DA1C8();
        (*(v33 + 8))(v20, v17);
        v34 = v30;
        v35 = *&v65[16];
        *(v24 + 2) = *v65;
        *(v24 + 3) = v35;
        *(v24 + 32) = v66;
        v36 = v64;
        *v24 = v63;
        *(v24 + 1) = v36;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      LOBYTE(v63) = 3;
      sub_214328930(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage);
      v42 = v49;
      sub_2146DA1C8();
      (*(v33 + 8))(v31, v17);
      sub_214328704(v42, v24, type metadata accessor for Chatbot.RootMessage);
    }

    else
    {
      v67 = 1;
      sub_214325360();
      sub_2146DA1C8();
      (*(v60 + 8))(v20, v17);
      v41 = v64;
      *v24 = v63;
      *(v24 + 1) = v41;
      *(v24 + 2) = *v65;
      *(v24 + 42) = *&v65[10];
    }

    swift_storeEnumTagMultiPayload();
    v34 = v30;
LABEL_28:
    sub_214328704(v24, v34, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

unint64_t sub_2142C8FC0()
{
  v1 = 0x5F6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2142C902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438B984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142C9054(uint64_t a1)
{
  v2 = sub_2143253B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C9090(uint64_t a1)
{
  v2 = sub_2143253B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C90CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000214787020;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v7 = 0x8000000214787020;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142C9178()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C9200()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142C9274()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142C9304(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214787020;
  v3 = 0x6567617373656DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t CPIMMessage.Content.encode(to:)(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  v4 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CPIMMessage.Content(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4D8, &qword_2146F6FF8);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143253B4();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v10;
    v28 = 1;
    v27 = 0;
    sub_214325408();
    v17 = v21;
    sub_2146DA388();
    if (!v17)
    {
      v23 = v16;
      v26 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4F0, &qword_2146F7000);
      sub_21432545C();
      sub_2146DA388();
    }

    (*(v22 + 8))(v14, v11);
  }

  else
  {
    sub_214328704(v10, v6, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    v25 = 0;
    sub_214325408();
    v19 = v21;
    sub_2146DA388();
    if (!v19)
    {
      v24 = 1;
      sub_214328930(&qword_27C90D500, type metadata accessor for CPIMMessage.EncapsulatedMessage);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    return (*(v22 + 8))(v14, v11);
  }
}

uint64_t CPIMMessage.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D508, &qword_2146F7008);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CPIMMessage.Content(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2143253B4();
  v17 = v26;
  sub_2146DAA08();
  if (!v17)
  {
    v23 = v14;
    v26 = v11;
    v18 = v24;
    v19 = v25;
    v31 = 0;
    sub_214325510();
    sub_2146DA1C8();
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D4F0, &qword_2146F7000);
      v30 = 2;
      sub_214325564();
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v21 = v19;
      v22 = v23;
      *v23 = v28;
    }

    else
    {
      v29 = 1;
      sub_214328930(&qword_27C90D520, type metadata accessor for CPIMMessage.EncapsulatedMessage);
      sub_2146DA1C8();
      (*(v18 + 8))(v10, v7);
      v22 = v23;
      sub_214328704(v6, v23, type metadata accessor for CPIMMessage.EncapsulatedMessage);
      v21 = v19;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v21, type metadata accessor for CPIMMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_2142C9B24()
{
  if (*v0)
  {
    result = 0x65736E6F70736572;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2142C9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000214798B40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEE0065756C61565FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2142C9C60(uint64_t a1)
{
  v2 = sub_214325618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C9C9C(uint64_t a1)
{
  v2 = sub_214325618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C9DF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D528, &qword_2146F7010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v14 = *v1;
  v9 = *(v1 + 2);
  v19 = *(v1 + 24);
  v13 = *(v1 + 25);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325618();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_21432566C();
  sub_2146DA388();
  if (!v2)
  {
    v15 = v14;
    v16 = v9;
    v17 = v19;
    v18 = v13;
    v20 = 1;
    sub_2143256C0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142C9FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D548, &qword_2146F7018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325618();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    sub_214325714();
    sub_2146DA1C8();
    v19 = 1;
    sub_214325768();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v17;
    v13 = v18;
    *a2 = v15;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 25) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CA1C8()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000035;
  }

  *v0;
  return result;
}

uint64_t sub_2142CA204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000035 && 0x8000000214798B60 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214798BA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2142CA2E4(uint64_t a1)
{
  v2 = sub_2143257BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CA320(uint64_t a1)
{
  v2 = sub_2143257BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CA368()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CA44C()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142CA51C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CA5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438BBB0();
  *a2 = result;
  return result;
}

void sub_2142CA62C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x65726576696C6564;
  v4 = 0x8000000214787050;
  v5 = 0xD000000000000010;
  v6 = 0xE90000000000006ELL;
  v7 = 0x6564646962726F66;
  if (v2 != 3)
  {
    v7 = 0x726F727265;
    v6 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0x64656C696166;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_2142CA77C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D560, &qword_2146F7020);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143257BC();
  sub_2146DAA28();
  v11 = v9 >> 4;
  if (v9 >> 4 > 0xD)
  {
    if (v11 == 14)
    {
      v18 = 3;
      v17 = 0;
      sub_214325810();
      goto LABEL_12;
    }

    if (v11 == 15)
    {
      v14 = 0;
      sub_214325810();
      goto LABEL_12;
    }
  }

  else
  {
    if (v11 == 6)
    {
      v20 = 4;
      v19 = 0;
      sub_214325810();
      goto LABEL_12;
    }

    if (v11 == 7)
    {
      v16 = 1;
      v15 = 0;
      sub_214325810();
LABEL_12:
      sub_2146DA388();
      return (*(v5 + 8))(v8, v4);
    }
  }

  v13[15] = 2;
  v13[14] = 0;
  sub_214325810();
  sub_2146DA388();
  if (!v2)
  {
    v13[13] = v9;
    v13[12] = 1;
    sub_214325864();
    goto LABEL_12;
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CA9D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D580, &qword_2146F7028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143257BC();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = 0;
    sub_2143258B8();
    sub_2146DA1C8();
    if (v16 <= 1u)
    {
      if (v16)
      {
        (*(v6 + 8))(v9, v5);
        *a2 = 112;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        *a2 = -16;
      }
    }

    else if (v16 == 2)
    {
      v13 = 1;
      sub_21432590C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      *a2 = v14;
    }

    else if (v16 == 3)
    {
      (*(v6 + 8))(v9, v5);
      *a2 = -32;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      *a2 = 96;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CAC84()
{
  *v0;
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000043;
  }

  *v0;
  return result;
}

uint64_t sub_2142CACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438BBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CACFC(uint64_t a1)
{
  v2 = sub_214325960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CAD38(uint64_t a1)
{
  v2 = sub_214325960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CAD74(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "mlsServerFailureReason";
  }

  else
  {
    v2 = "failedWithReason";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "mlsServerFailureReason";
  }

  else
  {
    v4 = "failedWithReason";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_2142CAE18()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CAE90()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142CAEF4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CAF74(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "mlsServerFailureReason";
  }

  else
  {
    v2 = "failedWithReason";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_2142CB05C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D598, &qword_2146F7030);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325960();
  sub_2146DAA28();
  if (v9 < 0)
  {
    v19 = 1;
    v18 = 0;
    sub_2143259B4();
    sub_2146DA388();
    if (!v2)
    {
      v17 = v9 & 0x7F;
      v16 = 2;
      sub_214325A08();
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    sub_2143259B4();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v9;
      v13 = 1;
      sub_214325A5C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CB254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D5C0, &qword_2146F7038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325960();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_214325AB0();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v19)
    {
      v16 = 2;
      sub_214325B04();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      *a2 = v17 | 0x80;
    }

    else
    {
      v14 = 1;
      sub_214325B58();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      *a2 = v15;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CB4C0()
{
  v1 = *v0;
  v2 = 0x79726576696C6564;
  v3 = 0x5F79616C70736964;
  v4 = 0xD000000000000012;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000031;
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

uint64_t sub_2142CB57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438BD74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CB5A4(uint64_t a1)
{
  v2 = sub_214325BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CB5E0(uint64_t a1)
{
  v2 = sub_214325BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CB628()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CB6F8()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142CB7B4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CB880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438BF9C();
  *a2 = result;
  return result;
}

void sub_2142CB8B0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726576696C6564;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69737365636F7270;
  if (*v1 != 2)
  {
    v5 = 0x726F777265746E69;
    v4 = 0xEC000000676E696BLL;
  }

  if (*v1)
  {
    v3 = 0x79616C70736964;
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

uint64_t sub_2142CB9EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D5E0, &qword_2146F7040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v13 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325BAC();
  sub_2146DAA28();
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = 512;
      sub_214325C00();
      sub_2146DA388();
      if (!v2)
      {
        HIBYTE(v14) = v13;
        LOBYTE(v14) = 3;
        sub_214325CA8();
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 768;
      sub_214325C00();
      sub_2146DA388();
      if (!v2)
      {
        HIBYTE(v14) = v13;
        LOBYTE(v14) = 4;
        sub_214325C54();
        goto LABEL_12;
      }
    }
  }

  else if (v9)
  {
    v14 = 256;
    sub_214325C00();
    sub_2146DA388();
    if (!v2)
    {
      HIBYTE(v14) = v13;
      LOBYTE(v14) = 2;
      sub_214325CFC();
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    sub_214325C00();
    sub_2146DA388();
    if (!v2)
    {
      HIBYTE(v14) = v13;
      LOBYTE(v14) = 1;
      sub_214325D50();
LABEL_12:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CBCB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D618, &qword_2146F7048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325BAC();
  sub_2146DAA08();
  if (!v2)
  {
    v15[30] = 0;
    sub_214325DA4();
    sub_2146DA1C8();
    v12 = v16;
    v13 = (v6 + 8);
    if (v16 > 1u)
    {
      if (v16 == 2)
      {
        v15[26] = 3;
        sub_214325E4C();
        sub_2146DA1C8();
        (*v13)(v9, v5);
        v14 = v15[27];
      }

      else
      {
        v15[28] = 4;
        sub_214325DF8();
        sub_2146DA1C8();
        (*v13)(v9, v5);
        v14 = v15[29];
      }
    }

    else if (v16)
    {
      v15[24] = 2;
      sub_214325EA0();
      sub_2146DA1C8();
      (*v13)(v9, v5);
      v14 = v15[25];
    }

    else
    {
      v15[14] = 1;
      sub_214325EF4();
      sub_2146DA1C8();
      (*v13)(v9, v5);
      v14 = v15[15];
    }

    *a2 = v14;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CBFEC()
{
  v1 = 0x565F656C63726963;
  if (*v0 != 1)
  {
    v1 = 0x61565F746E696F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_2142CC05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438BFE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CC084(uint64_t a1)
{
  v2 = sub_214325F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CC0C0(uint64_t a1)
{
  v2 = sub_214325F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CC0FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E696F70;
  }

  else
  {
    v4 = 0x656C63726963;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E696F70;
  }

  else
  {
    v6 = 0x656C63726963;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142CC19C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CC218()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142CC280()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CC304(uint64_t *a1@<X8>)
{
  v2 = 0x656C63726963;
  if (*v1)
  {
    v2 = 0x746E696F70;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142CC3EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D648, &qword_2146F7050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = v1[1];
  v16 = *v1;
  v17 = v9;
  v10 = v1[3];
  v18 = v1[2];
  v19 = v10;
  v11 = v1[5];
  v20 = v1[4];
  v21 = v11;
  v22 = v1[6];
  v12 = *(v1 + 28);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325F48();
  sub_2146DAA28();
  if ((v12 & 0x80) != 0)
  {
    LOBYTE(v23) = 1;
    v31 = 0;
    sub_214325F9C();
    sub_2146DA388();
    if (!v2)
    {
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v29 = v22;
      v30 = v12 & 0xFF7F;
      v31 = 2;
      sub_214325FF0();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
    v31 = 0;
    sub_214325F9C();
    sub_2146DA388();
    if (!v2)
    {
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v29 = v22;
      v30 = v12;
      v31 = 1;
      sub_214326044();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CC644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D670, &qword_2146F7058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214325F48();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    sub_214326098();
    sub_2146DA1C8();
    v12 = (v6 + 8);
    if (v27)
    {
      v25 = 2;
      sub_2143260EC();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v18 = v24 & 0xFF01 | 0x80;
    }

    else
    {
      v25 = 1;
      sub_214326140();
      sub_2146DA1C8();
      (*v12)(v9, v5);
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v18 = v24 & 0xFF01;
    }

    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15 & 0xFF01;
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 56) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CC8F0()
{
  if (*v0)
  {
    result = 0x61565F7972746E65;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

uint64_t sub_2142CC938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000025 && 0x8000000214798CF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61565F7972746E65 && a2 == 0xEB0000000065756CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2142CCA24(uint64_t a1)
{
  v2 = sub_214326194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CCA60(uint64_t a1)
{
  v2 = sub_214326194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CCBAC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D690, &qword_2146F7060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v18 = *(v1 + 1);
  v11 = v1[5];
  v16 = v1[4];
  v17 = v9;
  v15 = v11;
  v25 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326194();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  sub_2143261E8();
  sub_2146DA388();
  if (!v2)
  {
    v19 = v10;
    v20 = v17;
    v21 = v18;
    v22 = v16;
    v23 = v15;
    v24 = v25;
    v26 = 1;
    sub_21432623C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CCD70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6B0, &qword_2146F7068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326194();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v15[0]) = 0;
    sub_214326290();
    sub_2146DA1C8();
    v17 = 1;
    sub_2143262E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v13 = v15[1];
    v12 = v15[2];
    *a2 = v15[0];
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CCF7C()
{
  if (*v0)
  {
    result = 0x676E656C6C616863;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

uint64_t sub_2142CCFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000026 && 0x8000000214798D20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF65756C61565F65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2142CD0B8(uint64_t a1)
{
  v2 = sub_214326338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CD0F4(uint64_t a1)
{
  v2 = sub_214326338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CD260(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6C8, &qword_2146F7070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v14 = *v1;
  v9 = *(v1 + 2);
  v13 = *(v1 + 3);
  v19 = *(v1 + 32);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326338();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_21432638C();
  sub_2146DA388();
  if (!v2)
  {
    v15 = v14;
    v16 = v9;
    v17 = v13;
    v18 = v19;
    v20 = 1;
    sub_2143263E0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142CD414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D6E8, &qword_2146F7078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326338();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v14[0]) = 0;
    sub_214326434();
    sub_2146DA1C8();
    v16 = 1;
    sub_214326488();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142CD5E8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000012;
    v5 = 0xD000000000000014;
    if (a1 != 8)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x5F72656B63697473;
    if (a1 != 5)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5F6B636162706174;
    if (a1 != 3)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000015;
    if (!a1)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142CD744(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E49676E69707974;
    v6 = 0x6B636162706174;
    if (a1 != 2)
    {
      v6 = 0x506E6F6F6C6C6162;
    }

    if (a1)
    {
      v5 = 0x7373654D74786574;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x706154696A6F6D65;
    v2 = 0x5472656B63697473;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72656B63697473;
    if (a1 != 4)
    {
      v3 = 0x73654D6F69647561;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142CD8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438C210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CD900(uint64_t a1)
{
  v2 = sub_2143264DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CD93C(uint64_t a1)
{
  v2 = sub_2143264DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CD99C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_2146DA958();
  a3(v7, v5);
  return sub_2146DA9B8();
}

uint64_t sub_2142CDA0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2146DA958();
  a4(v8, v6);
  return sub_2146DA9B8();
}

uint64_t sub_2142CDA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21438C59C();
  *a2 = result;
  return result;
}

uint64_t sub_2142CDA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2142CD744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TextMessage.MessageType.encode(to:)(void *a1)
{
  v67 = type metadata accessor for CustomAcknowledgement();
  v2 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BalloonPlugin(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextMessage.MessageType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D700, &qword_2146F7080);
  v69 = *(v76 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v76);
  v14 = &v67 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143264DC();
  v72 = v14;
  sub_2146DAA28();
  sub_2143287C0(v70, v11, type metadata accessor for TextMessage.MessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *(v11 + 9);
        v73[8] = *(v11 + 8);
        v73[9] = v24;
        v73[10] = *(v11 + 10);
        *&v73[11] = *(v11 + 22);
        v25 = *(v11 + 5);
        v73[4] = *(v11 + 4);
        v73[5] = v25;
        v26 = *(v11 + 7);
        v73[6] = *(v11 + 6);
        v73[7] = v26;
        v27 = *(v11 + 1);
        v73[0] = *v11;
        v73[1] = v27;
        v28 = *(v11 + 3);
        v73[2] = *(v11 + 2);
        v73[3] = v28;
        LOBYTE(v74[0]) = 2;
        v75 = 0;
        sub_214326530();
        v29 = v76;
        v31 = v71;
        v30 = v72;
        sub_2146DA388();
        if (!v31)
        {
          v74[8] = v73[8];
          v74[9] = v73[9];
          v74[10] = v73[10];
          *&v74[11] = *&v73[11];
          v74[4] = v73[4];
          v74[5] = v73[5];
          v74[6] = v73[6];
          v74[7] = v73[7];
          v74[0] = v73[0];
          v74[1] = v73[1];
          v74[2] = v73[2];
          v74[3] = v73[3];
          v75 = 3;
          sub_214326680();
          sub_2146DA388();
        }

        (*(v69 + 8))(v30, v29);
        return sub_214301F90(v73);
      }

      else
      {
        sub_214328704(v11, v7, type metadata accessor for BalloonPlugin);
        LOBYTE(v73[0]) = 3;
        LOBYTE(v74[0]) = 0;
        sub_214326530();
        v57 = v76;
        v59 = v71;
        v58 = v72;
        sub_2146DA388();
        if (!v59)
        {
          LOBYTE(v73[0]) = 4;
          sub_214328930(&qword_27C904790, type metadata accessor for BalloonPlugin);
          sub_2146DA388();
        }

        sub_21432887C(v7, type metadata accessor for BalloonPlugin);
        return (*(v69 + 8))(v58, v57);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        memcpy(v73, v11, 0x218uLL);
        LOBYTE(v74[0]) = 0;
        v75 = 0;
        sub_214326530();
        v21 = v76;
        v23 = v71;
        v22 = v72;
        sub_2146DA388();
        if (!v23)
        {
          LOBYTE(v74[0]) = 1;
          sub_2143266D4();
          sub_2146DA388();
        }

        sub_214307C44(v73);
        return (*(v69 + 8))(v22, v21);
      }

      v51 = *(v11 + 5);
      v73[4] = *(v11 + 4);
      v73[5] = v51;
      v73[6] = *(v11 + 6);
      *&v73[7] = *(v11 + 14);
      v52 = *(v11 + 1);
      v73[0] = *v11;
      v73[1] = v52;
      v53 = *(v11 + 3);
      v73[2] = *(v11 + 2);
      v73[3] = v53;
      LOBYTE(v74[0]) = 1;
      v75 = 0;
      sub_214326530();
      v54 = v76;
      v56 = v71;
      v55 = v72;
      sub_2146DA388();
      if (!v56)
      {
        v74[4] = v73[4];
        v74[5] = v73[5];
        v74[6] = v73[6];
        *&v74[7] = *&v73[7];
        v74[0] = v73[0];
        v74[1] = v73[1];
        v74[2] = v73[2];
        v74[3] = v73[3];
        v75 = 2;
        sub_214301CA0();
        sub_2146DA388();
      }

      (*(v69 + 8))(v55, v54);
      return sub_214091594(v73);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v32 = *(v11 + 11);
      v73[10] = *(v11 + 10);
      v73[11] = v32;
      *(&v73[11] + 9) = *(v11 + 185);
      v33 = *(v11 + 7);
      v73[6] = *(v11 + 6);
      v73[7] = v33;
      v34 = *(v11 + 9);
      v73[8] = *(v11 + 8);
      v73[9] = v34;
      v35 = *(v11 + 3);
      v73[2] = *(v11 + 2);
      v73[3] = v35;
      v36 = *(v11 + 5);
      v73[4] = *(v11 + 4);
      v73[5] = v36;
      v37 = *(v11 + 1);
      v73[0] = *v11;
      v73[1] = v37;
      LOBYTE(v74[0]) = 4;
      v75 = 0;
      sub_214326530();
      v38 = v76;
      v40 = v71;
      v39 = v72;
      sub_2146DA388();
      if (!v40)
      {
        v74[10] = v73[10];
        v74[11] = v73[11];
        *(&v74[11] + 9) = *(&v73[11] + 9);
        v74[6] = v73[6];
        v74[7] = v73[7];
        v74[8] = v73[8];
        v74[9] = v73[9];
        v74[2] = v73[2];
        v74[3] = v73[3];
        v74[4] = v73[4];
        v74[5] = v73[5];
        v74[0] = v73[0];
        v74[1] = v73[1];
        v75 = 5;
        sub_21432662C();
        sub_2146DA388();
      }

      (*(v69 + 8))(v39, v38);
      return sub_214307E9C(v73);
    }

    else
    {
      v62 = *(v11 + 1);
      v73[0] = *v11;
      v73[1] = v62;
      v63 = *(v11 + 3);
      v73[2] = *(v11 + 2);
      v73[3] = v63;
      LOBYTE(v74[0]) = 5;
      v75 = 0;
      sub_214326530();
      v64 = v76;
      v66 = v71;
      v65 = v72;
      sub_2146DA388();
      if (!v66)
      {
        v74[0] = v73[0];
        v74[1] = v73[1];
        v74[2] = v73[2];
        v74[3] = v73[3];
        v75 = 6;
        sub_2143265D8();
        sub_2146DA388();
      }

      (*(v69 + 8))(v65, v64);
      return sub_214307FA0(v73);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        memcpy(v73, v11, 0x130uLL);
        LOBYTE(v74[0]) = 7;
        v75 = 0;
        sub_214326530();
        v17 = v76;
        v19 = v71;
        v18 = v72;
        sub_2146DA388();
        if (!v19)
        {
          memcpy(v74, v73, sizeof(v74));
          v75 = 8;
          sub_2140918A8();
          sub_2146DA388();
        }

        (*(v69 + 8))(v18, v17);
        return sub_214301B48(v73);
      }

      v60 = v68;
      sub_214328704(v11, v68, type metadata accessor for CustomAcknowledgement);
      LOBYTE(v73[0]) = 8;
      LOBYTE(v74[0]) = 0;
      sub_214326530();
      v21 = v76;
      v61 = v71;
      v22 = v72;
      sub_2146DA388();
      if (!v61)
      {
        LOBYTE(v73[0]) = 9;
        sub_214328930(&qword_27C90D708, type metadata accessor for CustomAcknowledgement);
        sub_2146DA388();
      }

      sub_21432887C(v60, type metadata accessor for CustomAcknowledgement);
      return (*(v69 + 8))(v22, v21);
    }

    v41 = *(v11 + 11);
    v73[10] = *(v11 + 10);
    v73[11] = v41;
    v42 = *(v11 + 13);
    v73[12] = *(v11 + 12);
    v73[13] = v42;
    v43 = *(v11 + 7);
    v73[6] = *(v11 + 6);
    v73[7] = v43;
    v44 = *(v11 + 9);
    v73[8] = *(v11 + 8);
    v73[9] = v44;
    v45 = *(v11 + 3);
    v73[2] = *(v11 + 2);
    v73[3] = v45;
    v46 = *(v11 + 5);
    v73[4] = *(v11 + 4);
    v73[5] = v46;
    v47 = *(v11 + 1);
    v73[0] = *v11;
    v73[1] = v47;
    LOBYTE(v74[0]) = 6;
    v75 = 0;
    sub_214326530();
    v48 = v76;
    v50 = v71;
    v49 = v72;
    sub_2146DA388();
    if (!v50)
    {
      v74[10] = v73[10];
      v74[11] = v73[11];
      v74[12] = v73[12];
      v74[13] = v73[13];
      v74[6] = v73[6];
      v74[7] = v73[7];
      v74[8] = v73[8];
      v74[9] = v73[9];
      v74[2] = v73[2];
      v74[3] = v73[3];
      v74[4] = v73[4];
      v74[5] = v73[5];
      v74[0] = v73[0];
      v74[1] = v73[1];
      v75 = 7;
      sub_214326584();
      sub_2146DA388();
    }

    (*(v69 + 8))(v49, v48);
    return sub_2142EE95C(v73);
  }
}

uint64_t TextMessage.MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = type metadata accessor for CustomAcknowledgement();
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for BalloonPlugin(0);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D730, &qword_2146F7088);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for TextMessage.MessageType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2143264DC();
  v18 = v54;
  sub_2146DAA08();
  if (!v18)
  {
    v54 = v12;
    v20 = v52;
    v19 = v53;
    v57 = 0;
    sub_214326728();
    sub_2146DA1C8();
    if (LOBYTE(v56[0]) <= 3u)
    {
      if (LOBYTE(v56[0]) > 1u)
      {
        if (LOBYTE(v56[0]) != 2)
        {
          LOBYTE(v56[0]) = 4;
          sub_214328930(&qword_27C904788, type metadata accessor for BalloonPlugin);
          sub_2146DA1C8();
          (*(v20 + 8))(v11, v8);
          v37 = v55;
          sub_214328704(v7, v15, type metadata accessor for BalloonPlugin);
          swift_storeEnumTagMultiPayload();
LABEL_23:
          sub_214328704(v15, v19, type metadata accessor for TextMessage.MessageType);
          v21 = v37;
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }

        v57 = 3;
        sub_214326878();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v8);
        v23 = v56[9];
        v15[8] = v56[8];
        v15[9] = v23;
        v15[10] = v56[10];
        *(v15 + 22) = *&v56[11];
        v24 = v56[5];
        v15[4] = v56[4];
        v15[5] = v24;
        v25 = v56[7];
        v15[6] = v56[6];
        v15[7] = v25;
        v26 = v56[1];
        *v15 = v56[0];
        v15[1] = v26;
        v27 = v56[3];
        v15[2] = v56[2];
        v15[3] = v27;
      }

      else if (LOBYTE(v56[0]))
      {
        v57 = 2;
        sub_214301BF0();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v8);
        v34 = v56[5];
        v15[4] = v56[4];
        v15[5] = v34;
        v15[6] = v56[6];
        *(v15 + 14) = *&v56[7];
        v35 = v56[1];
        *v15 = v56[0];
        v15[1] = v35;
        v36 = v56[3];
        v15[2] = v56[2];
        v15[3] = v36;
      }

      else
      {
        v57 = 1;
        sub_2143268CC();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v8);
        memcpy(v15, v56, 0x218uLL);
      }
    }

    else if (LOBYTE(v56[0]) <= 5u)
    {
      if (LOBYTE(v56[0]) == 4)
      {
        v57 = 5;
        sub_214326824();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v8);
        v28 = v56[11];
        v15[10] = v56[10];
        v15[11] = v28;
        *(v15 + 185) = *(&v56[11] + 9);
        v29 = v56[7];
        v15[6] = v56[6];
        v15[7] = v29;
        v30 = v56[9];
        v15[8] = v56[8];
        v15[9] = v30;
        v31 = v56[3];
        v15[2] = v56[2];
        v15[3] = v31;
        v32 = v56[5];
        v15[4] = v56[4];
        v15[5] = v32;
        v33 = v56[1];
        *v15 = v56[0];
        v15[1] = v33;
      }

      else
      {
        v57 = 6;
        sub_2143267D0();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v8);
        v46 = v56[1];
        *v15 = v56[0];
        v15[1] = v46;
        v47 = v56[3];
        v15[2] = v56[2];
        v15[3] = v47;
      }
    }

    else if (LOBYTE(v56[0]) == 6)
    {
      v57 = 7;
      sub_21432677C();
      sub_2146DA1C8();
      (*(v20 + 8))(v11, v8);
      v39 = v56[11];
      v15[10] = v56[10];
      v15[11] = v39;
      v40 = v56[13];
      v15[12] = v56[12];
      v15[13] = v40;
      v41 = v56[7];
      v15[6] = v56[6];
      v15[7] = v41;
      v42 = v56[9];
      v15[8] = v56[8];
      v15[9] = v42;
      v43 = v56[3];
      v15[2] = v56[2];
      v15[3] = v43;
      v44 = v56[5];
      v15[4] = v56[4];
      v15[5] = v44;
      v45 = v56[1];
      *v15 = v56[0];
      v15[1] = v45;
    }

    else if (LOBYTE(v56[0]) == 7)
    {
      v57 = 8;
      sub_214091854();
      sub_2146DA1C8();
      (*(v20 + 8))(v11, v8);
      memcpy(v15, v56, 0x130uLL);
    }

    else
    {
      LOBYTE(v56[0]) = 9;
      sub_214328930(&qword_27C90D738, type metadata accessor for CustomAcknowledgement);
      v38 = v50;
      sub_2146DA1C8();
      (*(v20 + 8))(v11, v8);
      sub_214328704(v38, v15, type metadata accessor for CustomAcknowledgement);
    }

    swift_storeEnumTagMultiPayload();
    v37 = v55;
    goto LABEL_23;
  }

  v21 = v55;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_2142CEE1C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2142CEE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438C5E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142CEE9C(uint64_t a1)
{
  v2 = sub_214326920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142CEED8(uint64_t a1)
{
  v2 = sub_214326920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142CEF14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61724669746C756DLL;
  }

  else
  {
    v4 = 0x7246656C676E6973;
  }

  if (v3)
  {
    v5 = 0xEB00000000656D61;
  }

  else
  {
    v5 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v6 = 0x61724669746C756DLL;
  }

  else
  {
    v6 = 0x7246656C676E6973;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000656DLL;
  }

  else
  {
    v7 = 0xEB00000000656D61;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142CEFC8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142CF058()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2142CF0D4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142CF16C(uint64_t *a1@<X8>)
{
  v2 = 0x7246656C676E6973;
  if (*v1)
  {
    v2 = 0x61724669746C756DLL;
  }

  v3 = 0xEB00000000656D61;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t VideoPreview.FrameConstraints.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D760, &qword_2146F7090);
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v20 = v1[1];
  v21 = v8;
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + 40);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214326920();
  sub_2146DAA28();
  if (v12 < 0)
  {
    v31 = v12;
    v16 = v20;
    LOBYTE(v25) = 1;
    v32 = 0;
    sub_214326974();
    v14 = v22;
    v17 = v24;
    sub_2146DA388();
    if (!v17)
    {
      v25 = v21;
      v26 = v16;
      v27 = v10;
      v28 = v9 & 1;
      v29 = v11;
      v30 = v31 & 1;
      v32 = 2;
      sub_2143269C8();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v25) = 0;
    v32 = 0;
    sub_214326974();
    v14 = v22;
    v15 = v24;
    sub_2146DA388();
    if (!v15)
    {
      v25 = v21;
      v32 = 1;
      sub_214326A1C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v23 + 8))(v7, v14);
}