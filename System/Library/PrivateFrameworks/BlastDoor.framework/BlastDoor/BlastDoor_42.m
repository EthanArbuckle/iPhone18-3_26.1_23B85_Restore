uint64_t sub_2143BA150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F43646573756E75 && a2 == 0xED0000747865746ELL)
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

uint64_t sub_2143BA1E0(uint64_t a1)
{
  v2 = sub_2143BA390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BA21C(uint64_t a1)
{
  v2 = sub_2143BA390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewAudio.Constraints.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912690, &qword_214736F30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA28();
  sub_2146DA3B8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2143BA390()
{
  result = qword_280B30A30;
  if (!qword_280B30A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A30);
  }

  return result;
}

uint64_t PreviewAudio.Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912698, &qword_214736F38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA1F8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BA550(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912690, &qword_214736F30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA28();
  sub_2146DA3B8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PreviewAudio.powerLevels.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2143BA70C()
{
  if (*v0)
  {
    result = 0x76654C7265776F70;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t sub_2143BA750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x76654C7265776F70 && a2 == 0xEB00000000736C65)
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

uint64_t sub_2143BA830(uint64_t a1)
{
  v2 = sub_2143BAA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BA86C(uint64_t a1)
{
  v2 = sub_2143BAA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewAudio.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A0, &qword_214736F40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BAA6C();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA348();
  if (!v2)
  {
    v14 = v10;
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A8, &qword_214736F48);
    sub_2143BACC0(&qword_280B2E3B8);
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2143BAA6C()
{
  result = qword_280B30A48;
  if (!qword_280B30A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A48);
  }

  return result;
}

uint64_t PreviewAudio.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126B0, &qword_214736F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BAA6C();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_2146DA188();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A8, &qword_214736F48);
    v15[15] = 1;
    sub_2143BACC0(&qword_280B2E3B0);
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BACC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9126A8, &qword_214736F48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BlastDoor::PreviewAudio __swiftcall PreviewAudio.init(durationValue:powerLevelValues:)(Swift::Double durationValue, Swift::OpaquePointer powerLevelValues)
{
  *v2 = durationValue;
  *(v2 + 8) = powerLevelValues;
  result.duration = durationValue;
  result.powerLevels = powerLevelValues;
  return result;
}

unint64_t sub_2143BAD74()
{
  result = qword_280B30A10;
  if (!qword_280B30A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A10);
  }

  return result;
}

unint64_t sub_2143BADCC()
{
  result = qword_280B30A18;
  if (!qword_280B30A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A18);
  }

  return result;
}

unint64_t sub_2143BAE20(uint64_t a1)
{
  result = sub_2143BAE48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2143BAE48()
{
  result = qword_280B309F8;
  if (!qword_280B309F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B309F8);
  }

  return result;
}

unint64_t sub_2143BAE9C(uint64_t a1)
{
  *(a1 + 8) = sub_2143BAECC();
  result = sub_2143BAF20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143BAECC()
{
  result = qword_280B30A00;
  if (!qword_280B30A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A00);
  }

  return result;
}

unint64_t sub_2143BAF20()
{
  result = qword_280B30A08;
  if (!qword_280B30A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAudio.Constraints(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for PreviewAudio.Constraints(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_2143BB0BC()
{
  result = qword_27C9126B8;
  if (!qword_27C9126B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9126B8);
  }

  return result;
}

unint64_t sub_2143BB114()
{
  result = qword_27C9126C0;
  if (!qword_27C9126C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9126C0);
  }

  return result;
}

unint64_t sub_2143BB16C()
{
  result = qword_280B30A38;
  if (!qword_280B30A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A38);
  }

  return result;
}

unint64_t sub_2143BB1C4()
{
  result = qword_280B30A40;
  if (!qword_280B30A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A40);
  }

  return result;
}

unint64_t sub_2143BB21C()
{
  result = qword_280B30A20;
  if (!qword_280B30A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A20);
  }

  return result;
}

unint64_t sub_2143BB274()
{
  result = qword_280B30A28;
  if (!qword_280B30A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30A28);
  }

  return result;
}

unint64_t sub_2143BB2C8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_213FB7994;
  v5[3] = 0;
  v5[4] = 3072;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2143BB430@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143BB488(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2143BB4F0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2143BB53C(__n128 *a1)
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

uint64_t sub_2143BB598@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2143BB5E4(__n128 *a1)
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

uint64_t sub_2143BB640()
{
  v1 = *(v0 + 80);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 72);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143BB6C8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 136);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BB744()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BB7C0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

uint64_t sub_2143BB900()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2143BB90C(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2143BB9FC()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2143BBA30(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2143BBAB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 72);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143BBB2C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143BBBDC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143BBCA8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 80);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 72);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143BBD48;
  }

  return result;
}

uint64_t sub_2143BBD48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143BBE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143BBEDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2143BBF64(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143BC004;
}

void sub_2143BC004(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 64);
  v9 = *(v3 + 72);
  v11 = *(v3 + 80);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 64);

    sub_214032564(v9, v11);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143BC114()
{
  v1 = *(v0 + 96);
  sub_213FDCA18(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_2143BC148(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 96), *(v2 + 104));
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_2143BC1D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 144);
  if (v4)
  {
    *a2 = *(a1 + 136);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BC240(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143BC2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v12 = *(v3 + 152);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 144);

    *(v3 + 136) = a1;
    *(v3 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143BC438(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 144);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 136);
    a1[1] = v3;

    return sub_2143BC4D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BC4D4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 120);
    v11 = *(v4 + 128);
    v16 = *(v4 + 152);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 136) = v5;
      *(v4 + 144) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 120);
  v6 = *(v4 + 128);
  v16 = *(v4 + 152);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 136) = v5;
  *(v4 + 144) = v3;
}

uint64_t sub_2143BC6F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);

  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v6;
  *(a2 + 144) = v5;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_2143BC76C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v7 = *(v1 + 136);
  v6 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BC804;
}

void sub_2143BC804(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 128);
  v10 = *(v3 + 144);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 128);

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_2143BC904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 184);
  if (v4)
  {
    *a2 = *(a1 + 176);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BC974(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143BCA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v12 = *(v3 + 192);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 184);

    *(v3 + 176) = a1;
    *(v3 + 184) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143BCB6C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 184);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 176);
    a1[1] = v3;

    return sub_2143BCC08;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BCC08(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 160);
    v11 = *(v4 + 168);
    v16 = *(v4 + 192);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 176) = v5;
      *(v4 + 184) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 160);
  v6 = *(v4 + 168);
  v16 = *(v4 + 192);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 176) = v5;
  *(v4 + 184) = v3;
}

uint64_t sub_2143BCE28(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 168);
  v9 = *(a2 + 184);

  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  *(a2 + 176) = v6;
  *(a2 + 184) = v5;
  *(a2 + 192) = v7;
  return result;
}

void (*sub_2143BCEA0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 168);
  v7 = *(v1 + 176);
  v6 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BCF38;
}

void sub_2143BCF38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 168);
  v10 = *(v3 + 184);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 168);

    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  free(v2);
}

unint64_t sub_2143BD06C()
{
  result = qword_27C9126C8;
  if (!qword_27C9126C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9126C8);
  }

  return result;
}

uint64_t sub_2143BD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy195_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 191) = *(a2 + 191);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2143BD198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 195))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143BD1E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 194) = 0;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 195) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 195) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143BD278()
{
  result = qword_27C9126D0;
  if (!qword_27C9126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9126D0);
  }

  return result;
}

uint64_t sub_2143BD2CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_2143BDD00(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_2143BDC9C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_2146D8A18();
    v17 = v16;
    result = sub_213FB54FC(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_2143BD420(uint64_t a1, unint64_t a2, char *a3, char a4)
{
  v6 = *a3;
  sub_2143BD9C8(a4 & 1, &v25);
  if (!v26)
  {
    sub_213FB2DF4(&v25, &qword_27C9126E8, &qword_2147377C8);
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  sub_214047B54(&v25, v27);
  v7 = sub_2146D96A8();
  v8 = v28;
  v9 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v9 + 8))(v8, v9);
  v10 = sub_2146D96A8();

  if (v10 >= v7)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v19 = sub_2146D9208();
    __swift_project_value_buffer(v19, qword_280B34D98);

    v20 = sub_2146D91E8();
    v21 = sub_2146D9BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v25 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2144AEA38(a1, a2, &v25);
      _os_log_impl(&dword_213FAF000, v20, v21, "Destination URI is not valid: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x216056AC0](v23, -1, -1);
      MEMORY[0x216056AC0](v22, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
    goto LABEL_16;
  }

  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v25) = v6;
  v13 = (*(v12 + 16))(a1, a2, &v25, v11, v12);
  if ((v13 & 1) == 0)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v14 = sub_2146D9208();
    __swift_project_value_buffer(v14, qword_280B34D98);

    v15 = sub_2146D91E8();
    v16 = sub_2146D9BA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v25 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2144AEA38(a1, a2, &v25);
      _os_log_impl(&dword_213FAF000, v15, v16, "Destination URI is not valid: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v13 & 1;
}

uint64_t sub_2143BD77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912700, &unk_2147377E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68F0;
  *(inited + 32) = 0x3A6F746C69616DLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for EmailValidator;
  *(inited + 80) = &off_282680E48;
  *(inited + 88) = 980182388;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 128) = &type metadata for PhoneNumberValidator;
  *(inited + 136) = &off_282680E30;
  *(inited + 144) = 0x3A6E656B6F74;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = &type metadata for TokenValidator;
  *(inited + 192) = &off_282680E18;
  *(inited + 200) = 0x3A7A69623A6E7275;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 240) = &type metadata for BusinessIdentifierValidator;
  *(inited + 248) = &off_282680DE8;
  v1 = sub_214046700(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904030, &qword_2146EA978);
  result = swift_arrayDestroy();
  off_27C9126D8 = v1;
  return result;
}

uint64_t sub_2143BD8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912700, &unk_2147377E0);
  inited = swift_initStackObject();
  *(inited + 32) = 980445555;
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 72) = &type metadata for SIPAddressValidator;
  *(inited + 80) = &off_282680E00;
  *(inited + 88) = 0x3A6F746C69616DLL;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 128) = &type metadata for EmailValidator;
  *(inited + 136) = &off_282680E48;
  *(inited + 144) = 980182388;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 184) = &type metadata for PhoneNumberValidator;
  *(inited + 192) = &off_282680E30;
  v1 = sub_214046700(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904030, &qword_2146EA978);
  result = swift_arrayDestroy();
  qword_27C9126E0 = v1;
  return result;
}

uint64_t sub_2143BD9C8@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27C902F90 != -1)
    {
      swift_once();
    }

    v2 = &off_27C9126D8;
    goto LABEL_7;
  }

  if (qword_27C902F98 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = &qword_27C9126E0;
LABEL_7:
    v3 = *v2;
    v4 = (*v2 + 64);
    v5 = 1 << *(*v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *v4;
    v8 = (v5 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v9 = 0;
    if (v7)
    {
      break;
    }

LABEL_11:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0;

        goto LABEL_18;
      }

      v7 = v4[v10];
      ++v9;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v10 = v9;
LABEL_14:
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_214053840(*(v3 + 56) + 40 * v11, v22);
    *&v21 = v14;
    *(&v21 + 1) = v13;
    v17 = v21;
    v18 = v22[0];
    v19 = v22[1];
    v20 = v23;

    if (sub_2146D9778())
    {
      break;
    }

    v7 &= v7 - 1;
    sub_213FB2DF4(&v17, &qword_27C9126F0, &qword_2147377D0);
    v9 = v10;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;

  if (*(&v24 + 1))
  {

    return sub_214047B54(&v25, a2);
  }

  else
  {
LABEL_18:
    result = sub_213FB2DF4(&v24, &qword_27C9126F8, &qword_2147377D8);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2143BDC9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2143BDD00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_2143BDDB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2146D96C8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2146D97B8();
}

uint64_t sub_2143BDE64(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2146D9778() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = sub_2146D96A8();
  v10 = sub_2143BDDB4(v9, a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((v10 ^ v12) < 0x4000)
  {
    goto LABEL_10;
  }

  if (sub_2146D9D78() > 63)
  {
    goto LABEL_10;
  }

  v17 = MEMORY[0x216054530](v10, v12, v14, v16);
  v19 = v18;

  v26[0] = v17;
  v26[1] = v19;
  sub_2146D8678();
  sub_214069AD8();
  v20 = sub_2146D9DF8();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  if (!v22)
  {
LABEL_10:

LABEL_11:
    v24 = 0;
    return v24 & 1;
  }

  if (v20 == v17 && v22 == v19)
  {

    v24 = 1;
  }

  else
  {
    v24 = sub_2146DA6A8();
  }

  return v24 & 1;
}

BOOL sub_2143BE088(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = *a3;
  if (v10 == 2 || (v10 & 1) == 0 || (sub_2146D9778() & 1) == 0)
  {
    return 0;
  }

  v11 = sub_2146D96A8();
  v12 = sub_2143BDDB4(v11, a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  MEMORY[0x216054530](v12, v14, v16, v18);

  sub_2146D8B18();

  v19 = sub_2146D8B88();
  v20 = (*(*(v19 - 8) + 48))(v9, 1, v19) != 1;
  sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
  return v20;
}

unint64_t sub_2143BE224(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  if ((sub_2146D9778() & 1) == 0)
  {
    goto LABEL_19;
  }

  v44 = v5;

  v6 = sub_2146D96A8();
  v7 = sub_2143BDDB4(v6, a1, a2);
  v9 = v8;

  v10 = v9 >> 14;
  if (v7 >> 14 == v9 >> 14)
  {
LABEL_18:

LABEL_19:
    v31 = 0;
    return v31 & 1;
  }

  v11 = v7 >> 14;
  while (sub_2146D9D88() != 47 || v12 != 0xE100000000000000)
  {
    v13 = sub_2146DA6A8();

    if (v13)
    {
      goto LABEL_10;
    }

    v11 = sub_2146D9D48() >> 14;
    if (v11 == v10)
    {
      goto LABEL_18;
    }
  }

LABEL_10:
  if (v11 < v7 >> 14)
  {
    __break(1u);
    goto LABEL_32;
  }

  result = sub_2146D9D98();
  v43 = v17;
  if (v10 < v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = result;
  v19 = v15;
  v20 = v16;
  sub_2146D9D98();
  v22 = v21;

  result = sub_2146D9D58();
  if (v23)
  {
    result = v22;
  }

  if (v22 >> 14 >= result >> 14)
  {
    v24 = sub_2146D9D98();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    if ((v18 ^ v19) >= 0x4000 && (v24 ^ v26) >= 0x4000)
    {
      v32 = sub_2146D9D78();
      v33 = MEMORY[0x216054530](v18, v19, v43, v20);
      v35 = v34;

      if (v32 >= sub_2146D96A8())
      {
        v36 = HIBYTE(v35) & 0xF;
        v45[0] = v33;
        v45[1] = v35;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        v45[2] = 0;
        v45[3] = v36;

        while (1)
        {
          sub_2146D96F8();
          if (!v37)
          {
            break;
          }

          sub_2146D9508();
          v39 = v38;

          if (v39)
          {

            goto LABEL_18;
          }
        }

        v40 = MEMORY[0x216054530](v24, v26, v28, v30);
        v42 = v41;

        LOBYTE(v45[0]) = v44;
        if (sub_2143BD420(v40, v42, v45, 0))
        {

          v31 = 1;
        }

        else
        {
          LOBYTE(v45[0]) = v44;
          v31 = sub_2143BDE64(v40, v42);
        }

        return v31 & 1;
      }
    }

    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_2143BE654()
{
  result = qword_27C912708;
  if (!qword_27C912708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912708);
  }

  return result;
}

uint64_t sub_2143BE6A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 57);
  v7 = *(v0 + 88);
  v8 = *(v0 + 128);
  v28 = *(v0 + 80);
  v29 = *(v0 + 120);
  v9 = *(v0 + 168);
  v30 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  *(inited + 32) = 0x656475746974616CLL;
  *(inited + 40) = 0xE800000000000000;
  if ((v3 & 1) == 0)
  {
    v11 = inited;
    if (v2)
    {
      v12 = 0;
      v13 = 0;
      v11[7] = 0;
      v11[8] = 0;
    }

    else
    {
      v12 = sub_2146D9AE8();
      v13 = sub_21403EBDC();
    }

    v11[6] = v12;
    v11[9] = v13;
    v11[10] = 0x64757469676E6F6CLL;
    v11[11] = 0xE900000000000065;
    if ((v6 & 1) == 0)
    {
      if (v5)
      {
        v14 = 0;
        v15 = 0;
        v11[13] = 0;
        v11[14] = 0;
      }

      else
      {
        v14 = sub_2146D9AE8();
        v15 = sub_21403EBDC();
      }

      v11[12] = v14;
      v11[15] = v15;
      v11[16] = 0x7972657571;
      v11[17] = 0xE500000000000000;
      if (v7 != 1)
      {
        if (v7)
        {
          v16 = MEMORY[0x277D837D0];
          v17 = v28;
          v18 = v7;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v16 = 0;
          v11[20] = 0;
        }

        v11[18] = v17;
        v11[19] = v18;
        v11[21] = v16;
        v11[22] = 0x6C6562616CLL;
        v11[23] = 0xE500000000000000;
        if (v8 != 1)
        {
          if (v8)
          {
            v19 = MEMORY[0x277D837D0];
            v20 = v29;
            v21 = v8;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v19 = 0;
            v11[26] = 0;
          }

          v11[24] = v20;
          v11[25] = v21;
          v11[27] = v19;
          v11[28] = 0x6B6361626C6C6166;
          v11[29] = 0xEB000000006C7255;
          if (!v9)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v11[32] = 0;
LABEL_21:
            v11[30] = v22;
            v11[31] = v23;
            v11[33] = v24;
            sub_213FDC9D0(v28, v7);
            sub_213FDC9D0(v29, v8);
            sub_213FDC9D0(v30, v9);
            v25 = sub_214045690(v11);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
            swift_arrayDestroy();
            v26 = sub_2140418B8(v25);

            return v26;
          }

          if (v9 != 1)
          {
            v24 = MEMORY[0x277D837D0];
            v22 = v30;
            v23 = v9;
            goto LABEL_21;
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143BE9A8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143BEA90()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143BEB64()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143BEC48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2143BF650();
  *a2 = result;
  return result;
}

void sub_2143BEC78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656475746974616CLL;
  v5 = 0xE500000000000000;
  v6 = 0x7972657571;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64757469676E6F6CLL;
    v3 = 0xE900000000000065;
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

uint64_t sub_2143BED1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2143BF650();
  *a1 = result;
  return result;
}

uint64_t sub_2143BED44(uint64_t a1)
{
  v2 = sub_2143BF46C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BED80(uint64_t a1)
{
  v2 = sub_2143BF46C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143BEDBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912710, &qword_214737990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BF46C();
  sub_2146DAA08();
  if (!v2)
  {
    v36 = 0;
    v11 = sub_2146DA118();
    v13 = v12;
    v14 = v11;
    v36 = 1;
    v15 = sub_2146DA118();
    v35 = v16;
    v32 = v15;
    v36 = 2;
    v17 = sub_2146DA0F8();
    v20 = v19;
    v31 = v17;
    v36 = 3;
    v29 = sub_2146DA0F8();
    v30 = v21;
    v36 = 4;
    v22 = sub_2146DA0F8();
    sub_2141004D0(v14, v13 & 1, v32, v35 & 1, v31, v20, v29, v30, v33, v22, v23);
    (*(v6 + 8))(v9, v5);
    v24 = v33[9];
    *(a2 + 128) = v33[8];
    *(a2 + 144) = v24;
    *(a2 + 160) = v33[10];
    *(a2 + 176) = v34;
    v25 = v33[5];
    *(a2 + 64) = v33[4];
    *(a2 + 80) = v25;
    v26 = v33[7];
    *(a2 + 96) = v33[6];
    *(a2 + 112) = v26;
    v27 = v33[1];
    *a2 = v33[0];
    *(a2 + 16) = v27;
    v28 = v33[3];
    *(a2 + 32) = v33[2];
    *(a2 + 48) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BF0B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912720, &qword_214737998);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 25);
  v23 = *(v1 + 48);
  v28 = *(v1 + 56);
  v22 = *(v1 + 57);
  v10 = *(v1 + 80);
  v20 = *(v1 + 88);
  v21 = v10;
  v11 = *(v1 + 120);
  v18 = *(v1 + 128);
  v19 = v11;
  v12 = *(v1 + 160);
  v16 = *(v1 + 168);
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BF46C();
  sub_2146DAA28();
  if (v9)
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v26 = v7;
  LOBYTE(v27) = v8 & 1;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2143BF4C0(&qword_280B2E3A8, &qword_27C9058A0, &unk_2147379A0);
  v14 = v24;
  sub_2146DA388();
  if (!v14)
  {
    if ((v22 & 1) == 0)
    {
      v26 = v23;
      LOBYTE(v27) = v28 & 1;
      v29 = 1;
      sub_2146DA388();
      if (v20 != 1)
      {
        v26 = v21;
        v27 = v20;
        v29 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_2143BF4C0(&qword_280B30BA8, &qword_27C904008, &qword_2146EC050);
        sub_2146DA388();
        if (v18 != 1)
        {
          v26 = v19;
          v27 = v18;
          v29 = 3;
          sub_2146DA388();
          if (v16 != 1)
          {
            v26 = v17;
            v27 = v16;
            v29 = 4;
            sub_2146DA388();
            return (*(v25 + 8))(v6, v3);
          }
        }
      }
    }

    goto LABEL_13;
  }

  return (*(v25 + 8))(v6, v3);
}

unint64_t sub_2143BF46C()
{
  result = qword_27C912718;
  if (!qword_27C912718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912718);
  }

  return result;
}

uint64_t sub_2143BF4C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2143BF54C()
{
  result = qword_27C912728;
  if (!qword_27C912728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912728);
  }

  return result;
}

unint64_t sub_2143BF5A4()
{
  result = qword_27C912730;
  if (!qword_27C912730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912730);
  }

  return result;
}

unint64_t sub_2143BF5FC()
{
  result = qword_27C912738;
  if (!qword_27C912738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912738);
  }

  return result;
}

uint64_t sub_2143BF650()
{
  v0 = sub_2146DA098();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2143BF69C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2143BF800@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143BF84C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2143BF8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2143BF8F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[6].n128_u64[1];
  v6 = v1[7].n128_u64[0];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2143BF94C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BF9C8()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BFA38@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 3006)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 2006)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2143BFA54()
{
  if (*v0)
  {
    return 3006;
  }

  else
  {
    return 2006;
  }
}

uint64_t sub_2143BFA6C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 3006;
  }

  else
  {
    v2 = 2006;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143BFAC0()
{
  if (*v0)
  {
    v1 = 3006;
  }

  else
  {
    v1 = 2006;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2143BFAFC()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 3006;
  }

  else
  {
    v2 = 2006;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

void *sub_2143BFB4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 3006)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 2006)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2143BFB6C(uint64_t *a1@<X8>)
{
  v2 = 2006;
  if (*v1)
  {
    v2 = 3006;
  }

  *a1 = v2;
}

uint64_t sub_2143BFC70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2143BFCA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2143BFCF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2143BFD28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2143BFD80()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_2143BFD88(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2143BFDB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    *a2 = *(a1 + 72);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BFE20(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143BFED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v12 = *(v3 + 88);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 80);

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143C0018(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C00B4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 56);
    v11 = *(v4 + 64);
    v16 = *(v4 + 88);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 72) = v5;
      *(v4 + 80) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 56);
  v6 = *(v4 + 64);
  v16 = *(v4 + 88);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 72) = v5;
  *(v4 + 80) = v3;
}

uint64_t sub_2143C02D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2143C034C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

void sub_2143C03E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 64);

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143C04B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C051C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143C05C4(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v10 = *(v2 + 120);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 112);

    *(v2 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143C0700(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C0798(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 96);
    v10 = *(v4 + 104);
    v14 = *(v4 + 120);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 112) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 96);
  v5 = *(v4 + 104);
  v14 = *(v4 + 120);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 112) = v3;
}

uint64_t sub_2143C0978(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 104);
  v8 = *(a2 + 112);

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v5;
  *(a2 + 120) = v6;
  return result;
}

void (*sub_2143C09EC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

void sub_2143C0A84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 104);
  v8 = *(v3 + 112);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v6;
    *(v3 + 120) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 104);

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v6;
    *(v3 + 120) = v7;
  }

  free(v2);
}

uint64_t sub_2143C0B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2142E597C(v2, v3, v4);
}

__n128 sub_2143C0B58(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_2142E58B8(v1[16], v1[17], v1[18]);
  result = v4;
  *(v1 + 8) = v4;
  v1[18] = v2;
  return result;
}

uint64_t sub_2143C0BC0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_2143C0BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_2143C0C48()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000011, 0x8000000214737B70);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v2, v3);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2143C0D5C()
{
  result = qword_27C912740;
  if (!qword_27C912740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912740);
  }

  return result;
}

uint64_t sub_2143C0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2143C0E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2143C0ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143C0F54()
{
  result = qword_27C912748;
  if (!qword_27C912748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912748);
  }

  return result;
}

unint64_t sub_2143C0FA8(uint64_t a1)
{
  *(a1 + 8) = sub_2142EA230();
  result = sub_2142EA38C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C0FD8(uint64_t result, int a2, int a3)
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

uint64_t sub_2143C1034(uint64_t a1, uint64_t a2)
{
  v3 = sub_2146D95B8();
  if (*(a2 + 16))
  {
    v5 = sub_21408C300(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v5);
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2143C10A0()
{
  v1 = CGImageSourceGetType(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2146D95B8();

  return v3;
}

uint64_t sub_2143C1108()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double sub_2143C1138()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2143C1158()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2143C1190(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = 0.0;
  while (1)
  {
    *&result = COERCE_DOUBLE(a3(a1));
    if (v3)
    {
      break;
    }

    if (v9)
    {
      v7 = v7 + 0.1;
      if (a2 == a1)
      {
        return result;
      }
    }

    else
    {
      v7 = v7 + *&result;
      if (a2 == a1)
      {
        return result;
      }
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_2143C122C(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v5 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v6 = v5;
  sub_214045EE0(inited);
  swift_setDeallocating();
  sub_2143C2394(inited + 32);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageSourceCopyPropertiesAtIndex(v2, 0, v7);

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v40 = 0;
      sub_2146D9478();
    }
  }

  v9 = sub_2146D9B18();
  v10 = sub_2146D9B18();
  v11 = sub_2146D9588();
  v12 = sub_2146D9588();
  v38 = v11;
  v39 = CFStringCompare(v11, v12, 1uLL);

  v13 = sub_2146D9B18();
  LODWORD(v12) = sub_2146DA9D8();

  v37 = v12;
  if ((v12 - 5) > 3)
  {
    v17 = v9;
    v36 = sub_2146D9B08();

    v18 = v10;
    v35 = sub_2146D9B08();
  }

  else
  {
    v14 = v10;
    v15 = v9;
    v36 = sub_2146D9B08();
    v16 = v15;
    v35 = sub_2146D9B08();
  }

  Count = CGImageSourceGetCount(v2);
  if (Count < 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_2143C19C0();
  }

  v20 = v2;
  v21 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = sub_2146D9588();
  v24 = CGImageMetadataCopyTagWithPath(v22, 0, v23);

  if (!v24)
  {
    v26 = v10;

    goto LABEL_19;
  }

  v25 = CGImageMetadataTagCopyValue(v24);

  if (v25)
  {
    v26 = v10;
    if (swift_dynamicCast())
    {
      v27 = v40;
      v28 = v41;
      goto LABEL_20;
    }
  }

  else
  {
LABEL_17:
    v26 = v10;
  }

LABEL_19:
  v27 = 0;
  v28 = 0;
LABEL_20:
  v29 = CGImageSourceGetType(v20);
  if (v29)
  {
    v30 = v29;
    v31 = sub_2146D95B8();
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v35;
  *(a1 + 32) = Count;
  *(a1 + 40) = v37;
  *(a1 + 44) = v39 == kCFCompareEqualTo;
  *(a1 + 48) = v27;
  *(a1 + 56) = v28;
  *(a1 + 64) = v34 & 1;
}

uint64_t sub_2143C19C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v2 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v3 = v2;
  sub_214045EE0(inited);
  swift_setDeallocating();
  sub_2143C2394(inited + 32);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v4 = sub_2146D9468();

  v5 = CGImageSourceCopyProperties(v0, v4);

  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2146D9478();
    }
  }

  return 0;
}

double sub_2143C1E68(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2146D9478();
    }
  }

  return 0.0;
}

uint64_t sub_2143C2394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C2420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_2143C247C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2143C24F4()
{
  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  sub_2146D91D8();
  v1 = sub_2143C25AC(v0);
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_2143C25AC(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Header(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DigitalTouchBalloon(0);
  v7 = sub_2143C27C4(a1 + *(v6 + 20));
  v9 = v8;
  v11 = v10;
  sub_2143C2AFC(a1, v5);
  v12 = &v5[*(v2 + 28)];
  v13 = *v12;
  v14 = v12[1];
  sub_21402D9F8(v7, v9);
  sub_213FDC6BC(v13, v14);
  *v12 = v7;
  v12[1] = v9;
  v5[*(v2 + 20)] = v11;
  sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header);
  v15 = sub_2146D8FC8();
  sub_2143C5094(v5, type metadata accessor for ETP_Header);
  sub_213FB54FC(v7, v9);
  return v15;
}

uint64_t sub_2143C27C4(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DigitalTouchMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143C4FE4(a1, v9, type metadata accessor for DigitalTouchMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v19 = *(v9 + 1);
        v34 = *v9;
        v35 = v19;
        *&v36 = *(v9 + 4);
        v20 = *(v9 + 1);
        v29 = *v9;
        v30 = v20;
        *&v31 = *(v9 + 4);
        v14 = sub_2143C49FC(&v29);
        sub_2142EE378(&v34);
      }

      else
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2143C4F7C(v9, v5, type metadata accessor for VideoMessage);
      v14 = sub_2143C3934(v5);
      sub_2143C5094(v5, type metadata accessor for VideoMessage);
    }

    else
    {
      v22 = *(v9 + 1);
      v23 = *(v9 + 2);
      v24 = v9[24];
      *&v34 = *v9;
      *(&v34 + 1) = v22;
      *&v35 = v23;
      BYTE8(v35) = v24;
      v14 = sub_2143C4558(&v34);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *(v9 + 3);
      v16 = *(v9 + 1);
      v36 = *(v9 + 2);
      v37 = v15;
      v17 = *(v9 + 3);
      v38[0] = *(v9 + 4);
      v18 = *(v9 + 1);
      v34 = *v9;
      v35 = v18;
      v31 = v36;
      v32 = v17;
      v33[0] = *(v9 + 4);
      *(v38 + 14) = *(v9 + 78);
      *(v33 + 14) = *(v9 + 78);
      v29 = v34;
      v30 = v16;
      v14 = sub_2143C3694(&v29);
      sub_2142EDB54(&v34);
    }

    else
    {
      v25 = *(v9 + 1);
      v26 = *(v9 + 2);
      v27 = v9[24];
      *&v34 = *v9;
      *(&v34 + 1) = v25;
      *&v35 = v26;
      BYTE8(v35) = v27;
      v14 = sub_2143C2C04(&v34);
    }
  }

  else
  {
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v13 = v9[24];
    if (EnumCaseMultiPayload)
    {
      v21 = v9[25];
      *&v34 = *v9;
      *(&v34 + 1) = v11;
      *&v35 = v12;
      BYTE8(v35) = v13;
      BYTE9(v35) = v21;
      v14 = sub_2143C30B8(&v34);
    }

    else
    {
      *&v34 = *v9;
      *(&v34 + 1) = v11;
      *&v35 = v12;
      BYTE8(v35) = v13;
      v14 = sub_2143C2C04(&v34);
    }
  }

  return v14;
}

int *sub_2143C2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = type metadata accessor for ETP_Header(0);
  *(a2 + v4[5]) = 8;
  v5 = a2 + v4[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a2 + v4[7]) = xmmword_2146E68C0;
  v6 = a2 + v4[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + v4[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v4[10];
  *(a2 + v8) = 2;
  v9 = a2 + v4[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  *v7 = sub_2146D8B28();
  v7[1] = v10;
  result = type metadata accessor for DigitalTouchHeader(0);
  *v5 = *(a1 + result[6]);
  *(v5 + 8) = 0;
  *v9 = *(a1 + result[7]);
  *(v9 + 8) = 0;
  *(a2 + v8) = *(a1 + result[8]);
  v12 = a1 + result[5];
  if ((*(v12 + 4) & 1) == 0)
  {
    *v6 = *v12;
    *(v6 + 4) = 0;
  }

  return result;
}

uint64_t sub_2143C2C04(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Tap(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  sub_2146D8DE8();
  v7 = &v5[*(v2 + 20)];
  *v7 = xmmword_2146E68C0;
  v8 = &v5[*(v2 + 24)];
  *v8 = xmmword_2146E68C0;
  v42[1] = v2;
  v9 = &v5[*(v2 + 28)];
  *v9 = xmmword_2146E68C0;
  if (v6)
  {
    v42[0] = v9;
    v10 = *(v6 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v43 = MEMORY[0x277D84F90];

      sub_21409FE8C(0, v10, 0);
      v11 = v43;
      v12 = *(v43 + 16);
      v13 = 32;
      do
      {
        v14 = *(v6 + v13);
        v43 = v11;
        v15 = *(v11 + 24);
        v2 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_21409FE8C((v15 > 1), v12 + 1, 1);
          v11 = v43;
        }

        *(v11 + 16) = v2;
        *(v11 + 4 * v12 + 32) = v14;
        v13 += 32;
        ++v12;
        --v10;
      }

      while (v10);
    }

    v16 = *(v11 + 16);
    if (!(v16 >> 61))
    {
      v17 = sub_214601D60(v11 + 32, v11 + 32 + 4 * v16);
      v19 = v18;

      sub_213FDC6BC(*v8, *(v8 + 1));
      *v8 = v17;
      *(v8 + 1) = v19;
      v20 = *(v6 + 16);
      v21 = MEMORY[0x277D84F90];
      if (!v20)
      {
LABEL_17:
        v26 = *(v21 + 16);
        if (v26 + 0x4000000000000000 >= 0)
        {
          v27 = sub_214601D60(v21 + 32, v21 + 32 + 2 * v26);
          v29 = v28;

          sub_213FDC6BC(*v7, *(v7 + 1));
          *v7 = v27;
          *(v7 + 1) = v29;
          v30 = *(v6 + 16);
          v31 = MEMORY[0x277D84F90];
          if (v30)
          {
            v43 = MEMORY[0x277D84F90];

            sub_21409FE8C(0, v30, 0);
            v31 = v43;
            v2 = *(v43 + 16);
            v32 = 60;
            do
            {
              v33 = *(v6 + v32);
              v43 = v31;
              v34 = *(v31 + 24);
              if (v2 >= v34 >> 1)
              {
                sub_21409FE8C((v34 > 1), v2 + 1, 1);
                v31 = v43;
              }

              *(v31 + 16) = v2 + 1;
              *(v31 + 4 * v2 + 32) = v33;
              v32 += 32;
              ++v2;
              --v30;
            }

            while (v30);
          }

          v35 = *(v31 + 16);
          if (!(v35 >> 61))
          {
            v36 = sub_214601D60(v31 + 32, v31 + 32 + 4 * v35);
            v38 = v37;

            v39 = v42[0];
            sub_213FDC6BC(*v42[0], *(v42[0] + 8));
            *v39 = v36;
            v39[1] = v38;
            sub_2143C504C(&qword_27C912780, type metadata accessor for ETP_Tap);
            v40 = sub_2146D8FC8();
LABEL_26:
            sub_2143C5094(v5, type metadata accessor for ETP_Tap);
            return v40;
          }

LABEL_30:
          __break(1u);
          swift_once();
          sub_2146D91D8();

          v40 = 0;
          goto LABEL_26;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v43 = MEMORY[0x277D84F90];

      sub_21409FE6C(0, v20, 0);
      v22 = 0;
      v21 = v43;
      v23 = (v6 + 58);
      while (v22 < *(v6 + 16))
      {
        if (*v23)
        {
          goto LABEL_31;
        }

        v2 = *(v23 - 1);
        v43 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21409FE6C((v24 > 1), v25 + 1, 1);
          v21 = v43;
        }

        ++v22;
        *(v21 + 16) = v25 + 1;
        *(v21 + 2 * v25 + 32) = v2;
        v23 += 32;
        if (v20 == v22)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C30B8(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Doodle(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 25);
  sub_2146D8DE8();
  v8 = &v5[*(v2 + 5)];
  *v8 = 0;
  v8[4] = 1;
  v9 = &v5[*(v2 + 6)];
  *v9 = xmmword_2146E68C0;
  v10 = &v5[*(v2 + 7)];
  *v10 = xmmword_2146E68C0;
  v11 = &v5[*(v2 + 8)];
  *v11 = xmmword_2146E68C0;
  if (!v6)
  {
    goto LABEL_50;
  }

  v12 = *(v6 + 16);
  if (HIDWORD(v12))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v63 = v10;
  v60 = v5;
  v61 = v9;
  v62 = v7;
  v57 = v11;
  v59 = v2;
  *v8 = v12;
  v8[4] = 0;

  if (v12)
  {
    v7 = 0;
    v58 = 0;
    v13 = v6 + 64;
    v64 = v12;
    v55 = v12 - 1;
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    v65 = v6;
    v56 = v6 + 64;
    do
    {
      v2 = (v13 + 40 * v7);
      while (1)
      {
        if (v7 >= *(v6 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v16 = *(v2 - 2);
        if (!v16)
        {
          goto LABEL_50;
        }

        v17 = *(v16 + 16);
        if (HIDWORD(v17))
        {
          goto LABEL_44;
        }

        v18 = v14;
        v19 = *(v2 - 1);
        v20 = *v2;
        v66 = *(v2 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_214095AE0(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_214095AE0((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        *&v15[4 * v22 + 32] = v20 | (v17 << 16);
        v23 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_214095AE0(0, *(v23 + 2) + 1, 1, v23);
        }

        v14 = v18;
        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_214095AE0((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v67 = v23;
        *&v23[4 * v25 + 32] = v19;
        v26 = *(v16 + 16);
        if (v26)
        {
          break;
        }

        ++v7;

        v2 += 20;
        v6 = v65;
        if (v64 == v7)
        {
          goto LABEL_32;
        }
      }

      v54 = (v7 + 1);
      v2 = (v16 + 36);
      do
      {
        v27 = v14;
        v28 = *(v2 - 1);
        v29 = *v2;
        v31 = *(v15 + 2);
        v30 = *(v15 + 3);
        if (v31 >= v30 >> 1)
        {
          v15 = sub_214095AE0((v30 > 1), v31 + 1, 1, v15);
        }

        *(v15 + 2) = v31 + 1;
        *&v15[4 * v31 + 32] = v28;
        v14 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2140959E4(0, *(v27 + 2) + 1, 1, v27);
        }

        v33 = *(v14 + 2);
        v32 = *(v14 + 3);
        if (v33 >= v32 >> 1)
        {
          v14 = sub_2140959E4((v32 > 1), v33 + 1, 1, v14);
        }

        v2 += 4;
        *(v14 + 2) = v33 + 1;
        *&v14[2 * v33 + 32] = v29;
        --v26;
      }

      while (v26);

      swift_bridgeObjectRelease_n();
      v13 = v56;
      v34 = v55 == v7;
      v6 = v65;
      v7 = v54;
    }

    while (!v34);
  }

  else
  {
    v58 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
  }

LABEL_32:

  v35 = *(v67 + 2);
  if (v35 >> 61)
  {
    goto LABEL_46;
  }

  v36 = sub_214601D60((v67 + 32), &v67[4 * v35 + 32]);
  v38 = v37;

  v39 = v63;
  sub_213FDC6BC(*v63, *(v63 + 1));
  *v39 = v36;
  v39[1] = v38;
  v40 = *(v15 + 2);
  if (v40 >> 61)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = sub_214601D60((v15 + 32), &v15[4 * v40 + 32]);
  v43 = v42;

  v44 = v61;
  sub_213FDC6BC(*v61, *(v61 + 1));
  *v44 = v41;
  v44[1] = v43;
  if (!v62)
  {

LABEL_38:
    sub_2143C504C(&qword_27C912770, type metadata accessor for ETP_Doodle);
    v2 = v60;
    v7 = v58;
    v50 = sub_2146D8FC8();
    if (!v7)
    {
      v51 = v50;
      goto LABEL_42;
    }

    sub_2146D9BB8();
    if (qword_280B35358 == -1)
    {
LABEL_40:
      sub_2146D91D8();

      v51 = 0;
LABEL_42:
      sub_2143C5094(v2, type metadata accessor for ETP_Doodle);
      return v51;
    }

LABEL_48:
    swift_once();
    goto LABEL_40;
  }

  v45 = *(v14 + 2);
  if (v45 + 0x4000000000000000 >= 0)
  {
    v46 = sub_214601D60((v14 + 32), &v14[2 * v45 + 32]);
    v48 = v47;

    v49 = v57;
    sub_213FDC6BC(*v57, *(v57 + 1));
    *v49 = v46;
    v49[1] = v48;
    goto LABEL_38;
  }

  __break(1u);
LABEL_50:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C3694(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Heartbeat(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v11 = *(a1 + 48);
  v10 = *(a1 + 52);
  v12 = *(a1 + 56);
  HIDWORD(v22) = *(a1 + 80);
  v13 = *(a1 + 84);
  sub_2146D8DE8();
  v14 = &v5[v2[5]];
  *v14 = 0;
  v14[4] = 1;
  v15 = &v5[v2[6]];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v5[v2[7]];
  *v16 = 0;
  v16[4] = 1;
  v17 = &v5[v2[8]];
  *v17 = 0;
  v17[4] = 1;
  v18 = &v5[v2[9]];
  *v18 = 0;
  v18[4] = 1;
  v19 = &v5[v2[10]];
  *v19 = 0;
  v19[4] = 1;
  if (v7)
  {
    goto LABEL_5;
  }

  *v14 = v6;
  v14[4] = 0;
  if (v9)
  {
    goto LABEL_5;
  }

  *v15 = v8;
  v15[4] = 0;
  *v16 = v11;
  v16[4] = 0;
  *v17 = v10;
  v17[4] = 0;
  *v18 = v12;
  v18[4] = 0;
  if (v13)
  {
LABEL_5:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v19 = HIDWORD(v22);
    v19[4] = 0;
    sub_2143C504C(&qword_27C912778, type metadata accessor for ETP_Heartbeat);
    v20 = sub_2146D8FC8();
    sub_2143C5094(v5, type metadata accessor for ETP_Heartbeat);
    return v20;
  }

  return result;
}

uint64_t sub_2143C3934(char *a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v110 = type metadata accessor for DigitalTouchBalloon(0);
  v106 = *(v110 - 8);
  v2 = *(v106 + 64);
  MEMORY[0x28223BE20](v110);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DigitalTouchHeader(0);
  v5 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v102 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ETP_Header(0);
  v7 = *(*(v115 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v115);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v108 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v112 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v111 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v98 - v21;
  v23 = type metadata accessor for ETP_Video(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v101 = &v26[v23[5]];
  *v101 = xmmword_2146E68C0;
  v103 = &v26[v23[6]];
  v104 = v23;
  v107 = xmmword_2146E68C0;
  *v103 = xmmword_2146E68C0;
  v27 = v23[7];
  v28 = *a1;
  v105 = v26;
  v26[v27] = v28;
  v113 = type metadata accessor for VideoMessage(0);
  v114 = a1;
  v29 = *(v113 + 20);
  sub_2143C4EA4(&a1[v29], v22);
  v30 = type metadata accessor for IntroBalloon(0);
  v31 = *(*(v30 - 8) + 48);
  LODWORD(v26) = v31(v22, 1, v30);
  sub_2143C4F14(v22);
  if (v26 == 1)
  {
    v32 = v113;
    v33 = v114;
    goto LABEL_6;
  }

  sub_2143C4EA4(&v114[v29], v20);
  if (v31(v20, 1, v30) == 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v34 = &v20[*(v30 + 20)];
  v35 = *(v34 + 1);
  v100 = *v34;
  v36 = *(v34 + 2);
  v99 = v34[24];
  v98 = v34[25];

  sub_2143C5094(v20, type metadata accessor for IntroBalloon);
  v116[0] = v100;
  v116[1] = v35;
  v116[2] = v36;
  v117 = v99;
  v118 = v98;
  v37 = sub_2143C30B8(v116);
  v100 = v38;

  v39 = v114;
  v40 = &v114[v29];
  v41 = v111;
  sub_2143C4EA4(v40, v111);
  if (v31(v41, 1, v30) == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v39;
  v42 = v102;
  sub_2143C4FE4(v41, v102, type metadata accessor for DigitalTouchHeader);
  sub_2143C5094(v41, type metadata accessor for IntroBalloon);
  v43 = v112;
  sub_2143C2AFC(v42, v112);
  sub_2143C5094(v42, type metadata accessor for DigitalTouchHeader);
  v44 = v115;
  *(v43 + *(v115 + 20)) = 3;
  v45 = v43 + *(v44 + 28);
  sub_213FDC6BC(*v45, *(v45 + 8));
  v46 = v100;
  *v45 = v37;
  *(v45 + 8) = v46;
  sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header);
  v47 = sub_2146D8FC8();
  v49 = v48;
  v50 = v101;
  sub_213FDC6BC(*v101, *(v101 + 1));
  *v50 = v47;
  v50[1] = v49;
  v32 = v113;
  sub_2143C5094(v112, type metadata accessor for ETP_Header);
LABEL_6:
  v111 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v51 = *&v33[*(v32 + 24) + 16];
  if (!v51)
  {
LABEL_26:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v51 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v106 = *(v106 + 72);
    v102 = v51;

    do
    {
      v113 = v52;
      v114 = 0;
      sub_2143C4FE4(v53, v4, type metadata accessor for DigitalTouchBalloon);
      v59 = sub_2143C27C4(&v4[*(v110 + 20)]);
      v61 = v60;
      LODWORD(v112) = v62;
      sub_2146D8DE8();
      v63 = v115;
      v10[*(v115 + 20)] = 8;
      v64 = v4;
      v65 = &v10[v63[6]];
      *v65 = 0;
      v65[8] = 1;
      *&v10[v63[7]] = v107;
      v66 = &v10[v63[8]];
      *v66 = 0;
      v66[4] = 1;
      v67 = v10;
      v68 = &v10[v63[9]];
      *v68 = 0;
      v68[1] = 0;
      v69 = v63[10];
      v67[v69] = 2;
      v70 = &v67[v63[11]];
      *v70 = 0;
      v70[8] = 1;
      *v68 = sub_2146D8B28();
      v68[1] = v71;
      v10 = v67;
      v72 = v109;
      *v65 = *&v64[*(v109 + 24)];
      v65[8] = 0;
      v4 = v64;
      *v70 = *&v64[v72[7]];
      v70[8] = 0;
      v67[v69] = v64[v72[8]];
      v73 = &v64[v72[5]];
      if ((v73[4] & 1) == 0)
      {
        *v66 = *v73;
        v66[4] = 0;
      }

      v74 = v67;
      v75 = v108;
      sub_2143C4F7C(v74, v108, type metadata accessor for ETP_Header);
      v76 = v115;
      v77 = (v75 + *(v115 + 28));
      v78 = *v77;
      v79 = v77[1];
      sub_21402D9F8(v59, v61);
      v80 = v79;
      v81 = v75;
      sub_213FDC6BC(v78, v80);
      *v77 = v59;
      v77[1] = v61;
      *(v75 + *(v76 + 20)) = v112;
      sub_2143C504C(&qword_27C912768, type metadata accessor for ETP_Header);
      v82 = v114;
      v83 = sub_2146D8FC8();
      if (v82)
      {
        sub_2146D9BB8();
        if (qword_280B35358 != -1)
        {
          swift_once();
        }

        sub_2146D91D8();

        sub_213FB54FC(v59, v61);
        sub_2143C5094(v81, type metadata accessor for ETP_Header);
        v54 = 0;
        v55 = 0xC000000000000000;
      }

      else
      {
        v54 = v83;
        v55 = v84;
        sub_2143C5094(v81, type metadata accessor for ETP_Header);
        sub_213FB54FC(v59, v61);
      }

      v56 = objc_allocWithZone(MEMORY[0x277CBEB28]);
      v57 = sub_2146D8A38();
      v58 = [v56 initWithData_];

      sub_213FB54FC(v54, v55);
      [v111 addObject_];

      sub_2143C5094(v4, type metadata accessor for DigitalTouchBalloon);
      v53 += v106;
      v52 = v113 - 1;
    }

    while (v113 != 1);
  }

  v85 = objc_opt_self();
  v116[0] = 0;
  v86 = [v85 archivedDataWithRootObject:v111 requiringSecureCoding:1 error:v116];
  v87 = v116[0];
  if (v86)
  {
    v88 = sub_2146D8A58();
    v90 = v89;

    v91 = v103;
    sub_213FDC6BC(*v103, *(v103 + 1));
    *v91 = v88;
    v91[1] = v90;
  }

  else
  {
    v92 = v87;
    v93 = sub_2146D8838();

    swift_willThrow();
    sub_2146D9BB8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
  }

  v94 = v105;
  sub_2143C504C(&qword_27C912788, type metadata accessor for ETP_Video);
  v95 = sub_2146D8FC8();
  sub_2143C5094(v94, type metadata accessor for ETP_Video);

  result = v95;
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2143C4558(uint64_t a1)
{
  v3 = type metadata accessor for ETP_Kiss(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_2146D8DE8();
  v8 = &v6[v3[5]];
  *v8 = xmmword_2146E68C0;
  v9 = &v6[v3[6]];
  *v9 = xmmword_2146E68C0;
  v10 = &v6[v3[7]];
  *v10 = xmmword_2146E68C0;
  if (v7)
  {
    v43 = v8;
    v11 = *(v7 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v42 = v3;
      v44 = MEMORY[0x277D84F90];

      sub_21409FE8C(0, v11, 0);
      v12 = v44;
      v13 = *(v44 + 16);
      v14 = 32;
      do
      {
        v15 = *(v7 + v14);
        v44 = v12;
        v16 = *(v12 + 24);
        v1 = v13 + 1;
        if (v13 >= v16 >> 1)
        {
          sub_21409FE8C((v16 > 1), v13 + 1, 1);
          v12 = v44;
        }

        *(v12 + 16) = v1;
        *(v12 + 4 * v13 + 32) = v15;
        v14 += 8;
        ++v13;
        --v11;
      }

      while (v11);
    }

    v17 = *(v12 + 16);
    if (v17 >> 61)
    {
      __break(1u);
    }

    else
    {
      v18 = sub_214601D60(v12 + 32, v12 + 32 + 4 * v17);
      v20 = v19;

      sub_213FDC6BC(*v9, *(v9 + 1));
      *v9 = v18;
      *(v9 + 1) = v20;
      v21 = *(v7 + 16);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v44 = MEMORY[0x277D84F90];

        sub_21409FE6C(0, v21, 0);
        v22 = v44;
        v1 = *(v44 + 16);
        v23 = 36;
        do
        {
          v24 = *(v7 + v23);
          v44 = v22;
          v25 = *(v22 + 24);
          if (v1 >= v25 >> 1)
          {
            sub_21409FE6C((v25 > 1), v1 + 1, 1);
            v22 = v44;
          }

          *(v22 + 16) = v1 + 1;
          *(v22 + 2 * v1 + 32) = v24;
          v23 += 8;
          ++v1;
          --v21;
        }

        while (v21);
      }

      v26 = *(v22 + 16);
      if (v26 + 0x4000000000000000 >= 0)
      {
        v27 = sub_214601D60(v22 + 32, v22 + 32 + 2 * v26);
        v29 = v28;

        sub_213FDC6BC(*v10, *(v10 + 1));
        *v10 = v27;
        *(v10 + 1) = v29;
        v30 = *(v7 + 16);
        v31 = MEMORY[0x277D84F90];
        if (v30)
        {
          v44 = MEMORY[0x277D84F90];

          sub_21409FE6C(0, v30, 0);
          v31 = v44;
          v1 = *(v44 + 16);
          v32 = 38;
          do
          {
            v33 = *(v7 + v32);
            v44 = v31;
            v34 = *(v31 + 24);
            if (v1 >= v34 >> 1)
            {
              sub_21409FE6C((v34 > 1), v1 + 1, 1);
              v31 = v44;
            }

            *(v31 + 16) = v1 + 1;
            *(v31 + 2 * v1 + 32) = v33;
            v32 += 8;
            ++v1;
            --v30;
          }

          while (v30);
        }

        v35 = *(v31 + 16);
        if (v35 + 0x4000000000000000 >= 0)
        {
          v36 = sub_214601D60(v31 + 32, v31 + 32 + 2 * v35);
          v38 = v37;

          v39 = v43;
          sub_213FDC6BC(*v43, *(v43 + 1));
          *v39 = v36;
          v39[1] = v38;
          sub_2143C504C(&qword_27C912790, type metadata accessor for ETP_Kiss);
          v40 = sub_2146D8FC8();
LABEL_24:
          sub_2143C5094(v6, type metadata accessor for ETP_Kiss);
          return v40;
        }

LABEL_27:
        __break(1u);
        swift_once();
        sub_2146D91D8();

        v40 = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C49FC(uint64_t a1)
{
  v2 = type metadata accessor for ETP_Anger(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v9 = *(a1 + 24);
  v8 = *(a1 + 28);
  v10 = *(a1 + 32);
  sub_2146D8DE8();
  v11 = &v5[v2[5]];
  *v11 = 0;
  v11[4] = 1;
  v12 = &v5[v2[6]];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v5[v2[7]];
  *v13 = 0;
  v13[4] = 1;
  v14 = &v5[v2[8]];
  *v14 = xmmword_2146E68C0;
  v42 = v2;
  v15 = &v5[v2[9]];
  *v15 = xmmword_2146E68C0;
  if ((v7 & 1) == 0)
  {
    v41 = v14;
    *v11 = v6;
    v11[4] = 0;
    *v12 = v9;
    v12[4] = 0;
    *v13 = v8;
    v13[4] = 0;
    v16 = *(v10 + 16);
    v17 = MEMORY[0x277D84F90];
    v40 = v10;
    if (v16)
    {
      v43 = MEMORY[0x277D84F90];
      sub_21409FE8C(0, v16, 0);
      v18 = v43;
      v19 = (v10 + 32);
      v20 = *(v43 + 16);
      v21 = v16;
      do
      {
        v22 = *v19;
        v19 += 2;
        v7 = v22;
        v43 = v18;
        v23 = *(v18 + 24);
        v24 = v20 + 1;
        if (v20 >= v23 >> 1)
        {
          sub_21409FE8C((v23 > 1), v20 + 1, 1);
          v18 = v43;
        }

        *(v18 + 16) = v24;
        *(v18 + 4 * v20++ + 32) = v7;
        --v21;
      }

      while (v21);
    }

    else
    {
      v24 = *(MEMORY[0x277D84F90] + 16);
      v18 = MEMORY[0x277D84F90];
    }

    if (v24 >> 61)
    {
      __break(1u);
    }

    else
    {
      v25 = sub_214601D60(v18 + 32, v18 + 32 + 4 * v24);
      v27 = v26;

      sub_213FDC6BC(*v15, *(v15 + 1));
      *v15 = v25;
      *(v15 + 1) = v27;
      if (v16)
      {
        v43 = v17;
        sub_21409FE6C(0, v16, 0);
        v17 = v43;
        v28 = (v40 + 36);
        v29 = *(v43 + 16);
        do
        {
          v30 = *v28;
          v28 += 4;
          v7 = v30;
          v43 = v17;
          v31 = *(v17 + 24);
          v32 = v29 + 1;
          if (v29 >= v31 >> 1)
          {
            sub_21409FE6C((v31 > 1), v29 + 1, 1);
            v17 = v43;
          }

          *(v17 + 16) = v32;
          *(v17 + 2 * v29++ + 32) = v7;
          --v16;
        }

        while (v16);
      }

      else
      {
        v32 = *(v17 + 16);
      }

      if ((v32 + 0x4000000000000000) >= 0)
      {
        v33 = sub_214601D60(v17 + 32, v17 + 32 + 2 * v32);
        v35 = v34;

        v36 = v41;
        sub_213FDC6BC(*v41, *(v41 + 1));
        *v36 = v33;
        v36[1] = v35;
        sub_2143C504C(&qword_27C912798, type metadata accessor for ETP_Anger);
        v37 = sub_2146D8FC8();
LABEL_19:
        sub_2143C5094(v5, type metadata accessor for ETP_Anger);
        return v37;
      }
    }

    __break(1u);
    swift_once();
    sub_2146D91D8();

    v37 = 0;
    goto LABEL_19;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C4DEC()
{
  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  sub_2146D91D8();
  v1 = sub_2143C25AC(v0);
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_2143C4EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143C4F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143C4F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C4FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C504C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143C5094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2143C50F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904170, &unk_2146EAAD0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F51C;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 20;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214043840(inited, a1);
}

uint64_t sub_2143C5258@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 26);
  v5 = *(v1 + 27);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  *(a1 + 19) = v5;
}

__n128 sub_2143C527C(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = a1[1].n128_u8[2];
  v5 = a1[1].n128_u8[3];
  v6 = *(v1 + 16);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 26) = v4;
  *(v1 + 27) = v5;
  return result;
}

uint64_t sub_2143C52D4()
{
  if ((*(v0 + 26) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2143C5338@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904160, &unk_2146EAAC0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21438F51C;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 750;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214044028(inited, a1);
}

uint64_t DoodleMessage.$strokes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 DoodleMessage.$strokes.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t DoodleMessage.strokes.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t SingleStroke.$stroke.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 SingleStroke.$stroke.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t SingleStroke.stroke.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C56B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C56DC(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v3;
  v1[1].n128_u8[4] = v4;
  v1[1].n128_u8[5] = v5;
  return result;
}

uint64_t sub_2143C5734@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 45);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C5758(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = *(v1 + 32);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 44) = v4;
  *(v1 + 45) = v5;
  return result;
}

uint64_t sub_2143C57B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 85);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 sub_2143C57D4(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = v1[4].n128_u64[1];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u32[0] = v3;
  v1[5].n128_u8[4] = v4;
  v1[5].n128_u8[5] = v5;
  return result;
}

uint64_t sub_2143C582C()
{
  if (*(v0 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return result;
}

uint64_t sub_2143C5890()
{
  if ((*(v0 + 44) & 1) == 0)
  {
    return *(v0 + 40);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143C58F4()
{
  if (*(v0 + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);
  }

  return result;
}

uint64_t VideoMessage.$playingMessages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoMessage(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

__n128 VideoMessage.$playingMessages.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for VideoMessage(0) + 24));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t VideoMessage.playingMessages.getter()
{
  if (*(v0 + *(type metadata accessor for VideoMessage(0) + 24) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2143C5AC0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904138, qword_2147384F0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_214309284;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 100;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21438F51C;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214043990(inited, a1);
}

uint64_t _s9BlastDoor10TapMessageV5_tapsAA9UntrustedVySayAA06SingleC0VGGvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 _s9BlastDoor10TapMessageV5_tapsAA9UntrustedVySayAA06SingleC0VGGvs_0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t _s9BlastDoor10TapMessageV4tapsSayAA06SingleC0VGvg_0()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t AngerMessage.$duration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 21) = v5;
}

__n128 AngerMessage.$duration.setter(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v3;
  v1[1].n128_u8[4] = v4;
  v1[1].n128_u8[5] = v5;
  return result;
}

uint64_t AngerMessage.duration.getter()
{
  if (*(v0 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return result;
}

uint64_t VideoMessage.MediaType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2143C5ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C5FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143C6050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2143C60B8(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2143C6180(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_2143C6228(uint64_t a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2143C62C4(double a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2143C6360(char a1)
{
  result = type metadata accessor for DigitalTouchHeader(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*TapMessage.taps.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C6474;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*TapMessage.$taps.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C6510;
}

uint64_t sub_2143C6544@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (*(result + 26))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

uint64_t (*sub_2143C65C8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 26))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 24);
    return sub_2143C6650;
  }

  return result;
}

uint64_t sub_2143C667C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);
  v8 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 26) = v6;
  *(a2 + 27) = v7;
  return result;
}

uint64_t (*sub_2143C66E8(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 26);
  v6 = *(v1 + 27);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 18) = v5;
  *(a1 + 19) = v6;

  return sub_2143C6750;
}

uint64_t sub_2143C6750(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);
  v8 = *(v2 + 16);
  if (a2)
  {
    v9 = a1[1];

    *(v2 + 8) = v4;
    *(v2 + 16) = v3;
    *(v2 + 24) = v5;
    *(v2 + 26) = v6;
    *(v2 + 27) = v7;
  }

  else
  {
    v11 = *(v2 + 16);

    *(v2 + 8) = v4;
    *(v2 + 16) = v3;
    *(v2 + 24) = v5;
    *(v2 + 26) = v6;
    *(v2 + 27) = v7;
  }

  return result;
}

uint64_t DoodleMessage.strokes.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v10 = *(v2 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 16);

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*DoodleMessage.strokes.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C6A08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void (*DoodleMessage.$strokes.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

uint64_t SingleStroke.stroke.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v10 = *(v2 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 16);

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*SingleStroke.stroke.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*SingleStroke.$stroke.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

uint64_t sub_2143C6E70@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*sub_2143C6ED4(uint64_t a1))()
{
  *a1 = v1;
  if (*(v1 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 16);
    return sub_2143C9418;
  }

  return result;
}

uint64_t sub_2143C6F5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(a2 + 8);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 20) = v6;
  *(a2 + 21) = v7;
  return result;
}

uint64_t (*sub_2143C6FC8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C9454;
}

uint64_t sub_2143C7030@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 44))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 40);
  }

  return result;
}

uint64_t (*sub_2143C70B4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 44))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 40);
    return sub_2143C713C;
  }

  return result;
}

uint64_t sub_2143C7168(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 44) = v6;
  *(a2 + 45) = v7;
  return result;
}

uint64_t (*sub_2143C71D4(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 44);
  v6 = *(v1 + 45);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C723C;
}

uint64_t sub_2143C723C(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(v2 + 32);
  if (a2)
  {
    v9 = a1[1];

    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    *(v2 + 44) = v6;
    *(v2 + 45) = v7;
  }

  else
  {
    v11 = *(v2 + 32);

    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    *(v2 + 44) = v6;
    *(v2 + 45) = v7;
  }

  return result;
}

uint64_t sub_2143C7380@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 80);
  }

  return result;
}

uint64_t (*sub_2143C7404(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (*(v1 + 84))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 80);
    return sub_2143C748C;
  }

  return result;
}

uint64_t sub_2143C74B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(a2 + 72);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 84) = v6;
  *(a2 + 85) = v7;
  return result;
}

uint64_t (*sub_2143C7524(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 84);
  v6 = *(v1 + 85);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C758C;
}

uint64_t sub_2143C758C(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(v2 + 72);
  if (a2)
  {
    v9 = a1[1];

    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v2 + 80) = v5;
    *(v2 + 84) = v6;
    *(v2 + 85) = v7;
  }

  else
  {
    v11 = *(v2 + 72);

    *(v2 + 64) = v4;
    *(v2 + 72) = v3;
    *(v2 + 80) = v5;
    *(v2 + 84) = v6;
    *(v2 + 85) = v7;
  }

  return result;
}

BlastDoor::VideoMessage::MediaType_optional __swiftcall VideoMessage.MediaType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2143C765C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143C76AC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2143C76E4()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

void *sub_2143C7730@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2143C7750(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t VideoMessage.intro.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 20);

  return sub_2143C4EA4(v3, a1);
}

uint64_t VideoMessage.intro.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 20);

  return sub_2143C78D8(a1, v3);
}

uint64_t sub_2143C78D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143C7990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VideoMessage(0) + 24) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C7A24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for VideoMessage(0) + 24);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t VideoMessage.playingMessages.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoMessage(0) + 24);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*VideoMessage.playingMessages.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for VideoMessage(0) + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143C7CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VideoMessage(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_2143C7D3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for VideoMessage(0) + 24);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*VideoMessage.$playingMessages.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for VideoMessage(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t IntroBalloon.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntroBalloon(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 IntroBalloon.content.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for IntroBalloon(0) + 20));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[0];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_2143C8030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t _s9BlastDoor10TapMessageV4tapsSayAA06SingleC0VGvs_0(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v10 = *(v2 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 16);

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*KissMessage.kisses.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C9440;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*KissMessage.$kisses.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C9444;
}

uint64_t (*AngerMessage.duration.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  if (*(v1 + 20))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = *(v1 + 16);
    return sub_2143C8468;
  }

  return result;
}

uint64_t (*AngerMessage.$duration.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 21);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 21) = v6;

  return sub_2143C84F8;
}

uint64_t sub_2143C84FC(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 21);
  v8 = *(v2 + 8);
  if (a2)
  {
    v9 = a1[1];

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 20) = v6;
    *(v2 + 21) = v7;
  }

  else
  {
    v11 = *(v2 + 8);

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 20) = v6;
    *(v2 + 21) = v7;
  }

  return result;
}

uint64_t AngerMessage.movements.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2143C86A4(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C906930, type metadata accessor for DigitalTouchBalloon);
  result = sub_2143C8728(&qword_27C906960, type metadata accessor for DigitalTouchBalloon);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143C8770(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C9067B0, type metadata accessor for DigitalTouchMessage);
  result = sub_2143C8728(&qword_27C9067C8, type metadata accessor for DigitalTouchMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C87F4(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C9067A8, type metadata accessor for DigitalTouchHeader);
  result = sub_2143C8728(&qword_27C9067C0, type metadata accessor for DigitalTouchHeader);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143C8984()
{
  result = qword_27C9127A0;
  if (!qword_27C9127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127A0);
  }

  return result;
}

uint64_t sub_2143C8A04(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C90C8D8, type metadata accessor for VideoMessage);
  result = sub_2143C8728(&qword_27C90C8A0, type metadata accessor for VideoMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8A88(uint64_t a1)
{
  *(a1 + 8) = sub_2143C8728(&qword_27C906918, type metadata accessor for IntroBalloon);
  result = sub_2143C8728(&qword_27C906950, type metadata accessor for IntroBalloon);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C8BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_10Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_2143C8C70()
{
  result = type metadata accessor for DigitalTouchHeader(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DigitalTouchMessage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143C8CF4()
{
  result = type metadata accessor for VideoMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2143C8DB0()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_214086448();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2143C8E84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_2143C8ECC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2143C8F34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2143C8F7C(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 __swift_memcpy86_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2143C9018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 86))
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

uint64_t sub_2143C9060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 86) = 1;
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

    *(result + 86) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2143C90F4()
{
  sub_2143C9188();
  if (v0 <= 0x3F)
  {
    sub_2143C91E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143C9188()
{
  if (!qword_280B30A50)
  {
    type metadata accessor for IntroBalloon(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B30A50);
    }
  }
}

void sub_2143C91E0()
{
  if (!qword_27C9127A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906920, &qword_214738410);
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9127A8);
    }
  }
}

uint64_t sub_2143C927C()
{
  result = type metadata accessor for DigitalTouchHeader(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143C9310(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2143C9358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143C93C0()
{
  result = qword_27C9127B0;
  if (!qword_27C9127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127B0);
  }

  return result;
}

unint64_t sub_2143C9460@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2143C9580@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143C95D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_u64[1];
  v7 = v1[3].n128_i64[0];
  v8 = v1[3].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143C9640()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

uint64_t sub_2143C96C0()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2143C96CC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2143C96FC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2143C9708(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2143C9738()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_2143C9744(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_2143C9774()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_2143C9780(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_2143C97E0()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2143C97EC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2143C981C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2143C984C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2143C98A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v11 = *(v3 + 64);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 48), *(v3 + 56));

    *(v3 + 48) = a1;
    *(v3 + 56) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143C99E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214030A78;
  }

  return result;
}

void (*sub_2143C9AC0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

uint64_t sub_2143C9B60()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_2143C9B90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_2143C9BE8()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t sub_2143C9BF4(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_2143C9C24()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_2143C9C30(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

__n128 sub_2143C9C60@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 152);
  result = *(v1 + 162);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_2143C9C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  *(v1 + 152) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 162) = result;
  return result;
}

uint64_t sub_2143C9D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_2143C9D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143C9DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2143C9E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2143C9EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2143C9F2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t BasicTapBack.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 BasicTapBack.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t BasicTapBack.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

BlastDoor::BasicTapBack::AssociatedMessageType_optional __swiftcall BasicTapBack.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 2999)
  {
    if (rawValue <= 2002)
    {
      switch(rawValue)
      {
        case 2000:
          *v1 = 0;
          return rawValue;
        case 2001:
          *v1 = 1;
          return rawValue;
        case 2002:
          *v1 = 2;
          return rawValue;
      }
    }

    else
    {
      if (rawValue <= 2004)
      {
        if (rawValue == 2003)
        {
          *v1 = 3;
        }

        else
        {
          *v1 = 4;
        }

        return rawValue;
      }

      if (rawValue == 2005)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 2006)
      {
        *v1 = 6;
        return rawValue;
      }
    }

LABEL_31:
    *v1 = 14;
    return rawValue;
  }

  if (rawValue <= 3002)
  {
    if (rawValue == 3000)
    {
      *v1 = 7;
    }

    else if (rawValue == 3001)
    {
      *v1 = 8;
    }

    else
    {
      *v1 = 9;
    }
  }

  else
  {
    if (rawValue > 3004)
    {
      if (rawValue == 3005)
      {
        *v1 = 12;
        return rawValue;
      }

      if (rawValue == 3006)
      {
        *v1 = 13;
        return rawValue;
      }

      goto LABEL_31;
    }

    if (rawValue == 3003)
    {
      *v1 = 10;
    }

    else
    {
      *v1 = 11;
    }
  }

  return rawValue;
}

uint64_t sub_2143CA324()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738A70[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2143CA3AC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738A70[v1]);
  return sub_2146DA9B8();
}

uint64_t BasicTapBack.associatedMessageGUID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BasicTapBack.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t BasicTapBack.associatedMessageFallbackHash.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BasicTapBack.associatedMessageFallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t BasicTapBack.associatedMessageRange.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t BasicTapBack.associatedMessageRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BasicTapBack.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v10 = *(v2 + 80);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 72);

    *(v2 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*BasicTapBack.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*BasicTapBack.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

BlastDoor::BasicTapBack::MessageSummaryInfo::AssociatedMessageMessageSummaryInfoTypeContentType __swiftcall BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType.init(defaultingRawValue:)(Swift::Int_optional defaultingRawValue)
{
  v2 = defaultingRawValue.value == 1;
  if (defaultingRawValue.value == 3)
  {
    v2 = 2;
  }

  if (defaultingRawValue.is_nil)
  {
    v2 = 0;
  }

  *v1 = v2;
  return defaultingRawValue.value;
}

BlastDoor::BasicTapBack::MessageSummaryInfo::AssociatedMessageMessageSummaryInfoTypeContentType_optional __swiftcall BasicTapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2030100u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2143CA92C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738AE0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2143CA9B4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214738AE0[v1]);
  return sub_2146DA9B8();
}

uint64_t BasicTapBack.MessageSummaryInfo.summary.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BasicTapBack.MessageSummaryInfo.summary.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t BasicTapBack.messageSummaryInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2142E597C(v2, v3, v4);
}

__n128 BasicTapBack.messageSummaryInfo.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_2142E58B8(v1[11], v1[12], v1[13]);
  result = v4;
  *(v1 + 11) = v4;
  v1[13] = v2;
  return result;
}

uint64_t BasicTapBack.plainTextBody.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t BasicTapBack.plainTextBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t BasicTapBack.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x7061546369736142, 0xEC0000006B636142);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v2, v3);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2143CADA8()
{
  result = qword_27C9127B8;
  if (!qword_27C9127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127B8);
  }

  return result;
}

unint64_t sub_2143CAE2C()
{
  result = qword_27C9127C0;
  if (!qword_27C9127C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127C0);
  }

  return result;
}

uint64_t sub_2143CAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143CAF44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2143CAF8C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2143CB02C()
{
  result = qword_27C9127C8;
  if (!qword_27C9127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127C8);
  }

  return result;
}

unint64_t sub_2143CB080()
{
  result = qword_27C9127D0;
  if (!qword_27C9127D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127D0);
  }

  return result;
}

uint64_t sub_2143CB0D4()
{
  sub_2143CB17C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t SharedETATrip.bridgedToObjectiveC.getter()
{
  sub_2143CB17C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143CB17C()
{
  v1 = sub_2146D87D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v24 = v4;
  v25 = v5;
  v26 = *(v0 + 128);
  v7 = v0[3];
  v20 = v0[2];
  v21 = v7;
  v22 = v6;
  v8 = v0[1];
  v18 = *v0;
  v19 = v8;
  sub_21431F3BC();
  v9 = sub_2146D87B8();
  v11 = v10;
  v12 = MEMORY[0x277D84F98];
  v17 = MEMORY[0x277D84F98];
  if (v10 >> 60 == 15)
  {
    sub_2144AEF6C(0xD000000000000010, 0x800000021478BC50, v16);

    sub_2143CB438(v16);
    return v17;
  }

  else
  {
    *(&v19 + 1) = MEMORY[0x277CC9318];
    *&v18 = v9;
    *(&v18 + 1) = v10;
    v14 = v9;
    sub_213FDC730(&v18, v16);
    sub_21402D9F8(v14, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);

    sub_213FDC6BC(v14, v11);
    return v12;
  }
}

unint64_t sub_2143CB318(uint64_t a1)
{
  *(a1 + 8) = sub_21431FBF0();
  result = sub_21431F3BC();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2143CB37C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_2143CB3C4(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143CB438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913170, &qword_2146EAB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143CB4A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result;
  if (result == 106 && a2 == 0xE100000000000000 || (result = sub_2146DA6A8(), (result & 1) != 0))
  {
    *a3 = 0;
  }

  else if (v4 == 108 && a2 == 0xE100000000000000 || (result = sub_2146DA6A8(), (result & 1) != 0))
  {
    *a3 = 1;
  }

  else
  {
    sub_2143CB57C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2143CB57C()
{
  result = qword_27C9127D8;
  if (!qword_27C9127D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127D8);
  }

  return result;
}

uint64_t sub_2143CB5D0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

uint64_t sub_2143CB6A4()
{
  v3 = *v0;
  sub_2143CB774();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2143CB70C()
{
  v3 = *v0;
  sub_2143CB774();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2143CB774()
{
  if (*v0)
  {
    v7 = MEMORY[0x277D837D0];
    v1 = 108;
  }

  else
  {
    v7 = MEMORY[0x277D837D0];
    v1 = 106;
  }

  *&v6 = v1;
  *(&v6 + 1) = 0xE100000000000000;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x4B646E616D6D6F63, 0xEA00000000007965, isUniquelyReferenced_nonNull_native);
  return v2;
}

unint64_t sub_2143CB820()
{
  result = qword_27C9127E0;
  if (!qword_27C9127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127E0);
  }

  return result;
}

uint64_t sub_2143CB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143CB938()
{
  result = qword_27C9127E8;
  if (!qword_27C9127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9127E8);
  }

  return result;
}

uint64_t sub_2143CB98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_2146D9D38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v3);
  v11 = *(v5 - 8);
  result = (*(v11 + 48))(v9, 1, v5);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v9, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_2143CBAC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2146D9D38();
  (*(*(v5 - 8) + 8))(v2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 32))(v2, a1, v4);
  v6 = *(v8 + 56);

  return v6(v2, 0, 1, v4);
}

uint64_t sub_2143CBBDC(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t sub_2143CBC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for Encoded();
  return sub_2143CBAC0(v7, v9);
}

void (*sub_2143CBD68(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  sub_2143CB98C(a2, v11);
  return sub_2143CBE74;
}

void sub_2143CBE74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_2143CBAC0(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    sub_2143CBAC0((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2143CBF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Encoded();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v7);
  return sub_2143CBBDC(v10, v7);
}

void (*sub_2143CC008(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_2143CC12C;
}

void sub_2143CC12C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2143CC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_2143CC338(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 40);

  return v8(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t (*sub_2143CC3C0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2143CC3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = *(type metadata accessor for Encoded() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a3 + v5, a1, AssociatedTypeWitness);
}

uint64_t sub_2143CC4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2143CC5B0(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x676E69646F636E65;
  }
}

uint64_t sub_2143CC5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143CC4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143CC620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2143CC674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2143CC6C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v48 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = AssociatedTypeWitness;
  v13 = sub_2146DA258();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v48 - v17;
  v65 = swift_getAssociatedTypeWitness();
  v58 = *(v65 - 8);
  v18 = *(v58 + 64);
  v19 = MEMORY[0x28223BE20](v65);
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v48 - v21;
  type metadata accessor for Encoded.CodingKeys();
  swift_getWitnessTable();
  v63 = sub_2146DA258();
  v61 = *(v63 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v24 = &v48 - v23;
  v25 = type metadata accessor for Encoded();
  v49 = *(v25 - 8);
  v26 = *(v49 + 64);
  MEMORY[0x28223BE20](v25);
  v50 = v7;
  v27 = *(v7 + 56);
  v68 = &v48 - v28;
  v27();
  v30 = a1[3];
  v29 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v66;
  sub_2146DAA08();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
    v34 = sub_2146D9D38();
    return (*(*(v34 - 8) + 8))(v68, v34);
  }

  else
  {
    v66 = v25;
    v32 = v24;
    v33 = v62;
    v70 = 0;
    swift_getAssociatedConformanceWitness();
    sub_2146DA1C8();
    v48 = a3;
    v69 = 1;
    sub_2146DA0B8();
    v60 = v32;
    v35 = v54;
    (*(v56 + 16))(v54, v33, v57);
    v36 = v58;
    v37 = v53;
    v39 = v64;
    v38 = v65;
    AssociatedConformanceWitness = *(v58 + 16);
    AssociatedConformanceWitness(v53, v64, v65);
    v40 = v55;
    (*(v48 + 48))(v35, v37, a2);
    v41 = v66;
    AssociatedConformanceWitness(&v68[*(v66 + 36)], v39, v38);
    v42 = v50;
    v43 = v51;
    (*(v50 + 16))(v51, v40, a2);
    v44 = v43;
    v45 = v68;
    sub_2143CBAC0(v44, v41);
    (*(v42 + 8))(v40, a2);
    (*(v56 + 8))(v62, v57);
    (*(v36 + 8))(v39, v38);
    (*(v61 + 8))(v60, v63);
    v46 = v49;
    (*(v49 + 16))(v52, v45, v41);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return (*(v46 + 8))(v45, v41);
  }
}

uint64_t sub_2143CCDD8(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v6 = sub_2146DA3F8();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v32 - v9;
  v49 = *(v3 - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v40 = v4;
  v47 = swift_getAssociatedTypeWitness();
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v17 = &v32 - v16;
  type metadata accessor for Encoded.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_2146DA3F8();
  v43 = *(v48 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v20 = &v32 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v41;
  v22 = v42;
  v24 = v40;
  sub_2146DAA28();
  sub_2143CB98C(v23, v14);
  (*(v24 + 64))(v22 + *(v23 + 36), v3, v24);
  v25 = *(v49 + 8);
  v26 = v14;
  v27 = v47;
  v49 += 8;
  v25(v26, v3);
  v51 = 0;
  swift_getAssociatedConformanceWitness();
  v44 = v17;
  v28 = v46;
  sub_2146DA388();
  if (v28)
  {
    (*(v45 + 8))(v44, v27);
    return (*(v43 + 8))(v20, v48);
  }

  else
  {
    v33 = v25;
    v50 = 1;
    v30 = v39;
    v46 = v20;
    sub_2146DA288();
    sub_2143CB98C(v23, v38);
    v31 = v44;
    (*(v24 + 56))(v30, v44, v3, v24);
    v33(v38, v3);
    (*(v36 + 8))(v39, v37);
    (*(v45 + 8))(v31, v47);
    return (*(v43 + 8))(v46, v48);
  }
}

uint64_t keypath_getTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v8 = type metadata accessor for Encoded();
  return a4(v8);
}

uint64_t sub_2143CD38C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2146D9D38();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143CD430(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = (v15 & ~v13) + *(*(AssociatedTypeWitness - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v8 >= v11)
        {
          v25 = (*(v6 + 48))(a1, v7, v5);
          if (v25 >= 2)
          {
            return v25 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *(v10 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_2143CD6A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 80);
  v17 = ((v15 + v16) & ~v16) + *(v12 + 64);
  if (a3 <= v14)
  {
    goto LABEL_21;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v11 = 4;
      if (v14 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

LABEL_21:
    if (v14 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v11 = 1;
  if (v14 >= a2)
  {
LABEL_31:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v17] = 0;
    }

    else if (v11)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 >= v13)
      {
        if (v10 >= a2)
        {
          v27 = *(v28 + 56);

          v27(a1, (a2 + 1), v9, v7);
        }

        else
        {
          if (v15 <= 3)
          {
            v24 = ~(-1 << (8 * v15));
          }

          else
          {
            v24 = -1;
          }

          if (v15)
          {
            v25 = v24 & (~v10 + a2);
            if (v15 <= 3)
            {
              v26 = v15;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v15);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }
      }

      else
      {
        v23 = *(v12 + 56);

        v23(&a1[v15 + v16] & ~v16, a2);
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v20 = ~v14 + a2;
  if (v17 >= 4)
  {
    bzero(a1, v17);
    *a1 = v20;
    v21 = 1;
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_59:
    if (v11 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_59;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v11 > 1)
    {
LABEL_63:
      if (v11 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v11 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v11)
  {
    a1[v17] = v21;
  }
}

unint64_t sub_2143CDAA0(uint64_t a1)
{
  *(a1 + 8) = sub_21431E8C4();
  result = sub_21431DD58();
  *(a1 + 16) = result;
  return result;
}