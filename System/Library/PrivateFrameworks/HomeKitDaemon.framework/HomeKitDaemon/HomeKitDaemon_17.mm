double SubcredentialJSON.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2296E7A4C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_2296E2558@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2296E7A4C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2296E25CC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7374726F70707573;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4449726564616572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1936286580;
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

uint64_t sub_2296E266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E805C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E26A0(uint64_t a1)
{
  v2 = sub_2296E7F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E26DC(uint64_t a1)
{
  v2 = sub_2296E7F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutomaticSelectionCriteriaJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F530, &qword_22A57E770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E7F30();
  sub_22A4DE80C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    v16 = v3[2];
    HIBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0);
    sub_22A4DE59C();
    v13 = *(v3 + 24);
    LOBYTE(v16) = 2;
    sub_22A4DE55C();
    v16 = v3[4];
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296E7F84();
    sub_22A4DE53C();
    v16 = v3[5];
    HIBYTE(v15) = 4;
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v9, v5);
}

double AutomaticSelectionCriteriaJSON.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2296E8224(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_2296E29C8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2296E8224(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2296E2A24()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x4449726564616572;
  }
}

uint64_t sub_2296E2A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726564616572 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296E2B34(uint64_t a1)
{
  v2 = sub_2296E8530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2B70(uint64_t a1)
{
  v2 = sub_2296E8530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssociatedReaderIDsJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F558, &qword_22A57E780);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8530();
  sub_22A4DE80C();
  v15 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v14 = 1;
    sub_22A4DE57C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2296E2D6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296E8584(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2296E2DBC()
{
  if (*v0)
  {
    result = 0x654B63696C627570;
  }

  else
  {
    result = 0x656D65686373;
  }

  *v0;
  return result;
}

uint64_t sub_2296E2DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D65686373 && a2 == 0xE600000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296E2ED8(uint64_t a1)
{
  v2 = sub_2296E875C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2F14(uint64_t a1)
{
  v2 = sub_2296E875C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296E3048()
{
  if (*v0)
  {
    result = 0x4143726564616572;
  }

  else
  {
    result = 0x4449726564616572;
  }

  *v0;
  return result;
}

uint64_t sub_2296E3088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726564616572 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4143726564616572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296E316C(uint64_t a1)
{
  v2 = sub_2296E87B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E31A8(uint64_t a1)
{
  v2 = sub_2296E87B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssociatedReaderJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F578, &qword_22A57E790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E87B0();
  sub_22A4DE80C();
  v15 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296E8804();
    sub_22A4DE59C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2296E33B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296E88DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2296E3404()
{
  v1 = 0x6C6569466B636162;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6946726564616568;
  }
}

uint64_t sub_2296E3470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E8DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E3498(uint64_t a1)
{
  v2 = sub_2296E8AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E34D4(uint64_t a1)
{
  v2 = sub_2296E8AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaymentCardJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5A0, &qword_22A57E7A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8AE0();
  sub_22A4DE80C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5B0, &qword_22A57E7A8);
  sub_2296E8B34();
  sub_22A4DE59C();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296E8C0C();
    sub_22A4DE53C();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296E8CE4();
    sub_22A4DE53C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2296E3754(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2296E3780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296E8EE8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2296E37D0()
{
  v1 = 7955819;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 1802398060;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

uint64_t sub_2296E3834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E91CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E3868(uint64_t a1)
{
  v2 = sub_2296E9178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E38A4(uint64_t a1)
{
  v2 = sub_2296E9178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackFieldsJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5F8, &qword_22A57E7C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E9178();
  sub_22A4DE80C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_22A4DE54C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_22A4DE51C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_22A4DE51C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_22A4DE51C();
  return (*(v6 + 8))(v9, v5);
}

double BackFieldsJSON.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2296E9328(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

double sub_2296E3AE4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2296E9328(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2296E3B40()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_2296E3B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296E3C48(uint64_t a1)
{
  v2 = sub_2296E9610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E3C84(uint64_t a1)
{
  v2 = sub_2296E9610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296E3D10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a8(v16, v17, v18);
  sub_22A4DE80C();
  v23 = 0;
  v19 = v21[3];
  sub_22A4DE54C();
  if (!v19)
  {
    v22 = 1;
    sub_22A4DE54C();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2296E3EE4(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = sub_2296E9664(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2296E3F54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_2296E9664(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_2296E3FB4()
{
  v1 = 0x6E6564646968;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1937207154;
  }
}

uint64_t sub_2296E4008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E9890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E4030(uint64_t a1)
{
  v2 = sub_2296E983C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E406C(uint64_t a1)
{
  v2 = sub_2296E983C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassDetailsSectionJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F618, &qword_22A57E7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E983C();
  sub_22A4DE80C();
  v17 = *v3;
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  sub_2296E65D0(&qword_27D87F4E0);
  sub_22A4DE59C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = *(v3 + 16);
  v16[6] = 1;
  sub_22A4DE52C();
  v14 = v3[3];
  v15 = v3[4];
  v16[5] = 2;
  sub_22A4DE51C();
  return (*(v6 + 8))(v9, v5);
}

double PassDetailsSectionJSON.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2296E99AC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_2296E42E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2296E99AC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2296E4344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000022A592400 == a2;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E65526576696CLL && a2 == 0xEE00657079547265 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C79654B656D6F68 && a2 == 0xEF65707954657669 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022A592420 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_22A4DE60C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7462755364726163 && a2 == 0xEB00000000657079 || (sub_22A4DE60C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974 || (sub_22A4DE60C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592440 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592460 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592480 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C6F436C6562616CLL && a2 == 0xEA0000000000726FLL || (sub_22A4DE60C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A5924A0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022A5924C0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022A5924E0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A592510 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592530 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000025 && 0x800000022A592550 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000002DLL && 0x800000022A592580 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A5925B0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A5925D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x43746E656D796170 && a2 == 0xEB00000000647261 || (sub_22A4DE60C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022A5925F0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEF7265746E756F43 || (sub_22A4DE60C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022A592610 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6E6172626F437369 && a2 == 0xEB00000000646564 || (sub_22A4DE60C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_22A4DE60C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022A592630 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592650 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022A592670 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592690 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 35;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

void *sub_2296E4E5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F818, &qword_22A57FC98);
  v98 = *(v101 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v6 = &v56 - v5;
  sub_22A4DD5EC();
  v99 = v7;
  v106 = 0x800000022A589290;
  v116 = 0x800000022A5892F0;
  v8 = a1[3];
  v9 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_2296E0EA4();
  v100 = v6;
  sub_22A4DE7FC();
  if (v2)
  {
    v191 = v2;
    v10 = 0;
    v11 = 0;
    LODWORD(v100) = 0;
    LODWORD(v101) = 0;
    v110 = 0xEA00000000004554;
    v104 = 0xEB00000000656D61;
    v108 = 0xE300000000000000;
    v109 = 0xE400000000000000;
    v107 = MEMORY[0x277D84F90];
    v105 = 0xE600000000000000;
    v102 = 0x800000022A589350;
    v103 = 0x800000022A589310;
    v112 = v116;
    v113 = 0x800000022A5892D0;
    v12 = 0;
    v114 = 0x800000022A5892D0;
    v115 = v106;
    v106 = &unk_283CDBAC0;
  }

  else
  {
    v13 = v98;
    v95 = 0x800000022A589310;
    v96 = 0x800000022A5892D0;
    LOBYTE(v118) = 0;
    v14 = sub_22A4DE49C();
    v191 = 0;
    v17 = v14;
    v87 = v15;

    LOBYTE(v118) = 1;
    v18 = v191;
    v19 = sub_22A4DE49C();
    v21 = v116;
    if (v18)
    {
      v191 = v18;
      (*(v13 + 8))(v100, v101);
      v10 = 0;
      v11 = 0;
      LODWORD(v100) = 0;
      LODWORD(v101) = 0;
      v110 = 0xEA00000000004554;
      v104 = 0xEB00000000656D61;
      v108 = 0xE300000000000000;
      v109 = 0xE400000000000000;
      v107 = MEMORY[0x277D84F90];
      v105 = 0xE600000000000000;
      v102 = 0x800000022A589350;
      v103 = v95;
      v12 = 0;
      v112 = v21;
      v113 = v96;
      v114 = v96;
      v115 = v106;
      v106 = &unk_283CDBAC0;
    }

    else
    {
      v99 = v19;
      v94 = v20;
      LOBYTE(v118) = 2;
      v85 = sub_22A4DE49C();
      v86 = v22;
      LOBYTE(v118) = 3;
      v84 = sub_22A4DE49C();
      v93 = v23;
      LOBYTE(v118) = 4;
      v83 = sub_22A4DE49C();
      v92 = v24;
      LOBYTE(v118) = 5;
      v82 = sub_22A4DE4CC();
      LOBYTE(v118) = 6;
      v80 = sub_22A4DE4CC();
      LOBYTE(v118) = 7;
      v25 = sub_22A4DE49C();
      v81 = v26;
      v79 = v25;
      LOBYTE(v118) = 8;
      v78 = sub_22A4DE49C();
      v191 = 0;
      v27 = v17;
      v110 = v28;
      LOBYTE(v118) = 9;
      v29 = sub_22A4DE49C();
      v115 = v30;
      v191 = 0;
      v31 = v29;
      LOBYTE(v118) = 10;
      v32 = sub_22A4DE49C();
      v77 = v33;
      v191 = 0;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F480, &qword_22A57E728);
      LOBYTE(v117[0]) = 11;
      sub_2296EBD90(&qword_27D87F820);
      v35 = v191;
      sub_22A4DE4EC();
      v191 = v35;
      if (v35)
      {
        (*(v13 + 8))(v100, v101);
        LODWORD(v100) = 0;
        LODWORD(v101) = 0;
        v108 = 0xE300000000000000;
        v109 = 0xE400000000000000;
        v107 = MEMORY[0x277D84F90];
        v12 = 1;
        v104 = 0xEB00000000656D61;
        v105 = 0xE600000000000000;
        v10 = 1;
        v11 = 1;
        v102 = 0x800000022A589350;
        v103 = v95;
        v112 = v116;
        v113 = v96;
        v114 = v96;
        v106 = &unk_283CDBAC0;
      }

      else
      {
        v106 = v118;
        LOBYTE(v118) = 12;
        v76 = sub_22A4DE49C();
        v114 = v36;
        v191 = 0;
        LOBYTE(v118) = 13;
        v75 = sub_22A4DE49C();
        v113 = v37;
        v191 = 0;
        LOBYTE(v118) = 14;
        v74 = sub_22A4DE49C();
        v112 = v38;
        v191 = 0;
        LOBYTE(v118) = 15;
        v116 = sub_22A4DE49C();
        v109 = v39;
        v191 = 0;
        LOBYTE(v118) = 16;
        v73 = sub_22A4DE4AC();
        v191 = 0;
        LOBYTE(v118) = 17;
        v72 = sub_22A4DE49C();
        v108 = v40;
        v191 = 0;
        LOBYTE(v118) = 18;
        v71 = sub_22A4DE49C();
        v103 = v41;
        v191 = 0;
        LOBYTE(v118) = 19;
        v95 = sub_22A4DE49C();
        v102 = v42;
        v191 = 0;
        LOBYTE(v118) = 20;
        v70 = sub_22A4DE4AC();
        v191 = 0;
        LOBYTE(v118) = 21;
        v69 = sub_22A4DE4AC();
        v191 = 0;
        LOBYTE(v118) = 22;
        v43 = sub_22A4DE4CC();
        v191 = 0;
        v44 = v43;
        LOBYTE(v118) = 23;
        v68 = sub_22A4DE4CC();
        v191 = 0;
        LOBYTE(v117[0]) = 24;
        sub_2296EBDFC();
        v45 = v191;
        sub_22A4DE4EC();
        v191 = v45;
        if (v45)
        {
          (*(v13 + 8))(v100, v101);
          LODWORD(v100) = 0;
          LODWORD(v101) = 0;
          v107 = MEMORY[0x277D84F90];
          v12 = 1;
          v104 = 0xEB00000000656D61;
          v105 = 0xE600000000000000;
          v10 = 1;
          v11 = 1;
        }

        else
        {
          v90 = v119;
          v91 = v118;
          v89 = v120;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F498, &qword_22A57E730);
          LOBYTE(v117[0]) = 25;
          sub_2296EBE50();
          v46 = v191;
          sub_22A4DE4EC();
          v191 = v46;
          if (v46)
          {
            (*(v13 + 8))(v100, v101);
            LODWORD(v101) = 0;
            v107 = MEMORY[0x277D84F90];
            v12 = 1;
            v104 = 0xEB00000000656D61;
            v105 = 0xE600000000000000;
            v10 = 1;
            v11 = 1;
            LODWORD(v100) = 1;
          }

          else
          {
            v88 = v118;
            LOBYTE(v118) = 26;
            v67 = sub_22A4DE4CC();
            v191 = 0;
            LOBYTE(v117[0]) = 27;
            sub_22A4DE4EC();
            v191 = 0;
            v107 = v118;
            LOBYTE(v118) = 28;
            v66 = sub_22A4DE4AC();
            v191 = 0;
            LOBYTE(v118) = 29;
            v65 = sub_22A4DE49C();
            v104 = v47;
            v191 = 0;
            LOBYTE(v118) = 30;
            v64 = sub_22A4DE4AC();
            v191 = 0;
            LOBYTE(v118) = 31;
            v63 = sub_22A4DE4AC();
            v191 = 0;
            LOBYTE(v118) = 32;
            v62 = sub_22A4DE4AC();
            v191 = 0;
            LOBYTE(v118) = 33;
            v61 = sub_22A4DE49C();
            v191 = 0;
            v49 = v48;
            LOBYTE(v118) = 34;
            v96 = sub_22A4DE49C();
            v105 = v50;
            v191 = 0;
            v182 = 35;
            sub_2296EBF28();
            v51 = v191;
            sub_22A4DE48C();
            v191 = v51;
            if (!v51)
            {
              v60 = v70 & 1;
              v58 = v73 & 1;
              v59 = v69 & 1;
              v66 &= 1u;
              v73 = v64 & 1;
              v69 = v62 & 1;
              v70 = v63 & 1;
              (*(v13 + 8))(v100, v101);
              *(&v117[36] + 2) = v188;
              *(&v117[45] + 1) = *v187;
              *(&v117[29] + 1) = v190[0];
              HIDWORD(v117[29]) = *(v190 + 3);
              HIWORD(v117[36]) = v189;
              HIDWORD(v117[45]) = *&v187[3];
              *(&v117[48] + 3) = v185;
              HIBYTE(v117[48]) = v186;
              v100 = v184;
              v101 = v183;
              v57 = v27;
              v52 = v86;
              v117[0] = v27;
              v117[1] = v87;
              v117[2] = v99;
              v117[3] = v94;
              v117[4] = v85;
              v117[5] = v86;
              v117[6] = v84;
              v53 = v92;
              v117[7] = v93;
              v117[8] = v83;
              v117[9] = v92;
              v117[10] = v82;
              v117[11] = v80;
              v117[12] = v79;
              v117[13] = v81;
              v117[14] = v78;
              v117[15] = v110;
              v117[16] = v31;
              v117[17] = v115;
              v117[18] = v34;
              v117[19] = v77;
              v117[20] = v106;
              v117[21] = v76;
              v117[22] = v114;
              v117[23] = v75;
              v117[24] = v113;
              v117[25] = v74;
              v117[26] = v112;
              v117[27] = v116;
              v54 = v109;
              v117[28] = v109;
              LOBYTE(v117[29]) = v58;
              v117[30] = v72;
              v117[31] = v108;
              v117[32] = v71;
              v117[33] = v103;
              v117[34] = v95;
              v117[35] = v102;
              LOBYTE(v117[36]) = v60;
              BYTE1(v117[36]) = v59;
              v117[37] = v44;
              v55 = v68;
              v117[38] = v68;
              v117[39] = v91;
              v117[40] = v90;
              v117[41] = v89;
              v117[42] = v88;
              v117[43] = v67;
              v117[44] = v107;
              LOBYTE(v117[45]) = v66;
              v117[46] = v65;
              v117[47] = v104;
              LOBYTE(v117[48]) = v73;
              BYTE1(v117[48]) = v70;
              BYTE2(v117[48]) = v69;
              v117[49] = v61;
              v117[50] = v49;
              v117[51] = v96;
              v117[52] = v105;
              v117[53] = v183;
              v117[54] = v184;
              sub_2296EBF7C(v117, &v118);
              __swift_destroy_boxed_opaque_existential_0(v111);
              v118 = v57;
              v119 = v87;
              v120 = v99;
              v121 = v94;
              v122 = v85;
              v123 = v52;
              v124 = v84;
              v125 = v93;
              v126 = v83;
              v127 = v53;
              v128 = v82;
              v129 = v80;
              v130 = v79;
              v131 = v81;
              v132 = v78;
              v133 = v110;
              v134 = v31;
              v135 = v115;
              v136 = v34;
              v137 = v77;
              v138 = v106;
              v139 = v76;
              v140 = v114;
              v141 = v75;
              v142 = v113;
              v143 = v74;
              v144 = v112;
              v145 = v116;
              v146 = v54;
              v147 = v58;
              *v148 = v190[0];
              *&v148[3] = *(v190 + 3);
              v149 = v72;
              v150 = v108;
              v151 = v71;
              v152 = v103;
              v153 = v95;
              v154 = v102;
              v155 = v60;
              v156 = v59;
              v157 = v188;
              v158 = v189;
              v159 = v44;
              v160 = v55;
              v161 = v91;
              v162 = v90;
              v163 = v89;
              v164 = v88;
              v165 = v67;
              v166 = v107;
              v167 = v66;
              *v168 = *v187;
              *&v168[3] = *&v187[3];
              v169 = v65;
              v170 = v104;
              v171 = v73;
              v172 = v70;
              v173 = v69;
              v174 = v185;
              v175 = v186;
              v176 = v61;
              v177 = v49;
              v178 = v96;
              v179 = v105;
              v180 = v101;
              v181 = v100;
              sub_2296EBFB4(&v118);
              return memcpy(v97, v117, 0x1B8uLL);
            }

            (*(v13 + 8))(v100, v101);
            v12 = 1;
            v10 = 1;
            v11 = 1;
            LODWORD(v100) = 1;
            LODWORD(v101) = 1;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v111);

  if (v12)
  {
  }

  if (v10)
  {
  }

  if (v11)
  {
  }

  if (v100)
  {
  }

  if (v101)
  {
  }
}

unint64_t sub_2296E6528()
{
  result = qword_27D87F4C0;
  if (!qword_27D87F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4C0);
  }

  return result;
}

unint64_t sub_2296E657C()
{
  result = qword_27D87F4D8;
  if (!qword_27D87F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4D8);
  }

  return result;
}

uint64_t sub_2296E65D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E400, "ll\b");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296E663C()
{
  result = qword_27D87F4F0;
  if (!qword_27D87F4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296E66C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4F0);
  }

  return result;
}

unint64_t sub_2296E66C0()
{
  result = qword_27D87F4F8;
  if (!qword_27D87F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4F8);
  }

  return result;
}

unint64_t sub_2296E674C()
{
  result = qword_27D87F500;
  if (!qword_27D87F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F500);
  }

  return result;
}

unint64_t sub_2296E67D0()
{
  result = qword_27D87F510;
  if (!qword_27D87F510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296E6854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F510);
  }

  return result;
}

unint64_t sub_2296E6854()
{
  result = qword_27D87F518;
  if (!qword_27D87F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F518);
  }

  return result;
}

uint64_t sub_2296E68A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E656D796170 && a2 == 0xEB00000000657079;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A5926D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A5926F0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6564494E415044 && a2 == 0xEE00726569666974 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x666675534E415044 && a2 == 0xEA00000000007869 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592710 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592730 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592750 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592770 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A592790 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022A5927B0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x800000022A5927D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A592800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592820 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6564657263627573 && a2 == 0xED00006C6169746ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022A592840 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

void *sub_2296E6DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7E8, &qword_22A57FC90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_2296E657C();
  sub_22A4DE7FC();
  if (v2)
  {
    v103 = v2;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LODWORD(v57) = 0;
    LODWORD(v58) = 0;
    v60 = 0xE400000000000000;
    goto LABEL_4;
  }

  v12 = a2;
  LOBYTE(v62) = 0;
  v18 = sub_22A4DE49C();
  v52 = v19;
  LOBYTE(v62) = 1;
  v20 = sub_22A4DE4CC();
  LOBYTE(v62) = 2;
  v21 = sub_22A4DE49C();
  v56 = v22;
  LOBYTE(v62) = 3;
  v58 = sub_22A4DE49C();
  v55 = v23;
  LOBYTE(v62) = 4;
  v57 = sub_22A4DE49C();
  v54 = v24;
  LOBYTE(v62) = 5;
  v51 = sub_22A4DE49C();
  v53 = v25;
  LOBYTE(v62) = 6;
  v50 = sub_22A4DE4CC();
  LOBYTE(v62) = 7;
  v26 = sub_22A4DE4CC();
  *(&v48 + 1) = v21;
  v49 = v26;
  LOBYTE(v62) = 8;
  v27 = sub_22A4DE4CC();
  v103 = 0;
  v28 = v27;
  *&v48 = v20;
  v46 = v18;
  v29 = v6;
  LOBYTE(v62) = 9;
  v47 = sub_22A4DE49C();
  v60 = v30;
  v103 = 0;
  LOBYTE(v62) = 10;
  LODWORD(v45) = sub_22A4DE4AC();
  v103 = 0;
  LOBYTE(v62) = 11;
  v44 = sub_22A4DE4CC();
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  LOBYTE(v61[0]) = 12;
  sub_2296E65D0(&qword_27D87F750);
  v31 = v103;
  sub_22A4DE4EC();
  v103 = v31;
  if (v31)
  {
    (*(v6 + 8))(v9, v5);
    LODWORD(v57) = 0;
    LODWORD(v58) = 0;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    goto LABEL_4;
  }

  v32 = v62;
  LOBYTE(v62) = 13;
  v42 = sub_22A4DE49C();
  v43 = v33;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4E8, &qword_22A57E758);
  LOBYTE(v61[0]) = 14;
  sub_2296EBB24();
  v34 = v103;
  sub_22A4DE4EC();
  v103 = v34;
  if (v34)
  {
    (*(v6 + 8))(v9, v5);
    LODWORD(v58) = 0;
LABEL_24:
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    LODWORD(v57) = 1;
    goto LABEL_4;
  }

  v35 = v62;
  v89 = 15;
  sub_2296EBBFC();
  v36 = v103;
  sub_22A4DE4EC();
  v103 = v36;
  if (v36)
  {
    (*(v29 + 8))(v9, v5);
    LODWORD(v58) = 0;
    goto LABEL_24;
  }

  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F508, &qword_22A57E760);
  v87 = 16;
  sub_2296EBC50();
  v37 = v103;
  sub_22A4DE4EC();
  v103 = v37;
  if (!v37)
  {
    v38 = v45 & 1;
    (*(v29 + 8))(v9, v5);
    v45 = v88;
    v39 = v46;
    v40 = v52;
    *&v61[0] = v46;
    *(&v61[0] + 1) = v52;
    v61[1] = v48;
    v41 = v56;
    *&v61[2] = v56;
    *(&v61[2] + 1) = v58;
    *&v61[3] = v55;
    *(&v61[3] + 1) = v57;
    *&v61[4] = v54;
    *(&v61[4] + 1) = v51;
    *&v61[5] = v53;
    *(&v61[5] + 1) = v50;
    *&v61[6] = v49;
    *(&v61[6] + 1) = v28;
    *&v61[7] = v47;
    *(&v61[7] + 1) = v60;
    LOBYTE(v61[8]) = v38;
    *(&v61[8] + 1) = v44;
    *&v61[9] = v32;
    *(&v61[9] + 1) = v42;
    *&v61[10] = v43;
    *(&v61[10] + 1) = v35;
    v61[13] = v98;
    v61[14] = v99;
    v61[15] = v100;
    v61[11] = v96;
    v61[12] = v97;
    *&v61[16] = v101;
    *(&v61[16] + 1) = v88;
    sub_2296EBD28(v61, &v62);
    __swift_destroy_boxed_opaque_existential_0(v59);
    *&v62 = v39;
    *(&v62 + 1) = v40;
    v63 = v48;
    *&v64 = v41;
    *(&v64 + 1) = v58;
    *&v65 = v55;
    *(&v65 + 1) = v57;
    *&v66 = v54;
    *(&v66 + 1) = v51;
    v67 = v53;
    v68 = v50;
    v69 = v49;
    v70 = v28;
    v71 = v47;
    v72 = v60;
    v73 = v38;
    *&v74[3] = *(v102 + 3);
    *v74 = v102[0];
    v75 = v44;
    v76 = v32;
    v77 = v42;
    v78 = v43;
    v79 = v35;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v80 = v96;
    v81 = v97;
    v85 = v101;
    v86 = v45;
    sub_2296EBD60(&v62);
    return memcpy(v12, v61, 0x110uLL);
  }

  (*(v29 + 8))(v9, v5);
  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  LODWORD(v57) = 1;
  LODWORD(v58) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v59);

  if (v13)
  {

    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_16:

    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v14)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v15)
  {
LABEL_7:
  }

LABEL_8:

  if (v16)
  {
  }

  if (v57)
  {
  }

  if (v58)
  {
    v64 = v98;
    v65 = v99;
    v66 = v100;
    v67 = v101;
    v62 = v96;
    v63 = v97;
    return sub_2296E67A0(&v62);
  }

  return result;
}

unint64_t sub_2296E779C()
{
  result = qword_27D87F528;
  if (!qword_27D87F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F528);
  }

  return result;
}

uint64_t sub_2296E77F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592860 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A592800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022A592880 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D726F466F7369 && a2 == 0xE900000000000074 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A5928A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E7A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7E0, &qword_22A57FC88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E779C();
  sub_22A4DE7FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v11 = sub_22A4DE4CC();
    LOBYTE(v40[0]) = 1;
    v31 = sub_22A4DE49C();
    v33 = v12;
    LOBYTE(v40[0]) = 2;
    v13 = sub_22A4DE49C();
    v32 = v14;
    v29 = v13;
    LOBYTE(v40[0]) = 3;
    v28 = sub_22A4DE49C();
    v30 = v15;
    LOBYTE(v40[0]) = 4;
    v27 = sub_22A4DE4DC();
    LOBYTE(v40[0]) = 5;
    *&v26 = sub_22A4DE46C();
    *(&v26 + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v43 = 6;
    sub_2296E65D0(&qword_27D87F750);
    sub_22A4DE48C();
    (*(v6 + 8))(v9, v5);
    v25 = v44;
    *&v34 = v11;
    v17 = v31;
    *(&v34 + 1) = v31;
    v18 = v33;
    v19 = v29;
    *&v35 = v33;
    *(&v35 + 1) = v29;
    v20 = v32;
    *&v36 = v32;
    *(&v36 + 1) = v28;
    v21 = v30;
    *&v37 = v30;
    *(&v37 + 1) = v27;
    v38 = v26;
    v39 = v44;
    sub_2296E6714(&v34, v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v40[0] = v11;
    v40[1] = v17;
    v40[2] = v18;
    v40[3] = v19;
    v40[4] = v20;
    v40[5] = v28;
    v40[6] = v21;
    v40[7] = v27;
    v41 = v26;
    v42 = v25;
    result = sub_2296E67A0(v40);
    v23 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v23;
    *(a2 + 64) = v38;
    *(a2 + 80) = v39;
    v24 = v35;
    *a2 = v34;
    *(a2 + 16) = v24;
  }

  return result;
}

unint64_t sub_2296E7F30()
{
  result = qword_27D87F538;
  if (!qword_27D87F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F538);
  }

  return result;
}

unint64_t sub_2296E7F84()
{
  result = qword_27D87F548;
  if (!qword_27D87F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296E8008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F548);
  }

  return result;
}

unint64_t sub_2296E8008()
{
  result = qword_27D87F550;
  if (!qword_27D87F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F550);
  }

  return result;
}

uint64_t sub_2296E805C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936286580 && a2 == 0xE400000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF73736572707845 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022A5928C0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449726564616572 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E8224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7C8, &qword_22A57FC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E7F30();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v22 = sub_22A4DE49C();
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v24 = 1;
  v12 = sub_2296E65D0(&qword_27D87F750);
  sub_22A4DE4EC();
  v21 = v12;
  v13 = v25;
  LOBYTE(v25) = 2;
  v14 = sub_22A4DE4AC();
  v15 = v13;
  LOBYTE(v13) = v14;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F540, &qword_22A57E778);
  v24 = 3;
  sub_2296EBA4C();
  sub_22A4DE48C();
  v19 = v25;
  v24 = 4;
  sub_22A4DE48C();
  (*(v6 + 8))(v9, v5);
  v16 = v25;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v18 = v23;
  *a2 = v22;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20;
  *(a2 + 24) = v13 & 1;
  *(a2 + 32) = v19;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_2296E8530()
{
  result = qword_27D87F560;
  if (!qword_27D87F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F560);
  }

  return result;
}

uint64_t sub_2296E8584(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7C0, &qword_22A57FC78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8530();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_22A4DE49C();
    v10[14] = 1;
    sub_22A4DE4CC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2296E875C()
{
  result = qword_27D87F570;
  if (!qword_27D87F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F570);
  }

  return result;
}

unint64_t sub_2296E87B0()
{
  result = qword_27D87F580;
  if (!qword_27D87F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F580);
  }

  return result;
}

unint64_t sub_2296E8804()
{
  result = qword_27D87F590;
  if (!qword_27D87F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296E8888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F590);
  }

  return result;
}

unint64_t sub_2296E8888()
{
  result = qword_27D87F598;
  if (!qword_27D87F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F598);
  }

  return result;
}

uint64_t sub_2296E88DC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7A0, &qword_22A57FC68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E87B0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_22A4DE49C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F588, &qword_22A57E798);
    v10[15] = 1;
    sub_2296EB974();
    sub_22A4DE4EC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2296E8AE0()
{
  result = qword_27D87F5A8;
  if (!qword_27D87F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5A8);
  }

  return result;
}

unint64_t sub_2296E8B34()
{
  result = qword_27D87F5B8;
  if (!qword_27D87F5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5B0, &qword_22A57E7A8);
    sub_2296E8BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5B8);
  }

  return result;
}

unint64_t sub_2296E8BB8()
{
  result = qword_27D87F5C0;
  if (!qword_27D87F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5C0);
  }

  return result;
}

unint64_t sub_2296E8C0C()
{
  result = qword_27D87F5D0;
  if (!qword_27D87F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296E8C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5D0);
  }

  return result;
}

unint64_t sub_2296E8C90()
{
  result = qword_27D87F5D8;
  if (!qword_27D87F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5D8);
  }

  return result;
}

unint64_t sub_2296E8CE4()
{
  result = qword_27D87F5E8;
  if (!qword_27D87F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296E8D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5E8);
  }

  return result;
}

unint64_t sub_2296E8D68()
{
  result = qword_27D87F5F0;
  if (!qword_27D87F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5F0);
  }

  return result;
}

uint64_t sub_2296E8DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946726564616568 && a2 == 0xEC00000073646C65;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6569466B636162 && a2 == 0xEA00000000007364 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022A5928E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E8EE8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F768, &qword_22A57FC60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8AE0();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5B0, &qword_22A57E7A8);
  HIBYTE(v10) = 0;
  sub_2296EB6EC();
  sub_22A4DE4EC();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5C8, &qword_22A57E7B0);
  HIBYTE(v10) = 1;
  sub_2296EB7C4();
  sub_22A4DE48C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5E0, &qword_22A57E7B8);
  HIBYTE(v10) = 2;
  sub_2296EB89C();
  sub_22A4DE48C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_2296E9178()
{
  result = qword_27D87F600;
  if (!qword_27D87F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F600);
  }

  return result;
}

uint64_t sub_2296E91CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E9328@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F760, &qword_22A57FC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E9178();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_22A4DE49C();
  v13 = v12;
  v30 = v11;
  LOBYTE(v35[0]) = 1;
  *&v29 = sub_22A4DE46C();
  *(&v29 + 1) = v14;
  LOBYTE(v35[0]) = 2;
  v15 = sub_22A4DE46C();
  v17 = v16;
  v28 = v15;
  v41 = 3;
  v18 = sub_22A4DE46C();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v22 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v13;
  v23 = v29;
  v32 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v17;
  *&v34 = v18;
  *(&v34 + 1) = v21;
  sub_2296EB684(&v31, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v22;
  v35[1] = v13;
  v36 = __PAIR128__(*(&v29 + 1), v23);
  v37 = v28;
  v38 = v17;
  v39 = v18;
  v40 = v21;
  result = sub_2296EB6BC(v35);
  v25 = v32;
  *a2 = v31;
  a2[1] = v25;
  v26 = v34;
  a2[2] = v33;
  a2[3] = v26;
  return result;
}

unint64_t sub_2296E9610()
{
  result = qword_27D87F610;
  if (!qword_27D87F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F610);
  }

  return result;
}

uint64_t sub_2296E9664(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v11);
  a4();
  sub_22A4DE7FC();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_22A4DE49C();
    v16 = 1;
    sub_22A4DE49C();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_2296E983C()
{
  result = qword_27D87F620;
  if (!qword_27D87F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F620);
  }

  return result;
}

uint64_t sub_2296E9890(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937207154 && a2 == 0xE400000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E99AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F748, &qword_22A57FC48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E983C();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v23 = 0;
  sub_2296E65D0(&qword_27D87F750);
  sub_22A4DE4EC();
  v11 = v24;
  v22 = 1;
  v12 = sub_22A4DE47C();
  v20 = v13;
  v19 = v12;
  v21 = 2;
  v14 = sub_22A4DE46C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v18 = v19;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_2296E9C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
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

uint64_t sub_2296E9C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296E9D28(uint64_t a1, int a2)
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

uint64_t sub_2296E9D70(uint64_t result, int a2, int a3)
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

uint64_t sub_2296E9DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_2296E9E0C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2296E9EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2296E9F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2296E9F84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2296E9FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296EA048(uint64_t a1, int a2)
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

uint64_t sub_2296EA090(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2296EA104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2296EA14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296EA1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2296EA1F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticSelectionCriteriaJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomaticSelectionCriteriaJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubcredentialJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SubcredentialJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PaymentApplicationJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentApplicationJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInfoJSON.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UserInfoJSON.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PassJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PassJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2296EAA28()
{
  result = qword_27D87F628;
  if (!qword_27D87F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F628);
  }

  return result;
}

unint64_t sub_2296EAA80()
{
  result = qword_27D87F630;
  if (!qword_27D87F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F630);
  }

  return result;
}

unint64_t sub_2296EAAD8()
{
  result = qword_27D87F638;
  if (!qword_27D87F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F638);
  }

  return result;
}

unint64_t sub_2296EAB30()
{
  result = qword_27D87F640;
  if (!qword_27D87F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F640);
  }

  return result;
}

unint64_t sub_2296EAB88()
{
  result = qword_27D87F648;
  if (!qword_27D87F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F648);
  }

  return result;
}

unint64_t sub_2296EABE0()
{
  result = qword_27D87F650;
  if (!qword_27D87F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F650);
  }

  return result;
}

unint64_t sub_2296EAC38()
{
  result = qword_27D87F658;
  if (!qword_27D87F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F658);
  }

  return result;
}

unint64_t sub_2296EAC90()
{
  result = qword_27D87F660;
  if (!qword_27D87F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F660);
  }

  return result;
}

unint64_t sub_2296EACE8()
{
  result = qword_27D87F668;
  if (!qword_27D87F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F668);
  }

  return result;
}

unint64_t sub_2296EAD40()
{
  result = qword_27D87F670;
  if (!qword_27D87F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F670);
  }

  return result;
}

unint64_t sub_2296EAD98()
{
  result = qword_27D87F678;
  if (!qword_27D87F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F678);
  }

  return result;
}

unint64_t sub_2296EADF0()
{
  result = qword_27D87F680;
  if (!qword_27D87F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F680);
  }

  return result;
}

unint64_t sub_2296EAE48()
{
  result = qword_27D87F688;
  if (!qword_27D87F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F688);
  }

  return result;
}

unint64_t sub_2296EAEA0()
{
  result = qword_27D87F690;
  if (!qword_27D87F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F690);
  }

  return result;
}

unint64_t sub_2296EAEF8()
{
  result = qword_27D87F698;
  if (!qword_27D87F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F698);
  }

  return result;
}

unint64_t sub_2296EAF50()
{
  result = qword_27D87F6A0;
  if (!qword_27D87F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6A0);
  }

  return result;
}

unint64_t sub_2296EAFA8()
{
  result = qword_27D87F6A8;
  if (!qword_27D87F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6A8);
  }

  return result;
}

unint64_t sub_2296EB000()
{
  result = qword_27D87F6B0;
  if (!qword_27D87F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6B0);
  }

  return result;
}

unint64_t sub_2296EB058()
{
  result = qword_27D87F6B8;
  if (!qword_27D87F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6B8);
  }

  return result;
}

unint64_t sub_2296EB0B0()
{
  result = qword_27D87F6C0;
  if (!qword_27D87F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6C0);
  }

  return result;
}

unint64_t sub_2296EB108()
{
  result = qword_27D87F6C8;
  if (!qword_27D87F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6C8);
  }

  return result;
}

unint64_t sub_2296EB160()
{
  result = qword_27D87F6D0;
  if (!qword_27D87F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6D0);
  }

  return result;
}

unint64_t sub_2296EB1B8()
{
  result = qword_27D87F6D8;
  if (!qword_27D87F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6D8);
  }

  return result;
}

unint64_t sub_2296EB210()
{
  result = qword_27D87F6E0;
  if (!qword_27D87F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6E0);
  }

  return result;
}

unint64_t sub_2296EB268()
{
  result = qword_27D87F6E8;
  if (!qword_27D87F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6E8);
  }

  return result;
}

unint64_t sub_2296EB2C0()
{
  result = qword_27D87F6F0;
  if (!qword_27D87F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6F0);
  }

  return result;
}

unint64_t sub_2296EB318()
{
  result = qword_27D87F6F8;
  if (!qword_27D87F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6F8);
  }

  return result;
}

unint64_t sub_2296EB370()
{
  result = qword_27D87F700;
  if (!qword_27D87F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F700);
  }

  return result;
}

unint64_t sub_2296EB3C8()
{
  result = qword_27D87F708;
  if (!qword_27D87F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F708);
  }

  return result;
}

unint64_t sub_2296EB420()
{
  result = qword_27D87F710;
  if (!qword_27D87F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F710);
  }

  return result;
}

unint64_t sub_2296EB478()
{
  result = qword_27D87F718;
  if (!qword_27D87F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F718);
  }

  return result;
}

unint64_t sub_2296EB4D0()
{
  result = qword_27D87F720;
  if (!qword_27D87F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F720);
  }

  return result;
}

unint64_t sub_2296EB528()
{
  result = qword_27D87F728;
  if (!qword_27D87F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F728);
  }

  return result;
}

unint64_t sub_2296EB580()
{
  result = qword_27D87F730;
  if (!qword_27D87F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F730);
  }

  return result;
}

unint64_t sub_2296EB5D8()
{
  result = qword_27D87F738;
  if (!qword_27D87F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F738);
  }

  return result;
}

unint64_t sub_2296EB630()
{
  result = qword_27D87F740;
  if (!qword_27D87F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F740);
  }

  return result;
}

unint64_t sub_2296EB6EC()
{
  result = qword_27D87F770;
  if (!qword_27D87F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5B0, &qword_22A57E7A8);
    sub_2296EB770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F770);
  }

  return result;
}

unint64_t sub_2296EB770()
{
  result = qword_27D87F778;
  if (!qword_27D87F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F778);
  }

  return result;
}

unint64_t sub_2296EB7C4()
{
  result = qword_27D87F780;
  if (!qword_27D87F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296EB848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F780);
  }

  return result;
}

unint64_t sub_2296EB848()
{
  result = qword_27D87F788;
  if (!qword_27D87F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F788);
  }

  return result;
}

unint64_t sub_2296EB89C()
{
  result = qword_27D87F790;
  if (!qword_27D87F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296EB920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F790);
  }

  return result;
}

unint64_t sub_2296EB920()
{
  result = qword_27D87F798;
  if (!qword_27D87F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F798);
  }

  return result;
}

unint64_t sub_2296EB974()
{
  result = qword_27D87F7A8;
  if (!qword_27D87F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296EB9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7A8);
  }

  return result;
}

unint64_t sub_2296EB9F8()
{
  result = qword_27D87F7B0;
  if (!qword_27D87F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7B0);
  }

  return result;
}

unint64_t sub_2296EBA4C()
{
  result = qword_27D87F7D0;
  if (!qword_27D87F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296EBAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7D0);
  }

  return result;
}

unint64_t sub_2296EBAD0()
{
  result = qword_27D87F7D8;
  if (!qword_27D87F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7D8);
  }

  return result;
}

unint64_t sub_2296EBB24()
{
  result = qword_27D87F7F0;
  if (!qword_27D87F7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296EBBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7F0);
  }

  return result;
}

unint64_t sub_2296EBBA8()
{
  result = qword_27D87F7F8;
  if (!qword_27D87F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7F8);
  }

  return result;
}

unint64_t sub_2296EBBFC()
{
  result = qword_27D87F800;
  if (!qword_27D87F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F800);
  }

  return result;
}

unint64_t sub_2296EBC50()
{
  result = qword_27D87F808;
  if (!qword_27D87F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296EBCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F808);
  }

  return result;
}

unint64_t sub_2296EBCD4()
{
  result = qword_27D87F810;
  if (!qword_27D87F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F810);
  }

  return result;
}

uint64_t sub_2296EBD90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F480, &qword_22A57E728);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296EBDFC()
{
  result = qword_27D87F828;
  if (!qword_27D87F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F828);
  }

  return result;
}

unint64_t sub_2296EBE50()
{
  result = qword_27D87F830;
  if (!qword_27D87F830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296EBED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F830);
  }

  return result;
}

unint64_t sub_2296EBED4()
{
  result = qword_27D87F838;
  if (!qword_27D87F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F838);
  }

  return result;
}

unint64_t sub_2296EBF28()
{
  result = qword_27D87F840;
  if (!qword_27D87F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F840);
  }

  return result;
}

void sub_2296EC0BC()
{
  sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_2296EC1B4();
    if (v1 <= 0x3F)
    {
      sub_2296EC83C(319, &qword_27D87F878);
      if (v2 <= 0x3F)
      {
        sub_2296EC24C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2296EC1B4()
{
  if (!qword_27D87E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    sub_2296EC2E4(&qword_27D87E730, &unk_27D87D2A0, &unk_22A578BD0);
    v0 = _s7SecuredVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87E728);
    }
  }
}

void sub_2296EC24C()
{
  if (!qword_27D87F880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87EC90, &unk_22A57CFD0);
    sub_2296EC2E4(&qword_27D87F888, &unk_27D87EC90, &unk_22A57CFD0);
    v0 = _s7SecuredVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87F880);
    }
  }
}

uint64_t sub_2296EC2E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2296EC488()
{
  sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_2296EC83C(319, &qword_27D87CC08);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296EC590()
{
  sub_2296EC83C(319, &qword_27D87CC08);
  if (v0 <= 0x3F)
  {
    sub_2296EC83C(319, &qword_27D87F8B8);
    if (v1 <= 0x3F)
    {
      sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_2296EC784(319, &qword_27D87F8C0, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          _s21EventMetadataInternalV4HomeVMa(319);
          if (v4 <= 0x3F)
          {
            sub_2296EC7E8(319, &qword_27D87F8C8, _s21EventMetadataInternalV6DeviceVMa);
            if (v5 <= 0x3F)
            {
              _s21EventMetadataInternalV6DeviceVMa(319);
              if (v6 <= 0x3F)
              {
                sub_2296EC7E8(319, &qword_27D87F8D0, _s21EventMetadataInternalV4UserVMa);
                if (v7 <= 0x3F)
                {
                  sub_2296EC83C(319, &qword_27D87F8D8);
                  if (v8 <= 0x3F)
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
  }
}

void sub_2296EC784(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = _s7SecuredVMa();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2296EC7E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22A4DDF9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2296EC83C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = _s7SecuredVMa();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2296EC8D4(__int128 *a1)
{
  v3 = sub_22A4DD34C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2])
  {
    (*(v12 + 16))(v15, v1, v11);
  }

  else
  {
    v26 = *a1;
    v27 = v26;
    sub_229588C00(&v27, &v24);
    sub_22A4DD33C();
    v17 = *(a1 + 2);
    v16 = *(a1 + 3);

    *&v26 = sub_22958F6F4(v17, v16);
    *(&v26 + 1) = v18;
    v24 = sub_22970DA38();
    v25 = v19;
    sub_22A4DD36C();
    sub_2296EEA2C(&qword_27D87D2D0, MEMORY[0x277CC5540]);
    sub_229588CA4();
    sub_22A4DD35C();
    v20 = *(v4 + 8);
    v20(v8, v3);
    sub_2295798D4(v24, v25);
    sub_2295798D4(v26, *(&v26 + 1));
    sub_22A4DD32C();
    v20(v10, v3);
  }

  v21 = sub_22A4DB76C();
  (*(v12 + 8))(v15, v11);
  return v21;
}

uint64_t sub_2296ECBC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - v14;
  v16 = *v1;
  *(&v43 + 1) = MEMORY[0x277D84CC0];
  v44 = &off_283CDFC58;
  LODWORD(v42) = v16;
  sub_229890DC4(&v42, 0x6556616D65686373, 0xED00006E6F697372);
  v18 = *(v1 + 1);
  v17 = *(v1 + 2);
  v19 = MEMORY[0x277D837D0];
  *(&v43 + 1) = MEMORY[0x277D837D0];
  v44 = &off_283CDFC68;
  *&v42 = v18;
  *(&v42 + 1) = v17;

  sub_229890DC4(&v42, 0x6D614E746E657665, 0xE900000000000065);
  v20 = _s21EventMetadataInternalVMa(0);
  v21 = v20[6];
  v46 = *(a1 + 32);
  v22 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v22;
  *(&v43 + 1) = v19;
  v44 = &off_283CDFC68;
  *&v42 = sub_2296EC8D4(v45);
  *(&v42 + 1) = v23;
  sub_229890DC4(&v42, 0x495555746E657665, 0xE900000000000044);
  v24 = v20[7];
  *(&v43 + 1) = v19;
  v44 = &off_283CDFC68;
  v25 = sub_22A4DB74C();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v15, v2 + v24, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  v27 = sub_2297C337C(v15);
  v29 = v28;
  sub_22953EAE4(v15, &unk_27D881AA0, &qword_22A57BC20);
  *&v42 = v27;
  *(&v42 + 1) = v29;
  sub_229890DC4(&v42, 0x6D617473656D6974, 0xE900000000000070);
  v30 = v20[8];
  *(&v43 + 1) = _s21EventMetadataInternalV4HomeVMa(0);
  v44 = &off_283CE1708;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
  sub_2296EEB04(v2 + v30, boxed_opaque_existential_1, _s21EventMetadataInternalV4HomeVMa);
  sub_2297A1124(1701670760, 0xE400000000000000, &v42);
  sub_22953EAE4(&v42, &qword_27D882000, &qword_22A578390);
  sub_229564F88(v2 + v20[9], v11, &qword_27D87CBE8, &qword_22A577890);
  v32 = _s21EventMetadataInternalV6DeviceVMa(0);
  if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
  {
    sub_22953EAE4(v11, &qword_27D87CBE8, &qword_22A577890);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  else
  {
    *(&v43 + 1) = v32;
    v44 = &off_283CE16E8;
    v33 = __swift_allocate_boxed_opaque_existential_1(&v42);
    sub_2296EEB6C(v11, v33, _s21EventMetadataInternalV6DeviceVMa);
  }

  sub_2297A1124(0x656369766564, 0xE600000000000000, &v42);
  sub_22953EAE4(&v42, &qword_27D882000, &qword_22A578390);
  v34 = v20[10];
  *(&v43 + 1) = v32;
  v44 = &off_283CE16E8;
  v35 = __swift_allocate_boxed_opaque_existential_1(&v42);
  sub_2296EEB04(v2 + v34, v35, _s21EventMetadataInternalV6DeviceVMa);
  sub_2297A1124(0xD000000000000010, 0x800000022A592900, &v42);
  sub_22953EAE4(&v42, &qword_27D882000, &qword_22A578390);
  sub_229564F88(v2 + v20[11], v7, &qword_27D87CBE0, &unk_22A577880);
  v36 = _s21EventMetadataInternalV4UserVMa(0);
  if ((*(*(v36 - 8) + 48))(v7, 1, v36) == 1)
  {
    sub_22953EAE4(v7, &qword_27D87CBE0, &unk_22A577880);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  else
  {
    *(&v43 + 1) = v36;
    v44 = &off_283CE16C8;
    v37 = __swift_allocate_boxed_opaque_existential_1(&v42);
    sub_2296EEB6C(v7, v37, _s21EventMetadataInternalV4UserVMa);
  }

  sub_2297A1124(1919251317, 0xE400000000000000, &v42);
  sub_22953EAE4(&v42, &qword_27D882000, &qword_22A578390);
  v38 = *(v2 + v20[12]);
  v39 = MEMORY[0x277D84D38];
  *(&v43 + 1) = MEMORY[0x277D84D38];
  v44 = &off_283CDFC60;
  *&v42 = v38;
  sub_229890DC4(&v42, 0x70556D6574737973, 0xEC000000656D6974);
  v40 = *(v2 + v20[13]);
  *(&v43 + 1) = v39;
  v44 = &off_283CDFC60;
  *&v42 = v40;
  return sub_229890DC4(&v42, 0xD000000000000011, 0x800000022A592920);
}

uint64_t sub_2296ED1FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v97 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v97 - v13;
  v15 = *v2;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00) + 36);
  v17 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v18 = *(v16 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v16 + v17);
  v98 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_22961F6EC(v20);

    *(v16 + v17) = v24;
    v20 = v24;
  }

  swift_beginAccess();
  *(v20 + 16) = v15;
  *(v20 + 20) = 0;
  v26 = *(v2 + 1);
  v25 = *(v2 + 2);
  swift_bridgeObjectRetain_n();
  v27 = *(v16 + v17);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v16 + v17);
  if ((v28 & 1) == 0)
  {
    v30 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_22961F6EC(v29);

    *(v16 + v17) = v33;
    v29 = v33;
  }

  swift_beginAccess();
  v34 = *(v29 + 32);
  *(v29 + 24) = v26;
  *(v29 + 32) = v25;

  v35 = _s21EventMetadataInternalVMa(0);
  v36 = v35[6];
  v104 = *(a1 + 32);
  v37 = *(a1 + 16);
  v103[0] = *a1;
  v103[1] = v37;
  v38 = sub_2296EC8D4(v103);
  v40 = v39;

  v41 = *(v16 + v17);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v16 + v17);
  if ((v42 & 1) == 0)
  {
    v44 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = sub_22961F6EC(v43);

    *(v16 + v17) = v47;
    v43 = v47;
  }

  swift_beginAccess();
  v48 = *(v43 + 48);
  *(v43 + 40) = v38;
  *(v43 + 48) = v40;

  v49 = v35[7];
  v50 = sub_22A4DB74C();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v14, v2 + v49, v50);
  (*(v51 + 56))(v14, 0, 1, v50);
  v52 = sub_2297C337C(v14);
  v54 = v53;
  sub_22953EAE4(v14, &unk_27D881AA0, &qword_22A57BC20);

  v55 = *(v16 + v17);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v16 + v17);
  v58 = v16;
  if ((v56 & 1) == 0)
  {
    v59 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_22961F6EC(v57);

    *(v16 + v17) = v62;
    v57 = v62;
  }

  swift_beginAccess();
  v63 = *(v57 + 64);
  *(v57 + 56) = v52;
  *(v57 + 64) = v54;

  KeyPath = swift_getKeyPath();
  v65 = v35[8];
  *(&v101 + 1) = _s21EventMetadataInternalV4HomeVMa(0);
  v102 = sub_2296EEA2C(&qword_27D87F8E0, _s21EventMetadataInternalV4HomeVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
  sub_2296EEB04(v2 + v65, boxed_opaque_existential_1, _s21EventMetadataInternalV4HomeVMa);
  sub_229679328(KeyPath, &v100);

  if (*(&v101 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  v67 = swift_getKeyPath();
  v68 = v98;
  sub_229564F88(v2 + v35[9], v98, &qword_27D87CBE8, &qword_22A577890);
  v69 = _s21EventMetadataInternalV6DeviceVMa(0);
  if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
  {
    sub_22953EAE4(v68, &qword_27D87CBE8, &qword_22A577890);
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
  }

  else
  {
    *(&v101 + 1) = v69;
    v102 = sub_2296EEA2C(&qword_27D87F8E8, _s21EventMetadataInternalV6DeviceVMa);
    v70 = __swift_allocate_boxed_opaque_existential_1(&v100);
    sub_2296EEB6C(v68, v70, _s21EventMetadataInternalV6DeviceVMa);
  }

  sub_229679528(v67, &v100);

  if (*(&v101 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  v71 = swift_getKeyPath();
  v72 = v35[10];
  *(&v101 + 1) = v69;
  v102 = sub_2296EEA2C(&qword_27D87F8E8, _s21EventMetadataInternalV6DeviceVMa);
  v73 = __swift_allocate_boxed_opaque_existential_1(&v100);
  sub_2296EEB04(v2 + v72, v73, _s21EventMetadataInternalV6DeviceVMa);
  sub_229679528(v71, &v100);

  if (*(&v101 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  v74 = swift_getKeyPath();
  v75 = v99;
  sub_229564F88(v2 + v35[11], v99, &qword_27D87CBE0, &unk_22A577880);
  v76 = _s21EventMetadataInternalV4UserVMa(0);
  if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
  {
    sub_22953EAE4(v75, &qword_27D87CBE0, &unk_22A577880);
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
  }

  else
  {
    *(&v101 + 1) = v76;
    v102 = sub_2296EEA2C(&qword_27D87F8F0, _s21EventMetadataInternalV4UserVMa);
    v77 = __swift_allocate_boxed_opaque_existential_1(&v100);
    sub_2296EEB6C(v75, v77, _s21EventMetadataInternalV4UserVMa);
  }

  sub_229679728(v74, &v100);

  if (*(&v101 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v100);
  }

  v78 = *(v2 + v35[12]);
  v79 = *(v58 + v17);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(v58 + v17);
  if ((v80 & 1) == 0)
  {
    v82 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v85 = sub_22961F6EC(v81);

    *(v58 + v17) = v85;
    v81 = v85;
  }

  v86 = v81 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  swift_beginAccess();
  *v86 = v78;
  *(v86 + 8) = 0;
  v87 = *(v2 + v35[13]);
  v88 = *(v58 + v17);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v58 + v17);
  if ((v89 & 1) == 0)
  {
    v91 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    v94 = sub_22961F6EC(v90);

    *(v58 + v17) = v94;
    v90 = v94;
  }

  v95 = v90 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  result = swift_beginAccess();
  *v95 = v87;
  *(v95 + 8) = 0;
  return result;
}

uint64_t sub_2296EDAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  v13 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_22961F6EC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_2296EEB6C(v12, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_2295E90C8(v7, v16 + v21, &qword_27D87E060, &qword_22A57B0D8);
  return swift_endAccess();
}

uint64_t sub_2296EDCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v13 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_22961F6EC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_2296EEB6C(v12, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  sub_2295E90C8(v7, v16 + v21, &qword_27D87E058, &qword_22A57B0D0);
  return swift_endAccess();
}

uint64_t sub_2296EDED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v13 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_22961F6EC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_2296EEB6C(v12, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_2295E90C8(v7, v16 + v21, &qword_27D87E058, &qword_22A57B0D0);
  return swift_endAccess();
}

uint64_t sub_2296EE0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  v13 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_22961F6EC(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_2296EEB6C(v12, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_2295E90C8(v7, v16 + v21, &qword_27D87E050, &qword_22A57B0C8);
  return swift_endAccess();
}

uint64_t sub_2296EE2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v9 = MEMORY[0x277D837D0];
  v10 = &off_283CDFC68;
  v8[0] = sub_2296EC8D4(v11);
  v8[1] = v5;
  sub_229890DC4(v8, 0x44495555656D6F68, 0xE800000000000000);
  v6 = *(v2 + *(a2 + 20));
  v9 = MEMORY[0x277D84CC0];
  v10 = &off_283CDFC58;
  LODWORD(v8[0]) = v6;
  return sub_229890DC4(v8, 0x73726573556D756ELL, 0xE800000000000000);
}

uint64_t sub_2296EE3B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v2;
  v18 = *(a1 + 32);
  v15 = MEMORY[0x277D837D0];
  v16 = &off_283CDFC68;
  v13 = sub_2296EC8D4(v17);
  v14 = v3;
  sub_229890DC4(&v13, 0x5555656369766564, 0xEA00000000004449);
  v4 = _s21EventMetadataInternalV6DeviceVMa(0);
  sub_2297C2ED4(0x444955556D6F6F72, 0xE800000000000000, v1 + v4[5]);
  v5 = *(v1 + v4[6]);
  v6 = MEMORY[0x277D839B0];
  v15 = MEMORY[0x277D839B0];
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v5;
  sub_229890DC4(&v13, 0xD000000000000013, 0x800000022A592940);
  v7 = *(v1 + v4[7]);
  v15 = v6;
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v7;
  sub_229890DC4(&v13, 0x69766544654D7369, 0xEA00000000006563);
  v8 = *(v1 + v4[8]);
  v15 = v6;
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v8;
  sub_229890DC4(&v13, 0xD000000000000011, 0x800000022A592960);
  v9 = (v1 + v4[9]);
  v11 = *v9;
  v10 = v9[1];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v16 = sub_2296B26B4();
  v13 = v11;
  v14 = v10;

  return sub_229890DC4(&v13, 0x726F6C6F63, 0xE500000000000000);
}

uint64_t sub_2296EE57C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v12;
  v40 = *(a1 + 32);
  v13 = sub_2296EC8D4(v39);
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A0, &unk_22A57FDF0) + 36);
  v17 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v18 = (v16 + v17[5]);
  v19 = v18[1];

  *v18 = v13;
  v18[1] = v15;
  v20 = _s21EventMetadataInternalV6DeviceVMa(0);
  v21 = v20[5];
  v38 = *(a1 + 32);
  v22 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v22;
  sub_229564F88(v2 + v21, v11, &unk_27D87D2A0, &unk_22A578BD0);
  result = (*(v5 + 48))(v11, 1, v4);
  if (result != 1)
  {
    v24 = v36;
    (*(v5 + 32))(v36, v11, v4);
    v25 = sub_2296B2730(v37);
    v27 = v26;
    (*(v5 + 8))(v24, v4);
    v28 = (v16 + v17[6]);
    v29 = v28[1];

    *v28 = v25;
    v28[1] = v27;
  }

  *(v16 + v17[7]) = *(v2 + v20[6]);
  *(v16 + v17[8]) = *(v2 + v20[7]);
  *(v16 + v17[9]) = *(v2 + v20[8]);
  v30 = (v2 + v20[9]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v33 = (v16 + v17[10]);
    v34 = v33[1];

    *v33 = v32;
    v33[1] = v31;
  }

  return result;
}

uint64_t sub_2296EE820(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v7 = MEMORY[0x277D837D0];
  v8 = &off_283CDFC68;
  v6[0] = sub_2296EC8D4(v9);
  v6[1] = v3;
  sub_229890DC4(v6, 0x4449555572657375, 0xE800000000000000);
  v4 = *(v1 + *(_s21EventMetadataInternalV4UserVMa(0) + 20));
  v7 = MEMORY[0x277D84CC0];
  v8 = &off_283CDFC58;
  LODWORD(v6[0]) = v4;
  return sub_229890DC4(v6, 0x67656C6976697270, 0xE900000000000065);
}

uint64_t sub_2296EE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v12 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v12;
  v23 = *(a1 + 32);
  v13 = sub_2296EC8D4(v22);
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 36);
  v17 = a6(0);
  v18 = (v16 + *(v17 + 20));
  v19 = v18[1];

  *v18 = v13;
  v18[1] = v15;
  v21 = v16 + *(v17 + 24);
  *v21 = *(v6 + *(a2 + 20));
  *(v21 + 4) = 0;
  return result;
}

uint64_t sub_2296EEA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2296EEB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296EEB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2296EEE98()
{
  result = [objc_allocWithZone(type metadata accessor for DemoModeManagerDataSource()) init];
  qword_281402230 = result;
  return result;
}

id sub_2296EEFE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoModeManagerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2296EF0D8()
{
  v1 = _s22DefaultSwiftExtensionsCMa();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_isNotifyingAdaptiveTemperatureAutomationsDisclosure];
  *v3 = 0;
  v3[4] = 0;
  v4 = type metadata accessor for DefaultUserStorage();
  swift_allocObject();
  v5 = v0;
  v6 = sub_2297C9E60(v5);

  v7 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage];
  v7[3] = v4;
  v7[4] = &off_283CE5890;
  *v7 = v6;
  v9.receiver = v2;
  v9.super_class = v1;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  [v5 setSwiftExtensions_];
}

HMDCameraStreamManagerDataSource __swiftcall HMDCameraStreamManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDCameraStreamManagerDataSource()
{
  result = qword_27D87F9E8;
  if (!qword_27D87F9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87F9E8);
  }

  return result;
}

uint64_t sub_2296EF344()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F30);
  __swift_project_value_buffer(v0, qword_281401F30);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296EF3BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = sub_22A4DBC7C();
  *(v6 + 144) = sub_22953E188(&qword_281403838, MEMORY[0x277D0EFE0]);
  __swift_allocate_boxed_opaque_existential_1((v6 + 112));
  sub_22A4DBC6C();
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 256) = a4;
  *(v6 + 264) = a5;
  *(v6 + 272) = 0;
  v12 = qword_281401F28;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DD07C();
  __swift_project_value_buffer(v14, qword_281401F30);
  v15 = v13;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136315650;
    v19 = sub_22A4DDDDC();
    v21 = sub_2295A3E30(v19, v20, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = sub_22A4DE82C();
    v24 = sub_2295A3E30(v22, v23, &v30);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_22A4DE82C();
    v27 = sub_2295A3E30(v25, v26, &v30);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_229538000, v16, v17, "Configured to monitor queue %s, interval: %s, threshold: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2296EF648(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v37 - v7;
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v39 = a3;
    sub_22A4DB73C();
    sub_22A4DB69C();
    sub_22A4DE88C();
    v16 = *(v15 + 256);
    v17 = *(v15 + 264);
    v18 = sub_22A4DE84C();
    v40 = v10;
    if (v18)
    {
      if (qword_281401F28 != -1)
      {
        swift_once();
      }

      v19 = sub_22A4DD07C();
      __swift_project_value_buffer(v19, qword_281401F30);

      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDCDC();

      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_12;
      }

      v22 = swift_slowAlloc();
      v38 = v9;
      v23 = v22;
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(v39, a4, &v41);
      *(v23 + 12) = 2080;
      v25 = sub_22A4DE82C();
      v27 = sub_2295A3E30(v25, v26, &v41);

      *(v23 + 14) = v27;
      v28 = "Healthy Queue: %s, delay: %s";
    }

    else
    {
      if (qword_281401F28 != -1)
      {
        swift_once();
      }

      v29 = sub_22A4DD07C();
      __swift_project_value_buffer(v29, qword_281401F30);

      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDCEC();

      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_12;
      }

      v30 = swift_slowAlloc();
      v38 = v9;
      v23 = v30;
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(v39, a4, &v41);
      *(v23 + 12) = 2080;
      v31 = sub_22A4DE82C();
      v33 = sub_2295A3E30(v31, v32, &v41);

      *(v23 + 14) = v33;
      v28 = "Slow Queue: %s, delay: %s";
    }

    _os_log_impl(&dword_229538000, v20, v21, v28, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    v34 = v23;
    v9 = v38;
    MEMORY[0x22AAD4E50](v34, -1, -1);
LABEL_12:

    v35 = sub_22A4DD9DC();
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v15;

    sub_22957F3C0(0, 0, v8, &unk_22A57FFB8, v36);

    return (*(v40 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_2296EFAE4()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_2295B23D0(v1 + 192, (v0 + 2));
  if (v0[5])
  {
    sub_22957F1C4((v0 + 2), (v0 + 7));
    sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
    v2 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_22A4DBC8C();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  else
  {
    sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  }

  v3 = v0[15];
  sub_22953E86C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2296EFBE0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_22953EAE4(v0 + 152, &qword_27D87EA00, &qword_22A579B80);
  sub_22953EAE4(v0 + 192, &qword_27D87EA00, &qword_22A579B80);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2296EFC84()
{
  v1 = *(sub_22A4DB74C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_2296EF648(v3, v0 + v2, v5, v6);
}

uint64_t sub_2296EFD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_2296EFAC4(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ThermostatSuggestedPreset.Scenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatSuggestedPreset.Scenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2296EFF30()
{
  result = qword_27D87F9F0;
  if (!qword_27D87F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F9F8, qword_22A57FFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F9F0);
  }

  return result;
}

uint64_t sub_2296EFF94()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DE79C();
  return sub_22A4DE7BC();
}

uint64_t sub_2296F0008()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DE79C();
  return sub_22A4DE7BC();
}

uint64_t sub_2296F004C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2296F0214(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2296F0148()
{
  result = qword_27D87FA00;
  if (!qword_27D87FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FA00);
  }

  return result;
}

uint64_t sub_2296F019C()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB940);
  __swift_project_value_buffer(v0, qword_27D8AB940);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296F0214(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_2296F0228()
{
  result = qword_27D87FA08;
  if (!qword_27D87FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FA08);
  }

  return result;
}

uint64_t sub_2296F027C(uint64_t a1, char a2)
{
  v4 = sub_22A4DC8EC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x277D172E0])
  {
    if (a2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v6 != *MEMORY[0x277D172B8])
    {
      if (v6 == *MEMORY[0x277D172D8])
      {
        return 7;
      }

      if (v6 != *MEMORY[0x277D172D0])
      {
        if (v6 == *MEMORY[0x277D172E8])
        {
          return 5;
        }

        if (v6 != *MEMORY[0x277D172C8] && v6 != *MEMORY[0x277D172C0])
        {
          (*(v5 + 8))(a1, v4);
        }
      }

      return 0;
    }

    if (a2)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2296F0434()
{
  result = sub_22A4DB74C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296F04F8()
{
  result = sub_22A4DB74C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296F057C()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_notificationTask;
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_notificationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_notificationTask);

    sub_22A4DDA7C();
  }

  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_updateStream);
  v3 = *(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s17MediaRemoteVolumeCMa()
{
  result = qword_27D87FA98;
  if (!qword_27D87FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296F069C()
{
  sub_2296791B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_2296F0760(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22958A648(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for HMFMessageName(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2296F0858(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22958A53C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2296F097C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22A4DE0EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_22A4DE0EC();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2296F3B00(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2296F0AA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22958B580(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2296F0BE8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2296F0D54(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t), unint64_t *a3, uint64_t *a4)
{
  v11 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_22A4DE0EC();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  v14 = *v4;
  if (!(*v4 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = __OFADD__(v15, v13);
    result = v15 + v13;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 0)
  {
    v22 = *v4;
  }

  v23 = sub_22A4DE0EC();
  v16 = __OFADD__(v23, v13);
  result = v23 + v13;
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_2296F3B00(result);
  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF8;
  v18 = *(v6 + 0x10);
  v19 = (*(v6 + 0x18) >> 1) - v18;
  result = a2(&v44, v6 + 8 * v18 + 32, v19, a1);
  if (result < v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v20 = *(v6 + 16);
    v16 = __OFADD__(v20, result);
    v21 = v20 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v6 + 16) = v21;
  }

  if (result != v19)
  {
LABEL_11:
    result = sub_22953EE84();
    *v11 = v5;
    return result;
  }

LABEL_18:
  a2 = *(v6 + 16);
  v13 = v45;
  v6 = v47;
  v39 = v46;
  v40 = v44;
  v7 = v48;
  if (v44 < 0)
  {
LABEL_22:
    if (!sub_22A4DE12C())
    {
      goto LABEL_11;
    }

    sub_229562F68(0, a3, a4);
    result = swift_dynamicCast();
    v25 = v43;
    goto LABEL_33;
  }

  if (!v48)
  {
    v26 = (v46 + 64) >> 6;
    if (v26 <= v47 + 1)
    {
      v27 = v47 + 1;
    }

    else
    {
      v27 = (v46 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v24 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_61;
      }

      if (v24 >= v26)
      {
        v25 = 0;
        v7 = 0;
        goto LABEL_32;
      }

      v7 = *(v45 + 8 * v24);
      ++v6;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  v24 = v47;
LABEL_31:
  v29 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v25 = *(*(v44 + 48) + ((v24 << 9) | (8 * v29)));
  result = v25;
  v28 = v24;
LABEL_32:
  v47 = v28;
  v48 = v7;
  v6 = v28;
LABEL_33:
  v30 = v40;
  v31 = a2;
  if (!v25)
  {
    goto LABEL_11;
  }

  v32 = (v39 + 64) >> 6;
LABEL_35:
  if (v31 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_22A4DD85C();
    v30 = v40;
  }

  v5 = *v11;
  v33 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v38 = *v11 & 0xFFFFFFFFFFFFFF8;
  if (v31 > v33)
  {
    v33 = v31;
  }

  v41 = v33;
  while (1)
  {
    while (1)
    {
      if (v31 == v41)
      {
        v31 = v41;
        *(v38 + 16) = v41;
        goto LABEL_35;
      }

      *(v38 + 32 + 8 * v31++) = v25;
      if ((v30 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a3, a4);
        result = swift_dynamicCast();
        v30 = v40;
        v25 = v43;
        if (v43)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v42 = v31;
    if (!v7)
    {
      break;
    }

    v34 = v6;
LABEL_56:
    v37 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v25 = *(*(v30 + 48) + ((v34 << 9) | (8 * v37)));
    result = v25;
    v30 = v40;
    v36 = v34;
LABEL_41:
    v44 = v30;
    v45 = v13;
    v46 = v39;
    v47 = v36;
    v6 = v36;
    v48 = v7;
    v31 = v42;
    if (!v25)
    {
LABEL_58:
      *(v38 + 16) = v31;
      goto LABEL_11;
    }
  }

  if (v32 <= v6 + 1)
  {
    v35 = v6 + 1;
  }

  else
  {
    v35 = (v39 + 64) >> 6;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
      v25 = 0;
      v7 = 0;
      goto LABEL_41;
    }

    v7 = *(v13 + 8 * v34);
    ++v6;
    if (v7)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2296F1108(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_22A4DE22C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2296F1220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2296F12A4(uint64_t a1)
{
  v2 = sub_2296F145C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F12E0(uint64_t a1)
{
  v2 = sub_2296F145C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeUtilTestFailure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAA8, &qword_22A5801A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2296F145C()
{
  result = qword_27D87FAB0;
  if (!qword_27D87FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAB0);
  }

  return result;
}

uint64_t HomeUtilTestFailure.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAB8, &qword_22A5801A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9 = sub_22A4DE49C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2296F160C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAB8, &qword_22A5801A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_22A4DE49C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_2296F1788(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAA8, &qword_22A5801A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t runHomeUtilOnDeviceTests(_:)(uint64_t a1)
{
  v3 = *(*(sub_22A4DD63C() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v4 = *(*(sub_22A4DB0DC() - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[8] = a1;
  v5 = *(MEMORY[0x277D0F010] + 4);
  v6 = swift_task_alloc();
  v1[11] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAC0, &qword_22A5801C0);
  v8 = sub_229590C00(&qword_27D87FAC8, &qword_27D87FAC0, &qword_22A5801C0);
  *v6 = v1;
  v6[1] = sub_2296F1A3C;

  return MEMORY[0x282167810](&unk_22A5801B8, 0, v7, &type metadata for Group, v8);
}

void sub_2296F1A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2296F1B64, 0, 0);
  }
}

void sub_2296F1B64()
{
  v1 = v0[12];
  v2 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v42 = *(v1 + 16);
  if (v42)
  {
    v3 = 0;
    v40 = v0[12];
    v41 = v1 + 32;
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_30:
        __break(1u);
        return;
      }

      v4 = (v41 + 24 * v3);
      v44 = *v4;
      v45 = v4[1];
      v5 = v4[2];
      ++v3;
      v6 = *(v5 + 16);

      v7 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_6:
      v9 = v5 + 32 * v7;
      while (v6 != v7)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v10 = (v9 + 32);
        ++v7;
        v11 = *(v9 + 56);
        v9 += 32;
        if (v11)
        {
          v43 = v3;
          v13 = *v10;
          v12 = v10[1];
          v14 = v10[2];
          v0[2] = 0;
          v0[3] = 0xE000000000000000;

          MEMORY[0x22AAD08C0](v44, v45);
          MEMORY[0x22AAD08C0](2112032, 0xE300000000000000);
          MEMORY[0x22AAD08C0](v13, v12);
          MEMORY[0x22AAD08C0](2112032, 0xE300000000000000);
          v0[4] = v14;
          v0[5] = v11;
          sub_22A4DE31C();

          v15 = v0[2];
          v16 = v0[3];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_22958A53C(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          v1 = v40;
          if (v18 >= v17 >> 1)
          {
            v8 = sub_22958A53C((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v15;
          *(v19 + 5) = v16;
          v3 = v43;
          goto LABEL_6;
        }
      }

      sub_2296F0858(v8);
      if (v3 != v42)
      {
        continue;
      }

      break;
    }

    v2 = v46;
    v1 = v0[12];
  }

  v20 = v0[13];
  v21 = v0[10];
  v22 = sub_22A4DB11C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_22A4DB10C();
  sub_22A4DB0CC();
  sub_22A4DB0EC();
  v0[6] = v1;
  v0[7] = v2;
  sub_2296F3838();
  v25 = sub_22A4DB0FC();
  v27 = v0[12];
  v29 = v0[9];
  v28 = v0[10];
  if (v20)
  {

    v30 = v0[1];

    v30();
  }

  else
  {
    v31 = v25;
    v32 = v0[12];
    v33 = v26;

    sub_22A4DD62C();
    v34 = sub_22A4DD60C();
    v36 = v35;
    sub_2295798D4(v31, v33);

    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xD000000000000016;
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0x800000022A592D70;
    }

    v39 = v0[1];

    v39(v37, v38);
  }
}

uint64_t sub_2296F1F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_2296F1F44, 0, 0);
}

uint64_t sub_2296F1F44()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x277D0EFE8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_2296F2024;
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  return MEMORY[0x2821677B0]();
}

uint64_t sub_2296F2024()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2296F21C4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2296F2140;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296F2140()
{
  v4 = v0[1];
  v1 = v0[9];
  v2 = v0[10];

  return v4(v1, v2, 0, 0);
}

uint64_t sub_2296F21C4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  *(v0 + 56) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
  }

  else
  {
    v6 = *(v0 + 120);
    swift_getErrorValue();
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    sub_22A4DE5EC();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v12 = *(v0 + 8);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);

  return v12(v10, v9, v5, v4);
}

uint64_t sub_2296F22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2296F2308, 0, 0);
}

uint64_t sub_2296F2308()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 32) = static PassUpdater.shared;
  *(v0 + 40) = sub_22A4DBCDC();

  return MEMORY[0x2822009F8](sub_2296F23B0, v1, 0);
}

uint64_t sub_2296F23B0()
{
  v1 = swift_task_alloc();
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 32) + 112);
  *(v0 + 48) = v1;
  *(v1 + 16) = v2;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2296F2498;

  return v7();
}

uint64_t sub_2296F2498()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_2296F27A8;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_2296F25C0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296F25C0()
{
  v1 = *(v0 + 16);

  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2296F26B4;
  v4 = *(v0 + 24);

  return v6();
}

uint64_t sub_2296F26B4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2296F27A8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296F2814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = swift_task_alloc();
  v2[3] = v6;
  *(v6 + 16) = *(a2 + 16);
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_2296F28EC;

  return sub_2296F1F20(v4, v5, &unk_22A580520, v6);
}

uint64_t sub_2296F28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 32);
  v10 = *(*v4 + 24);
  v11 = *(*v4 + 16);
  v14 = *v4;

  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v12 = *(v14 + 8);

  return v12();
}

uint64_t sub_2296F2A3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[3] = a1;
  v2[4] = v3;
  v2[5] = v4;
  v2[2] = a2[2];
  v5 = *(MEMORY[0x277D0F010] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB90, &qword_22A580510);
  v8 = sub_229590C00(&qword_27D87FB98, &qword_27D87FB90, &qword_22A580510);
  *v6 = v2;
  v6[1] = sub_2296F2B68;

  return MEMORY[0x282167810](&unk_22A580508, 0, v7, &type metadata for TestResult, v8);
}

void sub_2296F2B68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 56) = a1;

    MEMORY[0x2822009F8](sub_2296F2CA4, 0, 0);
  }
}

uint64_t sub_2296F2CA4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  *v3 = v0[4];
  v3[1] = v2;
  v3[2] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2296F2D20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAF0, &qword_22A5804B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F3A58();
  sub_22A4DE80C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB00, &unk_22A5804B8);
  sub_2296F4320(&qword_27D87FB08, sub_2296F3AAC);
  sub_22A4DE59C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0);
    sub_22A4DE59C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2296F2F34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB58, &unk_22A5804E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4620();
  sub_22A4DE80C();
  v15 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB40, &qword_22A5804D8);
    sub_2296F4674(&qword_27D87FB60, sub_2296F4740);
    sub_22A4DE59C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2296F3108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FBE8, &qword_22A5807E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4DCC();
  sub_22A4DE80C();
  LOBYTE(v16) = 0;
  sub_22A4DE54C();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_2296F4E74();
    sub_22A4DE53C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2296F3298()
{
  if (*v0)
  {
    result = 0x736572756C696166;
  }

  else
  {
    result = 0x7370756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_2296F32D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F33A8(uint64_t a1)
{
  v2 = sub_2296F3A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F33E4(uint64_t a1)
{
  v2 = sub_2296F3A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F3420@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296F40BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2296F3468()
{
  if (*v0)
  {
    result = 0x7573655274736574;
  }

  else
  {
    result = 0x6D614E70756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_2296F34B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7573655274736574 && a2 == 0xEB0000000073746CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F3598(uint64_t a1)
{
  v2 = sub_2296F4620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F35D4(uint64_t a1)
{
  v2 = sub_2296F4620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F3610@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296F43EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2296F3660()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x656D614E74736574;
  }

  *v0;
  return result;
}

uint64_t sub_2296F3698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E74736574 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F3770(uint64_t a1)
{
  v2 = sub_2296F4DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F37AC(uint64_t a1)
{
  v2 = sub_2296F4DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F37E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2296F4BD8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2296F3838()
{
  result = qword_27D87FAD0;
  if (!qword_27D87FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAD0);
  }

  return result;
}

uint64_t sub_2296F389C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2296F38E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2296F3954()
{
  result = qword_27D87FAD8;
  if (!qword_27D87FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAD8);
  }

  return result;
}

unint64_t sub_2296F39AC()
{
  result = qword_27D87FAE0;
  if (!qword_27D87FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAE0);
  }

  return result;
}

unint64_t sub_2296F3A04()
{
  result = qword_27D87FAE8;
  if (!qword_27D87FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAE8);
  }

  return result;
}

unint64_t sub_2296F3A58()
{
  result = qword_27D87FAF8;
  if (!qword_27D87FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAF8);
  }

  return result;
}

unint64_t sub_2296F3AAC()
{
  result = qword_27D87FB10;
  if (!qword_27D87FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB10);
  }

  return result;
}

uint64_t sub_2296F3B00(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22A4DE0EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22A4DE22C();
  *v1 = result;
  return result;
}

uint64_t sub_2296F3BA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87FB88, &qword_27D87FB80, &qword_22A580500);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB80, &qword_22A580500);
            v9 = sub_22958C03C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_27D87D108, 0x277D287E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F3D54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87D568, &qword_27D87D398, &qword_22A578518);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D398, &qword_22A578518);
            v9 = sub_22958C03C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_281401B70, off_278666148);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F3F08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87FB78, &qword_27D87FB70, &qword_22A5804F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB70, &qword_22A5804F8);
            v9 = sub_22958C0E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F40BC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB18, &qword_22A5804C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F3A58();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB00, &unk_22A5804B8);
  HIBYTE(v10) = 0;
  sub_2296F4320(&qword_27D87FB20, sub_2296F4398);
  sub_22A4DE4EC();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  HIBYTE(v10) = 1;
  sub_2296E65D0(&qword_27D87F750);
  sub_22A4DE4EC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2296F4320(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FB00, &unk_22A5804B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296F4398()
{
  result = qword_27D87FB28;
  if (!qword_27D87FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB28);
  }

  return result;
}

uint64_t sub_2296F43EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB30, &qword_22A5804D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4620();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_22A4DE49C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB40, &qword_22A5804D8);
    v10[15] = 1;
    sub_2296F4674(&qword_27D87FB48, sub_2296F46EC);
    sub_22A4DE4EC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2296F4620()
{
  result = qword_27D87FB38;
  if (!qword_27D87FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB38);
  }

  return result;
}

uint64_t sub_2296F4674(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FB40, &qword_22A5804D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296F46EC()
{
  result = qword_27D87FB50;
  if (!qword_27D87FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB50);
  }

  return result;
}

unint64_t sub_2296F4740()
{
  result = qword_27D87FB68;
  if (!qword_27D87FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB68);
  }

  return result;
}

uint64_t sub_2296F4794()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229844CA4(v2);
}

uint64_t sub_2296F4840(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2296F22E8(a1, v5, v4);
}

uint64_t sub_2296F48EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22985007C(a1, v5, v4);
}

unint64_t sub_2296F49CC()
{
  result = qword_27D87FBA0;
  if (!qword_27D87FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBA0);
  }

  return result;
}

unint64_t sub_2296F4A24()
{
  result = qword_27D87FBA8;
  if (!qword_27D87FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBA8);
  }

  return result;
}

unint64_t sub_2296F4A7C()
{
  result = qword_27D87FBB0;
  if (!qword_27D87FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBB0);
  }

  return result;
}

unint64_t sub_2296F4AD4()
{
  result = qword_27D87FBB8;
  if (!qword_27D87FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBB8);
  }

  return result;
}

unint64_t sub_2296F4B2C()
{
  result = qword_27D87FBC0;
  if (!qword_27D87FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBC0);
  }

  return result;
}

unint64_t sub_2296F4B84()
{
  result = qword_27D87FBC8;
  if (!qword_27D87FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBC8);
  }

  return result;
}

uint64_t sub_2296F4BD8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FBD0, &qword_22A5807E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4DCC();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_22A4DE49C();
    v10[15] = 1;
    sub_2296F4E20();
    sub_22A4DE48C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_2296F4DCC()
{
  result = qword_27D87FBD8;
  if (!qword_27D87FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBD8);
  }

  return result;
}

unint64_t sub_2296F4E20()
{
  result = qword_27D87FBE0;
  if (!qword_27D87FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBE0);
  }

  return result;
}

unint64_t sub_2296F4E74()
{
  result = qword_27D87FBF0;
  if (!qword_27D87FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBF0);
  }

  return result;
}

unint64_t sub_2296F4EDC()
{
  result = qword_27D87FBF8;
  if (!qword_27D87FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBF8);
  }

  return result;
}

unint64_t sub_2296F4F34()
{
  result = qword_27D87FC00;
  if (!qword_27D87FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FC00);
  }

  return result;
}

unint64_t sub_2296F4F8C()
{
  result = qword_27D87FC08;
  if (!qword_27D87FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FC08);
  }

  return result;
}

void sub_2296F4FE4(void *a1)
{
  v3 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [v1 roomUUIDsSupportingLocalPresence];
    sub_22A4DB7DC();
    sub_2295E9190(&qword_281403880, MEMORY[0x277CC95F0]);
    v5 = sub_22A4DDB6C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v7 = *MEMORY[0x277CD0D50];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v8;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
    *(inited + 48) = v5;
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v9 = sub_22A4DD47C();

    [a1 respondWithPayload:v9 error:0];
  }

  else
  {
    v10 = [objc_opt_self() hmErrorWithCode_];
    v11 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

uint64_t sub_2296F5280()
{
  v29 = sub_22A4DB7DC();
  v26 = *(v29 - 8);
  v1 = *(v26 + 64);
  v2 = MEMORY[0x28223BE20](v29);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = [v0 hapAccessories];
  sub_229690ADC();
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    v10 = (v26 + 32);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v12 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v12 supportsPresenceDetectionViaHAP] & 1) != 0 || (objc_msgSend(v13, sel_supportsPresenceDetectionViaMatter))
      {
        v15 = v7;
        v16 = [v13 room];
        v17 = [v16 uuid];

        v18 = v25;
        sub_22A4DB79C();

        v19 = *v10;
        (*v10)(v5, v18, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22958B1F0(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        if (v21 >= v20 >> 1)
        {
          v11 = sub_22958B1F0(v20 > 1, v21 + 1, 1, v11);
        }

        *(v11 + 2) = v21 + 1;
        v19(&v11[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v5, v29);
        v7 = v15;
      }

      else
      {
      }

      ++v9;
      if (v14 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_22:

  v22 = sub_2296727F4(v11);

  return v22;
}

id sub_2296F5638()
{
  swift_getObjectType();
  v1 = sub_22A4DB74C();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v1);
  v76 = &v69[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22A4DB7DC();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22A4DD07C();
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v69[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v69[-v16];
  v18 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v18)
  {
    return result;
  }

  v74 = [v0 backingStore];
  if (v74)
  {
    result = [v0 swiftExtensions];
    if (result)
    {
      v20 = result;
      v73 = v8;
      swift_getObjectType();
      v72 = &_s15SwiftExtensionsPMp_0;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v21 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
        swift_beginAccess();
        sub_229564F88(v20 + v21, &v82, &qword_27D87FC10, &unk_22A5832B0);
        swift_unknownObjectRelease();
        v22 = v84;
        sub_22953EAE4(&v82, &qword_27D87FC10, &unk_22A5832B0);
        if (v22)
        {
          sub_2297A46D4();
          v23 = v0;
          v24 = sub_22A4DD05C();
          v25 = sub_22A4DDCCC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v80[0] = v27;
            *v26 = 136315394;
            v82 = 91;
            v83 = 0xE100000000000000;
            v28 = [v23 logIdentifier];
            v29 = sub_22A4DD5EC();
            v31 = v30;

            MEMORY[0x22AAD08C0](v29, v31);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v32 = sub_2295A3E30(v82, v83, v80);

            *(v26 + 4) = v32;
            *(v26 + 12) = 2080;
            *(v26 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v80);
            _os_log_impl(&dword_229538000, v24, v25, "%s %s reusing RoomPresenceStorage", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v27, -1, -1);
            MEMORY[0x22AAD4E50](v26, -1, -1);
          }

          return (*(v79 + 8))(v15, v73);
        }

        sub_2297A46D4();
        v44 = v0;
        v45 = sub_22A4DD05C();
        v46 = sub_22A4DDCCC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v80[0] = v71;
          *v47 = 136315394;
          v82 = 91;
          v83 = 0xE100000000000000;
          v48 = v44;
          v49 = [v44 logIdentifier];
          v50 = sub_22A4DD5EC();
          v52 = v51;

          v70 = v46;
          MEMORY[0x22AAD08C0](v50, v52);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v53 = sub_2295A3E30(v82, v83, v80);
          v44 = v48;

          *(v47 + 4) = v53;
          *(v47 + 12) = 2080;
          *(v47 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v80);
          _os_log_impl(&dword_229538000, v45, v70, "%s %s initializing DefaultRoomPresenceStorage", v47, 0x16u);
          v54 = v71;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v54, -1, -1);
          MEMORY[0x22AAD4E50](v47, -1, -1);
        }

        (*(v79 + 8))(v17, v73);
        v55 = v74;
        v56 = [v74 context];
        v57 = v44;
        v58 = [v44 uuid];
        sub_22A4DB79C();

        v84 = sub_22A4DBC7C();
        v85 = sub_2295E9190(&qword_281403838, MEMORY[0x277D0EFE0]);
        __swift_allocate_boxed_opaque_existential_1(&v82);
        sub_22A4DBC6C();
        v59 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
        v60 = _s26DefaultRoomPresenceStorageCMa();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        v63 = swift_allocObject();
        swift_defaultActor_initialize();
        v64 = v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
        *v64 = 0u;
        *(v64 + 16) = 0u;
        *(v64 + 32) = 0;
        *(v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom) = MEMORY[0x277D84F98];
        *(v63 + 112) = v56;
        v65 = v75;
        (*(v75 + 16))(v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_homeUUID, v7, v4);
        sub_22957F1C4(&v82, v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider);
        *(v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) = v59;
        v66 = v76;
        sub_22A4DB68C();
        (*(v65 + 8))(v7, v4);
        __swift_destroy_boxed_opaque_existential_0(&v82);
        (*(v77 + 32))(v63 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate, v66, v78);
        result = [v57 swiftExtensions];
        if (result)
        {
          v67 = result;
          swift_getObjectType();
          result = swift_conformsToProtocol2();
          if (result)
          {
            v84 = v60;
            v85 = &off_283CDFB68;

            v82 = v63;
            v68 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
            swift_beginAccess();
            sub_2296F6D80(&v82, v67 + v68);
            swift_endAccess();
            return swift_unknownObjectRelease();
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v33 = v8;
  sub_2297A46D4();
  v34 = v0;
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v81[0] = v38;
    *v37 = 136315394;
    v82 = 91;
    v83 = 0xE100000000000000;
    v39 = [v34 logIdentifier];
    v40 = sub_22A4DD5EC();
    v42 = v41;

    MEMORY[0x22AAD08C0](v40, v42);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v43 = sub_2295A3E30(v82, v83, v81);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v81);
    _os_log_impl(&dword_229538000, v35, v36, "%s %s backingStore is nil", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  return (*(v79 + 8))(v12, v33);
}

uint64_t (**sub_2296F6028())(__int128 *, uint64_t, id)
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v63 - v4;
  v6 = sub_22A4DD07C();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v63 - v11;
  v12 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v12)
  {
    return result;
  }

  v64 = v5;
  result = [v0 swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  ObjectType = swift_getObjectType();
  v63[1] = &_s15SwiftExtensionsPMp_0;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = result[8](&v68, ObjectType, result);
  v17 = v16;
  os_unfair_lock_lock(v16);
  sub_229564F88(&v17[2], &v70, &qword_27D881140, &qword_22A5855F0);
  os_unfair_lock_unlock(v17);
  v15(&v68, 0);
  swift_unknownObjectRelease();
  v18 = v72;
  result = sub_22953EAE4(&v70, &qword_27D881140, &qword_22A5855F0);
  v19 = v6;
  v20 = v64;
  if (v18)
  {
    return result;
  }

  v21 = v10;
  sub_2296F5638();
  v22 = &selRef_supportsFaceClassification;
  result = [v1 swiftExtensions];
  if (!result)
  {
    goto LABEL_20;
  }

  v23 = result;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v24 = v66;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
  swift_beginAccess();
  sub_229564F88(v23 + v25, &v68, &qword_27D87FC10, &unk_22A5832B0);
  swift_unknownObjectRelease();
  if (v69)
  {
    sub_229557188(&v68, &v70);
    sub_2297A46D4();
    v26 = v1;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63[0] = v19;
      v31 = v30;
      v67 = v30;
      *v29 = 136315394;
      *&v68 = 91;
      *(&v68 + 1) = 0xE100000000000000;
      v32 = [v26 logIdentifier];
      v33 = sub_22A4DD5EC();
      v34 = v26;
      v36 = v35;

      v37 = v33;
      v22 = &selRef_supportsFaceClassification;
      MEMORY[0x22AAD08C0](v37, v36);
      v26 = v34;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v68, *(&v68 + 1), &v67);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A592DA0, &v67);
      _os_log_impl(&dword_229538000, v27, v28, "%s %s initializing DefaultRoomPresencePublisher", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      v39 = v29;
      v20 = v64;
      MEMORY[0x22AAD4E50](v39, -1, -1);

      (*(v65 + 8))(v24, v63[0]);
    }

    else
    {

      (*(v65 + 8))(v24, v19);
    }

    sub_22957F1C4(&v70, &v68);
    v50 = v69;
    v51 = __swift_mutable_project_boxed_opaque_existential_0(&v68, v69);
    v52 = *(*(v50 - 8) + 64);
    MEMORY[0x28223BE20](v51);
    v54 = (v63 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = sub_2296F7048(*v54);
    __swift_destroy_boxed_opaque_existential_0(&v68);
    result = [v26 v22[125]];
    if (result)
    {
      v57 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v58 = result[8](&v68, v57, result);
        v60 = v59;
        os_unfair_lock_lock(v59);
        sub_22953EAE4(&v60[2], &qword_27D881140, &qword_22A5855F0);
        *&v60[8]._os_unfair_lock_opaque = _s28DefaultRoomPresencePublisherCMa();
        *&v60[10]._os_unfair_lock_opaque = &off_283CDFA78;
        *&v60[2]._os_unfair_lock_opaque = v56;

        os_unfair_lock_unlock(v60);
        v58(&v68, 0);
        swift_unknownObjectRelease();
        v61 = sub_22A4DD9DC();
        (*(*(v61 - 8) + 56))(v20, 1, 1, v61);
        v62 = swift_allocObject();
        v62[2] = 0;
        v62[3] = 0;
        v62[4] = v56;

        sub_22957F3C0(0, 0, v20, &unk_22A580910, v62);

        return __swift_destroy_boxed_opaque_existential_0(&v70);
      }

LABEL_23:
      __break(1u);
      return result;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22953EAE4(&v68, &qword_27D87FC10, &unk_22A5832B0);
  sub_2297A46D4();
  v40 = v1;
  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDCEC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v68 = v44;
    *v43 = 136315394;
    v70 = 91;
    v71 = 0xE100000000000000;
    v45 = [v40 logIdentifier];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    MEMORY[0x22AAD08C0](v46, v48);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v49 = sub_2295A3E30(v70, v71, &v68);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A592DA0, &v68);
    _os_log_impl(&dword_229538000, v41, v42, "%s %s cannot initialize DefaultRoomPresencePublisher because roomPresenceStorage does not exist", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  return (*(v65 + 8))(v21, v19);
}

uint64_t sub_2296F68CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296F696C, a4, 0);
}

uint64_t sub_2296F696C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_22957F3C0(0, 0, v2, &unk_22A580918, v5);
  v7 = *(v1 + 192);
  *(v1 + 192) = v6;

  v8 = v0[1];

  return v8();
}

void sub_2296F6A90()
{
  v1 = [v0 swiftExtensions];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (!v1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = (*&v1[16]._os_unfair_lock_opaque)(v8, ObjectType, v1);
  v5 = v4;
  os_unfair_lock_lock(v4);
  sub_2296F6C08(&v5[2]);
  os_unfair_lock_unlock(v5);
  v3(v8, 0);
  swift_unknownObjectRelease();
  v1 = [v0 swiftExtensions];
  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v1;
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (v1)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v7 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
    swift_beginAccess();
    sub_2296F6D80(v8, v6 + v7);
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
  os_unfair_lock_unlock(v1);
  __break(1u);
}

double sub_2296F6C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v11 = *(a1 + 32);
  if (*(&v6 + 1))
  {
    sub_229557188(v10, v12);
    v7 = sub_22A4DD9DC();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_22957F1C4(v12, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_229557188(v10, v8 + 32);
    sub_22957F3C0(0, 0, v5, &unk_22A580900, v8);

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_22953EAE4(v10, &qword_27D881140, &qword_22A5855F0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2296F6D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC10, &unk_22A5832B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296F6E10()
{
  v1 = *__swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2295C9EFC;

  return sub_22969A8EC();
}

uint64_t sub_2296F6EAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_2296F6DF0(a1, v4, v5, v1 + 32);
}

void *sub_2296F6F5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = _s35AggregatedAccessoryPresenceDetectorCMa();
  v16 = &off_283CDF6A8;
  *&v14 = a1;
  v12 = _s26DefaultRoomPresenceStorageCMa();
  v13 = &off_283CDFB68;
  *&v11 = a2;
  swift_defaultActor_initialize();
  a4[24] = 0;
  v8 = [objc_opt_self() weakToStrongObjectsMapTable];
  v9 = MEMORY[0x277D84F98];
  a4[25] = v8;
  a4[26] = v9;
  a4[27] = [objc_opt_self() weakToStrongObjectsMapTable];
  a4[29] = MEMORY[0x277D84F90];
  sub_229557188(&v14, (a4 + 14));
  sub_229557188(&v11, (a4 + 19));
  a4[28] = a3;
  return a4;
}

void *sub_2296F7048(uint64_t a1)
{
  v2 = _s26DefaultRoomPresenceStorageCMa();
  v26[3] = v2;
  v26[4] = &off_283CDFB68;
  v26[0] = a1;
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = sub_22967DF30(v4);

  sub_22957F1C4(v26, v24);
  v6 = [v3 defaultCenter];
  v7 = v25;
  v8 = __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v23[3] = v2;
  v23[4] = &off_283CDFB68;
  v23[0] = v13;
  _s28DefaultRoomPresencePublisherCMa();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v23, v2);
  v16 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2296F6F5C(v5, *v18, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v20;
}

uint64_t sub_2296F7278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296F68CC(a1, v4, v5, v6);
}

uint64_t sub_2296F732C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229699748(a1, v4, v5, v6);
}

uint64_t sub_2296F73E0(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_22A4DE0EC();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_22958345C(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_22A4DE08C();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_22A4DE04C();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_22962F698(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 UUID];
        sub_22A4DB79C();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22958345C(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_22A4DE0AC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FD70, qword_22A580948);
          v14 = sub_22A4DDB9C();
          sub_22A4DE15C();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_22962F424(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_22962F424(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_22962F424(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}