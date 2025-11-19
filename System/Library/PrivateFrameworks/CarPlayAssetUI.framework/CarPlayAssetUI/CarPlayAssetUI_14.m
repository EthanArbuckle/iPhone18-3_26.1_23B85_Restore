uint64_t sub_242D6CC2C()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_242D6CC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D6CD50(uint64_t a1)
{
  v2 = sub_242D70EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6CD8C(uint64_t a1)
{
  v2 = sub_242D70EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D6CE00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  if (v2 == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t sub_242D6CE8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id ImageAsset.LocalizedImage.file.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void ImageAsset.LocalizedImage.init(imageSet:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5 = sub_242D6FB2C(v4);
  if (v2)
  {
  }

  else
  {
    v8 = v7;
    v51 = v4;
    v52 = a2;
    v9 = v5;
    v10 = v6;
    v11 = objc_allocWithZone(MEMORY[0x277CCAA20]);
    sub_242C6CBCC();
    v12 = sub_242F04CC0();
    v13 = [v11 initDirectoryWithFileWrappers_];

    v49 = v10;
    v50 = v9;
    v14 = sub_242F04F00();
    v48 = v13;
    [v13 setPreferredFilename_];

    v15 = v8 + 64;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v21 = MEMORY[0x277D84F98];
    v53 = v8 + 64;
    v54 = v8;
    while (v18)
    {
      v23 = v20;
LABEL_13:
      v24 = __clz(__rbit64(v18)) | (v23 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      swift_bridgeObjectRetain_n();
      v57 = v28;
      v29 = [v57 preferredFilename];
      if (v29)
      {
        v30 = v29;
        v31 = sub_242F04F30();
        v55 = v32;
        v56 = v31;
      }

      else
      {

        v55 = v27;
        v56 = v26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v26;
      v36 = sub_242CE519C(v26, v27);
      v37 = v21[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_27;
      }

      v40 = v35;
      if (v21[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242D034B0();
        }
      }

      else
      {
        sub_242D080D4(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_242CE519C(v34, v27);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_29;
        }

        v36 = v41;
      }

      v18 &= v18 - 1;
      if (v40)
      {

        v22 = v21[7] + 32 * v36;
        *v22 = v56;
        *(v22 + 8) = v55;
        *(v22 + 16) = 0;
        *(v22 + 24) = 1;
      }

      else
      {
        v21[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v21[6] + 16 * v36);
        *v43 = v34;
        v43[1] = v27;
        v44 = v21[7] + 32 * v36;
        *v44 = v56;
        *(v44 + 8) = v55;
        *(v44 + 16) = 0;
        *(v44 + 24) = 1;

        v45 = v21[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_28;
        }

        v21[2] = v47;
      }

      v20 = v23;
      v15 = v53;
      v8 = v54;
    }

    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v19)
      {

        *v52 = v48;
        v52[1] = v50;
        v52[2] = v49;
        v52[3] = v21;
        return;
      }

      v18 = *(v15 + 8 * v23);
      ++v20;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_242F06320();
    __break(1u);
  }
}

uint64_t sub_242D6D304(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736567616D69;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x736567616D69;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D6D3AC()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D6D430()
{
  sub_242F04DD0();
}

uint64_t sub_242D6D4A0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242D6D52C(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x736567616D69;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242D6D56C()
{
  if (*v0)
  {
    return 0x736567616D69;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_242D6D5B4@<X0>(char *a1@<X8>)
{
  v2 = sub_242F05CD0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_242D6D614(uint64_t a1)
{
  v2 = sub_242D70118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6D650(uint64_t a1)
{
  v2 = sub_242D70118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.LocalizedImage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4470);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70118();
  sub_242F064C0();
  v13 = 0;
  sub_242F05EC0();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4480);
    sub_242D701C0(&qword_27ECF4488, sub_242D7016C);
    sub_242F05F20();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t ImageAsset.LocalizedImage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*v1)
  {
    sub_242F063B0();
    v5 = v3;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F04DD0();

  return sub_242C78CCC(a1, v4);
}

uint64_t ImageAsset.LocalizedImage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F063B0();
  if (v1)
  {
    v3 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242C78CCC(v5, v2);
  return sub_242F063E0();
}

uint64_t ImageAsset.LocalizedImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70118();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v17 = 0;
  v9 = sub_242F05DA0();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4480);
  v16 = 1;
  sub_242D701C0(&qword_27ECF44A0, sub_242D70244);
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = 0;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v13;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D6DC2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*v1)
  {
    sub_242F063B0();
    v5 = v3;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F04DD0();

  return sub_242C78CCC(a1, v4);
}

uint64_t sub_242D6DCC0()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F063B0();
  if (v1)
  {
    v3 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242C78CCC(v5, v2);
  return sub_242F063E0();
}

uint64_t ImageAsset.Attributes.baselineOffset.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_242D6DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242D6DE4C(uint64_t a1)
{
  v2 = sub_242D70298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6DE88(uint64_t a1)
{
  v2 = sub_242D70298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.Attributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF44B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70298();
  sub_242F064C0();
  sub_242F05E70();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ImageAsset.Attributes.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_242F063B0();
  }

  v2 = *v0;
  sub_242F063B0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t ImageAsset.Attributes.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (v2 == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t ImageAsset.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF44C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70298();
  sub_242F06480();
  if (!v2)
  {
    v9 = sub_242F05D50();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242D6E260(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF44B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D70298();
  sub_242F064C0();
  sub_242F05E70();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_242D6E3A4()
{
  if (*(v0 + 8) == 1)
  {
    return sub_242F063B0();
  }

  v2 = *v0;
  sub_242F063B0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t sub_242D6E3F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (v2 == 1)
  {
    sub_242F063B0();
  }

  else
  {
    sub_242F063B0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t sub_242D6E468(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_242D6E49C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4610);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D71240();
  sub_242F064C0();
  v14 = 0;
  sub_242F05E50();
  if (!v5)
  {
    v13 = 1;
    sub_242F05E50();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_242D6E630()
{
  if (*v0)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_242D6E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D6E740(uint64_t a1)
{
  v2 = sub_242D71240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6E77C(uint64_t a1)
{
  v2 = sub_242D71240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D6E7B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_242D6F794(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_242D6E808()
{
  v1 = 0;
  v2 = *v0;
  v3 = *v0 + 24;
  v4 = *(*v0 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v3 + 32 * v1;
  while (1)
  {
    if (v4 == v1)
    {

      *v0 = v5;
      return;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    ++v1;
    v7 = (v6 + 32);
    v8 = *(v6 + 16);
    v6 += 32;
    if (v8)
    {
      v9 = *(v7 - 3);
      v11 = *(v7 - 1);
      v10 = *v7;

      v15 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_242E3BF50(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_242E3BF50((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = (v5 + 32 * v13);
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      v3 = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_242D6E934(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4618);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D71198();
  sub_242F064C0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF45E8);
  sub_242D71294(&qword_27ECF4620, sub_242D7130C);
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242D6EAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242D6EB58(uint64_t a1)
{
  v2 = sub_242D71198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D6EB94(uint64_t a1)
{
  v2 = sub_242D71198();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_242D6EBD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_242D6F978(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_242D6EC18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_242F03630();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_242F03690();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_242F035D0();

    swift_willThrow();
    v13 = sub_242F03690();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t _s14CarPlayAssetUI05ImageC0V09LocalizedE0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    sub_242C6CBCC();
    v10 = v7;
    v11 = v3;
    v12 = sub_242F05810();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v13 = v2 == v6 && v5 == v9;
  if (!v13 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  return sub_242C776F0(v4, v8);
}

BOOL _s14CarPlayAssetUI05ImageC0V0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    sub_242C6CBCC();
    v9 = v5;
    v10 = v2;
    v11 = sub_242F05810();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v6)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1;
    }

    return (v13 & 1) == 0;
  }

  return (v7 & 1) != 0;
}

uint64_t _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v21 = *a1;
      v22 = v2;
      v23 = v5;
      v24 = v4;
      v16 = v8;
      v17 = v7;
      v18 = v10;
      v19 = v9;
      sub_242C7F6C4(v8, v7, v10, v9, v11);
      sub_242C7F6C4(v3, v2, v5, v4, v6);
      sub_242C7F6C4(v3, v2, v5, v4, v6);
      sub_242C7F6C4(v8, v7, v10, v9, v11);
      v12 = _s14CarPlayAssetUI05ImageC0V09LocalizedE0V2eeoiySbAE_AEtFZ_0(&v21, &v16);
      goto LABEL_7;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    v21 = *a1;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    v25 = v6 & 1;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = v11 & 1;
    sub_242C7F6C4(v8, v7, v10, v9, v11);
    sub_242C7F6C4(v3, v2, v5, v4, v6);
    sub_242C7F6C4(v3, v2, v5, v4, v6);
    sub_242C7F6C4(v8, v7, v10, v9, v11);
    v12 = _s14CarPlayAssetUI05ImageC0V0E0V2eeoiySbAE_AEtFZ_0(&v21, &v16);
LABEL_7:
    v15 = v12;
    sub_242C7F724(v3, v2, v5, v4, v6);
    sub_242C7F724(v8, v7, v10, v9, v11);
    sub_242C7F724(v8, v7, v10, v9, v11);
    sub_242C7F724(v3, v2, v5, v4, v6);
    v13 = v15;
    return v13 & 1;
  }

  sub_242C7F6C4(*a1, v2, v5, v4, v6);
  sub_242C7F6C4(v8, v7, v10, v9, v11);
  sub_242C7F724(v3, v2, v5, v4, v6);
  sub_242C7F724(v8, v7, v10, v9, v11);
  v13 = 0;
  return v13 & 1;
}

uint64_t _s14CarPlayAssetUI05ImageC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  v19 = *a1;
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v11;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v12;
  sub_242C7F6C4(v19, v2, v3, v4, v11);
  sub_242C7F6C4(v6, v7, v8, v9, v12);
  LOBYTE(v6) = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v19, &v14);
  sub_242C7F724(v14, v15, v16, v17, v18);
  sub_242C7F724(v19, v20, v21, v22, v23);
  return v6 & (v5 == v10);
}

unint64_t sub_242D6F250()
{
  result = qword_27ECF43C0;
  if (!qword_27ECF43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF43C0);
  }

  return result;
}

unint64_t sub_242D6F2A4()
{
  result = qword_27ECF43C8;
  if (!qword_27ECF43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF43C8);
  }

  return result;
}

unint64_t sub_242D6F2F8()
{
  result = qword_27ECF43D0;
  if (!qword_27ECF43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF43D0);
  }

  return result;
}

unint64_t sub_242D6F34C()
{
  result = qword_27ECF43D8;
  if (!qword_27ECF43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF43D8);
  }

  return result;
}

unint64_t sub_242D6F3A0()
{
  result = qword_27ECF43E0;
  if (!qword_27ECF43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF43E0);
  }

  return result;
}

unint64_t sub_242D6F3F4()
{
  result = qword_27ECF4400;
  if (!qword_27ECF4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4400);
  }

  return result;
}

unint64_t sub_242D6F448()
{
  result = qword_27ECF4408;
  if (!qword_27ECF4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4408);
  }

  return result;
}

unint64_t sub_242D6F49C()
{
  result = qword_27ECEFA98;
  if (!qword_27ECEFA98)
  {
    sub_242F033A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEFA98);
  }

  return result;
}

unint64_t sub_242D6F4F4()
{
  result = qword_27ECF4418;
  if (!qword_27ECF4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4418);
  }

  return result;
}

unint64_t sub_242D6F548()
{
  result = qword_27ECF4420;
  if (!qword_27ECF4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4420);
  }

  return result;
}

unint64_t sub_242D6F59C()
{
  result = qword_27ECF4428;
  if (!qword_27ECF4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4428);
  }

  return result;
}

unint64_t sub_242D6F5F0()
{
  result = qword_27ECF4438;
  if (!qword_27ECF4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4438);
  }

  return result;
}

unint64_t sub_242D6F644()
{
  result = qword_27ECF4440;
  if (!qword_27ECF4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4440);
  }

  return result;
}

unint64_t sub_242D6F698()
{
  result = qword_27ECF4450;
  if (!qword_27ECF4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4450);
  }

  return result;
}

unint64_t sub_242D6F6EC()
{
  result = qword_27ECF4458;
  if (!qword_27ECF4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4458);
  }

  return result;
}

unint64_t sub_242D6F740()
{
  result = qword_27ECF4468;
  if (!qword_27ECF4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4468);
  }

  return result;
}

uint64_t sub_242D6F794(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D71240();
  sub_242F06480();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_242F05D30();
    v10 = 1;
    sub_242F05D30();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v7;
}

void *sub_242D6F978(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF45D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D71198();
  sub_242F06480();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF45E8);
    sub_242D71294(&qword_27ECF45F0, sub_242D711EC);
    sub_242F05E00();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  return v7;
}

uint64_t sub_242D6FB2C(void *a1)
{
  v3 = sub_242F03390();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F033A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isDirectory])
  {
    goto LABEL_40;
  }

  v8 = [a1 preferredFilename];
  if (!v8)
  {
    sub_242F03330();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242D6F49C();
    sub_242F035C0();
    v9 = v7;
    sub_242F03310();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
    goto LABEL_6;
  }

  v9 = a1;
  NSFileWrapper.data(contentsOf:)(0x73746E65746E6F43, 0xED00006E6F736A2ELL);
  if (v1)
  {
LABEL_6:

    return v9;
  }

  v12 = v10;
  v13 = v11;
  sub_242F033D0();
  swift_allocObject();
  sub_242F033C0();
  sub_242D70F4C();
  sub_242F033B0();
  v62 = v12;
  v63 = v13;

  sub_242D6E808();
  v15 = *(v67 + 16);
  v61 = v67;
  if (!v15)
  {
    v64 = MEMORY[0x277D84F98];
LABEL_37:

    v56 = v62;
    v55 = v63;
    v9 = sub_242D5F87C(v62, v63);
    sub_242C6CCC0(v56, v55);

    return v9;
  }

  v16 = (v67 + 56);
  v64 = MEMORY[0x277D84F98];
  while (1)
  {
    v17 = *(v16 - 2);
    v18 = *v16;
    if (*v16)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_11;
    }

    v20 = *(v16 - 3);
    v21 = *(v16 - 1);

    v22 = [a1 fileWrappers];
    if (!v22)
    {
      goto LABEL_10;
    }

    v23 = v22;
    v65 = v21;
    sub_242C6CBCC();
    v24 = sub_242F04CF0();

    if (!*(v24 + 16))
    {

LABEL_10:

      goto LABEL_11;
    }

    v25 = sub_242CE519C(v20, v17);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v24 + 56) + 8 * v25);

    v29 = [v28 regularFileContents];
    if (!v29)
    {

      goto LABEL_11;
    }

    v60 = v28;
    v30 = v29;
    v31 = sub_242F036B0();
    v33 = v32;

    v34 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_242C6D21C(v31, v33);
    v35 = sub_242F036A0();
    v36 = [v34 initWithData_];

    sub_242C6CCC0(v31, v33);
    if (!v36)
    {
      sub_242C6CCC0(v31, v33);

      goto LABEL_11;
    }

    v58 = v31;
    v59 = v33;

    v37 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v37;
    v40 = sub_242CE519C(v65, v18);
    v41 = v37[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      break;
    }

    v44 = v39;
    if (v37[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_242D03168();
      }
    }

    else
    {
      sub_242D07AC0(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_242CE519C(v65, v18);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_41;
      }

      v40 = v45;
    }

    v47 = v60;
    v48 = v66;
    v64 = v66;
    if (v44)
    {
      v49 = v66[7];
      v50 = *(v49 + 8 * v40);
      *(v49 + 8 * v40) = v60;
    }

    else
    {
      v66[(v40 >> 6) + 8] |= 1 << v40;
      v51 = (v48[6] + 16 * v40);
      *v51 = v65;
      v51[1] = v18;
      *(v48[7] + 8 * v40) = v47;
      v52 = v48[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_39;
      }

      v48[2] = v54;
    }

    sub_242C6CCC0(v58, v59);
LABEL_11:
    v16 += 4;
    if (!--v15)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_242F05C60();
  __break(1u);
LABEL_41:
  result = sub_242F06320();
  __break(1u);
  return result;
}

unint64_t sub_242D70118()
{
  result = qword_27ECF4478;
  if (!qword_27ECF4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4478);
  }

  return result;
}

unint64_t sub_242D7016C()
{
  result = qword_27ECF4490;
  if (!qword_27ECF4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4490);
  }

  return result;
}

uint64_t sub_242D701C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D70244()
{
  result = qword_27ECF44A8;
  if (!qword_27ECF44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44A8);
  }

  return result;
}

unint64_t sub_242D70298()
{
  result = qword_27ECF44B8;
  if (!qword_27ECF44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44B8);
  }

  return result;
}

unint64_t sub_242D702F0()
{
  result = qword_27ECF44C8;
  if (!qword_27ECF44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44C8);
  }

  return result;
}

unint64_t sub_242D70348()
{
  result = qword_27ECF44D0;
  if (!qword_27ECF44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44D0);
  }

  return result;
}

unint64_t sub_242D703A0()
{
  result = qword_27ECF44D8;
  if (!qword_27ECF44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44D8);
  }

  return result;
}

unint64_t sub_242D703F8()
{
  result = qword_27ECF44E0;
  if (!qword_27ECF44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44E0);
  }

  return result;
}

unint64_t sub_242D70450()
{
  result = qword_27ECF44E8;
  if (!qword_27ECF44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44E8);
  }

  return result;
}

uint64_t sub_242D704A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 48))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242D704F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_242D70578(uint64_t a1, int a2)
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

uint64_t sub_242D705C0(uint64_t result, int a2, int a3)
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

uint64_t sub_242D70614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_242D7065C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ImageAsset.Attributes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

unint64_t sub_242D7076C()
{
  result = qword_27ECF44F0;
  if (!qword_27ECF44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44F0);
  }

  return result;
}

unint64_t sub_242D707C4()
{
  result = qword_27ECF44F8;
  if (!qword_27ECF44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF44F8);
  }

  return result;
}

unint64_t sub_242D7081C()
{
  result = qword_27ECF4500;
  if (!qword_27ECF4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4500);
  }

  return result;
}

unint64_t sub_242D70874()
{
  result = qword_27ECF4508;
  if (!qword_27ECF4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4508);
  }

  return result;
}

unint64_t sub_242D708CC()
{
  result = qword_27ECF4510;
  if (!qword_27ECF4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4510);
  }

  return result;
}

unint64_t sub_242D70924()
{
  result = qword_27ECF4518;
  if (!qword_27ECF4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4518);
  }

  return result;
}

unint64_t sub_242D7097C()
{
  result = qword_27ECF4520;
  if (!qword_27ECF4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4520);
  }

  return result;
}

unint64_t sub_242D709D4()
{
  result = qword_27ECF4528;
  if (!qword_27ECF4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4528);
  }

  return result;
}

unint64_t sub_242D70A2C()
{
  result = qword_27ECF4530;
  if (!qword_27ECF4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4530);
  }

  return result;
}

unint64_t sub_242D70A84()
{
  result = qword_27ECF4538;
  if (!qword_27ECF4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4538);
  }

  return result;
}

unint64_t sub_242D70ADC()
{
  result = qword_27ECF4540;
  if (!qword_27ECF4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4540);
  }

  return result;
}

unint64_t sub_242D70B34()
{
  result = qword_27ECF4548;
  if (!qword_27ECF4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4548);
  }

  return result;
}

unint64_t sub_242D70B8C()
{
  result = qword_27ECF4550;
  if (!qword_27ECF4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4550);
  }

  return result;
}

unint64_t sub_242D70BE4()
{
  result = qword_27ECF4558;
  if (!qword_27ECF4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4558);
  }

  return result;
}

unint64_t sub_242D70C3C()
{
  result = qword_27ECF4560;
  if (!qword_27ECF4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4560);
  }

  return result;
}

unint64_t sub_242D70C94()
{
  result = qword_27ECF4568;
  if (!qword_27ECF4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4568);
  }

  return result;
}

unint64_t sub_242D70CEC()
{
  result = qword_27ECF4570;
  if (!qword_27ECF4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4570);
  }

  return result;
}

unint64_t sub_242D70D44()
{
  result = qword_27ECF4578;
  if (!qword_27ECF4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4578);
  }

  return result;
}

unint64_t sub_242D70D9C()
{
  result = qword_27ECF4580;
  if (!qword_27ECF4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4580);
  }

  return result;
}

unint64_t sub_242D70DF4()
{
  result = qword_27ECF4588;
  if (!qword_27ECF4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4588);
  }

  return result;
}

unint64_t sub_242D70E4C()
{
  result = qword_27ECF4590;
  if (!qword_27ECF4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4590);
  }

  return result;
}

unint64_t sub_242D70EA4()
{
  result = qword_27ECF4598;
  if (!qword_27ECF4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4598);
  }

  return result;
}

unint64_t sub_242D70EF8()
{
  result = qword_27ECF45A8;
  if (!qword_27ECF45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45A8);
  }

  return result;
}

unint64_t sub_242D70F4C()
{
  result = qword_27ECF45B8;
  if (!qword_27ECF45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45B8);
  }

  return result;
}

uint64_t sub_242D70FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_242D7100C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_242D71094()
{
  result = qword_27ECF45C0;
  if (!qword_27ECF45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45C0);
  }

  return result;
}

unint64_t sub_242D710EC()
{
  result = qword_27ECF45C8;
  if (!qword_27ECF45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45C8);
  }

  return result;
}

unint64_t sub_242D71144()
{
  result = qword_27ECF45D0;
  if (!qword_27ECF45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45D0);
  }

  return result;
}

unint64_t sub_242D71198()
{
  result = qword_27ECF45E0;
  if (!qword_27ECF45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45E0);
  }

  return result;
}

unint64_t sub_242D711EC()
{
  result = qword_27ECF45F8;
  if (!qword_27ECF45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF45F8);
  }

  return result;
}

unint64_t sub_242D71240()
{
  result = qword_27ECF4608;
  if (!qword_27ECF4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4608);
  }

  return result;
}

uint64_t sub_242D71294(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF45E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D7130C()
{
  result = qword_27ECF4628;
  if (!qword_27ECF4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4628);
  }

  return result;
}

unint64_t sub_242D71384()
{
  result = qword_27ECF4630;
  if (!qword_27ECF4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4630);
  }

  return result;
}

unint64_t sub_242D713DC()
{
  result = qword_27ECF4638;
  if (!qword_27ECF4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4638);
  }

  return result;
}

unint64_t sub_242D71434()
{
  result = qword_27ECF4640;
  if (!qword_27ECF4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4640);
  }

  return result;
}

unint64_t sub_242D7148C()
{
  result = qword_27ECF4648;
  if (!qword_27ECF4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4648);
  }

  return result;
}

unint64_t sub_242D714E4()
{
  result = qword_27ECF4650;
  if (!qword_27ECF4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4650);
  }

  return result;
}

unint64_t sub_242D7153C()
{
  result = qword_27ECF4658;
  if (!qword_27ECF4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4658);
  }

  return result;
}

uint64_t sub_242D71590(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x696669746E656469;
    if (a1 == 2)
    {
      v12 = 0x6E6F6973726576;
    }

    else
    {
      v11 = 0xEA00000000007265;
    }

    v13 = 0x8000000242F582B0;
    v14 = 0xD000000000000017;
    if (a1)
    {
      v13 = 0x8000000242F582D0;
    }

    else
    {
      v14 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0x707954646C697562;
    v4 = 0xE900000000000065;
    v5 = 0x8000000242F58330;
    v6 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v6 = 0x6D69616C63736964;
      v5 = 0xEA00000000007265;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x8000000242F582F0;
    v8 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v8 = 0xD000000000000011;
      v7 = 0x8000000242F58310;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6E6F6973726576)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v17 = 0x696669746E656469;
      goto LABEL_47;
    }

    if (a2)
    {
      v15 = 0x8000000242F582D0;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = "iOSContentVersion";
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE900000000000065;
        if (v9 != 0x707954646C697562)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      if (a2 == 7)
      {
        v15 = 0x8000000242F58330;
        if (v9 != 0xD00000000000001DLL)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

      v17 = 0x6D69616C63736964;
LABEL_47:
      v15 = 0xEA00000000007265;
      if (v9 != v17)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    if (a2 == 4)
    {
      v15 = 0x8000000242F582F0;
      if (v9 != 0xD00000000000001BLL)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = "minimumSDKVersion";
  }

  v15 = (v16 - 32) | 0x8000000000000000;
  if (v9 != 0xD000000000000011)
  {
LABEL_53:
    v18 = sub_242F06110();
    goto LABEL_54;
  }

LABEL_51:
  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v18 = 1;
LABEL_54:

  return v18 & 1;
}

uint64_t sub_242D71844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72657473756C63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65676E6573736170;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0x8000000242F583B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F437265746E6563;
    }

    else
    {
      v4 = 0x72657473756C63;
    }

    if (v3)
    {
      v5 = 0xED0000656C6F736ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x65676E6573736170;
  v8 = 0x8000000242F583B0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000072;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x6F437265746E6563;
    v6 = 0xED0000656C6F736ELL;
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
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242D719A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656D614E7470;
  v3 = 0x6972635374736F70;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x737469617274;
    }

    else
    {
      v5 = 0x746867696577;
    }

    v6 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x614E796C696D6166;
    }

    else
    {
      v5 = 0x6972635374736F70;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEE00656D614E7470;
    }
  }

  v7 = 0x737469617274;
  if (a2 != 2)
  {
    v7 = 0x746867696577;
  }

  if (a2)
  {
    v3 = 0x614E796C696D6166;
    v2 = 0xEA0000000000656DLL;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_242F06110();
  }

  return v10 & 1;
}

uint64_t sub_242D71AEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6574737973;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB00000000636972;
    v4 = 0xEA00000000006F6ELL;
    if (a1 == 2)
    {
      v6 = 0x656D754E74666F73;
    }

    else
    {
      v6 = 0x6F4D6D6574737973;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xEF74696769446465;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x636170736F6E6F6DLL;
    }

    else
    {
      v6 = 0x6D6574737973;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656D754E74666F73;
  v10 = 0xEB00000000636972;
  if (a2 != 2)
  {
    v9 = 0x6F4D6D6574737973;
    v10 = 0xEA00000000006F6ELL;
  }

  if (a2)
  {
    v2 = 0x636170736F6E6F6DLL;
    v8 = 0xEF74696769446465;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_242F06110();
  }

  return v13 & 1;
}

uint64_t sub_242D71C58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74756F68636E7570;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x7972616D697270;
    }

    else
    {
      v3 = 0x79616C7265766FLL;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x79616C7265646E75;
    }

    else
    {
      v3 = 0x74756F68636E7570;
    }

    v4 = 0xE800000000000000;
  }

  v5 = 0x7972616D697270;
  if (a2 != 2)
  {
    v5 = 0x79616C7265766FLL;
  }

  if (a2)
  {
    v2 = 0x79616C7265646E75;
  }

  if (a2 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242D71D9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x7974536567756167;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x72756769666E6F63;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0072756C42646ELL;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4C737265646E6572;
    }

    else
    {
      v5 = 0x7974536567756167;
    }

    if (v4)
    {
      v6 = 0xEE00796C6C61636FLL;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0x756F72676B636162;
  v8 = 0xEE0072756C42646ELL;
  if (a2 != 2)
  {
    v7 = 0x72756769666E6F63;
    v8 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v3 = 0x4C737265646E6572;
    v2 = 0xEE00796C6C61636FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
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
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242D71F28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x697461676976616ELL;
  v4 = a1;
  v5 = 1970169197;
  if (a1 == 6)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x6F50746567646977;
    v6 = 0xED00007265766F70;
  }

  v7 = 0x72685468636E7570;
  v8 = 0xEC0000006867756FLL;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x8000000242F57A90;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6F74616369646E69;
  v10 = 0xE900000000000072;
  if (a1 != 2)
  {
    v9 = 0x7274537475706E69;
    v10 = 0xEB000000006D6165;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6567756167;
  if (!a1)
  {
    v12 = 0x697461676976616ELL;
    v11 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1970169197)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xED00007265766F70;
        if (v13 != 0x6F50746567646977)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000006867756FLL;
      if (v13 != 0x72685468636E7570)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x8000000242F57A90;
      if (v13 != 0xD000000000000010)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000072;
        if (v13 != 0x6F74616369646E69)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x7274537475706E69;
      v2 = 0xEB000000006D6165;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6567756167)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_242F06110();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

void *sub_242D721B4(void *result, uint64_t a2)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  for (i = result + 4; ; i += 19)
  {
    v4 = *(i + 7);
    v43 = *(i + 6);
    v44 = v4;
    v45 = *(i + 8);
    v46 = i[18];
    v5 = *(i + 3);
    v39 = *(i + 2);
    v40 = v5;
    v6 = *(i + 5);
    v41 = *(i + 4);
    v42 = v6;
    v7 = *(i + 1);
    v38[0] = *i;
    v38[1] = v7;
    v8 = v39;
    v9 = *(&v42 + 1);
    v10 = v44;
    v11 = v44 >> 61;
    v12 = *(&v41 + 1);
    if ((v44 >> 61) > 2)
    {
      if (v11 == 3)
      {
LABEL_13:
        result = sub_242D7E738(v38, v37);
        v14 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      v34 = v40;
      v36 = v41;
      v47 = *(&v40 + 1);
      v17 = *(&v43 + 1);
      if (v11 == 4)
      {
        v32 = v43;
        v33 = *(&v44 + 1);
        v31 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
        v30 = v17;
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_242F0A4E0;
        *(v14 + 56) = &type metadata for ImageAsset;
        *(v14 + 64) = &protocol witness table for ImageAsset;
        v18 = swift_allocObject();
        *(v14 + 32) = v18;
        *(v18 + 16) = v8;
        v19 = v47;
        *(v18 + 32) = v34;
        *(v18 + 40) = v19;
        *(v18 + 48) = v36;
        *(v18 + 56) = v12;
        *(v14 + 96) = &type metadata for ImageAsset;
        *(v14 + 104) = &protocol witness table for ImageAsset;
        v20 = swift_allocObject();
        *(v14 + 72) = v20;
        *(v20 + 16) = v31;
        *(v20 + 24) = v9;
        *(v20 + 32) = v32;
        *(v20 + 40) = v30;
        *(v20 + 48) = v10;
        *(v20 + 56) = v33;
        goto LABEL_12;
      }

      sub_242D7E738(v38, v37);
      sub_242D7E794(&v39, v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_242F09510;
      *(v14 + 56) = &type metadata for CAPackageAsset;
      *(v14 + 64) = &protocol witness table for CAPackageAsset;
      result = swift_allocObject();
      *(v14 + 32) = result;
      *(result + 1) = v8;
      result[4] = v34;
    }

    else
    {
      if (!v11)
      {
        goto LABEL_13;
      }

      v13 = v40;
      v36 = v41;
      v47 = *(&v40 + 1);
      if (v11 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_242F09510;
        *(v14 + 56) = &type metadata for ImageAsset;
        *(v14 + 64) = &protocol witness table for ImageAsset;
        v15 = swift_allocObject();
        *(v14 + 32) = v15;
        *(v15 + 16) = v8;
        v16 = v47;
        *(v15 + 32) = v13;
        *(v15 + 40) = v16;
        *(v15 + 48) = v36;
        *(v15 + 56) = v12;
LABEL_12:
        sub_242D7E738(v38, v37);
        result = sub_242D7E794(&v39, v37);
        goto LABEL_17;
      }

      sub_242D7E738(v38, v37);
      sub_242D7E794(&v39, v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_242F09510;
      *(v14 + 56) = &type metadata for CAPackageAsset;
      *(v14 + 64) = &protocol witness table for CAPackageAsset;
      result = swift_allocObject();
      *(v14 + 32) = result;
      *(result + 1) = v8;
      result[4] = v13;
    }

    result[5] = v47;
    result[6] = v36;
LABEL_17:
    v21 = *(v14 + 16);
    v22 = *a2;
    v23 = *(*a2 + 16);
    v24 = v23 + v21;
    if (__OFADD__(v23, v21))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v25 = v22[3] >> 1, v25 >= v24))
    {
      if (*(v14 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v26 = v23 + v21;
      }

      else
      {
        v26 = v23;
      }

      result = sub_242C82D10(result, v26, 1, v22);
      v22 = result;
      v25 = result[3] >> 1;
      if (*(v14 + 16))
      {
LABEL_26:
        if (v25 - v22[2] < v21)
        {
          goto LABEL_33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0338);
        swift_arrayInitWithCopy();

        if (v21)
        {
          v27 = v22[2];
          v28 = __OFADD__(v27, v21);
          v29 = v27 + v21;
          if (v28)
          {
            goto LABEL_34;
          }

          v22[2] = v29;
        }

        goto LABEL_4;
      }
    }

    if (v21)
    {
      goto LABEL_32;
    }

LABEL_4:
    *a2 = v22;
    result = sub_242D7E7F0(v38);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_242D72720(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v4 = sub_242F06440();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1F40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v27 = MEMORY[0x277D84F90];
  sub_242F06420();
  v13 = sub_242F06410();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  sub_242CA321C(v12, v10, &qword_27ECF1F40);
  if ((*(v14 + 88))(v10, v13) != *MEMORY[0x277D84C00])
  {
    (*(v14 + 8))(v10, v13);
LABEL_7:
    v18 = sub_242F06430();
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = &v27;
    sub_242F05C10();

LABEL_8:
    sub_242C6D138(v12, &qword_27ECF1F40);
    return v27;
  }

  v21 = v4;
  v22 = a1;
  v23 = a2;
  sub_242F06430();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = sub_242F05AB0();
  swift_getObjectType();
  result = sub_242F05AB0();
  if (v15 == result)
  {
    v17 = sub_242F05AC0();
    swift_unknownObjectRelease();
    if (v17)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_242F05C50();
      swift_unknownObjectRelease();

      sub_242CA321C(v26, v25, &qword_27ECF1F48);

      v19 = sub_242F063F0();
      v20 = v22(v19);
      (*(v24 + 8))(v6, v21);
      v23(v20);
      sub_242C6D138(v26, &qword_27ECF1F48);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_242D72AF0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_242F06440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v23, &qword_27ECF1F48);

  sub_242F063F0();
  v8 = sub_242F06400();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8 == &type metadata for Theme.ColorID)
  {
    sub_242CA321C(a1, v23, &qword_27ECF1F48);

    sub_242CD9C00(&v24, &v22);
    swift_dynamicCast();
    v13 = v20[1];
    v14 = v20[2];
    v15 = v21;
    v16 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((result & 1) == 0)
    {
      result = sub_242C82E5C(0, *(v16 + 16) + 1, 1, v16);
      v16 = result;
      *a2 = result;
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_242C82E5C((v17 > 1), v18 + 1, 1, v16);
      v16 = result;
      *a2 = result;
    }

    *(v16 + 16) = v18 + 1;
    v19 = v16 + 24 * v18;
    *(v19 + 32) = v13;
    *(v19 + 40) = v14;
    *(v19 + 48) = v15;
  }

  else
  {
    sub_242CA321C(a1, v23, &qword_27ECF1F48);

    v10 = sub_242F063F0();
    v11 = sub_242D72660(v10);
    v9(v7, v4);
    return sub_242C81B50(v11);
  }

  return result;
}

uint64_t sub_242D72D40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_242F06440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v18, &qword_27ECF1F48);

  sub_242F063F0();
  v8 = sub_242F06400();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8 == &type metadata for InstrumentDataIdentifier)
  {
    sub_242CA321C(a1, v18, &qword_27ECF1F48);

    sub_242CD9C00(&v19, v17);
    swift_dynamicCast();
    v13 = v20;
    v14 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((result & 1) == 0)
    {
      result = sub_242C840B4(0, *(v14 + 16) + 1, 1, v14);
      v14 = result;
      *a2 = result;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_242C840B4((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *a2 = result;
    }

    *(v14 + 16) = v16 + 1;
    *(v14 + v16 + 32) = v13;
  }

  else
  {
    sub_242CA321C(a1, v18, &qword_27ECF1F48);

    v10 = sub_242F063F0();
    v11 = sub_242D726A0(v10);
    v9(v7, v4);
    return sub_242C81F78(v11);
  }

  return result;
}

__n128 sub_242D72F84(uint64_t a1, char **a2)
{
  v4 = sub_242F06440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_242CA321C(a1, &v26, &qword_27ECF1F48);

  sub_242F063F0();
  v8 = sub_242F06400();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8 == &type metadata for ImageGroupConfiguration)
  {
    sub_242CA321C(a1, v23, &qword_27ECF1F48);

    sub_242CD9C00(&v24, &v25);
    swift_dynamicCast();
    v26 = *&v20[8];
    v27 = *&v20[24];
    v28 = v21;
    v29 = v22;
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_242C845A4(0, *(v13 + 2) + 1, 1, v13);
      *a2 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_242C845A4((v15 > 1), v16 + 1, 1, v13);
      *a2 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[56 * v16];
    result = v26;
    v18 = v27;
    v19 = v28;
    v17[80] = v29;
    *(v17 + 3) = v18;
    *(v17 + 4) = v19;
    *(v17 + 2) = result;
  }

  else
  {
    sub_242CA321C(a1, &v26, &qword_27ECF1F48);

    v10 = sub_242F063F0();
    v11 = sub_242D726E0(v10);
    v9(v7, v4);
    sub_242C825DC(v11);
  }

  return result;
}

uint64_t Layout.colorIDs.getter()
{
  v1 = sub_242F06440();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[3] = type metadata accessor for Layout();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_242D7CE1C(v0, boxed_opaque_existential_1, type metadata accessor for Layout);
  sub_242F063F0();
  v6 = sub_242D72660();
  (*(v2 + 8))(v4, v1);
  v7 = sub_242C864D8(v6);

  return v7;
}

uint64_t type metadata accessor for Layout()
{
  result = qword_27ECF4800;
  if (!qword_27ECF4800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LayoutType.displayName.getter()
{
  v1 = 0x74756F68636E7550;
  v2 = 0x7972616D697250;
  if (*v0 != 2)
  {
    v2 = 0x79616C7265764FLL;
  }

  if (*v0)
  {
    v1 = 0x79616C7265646E55;
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

CarPlayAssetUI::LayoutType_optional __swiftcall LayoutType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LayoutType.rawValue.getter()
{
  v1 = 0x74756F68636E7570;
  v2 = 0x7972616D697270;
  if (*v0 != 2)
  {
    v2 = 0x79616C7265766FLL;
  }

  if (*v0)
  {
    v1 = 0x79616C7265646E75;
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

void sub_242D734F4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x74756F68636E7570;
  v4 = 0x7972616D697270;
  if (*v1 != 2)
  {
    v4 = 0x79616C7265766FLL;
  }

  if (*v1)
  {
    v3 = 0x79616C7265646E75;
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
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_242D73634()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242D736F8()
{
  sub_242F04DD0();
}

uint64_t sub_242D737A8()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t static Layout.== infix(_:_:)()
{
  sub_242F03720();
  sub_242D7D610(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t Layout.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Layout() + 20));

  return v1;
}

uint64_t Layout.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Layout() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Layout.zones.getter()
{
  type metadata accessor for Layout();
}

uint64_t Layout.zones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Layout() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Layout.layoutStyleID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Layout() + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Layout.layoutStyleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Layout() + 28));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Layout.backgroundColor.getter()
{
  type metadata accessor for Layout();
}

uint64_t Layout.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Layout() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Layout.layoutType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Layout();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Layout.layoutType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Layout();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Layout.systemUILayout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Layout() + 40);
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
  return sub_242CA321C(v17, v16, &qword_27ECF4660);
}

__n128 sub_242D73D9C(__int128 *a1, uint64_t a2)
{
  v2 = a1[7];
  v22 = a1[6];
  v23 = v2;
  v24 = *(a1 + 128);
  v3 = a1[3];
  v18 = a1[2];
  v19 = v3;
  v4 = a1[5];
  v20 = a1[4];
  v21 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v6 = a2 + *(type metadata accessor for Layout() + 40);
  v7 = *(v6 + 112);
  v25[6] = *(v6 + 96);
  v25[7] = v7;
  v26 = *(v6 + 128);
  v8 = *(v6 + 48);
  v25[2] = *(v6 + 32);
  v25[3] = v8;
  v9 = *(v6 + 80);
  v25[4] = *(v6 + 64);
  v25[5] = v9;
  v10 = *(v6 + 16);
  v25[0] = *v6;
  v25[1] = v10;
  sub_242CA321C(&v16, v15, &qword_27ECF4660);
  sub_242C6D138(v25, &qword_27ECF4660);
  v11 = v23;
  *(v6 + 96) = v22;
  *(v6 + 112) = v11;
  *(v6 + 128) = v24;
  v12 = v19;
  *(v6 + 32) = v18;
  *(v6 + 48) = v12;
  v13 = v21;
  *(v6 + 64) = v20;
  *(v6 + 80) = v13;
  result = v17;
  *v6 = v16;
  *(v6 + 16) = result;
  return result;
}

__n128 Layout.systemUILayout.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Layout() + 40);
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
  sub_242C6D138(v12, &qword_27ECF4660);
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

uint64_t Layout.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for Layout();
  v10 = (v4 + *(result + 44));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t Layout.preview.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Layout() + 48));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a1 = v9[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v4;
  return sub_242CA321C(v9, &v8, &qword_27ECF4668);
}

double sub_242D740B4(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v3 = (a2 + *(type metadata accessor for Layout() + 48));
  *&v12[9] = *(v3 + 41);
  v4 = v3[1];
  v11[0] = *v3;
  v11[1] = v4;
  *v12 = v3[2];
  sub_242CA321C(&v8, &v7, &qword_27ECF4668);
  sub_242C6D138(v11, &qword_27ECF4668);
  v5 = v9;
  *v3 = v8;
  v3[1] = v5;
  v3[2] = v10[0];
  result = *(v10 + 9);
  *(v3 + 41) = *(v10 + 9);
  return result;
}

__n128 Layout.preview.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Layout() + 48));
  *&v8[9] = *(v3 + 41);
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  *v8 = v3[2];
  sub_242C6D138(v7, &qword_27ECF4668);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t Layout.wallpapers.getter()
{
  type metadata accessor for Layout();
}

uint64_t sub_242D7426C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Layout() + 52);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Layout.wallpapers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Layout() + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Layout.driveModes.getter()
{
  type metadata accessor for Layout();
}

uint64_t sub_242D74378(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Layout() + 56);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Layout.driveModes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Layout() + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Layout.init(id:template:displaySize:layoutType:systemUILayout:backgroundColor:safeAreaInsets:layoutStyleID:preview:wallpapers:driveModes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16)
{
  v118 = a5;
  v119 = a8;
  v120 = type metadata accessor for Zone();
  v106 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v100 - v32;
  v113 = *a3;
  v34 = a4[7];
  v131 = a4[6];
  v132 = v34;
  v133 = *(a4 + 128);
  v35 = a4[3];
  v127 = a4[2];
  v128 = v35;
  v36 = a4[5];
  v129 = a4[4];
  v130 = v36;
  v37 = a4[1];
  v125 = *a4;
  v126 = v37;
  v38 = *a6;
  v39 = a6[1];
  v114 = v38;
  v40 = a7[1];
  v134 = *a7;
  v135 = v40;
  v136[0] = a7[2];
  *(v136 + 9) = *(a7 + 41);
  v116 = a1;
  v112 = v33;
  sub_242CA321C(a1, v33, &qword_27ECF3028);
  v41 = (a2 + *(type metadata accessor for LayoutTemplate() + 20));
  v42 = v41[1];
  *&v109 = *v41;
  *(&v109 + 1) = v42;

  v115 = a2;
  v43 = LayoutTemplate.scaledZones(for:)(a10, a11);
  v44 = type metadata accessor for Layout();
  v45 = (a9 + v44[7]);
  *v45 = 0;
  v45[1] = 0;
  v46 = a9 + v44[10];
  sub_242D7C5C8(v137);
  v47 = v137[7];
  *(v46 + 96) = v137[6];
  *(v46 + 112) = v47;
  *(v46 + 128) = v138;
  v48 = v137[3];
  *(v46 + 32) = v137[2];
  *(v46 + 48) = v48;
  v49 = v137[5];
  *(v46 + 64) = v137[4];
  *(v46 + 80) = v49;
  v50 = v137[1];
  *v46 = v137[0];
  *(v46 + 16) = v50;
  *(v46 + 136) = 2;
  v51 = a9 + v44[12];
  *(v51 + 41) = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *v51 = 0u;
  *(v51 + 64) = 2;
  v52 = (a9 + v44[13]);
  v53 = MEMORY[0x277D84F90];
  *v52 = MEMORY[0x277D84F90];
  v52[1] = 2;
  v110 = v52;
  v111 = v43;
  v54 = v44[14];
  v117 = a9;
  v55 = (a9 + v54);
  *v55 = v53;
  v55[1] = 2;
  v107 = v55;
  v108 = v44;
  v56 = *(v43 + 16);
  v101 = v56;
  if (v56)
  {
    v102 = v51;
    v103 = v46;
    v104 = v45;
    v105 = v39;
    *&v121[0] = v53;
    sub_242E3BC70(0, v56, 0);
    v53 = *&v121[0];
    v57 = v43 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v58 = *(v106 + 72);
    v59 = v56;
    do
    {
      sub_242D7CE1C(v57, v30, type metadata accessor for Zone);
      v60 = &v30[*(v120 + 20)];
      v62 = *v60;
      v61 = *(v60 + 1);

      sub_242D7CD54(v30, type metadata accessor for Zone);
      *&v121[0] = v53;
      v64 = *(v53 + 16);
      v63 = *(v53 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_242E3BC70((v63 > 1), v64 + 1, 1);
        v53 = *&v121[0];
      }

      *(v53 + 16) = v64 + 1;
      v65 = v53 + 16 * v64;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      v57 += v58;
      --v59;
    }

    while (v59);
    v66 = v114;
    v45 = v104;
    v39 = v105;
    v51 = v102;
    v46 = v103;
  }

  else
  {
    v66 = v114;
  }

  v68 = sub_242C86440(v67);

  v69 = *(v68 + 16);

  v70 = *(v53 + 16);

  if (v69 == v70)
  {
    sub_242D7CD54(v115, type metadata accessor for LayoutTemplate);
    sub_242C6D138(v116, &qword_27ECF3028);
    v71 = v117;
    sub_242D7C5F8(v112, v117);
    v72 = v108;
    v73 = (v71 + v108[5]);
    v74 = *(&v109 + 1);
    *v73 = v109;
    v73[1] = v74;
    *(v71 + v72[6]) = v111;
    *(v71 + v72[9]) = v113;
    *(v71 + v72[8]) = v118;
    v75 = (v71 + v72[11]);
    *v75 = a12;
    v75[1] = a13;
    v75[2] = a14;
    v75[3] = a15;
    *v107 = a16;
    v76 = *(v46 + 112);
    v121[6] = *(v46 + 96);
    v121[7] = v76;
    v122 = *(v46 + 128);
    v77 = *(v46 + 48);
    v121[2] = *(v46 + 32);
    v121[3] = v77;
    v78 = *(v46 + 80);
    v121[4] = *(v46 + 64);
    v121[5] = v78;
    v79 = *(v46 + 16);
    v121[0] = *v46;
    v121[1] = v79;
    sub_242C6D138(v121, &qword_27ECF4660);
    v80 = v132;
    *(v46 + 96) = v131;
    *(v46 + 112) = v80;
    *(v46 + 128) = v133;
    v81 = v128;
    *(v46 + 32) = v127;
    *(v46 + 48) = v81;
    v82 = v130;
    *(v46 + 64) = v129;
    *(v46 + 80) = v82;
    v83 = v126;
    *v46 = v125;
    *(v46 + 16) = v83;

    *v45 = v66;
    v45[1] = v39;
    v84 = *(v51 + 16);
    v123[0] = *v51;
    v123[1] = v84;
    v124[0] = *(v51 + 32);
    *(v124 + 9) = *(v51 + 41);
    result = sub_242C6D138(v123, &qword_27ECF4668);
    v86 = v135;
    *v51 = v134;
    *(v51 + 16) = v86;
    *(v51 + 32) = v136[0];
    *(v51 + 41) = *(v136 + 9);
    *v110 = v119;
  }

  else
  {
    *&v121[0] = 0;
    *(&v121[0] + 1) = 0xE000000000000000;
    sub_242F05A80();

    v121[0] = v109;
    MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
    v87 = MEMORY[0x277D84F90];
    if (v101)
    {
      *&v123[0] = MEMORY[0x277D84F90];
      v88 = v101;
      sub_242E3BC70(0, v101, 0);
      v87 = *&v123[0];
      v89 = v111 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v90 = *(v106 + 72);
      do
      {
        sub_242D7CE1C(v89, v30, type metadata accessor for Zone);
        v92 = &v30[*(v120 + 20)];
        v93 = *v92;
        v94 = *(v92 + 1);

        sub_242D7CD54(v30, type metadata accessor for Zone);
        *&v123[0] = v87;
        v96 = *(v87 + 16);
        v95 = *(v87 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_242E3BC70((v95 > 1), v96 + 1, 1);
          v87 = *&v123[0];
        }

        *(v87 + 16) = v96 + 1;
        v91 = v87 + 16 * v96;
        *(v91 + 32) = v93;
        *(v91 + 40) = v94;
        v89 += v90;
        --v88;
      }

      while (v88);
    }

    v97 = MEMORY[0x245D26920](v87, MEMORY[0x277D837D0]);
    v99 = v98;

    MEMORY[0x245D26660](v97, v99);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Layout.init(id:displayName:zones:layoutType:systemUILayout:backgroundColor:safeAreaInsets:layoutStyleID:preview:wallpapers:driveModes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, uint64_t a15, uint64_t a16)
{
  v105 = a7;
  *&v106 = a2;
  *(&v106 + 1) = a3;
  v102 = a1;
  v108 = type metadata accessor for Zone();
  v25 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *a5;
  v28 = a6[7];
  v119 = a6[6];
  v120 = v28;
  v121 = *(a6 + 128);
  v29 = a6[3];
  v115 = a6[2];
  v116 = v29;
  v30 = a6[5];
  v117 = a6[4];
  v118 = v30;
  v31 = a6[1];
  v113 = *a6;
  v114 = v31;
  v32 = *a8;
  v103 = a8[1];
  v33 = a14[1];
  v122 = *a14;
  v123 = v33;
  v124[0] = a14[2];
  *(v124 + 9) = *(a14 + 41);
  v34 = type metadata accessor for Layout();
  v35 = (a9 + v34[7]);
  *v35 = 0;
  v35[1] = 0;
  v36 = a9 + v34[10];
  sub_242D7C5C8(v125);
  v37 = v125[7];
  *(v36 + 96) = v125[6];
  *(v36 + 112) = v37;
  *(v36 + 128) = v126;
  v38 = v125[3];
  *(v36 + 32) = v125[2];
  *(v36 + 48) = v38;
  v39 = v125[5];
  *(v36 + 64) = v125[4];
  *(v36 + 80) = v39;
  v40 = v125[1];
  *v36 = v125[0];
  *(v36 + 16) = v40;
  *(v36 + 136) = 2;
  v41 = a9 + v34[12];
  *(v41 + 41) = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  v100 = v41;
  v101 = v36;
  *(v41 + 64) = 2;
  v42 = (a9 + v34[13]);
  v43 = MEMORY[0x277D84F90];
  *v42 = MEMORY[0x277D84F90];
  v42[1] = 2;
  v99 = v42;
  v97 = v34;
  v44 = v34[14];
  v104 = a9;
  v45 = (a9 + v44);
  *v45 = v43;
  v45[1] = 2;
  v46 = *(a4 + 16);
  v92 = v25;
  v107 = v46;
  if (v46)
  {
    v93 = v45;
    v94 = v35;
    v95 = v32;
    *&v109[0] = v43;
    sub_242E3BC70(0, v46, 0);
    v43 = *&v109[0];
    v47 = *(v25 + 80);
    v96 = a4;
    v48 = a4 + ((v47 + 32) & ~v47);
    v49 = *(v25 + 72);
    v50 = v46;
    do
    {
      sub_242D7CE1C(v48, v27, type metadata accessor for Zone);
      v51 = &v27[*(v108 + 20)];
      v52 = *v51;
      v53 = *(v51 + 1);

      sub_242D7CD54(v27, type metadata accessor for Zone);
      *&v109[0] = v43;
      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_242E3BC70((v54 > 1), v55 + 1, 1);
        v43 = *&v109[0];
      }

      *(v43 + 16) = v55 + 1;
      v56 = v43 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v48 += v49;
      --v50;
    }

    while (v50);
    v32 = v95;
    a4 = v96;
    v45 = v93;
    v35 = v94;
  }

  v58 = sub_242C86440(v57);

  v59 = *(v58 + 16);

  v60 = *(v43 + 16);

  if (v59 == v60)
  {
    v61 = v104;
    sub_242D7C5F8(v102, v104);
    v62 = v97;
    v63 = (v61 + v97[5]);
    v64 = *(&v106 + 1);
    *v63 = v106;
    v63[1] = v64;
    *(v61 + v62[6]) = a4;
    *(v61 + v62[9]) = v98;
    *(v61 + v62[8]) = v105;
    v65 = (v61 + v62[11]);
    *v65 = a10;
    v65[1] = a11;
    v65[2] = a12;
    v65[3] = a13;
    *v45 = a16;
    v66 = v101;
    v67 = *(v101 + 112);
    v109[6] = *(v101 + 96);
    v109[7] = v67;
    v110 = *(v101 + 128);
    v68 = *(v101 + 48);
    v109[2] = *(v101 + 32);
    v109[3] = v68;
    v69 = *(v101 + 80);
    v109[4] = *(v101 + 64);
    v109[5] = v69;
    v70 = *(v101 + 16);
    v109[0] = *v101;
    v109[1] = v70;
    sub_242C6D138(v109, &qword_27ECF4660);
    v71 = v120;
    *(v66 + 96) = v119;
    *(v66 + 112) = v71;
    *(v66 + 128) = v121;
    v72 = v116;
    *(v66 + 32) = v115;
    *(v66 + 48) = v72;
    v73 = v118;
    *(v66 + 64) = v117;
    *(v66 + 80) = v73;
    v74 = v114;
    *v66 = v113;
    *(v66 + 16) = v74;

    v75 = v103;
    *v35 = v32;
    v35[1] = v75;
    v76 = v100;
    v77 = v100[1];
    v111[0] = *v100;
    v111[1] = v77;
    v112[0] = v100[2];
    *(v112 + 9) = *(v100 + 41);
    result = sub_242C6D138(v111, &qword_27ECF4668);
    v79 = v123;
    *v76 = v122;
    v76[1] = v79;
    v76[2] = v124[0];
    *(v76 + 41) = *(v124 + 9);
    *v99 = a15;
  }

  else
  {
    *&v109[0] = 0;
    *(&v109[0] + 1) = 0xE000000000000000;
    sub_242F05A80();

    v109[0] = v106;
    MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
    v80 = MEMORY[0x277D84F90];
    if (v107)
    {
      *&v111[0] = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v107, 0);
      v80 = *&v111[0];
      v81 = a4 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v82 = *(v92 + 72);
      do
      {
        sub_242D7CE1C(v81, v27, type metadata accessor for Zone);
        v84 = &v27[*(v108 + 20)];
        v85 = *v84;
        v86 = *(v84 + 1);

        sub_242D7CD54(v27, type metadata accessor for Zone);
        *&v111[0] = v80;
        v88 = *(v80 + 16);
        v87 = *(v80 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_242E3BC70((v87 > 1), v88 + 1, 1);
          v80 = *&v111[0];
        }

        *(v80 + 16) = v88 + 1;
        v83 = v80 + 16 * v88;
        *(v83 + 32) = v85;
        *(v83 + 40) = v86;
        v81 += v82;
        --v107;
      }

      while (v107);
    }

    v89 = MEMORY[0x245D26920](v80, MEMORY[0x277D837D0]);
    v91 = v90;

    MEMORY[0x245D26660](v89, v91);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Layout.resize(from:to:)(CGSize from, CGSize to)
{
  height = to.height;
  width = to.width;
  v5 = from.height;
  v6 = from.width;
  v7 = type metadata accessor for Slot();
  v122 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v101 - v11);
  v13 = type metadata accessor for Component();
  v105 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v101 - v17;
  v19 = type metadata accessor for Zone();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v101 - v24;
  v103 = *(type metadata accessor for Layout() + 24);
  v25 = *(v2 + v103);
  v26 = *(v25 + 16);
  if (v26)
  {
    v102 = v2;
    v111 = width / v6;
    v149 = MEMORY[0x277D84F90];
    v110 = height / v5;
    v112 = v26;
    sub_242E3BF10(0, v26, 0);
    v27 = 0;
    v129 = 0;
    v118 = v149;
    v109 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v108 = v25 + v109;
    v115 = v22;
    v121 = v13;
    v120 = v15;
    v119 = v18;
    v104 = v19;
    v106 = v20;
    v113 = v25;
    while (v27 < *(v25 + 16))
    {
      v28 = *(v20 + 72);
      v117 = v27;
      v116 = v28;
      v29 = v22;
      sub_242D7CE1C(v108 + v28 * v27, v22, type metadata accessor for Zone);
      v30 = v114;
      sub_242D7CE1C(v22, v114, type metadata accessor for Zone);
      v31 = (v30 + *(v19 + 24));
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      CGAffineTransformMakeScale(&v148, v111, v110);
      v150.origin.x = v32;
      v150.origin.y = v33;
      v150.size.width = v34;
      v150.size.height = v35;
      v151 = CGRectApplyAffineTransform(v150, &v148);
      *v31 = v151;
      if (v151.size.width == v34 && v151.size.height == v35)
      {
        sub_242D7CD54(v29, type metadata accessor for Zone);
        v95 = v30;
      }

      else
      {
        v37 = *(v19 + 28);
        v38 = *(v30 + v37);
        v39 = *(v38 + 16);
        if (v39)
        {
          v40 = v151.size.width;
          v41 = v151.size.height;
          v107 = *(v19 + 28);
          v147 = MEMORY[0x277D84F90];
          v126 = v38;
          sub_242E3BE90(0, v39, 0);
          v42 = 0;
          v133 = v147;
          v132 = (*(v105 + 80) + 32) & ~*(v105 + 80);
          v131 = v126 + v132;
          v43 = *(v105 + 72);
          v124 = v40;
          v123 = v41;
          v125 = v39;
          v130 = v43;
          do
          {
            sub_242D7CE1C(v131 + v43 * v42, v15, type metadata accessor for Component);
            sub_242D7CE1C(v15, v18, type metadata accessor for Component);
            v44 = &v18[*(v13 + 28)];
            v46 = *v44;
            v45 = v44[1];
            *v44 = v40;
            v44[1] = v41;
            if (v40 != v46 || v41 != v45)
            {
              v128 = *(v13 + 36);
              v48 = *&v18[v128];
              v49 = *(v48 + 16);
              if (v49)
              {
                v142 = v40 / v46;
                v146 = MEMORY[0x277D84F90];
                v134 = v41 / v45;
                sub_242E3BEB0(0, v49, 0);
                v50 = v146;
                v51 = (*(v122 + 80) + 32) & ~*(v122 + 80);
                v127 = v48;
                v52 = v48 + v51;
                v53 = *(v122 + 72);
                do
                {
                  sub_242D7CE1C(v52, v9, type metadata accessor for Slot);
                  sub_242D7CE1C(v9, v12, type metadata accessor for Slot);
                  v54 = v12[6];
                  v55 = v12[7];
                  v56 = v12[8];
                  v57 = v12[9];
                  v58 = v134;
                  CGAffineTransformMakeScale(&v148, v142, v134);
                  v152.origin.x = v54;
                  v152.origin.y = v55;
                  v152.size.width = v56;
                  v152.size.height = v57;
                  v153 = CGRectApplyAffineTransform(v152, &v148);
                  x = v153.origin.x;
                  y = v153.origin.y;
                  v143 = v153.size.height;
                  v144 = v153.size.width;
                  v60 = v12[10];
                  v59 = v12[11];
                  v61 = v12[13];
                  v138 = v12[12];
                  v153.origin.x = v54;
                  v153.origin.y = v55;
                  v153.size.width = v56;
                  v153.size.height = v57;
                  v140 = v59 + CGRectGetMinX(v153);
                  v154.origin.x = v54;
                  v154.origin.y = v55;
                  v154.size.width = v56;
                  v154.size.height = v57;
                  v139 = v60 + CGRectGetMinY(v154);
                  v155.origin.x = v54;
                  v155.origin.y = v55;
                  v155.size.width = v56;
                  v155.size.height = v57;
                  v62 = CGRectGetWidth(v155) - v61 - v59;
                  v156.origin.x = v54;
                  v156.origin.y = v55;
                  v156.size.width = v56;
                  v156.size.height = v57;
                  v63 = CGRectGetHeight(v156) - v138 - v60;
                  CGAffineTransformMakeScale(&v148, v142, v58);
                  v157.origin.x = v140;
                  v157.origin.y = v139;
                  v157.size.width = v62;
                  v157.size.height = v63;
                  v158 = CGRectApplyAffineTransform(v157, &v148);
                  v135 = v158.size.width;
                  v64 = v158.size.height;
                  v65 = v158.origin.x;
                  v137 = v158.origin.x;
                  v66 = v158.origin.y;
                  v136 = v158.origin.y;
                  MinY = CGRectGetMinY(v158);
                  v69 = v144;
                  v68 = x;
                  v159.origin.x = x;
                  v70 = y;
                  v159.origin.y = y;
                  v159.size.width = v144;
                  v71 = v143;
                  v159.size.height = v143;
                  v140 = MinY - CGRectGetMinY(v159);
                  v160.origin.x = v65;
                  v160.origin.y = v66;
                  v72 = v135;
                  v160.size.width = v135;
                  v160.size.height = v64;
                  MinX = CGRectGetMinX(v160);
                  v161.origin.x = v68;
                  v161.origin.y = v70;
                  v161.size.width = v69;
                  v161.size.height = v71;
                  v74 = v71;
                  v139 = MinX - CGRectGetMinX(v161);
                  v162.origin.x = v68;
                  v75 = v70;
                  v162.origin.y = v70;
                  v162.size.width = v69;
                  v76 = v74;
                  v162.size.height = v74;
                  MaxY = CGRectGetMaxY(v162);
                  v78 = v137;
                  v163.origin.x = v137;
                  v79 = v136;
                  v163.origin.y = v136;
                  v163.size.width = v72;
                  v163.size.height = v64;
                  v138 = MaxY - CGRectGetMaxY(v163);
                  v80 = v144;
                  v81 = x;
                  v164.origin.x = x;
                  v164.origin.y = v75;
                  v164.size.width = v144;
                  v164.size.height = v76;
                  MaxX = CGRectGetMaxX(v164);
                  v165.origin.x = v78;
                  v165.origin.y = v79;
                  v165.size.width = v72;
                  v165.size.height = v64;
                  v83 = CGRectGetMaxX(v165);
                  sub_242D7CD54(v9, type metadata accessor for Slot);
                  v12[6] = v81;
                  v12[7] = v75;
                  v84 = v143;
                  v12[8] = v80;
                  v12[9] = v84;
                  v85 = v139;
                  v12[10] = v140;
                  v12[11] = v85;
                  v12[12] = v138;
                  v12[13] = MaxX - v83;
                  v146 = v50;
                  v87 = *(v50 + 16);
                  v86 = *(v50 + 24);
                  if (v87 >= v86 >> 1)
                  {
                    sub_242E3BEB0(v86 > 1, v87 + 1, 1);
                    v50 = v146;
                  }

                  *(v50 + 16) = v87 + 1;
                  sub_242D7CDB4(v12, v50 + v51 + v87 * v53, type metadata accessor for Slot);
                  v52 += v53;
                  --v49;
                }

                while (v49);

                v13 = v121;
                v15 = v120;
                v18 = v119;
                v40 = v124;
                v41 = v123;
              }

              else
              {

                v50 = MEMORY[0x277D84F90];
              }

              v88 = v128;
              *&v18[v128] = v50;

              v90 = v129;
              v91 = sub_242DA5BDC(v89, v18);
              v129 = v90;
              swift_bridgeObjectRelease_n();
              *&v18[v88] = v91;
              v39 = v125;
            }

            sub_242D7CD54(v15, type metadata accessor for Component);
            v92 = v133;
            v147 = v133;
            v94 = *(v133 + 16);
            v93 = *(v133 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_242E3BE90(v93 > 1, v94 + 1, 1);
              v92 = v147;
            }

            ++v42;
            *(v92 + 16) = v94 + 1;
            v133 = v92;
            v43 = v130;
            sub_242D7CDB4(v18, v92 + v132 + v94 * v130, type metadata accessor for Component);
          }

          while (v42 != v39);
          sub_242D7CD54(v115, type metadata accessor for Zone);

          v95 = v114;
          *(v114 + v107) = v133;
          v19 = v104;
        }

        else
        {
          sub_242D7CD54(v115, type metadata accessor for Zone);

          *(v30 + v37) = MEMORY[0x277D84F90];
          v95 = v30;
        }

        v20 = v106;
      }

      v96 = v118;
      v149 = v118;
      v98 = *(v118 + 16);
      v97 = *(v118 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_242E3BF10(v97 > 1, v98 + 1, 1);
        v95 = v114;
        v96 = v149;
      }

      v99 = v117 + 1;
      *(v96 + 16) = v98 + 1;
      v118 = v96;
      sub_242D7CDB4(v95, v96 + v109 + v98 * v116, type metadata accessor for Zone);
      v27 = v99;
      v22 = v115;
      v25 = v113;
      if (v99 == v112)
      {

        v2 = v102;
        v100 = v118;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
LABEL_34:
    *(v2 + v103) = v100;
  }
}

uint64_t sub_242D75CE0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x73656E6F7ALL;
    v8 = 0x745374756F79616CLL;
    if (a1 != 3)
    {
      v8 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x77656976657270;
    v2 = 0x657061706C6C6177;
    if (a1 != 9)
    {
      v2 = 0x646F4D6576697264;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x795474756F79616CLL;
    v4 = 0x49556D6574737973;
    if (a1 != 6)
    {
      v4 = 0x6165724165666173;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242D75E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242D7E2F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D75EA0(uint64_t a1)
{
  v2 = sub_242D7C668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D75EDC(uint64_t a1)
{
  v2 = sub_242D7C668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Layout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-v7];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D7C668();
  sub_242F064C0();
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  sub_242D7C8E4(&qword_27ECF4678);
  sub_242F05F20();
  if (!v2)
  {
    v9 = type metadata accessor for Layout();
    LOBYTE(v39) = 1;
    sub_242F05EC0();
    *&v39 = *(v3 + v9[6]);
    LOBYTE(v29) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
    sub_242D7C9B8(&qword_27ECF4688, &qword_27ECF2578);
    sub_242F05F20();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    *&v39 = *v10;
    *(&v39 + 1) = v11;
    LOBYTE(v29) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0);
    sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0);
    sub_242F05EB0();

    *&v39 = *(v3 + v9[8]);
    LOBYTE(v29) = 4;
    sub_242C7C594();
    sub_242F05F20();
    v50 = *(v3 + v9[9]);
    v49 = 5;
    sub_242D7C6BC();
    sub_242F05F20();
    v12 = (v3 + v9[10]);
    v13 = v12[7];
    v45 = v12[6];
    v46 = v13;
    v14 = v12[3];
    v41 = v12[2];
    v42 = v14;
    v15 = v12[5];
    v43 = v12[4];
    v44 = v15;
    v16 = v12[1];
    v39 = *v12;
    v40 = v16;
    v17 = *(v12 + 17);
    v47 = *(v12 + 16);
    v48 = v17;
    v38 = 6;
    if ((qword_242F26F50[byte_27ECF3A00] | v17) != 0xFFFFFFFFFFFFFFFFLL)
    {
      v18 = v12[7];
      v35 = v12[6];
      v36 = v18;
      v37 = *(v12 + 128);
      v19 = v12[3];
      v31 = v12[2];
      v32 = v19;
      v20 = v12[5];
      v33 = v12[4];
      v34 = v20;
      v21 = v12[1];
      v29 = *v12;
      v30 = v21;
      if (sub_242D7C710(&v29) != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4660);
        sub_242D7C734();
        sub_242F05F20();
      }
    }

    v22 = (v3 + v9[11]);
    v23 = v22[1];
    v29 = *v22;
    v30 = v23;
    v38 = 7;
    sub_242CF4538();
    sub_242F05F20();
    v24 = (v3 + v9[12]);
    v25 = v24[1];
    v39 = *v24;
    v40 = v25;
    v26 = v24[3];
    v41 = v24[2];
    v42 = v26;
    *&v43 = *(v24 + 8);
    v28[15] = 8;
    if ((qword_242F26F50[byte_27ECF3A00] | v43) != 0xFFFFFFFFFFFFFFFFLL && v40)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4668);
      sub_242D7C80C();
      sub_242F05F20();
    }

    sub_242CDD224(*(v3 + v9[13]), *(v3 + v9[13] + 8), 9);
    sub_242CDD380(*(v3 + v9[14]), *(v3 + v9[14] + 8), 10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Layout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  MEMORY[0x28223BE20](v78);
  v79 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF46B8);
  v80 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = type metadata accessor for Layout();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[*(v8 + 28)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v135 = v11;
  v12 = &v10[*(v8 + 40)];
  sub_242D7C5C8(&v126);
  v13 = v133;
  *(v12 + 6) = v132;
  *(v12 + 7) = v13;
  v12[128] = v134;
  v14 = v129;
  *(v12 + 2) = v128;
  *(v12 + 3) = v14;
  v15 = v131;
  *(v12 + 4) = v130;
  *(v12 + 5) = v15;
  v16 = v127;
  *v12 = v126;
  *(v12 + 1) = v16;
  *(v12 + 17) = 2;
  v17 = &v10[v7[12]];
  *(v17 + 41) = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *v17 = 0u;
  v85 = v17;
  *(v17 + 8) = 2;
  v18 = &v10[v7[13]];
  v19 = MEMORY[0x277D84F90];
  *v18 = MEMORY[0x277D84F90];
  *(v18 + 1) = 2;
  v84 = v18;
  v20 = &v10[v7[14]];
  *v20 = v19;
  *(v20 + 1) = 2;
  v83 = v20;
  v21 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v21);
  sub_242D7C668();
  v22 = v82;
  sub_242F06480();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v81);

    v24 = *(v12 + 7);
    v123 = *(v12 + 6);
    v124 = v24;
    v125 = *(v12 + 8);
    v25 = *(v12 + 3);
    v119 = *(v12 + 2);
    v120 = v25;
    v26 = *(v12 + 5);
    v121 = *(v12 + 4);
    v122 = v26;
    v27 = *(v12 + 1);
    v117 = *v12;
    v118 = v27;
    sub_242C6D138(&v117, &qword_27ECF46C0);
    v28 = *(v85 + 3);
    v100 = *(v85 + 2);
    v101 = v28;
    *&v102 = *(v85 + 8);
    v29 = *(v85 + 1);
    v98 = *v85;
    v99 = v29;
    sub_242C6D138(&v98, &qword_27ECF46C8);
  }

  else
  {
    v82 = v7;
    v76 = v10;
    LOBYTE(v117) = 0;
    sub_242D7C8E4(&qword_27ECF46D0);
    v23 = v79;
    sub_242F05E00();
    v31 = v76;
    sub_242D7C5F8(v23, v76);
    LOBYTE(v117) = 1;
    v32 = sub_242F05DA0();
    v33 = v6;
    v34 = v82;
    v35 = (v31 + v82[5]);
    *v35 = v32;
    v35[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
    LOBYTE(v98) = 2;
    sub_242D7C9B8(&qword_27ECF46D8, &qword_27ECF2570);
    v79 = 0;
    sub_242F05E00();
    *(v31 + v34[6]) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0);
    LOBYTE(v98) = 3;
    sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0);
    sub_242F05D90();
    v37 = v33;
    v38 = v117;
    v39 = v135;

    *v39 = v38;
    LOBYTE(v98) = 4;
    sub_242C7C540();
    sub_242F05E00();
    v40 = v37;
    v41 = v82;
    v42 = v76;
    *&v76[v82[8]] = v117;
    LOBYTE(v98) = 5;
    sub_242D7CA54();
    sub_242F05E00();
    *(v42 + v41[9]) = v117;
    v107 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4660);
    sub_242D7CAA8();
    sub_242F05D90();
    v75 = v40;
    v78 = v4;
    v96[6] = v104;
    v96[7] = v105;
    v97 = v106;
    v96[2] = v100;
    v96[3] = v101;
    v96[4] = v102;
    v96[5] = v103;
    v96[0] = v98;
    v96[1] = v99;
    if (sub_242D7CB80(v96) == 1)
    {
      v123 = v104;
      v124 = v105;
      LOBYTE(v125) = v106;
      v119 = v100;
      v120 = v101;
      v121 = v102;
      v122 = v103;
      v117 = v98;
      v118 = v99;
      sub_242C6D138(&v117, &qword_27ECF46F8);
      v114 = v132;
      v115 = v133;
      LOBYTE(v116) = v134;
      v110 = v128;
      v111 = v129;
      v112 = v130;
      v113 = v131;
      v44 = v126;
      v43 = v127;
    }

    else
    {
      v114 = v104;
      v115 = v105;
      LOBYTE(v116) = v106;
      v110 = v100;
      v111 = v101;
      v112 = v102;
      v113 = v103;
      v44 = v98;
      v43 = v99;
    }

    v108 = v44;
    v109 = v43;
    v45 = v76;
    v46 = *(v12 + 7);
    v123 = *(v12 + 6);
    v124 = v46;
    v125 = *(v12 + 8);
    v47 = *(v12 + 3);
    v119 = *(v12 + 2);
    v120 = v47;
    v48 = *(v12 + 5);
    v121 = *(v12 + 4);
    v122 = v48;
    v49 = *(v12 + 1);
    v117 = *v12;
    v118 = v49;
    sub_242C6D138(&v117, &qword_27ECF46C0);
    v50 = v115;
    *(v12 + 6) = v114;
    *(v12 + 7) = v50;
    v51 = v116;
    v52 = v111;
    *(v12 + 2) = v110;
    *(v12 + 3) = v52;
    v53 = v113;
    *(v12 + 4) = v112;
    *(v12 + 5) = v53;
    v54 = v109;
    *v12 = v108;
    *(v12 + 1) = v54;
    *(v12 + 16) = v51;
    *(v12 + 17) = 7;
    LOBYTE(v92) = 7;
    sub_242CF43B8();
    sub_242F05E00();
    v55 = (v45 + v41[11]);
    v56 = v89;
    *v55 = v88;
    v55[1] = v56;
    v95 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4668);
    sub_242D7CBA4();
    sub_242F05D90();
    v57 = v93;
    if (v93 == 1)
    {
      v88 = v92;
      v89 = v93;
      v90[0] = *v94;
      *(v90 + 9) = *&v94[9];
      sub_242C6D138(&v88, &qword_27ECF4710);
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v79 = 0;
      v73 = 0;
      v74 = 0;
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v59 = *(&v92 + 1);
      v58 = v92;
      v79 = *(&v93 + 1);
      v60 = *&v94[16];
      v73 = *&v94[8];
      v74 = *v94;
      v61 = v94[24];
    }

    v62 = v85;
    v63 = *(v85 + 3);
    v90[0] = *(v85 + 2);
    v90[1] = v63;
    v91 = *(v85 + 8);
    v64 = *(v85 + 1);
    v88 = *v85;
    v89 = v64;
    sub_242C6D138(&v88, &qword_27ECF46C8);
    *v62 = v58;
    *(v62 + 1) = v59;
    v65 = v79;
    *(v62 + 2) = v57;
    *(v62 + 3) = v65;
    v66 = v73;
    *(v62 + 4) = v74;
    *(v62 + 5) = v66;
    *(v62 + 6) = v60;
    v62[56] = v61;
    *(v62 + 8) = 7;
    v87 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2190);
    sub_242D7CC7C();
    sub_242F05D90();
    v67 = v86;
    if (!v86)
    {
      v67 = MEMORY[0x277D84F90];
    }

    v68 = v84;

    *v68 = v67;
    *(v68 + 1) = 7;
    v87 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    sub_242C86D4C(&qword_27ECF01F0);
    sub_242F05D90();
    v69 = v86;
    if (!v86)
    {
      v69 = MEMORY[0x277D84F90];
    }

    (*(v80 + 8))(v75, v78);
    v70 = v83;

    *v70 = v69;
    *(v70 + 1) = 7;
    v71 = v76;
    sub_242D7CE1C(v76, v77, type metadata accessor for Layout);
    __swift_destroy_boxed_opaque_existential_2Tm(v81);
    return sub_242D7CD54(v71, type metadata accessor for Layout);
  }
}

uint64_t sub_242D770BC()
{
  sub_242F03720();
  sub_242D7D610(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

void *Layout.assets.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v1 - 8);
  v85 = &v79 - v2;
  v3 = type metadata accessor for Slot();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = type metadata accessor for Component();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Zone();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Layout();
  v80 = v0;
  v11 = *(v0 + *(v79 + 24));
  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_19:
    v25 = v15[2];
    if (v25)
    {
      v26 = *(v83 + 36);
      v27 = v15 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v86 = *(v84 + 72);
      v87 = v26;
      v28 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_242D7CE1C(v27, v6, type metadata accessor for Component);
        v29 = *&v6[v87];

        result = sub_242D7CD54(v6, type metadata accessor for Component);
        v30 = *(v29 + 16);
        v31 = v28[2];
        v32 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          goto LABEL_84;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v32 <= v28[3] >> 1)
        {
          if (*(v29 + 16))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v31 <= v32)
          {
            v33 = v31 + v30;
          }

          else
          {
            v33 = v31;
          }

          result = sub_242C83D88(result, v33, 1, v28);
          v28 = result;
          if (*(v29 + 16))
          {
LABEL_32:
            if ((v28[3] >> 1) - v28[2] < v30)
            {
              goto LABEL_89;
            }

            swift_arrayInitWithCopy();

            if (v30)
            {
              v34 = v28[2];
              v23 = __OFADD__(v34, v30);
              v35 = v34 + v30;
              if (v23)
              {
                goto LABEL_92;
              }

              v28[2] = v35;
            }

            goto LABEL_22;
          }
        }

        if (v30)
        {
          goto LABEL_85;
        }

LABEL_22:
        v27 += v86;
        if (!--v25)
        {

          goto LABEL_38;
        }
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_38:
    v36 = v28[2];
    v37 = v85;
    if (!v36)
    {

      v39 = MEMORY[0x277D84F90];
LABEL_79:
      v92[0] = v39;
      v69 = v79;
      v68 = v80;
      v70 = v80 + *(v79 + 48);
      v71 = *(v70 + 16);
      if (v71)
      {
        v73 = *(v70 + 24);
        v72 = *(v70 + 32);
        v75 = *v70;
        v74 = *(v70 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_242F09510;
        *(v76 + 56) = &type metadata for CAPackageAsset;
        *(v76 + 64) = &protocol witness table for CAPackageAsset;
        v77 = swift_allocObject();
        *(v76 + 32) = v77;
        v77[2] = v75;
        v77[3] = v74;
        v77[4] = v71;
        v77[5] = v73;
        v77[6] = v72;
        v78 = v75;

        sub_242C819FC(v76);
      }

      sub_242D721B4(*(v68 + *(v69 + 52)), v92);
      return v92[0];
    }

    v84 = 0;
    v38 = v28 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v39 = MEMORY[0x277D84F90];
    v40 = *(v82 + 36);
    v86 = *(v81 + 72);
    v87 = v40;
    v83 = xmmword_242F09510;
    while (1)
    {
      v41 = v88;
      sub_242D7CE1C(v38, v88, type metadata accessor for Slot);
      sub_242CA321C(v41 + v87, v37, &qword_27ECF0B08);
      v42 = type metadata accessor for Instrument();
      if ((*(*(v42 - 8) + 48))(v37, 1, v42) != 1)
      {
        break;
      }

      sub_242C6D138(v37, &qword_27ECF0B08);
      v43 = MEMORY[0x277D84F90];
LABEL_62:
      result = sub_242D7CD54(v88, type metadata accessor for Slot);
      v52 = v43[2];
      v53 = v39[2];
      v54 = v53 + v52;
      if (__OFADD__(v53, v52))
      {
        goto LABEL_86;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v54 > v39[3] >> 1)
      {
        if (v53 <= v54)
        {
          v55 = v53 + v52;
        }

        else
        {
          v55 = v53;
        }

        result = sub_242C82D10(result, v55, 1, v39);
        v39 = result;
      }

      if (v43[2])
      {
        if ((v39[3] >> 1) - v39[2] < v52)
        {
          goto LABEL_90;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0338);
        v37 = v85;
        swift_arrayInitWithCopy();

        if (v52)
        {
          v56 = v39[2];
          v23 = __OFADD__(v56, v52);
          v57 = v56 + v52;
          if (v23)
          {
            goto LABEL_93;
          }

          v39[2] = v57;
        }
      }

      else
      {

        if (v52)
        {
          goto LABEL_87;
        }
      }

      v38 += v86;
      if (!--v36)
      {

        goto LABEL_79;
      }
    }

    memcpy(v92, (v37 + *(v42 + 20)), 0x238uLL);
    v44 = sub_242C9E788(v92);
    if (v44 == 1)
    {
      v46 = sub_242C556B4(v92);
      memcpy(v91, v46, sizeof(v91));
      v47 = sub_242D3DE48(v91);
      if (v47 <= 2)
      {
        if (v47)
        {
          if (v47 == 1)
          {
            v49 = *(sub_242C65548(v91) + 8);
            swift_getKeyPath();

            v50 = v84;
            v43 = sub_242D47D30(v49, sub_242D49264);
            v84 = v50;
          }

          else
          {
            v58 = sub_242C65548(v91);
            v59 = *v58;
            v60 = *(v58 + 8);
            v61 = *(v58 + 24);
            v82 = *(v58 + 16);
            LODWORD(v81) = *(v58 + 32);
            v62 = *(v58 + 40);
            v63 = *(v58 + 48);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
            v43 = swift_allocObject();
            *(v43 + 1) = v83;
            v43[7] = &type metadata for VectorFont.Asset;
            v43[8] = &protocol witness table for VectorFont.Asset;
            v64 = swift_allocObject();
            v43[4] = v64;
            *(v64 + 16) = v59;
            *(v64 + 24) = v60;
            *(v64 + 32) = v82;
            *(v64 + 40) = v61;
            *(v64 + 48) = v81;
            *(v64 + 56) = v62;
            *(v64 + 64) = v63;
            v65 = v63;
          }

          v37 = v85;
          goto LABEL_61;
        }
      }

      else
      {
        if (v47 > 4)
        {
          if (v47 == 5)
          {
            v51 = sub_242C65548(v91);
            memcpy(v90, v51, 0x164uLL);
            switch(sub_242D4926C(v90))
            {
              case 6u:
                v67 = sub_242C5904C(v90);
                memcpy(v89, v67, sizeof(v89));
                sub_242D49294(v89);
                sub_242C59070(v89);
                goto LABEL_60;
              case 8u:
              case 9u:
              case 0xAu:
                v66 = sub_242C5904C(v90);
                *&v89[176] = v66[11];
                *&v89[192] = v66[12];
                *&v89[208] = v66[13];
                *&v89[224] = v66[14];
                *&v89[112] = v66[7];
                *&v89[128] = v66[8];
                *&v89[144] = v66[9];
                *&v89[160] = v66[10];
                *&v89[48] = v66[3];
                *&v89[64] = v66[4];
                *&v89[80] = v66[5];
                *&v89[96] = v66[6];
                *v89 = *v66;
                *&v89[16] = v66[1];
                *&v89[32] = v66[2];
                v43 = Instrument.GaugeStyle.TicksConfiguration.assets.getter();
                break;
              default:
                sub_242C5904C(v90);
                goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_60;
        }

        if (v47 == 3)
        {
          v48 = sub_242C65548(v91);
          memcpy(v90, v48, sizeof(v90));
          v43 = TextElementConfiguration.assets.getter();
          goto LABEL_61;
        }
      }

      sub_242C65548(v91);
    }

    else if (v44 == 2)
    {
      v45 = sub_242C556B4(v92);
      memcpy(v91, (v45 + 8), 0x1D0uLL);
      if (sub_242C9E7A4(v91) != 1)
      {
        memcpy(v90, v91, 0x1D0uLL);
        v43 = Instrument.IndicatorStyle.CriticalConfiguration.assets.getter();
LABEL_61:
        sub_242D7CD54(v37, type metadata accessor for Instrument);
        goto LABEL_62;
      }
    }

LABEL_60:
    v43 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

  v13 = *(v7 + 28);
  v14 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v86 = *(v8 + 72);
  v87 = v13;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_242D7CE1C(v14, v10, type metadata accessor for Zone);
    v17 = *&v10[v87];

    result = sub_242D7CD54(v10, type metadata accessor for Zone);
    v18 = *(v17 + 16);
    v19 = v15[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v20 <= v15[3] >> 1)
    {
      if (!*(v17 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = sub_242C83620(result, v21, 1, v15);
      v15 = result;
      if (!*(v17 + 16))
      {
LABEL_3:

        if (v18)
        {
          goto LABEL_83;
        }

        goto LABEL_4;
      }
    }

    if ((v15[3] >> 1) - v15[2] < v18)
    {
      goto LABEL_88;
    }

    swift_arrayInitWithCopy();

    if (v18)
    {
      v22 = v15[2];
      v23 = __OFADD__(v22, v18);
      v24 = v22 + v18;
      if (v23)
      {
        goto LABEL_91;
      }

      v15[2] = v24;
    }

LABEL_4:
    v14 += v86;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t Layout.Preview.assets.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_242F09510;
  *(v6 + 56) = &type metadata for CAPackageAsset;
  *(v6 + 64) = &protocol witness table for CAPackageAsset;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  v8 = v1;

  return v6;
}

void Layout.restoreAssets(from:)(uint64_t a1)
{
  v3 = v2;
  v4 = MEMORY[0x28223BE20](a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v291 = &v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v285 = &v238 - v8;
  v287 = type metadata accessor for Instrument();
  v364 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v247 = &v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = v1;
  v10 = Layout.preview.modify();
  v12 = *(v11 + 16);
  v289 = v4;
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    v16 = v4[3];
    v15 = v4[4];
    __swift_project_boxed_opaque_existential_2Tm(v4, v16);
    v362[0] = 1;
    if ((*(v15 + 24))(v362, v16, v15))
    {
      v17 = v4[3];
      v18 = v4[4];
      __swift_project_boxed_opaque_existential_2Tm(v4, v17);
      v19 = *(v13 + 8);
      v20 = *(v13 + 16);
      LOBYTE(v362[0]) = 0;
      v21 = (*(v18 + 8))(v19, v20, v362, v17, v18);
      if (v2)
      {
        v14(v363, 1);
        return;
      }

      v22 = *v13;
      *v13 = v21;
    }

    v14(v363, 0);
  }

  else
  {
    (v10)(v363, 0);
  }

  v23 = type metadata accessor for Layout();
  v24 = *(v23 + 52);
  v25 = *(v288 + v24);
  v26 = *(v25 + 2);
  if (!v26)
  {
LABEL_15:
    v284 = *(v23 + 24);
    v29 = *(v288 + v284);
    v239 = v29[2];
    if (!v239)
    {
      return;
    }

    v30 = 0;
    v290 = (v364 + 6);
    v244 = &v317[376];
    v245 = &v361;
    v283 = (v364 + 7);
    v31 = v247;
    v32 = v285;
    v33 = v287;
    while (1)
    {
      if (v30 >= v29[2])
      {
        goto LABEL_134;
      }

      v34 = type metadata accessor for Zone();
      v35 = *(v34 - 8);
      v302 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v301 = *(v35 + 72) * v30;
      v303 = v34;
      v243 = *(*(v29 + v302 + v301 + *(v34 + 28)) + 16);
      if (v243)
      {
        break;
      }

LABEL_104:
      if (++v30 == v239)
      {
        return;
      }
    }

    v36 = 0;
    v300 = v30;
    while (1)
    {
      if (v30 >= v29[2])
      {
        goto LABEL_132;
      }

      v37 = *(v29 + v302 + v301 + *(v303 + 28));
      if (v36 >= *(v37 + 16))
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        return;
      }

      v38 = type metadata accessor for Component();
      v39 = *(v38 - 8);
      v298 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v297 = *(v39 + 72) * v36;
      v299 = v38;
      v292 = *(*(v37 + v298 + v297 + *(v38 + 36)) + 16);
      if (v292)
      {
        break;
      }

LABEL_20:
      ++v36;
      v30 = v300;
      if (v36 == v243)
      {
        goto LABEL_104;
      }
    }

    v40 = 0;
    v293 = v36;
    while (1)
    {
      if (v300 >= v29[2])
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v234 = *(v33 + 71);

LABEL_118:
        v31 = v247;
        v230 = v259;
        v231 = v249;
LABEL_119:
        v232 = v256;
LABEL_120:
        v133 = v281;
        v233 = v257;
        goto LABEL_121;
      }

      v41 = *(v29 + v302 + v301 + *(v303 + 28));
      if (v36 >= *(v41 + 16))
      {
        goto LABEL_115;
      }

      v42 = *(v41 + v298 + v297 + *(v299 + 36));
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_116;
      }

      v364 = v29;
      v43 = type metadata accessor for Slot();
      v44 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
      v294 = *(*(v43 - 8) + 72) * v40;
      v295 = v44;
      v296 = v43;
      sub_242CA321C(v42 + v44 + v294 + *(v43 + 36), v32, &qword_27ECF0B08);
      if ((*v290)(v32, 1, v33) == 1)
      {
        sub_242C6D138(v32, &qword_27ECF0B08);
        v36 = v293;
        v29 = v364;
        goto LABEL_26;
      }

      sub_242D7CDB4(v32, v31, type metadata accessor for Instrument);
      v45 = *(v33 + 5);
      memcpy(v362, (v31 + v45), sizeof(v362));
      memcpy(v363, (v31 + v45), 0x238uLL);
      v46 = sub_242C9E788(v363);
      if (v46 == 1)
      {
        break;
      }

      if (v46 == 2)
      {
        v47 = sub_242C556B4(v363);
        memcpy(v315, v47, 0x200uLL);
        memcpy(v318, (v47 + 8), 0x1D0uLL);
        memmove(v319, (v47 + 8), 0x1D0uLL);
        v48 = sub_242C9E7A4(v319);
        v36 = v293;
        if (v48 == 1)
        {
          memcpy(v317, v362, sizeof(v317));
          v49 = sub_242C556B4(v317);
          sub_242CA321C(v49, v316, &qword_27ECF4730);
          v29 = v364;
        }

        else
        {
          v275 = v45;
          v286 = v3;
          v254 = v319[0];
          v258 = v319[1];
          v273 = v319[2];
          v280 = v319[3];
          v53 = v320;
          v312[0] = *v321;
          *(v312 + 3) = *&v321[3];
          v54 = v322;
          v257 = v324;
          v276 = v325;
          v252 = v326;
          v253 = v323;
          v279 = v327;
          *(v311 + 3) = *&v328[3];
          v311[0] = *v328;
          v272 = v329;
          v251 = v330;
          v256 = v331;
          v267 = v332;
          v249 = v333;
          LODWORD(v282) = v334;
          v310[0] = *v335;
          *(v310 + 3) = *&v335[3];
          v271 = v336;
          v250 = v337;
          v255 = v338;
          v281 = v339;
          v248 = v340;
          v278 = v341;
          *(v309 + 3) = *&v342[3];
          v309[0] = *v342;
          v268 = v343;
          v263 = v344;
          v264 = v345;
          *v314 = v346;
          *&v314[16] = v347;
          v274 = v348;
          v265 = v349;
          v260 = v350;
          v259 = v351;
          v307 = v352;
          v308 = v353;
          *&v313[5] = v245[10];
          v269 = v354;
          v305 = v358;
          v306 = v359;
          v55 = *(v245 + 1);
          v313[0] = *v245;
          v313[1] = v55;
          v56 = *(v245 + 2);
          v57 = *(v245 + 4);
          v313[3] = *(v245 + 3);
          v313[4] = v57;
          v313[2] = v56;
          v277 = v356;
          v266 = v357;
          v261 = v360;
          v262 = v355;
          v59 = v289[3];
          v58 = v289[4];
          __swift_project_boxed_opaque_existential_2Tm(v289, v59);
          v246 = v54;
          *v316 = v54;
          v60 = *(v58 + 24);
          sub_242CF6BA4(v362, v317);
          sub_242D66F08(v318, v317);
          v61 = v60(v316, v59, v58);
          v270 = v53;
          if (v61)
          {
            if (v53 < 0)
            {
              v33 = v316;
              v87 = v254;
              *v317 = v254;
              *&v317[8] = v258;
              v88 = v273;
              *&v317[16] = v273;
              v89 = v280;
              *&v317[24] = v280;
              v90 = v254;

              v91 = v286;
              ImageAsset.LocalizedImage.restore(from:)(v289);
              if (v91)
              {
                goto LABEL_117;
              }

              v286 = *v317;
              v242 = *&v317[8];
              v92 = *&v317[16];
              v93 = *&v317[24];
              sub_242C7F724(v87, v258, v88, v89, v270);
              v270 = 128;
              v73 = v93;
              v69 = 0;
              v273 = v92;
              v258 = v242;
              v254 = v286;
            }

            else
            {
              v62 = v289[4];
              v242 = v289[3];
              v240 = v62;
              __swift_project_boxed_opaque_existential_2Tm(v289, v242);
              v317[0] = 0;
              v241 = *(v62 + 8);
              v63 = v273;
              v64 = v273;
              v65 = v258;

              v66 = v254;
              v67 = v286;
              v68 = (v241)(v254, v65, v317, v242, v240);
              v69 = v67;
              if (v67)
              {
                goto LABEL_106;
              }

              v70 = v68;

              v71 = v270 & 1;
              v72 = v65;
              v73 = v280;
              sub_242C7F724(v66, v72, v63, v280, v270);
              v270 = v71;
              v273 = v70;
            }
          }

          else
          {
            v69 = v286;
            v73 = v280;
          }

          v280 = v73;
          v94 = v289[3];
          v95 = v289[4];
          __swift_project_boxed_opaque_existential_2Tm(v289, v94);
          *v317 = v272;
          if ((*(v95 + 24))(v317, v94, v95))
          {
            if (v279 < 0)
            {
              v106 = v252;
              v105 = v253;
              *v317 = v253;
              *&v317[8] = v257;
              v107 = v276;
              *&v317[16] = v276;
              *&v317[24] = v252;
              v108 = v253;

              ImageAsset.LocalizedImage.restore(from:)(v289);
              if (v69)
              {
                v235 = *v317;

                v31 = v247;
                v230 = v259;
                v231 = v249;
                v232 = v256;
                v233 = v257;
                v133 = v281;
                goto LABEL_122;
              }

              v286 = *v317;
              v242 = *&v317[8];
              v109 = *&v317[16];
              v110 = *&v317[24];
              sub_242C7F724(v105, v257, v107, v106, v279);
              v279 = 128;
              v252 = v110;
              v69 = 0;
              v276 = v109;
              v257 = v242;
              v253 = v286;
            }

            else
            {
              v96 = v289[3];
              v241 = v289[4];
              v97 = v241;
              __swift_project_boxed_opaque_existential_2Tm(v289, v96);
              v317[0] = 0;
              v286 = v69;
              v242 = v97[1];
              v98 = v276;
              v99 = v257;

              v100 = v253;
              v101 = v286;
              v102 = v242(v253, v99, v317, v96, v241);
              v69 = v101;
              if (v101)
              {

                v31 = v247;
                v230 = v259;
                v231 = v249;
                v232 = v256;
                v133 = v281;
                v233 = v99;
                goto LABEL_121;
              }

              v103 = v102;

              v104 = v279 & 1;
              sub_242C7F724(v100, v99, v276, v252, v279);
              v279 = v104;
              v276 = v103;
            }
          }

          v111 = v282;
          v112 = v289[3];
          v113 = v289[4];
          __swift_project_boxed_opaque_existential_2Tm(v289, v112);
          *v317 = v271;
          if ((*(v113 + 24))(v317, v112, v113))
          {
            if (v111 < 0)
            {
              v123 = v251;
              *v317 = v251;
              *&v317[8] = v256;
              v124 = v267;
              *&v317[16] = v267;
              v125 = v249;
              *&v317[24] = v249;
              v126 = v251;

              ImageAsset.LocalizedImage.restore(from:)(v289);
              if (v69)
              {
                v236 = *v317;

                v31 = v247;
                v230 = v259;
                v231 = v125;
                goto LABEL_119;
              }

              v242 = *v317;
              v127 = *&v317[8];
              v128 = *&v317[16];
              v286 = 0;
              v129 = *&v317[24];
              sub_242C7F724(v123, v256, v124, v125, v282);
              v111 = 128;
              v251 = v242;
              v256 = v127;
              v267 = v128;
              v249 = v129;
              v69 = v286;
            }

            else
            {
              v114 = v289[4];
              v242 = v289[3];
              v240 = v114;
              __swift_project_boxed_opaque_existential_2Tm(v289, v242);
              v317[0] = 0;
              v286 = v69;
              v241 = *(v114 + 8);
              v115 = v267;
              v116 = v267;
              v117 = v256;

              v118 = v251;
              v119 = v286;
              v120 = (v241)(v251, v117, v317, v242, v240);
              v69 = v119;
              if (v119)
              {

                v31 = v247;
                v230 = v259;
                v231 = v249;
                v232 = v117;
                goto LABEL_120;
              }

              v121 = v120;

              v122 = v282 & 1;
              sub_242C7F724(v118, v117, v115, v249, v282);
              v267 = v121;
              v111 = v122;
            }
          }

          v130 = v289[3];
          v131 = v289[4];
          __swift_project_boxed_opaque_existential_2Tm(v289, v130);
          *v317 = v268;
          v132 = (*(v131 + 24))(v317, v130, v131);
          LODWORD(v282) = v111;
          if (v132)
          {
            v133 = v281;
            if (v278 < 0)
            {
              v142 = v250;
              *v317 = v250;
              *&v317[8] = v255;
              *&v317[16] = v281;
              v143 = v248;
              *&v317[24] = v248;
              v144 = v250;

              ImageAsset.LocalizedImage.restore(from:)(v289);
              if (v69)
              {
                v237 = *v317;

                v31 = v247;
                v230 = v259;
                v231 = v249;
                v232 = v256;
                v233 = v257;
LABEL_121:
                v107 = v276;
LABEL_122:
                memcpy(v317, v315, 0x200uLL);
                sub_242D671B4(v317);
                *v316 = v254;
                *&v316[8] = v258;
                *&v316[16] = v273;
                *&v316[24] = v280;
                v316[32] = v270;
                *&v316[40] = v246;
                *&v316[48] = v253;
                *&v316[33] = v312[0];
                *&v316[36] = *(v312 + 3);
                *&v316[56] = v233;
                *&v316[64] = v107;
                *&v316[72] = v252;
                v316[80] = v279;
                *&v316[81] = v311[0];
                *&v316[84] = *(v311 + 3);
                *&v316[88] = v272;
                *&v316[96] = v251;
                *&v316[104] = v232;
                *&v316[112] = v267;
                *&v316[120] = v231;
                v316[128] = v282;
                *&v316[132] = *(v310 + 3);
                *&v316[129] = v310[0];
                *&v316[136] = v271;
                *&v316[144] = v250;
                *&v316[152] = v255;
                *&v316[160] = v133;
                *&v316[168] = v248;
                v316[176] = v278;
                *&v316[180] = *(v309 + 3);
                *&v316[177] = v309[0];
                *&v316[184] = v268;
                *&v316[192] = v263;
                *&v316[200] = v264;
                *&v316[208] = *v314;
                *&v316[224] = *&v314[16];
                *&v316[240] = v274;
                *&v316[248] = v265;
                *&v316[256] = v260;
                *&v316[264] = v230;
                *&v316[272] = v307;
                *&v316[288] = v308;
                *&v316[304] = v269;
                *&v316[312] = v262;
                *&v316[320] = v277;
                *&v316[328] = v266;
                *&v316[336] = v305;
                *&v316[352] = v306;
                *&v316[368] = v261;
                *&v316[376] = v313[0];
                *&v316[392] = v313[1];
                *&v316[424] = v313[3];
                *&v316[440] = v313[4];
                *&v316[408] = v313[2];
                *&v316[456] = *&v313[5];
                sub_242D671E4(v316);
LABEL_123:
                sub_242D7CD54(v31, type metadata accessor for Instrument);
                return;
              }

              v286 = 0;
              v145 = *v317;
              v146 = v143;
              v147 = v133;
              v148 = *&v317[8];
              v149 = *&v317[16];
              v150 = *&v317[24];
              sub_242C7F724(v142, v255, v147, v146, v278);
              v278 = 128;
              v250 = v145;
              v255 = v148;
              v139 = v149;
              v248 = v150;
            }

            else
            {
              v134 = v289[4];
              v242 = v289[3];
              __swift_project_boxed_opaque_existential_2Tm(v289, v242);
              v317[0] = 0;
              v286 = v69;
              v241 = *(v134 + 8);
              v64 = v133;
              v135 = v250;
              v136 = v255;

              v137 = v286;
              v138 = (v241)(v135, v136, v317, v242, v134);
              if (v137)
              {
LABEL_106:

LABEL_107:

                goto LABEL_118;
              }

              v139 = v138;
              v286 = 0;

              v140 = v278 & 1;
              sub_242C7F724(v135, v136, v281, v248, v278);
              v278 = v140;
            }

            v31 = v247;
            v141 = v259;
          }

          else
          {
            v286 = v69;
            v31 = v247;
            v141 = v259;
            v139 = v281;
          }

          v281 = v139;
          *&v316[16] = *v314;
          *&v316[32] = *&v314[16];
          *&v316[80] = v307;
          *&v316[96] = v308;
          *&v316[144] = v305;
          *&v316[160] = v306;
          *&v316[200] = v313[1];
          *&v316[184] = v313[0];
          *&v316[248] = v313[4];
          *&v316[232] = v313[3];
          *&v316[264] = *&v313[5];
          *&v316[216] = v313[2];
          v151 = v263;
          v152 = v264;
          *v316 = v263;
          *&v316[8] = v264;
          *&v316[48] = v274;
          *&v316[56] = v265;
          v153 = v260;
          *&v316[64] = v260;
          v154 = v141;
          *&v316[72] = v141;
          *&v316[112] = v269;
          *&v316[120] = v262;
          *&v316[128] = v277;
          *&v316[136] = v266;
          *&v316[176] = v261;
          if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v316) == 1)
          {
            memcpy(v317, &v315[8], 0x1D0uLL);
            sub_242D66F40(v317);
            v155 = v153;
            v33 = v287;
            v156 = v249;
            v157 = v266;
            v158 = v261;
            v159 = v269;
            v160 = v274;
            v161 = v154;
            v3 = v286;
          }

          else
          {
            v162 = v289;
            v163 = v289[3];
            v164 = v289[4];
            __swift_project_boxed_opaque_existential_2Tm(v289, v163);
            v317[0] = 1;
            v165 = *(v164 + 8);

            v166 = v286;
            v167 = v165(v151, v152, v317, v163, v164);
            if (v166)
            {
              goto LABEL_107;
            }

            v286 = v167;

            v168 = v162[3];
            v169 = v162[4];
            __swift_project_boxed_opaque_existential_2Tm(v162, v168);
            v317[0] = 1;
            v170 = *(v169 + 8);
            v171 = v259;

            v242 = v170(v260, v171, v317, v168, v169);

            v172 = v162[3];
            v173 = v162[4];
            __swift_project_boxed_opaque_existential_2Tm(v162, v172);
            v304 = 1;
            v174 = *(v173 + 8);
            v157 = v266;

            v3 = 0;
            v158 = v174(v277, v157, &v304, v172, v173);

            memcpy(v317, &v315[8], 0x1D0uLL);
            sub_242D66F40(v317);
            v160 = v286;
            v33 = v287;
            v159 = v242;
            v31 = v247;
            v36 = v293;
            v161 = v259;
            v155 = v260;
            v156 = v249;
          }

          *v317 = v254;
          *&v317[8] = v258;
          *&v317[16] = v273;
          *&v317[24] = v280;
          *&v317[33] = v312[0];
          *&v317[36] = *(v312 + 3);
          *&v317[81] = v311[0];
          *&v317[84] = *(v311 + 3);
          *&v317[129] = v310[0];
          *&v317[132] = *(v310 + 3);
          *&v317[180] = *(v309 + 3);
          *&v317[177] = v309[0];
          v175 = v244;
          *(v244 + 10) = *&v313[5];
          *&v317[208] = *v314;
          *&v317[224] = *&v314[16];
          *&v317[272] = v307;
          *&v317[288] = v308;
          *&v317[336] = v305;
          *&v317[352] = v306;
          v176 = v313[3];
          v175[2] = v313[2];
          v175[3] = v176;
          v175[4] = v313[4];
          v177 = v313[1];
          *v175 = v313[0];
          v175[1] = v177;
          v317[32] = v270;
          *&v317[40] = v246;
          *&v317[48] = v253;
          *&v317[56] = v257;
          *&v317[64] = v276;
          *&v317[72] = v252;
          v317[80] = v279;
          *&v317[88] = v272;
          *&v317[96] = v251;
          *&v317[104] = v256;
          *&v317[112] = v267;
          *&v317[120] = v156;
          v317[128] = v282;
          *&v317[136] = v271;
          *&v317[144] = v250;
          *&v317[152] = v255;
          *&v317[160] = v281;
          *&v317[168] = v248;
          v317[176] = v278;
          *&v317[184] = v268;
          *&v317[192] = v263;
          *&v317[200] = v264;
          *&v317[240] = v160;
          *&v317[248] = v265;
          *&v317[256] = v155;
          *&v317[264] = v161;
          *&v317[304] = v159;
          *&v317[312] = v262;
          *&v317[320] = v277;
          *&v317[328] = v157;
          *&v317[368] = v158;
          nullsub_2(v317);
          memcpy(&v315[8], v317, 0x1D0uLL);
          v29 = v364;
          v45 = v275;
        }

        memcpy(v316, (v31 + v45), sizeof(v316));
        sub_242CF6C60(v316);
        memcpy(v317, v315, 0x200uLL);
        sub_242D7CF4C(v317);
        v178 = (v31 + v45);
        v179 = v317;
        goto LABEL_93;
      }

      v36 = v293;
      v29 = v364;
LABEL_94:
      v220 = v291;
      sub_242D7CE1C(v31, v291, type metadata accessor for Instrument);
      (*v283)(v220, 0, 1, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_242D37E6C(v29);
      }

      if (v300 >= v29[2])
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v221 = v29 + v302 + v301;
      v222 = *(v303 + 28);
      v223 = *&v221[v222];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v221[v222] = v223;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v223 = sub_242D37E58(v223);
        *&v221[v222] = v223;
      }

      if (v36 >= v223[2])
      {
        goto LABEL_129;
      }

      v225 = v223 + v298 + v297;
      v226 = *(v299 + 36);
      v227 = *&v225[v226];
      v228 = swift_isUniquelyReferenced_nonNull_native();
      *&v225[v226] = v227;
      if ((v228 & 1) == 0)
      {
        *&v225[v226] = sub_242D37EBC(v227);
      }

      sub_242D7CD54(v31, type metadata accessor for Instrument);
      v229 = *&v225[v226];
      if (v40 >= *(v229 + 16))
      {
        goto LABEL_130;
      }

      sub_242CF42A0(v291, v229 + v295 + v294 + *(v296 + 36));
      v33 = v287;
      v32 = v285;
      *(v288 + v284) = v29;
LABEL_26:
      if (v292 == ++v40)
      {
        goto LABEL_20;
      }
    }

    v50 = sub_242C556B4(v363);
    memcpy(v317, v50, sizeof(v317));
    memcpy(v318, v50, sizeof(v318));
    memmove(v319, v50, 0x228uLL);
    v51 = sub_242D3DE48(v319);
    if (v51 <= 2)
    {
      v36 = v293;
      if (v51)
      {
        v275 = v45;
        if (v51 == 1)
        {
          v74 = sub_242C65548(v319);
          v313[0] = *v74;
          v313[1] = *(v74 + 16);
          v313[2] = *(v74 + 32);
          LOBYTE(v313[3]) = *(v74 + 48);
          sub_242CF6BA4(v362, v316);
          sub_242D48070(v318, v316);
          ImageGroupConfiguration.restoreAssets(from:)(v289);
          v29 = v364;
          if (v3)
          {
            *v316 = v313[0];
            *&v316[16] = v313[1];
            *&v316[32] = v313[2];
            v316[48] = v313[3];
            sub_242D49348(v316);
            goto LABEL_113;
          }

          memcpy(v315, v317, 0x228uLL);
          sub_242D480A8(v315);
          *v316 = v313[0];
          *&v316[16] = v313[1];
          *&v316[32] = v313[2];
          v316[48] = v313[3];
          sub_242D48BB0(v316);
          memcpy(v317, v316, 0x228uLL);
          v45 = v275;
        }

        else
        {
          v79 = sub_242C65548(v319);
          v80 = *v79;
          v81 = *(v79 + 8);
          v282 = *(v79 + 48);
          v313[0] = *v79;
          v313[1] = *(v79 + 16);
          v313[2] = *(v79 + 32);
          *v314 = *(v79 + 56);
          *&v314[10] = *(v79 + 66);
          v82 = v289[3];
          v83 = v289[4];
          __swift_project_boxed_opaque_existential_2Tm(v289, v82);
          LOBYTE(v307) = 1;
          v286 = v3;
          v281 = *(v83 + 8);
          sub_242CF6BA4(v362, v316);
          sub_242D48070(v318, v316);

          v84 = v286;
          v85 = (v281)(v80, v81, &v307, v82, v83);
          v3 = v84;
          v29 = v364;
          if (v84)
          {

            *v316 = v313[0];
            *&v316[16] = v313[1];
            *&v316[32] = v313[2];
            *&v316[48] = v282;
            *&v316[56] = *v314;
            *&v316[66] = *&v314[10];
            sub_242D492F4(v316);
            v31 = v247;
LABEL_113:
            memcpy(v316, v317, sizeof(v316));
            sub_242D482B4(v316);
            goto LABEL_123;
          }

          v86 = v85;

          memcpy(v315, v317, 0x228uLL);
          sub_242D480A8(v315);

          *v316 = v313[0];
          *&v316[16] = v313[1];
          *&v316[32] = v313[2];
          *&v316[56] = *v314;
          *&v316[66] = *&v314[10];
          *&v316[48] = v86;
          sub_242D48AF4(v316);
          memcpy(v317, v316, 0x228uLL);
          v31 = v247;
          v33 = v287;
          v45 = v275;
        }

        goto LABEL_92;
      }
    }

    else
    {
      if (v51 > 4)
      {
        v36 = v293;
        if (v51 == 5)
        {
          v75 = sub_242C65548(v319);
          memcpy(v313, v75, 0x164uLL);
          v76 = sub_242D4926C(v313);
          v29 = v364;
          switch(v76)
          {
            case 6:
              v206 = sub_242C5904C(v313);
              memcpy(v316, v206, 0x164uLL);
              sub_242D49294(v316);
              sub_242C59070(v316);
              memcpy(v315, v206, 0x164uLL);
              sub_242D7CF24(v315);
              v77 = v315;
              break;
            case 8:
              v207 = sub_242C5904C(v313);
              v208 = *v207;
              v209 = *(v207 + 16);
              v210 = *(v207 + 48);
              *&v316[32] = *(v207 + 32);
              *&v316[48] = v210;
              *v316 = v208;
              *&v316[16] = v209;
              v211 = *(v207 + 64);
              v212 = *(v207 + 80);
              v213 = *(v207 + 112);
              *&v316[96] = *(v207 + 96);
              *&v316[112] = v213;
              *&v316[64] = v211;
              *&v316[80] = v212;
              v214 = *(v207 + 128);
              v215 = *(v207 + 144);
              v216 = *(v207 + 176);
              *&v316[160] = *(v207 + 160);
              *&v316[176] = v216;
              *&v316[128] = v214;
              *&v316[144] = v215;
              v217 = *(v207 + 192);
              v218 = *(v207 + 208);
              v219 = *(v207 + 224);
              *&v316[239] = *(v207 + 239);
              *&v316[208] = v218;
              *&v316[224] = v219;
              *&v316[192] = v217;
              sub_242D7CF00(v316);
              goto LABEL_89;
            case 9:
              v180 = sub_242C5904C(v313);
              v181 = *v180;
              v182 = *(v180 + 16);
              v183 = *(v180 + 48);
              *&v316[32] = *(v180 + 32);
              *&v316[48] = v183;
              *v316 = v181;
              *&v316[16] = v182;
              v184 = *(v180 + 64);
              v185 = *(v180 + 80);
              v186 = *(v180 + 112);
              *&v316[96] = *(v180 + 96);
              *&v316[112] = v186;
              *&v316[64] = v184;
              *&v316[80] = v185;
              v187 = *(v180 + 128);
              v188 = *(v180 + 144);
              v189 = *(v180 + 176);
              *&v316[160] = *(v180 + 160);
              *&v316[176] = v189;
              *&v316[128] = v187;
              *&v316[144] = v188;
              v190 = *(v180 + 192);
              v191 = *(v180 + 208);
              v192 = *(v180 + 224);
              *&v316[239] = *(v180 + 239);
              *&v316[208] = v191;
              *&v316[224] = v192;
              *&v316[192] = v190;
              sub_242D7CED8(v316);
              goto LABEL_89;
            case 10:
              v193 = sub_242C5904C(v313);
              v194 = *v193;
              v195 = *(v193 + 16);
              v196 = *(v193 + 48);
              *&v316[32] = *(v193 + 32);
              *&v316[48] = v196;
              *v316 = v194;
              *&v316[16] = v195;
              v197 = *(v193 + 64);
              v198 = *(v193 + 80);
              v199 = *(v193 + 112);
              *&v316[96] = *(v193 + 96);
              *&v316[112] = v199;
              *&v316[64] = v197;
              *&v316[80] = v198;
              v200 = *(v193 + 128);
              v201 = *(v193 + 144);
              v202 = *(v193 + 176);
              *&v316[160] = *(v193 + 160);
              *&v316[176] = v202;
              *&v316[128] = v200;
              *&v316[144] = v201;
              v203 = *(v193 + 192);
              v204 = *(v193 + 208);
              v205 = *(v193 + 224);
              *&v316[239] = *(v193 + 239);
              *&v316[208] = v204;
              *&v316[224] = v205;
              *&v316[192] = v203;
              sub_242D7CEB0(v316);
LABEL_89:
              v77 = v316;
              break;
            default:
              sub_242C5904C(v313);
              v77 = v75;
              break;
          }

          memcpy(v314, v77, sizeof(v314));
          memcpy(v315, v317, 0x228uLL);
          sub_242CF6BA4(v362, v316);
          sub_242D48070(v318, v316);
          sub_242D480A8(v315);
          memcpy(v316, v314, 0x164uLL);
          sub_242D4888C(v316);
LABEL_91:
          memcpy(v317, v316, 0x228uLL);
          goto LABEL_92;
        }

LABEL_53:
        memcpy(v316, v362, sizeof(v316));
        v78 = sub_242C556B4(v316);
        sub_242CA321C(v78, v315, &qword_27ECF4728);
        v29 = v364;
LABEL_92:
        memcpy(v315, (v31 + v45), sizeof(v315));
        sub_242CF6C60(v315);
        memcpy(v316, v317, sizeof(v316));
        sub_242D7CE84(v316);
        v178 = (v31 + v45);
        v179 = v316;
LABEL_93:
        memcpy(v178, v179, 0x238uLL);
        goto LABEL_94;
      }

      v36 = v293;
      if (v51 == 3)
      {
        v52 = sub_242C65548(v319);
        memcpy(v315, v52, 0x228uLL);
        sub_242CF6BA4(v362, v316);
        sub_242D48070(v318, v316);
        TextElementConfiguration.restoreAssets(from:)(v289);
        v29 = v364;
        if (v3)
        {
          memcpy(v316, v315, 0x228uLL);
          sub_242D4939C(v316);
          goto LABEL_113;
        }

        memcpy(v313, v317, 0x228uLL);
        sub_242D480A8(v313);
        memcpy(v316, v315, 0x228uLL);
        sub_242D48A38(v316);
        goto LABEL_91;
      }
    }

    sub_242C65548(v319);
    goto LABEL_53;
  }

  v27 = 0;
  v28 = 32;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_242D37EA8(v25);
    }

    if (v27 >= *(v25 + 2))
    {
      goto LABEL_131;
    }

    Wallpaper.restoreAssets(from:)(v289);
    *(v288 + v24) = v25;
    if (v2)
    {
      break;
    }

    ++v27;
    v28 += 152;
    if (v26 == v27)
    {
      goto LABEL_15;
    }
  }
}

void Layout.Preview.restoreAssets(from:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v5);
  v14 = 1;
  if ((*(v6 + 24))(&v14, v5, v6))
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v7);
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    v13 = 0;
    v11 = (*(v8 + 8))(v9, v10, &v13, v7, v8);
    if (!v2)
    {
      v12 = v11;

      *v3 = v12;
    }
  }
}

uint64_t Layout.updating(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = type metadata accessor for Zone();
  v90 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v88 - v9;
  v11 = type metadata accessor for Layout();
  v12 = *(a1 + v11[6]);
  v109[2] = v3;
  v13 = sub_242CE8B08(sub_242D7CF78, v109, v12);
  v102 = v10;
  sub_242CA321C(v3, v10, &qword_27ECF3028);
  v14 = (a1 + v11[5]);
  v15 = v14[1];
  *&v99 = *v14;
  v16 = v11[10];
  v97 = *(a1 + v11[9]);
  v17 = *(a1 + v16 + 48);
  v116 = *(a1 + v16 + 32);
  v117 = v17;
  v122 = *(a1 + v16 + 128);
  v18 = *(a1 + v16 + 112);
  v120 = *(a1 + v16 + 96);
  v121 = v18;
  v19 = *(a1 + v16 + 80);
  v118 = *(a1 + v16 + 64);
  v119 = v19;
  v20 = *(a1 + v16 + 16);
  v114 = *(a1 + v16);
  v115 = v20;
  v21 = v11[7];
  v106 = *(a1 + v11[8]);
  v22 = v11[12];
  v23 = (a1 + v11[11]);
  v24 = v23[1];
  v92 = *v23;
  v93 = v24;
  v26 = *(a1 + v21);
  v25 = *(a1 + v21 + 8);
  *(v125 + 9) = *(a1 + v22 + 41);
  v27 = *(a1 + v22 + 32);
  v124 = *(a1 + v22 + 16);
  v125[0] = v27;
  v123 = *(a1 + v22);
  v28 = v11[14];
  v107 = *(a1 + v11[13]);
  v105 = *(a1 + v28);
  v29 = (a2 + v11[7]);
  *v29 = 0;
  v29[1] = 0;
  v98 = v29;
  v30 = a2 + v11[10];
  sub_242D7C5C8(v126);
  v31 = v126[5];
  v32 = v126[7];
  *(v30 + 96) = v126[6];
  *(v30 + 112) = v32;
  *(v30 + 128) = v127;
  v33 = v126[1];
  v34 = v126[3];
  *(v30 + 32) = v126[2];
  *(v30 + 48) = v34;
  *(v30 + 64) = v126[4];
  *(v30 + 80) = v31;
  *v30 = v126[0];
  *(v30 + 16) = v33;
  *(v30 + 136) = 2;
  v35 = a2 + v11[12];
  *(v35 + 41) = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  *v35 = 0u;
  v95 = v30;
  v96 = v35;
  *(v35 + 64) = 2;
  v36 = (a2 + v11[13]);
  v37 = MEMORY[0x277D84F90];
  *v36 = MEMORY[0x277D84F90];
  v36[1] = 2;
  v94 = v36;
  v103 = v11;
  v104 = v13;
  v38 = (a2 + v11[14]);
  *v38 = v37;
  v38[1] = 2;
  v91 = v38;
  v39 = *(v13 + 16);
  v100 = v25;
  v101 = v26;
  *(&v99 + 1) = v15;
  v88 = v39;
  if (v39)
  {
    v89 = a2;

    sub_242CA321C(&v114, v112, &qword_27ECF4660);

    sub_242CA321C(&v123, v112, &qword_27ECF4668);
    *&v112[0] = v37;

    sub_242E3BC70(0, v39, 0);
    v37 = *&v112[0];
    v40 = v13 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v41 = *(v90 + 72);
    do
    {
      sub_242D7CE1C(v40, v7, type metadata accessor for Zone);
      v42 = &v7[*(v108 + 20)];
      v44 = *v42;
      v43 = *(v42 + 1);

      sub_242D7CD54(v7, type metadata accessor for Zone);
      *&v112[0] = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_242E3BC70((v45 > 1), v46 + 1, 1);
        v37 = *&v112[0];
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      v40 += v41;
      --v39;
    }

    while (v39);
    a2 = v89;
    v48 = v106;
    v49 = v107;
    v50 = v105;
  }

  else
  {

    sub_242CA321C(&v114, v112, &qword_27ECF4660);

    v48 = v106;

    sub_242CA321C(&v123, v112, &qword_27ECF4668);
    v49 = v107;
  }

  v52 = sub_242C86440(v51);

  v53 = *(v52 + 16);

  v54 = *(v37 + 16);

  if (v53 == v54)
  {
    sub_242D7C5F8(v102, a2);
    v55 = v103;
    v56 = (a2 + v103[5]);
    v57 = *(&v99 + 1);
    *v56 = v99;
    v56[1] = v57;
    *(a2 + v55[6]) = v104;
    *(a2 + v55[9]) = v97;
    *(a2 + v55[8]) = v48;
    v58 = (a2 + v55[11]);
    v59 = v93;
    *v58 = v92;
    v58[1] = v59;
    *v91 = v50;
    v60 = v95;
    v61 = *(v95 + 112);
    v112[6] = *(v95 + 96);
    v112[7] = v61;
    v113 = *(v95 + 128);
    v62 = *(v95 + 48);
    v112[2] = *(v95 + 32);
    v112[3] = v62;
    v63 = *(v95 + 80);
    v112[4] = *(v95 + 64);
    v112[5] = v63;
    v64 = *(v95 + 16);
    v112[0] = *v95;
    v112[1] = v64;
    sub_242C6D138(v112, &qword_27ECF4660);
    v65 = v121;
    *(v60 + 96) = v120;
    *(v60 + 112) = v65;
    *(v60 + 128) = v122;
    v66 = v117;
    *(v60 + 32) = v116;
    *(v60 + 48) = v66;
    v67 = v119;
    *(v60 + 64) = v118;
    *(v60 + 80) = v67;
    v68 = v115;
    *v60 = v114;
    *(v60 + 16) = v68;
    v69 = v98;

    v70 = v100;
    *v69 = v101;
    v69[1] = v70;
    v71 = v96;
    v72 = v96[1];
    v110[0] = *v96;
    v110[1] = v72;
    v111[0] = v96[2];
    *(v111 + 9) = *(v96 + 41);
    result = sub_242C6D138(v110, &qword_27ECF4668);
    v74 = v124;
    *v71 = v123;
    v71[1] = v74;
    v71[2] = v125[0];
    *(v71 + 41) = *(v125 + 9);
    *v94 = v49;
  }

  else
  {
    *&v112[0] = 0;
    *(&v112[0] + 1) = 0xE000000000000000;
    sub_242F05A80();

    v112[0] = v99;
    MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
    v75 = MEMORY[0x277D84F90];
    if (v88)
    {
      *&v110[0] = MEMORY[0x277D84F90];
      v76 = v88;
      sub_242E3BC70(0, v88, 0);
      v75 = *&v110[0];
      v77 = v104 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v78 = *(v90 + 72);
      do
      {
        sub_242D7CE1C(v77, v7, type metadata accessor for Zone);
        v80 = &v7[*(v108 + 20)];
        v81 = *v80;
        v82 = *(v80 + 1);

        sub_242D7CD54(v7, type metadata accessor for Zone);
        *&v110[0] = v75;
        v84 = *(v75 + 16);
        v83 = *(v75 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_242E3BC70((v83 > 1), v84 + 1, 1);
          v75 = *&v110[0];
        }

        *(v75 + 16) = v84 + 1;
        v79 = v75 + 16 * v84;
        *(v79 + 32) = v81;
        *(v79 + 40) = v82;
        v77 += v78;
        --v76;
      }

      while (v76);
    }

    v85 = MEMORY[0x245D26920](v75, MEMORY[0x277D837D0]);
    v87 = v86;

    MEMORY[0x245D26660](v85, v87);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242D7A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for Zone();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a2 + *(type metadata accessor for Layout() + 24));
  v16 = a1;
  sub_242CE8BC4(sub_242D7E718, v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_242C6D138(v8, &qword_27ECF31B8);
    return sub_242D7CE1C(a1, a3, type metadata accessor for Zone);
  }

  else
  {
    sub_242D7CDB4(v8, v12, type metadata accessor for Zone);
    Zone.updating(with:)(a1, a3);
    return sub_242D7CD54(v12, type metadata accessor for Zone);
  }
}

uint64_t sub_242D7A660(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Zone() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110() & 1;
  }
}

uint64_t Layout.isUserSelectable.getter()
{
  if (*(v0 + *(type metadata accessor for Layout() + 36)) == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_242F06110();
  }

  return v1 & 1;
}

uint64_t sub_242D7A7AC()
{
  if (*v0)
  {
    return 0x796C6E4F6B726164;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_242D7A7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x796C6E4F6B726164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D7A8C4(uint64_t a1)
{
  v2 = sub_242D7CF98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D7A900(uint64_t a1)
{
  v2 = sub_242D7CF98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D7A93C(uint64_t a1)
{
  v2 = sub_242D7CFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D7A978(uint64_t a1)
{
  v2 = sub_242D7CFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D7A9B4()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_242D7A9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D7AABC(uint64_t a1)
{
  v2 = sub_242D7D0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D7AAF8(uint64_t a1)
{
  v2 = sub_242D7D0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Layout.Preview.AppearanceState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4738);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4740);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4748);
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v20 - v10;
  v12 = v1[1];
  v26 = *v1;
  v21 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D7CF98();
  sub_242F064C0();
  if (v13)
  {
    LOBYTE(v30) = 1;
    sub_242D7CFEC();
    v14 = v28;
    sub_242F05E40();
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4760);
    sub_242D7D040();
    v15 = v23;
    sub_242F05F20();
    v16 = *(v22 + 8);
    v17 = v5;
LABEL_6:
    v16(v17, v15);
    return (*(v9 + 8))(v11, v14);
  }

  LOBYTE(v30) = 0;
  sub_242D7D0F8();
  v14 = v28;
  sub_242F05E40();
  v30 = v26;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4760);
  sub_242D7D040();
  v15 = v25;
  v18 = v27;
  sub_242F05F20();
  if (!v18)
  {
    v30 = v21;
    v29 = 1;
    sub_242F05F20();
    v16 = *(v24 + 8);
    v17 = v8;
    goto LABEL_6;
  }

  (*(v24 + 8))(v8, v15);
  return (*(v9 + 8))(v11, v14);
}

uint64_t Layout.Preview.AppearanceState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    v4 = *(v1 + 8);
    MEMORY[0x245D279A0](0);
    sub_242C7A268(a1, v3);
    v3 = v4;
  }

  return sub_242C7A268(a1, v3);
}

uint64_t Layout.Preview.AppearanceState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_242F06390();
  if (v3)
  {
    MEMORY[0x245D279A0](1);
    v2 = v1;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(v5, v1);
  }

  sub_242C7A268(v5, v2);
  return sub_242F063E0();
}

uint64_t Layout.Preview.AppearanceState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4778);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v28[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4780);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4788);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-v10];
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  sub_242D7CF98();
  v13 = v34;
  sub_242F06480();
  if (!v13)
  {
    v14 = v33;
    v34 = v9;
    v15 = sub_242F05E10();
    v16 = (2 * *(v15 + 16)) | 1;
    v38 = v15;
    v39 = v15 + 32;
    v40 = 0;
    v41 = v16;
    v17 = sub_242C7FBE4();
    if (v17 == 2 || v40 != v41 >> 1)
    {
      v20 = sub_242F05B10();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v22 = &type metadata for Layout.Preview.AppearanceState;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = v17;
      if (v17)
      {
        LOBYTE(v42) = 1;
        sub_242D7CFEC();
        sub_242F05D10();
        v18 = v34;
        v19 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4760);
        sub_242D7D14C();
        sub_242F05E00();
        (*(v30 + 8))(v4, v14);
        (*(v18 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v25 = 0;
        v26 = v42;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_242D7D0F8();
        sub_242F05D10();
        v24 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4760);
        LOBYTE(v37) = 0;
        sub_242D7D14C();
        v27 = v5;
        sub_242F05E00();
        v26 = v42;
        v36 = 1;
        sub_242F05E00();
        (*(v31 + 8))(v7, v27);
        (*(v24 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v25 = v37;
        v19 = v32;
      }

      *v19 = v26;
      *(v19 + 8) = v25;
      *(v19 + 16) = v29 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v35);
}

uint64_t sub_242D7B5D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_242F06390();
  if (v3)
  {
    MEMORY[0x245D279A0](1);
    v2 = v1;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(v5, v1);
  }

  sub_242C7A268(v5, v2);
  return sub_242F063E0();
}

uint64_t sub_242D7B65C(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    v4 = *(v1 + 8);
    MEMORY[0x245D279A0](0);
    sub_242C7A268(a1, v3);
    v3 = v4;
  }

  return sub_242C7A268(a1, v3);
}

uint64_t sub_242D7B6D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_242F06390();
  if (v3)
  {
    MEMORY[0x245D279A0](1);
    v2 = v1;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(v5, v1);
  }

  sub_242C7A268(v5, v2);
  return sub_242F063E0();
}

uint64_t Layout.Preview.package.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  v6 = v5;
}

__n128 Layout.Preview.package.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *v1;

  result = v5;
  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Layout.Preview.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_242D7D204(v2, v3, v4);
}

uint64_t Layout.Preview.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242D7D240(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

__n128 Layout.Preview.init(package:stateForPaletteID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  return result;
}

__n128 Layout.Preview.init(package:state:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = a2[1].n128_u8[0];
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  return result;
}

uint64_t sub_242D7B904()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x6567616B636170;
  }
}

uint64_t sub_242D7B93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242D7BA14(uint64_t a1)
{
  v2 = sub_242D7D28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D7BA50(uint64_t a1)
{
  v2 = sub_242D7D28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Layout.Preview.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4798);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v6;
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = v9;
  v28 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D7D28C();
  v11 = v7;

  sub_242F064C0();
  v23 = v7;
  v24 = v20;
  v25 = v8;
  v26 = v19;
  v27 = v10;
  v12 = v3;
  v29 = 0;
  sub_242D7D2E0();
  v13 = v21;
  sub_242F05F20();
  v14 = v23;

  if (!v13)
  {
    v23 = v18;
    v24 = v17;
    LOBYTE(v25) = v28;
    v29 = 1;
    sub_242D7D204(v18, v17, v28);
    sub_242D7D334();
    sub_242F05F20();
    sub_242D7D240(v23, v24, v25);
  }

  return (*(v22 + 8))(v5, v12);
}

uint64_t Layout.Preview.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  if (*v1)
  {
    sub_242F063B0();
    v7 = v3;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F04DD0();
  sub_242F04DD0();
  if (v6)
  {
    MEMORY[0x245D279A0](1);
    v5 = v4;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(a1, v4);
  }

  return sub_242C7A268(a1, v5);
}

uint64_t Layout.Preview.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_242F06390();
  sub_242F063B0();
  if (v1)
  {
    v5 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F04DD0();
  if (v4)
  {
    MEMORY[0x245D279A0](1);
    v3 = v2;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(v7, v2);
  }

  sub_242C7A268(v7, v3);
  return sub_242F063E0();
}

void Layout.Preview.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF47B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D7D28C();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_242D7D388();
    sub_242F05E00();
    v20 = v26;
    v21 = v25;
    v9 = v27;
    v19 = v28;
    v10 = v29;
    v37 = 1;
    sub_242D7D3DC();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v18 = v33;
    v17 = v34;
    v11 = v35;
    v36 = v35;
    v12 = v20;
    v13 = v21;
    *&v22 = v21;
    *(&v22 + 1) = v20;
    v14 = v19;
    *&v23 = v9;
    *(&v23 + 1) = v19;
    *v24 = v10;
    *&v24[8] = v33;
    *&v24[16] = v34;
    v24[24] = v35;
    v15 = v23;
    *a2 = v22;
    a2[1] = v15;
    a2[2] = *v24;
    *(a2 + 41) = *&v24[9];
    sub_242D7D430(&v22, &v25);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v25 = v13;
    v26 = v12;
    v27 = v9;
    v28 = v14;
    v29 = v10;
    v30 = v18;
    v31 = v17;
    v32 = v11;
    sub_242D7D468(&v25);
  }
}

uint64_t sub_242D7C138()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_242F09510;
  *(v6 + 56) = &type metadata for CAPackageAsset;
  *(v6 + 64) = &protocol witness table for CAPackageAsset;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  v8 = v1;

  return v6;
}

uint64_t sub_242D7C240()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_242F06390();
  sub_242F063B0();
  if (v1)
  {
    v5 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F04DD0();
  if (v4)
  {
    MEMORY[0x245D279A0](1);
    v3 = v2;
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242C7A268(v7, v2);
  }

  sub_242C7A268(v7, v3);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI6LayoutV7PreviewV15AppearanceStateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v4 = 1;
      sub_242D7D204(*a2, *(a2 + 8), 1);
      sub_242D7D204(v2, v3, 1);
      v8 = sub_242C741EC(v2, v5);
      v7 = 1;
      goto LABEL_6;
    }

LABEL_5:
    sub_242D7D204(*a2, *(a2 + 8), v7);
    sub_242D7D204(v2, v3, v4);
    v8 = 0;
    goto LABEL_6;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  sub_242D7D204(*a2, *(a2 + 8), 0);
  sub_242D7D204(v2, v3, 0);
  v4 = 0;
  v7 = 0;
  v8 = 0;
  if (sub_242C741EC(v2, v5))
  {
    v8 = sub_242C741EC(v3, v6);
    v4 = 0;
    v7 = 0;
  }

LABEL_6:
  sub_242D7D240(v2, v3, v4);
  sub_242D7D240(v5, v6, v7);
  return v8 & 1;
}

uint64_t _s14CarPlayAssetUI6LayoutV7PreviewV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  v19 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 56);
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *(a2 + 56);
  v24 = *a1;
  v25 = v3;
  v26 = v2;
  v27 = v4;
  v20 = *a2;
  v21 = v8;
  v22 = v7;
  v23 = v10;
  v13 = v20;

  v14 = v24;

  LOBYTE(v3) = _s14CarPlayAssetUI09CAPackageC0V2eeoiySbAC_ACtFZ_0(&v24, &v20);
  v15 = v20;

  v16 = v24;

  if (v3)
  {
    *&v24 = v19;
    *(&v24 + 1) = v5;
    LOBYTE(v25) = v6;
    *&v20 = v9;
    *(&v20 + 1) = v11;
    LOBYTE(v21) = v12;
    sub_242D7D204(v19, v5, v6);
    sub_242D7D204(v9, v11, v12);
    v17 = _s14CarPlayAssetUI6LayoutV7PreviewV15AppearanceStateO2eeoiySbAG_AGtFZ_0(&v24, &v20);
    sub_242D7D240(v20, *(&v20 + 1), v21);
    sub_242D7D240(v24, *(&v24 + 1), v25);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

double sub_242D7C5C8(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_242D7C5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242D7C668()
{
  result = qword_27ECF4670;
  if (!qword_27ECF4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4670);
  }

  return result;
}

unint64_t sub_242D7C6BC()
{
  result = qword_27ECF4690;
  if (!qword_27ECF4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4690);
  }

  return result;
}

uint64_t sub_242D7C710(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

unint64_t sub_242D7C734()
{
  result = qword_27ECF4698;
  if (!qword_27ECF4698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4660);
    sub_242D7C7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4698);
  }

  return result;
}

unint64_t sub_242D7C7B8()
{
  result = qword_27ECF46A0;
  if (!qword_27ECF46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46A0);
  }

  return result;
}

unint64_t sub_242D7C80C()
{
  result = qword_27ECF46A8;
  if (!qword_27ECF46A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4668);
    sub_242D7C890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46A8);
  }

  return result;
}

unint64_t sub_242D7C890()
{
  result = qword_27ECF46B0;
  if (!qword_27ECF46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46B0);
  }

  return result;
}

uint64_t sub_242D7C8E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF3028);
    v3 = MEMORY[0x277CC95F0];
    sub_242D7D610(&qword_27ECF2158, MEMORY[0x277CC95F0]);
    sub_242D7D610(&qword_27ECF2160, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242D7C9B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4680);
    sub_242D7D610(a2, type metadata accessor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242D7CA54()
{
  result = qword_27ECF46E0;
  if (!qword_27ECF46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46E0);
  }

  return result;
}

unint64_t sub_242D7CAA8()
{
  result = qword_27ECF46E8;
  if (!qword_27ECF46E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4660);
    sub_242D7CB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46E8);
  }

  return result;
}

unint64_t sub_242D7CB2C()
{
  result = qword_27ECF46F0;
  if (!qword_27ECF46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF46F0);
  }

  return result;
}

uint64_t sub_242D7CB80(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_242D7CBA4()
{
  result = qword_27ECF4700;
  if (!qword_27ECF4700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4668);
    sub_242D7CC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4700);
  }

  return result;
}

unint64_t sub_242D7CC28()
{
  result = qword_27ECF4708;
  if (!qword_27ECF4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4708);
  }

  return result;
}

unint64_t sub_242D7CC7C()
{
  result = qword_27ECF4718;
  if (!qword_27ECF4718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2190);
    sub_242D7CD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4718);
  }

  return result;
}

unint64_t sub_242D7CD00()
{
  result = qword_27ECF4720;
  if (!qword_27ECF4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4720);
  }

  return result;
}

uint64_t sub_242D7CD54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242D7CDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D7CE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_242D7CE84(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x1000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

uint64_t sub_242D7CEB0(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x80000000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x8000000000000000;
  *(result + 344) = v1;
  return result;
}

uint64_t sub_242D7CED8(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x80000000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x4000000000000000;
  *(result + 344) = v1;
  return result;
}

uint64_t sub_242D7CF00(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x80000000000000;
  *(result + 264) &= 0xC3FFFFFFFFuLL;
  *(result + 344) = v1;
  return result;
}

uint64_t sub_242D7CF24(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x800000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x8000000000000000;
  *(result + 344) = v1;
  return result;
}

void *sub_242D7CF4C(void *result)
{
  v1 = result[67] & 0xFE00000000000007;
  v2 = result[69] & 1 | 0x2000000000000000;
  result[64] &= 7uLL;
  result[67] = v1;
  result[69] = v2;
  return result;
}

unint64_t sub_242D7CF98()
{
  result = qword_27ECF4750;
  if (!qword_27ECF4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4750);
  }

  return result;
}

unint64_t sub_242D7CFEC()
{
  result = qword_27ECF4758;
  if (!qword_27ECF4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4758);
  }

  return result;
}

unint64_t sub_242D7D040()
{
  result = qword_27ECF4768;
  if (!qword_27ECF4768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4760);
    sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4768);
  }

  return result;
}

unint64_t sub_242D7D0F8()
{
  result = qword_27ECF4770;
  if (!qword_27ECF4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4770);
  }

  return result;
}

unint64_t sub_242D7D14C()
{
  result = qword_27ECF4790;
  if (!qword_27ECF4790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4760);
    sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4790);
  }

  return result;
}

uint64_t sub_242D7D204(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_242D7D240(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_242D7D28C()
{
  result = qword_27ECF47A0;
  if (!qword_27ECF47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47A0);
  }

  return result;
}

unint64_t sub_242D7D2E0()
{
  result = qword_27ECF47A8;
  if (!qword_27ECF47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47A8);
  }

  return result;
}

unint64_t sub_242D7D334()
{
  result = qword_27ECF47B0;
  if (!qword_27ECF47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47B0);
  }

  return result;
}

unint64_t sub_242D7D388()
{
  result = qword_27ECF47C0;
  if (!qword_27ECF47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47C0);
  }

  return result;
}

unint64_t sub_242D7D3DC()
{
  result = qword_27ECF47C8;
  if (!qword_27ECF47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47C8);
  }

  return result;
}

unint64_t sub_242D7D49C()
{
  result = qword_27ECF47D0;
  if (!qword_27ECF47D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF47D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47D0);
  }

  return result;
}

unint64_t sub_242D7D504()
{
  result = qword_27ECF47E0;
  if (!qword_27ECF47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47E0);
  }

  return result;
}

unint64_t sub_242D7D55C()
{
  result = qword_27ECF47E8;
  if (!qword_27ECF47E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF3028);
    sub_242D7D610(&qword_27ECF2258, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47E8);
  }

  return result;
}

uint64_t sub_242D7D610(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242D7D65C()
{
  result = qword_27ECF47F0;
  if (!qword_27ECF47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47F0);
  }

  return result;
}

unint64_t sub_242D7D6B4()
{
  result = qword_27ECF47F8;
  if (!qword_27ECF47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF47F8);
  }

  return result;
}

void sub_242D7D740()
{
  sub_242D7D864();
  if (v0 <= 0x3F)
  {
    sub_242D7D8CC();
    if (v1 <= 0x3F)
    {
      sub_242D7D924();
      if (v2 <= 0x3F)
      {
        sub_242D7D988();
        if (v3 <= 0x3F)
        {
          sub_242D7DA1C();
          if (v4 <= 0x3F)
          {
            sub_242D7DAB0();
            if (v5 <= 0x3F)
            {
              sub_242D7DB44();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_242D7D864()
{
  if (!qword_27ECF4810)
  {
    type metadata accessor for Layout();
    sub_242F03720();
    v0 = type metadata accessor for TaggedValue();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4810);
    }
  }
}

void sub_242D7D8CC()
{
  if (!qword_27ECF4818)
  {
    type metadata accessor for Zone();
    v0 = sub_242F053E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4818);
    }
  }
}

void sub_242D7D924()
{
  if (!qword_27ECF4820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF09F0);
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4820);
    }
  }
}

void sub_242D7D988()
{
  if (!qword_27ECF4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4660);
    sub_242D7CAA8();
    sub_242D7C734();
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4828);
    }
  }
}

void sub_242D7DA1C()
{
  if (!qword_27ECF4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF4668);
    sub_242D7CBA4();
    sub_242D7C80C();
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4830);
    }
  }
}

void sub_242D7DAB0()
{
  if (!qword_27ECF4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2190);
    sub_242D7CC7C();
    sub_242CE3228();
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4838);
    }
  }
}

void sub_242D7DB44()
{
  if (!qword_27ECF4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0160);
    sub_242C86D4C(&qword_27ECF01F0);
    sub_242C86D4C(&qword_27ECF01B8);
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF4840);
    }
  }
}

uint64_t sub_242D7DC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_242D7DC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242D7DCD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242D7DD1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_242D7DDD0()
{
  result = qword_27ECF4848;
  if (!qword_27ECF4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4848);
  }

  return result;
}

unint64_t sub_242D7DE28()
{
  result = qword_27ECF4850;
  if (!qword_27ECF4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4850);
  }

  return result;
}

unint64_t sub_242D7DE80()
{
  result = qword_27ECF4858;
  if (!qword_27ECF4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4858);
  }

  return result;
}

unint64_t sub_242D7DED8()
{
  result = qword_27ECF4860;
  if (!qword_27ECF4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4860);
  }

  return result;
}

unint64_t sub_242D7DF30()
{
  result = qword_27ECF4868;
  if (!qword_27ECF4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4868);
  }

  return result;
}

unint64_t sub_242D7DF88()
{
  result = qword_27ECF4870;
  if (!qword_27ECF4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4870);
  }

  return result;
}

unint64_t sub_242D7DFE0()
{
  result = qword_27ECF4878;
  if (!qword_27ECF4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4878);
  }

  return result;
}

unint64_t sub_242D7E038()
{
  result = qword_27ECF4880;
  if (!qword_27ECF4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4880);
  }

  return result;
}

unint64_t sub_242D7E090()
{
  result = qword_27ECF4888;
  if (!qword_27ECF4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4888);
  }

  return result;
}

unint64_t sub_242D7E0E8()
{
  result = qword_27ECF4890;
  if (!qword_27ECF4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4890);
  }

  return result;
}

unint64_t sub_242D7E140()
{
  result = qword_27ECF4898;
  if (!qword_27ECF4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF4898);
  }

  return result;
}

unint64_t sub_242D7E198()
{
  result = qword_27ECF48A0;
  if (!qword_27ECF48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF48A0);
  }

  return result;
}

unint64_t sub_242D7E1F0()
{
  result = qword_27ECF48A8;
  if (!qword_27ECF48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF48A8);
  }

  return result;
}

unint64_t sub_242D7E248()
{
  result = qword_27ECF48B0;
  if (!qword_27ECF48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF48B0);
  }

  return result;
}

unint64_t sub_242D7E2A0()
{
  result = qword_27ECF48B8;
  if (!qword_27ECF48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF48B8);
  }

  return result;
}

uint64_t sub_242D7E2F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x745374756F79616CLL && a2 == 0xED00004449656C79 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795474756F79616CLL && a2 == 0xEA00000000006570 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49556D6574737973 && a2 == 0xEE0074756F79614CLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657061706C6C6177 && a2 == 0xEA00000000007372 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646F4D6576697264 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_242D7E68C()
{
  result = qword_27ECF48C0;
  if (!qword_27ECF48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF48C0);
  }

  return result;
}

uint64_t sub_242D7E860()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v15 = sub_242F047A0();
  v5(v3, v4, v0);
  v14 = sub_242F047A0();
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF48C8 = v15;
  *(&xmmword_27ECF48C8 + 1) = v14;
  qword_27ECF48D8 = v13;
  unk_27ECF48E0 = v6;
  *&xmmword_27ECF48E8 = v7;
  *(&xmmword_27ECF48E8 + 1) = v8;
  qword_27ECF48F8 = v9;
  unk_27ECF4900 = v10;
  qword_27ECF4908 = result;
  return result;
}

uint64_t static Color.Ticks.monochrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF48F8;
  v8[2] = xmmword_27ECF48E8;
  v8[3] = *&qword_27ECF48F8;
  v9 = qword_27ECF4908;
  v3 = qword_27ECF4908;
  v4 = *&qword_27ECF48D8;
  v8[0] = xmmword_27ECF48C8;
  v5 = xmmword_27ECF48C8;
  v8[1] = *&qword_27ECF48D8;
  *(a1 + 32) = xmmword_27ECF48E8;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.monochrome.setter(uint64_t a1)
{
  if (qword_27ECEF180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF48E8;
  v5[3] = *&qword_27ECF48F8;
  v6 = qword_27ECF4908;
  v5[0] = xmmword_27ECF48C8;
  v5[1] = *&qword_27ECF48D8;
  v2 = *(a1 + 48);
  xmmword_27ECF48E8 = *(a1 + 32);
  *&qword_27ECF48F8 = v2;
  qword_27ECF4908 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF48C8 = *a1;
  *&qword_27ECF48D8 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.monochrome.modify())()
{
  if (qword_27ECEF180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242D7ED3C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277CE0EE0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  v15 = sub_242F047A0();
  v5(v3, v4, v0);
  v14 = sub_242F047A0();
  v5(v3, v4, v0);
  v13 = sub_242F047A0();
  v5(v3, v4, v0);
  v6 = sub_242F047A0();
  v5(v3, v4, v0);
  v7 = sub_242F047A0();
  v5(v3, v4, v0);
  v8 = sub_242F047A0();
  v5(v3, v4, v0);
  v9 = sub_242F047A0();
  v5(v3, v4, v0);
  v10 = sub_242F047A0();
  v5(v3, v4, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF4910 = v15;
  *(&xmmword_27ECF4910 + 1) = v14;
  qword_27ECF4920 = v13;
  unk_27ECF4928 = v6;
  *&xmmword_27ECF4930 = v7;
  *(&xmmword_27ECF4930 + 1) = v8;
  qword_27ECF4940 = v9;
  unk_27ECF4948 = v10;
  qword_27ECF4950 = result;
  return result;
}