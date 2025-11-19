uint64_t sub_2141B2EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AD0, &qword_2146F52E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300338();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
    sub_2142FF374();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B3034(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AE0, &qword_2146F52F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300338();

  sub_2146DAA28();
  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
  sub_2142FF588();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_2141B31E4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2141B320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6472614368636972 && a2 == 0xE900000000000073)
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

uint64_t sub_2141B329C(uint64_t a1)
{
  v2 = sub_21430038C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B32D8(uint64_t a1)
{
  v2 = sub_21430038C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B3314@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AE8, &qword_2146F52F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430038C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AF8, &qword_2146F5300);
    sub_2143003E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B3498(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B10, &qword_2146F5308);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143001B8(v8);
  sub_21430038C();
  sub_2146DAA28();
  v12[0] = v8;
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AF8, &qword_2146F5300);
  sub_2143004B8();
  sub_2146DA388();
  sub_2143002A4(v12[0]);
  return (*(v4 + 8))(v7, v3);
}

__n128 SMSCTPartSMIL.init(with:orderedParts:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t sub_2141B3654()
{
  if (*v0)
  {
    result = 0x506465726564726FLL;
  }

  else
  {
    result = 0x42746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2141B36A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x42746E65746E6F63 && a2 == 0xEB0000000079646FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x506465726564726FLL && a2 == 0xEC00000073747261)
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

uint64_t sub_2141B3784(uint64_t a1)
{
  v2 = sub_214300590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B37C0(uint64_t a1)
{
  v2 = sub_214300590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSCTPartSMIL.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B28, &qword_2146F5310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300590();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    v20 = 0;
    sub_2142E4F74();
    sub_2146DA1C8();
    v11 = v17;
    v12 = v18;
    v16 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B38, &qword_2146F5318);
    v20 = 1;
    sub_2143005E4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    v13 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SMSCTPartSMIL.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B48, &qword_2146F5320);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v13[0] = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214031CA0(v7);
  sub_214300590();
  sub_2146DAA28();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  sub_2142E5278();
  v11 = v13[1];
  sub_2146DA388();
  sub_214031CE0(v15);
  if (!v11)
  {
    v15 = v13[0];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B38, &qword_2146F5318);
    sub_214300668();
    sub_2146DA388();
  }

  return (*(v14 + 8))(v6, v3);
}

unint64_t sub_2141B3C34()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x44746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2141B3C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147957E0 == a2)
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

uint64_t sub_2141B3D64(uint64_t a1)
{
  v2 = sub_2143006EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B3DA0(uint64_t a1)
{
  v2 = sub_2143006EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B3DDC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B58, &qword_2146F5328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143006EC();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v15 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v15 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B3FEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B68, &qword_2146F5330);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v8, v9);
  sub_2143006EC();
  sub_2146DAA28();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v16 + 8))(v7, v4);
}

BlastDoor::SMSParserPart __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SMSParserPart.init(with:attachmentParts:)(Swift::OpaquePointer with, Swift::OpaquePointer attachmentParts)
{
  v2->_rawValue = with._rawValue;
  v2[1]._rawValue = attachmentParts._rawValue;
  result.attachmentParts = attachmentParts;
  result.textParts = with;
  return result;
}

uint64_t sub_2141B4204()
{
  if (*v0)
  {
    result = 0x656D686361747461;
  }

  else
  {
    result = 0x7472615074786574;
  }

  *v0;
  return result;
}

uint64_t sub_2141B4250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472615074786574 && a2 == 0xE900000000000073;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF7374726150746ELL)
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

uint64_t sub_2141B433C(uint64_t a1)
{
  v2 = sub_214300740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4378(uint64_t a1)
{
  v2 = sub_214300740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSParserPart.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B70, &qword_2146F5338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300740();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B80, &qword_2146F5340);
    v15 = 0;
    sub_214300794();
    sub_2146DA1C8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B90, &qword_2146F5348);
    v15 = 1;
    sub_214300818();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SMSParserPart.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BA0, &qword_2146F5350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300740();

  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B80, &qword_2146F5340);
  sub_21430089C();
  sub_2146DA388();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908B90, &qword_2146F5348);
    sub_214300920();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141B47C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2141B47D0()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x4C746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2141B4810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C746E65746E6F63 && a2 == 0xEF6E6F697461636FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_2141B48F4(uint64_t a1)
{
  v2 = sub_2143009A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4930(uint64_t a1)
{
  v2 = sub_2143009A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B496C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BB8, &qword_2146F5358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143009A4();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v19 = v11;
    v20 = 1;
    v14 = sub_2146DA168();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B4B44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908BC8, &qword_2146F5360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143009A4();
  sub_2146DAA28();
  v16 = 0;
  v12 = v14[3];
  sub_2146DA328();
  if (!v12)
  {
    v15 = 1;
    sub_2146DA328();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141B4D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C746E65746E6F63 && a2 == 0xEF6E6F697461636FLL)
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

uint64_t sub_2141B4DBC(uint64_t a1)
{
  v2 = sub_2143009F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B4DF8(uint64_t a1)
{
  v2 = sub_2143009F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B4E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_2146DA168();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B503C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  sub_2146DA328();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2141B51E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2146DAA28();
  sub_2146DA328();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2141B5328(uint64_t a1)
{
  v2 = sub_214300A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B5364(uint64_t a1)
{
  v2 = sub_214300A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 SMSMessage.init(with:filterSubCategory:carrierNameSupportsReportJunk:version:type:recipients:date:sender:iMessageCapability:serviceCenter:originatedDeviceNumber:originatedDeviceEmail:originatedDeviceSIM:subject:contentType:replaceMessage:countryCode:GUID:fallbackHash:items:trackMessage:sendEnabled:foundAppleGUID:groupID:originalGroupID:displayName:originatedDeviceUniqueID:smsFilteringSettings:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __n128 *a48)
{
  *a9 = a1;
  v49 = *a3;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = v49;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = *a8;
  v70 = *a48;
  v69 = a48[1].n128_u64[0];
  *(a9 + 56) = a10;
  v50 = type metadata accessor for SMSMessage();
  sub_21408AC04(a11, a9 + v50[10], &qword_27C913090, &unk_2146E9DB0);
  v51 = (a9 + v50[11]);
  *v51 = a12;
  v51[1] = a13;
  v52 = a9 + v50[12];
  *v52 = a14;
  *(v52 + 8) = a15 & 1;
  v53 = (a9 + v50[13]);
  *v53 = a16;
  v53[1] = a17;
  v54 = (a9 + v50[14]);
  *v54 = a18;
  v54[1] = a19;
  v55 = (a9 + v50[15]);
  *v55 = a20;
  v55[1] = a21;
  v56 = (a9 + v50[16]);
  *v56 = a22;
  v56[1] = a23;
  v57 = (a9 + v50[17]);
  *v57 = a24;
  v57[1] = a25;
  v58 = (a9 + v50[18]);
  *v58 = a26;
  v58[1] = a27;
  v59 = a9 + v50[19];
  *v59 = a28;
  *(v59 + 8) = a29 & 1;
  v60 = (a9 + v50[20]);
  *v60 = a30;
  v60[1] = a31;
  v61 = (a9 + v50[21]);
  *v61 = a32;
  v61[1] = a33;
  v62 = (a9 + v50[22]);
  *v62 = a34;
  v62[1] = a35;
  *(a9 + v50[23]) = a36;
  *(a9 + v50[24]) = a37;
  *(a9 + v50[25]) = a38;
  *(a9 + v50[26]) = a39;
  v63 = (a9 + v50[27]);
  *v63 = a40;
  v63[1] = a41;
  v64 = (a9 + v50[28]);
  *v64 = a42;
  v64[1] = a43;
  v65 = (a9 + v50[29]);
  *v65 = a44;
  v65[1] = a45;
  v66 = (a9 + v50[30]);
  *v66 = a46;
  v66[1] = a47;
  v67 = (a9 + v50[31]);
  v67[1].n128_u64[0] = v69;
  result = v70;
  *v67 = v70;
  return result;
}

unint64_t sub_2141B573C(char a1)
{
  result = 0x657461436D617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x6E65697069636572;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x7265646E6573;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x4365636976726573;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7463656A627573;
      break;
    case 14:
      result = 0x54746E65746E6F63;
      break;
    case 15:
      result = 0x4D6563616C706572;
      break;
    case 16:
      result = 0x437972746E756F63;
      break;
    case 17:
      result = 1145656647;
      break;
    case 18:
      result = 0x6B6361626C6C6166;
      break;
    case 19:
      result = 0x736D657469;
      break;
    case 20:
      result = 0x73654D6B63617274;
      break;
    case 21:
      result = 0x62616E45646E6573;
      break;
    case 22:
      result = 0x707041646E756F66;
      break;
    case 23:
      result = 0x444970756F7267;
      break;
    case 24:
      result = 0x6C616E696769726FLL;
      break;
    case 25:
      result = 0x4E79616C70736964;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141B5A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214370BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141B5AC0(uint64_t a1)
{
  v2 = sub_214300AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B5AFC(uint64_t a1)
{
  v2 = sub_214300AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SMSMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C00, &qword_2146F5388);
  v9 = *(v94 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v94);
  v12 = &v64 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214300AA0();
  *&v95 = v12;
  sub_2146DAA08();
  if (!v2)
  {
    v91 = a2;
    v92 = v8;
    v93 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v100 = 0;
    v15 = sub_2142E11FC();
    sub_2146DA1C8();
    v16 = v97;
    v17 = BYTE8(v97);
    v100 = 1;
    sub_214300AF4();
    sub_2146DA1C8();
    v90 = v15;
    v99 = v97;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v100 = 2;
    v19 = sub_2142E12FC();
    sub_2146DA1C8();
    *&v89 = v18;
    *(&v89 + 1) = v19;
    v87 = v17;
    v88 = v16;
    v21 = v97;
    LOBYTE(v97) = 3;
    v22 = sub_2146DA168();
    v24 = v23;
    v86 = v22;
    v100 = 4;
    sub_214300B48();
    sub_2146DA1C8();
    v85 = v24;
    LODWORD(v19) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v100 = 5;
    sub_2142E1548();
    sub_2146DA1C8();
    v83 = v19;
    v84 = *(&v21 + 1);
    v25 = v97;
    LOBYTE(v97) = 6;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v82 = v25;
    v100 = 7;
    sub_2146DA1C8();
    v26 = v97;
    v100 = 8;
    sub_2146DA1C8();
    v81 = v97;
    v80 = BYTE8(v97);
    v100 = 9;
    sub_2146DA1C8();
    v79 = v97;
    v100 = 10;
    sub_2146DA1C8();
    v78 = v97;
    v100 = 11;
    sub_2146DA1C8();
    v77 = v97;
    v100 = 12;
    sub_2146DA1C8();
    v76 = v97;
    v100 = 13;
    sub_2146DA1C8();
    v27 = *(&v97 + 1);
    v75 = v97;
    v100 = 14;
    sub_2146DA1C8();
    v74 = v97;
    v100 = 15;
    sub_2146DA1C8();
    v28 = v97;
    v29 = BYTE8(v97);
    v100 = 16;
    sub_2146DA1C8();
    v30 = *(&v97 + 1);
    v90 = v97;
    v100 = 17;
    sub_2146DA1C8();
    v73 = v97;
    v100 = 18;
    sub_2146DA1C8();
    v72 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C10, &qword_2146F5390);
    v100 = 19;
    sub_214300B9C();
    sub_2146DA1C8();
    v71 = v97;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v100 = 20;
    v32 = sub_2142E1378();
    v70 = v31;
    v69 = v32;
    sub_2146DA1C8();
    v68 = v97;
    v100 = 21;
    sub_2146DA1C8();
    LODWORD(v70) = v97;
    LOBYTE(v97) = 22;
    LODWORD(v69) = sub_2146DA178();
    v100 = 23;
    sub_2146DA1C8();
    v67 = v97;
    v100 = 24;
    sub_2146DA1C8();
    v66 = v97;
    v100 = 25;
    sub_2146DA1C8();
    v65 = v97;
    v100 = 26;
    sub_2146DA1C8();
    v89 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C18, &qword_2146F5398);
    v100 = 27;
    sub_214300C20();
    sub_2146DA1C8();
    (*(v93 + 8))(v95, v94);
    v95 = v97;
    v94 = v98;
    v93 = type metadata accessor for SMSMessage();
    v33 = v91;
    sub_21408AC04(v92, v91 + *(v93 + 40), &qword_27C913090, &unk_2146E9DB0);
    *v33 = v88;
    *(v33 + 8) = v87;
    *(v33 + 9) = v99;
    v34 = v84;
    *(v33 + 16) = v21;
    *(v33 + 24) = v34;
    v35 = v85;
    *(v33 + 32) = v86;
    *(v33 + 40) = v35;
    *(v33 + 48) = v83;
    *(v33 + 56) = v82;
    v36 = v93;
    *(v33 + *(v93 + 44)) = v26;
    v37 = v33 + v36[12];
    *v37 = v81;
    *(v37 + 8) = v80;
    v38 = (v33 + v36[13]);
    v39 = *(&v79 + 1);
    *v38 = v79;
    v38[1] = v39;
    v40 = (v33 + v36[14]);
    v41 = *(&v78 + 1);
    *v40 = v78;
    v40[1] = v41;
    v42 = (v33 + v36[15]);
    v43 = *(&v77 + 1);
    *v42 = v77;
    v42[1] = v43;
    v44 = (v33 + v36[16]);
    v45 = *(&v76 + 1);
    *v44 = v76;
    v44[1] = v45;
    v46 = (v33 + v36[17]);
    *v46 = v75;
    v46[1] = v27;
    v47 = (v33 + v36[18]);
    v48 = *(&v74 + 1);
    *v47 = v74;
    v47[1] = v48;
    v49 = v33 + v36[19];
    *v49 = v28;
    *(v49 + 8) = v29;
    v50 = (v33 + v36[20]);
    *v50 = v90;
    v50[1] = v30;
    v51 = (v33 + v36[21]);
    v52 = *(&v73 + 1);
    *v51 = v73;
    v51[1] = v52;
    v53 = (v33 + v36[22]);
    v54 = *(&v72 + 1);
    *v53 = v72;
    v53[1] = v54;
    *(v33 + v36[23]) = v71;
    *(v33 + v36[24]) = v68;
    *(v33 + v36[25]) = v70;
    *(v33 + v36[26]) = v69 & 1;
    v55 = (v33 + v36[27]);
    v56 = *(&v67 + 1);
    *v55 = v67;
    v55[1] = v56;
    v57 = (v33 + v36[28]);
    v58 = *(&v66 + 1);
    *v57 = v66;
    v57[1] = v58;
    v59 = (v33 + v36[29]);
    v60 = *(&v65 + 1);
    *v59 = v65;
    v59[1] = v60;
    v61 = (v33 + v36[30]);
    v62 = *(&v89 + 1);
    *v61 = v89;
    v61[1] = v62;
    v63 = v33 + v36[31];
    *(v63 + 16) = v94;
    *v63 = v95;
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t SMSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C30, &qword_2146F53A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300AA0();
  sub_2146DAA28();
  v11 = *(v3 + 8);
  *&v29 = *v3;
  BYTE8(v29) = v11;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v6;
  LOBYTE(v29) = *(v3 + 9);
  v31 = 1;
  sub_214300CF8();
  sub_2146DA388();
  v29 = *(v3 + 16);
  v31 = 2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v28 = v5;
  sub_2146DA388();
  v27[2] = v14;
  v15 = *(v3 + 32);
  v16 = *(v3 + 40);
  LOBYTE(v29) = 3;
  sub_2146DA328();
  LOBYTE(v29) = *(v3 + 48);
  v31 = 4;
  sub_214300D4C();
  sub_2146DA388();
  *&v29 = *(v3 + 56);
  v31 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  v17 = type metadata accessor for SMSMessage();
  v27[1] = v17[10];
  LOBYTE(v29) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v29 = *(v3 + v17[11]);
  v31 = 7;
  sub_2146DA388();
  v18 = (v3 + v17[12]);
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  *&v29 = v19;
  BYTE8(v29) = v18;
  v31 = 8;
  sub_2146DA388();
  v29 = *(v3 + v17[13]);
  v31 = 9;
  sub_2146DA388();
  v29 = *(v3 + v17[14]);
  v31 = 10;
  sub_2146DA388();
  v29 = *(v3 + v17[15]);
  v31 = 11;
  sub_2146DA388();
  v29 = *(v3 + v17[16]);
  v31 = 12;
  sub_2146DA388();
  v29 = *(v3 + v17[17]);
  v31 = 13;
  sub_2146DA388();
  v29 = *(v3 + v17[18]);
  v31 = 14;
  sub_2146DA388();
  v20 = (v3 + v17[19]);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *&v29 = v21;
  BYTE8(v29) = v20;
  v31 = 15;
  sub_2146DA388();
  v29 = *(v3 + v17[20]);
  v31 = 16;
  sub_2146DA388();
  v29 = *(v3 + v17[21]);
  v31 = 17;
  sub_2146DA388();
  v29 = *(v3 + v17[22]);
  v31 = 18;
  sub_2146DA388();
  *&v29 = *(v3 + v17[23]);
  v31 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C10, &qword_2146F5390);
  sub_214300DA0();
  sub_2146DA388();
  LOBYTE(v29) = *(v3 + v17[24]);
  v31 = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v29) = *(v3 + v17[25]);
  v31 = 21;
  sub_2146DA388();
  v22 = *(v3 + v17[26]);
  LOBYTE(v29) = 22;
  sub_2146DA338();
  v29 = *(v3 + v17[27]);
  v31 = 23;
  sub_2146DA388();
  v29 = *(v3 + v17[28]);
  v31 = 24;
  sub_2146DA388();
  v29 = *(v3 + v17[29]);
  v31 = 25;
  sub_2146DA388();
  v29 = *(v3 + v17[30]);
  v31 = 26;
  sub_2146DA388();
  v23 = (v3 + v17[31]);
  v24 = v23[1];
  v25 = v23[2];
  *&v29 = *v23;
  *(&v29 + 1) = v24;
  v30 = v25;
  v31 = 27;
  sub_213FDC9D0(v29, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C18, &qword_2146F5398);
  sub_214300E24();
  v26 = v28;
  sub_2146DA388();
  sub_213FDC6D0(v29, *(&v29 + 1));
  return (*(v13 + 8))(v9, v26);
}

uint64_t sub_2141B769C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_214055BB4(&v57);
  v13 = v57;
  v12 = v58;
  v15 = v59;
  v14 = v60;
  v16 = v61;
  sub_214055BE8(&v85);
  v54 = v85;
  v56 = v86;
  v52 = v87;
  v93 = v88;
  v55 = v89;
  sub_214055E2C(v83);
  v47 = v83[0];
  v49 = v83[1];
  v50 = v83[2];
  v51 = v83[3];
  v48 = v84;
  sub_214055FD8(v81);
  v40 = v81[1];
  v41 = v81[0];
  v45 = v81[2];
  v44 = v81[3];
  v37 = v82;
  v38 = v16;
  v85 = a2;
  v86 = a3;
  LOBYTE(v83[0]) = v16;
  v57 = 0xD000000000000027;
  v58 = 0x800000021478FA70;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v15, v14);
  v53 = v12;
  v17 = v13(&v85, v83, &v57);
  if (v39)
  {

    v18 = v41;
    v19 = v12;
LABEL_6:

    sub_213FDC6D0(v15, v14);
    v23 = v37;
    v24 = v40;
    v25 = v52;
LABEL_7:
    v57 = a1;
    v58 = v13;
    v59 = v19;
    v60 = v15;
    v61 = v14;
    v62 = v38;
    *v63 = v92[0];
    *&v63[3] = *(v92 + 3);
    v64 = v54;
    v65 = v56;
    v66 = v25;
    v67 = v93;
    v68 = v55;
    *v69 = *v91;
    *&v69[3] = *&v91[3];
    v70 = v47;
    v71 = v49;
    v72 = v50;
    v73 = v51;
    v74 = v48;
    *&v75[3] = *&v90[3];
    *v75 = *v90;
    v76 = v18;
    v77 = v24;
    v78 = v45;
    v79 = v44;
    v80 = v23;
    return sub_2140598A0(&v57);
  }

  v20 = a3;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000027;
    v22[1] = 0x800000021478FA70;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v41;
    v19 = v12;
    goto LABEL_6;
  }

  sub_213FDC6D0(v15, v14);

  sub_213FDC6D0(v15, v14);
  v85 = a4;
  v86 = a5;
  LOBYTE(v83[0]) = v55;
  v57 = 0xD00000000000002ELL;
  v58 = 0x800000021478FAA0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v52, v93);
  v21 = v54(&v85, v83, &v57);
  v23 = v37;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x800000021478FAA0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v40;
    v18 = v41;

    v25 = v52;
    sub_213FDC6D0(v52, v93);
    v15 = a2;
    v14 = a3;
    v19 = v53;
    goto LABEL_7;
  }

  v27 = v93;
  sub_213FDC6D0(v52, v93);

  sub_213FDC6D0(v52, v27);
  v85 = a6;
  v86 = a7;
  LOBYTE(v83[0]) = v48;
  v57 = 0xD000000000000021;
  v58 = 0x800000021478FAD0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v50, v51);
  v28 = v47(&v85, v83, &v57);
  v24 = v40;
  v19 = v53;
  if ((v28 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000021;
    v31[1] = 0x800000021478FAD0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v41;

    sub_213FDC6D0(v50, v51);
    v15 = a2;
    v14 = v20;
    v25 = a4;
    v93 = a5;
    goto LABEL_7;
  }

  sub_213FDC6D0(v50, v51);

  sub_213FDC6D0(v50, v51);
  v85 = a8;
  v86 = a10;
  LOBYTE(v83[0]) = v37;
  v57 = 0xD000000000000026;
  v58 = 0x800000021478FB00;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  sub_213FDC9D0(v45, v44);
  v30 = v41(&v85, v83, &v57);
  v18 = v41;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000026;
    v32[1] = 0x800000021478FB00;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v45, v44);
    v15 = a2;
    v14 = v20;
    v25 = a4;
    v93 = a5;
    v50 = a6;
    v51 = a7;
    goto LABEL_7;
  }

  sub_213FDC6D0(v45, v44);

  result = sub_213FDC6D0(v45, v44);
  *a9 = a1;
  *(a9 + 8) = v13;
  *(a9 + 16) = v53;
  *(a9 + 24) = a2;
  *(a9 + 32) = v20;
  *(a9 + 40) = v38;
  *(a9 + 41) = v92[0];
  *(a9 + 44) = *(v92 + 3);
  *(a9 + 48) = v54;
  *(a9 + 56) = v56;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v55;
  *(a9 + 81) = *v91;
  *(a9 + 84) = *&v91[3];
  *(a9 + 88) = v47;
  *(a9 + 96) = v49;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v48;
  *(a9 + 124) = *&v90[3];
  *(a9 + 121) = *v90;
  *(a9 + 128) = v41;
  *(a9 + 136) = v40;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v37;
  return result;
}

unint64_t sub_2141B7E9C()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0xD000000000000015;
  v4 = 0x4C52556572616873;
  if (v1 != 3)
  {
    v4 = 0x7069636974726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265766965636572;
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

uint64_t sub_2141B7F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214371458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141B7F78(uint64_t a1)
{
  v2 = sub_214300EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B7FB4(uint64_t a1)
{
  v2 = sub_214300EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B7FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C50, &qword_2146F53A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v147 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214300EFC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v147);
  }

  v98 = v6;
  LOBYTE(v110) = 0;
  v97 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v99) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v110;
  v13 = v111;
  LOBYTE(v99) = 2;
  sub_2146DA1C8();
  v95 = v110;
  v96 = v13;
  v15 = v111;
  LOBYTE(v99) = 3;
  sub_2146DA1C8();
  v94 = v15;
  v16 = v110;
  v92 = v14;
  v93 = v111;
  v141 = 4;
  sub_2146DA1C8();
  v67 = v142;
  v68 = v16;
  v74 = v143;
  sub_214055BB4(&v110);
  v17 = v111;
  v91 = v110;
  v18 = v112;
  v19 = v113;
  v20 = v114;
  sub_214055BE8(&v99);
  v89 = *(&v99 + 1);
  v87 = v99;
  v85 = *(&v100 + 1);
  v90 = v100;
  v88 = v101;
  sub_214055E2C(&v136);
  v82 = v136;
  v83 = v137;
  v79 = v139;
  v80 = v138;
  v81 = v140;
  sub_214055FD8(v134);
  v75 = v134[0];
  v76 = v134[2];
  v77 = v134[3];
  v78 = v134[1];
  v72 = v20;
  v73 = v135;
  *&v99 = v92;
  *(&v99 + 1) = v96;
  LOBYTE(v136) = v20;
  v110 = 0xD000000000000027;
  v111 = 0x800000021478FA70;
  v69 = 0x800000021478FA70;
  v112 = 0xD00000000000001CLL;
  v113 = 0x800000021478A360;
  v84 = 0x800000021478A360;

  v70 = v19;
  v71 = v18;
  sub_213FDC9D0(v18, v19);
  v86 = v17;
  v21 = v91(&v99, &v136, &v110);
  v22 = v94;
  if (v21)
  {
    v24 = v70;
    v23 = v71;
    sub_213FDC6D0(v71, v70);
    v25 = v84;

    sub_213FDC6D0(v23, v24);
    *&v99 = v95;
    *(&v99 + 1) = v22;
    LOBYTE(v136) = v88;
    v110 = 0xD00000000000002ELL;
    v111 = 0x800000021478FAA0;
    v112 = 0xD00000000000001CLL;
    v113 = v25;

    sub_213FDC9D0(v90, v85);
    v26 = v87(&v99, &v136, &v110);
    if (v26)
    {
      v37 = v90;
      v38 = v85;
      sub_213FDC6D0(v90, v85);
      v39 = v84;

      sub_213FDC6D0(v37, v38);
      *&v99 = v68;
      *(&v99 + 1) = v93;
      LOBYTE(v136) = v81;
      v110 = 0xD000000000000021;
      v111 = 0x800000021478FAD0;
      v112 = 0xD00000000000001CLL;
      v113 = v39;

      sub_213FDC9D0(v80, v79);
      v40 = v82(&v99, &v136, &v110);
      if (v40)
      {
        v45 = v79;
        v44 = v80;
        sub_213FDC6D0(v80, v79);
        v46 = v84;

        sub_213FDC6D0(v44, v45);
        v136 = v67;
        v137 = v74;
        LOBYTE(v99) = v73;
        v110 = 0xD000000000000026;
        v111 = 0x800000021478FB00;
        v112 = 0xD00000000000001CLL;
        v113 = v46;

        sub_213FDC9D0(v76, v77);
        v47 = v75(&v136, &v99, &v110);
        if (v47)
        {
          v51 = v76;
          v50 = v77;
          sub_213FDC6D0(v76, v77);

          (*(v98 + 8))(v9, v5);
          v52 = v78;

          sub_213FDC6D0(v51, v50);
          v54 = v96;
          v53 = v97;
          *&v99 = v97;
          *(&v99 + 1) = v91;
          *&v100 = v86;
          *(&v100 + 1) = v92;
          *&v101 = v96;
          BYTE8(v101) = v72;
          *(&v101 + 9) = v146[0];
          HIDWORD(v101) = *(v146 + 3);
          *&v102 = v87;
          *(&v102 + 1) = v89;
          *&v103 = v95;
          *(&v103 + 1) = v94;
          LOBYTE(v104) = v88;
          *(&v104 + 1) = *v145;
          DWORD1(v104) = *&v145[3];
          *(&v104 + 1) = v82;
          *&v105 = v83;
          v55 = v68;
          *(&v105 + 1) = v68;
          *&v106 = v93;
          LOBYTE(v51) = v81;
          BYTE8(v106) = v81;
          *(&v106 + 9) = *v144;
          HIDWORD(v106) = *&v144[3];
          *&v107 = v75;
          *(&v107 + 1) = v52;
          *&v108 = v67;
          *(&v108 + 1) = v74;
          LOBYTE(v52) = v73;
          v109 = v73;
          v56 = v100;
          *a2 = v99;
          *(a2 + 16) = v56;
          v57 = v101;
          v58 = v102;
          v59 = v104;
          *(a2 + 64) = v103;
          *(a2 + 80) = v59;
          *(a2 + 32) = v57;
          *(a2 + 48) = v58;
          v60 = v105;
          v61 = v106;
          v62 = v107;
          v63 = v108;
          *(a2 + 160) = v52;
          *(a2 + 128) = v62;
          *(a2 + 144) = v63;
          *(a2 + 96) = v60;
          *(a2 + 112) = v61;
          sub_214059868(&v99, &v110);
          __swift_destroy_boxed_opaque_existential_1(v147);
          v110 = v53;
          v111 = v91;
          v112 = v86;
          v113 = v92;
          v114 = v54;
          v115 = v72;
          *v116 = v146[0];
          *&v116[3] = *(v146 + 3);
          v117 = v87;
          v118 = v89;
          v119 = v95;
          v120 = v94;
          v121 = v88;
          *v122 = *v145;
          *&v122[3] = *&v145[3];
          v123 = v82;
          v124 = v83;
          v125 = v55;
          v126 = v93;
          v127 = v51;
          *v128 = *v144;
          *&v128[3] = *&v144[3];
          v129 = v75;
          v130 = v78;
          v131 = v67;
          v132 = v74;
          v133 = v52;
          return sub_2140598A0(&v110);
        }

        sub_214031C4C();
        swift_allocError();
        *v64 = 0xD000000000000026;
        v64[1] = 0x800000021478FB00;
        v65 = v84;
        v64[2] = 0xD00000000000001CLL;
        v64[3] = v65;
        swift_willThrow();

        (*(v98 + 8))(v9, v5);

        sub_213FDC6D0(v76, v77);
        v32 = v92;
        v34 = v93;
        v33 = v96;
        v90 = v95;
        v36 = v94;
        v35 = v68;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v48 = 0xD000000000000021;
        v48[1] = 0x800000021478FAD0;
        v49 = v84;
        v48[2] = 0xD00000000000001CLL;
        v48[3] = v49;
        swift_willThrow();

        (*(v98 + 8))(v9, v5);

        v34 = v79;
        v35 = v80;
        sub_213FDC6D0(v80, v79);
        v32 = v92;
        v33 = v96;
        v90 = v95;
        v36 = v94;
      }

      v31 = v86;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD00000000000002ELL;
      v41[1] = 0x800000021478FAA0;
      v42 = v84;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();

      v33 = v96;
      v43 = v98;

      (*(v43 + 8))(v9, v5);

      v36 = v85;
      sub_213FDC6D0(v90, v85);
      v32 = v92;
      v31 = v86;
      v34 = v79;
      v35 = v80;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v27 = v69;
    *v28 = 0xD000000000000027;
    v28[1] = v27;
    v29 = v84;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v98;

    (*(v30 + 8))(v9, v5);
    v31 = v86;

    v33 = v70;
    v32 = v71;
    sub_213FDC6D0(v71, v70);
    v34 = v79;
    v35 = v80;
    v36 = v85;
  }

  __swift_destroy_boxed_opaque_existential_1(v147);
  v110 = v97;
  v111 = v91;
  v112 = v31;
  v113 = v32;
  v114 = v33;
  v115 = v72;
  *v116 = v146[0];
  *&v116[3] = *(v146 + 3);
  v117 = v87;
  v118 = v89;
  v119 = v90;
  v120 = v36;
  v121 = v88;
  *v122 = *v145;
  *&v122[3] = *&v145[3];
  v123 = v82;
  v124 = v83;
  v125 = v35;
  v126 = v34;
  v127 = v81;
  *&v128[3] = *&v144[3];
  *v128 = *v144;
  v129 = v75;
  v130 = v78;
  v131 = v76;
  v132 = v77;
  v133 = v73;
  return sub_2140598A0(&v110);
}

uint64_t sub_2141B8BE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C60, &qword_2146F53B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v26 = v1[8];
  v27 = v9;
  v12 = v1[13];
  v13 = v1[14];
  v23 = v11;
  v24 = v12;
  v14 = v1[19];
  v25 = v1[18];
  v21 = v14;
  v22 = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300EFC();
  sub_2146DAA28();
  LOBYTE(v29) = 0;
  v16 = v28;
  sub_2146DA378();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v26;
  if (v10 == 1)
  {
    goto LABEL_13;
  }

  v29 = v27;
  v30 = v10;
  v31 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v19 = v4;
  if (v23 == 1)
  {
    goto LABEL_13;
  }

  v29 = v18;
  v30 = v23;
  v31 = 2;
  sub_2146DA388();
  v20 = v25;
  if (v22 == 1 || (v29 = v24, v30 = v22, v31 = 3, sub_2146DA388(), v21 == 1))
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v29 = v20;
    v30 = v21;
    v31 = 4;
    sub_2146DA388();
    return (*(v19 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2141B8F00@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t (*a11)(void, void, void), uint64_t a12, uint64_t (*a13)(void, void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, char a21, uint64_t a22, char a23, char *a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, char *a42, uint64_t a43, char a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t (*a51)(void, void, void))
{
  v96 = *a1;
  v97 = *a19;
  v100 = *a24;
  v105 = *a27;
  v107 = *a42;
  v108 = *a45;
  sub_2140568D4(&v143);
  v52 = v143;
  v53 = v144;
  v54 = *&v145;
  v55 = v146;
  v56 = v147;
  sub_214056908(&v252);
  v140 = v252;
  v141 = v253;
  v139 = v254;
  v142 = v255;
  v135 = v256;
  sub_214056944(v250);
  v133 = v250[0];
  v136 = v250[1];
  v138 = v250[2];
  v137 = v250[3];
  v134 = v251;
  sub_214056AF0(v248);
  v128 = v248[0];
  v130 = v248[1];
  v132 = v248[2];
  v131 = v248[3];
  v129 = v249;
  sub_214056B24(v246);
  v123 = v246[0];
  v127 = v246[2];
  v125 = v246[1];
  v126 = v246[3];
  v124 = v247;
  sub_214056CA8(v244);
  v113 = v244[0];
  v122 = v244[1];
  v121 = v244[2];
  v120 = v244[3];
  v114 = v245;
  sub_214056E04(v242);
  v115 = v242[0];
  v119 = v242[2];
  v117 = v242[1];
  v118 = v242[3];
  v116 = v243;
  sub_214056F60(v240);
  v109 = v240[0];
  v111 = v240[2];
  v112 = v240[1];
  v110 = v241;
  v266 = a21 & 1;
  v265 = a23 & 1;
  v264 = a29 & 1;
  v263 = a31 & 1;
  v262 = a33 & 1;
  v261 = a35 & 1;
  v260 = a37 & 1;
  v259 = a39 & 1;
  v258 = a41 & 1;
  v93 = v56;
  v257 = a44 & 1;
  v252 = a11;
  v253 = a12;
  LOBYTE(v250[0]) = v56;
  v143 = 0xD000000000000023;
  v144 = 0x800000021478FB30;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v54, v55);
  v57 = v94;
  v95 = v52;
  v58 = v52(&v252, v250, &v143);
  if (v57)
  {

    v59 = v114;
    v60 = v113;
    v61 = v53;
LABEL_7:

    sub_213FDC6D0(v54, v55);
    v65 = v55;
    v66 = v54;
    v62 = v135;
    v67 = v120;
    v68 = v139;
    v70 = a39 & 1;
    v69 = a41 & 1;
LABEL_8:
    LOBYTE(v143) = v96;
    v144 = a2;
    v146 = a3;
    v147 = a4;
    v148 = a5;
    v149 = a6;
    v150 = a7;
    v151 = a8;
    v152 = v95;
    v153 = v61;
    v154 = v66;
    v155 = v65;
    v156 = v93;
    v158 = v140;
    v159 = v141;
    v160 = v68;
    v161 = v142;
    v162 = v62;
    v164 = v133;
    v165 = v136;
    v166 = v138;
    v167 = v137;
    v168 = v134;
    v170 = v128;
    v171 = v130;
    v172 = v132;
    v173 = v131;
    v174 = v129;
    v175 = v97;
    v178 = a20;
    v179 = a21 & 1;
    v181 = a22;
    v182 = a23 & 1;
    v183 = v100;
    v186 = v123;
    v187 = v125;
    v188 = v127;
    v189 = v126;
    v190 = v124;
    v191 = v105;
    v194 = a28;
    v195 = a29 & 1;
    v197 = a30;
    *&v163[3] = *&v288[3];
    *v163 = *v288;
    *&v169[3] = *&v287[3];
    *v169 = *v287;
    v176 = v285;
    *&v180[3] = *(v284 + 3);
    *v180 = v284[0];
    v184 = v282;
    v192 = v280;
    *v196 = v279[0];
    *v199 = v278[0];
    *(&v143 + 1) = v290[0];
    HIDWORD(v143) = *(v290 + 3);
    *&v157[3] = *&v289[3];
    *v157 = *v289;
    v177 = v286;
    v185 = v283;
    v193 = v281;
    *&v196[3] = *(v279 + 3);
    v198 = a31 & 1;
    *&v199[3] = *(v278 + 3);
    v145 = a10;
    v200 = a32;
    v201 = a33 & 1;
    *v202 = v277[0];
    *&v202[3] = *(v277 + 3);
    v203 = a34;
    v204 = a35 & 1;
    *v205 = v276[0];
    *&v205[3] = *(v276 + 3);
    v206 = a36;
    v207 = a37 & 1;
    *v208 = v275[0];
    *&v208[3] = *(v275 + 3);
    v209 = a38;
    v210 = v70;
    *v211 = v274[0];
    *&v211[3] = *(v274 + 3);
    v212 = a40;
    v213 = v69;
    v214 = v107;
    v215 = v272;
    v216 = v273;
    v217 = a43;
    v218 = a44 & 1;
    v219 = v108;
    v220 = v270;
    v221 = v271;
    v222 = v60;
    v223 = v122;
    v224 = v121;
    v225 = v67;
    v226 = v59;
    *v227 = *v269;
    *&v227[3] = *&v269[3];
    v228 = v115;
    v229 = v117;
    v230 = v119;
    v231 = v118;
    v232 = v116;
    v233 = a50;
    v234 = v267;
    v235 = v268;
    v236 = v109;
    v237 = v112;
    v238 = v111;
    v239 = v110;
    return sub_214300F50(&v143);
  }

  if ((v58 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000023;
    v64[1] = 0x800000021478FB30;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    v59 = v114;
    v60 = v113;
    v61 = v53;
    goto LABEL_7;
  }

  sub_213FDC6D0(v54, v55);

  v61 = v53;

  sub_213FDC6D0(v54, v55);
  v252 = a13;
  v253 = a14;
  v62 = v135;
  LOBYTE(v250[0]) = v135;
  v143 = 0xD00000000000002ALL;
  v144 = 0x800000021478FB60;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v139, v142);
  v60 = v113;
  if ((v140(&v252, v250, &v143) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000002ALL;
    v72[1] = 0x800000021478FB60;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();

    v59 = v114;

    v68 = v139;
    sub_213FDC6D0(v139, v142);
    v66 = a11;
    v65 = a12;
    v70 = a39 & 1;
    v69 = a41 & 1;
    v67 = v120;
    goto LABEL_8;
  }

  sub_213FDC6D0(v139, v142);

  sub_213FDC6D0(v139, v142);
  v252 = a15;
  v253 = a16;
  LOBYTE(v250[0]) = v134;
  v143 = 0xD00000000000001DLL;
  v144 = 0x800000021478FB90;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v138, v137);
  v63 = v133(&v252, v250, &v143);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v74 = 0xD00000000000001DLL;
    v74[1] = 0x800000021478FB90;
    v74[2] = 0xD00000000000001CLL;
    v74[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v138, v137);
    v66 = a11;
    v65 = a12;
    v68 = a13;
    v142 = a14;
LABEL_13:
    v70 = a39 & 1;
    v69 = a41 & 1;
    v62 = v135;
    v67 = v120;
    v59 = v114;
    goto LABEL_8;
  }

  sub_213FDC6D0(v138, v137);

  sub_213FDC6D0(v138, v137);
  v252 = a17;
  v253 = a18;
  LOBYTE(v250[0]) = v129;
  v143 = 0xD000000000000022;
  v144 = 0x800000021478FBB0;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v132, v131);
  v73 = v128(&v252, v250, &v143);
  if ((v73 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD000000000000022;
    v76[1] = 0x800000021478FBB0;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v132, v131);
    v66 = a11;
    v65 = a12;
    v142 = a14;
    v138 = a15;
    v137 = a16;
    v68 = a13;
    goto LABEL_13;
  }

  sub_213FDC6D0(v132, v131);

  sub_213FDC6D0(v132, v131);
  v252 = a25;
  v253 = a26;
  LOBYTE(v250[0]) = v124;
  v143 = 0xD00000000000002ELL;
  v144 = 0x800000021478FBE0;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v127, v126);
  v75 = v123(&v252, v250, &v143);
  v59 = v114;
  if ((v75 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v78 = 0xD00000000000002ELL;
    v78[1] = 0x800000021478FBE0;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v127, v126);
    v65 = a12;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v68 = a13;
    v132 = a17;
    v131 = a18;
    v70 = a39 & 1;
    v69 = a41 & 1;
    v62 = v135;
    v67 = v120;
    goto LABEL_8;
  }

  sub_213FDC6D0(v127, v126);

  sub_213FDC6D0(v127, v126);
  v252 = a46;
  v253 = a47;
  LOBYTE(v250[0]) = v114;
  v143 = 0xD000000000000023;
  v144 = 0x800000021478FC10;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v121, v120);
  v77 = v113(&v252, v250, &v143);
  if ((v77 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v80 = 0xD000000000000023;
    v80[1] = 0x800000021478FC10;
    v80[2] = 0xD00000000000001CLL;
    v80[3] = 0x800000021478A360;
    swift_willThrow();

    v67 = v120;
    sub_213FDC6D0(v121, v120);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v70 = a39 & 1;
    v69 = a41 & 1;
LABEL_23:
    v62 = v135;
    goto LABEL_8;
  }

  sub_213FDC6D0(v121, v120);

  sub_213FDC6D0(v121, v120);
  v252 = a48;
  v253 = a49;
  LOBYTE(v250[0]) = v116;
  v143 = 0xD000000000000025;
  v144 = 0x800000021478FC40;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FDC9D0(v119, v118);
  v79 = v115(&v252, v250, &v143);
  if ((v79 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v82 = 0xD000000000000025;
    v82[1] = 0x800000021478FC40;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v119, v118);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v121 = a46;
    v67 = a47;
    v59 = v114;
    v60 = v113;
LABEL_27:
    v70 = a39 & 1;
    v69 = a41 & 1;
    v61 = v53;
    goto LABEL_23;
  }

  sub_213FDC6D0(v119, v118);

  sub_213FDC6D0(v119, v118);
  v252 = a51;
  LOBYTE(v250[0]) = v110;
  v143 = 0xD000000000000020;
  v144 = 0x800000021478FC70;
  v145 = -2.31584178e77;
  v146 = 0x800000021478A360;

  sub_213FBE134(v111);
  v81 = v109(&v252, v250, &v143);
  if ((v81 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v91 = 0xD000000000000020;
    v91[1] = 0x800000021478FC70;
    v91[2] = 0xD00000000000001CLL;
    v91[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB7170(v111);
    v65 = a12;
    v68 = a13;
    v142 = a14;
    v66 = a11;
    v138 = a15;
    v137 = a16;
    v132 = a17;
    v131 = a18;
    v126 = a26;
    v127 = a25;
    v121 = a46;
    v67 = a47;
    v60 = v113;
    v118 = a49;
    v119 = a48;
    v59 = v114;
    goto LABEL_27;
  }

  sub_213FB7170(v111);

  result = sub_213FB7170(v111);
  *a9 = v96;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = v95;
  *(a9 + 80) = v53;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = v93;
  *(a9 + 112) = v140;
  *(a9 + 120) = v141;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  *(a9 + 144) = v135;
  *(a9 + 152) = v133;
  *(a9 + 160) = v136;
  *(a9 + 168) = a15;
  *(a9 + 176) = a16;
  *(a9 + 184) = v134;
  *(a9 + 192) = v128;
  *(a9 + 200) = v130;
  *(a9 + 208) = a17;
  *(a9 + 216) = a18;
  *(a9 + 224) = v129;
  *(a9 + 225) = v97;
  *(a9 + 232) = a20;
  *(a9 + 240) = a21 & 1;
  *(a9 + 248) = a22;
  *(a9 + 256) = a23 & 1;
  *(a9 + 257) = v100;
  *(a9 + 264) = v123;
  *(a9 + 272) = v125;
  *(a9 + 280) = a25;
  *(a9 + 288) = a26;
  *(a9 + 296) = v124;
  *(a9 + 297) = v105;
  *(a9 + 304) = a28;
  *(a9 + 312) = a29 & 1;
  *(a9 + 320) = a30;
  *(a9 + 328) = a31 & 1;
  *(a9 + 258) = v282;
  *(a9 + 298) = v280;
  *(a9 + 316) = *(v279 + 3);
  *(a9 + 313) = v279[0];
  *(a9 + 332) = *(v278 + 3);
  *(a9 + 329) = v278[0];
  *(a9 + 1) = v290[0];
  *(a9 + 4) = *(v290 + 3);
  *(a9 + 108) = *&v289[3];
  *(a9 + 105) = *v289;
  *(a9 + 148) = *&v288[3];
  v83 = *&v287[3];
  *(a9 + 145) = *v288;
  *(a9 + 188) = v83;
  *(a9 + 185) = *v287;
  *(a9 + 230) = v286;
  *(a9 + 226) = v285;
  *(a9 + 244) = *(v284 + 3);
  *(a9 + 241) = v284[0];
  *(a9 + 262) = v283;
  *(a9 + 302) = v281;
  *(a9 + 16) = a10;
  *(a9 + 336) = a32;
  *(a9 + 344) = a33 & 1;
  *(a9 + 348) = *(v277 + 3);
  *(a9 + 345) = v277[0];
  *(a9 + 352) = a34;
  *(a9 + 360) = a35 & 1;
  v84 = v276[0];
  *(a9 + 364) = *(v276 + 3);
  *(a9 + 361) = v84;
  *(a9 + 368) = a36;
  *(a9 + 376) = a37 & 1;
  v85 = v275[0];
  *(a9 + 380) = *(v275 + 3);
  *(a9 + 377) = v85;
  *(a9 + 384) = a38;
  *(a9 + 392) = a39 & 1;
  v86 = v274[0];
  *(a9 + 396) = *(v274 + 3);
  *(a9 + 393) = v86;
  *(a9 + 400) = a40;
  *(a9 + 408) = a41 & 1;
  *(a9 + 409) = v107;
  v87 = v272;
  *(a9 + 414) = v273;
  *(a9 + 410) = v87;
  *(a9 + 416) = a43;
  *(a9 + 424) = a44 & 1;
  *(a9 + 425) = v108;
  v88 = v270;
  *(a9 + 430) = v271;
  *(a9 + 426) = v88;
  *(a9 + 432) = v113;
  *(a9 + 440) = v122;
  *(a9 + 448) = a46;
  *(a9 + 456) = a47;
  *(a9 + 464) = v114;
  v89 = *v269;
  *(a9 + 468) = *&v269[3];
  *(a9 + 465) = v89;
  *(a9 + 472) = v115;
  *(a9 + 480) = v117;
  *(a9 + 488) = a48;
  *(a9 + 496) = a49;
  *(a9 + 504) = v116;
  *(a9 + 505) = a50;
  v90 = v267;
  *(a9 + 510) = v268;
  *(a9 + 506) = v90;
  *(a9 + 512) = v109;
  *(a9 + 520) = v112;
  *(a9 + 528) = a51;
  *(a9 + 536) = v110;
  return result;
}

unint64_t sub_2141BA67C(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65746144646E6573;
      break;
    case 3:
      result = 0x496567617373656DLL;
      break;
    case 4:
      result = 0x496E6F6973736573;
      break;
    case 5:
      result = 0x547972616D6D7573;
      break;
    case 6:
      result = 0x7265766965636572;
      break;
    case 7:
      v3 = 5;
      goto LABEL_17;
    case 8:
      result = 0x4C52556572616873;
      break;
    case 9:
      result = 0x7069636974726170;
      break;
    case 10:
      result = 0x546E6F6973736573;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x5472656767697274;
      break;
    case 17:
      result = 0x656475746974616CLL;
      break;
    case 18:
      result = 0x64757469676E6F6CLL;
      break;
    case 19:
      result = 1668183400;
      break;
    case 20:
      result = 0x6564757469746C61;
      break;
    case 21:
      result = 1668183414;
      break;
    case 22:
      result = 0x6F4C664F656D6974;
      break;
    case 23:
      result = 0x636E657265666572;
      break;
    case 24:
      result = 0x6465657073;
      break;
    case 25:
      result = 0x5472656767697274;
      break;
    case 26:
      result = 0x6143797465666173;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x697254534F537369;
      break;
    case 29:
      result = 0x65694670756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141BA9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437161C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141BAA0C(uint64_t a1)
{
  v2 = sub_214300FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BAA48(uint64_t a1)
{
  v2 = sub_214300FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BAA84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C68, &qword_2146F53B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v160 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214300FA4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v160);
  }

  v12 = v6;
  v13 = a2;
  LOBYTE(v161[0]) = 0;
  sub_2140586B4();
  sub_2146DA1C8();
  v14 = v162;
  LOBYTE(v162) = 1;
  v159 = sub_2146DA1B8();
  LOBYTE(v162) = 2;
  sub_2146DA188();
  v16 = v15;
  LOBYTE(v162) = 3;
  v157 = sub_2146DA168();
  v158 = v18;
  LOBYTE(v162) = 4;
  v154 = sub_2146DA168();
  v156 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v161[0]) = 5;
  v155 = sub_2142E12FC();
  sub_2146DA1C8();
  v152 = v162;
  v153 = v163;
  LOBYTE(v161[0]) = 6;
  sub_2146DA1C8();
  v150 = v162;
  v151 = v163;
  LOBYTE(v161[0]) = 7;
  sub_2146DA1C8();
  v148 = v162;
  v149 = v163;
  LOBYTE(v161[0]) = 8;
  sub_2146DA1C8();
  v144 = v14;
  v145 = v162;
  v146 = v163;
  LOBYTE(v161[0]) = 9;
  v147 = v5;
  sub_2146DA1C8();
  v142 = v162;
  v143 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C78, &qword_2146F53C0);
  LOBYTE(v161[0]) = 10;
  sub_214300FF8();
  sub_2146DA1C8();
  v140 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v161[0]) = 11;
  v141 = sub_2142E35EC();
  sub_2146DA1C8();
  v138 = v162;
  v139 = v163;
  LOBYTE(v161[0]) = 12;
  sub_2146DA1C8();
  v136 = v162;
  v137 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C88, &qword_2146F53C8);
  LOBYTE(v161[0]) = 13;
  sub_21430107C();
  sub_2146DA1C8();
  v135 = v162;
  LOBYTE(v161[0]) = 14;
  sub_2146DA1C8();
  v133 = v162;
  v134 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C98, &qword_2146F53D0);
  LOBYTE(v161[0]) = 15;
  sub_214301100();
  sub_2146DA1C8();
  v132 = v162;
  LOBYTE(v161[0]) = 16;
  sub_2146DA1C8();
  v130 = v162;
  v131 = v163;
  LOBYTE(v161[0]) = 17;
  sub_2146DA1C8();
  v128 = v162;
  v129 = v163;
  LOBYTE(v161[0]) = 18;
  sub_2146DA1C8();
  v126 = v162;
  v127 = v163;
  LOBYTE(v161[0]) = 19;
  sub_2146DA1C8();
  v124 = v162;
  v125 = v163;
  LOBYTE(v161[0]) = 20;
  sub_2146DA1C8();
  v122 = v162;
  v123 = v163;
  LOBYTE(v161[0]) = 21;
  sub_2146DA1C8();
  v120 = v162;
  v121 = v163;
  LOBYTE(v161[0]) = 22;
  sub_2146DA1C8();
  v118 = v162;
  v119 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CA8, &qword_2146F53D8);
  LOBYTE(v161[0]) = 23;
  sub_214301184();
  sub_2146DA1C8();
  v117 = v162;
  LOBYTE(v161[0]) = 24;
  sub_2146DA1C8();
  v116 = v162;
  LODWORD(v141) = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CB8, &qword_2146F53E0);
  LOBYTE(v161[0]) = 25;
  sub_214301208();
  sub_2146DA1C8();
  v115 = v162;
  LOBYTE(v161[0]) = 26;
  sub_2146DA1C8();
  v113 = v162;
  v114 = v163;
  LOBYTE(v161[0]) = 27;
  sub_2146DA1C8();
  v112 = v162;
  v155 = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v161[0]) = 28;
  sub_2142E1378();
  sub_2146DA1C8();
  v111 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CC8, &qword_2146F53E8);
  v281 = 29;
  sub_21430128C();
  sub_2146DA1C8();
  v89 = v282;
  sub_2140568D4(&v162);
  v20 = v162;
  v21 = v163;
  v22 = v164;
  v23 = v165;
  v108 = v166;
  sub_214056908(v161);
  v101 = v161[0];
  v105 = v161[2];
  v103 = v161[1];
  v104 = v161[3];
  v102 = LOBYTE(v161[4]);
  sub_214056944(v269);
  v95 = v269[0];
  v99 = v269[2];
  v97 = v269[1];
  v98 = v269[3];
  v96 = v270;
  sub_214056AF0(v267);
  v90 = v267[0];
  v94 = v267[2];
  v92 = v267[1];
  v93 = v267[3];
  v91 = v268;
  sub_214056B24(v265);
  v71 = v265[0];
  v83 = v265[1];
  v87 = v265[3];
  v88 = v265[2];
  v72 = v266;
  sub_214056CA8(v263);
  v73 = v263[0];
  v84 = v263[1];
  v81 = v263[3];
  v82 = v263[2];
  v74 = v264;
  sub_214056E04(v261);
  v75 = v261[0];
  v85 = v261[1];
  v79 = v261[3];
  v80 = v261[2];
  v76 = v262;
  sub_214056F60(v259);
  v77 = v259[0];
  v86 = v259[1];
  v70 = v259[2];
  v78 = v260;
  v280 = v139;
  v279 = v137;
  v278 = v131;
  v277 = v129;
  v276 = v127;
  v275 = v125;
  v274 = v123;
  v273 = v121;
  v272 = v119;
  v271 = v141;
  v161[0] = v150;
  v161[1] = v151;
  LOBYTE(v269[0]) = v108;
  v162 = 0xD000000000000023;
  v100 = 0x800000021478FB30;
  v163 = 0x800000021478FB30;
  v164 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;
  v165 = 0x800000021478A360;

  v109 = v22;
  v110 = v23;
  sub_213FDC9D0(v22, v23);
  v107 = v21;
  v69 = v20;
  if (v20(v161, v269, &v162))
  {
    v25 = v109;
    v24 = v110;
    sub_213FDC6D0(v109, v110);
    v26 = v106;

    sub_213FDC6D0(v25, v24);
    v161[0] = v148;
    v161[1] = v149;
    LOBYTE(v269[0]) = v102;
    v162 = 0xD00000000000002ALL;
    v163 = 0x800000021478FB60;
    v164 = 0xD00000000000001CLL;
    v165 = v26;

    sub_213FDC9D0(v105, v104);
    if (v101(v161, v269, &v162))
    {
      v28 = v104;
      v27 = v105;
      sub_213FDC6D0(v105, v104);
      v29 = v106;

      sub_213FDC6D0(v27, v28);
      v161[0] = v145;
      v161[1] = v146;
      LOBYTE(v269[0]) = v96;
      v162 = 0xD00000000000001DLL;
      v163 = 0x800000021478FB90;
      v164 = 0xD00000000000001CLL;
      v165 = v29;

      sub_213FDC9D0(v99, v98);
      if (v95(v161, v269, &v162))
      {
        v31 = v98;
        v30 = v99;
        sub_213FDC6D0(v99, v98);
        v32 = v106;

        sub_213FDC6D0(v30, v31);
        v161[0] = v142;
        v161[1] = v143;
        LOBYTE(v269[0]) = v91;
        v162 = 0xD000000000000022;
        v163 = 0x800000021478FBB0;
        v164 = 0xD00000000000001CLL;
        v165 = v32;

        sub_213FDC9D0(v94, v93);
        if (v90(v161, v269, &v162))
        {
          v34 = v93;
          v33 = v94;
          sub_213FDC6D0(v94, v93);
          v35 = v106;

          sub_213FDC6D0(v33, v34);
          v161[0] = v133;
          v161[1] = v134;
          LOBYTE(v269[0]) = v72;
          v162 = 0xD00000000000002ELL;
          v163 = 0x800000021478FBE0;
          v164 = 0xD00000000000001CLL;
          v165 = v35;

          sub_213FDC9D0(v88, v87);
          if (v71(v161, v269, &v162))
          {
            v37 = v87;
            v36 = v88;
            sub_213FDC6D0(v88, v87);
            v38 = v106;

            sub_213FDC6D0(v36, v37);
            v161[0] = v113;
            v161[1] = v114;
            LOBYTE(v269[0]) = v74;
            v162 = 0xD000000000000023;
            v163 = 0x800000021478FC10;
            v164 = 0xD00000000000001CLL;
            v165 = v38;

            sub_213FDC9D0(v82, v81);
            if (v73(v161, v269, &v162))
            {
              v52 = v81;
              v51 = v82;
              sub_213FDC6D0(v82, v81);
              v53 = v106;

              sub_213FDC6D0(v51, v52);
              v161[0] = v112;
              v161[1] = v155;
              LOBYTE(v269[0]) = v76;
              v162 = 0xD000000000000025;
              v163 = 0x800000021478FC40;
              v164 = 0xD00000000000001CLL;
              v165 = v53;

              sub_213FDC9D0(v80, v79);
              if (v75(v161, v269, &v162))
              {
                v57 = v79;
                v56 = v80;
                sub_213FDC6D0(v80, v79);
                v58 = v106;

                sub_213FDC6D0(v56, v57);
                v269[0] = v89;
                LOBYTE(v161[0]) = v78;
                v162 = 0xD000000000000020;
                v163 = 0x800000021478FC70;
                v164 = 0xD00000000000001CLL;
                v165 = v58;

                sub_213FBE134(v70);
                if (v77(v269, v161, &v162))
                {
                  v61 = v70;
                  sub_213FB7170(v70);

                  (*(v12 + 8))(v9, v147);

                  sub_213FB7170(v61);
                  *(&v161[18] + 1) = *v304;
                  HIDWORD(v161[23]) = *&v303[3];
                  *(&v161[23] + 1) = *v303;
                  *(&v161[28] + 2) = v301;
                  HIDWORD(v161[30]) = *&v300[3];
                  *(&v161[30] + 1) = *v300;
                  *(&v161[32] + 2) = v298;
                  *(&v161[37] + 2) = v296;
                  *(&v161[39] + 1) = *v295;
                  *(&v161[41] + 1) = *v294;
                  *(&v161[43] + 1) = *v293;
                  *(&v161[45] + 1) = *v292;
                  *(&v161[47] + 1) = *v291;
                  *(&v161[49] + 1) = *v290;
                  *(&v161[51] + 2) = v288;
                  *(&v161[53] + 2) = v286;
                  *(&v161[58] + 1) = *v285;
                  *(&v161[63] + 2) = v283;
                  *(v161 + 1) = v306[0];
                  HIDWORD(v161[0]) = *(v306 + 3);
                  *(&v161[13] + 1) = *v305;
                  HIDWORD(v161[13]) = *&v305[3];
                  HIDWORD(v161[18]) = *&v304[3];
                  HIWORD(v161[28]) = v302;
                  HIWORD(v161[32]) = v299;
                  HIWORD(v161[37]) = v297;
                  HIDWORD(v161[39]) = *&v295[3];
                  HIDWORD(v161[41]) = *&v294[3];
                  HIDWORD(v161[43]) = *&v293[3];
                  HIDWORD(v161[45]) = *&v292[3];
                  HIDWORD(v161[47]) = *&v291[3];
                  HIDWORD(v161[49]) = *&v290[3];
                  HIWORD(v161[51]) = v289;
                  HIWORD(v161[53]) = v287;
                  HIDWORD(v161[58]) = *&v285[3];
                  HIWORD(v161[63]) = v284;
                  LOBYTE(v161[0]) = v144;
                  v62 = v159;
                  v161[1] = v159;
                  v161[2] = v16;
                  v161[3] = v157;
                  v161[4] = v158;
                  v161[5] = v154;
                  v161[6] = v156;
                  v161[7] = v152;
                  v161[8] = v153;
                  v161[9] = v69;
                  v161[10] = v107;
                  v161[11] = v150;
                  v63 = v151;
                  v161[12] = v151;
                  LOBYTE(v161[13]) = v108;
                  v161[14] = v101;
                  v161[15] = v103;
                  v161[16] = v148;
                  v161[17] = v149;
                  LOBYTE(v161[18]) = v102;
                  v161[19] = v95;
                  v161[20] = v97;
                  v161[21] = v145;
                  v161[22] = v146;
                  LOBYTE(v161[23]) = v96;
                  v161[24] = v90;
                  v161[25] = v92;
                  v161[26] = v142;
                  v161[27] = v143;
                  LOBYTE(v161[28]) = v91;
                  BYTE1(v161[28]) = v140;
                  v161[29] = v138;
                  LOBYTE(v161[30]) = v139;
                  v161[31] = v136;
                  LOBYTE(v161[32]) = v137;
                  BYTE1(v161[32]) = v135;
                  v161[33] = v71;
                  v161[34] = v83;
                  v64 = v133;
                  v161[35] = v133;
                  v65 = v134;
                  v161[36] = v134;
                  LOBYTE(v161[37]) = v72;
                  BYTE1(v161[37]) = v132;
                  v161[38] = v130;
                  LOBYTE(v161[39]) = v131;
                  v161[40] = v128;
                  LOBYTE(v161[41]) = v129;
                  v161[42] = v126;
                  LOBYTE(v161[43]) = v127;
                  v161[44] = v124;
                  LOBYTE(v161[45]) = v125;
                  v161[46] = v122;
                  LOBYTE(v161[47]) = v123;
                  v161[48] = v120;
                  LOBYTE(v161[49]) = v121;
                  v161[50] = v118;
                  LOBYTE(v161[51]) = v119;
                  BYTE1(v161[51]) = v117;
                  v161[52] = v116;
                  LOBYTE(v161[53]) = v141;
                  BYTE1(v161[53]) = v115;
                  v161[54] = v73;
                  v161[55] = v84;
                  v161[56] = v113;
                  v161[57] = v114;
                  LOBYTE(v161[58]) = v74;
                  v161[59] = v75;
                  v161[60] = v85;
                  v161[61] = v112;
                  v161[62] = v155;
                  LOBYTE(v161[63]) = v76;
                  BYTE1(v161[63]) = v111;
                  v161[64] = v77;
                  v161[65] = v86;
                  v161[66] = v89;
                  LOBYTE(v161[67]) = v78;
                  memcpy(v13, v161, 0x219uLL);
                  sub_214301394(v161, &v162);
                  __swift_destroy_boxed_opaque_existential_1(v160);
                  LOBYTE(v162) = v144;
                  v163 = v62;
                  v165 = v157;
                  v166 = v158;
                  v167 = v154;
                  v168 = v156;
                  v169 = v152;
                  v170 = v153;
                  v171 = v69;
                  v172 = v107;
                  v173 = v150;
                  v174 = v63;
                  v175 = v108;
                  v177 = v101;
                  v178 = v103;
                  v179 = v148;
                  v180 = v149;
                  v181 = v102;
                  v183 = v95;
                  v184 = v97;
                  v185 = v145;
                  v186 = v146;
                  v187 = v96;
                  v189 = v90;
                  v190 = v92;
                  v191 = v142;
                  v192 = v143;
                  v193 = v91;
                  v194 = v140;
                  v197 = v138;
                  v198 = v139;
                  v200 = v136;
                  v201 = v137;
                  v202 = v135;
                  v205 = v71;
                  v206 = v83;
                  v207 = v64;
                  v208 = v65;
                  v209 = v72;
                  v210 = v132;
                  v213 = v130;
                  v214 = v131;
                  v216 = v128;
                  v217 = v129;
                  v219 = v126;
                  *(&v162 + 1) = v306[0];
                  *v176 = *v305;
                  *v182 = *v304;
                  *&v188[3] = *&v303[3];
                  *v188 = *v303;
                  v195 = v301;
                  *&v199[3] = *&v300[3];
                  *v199 = *v300;
                  v203 = v298;
                  v211 = v296;
                  *v215 = *v295;
                  *v218 = *v294;
                  HIDWORD(v162) = *(v306 + 3);
                  v164 = v16;
                  *&v176[3] = *&v305[3];
                  *&v182[3] = *&v304[3];
                  v196 = v302;
                  v204 = v299;
                  v212 = v297;
                  *&v215[3] = *&v295[3];
                  *&v218[3] = *&v294[3];
                  v220 = v127;
                  *v221 = *v293;
                  *&v221[3] = *&v293[3];
                  v222 = v124;
                  v223 = v125;
                  *v224 = *v292;
                  *&v224[3] = *&v292[3];
                  v225 = v122;
                  v226 = v123;
                  *v227 = *v291;
                  *&v227[3] = *&v291[3];
                  v228 = v120;
                  v229 = v121;
                  *v230 = *v290;
                  *&v230[3] = *&v290[3];
                  v231 = v118;
                  v232 = v119;
                  v233 = v117;
                  v234 = v288;
                  v235 = v289;
                  v236 = v116;
                  v237 = v141;
                  v238 = v115;
                  v239 = v286;
                  v240 = v287;
                  v241 = v73;
                  v242 = v84;
                  v243 = v113;
                  v244 = v114;
                  v245 = v74;
                  *v246 = *v285;
                  *&v246[3] = *&v285[3];
                  v247 = v75;
                  v248 = v85;
                  v249 = v112;
                  v250 = v155;
                  v251 = v76;
                  v252 = v111;
                  v253 = v283;
                  v254 = v284;
                  v255 = v77;
                  v256 = v86;
                  v42 = v89;
                  goto LABEL_12;
                }

                sub_214031C4C();
                swift_allocError();
                *v66 = 0xD000000000000020;
                v66[1] = 0x800000021478FC70;
                v67 = v106;
                v66[2] = 0xD00000000000001CLL;
                v66[3] = v67;
                swift_willThrow();

                (*(v12 + 8))(v9, v147);

                sub_213FB7170(v70);
                v109 = v150;
                v110 = v151;
                v104 = v149;
                v105 = v148;
                v98 = v146;
                v99 = v145;
                v93 = v143;
                v94 = v142;
                v87 = v134;
                v88 = v133;
                v81 = v114;
                v82 = v113;
                v79 = v155;
                v80 = v112;
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v59 = 0xD000000000000025;
                v59[1] = 0x800000021478FC40;
                v60 = v106;
                v59[2] = 0xD00000000000001CLL;
                v59[3] = v60;
                swift_willThrow();

                (*(v12 + 8))(v9, v147);

                sub_213FDC6D0(v80, v79);
                v109 = v150;
                v110 = v151;
                v104 = v149;
                v105 = v148;
                v98 = v146;
                v99 = v145;
                v93 = v143;
                v94 = v142;
                v87 = v134;
                v88 = v133;
                v81 = v114;
                v82 = v113;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v54 = 0xD000000000000023;
              v54[1] = 0x800000021478FC10;
              v55 = v106;
              v54[2] = 0xD00000000000001CLL;
              v54[3] = v55;
              swift_willThrow();

              (*(v12 + 8))(v9, v147);

              sub_213FDC6D0(v82, v81);
              v109 = v150;
              v110 = v151;
              v104 = v149;
              v105 = v148;
              v98 = v146;
              v99 = v145;
              v93 = v143;
              v94 = v142;
              v87 = v134;
              v88 = v133;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v49 = 0xD00000000000002ELL;
            v49[1] = 0x800000021478FBE0;
            v50 = v106;
            v49[2] = 0xD00000000000001CLL;
            v49[3] = v50;
            swift_willThrow();

            (*(v12 + 8))(v9, v147);

            sub_213FDC6D0(v88, v87);
            v109 = v150;
            v110 = v151;
            v104 = v149;
            v105 = v148;
            v98 = v146;
            v99 = v145;
            v93 = v143;
            v94 = v142;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v47 = 0xD000000000000022;
          v47[1] = 0x800000021478FBB0;
          v48 = v106;
          v47[2] = 0xD00000000000001CLL;
          v47[3] = v48;
          swift_willThrow();

          (*(v12 + 8))(v9, v147);

          sub_213FDC6D0(v94, v93);
          v109 = v150;
          v110 = v151;
          v104 = v149;
          v105 = v148;
          v98 = v146;
          v99 = v145;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v45 = 0xD00000000000001DLL;
        v45[1] = 0x800000021478FB90;
        v46 = v106;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v46;
        swift_willThrow();

        (*(v12 + 8))(v9, v147);

        sub_213FDC6D0(v99, v98);
        v109 = v150;
        v110 = v151;
        v104 = v149;
        v105 = v148;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v43 = 0xD00000000000002ALL;
      v43[1] = 0x800000021478FB60;
      v44 = v106;
      v43[2] = 0xD00000000000001CLL;
      v43[3] = v44;
      swift_willThrow();

      (*(v12 + 8))(v9, v147);

      sub_213FDC6D0(v105, v104);
      v109 = v150;
      v110 = v151;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v39 = v100;
    *v40 = 0xD000000000000023;
    v40[1] = v39;
    v41 = v106;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    (*(v12 + 8))(v9, v147);

    sub_213FDC6D0(v109, v110);
  }

  __swift_destroy_boxed_opaque_existential_1(v160);
  LOBYTE(v162) = v144;
  v163 = v159;
  v165 = v157;
  v166 = v158;
  v167 = v154;
  v168 = v156;
  v169 = v152;
  v170 = v153;
  v171 = v69;
  v172 = v107;
  v173 = v109;
  v174 = v110;
  v175 = v108;
  v177 = v101;
  v178 = v103;
  v179 = v105;
  v180 = v104;
  v181 = v102;
  v183 = v95;
  v184 = v97;
  v185 = v99;
  v186 = v98;
  v187 = v96;
  v189 = v90;
  v190 = v92;
  v191 = v94;
  v192 = v93;
  v193 = v91;
  v194 = v140;
  v197 = v138;
  v198 = v139;
  v200 = v136;
  v201 = v137;
  v202 = v135;
  v205 = v71;
  v206 = v83;
  v207 = v88;
  v208 = v87;
  v209 = v72;
  v210 = v132;
  v213 = v130;
  v214 = v131;
  v216 = v128;
  v217 = v129;
  *(&v162 + 1) = v306[0];
  *&v176[3] = *&v305[3];
  *v176 = *v305;
  *&v182[3] = *&v304[3];
  *v182 = *v304;
  *&v188[3] = *&v303[3];
  *v188 = *v303;
  v195 = v301;
  *&v199[3] = *&v300[3];
  *v199 = *v300;
  v203 = v298;
  v211 = v296;
  *v215 = *v295;
  *v218 = *v294;
  HIDWORD(v162) = *(v306 + 3);
  v196 = v302;
  v204 = v299;
  v212 = v297;
  *&v215[3] = *&v295[3];
  *&v218[3] = *&v294[3];
  v164 = v16;
  v219 = v126;
  v220 = v127;
  *v221 = *v293;
  *&v221[3] = *&v293[3];
  v222 = v124;
  v223 = v125;
  *v224 = *v292;
  *&v224[3] = *&v292[3];
  v225 = v122;
  v226 = v123;
  *v227 = *v291;
  *&v227[3] = *&v291[3];
  v228 = v120;
  v229 = v121;
  *v230 = *v290;
  *&v230[3] = *&v290[3];
  v231 = v118;
  v232 = v119;
  v233 = v117;
  v234 = v288;
  v235 = v289;
  v236 = v116;
  v237 = v141;
  v238 = v115;
  v239 = v286;
  v240 = v287;
  v241 = v73;
  v242 = v84;
  v243 = v82;
  v244 = v81;
  v245 = v74;
  *v246 = *v285;
  *&v246[3] = *&v285[3];
  v247 = v75;
  v248 = v85;
  v249 = v80;
  v250 = v79;
  v251 = v76;
  v252 = v111;
  v253 = v283;
  v254 = v284;
  v255 = v77;
  v256 = v86;
  v42 = v70;
LABEL_12:
  v257 = v42;
  v258 = v78;
  return sub_214300F50(&v162);
}

uint64_t sub_2141BD00C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CE8, &qword_2146F53F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = *(v1 + 4);
  v76 = *(v1 + 3);
  v77 = v9;
  v12 = *(v1 + 6);
  v74 = *(v1 + 5);
  v75 = v11;
  v13 = *(v1 + 8);
  v72 = *(v1 + 7);
  v73 = v12;
  v14 = *(v1 + 12);
  v70 = *(v1 + 11);
  v71 = v13;
  v15 = *(v1 + 17);
  v68 = *(v1 + 16);
  v69 = v14;
  v16 = *(v1 + 22);
  v66 = *(v1 + 21);
  v67 = v15;
  v17 = *(v1 + 27);
  v64 = *(v1 + 26);
  v65 = v16;
  v63 = v17;
  LODWORD(v9) = v1[225];
  v60 = *(v1 + 29);
  v61 = v1[240];
  v62 = v9;
  v58 = *(v1 + 31);
  v59 = v1[256];
  v57 = v1[257];
  v18 = *(v1 + 36);
  v55 = *(v1 + 35);
  v56 = v18;
  v54 = v1[297];
  v52 = *(v1 + 38);
  v53 = v1[312];
  v31 = *(v1 + 40);
  v32 = v1[328];
  v33 = *(v1 + 42);
  v34 = v1[344];
  v35 = *(v1 + 44);
  v36 = v1[360];
  v37 = *(v1 + 46);
  v38 = v1[376];
  v39 = *(v1 + 48);
  v40 = v1[392];
  v41 = *(v1 + 50);
  v42 = v1[408];
  v43 = v1[409];
  v44 = *(v1 + 52);
  v45 = v1[424];
  v46 = v1[425];
  v19 = *(v1 + 57);
  v47 = *(v1 + 56);
  v48 = v19;
  v20 = *(v1 + 62);
  v49 = *(v1 + 61);
  v50 = v20;
  v51 = v1[505];
  v21 = *(v1 + 66);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214300FA4();
  sub_2146DAA28();
  LOBYTE(v79) = v8;
  v23 = v7;
  v81 = 0;
  sub_214058708();
  v24 = v78;
  sub_2146DA388();
  if (v24)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v26 = v72;
  v78 = v21;
  LOBYTE(v79) = 1;
  sub_2146DA378();
  LOBYTE(v79) = 2;
  sub_2146DA348();
  LOBYTE(v79) = 3;
  sub_2146DA328();
  LOBYTE(v79) = 4;
  sub_2146DA328();
  v79 = v26;
  v80 = v71;
  v81 = 5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v28 = sub_214045AC0();
  sub_2146DA388();
  v74 = v28;
  v75 = v27;
  v76 = v3;
  v77 = v23;
  if (v69 == 1)
  {
    goto LABEL_12;
  }

  v79 = v70;
  v80 = v69;
  v81 = 6;
  sub_2146DA388();
  if (v67 == 1)
  {
    goto LABEL_12;
  }

  v79 = v68;
  v80 = v67;
  v81 = 7;
  sub_2146DA388();
  if (v65 == 1)
  {
    goto LABEL_12;
  }

  v79 = v66;
  v80 = v65;
  v81 = 8;
  sub_2146DA388();
  if (v63 == 1)
  {
    goto LABEL_12;
  }

  v79 = v64;
  v80 = v63;
  v81 = 9;
  sub_2146DA388();
  LOBYTE(v79) = v62;
  v81 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C78, &qword_2146F53C0);
  sub_2143013F0();
  sub_2146DA388();
  v79 = v60;
  LOBYTE(v80) = v61;
  v81 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  v79 = v58;
  LOBYTE(v80) = v59;
  v81 = 12;
  sub_2146DA388();
  LOBYTE(v79) = v57;
  v81 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C88, &qword_2146F53C8);
  sub_214301474();
  sub_2146DA388();
  if (v56 == 1)
  {
    goto LABEL_12;
  }

  v79 = v55;
  v80 = v56;
  v81 = 14;
  sub_2146DA388();
  LOBYTE(v79) = v54;
  v81 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908C98, &qword_2146F53D0);
  sub_2143014F8();
  sub_2146DA388();
  v79 = v52;
  LOBYTE(v80) = v53;
  v81 = 16;
  sub_2146DA388();
  v79 = v31;
  LOBYTE(v80) = v32;
  v81 = 17;
  sub_2146DA388();
  v79 = v33;
  LOBYTE(v80) = v34;
  v81 = 18;
  sub_2146DA388();
  v79 = v35;
  LOBYTE(v80) = v36;
  v81 = 19;
  sub_2146DA388();
  v79 = v37;
  LOBYTE(v80) = v38;
  v81 = 20;
  sub_2146DA388();
  v79 = v39;
  LOBYTE(v80) = v40;
  v81 = 21;
  sub_2146DA388();
  v79 = v41;
  LOBYTE(v80) = v42;
  v81 = 22;
  sub_2146DA388();
  LOBYTE(v79) = v43;
  v81 = 23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CA8, &qword_2146F53D8);
  sub_21430157C();
  sub_2146DA388();
  v79 = v44;
  LOBYTE(v80) = v45;
  v81 = 24;
  sub_2146DA388();
  LOBYTE(v79) = v46;
  v81 = 25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CB8, &qword_2146F53E0);
  sub_214301600();
  sub_2146DA388();
  if (v48 == 1)
  {
    goto LABEL_12;
  }

  v79 = v47;
  v80 = v48;
  v81 = 26;
  sub_2146DA388();
  if (v50 == 1)
  {
    goto LABEL_12;
  }

  v79 = v49;
  v80 = v50;
  v81 = 27;
  sub_2146DA388();
  LOBYTE(v79) = v51;
  v81 = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  if (v78 == 1)
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v79 = v78;
    v81 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908CC8, &qword_2146F53E8);
    sub_214301684();
    v30 = v76;
    v29 = v77;
    sub_2146DA388();
    return (*(v4 + 8))(v29, v30);
  }

  return result;
}

uint64_t sub_2141BDC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865546E69616C70 && a2 == 0xEF736569646F4274)
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

uint64_t sub_2141BDC94(uint64_t a1)
{
  v2 = sub_21430178C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BDCD0(uint64_t a1)
{
  v2 = sub_21430178C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BDD0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D28, &qword_2146F5400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430178C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BDE8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D38, &qword_2146F5408);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430178C();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141BE030@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_214328704(a1, a3, type metadata accessor for Metadata);
  result = type metadata accessor for ScheduledMessageUpdate();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_2141BE090()
{
  if (*v0)
  {
    result = 0x656C756465686373;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2141BE0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED00006574617453)
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

uint64_t sub_2141BE1BC(uint64_t a1)
{
  v2 = sub_2143017E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BE1F8(uint64_t a1)
{
  v2 = sub_2143017E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BE234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D40, &qword_2146F5410);
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143017E0();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v18;
    v22 = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v15 = v19;
    sub_2146DA1C8();
    v20 = 1;
    sub_21407BC6C();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v17 = v21;
    sub_214328704(v7, v14, type metadata accessor for Metadata);
    *(v14 + *(type metadata accessor for ScheduledMessageUpdate() + 20)) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BE4D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D50, &qword_2146F5418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143017E0();
  sub_2146DAA28();
  v12[15] = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ScheduledMessageUpdate() + 20));
    v12[13] = 1;
    sub_21407BCC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141BE6E8(uint64_t a1)
{
  v2 = sub_214301834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BE724(uint64_t a1)
{
  v2 = sub_214301834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141BE760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D58, &qword_2146F5420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301834();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214301888();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141BE8CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D70, &qword_2146F5428);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301834();
  sub_2146DAA28();
  v12 = v8;
  sub_2143018DC();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SharedETATrip.init(with:chunkIndexKey:chunkMessageIDKey:chunkGroupIDKey:chunkDataKey:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(v11 + 32) = v12;
  sub_214042B80(v11, &v59);
  v14 = v59;
  v13 = v60;
  v15 = v62;
  v41 = v61;
  v16 = v63;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v80);
  v50 = v81;
  v51 = v80;
  v42 = v82;
  v87 = v83;
  v52 = v84;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = 10000;
  *(v20 + 16) = sub_214301930;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_214042CD0(v19, v78);
  v46 = v78[0];
  v58 = v78[2];
  v55 = v78[1];
  v56 = v78[3];
  v47 = v79;
  v80 = a3;
  v81 = a4;
  LOBYTE(v78[0]) = v16;
  v22 = v13;
  v59 = 0xD00000000000001FLL;
  v60 = 0x800000021478FCA0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v23 = v14(&v80, v78, &v59);
  if (v43)
  {
    sub_213FB54FC(a7, a8);

    v24 = v52;
LABEL_6:
    v26 = v51;
    v29 = v47;

    v30 = v41;
    v25 = v50;
LABEL_7:
    v59 = a1;
    v60 = a2;
    v61 = v14;
    v62 = v22;
    v63 = v30;
    v64 = v15;
    v65 = v16;
    *v66 = v86[0];
    *&v66[3] = *(v86 + 3);
    v67 = v26;
    v68 = v25;
    v69 = v42;
    v70 = v87;
    v71 = v24;
    *&v72[3] = *&v85[3];
    *v72 = *v85;
    v73 = v46;
    v74 = v55;
    v75 = v58;
    v76 = v56;
    v77 = v29;
    return sub_214301940(&v59);
  }

  v37 = a3;
  v38 = a4;
  v44 = v13;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    v28[1] = 0x800000021478FCA0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a7, a8);

    v24 = v52;
    goto LABEL_6;
  }

  v80 = a5;
  v81 = a6;
  v24 = v52;
  LOBYTE(v78[0]) = v52;
  v59 = 0xD00000000000001DLL;
  v60 = 0x800000021478FCC0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  v25 = v50;

  v26 = v51;
  v27 = v51(&v80, v78, &v59);
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001DLL;
    v36[1] = 0x800000021478FCC0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a7, a8);

    v15 = v38;
    v29 = v47;

    v30 = v37;
    goto LABEL_7;
  }

  v87 = "SharedETATrip.chunkGroupIDKey";
  v59 = v46;
  v60 = v55;
  v61 = v58;
  v62 = v56;
  LOBYTE(v63) = v47;

  sub_213FDCA18(v58, v56);
  sub_214032024(a7, a8, 2, 0xD00000000000001ALL, 0x800000021478FCE0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a7, a8);

  v32 = v59;
  v33 = v60;
  v34 = v61;
  v49 = v62;
  v35 = v63;

  result = sub_213FDC6BC(v58, v56);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  *(a9 + 24) = v44;
  *(a9 + 32) = v37;
  *(a9 + 40) = v38;
  *(a9 + 48) = v16;
  *(a9 + 56) = v51;
  *(a9 + 64) = v50;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v52;
  *(a9 + 96) = v32;
  *(a9 + 104) = v33;
  *(a9 + 112) = v34;
  *(a9 + 120) = v49;
  *(a9 + 128) = v35;
  return result;
}

unint64_t sub_2141BF0C0()
{
  v1 = *v0;
  v2 = 0x6D754E6B6E756863;
  v3 = 0xD000000000000011;
  v4 = 0x6F72476B6E756863;
  if (v1 != 3)
  {
    v4 = 0x7461446B6E756863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E496B6E756863;
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

uint64_t sub_2141BF18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214371F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141BF1B4(uint64_t a1)
{
  v2 = sub_214301994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141BF1F0(uint64_t a1)
{
  v2 = sub_214301994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharedETATrip.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D80, &qword_2146F5430);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214301994();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  LOBYTE(v84) = 0;
  v74 = sub_2146DA1B8();
  LOBYTE(v84) = 1;
  v73 = sub_2146DA1B8();
  LOBYTE(v84) = 2;
  v13 = sub_2146DA168();
  v15 = v14;
  v72 = v13;
  LOBYTE(v84) = 3;
  *(&v64 + 1) = sub_2146DA168();
  v71 = v16;
  v105 = 4;
  sub_21406116C();
  sub_2146DA1C8();
  v57 = v106;
  v58 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  v69 = v15;
  v18 = v17;
  v65 = xmmword_2146E9BF0;
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v84);
  v68 = v84;
  v70 = v85;
  v54 = v86;
  v66 = v87;
  v67 = v88;
  v20 = swift_allocObject();
  *(v20 + 16) = v65;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v75);
  *&v64 = *(&v75 + 1);
  v61 = *(&v76 + 1);
  v55 = v76;
  v62 = v75;
  v63 = v77;
  v22 = swift_allocObject();
  *(v22 + 16) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = 10000;
  *(v23 + 16) = sub_21438F460;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_214042CD0(v22, &v101);
  v65 = v101;
  v59 = v102;
  v60 = v103;
  LODWORD(v56) = v104;
  *&v75 = v72;
  *(&v75 + 1) = v69;
  LOBYTE(v101) = v67;
  v84 = 0xD00000000000001FLL;
  v85 = 0x800000021478FCA0;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;

  v25 = v68(&v75, &v101, &v84);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    v28[1] = 0x800000021478FCA0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v57, v58);
    (*(v6 + 8))(v9, v5);
    v29 = v66;

    v30 = v70;

    v72 = v54;
    v32 = v59;
    v31 = v60;
    v33 = v61;
LABEL_8:
    v34 = v55;
    v35 = v56;
    goto LABEL_9;
  }

  v54 = 0;

  *&v75 = *(&v64 + 1);
  *(&v75 + 1) = v71;
  LOBYTE(v101) = v63;
  v84 = 0xD00000000000001DLL;
  v85 = 0x800000021478FCC0;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;
  v66 = 0x800000021478A360;

  v26 = v54;
  v27 = v62(&v75, &v101, &v84);
  if (v26)
  {

LABEL_15:

    sub_213FB54FC(v57, v58);
    (*(v6 + 8))(v9, v5);
    v33 = v61;

    v29 = v69;
    v30 = v70;
    v32 = v59;
    v31 = v60;
    goto LABEL_8;
  }

  v54 = 0;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD00000000000001DLL;
    v40[1] = 0x800000021478FCC0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_15;
  }

  v101 = v65;
  v36 = v59;
  v37 = v60;
  v102 = v59;
  v103 = v60;
  v104 = v56;
  v66 = *(&v65 + 1);

  sub_213FDCA18(v36, v37);
  *&v65 = "SharedETATrip.chunkGroupIDKey";
  v38 = v57;
  v39 = v54;
  sub_214032024(v57, v58, 2, 0xD00000000000001ALL, 0x800000021478FCE0, 0xD00000000000001CLL, 0x800000021478A360);
  if (!v39)
  {

    sub_213FB54FC(v38, v58);
    (*(v6 + 8))(v9, v5);
    v41 = v101;
    v61 = v101;
    v42 = v102;
    v57 = *(&v101 + 1);
    v58 = v102;
    v56 = v103;
    LODWORD(v65) = v104;

    sub_213FDC6BC(v59, v60);
    v43 = v74;
    *&v75 = v74;
    *(&v75 + 1) = v73;
    *&v76 = v68;
    *(&v76 + 1) = v70;
    v44 = v72;
    *&v77 = v72;
    *(&v77 + 1) = v69;
    v45 = v67;
    LOBYTE(v78) = v67;
    *(&v78 + 1) = v109[0];
    DWORD1(v78) = *(v109 + 3);
    *(&v78 + 1) = v62;
    v79 = v64;
    *&v80 = v71;
    BYTE8(v80) = v63;
    *(&v80 + 9) = *v108;
    HIDWORD(v80) = *&v108[3];
    *&v81 = v41;
    v46 = v57;
    *(&v81 + 1) = v57;
    *&v82 = v42;
    v47 = v56;
    *(&v82 + 1) = v56;
    v83 = v65;
    v48 = v81;
    v49 = v82;
    *(a2 + 128) = v65;
    *(a2 + 96) = v48;
    *(a2 + 112) = v49;
    v50 = v75;
    v51 = v76;
    v52 = v80;
    *(a2 + 64) = v79;
    *(a2 + 80) = v52;
    v53 = v78;
    *(a2 + 32) = v77;
    *(a2 + 48) = v53;
    *a2 = v50;
    *(a2 + 16) = v51;
    sub_2143019E8(&v75, &v84);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v84 = v43;
    v85 = v73;
    v86 = v68;
    v87 = v70;
    v88 = v44;
    v89 = v69;
    v90 = v45;
    *v91 = v109[0];
    *&v91[3] = *(v109 + 3);
    v92 = v62;
    v93 = v64;
    v94 = v71;
    v95 = v63;
    *v96 = *v108;
    *&v96[3] = *&v108[3];
    *&v97 = v61;
    *(&v97 + 1) = v46;
    v98 = v58;
    v99 = v47;
    v100 = v65;
    return sub_214301940(&v84);
  }

  sub_213FB54FC(v38, v58);
  (*(v6 + 8))(v9, v5);
  v65 = v101;
  v32 = v102;
  v31 = v103;
  v35 = v104;

  sub_213FDC6BC(v59, v60);
  v29 = v69;
  v30 = v70;
  v34 = *(&v64 + 1);
  v33 = v71;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v110);
  v84 = v74;
  v85 = v73;
  v86 = v68;
  v87 = v30;
  v88 = v72;
  v89 = v29;
  v90 = v67;
  *v91 = v109[0];
  *&v91[3] = *(v109 + 3);
  v92 = v62;
  *&v93 = v64;
  *(&v93 + 1) = v34;
  v94 = v33;
  v95 = v63;
  *v96 = *v108;
  *&v96[3] = *&v108[3];
  v97 = v65;
  v98 = v32;
  v99 = v31;
  v100 = v35;
  return sub_214301940(&v84);
}

uint64_t SharedETATrip.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D90, &qword_2146F5438);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[5];
  v24 = v1[4];
  v25 = v8;
  v11 = v1[9];
  v22 = v1[10];
  v23 = v10;
  v12 = v1[14];
  v13 = v1[15];
  v20[1] = v11;
  v21 = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301994();
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_2146DA378();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v23;
  v17 = v21;
  v18 = v22;
  v26 = v13;
  LOBYTE(v27) = 1;
  sub_2146DA378();
  if (!v16)
  {
    goto LABEL_8;
  }

  LOBYTE(v27) = 2;

  sub_2146DA328();

  if (!v18)
  {
    goto LABEL_8;
  }

  LOBYTE(v27) = 3;

  sub_2146DA328();

  if (v26 >> 60 != 15)
  {
    v27 = v17;
    v28 = v26;
    v29 = 4;
    sub_21402D9F8(v17, v26);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v27, v28);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141BFF5C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void, void, void), uint64_t a16, uint64_t (*a17)(void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23, uint64_t (*a24)(void, void, void), uint64_t a25)
{
  sub_21448E838(&v126);
  v28 = v126;
  v29 = v127;
  v73 = v128;
  v30 = v129;
  v31 = v130;
  sub_21448E974(&v207);
  v122 = v207;
  v123 = v208;
  v125 = v209;
  v124 = v210;
  v94 = v211;
  sub_21448E9B0(v205);
  v116 = v205[0];
  v119 = v205[1];
  v120 = v205[3];
  v121 = v205[2];
  v117 = v206;
  sub_21448E9EC(v203);
  v110 = v203[0];
  v115 = v203[2];
  v113 = v203[1];
  v114 = v203[3];
  v111 = v204;
  sub_21448EA28(v201);
  v106 = v201[0];
  v108 = v201[1];
  v109 = v201[2];
  v74 = v201[3];
  v107 = v202;
  sub_21448EA64(v199);
  v99 = v199[0];
  v104 = v199[2];
  v102 = v199[1];
  v103 = v199[3];
  v96 = v200;
  sub_21448EAA0(v197);
  v97 = v197[0];
  v93 = v197[2];
  v100 = v197[1];
  v101 = v197[3];
  v98 = v198;
  sub_21448EBFC(v195);
  v92 = v195[1];
  v89 = v195[2];
  v90 = v195[0];
  v88 = v195[3];
  v91 = v196;
  sub_21448ED58(v193);
  v83 = v193[0];
  v87 = v193[2];
  v85 = v193[1];
  v86 = v193[3];
  v84 = v194;
  sub_21448EEAC(v191);
  v78 = v191[0];
  v80 = v191[2];
  v81 = v191[3];
  v82 = v191[1];
  v79 = v192;
  v77 = v31;
  v212 = a22 & 1;
  v207 = a1;
  v208 = a2;
  LOBYTE(v205[0]) = v31;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FD00;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  v95 = v29;
  v32 = v75;
  v76 = v28;
  v33 = v28(&v207, v205, &v126);
  if (v32)
  {

LABEL_6:

    v38 = v99;
    v34 = v95;
    v35 = v94;

    v39 = v30;
    v40 = v73;
    v41 = v96;
LABEL_7:
    v43 = v88;
    v42 = v89;
    v44 = v93;
    v45 = v74;
LABEL_8:
    v126 = v76;
    v127 = v34;
    v128 = v40;
    v129 = v39;
    v130 = v77;
    v133 = v122;
    v134 = v123;
    v135 = v125;
    v136 = v124;
    v137 = v35;
    v139 = v116;
    v140 = v119;
    v141 = v121;
    v142 = v120;
    v143 = v117;
    v145 = v110;
    v146 = v113;
    v147 = v115;
    v148 = v114;
    v149 = v111;
    v151 = v106;
    v152 = v108;
    v153 = v109;
    v154 = v45;
    *v131 = v223[0];
    *&v131[3] = *(v223 + 3);
    *v138 = *v222;
    *&v138[3] = *&v222[3];
    *&v144[3] = *&v221[3];
    *v144 = *v221;
    *v150 = *v220;
    *&v150[3] = *&v220[3];
    v132 = a10;
    v155 = v107;
    *&v156[3] = *&v219[3];
    *v156 = *v219;
    v157 = v38;
    v158 = v102;
    v159 = v104;
    v160 = v103;
    v161 = v41;
    *&v162[3] = *&v218[3];
    *v162 = *v218;
    v163 = v97;
    v164 = v100;
    v165 = v44;
    v166 = v101;
    v167 = v98;
    *v168 = *v217;
    *&v168[3] = *&v217[3];
    v169 = v90;
    v170 = v92;
    v171 = v42;
    v172 = v43;
    v173 = v91;
    *v174 = *v216;
    *&v174[3] = *&v216[3];
    v175 = v83;
    v176 = v85;
    v177 = v87;
    v178 = v86;
    v179 = v84;
    *v180 = *v215;
    *&v180[3] = *&v215[3];
    v181 = a21;
    v182 = a22 & 1;
    v183 = a23;
    v184 = v213;
    v185 = v214;
    v186 = v78;
    v187 = v82;
    v188 = v80;
    v189 = v81;
    v190 = v79;
    return sub_214301A44(&v126);
  }

  v68 = a2;
  v67 = a1;
  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000025;
    v37[1] = 0x800000021478FD00;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v34 = v29;

  v207 = a3;
  v208 = a4;
  v35 = v94;
  LOBYTE(v205[0]) = v94;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FD30;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v125, v124);
  v36 = v122(&v207, v205, &v126);
  v41 = v96;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000028;
    v48[1] = 0x800000021478FD30;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v125, v124);
    v39 = a2;
LABEL_12:
    v40 = a1;
    goto LABEL_7;
  }

  sub_213FDC6D0(v125, v124);

  sub_213FDC6D0(v125, v124);
  v207 = a5;
  v208 = a6;
  LOBYTE(v205[0]) = v117;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FD60;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v121, v120);
  v47 = v116(&v207, v205, &v126);
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000028;
    v50[1] = 0x800000021478FD60;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v121, v120);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    goto LABEL_12;
  }

  sub_213FDC6D0(v121, v120);

  sub_213FDC6D0(v121, v120);
  v207 = a7;
  v208 = a8;
  LOBYTE(v205[0]) = v111;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FD90;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v115, v114);
  v49 = v110(&v207, v205, &v126);
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000025;
    v52[1] = 0x800000021478FD90;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v115, v114);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    goto LABEL_12;
  }

  sub_213FDC6D0(v115, v114);

  sub_213FDC6D0(v115, v114);
  v207 = a11;
  v208 = a12;
  LOBYTE(v205[0]) = v107;
  v126 = 0xD000000000000026;
  v127 = 0x800000021478FDC0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  v45 = v74;
  sub_213FDC9D0(v109, v74);
  v51 = v106(&v207, v205, &v126);
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000026;
    v54[1] = 0x800000021478FDC0;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v109, v74);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
LABEL_22:
    v40 = a1;
    v43 = v88;
    v42 = v89;
    v44 = v93;
    goto LABEL_8;
  }

  sub_213FDC6D0(v109, v74);

  sub_213FDC6D0(v109, v74);
  v207 = a13;
  v208 = a14;
  LOBYTE(v205[0]) = v96;
  v126 = 0xD000000000000020;
  v127 = 0x800000021478FDF0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v104, v103);
  v53 = v99(&v207, v205, &v126);
  if ((v53 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000020;
    v56[1] = 0x800000021478FDF0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v99;

    sub_213FDC6D0(v104, v103);
    v39 = a2;
    v125 = a3;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v45 = a12;
    goto LABEL_22;
  }

  sub_213FDC6D0(v104, v103);

  sub_213FDC6D0(v104, v103);
  v207 = a15;
  v208 = a16;
  LOBYTE(v205[0]) = v98;
  v126 = 0xD000000000000028;
  v127 = 0x800000021478FE20;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v93, v101);
  if ((v97(&v207, v205, &v126) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000028;
    v57[1] = 0x800000021478FE20;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    v44 = v93;
    sub_213FDC6D0(v93, v101);
    v39 = v68;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v41 = v96;
    v38 = v99;
    v34 = v95;
    v35 = v94;
    v40 = a1;
    v43 = v88;
    v42 = v89;
    goto LABEL_8;
  }

  sub_213FDC6D0(v93, v101);

  sub_213FDC6D0(v93, v101);
  v207 = a17;
  v208 = a18;
  LOBYTE(v205[0]) = v91;
  v126 = 0xD000000000000026;
  v127 = 0x800000021478FE50;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v89, v88);
  if ((v90(&v207, v205, &v126) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000026;
    v58[1] = 0x800000021478FE50;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    v43 = v88;
    v42 = v89;
    sub_213FDC6D0(v89, v88);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
LABEL_30:
    v41 = v96;
    v38 = v99;
    v34 = v95;
    v35 = v94;
    v40 = v67;
    goto LABEL_8;
  }

  sub_213FDC6D0(v89, v88);

  sub_213FDC6D0(v89, v88);
  v207 = a19;
  v208 = a20;
  LOBYTE(v205[0]) = v84;
  v126 = 0xD00000000000002CLL;
  v127 = 0x800000021478FE80;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v87, v86);
  v55 = v83(&v207, v205, &v126);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD00000000000002CLL;
    v60[1] = 0x800000021478FE80;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v87, v86);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
    v42 = a17;
    v43 = a18;
    goto LABEL_30;
  }

  sub_213FDC6D0(v87, v86);

  sub_213FDC6D0(v87, v86);
  v207 = a24;
  v208 = a25;
  LOBYTE(v205[0]) = v79;
  v126 = 0xD000000000000025;
  v127 = 0x800000021478FEB0;
  v128 = 0xD00000000000001CLL;
  v129 = 0x800000021478A360;

  sub_213FDC9D0(v80, v81);
  v59 = v78(&v207, v205, &v126);
  if ((v59 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000025;
    v66[1] = 0x800000021478FEB0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v80, v81);
    v39 = a2;
    v125 = a3;
    v45 = a12;
    v124 = a4;
    v120 = a6;
    v121 = a5;
    v114 = a8;
    v115 = a7;
    v109 = a11;
    v103 = a14;
    v104 = a13;
    v44 = a15;
    v101 = a16;
    v42 = a17;
    v43 = a18;
    v86 = a20;
    v87 = a19;
    goto LABEL_30;
  }

  sub_213FDC6D0(v80, v81);

  result = sub_213FDC6D0(v80, v81);
  *a9 = v76;
  *(a9 + 8) = v29;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v77;
  *(a9 + 48) = v122;
  *(a9 + 56) = v123;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = v94;
  *(a9 + 88) = v116;
  *(a9 + 96) = v119;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = v117;
  *(a9 + 128) = v110;
  *(a9 + 136) = v113;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  *(a9 + 160) = v111;
  *(a9 + 168) = v106;
  *(a9 + 176) = v108;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 33) = v223[0];
  *(a9 + 36) = *(v223 + 3);
  *(a9 + 81) = *v222;
  *(a9 + 84) = *&v222[3];
  *(a9 + 124) = *&v221[3];
  *(a9 + 121) = *v221;
  *(a9 + 161) = *v220;
  *(a9 + 164) = *&v220[3];
  *(a9 + 40) = a10;
  *(a9 + 200) = v107;
  *(a9 + 204) = *&v219[3];
  *(a9 + 201) = *v219;
  *(a9 + 208) = v99;
  *(a9 + 216) = v102;
  *(a9 + 224) = a13;
  *(a9 + 232) = a14;
  *(a9 + 240) = v96;
  v61 = *v218;
  *(a9 + 244) = *&v218[3];
  *(a9 + 241) = v61;
  *(a9 + 248) = v97;
  *(a9 + 256) = v100;
  *(a9 + 264) = a15;
  *(a9 + 272) = a16;
  *(a9 + 280) = v98;
  v62 = *v217;
  *(a9 + 284) = *&v217[3];
  *(a9 + 281) = v62;
  *(a9 + 288) = v90;
  *(a9 + 296) = v92;
  *(a9 + 304) = a17;
  *(a9 + 312) = a18;
  *(a9 + 320) = v91;
  v63 = *v216;
  *(a9 + 324) = *&v216[3];
  *(a9 + 321) = v63;
  *(a9 + 328) = v83;
  *(a9 + 336) = v85;
  *(a9 + 344) = a19;
  *(a9 + 352) = a20;
  *(a9 + 360) = v84;
  v64 = *v215;
  *(a9 + 364) = *&v215[3];
  *(a9 + 361) = v64;
  *(a9 + 368) = a21;
  *(a9 + 376) = a22 & 1;
  *(a9 + 377) = a23;
  v65 = v213;
  *(a9 + 382) = v214;
  *(a9 + 378) = v65;
  *(a9 + 384) = v78;
  *(a9 + 392) = v82;
  *(a9 + 400) = a24;
  *(a9 + 408) = a25;
  *(a9 + 416) = v79;
  return result;
}

unint64_t sub_2141C1688(char a1)
{
  result = 0x546C656E6E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 3:
    case 7:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 8:
    case 11:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2141C17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C1810(uint64_t a1)
{
  v2 = sub_214301A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C184C(uint64_t a1)
{
  v2 = sub_214301A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C1888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908D98, &qword_2146F5440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v85 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v159 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214301A98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v159);
  }

  v158 = v6;
  v157 = a2;
  LOBYTE(v161) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v156 = v12;
  LOBYTE(v161) = 1;
  sub_2146DA188();
  v155 = v14;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v160[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v17 = v161;
  v18 = v162;
  LOBYTE(v160[0]) = 3;
  sub_2146DA1C8();
  v153 = v17;
  v19 = v161;
  v154 = v162;
  LOBYTE(v160[0]) = 4;
  sub_2146DA1C8();
  v151 = v19;
  v20 = v161;
  v152 = v162;
  LOBYTE(v160[0]) = 5;
  sub_2146DA1C8();
  v149 = v20;
  v21 = v161;
  v150 = v162;
  LOBYTE(v160[0]) = 6;
  sub_2146DA1C8();
  v147 = v161;
  v148 = v18;
  v23 = v162;
  LOBYTE(v160[0]) = 7;
  sub_2146DA1C8();
  v145 = v21;
  v146 = v23;
  v144 = v161;
  v24 = v162;
  LOBYTE(v160[0]) = 8;
  sub_2146DA1C8();
  v143 = v24;
  v25 = v161;
  v142 = v162;
  LOBYTE(v160[0]) = 9;
  v26 = v5;
  sub_2146DA1C8();
  v140 = v161;
  v141 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v160[0]) = 10;
  sub_2142E35EC();
  sub_2146DA1C8();
  v138 = v161;
  v139 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v160[0]) = 11;
  sub_2142E1378();
  sub_2146DA1C8();
  v137 = v161;
  v246 = 12;
  sub_2146DA1C8();
  v85 = v247;
  v87 = v248;
  sub_21448E838(&v161);
  v136 = v161;
  v27 = v162;
  v86 = v163;
  v28 = v164;
  v29 = v165;
  sub_21448E974(v160);
  v130 = v160[0];
  v131 = v160[1];
  v132 = v160[3];
  v133 = v160[2];
  v129 = LOBYTE(v160[4]);
  sub_21448E9B0(&v240);
  v124 = v240;
  v128 = v242;
  v126 = v241;
  v127 = v243;
  v125 = v244;
  sub_21448E9EC(v238);
  v119 = v238[0];
  v123 = v238[2];
  v121 = v238[1];
  v122 = v238[3];
  v120 = v239;
  sub_21448EA28(v236);
  v114 = v236[0];
  v118 = v236[2];
  v116 = v236[1];
  v117 = v236[3];
  v115 = v237;
  sub_21448EA64(v234);
  v109 = v234[0];
  v113 = v234[2];
  v111 = v234[1];
  v112 = v234[3];
  v110 = v235;
  sub_21448EAA0(v232);
  v104 = v232[0];
  v108 = v232[2];
  v106 = v232[1];
  v107 = v232[3];
  v105 = v233;
  sub_21448EBFC(v230);
  v99 = v230[0];
  v103 = v230[2];
  v101 = v230[1];
  v102 = v230[3];
  v100 = v231;
  sub_21448ED58(v228);
  v94 = v228[0];
  v97 = v228[2];
  v98 = v228[1];
  v96 = v228[3];
  v95 = v229;
  sub_21448EEAC(v226);
  v93 = v226[1];
  v89 = v226[2];
  v90 = v226[3];
  v91 = v226[0];
  v92 = v227;
  v245 = v139;
  v160[0] = v156;
  v160[1] = v155;
  v88 = v29;
  LOBYTE(v240) = v29;
  v161 = 0xD000000000000025;
  v162 = 0x800000021478FD00;
  v163 = 0xD00000000000001CLL;
  v134 = 0x800000021478A360;
  v164 = 0x800000021478A360;
  v30 = v28;

  v135 = v27;
  v31 = v136(v160, &v240, &v161);
  if (v31)
  {
    v32 = v134;

    v160[0] = v153;
    v160[1] = v148;
    LOBYTE(v240) = v129;
    v161 = 0xD000000000000028;
    v162 = 0x800000021478FD30;
    v163 = 0xD00000000000001CLL;
    v164 = v32;

    sub_213FDC9D0(v133, v132);
    if (v130(v160, &v240, &v161))
    {
      v34 = v132;
      v33 = v133;
      sub_213FDC6D0(v133, v132);
      v35 = v134;

      sub_213FDC6D0(v33, v34);
      v160[0] = v151;
      v160[1] = v154;
      LOBYTE(v240) = v125;
      v161 = 0xD000000000000028;
      v162 = 0x800000021478FD60;
      v163 = 0xD00000000000001CLL;
      v164 = v35;

      sub_213FDC9D0(v128, v127);
      if (v124(v160, &v240, &v161))
      {
        v37 = v127;
        v36 = v128;
        sub_213FDC6D0(v128, v127);
        v38 = v134;

        sub_213FDC6D0(v36, v37);
        v160[0] = v149;
        v160[1] = v152;
        LOBYTE(v240) = v120;
        v161 = 0xD000000000000025;
        v162 = 0x800000021478FD90;
        v163 = 0xD00000000000001CLL;
        v164 = v38;

        sub_213FDC9D0(v123, v122);
        if (v119(v160, &v240, &v161))
        {
          v40 = v122;
          v39 = v123;
          sub_213FDC6D0(v123, v122);
          v41 = v134;

          sub_213FDC6D0(v39, v40);
          v160[0] = v145;
          v160[1] = v150;
          LOBYTE(v240) = v115;
          v161 = 0xD000000000000026;
          v162 = 0x800000021478FDC0;
          v163 = 0xD00000000000001CLL;
          v164 = v41;

          sub_213FDC9D0(v118, v117);
          if (v114(v160, &v240, &v161))
          {
            v43 = v117;
            v42 = v118;
            sub_213FDC6D0(v118, v117);
            v44 = v134;

            sub_213FDC6D0(v42, v43);
            v160[0] = v147;
            v160[1] = v146;
            LOBYTE(v240) = v110;
            v161 = 0xD000000000000020;
            v162 = 0x800000021478FDF0;
            v163 = 0xD00000000000001CLL;
            v164 = v44;

            sub_213FDC9D0(v113, v112);
            if (v109(v160, &v240, &v161))
            {
              v46 = v112;
              v45 = v113;
              sub_213FDC6D0(v113, v112);
              v47 = v134;

              sub_213FDC6D0(v45, v46);
              v160[0] = v144;
              v160[1] = v143;
              LOBYTE(v240) = v105;
              v161 = 0xD000000000000028;
              v162 = 0x800000021478FE20;
              v163 = 0xD00000000000001CLL;
              v164 = v47;

              sub_213FDC9D0(v108, v107);
              if (v104(v160, &v240, &v161))
              {
                v49 = v107;
                v48 = v108;
                sub_213FDC6D0(v108, v107);
                v50 = v134;

                sub_213FDC6D0(v48, v49);
                v160[0] = v25;
                v160[1] = v142;
                LOBYTE(v240) = v100;
                v161 = 0xD000000000000026;
                v162 = 0x800000021478FE50;
                v163 = 0xD00000000000001CLL;
                v164 = v50;

                sub_213FDC9D0(v103, v102);
                if (v99(v160, &v240, &v161))
                {
                  v67 = v102;
                  v66 = v103;
                  sub_213FDC6D0(v103, v102);
                  v68 = v134;

                  sub_213FDC6D0(v66, v67);
                  v160[0] = v140;
                  v160[1] = v141;
                  LOBYTE(v240) = v95;
                  v161 = 0xD00000000000002CLL;
                  v162 = 0x800000021478FE80;
                  v163 = 0xD00000000000001CLL;
                  v164 = v68;

                  sub_213FDC9D0(v97, v96);
                  if (v94(v160, &v240, &v161))
                  {
                    v72 = v96;
                    v71 = v97;
                    sub_213FDC6D0(v97, v96);
                    v73 = v134;

                    sub_213FDC6D0(v71, v72);
                    v240 = v85;
                    v241 = v87;
                    LOBYTE(v160[0]) = v92;
                    v161 = 0xD000000000000025;
                    v162 = 0x800000021478FEB0;
                    v163 = 0xD00000000000001CLL;
                    v164 = v73;

                    sub_213FDC9D0(v89, v90);
                    if (v91(&v240, v160, &v161))
                    {
                      v76 = v89;
                      v77 = v90;
                      sub_213FDC6D0(v89, v90);

                      (*(v158 + 8))(v9, v26);

                      sub_213FDC6D0(v76, v77);
                      HIDWORD(v160[20]) = *&v256[3];
                      *(&v160[20] + 1) = *v256;
                      HIDWORD(v160[25]) = *&v255[3];
                      *(&v160[25] + 1) = *v255;
                      *(&v160[30] + 1) = *v254;
                      *(&v160[35] + 1) = *v253;
                      *(&v160[40] + 1) = *v252;
                      *(&v160[45] + 1) = *v251;
                      *(&v160[47] + 2) = v249;
                      *(&v160[4] + 1) = v259[0];
                      HIDWORD(v160[4]) = *(v259 + 3);
                      *(&v160[10] + 1) = *v258;
                      HIDWORD(v160[10]) = *&v258[3];
                      *(&v160[15] + 1) = *v257;
                      HIDWORD(v160[15]) = *&v257[3];
                      HIDWORD(v160[30]) = *&v254[3];
                      HIDWORD(v160[35]) = *&v253[3];
                      HIDWORD(v160[40]) = *&v252[3];
                      HIDWORD(v160[45]) = *&v251[3];
                      HIWORD(v160[47]) = v250;
                      v160[0] = v136;
                      v160[1] = v135;
                      v160[2] = v156;
                      v160[3] = v155;
                      LOBYTE(v160[4]) = v88;
                      v160[5] = v16;
                      v160[6] = v130;
                      v160[7] = v131;
                      v160[8] = v153;
                      v78 = v148;
                      v160[9] = v148;
                      v79 = v129;
                      LOBYTE(v160[10]) = v129;
                      v160[11] = v124;
                      v160[12] = v126;
                      v160[13] = v151;
                      v80 = v154;
                      v160[14] = v154;
                      LOBYTE(v160[15]) = v125;
                      v160[16] = v119;
                      v160[17] = v121;
                      v160[18] = v149;
                      v160[19] = v152;
                      LOBYTE(v160[20]) = v120;
                      v160[21] = v114;
                      v160[22] = v116;
                      v160[23] = v145;
                      v160[24] = v150;
                      v81 = v115;
                      LOBYTE(v160[25]) = v115;
                      v160[26] = v109;
                      v160[27] = v111;
                      v160[28] = v147;
                      v160[29] = v146;
                      LOBYTE(v160[30]) = v110;
                      v160[31] = v104;
                      v160[32] = v106;
                      v160[33] = v144;
                      v160[34] = v143;
                      LOBYTE(v160[35]) = v105;
                      v160[36] = v99;
                      v160[37] = v101;
                      v160[38] = v25;
                      v160[39] = v142;
                      LOBYTE(v160[40]) = v100;
                      v160[41] = v94;
                      v160[42] = v98;
                      v82 = v140;
                      v160[43] = v140;
                      v160[44] = v141;
                      LOBYTE(v160[45]) = v95;
                      v160[46] = v138;
                      LOBYTE(v160[47]) = v139;
                      BYTE1(v160[47]) = v137;
                      v160[48] = v91;
                      v160[49] = v93;
                      v160[50] = v85;
                      v160[51] = v87;
                      LOBYTE(v160[52]) = v92;
                      memcpy(v157, v160, 0x1A1uLL);
                      sub_214301AEC(v160, &v161);
                      __swift_destroy_boxed_opaque_existential_1(v159);
                      v161 = v136;
                      v162 = v135;
                      v163 = v156;
                      v164 = v155;
                      v165 = v88;
                      v168 = v130;
                      v169 = v131;
                      v170 = v153;
                      v171 = v78;
                      v172 = v79;
                      v174 = v124;
                      v175 = v126;
                      v176 = v151;
                      v177 = v80;
                      v178 = v125;
                      v180 = v119;
                      v181 = v121;
                      v182 = v149;
                      v183 = v152;
                      v184 = v120;
                      v186 = v114;
                      v187 = v116;
                      v188 = v145;
                      v189 = v150;
                      v190 = v81;
                      *v166 = v259[0];
                      *&v166[3] = *(v259 + 3);
                      *v173 = *v258;
                      *&v173[3] = *&v258[3];
                      *v179 = *v257;
                      *&v179[3] = *&v257[3];
                      *&v185[3] = *&v256[3];
                      *v185 = *v256;
                      *&v191[3] = *&v255[3];
                      *v191 = *v255;
                      v167 = v16;
                      v192 = v109;
                      v193 = v111;
                      v194 = v147;
                      v195 = v146;
                      v196 = v110;
                      *v197 = *v254;
                      *&v197[3] = *&v254[3];
                      v198 = v104;
                      v199 = v106;
                      v200 = v144;
                      v201 = v143;
                      v202 = v105;
                      *v203 = *v253;
                      *&v203[3] = *&v253[3];
                      v204 = v99;
                      v205 = v101;
                      v206 = v25;
                      v207 = v142;
                      v208 = v100;
                      *v209 = *v252;
                      *&v209[3] = *&v252[3];
                      v210 = v94;
                      v211 = v98;
                      v212 = v82;
                      v213 = v141;
                      v214 = v95;
                      *v215 = *v251;
                      *&v215[3] = *&v251[3];
                      v216 = v138;
                      v217 = v139;
                      v218 = v137;
                      v219 = v249;
                      v220 = v250;
                      v221 = v91;
                      v222 = v93;
                      v223 = v85;
                      v53 = v87;
                      goto LABEL_14;
                    }

                    sub_214031C4C();
                    swift_allocError();
                    *v83 = 0xD000000000000025;
                    v83[1] = 0x800000021478FEB0;
                    v84 = v134;
                    v83[2] = 0xD00000000000001CLL;
                    v83[3] = v84;
                    swift_willThrow();

                    (*(v158 + 8))(v9, v26);

                    sub_213FDC6D0(v89, v90);
                    v30 = v155;
                    v132 = v148;
                    v133 = v153;
                    v127 = v154;
                    v128 = v151;
                    v122 = v152;
                    v123 = v149;
                    v117 = v150;
                    v118 = v145;
                    v112 = v146;
                    v113 = v147;
                    v107 = v143;
                    v108 = v144;
                    v102 = v142;
                    v103 = v25;
                    v96 = v141;
                    v97 = v140;
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v74 = 0xD00000000000002CLL;
                    v74[1] = 0x800000021478FE80;
                    v75 = v134;
                    v74[2] = 0xD00000000000001CLL;
                    v74[3] = v75;
                    swift_willThrow();

                    (*(v158 + 8))(v9, v26);

                    sub_213FDC6D0(v97, v96);
                    v30 = v155;
                    v132 = v148;
                    v133 = v153;
                    v127 = v154;
                    v128 = v151;
                    v122 = v152;
                    v123 = v149;
                    v117 = v150;
                    v118 = v145;
                    v112 = v146;
                    v113 = v147;
                    v107 = v143;
                    v108 = v144;
                    v102 = v142;
                    v103 = v25;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  *v69 = 0xD000000000000026;
                  v69[1] = 0x800000021478FE50;
                  v70 = v134;
                  v69[2] = 0xD00000000000001CLL;
                  v69[3] = v70;
                  swift_willThrow();

                  (*(v158 + 8))(v9, v26);

                  sub_213FDC6D0(v103, v102);
                  v30 = v155;
                  v132 = v148;
                  v133 = v153;
                  v127 = v154;
                  v128 = v151;
                  v122 = v152;
                  v123 = v149;
                  v117 = v150;
                  v118 = v145;
                  v112 = v146;
                  v113 = v147;
                  v107 = v143;
                  v108 = v144;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v64 = 0xD000000000000028;
                v64[1] = 0x800000021478FE20;
                v65 = v134;
                v64[2] = 0xD00000000000001CLL;
                v64[3] = v65;
                swift_willThrow();

                (*(v158 + 8))(v9, v26);

                sub_213FDC6D0(v108, v107);
                v30 = v155;
                v132 = v148;
                v133 = v153;
                v127 = v154;
                v128 = v151;
                v122 = v152;
                v123 = v149;
                v117 = v150;
                v118 = v145;
                v112 = v146;
                v113 = v147;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v62 = 0xD000000000000020;
              v62[1] = 0x800000021478FDF0;
              v63 = v134;
              v62[2] = 0xD00000000000001CLL;
              v62[3] = v63;
              swift_willThrow();

              (*(v158 + 8))(v9, v26);

              sub_213FDC6D0(v113, v112);
              v30 = v155;
              v132 = v148;
              v133 = v153;
              v127 = v154;
              v128 = v151;
              v122 = v152;
              v123 = v149;
              v117 = v150;
              v118 = v145;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v60 = 0xD000000000000026;
            v60[1] = 0x800000021478FDC0;
            v61 = v134;
            v60[2] = 0xD00000000000001CLL;
            v60[3] = v61;
            swift_willThrow();

            (*(v158 + 8))(v9, v26);

            sub_213FDC6D0(v118, v117);
            v30 = v155;
            v132 = v148;
            v133 = v153;
            v127 = v154;
            v128 = v151;
            v122 = v152;
            v123 = v149;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v58 = 0xD000000000000025;
          v58[1] = 0x800000021478FD90;
          v59 = v134;
          v58[2] = 0xD00000000000001CLL;
          v58[3] = v59;
          swift_willThrow();

          (*(v158 + 8))(v9, v26);

          sub_213FDC6D0(v123, v122);
          v30 = v155;
          v132 = v148;
          v133 = v153;
          v127 = v154;
          v128 = v151;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v56 = 0xD000000000000028;
        v56[1] = 0x800000021478FD60;
        v57 = v134;
        v56[2] = 0xD00000000000001CLL;
        v56[3] = v57;
        swift_willThrow();

        (*(v158 + 8))(v9, v26);

        sub_213FDC6D0(v128, v127);
        v30 = v155;
        v132 = v148;
        v133 = v153;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v54 = 0xD000000000000028;
      v54[1] = 0x800000021478FD30;
      v55 = v134;
      v54[2] = 0xD00000000000001CLL;
      v54[3] = v55;
      swift_willThrow();

      (*(v158 + 8))(v9, v26);

      sub_213FDC6D0(v133, v132);
      v30 = v155;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000025;
    v51[1] = 0x800000021478FD00;
    v52 = v134;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = v52;
    swift_willThrow();

    (*(v158 + 8))(v9, v26);

    v156 = v86;
  }

  __swift_destroy_boxed_opaque_existential_1(v159);
  v161 = v136;
  v162 = v135;
  v163 = v156;
  v164 = v30;
  v165 = v88;
  v168 = v130;
  v169 = v131;
  v170 = v133;
  v171 = v132;
  v172 = v129;
  v174 = v124;
  v175 = v126;
  v176 = v128;
  v177 = v127;
  v178 = v125;
  v180 = v119;
  v181 = v121;
  v182 = v123;
  v183 = v122;
  v184 = v120;
  v186 = v114;
  v187 = v116;
  v188 = v118;
  v189 = v117;
  *v166 = v259[0];
  *&v166[3] = *(v259 + 3);
  *v173 = *v258;
  *&v173[3] = *&v258[3];
  *&v179[3] = *&v257[3];
  *v179 = *v257;
  *v185 = *v256;
  *&v185[3] = *&v256[3];
  v167 = v16;
  v190 = v115;
  *&v191[3] = *&v255[3];
  *v191 = *v255;
  v192 = v109;
  v193 = v111;
  v194 = v113;
  v195 = v112;
  v196 = v110;
  *&v197[3] = *&v254[3];
  *v197 = *v254;
  v198 = v104;
  v199 = v106;
  v200 = v108;
  v201 = v107;
  v202 = v105;
  *v203 = *v253;
  *&v203[3] = *&v253[3];
  v204 = v99;
  v205 = v101;
  v206 = v103;
  v207 = v102;
  v208 = v100;
  *v209 = *v252;
  *&v209[3] = *&v252[3];
  v210 = v94;
  v211 = v98;
  v212 = v97;
  v213 = v96;
  v214 = v95;
  *v215 = *v251;
  *&v215[3] = *&v251[3];
  v216 = v138;
  v217 = v139;
  v218 = v137;
  v219 = v249;
  v220 = v250;
  v221 = v91;
  v222 = v93;
  v53 = v90;
  v223 = v89;
LABEL_14:
  v224 = v53;
  v225 = v92;
  return sub_214301A44(&v161);
}

uint64_t sub_2141C387C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DA8, &qword_2146F5448);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 40);
  v11 = *(v1 + 64);
  v42 = *(v1 + 72);
  v43 = v11;
  v12 = *(v1 + 104);
  v40 = *(v1 + 112);
  v41 = v12;
  v13 = *(v1 + 144);
  v38 = *(v1 + 152);
  v39 = v13;
  v14 = *(v1 + 184);
  v36 = *(v1 + 192);
  v37 = v14;
  v15 = *(v1 + 224);
  v34 = *(v1 + 232);
  v35 = v15;
  v16 = *(v1 + 264);
  v32 = *(v1 + 272);
  v33 = v16;
  v17 = *(v1 + 304);
  v30 = *(v1 + 312);
  v31 = v17;
  v18 = *(v1 + 344);
  v28 = *(v1 + 352);
  v29 = v18;
  v27 = *(v1 + 368);
  v26 = *(v1 + 376);
  v25 = *(v1 + 377);
  v19 = *(v1 + 408);
  v23 = *(v1 + 400);
  v24 = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301A98();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_14;
  }

  LOBYTE(v46) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v44 + 8))(v7, v4);
  }

  LOBYTE(v46) = 1;
  sub_2146DA348();
  if (v42 == 1)
  {
    goto LABEL_14;
  }

  v46 = v43;
  v47 = v42;
  v45 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v40 == 1)
  {
    goto LABEL_14;
  }

  v46 = v41;
  v47 = v40;
  v45 = 3;
  sub_2146DA388();
  if (v38 == 1)
  {
    goto LABEL_14;
  }

  v46 = v39;
  v47 = v38;
  v45 = 4;
  sub_2146DA388();
  if (v36 == 1)
  {
    goto LABEL_14;
  }

  v46 = v37;
  v47 = v36;
  v45 = 5;
  sub_2146DA388();
  if (v34 == 1)
  {
    goto LABEL_14;
  }

  v46 = v35;
  v47 = v34;
  v45 = 6;
  sub_2146DA388();
  if (v32 == 1)
  {
    goto LABEL_14;
  }

  v46 = v33;
  v47 = v32;
  v45 = 7;
  sub_2146DA388();
  if (v30 == 1)
  {
    goto LABEL_14;
  }

  v46 = v31;
  v47 = v30;
  v45 = 8;
  sub_2146DA388();
  if (v28 == 1)
  {
    goto LABEL_14;
  }

  v46 = v29;
  v47 = v28;
  v45 = 9;
  sub_2146DA388();
  v46 = v27;
  LOBYTE(v47) = v26;
  v45 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  LOBYTE(v46) = v25;
  v45 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  if (v24 == 1)
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v46 = v23;
    v47 = v24;
    v45 = 12;
    sub_2146DA388();
    return (*(v44 + 8))(v7, v4);
  }

  return result;
}

double sub_2141C3E88@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14)
{
  v63 = a8;
  *(&v39 + 1) = a6;
  *&v39 = a5;
  v36 = *a2;
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  *(v16 + 32) = sub_2142E0AD0();
  sub_2140433DC(v16, &v53);
  v17 = *(a11 + 80);
  *&v41[71] = *(a11 + 64);
  *&v41[87] = v17;
  *&v41[103] = *(a11 + 96);
  *&v41[119] = *(a11 + 112);
  v18 = *(a11 + 16);
  *&v41[7] = *a11;
  *&v41[23] = v18;
  v19 = *(a11 + 48);
  *&v41[39] = *(a11 + 32);
  *&v41[55] = v19;
  v60 = *&v41[64];
  v61 = *&v41[80];
  *v62 = *&v41[96];
  *&v62[15] = *&v41[111];
  v56 = *v41;
  v57 = *&v41[16];
  v58 = *&v41[32];
  v59 = *&v41[48];
  v20 = a12[3];
  *&v62[95] = a12[4];
  v21 = a12[2];
  *&v62[79] = v20;
  *&v62[63] = v21;
  v22 = *a12;
  *&v62[47] = a12[1];
  *&v62[31] = v22;

  sub_2140325F8(a10, v15, 0xD000000000000030, 0x800000021478FEE0, 0xD00000000000001CLL, 0x800000021478A360);

  if (v35)
  {
    v23 = v54;
    v24 = v55;

    *v50 = *&v62[80];
    *&v41[56] = v53;
    v48 = *&v62[48];
    v49 = *&v62[64];
    *&v50[15] = *&v62[95];
    v44 = v61;
    v45 = *v62;
    v46 = *&v62[16];
    v47 = *&v62[32];
    *&v41[97] = v57;
    *&v41[113] = v58;
    v42 = v59;
    v43 = v60;
    v41[0] = v36;
    *&v41[8] = a3;
    *&v41[16] = a4;
    *&v41[24] = v39;
    *&v41[40] = a7;
    *&v41[48] = v63;
    *&v41[72] = v23;
    v41[80] = v24;
    *&v41[81] = v56;
    v51 = a13;
    v52 = a14;
    sub_214301B48(v41);
  }

  else
  {
    v26 = v54;
    v27 = v55;

    v28 = *&v62[64];
    *(a9 + 257) = *&v62[80];
    *(a9 + 56) = v53;
    v29 = *&v62[32];
    *(a9 + 225) = *&v62[48];
    *(a9 + 241) = v28;
    *(a9 + 272) = *&v62[95];
    v30 = v60;
    *(a9 + 161) = v61;
    v31 = *&v62[16];
    *(a9 + 177) = *v62;
    *(a9 + 193) = v31;
    *(a9 + 209) = v29;
    v32 = v56;
    *(a9 + 97) = v57;
    result = *&v58;
    v33 = v59;
    *(a9 + 113) = v58;
    *(a9 + 129) = v33;
    *(a9 + 145) = v30;
    *a9 = v36;
    *(a9 + 8) = a3;
    *(a9 + 16) = a4;
    *(a9 + 24) = v39;
    v34 = v63;
    *(a9 + 40) = a7;
    *(a9 + 48) = v34;
    *(a9 + 72) = v26;
    *(a9 + 80) = v27;
    *(a9 + 81) = v32;
    *(a9 + 288) = a13;
    *(a9 + 296) = a14;
  }

  return result;
}

unint64_t sub_2141C41EC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x436567617373656DLL;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x7865546E69616C70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000032;
    if (a1 == 4)
    {
      v3 = 0xD000000000000021;
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

uint64_t sub_2141C433C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C4364(uint64_t a1)
{
  v2 = sub_214301B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C43A0(uint64_t a1)
{
  v2 = sub_214301B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C43DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DB0, &qword_2146F5450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v44 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301B9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = a1[3];
  v11 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v13 = sub_2146DA008();
  v14 = __swift_project_value_buffer(v13, qword_27CA19EC8);
  v15 = v5;
  if (*(v12 + 16))
  {
    v16 = sub_21408C508(v14);
    v17 = v4;
    if (v18)
    {
      sub_2140537E4(*(v12 + 56) + 32 * v16, &v57);

      if (swift_dynamicCast())
      {
        v19 = v56[0];
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {

      v19 = 2;
    }
  }

  else
  {

    v19 = 2;
    v17 = v4;
  }

  v20 = v8;
  LOBYTE(v56[0]) = 0;
  sub_214091744();
  sub_2146DA1C8();
  v21 = v57;
  LOBYTE(v57) = 1;
  v22 = sub_2146DA168();
  v25 = v24;
  v54 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v56[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v53 = v25;
  v52 = v21;
  v26 = v57;
  v27 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v56[0]) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v50 = v26;
  v51 = v27;
  v29 = v57;
  v28 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v56[0]) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v48 = v29;
  v49 = v28;
  v30 = v57;
  v102 = 6;
  sub_214301BF0();
  sub_2146DA1C8();
  v31 = v53;
  v47 = v30;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v88 = 7;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v83 = v89;
  v84 = v90;
  v82 = 8;
  v32 = sub_2146DA168();
  v45 = v33;
  v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146E9BF0;
  sub_214091538(&v94, &v57);
  sub_213FB2E54(&v83, &v57, &qword_27C904FD8, &qword_2146F0C50);
  *(v34 + 32) = sub_2142E0AD0();
  sub_2140433DC(v34, &v57);
  v35 = v58;
  *&v81[71] = v98;
  *&v81[87] = v99;
  *&v81[103] = v100;
  *&v81[119] = v101;
  *&v81[7] = v94;
  *&v81[23] = v95;
  *&v81[39] = v96;
  *&v81[55] = v97;
  v113 = v85;
  v114 = v86;
  v115 = v87;
  v111 = v83;
  v112 = v84;
  v77 = v57;
  v78 = v58;
  v79 = v59;
  v80 = v60;
  v44[3] = v59;

  v44[4] = v35;

  v44[1] = "BlastDoor/Untrusted.swift";
  v44[2] = "ion.serviceIdentifier";
  sub_2140325F8(v47, v19, 0xD000000000000030, 0x800000021478FEE0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_214091594(&v94);
  sub_213FB2DF4(&v83, &qword_27C904FD8, &qword_2146F0C50);
  (*(v15 + 8))(v20, v17);
  v36 = v77;
  v47 = v77;
  v37 = v78;
  v38 = v79;
  v39 = v80;

  v40 = v52;
  LOBYTE(v56[0]) = v52;
  *(v56 + 1) = v116[0];
  DWORD1(v56[0]) = *(v116 + 3);
  *(&v56[0] + 1) = v54;
  *&v56[1] = v31;
  *(&v56[1] + 1) = v50;
  *&v56[2] = v51;
  v41 = v48;
  *(&v56[2] + 1) = v48;
  *&v56[3] = v49;
  *(&v56[3] + 1) = v36;
  *&v56[4] = v37;
  v42 = v37;
  *(&v56[4] + 1) = v38;
  LOBYTE(v56[5]) = v39;
  *(&v56[8] + 1) = *&v81[48];
  *(&v56[7] + 1) = *&v81[32];
  *(&v56[6] + 1) = *&v81[16];
  *(&v56[5] + 1) = *v81;
  v56[12] = *&v81[111];
  v56[13] = v111;
  *(&v56[11] + 1) = *&v81[96];
  *(&v56[10] + 1) = *&v81[80];
  *(&v56[9] + 1) = *&v81[64];
  v56[16] = v114;
  v56[17] = v115;
  v56[14] = v112;
  v56[15] = v113;
  v43 = v45;
  *&v56[18] = v46;
  *(&v56[18] + 1) = v45;
  memcpy(v117, v56, 0x130uLL);
  sub_214301C44(v56, &v57);
  __swift_destroy_boxed_opaque_existential_1(v55);
  LOBYTE(v57) = v40;
  *(&v57 + 1) = v116[0];
  HIDWORD(v57) = *(v116 + 3);
  v58 = v54;
  v59 = v31;
  v60 = v50;
  v61 = v51;
  v62 = v41;
  v63 = v49;
  v64 = v47;
  v65 = v42;
  v66 = v38;
  v67 = v39;
  v71 = *&v81[48];
  v70 = *&v81[32];
  v69 = *&v81[16];
  v68 = *v81;
  *&v74[15] = *&v81[111];
  *&v74[31] = v111;
  *v74 = *&v81[96];
  v73 = *&v81[80];
  v72 = *&v81[64];
  *&v74[79] = v114;
  *&v74[95] = v115;
  *&v74[47] = v112;
  *&v74[63] = v113;
  v75 = v46;
  v76 = v43;
  return sub_214301B48(&v57);
}

uint64_t sub_2141C4DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DC0, &qword_2146F5458);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v33 = *(v1 + 2);
  v34 = v9;
  v10 = *(v1 + 3);
  v31 = *(v1 + 4);
  v32 = v10;
  v11 = *(v1 + 5);
  v29 = *(v1 + 6);
  v30 = v11;
  v27 = *(v1 + 9);
  v12 = *(v1 + 168);
  v58 = *(v1 + 152);
  v59 = v12;
  v60 = *(v1 + 184);
  v61 = *(v1 + 25);
  v13 = *(v1 + 104);
  v54 = *(v1 + 88);
  v55 = v13;
  v14 = *(v1 + 136);
  v56 = *(v1 + 120);
  v57 = v14;
  v15 = *(v1 + 16);
  v64 = *(v1 + 15);
  v65 = v15;
  v66 = *(v1 + 17);
  v16 = *(v1 + 14);
  v62 = *(v1 + 13);
  v63 = v16;
  v17 = *(v1 + 37);
  v28 = *(v1 + 36);
  v26 = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301B9C();
  sub_2146DAA28();
  LOBYTE(v46) = v8;
  v19 = v7;
  LOBYTE(v43[0]) = 0;
  sub_214091798();
  v20 = v67;
  sub_2146DA388();
  if (v20)
  {
    return (*(v4 + 8))(v19, v3);
  }

  v22 = v31;
  v21 = v32;
  v23 = v29;
  v24 = v30;
  LOBYTE(v46) = 1;
  sub_2146DA328();
  *&v46 = v21;
  *(&v46 + 1) = v22;
  LOBYTE(v43[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  *&v46 = v24;
  *(&v46 + 1) = v23;
  LOBYTE(v43[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v27)
  {
    *&v46 = v27;
    LOBYTE(v43[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v45 = 6;
    sub_214091538(&v54, v43);
    sub_214301CA0();
    sub_2146DA388();
    v43[4] = v50;
    v43[5] = v51;
    v43[6] = v52;
    v44 = v53;
    v43[0] = v46;
    v43[1] = v47;
    v43[2] = v48;
    v43[3] = v49;
    sub_214091594(v43);
    v40 = v64;
    v41 = v65;
    v42 = v66;
    v38 = v62;
    v39 = v63;
    v37 = 7;
    sub_213FB2E54(&v62, v36, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v36[2] = v40;
    v36[3] = v41;
    v36[4] = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_213FB2DF4(v36, &qword_27C904FD8, &qword_2146F0C50);
    v35 = 8;
    sub_2146DA328();
    return (*(v4 + 8))(v19, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141C534C@<Q0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = *a1;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v10 = *(a8 + 80);
  *(a9 + 112) = *(a8 + 64);
  *(a9 + 128) = v10;
  *(a9 + 144) = *(a8 + 96);
  *(a9 + 160) = *(a8 + 112);
  v11 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v11;
  result = *(a8 + 32);
  v13 = *(a8 + 48);
  *(a9 + 80) = result;
  *(a9 + 96) = v13;
  *(a9 + 161) = a10;
  return result;
}

uint64_t sub_2141C5398()
{
  v1 = *v0;
  v2 = 0x657079546D657469;
  v3 = 0x6E6F4370756F7267;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x506567617373656DLL;
  if (v1 == 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v5 = 0x79546E6F69746361;
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

uint64_t sub_2141C5490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C54B8(uint64_t a1)
{
  v2 = sub_214301CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C54F4(uint64_t a1)
{
  v2 = sub_214301CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C5530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DC8, &qword_2146F5460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301CF4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    sub_214301D48();
    sub_2146DA1C8();
    v11 = v34;
    LOBYTE(v34) = 1;
    v12 = sub_2146DA1F8();
    LOBYTE(v34) = 2;
    v42 = sub_2146DA228();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DE0, &qword_2146F5468);
    LOBYTE(v25) = 3;
    sub_214301D9C();
    sub_2146DA1C8();
    v22 = *(&v34 + 1);
    v23 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v25) = 4;
    sub_2142E12FC();
    sub_2146DA1C8();
    v21 = v34;
    v33 = 5;
    sub_214301E18();
    sub_2146DA1C8();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v25 = v34;
    v26 = v35;
    v32 = v41;
    v27 = v36;
    v28 = v37;
    v24 = 6;
    v14 = sub_2146DA1F8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v12;
    v15 = v23;
    *(a2 + 8) = v42;
    *(a2 + 16) = v15;
    v16 = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = __PAIR128__(*(&v21 + 1), v16);
    v17 = v30;
    *(a2 + 112) = v29;
    *(a2 + 128) = v17;
    *(a2 + 144) = v31;
    *(a2 + 160) = v32;
    v18 = v26;
    *(a2 + 48) = v25;
    *(a2 + 64) = v18;
    v19 = v28;
    *(a2 + 80) = v27;
    *(a2 + 96) = v19;
    *(a2 + 161) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141C595C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DF8, &qword_2146F5470);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v26 = v1[1];
  v9 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v9;
  v10 = *(v1 + 3);
  v22 = *(v1 + 4);
  v23 = v10;
  v21 = *(v1 + 5);
  v11 = *(v1 + 8);
  v43 = *(v1 + 7);
  v44 = v11;
  v45 = *(v1 + 9);
  v46 = v1[160];
  v12 = *(v1 + 4);
  v39 = *(v1 + 3);
  v40 = v12;
  v13 = *(v1 + 6);
  v41 = *(v1 + 5);
  v42 = v13;
  v20[3] = v1[161];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301CF4();
  sub_2146DAA28();
  LOBYTE(v31) = v8;
  LOBYTE(v28[0]) = 0;
  sub_214301E6C();
  v15 = v47;
  sub_2146DA388();
  if (!v15)
  {
    v16 = v24;
    v18 = v22;
    v17 = v23;
    LOBYTE(v31) = 1;
    sub_2146DA3B8();
    LOBYTE(v31) = 2;
    sub_2146DA3E8();
    *&v31 = v16;
    *(&v31 + 1) = v17;
    LOBYTE(v28[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908DE0, &qword_2146F5468);
    sub_214301EC0();
    sub_2146DA388();
    *&v31 = v18;
    *(&v31 + 1) = v21;
    LOBYTE(v28[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v30 = 5;
    sub_2142F236C(&v39, v28);
    sub_214301F3C();
    sub_2146DA388();
    v28[4] = v35;
    v28[5] = v36;
    v28[6] = v37;
    v29 = v38;
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_2142F22C4(v28);
    v27 = 6;
    sub_2146DA3B8();
  }

  return (*(v4 + 8))(v7, v3);
}

double sub_2141C5D5C@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v52 = a8;
  v26 = *a2;
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  *(v16 + 32) = sub_2142E0AD0();
  sub_2140433DC(v16, &v32);
  v17 = *a11;
  *&v51[23] = a11[1];
  v18 = a11[3];
  *&v51[39] = a11[2];
  *&v51[55] = v18;
  *&v51[71] = a11[4];
  *&v51[7] = v17;
  v48 = v32;
  v49 = v33;
  v50 = v34;

  sub_2140325F8(a10, v15, 0xD000000000000029, 0x800000021478FF20, 0xD00000000000001CLL, 0x800000021478A360);

  v19 = v49;
  v20 = v50;

  if (v13)
  {
    v38 = v48;
    v43 = *&v51[32];
    v44 = *&v51[48];
    *v45 = *&v51[64];
    v41 = *v51;
    LOBYTE(v32) = v26;
    *(&v32 + 1) = a3;
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    v37 = v52;
    v39 = v19;
    v40 = v20;
    v42 = *&v51[16];
    *&v45[15] = *&v51[79];
    v46 = a12;
    v47 = a13;
    sub_214301F90(&v32);
  }

  else
  {
    *(a9 + 56) = v48;
    v22 = *&v51[48];
    *(a9 + 113) = *&v51[32];
    *(a9 + 129) = v22;
    *(a9 + 145) = *&v51[64];
    result = *v51;
    v23 = *&v51[16];
    *(a9 + 81) = *v51;
    *a9 = v26;
    *(a9 + 8) = a3;
    *(a9 + 16) = a4;
    *(a9 + 24) = a5;
    *(a9 + 32) = a6;
    v24 = v52;
    *(a9 + 40) = a7;
    *(a9 + 48) = v24;
    *(a9 + 72) = v19;
    *(a9 + 80) = v20;
    v25 = *&v51[79];
    *(a9 + 97) = v23;
    *(a9 + 160) = v25;
    *(a9 + 168) = a12;
    *(a9 + 176) = a13;
  }

  return result;
}

unint64_t sub_2141C6018()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x7865546E69616C70;
    if (v1 == 6)
    {
      v4 = 0xD000000000000012;
    }

    v5 = 0xD000000000000032;
    if (v1 == 4)
    {
      v5 = 0xD000000000000021;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (*v0 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2141C6134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C615C(uint64_t a1)
{
  v2 = sub_214301FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C6198(uint64_t a1)
{
  v2 = sub_214301FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C61D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E18, &qword_2146F5478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214301FE4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = a1;
  v62 = v5;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v12 = sub_2146DA008();
  v13 = __swift_project_value_buffer(v12, qword_27CA19EC8);
  v14 = v4;
  if (*(v11 + 16))
  {
    v15 = sub_21408C508(v13);
    v16 = v8;
    if (v17)
    {
      sub_2140537E4(*(v11 + 56) + 32 * v15, &v70);

      if (swift_dynamicCast())
      {
        v18 = v63;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {

      v18 = 2;
    }
  }

  else
  {

    v18 = 2;
    v16 = v8;
  }

  LOBYTE(v63) = 0;
  sub_214302038();
  sub_2146DA1C8();
  v60 = v70;
  LOBYTE(v70) = 1;
  v19 = sub_2146DA168();
  v21 = v20;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v63) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v59 = v22;
  v24 = v70;
  v23 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  LOBYTE(v63) = 3;
  sub_2142E50D0();
  sub_2146DA1C8();
  v57 = v24;
  v58 = v23;
  v26 = v70;
  v25 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v63) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v56 = v26;
  v27 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  v99 = 6;
  sub_2142ECFA4();
  sub_2146DA1C8();
  v55 = v27;
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v94 = v100;
  v95 = v101;
  v93 = 7;
  v52 = sub_2146DA168();
  v53 = v29;
  v54 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  sub_213FB2E54(&v94, &v70, &qword_27C904FD8, &qword_2146F0C50);
  *(v30 + 32) = sub_2142E0AD0();
  sub_2140433DC(v30, &v70);
  *&v92[23] = v95;
  *&v92[39] = v96;
  *&v92[55] = v97;
  *&v92[71] = v98;
  v31 = v71;
  *&v92[7] = v94;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v91 = v73;
  v51[2] = v72;

  v51[1] = v31;

  v51[0] = "ationIdentifiers";
  sub_2140325F8(v55, v18, 0xD000000000000029, 0x800000021478FF20, 0xD00000000000001CLL, 0x800000021478A360);
  v32 = (v62 + 8);

  sub_213FB2DF4(&v94, &qword_27C904FD8, &qword_2146F0C50);
  (*v32)(v16, v14);
  v33 = v88;
  v34 = v89;
  v62 = v88;
  v55 = v89;
  v35 = v90;
  v51[0] = v90;
  v36 = v91;

  LOBYTE(v63) = v60;
  *(&v63 + 1) = v105[0];
  DWORD1(v63) = *(v105 + 3);
  v37 = v58;
  *(&v63 + 1) = v59;
  *&v64 = v21;
  v38 = v56;
  *(&v64 + 1) = v57;
  *&v65 = v58;
  *(&v65 + 1) = v56;
  *&v66 = v54;
  *(&v66 + 1) = v33;
  *&v67 = v34;
  *(&v67 + 1) = v35;
  LOBYTE(v35) = v36;
  LOBYTE(v68[0]) = v36;
  *(v68 + 1) = *v92;
  *(&v68[1] + 1) = *&v92[16];
  *&v68[5] = *&v92[79];
  *(&v68[4] + 1) = *&v92[64];
  *(&v68[3] + 1) = *&v92[48];
  *(&v68[2] + 1) = *&v92[32];
  v40 = v52;
  v39 = v53;
  *(&v68[5] + 1) = v52;
  v69 = v53;
  v41 = v63;
  v42 = v64;
  v43 = v66;
  v44 = v106;
  *(v106 + 32) = v65;
  *(v44 + 48) = v43;
  *v44 = v41;
  *(v44 + 16) = v42;
  v45 = v67;
  v46 = v68[0];
  v47 = v68[2];
  *(v44 + 96) = v68[1];
  *(v44 + 112) = v47;
  *(v44 + 64) = v45;
  *(v44 + 80) = v46;
  v48 = v68[3];
  v49 = v68[4];
  v50 = v68[5];
  *(v44 + 176) = v39;
  *(v44 + 144) = v49;
  *(v44 + 160) = v50;
  *(v44 + 128) = v48;
  sub_21430208C(&v63, &v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  LOBYTE(v70) = v60;
  *(&v70 + 1) = v105[0];
  HIDWORD(v70) = *(v105 + 3);
  v71 = v59;
  v72 = v21;
  v73 = v57;
  v74 = v37;
  v75 = v38;
  v76 = v54;
  v77 = v62;
  v78 = v55;
  v79 = v51[0];
  v80 = v35;
  v81 = *v92;
  v82 = *&v92[16];
  *&v85[15] = *&v92[79];
  v86 = v40;
  *v85 = *&v92[64];
  v84 = *&v92[48];
  v83 = *&v92[32];
  v87 = v39;
  return sub_214301F90(&v70);
}

uint64_t sub_2141C6B04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E30, &qword_2146F5480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v34 = *(v1 + 2);
  v35 = v9;
  v10 = *(v1 + 3);
  v32 = *(v1 + 4);
  v33 = v10;
  v11 = *(v1 + 5);
  v30 = *(v1 + 6);
  v31 = v11;
  v12 = *(v1 + 9);
  v13 = *(v1 + 104);
  v14 = *(v1 + 136);
  v46 = *(v1 + 120);
  v47 = v14;
  v48 = *(v1 + 152);
  v44 = *(v1 + 88);
  v45 = v13;
  v15 = *(v1 + 21);
  v16 = *(v1 + 22);
  v28 = v12;
  v29 = v15;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_214301FE4();
  sub_2146DAA28();
  LOBYTE(v39) = v8;
  LOBYTE(v37[0]) = 0;
  sub_2143020E8();
  v22 = v49;
  sub_2146DA388();
  if (v22)
  {
    return (*(v4 + 8))(v7, v21);
  }

  v23 = v32;
  v24 = v33;
  v25 = v31;
  v49 = v16;
  LOBYTE(v39) = 1;
  sub_2146DA328();
  *&v39 = v24;
  *(&v39 + 1) = v23;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  *&v39 = v25;
  *(&v39 + 1) = v30;
  LOBYTE(v37[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
  sub_2142E53D4();
  sub_2146DA388();
  if (v28)
  {
    *&v39 = v28;
    LOBYTE(v37[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v39 = v44;
    v40 = v45;
    v38 = 6;
    sub_213FB2E54(&v44, v37, &qword_27C904FD8, &qword_2146F0C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
    sub_2142ED0D0();
    sub_2146DA388();
    v37[2] = v41;
    v37[3] = v42;
    v37[4] = v43;
    v37[0] = v39;
    v37[1] = v40;
    sub_213FB2DF4(v37, &qword_27C904FD8, &qword_2146F0C50);
    v36 = 7;
    sub_2146DA328();
    return (*(v4 + 8))(0, v21);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RCSFileInfo.init(with:fileDisposition:fileSize:fileName:contentType:url:untilDate:playingLengthInSeconds:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v134 = a5;
  v138 = a8;
  v139 = a7;
  v122 = a6;
  v123 = a4;
  v158 = a3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v15 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = (&v120 - v16);
  v132 = *a1;
  LODWORD(v131) = *a2;
  v130 = type metadata accessor for RCSFileInfo();
  v17 = *(v130 + 40);
  v18 = sub_2146D8B08();
  v136 = *(v18 - 8);
  v137 = a10;
  v19 = *(v136 + 16);
  v135 = v18;
  v19(a9 + v17, a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v140 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146ED240;
  *(v21 + 16) = sub_21438F468;
  *(v21 + 24) = v22;
  *(inited + 32) = v21;
  sub_21404328C(inited, &v154);
  v129 = v155;
  v127 = v157;
  LODWORD(v128) = v156;
  sub_214673030(&v150);
  v125 = v152;
  v126 = v151;
  v124 = v153;
  v23 = swift_initStackObject();
  *(v23 + 16) = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214064194;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v146);
  v25 = v147;
  v26 = v148;
  v27 = v149;
  v28 = swift_initStackObject();
  *(v28 + 16) = v140;
  v29 = sub_214069764(&unk_282654B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = sub_21438F524;
  *(v30 + 24) = v31;
  *(v28 + 32) = v30;
  v32 = v130;
  v33 = *(v130 + 36);
  sub_214042F80(v28, (a9 + v33));
  sub_214673150(&v141);
  v34 = v142;
  v35 = v143;
  v36 = v144;
  v37 = v145;
  *a9 = v132;
  *(a9 + 1) = v131;
  *(a9 + 8) = v154;
  *(a9 + 24) = v129;
  v38 = v127;
  *(a9 + 32) = v128;
  *(a9 + 33) = v38;
  *(a9 + 40) = v150;
  v39 = v125;
  *(a9 + 56) = v126;
  *(a9 + 64) = v39;
  *(a9 + 72) = v124;
  *(a9 + 80) = v146;
  *(a9 + 96) = v25;
  *(a9 + 104) = v26;
  *(a9 + 112) = v27;
  v40 = a9 + *(v32 + 44);
  *v40 = v141;
  *(v40 + 16) = v34;
  *(v40 + 24) = v35;
  *(v40 + 25) = v36;
  *(v40 + 26) = v37;
  v42 = *(a9 + 8);
  v41 = *(a9 + 16);
  v131 = *(a9 + 24);
  v43 = *(a9 + 33);
  LOBYTE(v141) = *(a9 + 32);
  *&v146 = v158;
  v132 = v43;
  LOBYTE(v154) = v43;
  *&v150 = 0xD000000000000014;
  *(&v150 + 1) = 0x800000021478FF50;
  v151 = 0xD00000000000001CLL;
  v152 = 0x800000021478A360;

  v44 = v133;
  v45 = v42(&v146, &v154, &v150);
  *&v140 = v44;
  if (v44)
  {

    (*(v136 + 8))(v137, v135);
    v46 = sub_2146D8958();
    (*(*(v46 - 8) + 8))(v138, v46);

LABEL_7:
    v59 = v141;
    v60 = *(a9 + 16);

    *(a9 + 8) = v42;
    *(a9 + 16) = v41;
    *(a9 + 24) = v131;
    *(a9 + 32) = v59;
    *(a9 + 33) = v132;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  v133 = 0xD000000000000014;
  v128 = v40;
  v129 = v33;
  v130 = 0x800000021478A360;
  if ((v45 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v57 = v133;
    v57[1] = 0x800000021478FF50;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v130;
    swift_willThrow();
    (*(v136 + 8))(v137, v135);
    v58 = sub_2146D8958();
    (*(*(v58 - 8) + 8))(v138, v58);
    goto LABEL_7;
  }

  v47 = v130;

  v48 = *(a9 + 16);

  *(a9 + 8) = v42;
  *(a9 + 16) = v41;
  *(a9 + 24) = v158;
  *(a9 + 32) = 0;
  *(a9 + 33) = v132;
  v50 = *(a9 + 40);
  v49 = *(a9 + 48);
  v52 = *(a9 + 56);
  v51 = *(a9 + 64);
  v53 = *(a9 + 72);
  v54 = v134;
  *&v146 = v123;
  *(&v146 + 1) = v134;
  v132 = v53;
  LOBYTE(v141) = v53;
  *&v150 = v133;
  *(&v150 + 1) = 0x800000021478FF70;
  v151 = 0xD00000000000001CLL;
  v152 = v47;

  v131 = v51;
  sub_213FDC9D0(v52, v51);
  v55 = v140;
  v158 = v50;
  v56 = v50(&v146, &v141, &v150);
  *&v140 = v55;
  if (v55)
  {

LABEL_14:

    (*(v136 + 8))(v137, v135);
    v78 = sub_2146D8958();
    (*(*(v78 - 8) + 8))(v138, v78);
    v79 = *(a9 + 48);
    v80 = *(a9 + 56);
    v81 = *(a9 + 64);

    sub_213FDC6D0(v80, v81);
    *(a9 + 40) = v158;
    *(a9 + 48) = v49;
    v82 = v131;
    *(a9 + 56) = v52;
    *(a9 + 64) = v82;
    *(a9 + 72) = v132;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  v62 = v139;
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    v75 = swift_allocError();
    *v76 = v133;
    v76[1] = 0x800000021478FF70;
    v77 = v130;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = v77;
    *&v140 = v75;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_213FDC6D0(v52, v131);
  v63 = v130;

  v64 = v54;
  v65 = *(a9 + 48);
  v66 = *(a9 + 56);
  v67 = *(a9 + 64);

  sub_213FDC6D0(v66, v67);
  *(a9 + 40) = v158;
  *(a9 + 48) = v49;
  v68 = v122;
  *(a9 + 56) = v123;
  *(a9 + 64) = v64;
  *(a9 + 72) = v132;
  v70 = *(a9 + 80);
  v69 = *(a9 + 88);
  v71 = *(a9 + 104);
  v134 = *(a9 + 96);
  v72 = *(a9 + 112);
  *&v146 = v68;
  *(&v146 + 1) = v62;
  LODWORD(v158) = v72;
  LOBYTE(v141) = v72;
  *&v150 = 0xD000000000000017;
  *(&v150 + 1) = 0x800000021478FF90;
  v151 = 0xD00000000000001CLL;
  v152 = v63;

  v73 = v140;
  v74 = v70(&v146, &v141, &v150);
  *&v140 = v73;
  if (v73)
  {

LABEL_20:

    (*(v136 + 8))(v137, v135);
    v97 = sub_2146D8958();
    (*(*(v97 - 8) + 8))(v138, v97);
    v98 = *(a9 + 88);
    v99 = *(a9 + 104);

    *(a9 + 80) = v70;
    *(a9 + 88) = v69;
    *(a9 + 96) = v134;
    *(a9 + 104) = v71;
    *(a9 + 112) = v158;
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  if ((v74 & 1) == 0)
  {
    sub_214031C4C();
    v95 = swift_allocError();
    *v96 = 0xD000000000000017;
    v96[1] = 0x800000021478FF90;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = v130;
    *&v140 = v95;
    swift_willThrow();
    goto LABEL_20;
  }

  v83 = v130;

  v84 = *(a9 + 88);
  v85 = *(a9 + 104);

  *(a9 + 80) = v70;
  *(a9 + 88) = v69;
  v86 = v121;
  v87 = v139;
  *(a9 + 96) = v122;
  *(a9 + 104) = v87;
  *(a9 + 112) = v158;
  sub_213FB2E54(a9 + v129, v86, &unk_27C9131D0, &qword_2146EAA70);
  v88 = v120;
  v89 = *v86;
  v90 = v86[1];
  LOBYTE(v146) = *(v86 + *(v120 + 32));
  *&v150 = 0x49656C6946534352;
  *(&v150 + 1) = 0xEF6C72752E6F666ELL;
  v151 = 0xD00000000000001CLL;
  v152 = v83;
  v91 = v138;
  v92 = v140;
  v93 = v89(v138, &v146, &v150);
  *&v140 = v92;
  if (v92)
  {
    (*(v136 + 8))(v137, v135);
    v94 = sub_2146D8958();
    (*(*(v94 - 8) + 8))(v91, v94);

LABEL_25:
    sub_21402EDB8(v86, a9 + v129, &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
  }

  if ((v93 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v111 = 0x49656C6946534352;
    v111[1] = 0xEF6C72752E6F666ELL;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = v83;
    swift_willThrow();
    (*(v136 + 8))(v137, v135);
    v112 = sub_2146D8958();
    (*(*(v112 - 8) + 8))(v91, v112);
    goto LABEL_25;
  }

  LODWORD(v158) = a12;
  v139 = a11;

  v100 = *(v88 + 28);
  sub_213FB2DF4(v86 + v100, &unk_27C9131A0, &unk_2146E9D10);
  v101 = sub_2146D8958();
  v102 = v83;
  v103 = v86;
  v104 = *(v101 - 8);
  (*(v104 + 16))(v103 + v100, v91, v101);
  (*(v104 + 56))(v103 + v100, 0, 1, v101);
  sub_21402EDB8(v103, a9 + v129, &unk_27C9131D0, &qword_2146EAA70);
  v105 = v128;
  v107 = *v128;
  v106 = *(v128 + 8);
  v133 = *(v128 + 16);
  v132 = *(v128 + 24);
  v108 = *(v128 + 26);
  LOBYTE(v141) = *(v128 + 25);
  *&v146 = v139;
  BYTE8(v146) = v158 & 1;
  LODWORD(v134) = v108;
  LOBYTE(v154) = v108;
  *&v150 = 0xD000000000000022;
  *(&v150 + 1) = 0x800000021478FFB0;
  v151 = 0xD00000000000001CLL;
  v152 = v102;

  v109 = v140;
  *&v140 = v107;
  v110 = v107(&v146, &v154, &v150);
  if (v109)
  {
    (*(v136 + 8))(v137, v135);
    (*(v104 + 8))(v138, v101);
  }

  else
  {
    v113 = v158;
    if (v110)
    {

      (*(v136 + 8))(v137, v135);
      (*(v104 + 8))(v138, v101);
      v114 = *(v105 + 8);

      v115 = v139;
      *v105 = v140;
      *(v105 + 8) = v106;
      *(v105 + 16) = v115;
      *(v105 + 24) = v113 & 1;
      *(v105 + 25) = 0;
      *(v105 + 26) = v134;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v116 = 0xD000000000000022;
    v116[1] = 0x800000021478FFB0;
    v117 = v130;
    v116[2] = 0xD00000000000001CLL;
    v116[3] = v117;
    swift_willThrow();
    (*(v136 + 8))(v137, v135);
    (*(v104 + 8))(v138, v101);
  }

  v118 = v141;
  v119 = *(v105 + 8);

  *v105 = v140;
  *(v105 + 8) = v106;
  *(v105 + 16) = v133;
  *(v105 + 24) = v132;
  *(v105 + 25) = v118;
  *(v105 + 26) = v134;
  return sub_21432887C(a9, type metadata accessor for RCSFileInfo);
}

unint64_t sub_2141C7D24()
{
  v1 = *v0;
  v2 = 0x65707954656C6966;
  v3 = 0x7461446C69746E75;
  if (v1 != 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x54746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953656C6966;
  if (v1 != 2)
  {
    v5 = 0x656D614E656C6966;
  }

  if (*v0)
  {
    v2 = 0x70736944656C6966;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2141C7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C7E5C(uint64_t a1)
{
  v2 = sub_21430213C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C7E98(uint64_t a1)
{
  v2 = sub_21430213C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RCSFileInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v134 = &v109[-v4];
  v138 = sub_2146D8B08();
  v135 = *(v138 - 8);
  v5 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v109[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = sub_2146D8958();
  v136 = *(v139 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x28223BE20](v139);
  v9 = &v109[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E40, &qword_2146F5488);
  v140 = *(v10 - 8);
  v141 = v10;
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v109[-v12];
  v14 = type metadata accessor for RCSFileInfo();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v109[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430213C();
  v19 = v159;
  sub_2146DAA08();
  if (v19)
  {
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v131 = v9;
  v159 = a1;
  v21 = v140;
  v130 = v17;
  LOBYTE(v147) = 0;
  sub_214302190();
  sub_2146DA1C8();
  v22 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E58, &qword_2146F5490);
  LOBYTE(v147) = 1;
  sub_2143021E4();
  sub_2146DA1C8();
  LODWORD(v129) = v22;
  v23 = v151;
  LOBYTE(v151) = 2;
  v24 = sub_2146DA1A8();
  LODWORD(v127) = v23;
  v128 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v147) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v26 = *(&v151 + 1);
  v126 = v151;
  LOBYTE(v151) = 4;
  *&v124 = sub_2146DA168();
  *(&v124 + 1) = v27;
  v125 = v26;
  LOBYTE(v151) = 5;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  LOBYTE(v151) = 6;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v147) = 7;
  sub_2142E11FC();
  sub_2146DA1C8();
  v111 = v151;
  v110 = BYTE8(v151);
  v116 = v14;
  (*(v135 + 16))(v130 + *(v14 + 40), v137, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v123 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146ED240;
  *(v29 + 16) = sub_21438F468;
  *(v29 + 24) = v30;
  *(inited + 32) = v29;
  sub_21404328C(inited, &v155);
  v122 = v156;
  LODWORD(v121) = v157;
  LODWORD(v120) = v158;
  sub_214673030(&v151);
  v118 = v153;
  v119 = v152;
  v117 = v154;
  v31 = swift_initStackObject();
  *(v31 + 16) = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_214064194;
  *(v32 + 24) = 0;
  *(v31 + 32) = v32;
  sub_214042B80(v31, &v147);
  v114 = v149;
  v115 = v148;
  v113 = v150;
  v33 = swift_initStackObject();
  *(v33 + 16) = v123;
  v34 = sub_214069764(&unk_2826538B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v35 + 16) = sub_21438F524;
  *(v35 + 24) = v36;
  *(v33 + 32) = v35;
  v37 = v116;
  v112 = *(v116 + 36);
  v38 = v130;
  sub_214042F80(v33, (v130 + v112));
  sub_214673150(&v142);
  v39 = v143;
  v40 = v144;
  v41 = v145;
  v42 = v146;
  *v38 = v129;
  *(v38 + 1) = v127;
  *(v38 + 1) = v155;
  v38[3] = v122;
  *(v38 + 32) = v121;
  *(v38 + 33) = v120;
  *(v38 + 5) = v151;
  v43 = v118;
  v38[7] = v119;
  v38[8] = v43;
  *(v38 + 72) = v117;
  *(v38 + 5) = v147;
  v44 = v114;
  v38[12] = v115;
  v38[13] = v44;
  *(v38 + 112) = v113;
  v45 = v38 + *(v37 + 44);
  *v45 = v142;
  *(v45 + 2) = v39;
  v45[24] = v40;
  v45[25] = v41;
  v120 = v45;
  v45[26] = v42;
  v47 = v38[1];
  v46 = v38[2];
  v48 = v38[3];
  v49 = *(v38 + 33);
  LOBYTE(v142) = *(v38 + 32);
  *&v147 = v128;
  LODWORD(v129) = v49;
  LOBYTE(v155) = v49;
  v121 = 0xD000000000000014;
  v122 = v48;
  *&v151 = 0xD000000000000014;
  *(&v151 + 1) = 0x800000021478FF50;
  *&v123 = 0x800000021478FF50;
  v152 = 0xD00000000000001CLL;
  v153 = 0x800000021478A360;

  v127 = v47;
  v50 = v47(&v147, &v155, &v151);
  v51 = v123;
  v118 = v13;
  v119 = 0x800000021478A360;
  if (v50)
  {
    v52 = v119;

    v53 = v130;
    v54 = v130[2];

    v55 = v128;
    v53[1] = v127;
    v53[2] = v46;
    v53[3] = v55;
    *(v53 + 32) = 0;
    *(v53 + 33) = v129;
    v57 = v53[5];
    v56 = v53[6];
    v58 = v53[7];
    v59 = v53[8];
    v60 = *(v53 + 72);
    *&v147 = v126;
    *(&v147 + 1) = v125;
    LODWORD(v128) = v60;
    LOBYTE(v142) = v60;
    *&v151 = v121;
    *(&v151 + 1) = 0x800000021478FF70;
    v152 = 0xD00000000000001CLL;
    v153 = v52;

    v127 = v58;
    *&v123 = v59;
    sub_213FDC9D0(v58, v59);
    v129 = v57;
    if (v57(&v147, &v142, &v151))
    {
      sub_213FDC6D0(v127, v123);
      v65 = v119;

      v66 = v130;
      v67 = v130[6];
      v68 = v130[7];
      v69 = v130[8];

      sub_213FDC6D0(v68, v69);
      v66[5] = v129;
      v66[6] = v56;
      v70 = v125;
      v66[7] = v126;
      v66[8] = v70;
      *(v66 + 72) = v128;
      v72 = v66[10];
      v71 = v66[11];
      v73 = v66[13];
      v126 = v66[12];
      v127 = v73;
      v74 = *(v66 + 112);
      v147 = v124;
      LODWORD(v128) = v74;
      LOBYTE(v142) = v74;
      *&v151 = 0xD000000000000017;
      *(&v151 + 1) = 0x800000021478FF90;
      v152 = 0xD00000000000001CLL;
      v153 = v65;

      v129 = v72;
      if (v72(&v147, &v142, &v151))
      {
        v80 = v119;

        v81 = v130;
        v82 = v130[11];
        v83 = v130[13];

        v81[10] = v129;
        v81[11] = v71;
        v84 = *(&v124 + 1);
        v81[12] = v124;
        v81[13] = v84;
        *(v81 + 112) = v128;
        v85 = v134;
        sub_213FB2E54(v81 + v112, v134, &unk_27C9131D0, &qword_2146EAA70);
        v86 = v85[*(v133 + 32)];
        v87 = *v85;
        v88 = *(v85 + 1);
        LOBYTE(v147) = v86;
        *&v151 = 0x49656C6946534352;
        *(&v151 + 1) = 0xEF6C72752E6F666ELL;
        v152 = 0xD00000000000001CLL;
        v153 = v80;
        if (v87(v131, &v147, &v151))
        {
          v93 = v119;

          v94 = v134;
          v95 = *(v133 + 28);
          sub_213FB2DF4(&v134[v95], &unk_27C9131A0, &unk_2146E9D10);
          v96 = v136;
          v97 = v139;
          (*(v136 + 16))(&v94[v95], v131, v139);
          (*(v96 + 56))(&v94[v95], 0, 1, v97);
          sub_21402EDB8(v94, v130 + v112, &unk_27C9131D0, &qword_2146EAA70);
          v99 = *v120;
          v98 = *(v120 + 1);
          v133 = *(v120 + 2);
          LODWORD(v129) = v120[24];
          v100 = v120[26];
          LOBYTE(v142) = v120[25];
          *&v147 = v111;
          BYTE8(v147) = v110;
          LODWORD(v134) = v100;
          LOBYTE(v155) = v100;
          *&v151 = 0xD000000000000022;
          *(&v151 + 1) = 0x800000021478FFB0;
          v152 = 0xD00000000000001CLL;
          v153 = v93;

          if (v99(&v147, &v155, &v151))
          {

            (*(v135 + 8))(v137, v138);
            (*(v136 + 8))(v131, v139);
            (*(v21 + 8))(v118, v141);
            v102 = v120;
            v103 = *(v120 + 1);

            *v102 = v99;
            *(v102 + 1) = v98;
            *(v102 + 2) = v111;
            v102[24] = v110;
            v102[25] = 0;
            v102[26] = v134;
            sub_214328704(v130, v132, type metadata accessor for RCSFileInfo);
            v20 = v159;
            return __swift_destroy_boxed_opaque_existential_1(v20);
          }

          sub_214031C4C();
          swift_allocError();
          *v104 = 0xD000000000000022;
          v104[1] = 0x800000021478FFB0;
          v105 = v119;
          v104[2] = 0xD00000000000001CLL;
          v104[3] = v105;
          swift_willThrow();
          (*(v135 + 8))(v137, v138);
          (*(v136 + 8))(v131, v139);
          (*(v21 + 8))(v118, v141);
          v106 = v142;
          v107 = v120;
          v108 = *(v120 + 1);

          *v107 = v99;
          *(v107 + 1) = v98;
          *(v107 + 2) = v133;
          v107[24] = v129;
          v107[25] = v106;
          v107[26] = v134;
          v63 = v130;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v101 = 0x49656C6946534352;
          v101[1] = 0xEF6C72752E6F666ELL;
          v101[2] = 0xD00000000000001CLL;
          v101[3] = v119;
          swift_willThrow();
          (*(v135 + 8))(v137, v138);
          (*(v136 + 8))(v131, v139);
          (*(v21 + 8))(v118, v141);
          v63 = v130;
          sub_21402EDB8(v134, v130 + v112, &unk_27C9131D0, &qword_2146EAA70);
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v89 = 0xD000000000000017;
        v89[1] = 0x800000021478FF90;
        v89[2] = 0xD00000000000001CLL;
        v89[3] = v119;
        swift_willThrow();

        (*(v135 + 8))(v137, v138);
        (*(v136 + 8))(v131, v139);
        (*(v21 + 8))(v118, v141);
        v63 = v130;
        v90 = v130[11];
        v91 = v130[13];

        v63[10] = v129;
        v63[11] = v71;
        v92 = v127;
        v63[12] = v126;
        v63[13] = v92;
        *(v63 + 112) = v128;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v75 = v121;
      v75[1] = 0x800000021478FF70;
      v75[2] = 0xD00000000000001CLL;
      v75[3] = v119;
      swift_willThrow();

      (*(v135 + 8))(v137, v138);
      (*(v136 + 8))(v131, v139);
      (*(v21 + 8))(v118, v141);
      v63 = v130;
      v76 = v130[6];
      v77 = v130[7];
      v78 = v130[8];

      sub_213FDC6D0(v77, v78);
      v63[5] = v129;
      v63[6] = v56;
      v79 = v123;
      v63[7] = v127;
      v63[8] = v79;
      *(v63 + 72) = v128;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v61 = v121;
    v61[1] = v51;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = v119;
    swift_willThrow();
    (*(v135 + 8))(v137, v138);
    (*(v136 + 8))(v131, v139);
    (*(v21 + 8))(v118, v141);
    v62 = v142;
    v63 = v130;
    v64 = v130[2];

    v63[1] = v127;
    v63[2] = v46;
    v63[3] = v122;
    *(v63 + 32) = v62;
    *(v63 + 33) = v129;
  }

  __swift_destroy_boxed_opaque_existential_1(v159);
  return sub_21432887C(v63, type metadata accessor for RCSFileInfo);
}

uint64_t RCSFileInfo.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36 - v6;
  v7 = sub_2146D8958();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E70, &qword_2146F5498);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430213C();
  sub_2146DAA28();
  LOBYTE(v42) = *v2;
  v44 = 0;
  sub_2143022BC();
  v17 = v41;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v41 = v10;
  v19 = v12;
  v20 = v40;
  LOBYTE(v42) = *(v2 + 1);
  v44 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E58, &qword_2146F5490);
  sub_214302310();
  sub_2146DA388();
  if ((*(v2 + 32) & 1) == 0)
  {
    v21 = *(v2 + 24);
    LOBYTE(v42) = 2;
    sub_2146DA368();
    v22 = *(v2 + 64);
    if (v22 != 1)
    {
      v42 = *(v2 + 56);
      v43 = v22;
      v44 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v38 = v11;
      if (*(v2 + 104))
      {
        v23 = *(v2 + 96);
        LOBYTE(v42) = 4;

        sub_2146DA328();

        v36 = type metadata accessor for RCSFileInfo();
        v37 = v2;
        v24 = v2 + *(v36 + 36);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
        v26 = v39;
        sub_213FB2E54(v24 + *(v25 + 28), v39, &unk_27C9131A0, &unk_2146E9D10);
        v27 = v20;
        if ((*(v20 + 48))(v26, 1, v7) == 1)
        {
          sub_213FB2DF4(v26, &unk_27C9131A0, &unk_2146E9D10);
        }

        else
        {
          v28 = *(v20 + 32);
          v29 = v41;
          v28(v41, v26, v7);
          LOBYTE(v42) = 5;
          sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
          v30 = v38;
          sub_2146DA388();
          (*(v27 + 8))(v29, v7);
          v31 = v36;
          v32 = *(v36 + 40);
          LOBYTE(v42) = 6;
          sub_2146D8B08();
          sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
          v33 = v37;
          sub_2146DA388();
          v34 = v33 + *(v31 + 44);
          if ((*(v34 + 25) & 1) == 0)
          {
            v35 = *(v34 + 24);
            v42 = *(v34 + 16);
            LOBYTE(v43) = v35 & 1;
            v44 = 7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
            sub_2142E1C30();
            sub_2146DA388();
            return (*(v19 + 8))(v15, v30);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141C9844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2143287C0(a1, a5, type metadata accessor for RCSFileInfo);
  v8 = type metadata accessor for RCSFileTransferInfo();
  v25 = a2;
  sub_213FB2E54(a2, a5 + *(v8 + 20), &qword_27C908E90, &qword_2146F54A0);
  sub_21439DFD0(&v29);
  v10 = v29;
  v9 = v30;
  v11 = v31;
  v12 = v32;
  v13 = v33;
  v14 = a5 + *(v8 + 24);
  *v14 = v29;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v28[0] = a3;
  v34 = v13;
  v35 = v13;
  v28[1] = a4;
  v29 = 0xD00000000000001FLL;
  v30 = 0x800000021478FFE0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  sub_213FDC9D0(v11, v12);
  v15 = v10(v28, &v35, &v29);
  if (v26)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v11, v12);

      sub_213FB2DF4(v25, &qword_27C908E90, &qword_2146F54A0);
      sub_21432887C(a1, type metadata accessor for RCSFileInfo);
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);

      result = sub_213FDC6D0(v17, v18);
      *v14 = v10;
      *(v14 + 8) = v9;
      *(v14 + 16) = a3;
      *(v14 + 24) = a4;
      *(v14 + 32) = v34;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD00000000000001FLL;
    v20[1] = 0x800000021478FFE0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v25, &qword_27C908E90, &qword_2146F54A0);
  sub_21432887C(a1, type metadata accessor for RCSFileInfo);
  v21 = *(v14 + 8);
  v22 = *(v14 + 16);
  v23 = *(v14 + 24);

  sub_213FDC6D0(v22, v23);
  *v14 = v10;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v34;
  return sub_21432887C(a5, type metadata accessor for RCSFileTransferInfo);
}

uint64_t sub_2141C9AF4()
{
  v1 = 0x69616E626D756874;
  if (*v0 != 1)
  {
    v1 = 0x49656C6946736C6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E49656C6966;
  }
}

uint64_t sub_2141C9B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214372FFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141C9B8C(uint64_t a1)
{
  v2 = sub_2143023E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141C9BC8(uint64_t a1)
{
  v2 = sub_2143023E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141C9C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v45 - v4;
  v56 = type metadata accessor for RCSFileInfo();
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E98, &qword_2146F54A8);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for RCSFileTransferInfo();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2143023E8();
  v19 = v57;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v57 = v5;
  v52 = v16;
  v20 = v55;
  LOBYTE(v60) = 0;
  sub_214328930(&qword_27C908EA8, type metadata accessor for RCSFileInfo);
  sub_2146DA1C8();
  v21 = v9;
  LOBYTE(v60) = 1;
  sub_21430243C();
  v22 = v57;
  sub_2146DA1C8();
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v59[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v50 = v8;
  v51 = v21;
  v54 = v60;
  v56 = v61;
  v25 = v52;
  sub_2143287C0(v8, v52, type metadata accessor for RCSFileInfo);
  sub_213FB2E54(v22, v25 + *(v13 + 20), &qword_27C908E90, &qword_2146F54A0);
  sub_21439DFD0(&v60);
  v27 = v60;
  v26 = v61;
  v28 = v62;
  v29 = v63;
  v30 = v64;
  v31 = v25 + *(v13 + 24);
  *v31 = v60;
  *(v31 + 8) = v26;
  *(v31 + 16) = v28;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  v59[0] = v54;
  v59[1] = v56;
  v65 = v30;
  v66 = v30;
  v60 = 0xD00000000000001FLL;
  v61 = 0x800000021478FFE0;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;

  v47 = v29;
  v48 = v28;
  sub_213FDC9D0(v28, v29);
  v46 = v26;
  v49 = v27;
  v32 = v27(v59, &v66, &v60);
  v33 = v54;
  if (v32)
  {
    sub_213FDC6D0(v48, v47);

    sub_213FB2DF4(v57, &qword_27C908E90, &qword_2146F54A0);
    sub_21432887C(v50, type metadata accessor for RCSFileInfo);
    (*(v23 + 8))(v12, v51);
    v34 = *(v31 + 8);
    v35 = *(v31 + 16);
    v36 = *(v31 + 24);

    sub_213FDC6D0(v35, v36);
    v37 = v46;
    *v31 = v49;
    *(v31 + 8) = v37;
    v38 = v56;
    *(v31 + 16) = v33;
    *(v31 + 24) = v38;
    *(v31 + 32) = v65;
    sub_214328704(v52, v53, type metadata accessor for RCSFileTransferInfo);
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  sub_214031C4C();
  swift_allocError();
  *v39 = 0xD00000000000001FLL;
  v39[1] = 0x800000021478FFE0;
  v39[2] = 0xD00000000000001CLL;
  v39[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v57, &qword_27C908E90, &qword_2146F54A0);
  sub_21432887C(v50, type metadata accessor for RCSFileInfo);
  (*(v23 + 8))(v12, v51);
  v40 = *(v31 + 8);
  v41 = *(v31 + 16);
  v42 = *(v31 + 24);

  sub_213FDC6D0(v41, v42);
  v43 = v46;
  *v31 = v49;
  *(v31 + 8) = v43;
  v44 = v47;
  *(v31 + 16) = v48;
  *(v31 + 24) = v44;
  *(v31 + 32) = v65;
  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_21432887C(v52, type metadata accessor for RCSFileTransferInfo);
}

uint64_t sub_2141CA244(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EB8, &qword_2146F54B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143023E8();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  type metadata accessor for RCSFileInfo();
  sub_214328930(&qword_27C908EC0, type metadata accessor for RCSFileInfo);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for RCSFileTransferInfo();
  v12 = *(v11 + 20);
  LOBYTE(v17) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  sub_2143024F0();
  sub_2146DA388();
  v13 = v3 + *(v11 + 24);
  v14 = *(v13 + 24);
  if (v14 != 1)
  {
    v17 = *(v13 + 16);
    v18 = v14;
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2141CA540()
{
  if (*v0)
  {
    result = 0x656D69746566696CLL;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2141CA580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000214795B40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
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

uint64_t sub_2141CA668(uint64_t a1)
{
  v2 = sub_2143025A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CA6A4(uint64_t a1)
{
  v2 = sub_2143025A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CA6E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = sub_2146D8B08();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908ED0, &qword_2146F54B8);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025A4();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v26 = 0;
    v14 = v24;
    v15 = sub_2146DA168();
    v17 = v16;
    v21 = v15;
    v25 = 1;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    v18 = type metadata accessor for BootstrappingInfo();
    v19 = v23;
    (*(v22 + 32))(v23 + *(v18 + 20), v7, v4);
    *v19 = v21;
    v19[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141CA99C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EE0, &qword_2146F54C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025A4();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2146DA328();
  if (!v2)
  {
    v13 = *(type metadata accessor for BootstrappingInfo() + 20);
    v15[14] = 1;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_2141CAB84@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD000000000000013, 0x8000000214790000, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_2141CAD74(uint64_t a1)
{
  v2 = sub_2143025F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CADB0(uint64_t a1)
{
  v2 = sub_2143025F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CADEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908EE8, &qword_2146F54C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143025F8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v21[0] = a2;
    v12 = *(&v24 + 1);
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    v15[2] = sub_213FDC8D0;
    v15[3] = 0;
    v15[4] = 1;
    v15[5] = sub_21403C354;
    v15[6] = 0;
    *(v14 + 16) = sub_21438F670;
    *(v14 + 24) = v15;
    *(inited + 32) = v14;
    sub_214042CD0(inited, &v24);
    v16 = v25;
    v22 = *(&v25 + 1);
    v23 = v25;
    v21[1] = "RCSFileTransferInfo.mlsFileInfo";
    v21[2] = *(&v24 + 1);

    sub_213FDCA18(v16, *(&v16 + 1));
    v17 = v27;
    sub_214032024(v27, v12, 2, 0xD000000000000013, 0x8000000214790000, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v17, v12);
    (*(v6 + 8))(v9, v5);

    sub_213FDC6BC(v23, v22);
    v18 = v26;
    v19 = v25;
    v20 = v21[0];
    *v21[0] = v24;
    *(v20 + 16) = v19;
    *(v20 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.init(with:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for CPIMMessage(0);
  return sub_214328704(a2, a3 + *(v5 + 20), type metadata accessor for CPIMMessage.Content);
}

uint64_t sub_2141CB200()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x73726564616568;
  }
}

uint64_t sub_2141CB234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2141CB310(uint64_t a1)
{
  v2 = sub_21430264C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CB34C(uint64_t a1)
{
  v2 = sub_21430264C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for CPIMMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F00, &qword_2146F54D8);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430264C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F10, &qword_2146F54E0);
    v23 = 0;
    sub_2143026A0();
    v16 = v21;
    sub_2146DA1C8();
    v19 = v24;
    v22 = 1;
    sub_214328930(&qword_27C908F28, type metadata accessor for CPIMMessage.Content);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for CPIMMessage(0);
    sub_214328704(v14, v15 + *(v17 + 20), type metadata accessor for CPIMMessage.Content);
    *v15 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F30, &qword_2146F54E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430264C();
  sub_2146DAA28();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F10, &qword_2146F54E0);
  sub_214302754();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for CPIMMessage(0) + 20);
    v13[6] = 1;
    type metadata accessor for CPIMMessage.Content(0);
    sub_214328930(&qword_27C908F48, type metadata accessor for CPIMMessage.Content);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141CB848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for SwiftRegexValidator();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = a3[1];
  v36 = *a3;
  v37 = v16;
  v38 = a3[2];
  v39 = *(a3 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  (*(v12 + 32))(v10, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_214328704(v10, v20 + v19, type metadata accessor for SwiftRegexValidator);
  *(v18 + 16) = sub_214302808;
  *(v18 + 24) = v20;
  *(inited + 32) = v18;
  sub_214042B80(inited, &v40);
  v22 = v40;
  v21 = v41;
  v23 = v43;
  v34 = v42;
  v24 = v44;
  v50[0] = a1;
  v50[1] = a2;
  v52 = v44;
  v40 = 0xD000000000000015;
  v41 = 0x8000000214790020;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  v25 = v35;
  v26 = v22(v50, &v52, &v40);
  if (v25)
  {
  }

  else
  {
    v35 = a1;
    if (v26)
    {

      result = swift_bridgeObjectRelease_n();
      v28 = v33;
      *v33 = v22;
      v28[1] = v21;
      v29 = v36;
      v28[2] = v35;
      v28[3] = a2;
      *(v28 + 32) = v24;
      v31 = v37;
      v30 = v38;
      v28[5] = v29;
      v28[6] = v31;
      v28[7] = v30;
      *(v28 + 32) = v39;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000015;
    v32[1] = 0x8000000214790020;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v40 = v22;
  v41 = v21;
  v42 = v34;
  v43 = v23;
  v44 = v24;
  *v45 = *v51;
  *&v45[3] = *&v51[3];
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  return sub_21430280C(&v40);
}

uint64_t sub_2141CBC34()
{
  if (*v0)
  {
    result = 0x74614470756F7267;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2141CBC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t sub_2141CBD44(uint64_t a1)
{
  v2 = sub_214302860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CBD80(uint64_t a1)
{
  v2 = sub_214302860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CBDBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for SwiftRegexValidator();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F58, &qword_2146F54F8);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214302860();
  v16 = v62;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v17 = v9;
  v57 = v4;
  v62 = v6;
  LOBYTE(v68) = 0;
  v18 = sub_2146DA168();
  v19 = v13;
  v21 = v20;
  v56 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F68, &qword_2146F5500);
  v79 = 1;
  sub_2143028B4();
  sub_2146DA1C8();
  v53 = v10;
  v23 = v80;
  v24 = v81;
  v25 = v82;
  v26 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v54 = v23;
  v52 = v24;
  v51 = v25;
  v55 = v26;
  sub_21430298C(v23);
  sub_2146D8D98();
  v27 = v5;
  (*(v59 + 32))(v5, v17, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v28 = swift_allocObject();
  v29 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v30 = swift_allocObject();
  sub_214328704(v27, v30 + v29, type metadata accessor for SwiftRegexValidator);
  *(v28 + 16) = sub_21438F684;
  *(v28 + 24) = v30;
  v31 = inited;
  *(inited + 32) = v28;
  sub_214042B80(v31, &v68);
  v32 = v68;
  v33 = v69;
  v60 = v70;
  v34 = v71;
  v35 = v72;
  v78[0] = v56;
  v78[1] = v21;
  LOBYTE(v63) = v72;
  v68 = 0xD000000000000015;
  v69 = 0x8000000214790020;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  v36 = v32(v78, &v63, &v68);
  LODWORD(v62) = v35;
  v59 = v21;
  if (v36)
  {

    v37 = v52;
    v38 = v51;
    v39 = v55;
    sub_21430299C(v54);
    (*(v61 + 8))(v19, v53);

    *&v63 = v32;
    *(&v63 + 1) = v33;
    v40 = v56;
    *&v64 = v56;
    *(&v64 + 1) = v59;
    LOBYTE(v65) = v35;
    v41 = v54;
    *(&v65 + 1) = v54;
    *&v66 = v37;
    *(&v66 + 1) = v38;
    v67 = v39;
    v42 = v58;
    *(v58 + 64) = v39;
    v43 = v66;
    v42[2] = v65;
    v42[3] = v43;
    v44 = v64;
    *v42 = v63;
    v42[1] = v44;
    sub_2143029AC(&v63, &v68);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v68 = v32;
    v69 = v33;
    v70 = v40;
    v71 = v59;
    v72 = v62;
    v74 = v41;
    v75 = v37;
    v76 = v38;
    v77 = v39;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD000000000000015;
    v45[1] = 0x8000000214790020;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    swift_willThrow();

    v46 = v54;
    v47 = v52;
    v48 = v51;
    sub_21430299C(v54);
    (*(v61 + 8))(v19, v53);

    __swift_destroy_boxed_opaque_existential_1(v85);
    v68 = v32;
    v69 = v33;
    v70 = v60;
    v71 = v34;
    v72 = v62;
    *v73 = *v84;
    *&v73[3] = *&v84[3];
    v74 = v46;
    v75 = v47;
    v76 = v48;
    v77 = v55;
  }

  return sub_21430280C(&v68);
}

uint64_t sub_2141CC564(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F80, &qword_2146F5508);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 40);
  v14 = *(v1 + 48);
  v15 = v10;
  v13 = *(v1 + 56);
  v21 = *(v1 + 64);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302860();
  sub_2146DAA28();
  if (v8)
  {
    LOBYTE(v17) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v16 + 8))(v7, v4);
    }

    else
    {

      v17 = v15;
      v18 = v14;
      v19 = v13;
      v20 = v21;
      v22 = 1;
      sub_21430298C(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F68, &qword_2146F5500);
      sub_214302A08();
      sub_2146DA388();
      sub_21430299C(v17);
      return (*(v16 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141CC7F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X8>)
{
  v63 = a6;
  v10 = *a1;
  v11 = type metadata accessor for IMCompositionIndication();
  v53 = a2;
  sub_213FB2E54(a2, &a7[v11[5]], &qword_27C913090, &unk_2146E9DB0);
  sub_2146A89E8(&v59);
  v12 = v60;
  v13 = v61;
  v14 = v62;
  sub_2146A8B08(&v54);
  v15 = v55;
  v16 = v56;
  v17 = v57;
  v18 = v58;
  *a7 = v10;
  v19 = &a7[v11[6]];
  *v19 = v59;
  *(v19 + 2) = v12;
  *(v19 + 3) = v13;
  v19[32] = v14;
  v46 = a7;
  v20 = &a7[v11[7]];
  *v20 = v54;
  *(v20 + 2) = v15;
  v20[24] = v16;
  v20[25] = v17;
  v20[26] = v18;
  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  LOBYTE(v15) = v19[32];
  *&v54 = a3;
  *(&v54 + 1) = a4;
  v51 = v15;
  v64 = v15;
  *&v59 = 0xD000000000000023;
  *(&v59 + 1) = 0x8000000214790040;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  v48 = v23;
  sub_213FDC9D0(v23, v24);
  v25 = v49;
  v50 = v22;
  v26 = v22(&v54, &v64, &v59);
  if (v25)
  {

LABEL_6:
    sub_213FB2DF4(v53, &qword_27C913090, &unk_2146E9DB0);
    v37 = *(v19 + 1);
    v38 = *(v19 + 2);
    v39 = *(v19 + 3);

    sub_213FDC6D0(v38, v39);
    *v19 = v22;
    *(v19 + 1) = v21;
    *(v19 + 2) = v48;
    *(v19 + 3) = v24;
    v19[32] = v51;
    return sub_21432887C(v46, type metadata accessor for IMCompositionIndication);
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000023;
    v36[1] = 0x8000000214790040;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v48, v24);

  v27 = *(v19 + 1);
  v28 = *(v19 + 2);
  v29 = *(v19 + 3);

  sub_213FDC6D0(v28, v29);
  *v19 = v50;
  *(v19 + 1) = v21;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v19[32] = v51;
  v31 = *v20;
  v30 = *(v20 + 1);
  v52 = *(v20 + 2);
  v32 = v20[24];
  v33 = v20[25];
  v34 = v20[26];
  *&v54 = a5;
  BYTE8(v54) = v63 & 1;
  v64 = v34;
  *&v59 = 0xD000000000000027;
  *(&v59 + 1) = 0x8000000214790070;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  v35 = v31(&v54, &v64, &v59);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000027;
    v43[1] = 0x8000000214790070;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v53, &qword_27C913090, &unk_2146E9DB0);
    v44 = *(v20 + 1);

    *v20 = v31;
    *(v20 + 1) = v30;
    *(v20 + 2) = v52;
    v20[24] = v32;
    v20[25] = v33;
    v20[26] = v34;
    return sub_21432887C(v46, type metadata accessor for IMCompositionIndication);
  }

  sub_213FB2DF4(v53, &qword_27C913090, &unk_2146E9DB0);
  v41 = v63 & 1;
  v42 = *(v20 + 1);

  *v20 = v31;
  *(v20 + 1) = v30;
  *(v20 + 2) = a5;
  v20[24] = v41;
  v20[25] = 0;
  v20[26] = v34;
  return result;
}

uint64_t sub_2141CCC18()
{
  v1 = 0x6574617473;
  v2 = 0x54746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x4968736572666572;
  }

  if (*v0)
  {
    v1 = 0x697463417473616CLL;
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