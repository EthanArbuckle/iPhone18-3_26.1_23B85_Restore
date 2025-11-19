uint64_t sub_25AE00CAC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25AE10E2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25AE10E2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25AE00ED4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25AE00F60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_25AE00F74()
{
  result = qword_27FA131E8;
  if (!qword_27FA131E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12760, &qword_25AE11D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131E8);
  }

  return result;
}

unint64_t sub_25AE00FD8()
{
  result = qword_27FA131F8;
  if (!qword_27FA131F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA131F8);
  }

  return result;
}

unint64_t sub_25AE0102C()
{
  result = qword_27FA13210;
  if (!qword_27FA13210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13210);
  }

  return result;
}

uint64_t sub_25AE01080(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13200, &qword_25AE16B78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE010F8()
{
  result = qword_27FA13228;
  if (!qword_27FA13228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13228);
  }

  return result;
}

unint64_t sub_25AE0117C()
{
  result = qword_27FA13230;
  if (!qword_27FA13230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13230);
  }

  return result;
}

unint64_t sub_25AE011D4()
{
  result = qword_27FA13238;
  if (!qword_27FA13238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13238);
  }

  return result;
}

unint64_t sub_25AE0122C()
{
  result = qword_27FA13240;
  if (!qword_27FA13240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13240);
  }

  return result;
}

uint64_t sub_25AE01294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t NDOUIFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v1);
  return sub_25AE10E6C();
}

unint64_t sub_25AE01474()
{
  result = qword_27FA13278;
  if (!qword_27FA13278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13278);
  }

  return result;
}

uint64_t sub_25AE014D8()
{
  v0 = sub_25AE102DC();
  __swift_allocate_value_buffer(v0, qword_27FA1CFB0);
  __swift_project_value_buffer(v0, qword_27FA1CFB0);
  return sub_25AE102CC();
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

__n128 NDOPromoView.init(model:deleteActionDisabled:action:deleteAction:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v7;
  *(a7 + 128) = *(a1 + 128);
  v8 = *(a1 + 144);
  v9 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v9;
  v10 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 144) = v8;
  *(a7 + 152) = a3;
  *(a7 + 160) = a4;
  *(a7 + 168) = a5;
  *(a7 + 176) = a6;
  *(a7 + 184) = a2;
  return result;
}

uint64_t NDOPromoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  *a1 = sub_25AE104AC();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13280, &qword_25AE16E60);
  return sub_25AE01680(v10, a1 + *(v8 + 44));
}

uint64_t sub_25AE01680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13298, &qword_25AE171E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = a1[1];
  v23 = *a1;

  sub_25AE10A0C();
  sub_25AE1031C();
  v12 = v24;
  v13 = v26;
  v21 = v29;
  v22 = v28;
  v31 = v25;
  v30 = v27;
  *v10 = sub_25AE1053C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132A0, &qword_25AE171F0);
  sub_25AE01880(a1, &v10[*(v14 + 44)]);
  LOBYTE(a1) = v31;
  v15 = v30;
  sub_25ADE82E0(v10, v8, &qword_27FA13298, &qword_25AE171E8);
  v16 = v22;
  *a2 = v23;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = a1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  v17 = v21;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132A8, &qword_25AE171F8);
  sub_25ADE82E0(v8, a2 + *(v18 + 48), &qword_27FA13298, &qword_25AE171E8);

  sub_25ADDE8CC(v10, &qword_27FA13298, &qword_25AE171E8);
  sub_25ADDE8CC(v8, &qword_27FA13298, &qword_25AE171E8);
}

uint64_t sub_25AE01880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = sub_25AE1063C();
  v66 = *(v65 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B8, &qword_25AE17200);
  v63 = *(v59 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v59);
  v12 = &v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132C0, &qword_25AE17208);
  v70 = *(v64 - 8);
  v13 = v70[8];
  v14 = MEMORY[0x28223BE20](v64);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v55 = &v55 - v16;
  v60 = sub_25AE109DC();
  v57 = *(v60 - 8);
  v18 = v57;
  v19 = *(v57 + 64);
  v20 = MEMORY[0x28223BE20](v60);
  v69 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132C8, &qword_25AE17210);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v68 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v55 - v28;
  *v29 = sub_25AE104AC();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132D0, &qword_25AE17218) + 44)];
  v58 = v29;
  sub_25AE0200C(a1, v30);
  v56 = v23;
  sub_25AE109CC();
  v72 = *(a1 + 48);
  v73 = v72;
  v31 = swift_allocObject();
  v32 = *(a1 + 144);
  v31[9] = *(a1 + 128);
  v31[10] = v32;
  v31[11] = *(a1 + 160);
  *(v31 + 185) = *(a1 + 169);
  v33 = *(a1 + 80);
  v31[5] = *(a1 + 64);
  v31[6] = v33;
  v34 = *(a1 + 112);
  v31[7] = *(a1 + 96);
  v31[8] = v34;
  v35 = *(a1 + 16);
  v31[1] = *a1;
  v31[2] = v35;
  v36 = *(a1 + 48);
  v31[3] = *(a1 + 32);
  v31[4] = v36;
  sub_25AE02C9C(&v73, v71);
  sub_25AE02CF8(a1, v71);
  sub_25ADDE53C();
  sub_25AE109BC();
  sub_25AE107AC();
  v37 = sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0);
  sub_25AE1086C();
  (*(v61 + 8))(v9, v6);
  sub_25AE1062C();
  v71[0] = v6;
  v71[1] = v37;
  swift_getOpaqueTypeConformance2();
  sub_25AE02D30();
  v38 = v59;
  v39 = v65;
  sub_25AE1088C();
  (*(v66 + 8))(v5, v39);
  (*(v63 + 8))(v12, v38);
  v40 = v68;
  sub_25ADE82E0(v29, v68, &qword_27FA132C8, &qword_25AE17210);
  v41 = *(v18 + 16);
  v42 = v69;
  v43 = v23;
  v44 = v60;
  v41(v69, v43, v60);
  v45 = v70[2];
  v46 = v62;
  v47 = v17;
  v48 = v64;
  v45(v62, v47, v64);
  v49 = v40;
  v50 = v67;
  sub_25ADE82E0(v49, v67, &qword_27FA132C8, &qword_25AE17210);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132E8, &qword_25AE17220);
  v41((v50 + *(v51 + 48)), v42, v44);
  v45((v50 + *(v51 + 64)), v46, v48);
  v52 = v70[1];
  v52(v55, v48);
  v53 = *(v57 + 8);
  v53(v56, v44);
  sub_25ADDE8CC(v58, &qword_27FA132C8, &qword_25AE17210);
  v52(v46, v48);
  v53(v69, v44);
  return sub_25ADDE8CC(v68, &qword_27FA132C8, &qword_25AE17210);
}

uint64_t sub_25AE0200C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1063C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F0, &qword_25AE17228);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F8, &qword_25AE17230);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13300, &qword_25AE17238);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v43 - v19;
  v54 = sub_25AE1053C();
  LOBYTE(v58[0]) = 1;
  sub_25AE025C8(a1, v65);
  *&v64[7] = v65[0];
  *&v64[23] = v65[1];
  *&v64[39] = v65[2];
  *&v64[55] = v65[3];
  v53 = LOBYTE(v58[0]);
  v21 = a1[21];
  if (v21)
  {
    v47 = v18;
    v22 = a1[22];
    v23 = swift_allocObject();
    v45 = v11;
    v43[1] = v43;
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    MEMORY[0x28223BE20](v23);
    v43[-2] = a1;
    sub_25AE02EC8(v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13318, &qword_25AE17250);
    v44 = a1;
    v46 = v20;
    v24 = v7;
    sub_25AE02ED8();
    v25 = v10;
    sub_25AE109AC();
    v26 = v50;
    sub_25AE1062C();
    sub_25ADE8250(&qword_27FA13380, &qword_27FA132F0, &qword_25AE17228);
    sub_25AE02D30();
    v27 = v48;
    v28 = v52;
    sub_25AE1088C();
    v18 = v47;
    sub_25AE031B4(v21);
    (*(v51 + 8))(v26, v28);
    v29 = v24;
    v20 = v46;
    (*(v49 + 8))(v25, v29);
    v30 = *(v44 + 184);
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v33 = v45;
    v34 = (v27 + *(v45 + 36));
    *v34 = KeyPath;
    v34[1] = sub_25AE0322C;
    v34[2] = v32;
    sub_25AE03244(v27, v20);
    (*(v55 + 56))(v20, 0, 1, v33);
  }

  else
  {
    (*(v55 + 56))(v20, 1, 1, v11);
  }

  sub_25ADE82E0(v20, v18, &qword_27FA13300, &qword_25AE17238);
  v35 = v54;
  v56[0] = v54;
  v56[1] = 0;
  v36 = v53;
  v57[0] = v53;
  *&v57[1] = *v64;
  *&v57[17] = *&v64[16];
  *&v57[33] = *&v64[32];
  *&v57[49] = *&v64[48];
  *&v57[64] = *&v64[63];
  v37 = *&v64[63];
  v38 = *v57;
  *a2 = v54;
  *(a2 + 16) = v38;
  v39 = *&v57[16];
  v40 = *&v57[48];
  *(a2 + 48) = *&v57[32];
  *(a2 + 64) = v40;
  *(a2 + 32) = v39;
  *(a2 + 80) = v37;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13308, &qword_25AE17240);
  sub_25ADE82E0(v18, a2 + *(v41 + 64), &qword_27FA13300, &qword_25AE17238);
  sub_25AE02D88(v56, v58);
  sub_25ADDE8CC(v20, &qword_27FA13300, &qword_25AE17238);
  sub_25ADDE8CC(v18, &qword_27FA13300, &qword_25AE17238);
  v58[0] = v35;
  v58[1] = 0;
  v59 = v36;
  v61 = *&v64[16];
  v62 = *&v64[32];
  *v63 = *&v64[48];
  *&v63[15] = *&v64[63];
  v60 = *v64;
  return sub_25AE02DF8(v58);
}

uint64_t sub_25AE025C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  v33 = a1[2];
  v34 = a1[3];
  sub_25ADDE53C();

  v5 = sub_25AE1082C();
  v7 = v6;
  v9 = v8;
  sub_25AE107AC();
  v10 = sub_25AE107EC();
  v30 = v11;
  v31 = v10;
  v29 = v12;
  v32 = v13;
  sub_25ADE88C4(v5, v7, v9 & 1);

  v14 = sub_25AE1082C();
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_25AE107DC();
  v18 = sub_25AE1080C();
  v20 = v19;
  LOBYTE(v3) = v21;

  sub_25ADE88C4(v14, v16, v4 & 1);

  sub_25AE1066C();
  v22 = sub_25AE107FC();
  v24 = v23;
  LOBYTE(v4) = v25;
  v27 = v26;
  sub_25ADE88C4(v18, v20, v3 & 1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v4 & 1;
  *(a2 + 56) = v27;
  sub_25AE033CC(v31, v30, v29 & 1);

  sub_25AE033CC(v22, v24, v4 & 1);

  sub_25ADE88C4(v22, v24, v4 & 1);

  sub_25ADE88C4(v31, v30, v29 & 1);
}

uint64_t sub_25AE027FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 184))
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 1.0;
  }

  sub_25AE10A0C();
  sub_25AE1031C();
  v4 = sub_25AE10A0C();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13318, &qword_25AE17250) + 36);
  sub_25AE1091C();
  sub_25AE1076C();
  swift_getKeyPath();
  sub_25AE1078C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13388, &qword_25AE172E0);
  sub_25AE032BC();
  sub_25AE1086C();

  v8 = sub_25AE108FC();
  KeyPath = swift_getKeyPath();
  v10 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133A8, &qword_25AE17318) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13378, &qword_25AE17278);
  v12 = (v7 + *(result + 36));
  *v12 = v4;
  v12[1] = v6;
  *a2 = v3;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16 & 1;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_25AE029F0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  *a1 = sub_25AE104AC();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13280, &qword_25AE16E60);
  return sub_25AE01680(v10, a1 + *(v8 + 44));
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_25AE02AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_25AE02B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE02BE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_25ADE4930(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v5 = *(v0 + 152);
  if (v5 != 255)
  {
    sub_25ADE4930(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v5);
  }

  v6 = *(v0 + 176);

  if (*(v0 + 184))
  {
    v7 = *(v0 + 192);
  }

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_25AE02C74()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  return v1();
}

unint64_t sub_25AE02D30()
{
  result = qword_27FA132E0;
  if (!qword_27FA132E0)
  {
    sub_25AE1063C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA132E0);
  }

  return result;
}

uint64_t sub_25AE02D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13310, &qword_25AE17248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE02DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13310, &qword_25AE17248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE02E60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE02E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25AE02EC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25AE02ED8()
{
  result = qword_27FA13320;
  if (!qword_27FA13320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13318, &qword_25AE17250);
    sub_25AE02F90();
    sub_25ADE8250(&qword_27FA13370, &qword_27FA13378, &qword_25AE17278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13320);
  }

  return result;
}

unint64_t sub_25AE02F90()
{
  result = qword_27FA13328;
  if (!qword_27FA13328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13330, &qword_25AE17258);
    sub_25AE0301C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13328);
  }

  return result;
}

unint64_t sub_25AE0301C()
{
  result = qword_27FA13338;
  if (!qword_27FA13338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13340, &qword_25AE17260);
    sub_25AE030A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13338);
  }

  return result;
}

unint64_t sub_25AE030A8()
{
  result = qword_27FA13348;
  if (!qword_27FA13348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13350, &qword_25AE17268);
    sub_25AE03160();
    sub_25ADE8250(&qword_27FA13360, &qword_27FA13368, &qword_25AE17270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13348);
  }

  return result;
}

unint64_t sub_25AE03160()
{
  result = qword_27FA13358;
  if (!qword_27FA13358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13358);
  }

  return result;
}

uint64_t sub_25AE031B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AE031C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE1042C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE03244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F8, &qword_25AE17230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE032BC()
{
  result = qword_27FA13390;
  if (!qword_27FA13390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13388, &qword_25AE172E0);
    sub_25ADE8250(&qword_27FA13398, &qword_27FA133A0, &qword_25AE18B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13390);
  }

  return result;
}

uint64_t sub_25AE03374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE1046C();
  *a1 = result;
  return result;
}

uint64_t sub_25AE033A0(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AE1047C();
}

uint64_t sub_25AE033CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t NDOPlacardModel.iconUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOPlacardModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDOPlacardModel.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NDOPlacardModel.subtitleLinkText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NDOPlacardModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a10 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = *a10;
  v12 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v12;
  *(a9 + 96) = v10;
  return result;
}

uint64_t sub_25AE034E4()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_25AE0357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE0462C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE035A4(uint64_t a1)
{
  v2 = sub_25AE04320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE035E0(uint64_t a1)
{
  v2 = sub_25AE04320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOPlacardModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133B0, &qword_25AE17320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[6];
  v24 = v1[7];
  v25 = v12;
  v13 = v1[8];
  v15 = v1[10];
  v14 = v1[11];
  v20 = v1[9];
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v36 = *(v1 + 96);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE04320();
  sub_25AE10E8C();
  LOBYTE(v31) = 0;
  v17 = v30;
  sub_25AE10DCC();
  if (!v17)
  {
    v18 = v23;
    LOBYTE(v31) = 1;
    sub_25AE10DCC();
    LOBYTE(v31) = 2;
    sub_25AE10DCC();
    LOBYTE(v31) = 3;
    sub_25AE10DCC();
    v31 = v18;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v36;
    v37 = 4;
    sub_25ADE48D8(v18, v20, v21, v22, v36);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v31, v32, v33, v34, v35);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDOPlacardModel.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 96);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v14 = *(v1 + 5);
  v13 = *(v1 + 4);
  return NDOAction.hash(into:)(a1);
}

uint64_t NDOPlacardModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  NDOAction.hash(into:)(v13);
  return sub_25AE10E6C();
}

uint64_t NDOPlacardModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133C0, &qword_25AE17328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE04320();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_25AE10D4C();
  v37 = v12;
  LOBYTE(v45[0]) = 1;
  v13 = sub_25AE10D4C();
  v36 = v14;
  v33 = v13;
  LOBYTE(v45[0]) = 2;
  v32 = sub_25AE10D4C();
  v35 = v15;
  LOBYTE(v45[0]) = 3;
  v31 = sub_25AE10D4C();
  v34 = v16;
  v50 = 4;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v29 = *(&v47 + 1);
  v30 = v47;
  v27 = *(&v48 + 1);
  v28 = v48;
  *&v38 = v11;
  v17 = v37;
  *(&v38 + 1) = v37;
  *&v39 = v33;
  v18 = v36;
  *(&v39 + 1) = v36;
  *&v40 = v32;
  v19 = v35;
  *(&v40 + 1) = v35;
  *&v41 = v31;
  v20 = v34;
  *(&v41 + 1) = v34;
  v42 = v47;
  v43 = v48;
  v21 = v49;
  v44 = v49;
  *(a2 + 96) = v49;
  v22 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v22;
  v23 = v39;
  *a2 = v38;
  *(a2 + 16) = v23;
  v24 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v24;
  sub_25AE04374(&v38, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v45[0] = v11;
  v45[1] = v17;
  v45[2] = v33;
  v45[3] = v18;
  v45[4] = v32;
  v45[5] = v19;
  v45[6] = v31;
  v45[7] = v20;
  v45[8] = v30;
  v45[9] = v29;
  v45[10] = v28;
  v45[11] = v27;
  v46 = v21;
  return sub_25AE043AC(v45);
}

uint64_t sub_25AE03EF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  NDOAction.hash(into:)(v13);
  return sub_25AE10E6C();
}

uint64_t sub_25AE03FB8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 96);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v14 = *(v1 + 5);
  v13 = *(v1 + 4);
  return NDOAction.hash(into:)(a1);
}

uint64_t sub_25AE04064()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  NDOAction.hash(into:)(v13);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI15NDOPlacardModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v24 = *(a1 + 56);
  v25 = *(a1 + 48);
  v22 = *(a1 + 72);
  v23 = *(a1 + 64);
  v20 = *(a1 + 88);
  v21 = *(a1 + 80);
  v19 = *(a1 + 96);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v17 = *(a2 + 72);
  v18 = *(a2 + 64);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  v14 = *(a2 + 96);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_25AE10E2C()) && (v2 == v7 && v4 == v6 || (sub_25AE10E2C()) && (v3 == v8 && v5 == v9 || (sub_25AE10E2C()) && (v25 == v10 && v24 == v11 || (sub_25AE10E2C()))
  {
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v34 = v20;
    v35 = v19;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = v14;
    sub_25ADE48D8(v23, v22, v21, v20, v19);
    sub_25ADE48D8(v18, v17, v16, v15, v14);
    v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v31, &v26);
    sub_25ADE4930(v26, v27, v28, v29, v30);
    sub_25ADE4930(v31, v32, v33, v34, v35);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_25AE04320()
{
  result = qword_27FA133B8;
  if (!qword_27FA133B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA133B8);
  }

  return result;
}

unint64_t sub_25AE043E0()
{
  result = qword_27FA133C8;
  if (!qword_27FA133C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA133C8);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AE04460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_25AE044A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE04528()
{
  result = qword_27FA133D0;
  if (!qword_27FA133D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA133D0);
  }

  return result;
}

unint64_t sub_25AE04580()
{
  result = qword_27FA133D8;
  if (!qword_27FA133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA133D8);
  }

  return result;
}

unint64_t sub_25AE045D8()
{
  result = qword_27FA133E0;
  if (!qword_27FA133E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA133E0);
  }

  return result;
}

uint64_t sub_25AE0462C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025AE1EBC0 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

_BYTE *NDOErrorView.init(for:action:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_25AE047EC()
{
  v1 = sub_25AE1029C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_25AE10A8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  *v0;
  *v0;
  sub_25AE10A7C();
  (*(v4 + 16))(v8, v10, v3);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v13 = sub_25AE10AFC();
  (*(v4 + 8))(v10, v3);
  return v13;
}

uint64_t sub_25AE049EC()
{
  v1 = sub_25AE1029C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_25AE10A8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  *v0;
  *v0;
  sub_25AE10A7C();
  (*(v4 + 16))(v8, v10, v3);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v13 = sub_25AE10AFC();
  (*(v4 + 8))(v10, v3);
  return v13;
}

uint64_t NDOErrorView.body.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133F0, &qword_25AE176B8);
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0);
  sub_25AE05040();
  return sub_25AE1064C();
}

uint64_t sub_25AE04D18()
{
  sub_25AE047EC();
  sub_25ADDE53C();
  return sub_25AE1096C();
}

uint64_t sub_25AE04DB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_25AE04D18();
}

uint64_t sub_25AE04DBC@<X0>(uint64_t a1@<X8>)
{
  sub_25AE049EC();
  sub_25ADDE53C();
  result = sub_25AE1082C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_25AE04E24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_25AE04DBC(a1);
}

uint64_t sub_25AE04E30@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if (a1)
  {
    v18 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    MEMORY[0x28223BE20](v13);
    *(&v17 - 32) = v14;
    *(&v17 - 3) = a2;
    *(&v17 - 2) = a3;

    sub_25AE109AC();
    (*(v18 + 32))(a4, v12, v8);
    return (*(v18 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v16 = *(v10 + 56);

    return v16(a4, 1, 1, v8);
  }
}

unint64_t sub_25AE05040()
{
  result = qword_27FA13400;
  if (!qword_27FA13400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA133F0, &qword_25AE176B8);
    sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13400);
  }

  return result;
}

uint64_t sub_25AE0510C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25AE1029C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25AE10A8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_25AE10A7C();
  (*(v5 + 16))(v9, v11, v4);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v14 = sub_25AE10AFC();
  v16 = v15;
  (*(v5 + 8))(v11, v4);
  v21[1] = v14;
  v21[2] = v16;
  sub_25ADDE53C();
  result = sub_25AE1082C();
  *a1 = result;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_25AE05310()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133F0, &qword_25AE176B8);
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0);
  sub_25AE05040();
  return sub_25AE1064C();
}

uint64_t sub_25AE054C4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE054FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_25AE05524@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_25AE0510C(a1);
}

uint64_t sub_25AE0553C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v38 = a3;
  v3 = sub_25AE1092C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13418, &qword_25AE17820);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v9 = (&v33 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13420, &unk_25AE17828);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = sub_25AE101BC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE101AC();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_25AE05FE4(v21);
    type metadata accessor for NDOAsyncImage.NDOAsyncImageBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_25AE1094C();
    v30 = v33;
    v29 = v34;
    (*(v33 + 104))(v6, *MEMORY[0x277CE0FE0], v34);
    v31 = sub_25AE1093C();

    (*(v30 + 8))(v6, v29);
    *v9 = v31;
    swift_storeEnumTagMultiPayload();
    sub_25AE0604C();
    return sub_25AE1060C();
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    (*(v23 + 16))(v19, v26, v22);
    (*(v23 + 56))(v19, 0, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13430, &qword_25AE17838);
    sub_25AE060B0();
    sub_25AE102EC();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_25AE0604C();
    sub_25AE1060C();
    (*(v11 + 8))(v14, v10);
    return (*(v23 + 8))(v26, v22);
  }
}

uint64_t sub_25AE05A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1092C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25AE1038C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277CDD9C8])
  {
    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v16 = sub_25AE1093C();
    (*(v5 + 8))(v8, v4);
    v24 = v16;
    LOBYTE(v25) = 0;
    swift_retain_n();
    sub_25AE1060C();
    v24 = v26;
    v25 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
    sub_25AE0613C();
    sub_25AE1060C();
  }

  else
  {
    if (v14 != *MEMORY[0x277CDD9C0])
    {
      v24 = 0;
      v25 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
      sub_25AE0613C();
      sub_25AE1060C();
      v21 = v26;
      v22 = v27;
      v23 = v28;
      result = (*(v10 + 8))(v13, v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(v13, v9);
    type metadata accessor for NDOAsyncImage.NDOAsyncImageBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_25AE1094C();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v19 = sub_25AE1093C();

    (*(v5 + 8))(v8, v4);
    v24 = v19;
    LOBYTE(v25) = 1;

    sub_25AE1060C();
    v24 = v26;
    v25 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
    sub_25AE0613C();
    sub_25AE1060C();
  }

  v21 = v26;
  v22 = v27;
  v23 = v28;
LABEL_7:
  *a2 = v21;
  *(a2 + 8) = v22;
  *(a2 + 9) = v23;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AE05F34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AE05F7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25AE05FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE0604C()
{
  result = qword_27FA13428;
  if (!qword_27FA13428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13420, &unk_25AE17828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13428);
  }

  return result;
}

unint64_t sub_25AE060B0()
{
  result = qword_27FA13438;
  if (!qword_27FA13438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13430, &qword_25AE17838);
    sub_25AE0613C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13438);
  }

  return result;
}

unint64_t sub_25AE0613C()
{
  result = qword_27FA13440;
  if (!qword_27FA13440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13448, &qword_25AE17840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13440);
  }

  return result;
}

unint64_t sub_25AE061BC()
{
  result = qword_27FA13450;
  if (!qword_27FA13450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13458, &qword_25AE17848);
    sub_25AE0604C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13450);
  }

  return result;
}

__n128 NDODWPromoView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = *(a1 + 80);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  return result;
}

uint64_t NDODWPromoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13460, &qword_25AE17850);
  return sub_25AE062EC(v8, a1 + *(v6 + 44));
}

uint64_t sub_25AE062EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_25AE1063C();
  v41 = *(v39 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13478, &qword_25AE17A48);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v40 = sub_25AE1053C();
  LOBYTE(v44[0]) = 1;
  sub_25AE067CC(a1, v51);
  *&v50[7] = v51[0];
  *&v50[23] = v51[1];
  *&v50[39] = v51[2];
  *&v50[55] = v51[3];
  v38 = LOBYTE(v44[0]);
  v18 = swift_allocObject();
  v19 = *(a1 + 80);
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(a1 + 96);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  v21 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v21;
  v43 = a1;
  sub_25AE06D70(a1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13488, &qword_25AE17A58);
  sub_25AE06DA8();
  sub_25AE109AC();
  sub_25AE1062C();
  sub_25ADE8250(&qword_27FA134A8, &qword_27FA13478, &qword_25AE17A48);
  sub_25AE02D30();
  v22 = v39;
  sub_25AE1088C();
  (*(v41 + 8))(v6, v22);
  (*(v37 + 8))(v10, v7);
  v23 = sub_25AE108CC();
  v24 = sub_25AE1070C();
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134B0, &qword_25AE17A68) + 36)];
  *v25 = v23;
  v25[8] = v24;
  v26 = &v17[*(v12 + 44)];
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_25AE1052C();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134B8, &qword_25AE17A70) + 36)] = 256;
  v29 = v42;
  sub_25AE06EB8(v17, v42);
  v30 = v40;
  v52[0] = v40;
  v52[1] = 0;
  LOBYTE(v22) = v38;
  v53[0] = v38;
  *&v53[1] = *v50;
  *&v53[17] = *&v50[16];
  *&v53[33] = *&v50[32];
  *&v53[49] = *&v50[48];
  v31 = *&v50[63];
  *&v53[64] = *&v50[63];
  v32 = *v53;
  *a2 = v40;
  *(a2 + 16) = v32;
  v33 = *&v53[16];
  v34 = *&v53[48];
  *(a2 + 48) = *&v53[32];
  *(a2 + 64) = v34;
  *(a2 + 32) = v33;
  *(a2 + 80) = v31;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134C0, &qword_25AE17A78);
  sub_25AE06EB8(v29, a2 + *(v35 + 64));
  sub_25AE02D88(v52, v44);
  sub_25AE06F28(v17);
  sub_25AE06F28(v29);
  v44[0] = v30;
  v44[1] = 0;
  v45 = v22;
  v47 = *&v50[16];
  v48 = *&v50[32];
  v49[0] = *&v50[48];
  *(v49 + 15) = *&v50[63];
  v46 = *v50;
  return sub_25AE02DF8(v44);
}

uint64_t sub_25AE067CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v30 = *a1;
  v31 = a1[1];
  sub_25ADDE53C();

  v5 = sub_25AE1082C();
  v27 = v6;
  v28 = v5;
  v26 = v7;
  v29 = v8;

  v9 = sub_25AE1082C();
  v11 = v10;
  v13 = v12;
  sub_25AE1076C();
  v14 = sub_25AE1080C();
  v16 = v15;
  LOBYTE(v3) = v17;

  sub_25ADE88C4(v9, v11, v13 & 1);

  sub_25AE1066C();
  v18 = sub_25AE107FC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_25ADE88C4(v14, v16, v3 & 1);

  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_25AE033CC(v28, v27, v26 & 1);

  sub_25AE033CC(v18, v20, v22 & 1);

  sub_25ADE88C4(v18, v20, v22 & 1);

  sub_25ADE88C4(v28, v27, v26 & 1);
}

uint64_t sub_25AE069B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  sub_25ADDE53C();

  v3 = sub_25AE1082C();
  v5 = v4;
  v7 = v6;
  sub_25AE108DC();
  v8 = sub_25AE107FC();
  v10 = v9;
  v12 = v11;
  sub_25ADE88C4(v3, v5, v7 & 1);

  sub_25AE1079C();
  v13 = sub_25AE107EC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25ADE88C4(v8, v10, v12 & 1);

  v20 = sub_25AE106FC();
  LOBYTE(v8) = v17 & 1;
  v21 = sub_25AE1074C();
  result = sub_25AE102FC();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v8;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 80) = v21;
  *(a2 + 88) = v23;
  *(a2 + 96) = v24;
  *(a2 + 104) = v25;
  *(a2 + 112) = v26;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_25AE06B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13460, &qword_25AE17850);
  return sub_25AE062EC(v8, a1 + *(v6 + 44));
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AE06BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_25AE06C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE06CE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_25ADE4930(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_25AE06D40()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  return v1();
}

unint64_t sub_25AE06DA8()
{
  result = qword_27FA13490;
  if (!qword_27FA13490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13488, &qword_25AE17A58);
    sub_25AE06E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13490);
  }

  return result;
}

unint64_t sub_25AE06E34()
{
  result = qword_27FA13498;
  if (!qword_27FA13498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA134A0, &qword_25AE17A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13498);
  }

  return result;
}

uint64_t sub_25AE06EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE06F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 NDODWCoverageView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  *(a4 + 96) = *(a1 + 96);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 120) = a3;
  return result;
}

uint64_t NDODWCoverageView.body.getter@<X0>(void *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134C8, &qword_25AE17A80);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = v1[5];
  v43[4] = v1[4];
  v43[5] = v10;
  v11 = v1[7];
  v43[6] = v1[6];
  v43[7] = v11;
  v12 = v1[1];
  v43[0] = *v1;
  v43[1] = v12;
  v13 = v1[3];
  v43[2] = v1[2];
  v43[3] = v13;
  v40 = sub_25AE1053C();
  v42 = 1;
  sub_25AE07564(v43, &v61);
  v56 = *&v62[176];
  v57 = *&v62[192];
  v52 = *&v62[112];
  v53 = *&v62[128];
  v54 = *&v62[144];
  v55 = *&v62[160];
  v48 = *&v62[48];
  v49 = *&v62[64];
  v50 = *&v62[80];
  v51 = *&v62[96];
  v44 = v61;
  v45 = *v62;
  v46 = *&v62[16];
  v47 = *&v62[32];
  v59[11] = *&v62[160];
  v59[12] = *&v62[176];
  v59[13] = *&v62[192];
  v59[14] = *&v62[208];
  v59[7] = *&v62[96];
  v59[8] = *&v62[112];
  v59[9] = *&v62[128];
  v59[10] = *&v62[144];
  v59[3] = *&v62[32];
  v59[4] = *&v62[48];
  v59[5] = *&v62[64];
  v59[6] = *&v62[80];
  v58 = *&v62[208];
  v59[0] = v61;
  v59[1] = *v62;
  v59[2] = *&v62[16];
  sub_25ADE82E0(&v44, v60, &qword_27FA134D0, &qword_25AE17A88);
  sub_25ADDE8CC(v59, &qword_27FA134D0, &qword_25AE17A88);
  *&v41[183] = v55;
  *&v41[199] = v56;
  *&v41[215] = v57;
  *&v41[231] = v58;
  *&v41[119] = v51;
  *&v41[135] = v52;
  *&v41[151] = v53;
  *&v41[167] = v54;
  *&v41[55] = v47;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[7] = v44;
  *&v41[23] = v45;
  *&v41[39] = v46;
  v14 = v42;
  v15 = sub_25AE1071C();
  sub_25AE102FC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *v9 = sub_25AE1053C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134D8, &qword_25AE17A90);
  sub_25AE07C40(v43, &v9[*(v24 + 44)]);
  v25 = sub_25AE107BC();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134E0, &qword_25AE17AC8) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  LOBYTE(v25) = sub_25AE1072C();
  sub_25AE102FC();
  v28 = &v9[*(v3 + 44)];
  *v28 = v25;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v7;
  sub_25ADE82E0(v9, v7, &qword_27FA134C8, &qword_25AE17A80);
  *(&v60[26] + 1) = *&v41[192];
  *(&v60[28] + 1) = *&v41[208];
  *(&v60[30] + 1) = *&v41[224];
  *(&v60[18] + 1) = *&v41[128];
  *(&v60[20] + 1) = *&v41[144];
  *(&v60[22] + 1) = *&v41[160];
  *(&v60[24] + 1) = *&v41[176];
  *(&v60[10] + 1) = *&v41[64];
  *(&v60[12] + 1) = *&v41[80];
  *(&v60[14] + 1) = *&v41[96];
  *(&v60[16] + 1) = *&v41[112];
  *(&v60[2] + 1) = *v41;
  *(&v60[4] + 1) = *&v41[16];
  *(&v60[6] + 1) = *&v41[32];
  v34 = v40;
  v60[0] = v40;
  v60[1] = 0;
  LOBYTE(v60[2]) = v14;
  v60[32] = *&v41[239];
  *(&v60[8] + 1) = *&v41[48];
  LOBYTE(v60[33]) = v15;
  v60[34] = v17;
  v60[35] = v19;
  v60[36] = v21;
  v60[37] = v23;
  LOBYTE(v60[38]) = 0;
  v35 = v39;
  memcpy(v39, v60, 0x131uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134E8, &qword_25AE17AD0);
  sub_25ADE82E0(v33, v35 + *(v36 + 48), &qword_27FA134C8, &qword_25AE17A80);
  sub_25ADE82E0(v60, &v61, &qword_27FA134F0, &qword_25AE17AD8);
  sub_25ADDE8CC(v9, &qword_27FA134C8, &qword_25AE17A80);
  sub_25ADDE8CC(v33, &qword_27FA134C8, &qword_25AE17A80);
  *&v62[193] = *&v41[192];
  *&v62[209] = *&v41[208];
  *v63 = *&v41[224];
  *&v62[129] = *&v41[128];
  *&v62[145] = *&v41[144];
  *&v62[161] = *&v41[160];
  *&v62[177] = *&v41[176];
  *&v62[65] = *&v41[64];
  *&v62[81] = *&v41[80];
  *&v62[97] = *&v41[96];
  *&v62[113] = *&v41[112];
  *&v62[1] = *v41;
  *&v62[17] = *&v41[16];
  *&v62[33] = *&v41[32];
  v61 = v34;
  v62[0] = v14;
  *&v63[15] = *&v41[239];
  *&v62[49] = *&v41[48];
  v64 = v15;
  v65 = v17;
  v66 = v19;
  v67 = v21;
  v68 = v23;
  v69 = 0;
  return sub_25ADDE8CC(&v61, &qword_27FA134F0, &qword_25AE17AD8);
}

uint64_t sub_25AE07564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[6];
  v82 = a1[7];
  v74 = a1[8];
  v75 = a1[9];
  v93 = a1[1];
  if (v93)
  {
    v94 = *a1;

    sub_25AE10A0C();
    sub_25AE1031C();
    v91 = v119;
    v92 = v117[8];
    v89 = v122;
    v90 = v121;
    LOBYTE(v105) = v118;
    LOBYTE(v101) = v120;
    v87 = v118;
    v88 = v120;
  }

  else
  {
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
  }

  sub_25ADDE53C();

  v7 = sub_25AE1082C();
  v9 = v8;
  v11 = v10;
  sub_25AE107AC();
  v12 = sub_25AE107EC();
  v84 = v13;
  v85 = v12;
  v73 = v14;
  v86 = v15;
  sub_25ADE88C4(v7, v9, v11 & 1);

  v16 = sub_25AE1082C();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_25AE1076C();
  v20 = sub_25AE1080C();
  v22 = v21;
  v24 = v23;

  sub_25ADE88C4(v16, v18, v9 & 1);

  sub_25AE1066C();
  v25 = sub_25AE107FC();
  v71 = v26;
  v72 = v25;
  v69 = v27;
  v70 = v28;
  sub_25ADE88C4(v20, v22, v24 & 1);

  v29 = sub_25AE1082C();
  v31 = v30;
  LOBYTE(v16) = v32;
  sub_25AE1076C();
  v33 = sub_25AE1080C();
  v35 = v34;
  v37 = v36;

  sub_25ADE88C4(v29, v31, v16 & 1);

  sub_25AE1066C();
  v38 = sub_25AE107FC();
  v80 = v39;
  v81 = v38;
  LOBYTE(v29) = v40;
  v83 = v41;
  sub_25ADE88C4(v33, v35, v37 & 1);

  v79 = sub_25AE1071C();
  sub_25AE102FC();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v78 = v29 & 1;
  HIDWORD(v105) = HIDWORD(v74);
  v106 = v75;

  v50 = sub_25AE1082C();
  v52 = v51;
  LOBYTE(v18) = v53;
  sub_25AE1076C();
  v54 = sub_25AE1080C();
  v56 = v55;
  LOBYTE(v16) = v57;

  sub_25ADE88C4(v50, v52, v18 & 1);

  LODWORD(v105) = sub_25AE1066C();
  v68 = sub_25AE107FC();
  v76 = v59;
  v77 = v58;
  LOBYTE(v35) = v60;
  sub_25ADE88C4(v54, v56, v16 & 1);

  *&v97 = v94;
  *(&v97 + 1) = v93;
  *&v98 = v92;
  *(&v98 + 1) = v87;
  *&v99 = v91;
  *(&v99 + 1) = v88;
  *&v100 = v90;
  *(&v100 + 1) = v89;
  *&v101 = v81;
  *(&v101 + 1) = v80;
  LOBYTE(v102) = v78;
  DWORD1(v102) = *&v96[3];
  *(&v102 + 1) = *v96;
  *(&v102 + 1) = v83;
  LOBYTE(v103) = v79;
  DWORD1(v103) = *&v95[3];
  *(&v103 + 1) = *v95;
  *(&v103 + 1) = v43;
  *v104 = v45;
  *&v104[8] = v47;
  *&v104[16] = v49;
  v104[24] = 0;
  v61 = v97;
  v62 = v98;
  v63 = v100;
  *(a2 + 32) = v99;
  *(a2 + 48) = v63;
  *a2 = v61;
  *(a2 + 16) = v62;
  *(a2 + 64) = v85;
  *(a2 + 72) = v84;
  *(a2 + 80) = v73 & 1;
  *(a2 + 88) = v86;
  *(a2 + 96) = v72;
  *(a2 + 104) = v71;
  *(a2 + 112) = v69 & 1;
  *(a2 + 120) = v70;
  v64 = v101;
  v65 = v102;
  *(a2 + 185) = *&v104[9];
  v66 = *v104;
  *(a2 + 160) = v103;
  *(a2 + 176) = v66;
  *(a2 + 128) = v64;
  *(a2 + 144) = v65;
  *(a2 + 208) = v68;
  *(a2 + 216) = v77;
  *(a2 + 224) = v35 & 1;
  *(a2 + 232) = v76;
  sub_25ADE82E0(&v97, &v105, &qword_27FA13570, &unk_25AE17CC0);
  sub_25AE033CC(v85, v84, v73 & 1);

  sub_25AE033CC(v72, v71, v69 & 1);

  sub_25ADE82E0(&v101, &v105, &qword_27FA134A0, &qword_25AE17A60);
  sub_25AE033CC(v68, v77, v35 & 1);

  sub_25ADE88C4(v68, v77, v35 & 1);

  v105 = v81;
  v106 = v80;
  v107 = v78;
  *v108 = *v96;
  *&v108[3] = *&v96[3];
  v109 = v83;
  v110 = v79;
  *v111 = *v95;
  *&v111[3] = *&v95[3];
  v112 = v43;
  v113 = v45;
  v114 = v47;
  v115 = v49;
  v116 = 0;
  sub_25ADDE8CC(&v105, &qword_27FA134A0, &qword_25AE17A60);
  sub_25ADE88C4(v72, v71, v69 & 1);

  sub_25ADE88C4(v85, v84, v73 & 1);

  v117[0] = v94;
  v117[1] = v93;
  v117[2] = v92;
  v117[3] = v87;
  v117[4] = v91;
  v117[5] = v88;
  v117[6] = v90;
  v117[7] = v89;
  return sub_25ADDE8CC(v117, &qword_27FA13570, &unk_25AE17CC0);
}

uint64_t sub_25AE07C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13518, &qword_25AE17C28);
  v4 = *(v3 - 8);
  v53 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13520, &unk_25AE17C30);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v51 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v46 - v14;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v57 = *(a1 + 80);
  v58 = v15;
  sub_25ADDE53C();

  v18 = sub_25AE1082C();
  v20 = v19;
  v22 = v21;
  LODWORD(v57) = sub_25AE1066C();
  v48 = sub_25AE107FC();
  v47 = v23;
  v49 = v24;
  v50 = v25;
  sub_25ADE88C4(v18, v20, v22 & 1);

  v62 = v16;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13528, &unk_25AE17C60);
  v46[1] = MEMORY[0x277D83980];
  sub_25ADE8250(&qword_27FA13530, &qword_27FA12760, &qword_25AE11D88);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA133E8, &qword_25AE176B0);
  v27 = sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0);
  v28 = sub_25AE08B30();
  v57 = v26;
  v58 = &type metadata for WarrantyOverviewLabelStyle;
  v59 = v27;
  v60 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v55;
  sub_25AE109EC();
  *(v29 + *(v10 + 44)) = sub_25AE1066C();
  v62 = v17;
  v61 = v17;
  swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = *(a1 + 80);
  v30[5] = *(a1 + 64);
  v30[6] = v31;
  v32 = *(a1 + 112);
  v30[7] = *(a1 + 96);
  v30[8] = v32;
  v33 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v33;
  v34 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v34;
  sub_25ADE82E0(&v62, &v57, &qword_27FA12770, &qword_25AE11D90);
  sub_25AE08BDC(a1, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13540, &unk_25AE17CA0);
  sub_25ADE8250(&qword_27FA13548, &qword_27FA12770, &qword_25AE11D90);
  sub_25AE08C14();
  v35 = v56;
  sub_25AE109EC();
  v36 = sub_25AE1071C();
  v37 = v35 + *(v53 + 44);
  *v37 = v36;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  v38 = v51;
  sub_25ADE82E0(v29, v51, &qword_27FA13520, &unk_25AE17C30);
  v39 = v35;
  v40 = v54;
  sub_25ADE82E0(v39, v54, &qword_27FA13518, &qword_25AE17C28);
  v41 = v52;
  v42 = v48;
  v43 = v47;
  *v52 = v48;
  v41[1] = v43;
  LOBYTE(v10) = v49 & 1;
  *(v41 + 16) = v49 & 1;
  v41[3] = v50;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13568, &qword_25AE17CB8);
  sub_25ADE82E0(v38, v41 + *(v44 + 48), &qword_27FA13520, &unk_25AE17C30);
  sub_25ADE82E0(v40, v41 + *(v44 + 64), &qword_27FA13518, &qword_25AE17C28);
  sub_25AE033CC(v42, v43, v10);

  sub_25ADDE8CC(v56, &qword_27FA13518, &qword_25AE17C28);
  sub_25ADDE8CC(v55, &qword_27FA13520, &unk_25AE17C30);
  sub_25ADDE8CC(v40, &qword_27FA13518, &qword_25AE17C28);
  sub_25ADDE8CC(v38, &qword_27FA13520, &unk_25AE17C30);
  sub_25ADE88C4(v42, v43, v10);
}

uint64_t sub_25AE08248(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  v7 = *a1;
  v8 = a1[1];
  v10[0] = v7;
  v10[1] = v8;
  sub_25ADDE53C();

  sub_25AE1096C();
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0);
  sub_25AE08B30();
  sub_25AE1087C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25AE083C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_25AE1063C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13 - 8];
  v15 = *a1;
  v16 = a1[1];
  v25 = v15;
  v26 = v16;
  v17 = swift_allocObject();
  v18 = a2[5];
  v17[5] = a2[4];
  v17[6] = v18;
  v19 = a2[7];
  v17[7] = a2[6];
  v17[8] = v19;
  v20 = a2[1];
  v17[1] = *a2;
  v17[2] = v20;
  v21 = a2[3];
  v17[3] = a2[2];
  v17[4] = v21;

  sub_25AE08BDC(a2, v24);
  sub_25ADDE53C();
  sub_25AE109BC();
  sub_25AE1062C();
  sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0);
  sub_25AE02D30();
  sub_25AE1088C();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return sub_25AE1036C();
}

uint64_t sub_25AE08630@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_25AE1069C();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_25AE1067C();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_25AE1068C();
  sub_25AE106AC();
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13510, &qword_25AE17C20) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

uint64_t sub_25AE088C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13508, &qword_25AE17C18);
  return sub_25AE08630((a1 + *(v2 + 44)));
}

uint64_t sub_25AE08918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE103DC();
  *a1 = result;
  return result;
}

uint64_t sub_25AE08944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE103DC();
  *a1 = result;
  return result;
}

uint64_t sub_25AE08970(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AE103EC();
}

uint64_t sub_25AE0899C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AE103EC();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25AE08A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE08A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE08B30()
{
  result = qword_27FA13538;
  if (!qword_27FA13538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13538);
  }

  return result;
}

uint64_t sub_25AE08B84@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  result = NDODWCoverageModel.CoverageLink.hashValue.getter();
  *a2 = result;
  return result;
}

unint64_t sub_25AE08C14()
{
  result = qword_27FA13550;
  if (!qword_27FA13550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13540, &unk_25AE17CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA132B0, &qword_25AE176C0);
    sub_25AE1063C();
    sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0);
    sub_25AE02D30();
    swift_getOpaqueTypeConformance2();
    sub_25ADE8250(&qword_27FA13558, &qword_27FA13560, &qword_25AE17CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13550);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_25AE08DD4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return v1();
}

__n128 NDOPlacardView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  *(a4 + 112) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v9;
  result = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = result;
  *(a4 + 120) = a2;
  *(a4 + 128) = a3;
  return result;
}

uint64_t sub_25AE08EB0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 112);
  if (v3 <= 6 && (v4 = *(v0 + 64), v5 = *(v0 + 72), v7 = *(v0 + 80), v6 = *(v0 + 88), sub_25ADE48D8(v7, v6, *(v0 + 96), *(v0 + 104), v3), , , v6))
  {

    MEMORY[0x25F8574D0](23306, 0xE200000000000000);
    MEMORY[0x25F8574D0](v4, v5);
    MEMORY[0x25F8574D0](10333, 0xE200000000000000);
    MEMORY[0x25F8574D0](v7, v6);

    MEMORY[0x25F8574D0](41, 0xE100000000000000);
  }

  else
  {
  }

  return v1;
}

uint64_t NDOPlacardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13588, &qword_25AE17D08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = sub_25AE1049C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[5];
  v15 = v1[7];
  v45 = v1[6];
  v46 = v15;
  v16 = v1[1];
  v17 = v1[3];
  v18 = v1[4];
  v41 = v1[2];
  v42 = v17;
  v47 = *(v1 + 16);
  v43 = v18;
  v44 = v14;
  v39 = *v1;
  v40 = v16;
  v19 = *v1;
  v48 = *v1;
  v49 = *(v1 + 8);
  if (v49 != 1)
  {
    v36 = v11;

    sub_25AE10C6C();
    v21 = v4;
    v22 = v7;
    v23 = v3;
    v24 = a1;
    v25 = sub_25AE106EC();
    sub_25AE102AC();

    a1 = v24;
    v3 = v23;
    v7 = v22;
    v4 = v21;
    sub_25AE1048C();
    swift_getAtKeyPath();
    sub_25AE09368(&v48);
    (*(v9 + 8))(v13, v36);
    if (LOBYTE(v37[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v37[6] = v45;
    v37[7] = v46;
    v37[2] = v41;
    v37[3] = v42;
    v38 = v47;
    v37[4] = v43;
    v37[5] = v44;
    v37[0] = v39;
    v37[1] = v40;

    sub_25AE08EB0();
    sub_25AE10A2C();
    KeyPath = swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = v46;
    *(v27 + 112) = v45;
    *(v27 + 128) = v28;
    *(v27 + 144) = v47;
    v29 = v42;
    *(v27 + 48) = v41;
    *(v27 + 64) = v29;
    v30 = v44;
    *(v27 + 80) = v43;
    *(v27 + 96) = v30;
    v31 = v40;
    *(v27 + 16) = v39;
    *(v27 + 32) = v31;
    v32 = &v7[*(v3 + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0) + 28);
    sub_25AE09498(&v39, v37);
    sub_25AE1034C();
    *v32 = KeyPath;
    sub_25AE094D0(v7, a1);
    v20 = 0;
    return (*(v4 + 56))(a1, v20, 1, v3);
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = 1;
  return (*(v4 + 56))(a1, v20, 1, v3);
}

uint64_t sub_25AE09338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE1041C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE09368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13590, &qword_25AE17D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE093D8()
{
  sub_25AE0944C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_25ADE4930(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  v5 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_25AE0944C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_25AE09458()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v1();

  return sub_25AE1033C();
}

uint64_t sub_25AE094D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13588, &qword_25AE17D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_25AE0959C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE095E4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_25AE09658()
{
  result = qword_27FA13598;
  if (!qword_27FA13598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA135A0, &qword_25AE17F88);
    sub_25AE096DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13598);
  }

  return result;
}

unint64_t sub_25AE096DC()
{
  result = qword_27FA135A8;
  if (!qword_27FA135A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13588, &qword_25AE17D08);
    sub_25AE09768();
    sub_25ADF9DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135A8);
  }

  return result;
}

unint64_t sub_25AE09768()
{
  result = qword_27FA135B0;
  if (!qword_27FA135B0)
  {
    sub_25AE10A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135B0);
  }

  return result;
}

uint64_t NDOPromoModel.iconUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDOPromoModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDOPromoModel.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NDOPromoModel.callToActionLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NDOPromoModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

uint64_t NDOPromoModel.deleteAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 136);
  *(a1 + 32) = v6;
  return sub_25AE0A984(v2, v3, v4, v5, v6);
}

__n128 NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v12;
  result = *a11;
  v14 = *(a11 + 16);
  *(a9 + 104) = *a11;
  v15 = *(a10 + 32);
  v16 = *(a11 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 96) = v15;
  *(a9 + 120) = v14;
  *(a9 + 136) = v16;
  *(a9 + 144) = a12;
  return result;
}

uint64_t sub_25AE09908()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x63416574656C6564;
  if (v1 != 5)
  {
    v3 = 0x7361486F746F7270;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_25AE099F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE0ADD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE09A28(uint64_t a1)
{
  v2 = sub_25AE0A998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE09A64(uint64_t a1)
{
  v2 = sub_25AE0A998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOPromoModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135B8, &qword_25AE17F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v38 = v1[3];
  v39 = v8;
  v9 = v1[4];
  v36 = v1[5];
  v37 = v9;
  v10 = v1[6];
  v34 = v1[7];
  v35 = v10;
  v11 = v1[9];
  v30 = v1[8];
  v31 = v11;
  v12 = v1[11];
  v32 = v1[10];
  v33 = v12;
  v46 = *(v1 + 96);
  v13 = v1[14];
  v25 = v1[13];
  v26 = v13;
  v14 = v1[16];
  v27 = v1[15];
  v28 = v14;
  v29 = *(v1 + 136);
  v15 = v1[18];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = &v25 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_25AE0A998();
  sub_25AE10E8C();
  LOBYTE(v41) = 0;
  v21 = v40;
  sub_25AE10DCC();
  if (!v21)
  {
    LOBYTE(v41) = 1;
    sub_25AE10DCC();
    LOBYTE(v41) = 2;
    sub_25AE10DCC();
    LOBYTE(v41) = 3;
    sub_25AE10DCC();
    v40 = 0;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v45 = v46;
    v47 = 4;
    sub_25ADE48D8(v30, v31, v32, v33, v46);
    sub_25ADECFA8();
    v22 = v40;
    sub_25AE10DFC();
    sub_25ADE4930(v41, v42, v43, v44, v45);
    v40 = v22;
    if (!v22)
    {
      v41 = v25;
      v42 = v26;
      v43 = v27;
      v44 = v28;
      v45 = v29;
      v47 = 5;
      sub_25AE0A984(v25, v26, v27, v28, v29);
      v23 = v40;
      sub_25AE10DBC();
      sub_25AE0A9EC(v41, v42, v43, v44, v45);
      if (!v23)
      {
        LOBYTE(v41) = 6;
        sub_25AE10DEC();
      }
    }
  }

  return (*(v4 + 8))(v20, v3);
}

uint64_t NDOPromoModel.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 96);
  v16 = v1[14];
  v17 = v1[13];
  v14 = v1[16];
  v15 = v1[15];
  v12 = *(v1 + 136);
  v18 = v1[18];
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v20 = *(v1 + 5);
  v19 = *(v1 + 4);
  NDOAction.hash(into:)(a1);
  sub_25AE10E5C();
  if (v12 != 255)
  {
    sub_25ADE48D8(v17, v16, v15, v14, v12);
    NDOAction.hash(into:)(a1);
    sub_25ADE4930(v17, v16, v15, v14, v12);
  }

  return MEMORY[0x25F8577E0](v18);
}

uint64_t NDOPromoModel.hashValue.getter()
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDOPromoModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135C8, &qword_25AE17F98);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v30 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE0A998();
  v46 = v8;
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v57) = 0;
  v11 = v45;
  *&v44 = sub_25AE10D4C();
  *(&v44 + 1) = v12;
  LOBYTE(v57) = 1;
  *&v43 = sub_25AE10D4C();
  *(&v43 + 1) = v13;
  LOBYTE(v57) = 2;
  v14 = sub_25AE10D4C();
  v42 = v15;
  LOBYTE(v57) = 3;
  v16 = sub_25AE10D4C();
  v41 = v17;
  v33 = v16;
  LOBYTE(v47) = 4;
  sub_25ADECFFC();
  v38 = 0;
  sub_25AE10D7C();
  v32 = *(&v57 + 1);
  v36 = v57;
  v35 = *(&v58 + 1);
  v37 = v58;
  v74 = v59;
  LOBYTE(v47) = 5;
  sub_25AE10D3C();
  v39 = *(&v57 + 1);
  v40 = v57;
  v34 = *(&v58 + 1);
  v31 = v58;
  v18 = v59;
  v75 = 6;
  v19 = sub_25AE10D6C();
  (*(v10 + 8))(v46, v11);
  v47 = v44;
  v20 = v14;
  v30 = v14;
  v21 = v43;
  v48 = v43;
  v22 = v42;
  *&v49 = v20;
  *(&v49 + 1) = v42;
  *&v50 = v33;
  *(&v50 + 1) = v41;
  v23 = v35;
  *&v51 = v36;
  *(&v51 + 1) = v32;
  *&v52 = v37;
  *(&v52 + 1) = v35;
  LOBYTE(v53) = v74;
  *(&v53 + 1) = v40;
  *&v54 = v39;
  *(&v54 + 1) = v31;
  *&v55 = v34;
  BYTE8(v55) = v18;
  v56 = v19;
  *(a2 + 144) = v19;
  v24 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v24;
  v25 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v25;
  v26 = v55;
  v27 = v53;
  *(a2 + 112) = v54;
  *(a2 + 128) = v26;
  *(a2 + 96) = v27;
  v28 = v48;
  *a2 = v47;
  *(a2 + 16) = v28;
  sub_25AE0AA00(&v47, &v57);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v57 = v44;
  v58 = __PAIR128__(*(&v43 + 1), v21);
  v59 = v30;
  v60 = v22;
  v61 = v33;
  v62 = v41;
  v63 = v36;
  v64 = v32;
  v65 = v37;
  v66 = v23;
  v67 = v74;
  v68 = v40;
  v69 = v39;
  v70 = v31;
  v71 = v34;
  v72 = v18;
  v73 = v19;
  return sub_25AE0AA38(&v57);
}

uint64_t sub_25AE0A4C0()
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25AE0A504()
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

BOOL _s5NDOUI13NDOPromoModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v47 = *(a1 + 48);
  v45 = *(a1 + 64);
  v46 = *(a1 + 56);
  v43 = *(a1 + 80);
  v44 = *(a1 + 72);
  v42 = *(a1 + 88);
  v41 = *(a1 + 96);
  v32 = *(a1 + 104);
  v33 = *(a1 + 112);
  v34 = *(a1 + 120);
  v35 = *(a1 + 128);
  v31 = *(a1 + 136);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v39 = *(a2 + 72);
  v40 = *(a2 + 64);
  v37 = *(a2 + 88);
  v38 = *(a2 + 80);
  v36 = *(a2 + 96);
  v25 = *(a1 + 144);
  v26 = *(a2 + 104);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 128);
  v27 = *(a2 + 136);
  v24 = *(a2 + 144);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v7 || v4 != v6) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v47 != v10 || v46 != v11) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v53 = v45;
  v54 = v44;
  v55 = v43;
  v56 = v42;
  v57 = v41;
  v48 = v40;
  v49 = v39;
  v50 = v38;
  v51 = v37;
  v52 = v36;
  sub_25ADE48D8(v45, v44, v43, v42, v41);
  sub_25ADE48D8(v40, v39, v38, v37, v36);
  v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v53, &v48);
  sub_25ADE4930(v48, v49, v50, v51, v52);
  sub_25ADE4930(v53, v54, v55, v56, v57);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v31 == 255)
  {
    v14 = v32;
    v13 = v33;
    v16 = v34;
    v15 = v35;
    sub_25AE0A984(v32, v33, v34, v35, 0xFFu);
    v17 = v27;
    v19 = v29;
    v18 = v30;
    v20 = v28;
    v21 = v26;
    if (v27 == 255)
    {
      sub_25AE0A984(v26, v28, v29, v30, 0xFFu);
      sub_25AE0A9EC(v32, v33, v34, v35, 0xFFu);
      return v25 == v24;
    }

    sub_25AE0A984(v26, v28, v29, v30, v27);
LABEL_22:
    sub_25AE0A9EC(v14, v13, v16, v15, v31);
    sub_25AE0A9EC(v21, v20, v19, v18, v17);
    return 0;
  }

  v14 = v32;
  v13 = v33;
  v53 = v32;
  v54 = v33;
  v16 = v34;
  v15 = v35;
  v55 = v34;
  v56 = v35;
  v57 = v31;
  v17 = v27;
  v19 = v29;
  v18 = v30;
  v20 = v28;
  v21 = v26;
  if (v27 == 255)
  {
    sub_25AE0A984(v32, v33, v34, v35, v31);
    sub_25AE0A984(v26, v28, v29, v30, 0xFFu);
    sub_25AE0A984(v32, v33, v34, v35, v31);
    sub_25ADE4930(v32, v33, v34, v35, v31);
    goto LABEL_22;
  }

  v48 = v26;
  v49 = v28;
  v50 = v29;
  v51 = v30;
  v52 = v27;
  sub_25AE0A984(v32, v33, v34, v35, v31);
  sub_25AE0A984(v26, v28, v29, v30, v27);
  sub_25AE0A984(v32, v33, v34, v35, v31);
  v22 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v53, &v48);
  sub_25ADE4930(v48, v49, v50, v51, v52);
  sub_25ADE4930(v53, v54, v55, v56, v57);
  sub_25AE0A9EC(v32, v33, v34, v35, v31);
  if (v22)
  {
    return v25 == v24;
  }

  return 0;
}

uint64_t sub_25AE0A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_25ADE48D8(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_25AE0A998()
{
  result = qword_27FA135C0;
  if (!qword_27FA135C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135C0);
  }

  return result;
}

uint64_t sub_25AE0A9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_25ADE4930(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_25AE0AA6C()
{
  result = qword_27FA135D0;
  if (!qword_27FA135D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135D0);
  }

  return result;
}

uint64_t sub_25AE0AAC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_25AE0AB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOPromoModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOPromoModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25AE0ACD0()
{
  result = qword_27FA135D8;
  if (!qword_27FA135D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135D8);
  }

  return result;
}

unint64_t sub_25AE0AD28()
{
  result = qword_27FA135E0;
  if (!qword_27FA135E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135E0);
  }

  return result;
}

unint64_t sub_25AE0AD80()
{
  result = qword_27FA135E8;
  if (!qword_27FA135E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135E8);
  }

  return result;
}

uint64_t sub_25AE0ADD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB30 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63416574656C6564 && a2 == 0xEC0000006E6F6974 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7361486F746F7270 && a2 == 0xEE0065756C615668)
  {

    return 6;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t NDOSection.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NDOSection.header.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NDOSection.footer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NDOSection.items.getter()
{
  v1 = 64;
  if (*v0)
  {
    v1 = 56;
  }

  v2 = *&v0[v1];
}

BOOL NDOSection.isPlacardSection.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2 && (v3 = *(v0 + 64), memmove(__dst, (v1 + 32), 0x98uLL), sub_25ADFA998(__dst) == 2) && (sub_25ADFA9A4(__dst), v2 == 1))
  {
    return *(v3 + 16) == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AE0B95C()
{
  v1 = *v0;
  v2 = 0x646E617078457369;
  v3 = 0x7265746F6F66;
  v4 = 0x6465646E61707865;
  if (v1 != 4)
  {
    v4 = 0x657370616C6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x726564616568;
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

uint64_t sub_25AE0BA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25AE0D4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25AE0BA48(uint64_t a1)
{
  v2 = sub_25AE0D13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE0BA84(uint64_t a1)
{
  v2 = sub_25AE0D13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135F0, &qword_25AE18478);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v21[4] = v1[2];
  v21[5] = v9;
  v10 = v1[3];
  v21[2] = v1[4];
  v21[3] = v10;
  v11 = v1[5];
  v21[0] = v1[6];
  v21[1] = v11;
  v12 = v1[7];
  v13 = v1[8];
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_25AE0D13C();
  sub_25AE10E8C();
  LOBYTE(v23) = 0;
  v19 = v21[6];
  sub_25AE10DDC();
  if (!v19)
  {
    LOBYTE(v23) = 1;
    sub_25AE10DCC();
    LOBYTE(v23) = 2;
    sub_25AE10DAC();
    LOBYTE(v23) = 3;
    sub_25AE10DAC();
    v23 = v12;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13600, &qword_25AE18480);
    sub_25AE0D1E4(&qword_27FA13608, sub_25AE0D190);
    sub_25AE10DFC();
    v23 = v13;
    v22 = 5;
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t NDOSection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13618, &qword_25AE18488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE0D13C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = sub_25AE10D5C();
  LOBYTE(v42[0]) = 1;
  v34 = sub_25AE10D4C();
  v36 = v12;
  LOBYTE(v42[0]) = 2;
  v13 = sub_25AE10D2C();
  v35 = v14;
  v32 = v13;
  LOBYTE(v42[0]) = 3;
  v29 = sub_25AE10D2C();
  v33 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13600, &qword_25AE18480);
  LOBYTE(v37) = 4;
  v17 = sub_25AE0D1E4(&qword_27FA13620, sub_25AE0D25C);
  v31 = v16;
  v30 = v17;
  sub_25AE10D7C();
  v28 = v42[0];
  v43 = 5;
  sub_25AE10D7C();
  LOBYTE(v16) = v11 & 1;
  LODWORD(v31) = v11 & 1;
  (*(v6 + 8))(v9, v5);
  v18 = v44;
  LOBYTE(v37) = v16;
  v19 = v34;
  v21 = v35;
  v20 = v36;
  *(&v37 + 1) = v34;
  *&v38 = v36;
  v22 = v32;
  *(&v38 + 1) = v32;
  *&v39 = v35;
  v23 = v33;
  *(&v39 + 1) = v29;
  *&v40 = v33;
  *(&v40 + 1) = v28;
  v41 = v44;
  *(a2 + 64) = v44;
  v24 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v24;
  v25 = v38;
  *a2 = v37;
  *(a2 + 16) = v25;
  sub_25AE0D2B0(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v42[0]) = v31;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v22;
  v42[4] = v21;
  v42[5] = v29;
  v42[6] = v23;
  v42[7] = v28;
  v42[8] = v18;
  return sub_25AE0D2E8(v42);
}

uint64_t sub_25AE0C210@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Void __swiftcall NDOSection.removeItem(with:)(Swift::Int with)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v4 = 0;
  v5 = v2 + 32;
  v193 = *(v2 + 16);
  v130 = v3 - 1;
  v6 = MEMORY[0x277D84F90];
  v195 = v2;
  v132 = v2 + 32;
  while (2)
  {
    v134 = v6;
    v7 = (v5 + 152 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      v9 = v7[1];
      v212 = *v7;
      v213 = v9;
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[5];
      v216 = v7[4];
      v217 = v12;
      v214 = v10;
      v215 = v11;
      v13 = v7[6];
      v14 = v7[7];
      v15 = v7[8];
      v221 = *(v7 + 18);
      v219 = v14;
      v220 = v15;
      v218 = v13;
      sub_25AE10E3C();
      v228 = v218;
      v229 = v219;
      v230 = v220;
      v231 = v221;
      v224 = v214;
      v225 = v215;
      v226 = v216;
      v227 = v217;
      v222 = v212;
      v223 = v213;
      v16 = sub_25ADFA998(&v222);
      if (v16 <= 1)
      {
        if (!v16)
        {
          v17 = sub_25ADFA9A4(&v222);
          v187 = *(v17 + 32);
          v181 = *(v17 + 40);
          MEMORY[0x25F8577E0](0);
          v207 = v218;
          v208 = v219;
          v209 = v220;
          v210 = v221;
          v203 = v214;
          v204 = v215;
          v205 = v216;
          v206 = v217;
          v201 = v212;
          v202 = v213;
          v18 = sub_25ADFA9A4(&v201);
          v19 = *(v18 + 8);
          v20 = *(v18 + 24);
          v21 = *(v18 + 40);
          v22 = *(v18 + 56);
          v23 = *(v18 + 72);
          v173 = *(v18 + 80);
          v24 = *(v18 + 88);
          v25 = *(v18 + 96);
          v26 = *(v18 + 104);
          v167 = *(v18 + 112);

          sub_25ADE48D8(v173, v24, v25, v26, v167);
          sub_25AE10B2C();
          goto LABEL_16;
        }

        v38 = sub_25ADFA9A4(&v222);
        v39 = *v38;
        v40 = *(v38 + 8);
        v188 = *(v38 + 48);
        v175 = *(v38 + 32);
        v182 = *(v38 + 16);
        MEMORY[0x25F8577E0](1);
        v207 = v218;
        v208 = v219;
        v209 = v220;
        v210 = v221;
        v203 = v214;
        v204 = v215;
        v205 = v216;
        v206 = v217;
        v201 = v212;
        v202 = v213;
        v41 = sub_25ADFA9A4(&v201);
        v42 = *(v41 + 8);
        v43 = *(v41 + 16);
        v44 = *(v41 + 24);
        v45 = *(v41 + 32);
        v46 = *(v41 + 40);
        v47 = *(v41 + 48);

        sub_25ADE48D8(v43, v44, v45, v46, v47);
        sub_25AE10B2C();
        v37 = v175;
        goto LABEL_11;
      }

      if (v16 == 2)
      {
        v27 = sub_25ADFA9A4(&v222);
        v139 = *(v27 + 8);
        v143 = *v27;
        v147 = *(v27 + 24);
        v151 = *(v27 + 16);
        v159 = *(v27 + 32);
        v155 = *(v27 + 40);
        v174 = *(v27 + 48);
        v168 = *(v27 + 56);
        v188 = *(v27 + 96);
        v182 = *(v27 + 64);
        v163 = *(v27 + 80);
        MEMORY[0x25F8577E0](2);
        v207 = v218;
        v208 = v219;
        v209 = v220;
        v210 = v221;
        v203 = v214;
        v204 = v215;
        v205 = v216;
        v206 = v217;
        v201 = v212;
        v202 = v213;
        v28 = sub_25ADFA9A4(&v201);
        v29 = *(v28 + 8);
        v30 = *(v28 + 24);
        v31 = *(v28 + 40);
        v32 = *(v28 + 56);
        v33 = *(v28 + 64);
        v34 = *(v28 + 80);
        v137 = *(v28 + 72);
        v35 = *(v28 + 88);
        v36 = *(v28 + 96);

        sub_25ADE48D8(v33, v137, v34, v35, v36);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        v37 = v163;
LABEL_11:
        v199 = v37;
        v198 = v182;
        v200 = v188;
        NDOAction.hash(into:)(v211);
        goto LABEL_16;
      }

      v48 = sub_25ADFA9A4(&v222);
      v207 = v218;
      v208 = v219;
      v209 = v220;
      v210 = v221;
      v203 = v214;
      v204 = v215;
      v205 = v216;
      v206 = v217;
      v201 = v212;
      v202 = v213;
      v49 = sub_25ADFA9A4(&v201);
      MEMORY[0x25F8577E0](3);
      v50 = *v48;
      v51 = *(v48 + 8);
      v53 = *(v48 + 16);
      v52 = *(v48 + 24);
      v160 = *(v48 + 40);
      v164 = *(v48 + 32);
      v183 = *(v48 + 48);
      v176 = *(v48 + 56);
      v189 = *(v48 + 96);
      v148 = *(v48 + 112);
      v152 = *(v48 + 104);
      v140 = *(v48 + 128);
      v144 = *(v48 + 120);
      v54 = *(v48 + 136);
      v169 = *(v48 + 64);
      v156 = *(v48 + 80);
      sub_25AE0AA00(v49, &v198);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      v199 = v156;
      v198 = v169;
      v200 = v189;
      NDOAction.hash(into:)(v211);
      if (v54 == 255)
      {
        sub_25AE10E5C();
      }

      else
      {
        *&v198 = v152;
        *(&v198 + 1) = v148;
        *&v199 = v144;
        *(&v199 + 1) = v140;
        v200 = v54;
        sub_25AE10E5C();
        sub_25ADE48D8(v152, v148, v144, v140, v54);
        NDOAction.hash(into:)(v211);
        sub_25ADE4930(v198, *(&v198 + 1), v199, *(&v199 + 1), v200);
      }

      MEMORY[0x25F8577E0](*(v48 + 144));
LABEL_16:
      if (sub_25AE10E6C() != with)
      {
        break;
      }

      ++v8;
      sub_25ADFD13C(&v212);
      v7 = (v7 + 152);
      v2 = v195;
      if (v193 == v8)
      {
        v6 = v134;
        goto LABEL_26;
      }
    }

    v6 = v134;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v232 = v134;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25ADFFFE0(0, *(v134 + 16) + 1, 1);
      v6 = v232;
    }

    v57 = *(v6 + 16);
    v56 = *(v6 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_25ADFFFE0((v56 > 1), v57 + 1, 1);
      v6 = v232;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v57 + 1;
    v58 = v6 + 152 * v57;
    v59 = v213;
    *(v58 + 32) = v212;
    *(v58 + 48) = v59;
    v60 = v214;
    v61 = v215;
    v62 = v217;
    *(v58 + 96) = v216;
    *(v58 + 112) = v62;
    *(v58 + 64) = v60;
    *(v58 + 80) = v61;
    v63 = v218;
    v64 = v219;
    v65 = v220;
    *(v58 + 176) = v221;
    *(v58 + 144) = v64;
    *(v58 + 160) = v65;
    *(v58 + 128) = v63;
    v5 = v132;
    v2 = v195;
    if (v130 != v8)
    {
      continue;
    }

    break;
  }

LABEL_26:

  *(v136 + 56) = v6;
  v66 = *(v136 + 64);
  v67 = *(v66 + 16);
  if (v67)
  {
    v68 = 0;
    v69 = v66 + 32;
    v194 = *(v66 + 16);
    v133 = v67 - 1;
    v70 = MEMORY[0x277D84F90];
    v196 = *(v136 + 64);
    v131 = v66 + 32;
LABEL_28:
    v135 = v70;
    v71 = (v69 + 152 * v68);
    v72 = v68;
    while (1)
    {
      if (v72 >= *(v66 + 16))
      {
        goto LABEL_53;
      }

      v73 = v71[1];
      v212 = *v71;
      v213 = v73;
      v74 = v71[2];
      v75 = v71[3];
      v76 = v71[5];
      v216 = v71[4];
      v217 = v76;
      v214 = v74;
      v215 = v75;
      v77 = v71[6];
      v78 = v71[7];
      v79 = v71[8];
      v221 = *(v71 + 18);
      v219 = v78;
      v220 = v79;
      v218 = v77;
      sub_25AE10E3C();
      v228 = v218;
      v229 = v219;
      v230 = v220;
      v231 = v221;
      v224 = v214;
      v225 = v215;
      v226 = v216;
      v227 = v217;
      v222 = v212;
      v223 = v213;
      v80 = sub_25ADFA998(&v222);
      if (v80 <= 1)
      {
        break;
      }

      if (v80 == 2)
      {
        v91 = sub_25ADFA9A4(&v222);
        v141 = *(v91 + 8);
        v145 = *v91;
        v149 = *(v91 + 24);
        v153 = *(v91 + 16);
        v161 = *(v91 + 32);
        v157 = *(v91 + 40);
        v178 = *(v91 + 48);
        v171 = *(v91 + 56);
        v191 = *(v91 + 96);
        v185 = *(v91 + 64);
        v165 = *(v91 + 80);
        MEMORY[0x25F8577E0](2);
        v207 = v218;
        v208 = v219;
        v209 = v220;
        v210 = v221;
        v203 = v214;
        v204 = v215;
        v205 = v216;
        v206 = v217;
        v201 = v212;
        v202 = v213;
        v92 = sub_25ADFA9A4(&v201);
        v93 = *(v92 + 8);
        v94 = *(v92 + 24);
        v95 = *(v92 + 40);
        v96 = *(v92 + 56);
        v97 = *(v92 + 64);
        v98 = *(v92 + 80);
        v138 = *(v92 + 72);
        v99 = *(v92 + 88);
        v100 = *(v92 + 96);

        sub_25ADE48D8(v97, v138, v98, v99, v100);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        v101 = v165;
LABEL_36:
        v199 = v101;
        v198 = v185;
        v200 = v191;
        NDOAction.hash(into:)(v211);
        goto LABEL_41;
      }

      v112 = sub_25ADFA9A4(&v222);
      v207 = v218;
      v208 = v219;
      v209 = v220;
      v210 = v221;
      v203 = v214;
      v204 = v215;
      v205 = v216;
      v206 = v217;
      v201 = v212;
      v202 = v213;
      v113 = sub_25ADFA9A4(&v201);
      MEMORY[0x25F8577E0](3);
      v114 = *v112;
      v115 = *(v112 + 8);
      v117 = *(v112 + 16);
      v116 = *(v112 + 24);
      v162 = *(v112 + 40);
      v166 = *(v112 + 32);
      v186 = *(v112 + 48);
      v180 = *(v112 + 56);
      v192 = *(v112 + 96);
      v150 = *(v112 + 112);
      v154 = *(v112 + 104);
      v142 = *(v112 + 128);
      v146 = *(v112 + 120);
      v118 = *(v112 + 136);
      v172 = *(v112 + 64);
      v158 = *(v112 + 80);
      sub_25AE0AA00(v113, &v198);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      v199 = v158;
      v198 = v172;
      v200 = v192;
      NDOAction.hash(into:)(v211);
      if (v118 == 255)
      {
        sub_25AE10E5C();
      }

      else
      {
        *&v198 = v154;
        *(&v198 + 1) = v150;
        *&v199 = v146;
        *(&v199 + 1) = v142;
        v200 = v118;
        sub_25AE10E5C();
        sub_25ADE48D8(v154, v150, v146, v142, v118);
        NDOAction.hash(into:)(v211);
        sub_25ADE4930(v198, *(&v198 + 1), v199, *(&v199 + 1), v200);
      }

      MEMORY[0x25F8577E0](*(v112 + 144));
LABEL_41:
      if (sub_25AE10E6C() != with)
      {
        v70 = v135;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v232 = v135;
        if ((v119 & 1) == 0)
        {
          sub_25ADFFFE0(0, *(v135 + 16) + 1, 1);
          v70 = v232;
        }

        v69 = v131;
        v121 = *(v70 + 16);
        v120 = *(v70 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_25ADFFFE0((v120 > 1), v121 + 1, 1);
          v70 = v232;
        }

        v68 = v72 + 1;
        *(v70 + 16) = v121 + 1;
        v122 = v70 + 152 * v121;
        v123 = v213;
        *(v122 + 32) = v212;
        *(v122 + 48) = v123;
        v124 = v214;
        v125 = v215;
        v126 = v217;
        *(v122 + 96) = v216;
        *(v122 + 112) = v126;
        *(v122 + 64) = v124;
        *(v122 + 80) = v125;
        v127 = v218;
        v128 = v219;
        v129 = v220;
        *(v122 + 176) = v221;
        *(v122 + 144) = v128;
        *(v122 + 160) = v129;
        *(v122 + 128) = v127;
        v66 = v196;
        if (v133 != v72)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

      ++v72;
      sub_25ADFD13C(&v212);
      v71 = (v71 + 152);
      v66 = v196;
      if (v194 == v72)
      {
        v70 = v135;
        goto LABEL_51;
      }
    }

    if (!v80)
    {
      v81 = sub_25ADFA9A4(&v222);
      v190 = *(v81 + 32);
      v184 = *(v81 + 40);
      MEMORY[0x25F8577E0](0);
      v207 = v218;
      v208 = v219;
      v209 = v220;
      v210 = v221;
      v203 = v214;
      v204 = v215;
      v205 = v216;
      v206 = v217;
      v201 = v212;
      v202 = v213;
      v82 = sub_25ADFA9A4(&v201);
      v83 = *(v82 + 8);
      v84 = *(v82 + 24);
      v85 = *(v82 + 40);
      v86 = *(v82 + 56);
      v87 = *(v82 + 72);
      v177 = *(v82 + 80);
      v88 = *(v82 + 88);
      v89 = *(v82 + 96);
      v90 = *(v82 + 104);
      v170 = *(v82 + 112);

      sub_25ADE48D8(v177, v88, v89, v90, v170);
      sub_25AE10B2C();
      goto LABEL_41;
    }

    v102 = sub_25ADFA9A4(&v222);
    v103 = *v102;
    v104 = *(v102 + 8);
    v191 = *(v102 + 48);
    v179 = *(v102 + 32);
    v185 = *(v102 + 16);
    MEMORY[0x25F8577E0](1);
    v207 = v218;
    v208 = v219;
    v209 = v220;
    v210 = v221;
    v203 = v214;
    v204 = v215;
    v205 = v216;
    v206 = v217;
    v201 = v212;
    v202 = v213;
    v105 = sub_25ADFA9A4(&v201);
    v106 = *(v105 + 8);
    v107 = *(v105 + 16);
    v108 = *(v105 + 24);
    v109 = *(v105 + 32);
    v110 = *(v105 + 40);
    v111 = *(v105 + 48);

    sub_25ADE48D8(v107, v108, v109, v110, v111);
    sub_25AE10B2C();
    v101 = v179;
    goto LABEL_36;
  }

  v70 = MEMORY[0x277D84F90];
LABEL_51:

  *(v136 + 64) = v70;
}

void sub_25AE0CEC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_25AE0CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (!a3 || (a4 & 0x100000000) != 0 || (v7 = *(a1 + 16), a4 >= v7))
  {

    return v6;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v4 = a3;
    if (v7 == a4)
    {
    }

    else
    {
      sub_25AE0CEC8(a1, a1 + 32, 0, (2 * a4) & 0x1FFFFFFFELL | 1);
      v6 = v8;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v6 = sub_25ADFFE58(0, *(v6 + 2) + 1, 1, v6);
LABEL_11:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v22 = sub_25ADFFE58((v10 > 1), v11 + 1, 1, v6);
    v13 = v5;
    v12 = v4;
    v6 = v22;
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  *&v23 = v13;
  *(&v23 + 1) = v12;
  v24 = 0u;
  v25 = 0u;
  LOBYTE(v26) = 7;
  sub_25ADFC7C0(&v23);
  *(v6 + 2) = v11 + 1;
  v14 = &v6[152 * v11];
  v15 = v24;
  *(v14 + 2) = v23;
  *(v14 + 3) = v15;
  v16 = v25;
  v17 = v26;
  v18 = v28;
  *(v14 + 6) = v27;
  *(v14 + 7) = v18;
  *(v14 + 4) = v16;
  *(v14 + 5) = v17;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  *(v14 + 22) = v32;
  *(v14 + 9) = v20;
  *(v14 + 10) = v21;
  *(v14 + 8) = v19;
  return v6;
}

unint64_t sub_25AE0D13C()
{
  result = qword_27FA135F8;
  if (!qword_27FA135F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA135F8);
  }

  return result;
}

unint64_t sub_25AE0D190()
{
  result = qword_27FA13610;
  if (!qword_27FA13610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13610);
  }

  return result;
}

uint64_t sub_25AE0D1E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13600, &qword_25AE18480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE0D25C()
{
  result = qword_27FA13628;
  if (!qword_27FA13628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13628);
  }

  return result;
}

uint64_t sub_25AE0D318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE0D360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE0D3D4()
{
  result = qword_27FA13630;
  if (!qword_27FA13630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13630);
  }

  return result;
}

unint64_t sub_25AE0D42C()
{
  result = qword_27FA13638;
  if (!qword_27FA13638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13638);
  }

  return result;
}

unint64_t sub_25AE0D484()
{
  result = qword_27FA13640;
  if (!qword_27FA13640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13640);
  }

  return result;
}

uint64_t sub_25AE0D4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xED0000736D657449 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xEE00736D65744964)
  {

    return 5;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

__n128 NDOLinkView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  *a4 = *a1;
  *(a4 + 8) = v4;
  result = *(a1 + 16);
  v7 = *(a1 + 32);
  *(a4 + 16) = result;
  *(a4 + 32) = v7;
  *(a4 + 48) = v5;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t NDOLinkView.body.getter()
{
  v1 = v0[2];
  v10[3] = v0[3];
  v2 = *v0;
  v3 = *v0;
  v10[1] = v0[1];
  v10[2] = v1;
  v9 = v3;
  v10[0] = v2;
  v12 = v2;
  v11 = *(v0 + 8);
  v4 = swift_allocObject();
  v5 = v0[3];
  *(v4 + 48) = v0[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 8);
  v6 = v0[1];
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_25AE02C9C(&v12, v8);
  sub_25AE0D7FC(v10, v8);
  sub_25ADDE53C();
  return sub_25AE109BC();
}

uint64_t sub_25AE0D7D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

uint64_t sub_25AE0D850()
{
  v1 = v0[2];
  v10[3] = v0[3];
  v2 = *v0;
  v3 = *v0;
  v10[1] = v0[1];
  v10[2] = v1;
  v9 = v3;
  v10[0] = v2;
  v12 = v2;
  v11 = *(v0 + 8);
  v4 = swift_allocObject();
  v5 = v0[3];
  *(v4 + 48) = v0[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 8);
  v6 = v0[1];
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_25AE02C9C(&v12, v8);
  sub_25AE0D7FC(v10, v8);
  sub_25ADDE53C();
  return sub_25AE109BC();
}

unint64_t sub_25AE0D938()
{
  result = qword_27FA132D8;
  if (!qword_27FA132D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA132B0, &qword_25AE176C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA132D8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  sub_25ADE4930(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25AE0D9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v57 - v8;
  v9 = sub_25AE1014C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25AE1038C();
  v62 = *(v64 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v65 = [objc_allocWithZone(MEMORY[0x277CCACD8]) init];
  v26 = sub_25AE101BC();
  v27 = *(*(v26 - 8) + 48);
  v28 = v27(a1, 1, v26);
  v66 = a1;
  if (v28 == 1)
  {
    (*(v10 + 56))(v25, 1, 1, v9);
    v29 = v9;
  }

  else
  {
    sub_25ADE82E0(a1, v18, &qword_27FA126A8, &qword_25AE11B90);
    result = v27(v18, 1, v26);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_25AE1013C();
    v29 = v9;
    (*(v10 + 56))(v25, 0, 1, v9);
  }

  v31 = v62;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13708, &qword_25AE18B40);
  v33 = v32[10];
  sub_25ADE83F0(v25, a4 + v33);
  v34 = [objc_opt_self() defaultSessionConfiguration];
  v35 = v65;
  [v34 setURLCache_];
  *(a4 + v32[11]) = [objc_opt_self() sessionWithConfiguration_];
  v36 = (a4 + v32[9]);
  v37 = v61;
  *v36 = v60;
  v36[1] = v37;
  v38 = *MEMORY[0x277CDD9B8];
  v61 = *(v31 + 104);
  v61(v63, v38, v64);
  sub_25AE1097C();
  v62 = a4;
  sub_25ADE82E0(a4 + v33, v23, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v10 + 48))(v23, 1, v29) == 1)
  {

    sub_25ADDE8CC(v66, &qword_27FA126A8, &qword_25AE11B90);
    v39 = &qword_27FA12928;
    v40 = &qword_25AE128D8;
    v41 = v23;
  }

  else
  {
    v42 = v59;
    (*(v10 + 32))(v59, v23, v29);
    v43 = sub_25AE1012C();
    v44 = [v35 cachedResponseForRequest_];

    v45 = v66;
    if (v44)
    {
      v60 = v29;
      v46 = [v44 data];
      v47 = sub_25AE101DC();
      v49 = v48;

      v50 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v51 = sub_25AE101CC();
      v52 = [v50 initWithData_];

      if (v52)
      {
        v53 = sub_25AE1090C();
        sub_25ADE8348(v47, v49);
        v55 = v63;
        v54 = v64;
        *v63 = v53;
        v61(v55, *MEMORY[0x277CDD9C8], v54);

        v56 = v58;
        sub_25AE1097C();

        (*(v10 + 8))(v59, v60);
        sub_25ADDE8CC(v66, &qword_27FA126A8, &qword_25AE11B90);
        return sub_25ADE8460(v56, v62);
      }

      sub_25ADE8348(v47, v49);
      (*(v10 + 8))(v59, v60);
      v39 = &qword_27FA126A8;
      v40 = &qword_25AE11B90;
      v41 = v66;
    }

    else
    {
      (*(v10 + 8))(v42, v29);

      v39 = &qword_27FA126A8;
      v40 = &qword_25AE11B90;
      v41 = v45;
    }
  }

  return sub_25ADDE8CC(v41, v39, v40);
}

uint64_t NDODeviceView.init(model:action:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = *(a1 + 112);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  result = sub_25AE1097C();
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

double sub_25AE0E130()
{
  v1 = v0[5];
  v24 = v0[4];
  v25 = v1;
  v2 = v0[7];
  v26 = v0[6];
  v27 = v2;
  v3 = v0[1];
  v20 = *v0;
  v21 = v3;
  v4 = v0[3];
  v22 = v0[2];
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v37 = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;

  sub_25ADED088(v36);
  if (!*(&v31 + 1))
  {
    return 0.0;
  }

  v5 = v0[5];
  v24 = v0[4];
  v25 = v5;
  v6 = v0[7];
  v26 = v0[6];
  v27 = v6;
  v7 = v0[1];
  v20 = *v0;
  v21 = v7;
  v8 = v0[3];
  v22 = v0[2];
  v23 = v8;
  sub_25AE1098C();
  v18[5] = v15;
  v18[6] = v16;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v19 = v17;
  v18[3] = v13;
  v18[4] = v14;

  sub_25ADED088(v18);
  if (!*(&v14 + 1))
  {
    return 0.0;
  }

  return 5.0;
}

uint64_t NDODeviceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v40 = v1[6];
  v41 = v3;
  v42 = v1[8];
  v4 = v1[3];
  v36 = v1[2];
  v37 = v4;
  v5 = v1[5];
  v38 = v1[4];
  v39 = v5;
  v6 = v1[1];
  v34 = *v1;
  v35 = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_25AE0E54C(&v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13648, &qword_25AE18870);
  sub_25ADE8250(&qword_27FA13650, &qword_27FA13648, &qword_25AE18870);
  sub_25AE109AC();
  v12 = sub_25AE1074C();
  v33[6] = v40;
  v33[7] = v41;
  v33[8] = v42;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v38;
  v33[5] = v39;
  v33[0] = v34;
  v33[1] = v35;
  sub_25AE0E130();
  sub_25AE102FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13658, &qword_25AE18878) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_25AE1073C();
  sub_25AE102FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13660, &qword_25AE18880);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_25AE0E4C4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  return v1();
}

uint64_t sub_25AE0E4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AE104BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136B0, &qword_25AE18B08);
  return sub_25AE0E5A0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_25AE0E5A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136B8, &qword_25AE18B10);
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136C0, &qword_25AE18B18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136C8, &qword_25AE18B20);
  v41 = *(v12 - 8);
  v13 = v41;
  v42 = v12;
  v14 = *(v41 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v49 = a1;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136D0, &qword_25AE18B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136D8, &qword_25AE18B30);
  sub_25ADE8250(&qword_27FA136E0, &qword_27FA136D0, &qword_25AE18B28);
  sub_25AE0FB28();
  sub_25AE1095C();
  sub_25ADE8250(&qword_27FA13740, &qword_27FA136C0, &qword_25AE18B18);
  sub_25AE0FDB0();
  v40 = v19;
  sub_25AE1087C();
  (*(v8 + 8))(v11, v7);
  v20 = sub_25AE1091C();
  LODWORD(v11) = sub_25AE1065C();
  v21 = sub_25AE107CC();
  KeyPath = swift_getKeyPath();
  v50 = v20;
  v51 = v11;
  v52 = KeyPath;
  v53 = v21;
  sub_25AE1077C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13750, &qword_25AE18BA0);
  sub_25AE0FE0C();
  v23 = v47;
  sub_25AE1086C();

  v24 = *(v13 + 16);
  v39 = v17;
  v25 = v19;
  v26 = v42;
  v24(v17, v25, v42);
  v27 = v43;
  v28 = v44;
  v29 = *(v43 + 16);
  v30 = v23;
  v31 = v45;
  v29(v44, v30, v45);
  v32 = v46;
  v24(v46, v17, v26);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13780, &unk_25AE18BB8);
  v34 = &v32[*(v33 + 48)];
  *v34 = 0;
  v34[8] = 1;
  v29(&v32[*(v33 + 64)], v28, v31);
  v35 = *(v27 + 8);
  v35(v47, v31);
  v36 = *(v41 + 8);
  v36(v40, v26);
  v35(v28, v31);
  return (v36)(v39, v26);
}

uint64_t sub_25AE0EA9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v95 = a1[4];
  v96 = v4;
  v5 = a1[7];
  v97 = a1[6];
  v98 = v5;
  v6 = a1[1];
  v91 = *a1;
  v92 = v6;
  v7 = a1[3];
  v93 = a1[2];
  v94 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v99[4] = v105;
  v99[5] = v106;
  v99[6] = v107;
  v100 = v108;
  v99[0] = v101;
  v99[1] = v102;
  v99[2] = v103;
  v99[3] = v104;
  v8 = v102;

  sub_25ADED088(v99);
  v91 = v8;
  sub_25ADDE53C();
  v9 = sub_25AE1082C();
  v54 = v10;
  v55 = v9;
  v12 = v11;
  v56 = v13;
  v14 = a1[5];
  v95 = a1[4];
  v96 = v14;
  v15 = a1[7];
  v97 = a1[6];
  v98 = v15;
  v16 = a1[1];
  v91 = *a1;
  v92 = v16;
  v17 = a1[3];
  v93 = a1[2];
  v94 = v17;
  sub_25AE1098C();
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v108 = v90;
  v101 = v83;
  v102 = v84;
  v103 = v85;
  v104 = v86;

  sub_25ADED088(&v101);
  if (*(&v86 + 1))
  {
    v91 = v86;
    v18 = sub_25AE1082C();
    v52 = v19;
    v53 = v18;
    v21 = v20;
    v63 = v22;
    KeyPath = swift_getKeyPath();
    v61 = sub_25AE107DC();
    LOBYTE(v91) = v21 & 1;
    LOBYTE(v74) = 0;
    v59 = v21 & 1;
    *&v60 = 0;
    *(&v60 + 1) = swift_getKeyPath();
    v23 = [objc_opt_self() secondaryLabelColor];
    v57 = 2;
    v58 = sub_25AE108BC();
  }

  else
  {
    v52 = 0;
    v53 = 0;
    KeyPath = 0;
    v63 = 0;
    v57 = 0;
    v58 = 0;
    v61 = 0;
    v59 = 0;
    v60 = 0uLL;
  }

  v24 = a1[5];
  v95 = a1[4];
  v96 = v24;
  v25 = a1[7];
  v97 = a1[6];
  v98 = v25;
  v26 = a1[1];
  v91 = *a1;
  v92 = v26;
  v27 = a1[3];
  v93 = a1[2];
  sub_25AE1098C();
  v95 = v87;
  v96 = v88;
  v97 = v89;
  LOBYTE(v98) = v90;
  v91 = v83;
  v92 = v84;
  v93 = v85;
  v94 = v86;
  v28 = *(&v87 + 1);

  sub_25ADED088(&v91);
  if (*(&v87 + 1))
  {
    v74 = v87;
    v51 = sub_25AE1082C();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = swift_getKeyPath();
    v36 = v12;
    v37 = sub_25AE107DC();
    v28 = swift_getKeyPath();
    LOBYTE(v74) = v32 & 1;
    LOBYTE(v69) = 0;
    v38 = v32 & 1;
    v39 = sub_25AE108EC();
    v40 = v37;
    v12 = v36;
    v41 = v35;
    v42 = 2;
  }

  else
  {
    v51 = 0;
    v30 = 0;
    v34 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  *&v64 = v53;
  *(&v64 + 1) = v52;
  *&v65 = v59;
  *(&v65 + 1) = v63;
  *&v66 = KeyPath;
  *(&v66 + 1) = v57;
  v67 = v60;
  *&v68 = v61;
  *(&v68 + 1) = v58;
  *&v69 = v51;
  *(&v69 + 1) = v30;
  *&v70 = v38;
  *(&v70 + 1) = v34;
  *&v71 = v41;
  *(&v71 + 1) = v42;
  *&v72 = 0;
  *(&v72 + 1) = v28;
  *&v73 = v40;
  *(&v73 + 1) = v39;
  *a2 = v55;
  *(a2 + 8) = v54;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v56;
  v43 = v68;
  v44 = v67;
  *(a2 + 64) = v66;
  *(a2 + 80) = v44;
  v45 = v65;
  *(a2 + 32) = v64;
  *(a2 + 48) = v45;
  v46 = v69;
  v47 = v70;
  *(a2 + 96) = v43;
  *(a2 + 112) = v46;
  v48 = v71;
  v49 = v73;
  *(a2 + 160) = v72;
  *(a2 + 176) = v49;
  *(a2 + 128) = v47;
  *(a2 + 144) = v48;
  *&v74 = v51;
  *(&v74 + 1) = v30;
  v75 = v38;
  v76 = v34;
  v77 = v41;
  v78 = v42;
  v79 = 0;
  v80 = v28;
  v81 = v40;
  v82 = v39;
  sub_25AE033CC(v55, v54, v12 & 1);

  sub_25ADE82E0(&v64, &v83, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADE82E0(&v69, &v83, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADDE8CC(&v74, &qword_27FA13790, &qword_25AE18BE0);
  *&v83 = v53;
  *(&v83 + 1) = v52;
  *&v84 = v59;
  *(&v84 + 1) = v63;
  *&v85 = KeyPath;
  *(&v85 + 1) = v57;
  v86 = v60;
  *&v87 = v61;
  *(&v87 + 1) = v58;
  sub_25ADDE8CC(&v83, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADE88C4(v55, v54, v12 & 1);
}

uint64_t sub_25AE0EF48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v34 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13788, &qword_25AE18BC8);
  v13 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13718, &qword_25AE18B48);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v34 - v18);
  v20 = a1[5];
  v42 = a1[4];
  v43 = v20;
  v21 = a1[7];
  v44 = a1[6];
  v45 = v21;
  v22 = a1[1];
  v38 = *a1;
  v39 = v22;
  v23 = a1[3];
  v40 = a1[2];
  v41 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v42 = v50;
  v43 = v51;
  v44 = v52;
  LOBYTE(v45) = v53;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v24 = *(&v46 + 1);

  sub_25ADED088(&v38);
  if (v24)
  {
    sub_25AE101AC();

    sub_25ADE82E0(v9, v7, &qword_27FA126A8, &qword_25AE11B90);
    sub_25AE0D9F4(v7, sub_25ADE6028, 0, v12);
    sub_25ADDE8CC(v9, &qword_27FA126A8, &qword_25AE11B90);
    sub_25AE10A0C();
    sub_25AE1031C();
    v25 = &v12[*(v36 + 36)];
    v26 = v47;
    *v25 = v46;
    *(v25 + 1) = v26;
    *(v25 + 2) = v48;
    sub_25AE0FF7C(v12, v15);
    swift_storeEnumTagMultiPayload();
    sub_25AE0FBB4();
    sub_25AE0FC6C();
    sub_25AE1060C();
    return sub_25AE0FFEC(v12);
  }

  else
  {
    v28 = sub_25AE1091C();
    v29 = sub_25AE1075C();
    KeyPath = swift_getKeyPath();
    v31 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13728, &unk_25AE18B50) + 36);
    sub_25AE109FC();
    *v19 = v28;
    v19[1] = KeyPath;
    v19[2] = v29;
    sub_25AE10A0C();
    sub_25AE1031C();
    v32 = (v19 + *(v16 + 36));
    v33 = v47;
    *v32 = v46;
    v32[1] = v33;
    v32[2] = v48;
    sub_25ADE82E0(v19, v15, &qword_27FA13718, &qword_25AE18B48);
    swift_storeEnumTagMultiPayload();
    sub_25AE0FBB4();
    sub_25AE0FC6C();
    sub_25AE1060C();
    return sub_25ADDE8CC(v19, &qword_27FA13718, &qword_25AE18B48);
  }
}

uint64_t sub_25AE0F384@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v40 = v1[6];
  v41 = v3;
  v42 = v1[8];
  v4 = v1[3];
  v36 = v1[2];
  v37 = v4;
  v5 = v1[5];
  v38 = v1[4];
  v39 = v5;
  v6 = v1[1];
  v34 = *v1;
  v35 = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_25AE0E54C(&v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13648, &qword_25AE18870);
  sub_25ADE8250(&qword_27FA13650, &qword_27FA13648, &qword_25AE18870);
  sub_25AE109AC();
  v12 = sub_25AE1074C();
  v33[6] = v40;
  v33[7] = v41;
  v33[8] = v42;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v38;
  v33[5] = v39;
  v33[0] = v34;
  v33[1] = v35;
  sub_25AE0E130();
  sub_25AE102FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13658, &qword_25AE18878) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_25AE1073C();
  sub_25AE102FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13660, &qword_25AE18880);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_25AE0F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE0F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE0F680()
{
  result = qword_27FA13668;
  if (!qword_27FA13668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13660, &qword_25AE18880);
    sub_25AE0F70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13668);
  }

  return result;
}

unint64_t sub_25AE0F70C()
{
  result = qword_27FA13670;
  if (!qword_27FA13670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13658, &qword_25AE18878);
    sub_25ADE8250(&qword_27FA13678, &qword_27FA13680, &qword_25AE18A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13670);
  }

  return result;
}

uint64_t sub_25AE0F7F0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13690, &qword_25AE18AE8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_25AE1067C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_25AE1068C();
  *v8 = sub_25AE1053C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13698, &qword_25AE18AF0) + 44)];
  sub_25AE106AC();
  v18 = v10[2];
  v18(v14, v16, v9);
  sub_25ADE82E0(v8, v6, &qword_27FA13690, &qword_25AE18AE8);
  v18(a1, v14, v9);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A0, &qword_25AE18AF8);
  sub_25ADE82E0(v6, &a1[*(v19 + 48)], &qword_27FA13690, &qword_25AE18AE8);
  sub_25ADDE8CC(v8, &qword_27FA13690, &qword_25AE18AE8);
  v20 = v10[1];
  v20(v16, v9);
  sub_25ADDE8CC(v6, &qword_27FA13690, &qword_25AE18AE8);
  return (v20)(v14, v9);
}

uint64_t sub_25AE0FA4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13688, &qword_25AE18AE0);
  return sub_25AE0F7F0((a1 + *(v2 + 44)));
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  sub_25ADE4930(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

unint64_t sub_25AE0FB28()
{
  result = qword_27FA136E8;
  if (!qword_27FA136E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA136D8, &qword_25AE18B30);
    sub_25AE0FBB4();
    sub_25AE0FC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA136E8);
  }

  return result;
}

unint64_t sub_25AE0FBB4()
{
  result = qword_27FA136F0;
  if (!qword_27FA136F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA136F8, &qword_25AE18B38);
    sub_25ADE8250(&qword_27FA13700, &qword_27FA13708, &qword_25AE18B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA136F0);
  }

  return result;
}

unint64_t sub_25AE0FC6C()
{
  result = qword_27FA13710;
  if (!qword_27FA13710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13718, &qword_25AE18B48);
    sub_25AE0FCF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13710);
  }

  return result;
}

unint64_t sub_25AE0FCF8()
{
  result = qword_27FA13720;
  if (!qword_27FA13720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13728, &unk_25AE18B50);
    sub_25AE032BC();
    sub_25ADE8250(&qword_27FA13730, &qword_27FA13738, &qword_25AE18B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13720);
  }

  return result;
}

unint64_t sub_25AE0FDB0()
{
  result = qword_27FA13748;
  if (!qword_27FA13748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13748);
  }

  return result;
}

unint64_t sub_25AE0FE0C()
{
  result = qword_27FA13758;
  if (!qword_27FA13758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13750, &qword_25AE18BA0);
    sub_25AE0FEC4();
    sub_25ADE8250(&qword_27FA13398, &qword_27FA133A0, &qword_25AE18B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13758);
  }

  return result;
}

unint64_t sub_25AE0FEC4()
{
  result = qword_27FA13760;
  if (!qword_27FA13760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13768, &qword_25AE18BA8);
    sub_25ADE8250(&qword_27FA13770, &qword_27FA13778, &qword_25AE18BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA13760);
  }

  return result;
}

uint64_t sub_25AE0FF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE0FFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE10054@<X0>(uint64_t a1@<X8>)
{
  result = sub_25AE1044C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25AE10088(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25AE1045C();
}