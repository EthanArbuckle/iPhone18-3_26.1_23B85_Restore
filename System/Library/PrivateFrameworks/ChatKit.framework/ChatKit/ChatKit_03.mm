uint64_t sub_19028C800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_190D518A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19028C8AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_19028C964(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19028C998@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD2688(&unk_190E039B0, &qword_1EAD629A8);

  return sub_190D52690();
}

uint64_t sub_19028CA88()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028CB5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028CBC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028CC00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028CC90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19028CCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19028CCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4LinkVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19028CDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s4LinkVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_19028CE68()
{
  v1 = _s8CellViewVMa_0();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = _s4LinkVMa(0);
  v7 = *(v6 + 28);
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028CFEC()
{
  v1 = _s4LinkVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028D144()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D184()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D1C4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19028D24C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028D284()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19028D350()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D388@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19028D440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19028D498(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19028D4EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_190D565E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19028D598(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D565E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028D63C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D684()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028D6BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19028D714(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19028D768@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19028D820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CE4CF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19028D8CC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19028D994()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028DA18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028DA58()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19028DA90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_19028DC08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190CEC888(v1);
}

uint64_t sub_19028DC8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEE160();
  *a1 = result & 1;
  return result;
}

id sub_19028DD34@<X0>(void *a1@<X8>)
{
  result = sub_190CEE020();
  *a1 = result;
  return result;
}

id sub_19028DDCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEB5DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19028DE28()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028DE60()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_19028DF14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19028DFD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10WalletPassVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19028E148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s10WalletPassVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_19028E200()
{
  v1 = _s8CellViewVMa_1(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = _s10WalletPassVMa(0);
  v7 = *(v6 + 28);
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028E384()
{
  v1 = _s10WalletPassVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028E4D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s10WalletPassVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19028E584(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s10WalletPassVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028E62C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028E674(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_190D53D60();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19028E7A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_190D53D60();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19028E8D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028E920()
{
  v1 = type metadata accessor for ClarityUIEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 20);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) + 32);
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 24);
  v12 = sub_190D53D60();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_19028EB40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_19028EBFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028ED10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD637D8);
  sub_190D055AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19028EDC0()
{
  sub_190D53B10();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_190D54200();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_190D54440();
  sub_190D54200();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5F740);
  sub_190D54200();
  sub_190D53B00();
  sub_190D54200();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19028F134()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63978);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63930);
  sub_190D09054();
  sub_190233640(&qword_1EAD63970, &qword_1EAD63930);
  swift_getOpaqueTypeConformance2();
  sub_19081E868();
  swift_getOpaqueTypeConformance2();
  sub_190233640(&qword_1EAD63980, &qword_1EAD63978);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19028F360()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028F3C8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028F404@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19028F4BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_19028F514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_190D0BD70(v5);
}

double sub_19028F570@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_19028F5CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19028F6A0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028F6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028F710(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D526C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19028F77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D526C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19028F7F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D54700();
  *a1 = result;
  return result;
}

uint64_t sub_19028F848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19028F8B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19028F924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D545F0();
  *a1 = result;
  return result;
}

uint64_t sub_19028FA5C()
{
  sub_190D55250();
  sub_190D1ACD8();
  sub_190D1AC80();
  return swift_getOpaqueTypeConformance2();
}

double sub_19028FB44@<D0>(_OWORD *a1@<X8>)
{
  sub_190D506F0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19028FCC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19028FCF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50710();
  *a1 = result;
  return result;
}

uint64_t sub_19028FE08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_19028FE60(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setEnabled_];
}

uint64_t sub_19028FEC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028FF00()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028FF48()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19028FF8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19028FFE8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190290050()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63FA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63FA8);
  sub_190D25DF0(&qword_1EAD63FB0, &qword_1EAD63FA8);
  sub_19081E484();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190290178()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902901B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902901F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190290234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64068);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_190D52D20();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_190290330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64068);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_190D52D20();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_190290460()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190290498()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1902904F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19029058C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1902905A4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_190D52690();
}

void sub_1902905D8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1902905E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  return sub_190D52690();
}

uint64_t sub_19029063C(uint64_t result)
{
  if (result)
  {
    return sub_190D50920();
  }

  return result;
}

uint64_t sub_19029064C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19083B6D4(a1, a2);
  }

  return a1;
}

void sub_190290F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTLToneIdentifierNone()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getTLToneIdentifierNoneSymbolLoc_ptr;
  v7 = getTLToneIdentifierNoneSymbolLoc_ptr;
  if (!getTLToneIdentifierNoneSymbolLoc_ptr)
  {
    v1 = ToneLibraryLibrary();
    v5[3] = dlsym(v1, "TLToneIdentifierNone");
    getTLToneIdentifierNoneSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getTLToneIdentifierNone_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_190291CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTLVibrationIdentifierNone()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getTLVibrationIdentifierNoneSymbolLoc_ptr;
  v7 = getTLVibrationIdentifierNoneSymbolLoc_ptr;
  if (!getTLVibrationIdentifierNoneSymbolLoc_ptr)
  {
    v1 = ToneLibraryLibrary();
    v5[3] = dlsym(v1, "TLVibrationIdentifierNone");
    getTLVibrationIdentifierNoneSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getTLVibrationIdentifierNone_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_190292370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTLToneIdentifierNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ToneLibraryLibrary();
  result = dlsym(v2, "TLToneIdentifierNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTLToneIdentifierNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ToneLibraryLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ToneLibraryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E72EB988;
    v4 = 0;
    ToneLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ToneLibraryLibraryCore_frameworkLibrary;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    ToneLibraryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __ToneLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTLAlertClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  result = objc_getClass("TLAlert");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTLAlertClass_block_invoke_cold_1();
  }

  getTLAlertClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getTLVibrationIdentifierNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ToneLibraryLibrary();
  result = dlsym(v2, "TLVibrationIdentifierNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTLVibrationIdentifierNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_190293994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1902A306C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C13CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1902C52C8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (v2)
    {
      JUMPOUT(0x1902C51ACLL);
    }

    JUMPOUT(0x1902C518CLL);
  }

  _Unwind_Resume(a1);
}

float64_t CGRectPxCenterPoint(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  if (CKMainScreenScale_once_2 != -1)
  {
    v17 = *&a1.f64[0];
    v18 = a2;
    v15 = *&a3.f64[0];
    v16 = a4;
    v14 = *(MEMORY[0x1E695F058] + 16);
    CGRectPxCenterPoint_cold_1();
    v4 = v14;
    *&a3.f64[0] = v15;
    a4 = v16;
    *&a1.f64[0] = v17;
    a2 = v18;
  }

  v5 = CKMainScreenScale_sMainScreenScale_2;
  if (*&CKMainScreenScale_sMainScreenScale_2 == 0.0)
  {
    *&v5 = 1.0;
  }

  a3.f64[1] = a4;
  v6 = vsubq_f64(a3, v4);
  __asm { FMOV            V2.2D, #0.5 }

  a1.f64[1] = a2;
  *&a1.f64[0] = *&vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(a1, vmulq_f64(v6, _Q2)), *&v5)), vdupq_lane_s64(v5, 0));
  return a1.f64[0];
}

void sub_1902C72DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902C7020);
  }

  _Unwind_Resume(a1);
}

void sub_1902C869C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C8B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902C8D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C9604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C9BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902C9F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CA28C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1902CA96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CB418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CBEE4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902CBE20);
  }

  _Unwind_Resume(a1);
}

void sub_1902CC354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CC830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CCAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CD3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CD7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902CE040(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902CDFACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1902D15D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_1902D1C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1902D4910(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902D48E0);
  }

  _Unwind_Resume(a1);
}

void sub_1902DA678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902E0CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902E1BF0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902E1BACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1902E4A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902E4DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902E7C44(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1902E7B64);
  }

  _Unwind_Resume(a1);
}

void sub_1902E8338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902E84FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902E8BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1902EE450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL shouldDisable3DTouchPreviewWithNegativeFeedbackForURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v1 resolvingAgainstBaseURL:0];
    v3 = [v2 host];
    v4 = [v3 caseInsensitiveCompare:@"itunes.apple.com"];

    if (v4 && ([v2 host], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "caseInsensitiveCompare:", @"itunes.com"), v5, v6) && (objc_msgSend(v2, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "caseInsensitiveCompare:", @"itun.es"), v7, v8) && (objc_msgSend(v2, "host"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "caseInsensitiveCompare:", @"appsto.re"), v9, v10))
    {
      v11 = [v1 iCloudSharingURL_noFragment];

      v12 = v11 != 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1902F0AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1902F0E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1902F2038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

id getMSMessageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSMessageClass_softClass;
  v7 = getMSMessageClass_softClass;
  if (!getMSMessageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSMessageClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getMSMessageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1902F253C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMSMessageClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FindMyUICoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72EC9D0;
    v5 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    __getMSMessageClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSMessageClass_block_invoke_cold_1();
  }

  getMSMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FindMyUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1902FB4E0(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void _DFSVisibleSubviewsInRect(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v11 subviews];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        [v18 frame];
        v35.origin.x = v19;
        v35.origin.y = v20;
        v35.size.width = v21;
        v35.size.height = v22;
        v33.origin.x = a3;
        v33.origin.y = a4;
        v33.size.width = a5;
        v33.size.height = a6;
        v34 = CGRectIntersection(v33, v35);
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        if (!CGRectIsEmpty(v34) && v12[2](v12, v18))
        {
          [v11 convertRect:v18 toView:{x, y, width, height}];
          _DFSVisibleSubviewsInRect(v18, v12);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }
}

void sub_1902FD9F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *CKStringFromCKNavigationBarCallMode(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"CKNavigationBarCallModeDefault";
  }

  else
  {
    return off_1E72ECB48[a1 - 1];
  }
}

uint64_t CKMessageEntryViewStyleInvert(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_190DCEB50[a1];
  }
}

void sub_190304024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190309280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19030B264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDCIMImageWellUtilitiesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72ECD40;
    v5 = 0;
    PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    __getDCIMImageWellUtilitiesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DCIMImageWellUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCIMImageWellUtilitiesClass_block_invoke_cold_1();
  }

  getDCIMImageWellUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_190312234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "exception when building menus:[%@]", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x190312200);
  }

  _Unwind_Resume(exception_object);
}

void sub_190312C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190316804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose((v60 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_190319CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031A0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19031A298(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19031A260);
  }

  _Unwind_Resume(a1);
}

void sub_19031A9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKGroupRecipientSelectionLogHandle()
{
  if (CKGroupRecipientSelectionLogHandle_onceToken != -1)
  {
    CKGroupRecipientSelectionLogHandle_cold_1();
  }

  v1 = CKGroupRecipientSelectionLogHandle_osLog;

  return v1;
}

void __CKGroupRecipientSelectionLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "CKGroupRecipientSelectionController");
  v1 = CKGroupRecipientSelectionLogHandle_osLog;
  CKGroupRecipientSelectionLogHandle_osLog = v0;
}

id CKConversationGroupPhoto()
{
  if (CKConversationGroupPhoto_onceToken != -1)
  {
    CKConversationGroupPhoto_cold_1();
  }

  v1 = CKConversationGroupPhoto_osLog;

  return v1;
}

void __CKConversationGroupPhoto_block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "CKConversation_GroupPhoto");
  v1 = CKConversationGroupPhoto_osLog;
  CKConversationGroupPhoto_osLog = v0;
}

void sub_19031B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19031B844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031C518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031CBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031CEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19031F58C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_190320B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

double calculateLengthPercentageToPointInLine(const CGPath *a1, double a2, double a3)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3010000000;
  v6[3] = &unk_190F92BB2;
  v7 = *MEMORY[0x1E695EFF8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __calculateLengthPercentageToPointInLine_block_invoke;
  v5[3] = &unk_1E72ED218;
  v5[4] = v6;
  v5[5] = &v8;
  v5[6] = v16;
  v5[7] = &v12;
  *&v5[8] = a2;
  *&v5[9] = a3;
  CGPathApplyWithBlock(a1, v5);
  v3 = v13[3] / v9[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  return v3;
}

void sub_1903221BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void __calculateLengthPercentageToPointInLine_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    if (v15 != *MEMORY[0x1E695EFF8] || v16 != *(MEMORY[0x1E695EFF8] + 8))
    {
      v18 = *(a2 + 8);
      v8 = v18[4];
      v9 = v18[5];
      started = bezierCurveLengthFromStartPoint(v15, v16, v8, v9, *v18, v18[1], v18[2], v18[3]);
      *(*(*(a1 + 40) + 8) + 24) = started + *(*(*(a1 + 40) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        goto LABEL_19;
      }

      v12 = *(*(a1 + 56) + 8);
      v13 = started + *(v12 + 24);
      goto LABEL_15;
    }

LABEL_18:
    v21 = *(a2 + 8);
    v8 = *v21;
    v9 = v21[1];
    goto LABEL_19;
  }

  if (*a2 != 1)
  {
    goto LABEL_18;
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 == *MEMORY[0x1E695EFF8] && v5 == *(MEMORY[0x1E695EFF8] + 8))
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 8);
  v8 = *v7;
  v9 = v7[1];
  v10 = (*v7 - v4) * (*v7 - v4) + (v9 - v5) * (v9 - v5);
  v11 = sqrtf(v10);
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v11;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_19;
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 24) + v11;
LABEL_15:
  *(v12 + 24) = v13;
  v20 = v8 == *(a1 + 64);
  if (v9 != *(a1 + 72))
  {
    v20 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v20;
LABEL_19:
  v22 = *(*(a1 + 32) + 8);
  *(v22 + 32) = v8;
  *(v22 + 40) = v9;
}

double bezierCurveLengthFromStartPoint(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = 0x200000001;
  v10 = vdupq_lane_s64(*&a1, 0);
  v33 = vdupq_lane_s64(*&a7, 0);
  v34 = vdupq_lane_s64(*&a2, 0);
  v31 = vdupq_lane_s64(*&a8, 0);
  v32 = vdupq_lane_s64(*&a3, 0);
  v11 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v29 = _Q0;
  v30 = vdupq_lane_s64(*&a4, 0);
  __asm { FMOV            V2.2D, #3.0 }

  v27 = vnegq_f64(0);
  v28 = _Q2;
  v35 = v10;
  v36 = vdupq_n_s64(0x3F947AE147AE147BuLL);
  v18 = v34;
  do
  {
    v44 = v18;
    v45 = v10;
    v19 = vdup_n_s32(v8 < 0x32);
    v20.i64[0] = v19.u32[0];
    v20.i64[1] = v19.u32[1];
    v46 = vcltzq_s64(vshlq_n_s64(v20, 0x3FuLL));
    v20.i64[0] = v9.u32[0];
    v20.i64[1] = v9.u32[1];
    v49 = vmulq_f64(vcvtq_f64_u64(v20), v36);
    v47 = vsubq_f64(v29, v49);
    v42 = pow(v47.f64[1], 3.0);
    v21.f64[0] = pow(v47.f64[0], 3.0);
    v21.f64[1] = v42;
    v43 = v21;
    v41 = vmulq_f64(v49, vmulq_f64(vmulq_f64(v47, v47), v28));
    v48 = vmulq_f64(vmulq_f64(v49, v49), vmulq_f64(v47, v28));
    v40 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v41, a5), v35, v21), v33, v48);
    v39 = pow(v49.f64[1], 3.0);
    v22.f64[0] = pow(v49.f64[0], 3.0);
    v22.f64[1] = v39;
    v10 = vmlaq_f64(v40, v32, v22);
    v18 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v41, a6), v34, v43), v31, v48), v30, v22);
    v23 = vsubq_f64(v10, vextq_s8(v45, v10, 8uLL));
    v24 = vsubq_f64(v18, vextq_s8(v44, v18, 8uLL));
    v25 = vbslq_s8(v46, vcvtq_f64_f32(vsqrt_f32(vcvt_f32_f64(vaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v24, v24))))), v27);
    v11 = v11 + *v25.i64 + *&v25.i64[1];
    v8 += 2;
    v9 = vadd_s32(v9, 0x200000002);
  }

  while (v8 != 50);
  return v11;
}

void _restoreDraftFromMessagesNotificationExtension(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 viewIsVisible];
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Restoring draft saved from Messages Notification extension", buf, 2u);
      }
    }

    [v2 _restoreDraftState];
  }

  else if (v4)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Not restoring draft saved from Messages Notification extension, view was not visible", v7, 2u);
    }
  }
}

void sub_19032DBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19032E620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190331A18(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x190331430);
  }

  _Unwind_Resume(exception_object);
}

void sub_190331F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void -[CKChatController _blockListDidChange](CKChatController *self, SEL a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Block list did change", v4, 2u);
    }
  }

  [(CKChatController *)self reloadEntryViewIfNeeded];
}

id _chatControllerTelemetryLogHandle()
{
  if (_chatControllerTelemetryLogHandle_onceToken != -1)
  {
    _chatControllerTelemetryLogHandle_cold_1();
  }

  v1 = _chatControllerTelemetryLogHandle_telemetryLogHandle;

  return v1;
}

void ___chatControllerTelemetryLogHandle_block_invoke()
{
  v0 = MessagesTelemetrySubsystem();
  v1 = os_log_create(v0, "ChatController");
  v2 = _chatControllerTelemetryLogHandle_telemetryLogHandle;
  _chatControllerTelemetryLogHandle_telemetryLogHandle = v1;
}

void sub_1903372FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19033745C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_190338C6C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190338C5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_19033E5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19033E788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_190344D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190347624(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190347584);
  }

  _Unwind_Resume(a1);
}

void sub_190350B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190351540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1903520E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  _Block_object_dispose((v2 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1903534F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190356830(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x190356598);
  }

  _Unwind_Resume(exception_object);
}

void sub_19035752C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19035743CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1903681F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190369114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190369C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_19036B810(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19036B6ACLL);
  }

  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_190370718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1903720AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_190372650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190377CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190377E64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1903781B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190378438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1903788E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getMSMessageClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FindMyUICoreLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72EE618;
    v5 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!FindMyUICoreLibraryCore_frameworkLibrary_0)
  {
    __getMSMessageClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSMessageClass_block_invoke_cold_1_0();
  }

  getMSMessageClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FindMyUICoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void ___catchUpDecelerationAnimation_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _catchUpDecelerationAnimation_spring;
  _catchUpDecelerationAnimation_spring = v0;

  [_catchUpDecelerationAnimation_spring setMass:1.0];
  [_catchUpDecelerationAnimation_spring setStiffness:109.66];
  [_catchUpDecelerationAnimation_spring setDamping:20.94];
  [_catchUpDecelerationAnimation_spring setDuration:0.9];
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v4 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v2 :v3];
  [_catchUpDecelerationAnimation_spring setTimingFunction:v4];
}

void StickersLibraryCore()
{
  if (!StickersLibraryCore_frameworkLibrary)
  {
    StickersLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __StickersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StickersLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_19037DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72EE648;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19037E218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWorkoutKitXPCServiceHelperClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WorkoutKitServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WorkoutKitServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72EE680;
    v5 = 0;
    WorkoutKitServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WorkoutKitServicesLibraryCore_frameworkLibrary)
  {
    __getWorkoutKitXPCServiceHelperClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WorkoutKitXPCServiceHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWorkoutKitXPCServiceHelperClass_block_invoke_cold_1();
  }

  getWorkoutKitXPCServiceHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WorkoutKitServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WorkoutKitServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWKUIRemoteViewServiceAdaptorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WorkoutKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WorkoutKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72EE698;
    v5 = 0;
    WorkoutKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WorkoutKitUILibraryCore_frameworkLibrary)
  {
    __getWKUIRemoteViewServiceAdaptorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WKUIRemoteViewServiceAdaptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWKUIRemoteViewServiceAdaptorClass_block_invoke_cold_1();
  }

  getWKUIRemoteViewServiceAdaptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WorkoutKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WorkoutKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1903839E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CKCTRunGetMentionsAnimationIdentifier(const __CTRun *a1)
{
  Attributes = CTRunGetAttributes(a1);
  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x1E69A70D0]);
  v3 = Value;
  if (Value)
  {
    v4 = Value;
  }

  return v3;
}

void sub_19038A8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _openRestoredChatInMessagesEventReceived(uint64_t a1, void *a2)
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Received darwin notification to open restored chat", v5, 2u);
  }

  return [a2 _openRestoredChatInMessages];
}

void sub_19038B570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19038B858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __IMWeakkCLLocationCoordinate2DInvalid()
{
  if (__IMWeakkCLLocationCoordinate2DInvalid__pred_kCLLocationCoordinate2DInvalidCoreLocation != -1)
  {
    __IMWeakkCLLocationCoordinate2DInvalid_cold_1();
  }

  return *&__IMStaticWeak_kCLLocationCoordinate2DInvalid;
}

void sub_19038D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKLocationAttachmentItem - Caught exception %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x19038D100);
  }

  _Unwind_Resume(exception_object);
}

void sub_19038E5F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_190398C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x190398B78);
  }

  _Unwind_Resume(exception_object);
}

void sub_19039C3A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19039C348);
  }

  _Unwind_Resume(a1);
}

void sub_1903A2970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_1903A5A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1903A62D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CreateLabel()
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setNumberOfLines:0];

  return v1;
}

id CKTranscoderUserInfoForComposeOptions(void *a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKey:@"CKSMSComposeOptionStartTimeKey"];
  [v2 doubleValue];
  v4 = v3;

  v5 = [v1 objectForKey:@"CKSMSComposeOptionEndTimeKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v1 objectForKey:@"CKSMSComposeOptionDurationKey"];
  [v8 doubleValue];
  v10 = v9;

  if (v7 - v4 <= 2.22044605e-16 && v10 <= 2.22044605e-16)
  {
    v15 = 0;
  }

  else
  {
    v22[0] = *MEMORY[0x1E69A6F90];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v23[0] = v12;
    v22[1] = *MEMORY[0x1E69A6F68];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v23[1] = v13;
    v22[2] = *MEMORY[0x1E69A6F60];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v23[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v19 = v1;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "composeOptions:%@ -> transcodeUserInfo:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  return v15;
}

void sub_1903B6700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1903B6F08(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1903B6ED4);
  }

  _Unwind_Resume(a1);
}

id get_CDAttachmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDAttachmentClass_softClass;
  v7 = get_CDAttachmentClass_softClass;
  if (!get_CDAttachmentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_CDAttachmentClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __get_CDAttachmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1903B7F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CoreDuetLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CoreDuetLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E72EED80;
    v2 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    CoreDuetLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoreDuetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1903B9058(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1903B8EC0);
  }

  _Unwind_Resume(a1);
}

void sub_1903BA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CKShouldPlaySMSSounds()
{
  v0 = [MEMORY[0x1E69DA8F0] sharedToneManager];
  v1 = [v0 currentToneIdentifierForAlertType:2];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69DA928]];

  return v2 ^ 1u;
}

BOOL CKIsValidAddress(void *a1)
{
  v1 = a1;
  if (IMStringIsEmail() & 1) != 0 || (MEMORY[0x193AF5D00](v1))
  {
    v2 = 1;
  }

  else if (v1)
  {
    v4 = UIUnformattedPhoneNumberFromString();
    v2 = [v4 length] != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void CKFreeSpaceWriteDataToURL(void *a1, void *a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  if (v6 && v7)
  {
    if (a3)
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
    }

    else
    {
      v8 = 0;
    }

    v10 = [v6 URLByDeletingLastPathComponent];
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v10 path];
    v13 = [v11 fileExistsAtPath:v12 isDirectory:0];

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      v15 = [v10 path];
      v25 = 0;
      v16 = [v11 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v25];
      v14 = v25;

      if ((v16 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = v6;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Failed to create the missing directories for the preview at URL: %@ with error: %@", buf, 0x16u);
          }
        }
      }
    }

    v18 = MEMORY[0x1E695DF20];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v20 = [v18 dictionaryWithObject:v19 forKey:*MEMORY[0x1E698B6C0]];

    [v5 length];
    v24 = v5;
    v21 = v6;
    v22 = v8;
    CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
    if (v22 && dispatch_group_wait(v22, 0x3B9ACA00uLL) && IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Timed out writing preview at URL: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v27 = v5;
      v28 = 2048;
      v29 = [v5 length];
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Write Data <%p> (length: %lu) or URL (%@)", buf, 0x20u);
    }
  }
}

void __CKFreeSpaceWriteDataToURL_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v14 = 0;
    v7 = [v5 writeToURL:v6 options:1073741825 error:&v14];
    v8 = v14;
    if ((v7 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 40);
          *buf = 138412546;
          v16 = v10;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Failed to write preview at URL: %@ with error: %@", buf, 0x16u);
        }
      }

      [*(a1 + 32) writeToURL:*(a1 + 40) atomically:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = a4;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Failed to guarantee free space with error: %@", buf, 0xCu);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    dispatch_group_leave(v13);
  }
}

void ck_dispatch_isolated(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AF00];
  v4 = a2;
  queue = a1;
  if ([v3 isMainThread])
  {
    dispatch_barrier_async(queue, v4);
  }

  else
  {
    dispatch_barrier_sync(queue, v4);
  }
}

void ck_dispatch_main_after_seconds(void *a1, double a2)
{
  if (a2 <= 0.0)
  {
    v5 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    v2 = (a2 * 1000000000.0);
    v3 = a1;
    v4 = dispatch_time(0, v2);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v3);
  }
}

double CKSizeOfImageAtURL(const __CFURL *a1)
{
  v1 = MEMORY[0x1E695F060];
  v15 = *MEMORY[0x1E695F060];
  v2 = CGImageSourceCreateWithURL(a1, 0);
  if (v2)
  {
    v3 = v2;
    v4 = CGImageSourceCopyPropertiesAtIndex(v2, 0, 0);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, *MEMORY[0x1E696DE78]);
      if (Value)
      {
        valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr);
        v8 = valuePtr == 6 || valuePtr == 8;
        if (v8)
        {
          v9 = *MEMORY[0x1E696DEC8];
        }

        else
        {
          v9 = *MEMORY[0x1E696DED8];
        }

        if (v8)
        {
          v10 = *MEMORY[0x1E696DED8];
        }

        else
        {
          v10 = *MEMORY[0x1E696DEC8];
        }
      }

      else
      {
        v10 = *MEMORY[0x1E696DEC8];
        v9 = *MEMORY[0x1E696DED8];
      }

      v11 = CFDictionaryGetValue(v5, v9);
      if (v11)
      {
        CFNumberGetValue(v11, kCFNumberCGFloatType, &v15);
      }

      v12 = CFDictionaryGetValue(v5, v10);
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberCGFloatType, &v15 + 8);
      }

      CFRelease(v5);
    }

    CFRelease(v3);
    v1 = &v15;
  }

  return *v1;
}

void sub_1903BE5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1903BEA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

id _CKGetAnimationCurveSpline(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 >= 6)
  {
    if (a1 == 7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
LABEL_9:
        v5 = MEMORY[0x1E69793D0];
        v6 = MEMORY[0x1E6979ED0];
        goto LABEL_10;
      }

      v5 = MEMORY[0x1E69793D0];
      v6 = MEMORY[0x1E6979EB0];
LABEL_10:
      v7 = [v5 functionWithName:*v6];
      goto LABEL_11;
    }

LABEL_8:
    v5 = MEMORY[0x1E69793D0];
    v6 = MEMORY[0x1E6979EB8];
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v5 = MEMORY[0x1E69793D0];
    v6 = MEMORY[0x1E6979ED8];
    goto LABEL_10;
  }

  if (a1 != 4)
  {
    v5 = MEMORY[0x1E69793D0];
    v6 = MEMORY[0x1E6979EA0];
    goto LABEL_10;
  }

  LODWORD(a2) = 1059648963;
  LODWORD(a4) = 1051260355;
  LODWORD(a5) = 1.0;
  v7 = [MEMORY[0x1E69793D0] functionWithControlPoints:a2 :0.0 :a4 :a5];
LABEL_11:

  return v7;
}

void __CKPrewarmResumeDeferredSetup_block_invoke_2()
{
  v0 = +[CKPluginExtensionStateObserver sharedInstance];
  v1 = MEMORY[0x1E69E96A0];

  dispatch_async(v1, &__block_literal_global_985);
}

void __CKPrewarmResumeDeferredSetup_block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.messages.CKPluginPrewarmForLaunchCompleteNotification" object:0];
}

void __CKPrewarmPostLaunch_block_invoke()
{
  CKPrewarmBalloonViewCacheIfNeeded();
  v7 = [MEMORY[0x1E69A7F20] sharedBlockList];
  [v7 setAllowsExpensiveBlockListChecking:1];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    v0 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v1 = [v0 balloonPluginForBundleID:*MEMORY[0x1E69A6A18]];
    [v1 bubbleClass];
  }

  v2 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v3 = [v2 balloonPluginForBundleID:*MEMORY[0x1E69A6A00]];
  [v3 bubbleClass];

  v4 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v5 = [v4 balloonPluginForBundleID:*MEMORY[0x1E69A69F0]];
  [v5 bubbleClass];

  v6 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
}

void __CKPrewarmPostLaunch_block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CKPrewarmPostLaunch_block_invoke_3;
  v3[3] = &unk_1E72EF038;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
}

uint64_t __CKPrewarmPostLaunch_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void CKTranscriptTextSizeForFont(void *a1, double *a2, uint64_t a3)
{
  v21 = a1;
  if (CKTranscriptTextSizeForFont_once != -1)
  {
    CKTranscriptTextSizeForFont_cold_1();
  }

  [CKTranscriptTextSizeForFont_sSizingLabel setFont:v21];
  v5 = CKTranscriptTextSizeForFont_sSizingLabel;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 bounds];
  [v5 sizeThatFits:{v7, v8}];
  v10 = v9;

  [CKTranscriptTextSizeForFont_sSizingLabel _baselineOffsetFromBottom];
  v12 = v11;
  [v21 capHeight];
  v14 = v13;
  if (CKMainScreenScale_once_17 != -1)
  {
    +[UIKeyboard(CKUtilities) __ck_appStripVerticalPadding];
  }

  if (*&CKMainScreenScale_sMainScreenScale_17 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = *&CKMainScreenScale_sMainScreenScale_17;
  }

  [CKTranscriptTextSizeForFont_sSizingLabel _baselineOffsetFromBottom];
  v17 = v16;
  if (CKMainScreenScale_once_17 != -1)
  {
    +[UIKeyboard(CKUtilities) __ck_appStripVerticalPadding];
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_17;
  if (*&CKMainScreenScale_sMainScreenScale_17 == 0.0)
  {
    v18 = 1.0;
  }

  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
    *a3 = floor((v10 - v12 - v14) * v15) / v15;
    *(a3 + 8) = v19;
    *(a3 + 16) = floor(v17 * v18) / v18;
    *(a3 + 24) = v20;
  }
}

uint64_t __CKTranscriptTextSizeForFont_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  v1 = CKTranscriptTextSizeForFont_sSizingLabel;
  CKTranscriptTextSizeForFont_sSizingLabel = v0;

  v2 = CKTranscriptTextSizeForFont_sSizingLabel;

  return [v2 setText:@"X"];
}

double CKTimeIntervalComponents(unint64_t *a1, unint64_t *a2, void *a3, double result)
{
  if (a1)
  {
    *a1 = result % 0x3C;
  }

  if (a2)
  {
    *a2 = (result / 60.0) % 0x3C;
  }

  if (a3)
  {
    result = result / 3600.0;
    *a3 = result;
  }

  return result;
}

id CKLocalizedStringForDuration(double a1)
{
  if ((a1 / 3600.0))
  {
    if (CKLocalizedStringForDuration_onceTokenHMS != -1)
    {
      CKLocalizedStringForDuration_cold_1();
    }

    v2 = &CKLocalizedStringForDuration_sHMSDurationFormatter;
  }

  else
  {
    if (CKLocalizedStringForDuration_onceTokenMS != -1)
    {
      CKLocalizedStringForDuration_cold_2();
    }

    v2 = &CKLocalizedStringForDuration_sMSDurationFormatter;
  }

  v3 = *v2;
  v4 = [v3 stringFromTimeInterval:a1];

  return v4;
}

uint64_t __CKLocalizedStringForDuration_block_invoke()
{
  v0 = [MEMORY[0x1E696AB70] __ck_durationFormatter];
  v1 = CKLocalizedStringForDuration_sMSDurationFormatter;
  CKLocalizedStringForDuration_sMSDurationFormatter = v0;

  v2 = CKLocalizedStringForDuration_sMSDurationFormatter;

  return [v2 setAllowedUnits:192];
}

uint64_t __CKLocalizedStringForDuration_block_invoke_2()
{
  v0 = [MEMORY[0x1E696AB70] __ck_durationFormatter];
  v1 = CKLocalizedStringForDuration_sHMSDurationFormatter;
  CKLocalizedStringForDuration_sHMSDurationFormatter = v0;

  v2 = CKLocalizedStringForDuration_sHMSDurationFormatter;

  return [v2 setAllowedUnits:224];
}

void _CKEnumerateRangesOfArgumentsInFormatString_V(void *a1, void *a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v62 = v6;
  v63 = a3;
  v61 = v5;
  if (v5)
  {
    v7 = 0;
    *buf = v63;
    v8 = -1;
    v9 = -16;
    do
    {
      v10 = *buf;
      *buf += 8;
      v7 += 8;
      ++v8;
      v9 += 16;
    }

    while (*v10);
    if (v8)
    {
      v55[1] = v55;
      MEMORY[0x1EEE9AC00](v6);
      v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = v11;
      v59 = v7 - 8;
      bzero(v12, v7 - 8);
      *buf = v63;
      v60 = v12;
      v13 = v8;
      do
      {
        v14 = *buf;
        *buf += 8;
        objc_storeStrong(v12, *v14);
        v12 += 8;
        --v13;
      }

      while (v13);
      [v62 rangeOfString:@"%@"];
      v16 = v15;
      v17 = [v62 length];
      v56 = (16 * v8);
      MEMORY[0x1EEE9AC00](v17);
      bzero(&v55[-2 * v8], v9);
      v18 = 0;
      v19 = 0;
      v57 = &v55[-2 * v8];
      v20 = v57 + 8;
      while (1)
      {
        if (v16)
        {
          v21 = [v62 rangeOfString:@"%@" options:0 range:{v18, v17 - v18}];
          v22 = v21;
          v24 = v23;
        }

        else
        {
          if (v19 >= 3)
          {
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%%d$@", v19 + 1];
          }

          else
          {
            v25 = off_1E72EF678[v19];
          }

          v22 = [v62 rangeOfString:v25];
          v24 = v26;
        }

        if (!v24)
        {
          break;
        }

        *(v20 - 1) = v22;
        *v20 = v24;
        v18 = v22 + v24;
        ++v19;
        v20 += 2;
        if (v8 == v19)
        {
          if (v16)
          {
            v27 = 0;
            v28 = 0;
            v29 = (v57 + 8);
            do
            {
              v31 = *(v29 - 1);
              v30 = *v29;
              v32 = *&v60[8 * v28];
              v33 = [v32 length];
              buf[0] = 0;
              (*(v61 + 2))(v61, v28, v32, v31 + v27, v33, v31 + v27, v30, buf);
              if (buf[0])
              {
                break;
              }

              v29 += 2;
              v27 = v27 - v30 + v33;
              ++v28;
            }

            while (v8 != v28);
          }

          else
          {
            v55[0] = v55;
            MEMORY[0x1EEE9AC00](v21);
            v36 = &v55[-2 * v8];
            bzero(v36, v9);
            memcpy(v36, v57, v9);
            qsort_b(v36, v8, 0x10uLL, &__block_literal_global_1021_0);
            MEMORY[0x1EEE9AC00](v37);
            v39 = v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = v59;
            bzero(v39, v59);
            bzero(v39, v40);
            v41 = 0;
            v42 = v57;
            do
            {
              v43 = 0;
              v44 = *&v42[16 * v41];
              do
              {
                v45 = vmovn_s64(vceqq_s64(v44, *&v36[2 * v43]));
                if (v45.i32[0] & v45.i32[1])
                {
                  *&v39[8 * v41] = v43;
                }

                ++v43;
              }

              while (v8 != v43);
              ++v41;
            }

            while (v8 != v41);
            v46 = 0;
            v59 = 0;
            v56 = v61 + 16;
            do
            {
              v58 = v46;
              v47 = *&v39[8 * v46];
              v48 = *v36;
              v49 = &v42[16 * v47];
              v51 = *v49;
              v50 = *(v49 + 1);
              v52 = *&v60[8 * v47];
              v53 = [v52 length];
              buf[0] = 0;
              (*(v61 + 2))(v61, v47, v52, v48 + v59, v53, v51 + v59, v50, buf);
              v42 = v57;
              if (buf[0])
              {
                break;
              }

              v36 += 2;
              v59 = v59 - v50 + v53;
              v46 = v58 + 1;
            }

            while (v8 != v58 + 1);
          }

          goto LABEL_34;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = *&v60[8 * v19];
          *buf = 138413058;
          *&buf[4] = v62;
          v65 = 2048;
          v66 = v19 + 1;
          v67 = 2048;
          v68 = v8;
          v69 = 2112;
          v70 = v35;
          _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "CKRangesOfArgumentsInFormatString failed to find valid token in format: %@ for argument %tu of %tu: %@", buf, 0x2Au);
        }
      }

LABEL_34:
      v54 = v60 - 16;
      do
      {

        v7 -= 8;
      }

      while (v7 != 8);
    }
  }
}

void _CKEnumerateRangesOfArgumentsInFormatString(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v14 = &a9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___CKEnumerateRangesOfArgumentsInFormatString_block_invoke;
  v12[3] = &unk_1E72EF0A8;
  v13 = v10;
  v11 = v10;
  _CKEnumerateRangesOfArgumentsInFormatString_V(v12, a2, &a9);
}

void _CKEnumerateRangesOfEmphasisInFormatString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3010000000;
    v13[3] = &unk_190F92BB2;
    v14 = xmmword_190DCEFA0;
    v6 = [v4 length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CKEnumerateRangesOfEmphasisInFormatString_block_invoke;
    v7[3] = &unk_1E72EF0D0;
    v8 = v5;
    v10 = v13;
    v9 = v3;
    v11 = v15;
    v12 = v16;
    CKEnumerateSearchRange(0, v6, 0, v7);

    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v16, 8);
  }
}

void sub_1903C2C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id CKAttributedFormatString(void *a1, void *a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  if (a3)
  {
    v25 = &a9;
    v12 = a3;
    v13 = a1;
    v14 = [v12 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1F04268F8];
    v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14 attributes:v13];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __CKAttributedFormatString_block_invoke;
    v22[3] = &unk_1E72EF0F8;
    v16 = v15;
    v23 = v16;
    v24 = v11;
    _CKEnumerateRangesOfEmphasisInFormatString(v22, v12);

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __CKAttributedFormatString_block_invoke_2;
    v20[3] = &unk_1E72EF120;
    v17 = v16;
    v21 = v17;
    _CKEnumerateRangesOfArgumentsInFormatString_V(v20, v14, v25);
    v18 = v21;
    a3 = v17;
  }

  return a3;
}

id CKSAPersonForAddress(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69C7930]);
  if (IMStringIsEmail())
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C77D8]);
    [v3 setEmailAddress:v1];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v3];
    [v2 setEmails:v4];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C7940]);
    [v3 setNumber:v1];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v3];
    [v2 setPhones:v4];
  }

  v5 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v6 = [v5 fetchCNContactForHandleWithID:v1];

  v7 = [MEMORY[0x1E69A7FD0] firstNameForCNContact:v6];
  [v2 setFirstName:v7];

  v8 = [MEMORY[0x1E69A7FD0] lastNameForCNContact:v6];
  [v2 setLastName:v8];

  v9 = [MEMORY[0x1E69A7FD0] fullNameForCNContact:v6];
  [v2 setFullName:v9];

  return v2;
}

id CKGetTmpPathForAppendedVideoURL(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 path];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v3 path];
  v8 = [v7 pathExtension];
  v9 = [v6 stringByAppendingPathExtension:v8];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 description];
      v13 = [v4 description];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Created tmp appended video url %@ from tmpPath %@", &v15, 0x16u);
    }
  }

  return v10;
}

void CKLinkAndCreateAppendedVideoTransfer(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v5 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Appended video File already exists at tmp location %@", buf, 0xCu);
      }
    }

    goto LABEL_11;
  }

  v26 = 0;
  [v8 copyItemAtURL:v6 toURL:v5 error:&v26];
  v12 = v26;
  if (!v12)
  {
LABEL_11:
    v17 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v17 setAuxImageForTransfer:v7 value:1];

    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
    if (v19)
    {
      CFDictionarySetValue(v18, *MEMORY[0x1E69A6F50], v19);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CKLinkAndCreateAppendedVideoTransfer_cold_1();
    }

    v20 = [MEMORY[0x1E69A8078] AuxGUIDFromFileTransferGUID:v7];
    v21 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v21 registerGUID:v20 forNewOutgoingTransferWithLocalURL:v5];

    v22 = [MEMORY[0x1E69A5B80] sharedInstance];
    v23 = [v22 transferForGUID:v20];

    [v23 setIsAuxVideo:1];
    [v23 setTranscoderUserInfo:v18];
    v24 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v24 registerTransferWithDaemon:v20];

    v25 = [MEMORY[0x1E69A5B80] sharedInstance];
    [v25 registerTransferWithDaemon:v7];

    v13 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v5 description];
      v16 = [v6 description];
      *buf = 138412802;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Could not hard link file %@ from %@ with error %@", buf, 0x20u);
    }
  }

LABEL_16:
}

uint64_t _CKAssert(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return MarcoLogMadridLevelCF_V();
  }

  return result;
}

void _CKLogBacktrace()
{
  v18[128] = *MEMORY[0x1E69E9840];
  if (MarcoShouldLogMadridLevelCF())
  {
    v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:128];
    bzero(v18, 0x400uLL);
    v1 = backtrace(v18, 128);
    v2 = backtrace_symbols(v18, v1);
    v3 = v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = (v2 + 1);
      do
      {
        v6 = objc_alloc(MEMORY[0x1E696AEC0]);
        v7 = *v5++;
        v8 = [v6 initWithUTF8String:v7];
        [v0 addObject:v8];

        --v4;
      }

      while (v4);
    }

    free(v3);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v0;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          _CKLog();
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

BOOL CKDeviceSupportsVideo()
{
  v0 = CKDeviceSupportsVideo_videoSupport;
  if (CKDeviceSupportsVideo_videoSupport == -1)
  {
    v0 = MGGetBoolAnswer();
    CKDeviceSupportsVideo_videoSupport = v0;
  }

  return v0 != 0;
}

BOOL CKDeviceSupportsSiri()
{
  v0 = CKDeviceSupportsSiri_siriSupport;
  if (CKDeviceSupportsSiri_siriSupport == -1)
  {
    v0 = MGGetBoolAnswer();
    CKDeviceSupportsSiri_siriSupport = v0;
  }

  return v0 != 0;
}

uint64_t CKGetComponentsOfSpotlightIdentifierCString(char *a1, char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  __endptr = a1;
  if (!*a1)
  {
    return 0;
  }

  *a2 = *a1;
  v11 = 0;
  if (__CKGetComponentsOfSpotlightIdentifierCString_block_invoke(a1, &__endptr, &v11))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v11];
    *a3 = v8;
    v9 = __CKGetComponentsOfSpotlightIdentifierCString_block_invoke(v8, &__endptr, a4);
    if (v9)
    {
      if (__CKGetComponentsOfSpotlightIdentifierCString_block_invoke(v9, &__endptr, a5))
      {
        return 3;
      }

      result = 2;
      goto LABEL_10;
    }

    result = 1;
  }

  else
  {
    result = 0;
    *a3 = @"-1";
  }

  *a4 = -1;
LABEL_10:
  *a5 = -1;
  return result;
}

uint64_t __CKGetComponentsOfSpotlightIdentifierCString_block_invoke(int a1, char **__endptr, _DWORD *a3)
{
  v3 = *__endptr;
  if (!**__endptr)
  {
    return 0;
  }

  v8 = v3[1];
  v7 = v3 + 1;
  v6 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    result = __maskrune(v6, 0x400uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400;
  if (result)
  {
LABEL_7:
    *a3 = strtol(v7, __endptr, 10);
    return 1;
  }

  return result;
}

uint64_t CKGetComponentsOfSpotlightIdentifier(void *a1, char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  usedBufLen[0] = 0;
  v9 = a1;
  Length = CFStringGetLength(v9);
  v15.location = 0;
  v15.length = Length;
  Bytes = CFStringGetBytes(v9, v15, 0x8000100u, 0x20u, 0, 0, 0, usedBufLen);
  v12 = usedBufLen[0];
  MEMORY[0x1EEE9AC00](Bytes);
  bzero(usedBufLen - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), v12 + 1);
  v16.location = 0;
  v16.length = Length;
  CFStringGetBytes(v9, v16, 0x8000100u, 0x20u, 0, usedBufLen - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), v12, usedBufLen);

  *(usedBufLen + usedBufLen[0] - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
  return CKGetComponentsOfSpotlightIdentifierCString(usedBufLen - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0), a2, a3, a4, a5);
}

uint64_t CKGetComponentsOfSpotlightURL(const __CFURL *a1, char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = CFURLGetString(a1);
  Length = CFStringGetLength(v9);
  v18[0] = 0;
  v19.location = 0;
  v19.length = Length;
  Bytes = CFStringGetBytes(v9, v19, 0x8000100u, 0x20u, 0, 0, 0, v18);
  v12 = v18[0];
  if (v18[0] < 1025)
  {
    MEMORY[0x1EEE9AC00](Bytes);
    v13 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, v15);
    v14 = v12;
  }

  else
  {
    v13 = malloc_type_malloc(v18[0] + 1, 0x5A5002ACuLL);
    v14 = v18[0];
  }

  v20.location = 0;
  v20.length = Length;
  CFStringGetBytes(v9, v20, 0x8000100u, 0x20u, 0, v13, v14, v18);
  v16 = 0;
  v13[v18[0]] = 0;
  if (v18[0] >= 40)
  {
    v16 = CKGetComponentsOfSpotlightIdentifierCString(v13 + 39, a2, a3, a4, a5);
  }

  if (v12 >= 1025)
  {
    free(v13);
  }

  return v16;
}

id CKAVURLAssetForURL(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isFileURL] & 1) != 0)
  {
    v3 = IMAVURLAssetOptionsDefault();
    v4 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v2 options:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Trying to create an AVURLAsset for invalid fileURL: %@", &v7, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

id CKAVURLAssetForURLWithWriteAccess(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isFileURL] & 1) != 0)
  {
    v3 = IMAVURLAssetOptionsWithExtraOptionsForWrite();
    v4 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v2 options:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Trying to create an AVURLAsset for invalid fileURL: %@", &v7, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

id CKAVURLAssetForURLWithAllowableTypeCategories(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v12 = *MEMORY[0x1E6987B10];
      v13[0] = v4;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v7 = IMAVURLAssetOptionsWithExtraOptions();

      v8 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v3 options:v7];
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Trying to create an AVURLAsset for a nil allowableAVFileTypeCategories array", v11, 2u);
      }

LABEL_11:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Trying to create an AVURLAsset for a nil fileURL", v11, 2u);
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

BOOL CKIsBareMakoAccount()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [v0 activeAccounts];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 aliasesToRegister];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              if ([v7 _aliasIsVisible:*(*(&v15 + 1) + 8 * v12)])
              {

                v13 = 0;
                goto LABEL_18;
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v13 = [v2 count] != 0;
LABEL_18:

  return v13;
}

uint64_t CKIsEmergencyNumber()
{
  v10 = *MEMORY[0x1E69E9840];
  if (CKIsEmergencyNumber_onceToken != -1)
  {
    CKIsEmergencyNumber_cold_1();
  }

  if (CKIsEmergencyNumber__pred__CTServerConnectionIsEmergencyNumberCoreTelephony != -1)
  {
    CKIsEmergencyNumber_cold_2();
  }

  if (CKIsEmergencyNumber_sConnection)
  {
    v0 = CKIsEmergencyNumber___CTServerConnectionIsEmergencyNumber == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_DEBUG, "_CTServerConnectionIsEmergencyNumber - could not connect to CT.", buf, 2u);
      }
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = MarcoShouldLogMadridLevelCF();
      if (result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    IsEmergencyNumber = CKIsEmergencyNumber___CTServerConnectionIsEmergencyNumber();
    v4 = IsEmergencyNumber;
    if (IsEmergencyNumber)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          v7 = v4;
          v8 = 2048;
          v9 = v4 >> 32;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "_CTServerConnectionIsEmergencyNumber - encountered error %d %ld", buf, 0x12u);
        }
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = MarcoShouldLogMadridLevelCF();
        if (result)
        {
LABEL_24:
          _CKLog();
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __CKIsEmergencyNumber_block_invoke()
{
  if (sTestLocale_block_invoke__pred__CTServerConnectionCreateCoreTelephony != -1)
  {
    __CKIsEmergencyNumber_block_invoke_cold_1();
  }

  v2 = 0;
  memset(v1, 0, sizeof(v1));
  result = sTestLocale_block_invoke___CTServerConnectionCreate(*MEMORY[0x1E695E480], _CKUtilitiesCTServerFauxCreateCallback, v1);
  CKIsEmergencyNumber_sConnection = result;
  return result;
}

void *__CKIsEmergencyNumber_block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("_CTServerConnectionCreate", @"CoreTelephony");
  sTestLocale_block_invoke___CTServerConnectionCreate = result;
  return result;
}

void *__CKIsEmergencyNumber_block_invoke_3()
{
  result = MEMORY[0x193AF5ED0]("_CTServerConnectionIsEmergencyNumber", @"CoreTelephony");
  CKIsEmergencyNumber___CTServerConnectionIsEmergencyNumber = result;
  return result;
}

id CKMadridSearchValuesFromSearchURL(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [v16 absoluteString];
  v3 = [v2 componentsSeparatedByString:@"/"];
  v15 = [v3 lastObject];

  [v15 componentsSeparatedByString:@"&"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v13, v14}];
        if ([v8 count] >= 2)
        {
          v9 = [v8 objectAtIndex:0];
          v10 = [v8 objectAtIndex:1];
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v22 = v9;
              v23 = 2112;
              v24 = v10;
              _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "Add key [%@] and value [%@]", buf, 0x16u);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
          {
            v13 = v9;
            v14 = v10;
            _CKLog();
          }

          if (v10 && v9)
          {
            [v1 setObject:v10 forKey:v9];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  return v1;
}

void _CKSynchronizeSharedPrefDomainWithName(const __CFString *a1)
{
  if (a1)
  {
    v1 = *MEMORY[0x1E695E8B8];
    v2 = *MEMORY[0x1E695E8B0];
    CFPreferencesSynchronize(a1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v3 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v3)
    {
      v4 = v3;
      CFPreferencesSynchronize(v3, v1, v2);

      CFRelease(v4);
    }
  }
}

const __CFString *_CKLoadBooleanPrefWithNameAndDefaultValue(const __CFString *a1, unsigned int a2)
{
  keyExistsAndHasValidFormat = 0;
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  if (result)
  {
    v5 = result;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, result, &keyExistsAndHasValidFormat);
    CFRelease(v5);
    if (keyExistsAndHasValidFormat)
    {
      return AppBooleanValue;
    }

    else
    {
      return a2;
    }
  }

  return result;
}

uint64_t CKShowInternalErrors()
{
  LOBYTE(result) = sShowInternalErrors;
  if (sShowInternalErrors == -1)
  {
    LODWORD(result) = _CKLoadBooleanPrefWithNameAndDefaultValue(@"showInternalErrors", 0);
    sShowInternalErrors = result;
  }

  return result;
}

void CKShowError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 domain];
  v6 = [v4 localizedDescription];

  v10 = [CKAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertAction actionWithTitle:v8 style:1 handler:0];

  [v10 addAction:v9];
  [v10 presentFromViewController:v3 animated:1 completion:0];
}

uint64_t CKMadridSendAsSMSEnabled()
{
  LOBYTE(result) = sSendAsSMSEnabled;
  if (sSendAsSMSEnabled < 0)
  {
    _CKSynchronizeSharedPrefDomainWithName(@"com.apple.MobileSMS");
    if (sSendAsSMSEnabled == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKHandleSendAsSMSSettingChanged, @"com.apple.MobileSMS.SendAsSMSEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    LODWORD(result) = _CKLoadBooleanPrefWithNameAndDefaultValue(@"SendAsSMS", 0);
    sSendAsSMSEnabled = result;
  }

  return result;
}

void _CKHandleSendAsSMSSettingChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v8 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    v6 = a3;
    _CKLog();
  }

  sSendAsSMSEnabled = -1;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:CKPreferenceSendAsSMSChangedNotification object:0 userInfo:0];
}

uint64_t CKRaiseToListenEnabled()
{
  LOBYTE(result) = sRaiseToListenEnabled;
  if (sRaiseToListenEnabled < 0)
  {
    _CKSynchronizeSharedPrefDomainWithName(@"com.apple.MobileSMS");
    if (sRaiseToListenEnabled == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKRaiseToListenSettingChanged, @"com.apple.MobileSMS.RaiseToListenEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    LODWORD(result) = _CKLoadBooleanPrefWithNameAndDefaultValue(@"RaiseToListenEnabled", +[CKRaiseGesture isRaiseGestureSupported]);
    sRaiseToListenEnabled = result;
  }

  return result;
}

void _CKRaiseToListenSettingChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v8 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    v6 = a3;
    _CKLog();
  }

  sRaiseToListenEnabled = -1;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:CKPreferenceRaiseToListenDidChangeNotification object:0 userInfo:0];
}

id CKCreateAlertControllerWithError(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v9)
  {
    v14 = [v9 userInfo];
    v15 = [v9 localizedDescription];
    v16 = [v14 objectForKey:@"CKLocalizedTitle"];
    v17 = [v14 objectForKey:@"CKLocalizedCancelButtonKey"];

    if (v15)
    {
      v18 = v15;
      if ([v15 length])
      {
        if (!v16)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
  }

  v18 = v11;

  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ([v16 length])
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v19 = v10;

  v16 = v19;
  if (!v17)
  {
LABEL_13:
    v20 = v12;

    v17 = v20;
    goto LABEL_14;
  }

LABEL_12:
  if (![v17 length])
  {
    goto LABEL_13;
  }

LABEL_14:
  v21 = 0;
  if (v18 && v16 && v17)
  {
    v21 = [CKAlertController alertControllerWithTitle:v16 message:v18 preferredStyle:1];
    v22 = [CKAlertAction actionWithTitle:v17 style:0 handler:v13];
    [v21 addAction:v22];
    [v21 setPreferredAction:v22];
  }

  return v21;
}

uint64_t CKMVCListenerCapabilities()
{
  result = CKIsRunningInFullCKClient();
  if (result)
  {
    if (CKMVCListenerCapabilities_onceToken != -1)
    {
      CKMVCListenerCapabilities_cold_1();
    }

    return CKMVCListenerCapabilities_sCaps;
  }

  return result;
}

uint64_t __CKMVCListenerCapabilities_block_invoke()
{
  result = CKListenerCapabilities();
  CKMVCListenerCapabilities_sCaps = *MEMORY[0x1E69A62B8] | result;
  return result;
}

uint64_t CKSiriListenerCapabilities()
{
  result = CKIsRunningInFullCKClient();
  if (result)
  {
    if (CKSiriListenerCapabilities_onceToken != -1)
    {
      CKSiriListenerCapabilities_cold_1();
    }

    return CKSiriListenerCapabilities_sCaps;
  }

  return result;
}

uint64_t CKCreateDirectoriesToPath(const char *a1, uid_t a2, gid_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  result = stat(a1, &v10);
  if (result)
  {
    bzero(v11, 0x400uLL);
    v7 = *a1;
    if (!*a1)
    {
      return 0;
    }

    v8 = 0;
    v9 = a1 + 1;
    while (1)
    {
      v11[v8] = v7;
      if (v7 == 47 && stat(v11, &v10))
      {
        if (mkdir(v11, 0x1FFu))
        {
          return *__error();
        }

        chown(v11, a2, a3);
        chmod(v11, 0x1C0u);
      }

      result = 0;
      if (v8 <= 0x3FD)
      {
        v7 = v9[v8++];
        if (v7)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

void CKCopyMobileUserInformation()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x193AF4570]();
  _MobileUserString = v0;
  if (v0)
  {
    *buffer = 0u;
    v13 = 0u;
    v11 = 32;
    CFRetain(v0);
    v1 = CFCopyHomeDirectoryURLForUser();
    v2 = MEMORY[0x1E695E480];
    if (v1)
    {
      v3 = v1;
      v4 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
      if (v4)
      {
        v5 = v4;
        _MobileUserDirectory = CKStringGetOrCreateCString(*v2, v4, 0, 0);
        CFRelease(v5);
      }

      CFRelease(v3);
    }

    v6 = *v2;
    v7 = CKStringGetOrCreateCString(*v2, _MobileUserString, buffer, &v11);
    if (v7)
    {
      v8 = v7;
      v9 = getpwnam(v7);
      if (v9)
      {
        pw_gid = v9->pw_gid;
        _MobileUserUID = v9->pw_uid;
        _MobileUserGID = pw_gid;
      }

      if (v8 != buffer)
      {
        CFAllocatorDeallocate(v6, v8);
      }
    }
  }
}

BOOL CKReadReceiptsEnabled()
{
  v0 = sReadReceiptsEnabled;
  if (sReadReceiptsEnabled < 0)
  {
    if (sReadReceiptsEnabled == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKReadReceiptsEnabledChanged, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v2 = CPCopySharedResourcesPreferencesDomainForDomain();
    keyExistsAndHasValidFormat = 0;
    if (v2)
    {
      v3 = v2;
      CFPreferencesSynchronize(v2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ReadReceiptsEnabled", v3, &keyExistsAndHasValidFormat);
      CFRelease(v3);
      if (AppBooleanValue)
      {
        v5 = keyExistsAndHasValidFormat == 0;
      }

      else
      {
        v5 = 1;
      }

      v0 = !v5;
    }

    else
    {
      v0 = 0;
    }

    sReadReceiptsEnabled = v0;
  }

  return v0 != 0;
}

uint64_t _CKReadReceiptsEnabledChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = MarcoShouldLogMadridLevelCF();
    if (result)
    {
      result = _CKLog();
    }
  }

  sReadReceiptsEnabled = -1;
  return result;
}

void CKSetReadReceiptsEnabled(int a1)
{
  if (CKReadReceiptsEnabled() != a1)
  {
    sReadReceiptsEnabled = a1;
    v2 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v2)
    {
      v3 = v2;
      if (a1)
      {
        v4 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v4 = *MEMORY[0x1E695E4C0];
      }

      CFPreferencesSetAppValue(@"ReadReceiptsEnabled", v4, v2);
      CFPreferencesSynchronize(v3, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      CFRelease(v3);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", 0, 0, 1u);
    }
  }
}

BOOL CKReadReceiptSettingsConfirmed()
{
  v0 = sReadReceiptSettingsConfirmed;
  if (sReadReceiptSettingsConfirmed < 0)
  {
    if (sReadReceiptSettingsConfirmed == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKReadReceiptSettingsConfirmedChanged, @"com.apple.MobileSMS.ReadReceiptSettingsConfirmed.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    if (CFPreferencesGetAppBooleanValue(@"ReadReceiptSettingsConfirmed", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat))
    {
      v2 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v2 = 1;
    }

    v0 = !v2;
    sReadReceiptSettingsConfirmed = v0;
  }

  return v0 != 0;
}

uint64_t _CKReadReceiptSettingsConfirmedChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = MarcoShouldLogMadridLevelCF();
    if (result)
    {
      result = _CKLog();
    }
  }

  sReadReceiptSettingsConfirmed = -1;
  return result;
}

uint64_t CKSetReadReceiptSettingsConfirmed(int a1)
{
  result = CKReadReceiptSettingsConfirmed();
  if (result != a1)
  {
    v3 = MEMORY[0x1E695E4D0];
    if (!a1)
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    CFPreferencesSetAppValue(@"ReadReceiptSettingsConfirmed", *v3, @"com.apple.MobileSMS");
    result = CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    sReadReceiptSettingsConfirmed = a1;
  }

  return result;
}

uint64_t CKSMSRelaySettingsConfirmed()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"SMSRelaySettingsConfirmed"];

  return v1;
}

void CKSetSMSRelaySettingsConfirmed(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:a1 forKey:@"SMSRelaySettingsConfirmed"];
}

void CKSetAudioPlaybackSpeakerEnabled()
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 isProximityMonitoringSupported];

  if (v1)
  {

    IMSetDomainBoolForKey();
  }
}

uint64_t CKNanoCurrentDictationMode()
{
  result = sAudioMessageMode;
  if (sAudioMessageMode < 0)
  {
    if (sAudioMessageMode == -2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKNanoAudioMessageModeChanged, @"com.apple.MobileSMS.CKNanoDictationMode.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v2 = [objc_alloc(MEMORY[0x193AF5EC0](@"NPSDomainAccessor" @"NanoPreferencesSync"))];
    v3 = [v2 objectForKey:@"CKNanoDictationMode"];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"DEFAULT_DICTATION_MODE" value:&stru_1F04268F8 table:@"ChatKit"];
      v5 = [v6 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
    }

    sAudioMessageMode = [v5 unsignedIntegerValue];
    return sAudioMessageMode;
  }

  return result;
}

uint64_t _CKNanoAudioMessageModeChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = a3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = MarcoShouldLogMadridLevelCF();
    if (result)
    {
      result = _CKLog();
    }
  }

  sAudioMessageMode = -1;
  return result;
}

uint64_t CKDebugSaveImageWithName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"Messages-Debug-Images"];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-", time(0)];
  v9 = [v8 stringByAppendingString:v3];

  v10 = [v6 stringByAppendingPathComponent:v9];
  v11 = [v10 stringByAppendingPathExtension:@"png"];

  v12 = UIImagePNGRepresentation(v4);

  v13 = [v12 writeToFile:v11 atomically:1];
  return v13;
}

uint64_t CKDebugSaveCGImageWithName(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a2;
  v5 = [[v3 alloc] initWithCGImage:a1];
  v6 = CKDebugSaveImageWithName(v5, v4);

  return v6;
}

id CKSuppressionContextsForIdentifiers(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DFA8] setWithObjects:{@"ConversationListSuppressionContext", v3, v4, 0}];
  v6 = +[CKConversationList sharedConversationList];
  v7 = [v6 conversationForExistingChatWithChatIdentifier:v3];
  if (v7)
  {
    goto LABEL_2;
  }

  v9 = +[CKConversationList sharedConversationList];
  v8 = [v9 conversationForExistingChatWithGroupID:v3];

  if (!v8)
  {
    v6 = +[CKConversationList sharedConversationList];
    v7 = [v6 conversationForExistingChatWithPersonCentricID:v4];
LABEL_2:
    v8 = v7;
  }

  v10 = +[CKConversationList sharedConversationList];
  v11 = [v10 primaryFilterModeForConversation:v8];

  v12 = [CKConversationList conversationListAlertSuppressionContextForFilterMode:v11];
  [v5 addObject:v12];
  v13 = [v8 chat];
  v14 = [v13 priorityClassification];

  if (v14)
  {
    v15 = [CKConversationList conversationListAlertSuppressionContextForFilterMode:2];

    [v5 addObject:v15];
    v12 = v15;
  }

  v16 = [v5 copy];

  return v16;
}

id CKPreferredAddressTypes()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = CKIsRunningInMessagesOrSpringBoard();
  if (CKiMessageSupported())
  {
    if (!v0)
    {
      [MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:0 simID:0];
      goto LABEL_9;
    }

    v1 = [MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:0 simID:0];
  }

  else
  {
    v1 = 0;
  }

  if (([MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:0 simID:0] & 1) == 0 && !v1)
  {
    v8 = *MEMORY[0x1E695C330];
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v8;
    v4 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v5 = *MEMORY[0x1E695C208];
  v9 = *MEMORY[0x1E695C330];
  v10 = v5;
  v2 = MEMORY[0x1E695DEC8];
  v3 = &v9;
  v4 = 2;
LABEL_10:
  v6 = [v2 arrayWithObjects:v3 count:{v4, v8, v9, v10, v11}];

  return v6;
}

void CKResetCachedUserSettings()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "[settings] reseting cached user settings", v6, 2u);
    }
  }

  [MEMORY[0x1E69A8080] invalidateDefaultPrimaryFilterModeCache];
  +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache];
  sUserShowCharacterCountEnabled = -1;
  sUserShowSubjectEnabled = -1;
  v1 = [MEMORY[0x1E69A8018] sharedInstance];
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isIntroductionsEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled];
  }

  else
  {
    v5 = [v1 getBoolFromDomain:v2 forKey:@"IncomingMessageAlertFiltration"];
  }

  sUnknownFilteringEnabled = v5;
  sSMSSpamFilteringEnabled = [v1 getBoolFromDomain:v2 forKey:@"IncomingMessageAlertSpamFiltration"];
}

void CKResetFilteringSettings()
{
  [MEMORY[0x1E69A8080] invalidateDefaultPrimaryFilterModeCache];
  +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache];
  v1 = [MEMORY[0x1E69A8018] sharedInstance];
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  sCheckForceUnknownFilteringCompleted = 0;
  [v1 setBool:0 forDomain:v0 forKey:@"sForceUnknownFilteringCompleted"];
  sCheckForceSMSSpamFilteringCompleted = 0;
  [v1 setBool:0 forDomain:v0 forKey:@"sForceSMSSpamFilteringCompleted"];
  IMResetJunkiMessageFilteringState();
  IMResetInternationalFilterEligibilityState();
}

uint64_t CKIsRunningInSpringBoard()
{
  if (CKIsRunningInSpringBoard_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_2();
  }

  return CKIsRunningInSpringBoard_sIsRunningInSpringBoard;
}

CFStringRef __CKIsRunningInSpringBoard_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.springboard");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInSpringBoard_sIsRunningInSpringBoard = v2;
  return result;
}

uint64_t CKIsRunningInInCallService()
{
  if (CKIsRunningInInCallService_onceToken != -1)
  {
    CKIsRunningInInCallService_cold_1();
  }

  return CKIsRunningInInCallService_sIsRunningInInCallService;
}

CFStringRef __CKIsRunningInInCallService_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.InCallService");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInInCallService_sIsRunningInInCallService = v2;
  return result;
}

CFStringRef __CKIsRunningInNanoPhone_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.NanoPhone");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInNanoPhone_sIsRunningInNanoPhone = v2;
  return result;
}

CFStringRef __CKIsRunningInNanoMessageUIViewService_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.NanoMessageUIViewService");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInNanoMessageUIViewService_sIsRunningInNanoMessagesUI = v2;
  return result;
}

CFStringRef __CKIsRunningInET_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.ET");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInET_sIsRunningInET = v2;
  return result;
}

CFStringRef __CKIsRunningInSOSD_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.SOS");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInSOSD_sIsRunningInSOSD = v2;
  return result;
}

uint64_t CKIsRunningInMessagesAssistantUIExtension()
{
  if (CKIsRunningInMessagesAssistantUIExtension_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_5();
  }

  return CKIsRunningInMessagesAssistantUIExtension_sIsRunningInMessagesAssistantUIExtension;
}

CFStringRef __CKIsRunningInMessagesAssistantUIExtension_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.MobileSMS.MessagesAssistantUIExtension");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInMessagesAssistantUIExtension_sIsRunningInMessagesAssistantUIExtension = v2;
  return result;
}

CFStringRef __CKIsRunningInMessagesTranscriptExtension_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.MobileSMS.MessagesTranscriptExtension");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInMessagesTranscriptExtension_sIsRunningInMessagesTranscriptExtension = v2;
  return result;
}

uint64_t CKIsRunningInPassKitIntentsExtension()
{
  if (CKIsRunningInPassKitIntentsExtension_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_9();
  }

  return CKIsRunningInPassKitIntentsExtension_sIsRunningInWalletIntentsExtension;
}

CFStringRef __CKIsRunningInPassKitIntentsExtension_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    v2 = result;
    result = CFEqual(result, @"com.apple.Passbook.PassbookIntentsExtension");
    if (result)
    {
      v3 = 1;
    }

    else
    {
      result = CFEqual(v2, @"com.apple.PassKit.PassKitIntentsExtension");
      v3 = result != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  CKIsRunningInPassKitIntentsExtension_sIsRunningInWalletIntentsExtension = v3;
  return result;
}

uint64_t CKIsRunningInTapToRadar()
{
  if (CKIsRunningInTapToRadar_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_12();
  }

  return CKIsRunningInTapToRadar_sIsRunningInTapToRadar;
}

CFStringRef __CKIsRunningInTapToRadar_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.TapToRadar");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInTapToRadar_sIsRunningInTapToRadar = v2;
  return result;
}

BOOL CKIsRunningInNonUIClient()
{
  if (CKIsRunningInSiri_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_6();
  }

  if (CKIsRunningInSiri_sIsRunningInSiri)
  {
    return 1;
  }

  if (CKIsRunningInSOSD_onceToken != -1)
  {
    CKIsRunningInNonUIClient_cold_2();
  }

  return CKIsRunningInSOSD_sIsRunningInSOSD != 0;
}

uint64_t CKIsRunningInCameraAppsClient()
{
  if (CKIsRunningInCameraAppsClient_onceToken != -1)
  {
    CKIsRunningInCameraAppsClient_cold_1();
  }

  return CKIsRunningInCameraAppsClient_sIsRunningInDarkModeClient;
}

CFStringRef __CKIsRunningInCameraAppsClient_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    v2 = result;
    result = CFEqual(result, *MEMORY[0x1E69A69A0]);
    if (result || (result = CFEqual(v2, *MEMORY[0x1E69A69C0]), result) || (result = CFEqual(v2, @"com.apple.InCallService"), result) || (result = CFEqual(v2, @"com.apple.iMessageAppsBrowserTest"), result))
    {
      v3 = 1;
    }

    else
    {
      result = CFEqual(v2, @"com.apple.CameraEffectsDemo");
      v3 = result != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  CKIsRunningInCameraAppsClient_sIsRunningInDarkModeClient = v3;
  return result;
}

uint64_t CKIsRunningInUserGeneratedStickersExtension()
{
  if (CKIsRunningInUserGeneratedStickersExtension_onceToken != -1)
  {
    CKIsRunningInUserGeneratedStickersExtension_cold_1();
  }

  return CKIsRunningInUserGeneratedStickersExtension_isIsRunningInUserGeneratedStickersExtension;
}

CFStringRef __CKIsRunningInUserGeneratedStickersExtension_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.Stickers.UserGenerated.MessagesExtension");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInUserGeneratedStickersExtension_isIsRunningInUserGeneratedStickersExtension = v2;
  return result;
}

BOOL CKCanShowSubjectForLastAddressedHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (CKIsRunningInMessagesNotificationExtension_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_4();
  }

  v5 = 1;
  if (!CKIsRunningInMessagesNotificationExtension_sIsRunningInMessagesExtension)
  {
    v6 = IMSharedHelperDeviceHasMultipleSubscriptions() ? [MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:v3 simID:v4] : CKiMessageSupported();
    if ((v7 = v6, ([MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:v3 simID:v4] & 1) == 0) && (v7 & 1) == 0 || !CKIsRunningInFullCKClient() && (objc_msgSend(MEMORY[0x1E699BE70], "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isTelephonyDevice"), v9, v10) && !objc_msgSend(MEMORY[0x1E69A5CA0], "mmsEnabledforPhoneNumber:simID:", v3, v4))
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL CKShowSubjectEnabledForLastAddressedHandle(void *a1, void *a2)
{
  if (!CKCanShowSubjectForLastAddressedHandle(a1, a2))
  {
    return 0;
  }

  if (sUserShowSubjectEnabled != -1)
  {
    return sUserShowSubjectEnabled > 0;
  }

  v3 = CPCopySharedResourcesPreferencesDomainForDomain();
  Value = v3;
  if (v3)
  {
    CFPreferencesAppSynchronize(v3);
    v4 = CFPreferencesCopyAppValue(@"MMSShowSubject", Value);
    CFRelease(Value);
    if (v4)
    {
      Value = CFBooleanGetValue(v4);
      CFRelease(v4);
    }

    else
    {
      Value = 0;
    }
  }

  sUserShowSubjectEnabled = Value != 0;
  return Value;
}

uint64_t CKShowCharacterCountEnabled(char a1)
{
  if (sUserShowCharacterCountEnabled == -1)
  {
    if ((CKShowCharacterCountEnabled_isListening & 1) == 0)
    {
      CKShowCharacterCountEnabled_isListening = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKShowCharacterCountEnabledChanged, @"com.apple.MobileSMS.MMSShowCharacterCount.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v5 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v5)
    {
      v6 = v5;
      CFPreferencesAppSynchronize(v5);
      v7 = CFPreferencesCopyAppValue(@"MMSShowCharacterCount", v6);
      CFRelease(v6);
      sUserShowCharacterCountEnabled = 0;
      if (v7)
      {
        sUserShowCharacterCountEnabled = CFBooleanGetValue(v7);
        CFRelease(v7);
      }
    }
  }

  if (a1)
  {
    v2 = 1;
    sUserShowCharacterCountEnabled = 1;
  }

  else
  {
    return sUserShowCharacterCountEnabled;
  }

  return v2;
}

void _CKShowCharacterCountEnabledChanged()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v0)
  {
    v1 = v0;
    CFPreferencesAppSynchronize(v0);
    CFRelease(v1);
  }

  sUserShowCharacterCountEnabled = -1;
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"MMSCharacterCountUISettingDidChangeNotification", 0, 0, 1u);
}

uint64_t CKMessageIsFromFilteredSenderIsUnderFirstUnlock(int a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  Unlock = CKMessageUnknownFilteringEnabledUnderFirstUnlock(a6);
  v13 = CKMessageSpamFilteringEnabledUnderFirstUnlock(a6);
  v14 = a1 == 0;
  v15 = a1 != 0;
  if (!a2)
  {
    v14 = 1;
  }

  if (!Unlock)
  {
    v14 = 0;
  }

  if (a3)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4 == 0;
  }

  if (v16)
  {
    v14 = 0;
  }

  if (!v13)
  {
    v15 = 0;
  }

  if (a4 != 2 && a5 == 0)
  {
    v15 = 0;
  }

  return v14 | v15;
}

uint64_t CKMessageIsFromFilteredSender(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = a1 == 0;
  v8 = a1 != 0;
  if (!a2)
  {
    v7 = 1;
  }

  if (!a6)
  {
    v7 = 0;
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4 == 0;
  }

  if (v9)
  {
    v7 = 0;
  }

  if (!a7)
  {
    v8 = 0;
  }

  if (a4 != 2 && a5 == 0)
  {
    v8 = 0;
  }

  return v7 | v8;
}

uint64_t CKConversationIsFromFilteredSender(int a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a2)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

BOOL deviceEligibleForFirstPartyExtensionFiltering()
{
  if ([CKUtilities userDefaultBoolForKey:@"kCKMessageSpamFilteringSettingsConfirmedKey"])
  {
    return 0;
  }

  v1 = [MEMORY[0x1E69A5A80] sharedInstance];
  v2 = [v1 activeAccountsAreEligibleForAppleSMSFilter];

  return v2 == 1;
}

uint64_t deviceWantsToBeForcedIntoUnknownSendersFiltering()
{
  v10 = *MEMORY[0x1E69E9840];
  if ([CKUtilities userDefaultBoolForKey:@"kCKMessageFilteringSettingsConfirmedKey"]|| [CKUtilities userDefaultBoolForKey:@"kCKMessageSpamFilteringSettingsConfirmedKey"])
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      return result;
    }

    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v6 = 67109376;
      v7 = [CKUtilities userDefaultBoolForKey:@"kCKMessageFilteringSettingsConfirmedKey"];
      v8 = 1024;
      v9 = [CKUtilities userDefaultBoolForKey:@"kCKMessageSpamFilteringSettingsConfirmedKey"];
      _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_INFO, "CKIsForceUnknownFilteringEnabled: CKMessageFilteringIsModified: %d, CKMessageSpamFilteringIsModified: %d", &v6, 0xEu);
    }

    return 0;
  }

  if ([MEMORY[0x1E69A8020] IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender] && (+[CKUtilities isIpad](CKUtilities, "isIpad") || objc_msgSend(MEMORY[0x1E69A7F58], "IMMessagesFilteringSettingForPreferedSubscription")))
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = [MEMORY[0x1E69A8020] IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender];
        if (v3)
        {
          if (+[CKUtilities isIpad])
          {
            v3 = 1;
          }

          else
          {
            v3 = [MEMORY[0x1E69A7F58] IMMessagesFilteringSettingForPreferedSubscription];
          }
        }

        v6 = 67109120;
        v7 = v3;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "CKIsForceUnknownFilteringEnabled: CKMessageForceFilteringIsExpected: %d", &v6, 8u);
      }

LABEL_23:
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69A5A80] sharedInstance];
    v5 = [v4 activeAccountsAreEligibleForFilterUnknownSendersByDefault];

    if (v5 != 1)
    {
      return 0;
    }

    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v6 = 67109120;
        v7 = 1;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "CKIsForceUnknownFilteringEnabled: userIsEligibleForFilterUnknownSenders: %d", &v6, 8u);
      }

      goto LABEL_23;
    }
  }

  return 1;
}

void sub_1903C71FC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1903C71C8);
  }

  _Unwind_Resume(a1);
}

uint64_t CKMessageForceFilteringIsExpected()
{
  result = [MEMORY[0x1E69A8020] IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender];
  if (result)
  {
    if (+[CKUtilities isIpad])
    {
      return 1;
    }

    else
    {
      v1 = MEMORY[0x1E69A7F58];

      return [v1 IMMessagesFilteringSettingForPreferedSubscription];
    }
  }

  return result;
}

uint64_t CKIsForceUnknownFilteringEnabled()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"allow-force-unknown-filtering-on"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v6 = 67109120;
        v7 = v2;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "[settings] Found bag: %{BOOL}d", &v6, 8u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 67109120;
        v7 = 1;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "[settings] Defaulting to %{BOOL}d", &v6, 8u);
      }
    }

    v2 = 1;
  }

  return v2;
}

void _CKMessageFilteringEnabledChanged()
{
  [MEMORY[0x1E69A8080] invalidateDefaultPrimaryFilterModeCache];
  +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache];
  v3 = [MEMORY[0x1E69A8018] sharedInstance];
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  sCheckForceUnknownFilteringCompleted = 0;
  [v3 setBool:0 forDomain:v0 forKey:@"sForceUnknownFilteringCompleted"];
  sBlackholeEnabled = -1;
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];

  v2 = [MEMORY[0x1E69A82F0] sharedInstance];
  [v2 sendFilterUnknownSenderStateChangedEvent];
}

void CKSetMessageFilteringSettingsConfirmed(uint64_t a1)
{
  v2 = +[CKUtilities nsUserDefaultsStandardUserDefaults];
  [v2 setBool:a1 forKey:@"kCKMessageFilteringSettingsConfirmedKey"];
}

void _CKMessageSpamFilteringEnabledChanged()
{
  +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache];
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [v0 isCategorizationEnabled];

  sCheckForceSMSSpamFilteringCompleted = 0;
  v3 = CPCopySharedResourcesPreferencesDomainForDomain();
  v1 = [MEMORY[0x1E69A8018] sharedInstance];
  [v1 setBool:0 forDomain:v3 forKey:@"sForceSMSSpamFilteringCompleted"];

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:CKMessageSpamFilteringChangedNotification object:0];
}

void CKSetMessageSpamFilteringSettingsConfirmed(uint64_t a1)
{
  CKMessageUnknownFilteringEnabledUnderFirstUnlock(0);
  v2 = +[CKUtilities nsUserDefaultsStandardUserDefaults];
  [v2 setBool:a1 forKey:@"kCKMessageSpamFilteringSettingsConfirmedKey"];
}

uint64_t CKWantsInboxVisible()
{
  LOBYTE(AppBooleanValue) = sInboxVisibilityPreference;
  if (sInboxVisibilityPreference == -1)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      CFPreferencesAppSynchronize(v1);
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"InboxVisibility", v2, 0);
      CFRelease(v2);
      sInboxVisibilityPreference = AppBooleanValue;
    }

    else
    {
      LOBYTE(AppBooleanValue) = sInboxVisibilityPreference;
    }
  }

  return AppBooleanValue;
}

void CKSetInboxVisibility(int a1)
{
  if (sInboxVisibilityPreference != a1)
  {
    v2 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E695E4D0];
      if (!a1)
      {
        v4 = MEMORY[0x1E695E4C0];
      }

      CFPreferencesSetAppValue(@"InboxVisibility", *v4, v2);
      CFPreferencesAppSynchronize(v3);
      CFRelease(v3);
      sInboxVisibilityPreference = a1;
    }
  }
}

void CKSetMessageFilteringEnabled(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CKMessageUnknownFilteringEnabledUnderFirstUnlock(0) == a1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "[settings] requesting to set filter unknown senders to the exisiting value. Not updating.", v10, 2u);
      }
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v4 = [v3 isIntroductionsEnabled];

    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10[0] = 67109120;
          v10[1] = a1;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[settings] Setting message filtering to %{BOOL}d", v10, 8u);
        }
      }

      v6 = [MEMORY[0x1E69A5CC8] sharedManager];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:a1];
      [v6 setSettingValue:v7 forKey:4];
    }

    else
    {
      v8 = [MEMORY[0x1E69A8018] sharedInstance];
      [v8 setBool:a1 forDomain:@"com.apple.MobileSMS" forKey:@"IncomingMessageAlertFiltration"];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
  }
}

void CKSetMessageSpamFilteringEnabled(uint64_t a1)
{
  if (CKMessageSpamFilteringEnabledUnderFirstUnlock(0) != a1)
  {
    v2 = [MEMORY[0x1E69A8018] sharedInstance];
    [v2 setBool:a1 forDomain:@"com.apple.MobileSMS" forKey:@"IncomingMessageAlertSpamFiltration"];

    sSMSSpamFilteringEnabled = a1;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:CKMessageSpamFilteringChangedNotification object:0];
  }
}

BOOL CKIsBlackholeEnabled()
{
  v0 = sBlackholeEnabled;
  if (sBlackholeEnabled != -1)
  {
    goto LABEL_12;
  }

  if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled])
  {
    v1 = [MEMORY[0x1E69A5A80] sharedInstance];
    v2 = [v1 activeAccountsAreEligibleForHawking];

    if (v2 == -1)
    {
      return 0;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        v0 = sBlackholeEnabled;
        goto LABEL_12;
      }

      v3 = MEMORY[0x1E69A82A0];
      v4 = 1;
    }

    else
    {
      v3 = MEMORY[0x1E69A82A0];
      v4 = 0;
    }

    v0 = [v3 isBlackholeEnabledForEligibleAccounts:v4];
    sBlackholeEnabled = v0;
  }

  else
  {
    v0 = 0;
    sBlackholeEnabled = 0;
  }

LABEL_12:
  v6 = sBlackholeEnabledPreviousState;
  if (v0 != sBlackholeEnabledPreviousState)
  {
    sBlackholeEnabledPreviousState = v0;
    if (v6 != -1)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];

      v0 = sBlackholeEnabled;
    }
  }

  return v0 > 0;
}

uint64_t CKIsEligibleForBlackhole()
{
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [v0 activeAccountsAreEligibleForHawking];

  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = MEMORY[0x1E69A82A0];

  return [v3 isBlackholeEnabledForEligibleAccounts:v2];
}

BOOL CKHasBlackholeEnabledOrHasBlackholeChats()
{
  v0 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v1 = [v0 blackholedChatsExist];

  if (v1)
  {
    return 1;
  }

  return CKIsBlackholeEnabled();
}

void CKRemoveDaemonListener(void *a1)
{
  v1 = MEMORY[0x1E69A5B50];
  v2 = a1;
  v3 = [v1 sharedController];
  [v3 removeListenerID:v2];
}

BOOL CKActiveAccountsAreEligibleForFirstPartyExtensionSMSFiltering()
{
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [v0 activeAccountsAreEligibleForAppleSMSFilter];

  return v1 == 1;
}

uint64_t CKEnhancedLegacySearchDisabled()
{
  LOBYTE(v0) = sEnhancedLegacySearchDisabled;
  if (sEnhancedLegacySearchDisabled == -1)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      CFPreferencesAppSynchronize(v1);
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnhancedLegacySearchDisabled", v2, &keyExistsAndHasValidFormat);
      CFRelease(v2);
      if (AppBooleanValue)
      {
        v4 = keyExistsAndHasValidFormat == 0;
      }

      else
      {
        v4 = 1;
      }

      v0 = !v4;
      sEnhancedLegacySearchDisabled = v0;
    }

    else
    {
      LOBYTE(v0) = sEnhancedLegacySearchDisabled;
    }
  }

  return v0;
}

void _CKShouldShowSURFChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = a3;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Received notification: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    v14 = a3;
    _CKLog();
  }

  v8 = [MEMORY[0x1E695E000] messagesAppDomain];
  v9 = [v8 valueForKey:@"ForceApplePayAppVisibility"];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Ignoring PassKit's Apple Pay App visibility change notification, we have a user defaults override forcing the visibility", buf, 2u);
      }
    }
  }

  else
  {
    sCKShouldShowSURF = -1;
    v11 = [a5 objectForKey:@"visible"];
    v12 = v11;
    if (v11)
    {
      sCKShouldShowSURF = [v11 intValue];
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 __mainThreadPostNotificationName:*MEMORY[0x1E69A56D8] object:0];
  }
}

void *__CKShouldShowSURF_block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PKPeerPaymentMessagesExtensionIsVisible", @"PassKitCore");
  CKShouldShowSURF__PKPeerPaymentMessagesExtensionIsVisible = result;
  return result;
}

uint64_t (*CKSURFAvailable())(void)
{
  if (CKSURFAvailable__pred_PKPeerPaymentIsAvailablePassKitCore != -1)
  {
    CKSURFAvailable_cold_1();
  }

  result = CKSURFAvailable__PKPeerPaymentIsAvailable;
  if (CKSURFAvailable__PKPeerPaymentIsAvailable)
  {

    return result();
  }

  return result;
}

void *__CKSURFAvailable_block_invoke()
{
  result = MEMORY[0x193AF5ED0]("PKPeerPaymentIsAvailable", @"PassKitCore");
  CKSURFAvailable__PKPeerPaymentIsAvailable = result;
  return result;
}

void _CKConversationListPhotosChanged()
{
  sUserConversationListContactPhotosEnabled = -1;
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:CKConversationListContactPhotosEnabledNotification object:0];
}

double CKGetLegacyAppMigratedSidebarPersistedWidth(double a1)
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    v4 = CFPreferencesCopyAppValue(@"LegacyAppSidebarPersistedWidth", v3);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v5, kCFNumberCGFloatType, &valuePtr);
        if (valuePtr > 0.0)
        {
          a1 = valuePtr;
        }
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }

  return a1;
}

double CKGetConversationListPersistedWidth(double a1)
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    v4 = CFPreferencesCopyAppValue(@"SidebarPersistedWidth", v3);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v5, kCFNumberCGFloatType, &valuePtr);
        if (valuePtr > 0.0)
        {
          a1 = valuePtr;
        }
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }

  return a1;
}

void CKSetConversationListPersistedWidth(double a1)
{
  valuePtr = a1;
  if (a1 > 0.0)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      CFPreferencesSetAppValue(@"SidebarPersistedWidth", v3, v2);
      CFPreferencesAppSynchronize(v2);
      if (v3)
      {
        CFRelease(v3);
      }

      CFRelease(v2);
    }
  }
}

double CKGetInboxPersistedWidth(double a1)
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
    v4 = CFPreferencesCopyAppValue(@"InboxPersistedWidth", v3);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v5, kCFNumberCGFloatType, &valuePtr);
        if (valuePtr > 0.0)
        {
          a1 = valuePtr;
        }
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }

  return a1;
}

void CKSetInboxPersistedWidth(double a1)
{
  valuePtr = a1;
  if (a1 > 0.0)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      CFPreferencesSetAppValue(@"InboxPersistedWidth", v3, v2);
      CFPreferencesAppSynchronize(v2);
      if (v3)
      {
        CFRelease(v3);
      }

      CFRelease(v2);
    }
  }
}

uint64_t CKDarkModeEnabled()
{
  LOBYTE(v0) = sUserDarkModeEnabled;
  if (sUserDarkModeEnabled == -1)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      keyExistsAndHasValidFormat = 0;
      CFPreferencesAppSynchronize(v1);
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DarkModeEnabled", v2, &keyExistsAndHasValidFormat);
      CFRelease(v2);
      if (AppBooleanValue)
      {
        v4 = keyExistsAndHasValidFormat == 0;
      }

      else
      {
        v4 = 1;
      }

      v0 = !v4;
      sUserDarkModeEnabled = v0;
    }

    else
    {
      LOBYTE(v0) = sUserDarkModeEnabled;
    }
  }

  return v0;
}

uint64_t CKGetIntSettingForKey(void *a1, _DWORD *a2)
{
  v3 = a1;
  if (!a2 || *a2 == -1)
  {
    keyExistsAndHasValidFormat = 0;
    v5 = CPCopySharedResourcesPreferencesDomainForDomain();
    CFPreferencesAppSynchronize(v5);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v3, v5, &keyExistsAndHasValidFormat);
    CFRelease(v5);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppIntegerValue;
    }

    else
    {
      v4 = 0;
    }

    if (a2)
    {
      *a2 = v4;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CKMessageUnknownSenderNotificationDisabled()
{
  if (CKMessageUnknownSenderNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessageUnknownSenderNotificationDisabled];
  }

  return sSMSDefaultAllowUnknownSendersDisabled;
}

uint64_t CKMessageTransactionsNotificationDisabled()
{
  if (CKMessageTransactionsNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessageTransactionsNotificationDisabled];
  }

  return sSMSDefaultAllowTransactionsDisabled;
}

uint64_t CKMessagePromotionsNotificationDisabled()
{
  if (CKMessagePromotionsNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessagePromotionsNotificationDisabled];
  }

  return sSMSDefaultAllowPromotionsDisabled;
}

void _TrackSaveDialogOptionSelected(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A8168];
  v4 = a1;
  v5 = [v3 sharedInstance];
  v6 = *MEMORY[0x1E69A75F0];
  v7 = *MEMORY[0x1E69A75C8];
  v10[0] = *MEMORY[0x1E69A75E0];
  v10[1] = v7;
  v11[0] = v4;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v5 trackEvent:v6 withDictionary:v9];
}

id CKMakeHandlesFromRecipients(void *a1)
{
  v1 = MEMORY[0x1E69A5C90];
  v2 = a1;
  v3 = [v1 iMessageService];
  v4 = CKMakeHandlesFromRecipientsWithFallbackService(v2, v3);

  return v4;
}

id CKMakeHandlesFromRecipientsWithFallbackService(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E69A5A80] sharedInstance];
  v19 = v4;
  v6 = [v5 __ck_bestAccountForAddresses:v3 withFallbackService:v4];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v21;
  do
  {
    v12 = 0;
    do
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      if (v13)
      {
        v14 = IMStripFormattingFromAddress();
        v15 = [v6 existingIMHandleWithID:v14];

        if (v15)
        {
          if (!v10)
          {
            goto LABEL_9;
          }

          goto LABEL_10;
        }

        v16 = [v6 imHandleWithID:v13];
        if (v16)
        {
          v15 = v16;
          if (!v10)
          {
LABEL_9:
            v10 = [MEMORY[0x1E695DF70] array];
          }

LABEL_10:
          [v10 addObject:v15];
        }
      }

      ++v12;
    }

    while (v9 != v12);
    v17 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v9 = v17;
  }

  while (v17);
LABEL_19:

  return v10;
}

void CKClientComposeSendMessageWithSubscriptionIdentifier(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKClientComposeSendMessage recipients [%@] subscriptionsIdentifier [%@]", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    v11 = v5;
    v12 = v7;
    _CKLogExternal();
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 beginBackgroundTaskWithExpirationHandler:&__block_literal_global_1859];

  v10 = [v5 lastObject];
  IMSPISendMessageWithAttachmentsFromSubscriptionIdentifier();

  im_dispatch_after();
}

void __CKClientComposeSendMessageWithSubscriptionIdentifier_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

id CKClientSetChatContextWithSubscriptionIdentifier(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKClientSetChatContextWithSubscriptionIdentifier recipients [%@] subscriptionsIdentifier [%@]", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    _CKLogExternal();
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    [v6 beginBackgroundTaskWithExpirationHandler:&__block_literal_global_1865];

    v7 = [v3 lastObject];
    v11 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v9 = IMSPISetChatContextForSubscriptionIdentifier();

    im_dispatch_after();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __CKClientSetChatContextWithSubscriptionIdentifier_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

void CKClientComposeSendComposition(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKClientComposeSendComposition recipients [%@]", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogMadridLevelCF())
  {
    v19 = v3;
    _CKLogExternal();
  }

  [v3 count];
  v6 = IMFindExistingChatForAddresses();
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [MEMORY[0x1E69A5A80] sharedInstance];
    v9 = [v8 __ck_bestAccountForAddresses:v3];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = IMStripFormattingFromAddress();
          v15 = [v9 imHandleWithID:v14];

          if (v15)
          {
            [v7 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v16 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v6 = [v16 _ck_chatForHandles:v7 createIfNecessary:1];
  }

  v17 = [[CKConversation alloc] initWithChat:v6];
  v18 = [(CKConversation *)v17 messageWithComposition:v4];
  [(CKConversation *)v17 sendMessage:v18 newComposition:1];
}

uint64_t CKClientComposeShouldCheckMMS()
{
  v0 = [MEMORY[0x1E699BE70] sharedInstance];
  if ([v0 isTelephonyDevice])
  {
    v1 = [MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:0 simID:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

BOOL CKClientComposeCanSendMediaObjectTypes(uint64_t a1)
{
  v2 = CKiMessageSupported();
  v3 = [MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:0 simID:0];
  v4 = [MEMORY[0x1E69A5CA0] mmsEnabledforPhoneNumber:0 simID:0];
  if ((v4 & 1) == 0 && !v2)
  {
    return 0;
  }

  if (((v2 != 0) & v3) == 1)
  {

    return [CKConversation _iMessage_canSendMessageWithMediaObjectTypes:a1];
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    return [CKConversation _sms_canSendMessageWithMediaObjectTypes:a1 phoneNumber:0 simID:0];
  }
}

uint64_t CKClientComposeMaximumAudioDuration()
{
  if (CKClientComposeShouldCheckMMS())
  {

    return [CKConversation _sms_maxTrimDurationForMediaType:1];
  }

  else
  {

    return [CKConversation _iMessage_maxTrimDurationForMediaType:1];
  }
}

uint64_t CKClientComposeMaximumVideoDuration()
{
  if (CKClientComposeShouldCheckMMS())
  {

    return [CKConversation _sms_maxTrimDurationForMediaType:2];
  }

  else
  {

    return [CKConversation _iMessage_maxTrimDurationForMediaType:2];
  }
}

void CKStartSuppressingSendSoundForMessageGUID(void *a1)
{
  v3 = a1;
  v1 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingSendSoundMessageGUIDs");
  if (!v1)
  {
    v1 = [MEMORY[0x1E695DEC8] array];
  }

  v2 = [v1 arrayByAddingObject:v3];

  IMSetDomainValueForKey();
}

void CKStopSuppressingSendSoundForMessageGUID(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingSendSoundMessageGUIDs");
    if (v2)
    {
      v3 = v2;
      v6[0] = v1;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
      v5 = [v3 arrayByExcludingObjectsInArray:v4];

      IMSetDomainValueForKey();
    }
  }
}

uint64_t CKIsSuppressingSendSoundForMessageGUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingSendSoundMessageGUIDs");
    v3 = v2;
    if (v2)
    {
      v4 = [v2 containsObject:v1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void CKStartSuppressingReceiveSoundForMessageGUID(void *a1)
{
  v5 = a1;
  v1 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingReceiveSoundMessageGUIDs");
  if (!v1)
  {
    v1 = [MEMORY[0x1E695DEC8] array];
  }

  v2 = [v1 arrayByAddingObject:v5];

  v3 = [v2 count];
  if (v3 >= 0xC9)
  {
    v4 = [v2 subarrayWithRange:{v3 - 200, 200}];

    v2 = v4;
  }

  IMSetDomainValueForKey();
}

void CKStopSuppressingReceiveSoundForMessageGUID(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingReceiveSoundMessageGUIDs");
    if (v2)
    {
      v3 = v2;
      v6[0] = v1;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
      v5 = [v3 arrayByExcludingObjectsInArray:v4];

      IMSetDomainValueForKey();
    }
  }
}

uint64_t CKIsSuppressingReceiveSoundForMessageGUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"SuppressingReceiveSoundMessageGUIDs");
    v3 = v2;
    if (v2)
    {
      v4 = [v2 containsObject:v1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CKDetailsPageGifsEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DetailsPageGifsEnabled"];

  return v1;
}

id CKNormalizedMessageGUID(void *a1)
{
  v1 = MEMORY[0x1E696AE70];
  v2 = MEMORY[0x1E696AEC0];
  v3 = a1;
  v4 = [v2 stringWithFormat:@"^%@\\d*/", @"p:"];
  v8 = 0;
  v5 = [v1 regularExpressionWithPattern:v4 options:24 error:&v8];

  v6 = [v5 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), &stru_1F04268F8}];

  return v6;
}

void CKEnforceAveragePerformanceOfBlock(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_28:
    CKEnforceAveragePerformanceOfBlock_cold_2();
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  CKEnforceAveragePerformanceOfBlock_cold_1();
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_29:
  CKEnforceAveragePerformanceOfBlock_cold_3();
LABEL_4:
  v12 = [MEMORY[0x1E69A60F0] sharedInstance];
  v13 = [v12 isInternalInstall];

  if (v13)
  {
    v14 = objc_getAssociatedObject(v9, &__CKEnforceAveragePerformanceOfBlock_NumberOfSamplesCollectedKey);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 longValue];
    }

    else
    {
      v16 = 0;
    }

    if (v16 >= a1)
    {
      v17 = 0;
    }

    else
    {
      v17 = mach_absolute_time();
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v10[2](v10);
  v18 = v13 ^ 1;
  if (v16 >= a1)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = mach_absolute_time();
    v20 = objc_getAssociatedObject(v9, &__CKEnforceAveragePerformanceOfBlock_TimeArrayKey);
    v21 = [v20 pointerValue];

    if (!v21)
    {
      v21 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
      v22 = [MEMORY[0x1E696B098] valueWithPointer:v21];
      objc_setAssociatedObject(v9, &__CKEnforceAveragePerformanceOfBlock_TimeArrayKey, v22, 1);
    }

    info = 0;
    mach_timebase_info(&info);
    v21[v16] = (((v19 - v17) * info.numer) / info.denom) / 1000000.0;
    v23 = v16 + 1;
    if (v16 + 1 == a1)
    {
      v24 = 0.0;
      if ((v16 & 0x8000000000000000) == 0)
      {
        v25 = a1;
        do
        {
          v26 = *v21++;
          v24 = v24 + v26;
          --v25;
        }

        while (v25);
      }

      if ((v24 / a1) > a5)
      {
        v11[2](v11);
      }

      v23 = 0;
    }

    v27 = [MEMORY[0x1E696AD98] numberWithLong:v23];
    objc_setAssociatedObject(v9, &__CKEnforceAveragePerformanceOfBlock_NumberOfSamplesCollectedKey, v27, 1);
  }
}

id CKIMDMessageRecordBulkCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, void *a34, void *a35, uint64_t a36, void *a37)
{
  result = IMDMessageRecordBulkCopy();
  if (a5)
  {
    result = 0;
    *a5 = result;
  }

  if (a10)
  {
    result = 0;
    *a10 = result;
  }

  if (a11)
  {
    result = 0;
    *a11 = result;
  }

  if (a12)
  {
    result = 0;
    *a12 = result;
  }

  if (a13)
  {
    result = 0;
    *a13 = result;
  }

  if (a14)
  {
    result = 0;
    *a14 = result;
  }

  if (a15)
  {
    result = 0;
    *a15 = result;
  }

  if (a17)
  {
    result = 0;
    *a17 = result;
  }

  if (a22)
  {
    result = 0;
    *a22 = result;
  }

  if (a24)
  {
    result = 0;
    *a24 = result;
  }

  if (a30)
  {
    result = 0;
    *a30 = result;
  }

  if (a33)
  {
    result = 0;
    *a33 = result;
  }

  if (a34)
  {
    result = 0;
    *a34 = result;
  }

  if (a35)
  {
    result = 0;
    *a35 = result;
  }

  if (a37)
  {
    result = 0;
    *a37 = result;
  }

  return result;
}

uint64_t CKIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id CKFormattedPhoneNumberFromNumber(void *a1)
{
  v1 = a1;
  if (!sCountryCode)
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [v2 objectForKey:*MEMORY[0x1E695D978]];
    v4 = [v3 lowercaseString];
    v5 = sCountryCode;
    sCountryCode = v4;
  }

  v6 = CFPhoneNumberCreate();
  if (v6)
  {
    v7 = v6;
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
    }

    CFRelease(v7);
  }

  else
  {
    String = 0;
  }

  return String;
}

id CKLocalizedShortNameForContext(void *a1)
{
  v1 = MEMORY[0x1E696AFB0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 labelID];

  v5 = [v3 initWithUUIDString:v4];
  v6 = [MEMORY[0x1E69D8A58] sharedInstance];
  v7 = [v6 providerManager];

  v8 = [v7 telephonyProvider];
  v9 = [v8 senderIdentityForAccountUUID:v5];
  v10 = [v9 localizedShortName];

  return v10;
}

uint64_t _CKIMessageEnabledOrTryingToLogIn()
{
  v13 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:0 simID:0])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69A5A80] sharedInstance];
  v2 = [MEMORY[0x1E69A5C90] iMessageService];
  v3 = [v1 accountsForService:v2];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v3;
  v0 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v0)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v0; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v8 + 1) + 8 * i) loginStatus] == 3)
        {
          v0 = 1;
          goto LABEL_13;
        }
      }

      v0 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v0)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v0;
}

uint64_t _CKIMessageFailedAccountsAreIrreparable()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [MEMORY[0x1E69A5C90] iMessageService];
  v2 = [v0 accountsForService:v1];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 registrationStatus] == -1)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = [v10 registrationFailureReason];
              *buf = 138412546;
              v21 = v10;
              v22 = 1024;
              v23 = v12;
              _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Found account with registration failure: %@, reason: %d", buf, 0x12u);
            }
          }

          if ([v10 registrationFailureReason] != 26)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = v15;
                v21 = v10;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, " ==> Account is reparable: %@", buf, 0xCu);
              }
            }

            v6 = 1;
          }

          v7 = 1;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
    LOBYTE(v4) = v7 & (v6 ^ 1);
  }

  return v4 & 1;
}

uint64_t _CKCalculateIsUnexpectedlyLoggedOutValue()
{
  v13 = *MEMORY[0x1E69E9840];
  if (_CKIMessageEnabledOrTryingToLogIn())
  {
    result = IMGetUserIgnoreLogoutIntent();
    if (!result)
    {
      return result;
    }

    IMSetUserIgnoreLogoutIntent();
    return 0;
  }

  if (IMGetUserLoginIntent() == 2 || (IMGetUserIgnoreLogoutIntent() & 1) != 0 || (_CKIMessageFailedAccountsAreIrreparable() & 1) != 0)
  {
    return 0;
  }

  v1 = IMGetUserLoginIntent();
  v2 = [MEMORY[0x1E69A5CA0] iMessageEnabledForSenderLastAddressedHandle:0 simID:0];
  HasMultipleSubscriptionsWithAtLeastOneActive = IMSharedHelperDeviceHasMultipleSubscriptionsWithAtLeastOneActive();
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *v12 = 67109634;
      *&v12[4] = v1;
      *&v12[8] = 2112;
      *&v12[10] = v6;
      if (HasMultipleSubscriptionsWithAtLeastOneActive)
      {
        v5 = @"YES";
      }

      *&v12[18] = 2112;
      *&v12[20] = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Setting isUnexpectedlyLoggedOut to YES, has intent: %d iMessage enabled: %@ multiple subscriptions with at least one active: %@", v12, 0x1Cu);
    }
  }

  v7 = [MEMORY[0x1E69A5A80] sharedInstance];
  v8 = [MEMORY[0x1E69A5C90] iMessageService];
  v9 = [v7 accountsForService:v8];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 count];
      *v12 = 134217984;
      *&v12[4] = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Found %llu accounts", v12, 0xCu);
    }
  }

  [v9 enumerateObjectsUsingBlock:&__block_literal_global_2152];

  return 1;
}

void _CKUnexpectedlyLoggedOutHandleDependentValueChanged()
{
  IsUnexpectedlyLoggedOutValue = _CKCalculateIsUnexpectedlyLoggedOutValue();
  if (__CKIsUnexpectedlyLoggedOut != IsUnexpectedlyLoggedOutValue)
  {
    __CKIsUnexpectedlyLoggedOut = IsUnexpectedlyLoggedOutValue;
    ck_dispatch_main_after_seconds(&__block_literal_global_1932, 0.0);
    sBlackholeEnabled = -1;
  }
}

uint64_t CKIsUnexpectedlyLoggedOut()
{
  if (CKIsUnexpectedlyLoggedOut_onceToken != -1)
  {
    CKIsUnexpectedlyLoggedOut_cold_1();
  }

  if (__CKIsUnexpectedlyLoggedOut)
  {
    return 1;
  }

  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"AlwaysShowLoggedOutBanner"];

  return v2;
}

uint64_t __CKIsUnexpectedlyLoggedOut_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKUnexpectedlyLoggedOutHandleDependentValueChanged, *MEMORY[0x1E69A7DE8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKUnexpectedlyLoggedOutHandleDependentValueChanged, *MEMORY[0x1E69A5688], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKUnexpectedlyLoggedOutHandleDependentValueChanged, *MEMORY[0x1E69A5680], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKUnexpectedlyLoggedOutHandleDependentValueChanged, *MEMORY[0x1E69DDBC0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  result = _CKCalculateIsUnexpectedlyLoggedOutValue();
  __CKIsUnexpectedlyLoggedOut = result;
  return result;
}

uint64_t _CKCalculateIsAppleIDNotUpdatedValue()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 integerForKey:@"userRegistrationKTFailure"];

  v2 = IMGetUserRegistrationFailureIntent();
  result = IMGetUserIgnoreFailureUpdateAppleIDIntent();
  if (v2 == 2 || v1 == 2)
  {
    return result ^ 1;
  }

  if (result)
  {
    IMSetUserIgnoreFailureUpdateAppleIDIntent();
    return 0;
  }

  return result;
}

uint64_t _CKCalculateIsWaitingForCloudValue()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 integerForKey:@"userRegistrationKTFailure"];

  v2 = IMGetUserRegistrationFailureIntent();
  result = IMGetUserIgnoreFailureWaitingForCloudIntent();
  if (v2 == 1 || v1 == 1)
  {
    return result ^ 1;
  }

  if (result)
  {
    IMSetUserIgnoreFailureWaitingForCloudIntent();
    return 0;
  }

  return result;
}

void _CKRegistrationFailureHandleDependentValueChanged()
{
  IsWaitingForCloudValue = _CKCalculateIsWaitingForCloudValue();
  IsAppleIDNotUpdatedValue = _CKCalculateIsAppleIDNotUpdatedValue();
  if (__CKIsWaitingForCloud != IsWaitingForCloudValue || __CKIsAppleIDNotUpdated != IsAppleIDNotUpdatedValue)
  {
    __CKIsWaitingForCloud = IsWaitingForCloudValue;
    __CKIsAppleIDNotUpdated = IsAppleIDNotUpdatedValue;
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _CKRegistrationFailureHandleDependentValueChanged_cold_1();
    }

    ck_dispatch_main_after_seconds(&__block_literal_global_1940, 0.0);
    sBlackholeEnabled = -1;
  }
}

uint64_t __CKIsAppleIDNotUpdated_block_invoke()
{
  result = _CKCalculateIsAppleIDNotUpdatedValue();
  __CKIsAppleIDNotUpdated = result;
  return result;
}

uint64_t __CKIsWaitingForCloud_block_invoke()
{
  result = _CKCalculateIsWaitingForCloudValue();
  __CKIsWaitingForCloud = result;
  return result;
}

id CKMyAccountName()
{
  v0 = [MEMORY[0x1E69A5A80] sharedInstance];
  v1 = [MEMORY[0x1E69A5C90] iMessageService];
  v2 = [v0 bestAccountForService:v1];
  v3 = [v2 strippedLogin];

  return v3;
}

id CKMessagesPreferencesURL()
{
  v0 = MEMORY[0x193AF5EC0](@"PSMessagesSettingsDetail", @"Preferences");
  if (v0)
  {
    v0 = [v0 preferencesURL];
  }

  return v0;
}

uint64_t CKSupportsAdvancedHaptics()
{
  if (CKSupportsAdvancedHaptics_onceToken != -1)
  {
    CKSupportsAdvancedHaptics_cold_1();
  }

  return CKSupportsAdvancedHaptics_supportsAdvancedHaptics;
}

uint64_t __CKSupportsAdvancedHaptics_block_invoke()
{
  result = MGGetBoolAnswer();
  CKSupportsAdvancedHaptics_supportsAdvancedHaptics = result;
  return result;
}

_CKWeakWrapper *CKWeakWrapper(void *a1)
{
  v1 = a1;
  v2 = [[_CKWeakWrapper alloc] initWithObject:v1];

  return v2;
}

void _CKSetBusinessInfoForMutableContact(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 brandSquareLogoImageData];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [v11 setImageData:v8];
  v9 = [v5 brand];
  v10 = [v9 name];

  if (v10)
  {
    [v11 setGivenName:v10];
  }

LABEL_7:
}

uint64_t _ckmaxEagerUploadFileSize()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"madrid-max-eager-upload-file-size"];
  v2 = v1;
  if (v1 && [v1 unsignedIntegerValue])
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 5242880;
  }

  return v3;
}

BOOL CKIsScreenLocked()
{
  if (CKIsScreenLocked__pred_MKBGetDeviceLockStateMobileKeyBag != -1)
  {
    CKIsScreenLocked_cold_1();
  }

  return CKIsScreenLocked__MKBGetDeviceLockState(0) - 1 < 2;
}

void *__CKIsScreenLocked_block_invoke()
{
  result = MEMORY[0x193AF5ED0]("MKBGetDeviceLockState", @"MobileKeyBag");
  CKIsScreenLocked__MKBGetDeviceLockState = result;
  return result;
}

id CKSquareImageDataFromImageData(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DCAB8] imageWithData:a1];
  v2 = v1;
  if (v1)
  {
    [v1 size];
    v4 = v3;
    [v2 size];
    v6 = fmin(v4, v5);
    [v2 size];
    v8 = v6 * -0.5 + v7 * 0.5;
    [v2 size];
    v10 = v6 * -0.5 + v9 * 0.5;
    v11 = [v2 CGImage];
    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v6;
    v16.size.height = v6;
    v12 = CGImageCreateWithImageInRect(v11, v16);
    v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12];

    v2 = CKUIImageJPEGRepresentationWithHardwareAcceleration(v13);
  }

  return v2;
}

id CKUIImageJPEGRepresentationWithHardwareAcceleration(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v2 startTimingForKey:@"CKUIImageRepresentation-JPEG"];
  v3 = _UIImageJPEGRepresentation();
  [v2 stopTimingForKey:@"CKUIImageRepresentation-JPEG"];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "JPEG snapshot timing: %@", &v6, 0xCu);
    }
  }

  return v3;
}

id CKUIImagePNGRepresentation(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v2 startTimingForKey:@"CKUIImageRepresentation-PNG"];
  v3 = UIImagePNGRepresentation(v1);
  [v2 stopTimingForKey:@"CKUIImageRepresentation-PNG"];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "PNG snapshot timing: %@", &v6, 0xCu);
    }
  }

  return v3;
}

uint64_t CKIsSendMenuEnabled()
{
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v1 = [v0 isSendMenuEnabled];

  return v1;
}

void CKMigrateTextInputIdentifiersIfNeeded()
{
  v34 = *MEMORY[0x1E69E9840];
  if (CKIsRunningInMessages_onceToken != -1)
  {
    CKPrewarmLaunch_cold_1();
  }

  if (sIsRunningInMessages)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.MobileSMS"];
  }

  v1 = v0;
  v20 = v0;
  if ([v0 BOOLForKey:@"CKTextInputIdentifiersMigrated"])
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "text keys already migrated, nothing left to do", buf, 2u);
      }
    }
  }

  else
  {
    [v1 setBool:1 forKey:@"CKTextInputIdentifiersMigrated"];
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v19 = *MEMORY[0x1E69DE690];
    v24 = [v3 initWithSuiteName:?];
    v21 = [MEMORY[0x1E695DFA8] set];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [v24 dictionaryRepresentation];
    obj = [v4 allKeys];

    v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v5)
    {
      v6 = *v26;
      v7 = *MEMORY[0x1E69DE6B0];
      v22 = *MEMORY[0x1E69A5A70];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          if ([v9 hasPrefix:v7])
          {
            v10 = [v7 stringByAppendingString:v22];
            v11 = [v9 hasPrefix:v10];

            if ((v11 & 1) == 0)
            {
              v12 = [v24 valueForKey:v9];
              v13 = [v9 substringFromIndex:{objc_msgSend(v7, "length")}];
              v14 = IMEncryptedIdentifier();
              if (v14)
              {
                v15 = [v7 stringByAppendingString:v14];
                if (IMOSLoggingEnabled())
                {
                  v16 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v30 = v9;
                    v31 = 2112;
                    v32 = v15;
                    _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "migrating text input context id: %@ to: %@", buf, 0x16u);
                  }
                }

                [v24 setValue:v12 forKey:v15];
                [v24 removeObjectForKey:v9];
                [v21 addObject:v15];
                [v21 addObject:v9];
              }

              else
              {
                v15 = IMLogHandleForCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v30 = v9;
                  _os_log_error_impl(&dword_19020E000, v15, OS_LOG_TYPE_ERROR, "failed to migrate text input context id: %@", buf, 0xCu);
                }
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v5);
    }

    v17 = objc_alloc_init(MEMORY[0x193AF5EC0](@"NPSManager", @"NanoPreferencesSync"));
    [v17 synchronizeUserDefaultsDomain:v19 keys:v21];
    v18 = [MEMORY[0x1E695DFD8] setWithObject:@"CKTextInputIdentifiersMigrated"];
    [v17 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v18];
  }
}

uint64_t CKActivePairedWatchSupportsEncryptedKeys()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x193AF5EC0](@"PDRRegistry", @"PairedDeviceRegistry");
  v1 = [v0 sharedInstance];
  v2 = [v0 activeDeviceSelectorBlock];
  [v1 getDevicesMatching:v2];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = v2;
    v19 = v1;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v20 + 1) + 8 * i) systemBuildVersion];
        v9 = [v8 componentsSeparatedByString:@"."];
        if ([v9 count] >= 2)
        {
          v10 = [v9 objectAtIndexedSubscript:0];
          v11 = [v10 integerValue];

          v12 = [v9 objectAtIndexedSubscript:1];
          v13 = [v12 integerValue];

          v14 = v11 == 6;
          if (v13 <= 0)
          {
            v14 = 0;
          }

          if (v11 > 6 || v14)
          {

            v16 = 1;
            goto LABEL_17;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
    v16 = 0;
LABEL_17:
    v2 = v18;
    v1 = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

BOOL CKHasAnyWatchPaired()
{
  v0 = [MEMORY[0x193AF5EC0](@"PDRRegistry" @"PairedDeviceRegistry")];
  v1 = [v0 devices];
  v2 = [v1 paired];
  v3 = [v2 all];

  v4 = [v3 count] != 0;
  return v4;
}

__CFString *IMConversationListFilterModeStringValue(unint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernFilteringEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x1E69A8080] filterModeStringValue:a1];
  }

  else if (a1 < 0x10 || ([MEMORY[0x1E69A8210] smsFilterParamForFilterMode:a1], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "filterModeStringValue"), v4 = objc_claimAutoreleasedReturnValue(), v5, !v4))
  {
    if (a1 > 0x1B)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_1E72EF6C8[a1];
    }
  }

  return v4;
}

void __CKMessageUnknownSenderNotificationDisabled_block_invoke()
{
  sSMSDefaultAllowUnknownSendersDisabled = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationUnknownSenders", 0) != 0;
  if ((CKIsUnexpectedlyLoggedOutChanged_block_invoke_4_isListening & 1) == 0)
  {
    CKIsUnexpectedlyLoggedOutChanged_block_invoke_4_isListening = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKMessageUnknownSenderNotificationDisabledChanged, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationUnknownSenders.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

const __CFString *_CKMessageUnknownSenderNotificationDisabledChanged()
{
  result = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationUnknownSenders", 0);
  sSMSDefaultAllowUnknownSendersDisabled = result != 0;
  return result;
}

void __CKMessageTransactionsNotificationDisabled_block_invoke()
{
  sSMSDefaultAllowTransactionsDisabled = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationTransactions", 0) != 0;
  if ((CKIsUnexpectedlyLoggedOutChanged_block_invoke_5_isListening & 1) == 0)
  {
    CKIsUnexpectedlyLoggedOutChanged_block_invoke_5_isListening = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKMessageTransactionsNotificationDisabledChanged, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationTransactions.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

const __CFString *_CKMessageTransactionsNotificationDisabledChanged()
{
  result = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationTransactions", 0);
  sSMSDefaultAllowTransactionsDisabled = result != 0;
  return result;
}

void __CKMessagePromotionsNotificationDisabled_block_invoke()
{
  sSMSDefaultAllowPromotionsDisabled = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationPromotions", 0) != 0;
  if ((CKIsUnexpectedlyLoggedOutChanged_block_invoke_6_isListening & 1) == 0)
  {
    CKIsUnexpectedlyLoggedOutChanged_block_invoke_6_isListening = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKMessagePromotionsNotificationDisabledChanged, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationPromotions.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

const __CFString *_CKMessagePromotionsNotificationDisabledChanged()
{
  result = _CKLoadBooleanPrefWithNameAndDefaultValue(@"IncomingMessageAlertFiltrationPromotions", 0);
  sSMSDefaultAllowPromotionsDisabled = result != 0;
  return result;
}

uint64_t CKIsStickersStripEnabled()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  if (result)
  {

    return IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  return result;
}

id CKBlockedIndicatorAttachment()
{
  if (CKBlockedIndicatorAttachment_onceToken != -1)
  {
    CKBlockedIndicatorAttachment_cold_1();
  }

  v1 = CKBlockedIndicatorAttachment_cachedTextAttachment;

  return v1;
}

void __CKBlockedIndicatorAttachment_block_invoke()
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 blockedIndicatorImage];

  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithFont:v4 scale:1];
  v8 = [v1 imageByApplyingSymbolConfiguration:v5];

  v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v7 = CKBlockedIndicatorAttachment_cachedTextAttachment;
  CKBlockedIndicatorAttachment_cachedTextAttachment = v6;

  [CKBlockedIndicatorAttachment_cachedTextAttachment setImage:v8];
}

uint64_t CKIsGenmojiCreationAvailable()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIGenmojiCreationClass_softClass;
  v7 = getTUIGenmojiCreationClass_softClass;
  if (!getTUIGenmojiCreationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIGenmojiCreationClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getTUIGenmojiCreationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 isGenmojiCreationAvailable];
}

void sub_1903CF1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *CKStringGetOrCreateCString(uint64_t a1, CFStringRef theString, char *buffer, CFIndex *a4)
{
  v4 = buffer;
  v12 = 0;
  if (a4)
  {
    usedBufLen = a4;
  }

  else
  {
    usedBufLen = &v12;
  }

  if (buffer && *usedBufLen && CFStringGetCString(theString, buffer, *usedBufLen, 0x8000100u))
  {
    *usedBufLen = strlen(v4);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, 0, 0, usedBufLen);
    v9 = MEMORY[0x193AF4440](a1, *usedBufLen + 1, 0x100004077774924, 0);
    if (v9)
    {
      v10 = v9;
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(theString, v14, 0x8000100u, 0, 0, v9, *usedBufLen, usedBufLen);
      v10[*usedBufLen] = 0;
      return v10;
    }

    else
    {
      *usedBufLen = 0;
      if (v4)
      {
        *v4 = 0;
      }
    }
  }

  return v4;
}

Class __getTUIGenmojiCreationClass_block_invoke(uint64_t a1)
{
  if (!TextInputUILibraryCore_frameworkLibrary)
  {
    TextInputUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("TUIGenmojiCreation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUIGenmojiCreationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1903DC050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1903DC530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1903DC914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1903DF198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1903DF3E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1903DF2B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1903EAF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1903F282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getFMUILocationDetailViewControllerClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  result = objc_getClass("FMUILocationDetailViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMUILocationDetailViewControllerClass_block_invoke_cold_1();
  }

  getFMUILocationDetailViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void FindMyUICoreLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary_1)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __FindMyUICoreLibraryCore_block_invoke_1;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E72EFB50;
    v2 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!FindMyUICoreLibraryCore_frameworkLibrary_1)
  {
    FindMyUICoreLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __FindMyUICoreLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  result = objc_getClass("FMUILocationDetailViewControllerViewOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_cold_1();
  }

  getFMUILocationDetailViewControllerViewOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1903F40E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1903F4C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 136));
  objc_destroyWeak((v34 - 128));
  _Unwind_Resume(a1);
}

void sub_1903F7358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKAttachmentFallbackFilename(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a1;
  v6 = [v4 stringWithFormat:@"%@_%04d", v5, arc4random() % 0x2710];

  if ([v3 length])
  {
    v7 = [v6 stringByAppendingPathExtension:v3];

    v6 = v7;
  }

  return v6;
}

uint64_t CKIsAttachmentFallbackFilename(void *a1)
{
  v1 = a1;
  IMAttachmentFileNameAndExtension();
  v2 = 0;
  v3 = [v2 rangeOfString:@"_"];
  v5 = v3 + v4;
  if ([v2 length] - (v3 + v4) != 4)
  {
    goto LABEL_6;
  }

  if (CKIsAttachmentFallbackFilename_once != -1)
  {
    CKIsAttachmentFallbackFilename_cold_1();
  }

  [v2 __ck_rangeOfSequenceOfCharactersFromSet:CKIsAttachmentFallbackFilename_asciiDigits options:0 range:{v5, 4}];
  if (v6 == 4)
  {
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [v7 classForFilename:v1];

    v9 = [v2 substringToIndex:v3];
    v10 = [v8 fallbackFilenamePrefix];
    v11 = [v10 isEqualToString:v9];
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

void __CKIsAttachmentFallbackFilename_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];
  v1 = CKIsAttachmentFallbackFilename_asciiDigits;
  CKIsAttachmentFallbackFilename_asciiDigits = v0;
}

char *CKAttachmentSummaryForOneMediaObject(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  +[CKMediaObject mediaClasses];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_isKindOfClass())
        {
          v3 = [v1 attachmentSummary:{1, v7}];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void sub_1903FCA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1903FFF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190400530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v31 - 144));
  _Unwind_Resume(a1);
}

void sub_190404EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19040507C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904052EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_190406924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190406C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id CKSeparatedTextForTextInView(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [v5 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __CKSeparatedTextForTextInView_block_invoke;
  v16[3] = &unk_1E72EFF88;
  v10 = v7;
  v17 = v10;
  v18 = v5;
  v19 = v6;
  v20 = a2;
  v11 = v6;
  v12 = v5;
  [v12 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v16}];
  v13 = v19;
  v14 = v10;

  return v10;
}

void sub_19040AB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CKSeparatedTextForTextInView_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
  [v7 appendAttributedString:v8];

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = [v9 _isSystemAttachment:v33];
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = [*(a1 + 40) string];
  v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v14 = [v12 rangeOfCharacterFromSet:v13 options:12 range:{a3, a4}];

  v15 = a3 + a4;
  v16 = (a3 + a4);
  v17 = v16 < [*(a1 + 40) length] && v14 == 0x7FFFFFFFFFFFFFFFLL;
  if (v17 && (v10 & 1) == 0 && (isKindOfClass & 1) == 0)
  {
    v18 = *MEMORY[0x1E69DB5F8];
    v19 = [*(a1 + 40) attribute:*MEMORY[0x1E69DB5F8] atIndex:v15 effectiveRange:0];
    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = [v20 _isSystemAttachment:v19];
    }

    else
    {
      v21 = 0;
    }

    objc_opt_class();
    v22 = objc_opt_isKindOfClass();
    v23 = [*(a1 + 40) string];
    v24 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v25 = [v23 rangeOfCharacterFromSet:v24 options:8 range:{v15, 1}];

    if (v25 == 0x7FFFFFFFFFFFFFFFLL && (v21 & 1) == 0 && (v22 & 1) == 0)
    {
      v26 = [*(a1 + 32) attributesAtIndex:objc_msgSend(*(a1 + 32) effectiveRange:{"length") - 1, 0}];
      v27 = [v26 mutableCopy];

      [v27 removeObjectForKey:@"CKFileTransferGUIDAttributeName"];
      [v27 removeObjectForKey:v18];
      v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v27];
      [*(a1 + 32) appendAttributedString:v28];
      v29 = *(a1 + 56);
      if (v29)
      {
        v30 = *v29;
        if (v16 <= *v29 || (v31 = v16 - v30, v16 >= v30) && (v32 = v29[1], ++v29, v30 = v32, v31 < v32))
        {
          *v29 = v30 + 1;
        }
      }
    }
  }
}

void sub_19040D2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 description];
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Exception creating weak ref for MBManager: %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x19040D2ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_19040F27C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19040F1ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_19040F470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CKWaveformPowerLevelsForFileURL(void *a1, void *a2, unint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (CKWaveformPowerLevelsForFileURL__pred_CMTimeGetSecondsCoreMedia != -1)
  {
    v55 = v5;
    CKWaveformPowerLevelsForFileURL_cold_1();
    v5 = v55;
  }

  if (CKWaveformPowerLevelsForFileURL__pred_CMAudioFormatDescriptionGetStreamBasicDescriptionCoreMedia != -1)
  {
    v56 = v5;
    CKWaveformPowerLevelsForFileURL_cold_2();
    v5 = v56;
  }

  if (CKWaveformPowerLevelsForFileURL__pred_CMSampleBufferGetFormatDescriptionCoreMedia != -1)
  {
    v57 = v5;
    CKWaveformPowerLevelsForFileURL_cold_3();
    v5 = v57;
  }

  if (CKWaveformPowerLevelsForFileURL__pred_CMSampleBufferGetAudioBufferListWithRetainedBlockBufferCoreMedia != -1)
  {
    v58 = v5;
    CKWaveformPowerLevelsForFileURL_cold_4();
    v5 = v58;
  }

  if (CKWaveformPowerLevelsForFileURL__pred_CMSampleBufferGetPresentationTimeStampCoreMedia != -1)
  {
    v59 = v5;
    CKWaveformPowerLevelsForFileURL_cold_5();
    v5 = v59;
  }

  if (CKWaveformPowerLevelsForFileURL__pred_CMSampleBufferGetDurationCoreMedia != -1)
  {
    v60 = v5;
    CKWaveformPowerLevelsForFileURL_cold_6();
    v5 = v60;
  }

  v65 = v5;
  v6 = CKAVURLAssetForURLWithWriteAccess(v5);
  v68 = v6;
  v7 = CKWaveformPowerLevelsForFileURL__CMTimeGetSeconds;
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    *buf = 0uLL;
    v73 = 0;
  }

  v8 = v7(buf);
  v10 = v9;
  v64 = &v61;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((8 * a3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, 8 * a3);
  bzero(a2, 8 * a3);
  bzero(v11, 8 * a3);
  v67 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v68 error:0];
  [v67 setPreparesMediaDataForRealTimeConsumption:1];
  v66 = [v68 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  if ([v66 count])
  {
    v62 = [v66 objectAtIndex:0];
    v12 = MEMORY[0x1E6987EA8];
    v70 = *MEMORY[0x1E69582B0];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1819304813];
    v71 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v15 = [v12 assetReaderTrackOutputWithTrack:v62 outputSettings:v14];

    [v15 setAlwaysCopiesSampleData:0];
    [v67 addOutput:v15];
    [v67 startReading];
    v16 = 0;
    v17 = [v15 copyNextSampleBuffer];
    if (v17)
    {
      v19 = v10 / a3;
      v20 = (a3 - 1);
      *&v18 = 67109376;
      v63 = v18;
      do
      {
        v21 = CKWaveformPowerLevelsForFileURL__CMAudioFormatDescriptionGetStreamBasicDescription;
        FormatDescription = CKWaveformPowerLevelsForFileURL__CMSampleBufferGetFormatDescription(v17);
        v23 = v21(FormatDescription);
        v24 = CKWaveformPowerLevelsForFileURL__CMTimeGetSeconds;
        CKWaveformPowerLevelsForFileURL__CMSampleBufferGetPresentationTimeStamp(buf, v17);
        v25 = v24(buf);
        v26 = CKWaveformPowerLevelsForFileURL__CMTimeGetSeconds;
        CKWaveformPowerLevelsForFileURL__CMSampleBufferGetDuration(buf, v17);
        v27 = v26(buf);
        v28 = *(v23 + 32);
        if (v28 == 16)
        {
          v30 = 0;
          v29 = (*(v23 + 12) >> 2) & 1;
          if (v29)
          {
            goto LABEL_33;
          }
        }

        else if (v28 == 32)
        {
          v29 = 0;
          v30 = *(v23 + 12) & 1;
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        if (v30)
        {
LABEL_33:
          *buf = 0uLL;
          v73 = 0;
          v69 = 0;
          CKWaveformPowerLevelsForFileURL__CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v17, 0, buf, 24, 0, 0, 0, &v69);
          v33 = LODWORD(buf[0]);
          if (LODWORD(buf[0]))
          {
            v34 = 0;
            v35 = *(v23 + 24);
            do
            {
              v36 = &buf[2 * v34 + 1];
              v37 = *(v36 + 1);
              if (v35 <= v37)
              {
                v38 = 0;
                v39 = v36[1];
                v40 = v37 / v35;
                v41 = *(v23 + 28);
                v42 = 0.0;
                do
                {
                  if (v41)
                  {
                    v43 = (v25 + v42 / (v40 - 1) * v27) / v19;
                    if (v43 >= v20)
                    {
                      v43 = v20;
                    }

                    v44 = v43;
                    v45 = *(a2 + v43);
                    v46 = v41;
                    v47 = v38;
                    v48 = *&v11[8 * v44];
                    do
                    {
                      if (v29)
                      {
                        v49 = *(v39 + 2 * v47);
                      }

                      else
                      {
                        v49 = 0.0;
                        if (v30)
                        {
                          v49 = fminf(*(v39 + 4 * v47) * 32767.0, 32767.0);
                          if (v49 < -32768.0)
                          {
                            v49 = -32768.0;
                          }
                        }
                      }

                      v50 = v49 * v49 + v45 * v45 * v48++;
                      v45 = sqrt(v50 / v48);
                      ++v47;
                      --v46;
                    }

                    while (v46);
                    v51 = (v41 - 1) + 1 + *&v11[8 * v44];
                    *(a2 + v44) = v45;
                    *&v11[8 * v44] = v51;
                    v16 = 1;
                  }

                  v42 = v42 + 1.0;
                  ++v38;
                }

                while (v38 < v40);
              }

              ++v34;
            }

            while (v34 != v33);
          }

          CFRelease(v69);
          goto LABEL_51;
        }

        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(v23 + 12);
            buf[0] = __PAIR64__(*(v23 + 8), v63);
            LOWORD(buf[1]) = 1024;
            *(&buf[1] + 2) = v32;
            _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_DEBUG, "Audio file is in unsupported format to generate waveform data. formatID %d, formatFlags %d", buf, 0xEu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog();
        }

LABEL_51:
        CFRelease(v17);
        v17 = [v15 copyNextSampleBuffer];
      }

      while (v17);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v52 = v65;
      CKLogCStringForType(2);
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = v52;
        _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_DEBUG, "%@ has no tracks.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v16 = 0;
  }

  return v16 & 1;
}

id CKWaveformWithPowerLevels(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 waveformHeight];
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 waveformPowerLevelWidth];

  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 waveformPowerLevelWidthIncrement];

  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 minimumWaveformHeight];
  v15 = v14;

  v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2 * v12, v8}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __CKWaveformWithPowerLevels_block_invoke;
  v20[3] = &unk_1E72F00D8;
  v21 = v5;
  v22 = a2;
  v23 = a1;
  v24 = v8;
  v25 = v15;
  v26 = v12;
  v27 = v10;
  v17 = v5;
  v18 = [v16 imageWithActions:v20];

  return v18;
}