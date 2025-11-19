_OWORD *sub_21CC91EF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21CC91FBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CC91FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC92294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CC922D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CC92320()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CC92358()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CC923A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CC9249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CC92558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalPresentmentDocumentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CC92610(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CC9267C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CD837F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21CC92D04@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*(result + 8))
  {
    v2 = -1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21CC92D28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC92D68()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC92DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC92E00()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC92E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CC92EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CC92F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC92FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC930A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21CC930E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21CC93128()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CC93174()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC931B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC93270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC93320()
{
  v1 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = type metadata accessor for MobileDocumentRegistration();
  v9 = *(v8 + 24);
  v10 = sub_21CD83744();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = *(v5 + *(v8 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CC93470()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC934A8()
{
  v1 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = type metadata accessor for MobileDocumentRegistration();
  v9 = *(v8 + 24);
  v10 = sub_21CD83744();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + *(v8 + 28) + 8);

  v14 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 16, v2 | 7);
}

uint64_t sub_21CC93610()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC93650()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CC93688()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC936D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD839B4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CC93740(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CD839B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21CC937C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC9387C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC9392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CD83794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC939D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CD83794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC93A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CD83794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC93B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CD83794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC93BD4()
{
  v1 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 24);

  v8 = *(v1 + 24);
  v9 = sub_21CD83794();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v5 + *(v1 + 28));
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_21CCB1880(*v12, v13);
  }

  v14 = *(v0 + v4 + 8);

  v15 = *(v0 + v11 + 8);
  if (v15 >> 60 != 15)
  {
    sub_21CCB1880(*(v0 + v11), v15);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t sub_21CC93D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21CC93E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CC94054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CD83744();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC94100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CD83744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC941A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MobileDocumentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CC94260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MobileDocumentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CC94330()
{
  if (*v0)
  {
    result = 0x7470697263736564;
  }

  else
  {
    result = 1701080931;
  }

  *v0;
  return result;
}

uint64_t sub_21CC943EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_21CC944C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_21CC94594(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MobileDocumentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21CD835C4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[9]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[13];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_21CC947BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MobileDocumentType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21CD835C4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_21CC949EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC94AA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC94B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CC94C20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CC94CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CC94DA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CC94E60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CC94E98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21CC94ED0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC94F08()
{
  v1 = *(v0 + 24);

  sub_21CD19C4C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21CC94F4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CC94F5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CC94FF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_21CC950A8()
{
  v1 = *(v0 + 24);

  sub_21CD19C4C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);
  if (v2 >> 60 != 15)
  {
    sub_21CCB1880(*(v0 + 56), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21CC95108()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC95144()
{
  v1 = *(type metadata accessor for MobileDocumentReaderSession.State() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  v8 = type metadata accessor for MobileDocumentReaderResponse(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 3, v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_21CCB1880(*v7, v9);
    }

    v10 = v7[3];
    if (v10 >> 60 != 15)
    {
      sub_21CCB1880(v7[2], v10);
    }

    v11 = v7 + *(v8 + 24);
    v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
    if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
    {
      v47 = v4;
      v13 = sub_21CD837F4();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v11, 2, v13))
      {
        (*(v14 + 8))(v11, v13);
      }

      v15 = v12[5];
      v16 = sub_21CD835C4();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
      v17 = &v11[v12[7]];
      v18 = v17[1];
      if (v18 >> 60 != 15)
      {
        sub_21CCB1880(*v17, v18);
      }

      v19 = *&v11[v12[9]];

      v20 = v12[10];
      v21 = sub_21CD83504();
      v22 = *(v21 - 8);
      v45 = *(v22 + 48);
      if (!v45(&v11[v20], 1, v21))
      {
        (*(v22 + 8))(&v11[v20], v21);
      }

      v44 = v22;
      v46 = v21;
      v23 = &v11[v12[11]];
      if (*(v23 + 1) != 1)
      {

        v24 = *(v23 + 3);

        v25 = *(v23 + 5);

        v26 = *(v23 + 7);

        v27 = *(v23 + 9);
      }

      v28 = v12[12];
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
      v30 = *(v29 - 8);
      if (!(*(v30 + 48))(&v11[v28], 1, v29))
      {
        (*(v30 + 8))(&v11[v28], v29);
      }

      v31 = v12[13];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(&v11[v31], 1, v32))
      {
        (*(v33 + 8))(&v11[v31], v32);
      }

      v34 = &v11[v12[18]];
      if (*(v34 + 1) != 1)
      {

        v35 = *(v34 + 3);

        v36 = *(v34 + 5);
      }

      v37 = *&v11[v12[19]];

      v38 = *&v11[v12[20]];

      v39 = *&v11[v12[22] + 8];

      v40 = v12[23];
      if (!v45(&v11[v40], 1, v46))
      {
        (*(v44 + 8))(&v11[v40], v46);
      }

      v41 = v12[24];
      v4 = v47;
      v3 = (v2 + 40) & ~v2;
      if (!v45(&v11[v41], 1, v46))
      {
        (*(v44 + 8))(&v11[v41], v46);
      }
    }

    v42 = *(v7 + *(v8 + 28) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CC95868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CC958D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MobileDocumentReaderResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21CC959BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CC95A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CC95A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CC95B04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CD837F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21CC95B88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21CC95BE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CC95C18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CC95C50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CC95CAC(uint64_t a1, uint64_t *a2)
{
  sub_21CCB3200(a1, v5);
  v3 = *a2;
  return SendableXPCConnection.exportedObject.setter(v5);
}

uint64_t sub_21CC95D28()
{
  v1 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v2 = sub_21CD83D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v2);
  v9 = *&v0[v6 + 8];

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_21CC95E34()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v2 = sub_21CD83D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21CC95EE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21CC95F2C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CC95F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CCB1880(a1, a2);
  }

  return a1;
}

uint64_t sub_21CC96008@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21CC96064(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CCB18D4(a1, a2);
  }

  return a1;
}

id DIV_LOG_CLIENT()
{
  if (DIV_LOG_CLIENT_once != -1)
  {
    DIV_LOG_CLIENT_cold_1();
  }

  v1 = DIV_LOG_CLIENT_log;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id DIV_LOG_CLIENT_0()
{
  if (DIV_LOG_CLIENT_once_0 != -1)
  {
    DIV_LOG_CLIENT_cold_1_0();
  }

  v1 = DIV_LOG_CLIENT_log_0;

  return v1;
}

void sub_21CC9A630(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id DIV_LOG_SIGNPOST()
{
  if (DIV_LOG_SIGNPOST_once != -1)
  {
    DIV_LOG_SIGNPOST_cold_1();
  }

  v1 = DIV_LOG_SIGNPOST_log;

  return v1;
}

id DIV_LOG_CLIENT_1()
{
  if (DIV_LOG_CLIENT_once_1 != -1)
  {
    DIV_LOG_CLIENT_cold_1_1();
  }

  v1 = DIV_LOG_CLIENT_log_1;

  return v1;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21CCA5360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CCA5380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21CCA53CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CCA53EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_21CCA5428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18C00, &qword_21CD874F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21CD87460;
  *(v0 + 32) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(0);
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(1);
  *(v0 + 64) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(2);
  *(v0 + 88) = v3;
  *(v0 + 96) = 2;
  *(v0 + 104) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(3);
  *(v0 + 112) = v4;
  *(v0 + 120) = 3;
  *(v0 + 128) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(4);
  *(v0 + 136) = v5;
  *(v0 + 144) = 4;
  *(v0 + 152) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(5);
  *(v0 + 160) = v6;
  *(v0 + 168) = 5;
  *(v0 + 176) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(6);
  *(v0 + 184) = v7;
  *(v0 + 192) = 6;
  *(v0 + 200) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(7);
  *(v0 + 208) = v8;
  *(v0 + 216) = 7;
  *(v0 + 224) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(8);
  *(v0 + 232) = v9;
  *(v0 + 240) = 8;
  *(v0 + 248) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(9);
  *(v0 + 256) = v10;
  *(v0 + 264) = 9;
  *(v0 + 272) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(10);
  *(v0 + 280) = v11;
  *(v0 + 288) = 10;
  *(v0 + 296) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(11);
  *(v0 + 304) = v12;
  *(v0 + 312) = 11;
  *(v0 + 320) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(12);
  *(v0 + 328) = v13;
  *(v0 + 336) = 12;
  *(v0 + 344) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(13);
  *(v0 + 352) = v14;
  *(v0 + 360) = 13;
  *(v0 + 368) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(14);
  *(v0 + 376) = v15;
  *(v0 + 384) = 14;
  *(v0 + 392) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(15);
  *(v0 + 400) = v16;
  *(v0 + 408) = 15;
  *(v0 + 416) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(16);
  *(v0 + 424) = v17;
  *(v0 + 432) = 16;
  *(v0 + 440) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(17);
  *(v0 + 448) = v18;
  *(v0 + 456) = 17;
  *(v0 + 464) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(18);
  *(v0 + 472) = v19;
  *(v0 + 480) = 18;
  *(v0 + 488) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(19);
  *(v0 + 496) = v20;
  *(v0 + 504) = 19;
  *(v0 + 512) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(20);
  *(v0 + 520) = v21;
  *(v0 + 528) = 20;
  *(v0 + 536) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(21);
  *(v0 + 544) = v22;
  *(v0 + 552) = 21;
  *(v0 + 560) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(22);
  *(v0 + 568) = v23;
  *(v0 + 576) = 22;
  *(v0 + 584) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(23);
  *(v0 + 592) = v24;
  *(v0 + 600) = 23;
  *(v0 + 608) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(24);
  *(v0 + 616) = v25;
  *(v0 + 624) = 24;
  *(v0 + 632) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(25);
  *(v0 + 640) = v26;
  *(v0 + 648) = 25;
  *(v0 + 656) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(26);
  *(v0 + 664) = v27;
  *(v0 + 672) = 26;
  *(v0 + 680) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(27);
  *(v0 + 688) = v28;
  *(v0 + 696) = 27;
  *(v0 + 704) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(28);
  *(v0 + 712) = v29;
  *(v0 + 720) = 28;
  *(v0 + 728) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(29);
  *(v0 + 736) = v30;
  *(v0 + 744) = 29;
  *(v0 + 752) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(30);
  *(v0 + 760) = v31;
  *(v0 + 768) = 30;
  *(v0 + 776) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(31);
  *(v0 + 784) = v32;
  *(v0 + 792) = 31;
  *(v0 + 800) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(32);
  *(v0 + 808) = v33;
  *(v0 + 816) = 32;
  *(v0 + 824) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(33);
  *(v0 + 832) = v34;
  *(v0 + 840) = 33;
  *(v0 + 848) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(34);
  *(v0 + 856) = v35;
  *(v0 + 864) = 34;
  *(v0 + 872) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(35);
  *(v0 + 880) = v36;
  *(v0 + 888) = 35;
  *(v0 + 896) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(36);
  *(v0 + 904) = v37;
  *(v0 + 912) = 36;
  *(v0 + 920) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(37);
  *(v0 + 928) = v38;
  *(v0 + 936) = 37;
  *(v0 + 944) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(38);
  *(v0 + 952) = v39;
  *(v0 + 960) = 38;
  *(v0 + 968) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(39);
  *(v0 + 976) = v40;
  *(v0 + 984) = 39;
  *(v0 + 992) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(40);
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 40;
  *(v0 + 1016) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(41);
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 41;
  *(v0 + 1040) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(42);
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 42;
  *(v0 + 1064) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(43);
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 43;
  *(v0 + 1088) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(44);
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 44;
  *(v0 + 1112) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(45);
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 45;
  *(v0 + 1136) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(46);
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 46;
  *(v0 + 1160) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(47);
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 47;
  *(v0 + 1184) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(48);
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 48;
  *(v0 + 1208) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(49);
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 49;
  *(v0 + 1232) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(50);
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 50;
  *(v0 + 1256) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(51);
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 51;
  *(v0 + 1280) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(52);
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 52;
  *(v0 + 1304) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(53);
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 53;
  *(v0 + 1328) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(54);
  *(v0 + 1336) = v55;
  *(v0 + 1344) = 54;
  *(v0 + 1352) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(55);
  *(v0 + 1360) = v56;
  *(v0 + 1368) = 55;
  *(v0 + 1376) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(56);
  *(v0 + 1384) = v57;
  *(v0 + 1392) = 56;
  *(v0 + 1400) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(57);
  *(v0 + 1408) = v58;
  *(v0 + 1416) = 57;
  *(v0 + 1424) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(58);
  *(v0 + 1432) = v59;
  *(v0 + 1440) = 58;
  *(v0 + 1448) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(59);
  *(v0 + 1456) = v60;
  *(v0 + 1464) = 59;
  *(v0 + 1472) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(60);
  *(v0 + 1480) = v61;
  *(v0 + 1488) = 60;
  *(v0 + 1496) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(61);
  *(v0 + 1504) = v62;
  *(v0 + 1512) = 61;
  *(v0 + 1520) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(62);
  *(v0 + 1528) = v63;
  *(v0 + 1536) = 62;
  *(v0 + 1544) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(63);
  *(v0 + 1552) = v64;
  *(v0 + 1560) = 63;
  *(v0 + 1568) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(64);
  *(v0 + 1576) = v65;
  *(v0 + 1584) = 64;
  *(v0 + 1592) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(65);
  *(v0 + 1600) = v66;
  *(v0 + 1608) = 65;
  *(v0 + 1616) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(66);
  *(v0 + 1624) = v67;
  *(v0 + 1632) = 66;
  *(v0 + 1640) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(67);
  *(v0 + 1648) = v68;
  *(v0 + 1656) = 67;
  *(v0 + 1664) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(68);
  *(v0 + 1672) = v69;
  *(v0 + 1680) = 68;
  *(v0 + 1688) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(69);
  *(v0 + 1696) = v70;
  *(v0 + 1704) = 69;
  *(v0 + 1712) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(70);
  *(v0 + 1720) = v71;
  *(v0 + 1728) = 70;
  *(v0 + 1736) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(71);
  *(v0 + 1744) = v72;
  *(v0 + 1752) = 71;
  *(v0 + 1760) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(72);
  *(v0 + 1768) = v73;
  *(v0 + 1776) = 72;
  *(v0 + 1784) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(73);
  *(v0 + 1792) = v74;
  *(v0 + 1800) = 73;
  *(v0 + 1808) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(74);
  *(v0 + 1816) = v75;
  *(v0 + 1824) = 74;
  *(v0 + 1832) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(75);
  *(v0 + 1840) = v76;
  *(v0 + 1848) = 75;
  *(v0 + 1856) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(76);
  *(v0 + 1864) = v77;
  *(v0 + 1872) = 76;
  *(v0 + 1880) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(77);
  *(v0 + 1888) = v78;
  *(v0 + 1896) = 77;
  *(v0 + 1904) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(78);
  *(v0 + 1912) = v79;
  *(v0 + 1920) = 78;
  *(v0 + 1928) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(79);
  *(v0 + 1936) = v80;
  *(v0 + 1944) = 79;
  *(v0 + 1952) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(80);
  *(v0 + 1960) = v81;
  *(v0 + 1968) = 80;
  *(v0 + 1976) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(81);
  *(v0 + 1984) = v82;
  *(v0 + 1992) = 81;
  *(v0 + 2000) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(82);
  *(v0 + 2008) = v83;
  *(v0 + 2016) = 82;
  *(v0 + 2024) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(83);
  *(v0 + 2032) = v84;
  *(v0 + 2040) = 83;
  *(v0 + 2048) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(84);
  *(v0 + 2056) = v85;
  *(v0 + 2064) = 84;
  *(v0 + 2072) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(85);
  *(v0 + 2080) = v86;
  *(v0 + 2088) = 85;
  *(v0 + 2096) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(86);
  *(v0 + 2104) = v87;
  *(v0 + 2112) = 86;
  *(v0 + 2120) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(87);
  *(v0 + 2128) = v88;
  *(v0 + 2136) = 87;
  *(v0 + 2144) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(88);
  *(v0 + 2152) = v89;
  *(v0 + 2160) = 88;
  *(v0 + 2168) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(89);
  *(v0 + 2176) = v90;
  *(v0 + 2184) = 89;
  *(v0 + 2192) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(90);
  *(v0 + 2200) = v91;
  *(v0 + 2208) = 90;
  *(v0 + 2216) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(91);
  *(v0 + 2224) = v92;
  *(v0 + 2232) = 91;
  *(v0 + 2240) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(92);
  *(v0 + 2248) = v93;
  *(v0 + 2256) = 92;
  *(v0 + 2264) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(93);
  *(v0 + 2272) = v94;
  *(v0 + 2280) = 93;
  *(v0 + 2288) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(94);
  *(v0 + 2296) = v95;
  *(v0 + 2304) = 94;
  *(v0 + 2312) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(95);
  *(v0 + 2320) = v96;
  *(v0 + 2328) = 95;
  *(v0 + 2336) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(96);
  *(v0 + 2344) = v97;
  *(v0 + 2352) = 96;
  *(v0 + 2360) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(97);
  *(v0 + 2368) = v98;
  *(v0 + 2376) = 97;
  *(v0 + 2384) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(98);
  *(v0 + 2392) = v99;
  *(v0 + 2400) = 98;
  *(v0 + 2408) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(99);
  *(v0 + 2416) = v100;
  *(v0 + 2424) = 99;
  *(v0 + 2432) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(100);
  *(v0 + 2440) = v101;
  *(v0 + 2448) = 100;
  *(v0 + 2456) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(101);
  *(v0 + 2464) = v102;
  *(v0 + 2472) = 101;
  *(v0 + 2480) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(102);
  *(v0 + 2488) = v103;
  *(v0 + 2496) = 102;
  *(v0 + 2504) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(103);
  *(v0 + 2512) = v104;
  *(v0 + 2520) = 103;
  *(v0 + 2528) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(104);
  *(v0 + 2536) = v105;
  *(v0 + 2544) = 104;
  *(v0 + 2552) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(105);
  *(v0 + 2560) = v106;
  *(v0 + 2568) = 105;
  *(v0 + 2576) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(106);
  *(v0 + 2584) = v107;
  *(v0 + 2592) = 106;
  *(v0 + 2600) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(107);
  *(v0 + 2608) = v108;
  *(v0 + 2616) = 107;
  *(v0 + 2624) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(108);
  *(v0 + 2632) = v109;
  *(v0 + 2640) = 108;
  *(v0 + 2648) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(109);
  *(v0 + 2656) = v110;
  *(v0 + 2664) = 109;
  *(v0 + 2672) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(110);
  *(v0 + 2680) = v111;
  *(v0 + 2688) = 110;
  *(v0 + 2696) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(111);
  *(v0 + 2704) = v112;
  *(v0 + 2712) = 111;
  *(v0 + 2720) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(112);
  *(v0 + 2728) = v113;
  *(v0 + 2736) = 112;
  *(v0 + 2744) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(113);
  *(v0 + 2752) = v114;
  *(v0 + 2760) = 113;
  *(v0 + 2768) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(114);
  *(v0 + 2776) = v115;
  *(v0 + 2784) = 114;
  *(v0 + 2792) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(115);
  *(v0 + 2800) = v116;
  *(v0 + 2808) = 115;
  *(v0 + 2816) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(116);
  *(v0 + 2824) = v117;
  *(v0 + 2832) = 116;
  *(v0 + 2840) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(117);
  *(v0 + 2848) = v118;
  *(v0 + 2856) = 117;
  *(v0 + 2864) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(118);
  *(v0 + 2872) = v119;
  *(v0 + 2880) = 118;
  *(v0 + 2888) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(119);
  *(v0 + 2896) = v120;
  *(v0 + 2904) = 119;
  *(v0 + 2912) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(120);
  *(v0 + 2920) = v121;
  *(v0 + 2928) = 120;
  *(v0 + 2936) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(121);
  *(v0 + 2944) = v122;
  *(v0 + 2952) = 121;
  *(v0 + 2960) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(122);
  *(v0 + 2968) = v123;
  *(v0 + 2976) = 122;
  *(v0 + 2984) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(123);
  *(v0 + 2992) = v124;
  *(v0 + 3000) = 123;
  *(v0 + 3008) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(124);
  *(v0 + 3016) = v125;
  *(v0 + 3024) = 124;
  *(v0 + 3032) = _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(125);
  *(v0 + 3040) = v126;
  *(v0 + 3048) = 125;
  v127 = sub_21CD7D0E8(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18C08, &qword_21CD87500);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27CE18B38 = v127;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s7CoreIDV28ISO23220_1_ElementIdentifierO7ageOver2nnSSSi_tFZ_0(uint64_t a1)
{
  v31 = sub_21CD836A4();
  v29 = *(v31 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v31, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CD83834();
  v30 = *(v32 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18C10, &qword_21CD87508);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v28 - v22;
  v33 = a1;
  sub_21CD837B4();
  v28 = sub_21CCA6A68();
  sub_21CD83524();
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18C20, &unk_21CD87510);
  sub_21CCA6B04(&qword_27CE18C28, &qword_27CE18C20, &unk_21CD87510);
  sub_21CD83694();
  MEMORY[0x21CF16F90](v5, v10);
  (*(v29 + 8))(v5, v31);
  v24 = *(v11 + 8);
  v24(v16, v10);
  sub_21CD837A4();
  MEMORY[0x21CF16F80](v9, v10);
  (*(v30 + 8))(v9, v32);
  v24(v20, v10);
  sub_21CCA6B04(&qword_27CE18C30, &qword_27CE18C10, &qword_21CD87508);
  sub_21CD83EC4();
  v24(v23, v10);
  v25 = v34;
  v26 = v35;
  v34 = 0x7265766F5F656761;
  v35 = 0xE90000000000005FLL;
  MEMORY[0x21CF175E0](v25, v26);

  return v34;
}

uint64_t sub_21CCA646C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21CD838D4();
}

uint64_t sub_21CCA64B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21CD838C4();
}

uint64_t sub_21CCA6510()
{
  sub_21CD84264();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21CD838C4();
  return sub_21CD84294();
}

uint64_t sub_21CCA6588(uint64_t a1)
{
  v2 = sub_21CCA6BBC(&qword_27CE18C58, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CCA65F4(uint64_t a1)
{
  v2 = sub_21CCA6BBC(&qword_27CE18C58, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21CCA6664(uint64_t a1)
{
  v2 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21CCA66D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21CD838B4();
}

uint64_t sub_21CCA674C(uint64_t a1)
{
  v2 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21CCA67B8(uint64_t a1)
{
  v2 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21CCA6824(void *a1, uint64_t a2)
{
  v4 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21CCA68D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21CCA6954()
{
  v2 = *v0;
  sub_21CD84264();
  sub_21CD83A64();
  return sub_21CD84294();
}

void *sub_21CCA69B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21CCA69D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CCA6BBC(&qword_27CE18C90, type metadata accessor for DIIdentityFatalError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_21CCA6A68()
{
  result = qword_27CE18C18;
  if (!qword_27CE18C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18C18);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21CCA6B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21CCA6BBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21CCA6D38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_21CCA6DD0()
{
  result = qword_27CE18C80;
  if (!qword_27CE18C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18C80);
  }

  return result;
}

CoreIDV::ISO18013KnownDocTypes_optional __swiftcall ISO18013KnownDocTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO18013KnownDocTypes.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_21CCA7004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "org.iso.18013.5.1.mDL";
  }

  else
  {
    v6 = "org.iso.23220.1.jp.mnc";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CD841A4();
  }

  return v11 & 1;
}

uint64_t sub_21CCA70D8()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA7170()
{
  *v0;
  *v0;
  sub_21CD83B74();
}

uint64_t sub_21CCA71F4()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA7288()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA73A0()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CCA74E0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "org.iso.18013.5.1.mDL";
  v4 = 0xD000000000000017;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v3 = "org.iso.23220.1.jp.mnc";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

CoreIDV::ISO18013KnownNamespaces_optional __swiftcall ISO18013KnownNamespaces.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO18013KnownNamespaces.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x2E6F73692E67726FLL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21CCA7710()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA7808()
{
  *v0;
  *v0;
  *v0;
  sub_21CD83B74();
}

uint64_t sub_21CCA78EC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CCA79EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E3032323332;
  v4 = 0x2E6F73692E67726FLL;
  v5 = 0x800000021CD9C650;
  v6 = 0xD000000000000012;
  if (v2 != 3)
  {
    v6 = 0xD000000000000017;
    v5 = 0x800000021CD9C5E0;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000021CD9C600;
  v8 = 0xD000000000000011;
  if (*v1)
  {
    v8 = 0xD000000000000017;
    v7 = 0x800000021CD9C620;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

CoreIDV::ISO18013_5_1_ElementIdentifier_optional __swiftcall ISO18013_5_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD841C4();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ISO18013_5_1_ElementIdentifier.rawValue.getter()
{
  result = 0x616E5F6E65766967;
  switch(*v0)
  {
    case 1:
      return 0x6E5F796C696D6166;
    case 2:
      v2 = 0x5F6874726962;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 3:
      v2 = 0x5F6575737369;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    case 4:
      return 0x645F797269707865;
    case 5:
      return 0x5F676E6975737369;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0x746E656D75636F64;
    case 8:
      return 0x7469617274726F70;
    case 9:
      return 0xD000000000000012;
    case 0xA:
      return 0xD000000000000016;
    case 0xB:
    case 0x13:
      return 0xD000000000000015;
    case 0xC:
      return 7890291;
    case 0xD:
      return 0x746867696568;
    case 0xE:
      return 0x746867696577;
    case 0xF:
      return 0x6F6C6F635F657965;
    case 0x10:
      return 0x6C6F635F72696168;
    case 0x11:
      return 0x6C705F6874726962;
    case 0x12:
    case 0x1B:
      return 0xD000000000000010;
    case 0x14:
      return 0x795F6E695F656761;
    case 0x15:
      return 0x747269625F656761;
    case 0x16:
      return 0xD000000000000014;
    case 0x17:
      return 0x6C616E6F6974616ELL;
    case 0x18:
    case 0x19:
      return 0x746E656469736572;
    case 0x1A:
      return 0xD000000000000014;
    case 0x1C:
      v3 = 10;
      goto LABEL_29;
    case 0x1D:
      v3 = 9;
LABEL_29:
      result = v3 | 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21CCA8014@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDV::ISO18013_5_1_DrivingPrivilegeIdentifier_optional __swiftcall ISO18013_5_1_DrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO18013_5_1_DrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x61645F6575737369;
  v3 = 1852270963;
  if (v1 != 5)
  {
    v3 = 0x65756C6176;
  }

  v4 = 0x7365646F63;
  if (v1 != 3)
  {
    v4 = 1701080931;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x645F797269707865;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_21CCA8198()
{
  *v0;
  *v0;
  sub_21CD83B74();
}

void sub_21CCA82B0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0x61645F6575737369;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (v2 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (v2 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x645F797269707865;
    v3 = 0xEB00000000657461;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000021CD9C8B0;
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

CoreIDV::ISO18013_AAMVA_ElementIdentifier_optional __swiftcall ISO18013_AAMVA_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD841C4();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ISO18013_AAMVA_ElementIdentifier.rawValue.getter()
{
  result = 0x6675735F656D616ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F645F6E6167726FLL;
      break;
    case 3:
      result = 0x6E617265746576;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x696D61665F616B61;
      break;
    case 7:
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x657669675F616B61;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x666675735F616B61;
      break;
    case 0xB:
      result = 0x725F746867696577;
      break;
    case 0xC:
      result = 0x6874655F65636172;
      break;
    case 0xD:
      result = 7890291;
      break;
    case 0xE:
      result = 0x616E5F7473726966;
      break;
    case 0xF:
      result = 0x6E5F656C6464696DLL;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0x646572635F4C4445;
      break;
    case 0x13:
      result = 0x706D6F635F534844;
      break;
    case 0x14:
      result = 0x746E656469736572;
      break;
    case 0x16:
      result = 0xD000000000000022;
      break;
    case 0x17:
      result = 0x69646E695F4C4443;
      break;
    case 0x18:
      result = 0xD000000000000011;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

unint64_t sub_21CCA8898@<X0>(unint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDV::ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier_optional __swiftcall ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v7 = 0xD000000000000022;
    }

    if (v1 == 2)
    {
      v7 = 0xD00000000000001DLL;
    }

    v8 = 0xD000000000000016;
    if (*v0)
    {
      v8 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x61645F6575737369;
    v3 = 0xD000000000000028;
    v4 = 0xD000000000000021;
    if (v1 == 9)
    {
      v5 = 0xD000000000000021;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (v1 != 8)
    {
      v3 = v5;
    }

    if (v1 == 6)
    {
      v4 = 0x645F797269707865;
    }

    if (v1 != 5)
    {
      v2 = v4;
    }

    if (*v0 <= 7u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_21CCA8AEC@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21CCA8B1C(uint64_t a1, uint64_t a2)
{
  if (qword_27CE18B30 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (*(off_27CE18B38 + 2))
  {
    sub_21CCA996C(a1, a2);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_21CCA8BA0(uint64_t a1, uint64_t a2)
{
  if (qword_27CE18B30 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_27CE18B38;
  if (*(off_27CE18B38 + 2) && (v3 = sub_21CCA996C(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 8 * v3);
  }

  else
  {
    return 0;
  }
}

CoreIDV::ISO23220_1_ElementIdentifier_optional __swiftcall ISO23220_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD841C4();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t ISO23220_1_ElementIdentifier.rawValue.getter()
{
  result = 0x795F6E695F656761;
  switch(*v0)
  {
    case 1:
      v2 = 0x5F6874726962;
      goto LABEL_16;
    case 2:
      result = 7890291;
      break;
    case 3:
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x747269625F656761;
      break;
    case 8:
      result = 0x616C706874726962;
      break;
    case 9:
      result = 0x5F74615F656D616ELL;
      break;
    case 0xA:
      result = 0x7469617274726F70;
      break;
    case 0xB:
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x746E656D75636F64;
      break;
    case 0xD:
      v2 = 0x5F6575737369;
LABEL_16:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
      break;
    case 0xE:
      result = 0x645F797269707865;
      break;
    case 0xF:
      result = 0xD000000000000019;
      break;
    case 0x11:
      result = 0x5F676E6975737369;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x17:
      result = 0x6C616E6F6974616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CCA905C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CD841A4();
  }

  return v11 & 1;
}

uint64_t sub_21CCA911C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_21CD84264();
  a3(v6);
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA91A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_21CD83B74();
}

uint64_t sub_21CCA9224(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_21CD84264();
  a4(v7);
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCA929C@<X0>(uint64_t *a1@<X8>)
{
  result = ISO23220_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreIDV::ISO23220_1_Japan_ElementIdentifier_optional __swiftcall ISO23220_1_Japan_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO23220_1_Japan_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63696E755F786573;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x7469617274726F70;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_21CCA944C()
{
  *v0;
  *v0;
  *v0;
  sub_21CD83B74();
}

void sub_21CCA9580(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000065646FLL;
  v4 = 0x63696E755F786573;
  v5 = 0x800000021CD9CE30;
  v6 = 0xD000000000000019;
  if (v2 != 5)
  {
    v6 = 0x7469617274726F70;
    v5 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000018;
    v3 = 0x800000021CD9CD70;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000021CD9CDD0;
  v8 = 0xD000000000000016;
  v9 = 0xD000000000000011;
  v10 = 0x800000021CD9CDF0;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x800000021CD9CE10;
  }

  if (*v1)
  {
    v8 = v9;
    v7 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (v12 ^ v13 | v11)
  {
    v3 = v7;
  }

  *a1 = v14;
  a1[1] = v3;
}

CoreIDV::ISO23220_PhotoID_1_ElementIdentifier_optional __swiftcall ISO23220_PhotoID_1_ElementIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CD84024();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x695F6E6F73726570;
    v7 = 0x74735F6874726962;
    if (v1 != 2)
    {
      v7 = 0x69635F6874726962;
    }

    if (*v0)
    {
      v6 = 0x6F635F6874726962;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD000000000000015;
    v3 = 0x746E656469736572;
    if (v1 == 7)
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (v1 != 4)
    {
      v4 = 0x746E656469736572;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21CCA986C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_21CD84264();
  a3(v7, v5);
  return sub_21CD84294();
}

uint64_t sub_21CCA98DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_21CD84264();
  a4(v8, v6);
  return sub_21CD84294();
}

unint64_t sub_21CCA9934@<X0>(unint64_t *a1@<X8>)
{
  result = ISO23220_PhotoID_1_ElementIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21CCA996C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  v6 = sub_21CD84294();

  return sub_21CCAB250(a1, a2, v6);
}

unint64_t sub_21CCA99E8()
{
  result = qword_27CE18D70;
  if (!qword_27CE18D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18D70);
  }

  return result;
}

unint64_t sub_21CCA9A70()
{
  result = qword_27CE18D88;
  if (!qword_27CE18D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18D88);
  }

  return result;
}

unint64_t sub_21CCA9AC8()
{
  result = qword_27CE18D90;
  if (!qword_27CE18D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18D90);
  }

  return result;
}

unint64_t sub_21CCA9B1C()
{
  result = qword_27CE18D98;
  if (!qword_27CE18D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18D98);
  }

  return result;
}

unint64_t sub_21CCA9B9C()
{
  result = qword_27CE18DA0;
  if (!qword_27CE18DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DA0);
  }

  return result;
}

unint64_t sub_21CCA9BF0()
{
  result = qword_27CE18DA8;
  if (!qword_27CE18DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DA8);
  }

  return result;
}

unint64_t sub_21CCA9C78()
{
  result = qword_27CE18DC0;
  if (!qword_27CE18DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DC0);
  }

  return result;
}

unint64_t sub_21CCA9CD0()
{
  result = qword_27CE18DC8;
  if (!qword_27CE18DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DC8);
  }

  return result;
}

unint64_t sub_21CCA9D50()
{
  result = qword_27CE18DD0;
  if (!qword_27CE18DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DD0);
  }

  return result;
}

unint64_t sub_21CCA9DA4()
{
  result = qword_27CE18DD8;
  if (!qword_27CE18DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DD8);
  }

  return result;
}

unint64_t sub_21CCA9E2C()
{
  result = qword_27CE18DF0;
  if (!qword_27CE18DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DF0);
  }

  return result;
}

unint64_t sub_21CCA9E84()
{
  result = qword_27CE18DF8;
  if (!qword_27CE18DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18DF8);
  }

  return result;
}

unint64_t sub_21CCA9F04()
{
  result = qword_27CE18E00;
  if (!qword_27CE18E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E00);
  }

  return result;
}

unint64_t sub_21CCA9F58()
{
  result = qword_27CE18E08;
  if (!qword_27CE18E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E08);
  }

  return result;
}

unint64_t sub_21CCA9FE0()
{
  result = qword_27CE18E20;
  if (!qword_27CE18E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E20);
  }

  return result;
}

unint64_t sub_21CCAA060()
{
  result = qword_27CE18E28;
  if (!qword_27CE18E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E28);
  }

  return result;
}

unint64_t sub_21CCAA0B4()
{
  result = qword_27CE18E30;
  if (!qword_27CE18E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E30);
  }

  return result;
}

unint64_t sub_21CCAA13C()
{
  result = qword_27CE18E48;
  if (!qword_27CE18E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E48);
  }

  return result;
}

uint64_t sub_21CCAA1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21CCAA1F8()
{
  result = qword_27CE18E50;
  if (!qword_27CE18E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E50);
  }

  return result;
}

unint64_t sub_21CCAA24C()
{
  result = qword_27CE18E58;
  if (!qword_27CE18E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E58);
  }

  return result;
}

uint64_t sub_21CCAA2D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ISO18013KnownDocTypes(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ISO18013KnownDocTypes(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ISO18013KnownNamespaces(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ISO18013KnownNamespaces(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013_5_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013_AAMVA_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013_AAMVA_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ISO23220_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CCAAB38(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21CCAABC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO23220_PhotoID_1_ElementIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CCAADD8()
{
  result = qword_27CE18E70;
  if (!qword_27CE18E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18E70);
  }

  return result;
}

unint64_t sub_21CCAAE2C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + 40);
  sub_21CD84264();
  IdentityElement.rawValue.getter();
  sub_21CD83B74();

  v7 = sub_21CD84294();

  return sub_21CCAB308(a1, a2 & 1, v7);
}

unint64_t sub_21CCAAEC8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21CD84254();

  return sub_21CCAB910(a1, v4);
}

unint64_t sub_21CCAAF0C(unint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + 40);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  v7 = sub_21CD84294();

  return sub_21CCAB97C(a1, a2 & 1, v7);
}

unint64_t sub_21CCAAF8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CD84264();
  type metadata accessor for CFString(0);
  sub_21CCAC2A4(&qword_27CE18E80, type metadata accessor for CFString);
  sub_21CD838C4();
  v4 = sub_21CD84294();

  return sub_21CCABBB8(a1, v4);
}

unint64_t sub_21CCAB040(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 40);
  sub_21CD84264();
  sub_21CCAC174(a1, v14, type metadata accessor for MobileDocumentType.Identifier);
  v16 = (*(v5 + 48))(v14, 2, v4);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x21CF17CC0](v17);
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CCAC2A4(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  v18 = sub_21CD84294();
  return sub_21CCABCC4(a1, v18);
}

unint64_t sub_21CCAB250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21CD841A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21CCAB308(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    while (1)
    {
      v11 = *(v7 + 48) + 16 * v6;
      if (*(v11 + 8) == 1)
      {
        v12 = 0xE900000000000065;
        v13 = 0x6D614E6E65766967;
        switch(*v11)
        {
          case 1:
            v12 = 0xEA0000000000656DLL;
            v13 = 0x614E796C696D6166;
            break;
          case 2:
            v12 = 0xE300000000000000;
            v13 = 7890291;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x7469617274726F70;
            break;
          case 4:
            v12 = 0xE700000000000000;
            v13 = 0x73736572646461;
            break;
          case 5:
            v12 = 0xE600000000000000;
            v13 = 0x746867696568;
            break;
          case 6:
            v13 = 0x746867696577;
            v12 = 0xE600000000000000;
            break;
          case 7:
            v12 = 0xE800000000000000;
            v13 = 0x726F6C6F43657965;
            break;
          case 8:
            v12 = 0xE900000000000072;
            v13 = 0x6F6C6F4372696168;
            break;
          case 9:
            v13 = 0xD000000000000010;
            v12 = 0x800000021CD9DA80;
            break;
          case 0xALL:
            v13 = 0x536E617265746576;
            v12 = 0xED00007375746174;
            break;
          case 0xBLL:
            v13 = 0xD000000000000010;
            v12 = 0x800000021CD9DA60;
            break;
          case 0xCLL:
            v13 = 0xD00000000000001BLL;
            v12 = 0x800000021CD9DA40;
            break;
          case 0xDLL:
            v13 = 0xD000000000000011;
            v12 = 0x800000021CD9DA00;
            break;
          case 0xELL:
            v13 = 0xD000000000000016;
            v12 = 0x800000021CD9DA20;
            break;
          case 0xFLL:
            v13 = 0x746E656D75636F64;
            v12 = 0xEE007265626D754ELL;
            break;
          case 0x10:
            v13 = 0xD000000000000011;
            v12 = 0x800000021CD9D9E0;
            break;
          case 0x11:
            v12 = 0xE300000000000000;
            v13 = 6645601;
            break;
          case 0x12:
            v13 = 0x6942664F65746164;
            v12 = 0xEB00000000687472;
            break;
          default:
            break;
        }
      }

      else
      {
        v20 = *v11;
        v14 = sub_21CD84174();
        MEMORY[0x21CF175E0](v14);

        MEMORY[0x21CF175E0](41, 0xE100000000000000);
        v13 = 0x65764F7349656761;
        v12 = 0xEA00000000002872;
      }

      if (a2)
      {
        v15 = 0xE900000000000065;
        v16 = 0x6D614E6E65766967;
        switch(a1)
        {
          case 1:
            v15 = 0xEA0000000000656DLL;
            v16 = 0x614E796C696D6166;
            break;
          case 2:
            v15 = 0xE300000000000000;
            v16 = 7890291;
            break;
          case 3:
            v15 = 0xE800000000000000;
            v16 = 0x7469617274726F70;
            break;
          case 4:
            v15 = 0xE700000000000000;
            v16 = 0x73736572646461;
            break;
          case 5:
            v15 = 0xE600000000000000;
            v16 = 0x746867696568;
            break;
          case 6:
            v16 = 0x746867696577;
            v15 = 0xE600000000000000;
            break;
          case 7:
            v15 = 0xE800000000000000;
            v16 = 0x726F6C6F43657965;
            break;
          case 8:
            v15 = 0xE900000000000072;
            v16 = 0x6F6C6F4372696168;
            break;
          case 9:
            v16 = 0xD000000000000010;
            v15 = 0x800000021CD9DA80;
            break;
          case 10:
            v16 = 0x536E617265746576;
            v15 = 0xED00007375746174;
            break;
          case 11:
            v16 = 0xD000000000000010;
            v15 = 0x800000021CD9DA60;
            break;
          case 12:
            v16 = 0xD00000000000001BLL;
            v15 = 0x800000021CD9DA40;
            break;
          case 13:
            v16 = 0xD000000000000011;
            v15 = 0x800000021CD9DA00;
            break;
          case 14:
            v16 = 0xD000000000000016;
            v15 = 0x800000021CD9DA20;
            break;
          case 15:
            v16 = 0x746E656D75636F64;
            v15 = 0xEE007265626D754ELL;
            break;
          case 16:
            v16 = 0xD000000000000011;
            v15 = 0x800000021CD9D9E0;
            break;
          case 17:
            v15 = 0xE300000000000000;
            v16 = 6645601;
            break;
          case 18:
            v16 = 0x6942664F65746164;
            v15 = 0xEB00000000687472;
            break;
          default:
            break;
        }
      }

      else
      {
        v17 = sub_21CD84174();
        MEMORY[0x21CF175E0](v17);

        MEMORY[0x21CF175E0](41, 0xE100000000000000);
        v16 = 0x65764F7349656761;
        v15 = 0xEA00000000002872;
      }

      if (v13 == v16 && v12 == v15)
      {
        break;
      }

      v18 = sub_21CD841A4();

      if ((v18 & 1) == 0)
      {
        v6 = (v6 + 1) & v10;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

unint64_t sub_21CCAB910(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CCAB97C(unint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        v10 = a1 == 1;
        switch(v9)
        {
          case 1:
            goto LABEL_23;
          case 2:
            v10 = a1 == 2;
LABEL_23:
            if (v10)
            {
              goto LABEL_24;
            }

            goto LABEL_4;
          case 3:
            if (a1 != 3)
            {
              goto LABEL_4;
            }

            goto LABEL_24;
          case 4:
            if (a1 != 4)
            {
              goto LABEL_4;
            }

LABEL_24:
            if (a2)
            {
              return result;
            }

            goto LABEL_4;
          case 5:
            if ((a2 & (a1 == 5)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 6:
            if ((a2 & (a1 == 6)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 7:
            if ((a2 & (a1 == 7)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 8:
            if ((a2 & (a1 == 8)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 9:
            if ((a2 & (a1 == 9)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 10:
            if ((a2 & (a1 == 10)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 11:
            if ((a2 & (a1 == 11)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 12:
            if ((a2 & (a1 == 12)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 13:
            if ((a2 & (a1 == 13)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 14:
            if ((a2 & (a1 == 14)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 15:
            if ((a2 & (a1 == 15)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 16:
            if ((a2 & (a1 == 16)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 17:
            if ((a2 & (a1 == 17)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          case 18:
            if ((a2 & (a1 > 0x11)) == 0)
            {
              goto LABEL_4;
            }

            return result;
          default:
            if ((a2 & (a1 == 0)) == 0)
            {
              goto LABEL_4;
            }

            return result;
        }
      }

      if ((a2 & 1) == 0 && v9 == a1)
      {
        break;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CCABBB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_21CCAC2A4(&qword_27CE18E80, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21CD838B4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CCABCC4(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentType.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for MobileDocumentType(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2 + 64;
  v48 = v2;
  v26 = -1 << *(v2 + 32);
  v27 = a2 & ~v26;
  if ((*(v2 + 64 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v28 = *(v22 + 72);
    v45 = ~v26;
    v46 = v28;
    v29 = (v5 + 48);
    v44 = (v5 + 8);
    v40 = (v5 + 32);
    v41 = v2 + 64;
    while (1)
    {
      sub_21CCAC174(*(v48 + 48) + v46 * v27, v24, type metadata accessor for MobileDocumentType);
      v30 = *(v14 + 48);
      sub_21CCAC174(v24, v18, type metadata accessor for MobileDocumentType.Identifier);
      sub_21CCAC174(v47, &v18[v30], type metadata accessor for MobileDocumentType.Identifier);
      v31 = *v29;
      v32 = (*v29)(v18, 2, v4);
      if (v32)
      {
        break;
      }

      sub_21CCAC174(v18, v13, type metadata accessor for MobileDocumentType.Identifier);
      if (v31(&v18[v30], 2, v4))
      {
        sub_21CCAC244(v24, type metadata accessor for MobileDocumentType);
        (*v44)(v13, v4);
LABEL_4:
        sub_21CCAC1DC(v18);
        goto LABEL_5;
      }

      v33 = v14;
      v34 = v13;
      v35 = v42;
      (*v40)(v42, &v18[v30], v4);
      v43 = MEMORY[0x21CF17230](v34, v35);
      v36 = *v44;
      v37 = v35;
      v13 = v34;
      v14 = v33;
      v25 = v41;
      (*v44)(v37, v4);
      sub_21CCAC244(v24, type metadata accessor for MobileDocumentType);
      v36(v13, v4);
      if (v43)
      {
LABEL_15:
        sub_21CCAC244(v18, type metadata accessor for MobileDocumentType.Identifier);
        return v27;
      }

      sub_21CCAC244(v18, type metadata accessor for MobileDocumentType.Identifier);
LABEL_5:
      v27 = (v27 + 1) & v45;
      if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        return v27;
      }
    }

    if (v32 == 1)
    {
      sub_21CCAC244(v24, type metadata accessor for MobileDocumentType);
      if (v31(&v18[v30], 2, v4) == 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_21CCAC244(v24, type metadata accessor for MobileDocumentType);
      if (v31(&v18[v30], 2, v4) == 2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_4;
  }

  return v27;
}

uint64_t sub_21CCAC174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCAC1DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CCAC244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CCAC2A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IdentityAnalyticsReportEventKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IdentityAnalyticsReportEventKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_21CCAD21C()
{
  v17 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus);
  v0[4] = v1;
  KeyPath = swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_21CCB1988;
  *(v3 + 24) = KeyPath;

  os_unfair_lock_lock(v1 + 7);
  sub_21CCB1990(&v1[4], &v15);
  os_unfair_lock_unlock(v1 + 7);

  v4 = v15;
  v0[5] = v15;
  v5 = v16;

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = v0[1];

      return v6(v4);
    }

    else
    {
      sub_21CCB14E0();
      swift_allocError();
      *v13 = 2;
      *(v13 + 8) = 0xD00000000000002FLL;
      *(v13 + 16) = 0x800000021CD9E190;
      *(v13 + 24) = 0;
      swift_willThrow();
      v14 = v0[1];

      return v14();
    }
  }

  else
  {
    v8 = *(MEMORY[0x277D857C8] + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    v10 = sub_21CCB17E8(0, &qword_27CE18EF8, 0x277D43FE0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
    *v9 = v0;
    v9[1] = sub_21CCAD488;
    v12 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v4, v10, v11, v12);
  }
}

uint64_t sub_21CCAD488()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_21CCAD68C;
  }

  else
  {
    v3 = sub_21CCAD59C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_21CCAD59C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v2 + 7);
  sub_21CCB19E0(&v2[4]);
  if (v1)
  {
    v4 = (v0[4] + 28);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = v0[5];
    os_unfair_lock_unlock((v0[4] + 28));
    sub_21CCB14C4(v5, 0);

    v6 = v0[1];

    v6(v3);
  }
}

uint64_t sub_21CCAD68C()
{
  sub_21CCB14C4(*(v0 + 40), 0);
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CCAD6F4(void *a1, char a2)
{
  sub_21CCB1A30(a1, a2);
  swift_getAtKeyPath();
  sub_21CCB14C4(a1, a2);
  return v5;
}

uint64_t sub_21CCAD75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[5] = a1;
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_21CCAD830;

  return sub_21CCADB98(a5, a6, a7, a8);
}

uint64_t sub_21CCAD830(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[8];
  v8 = *v2;
  v4[9] = v1;

  if (v1)
  {
    v6 = sub_21CCADA70;
  }

  else
  {
    v6 = sub_21CCAD94C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CCAD94C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "RTCReporter: Successfully established session with RTC", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[3];
  v6 = v0[5];

  *v6 = v5;
  v7 = v0[1];

  return v7();
}

uint64_t sub_21CCADA70()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_21CCB14E0();
  v4 = swift_allocError();
  *v5 = 5;
  *(v5 + 8) = 0xD000000000000029;
  *(v5 + 16) = 0x800000021CD9E070;
  *(v5 + 24) = v1;
  v6 = v1;
  v7 = v1;
  v3(v4);

  swift_allocError();
  *v8 = 5;
  *(v8 + 8) = 0xD000000000000029;
  *(v8 + 16) = 0x800000021CD9E070;
  *(v8 + 24) = v1;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CCADB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EB8, &qword_21CD885B0);
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCADC6C, 0, 0);
}

uint64_t sub_21CCADC6C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[27] = v1;
  v0[28] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "RTCReporter: initializeRTCSession called", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  sub_21CCAE884(v9, v8, v7, v5);
  v0[29] = v10;
  v11 = v10;
  sub_21CD838A4();
  v12 = sub_21CD839D4();
  v13 = sub_21CD83E24();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21CC90000, v12, v13, "RTCReporter: Session lock enter", v14, 2u);
    MEMORY[0x21CF18580](v14, -1, -1);
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CCADFCC;
  swift_continuation_init();
  v0[17] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC0, &qword_21CD885B8);
  sub_21CD83CE4();
  (*(v16 + 32))(boxed_opaque_existential_0, v15, v17);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CCAF4EC;
  v0[13] = &block_descriptor;
  [v11 startConfigurationWithCompletionHandler_];
  (*(v16 + 8))(boxed_opaque_existential_0, v17);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CCADFCC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CCAE0AC, 0, 0);
}

uint64_t sub_21CCAE0AC()
{
  v31 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[28];
    v3 = *(v0[23] + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_startTime);
    v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
    v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v5));
    sub_21CCB1928(v3 + v4, &qword_27CE18EC8, &unk_21CD885C0);
    sub_21CD83734();
    v6 = sub_21CD83744();
    (*(*(v6 - 8) + 56))(v3 + v4, 0, 1, v6);
    os_unfair_lock_unlock((v3 + v5));

    v7 = sub_21CD839D4();
    v8 = sub_21CD83E24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x21CF176E0](v1, MEMORY[0x277D84F70] + 8);
      v13 = v12;

      v14 = sub_21CCC02FC(v11, v13, v30);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_21CC90000, v7, v8, "RTCReporter: Retrieved backends: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF18580](v10, -1, -1);
      MEMORY[0x21CF18580](v9, -1, -1);
    }

    else
    {
    }

    if (qword_27CE18B48 != -1)
    {
      swift_once();
    }

    v20 = v0[22];
    __swift_project_value_buffer(v0[27], qword_27CE19598);

    v21 = sub_21CD839D4();
    v22 = sub_21CD83E44();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[21];
      v23 = v0[22];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21CCC02FC(v24, v23, v30);
      _os_log_impl(&dword_21CC90000, v21, v22, "Initiating RTC reporting for subject: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x21CF18580](v26, -1, -1);
      MEMORY[0x21CF18580](v25, -1, -1);
    }

    v27 = v0[26];

    v28 = v0[1];
    v29 = v0[29];

    return v28(v29);
  }

  else
  {
    v15 = v0[29];
    sub_21CCB14E0();
    swift_allocError();
    *v16 = 5;
    *(v16 + 8) = 0xD000000000000046;
    *(v16 + 16) = 0x800000021CD9E0E0;
    *(v16 + 24) = 0;
    swift_willThrow();

    v17 = v0[26];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_21CCAE4B4(uint64_t a1, uint64_t a2)
{
  sub_21CCB14C4(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = 0;
}

uint64_t sub_21CCAE504()
{
  v1 = v0;
  if (qword_27CE18B48 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_27CE19598);
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CC90000, v3, v4, "RTCReporter: deinit", v5, 2u);
    MEMORY[0x21CF18580](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_samplingUUID;
  v7 = sub_21CD83794();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_startTime);

  v9 = *(v1 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_archivedTokenCache);

  v10 = *(v1 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus);

  return v1;
}

uint64_t sub_21CCAE654()
{
  sub_21CCAE504();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityAnalyticsReporter()
{
  result = qword_27CE18EA0;
  if (!qword_27CE18EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CCAE700()
{
  result = sub_21CD83794();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7CoreIDV25IdentityAnalyticsReporterC13SessionStatus33_975C4203E153A4B0A3D3E37AE827F6CFLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21CCAE7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CCAE818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21CCAE85C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_21CCAE884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18ED0, &unk_21CD8F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CD88480;
  if (!*MEMORY[0x277D44030])
  {
    __break(1u);
    goto LABEL_44;
  }

  *(inited + 32) = sub_21CD83B24();
  *(inited + 40) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v10 = sub_21CCB17E8(0, &qword_27CE18ED8, 0x277CCABB0);
  *(inited + 72) = v10;
  *(inited + 48) = v9;
  if (!*MEMORY[0x277D44040])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(inited + 80) = sub_21CD83B24();
  *(inited + 88) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  *(inited + 120) = v10;
  *(inited + 96) = v12;
  if (!*MEMORY[0x277D44080])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(inited + 128) = sub_21CD83B24();
  *(inited + 136) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(inited + 168) = v10;
  *(inited + 144) = v14;
  if (!*MEMORY[0x277D44010])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(inited + 176) = sub_21CD83B24();
  *(inited + 184) = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 216) = v10;
  *(inited + 192) = v16;
  if (!*MEMORY[0x277D44028])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(inited + 224) = sub_21CD83B24();
  *(inited + 232) = v17;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v20 = sub_21CD83B24();
    v22 = v21;

    v23 = (inited + 240);
    *(inited + 264) = MEMORY[0x277D837D0];
    if (v22)
    {
      *v23 = v20;
      goto LABEL_11;
    }
  }

  else
  {
    v23 = (inited + 240);
    *(inited + 264) = MEMORY[0x277D837D0];
  }

  *v23 = 0;
  v22 = 0xE000000000000000;
LABEL_11:
  *(inited + 248) = v22;
  if (!*MEMORY[0x277D44070])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(inited + 272) = sub_21CD83B24();
  *(inited + 280) = v24;
  v25 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_samplingUUID;
  v26 = sub_21CD83794();
  *(inited + 312) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 288));
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v4 + v25, v26);
  sub_21CD7D1E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EE0, &qword_21CD885D0);
  swift_arrayDestroy();
  v28 = 0x277D43000uLL;
  v29 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  if (!v29)
  {
    goto LABEL_28;
  }

  v30 = v29;
  v31 = objc_opt_self();
  *&v103 = 0;
  v32 = [v31 archivedDataWithRootObject:v30 requiringSecureCoding:0 error:&v103];
  v33 = v103;
  v95 = a2;
  v96 = a4;
  if (v32)
  {
    v34 = sub_21CD836F4();
    v36 = v35;

    v28 = *(v4 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_archivedTokenCache);
    MEMORY[0x28223BE20](v37, v38);
    os_unfair_lock_lock((v28 + 32));
    v39 = v100;
    sub_21CCB1830(v28 + 16);
    if (v100)
    {
LABEL_52:
      os_unfair_lock_unlock((v28 + 32));

      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v28 + 32));
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v40 = sub_21CD839F4();
    __swift_project_value_buffer(v40, qword_280F78E40);
    v41 = sub_21CD839D4();
    v42 = sub_21CD83E24();
    v28 = 0x277D43000;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_21CC90000, v41, v42, "RTCReporter: Successfully archived session token during initialization", v43, 2u);
      MEMORY[0x21CF18580](v43, -1, -1);
    }

    sub_21CCB1880(v34, v36);
  }

  else
  {
    v44 = v33;
    v45 = sub_21CD83644();

    v39 = v45;
    swift_willThrow();
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v46 = sub_21CD839F4();
    __swift_project_value_buffer(v46, qword_280F78E40);
    v47 = v45;
    v48 = sub_21CD839D4();
    v49 = sub_21CD83E34();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v103 = v101;
      *v50 = 136315138;
      swift_getErrorValue();
      v51 = sub_21CD84224();
      v53 = sub_21CCC02FC(v51, v52, &v103);

      *(v50 + 4) = v53;
      _os_log_impl(&dword_21CC90000, v48, v49, "RTCReporter: Failed to archive session token during initialization: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x21CF18580](v101, -1, -1);
      MEMORY[0x21CF18580](v50, -1, -1);
    }

    else
    {
    }

    v28 = 0x277D43000uLL;
  }

  a2 = v95;
  a4 = v96;
  if (!*MEMORY[0x277D44058])
  {
    __break(1u);
    goto LABEL_52;
  }

  v54 = sub_21CD83B24();
  v56 = v55;
  v104 = sub_21CCB17E8(0, &qword_27CE18EF8, 0x277D43FE0);
  *&v103 = v30;
  sub_21CC91EF8(&v103, v102);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v102, v54, v56, isUniquelyReferenced_nonNull_native);

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EE8, &qword_21CD885D8);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_21CD88490;
  if (!*MEMORY[0x277D44090])
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  *(v58 + 32) = sub_21CD83B24();
  *(v58 + 40) = v59;
  *(v58 + 48) = a1;
  *(v58 + 56) = a2;
  if (!*MEMORY[0x277D44098])
  {
    goto LABEL_50;
  }

  *(v58 + 64) = sub_21CD83B24();
  *(v58 + 72) = v60;
  *(v58 + 80) = a3;
  *(v58 + 88) = a4;

  v61 = sub_21CD7D314(v58);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EF0, &qword_21CD885E0);
  swift_arrayDestroy();

  sub_21CCAF568(v62);

  sub_21CCAF830(v61);
  v63 = objc_allocWithZone(*(v28 + 4064));
  v64 = sub_21CD83A14();

  v65 = sub_21CD83A14();

  v66 = sub_21CD83C74();
  v67 = [v63 initWithSessionInfo:v64 userInfo:v65 frameworksToCheck:v66];

  if (v67)
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v68 = sub_21CD839F4();
    __swift_project_value_buffer(v68, qword_280F78E40);

    v69 = sub_21CD839D4();
    v70 = sub_21CD83E24();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v103 = v72;
      *v71 = 136315394;

      v73 = sub_21CD83A34();
      v75 = v74;

      v76 = sub_21CCC02FC(v73, v75, &v103);

      *(v71 + 4) = v76;
      *(v71 + 12) = 2080;
      v77 = sub_21CD83A34();
      v79 = v78;

      v80 = sub_21CCC02FC(v77, v79, &v103);

      *(v71 + 14) = v80;
      _os_log_impl(&dword_21CC90000, v69, v70, "RTCReporter: Initialized new session with sessionInfo: %s, userInfo: %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v72, -1, -1);
      MEMORY[0x21CF18580](v71, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v81 = sub_21CD839F4();
    __swift_project_value_buffer(v81, qword_280F78E40);

    v82 = sub_21CD839D4();
    v83 = sub_21CD83E34();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v103 = v99;
      *v84 = 136315394;

      v85 = sub_21CD83A34();
      v87 = v86;

      v88 = sub_21CCC02FC(v85, v87, &v103);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v89 = sub_21CD83A34();
      v91 = v90;

      v92 = sub_21CCC02FC(v89, v91, &v103);

      *(v84 + 14) = v92;
      _os_log_impl(&dword_21CC90000, v82, v83, "Failed to create a reporting session with sessionInfo: %s, userInfo: %s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v99, -1, -1);
      MEMORY[0x21CF18580](v84, -1, -1);
    }

    else
    {
    }

    sub_21CCB14E0();
    swift_allocError();
    *v93 = 5;
    *(v93 + 8) = 0xD000000000000022;
    *(v93 + 16) = 0x800000021CD9E130;
    *(v93 + 24) = 0;
    swift_willThrow();
  }

  v94 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21CCAF4EC(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_21CD83C84();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EB8, &qword_21CD885B0);
  return sub_21CD83D04();
}

uint64_t sub_21CCAF568(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F00, &qword_21CD885E8);
    v2 = sub_21CD84014();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21CCB15A8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21CC91EF8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21CC91EF8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21CC91EF8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21CD83F24();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_21CC91EF8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CCAF830(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F00, &qword_21CD885E8);
    v2 = sub_21CD84014();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_21CC91EF8(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_21CC91EF8(v34, v35);
    v19 = *(v2 + 40);
    result = sub_21CD83F24();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_21CC91EF8(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CCAFAF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F00, &qword_21CD885E8);
    v2 = sub_21CD84014();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_21CCB15A8(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_21CC91EF8((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21CC91EF8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21CC91EF8(v31, v32);
    v16 = *(v2 + 40);
    result = sub_21CD83F24();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21CC91EF8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CCAFDC0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_21CD83834();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v8 = sub_21CD83744();
  v2[42] = v8;
  v9 = *(v8 - 8);
  v2[43] = v9;
  v10 = *(v9 + 64) + 15;
  v2[44] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CCAFF78, 0, 0);
}

uint64_t sub_21CCAFF78()
{
  v47 = v0;
  v46 = *MEMORY[0x277D85DE8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  *(v0 + 360) = v1;
  *(v0 + 368) = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "RTCReporter: Inside of sendEvent", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 328);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);

  *(v0 + 264) = v9;

  sub_21CCB0CD8(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_21CCB1928(*(v0 + 328), &qword_27CE18EC8, &unk_21CD885C0);
  }

  else
  {
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);
    v12 = *(v0 + 336);
    (*(v11 + 32))(v10, *(v0 + 328), v12);
    sub_21CD83714();
    v45 = MEMORY[0x277D839F8];
    *&v44 = v13;
    sub_21CCB169C(&v44, 0x436465646E756F72, 0xEF5354746E65696CLL, (v0 + 232));
    sub_21CCB1928(v0 + 232, &qword_27CE18F10, &qword_21CD88600);
    (*(v11 + 8))(v10, v12);
  }

  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v16 = *(v0 + 296);
  v17 = *(v0 + 304);
  sub_21CD83824();
  sub_21CD83814();
  (*(v17 + 8))(v14, v16);
  v18 = sub_21CD837F4();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v15, 1, v18);
  v21 = *(v0 + 320);
  if (v20 == 1)
  {
    v22 = &qword_27CE18F08;
    v23 = &qword_21CD885F8;
    v24 = *(v0 + 320);
  }

  else
  {
    v25 = sub_21CD837C4();
    v27 = v26;
    (*(v19 + 8))(v21, v18);
    v45 = MEMORY[0x277D837D0];
    *&v44 = v25;
    *(&v44 + 1) = v27;
    sub_21CCB169C(&v44, 0x656C61636F4CLL, 0xE600000000000000, (v0 + 200));
    v22 = &qword_27CE18F10;
    v23 = &qword_21CD88600;
    v24 = v0 + 200;
  }

  sub_21CCB1928(v24, v22, v23);
  v28 = *(*(v0 + 288) + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_startTime);
  v29 = *(*v28 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v30));
  sub_21CCB1030(v28 + v29, &v44);
  os_unfair_lock_unlock((v28 + v30));
  v45 = MEMORY[0x277D83B88];
  sub_21CCB169C(&v44, 0x446E6F6973736573, 0xEF6E6F6974617275, (v0 + 168));
  sub_21CCB1928(v0 + 168, &qword_27CE18F10, &qword_21CD88600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F18, &qword_21CD88608);
  result = swift_initStackObject();
  *(result + 16) = xmmword_21CD884A0;
  v32 = *MEMORY[0x277D43FF0];
  if (!*MEMORY[0x277D43FF0])
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = result;
  *(result + 32) = v32;
  v34 = MEMORY[0x277D84C58];
  *(result + 64) = MEMORY[0x277D84C58];
  *(result + 40) = 2;
  v35 = *MEMORY[0x277D44008];
  if (!*MEMORY[0x277D44008])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(result + 72) = v35;
  *(result + 104) = v34;
  *(result + 80) = 200;
  v36 = *MEMORY[0x277D44000];
  if (!*MEMORY[0x277D44000])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(result + 112) = v36;
  v37 = *(v0 + 264);
  *(result + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F20, &qword_21CD88610);
  *(v33 + 120) = v37;
  v38 = v32;
  v39 = v35;
  v40 = v36;
  *(v0 + 376) = sub_21CD7D428(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F28, &qword_21CD88618);
  swift_arrayDestroy();
  v41 = swift_task_alloc();
  *(v0 + 384) = v41;
  *v41 = v0;
  v41[1] = sub_21CCB0518;
  v42 = *(v0 + 288);
  v43 = *MEMORY[0x277D85DE8];

  return sub_21CCAD1FC();
}

uint64_t sub_21CCB0518(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 384);
  v10 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = v3[47];

    v6 = sub_21CCB0BBC;
  }

  else
  {
    v6 = sub_21CCB0668;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CCB0668()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 392);
  sub_21CCAFAF8(*(v0 + 376));
  v2 = sub_21CD83A14();

  *(v0 + 272) = 0;
  v3 = [v1 sendMessageWithDictionary:v2 error:v0 + 272];

  v4 = *(v0 + 272);
  if (v3)
  {
    v5 = qword_27CE18B48;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 280);
    __swift_project_value_buffer(*(v0 + 360), qword_27CE19598);

    v8 = sub_21CD839D4();
    v9 = sub_21CD83E44();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 280);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v52[0] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_21CCC02FC(0x797469746E656469, 0xE800000000000000, v52);
      *(v11 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F30, &unk_21CD88628);
      v13 = sub_21CD83A34();
      v15 = sub_21CCC02FC(v13, v14, v52);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_21CC90000, v8, v9, "subject: %{public}s event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v12, -1, -1);
      MEMORY[0x21CF18580](v11, -1, -1);
    }

    v17 = *(v0 + 368);
    v16 = *(v0 + 376);
    v18 = *(v0 + 392);

    v19 = sub_21CD839D4();
    v20 = sub_21CD83E24();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 392);
    v23 = *(v0 + 376);
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136315394;
      v26 = [v22 getReportingSessionID];
      v27 = sub_21CD83B24();
      v29 = v28;

      v30 = sub_21CCC02FC(v27, v29, v52);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      type metadata accessor for CFString(0);
      sub_21CCB1DDC(&qword_27CE18C98, type metadata accessor for CFString);
      v31 = sub_21CD83A34();
      v33 = v32;

      v34 = sub_21CCC02FC(v31, v33, v52);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_21CC90000, v19, v20, "RTCReporter: Message delivered to RTC with sessionIdentifier: %s payload: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF18580](v25, -1, -1);
      MEMORY[0x21CF18580](v24, -1, -1);
    }

    else
    {
    }

    v46 = *(v0 + 352);
    v47 = *(v0 + 320);
    v48 = *(v0 + 328);
    v49 = *(v0 + 312);

    v44 = *(v0 + 8);
    v50 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v35 = *(v0 + 392);
    v36 = *(v0 + 376);
    v37 = v4;

    v38 = sub_21CD83644();

    swift_willThrow();
    v39 = *(v0 + 352);
    v41 = *(v0 + 320);
    v40 = *(v0 + 328);
    v42 = *(v0 + 312);
    sub_21CCB14E0();
    swift_allocError();
    *v43 = 6;
    *(v43 + 8) = 0xD00000000000002BLL;
    *(v43 + 16) = 0x800000021CD9E160;
    *(v43 + 24) = v38;
    swift_willThrow();

    v44 = *(v0 + 8);
    v45 = *MEMORY[0x277D85DE8];
  }

  return v44();
}

uint64_t sub_21CCB0BBC()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[50];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  sub_21CCB14E0();
  swift_allocError();
  *v6 = 6;
  *(v6 + 8) = 0xD00000000000002BLL;
  *(v6 + 16) = 0x800000021CD9E160;
  *(v6 + 24) = v1;
  swift_willThrow();

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_21CCB0CD8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_21CD83744();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CD83504();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CD83894();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD83874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F38, &qword_21CD88658);
  v16 = sub_21CD83884();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21CD884A0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CC9988], v16);
  v22(v21 + v18, *MEMORY[0x277CC9998], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CC9968], v16);
  sub_21CCB1ABC(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21CD83734();
  sub_21CD83854();

  (*(v29 + 8))(v5, v30);
  sub_21CD83864();
  (*(v27 + 8))(v10, v28);
  return (*(v25 + 8))(v15, v26);
}

uint64_t sub_21CCB1030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21CD83894();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CD83504();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v42 - v16;
  v18 = sub_21CD83744();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v42 - v26;
  sub_21CCB1A4C(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_21CCB1928(v17, &qword_27CE18EC8, &unk_21CD885C0);
    v29 = 0;
  }

  else
  {
    (*(v19 + 32))(v27, v17, v18);
    sub_21CD83874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F38, &qword_21CD88658);
    v30 = sub_21CD83884();
    v31 = *(v30 - 8);
    v45 = v2;
    v32 = v31;
    v33 = *(v31 + 72);
    v34 = *(v32 + 80);
    v43 = v5;
    v35 = (v34 + 32) & ~v34;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CD884B0;
    (*(v32 + 104))(v36 + v35, *MEMORY[0x277CC99A8], v30);
    sub_21CCB1ABC(v36);
    v44 = a2;
    swift_setDeallocating();
    (*(v32 + 8))(v36 + v35, v30);
    swift_deallocClassInstance();
    sub_21CD83734();
    v37 = v46;
    v38 = v50;
    sub_21CD83844();
    a2 = v44;

    v39 = *(v19 + 8);
    v39(v24, v18);
    (*(v49 + 8))(v38, v43);
    v40 = sub_21CD834F4();
    LOBYTE(v38) = v41;
    (*(v47 + 8))(v37, v48);
    result = (v39)(v27, v18);
    if (v38)
    {
      v29 = 0;
    }

    else
    {
      v29 = v40;
    }
  }

  *a2 = v29;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_21CCB14C4(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_21CCB14E0()
{
  result = qword_27CE18EB0;
  if (!qword_27CE18EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18EB0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21CCB15A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21CCB169C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_21CCA996C(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_21CD758D4(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_21CCA996C(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_21CD841F4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_21CD76974();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_21CD76764(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_21CC91EF8((v13[7] + 32 * v14), a4);
  result = sub_21CC91EF8(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_21CCB17E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21CCB1830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21CC95F8C(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_21CCB18D4(v4, v3);
}

uint64_t sub_21CCB1880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21CCB18D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21CCB1928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21CCB1990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

id sub_21CCB19E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_21CCB14C4(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 1;
  return v3;
}

id sub_21CCB1A30(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_21CCB1A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCB1ABC(uint64_t a1)
{
  v2 = sub_21CD83884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F40, &qword_21CD88660);
    v12 = sub_21CD83F54();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_21CCB1DDC(&qword_27CE18F48, MEMORY[0x277CC99D0]);
      v20 = sub_21CD83A54();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_21CCB1DDC(&qword_27CE18F50, MEMORY[0x277CC99D0]);
          v27 = sub_21CD83A84();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21CCB1DDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CCB1E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F58, &qword_21CD88668);
    v3 = sub_21CD83F54();
    v4 = 0;
    v5 = v3 + 56;
    v55 = a1 + 32;
    while (1)
    {
      v10 = v55 + 16 * v4;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v3 + 40);
      sub_21CD84264();
      if (v12)
      {
        v14 = qword_21CD88678[v11];
      }

      else
      {
        MEMORY[0x21CF17CC0](4);
        v14 = v11;
      }

      MEMORY[0x21CF17CC0](v14);
      result = sub_21CD84294();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v3 + 48);
      if (((1 << v17) & v19) != 0)
      {
        v22 = ~v16;
        if (v11 > 0x16)
        {
          v23 = v12;
        }

        else
        {
          v23 = 0;
        }

        v54 = v23;
        if (v11 == 22)
        {
          v24 = v12;
        }

        else
        {
          v24 = 0;
        }

        v53 = v24;
        if (v11 == 21)
        {
          v25 = v12;
        }

        else
        {
          v25 = 0;
        }

        v52 = v25;
        if (v11 == 20)
        {
          v26 = v12;
        }

        else
        {
          v26 = 0;
        }

        v51 = v26;
        if (v11 == 19)
        {
          v27 = v12;
        }

        else
        {
          v27 = 0;
        }

        v50 = v27;
        if (v11 == 18)
        {
          v28 = v12;
        }

        else
        {
          v28 = 0;
        }

        v49 = v28;
        if (v11 == 17)
        {
          v29 = v12;
        }

        else
        {
          v29 = 0;
        }

        v48 = v29;
        if (v11 == 16)
        {
          v30 = v12;
        }

        else
        {
          v30 = 0;
        }

        v47 = v30;
        if (v11 == 15)
        {
          v31 = v12;
        }

        else
        {
          v31 = 0;
        }

        if (v11 == 14)
        {
          v32 = v12;
        }

        else
        {
          v32 = 0;
        }

        if (v11 == 13)
        {
          v33 = v12;
        }

        else
        {
          v33 = 0;
        }

        if (v11 == 12)
        {
          v34 = v12;
        }

        else
        {
          v34 = 0;
        }

        if (v11 == 11)
        {
          v35 = v12;
        }

        else
        {
          v35 = 0;
        }

        if (v11 == 10)
        {
          v36 = v12;
        }

        else
        {
          v36 = 0;
        }

        if (v11 == 9)
        {
          v37 = v12;
        }

        else
        {
          v37 = 0;
        }

        if (v11 == 8)
        {
          v38 = v12;
        }

        else
        {
          v38 = 0;
        }

        if (v11 == 7)
        {
          v39 = v12;
        }

        else
        {
          v39 = 0;
        }

        if (v11 == 6)
        {
          v40 = v12;
        }

        else
        {
          v40 = 0;
        }

        if (v11 == 5)
        {
          v41 = v12;
        }

        else
        {
          v41 = 0;
        }

        if (v11 == 4)
        {
          v42 = v12;
        }

        else
        {
          v42 = 0;
        }

        if (v11)
        {
          result = 0;
        }

        else
        {
          result = v12;
        }

        do
        {
          v44 = (v21 + 16 * v17);
          v45 = *v44;
          if (*(v44 + 8) == 1)
          {
            v46 = v11 == 1;
            switch(v45)
            {
              case 1:
                break;
              case 2:
                v46 = v11 == 2;
                break;
              case 3:
                v46 = v11 == 3;
                break;
              case 4:
                if (v42)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 5:
                if (v41)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 6:
                if (v40)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 7:
                if (v39)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 8:
                if (v38)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 9:
                if (v37)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 10:
                if (v36)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 11:
                if (v35)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 12:
                if (v34)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 13:
                if (v33)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 14:
                if (v32)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 15:
                if (v31)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 16:
                if (v47)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 17:
                if (v48)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 18:
                if (v49)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 19:
                if (v50)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 20:
                if (v51)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 21:
                if (v52)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 22:
                if (v53)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              case 23:
                if (v54)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
              default:
                if (result)
                {
                  goto LABEL_5;
                }

                goto LABEL_77;
            }

            if ((v12 & v46) == 1)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v45 == v11)
            {
              v43 = v12;
            }

            else
            {
              v43 = 1;
            }

            if ((v43 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

LABEL_77:
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while ((v19 & (1 << v17)) != 0);
      }

      *(v5 + 8 * v18) = v19 | v20;
      v6 = v21 + 16 * v17;
      *v6 = v11;
      *(v6 + 8) = v12;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        break;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t CredentialBiometricBindingManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CredentialBiometricBindingManager.init()();
  return v0;
}

uint64_t CredentialBiometricBindingManager.init()()
{
  v1 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CC90000, v3, v4, "CredentialBiometricBindingManager init", v5, 2u);
    MEMORY[0x21CF18580](v5, -1, -1);
  }

  v6 = [objc_opt_self() interfaceWithProtocol_];
  memset(v29, 0, sizeof(v29));
  v7 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v8 = sub_21CD83B04();
  v9 = [v7 initWithMachServiceName:v8 options:4096];

  sub_21CCB3200(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F60, &unk_21CD88750);
  v10 = swift_allocObject();
  [v9 setRemoteObjectInterface_];
  v26 = sub_21CCB2644;
  v27 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CCB3270;
  v25 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);

  [v9 setInvalidationHandler_];
  _Block_release(v11);
  v26 = sub_21CCB2650;
  v27 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CCB3270;
  v25 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);

  [v9 setInterruptionHandler_];
  _Block_release(v12);
  [v9 setExportedInterface_];
  sub_21CCB3200(v28, &aBlock);
  v13 = v25;
  if (v25)
  {
    v14 = __swift_project_boxed_opaque_existential_0(&aBlock, v25);
    v15 = *(v13 - 1);
    v16 = *(v15 + 64);
    MEMORY[0x28223BE20](v14, v14);
    v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    v19 = sub_21CD84194();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  [v9 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v9;
  v10[2] = v20;
  v10[3] = sub_21CCB274C;
  v10[4] = 0;
  [v9 activate];

  sub_21CCB1928(v28, &qword_27CE19160, &unk_21CD88740);
  sub_21CCB1928(v29, &qword_27CE19160, &unk_21CD88740);
  *(v1 + 16) = v10;
  return v1;
}

void sub_21CCB265C(const char *a1)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  oslog = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, oslog, v3, a1, v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }
}

uint64_t sub_21CCB274C()
{
  sub_21CCB14E0();
  result = swift_allocError();
  *v1 = 4;
  *(v1 + 8) = 0xD000000000000013;
  *(v1 + 16) = 0x800000021CD9E440;
  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_21CCB27CC()
{
  v13 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_21CCC02FC(0xD000000000000010, 0x800000021CD9E1F0, &v12);
    _os_log_impl(&dword_21CC90000, v2, v3, "CredentialBiometricBindingManager %s start", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x21CF18580](v5, -1, -1);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = *(v0[2] + 16);
  v7 = swift_task_alloc();
  v0[3] = v7;
  v7[2] = v6;
  v7[3] = &unk_21CD88768;
  v7[4] = 0;
  v8 = swift_task_alloc();
  v0[4] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = *(MEMORY[0x277D85A10] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_21CCB2A04;

  return MEMORY[0x282200830]();
}

uint64_t sub_21CCB2A04()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_21CCB2B88;
  }

  else
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);

    v4 = sub_21CCB2B28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB2B28()
{
  sub_21CCB2BF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCB2B88()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_21CCB2BF8();
  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

void sub_21CCB2BF8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v0 = sub_21CD839F4();
  __swift_project_value_buffer(v0, qword_280F78E40);
  oslog = sub_21CD839D4();
  v1 = sub_21CD83E24();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_21CCC02FC(0xD000000000000010, 0x800000021CD9E1F0, &v5);
    _os_log_impl(&dword_21CC90000, oslog, v1, "CredentialBiometricBindingManager %s end", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x21CF18580](v3, -1, -1);
    MEMORY[0x21CF18580](v2, -1, -1);
  }
}

uint64_t sub_21CCB2D40(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[20] = v7;
  v2[21] = v8;

  return MEMORY[0x2822009F8](sub_21CCB2E10, 0, 0);
}

uint64_t sub_21CCB2E10()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_21CCB2FBC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_481;
  [v5 deleteBoundACLWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CCB2FBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_21CCB3130;
  }

  else
  {
    v3 = sub_21CCB30CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCB30CC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CCB3130()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t CredentialBiometricBindingManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CredentialBiometricBindingManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21CCB3200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19160, &unk_21CD88740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCB3270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCB32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB32F0, 0, 0);
}

uint64_t sub_21CCB32F0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB4370(v6, v4, v5);
}

uint64_t sub_21CCB33C8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CCC4A0C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21CCB3504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3528, 0, 0);
}

uint64_t sub_21CCB3528()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB45EC(v6, v4, v5);
}

uint64_t sub_21CCB3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3624, 0, 0);
}

uint64_t sub_21CCB3624()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB36FC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB4DEC(v6, v4, v5);
}

uint64_t sub_21CCB36FC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CCB3838, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21CCB3838()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_21CCB389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB38C0, 0, 0);
}

uint64_t sub_21CCB38C0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB54A8(v6, v4, v5);
}

uint64_t sub_21CCB3998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB39BC, 0, 0);
}

uint64_t sub_21CCB39BC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5608(v6, v4, v5);
}

uint64_t sub_21CCB3A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3AB8, 0, 0);
}

uint64_t sub_21CCB3AB8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5764(v6, v4, v5);
}

uint64_t sub_21CCB3B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3BB4, 0, 0);
}

uint64_t sub_21CCB3BB4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB58C0(v6, v4, v5);
}

uint64_t sub_21CCB3C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3CB0, 0, 0);
}

uint64_t sub_21CCB3CB0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5B7C(v6, v4, v5);
}

uint64_t sub_21CCB3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3DAC, 0, 0);
}

uint64_t sub_21CCB3DAC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5A1C(v6, v4, v5);
}

uint64_t sub_21CCB3E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3EA8, 0, 0);
}

uint64_t sub_21CCB3EA8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5CD8(v6, v4, v5);
}

uint64_t sub_21CCB3F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB3FA4, 0, 0);
}

uint64_t sub_21CCB3FA4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB5E34(v6, v4, v5);
}

uint64_t sub_21CCB407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB40A0, 0, 0);
}

uint64_t sub_21CCB40A0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB62EC(v6, v4, v5);
}

uint64_t sub_21CCB4178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB419C, 0, 0);
}

uint64_t sub_21CCB419C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB644C(v6, v4, v5);
}

uint64_t sub_21CCB4274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB4298, 0, 0);
}

uint64_t sub_21CCB4298()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCB33C8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_21CCB65B8(v6, v4, v5);
}

uint64_t sub_21CCB4370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB4394, 0, 0);
}

uint64_t sub_21CCB4394()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC4624, v3, v9);
}

uint64_t sub_21CCB44D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_21CCC4998;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_21CCC4A14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB45EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB4610, 0, 0);
}

uint64_t sub_21CCB4610()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC1248, v3, v9);
}

uint64_t sub_21CCB474C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21CCB4770, 0, 0);
}

uint64_t sub_21CCB4770()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB48A8;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC18A4, v3, v8);
}

uint64_t sub_21CCB48A8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_21CCB4A2C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21CCB49C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB49C4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21CCB4A2C()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3(0);
}

uint64_t sub_21CCB4A9C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21CCB4AC0, 0, 0);
}

uint64_t sub_21CCB4AC0()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = type metadata accessor for DigitalPresentmentResponse();
  *v7 = v0;
  v7[1] = sub_21CCB4BFC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC156C, v3, v8);
}

uint64_t sub_21CCB4BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_21CCB4D80;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_21CCB4D18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB4D18()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21CCB4D80()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_21CCB4DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB4E10, 0, 0);
}

uint64_t sub_21CCB4E10()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB4F4C;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC42A0, v3, v9);
}

uint64_t sub_21CCB4F4C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_21CCB4D80;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_21CCB5068;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB5068()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CCB50CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB50F0, 0, 0);
}

uint64_t sub_21CCB50F0()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC3D88, v3, v9);
}

uint64_t sub_21CCB522C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21CCB5250, 0, 0);
}

uint64_t sub_21CCB5250()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = sub_21CCC3F68();
  *v7 = v0;
  v7[1] = sub_21CCB538C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC3F1C, v3, v8);
}

uint64_t sub_21CCB538C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_21CCC4998;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_21CCC4990;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CCB54A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB54CC, 0, 0);
}

uint64_t sub_21CCB54CC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC30BC, v3, v9);
}