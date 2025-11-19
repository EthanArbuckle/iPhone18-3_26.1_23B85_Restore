uint64_t sub_2531A0C34(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84C58];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!(a1 >> 16))
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E4955, 0xE600000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319AB54(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A0F34(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84CC0];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!HIDWORD(a1))
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E4955, 0xE600000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319ADB8(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A1234(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 2)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D84D38];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    }

    else
    {
      v9 = *(v6 + 32);

      sub_25316B2C4(v9);

      sub_2531DAC24();
      swift_allocError();
      sub_25319B01C(a3, v10);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_2531A14BC()
{
  v1 = *(*v0 + 32);

  v2 = sub_25316B2C4(v1);

  return v2;
}

uint64_t sub_2531A1840(uint64_t *a1)
{
  v2 = *a1;
  sub_2531A4AA0(&qword_27F58D718);

  return sub_2531DA9E4();
}

uint64_t sub_2531A18F8@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    *a1 = v7;
    *(a1 + 8) = v8;
    v9 = *(v6 + 24);
    *(a1 + 16) = v9;
    return sub_25316D004(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2531A19B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = v1;
  v5 = v2;
  v6 = v3;
  if (v3 != 255)
  {
LABEL_6:
    if (v6 != 10 || (v5 | v4) != 0)
    {
      sub_2531A8148(v1, v2, v3);
      sub_25316D2BC(v4, v5, v6);
      return;
    }

    v15 = *(v0 + 24);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      *(v0 + 24) = v17;
      v18 = *(v0 + 32);
      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      sub_2531A8148(v1, v2, v3);
      sub_253170AB0(v18, v19, v20);
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v8 >= *(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v21 = MEMORY[0x277D84A98];
    v22 = sub_2531DAC24();
    swift_allocError();
    v24 = v23;
    *v23 = v21;
    v25 = *(v0 + 8);
    v26 = swift_allocObject();
    *(v26 + 16) = v8;
    *(v26 + 24) = v25;
    if (v25 >> 62)
    {
      v27 = 0;
      if (v25 >> 62 != 1)
      {
        goto LABEL_18;
      }

      v28 = ((v25 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = (v25 + 64);
    }

    v27 = *v28;

LABEL_18:
    if (!__OFADD__(v27, 1))
    {
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *(v26 + 32) = v27 + 1;
      sub_25316B2C4(v26 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
      swift_willThrow();
      return;
    }

    goto LABEL_22;
  }

  if (v8 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(v0 + 48);
  v10 = v7 + 24 * v8;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  sub_25316D004(v11, v12, v13);
  sub_253170AB0(v1, v2, 0xFFu);
  v6 = *(v0 + 48);
  if (v6 != 255)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    sub_25316D004(v4, v5, *(v0 + 48));
    LOBYTE(v3) = v9;
    goto LABEL_6;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2531A1C68@<X0>(uint64_t result@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v7 = result;
  v8 = *v4;
  v9 = v4[4];
  v47 = v4 + 4;
  v10 = v4[5];
  v11 = *(v4 + 48);
  v12 = v9;
  v13 = v10;
  LOBYTE(v14) = *(v4 + 48);
  if (v11 == 255)
  {
    v15 = a2;
    v41 = result;
    v16 = v6[2];
    v17 = v6[3];
    if (v17 < *(v16 + 16))
    {
      v39 = a4;
      v40 = a3;
      if (v17 < 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v18 = v16 + 24 * v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      v6[4] = v19;
      v6[5] = v20;
      *(v6 + 48) = v21;
      sub_25316D004(v19, v20, v21);
      result = sub_253170AB0(v9, v10, 0xFFu);
      v14 = *(v6 + 48);
      if (v14 == 255)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v12 = v6[4];
      v13 = v6[5];
      sub_25316D004(v12, v13, *(v6 + 48));
      v7 = v41;
      a2 = v15;
      a3 = v40;
      a4 = v39;
      goto LABEL_6;
    }

    if (a2 != &_s12ValueDecoderV16UnkeyedContainerVN)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    }

    v31 = sub_2531DAC24();
    swift_allocError();
    v33 = v32;
    *v32 = v41;
    v34 = v6[1];
    result = swift_allocObject();
    v35 = result;
    *(result + 16) = v17;
    *(result + 24) = v34;
    if (v34 >> 62)
    {
      v36 = 0;
      if (v34 >> 62 != 1)
      {
LABEL_16:
        if (__OFADD__(v36, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v35 + 32) = v36 + 1;
        sub_25316B2C4(v35 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
        return swift_willThrow();
      }

      v37 = ((v34 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = (v34 + 64);
    }

    v36 = *v37;

    goto LABEL_16;
  }

LABEL_6:
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v22 = v6[1];
  v23 = v6[3];
  v42[1] = 0;
  v42[2] = 0;
  v42[0] = v23;
  v43 = 2;
  v24 = a2;
  v25 = v10;
  v26 = a3;
  v27 = v11;
  v28 = a4;
  sub_2531A8148(v9, v25, v27);
  v29 = sub_25316B674();
  sub_25319D118(&v44, v7, v22, v42, v24, &_s10_CodingKeyON, v26, v29, v28);
  result = sub_25316D2BC(v44, v45, v46);
  if (!v5)
  {
    if (!__OFADD__(v23, 1))
    {
      v6[3] = v23 + 1;
      result = sub_253170AB0(v6[4], v6[5], *(v6 + 48));
      v30 = v47;
      *v47 = 0;
      v30[1] = 0;
      *(v6 + 48) = -1;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

ValueMetadata *sub_2531A1FA8()
{
  v1 = v0;
  v2 = *v0;
  result = sub_2531DAE54();
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 48);
  if (v6 != 255)
  {

    v7 = v4;
    v41 = v4;
    v39 = v5;
    v42 = v6;
LABEL_7:
    v15 = v1[1];
    v16 = v1[3];
    v9 = swift_allocObject();
    *(v9 + 16) = v16;
    *(v9 + 24) = v15;
    if (v15 >> 62)
    {
      if (v15 >> 62 != 1)
      {
        v19 = 1;
        goto LABEL_12;
      }

      v17 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = (v15 + 64);
    }

    v18 = *v17;

    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
LABEL_12:
      *(v9 + 32) = v19;
      v38 = *(v2 + 32);
      *(v2 + 32) = v9 | 0x4000000000000000;
      swift_beginAccess();
      v20 = *(v2 + 24);
      sub_2531A8148(v7, v39, v6);

      sub_25316D004(v41, v5, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 24) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_25316A3D4(0, *(v20 + 2) + 1, 1, v20);
        *(v2 + 24) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_25316A3D4((v22 > 1), v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = &v20[24 * v23];
      *(v24 + 4) = v41;
      *(v24 + 5) = v5;
      v24[48] = v42;
      *(v2 + 24) = v20;
      swift_endAccess();
      v25 = *v1;

      sub_25319B7DC();

      if (v40)
      {
        v26 = *(v2 + 32);
        *(v2 + 32) = v38;

        sub_25319B61C();

        sub_25316D2BC(v41, v5, v42);
      }

      v27 = *(v2 + 32);
      *(v2 + 32) = v38;

      sub_25319B61C();

      sub_25316D2BC(v41, v5, v42);

      if (!__OFADD__(v16, 1))
      {
        v1[3] = v16 + 1;
        result = sub_253170AB0(v1[4], v1[5], *(v1 + 48));
        v1[4] = 0;
        v1[5] = 0;
        *(v1 + 48) = -1;
        return result;
      }

      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
LABEL_22:
    if (result == &_s12ValueDecoderV16UnkeyedContainerVN)
    {
      v29 = result;
    }

    else
    {
      v28 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
      v29 = v28;
    }

    v30 = sub_2531DAC24();
    swift_allocError();
    v32 = v31;
    *v31 = v29;
    v33 = v1[1];
    result = swift_allocObject();
    v34 = result;
    result[1].Kind = v9;
    result[1].Description = v33;
    if (v33 >> 62)
    {
      v35 = 0;
      if (v33 >> 62 != 1)
      {
        goto LABEL_30;
      }

      v36 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = (v33 + 64);
    }

    v35 = *v36;

LABEL_30:
    if (!__OFADD__(v35, 1))
    {
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      v34[2].Kind = v35 + 1;
      sub_25316B2C4(v34 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      return swift_willThrow();
    }

    goto LABEL_34;
  }

  v8 = v0[2];
  v9 = v0[3];
  if (v9 >= *(v8 + 16))
  {
    goto LABEL_22;
  }

  v39 = v0[5];
  if (v9 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v8 + 24 * v9;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v10 + 48);
  v1[4] = v12;
  v1[5] = v11;
  *(v1 + 48) = v13;

  sub_25316D004(v12, v11, v13);
  result = sub_253170AB0(v4, v39, 0xFFu);
  v14 = *(v1 + 48);
  if (v14 != 255)
  {
    v7 = v4;
    v5 = v1[5];
    v41 = v1[4];
    v42 = *(v1 + 48);
    sub_25316D004(v41, v5, v14);
    goto LABEL_7;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_2531A24A8(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = *v1;
  v5 = v3[4];
  v6 = v3[5];
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    v44 = a1;
    v42 = v2;

    v8 = v5;
    v41 = v5;
    v45 = v6;
    v43 = v6;
    v9 = v7;
LABEL_7:
    v18 = v3[1];
    v19 = v3[3];
    v20 = swift_allocObject();
    v40 = v19;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    if (v18 >> 62)
    {
      if (v18 >> 62 != 1)
      {
        LOBYTE(v11) = v9;
        v23 = 1;
        goto LABEL_12;
      }

      v21 = ((v18 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = (v18 + 64);
    }

    v11 = v9;
    v22 = *v21;

    v23 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
LABEL_12:
      *(v20 + 32) = v23;
      v24 = *(v4 + 32);
      *(v4 + 32) = v20 | 0x4000000000000000;
      swift_beginAccess();
      v25 = *(v4 + 24);
      sub_2531A8148(v8, v45, v7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_25316A3D4(0, *(v25 + 2) + 1, 1, v25);
        *(v4 + 24) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_25316A3D4((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[24 * v28];
      *(v29 + 4) = v41;
      *(v29 + 5) = v43;
      v29[48] = v11;
      *(v4 + 24) = v25;
      swift_endAccess();
      sub_25316D004(v41, v43, v11);
      sub_25319BBF0(v44);
      if (v42)
      {
        v30 = *(v4 + 32);
        *(v4 + 32) = v24;

        sub_25319B61C();

        sub_25316D2BC(v41, v43, v11);
        return;
      }

      v31 = *(v4 + 32);
      *(v4 + 32) = v24;

      sub_25319B61C();

      sub_25316D2BC(v41, v43, v11);
      if (!__OFADD__(v40, 1))
      {
        v3[3] = v40 + 1;
        sub_253170AB0(v3[4], v3[5], *(v3 + 48));
        v3[4] = 0;
        v3[5] = 0;
        *(v3 + 48) = -1;
        return;
      }

      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
LABEL_22:
    v32 = sub_2531DAC24();
    swift_allocError();
    v34 = v33;
    *v33 = &_s12ValueDecoderV16UnkeyedContainerVN;
    v35 = v3[1];
    v36 = swift_allocObject();
    *(v36 + 16) = v11;
    *(v36 + 24) = v35;
    if (v35 >> 62)
    {
      v37 = 0;
      if (v35 >> 62 != 1)
      {
        goto LABEL_27;
      }

      v38 = ((v35 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v38 = (v35 + 64);
    }

    v37 = *v38;

LABEL_27:
    if (!__OFADD__(v37, 1))
    {
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *(v36 + 32) = v37 + 1;
      sub_25316B2C4(v36 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
      return;
    }

    goto LABEL_31;
  }

  v10 = v3[2];
  v11 = v3[3];
  if (v11 >= *(v10 + 16))
  {
    goto LABEL_22;
  }

  v45 = v3[5];
  v44 = a1;
  if (v11 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = v2;
  v13 = v10 + 24 * v11;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v3[4] = v14;
  v3[5] = v15;
  *(v3 + 48) = v16;

  sub_25316D004(v14, v15, v16);
  v8 = v5;
  sub_253170AB0(v5, v45, 0xFFu);
  v17 = *(v3 + 48);
  if (v17 != 255)
  {
    v41 = v3[4];
    v42 = v12;
    v43 = v3[5];
    v9 = *(v3 + 48);
    sub_25316D004(v41, v43, v17);
    goto LABEL_7;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_2531A2918@<X0>(void *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = v5;
  v8 = v4;
  v9 = v6;
  if (v6 != 255)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  if (v9 >= *(v10 + 16))
  {
    goto LABEL_15;
  }

  if (v9 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10 + 24 * v9;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;
  *(v1 + 48) = v14;
  sub_25316D004(v12, v13, v14);
  result = sub_253170AB0(v5, v4, 0xFFu);
  v9 = *(v1 + 48);
  if (v9 != 255)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    sub_25316D004(v7, v8, *(v1 + 48));
LABEL_6:
    v39 = v4;
    v40 = v7;
    v15 = *(v1 + 8);
    v16 = *(v1 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    if (v15 >> 62)
    {
      if (v15 >> 62 != 1)
      {
        v20 = 1;
        goto LABEL_11;
      }

      v18 = ((v15 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = (v15 + 64);
    }

    v19 = *v18;

    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_11:
      v38 = v5;
      *(v17 + 32) = v20;
      v21 = *(*v1 + 16);
      v22 = v16;
      v23 = _s12ValueDecoderV14ImplementationCMa();
      v24 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2531E14E0;
      *(v25 + 32) = v40;
      *(v25 + 40) = v8;
      *(v25 + 48) = v9;
      v24[3] = v25;
      v24[4] = v17 | 0x4000000000000000;
      v24[2] = v21;
      a1[3] = v23;
      result = sub_2531A4AA0(&qword_27F58D718);
      a1[4] = result;
      *a1 = v24;
      if (!__OFADD__(v22, 1))
      {
        *(v1 + 24) = v22 + 1;
        v26 = *(v1 + 32);
        v27 = *(v1 + 40);
        v28 = *(v1 + 48);
        sub_2531A8148(v38, v39, v6);

        result = sub_253170AB0(v26, v27, v28);
        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        *(v1 + 48) = -1;
        return result;
      }

      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
LABEL_15:
    v29 = result;
    v30 = sub_2531DAC24();
    swift_allocError();
    v32 = v31;
    *v31 = v29;
    v33 = *(v1 + 8);
    result = swift_allocObject();
    v34 = result;
    *(result + 16) = v9;
    *(result + 24) = v33;
    if (v33 >> 62)
    {
      v35 = 0;
      if (v33 >> 62 != 1)
      {
        goto LABEL_20;
      }

      v36 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = (v33 + 64);
    }

    v35 = *v36;

LABEL_20:
    if (!__OFADD__(v35, 1))
    {
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *(v34 + 32) = v35 + 1;
      sub_25316B2C4(v34 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      result = swift_willThrow();
      if (!__OFADD__(v9, 1))
      {
        *(v1 + 24) = v9 + 1;
        result = sub_253170AB0(*(v1 + 32), *(v1 + 40), *(v1 + 48));
        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        *(v1 + 48) = -1;
        return result;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A2ECC()
{
  result = sub_2531DAF74();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A2F1C()
{
  result = sub_2531DAF84();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A2FC4()
{
  result = sub_2531DAFB4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A3014()
{
  result = sub_2531DAF94();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A3154()
{
  result = sub_2531DAFC4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A31A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_2531A3244()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2531B472C(0, v2, 0);
    result = v12;
    v4 = *(v12 + 16);
    v5 = 12 * v4;
    v6 = (v1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v13 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        sub_2531B472C((v9 > 1), v4 + 1, 1);
        result = v13;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 12;
      v6 += 40;
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

BOOL sub_2531A3324(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = __ROR8__(*a1, 32);
  v4 = *(v2 + 16);
  v5 = *a1;
  if (!*(a1 + 8))
  {
    v5 = v3;
  }

  v6 = (v2 + 40);
  v7 = v4 + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v10 = *(v6 - 1);
    v8 = *v6;
    v6 += 40;
    v9 = __ROR8__(v10, 32);
    v10 = v10;
    if (!v8)
    {
      v10 = v9;
    }
  }

  while (v10 != v5);
  return v7 != 0;
}

uint64_t sub_2531A3380(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = __ROR8__(*a1, 32);
  if (v3)
  {
    v6 = *a1;
  }

  v7 = v4 + 24;
  v8 = *(v4 + 16) + 1;
  do
  {
    if (!--v8)
    {
      v14 = sub_2531DAC24();
      swift_allocError();
      v16 = v15;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
      *(v16 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v16 + 32) = sub_253168DD0();
      *v16 = v2;
      *(v16 + 8) = v3;
      sub_25316B2C4(v5);
      sub_2531DABC4();

      v17 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v17);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v18 = sub_2531DAF34();
      MEMORY[0x259BFE570](v18);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84158], v14);
      swift_willThrow();
      return v13 & 1;
    }

    v9 = (v7 + 40);
    v10 = __ROR8__(*(v7 + 8), 32);
    v11 = *(v7 + 8);
    if (!*(v7 + 16))
    {
      v11 = v10;
    }

    v7 += 40;
  }

  while (v11 != v6);
  if (*v9 == 10 && *(v9 - 1) == 0)
  {
    sub_25316D004(0, 0, 0xAu);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2531A35E8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *v4;
  v12 = v5[1];
  v11 = v5[2];
  v13 = __ROR8__(*a1, 32);
  if (v9)
  {
    v13 = *a1;
  }

  v14 = v11 + 24;
  v15 = *(v11 + 16) + 1;
  while (--v15)
  {
    v16 = (v14 + 40);
    v17 = __ROR8__(*(v14 + 8), 32);
    v18 = *(v14 + 8);
    if (!*(v14 + 16))
    {
      v18 = v17;
    }

    v14 += 40;
    if (v18 == v13)
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      v31 = *(v16 - 2);
      v32 = v19;
      v33 = v20;
      v29 = v8;
      v30 = v9;
      sub_25316D004(v31, v19, v20);
      v22 = sub_253168DD0();
      sub_25319D118(&v31, a2, v12, &v29, a2, &_s3TagO14CodingKeyProxyVN, a3, v22, a4);
      return sub_25316D2BC(v31, v32, v33);
    }
  }

  v24 = sub_2531DAC24();
  swift_allocError();
  v26 = v25;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v26 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v26 + 32) = sub_253168DD0();
  *v26 = v8;
  *(v26 + 8) = v9;
  sub_25316B2C4(v12);
  sub_2531DABC4();

  v31 = 0xD00000000000001DLL;
  v32 = 0x80000002531DCC40;
  v27 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v27);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  v29 = v8;
  v30 = v9;
  sub_2531690C0();
  v28 = sub_2531DAF34();
  MEMORY[0x259BFE570](v28);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84158], v24);
  return swift_willThrow();
}

uint64_t sub_2531A388C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *v2;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a2, 32);
  if (*(a2 + 8))
  {
    v9 = *a2;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v21 = sub_2531DAC24();
      swift_allocError();
      v23 = v22;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
      *(v23 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v23 + 32) = sub_253168DD0();
      *v23 = v4;
      *(v23 + 8) = v5;
      sub_25316B2C4(v8);
      sub_2531DABC4();

      v35[0] = 0xD00000000000001DLL;
      v35[1] = 0x80000002531DCC40;
      v24 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v24);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v25 = sub_2531DAF34();
      MEMORY[0x259BFE570](v25);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84158], v21);
      return swift_willThrow();
    }

    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
  }

  while (v14 != v9);
  v16 = *(v12 - 2);
  v15 = *(v12 - 1);
  v17 = *v12;
  v36 = v8;
  v18 = swift_allocObject();
  *(v18 + 40) = &_s3TagO14CodingKeyProxyVN;
  v19 = sub_253168DD0();
  *(v18 + 16) = v4;
  *(v18 + 24) = v5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      v28 = 1;
      goto LABEL_14;
    }

    v20 = 32;
  }

  else
  {
    v20 = 64;
  }

  v27 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + v20);
  sub_2531AA970(&v36, v35);
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  *(v18 + 64) = v28;
  v5 = *(v6 + 32);
  *(v6 + 32) = v18;
  swift_beginAccess();
  v8 = *(v6 + 24);
  sub_25316D004(v16, v15, v17);
  sub_25316D004(v16, v15, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v8 = sub_25316A3D4(0, *(v8 + 16) + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v31 = *(v8 + 16);
  v30 = *(v8 + 24);
  if (v31 >= v30 >> 1)
  {
    v8 = sub_25316A3D4((v30 > 1), v31 + 1, 1, v8);
  }

  *(v8 + 16) = v31 + 1;
  v32 = v8 + 24 * v31;
  *(v32 + 32) = v16;
  *(v32 + 40) = v15;
  *(v32 + 48) = v17;
  *(v6 + 24) = v8;
  swift_endAccess();
  sub_25319B7DC();
  v33 = *(v6 + 32);
  *(v6 + 32) = v5;

  sub_25319B61C();

  return sub_25316D2BC(v16, v15, v17);
}

uint64_t sub_2531A3C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v21 = sub_2531DAC24();
      swift_allocError();
      v23 = v22;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
      *(v23 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v23 + 32) = sub_253168DD0();
      *v23 = v4;
      *(v23 + 8) = v5;
      sub_25316B2C4(v8);
      sub_2531DABC4();

      v24 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v24);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v25 = sub_2531DAF34();
      MEMORY[0x259BFE570](v25);

      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84158], v21);
      return swift_willThrow();
    }

    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
  }

  while (v14 != v9);
  v16 = *(v12 - 2);
  v15 = *(v12 - 1);
  v17 = *v12;
  v18 = swift_allocObject();
  *(v18 + 40) = &_s3TagO14CodingKeyProxyVN;
  v19 = sub_253168DD0();
  *(v18 + 16) = v4;
  *(v18 + 24) = v5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      v28 = 1;
      goto LABEL_14;
    }

    v20 = ((v8 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v20 = (v8 + 64);
  }

  v27 = *v20;

  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  *(v18 + 64) = v28;
  v5 = *(v6 + 32);
  *(v6 + 32) = v18;
  swift_beginAccess();
  v8 = *(v6 + 24);
  sub_25316D004(v16, v15, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_20:
    v8 = sub_25316A3D4(0, *(v8 + 16) + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v31 = *(v8 + 16);
  v30 = *(v8 + 24);
  if (v31 >= v30 >> 1)
  {
    v8 = sub_25316A3D4((v30 > 1), v31 + 1, 1, v8);
  }

  *(v8 + 16) = v31 + 1;
  v32 = v8 + 24 * v31;
  *(v32 + 32) = v16;
  *(v32 + 40) = v15;
  *(v32 + 48) = v17;
  *(v6 + 24) = v8;
  swift_endAccess();
  sub_25316D004(v16, v15, v17);
  sub_25319BBF0(a2);
  v33 = *(v6 + 32);
  *(v6 + 32) = v5;

  sub_25319B61C();

  return sub_25316D2BC(v16, v15, v17);
}

uint64_t sub_2531A4058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = __ROR8__(*a1, 32);
  if (v4)
  {
    v8 = *a1;
  }

  v9 = v7 + 24;
  v10 = *(v7 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      goto LABEL_10;
    }
  }

  v17 = sub_2531DAC24();
  v18 = swift_allocError();
  v20 = v19;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v3;
  *(v20 + 8) = v4;
  sub_25316B2C4(v5);
  sub_2531DABC4();

  v21 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v22 = sub_2531DAF34();
  MEMORY[0x259BFE570](v22);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v17 - 8) + 104))(v20, *MEMORY[0x277D84158], v17);
  swift_willThrow();

  v14 = 0;
  v15 = 0;
  v16 = 10;
LABEL_10:
  v23 = swift_allocObject();
  *(v23 + 40) = &_s3TagO14CodingKeyProxyVN;
  v24 = sub_253168DD0();
  *(v23 + 16) = v3;
  *(v23 + 24) = v4;
  *(v23 + 48) = v24;
  *(v23 + 56) = v5;
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      v28 = 1;
      goto LABEL_15;
    }

    v25 = ((v5 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v25 = (v5 + 64);
  }

  v26 = *v25;

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
LABEL_15:
    *(v23 + 64) = v28;
    v29 = *(v6 + 16);
    v30 = _s12ValueDecoderV14ImplementationCMa();
    v31 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2531E14E0;
    *(v32 + 32) = v14;
    *(v32 + 40) = v15;
    *(v32 + 48) = v16;
    v31[3] = v32;
    v31[4] = v23;
    v31[2] = v29;
    a2[3] = v30;
    a2[4] = sub_2531A4AA0(&qword_27F58D718);
    *a2 = v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A4688()
{
  result = sub_2531DB1E4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A46D8()
{
  result = sub_2531DB1F4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4780()
{
  result = sub_2531DB224();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A47D0()
{
  result = sub_2531DB204();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4910()
{
  result = sub_2531DB234();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2531A4960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2531A4A5C(uint64_t a1)
{
  result = sub_2531A4AA0(&qword_27F58D718);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531A4AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s12ValueDecoderV14ImplementationCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2531A4AE4()
{
  result = qword_27F58DA98;
  if (!qword_27F58DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA98);
  }

  return result;
}

uint64_t sub_2531A4B50(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 5);
  v5 = *(v1 + 48);
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 24);
  v17 = v4;
  v18 = v5;
  v13 = sub_2531A3244();
  v12 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB38, &qword_2531E64F0);
  v7 = sub_2531ABFD8();
  v9 = sub_25316C670(sub_2531ABFB8, v11, v6, v12, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_2531A4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2531DAAF4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  if (*(a1 + 8) != 1 && (result = __ROR8__(*a1, 32), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_2531DB514();
    v11 = *(a2 - 8);
    result = (*(v11 + 48))(v9, 1, a2);
    if (result != 1)
    {
      return (*(v11 + 32))(a3, v9, a2);
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2531A4D60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v2 + 48);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = sub_2531DB504();
  if (v13)
  {
    return 0;
  }

  v15 = v12;
  v16 = sub_2531A3244();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = (v16 + 40);
    while (1)
    {
      if (*v19 == 1)
      {
        v20 = *(v19 - 1);
      }

      else
      {
        v20 = __ROR8__(*(v19 - 1), 32);
        if (v20 < 0)
        {
          __break(1u);
          break;
        }
      }

      v14 = v20 == v15;
      v21 = v20 == v15 || v18-- == 0;
      v19 += 12;
      if (v21)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

uint64_t sub_2531A4E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v36 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = *(v3 + 48);
  v29 = v10;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v26[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  v19 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v8, v5, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v19 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v20 = v36(&v27);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    sub_253170AB0(v21, v22, v23);
    return v20 & 1;
  }

  return result;
}

uint64_t sub_2531A5084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v13 = v2[4];
  v12 = v2[5];
  v14 = *(v2 + 48);
  v28 = v9;
  v29 = v8;
  v30 = v11;
  v31 = v10;
  v32 = v13;
  v33 = v12;
  v34 = v14;
  v16 = *(v15 + 16);
  v25 = v17;
  v16(v7);

  sub_2531A8148(v13, v12, v14);
  v18 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v7, v4, &v26);
  if (v27 == 255)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v24 = *(v18 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v27) = v27 & 1;
    v19 = sub_2531AAC58(&v26);
    v20 = v32;
    v21 = v33;
    v22 = v34;

    sub_253170AB0(v20, v21, v22);
    return v19;
  }

  return result;
}

uint64_t sub_2531A52C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v13 = v2[4];
  v12 = v2[5];
  v14 = *(v2 + 48);
  v27 = v9;
  v28 = v8;
  v29 = v11;
  v30 = v10;
  v31 = v13;
  v32 = v12;
  v33 = v14;
  v16 = *(v15 + 16);
  v24[1] = v17;
  v16(v7);

  sub_2531A8148(v13, v12, v14);
  v18 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v7, v4, &v25);
  if (v26 == 255)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v23 = *(v18 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v26) = v26 & 1;
    sub_2531AAF08(&v25);
    v19 = v31;
    v20 = v32;
    v21 = v33;

    return sub_253170AB0(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2531A5500(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v13 = v2[4];
  v12 = v2[5];
  v14 = *(v2 + 48);
  v27 = v9;
  v28 = v8;
  v29 = v11;
  v30 = v10;
  v31 = v13;
  v32 = v12;
  v33 = v14;
  v16 = *(v15 + 16);
  v24[1] = v17;
  v16(v7);

  sub_2531A8148(v13, v12, v14);
  v18 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v7, v4, &v25);
  if (v26 == 255)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v23 = *(v18 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v26) = v26 & 1;
    sub_2531AB19C(&v25);
    v19 = v31;
    v20 = v32;
    v21 = v33;

    return sub_253170AB0(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2531A573C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v36 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = *(v3 + 48);
  v29 = v10;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v26[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  v19 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v8, v5, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v19 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v20 = sub_2531ABBEC(&v27, v36);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    sub_253170AB0(v21, v22, v23);
    return v20;
  }

  return result;
}

uint64_t sub_2531A5978(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v36 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = *(v3 + 48);
  v29 = v10;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v26[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  v19 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v8, v5, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v19 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v20 = sub_2531AB430(&v27, v36);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    sub_253170AB0(v21, v22, v23);
    return v20;
  }

  return result;
}

uint64_t sub_2531A5BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v36 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = *(v3 + 48);
  v29 = v10;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v26[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  v19 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v8, v5, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v19 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v20 = sub_2531AB6C4(&v27, v36);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    sub_253170AB0(v21, v22, v23);
    return v20;
  }

  return result;
}

uint64_t sub_2531A5DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v36 = a3;
  v5 = *(a2 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = *(v3 + 48);
  v29 = v10;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v17 = *(v16 + 16);
  v26[1] = v18;
  v17(v8);

  sub_2531A8148(v13, v14, v15);
  v19 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v8, v5, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v19 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v20 = sub_2531AB958(&v27, v36);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    sub_253170AB0(v21, v22, v23);
    return v20;
  }

  return result;
}

uint64_t sub_2531A602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v28 = a5;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v5;
  v12 = v5[1];
  v14 = v5[2];
  v13 = v5[3];
  v15 = v5[4];
  v16 = v5[5];
  v17 = *(v5 + 48);
  v33 = v11;
  v34 = v12;
  v35 = v14;
  v36 = v13;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v19 = *(v18 + 16);
  v27[1] = v20;
  v19(v10);

  sub_2531A8148(v15, v16, v17);
  v21 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v10, v7, &v31);
  if (v32 == 255)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v26 = *(v21 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v32) = v32 & 1;
    sub_2531A35E8(&v31, v29, v30, v28);
    v22 = v37;
    v23 = v38;
    v24 = v39;

    return sub_253170AB0(v22, v23, v24);
  }

  return result;
}

uint64_t sub_2531A6268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v27[1] = a5;
  v28 = a1;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v5;
  v12 = v5[1];
  v14 = v5[2];
  v13 = v5[3];
  v15 = v5[4];
  v16 = v5[5];
  v17 = *(v5 + 48);
  v33 = v11;
  v34 = v12;
  v35 = v14;
  v36 = v13;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v19 = *(v18 + 16);
  v27[0] = v20;
  v19(v10);

  sub_2531A8148(v15, v16, v17);
  v21 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v10, v7, &v31);
  if (v32 == 255)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v26 = *(v21 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v32) = v32 & 1;
    sub_2531A388C(v28, &v31);
    v22 = v37;
    v23 = v38;
    v24 = v39;

    return sub_253170AB0(v22, v23, v24);
  }

  return result;
}

uint64_t sub_2531A64A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v26[1] = a4;
  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v10 = v4[1];
  v13 = v4[2];
  v12 = v4[3];
  v14 = v4[4];
  v15 = v4[5];
  v16 = *(v4 + 48);
  v29 = v11;
  v30 = v10;
  v31 = v13;
  v32 = v12;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v18 = *(v17 + 16);
  v26[0] = v19;
  v18(v9);

  sub_2531A8148(v14, v15, v16);
  v20 = *(a2 + 24);
  MTR.Tag.init<A>(codingKey:)(v9, v6, &v27);
  if (v28 == 255)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000058, 0x80000002531DCCE0);
    v25 = *(v20 + 16);
    sub_2531DB134();
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    LOBYTE(v28) = v28 & 1;
    v36(&v27);
    v21 = v33;
    v22 = v34;
    v23 = v35;

    return sub_253170AB0(v21, v22, v23);
  }

  return result;
}

uint64_t sub_2531A6A0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2531A6C18(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2531A6A9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2531A6C7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2531A6B38()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2531A6C18(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A6B9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v3 + 24 * v5;
      v7 = *(v6 + 24);
      *a1 = *(v6 + 8);
      *(a1 + 16) = v7;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_2531A6C7C(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2531A6C18(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2531DAD44();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2531DAC04();
}

uint64_t sub_2531A6C90(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v43 = a3;
  v44 = a2;
  v47 = *(a4 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2531DAAF4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v19 = &v38 - v18;
  v20 = *a1;
  v21 = a1[1];
  v22 = *(a1 + 16);
  if (v22 != 6)
  {
    if (v22 == 10 && !(v21 | v20))
    {
      v26 = v16;
      v27 = v17;
      v41 = sub_2531DAC24();
      swift_allocError();
      v39 = v27;
      v40 = v28;
      *v28 = MEMORY[0x277CC9318];
      v29 = *(v27 + 16);
      v29(v19, v43, v26);
      v30 = v26;
      v29(v15, v19, v26);
      v31 = v47;
      if ((*(v47 + 48))(v15, 1, a4) == 1)
      {
        v32 = *(v39 + 8);
        v32(v15, v30);
        sub_25316B2C4(v44);
        v32(v19, v30);
      }

      else
      {
        (*(v31 + 32))(v10, v15, a4);
        v33 = sub_25316B2C4(v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        v35 = v42;
        *(inited + 56) = a4;
        *(inited + 64) = v35;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v31 + 16))(boxed_opaque_existential_0, v10, a4);
        v45 = v33;
        sub_25318DDCC(inited);
        (*(v31 + 8))(v10, a4);
        (*(v39 + 8))(v19, v30);
      }

      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1635017028, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      v37 = v40;
      sub_2531DAC14();
      (*(*(v41 - 8) + 104))(v37, *MEMORY[0x277D84170]);
    }

    else
    {
      v23 = *(v5 + 32);

      sub_25316B2C4(v23);

      sub_2531DAC24();
      swift_allocError();
      sub_253198EA4(v22, v24);
    }

    swift_willThrow();
  }

  return v20;
}

uint64_t sub_2531A7104(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v10 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D837D0];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x676E69727453, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v10 - 8) + 104))(v19, *MEMORY[0x277D84170], v10);
      goto LABEL_6;
    }
  }

  else if (a3 == 5)
  {
    return v10;
  }

  v11 = *(v8 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319936C(a3, v12);

LABEL_6:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A73C0()
{
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = *(v0 + 32);
    sub_25316D004(v6, v7, v8);

    v10 = sub_2531A7104(v6, v7, v8, v9, 0, 0, 0, 255);
    if (!v1)
    {
    }

    sub_25316D2BC(v6, v7, v8);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A74B4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    v9 = sub_25319C134(v5, v6, v8, v7, 0, 0, 0, 255);

    sub_25316D2BC(v5, v6, v8);
    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A758C(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v8 = sub_2531DAC24();
      swift_allocError();
      v16 = v15;
      *v15 = MEMORY[0x277D837D0];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x676E69727453, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v8 - 8) + 104))(v16, *MEMORY[0x277D84170], v8);
      goto LABEL_6;
    }
  }

  else if (a3 == 5)
  {
    return v8;
  }

  v9 = *(v6 + 32);

  sub_25316B2C4(v9);

  sub_2531DAC24();
  swift_allocError();
  sub_25319936C(a3, v10);

LABEL_6:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A781C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    sub_25319C668(v5, v6, v8, v7, 0, 0, 0, 255);

    return sub_25316D2BC(v5, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A78FC()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v0 + 32);
    v8 = *(v4 + 24);
    sub_25316D004(v5, v6, v8);

    sub_25319CBD4(v5, v6, v8, v7, 0, 0, 0, 255);

    return sub_25316D2BC(v5, v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A79DC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7AC4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7BAC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7C94(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v1 + 32);
    v10 = *(v6 + 24);
    sub_25316D004(v7, v8, *(v6 + 24));

    v11 = a1(v7, v8, v10, v9, 0, 0, 0, 255);

    sub_25316D2BC(v7, v8, v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A7D7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 0)
  {
  }

  return result;
}

uint64_t sub_2531A7D98(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a1;
  if (a3 != 6)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v9 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277CC9318];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1635017028, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v9 - 8) + 104))(v19, *MEMORY[0x277D84170], v9);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_253198EA4(a3, v12);
    }

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_2531A8050()
{
  result = swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = *(v0 + 32);
    sub_25316D004(v6, v7, v8);

    v10 = sub_2531A7D98(v6, v7, v8, v9, 0, 0, 0, 255);
    v12 = v10;
    if (!v1)
    {
      sub_25316D050(v10, v11);
    }

    sub_25316D2BC(v6, v7, v8);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531A8148(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_25316D004(result, a2, a3);
  }

  return result;
}

void sub_2531A815C()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D839B0];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319C134(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8434()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 != 255)
  {
    goto LABEL_6;
  }

  v10 = v2[2];
  v11 = v2[3];
  if (v11 >= *(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D837D0];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
        goto LABEL_15;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

LABEL_15:
    if (!__OFADD__(v25, 1))
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *(v24 + 32) = v25 + 1;
      sub_25316B2C4(v24 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      swift_willThrow();
      return;
    }

    goto LABEL_19;
  }

  if (v11 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *(v2 + 48);
  v13 = v10 + 24 * v11;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v2[4] = v14;
  v2[5] = v15;
  *(v2 + 48) = v16;
  sub_25316D004(v14, v15, v16);
  sub_253170AB0(v4, v5, 0xFFu);
  v9 = *(v2 + 48);
  if (v9 != 255)
  {
    v7 = v2[4];
    v8 = v2[5];
    sub_25316D004(v7, v8, *(v2 + 48));
    LOBYTE(v6) = v12;
LABEL_6:
    v17 = v2[1];
    v18 = v2[3];
    sub_2531A8148(v4, v5, v6);
    sub_2531A7104(v7, v8, v9, v17, v18, 0, 0, 2);
    if (v1)
    {
      sub_25316D2BC(v7, v8, v9);
      return;
    }

    sub_25316D2BC(v7, v8, v9);
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void sub_2531A8730()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D839F8];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319C668(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8A18()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D83A90];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319CBD4(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8D00()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D83B88];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319DAD4(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A8FD8()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84900];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319DD88(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A92B0()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84958];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319E0AC(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9588()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D849A8];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319E3D8(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9860()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84A28];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319E704(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9B38()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D83E88];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319F7C0(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531A9E10()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84B78];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319FA74(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA0E8()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84C58];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_25319FDA0(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA3C0()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84CC0];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_2531A00CC(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_2531AA698()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(v2 + 48);
  v7 = v4;
  v8 = v5;
  LOBYTE(v9) = *(v2 + 48);
  if (v6 == 255)
  {
    v10 = v2[2];
    v11 = v2[3];
    if (v11 < *(v10 + 16))
    {
      if (v11 < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v2 + 48);
      v13 = v10 + 24 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      v2[4] = v14;
      v2[5] = v15;
      *(v2 + 48) = v16;
      sub_25316D004(v14, v15, v16);
      sub_253170AB0(v4, v5, 0xFFu);
      v9 = *(v2 + 48);
      if (v9 == 255)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v7 = v2[4];
      v8 = v2[5];
      sub_25316D004(v7, v8, *(v2 + 48));
      LOBYTE(v6) = v12;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v19 = MEMORY[0x277D84D38];
    v20 = sub_2531DAC24();
    swift_allocError();
    v22 = v21;
    *v21 = v19;
    v23 = v2[1];
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v23;
    if (v23 >> 62)
    {
      v25 = 0;
      if (v23 >> 62 != 1)
      {
LABEL_14:
        if (__OFADD__(v25, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        *(v24 + 32) = v25 + 1;
        sub_25316B2C4(v24 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
        swift_willThrow();
        return;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v25 = *v26;

    goto LABEL_14;
  }

LABEL_6:
  v17 = v2[1];
  v18 = v2[3];
  sub_2531A8148(v4, v5, v6);
  sub_2531A03F8(v7, v8, v9, v17, v18, 0, 0, 2);
  sub_25316D2BC(v7, v8, v9);
  if (!v1)
  {
    if (!__OFADD__(v18, 1))
    {
      v2[3] = v18 + 1;
      sub_253170AB0(v2[4], v2[5], *(v2 + 48));
      v2[4] = 0;
      v2[5] = 0;
      *(v2 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_2531AA9CC(void *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v1;
  v7 = v2[1];
  v6 = v2[2];
  v8 = __ROR8__(*a1, 32);
  if (v4)
  {
    v8 = *a1;
  }

  v9 = v6 + 24;
  v10 = *(v6 + 16) + 1;
  while (--v10)
  {
    v11 = (v9 + 40);
    v12 = __ROR8__(*(v9 + 8), 32);
    v13 = *(v9 + 8);
    if (!*(v9 + 16))
    {
      v13 = v12;
    }

    v9 += 40;
    if (v13 == v8)
    {
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_25316D004(v14, v15, *v11);
      LOBYTE(v17) = sub_25319C3E4(v14, v15, v16, v7, v3, v4);
      sub_25316D2BC(v14, v15, v16);
      return v17 & 1;
    }
  }

  v18 = sub_2531DAC24();
  swift_allocError();
  v20 = v19;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v20 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v20 + 32) = sub_253168DD0();
  *v20 = v3;
  *(v20 + 8) = v4;
  sub_25316B2C4(v7);
  sub_2531DABC4();

  v25[0] = 0xD00000000000001DLL;
  v25[1] = 0x80000002531DCC40;
  v22 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v22);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v23 = sub_2531DAF34();
  MEMORY[0x259BFE570](v23);

  v17 = v25;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84158], v18);
  swift_willThrow();
  return v17 & 1;
}

void *sub_2531AAC58(void *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v1;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (v5)
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v19 = sub_2531DAC24();
      swift_allocError();
      v21 = v20;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
      *(v21 + 24) = &_s3TagO14CodingKeyProxyVN;
      *(v21 + 32) = sub_253168DD0();
      *v21 = v4;
      *(v21 + 8) = v5;
      sub_25316B2C4(v8);
      sub_2531DABC4();

      v26[0] = 0xD00000000000001DLL;
      v26[1] = 0x80000002531DCC40;
      v23 = MTR.Tag.description.getter();
      MEMORY[0x259BFE570](v23);

      MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
      sub_2531690C0();
      v24 = sub_2531DAF34();
      MEMORY[0x259BFE570](v24);

      v6 = v26;
      MEMORY[0x259BFE570](11817, 0xE200000000000000);
      sub_2531DAC14();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84158], v19);
      swift_willThrow();
      return v6;
    }

    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
  }

  while (v14 != v9);
  v15 = *(v12 - 2);
  v16 = *(v12 - 1);
  v17 = *v12;
  sub_25316D004(v15, v16, *v12);
  v18 = sub_2531A758C(v15, v16, v17, v8, v4, v5);
  if (!v2)
  {
    v6 = v18;
  }

  sub_25316D2BC(v15, v16, v17);
  return v6;
}

double sub_2531AAF08(void *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v1;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (v5)
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  while (--v11)
  {
    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
    if (v14 == v9)
    {
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      sub_25316D004(v15, v16, *v12);
      sub_25319C934(v15, v16, v17, v8, v4, v5);
      v2 = v18;
      sub_25316D2BC(v15, v16, v17);
      return v2;
    }
  }

  v19 = sub_2531DAC24();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v21 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v21 + 32) = sub_253168DD0();
  *v21 = v4;
  *(v21 + 8) = v5;
  sub_25316B2C4(v8);
  sub_2531DABC4();

  v23 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v23);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v24 = sub_2531DAF34();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84158], v19);
  swift_willThrow();
  return v2;
}

float sub_2531AB19C(void *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v1;
  v8 = v3[1];
  v7 = v3[2];
  v9 = __ROR8__(*a1, 32);
  if (v5)
  {
    v9 = *a1;
  }

  v10 = v7 + 24;
  v11 = *(v7 + 16) + 1;
  while (--v11)
  {
    v12 = (v10 + 40);
    v13 = __ROR8__(*(v10 + 8), 32);
    v14 = *(v10 + 8);
    if (!*(v10 + 16))
    {
      v14 = v13;
    }

    v10 += 40;
    if (v14 == v9)
    {
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      sub_25316D004(v15, v16, *v12);
      sub_25319CE8C(v15, v16, v17, v8, v4, v5);
      v2 = v18;
      sub_25316D2BC(v15, v16, v17);
      return v2;
    }
  }

  v19 = sub_2531DAC24();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v21 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v21 + 32) = sub_253168DD0();
  *v21 = v4;
  *(v21 + 8) = v5;
  sub_25316B2C4(v8);
  sub_2531DABC4();

  v23 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v23);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v24 = sub_2531DAF34();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84158], v19);
  swift_willThrow();
  return v2;
}

void *sub_2531AB430(uint64_t *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v2;
  v9 = v4[1];
  v8 = v4[2];
  v10 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v10 = *a1;
  }

  v11 = v8 + 24;
  v12 = *(v8 + 16) + 1;
  while (--v12)
  {
    v13 = (v11 + 40);
    v14 = __ROR8__(*(v11 + 8), 32);
    v15 = *(v11 + 8);
    if (!*(v11 + 16))
    {
      v15 = v14;
    }

    v11 += 40;
    if (v15 == v10)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_25316D004(v16, v17, *v13);
      v19 = a2(v16, v17, v18, v9, v5, v6);
      sub_25316D2BC(v16, v17, v18);
      return v19;
    }
  }

  v20 = sub_2531DAC24();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v22 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v22 + 32) = sub_253168DD0();
  *v22 = v5;
  *(v22 + 8) = v6;
  sub_25316B2C4(v9);
  sub_2531DABC4();

  v27[0] = 0xD00000000000001DLL;
  v27[1] = 0x80000002531DCC40;
  v24 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v25 = sub_2531DAF34();
  MEMORY[0x259BFE570](v25);

  v19 = v27;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
  swift_willThrow();
  return v19;
}

void *sub_2531AB6C4(uint64_t *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v2;
  v9 = v4[1];
  v8 = v4[2];
  v10 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v10 = *a1;
  }

  v11 = v8 + 24;
  v12 = *(v8 + 16) + 1;
  while (--v12)
  {
    v13 = (v11 + 40);
    v14 = __ROR8__(*(v11 + 8), 32);
    v15 = *(v11 + 8);
    if (!*(v11 + 16))
    {
      v15 = v14;
    }

    v11 += 40;
    if (v15 == v10)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_25316D004(v16, v17, *v13);
      v19 = a2(v16, v17, v18, v9, v5, v6);
      sub_25316D2BC(v16, v17, v18);
      return v19;
    }
  }

  v20 = sub_2531DAC24();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v22 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v22 + 32) = sub_253168DD0();
  *v22 = v5;
  *(v22 + 8) = v6;
  sub_25316B2C4(v9);
  sub_2531DABC4();

  v27[0] = 0xD00000000000001DLL;
  v27[1] = 0x80000002531DCC40;
  v24 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v25 = sub_2531DAF34();
  MEMORY[0x259BFE570](v25);

  v19 = v27;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
  swift_willThrow();
  return v19;
}

void *sub_2531AB958(uint64_t *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v2;
  v9 = v4[1];
  v8 = v4[2];
  v10 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v10 = *a1;
  }

  v11 = v8 + 24;
  v12 = *(v8 + 16) + 1;
  while (--v12)
  {
    v13 = (v11 + 40);
    v14 = __ROR8__(*(v11 + 8), 32);
    v15 = *(v11 + 8);
    if (!*(v11 + 16))
    {
      v15 = v14;
    }

    v11 += 40;
    if (v15 == v10)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_25316D004(v16, v17, *v13);
      v19 = a2(v16, v17, v18, v9, v5, v6);
      sub_25316D2BC(v16, v17, v18);
      return v19;
    }
  }

  v20 = sub_2531DAC24();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v22 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v22 + 32) = sub_253168DD0();
  *v22 = v5;
  *(v22 + 8) = v6;
  sub_25316B2C4(v9);
  sub_2531DABC4();

  v27[0] = 0xD00000000000001DLL;
  v27[1] = 0x80000002531DCC40;
  v24 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v25 = sub_2531DAF34();
  MEMORY[0x259BFE570](v25);

  v19 = v27;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
  swift_willThrow();
  return v19;
}

void *sub_2531ABBEC(uint64_t *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v2;
  v9 = v4[1];
  v8 = v4[2];
  v10 = __ROR8__(*a1, 32);
  if (*(a1 + 8))
  {
    v10 = *a1;
  }

  v11 = v8 + 24;
  v12 = *(v8 + 16) + 1;
  while (--v12)
  {
    v13 = (v11 + 40);
    v14 = __ROR8__(*(v11 + 8), 32);
    v15 = *(v11 + 8);
    if (!*(v11 + 16))
    {
      v15 = v14;
    }

    v11 += 40;
    if (v15 == v10)
    {
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_25316D004(v16, v17, *v13);
      v19 = a2(v16, v17, v18, v9, v5, v6);
      sub_25316D2BC(v16, v17, v18);
      return v19;
    }
  }

  v20 = sub_2531DAC24();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58DAB0, &qword_2531E5F18) + 48);
  *(v22 + 24) = &_s3TagO14CodingKeyProxyVN;
  *(v22 + 32) = sub_253168DD0();
  *v22 = v5;
  *(v22 + 8) = v6;
  sub_25316B2C4(v9);
  sub_2531DABC4();

  v27[0] = 0xD00000000000001DLL;
  v27[1] = 0x80000002531DCC40;
  v24 = MTR.Tag.description.getter();
  MEMORY[0x259BFE570](v24);

  MEMORY[0x259BFE570](0x6B206D6F72662820, 0xEB00000000207965);
  sub_2531690C0();
  v25 = sub_2531DAF34();
  MEMORY[0x259BFE570](v25);

  v19 = v27;
  MEMORY[0x259BFE570](11817, 0xE200000000000000);
  sub_2531DAC14();
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84158], v20);
  swift_willThrow();
  return v19;
}

uint64_t sub_2531ABE80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation3MTRO5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2531ABF08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2531ABF50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2531ABFD8()
{
  result = qword_27F58DB40;
  if (!qword_27F58DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58DB38, &qword_2531E64F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB40);
  }

  return result;
}

uint64_t MTR.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25316B6E4(a1, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB48, &qword_2531E64F8);
  if (swift_dynamicCast())
  {
    sub_253168604(v10, v14);
    v5 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v6 + 16))(&v12, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      v7 = v13;
      *a2 = v12;
      *(a2 + 16) = v7;
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_2531AC3F8(v10, &qword_27F58DB50, &qword_2531E6500);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000048, 0x80000002531DCD80);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2531DB544();
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](41, 0xE100000000000000);
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t MTR.Value.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_25316B6E4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB58, &qword_2531E6508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB60, &qword_2531E6510);
  if (swift_dynamicCast())
  {
    sub_253168604(v10, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12[0] = v3;
    v12[1] = v4;
    v13 = v5;
    (*(v7 + 16))(v12, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_2531AC3F8(v10, &qword_27F58DB68, &qword_2531E6518);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000048, 0x80000002531DCDD0);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2531DB544();
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](41, 0xE100000000000000);
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t sub_2531AC3F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t REST.StaticURLComponents.init(urlString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 24))(a3, a4) == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_2531DB144();

    if ((v11 & 1) == 0)
    {
      v12 = 1;
      goto LABEL_9;
    }
  }

  (*(a4 + 16))(a3, a4);
  v12 = 0;
LABEL_9:
  v13 = *(*(a3 - 8) + 56);

  return v13(a5, v12, 1, a3);
}

uint64_t static MTR.Cluster.AppleAlvaradoGuidanceConsumer.Thermostat.readAlvaradoStateEnabled(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8[0] = v3;
  v9 = 323615749;
  MTR.Device.readCachedAttributeValue<A>(from:of:)(v8, v4, MEMORY[0x277D839B0], v5, MEMORY[0x277D839D0], &v10);
  if (!v2)
  {
    v6 = v10;
  }

  return v6 & 1;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadStateEnum.description.getter()
{
  if (*v0)
  {
    result = 28271;
  }

  else
  {
    result = 6710895;
  }

  *v0;
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadStateEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_2531AC780@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.signalID.getter()
{
  v1 = *(v0 + 8);
  sub_2531AC91C(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2531AC91C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25316D050(a1, a2);
  }

  return a1;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.signalID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2531AC968(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2531AC968(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25316D308(a1, a2);
  }

  return a1;
}

unint64_t sub_2531AC99C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_253167F80(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2531AC9C8()
{
  v1 = 0x7461745364616F6CLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x44496C616E676973;
  }

  if (*v0)
  {
    v1 = 0x6576654C64616F6CLL;
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

uint64_t sub_2531ACA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2531AE924(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_2531ACA74@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_253167F80(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2531ACA9C(uint64_t a1)
{
  v2 = sub_2531AE32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531ACAD8(uint64_t a1)
{
  v2 = sub_2531AE32C();

  return MEMORY[0x2821FE720](a1, v2);
}

double static MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.loadEventStruct(from:)@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x277CD50D8];
  v5 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

LABEL_6:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 2;
    return result;
  }

  v7 = sub_25317D998(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v7, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  MTR.Value.init(from:)(v15, &v15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  sub_2531730E4(v15, v16, v17, MEMORY[0x277D84F98], v18);
  sub_25316D2BC(v11, v12, v13);
  v14 = 0x10000;
  if (!v18[2])
  {
    v14 = 0;
  }

  *a2 = v18[0] | (v18[1] << 8) | v14;
  result = v19[0];
  *(a2 + 1) = *v19;
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.guidanceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 >> 60 != 15)
  {
    v5 = *(v1 + 8);
    v6 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      v9 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
LABEL_13:
        sub_25316D050(v5, v3);
        if (v9 == 16)
        {
LABEL_14:
          if (v6 == 2)
          {
            v14 = *(v5 + 16);
            v15 = sub_2531DA044();
            if (!v15)
            {
LABEL_35:
              sub_2531DA064();
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v16 = v15;
            v17 = sub_2531DA074();
            if (!__OFSUB__(v14, v17))
            {
              v13 = (v14 - v17 + v16);
              sub_2531DA064();
              if (v13)
              {
LABEL_25:
                v18 = *v13;
                v19 = v13[1];
                v20 = v13[2];
                v21 = v13[3];
                v22 = v13[4];
                v23 = v13[5];
                v24 = v13[6];
                v25 = v13[7];
                v26 = v13[8];
                v27 = v13[9];
                v28 = v13[10];
                v29 = v13[11];
                v30 = v13[12];
                v31 = v13[13];
                v32 = v13[14];
                v33 = v13[15];
                goto LABEL_26;
              }

              goto LABEL_36;
            }

            goto LABEL_33;
          }

          if (v6 != 1)
          {
LABEL_26:
            sub_2531DA1E4();
            v4 = 0;
            goto LABEL_27;
          }

          if (v5 <= v5 >> 32)
          {
            v10 = sub_2531DA044();
            if (!v10)
            {
LABEL_37:
              result = sub_2531DA064();
              __break(1u);
              return result;
            }

            v11 = v10;
            v12 = sub_2531DA074();
            if (!__OFSUB__(v5, v12))
            {
              v13 = (v5 - v12 + v11);
              sub_2531DA064();
              if (!v13)
              {
                __break(1u);
                goto LABEL_21;
              }

              goto LABEL_25;
            }

            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_21:
        v4 = 1;
LABEL_27:
        sub_2531AC968(v5, v3);
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v6)
    {
      if (BYTE6(v3) != 16)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = HIDWORD(v5) - v5;
    goto LABEL_13;
  }

  v4 = 1;
LABEL_28:
  v34 = sub_2531DA204();
  v35 = *(*(v34 - 8) + 56);

  return v35(a1, v4, 1, v34);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2531AC91C(*(v0 + 1), *(v0 + 2));
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DCE20);
  if (v1)
  {
    v4 = 28271;
  }

  else
  {
    v4 = 6710895;
  }

  if (v1)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x259BFE570](v4, v5);

  MEMORY[0x259BFE570](0x654C64616F6C202CLL, 0xED0000203A6C6576);
  v6 = sub_2531DAF34();
  MEMORY[0x259BFE570](v6);

  MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DCE40);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x259BFE570](v7, v8);

  MEMORY[0x259BFE570](0x6C616E676973202CLL, 0xEC000000203A4449);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3A0, &qword_2531E29A0);
  v9 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v9);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB70, &qword_2531E6680);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v21 = v1[1];
  v18 = v1[2];
  v10 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE32C();
  sub_2531DB4D4();
  LOBYTE(v19) = v9;
  v22 = 0;
  sub_2531AE380();
  sub_2531DAED4();
  if (!v2)
  {
    v13 = v16;
    v12 = v17;
    LOBYTE(v19) = 1;
    sub_2531DAEE4();
    LOBYTE(v19) = 2;
    sub_2531DAEC4();
    v19 = v12;
    v20 = v13;
    v22 = 3;
    sub_2531AC91C(v12, v13);
    sub_25317E240();
    sub_2531DAE94();
    sub_2531AC968(v19, v20);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[1];
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v4 >> 60 == 15)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA164();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[1];
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v4 >> 60 != 15)
  {
    sub_2531DA164();
  }

  return sub_2531DB454();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB88, &qword_2531E6688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE32C();
  sub_2531DB4B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v20 = 0;
    sub_2531AE3D4();
    sub_2531DAE14();
    v11 = v18[0];
    LOBYTE(v18[0]) = 1;
    v12 = sub_2531DAE24();
    LOBYTE(v18[0]) = 2;
    v19 = sub_2531DAE04();
    v20 = 3;
    sub_253175240();
    sub_2531DADD4();
    v19 &= 1u;
    (*(v6 + 8))(v9, v5);
    v14 = v18[0];
    v15 = v18[1];
    sub_2531AC968(0, 0xF000000000000000);
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 2) = v19;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    sub_2531AC91C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = v14;
    v17 = v15;
  }

  return sub_2531AC968(v16, v17);
}

uint64_t sub_2531AD700()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[1];
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v4 >> 60 == 15)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA164();
}

uint64_t sub_2531AD7A4()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[1];
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB414();
  if (v4 >> 60 != 15)
  {
    sub_2531DA164();
  }

  return sub_2531DB454();
}

uint64_t sub_2531AD88C()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](0);
  return sub_2531DB454();
}

uint64_t sub_2531AD8F8()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](0);
  return sub_2531DB454();
}

uint64_t sub_2531AD970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000002531DCEC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2531DB144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2531ADA20(uint64_t a1)
{
  v2 = sub_2531AE428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531ADA5C(uint64_t a1)
{
  v2 = sub_2531AE428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(endOfCurrentReducePeriod:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_2531DA1A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27F58DC20);
  sub_2531DA174();
  v10 = v9;
  v11 = v9;
  v12 = *(v5 + 8);
  v12(a1, v4);
  result = (v12)(v8, v4);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 4294967300.0)
  {
    *a2 = v10;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(from:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *MEMORY[0x277CD50D8];
  v6 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_25317D998(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v8, &v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = objc_opt_self();
    v16 = sub_2531DA6C4();
    [v15 hmfErrorWithCode:3 reason:v16];

    return swift_willThrow();
  }

  result = MTR.Value.init(from:)(v17, &v18);
  if (!v2)
  {
    v12 = v18;
    v13 = v19;
    v14 = v20;
    sub_253173308(v18, v19, v20, MEMORY[0x277D84F98], &v17);
    result = sub_25316D2BC(v12, v13, v14);
    *a2 = v17;
  }

  return result;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.description.getter()
{
  v1 = *v0;
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000032, 0x80000002531DCE60);
  sub_25317289C();
  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DB98, &qword_2531E6690);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE428();
  sub_2531DB4D4();
  v12 = v8;
  sub_25317E4F4();
  sub_2531DAED4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.hashValue.getter()
{
  v1 = *v0;
  sub_2531DB3F4();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DBA8, &qword_2531E6698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531AE428();
  sub_2531DB4B4();
  if (!v2)
  {
    sub_2531757D4();
    sub_2531DAE14();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO29AppleAlvaradoGuidanceConsumerO15LoadEventStructV2eeoiySbAI_AItFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    v8 = *(a2 + 1);
    v7 = *(a2 + 2);
    if (v5 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        sub_2531AC91C(v6, v5);
        sub_2531AC91C(v8, v7);
        sub_2531AC968(v6, v5);
        return 1;
      }
    }

    else if (v7 >> 60 != 15)
    {
      sub_2531AC91C(v6, v5);
      sub_2531AC91C(v8, v7);
      v9 = sub_25317DEF0(v6, v5, v8, v7);
      sub_2531AC968(v8, v7);
      sub_2531AC968(v6, v5);
      return (v9 & 1) != 0;
    }

    sub_2531AC91C(v6, v5);
    sub_2531AC91C(v8, v7);
    sub_2531AC968(v6, v5);
    sub_2531AC968(v8, v7);
    return 0;
  }

  return result;
}

unint64_t sub_2531AE32C()
{
  result = qword_27F58DB78;
  if (!qword_27F58DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB78);
  }

  return result;
}

unint64_t sub_2531AE380()
{
  result = qword_27F58DB80;
  if (!qword_27F58DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB80);
  }

  return result;
}

unint64_t sub_2531AE3D4()
{
  result = qword_27F58DB90;
  if (!qword_27F58DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DB90);
  }

  return result;
}

unint64_t sub_2531AE428()
{
  result = qword_27F58DBA0;
  if (!qword_27F58DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBA0);
  }

  return result;
}

unint64_t sub_2531AE480()
{
  result = qword_27F58DBB0;
  if (!qword_27F58DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBB0);
  }

  return result;
}

unint64_t sub_2531AE4D8()
{
  result = qword_27F58DBB8;
  if (!qword_27F58DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBB8);
  }

  return result;
}

unint64_t sub_2531AE530()
{
  result = qword_27F58DBC0;
  if (!qword_27F58DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2531AE5DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2531AE620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2531AE6C4(uint64_t a1)
{
  result = sub_2531AE32C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531AE6F0()
{
  result = qword_27F58DBC8;
  if (!qword_27F58DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBC8);
  }

  return result;
}

unint64_t sub_2531AE744(uint64_t a1)
{
  result = sub_2531AE428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531AE770()
{
  result = qword_27F58DBD0;
  if (!qword_27F58DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBD0);
  }

  return result;
}

unint64_t sub_2531AE7C8()
{
  result = qword_27F58DBD8;
  if (!qword_27F58DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBD8);
  }

  return result;
}

unint64_t sub_2531AE820()
{
  result = qword_27F58DBE0;
  if (!qword_27F58DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBE0);
  }

  return result;
}

unint64_t sub_2531AE878()
{
  result = qword_27F58DBE8;
  if (!qword_27F58DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBE8);
  }

  return result;
}

unint64_t sub_2531AE8D0()
{
  result = qword_27F58DBF0;
  if (!qword_27F58DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBF0);
  }

  return result;
}

uint64_t sub_2531AE924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_2531DB144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576654C64616F6CLL && a2 == 0xE90000000000006CLL || (sub_2531DB144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002531DCEA0 == a2 || (sub_2531DB144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496C616E676973 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2531DB144();

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

unint64_t sub_2531AEA9C()
{
  result = qword_27F58DBF8;
  if (!qword_27F58DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DBF8);
  }

  return result;
}

id MTRDeviceController.Adapter.controllerNodeID.getter@<X0>(uint64_t a1@<X8>)
{
  result = [*v1 controllerNodeID];
  if (result)
  {
    v4 = result;
    v5 = [result unsignedLongLongValue];

    result = MTR.Node.ID.init(rawValue:)(v5, &v8);
    v6 = v8;
    v7 = v9;
  }

  else
  {
    v6 = 0;
    v7 = -1;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

id MTRDeviceController.Adapter.makeDevice(nodeID:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *v1;
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        v2 = *a1 | 0xFFFFFFFE00000000;
      }

      else
      {
        v10 = v2 | 0xFF00;
        if (BYTE2(v2) != 1)
        {
          v10 = 0;
        }

        if (BYTE2(v2))
        {
          LOWORD(v11) = v10;
        }

        else
        {
          v11 = *a1;
        }

        v2 = v11 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (v3 == 5)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = *a1 | 0xFFFFFFFB00000000;
    if (v3 != 3)
    {
      v6 = *a1 | 0xFFFFFFFD00000000;
    }

    if (*(a1 + 8) <= 4u)
    {
      v2 = v6;
    }

    else
    {
      v2 = v5;
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v8 = [objc_opt_self() deviceWithNodeID:v7 controller:v4];

  return v8;
}

uint64_t MTRDeviceController.Adapter.addServerEndpoint(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AECAC, 0, 0);
}

uint64_t sub_2531AECAC()
{
  if (![*(v0 + 24) addServerEndpoint_])
  {
    v2 = objc_opt_self();
    v3 = sub_2531DA6C4();
    [v2 hmfErrorWithCode:11 reason:v3];

    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTRDeviceController.Adapter.removeServerEndpoint(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AEDB8, 0, 0);
}

uint64_t sub_2531AEDB8()
{
  [*(v0 + 24) removeServerEndpoint_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTRDeviceController.Adapter.removeServerEndpoint(_:queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a3;
  v5[11] = a4;
  v5[8] = a1;
  v5[9] = a2;
  v5[12] = *v4;
  return MEMORY[0x2822009F8](sub_2531AEE50, 0, 0);
}

uint64_t sub_2531AEE50()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[8] + 16);
  v0[6] = v0[10];
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2531AEF50;
  v0[5] = &block_descriptor_1;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  [v2 removeServerEndpoint:v4 queue:v3 completion:v5];
  _Block_release(v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_2531AEF50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2531AEFB0(uint64_t a1)
{
  v13 = v2;
  v4 = [*v1 controllerNodeID];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 unsignedLongLongValue];

    MTR.Node.ID.init(rawValue:)(v6, &v11);
    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  v9 = *(v2 + 8);

  return v9();
}

id sub_2531AF080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MTRDeviceController.Adapter.makeDevice(nodeID:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2531AF0A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_253170160;

  return MTRDeviceController.Adapter.addServerEndpoint(_:)(a1);
}

uint64_t sub_2531AF13C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2531AEDB8, 0, 0);
}

uint64_t sub_2531AF160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a3;
  v5[11] = a4;
  v5[8] = a1;
  v5[9] = a2;
  v5[12] = *v4;
  return MEMORY[0x2822009F8](sub_2531AF18C, 0, 0);
}

uint64_t sub_2531AF18C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[8] + 16);
  v0[6] = v0[10];
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2531AEF50;
  v0[5] = &block_descriptor_20_0;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  [v2 removeServerEndpoint:v4 queue:v3 completion:v5];
  _Block_release(v5);
  v7 = v0[1];

  return v7();
}

uint64_t MTRDeviceController.Adapter.ServerAttribute.rawValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) value];
  v4 = sub_2531DA624();

  return MTR.Value.init(from:)(v4, a1);
}

void MTRDeviceController.Adapter.ServerAttribute.setRawValue(_:)(__int128 *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v6 = *(a1 + 16);
  v3 = MTR.Value.makeDataValue()();
  sub_253180BA0(v3);

  v4 = sub_2531DA604();

  [v2 setValue_];
}

uint64_t sub_2531AF474@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) value];
  v4 = sub_2531DA624();

  return MTR.Value.init(from:)(v4, a1);
}

void sub_2531AF4F4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  LOBYTE(v6) = *(a1 + 16);
  v3 = MTR.Value.makeDataValue()();
  sub_253180BA0(v3);

  v4 = sub_2531DA604();

  [v2 setValue_];
}

void sub_2531AF5B4(SEL *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedIntValue];

  *a2 = v5;
}

uint64_t MTRDeviceController.Adapter.ServerCluster.__allocating_init(serverCluster:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_2531AF6F0(uint64_t a1, SEL *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_253181ED8(0, &qword_27F58DC08, 0x277CD51B0);
  v8 = v4;
  LOWORD(v9) = v5;
  v6 = MTRAccessGrant.init(from:)(&v8);
  if (v6)
  {
    v7 = v6;
    [*(v2 + 16) *a2];
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD000000000000012, 0x80000002531DCF50);
    sub_2531DAD24();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DCF70);
    sub_2531DAD34();
    __break(1u);
  }
}

uint64_t MTRDeviceController.Adapter.ServerCluster.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2531AF8B4(SEL *a1@<X2>, unsigned int *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedIntValue];

  *a2 = v5;
}

void sub_2531AF934(SEL *a1@<X0>, unsigned __int16 *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedShortValue];

  *a2 = v5;
}

char *MTRDeviceController.Adapter.ServerEndpoint.deviceTypes.getter()
{
  v1 = [*(v0 + 16) deviceTypes];
  sub_253181ED8(0, &qword_27F58DC10, 0x277CD5340);
  v2 = sub_2531DA8A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_2531DAD44();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_2531B474C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259BFEA20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 deviceTypeID];
      v10 = [v9 unsignedIntValue];

      v11 = [v8 deviceTypeRevision];
      v12 = [v11 unsignedShortValue];

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2531B474C((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 8 * v14;
      *(v15 + 32) = v10;
      *(v15 + 36) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531AFBA4(SEL *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v8 = [*(v4 + 16) *a1];
  sub_253181ED8(0, a2, a3);
  v9 = sub_2531DA8A4();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_2531DAD44();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_2531DAC94();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x259BFEA20](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      a4();
      *(swift_allocObject() + 16) = v14;
      sub_2531DAC64();
      v15 = *(v16 + 16);
      sub_2531DACA4();
      sub_2531DACB4();
      sub_2531DAC74();
    }

    while (v10 != v12);

    return v16;
  }

  return result;
}

char *MTRDeviceController.Adapter.ServerEndpoint.accessGrants.getter()
{
  v1 = [*(v0 + 16) accessGrants];
  sub_253181ED8(0, &qword_27F58DC08, 0x277CD51B0);
  v2 = sub_2531DA8A4();

  if (v2 >> 62)
  {
    v3 = sub_2531DAD44();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:

    return MEMORY[0x277D84F90];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_2531B476C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v19;
    while (1)
    {
      v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x259BFEA20](v5, v2) : *(v2 + 8 * v5 + 32);
      v8 = v7;
      v9 = [v7 subjectID];
      if (v9)
      {
        break;
      }

      LODWORD(v12) = [v8 grantedPrivilege];

      v12 = v12;
      v14 = 128;
LABEL_19:
      v17 = *(v19 + 16);
      v16 = *(v19 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2531B476C((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v19 + 16) = v17 + 1;
      v18 = v19 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      if (v3 == v5)
      {

        return v6;
      }
    }

    v10 = v9;
    v11 = [v9 unsignedLongLongValue];
    v12 = v11;
    if (v11)
    {
      if (v11 > 0xFFFFFFEFFFFFFFFFLL)
      {
        if (v11 >= 0xFFFFFFFB00000000)
        {
          if (v11 <= 0xFFFFFFFBFFFFFFFFLL)
          {
            v12 = v11;
            v13 = 3;
            goto LABEL_18;
          }

          if (v11 >= 0xFFFFFFFD00000000)
          {
            if (v11 <= 0xFFFFFFFDFFFFFFFFLL)
            {
              v12 = v11;
              v13 = 4;
              goto LABEL_18;
            }

            if (v11 <= 0xFFFFFFFEFFFFFFFFLL)
            {
              v12 = v11;
              v13 = 1;
              goto LABEL_18;
            }

            if (v11 >= 0xFFFFFFFFFFFF0000)
            {
              if (v11)
              {
                if (v11 > 0xFEFEu)
                {
                  v12 = v11 & 0x100FF;
                }

                else
                {
                  v12 = v11;
                }

                v13 = 2;
              }

              else
              {
                v13 = 2;
                v12 = 0x20000;
              }

              goto LABEL_18;
            }
          }
        }

        v13 = 5;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 6;
    }

LABEL_18:
    v15 = [v8 grantedPrivilege];

    v14 = v13 | (v15 << 8);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531B0008(int *a1, uint64_t (*a2)(void), SEL *a3)
{
  v3 = *a1;
  v4 = a2();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_15:
    v6 = sub_2531DAD44();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x259BFEA20](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        v10 = [*(v8 + 16) *a3];
        v11 = [v10 unsignedIntValue];

        if (v11 == v3)
        {
          goto LABEL_13;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

void sub_2531B0178(SEL *a1@<X2>, unsigned __int16 *a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  v5 = [v4 unsignedShortValue];

  *a2 = v5;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeReadOnlyAttribute(attributeID:initialValue:requiredPrivilege:)(unsigned int *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = sub_2531DB484();
  v9 = MTR.Value.makeDataValue()();
  sub_253180BA0(v9);

  v10 = objc_allocWithZone(MEMORY[0x277CD54E0]);
  v11 = sub_2531DA604();

  v12 = [v10 initReadonlyAttributeWithID:v8 initialValue:v11 requiredPrivilege:a3];

  if (v12)
  {
    type metadata accessor for MTRDeviceController.Adapter.ServerAttribute();
    result = swift_allocObject();
    *(result + 16) = v12;
  }

  else
  {
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000002ALL, 0x80000002531DCF90);
    sub_253172A64(v4);
    MEMORY[0x259BFE570](0x2065756C6176203ALL, 0xE800000000000000);
    sub_2531DAD24();
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeCluster(clusterID:revision:attributes:)(unsigned int *a1, unsigned __int16 *a2, unint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_2531DB484();
  v7 = sub_2531DB474();
  v8 = [objc_allocWithZone(MEMORY[0x277CD54E8]) initWithClusterID:v6 revision:v7];

  if (!v8)
  {
    goto LABEL_13;
  }

  if (a3 >> 62)
  {
    v4 = sub_2531DAD44();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:
    type metadata accessor for MTRDeviceController.Adapter.ServerCluster();
    result = swift_allocObject();
    *(result + 16) = v8;
    return result;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x259BFEA20](i, a3);
      }

      else
      {
        v10 = *(a3 + 8 * i + 32);
      }

      [v8 addAttribute_];
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DCFC0);
  sub_253172A3C(v4);
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t MTRDeviceController.Adapter.ServerEndpointFactory.makeEndpoint(endpointID:deviceTypes:serverClusters:)(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v22 = *a1;
  v24 = sub_2531DB474();
  v25 = MEMORY[0x277D84F90];
  v5 = *(a2 + 16);
  v23 = a2;
  if (v5)
  {
    v6 = (a2 + 36);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = objc_allocWithZone(MEMORY[0x277CD5340]);
      v10 = sub_2531DB484();
      v11 = sub_2531DB474();
      v12 = [v9 initWithDeviceTypeID:v10 revision:v11];

      if (v12)
      {
        MEMORY[0x259BFE6B0]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2531DA8C4();
        }

        sub_2531DA904();
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  v14 = objc_allocWithZone(MEMORY[0x277CD54F0]);
  sub_253181ED8(0, &qword_27F58DC10, 0x277CD5340);
  v15 = sub_2531DA894();

  v16 = [v14 initWithEndpointID:v24 deviceTypes:v15];

  if (!v16)
  {
    goto LABEL_20;
  }

  if (a3 >> 62)
  {
    v17 = sub_2531DAD44();
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_18:
    type metadata accessor for MTRDeviceController.Adapter.ServerEndpoint();
    result = swift_allocObject();
    *(result + 16) = v16;
    return result;
  }

  v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x259BFEA20](i, a3);
      }

      else
      {
        v19 = *(a3 + 8 * i + 32);
      }

      [v16 addServerCluster_];
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DCFE0);
  sub_253172968();
  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DD000);
  v21 = MEMORY[0x259BFE6E0](v23, &type metadata for MTR.DeviceType);
  MEMORY[0x259BFE570](v21);

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t MTR.Time.EpochSeconds.init(_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  v4 = sub_2531DA1A4();
  __swift_project_value_buffer(v4, qword_27F58DC20);
  sub_2531DA174();
  v6 = v5;
  v7 = v5;
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 4294967300.0)
  {
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2531B0B18()
{
  v0 = sub_2531DA1A4();
  __swift_allocate_value_buffer(v0, qword_27F58DC20);
  __swift_project_value_buffer(v0, qword_27F58DC20);
  return sub_2531DA194();
}

uint64_t MTR.Time.EpochSeconds.date.getter()
{
  v1 = *v0;
  if (qword_27F58D0E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2531DA1A4();
  v3 = __swift_project_value_buffer(v2, qword_27F58DC20);

  v4.n128_f64[0] = v1;
  return MEMORY[0x28211D9B8](v3, v4);
}

uint64_t MTR.Time.EpochSeconds.description.getter()
{
  v1 = *v0;
  sub_2531DABC4();

  strcpy(v4, "EpochSeconds(");
  v2 = sub_2531DAF34();
  MEMORY[0x259BFE570](v2);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v4[0];
}

unint64_t sub_2531B0D5C()
{
  result = qword_27F58DC38;
  if (!qword_27F58DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC38);
  }

  return result;
}

unint64_t sub_2531B0DD4()
{
  result = qword_27F58DC40;
  if (!qword_27F58DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC40);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t MTR.Vendor.ID.description.getter()
{
  v3 = *v0;
  sub_253168D7C();
  v1 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v1);

  return 30768;
}

uint64_t MTR.Vendor.ID.debugDescription.getter()
{
  v1 = *v0;
  strcpy(v4, "Vendor.ID(0x");
  sub_253168D7C();
  v2 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v2);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v4[0];
}

unint64_t sub_2531B1054()
{
  result = qword_27F58DC48;
  if (!qword_27F58DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC48);
  }

  return result;
}

uint64_t sub_2531B10A8()
{
  v1 = *v0;
  strcpy(v4, "Vendor.ID(0x");
  sub_253168D7C();
  v2 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v2);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v4[0];
}

unint64_t sub_2531B115C()
{
  result = qword_27F58DC50;
  if (!qword_27F58DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC50);
  }

  return result;
}

uint64_t MTR.Endpoint.ID.description.getter()
{
  v1 = *v0;
  sub_2531DABC4();

  strcpy(v4, "Endpoint.ID(0x");
  sub_253168D7C();
  v2 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v2);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v4[0];
}

unint64_t sub_2531B1330()
{
  result = qword_27F58DC58;
  if (!qword_27F58DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC58);
  }

  return result;
}

unint64_t sub_2531B13A8()
{
  result = qword_27F58DC60;
  if (!qword_27F58DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC60);
  }

  return result;
}

uint64_t UUIDRegexComponent.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_2531DA204();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2531B16E4(a3, a1, a2);
  v18 = v17;
  result = sub_2531DAB04();
  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = result;
  }

  if (v21 >> 14 < v16 >> 14)
  {
    __break(1u);
  }

  else
  {
    v22 = sub_2531DAB14();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    MEMORY[0x259BFE550](v22, v24, v26, v28);
    sub_2531DA1B4();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_2531B1730(v10);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC70, &qword_2531E72A8);
      return (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
    }

    else
    {
      v30 = *(v12 + 32);
      v30(v15, v10, v11);

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC70, &qword_2531E72A8);
      v32 = *(v31 + 48);
      v33 = v35;
      *v35 = v24;
      v30(&v33[v32], v15, v11);
      return (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
    }
  }

  return result;
}

uint64_t sub_2531B16E4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2531B1730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531B17B0(uint64_t a1)
{
  v2 = sub_2531B1868();

  return MEMORY[0x282200AF8](a1, v2);
}

unint64_t sub_2531B1804()
{
  result = qword_27F58DC78;
  if (!qword_27F58DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC78);
  }

  return result;
}

unint64_t sub_2531B1868()
{
  result = qword_27F58DC80;
  if (!qword_27F58DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC80);
  }

  return result;
}

uint64_t MTR.Value.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2531DA0C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v119 - v12;
  v14 = *MEMORY[0x277CD5188];
  v15 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

LABEL_10:

    v32 = objc_opt_self();
    v33 = sub_2531DA6C4();
    v34 = [v32 hmfErrorWithCode:3 reason:v33];
    goto LABEL_11;
  }

  v125 = a2;
  v17 = sub_25317D998(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v17, &v130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v124 = *(&v134[0] + 1);
  v20 = *&v134[0];
  v21 = *MEMORY[0x277CD51A0];
  v22 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

    goto LABEL_14;
  }

  v123 = v20;
  v24 = sub_25317D998(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {

    v20 = v123;
LABEL_14:
    v36 = v124;
    v37 = *MEMORY[0x277CD5160];
    if (v20 == sub_2531DA6D4() && v36 == v38)
    {

LABEL_18:
      v40 = 0;
      v41 = 0;
      v42 = 10;
LABEL_19:
      v43 = v125;
      *v125 = v40;
      v43[1] = v41;
      *(v43 + 16) = v42;
      return result;
    }

    v39 = sub_2531DB144();

    if (v39)
    {
      goto LABEL_18;
    }

    v44 = objc_opt_self();
    v33 = sub_2531DA6C4();
    v34 = [v44 hmfErrorWithCode:3 reason:v33];
LABEL_11:
    v34;

    return swift_willThrow();
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v24, &v130);

  sub_2531675D4(&v130, v134);
  v27 = *MEMORY[0x277CD5178];
  v28 = sub_2531DA6D4();
  v30 = v123;
  v31 = v124;
  if (v28 == v123 && v29 == v124)
  {

    goto LABEL_22;
  }

  v45 = sub_2531DB144();

  if (v45)
  {
LABEL_22:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v46 = v127;
      v40 = [v127 longLongValue];

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v41 = 0;
      v42 = 1;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v50 = *MEMORY[0x277CD5198];
  if (sub_2531DA6D4() == v30 && v51 == v31)
  {

    goto LABEL_30;
  }

  v52 = sub_2531DB144();

  if (v52)
  {
LABEL_30:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v53 = v127;
      v40 = [v127 unsignedLongLongValue];

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v41 = 0;
      v42 = 2;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v54 = *MEMORY[0x277CD5150];
  if (sub_2531DA6D4() == v30 && v55 == v31)
  {

    goto LABEL_37;
  }

  v56 = sub_2531DB144();

  if (v56)
  {
LABEL_37:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v57 = v127;
      [v127 floatValue];
      v59 = v58;

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v41 = 0;
      v40 = v59;
      v42 = 3;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v60 = *MEMORY[0x277CD5118];
  if (sub_2531DA6D4() == v30 && v61 == v31)
  {

    goto LABEL_44;
  }

  v62 = sub_2531DB144();

  if (v62)
  {
LABEL_44:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v63 = v127;
      [v127 doubleValue];
      v65 = v64;

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v41 = 0;
      v40 = v65;
      v42 = 4;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v66 = *MEMORY[0x277CD50C0];
  if (sub_2531DA6D4() == v30 && v67 == v31)
  {

    goto LABEL_51;
  }

  v68 = sub_2531DB144();

  if (v68)
  {
LABEL_51:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
    if (swift_dynamicCast())
    {

      v69 = v127;
      v70 = [v127 BOOLValue];

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v41 = 0;
      v42 = 0;
      v40 = v70;
      goto LABEL_19;
    }

LABEL_24:
    v47 = objc_opt_self();
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
    MEMORY[0x259BFE570](v30, v31);

    MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DD260);
    v48 = sub_2531DA6C4();

    v49 = [v47 hmfErrorWithCode:3 reason:v48];
LABEL_25:
    v49;

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v71 = *MEMORY[0x277CD5190];
  if (sub_2531DA6D4() == v30 && v72 == v31)
  {

LABEL_58:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58DCA0, 0x277CCACA8);
    if (swift_dynamicCast())
    {

      v74 = v127;
      v40 = sub_2531DA6D4();
      v41 = v75;

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v42 = 5;
      goto LABEL_19;
    }

    v76 = objc_opt_self();
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
    MEMORY[0x259BFE570](v123, v124);

    MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DD240);
    v48 = sub_2531DA6C4();

    v49 = [v76 hmfErrorWithCode:3 reason:v48];
    goto LABEL_25;
  }

  v73 = sub_2531DB144();

  if (v73)
  {
    goto LABEL_58;
  }

  v77 = *MEMORY[0x277CD5168];
  if (sub_2531DA6D4() == v123 && v78 == v124)
  {

LABEL_65:
    sub_25317E5F0(v134, &v130);
    sub_253181ED8(0, &qword_27F58DC98, 0x277CBEA90);
    if (swift_dynamicCast())
    {

      v80 = v127;
      v40 = sub_2531DA154();
      v41 = v81;

      result = __swift_destroy_boxed_opaque_existential_1(v134);
      v42 = 6;
      goto LABEL_19;
    }

    v82 = objc_opt_self();
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_2531DABC4();

    *&v130 = 0xD00000000000001ALL;
    *(&v130 + 1) = 0x80000002531DD1B0;
    MEMORY[0x259BFE570](v123, v124);

    MEMORY[0x259BFE570](0xD000000000000015, 0x80000002531DD220);
    v48 = sub_2531DA6C4();

    v49 = [v82 hmfErrorWithCode:3 reason:v48];
    goto LABEL_25;
  }

  v79 = sub_2531DB144();

  if (v79)
  {
    goto LABEL_65;
  }

  v83 = *MEMORY[0x277CD5160];
  if (sub_2531DA6D4() == v123 && v84 == v124)
  {

LABEL_72:
    __swift_destroy_boxed_opaque_existential_1(v134);

    goto LABEL_18;
  }

  v85 = sub_2531DB144();

  if (v85)
  {
    goto LABEL_72;
  }

  v86 = *MEMORY[0x277CD50B0];
  if (sub_2531DA6D4() == v123 && v87 == v124)
  {
  }

  else
  {
    v88 = sub_2531DB144();

    if ((v88 & 1) == 0)
    {
      v102 = *MEMORY[0x277CD5180];
      if (sub_2531DA6D4() == v123 && v103 == v124)
      {
      }

      else
      {
        v104 = sub_2531DB144();

        if ((v104 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(v134);
          v42 = 9;
          v40 = v123;
          v41 = v124;
          goto LABEL_19;
        }
      }

      sub_25317E5F0(v134, &v130);
      sub_253181ED8(0, &qword_27F58DC88, 0x277CBEA60);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v112 = objc_opt_self();
        *&v130 = 0;
        *(&v130 + 1) = 0xE000000000000000;
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD00000000000001ALL, 0x80000002531DD1B0);
        MEMORY[0x259BFE570](v123, v124);

        MEMORY[0x259BFE570](0xD000000000000026, 0x80000002531DD1D0);
        v48 = sub_2531DA6C4();

        v49 = [v112 hmfErrorWithCode:3 reason:v48];
        goto LABEL_25;
      }

      v105 = v127;
      v106 = [v127 count];
      v133 = MEMORY[0x277D84F90];
      v123 = swift_allocObject();
      sub_2531B4614(0, v106 & ~(v106 >> 63), 0);
      v124 = v133;
      v119[0] = v105;
      result = sub_2531DAAE4();
      if ((v106 & 0x8000000000000000) == 0)
      {
        if (v106)
        {
          v119[1] = sub_2531B4634();
          do
          {
            result = sub_2531DAB24();
            if (!v129)
            {
              goto LABEL_127;
            }

            sub_2531B3F70(&v127, &v126, &v130);
            if (v3)
            {

              (*(v7 + 8))(v11, v6);
              __swift_destroy_boxed_opaque_existential_1(v134);

              __swift_destroy_boxed_opaque_existential_1(&v127);
              return swift_deallocUninitializedObject();
            }

            v3 = 0;
            __swift_destroy_boxed_opaque_existential_1(&v127);
            v121 = v130;
            v107 = BYTE8(v130);
            v122 = v131;
            LODWORD(v120) = v132;
            v133 = v124;
            v109 = *(v124 + 16);
            v108 = *(v124 + 24);
            if (v109 >= v108 >> 1)
            {
              sub_2531B4614((v108 > 1), v109 + 1, 1);
              v124 = v133;
            }

            v110 = v124;
            *(v124 + 16) = v109 + 1;
            v111 = v110 + 40 * v109;
            *(v111 + 32) = v121;
            *(v111 + 40) = v107;
            *(v111 + 48) = v122;
            *(v111 + 64) = v120;
          }

          while (--v106);
        }

        v120 = sub_2531B4634();
        while (1)
        {
          sub_2531DAB24();
          if (!*(&v131 + 1))
          {

            (*(v7 + 8))(v11, v6);
            __swift_destroy_boxed_opaque_existential_1(v134);
            result = sub_2531AC3F8(&v130, &qword_27F58D958, &qword_2531E55E0);
            v41 = 0;
            v40 = v123;
            *(v123 + 16) = v124;
            v42 = 8;
            goto LABEL_19;
          }

          sub_2531675D4(&v130, &v127);
          sub_2531B3F70(&v127, &v126, &v130);
          if (v3)
          {
            break;
          }

          v3 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v127);
          v113 = v130;
          LODWORD(v121) = BYTE8(v130);
          v122 = v131;
          v114 = v132;
          v133 = v124;
          v116 = *(v124 + 16);
          v115 = *(v124 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_2531B4614((v115 > 1), v116 + 1, 1);
            v124 = v133;
          }

          v117 = v124;
          *(v124 + 16) = v116 + 1;
          v118 = v117 + 40 * v116;
          *(v118 + 32) = v113;
          *(v118 + 40) = v121;
          *(v118 + 48) = v122;
          *(v118 + 64) = v114;
        }

        __swift_destroy_boxed_opaque_existential_1(&v127);
        (*(v7 + 8))(v11, v6);
        goto LABEL_122;
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      return result;
    }
  }

  sub_25317E5F0(v134, &v130);
  sub_253181ED8(0, &qword_27F58DC88, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v96 = objc_opt_self();
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_2531DABC4();

    *&v130 = 0xD00000000000001ALL;
    *(&v130 + 1) = 0x80000002531DD1B0;
    MEMORY[0x259BFE570](v123, v124);

    MEMORY[0x259BFE570](0xD000000000000016, 0x80000002531DD200);
    v48 = sub_2531DA6C4();

    v49 = [v96 hmfErrorWithCode:3 reason:v48];
    goto LABEL_25;
  }

  v89 = v127;
  v90 = [v127 count];
  v133 = MEMORY[0x277D84F90];
  v123 = swift_allocObject();
  sub_2531B468C(0, v90 & ~(v90 >> 63), 0);
  v124 = v133;
  v120 = v89;
  result = sub_2531DAAE4();
  if (v90 < 0)
  {
    __break(1u);
    goto LABEL_125;
  }

  if (v90)
  {
    v121 = sub_2531B4634();
    do
    {
      result = sub_2531DAB24();
      if (!*(&v131 + 1))
      {
        goto LABEL_126;
      }

      sub_2531B3C08(&v130, &v126);
      if (v3)
      {

        (*(v7 + 8))(v13, v6);
        __swift_destroy_boxed_opaque_existential_1(v134);

        __swift_destroy_boxed_opaque_existential_1(&v130);
        return swift_deallocUninitializedObject();
      }

      v3 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v130);
      v122 = v127;
      v91 = v128;
      v133 = v124;
      v93 = *(v124 + 16);
      v92 = *(v124 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2531B468C((v92 > 1), v93 + 1, 1);
        v124 = v133;
      }

      v94 = v124;
      *(v124 + 16) = v93 + 1;
      v95 = v94 + 24 * v93;
      *(v95 + 32) = v122;
      *(v95 + 48) = v91;
    }

    while (--v90);
  }

  sub_2531B4634();
  while (1)
  {
    sub_2531DAB24();
    if (!v129)
    {

      (*(v7 + 8))(v13, v6);
      __swift_destroy_boxed_opaque_existential_1(v134);
      result = sub_2531AC3F8(&v127, &qword_27F58D958, &qword_2531E55E0);
      v41 = 0;
      v40 = v123;
      *(v123 + 16) = v124;
      v42 = 7;
      goto LABEL_19;
    }

    sub_2531675D4(&v127, &v130);
    sub_2531B3C08(&v130, &v126);
    if (v3)
    {
      break;
    }

    v3 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v122 = v127;
    v97 = v128;
    v133 = v124;
    v99 = *(v124 + 16);
    v98 = *(v124 + 24);
    if (v99 >= v98 >> 1)
    {
      sub_2531B468C((v98 > 1), v99 + 1, 1);
      v124 = v133;
    }

    v100 = v124;
    *(v124 + 16) = v99 + 1;
    v101 = v100 + 24 * v99;
    *(v101 + 32) = v122;
    *(v101 + 48) = v97;
  }

  __swift_destroy_boxed_opaque_existential_1(&v130);
  (*(v7 + 8))(v13, v6);
LABEL_122:
  __swift_destroy_boxed_opaque_existential_1(v134);

  return swift_deallocUninitializedObject();
}

uint64_t MTR.Value.makeDataValue()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (!*(v0 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_2531E53E0;
        v23 = *MEMORY[0x277CD5188];
        *(v3 + 32) = sub_2531DA6D4();
        *(v3 + 40) = v24;
        v25 = *MEMORY[0x277CD50C0];
        v26 = sub_2531DA6D4();
        *(v3 + 72) = MEMORY[0x277D837D0];
        *(v3 + 48) = v26;
        *(v3 + 56) = v27;
        v28 = *MEMORY[0x277CD51A0];
        *(v3 + 80) = sub_2531DA6D4();
        *(v3 + 88) = v29;
        *(v3 + 120) = MEMORY[0x277D839B0];
        *(v3 + 96) = v1 & 1;
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_2531E53E0;
      v122 = *MEMORY[0x277CD5188];
      *(v3 + 32) = sub_2531DA6D4();
      *(v3 + 40) = v123;
      v124 = *MEMORY[0x277CD5178];
      v125 = sub_2531DA6D4();
      *(v3 + 72) = MEMORY[0x277D837D0];
      *(v3 + 48) = v125;
      *(v3 + 56) = v126;
      v127 = *MEMORY[0x277CD51A0];
      *(v3 + 80) = sub_2531DA6D4();
      *(v3 + 88) = v128;
      v78 = MEMORY[0x277D84A28];
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_2531E53E0;
          v4 = *MEMORY[0x277CD5188];
          *(v3 + 32) = sub_2531DA6D4();
          *(v3 + 40) = v5;
          v6 = *MEMORY[0x277CD5150];
          v7 = sub_2531DA6D4();
          *(v3 + 72) = MEMORY[0x277D837D0];
          *(v3 + 48) = v7;
          *(v3 + 56) = v8;
          v9 = *MEMORY[0x277CD51A0];
          *(v3 + 80) = sub_2531DA6D4();
          *(v3 + 88) = v10;
          *(v3 + 120) = MEMORY[0x277D83A90];
          *(v3 + 96) = v1;
LABEL_40:
          v129 = sub_2531B5270(v3);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return v129;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E53E0;
        v87 = *MEMORY[0x277CD5188];
        *(inited + 32) = sub_2531DA6D4();
        *(inited + 40) = v88;
        v89 = *MEMORY[0x277CD5118];
        v90 = sub_2531DA6D4();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v90;
        *(inited + 56) = v91;
        v92 = *MEMORY[0x277CD51A0];
        *(inited + 80) = sub_2531DA6D4();
        *(inited + 88) = v93;
        *(inited + 120) = MEMORY[0x277D839F8];
        *(inited + 96) = v1;
        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_2531E53E0;
      v71 = *MEMORY[0x277CD5188];
      *(v3 + 32) = sub_2531DA6D4();
      *(v3 + 40) = v72;
      v73 = *MEMORY[0x277CD5198];
      v74 = sub_2531DA6D4();
      *(v3 + 72) = MEMORY[0x277D837D0];
      *(v3 + 48) = v74;
      *(v3 + 56) = v75;
      v76 = *MEMORY[0x277CD51A0];
      *(v3 + 80) = sub_2531DA6D4();
      *(v3 + 88) = v77;
      v78 = MEMORY[0x277D84D38];
    }

    *(v3 + 120) = v78;
    *(v3 + 96) = v1;
    goto LABEL_40;
  }

  if (*(v0 + 16) <= 7u)
  {
    v11 = *(v0 + 8);
    if (v2 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      v79 = *MEMORY[0x277CD5188];
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v80;
      v81 = *MEMORY[0x277CD5190];
      v82 = sub_2531DA6D4();
      v83 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v82;
      *(inited + 56) = v84;
      v85 = *MEMORY[0x277CD51A0];
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v86;
      *(inited + 120) = v83;
      *(inited + 96) = v1;
      *(inited + 104) = v11;
      v20 = v1;
      v21 = v11;
      v22 = 5;
      goto LABEL_27;
    }

    if (v2 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      v13 = *MEMORY[0x277CD5188];
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v14;
      v15 = *MEMORY[0x277CD5168];
      v16 = sub_2531DA6D4();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v16;
      *(inited + 56) = v17;
      v18 = *MEMORY[0x277CD51A0];
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v19;
      *(inited + 120) = MEMORY[0x277CC9318];
      *(inited + 96) = v1;
      *(inited + 104) = v11;
      v20 = v1;
      v21 = v11;
      v22 = 6;
LABEL_27:
      sub_25316D004(v20, v21, v22);
LABEL_29:
      v94 = sub_2531B5270(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
LABEL_46:
      swift_arrayDestroy();
      return v94;
    }

    v95 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2531E53E0;
    v96 = *MEMORY[0x277CD5188];
    *(v31 + 32) = sub_2531DA6D4();
    *(v31 + 40) = v97;
    v98 = *MEMORY[0x277CD50B0];
    v99 = sub_2531DA6D4();
    *(v31 + 72) = MEMORY[0x277D837D0];
    *(v31 + 48) = v99;
    *(v31 + 56) = v100;
    v101 = *MEMORY[0x277CD51A0];
    *(v31 + 80) = sub_2531DA6D4();
    *(v31 + 88) = v102;
    v103 = *(v95 + 16);
    v104 = MEMORY[0x277D84F90];
    if (v103)
    {
      v138 = v31;
      v150 = MEMORY[0x277D84F90];

      sub_2531B45D4(0, v103, 0);
      v104 = v150;
      v141 = *MEMORY[0x277CD50D8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCC8, &qword_2531E7358);
      v105 = (v95 + 48);
      while (1)
      {
        v143 = v103;
        v106 = *(v105 - 2);
        v107 = *(v105 - 1);
        v108 = *v105;
        v109 = sub_2531DA6D4();
        v111 = v110;
        v144[0] = v109;
        v144[1] = v110;
        v145 = v106;
        v146 = v107;
        LOBYTE(v147[0]) = v108;
        v112 = sub_25316D004(v106, v107, v108);
        v113 = MTR.Value.makeDataValue()(v112);
        v144[2] = v113;
        v114 = sub_2531DAD74();

        v115 = sub_25317D998(v109, v111);
        if (v116)
        {
          break;
        }

        v114[(v115 >> 6) + 8] |= 1 << v115;
        v117 = (v114[6] + 16 * v115);
        *v117 = v109;
        v117[1] = v111;
        *(v114[7] + 8 * v115) = v113;
        v118 = v114[2];
        v60 = __OFADD__(v118, 1);
        v119 = v118 + 1;
        if (v60)
        {
          goto LABEL_51;
        }

        v114[2] = v119;

        sub_2531AC3F8(v144, &qword_27F58DCD0, &qword_2531E7360);
        sub_25316D2BC(v106, v107, v108);
        v150 = v104;
        v121 = *(v104 + 16);
        v120 = *(v104 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_2531B45D4((v120 > 1), v121 + 1, 1);
          v104 = v150;
        }

        v105 += 24;
        *(v104 + 16) = v121 + 1;
        *(v104 + 8 * v121 + 32) = v114;
        v103 = v143 - 1;
        if (v143 == 1)
        {

          v31 = v138;
          goto LABEL_43;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_43:
    *(v31 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCD8, &qword_2531E7368);
    *(v31 + 96) = v104;
    goto LABEL_45;
  }

  if (v2 == 8)
  {
    v30 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2531E53E0;
    v32 = *MEMORY[0x277CD5188];
    *(v31 + 32) = sub_2531DA6D4();
    *(v31 + 40) = v33;
    v34 = *MEMORY[0x277CD5180];
    v35 = sub_2531DA6D4();
    *(v31 + 72) = MEMORY[0x277D837D0];
    *(v31 + 48) = v35;
    *(v31 + 56) = v36;
    v37 = *MEMORY[0x277CD51A0];
    *(v31 + 80) = sub_2531DA6D4();
    *(v31 + 88) = v38;
    v39 = *(v30 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v137 = v31;
      v150 = MEMORY[0x277D84F90];

      sub_2531B4594(0, v39, 0);
      v40 = v150;
      v140 = *MEMORY[0x277CD50D0];
      v139 = *MEMORY[0x277CD50D8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB0, &qword_2531E7340);
      v41 = (v30 + 64);
      while (1)
      {
        v142 = v40;
        v42 = *(v41 - 4);
        v43 = *(v41 - 24);
        v44 = *(v41 - 2);
        v45 = *(v41 - 1);
        v46 = *v41;
        v47 = sub_2531DA6D4();
        v48 = __ROR8__(v42, 32);
        v148[0] = v47;
        v148[1] = v49;
        if (v43)
        {
          v48 = v42;
        }

        v148[5] = MEMORY[0x277D84D38];
        v148[2] = v48;
        v149[0] = sub_2531DA6D4();
        v149[1] = v50;
        v145 = v44;
        v146 = v45;
        LOBYTE(v147[0]) = v46;
        sub_25316D004(v44, v45, v46);
        v51 = sub_25316D004(v44, v45, v46);
        v52 = MTR.Value.makeDataValue()(v51);
        sub_25316D2BC(v44, v45, v46);
        v149[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
        v149[2] = v52;
        v53 = sub_2531DAD74();

        sub_2531B5834(v148, &v145, &qword_27F58DCB8, &qword_2531E7348);
        v54 = v145;
        v55 = v146;
        v56 = sub_25317D998(v145, v146);
        if (v57)
        {
          break;
        }

        *(v53 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v56;
        v58 = (v53[6] + 16 * v56);
        *v58 = v54;
        v58[1] = v55;
        sub_2531675D4(v147, (v53[7] + 32 * v56));
        v59 = v53[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_49;
        }

        v53[2] = v61;
        sub_2531B5834(v149, &v145, &qword_27F58DCB8, &qword_2531E7348);
        v62 = v145;
        v63 = v146;
        v64 = sub_25317D998(v145, v146);
        if (v65)
        {
          break;
        }

        *(v53 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v64;
        v66 = (v53[6] + 16 * v64);
        *v66 = v62;
        v66[1] = v63;
        sub_2531675D4(v147, (v53[7] + 32 * v64));
        v67 = v53[2];
        v60 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v60)
        {
          goto LABEL_49;
        }

        v53[2] = v68;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
        swift_arrayDestroy();
        sub_25316D2BC(v44, v45, v46);
        v40 = v142;
        v150 = v142;
        v70 = *(v142 + 16);
        v69 = *(v142 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_2531B4594((v69 > 1), v70 + 1, 1);
          v40 = v150;
        }

        v41 += 40;
        *(v40 + 16) = v70 + 1;
        *(v40 + 8 * v70 + 32) = v53;
        if (!--v39)
        {

          v31 = v137;
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_44:
    *(v31 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCC0, &qword_2531E7350);
    *(v31 + 96) = v40;
LABEL_45:
    v94 = sub_2531B5270(v31);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCB8, &qword_2531E7348);
    goto LABEL_46;
  }

  if (v2 == 10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCA8, &qword_2531E7338);
    v131 = swift_initStackObject();
    *(v131 + 16) = xmmword_2531E14E0;
    v132 = *MEMORY[0x277CD5188];
    *(v131 + 32) = sub_2531DA6D4();
    *(v131 + 40) = v133;
    v134 = *MEMORY[0x277CD5160];
    v135 = sub_2531DA6D4();
    *(v131 + 72) = MEMORY[0x277D837D0];
    *(v131 + 48) = v135;
    *(v131 + 56) = v136;
    v94 = sub_2531B5270(v131);
    swift_setDeallocating();
    sub_2531AC3F8(v131 + 32, &qword_27F58DCB8, &qword_2531E7348);
    return v94;
  }

LABEL_52:
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

void sub_2531B3C08(uint64_t a1, void *a2)
{
  sub_25317E5F0(a1, v22);
  sub_253181ED8(0, &qword_27F58DD38, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = sub_2531DA6C4();
    v10 = [v8 hmfErrorWithCode:3 reason:v9];

    swift_willThrow();
    goto LABEL_15;
  }

  v4 = v19;
  v5 = *MEMORY[0x277CD50D8];
  *&v20 = sub_2531DA6D4();
  *(&v20 + 1) = v6;
  v7 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (!*(&v21 + 1))
  {
    sub_2531AC3F8(v22, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v14 = objc_opt_self();
    v15 = sub_2531DA6C4();
    v10 = [v14 hmfErrorWithCode:3 reason:v15];

    swift_willThrow();
    goto LABEL_15;
  }

  *&v22[0] = 0;
  sub_2531DA614();
  if (*&v22[0])
  {
    MTR.Value.init(from:)();
    if (!v2)
    {

      return;
    }

    v11 = objc_opt_self();
    v12 = sub_2531DA6C4();
    v13 = sub_2531DA0A4();
    v10 = [v11 hmfErrorWithCode:3 reason:v12 suggestion:0 underlyingError:v13];

    swift_willThrow();
  }

  else
  {
    v16 = objc_opt_self();
    v17 = sub_2531DA6C4();
    v10 = [v16 hmfErrorWithCode:3 reason:v17];

    swift_willThrow();
  }

LABEL_15:
  *a2 = v10;
}

double sub_2531B3F70@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25317E5F0(a1, &v41);
  sub_253181ED8(0, &qword_27F58DD38, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = objc_opt_self();
    v11 = sub_2531DA6C4();
    v12 = [v10 hmfErrorWithCode:3 reason:v11];

    swift_willThrow();
    goto LABEL_25;
  }

  v6 = v36;
  v7 = *MEMORY[0x277CD50D0];
  *&v37 = sub_2531DA6D4();
  *(&v37 + 1) = v8;
  v9 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v40 = 0u;
  }

  v41 = v37;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    sub_2531AC3F8(&v41, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_11;
  }

  sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v19 = objc_opt_self();
    v20 = sub_2531DA6C4();
    v12 = [v19 hmfErrorWithCode:3 reason:v20];

    swift_willThrow();
    goto LABEL_25;
  }

  v14 = v43;
  v15 = *MEMORY[0x277CD50D8];
  *&v38 = sub_2531DA6D4();
  *(&v38 + 1) = v16;
  v17 = v6;
  v18 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v40 = 0u;
  }

  v41 = v38;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    sub_2531AC3F8(&v41, &qword_27F58D958, &qword_2531E55E0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v28 = objc_opt_self();
    v29 = sub_2531DA6C4();
    v12 = [v28 hmfErrorWithCode:3 reason:v29];

    swift_willThrow();
    goto LABEL_25;
  }

  v21 = v43;
  *&v41 = 0;
  sub_2531DA614();
  v22 = v41;
  if (v41)
  {
    MTR.Tag.init(rawValue:)([v14 unsignedLongLongValue], &v41);
    v23 = BYTE8(v41);
    if (BYTE8(v41) == 255)
    {

      v32 = objc_opt_self();
      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD00000000000004BLL, 0x80000002531DD550);
      v39 = [v14 unsignedLongLongValue];
      v33 = sub_2531DAF34();
      MEMORY[0x259BFE570](v33);

      MEMORY[0x259BFE570](41, 0xE100000000000000);
      v34 = sub_2531DA6C4();

      v12 = [v32 hmfErrorWithCode:3 reason:{v34, v39}];

      swift_willThrow();
    }

    else
    {
      v24 = v41;
      MTR.Value.init(from:)(&v41, v22);
      if (!v3)
      {

        v35 = v42;
        *a3 = v24;
        *(a3 + 8) = v23 & 1;
        result = *&v41;
        *(a3 + 16) = v41;
        *(a3 + 32) = v35;
        return result;
      }

      v25 = objc_opt_self();
      v26 = sub_2531DA6C4();
      v27 = sub_2531DA0A4();
      v12 = [v25 hmfErrorWithCode:3 reason:v26 suggestion:0 underlyingError:v27];

      swift_willThrow();
    }
  }

  else
  {
    v30 = objc_opt_self();
    v31 = sub_2531DA6C4();
    v12 = [v30 hmfErrorWithCode:3 reason:v31];

    swift_willThrow();
  }

LABEL_25:
  *a2 = v12;
  return result;
}

char *sub_2531B4574(char *a1, int64_t a2, char a3)
{
  result = sub_2531B478C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2531B4594(void *a1, int64_t a2, char a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58D218, &qword_2531E14B8, &qword_27F58D178, &qword_2531E11F8);
  *v3 = result;
  return result;
}

void *sub_2531B45D4(void *a1, int64_t a2, char a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58DD28, &qword_2531E73B0, &qword_27F58DD30, &qword_2531E73B8);
  *v3 = result;
  return result;
}

char *sub_2531B4614(char *a1, int64_t a2, char a3)
{
  result = sub_2531B4898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2531B4634()
{
  result = qword_27F58DC90;
  if (!qword_27F58DC90)
  {
    sub_2531DA0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DC90);
  }

  return result;
}

char *sub_2531B468C(char *a1, int64_t a2, char a3)
{
  result = sub_2531B4AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B46AC(char *a1, int64_t a2, char a3)
{
  result = sub_2531B4C18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2531B46CC(void *a1, int64_t a2, char a3)
{
  result = sub_2531B4D1C(a1, a2, a3, *v3, &qword_27F58D1C0, &qword_2531E1468, &qword_27F58D170, &qword_2531E2AB0);
  *v3 = result;
  return result;
}

char *sub_2531B470C(char *a1, int64_t a2, char a3)
{
  result = sub_2531B4E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B472C(char *a1, int64_t a2, char a3)
{
  result = sub_2531B4F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B474C(char *a1, int64_t a2, char a3)
{
  result = sub_2531B5070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B476C(char *a1, int64_t a2, char a3)
{
  result = sub_2531B5170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2531B478C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D200, &qword_2531E14A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD40, &qword_2531E73C0);
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

void *sub_2531B49B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA68, &qword_2531E5820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD48, &qword_2531E73C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2531B4C18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD20, &qword_2531E73A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2531B4D1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}