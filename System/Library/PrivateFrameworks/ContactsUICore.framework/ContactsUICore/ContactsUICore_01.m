uint64_t sub_1A320051C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A32005AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3200624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32006AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34C9FB0();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A32007DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1A34C9FB0();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C63C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A320090C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34C9FB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A32009B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A34C9FB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s14ContactsUICore19MonogramRecipe_PathV7CommandV8TypeEnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14ContactsUICore19MonogramRecipe_PathV7CommandV8TypeEnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A3200AAC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3200AC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1A3200AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1A34C9FB0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3200B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1A34C9FB0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3200C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1A34C9FB0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3200C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1A34C9FB0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A3200CF8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1A34C9FB0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C18);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1A3200E7C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1A34C9FB0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C18);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C10);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A3201008()
{

  return swift_deallocObject();
}

uint64_t sub_1A3201040()
{
  v1 = *(type metadata accessor for ActionSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_1A34C9780();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A320114C()
{
  v1 = type metadata accessor for ContactCardActionRow();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[6];
  v5 = sub_1A34C93B0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[12]))
  {
  }

  v7 = v3 + v1[19];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  MEMORY[0x1A58F1130](v3 + v1[22]);

  return swift_deallocObject();
}

uint64_t sub_1A32013B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EB0EDBD0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A320140C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EB0EDBD0;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A3201470()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A32014B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C66F8);
  sub_1A32D76B4();
  sub_1A32D7850();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3201578@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A32015BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_isObservationEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A3201614(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_isObservationEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A3201670()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A32016A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A32016F0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1A3201738()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A32017C8()
{
  v1 = type metadata accessor for AvatarView.LayerBase(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A31F3C20();
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A32E78A0(*(v2 + v1[6]), *(v2 + v1[6] + 8), *(v2 + v1[6] + 16));
  sub_1A32141EC(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A320191C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3201954()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A320198C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3201A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 4)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3201B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1A3201C40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1A32EEDA8(v1, v2);
}

uint64_t sub_1A3201CFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3201D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3201D7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3201DD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3201E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34CA5D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 3) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 3);
  }

  else
  {
    return 0;
  }
}

double sub_1A3201ED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A34CA5D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 8 * -a2;
    result = 0.0;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
  }

  return result;
}

uint64_t sub_1A3201FAC()
{
  v1 = (type metadata accessor for AvatarViewLayer.RenderSpec(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_1A34CA5D0();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v4 + v1[7];
  sub_1A32FC8A4(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80));
  sub_1A31ECC9C(*(v4 + v1[8]), *(v4 + v1[8] + 8));

  sub_1A32FC8A4(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 72), *(v0 + v3 + 80));
  sub_1A31ECC9C(*(v0 + ((v3 + 111) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 111) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3202130()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3202168()
{

  return swift_deallocObject();
}

uint64_t sub_1A32021A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A32021EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CB050();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3202244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CADE0();
  *a1 = result;
  return result;
}

uint64_t sub_1A32022B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3202398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6F58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3202458()
{
  sub_1A34CAC30();
  sub_1A33022A4();
  return swift_getWitnessTable();
}

uint64_t sub_1A3202524@<X0>(void *a1@<X8>)
{
  if (qword_1EB0C48A0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = &type metadata for UpdateContactIntent;
  return result;
}

uint64_t sub_1A3202588()
{
  if (qword_1EB0C48A0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1A32025E0@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202620@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202660@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

__n128 sub_1A32026D8@<Q0>(uint64_t a1@<X8>)
{
  sub_1A34C8DD0();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1A320273C@<D0>(uint64_t a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1A3202784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32027C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202954@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34C8D20();
  *a1 = result;
  return result;
}

uint64_t sub_1A32029C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34C8D20();
  *a1 = result;
  return result;
}

double sub_1A3202B44@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202B84@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202BC4@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202C04@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202C44@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202C84@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3202CC4@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202E04@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB0C7550;
  return result;
}

uint64_t sub_1A3202E50(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB0C7550 = v1;
  return result;
}

uint64_t sub_1A3202EA0@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3202F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
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

uint64_t sub_1A3202FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9780();
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

uint64_t sub_1A32030D8()
{

  return swift_deallocObject();
}

uint64_t sub_1A32032A8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB0C7708;
  return result;
}

uint64_t sub_1A32032F4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB0C7708 = v1;
  return result;
}

uint64_t sub_1A3203344@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3203384@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8DD0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32033C4@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContactAvatarFetchResultEntity(0);
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A320341C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContactAvatarEntity(0);
  result = sub_1A34C8D00();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A3203504@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ContactAvatarEntity(0);
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32035A8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ContactAvatarEntity(0);
  result = sub_1A34C8D00();
  *a1 = v3;
  return result;
}

__n128 sub_1A32037AC@<Q0>(uint64_t a1@<X8>)
{
  sub_1A34C8DD0();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1A3203810@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203850@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203890@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A32038D0@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203910@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203950@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203990@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A32039D0@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203A10@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8DD0();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1A3203A84@<D0>(_OWORD *a1@<X8>)
{
  sub_1A34C8D00();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A3203AC4@<X0>(void *a1@<X8>)
{
  result = sub_1A34C8D00();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

__n128 sub_1A3203B3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3203BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7BE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7C20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7BE0);
  sub_1A31EC194(255, &qword_1EB0C7C08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7BD8);
  sub_1A3284D0C(&qword_1EB0C7BF8, &qword_1EB0C7BD8);
  swift_getOpaqueTypeConformance2();
  sub_1A33305D8();
  swift_getOpaqueTypeConformance2();
  sub_1A3330648();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3203D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3203E0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3203EA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB0C7D48;
  return result;
}

uint64_t sub_1A3203EEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB0C7D48 = v1;
  return result;
}

uint64_t sub_1A3203F50()
{
  type metadata accessor for EditorSheetModifier();
  swift_getWitnessTable();
  sub_1A34CB4F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E70);
  sub_1A34CAC30();
  sub_1A34CA9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E78);
  sub_1A34CAC30();
  sub_1A3284D0C(&qword_1EB0C06A8, &qword_1EB0C7E78);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E80);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8D40);
  sub_1A3284D0C(&unk_1EB0C10F8, &unk_1EB0C8D40);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  sub_1A34CAC30();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A333B40C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A34CAC50();
  sub_1A34CAC30();
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A3284D0C(&qword_1EB0C7E88, &qword_1EB0C7E70);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7E90);
  sub_1A34CAC30();
  swift_getOpaqueTypeConformance2();
  sub_1A3284D0C(&qword_1EB0C7EA0, &qword_1EB0C7E90);
  return swift_getWitnessTable();
}

uint64_t sub_1A3204500()
{
  type metadata accessor for PaletteButtonStyle();
  sub_1A333B668(&qword_1EB0C7EB8, type metadata accessor for PaletteButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A32045A8@<X0>(void *a1@<X8>)
{
  result = sub_1A34CAE40();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32045FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320464C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3204730()
{

  return swift_deallocObject();
}

uint64_t sub_1A32047A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1A3341790(v3);
}

__n128 sub_1A3204814@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1A320485C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  return result;
}

uint64_t sub_1A32048A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3204960(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3204A14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B0);
  sub_1A33442C0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B8);
  sub_1A34CAC30();
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CC8C0();
  type metadata accessor for ContactPosterScrollGeometryObserver(255);
  swift_getWitnessTable();
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  swift_getOpaqueTypeConformance2();
  sub_1A3344320(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1A3204C64()
{

  return swift_deallocObject();
}

uint64_t sub_1A3204CE4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3204D24()
{

  return swift_deallocObject();
}

uint64_t sub_1A3204D5C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3204E58()
{

  return swift_deallocObject();
}

uint64_t sub_1A3204E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3204F24(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34C9FB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3204FD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A34C9FB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3205074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_1A34C9FB0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A32050EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_1A34C9FB0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A32051B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9FB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6800);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1A3205310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A34C9FB0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6800);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67F8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1A3205568()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A32055B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A3205630()
{
  v1 = (type metadata accessor for VisualIdentity(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_1A34C9780();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v3 + v1[9]);
  __swift_destroy_boxed_opaque_existential_0(v3 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_1A3205760()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A32057C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3205804()
{
  sub_1A31ECC9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3205848()
{

  return swift_deallocObject();
}

uint64_t sub_1A3205898()
{

  return swift_deallocObject();
}

uint64_t sub_1A320590C()
{
  v1 = *(v0 + 16);
  v11 = *(v0 + 24);
  v2 = type metadata accessor for VisualIdentitySuggestionSection();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  sub_1A32141EC(*(v3 + 16), *(v3 + 24));
  v4 = v2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB5F0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A336F738(*(v3 + v2[15]), *(v3 + v2[15] + 8));

  v6 = v2[18];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v3 + v6, 1, v1))
  {
    (*(v7 + 8))(v3 + v6, v1);
  }

  v8 = v2[19];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v3 + v8, 1, v11))
  {
    (*(v9 + 8))(v3 + v8, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3205B9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3205BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for VisualIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3205C78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for VisualIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3205D18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8560);
  sub_1A336F2D8();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  sub_1A3284D0C(&qword_1EB0C10D8, &qword_1EB0C8560);
  sub_1A34CA8E0();
  sub_1A34CB970();
  sub_1A34CAC30();
  sub_1A34CD890();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8568);
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CCD30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8570);
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CB3F0();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CC8A0();
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CD890();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A32060A8()
{
  v1 = (type metadata accessor for VisualIdentitySuggestionListItem(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A32141EC(*(v2 + 16), *(v2 + 24));
  sub_1A336F738(*(v2 + 32), *(v2 + 40));
  v3 = v2 + v1[9];
  v4 = sub_1A34C9780();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for VisualIdentity(0);
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 28));
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A32061E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A34CCAE0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3206258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A34CCAE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A320631C()
{
  type metadata accessor for VisualIdentitySuggestionSection();
  sub_1A34CD890();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A32063A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A32064E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A3206628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardLabeledPropertyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3206690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardLabeledPropertyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32066F4()
{
  v1 = type metadata accessor for ContactCardLabeledPropertyView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + v1[5]))
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v3 + v1[6]);
  v5 = v3 + v1[7];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A8) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v8 = sub_1A34CC670();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A0) + 36);
  v10 = sub_1A34CB970();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1A3206938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CAFD0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3206994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CAE80();
  *a1 = result;
  return result;
}

uint64_t sub_1A3206A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C4C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C87B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C87B8);
  sub_1A3374118();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3206B04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3206B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8BC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3206C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8BC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3206DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3206E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3206F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8DC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB030);
  sub_1A3381110();
  sub_1A33811F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3206FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3207074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32070FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A320713C()
{
  sub_1A31ECC9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A3207180()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A32071C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3207284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A32073A4()
{

  sub_1A31ECC9C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A32073E8()
{
  sub_1A338879C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_1A32074D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ContactCardConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A320757C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactCardConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A320764C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320769C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A34CB070();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3207700@<X0>(void *a1@<X8>)
{
  result = sub_1A34CAF30();
  *a1 = v3;
  return result;
}

__n128 sub_1A320779C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A32077C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactCardActionRow();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3207880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactCardActionRow();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3207940()
{
  v1 = type metadata accessor for ContactCardActionMenu();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = type metadata accessor for ContactCardActionRow();
  v5 = v4[6];
  v6 = sub_1A34C93B0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  if (*(v3 + v4[12]))
  {
  }

  v8 = v3 + v4[19];
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  MEMORY[0x1A58F1130](v3 + v4[22]);

  __swift_destroy_boxed_opaque_existential_0(v3 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_1A3207C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C93B0();
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

uint64_t sub_1A3207D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C93B0();
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

uint64_t sub_1A3207E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3207ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3207FB0()
{

  return swift_deallocObject();
}

id sub_1A3208000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_borderStyle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v5;

  return v4;
}

id sub_1A3208070@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14ContactsUICore12AvatarUIView_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1A32080DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3208124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9750);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3208200()
{

  return swift_deallocObject();
}

uint64_t sub_1A3208250()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for StickyHeaderScrollView();
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB140();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v7 - 8) + 8))(v4 + *(v2 + 60));
  (*(*(v1 - 8) + 8))(v4 + *(v2 + 64), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3208404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C98D8);
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CA540();
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A33A5CEC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A333B40C();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CAC30();
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C58B0);
  sub_1A34CAC30();
  sub_1A34CAC30();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CC8C0();
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A32FD328();
  return swift_getWitnessTable();
}

uint64_t sub_1A32086C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3208710()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3208778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 17);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A3208848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 17) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A32088F4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A320893C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320897C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1A3208A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A3208B60(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9B90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3208C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3208CFC()
{
  MEMORY[0x1A58F1130](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A3208D64()
{

  return swift_deallocObject();
}

uint64_t sub_1A3208DD4()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3208E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3208EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3208F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3208FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
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

uint64_t sub_1A320905C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9780();
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

void sub_1A3209118(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A33AFF3C(v1);
}

id sub_1A320914C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlert];
  *a2 = result;
  return result;
}

uint64_t sub_1A320919C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A32091DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1A3209304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ContactCardCustomViewConfiguration(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A3209420()
{

  return swift_deallocObject();
}

uint64_t sub_1A3209458()
{
  v1 = type metadata accessor for ContactCardCustomView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA5D0();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
  }

  v4 = v2 + *(v1 + 20);
  v5 = sub_1A34C93B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for ContactCardCustomViewConfiguration(0);

  v9 = *(v8 + 28);
  if (!(*(v6 + 48))(v4 + v9, 1, v5))
  {
    v7(v4 + v9, v5);
  }

  MEMORY[0x1A58F1130](v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A32096B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9E30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5DB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9E28);
  sub_1A34CB400();
  sub_1A33B7054();
  swift_getOpaqueTypeConformance2();
  sub_1A32B5314();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A32097A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_1A32F5C78(v11, v10);
}

uint64_t sub_1A3209818()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1A3209930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A32099F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A3209ACC()
{
  v1 = type metadata accessor for ContactCardInlineActions();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v2 + 32);

    __swift_destroy_boxed_opaque_existential_0(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0(v2 + 128);
    __swift_destroy_boxed_opaque_existential_0(v2 + 168);
    __swift_destroy_boxed_opaque_existential_0(v2 + 216);
  }

  v3 = v2 + *(v1 + 20);

  v4 = *(type metadata accessor for ContactCardStyleProvider.InlineActions() + 28);
  v5 = sub_1A34CCC60();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A3209C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3209CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactCardStyleProvider.InlineActions();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3209D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactCardStyleProvider.InlineActions();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3209E78()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3209EE0()
{
  v1 = type metadata accessor for ContactCardInlineActions();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  if (*(v0 + v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 32);

    __swift_destroy_boxed_opaque_existential_0(v4 + 88);
    __swift_destroy_boxed_opaque_existential_0(v4 + 128);
    __swift_destroy_boxed_opaque_existential_0(v4 + 168);
    __swift_destroy_boxed_opaque_existential_0(v4 + 216);
  }

  v5 = v4 + *(v1 + 20);

  v6 = *(type metadata accessor for ContactCardStyleProvider.InlineActions() + 28);
  v7 = sub_1A34CCC60();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v3 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A320A15C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9780();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A320A214()
{
  v1 = (type metadata accessor for VisualIdentity(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_1A34C9780();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_0(v0 + v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_1A320A310@<X0>(_BYTE *a1@<X8>)
{
  sub_1A33C8068();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A320A3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A320A424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A320A4A0@<X0>(void *a1@<X8>)
{
  sub_1A329BBB4();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A320A534@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1A58EC820]();
  *a1 = result;
  return result;
}

uint64_t sub_1A320A59C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A320A5FC()
{

  return swift_deallocObject();
}

uint64_t sub_1A320A634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A320A768(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A320A8A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A320A960(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A320AA0C()
{
  v1 = type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 20);
  v4 = sub_1A34CB5F0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1A320AB98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA450);
  sub_1A3284D0C(&unk_1EB0C0768, &qword_1EB0CA448);
  sub_1A34CADD0();
  sub_1A33D0FE0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320ACC8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ContactCard();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB5F0();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v4 + v2[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5F0);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5F8);

  v9 = v4 + v2[10];
  v10 = sub_1A34CAA80();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);

  (*(*(v1 - 8) + 8))(v4 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_1A320AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C93B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A320B070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A34C93B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A320B184(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1A320B240(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A320B2F0()
{
  type metadata accessor for ContactCard.InnerFormView();
  type metadata accessor for ContactCardSwiftUIViewModel();
  swift_getWitnessTable();
  sub_1A33E1CA8(&qword_1EB0C1AA0, type metadata accessor for ContactCardSwiftUIViewModel);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ContactPosterView();
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A34CAD80();
  sub_1A34CAC30();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A320B540()
{
  sub_1A34CAC30();
  sub_1A33DFE80();
  return swift_getWitnessTable();
}

uint64_t sub_1A320B5A8()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ContactCard.InnerFormView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  sub_1A32BEA78(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 33));

  (*(*(v1 - 8) + 8))(v3 + v2[14], v1);

  return swift_deallocObject();
}

uint64_t sub_1A320B6C4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ContactCard.InnerFormView() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_1A34CA7F0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;
  sub_1A32BEA78(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 33));

  (*(*(v1 - 8) + 8))(v8 + v2[14], v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A320B85C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A320B8CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A320B948()
{
  v1 = sub_1A34CAC70();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A320B9D0()
{
  v1 = sub_1A34CA640();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1A34CAC70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A320BB20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA668);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA678);
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6A0);
  swift_getTupleTypeMetadata();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CBC40();
  swift_getWitnessTable();
  sub_1A33E0680();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
  swift_getOpaqueTypeConformance2();
  sub_1A33E06D4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6B8);
  sub_1A34CAC30();
  sub_1A34CB3F0();
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getOpaqueTypeConformance2();
  sub_1A3284D0C(&qword_1ED853F30, &qword_1EB0CA6B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1A34CA940();
  return swift_getWitnessTable();
}

uint64_t sub_1A320BFE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A320C024()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A58EF770](*&v1);
}

uint64_t _s10SilhouetteVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SilhouetteVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A320C138(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1A33EDCC8(v1, v2);
}

uint64_t sub_1A320C1A8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1A320C1F8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 8));

  __swift_destroy_boxed_opaque_existential_0((v0 + 15));

  return swift_deallocObject();
}

uint64_t sub_1A320C270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A320C2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CACF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A320C348()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A320C390()
{

  return swift_deallocObject();
}

uint64_t sub_1A320C3D0()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A320C410()
{
  v1 = sub_1A34C9650();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A320C498()
{
  v1 = sub_1A34C9AE0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A320C564()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320C5A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A320C5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A320C680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAED0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A320CB1C()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A320CB54()
{

  return swift_deallocObject();
}

uint64_t sub_1A320CB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A320CC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A320CCAC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3419224(v1);
}

void sub_1A320CCE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_1A3419554(v2);
}

void sub_1A320CD24(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A341B280(v1);
}

uint64_t sub_1A320CD58(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1A31EE004(v3, v1);
  return sub_1A3418F1C(&v3);
}

uint64_t sub_1A320CDCC()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320CE58@<X0>(void *a1@<X8>)
{
  sub_1A342397C();
  result = sub_1A34CB0C0();
  *a1 = v3;
  return result;
}

BOOL sub_1A320CF4C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1A335D480();
  *a1 = result;
  return result;
}

uint64_t sub_1A320CFA8@<X0>(_BYTE *a1@<X8>)
{
  sub_1A3423244();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A320D044(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A320D188(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB1A8);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1A320D2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E80);
  sub_1A342309C();
  sub_1A34231E0();
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320D3C0()
{
  v1 = type metadata accessor for VisualIdentityEditor();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB5F0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A32B56DC();
  v6 = v3 + v1[8];

  v7 = v3 + v1[9];

  if (*(v7 + 32))
  {
  }

  v8 = v3 + v1[11];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB180);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB188);

  v10 = *(v3 + v1[13]);
  if (v10 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320D608()
{
  v1 = type metadata accessor for VisualIdentityEditor();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB5F0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A32B56DC();
  v6 = v3 + v1[8];

  v7 = v3 + v1[9];

  if (*(v7 + 32))
  {
  }

  v8 = v3 + v1[11];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB180);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB188);

  v10 = *(v3 + v1[13]);
  if (v10 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320D854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A335D368();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A320D8B0()
{
  v1 = sub_1A34CB0B0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A320D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A320DA08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A320DAD4@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(*result + 16))
  {
    *a2 = *(*result + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A320DAF4@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(*result + 16) <= 1uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(*result + 48);
  }

  return result;
}

uint64_t sub_1A320DC1C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A320DCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A320DDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A320DE70()
{
  v1 = *(type metadata accessor for SheetOrFullScreenCoverModifier() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA980();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320DFC8()
{
  type metadata accessor for SheetOrFullScreenCoverModifier();
  swift_getWitnessTable();
  sub_1A34CB4F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CB3F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A320E190()
{
  v8 = *(v0 + 24);
  v1 = type metadata accessor for SheetOrFullScreenCoverItemModifier();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA980();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 52);

  sub_1A34CD890();
  v5 = *(sub_1A34CC960() + 32);
  v6 = *(v8 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v8))
  {
    (*(v6 + 8))(v4 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1A320E390()
{
  type metadata accessor for SheetOrFullScreenCoverItemModifier();
  swift_getWitnessTable();
  sub_1A34CB4F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CB3F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A320E57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34CCC60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A320E5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34CCC60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A320E65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A320E738()
{

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  }

  if (*(v0 + 152))
  {
  }

  if (*(v0 + 184) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320E7E4()
{

  return swift_deallocObject();
}

uint64_t sub_1A320E824()
{

  return swift_deallocObject();
}

uint64_t sub_1A320E884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB668);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A320E8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB668);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A320E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A320EA34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A320EAE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB5B0);
  sub_1A3438544();
  sub_1A328A95C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320EB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A320EBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1A320EC28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EB0EDEA8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A320EC84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EB0EDEA8;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A320ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1A320EDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A320EE88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320EEC0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_1A34C9780();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = (v0 + v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_1A320EFEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAD40);
  sub_1A343BAD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320F054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A320F0C0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
    result = sub_1A31EE004(*result, v3);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1A320F104(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1A34C9010();
  result = sub_1A31ECC9C(v4, v5);
  *a2 = v3;
  *(a2 + 8) = 4 * (v3 == 0);
  return result;
}

uint64_t sub_1A320F168()
{

  return swift_deallocObject();
}

uint64_t sub_1A320F1A0()
{

  sub_1A31ECC9C(*(v0 + 32), *(v0 + 40));

  sub_1A31ECC9C(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_1A320F20C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB798);
  sub_1A3284D0C(&qword_1EB0CB7C0, &qword_1EB0CB798);
  sub_1A32EC0B4();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB7D0);
  sub_1A343E298();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A328A95C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320F3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A320F43C()
{

  return swift_deallocObject();
}

uint64_t sub_1A320F484()
{

  sub_1A31ECC9C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A320F4C8()
{
  sub_1A31ECC9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A320F50C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A320F560()
{

  return swift_deallocObject();
}

uint64_t sub_1A320F5D4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1A34C9010();
  }

  return result;
}

uint64_t sub_1A320F5E8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1A320F5FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EditorSuggestionProvider();
  result = sub_1A3463D24(v2, &off_1F1621430);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1A320F650()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA88);
  sub_1A34CAC30();
  sub_1A34CD890();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBA90);
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A3284D0C(&qword_1EB0CBA98, &qword_1EB0CBA90);
  swift_getWitnessTable();
  sub_1A34CC8A0();
  sub_1A34CB970();
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBAA0);
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBAA8);
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F80);
  sub_1A34CAC30();
  swift_getWitnessTable();
  sub_1A3452CB0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1A3284D0C(&qword_1EB0CBAB0, &qword_1EB0CBAA0);
  swift_getWitnessTable();
  sub_1A3284D0C(&qword_1EB0CBAB8, &qword_1EB0CBAA8);
  swift_getWitnessTable();
  sub_1A3284D0C(&qword_1EB0C0930, &qword_1EB0C5F80);
  return swift_getWitnessTable();
}

uint64_t sub_1A320F984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBB48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBB50);
  sub_1A3284D0C(&qword_1EB0CBB58, &qword_1EB0CBB48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA450);
  sub_1A34CADD0();
  sub_1A3452CB0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A320FB48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A320FC04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A320FCB4()
{
  v1 = (type metadata accessor for MonogramFakeSolarium.Initials() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A32891B0(*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80));
  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A320FDE4()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A320FE1C()
{

  return swift_deallocObject();
}

uint64_t sub_1A320FE58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A320FF28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A320FF7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A320FFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210008()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3210040()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210078()
{

  return swift_deallocObject();
}

uint64_t sub_1A32100C0()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

__n128 sub_1A321012C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3210138()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3210170()
{

  return swift_deallocObject();
}

uint64_t sub_1A32101C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34CCC60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1A3210270(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A34CCC60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3210340()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3210390()
{
  v1 = (type metadata accessor for VisualIdentitySuggestionContext(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[8];
  v4 = sub_1A34C9780();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for VisualIdentity(0);
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 28));
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A32104C4()
{
  v1 = (type metadata accessor for VisualIdentitySuggestionContext(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];
  v5 = sub_1A34C9780();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for VisualIdentity(0);
  __swift_destroy_boxed_opaque_existential_0(v4 + *(v6 + 28));
  __swift_destroy_boxed_opaque_existential_0(v4 + *(v6 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3210620(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for VisualIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A32106CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for VisualIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3210770()
{
  sub_1A31ECC9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A32107B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A3210800()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for VisualIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A32108F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for VisualIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3210994()
{
  v1 = (type metadata accessor for VisualIdentityPreview() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A346E344(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  sub_1A336F738(*(v2 + 40), *(v2 + 48));
  v3 = v2 + v1[9];
  v4 = sub_1A34C9780();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for VisualIdentity(0);
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 28));
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v5 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A3210AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3210C68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1A346F6FC(v1, v2);
}

void sub_1A3210D34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A347121C(v1);
}

void sub_1A3210D8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3470F04(v1);
}

uint64_t sub_1A3210DBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3210DFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210E3C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210E7C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3210ECC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A3210F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8BC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3210FE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8BC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A32110BC()
{
  v1 = type metadata accessor for ContactCardGeminiPicker();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA7A0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3211288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3211350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A321142C()
{

  return swift_deallocObject();
}

uint64_t sub_1A3211464@<X0>(uint64_t a1@<X8>)
{
  sub_1A333A814();
  result = sub_1A34CB0E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A3211560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A32115D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3211684(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC3B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3211784()
{
  v1 = sub_1A34C9E40();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A3211824()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1A34C9E40();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3211958()
{
  v1 = *v0;
  v2 = 0x65756F686C69732ELL;
  v3 = 0x497261746176612ELL;
  v4 = 0x6570696365722ELL;
  if (v1 != 3)
  {
    v4 = 0x726574736F702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6172676F6E6F6D2ELL;
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

uint64_t sub_1A3211AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34C9C10();
  *a1 = result;
  return result;
}

uint64_t sub_1A3211B2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34C9E40();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A3211C5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A34C9E40();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A3211E28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC4C8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_1A34C9E40();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3211F74()
{

  return swift_deallocObject();
}

uint64_t sub_1A3211FAC()
{
  v1 = sub_1A34C9E40();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A32120AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6140);
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A3212178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6140);
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3212244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CAFE0();
  *a1 = result;
  return result;
}

uint64_t sub_1A32122A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A321232C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CC740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A321239C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC6F0);
  sub_1A3493F88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A32124AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A32124E4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A321253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A3212604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_1A32126D0@<X0>(_BYTE *a1@<X8>)
{
  sub_1A32BA6A8();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32127C4()
{
  v1 = *(type metadata accessor for VisualIdentityOnboardingGallery() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA5D0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1A32B56DC();

  return swift_deallocObject();
}

double sub_1A32128F8@<D0>(double *a1@<X8>)
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A3212994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3483500();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1A32129C4@<X0>(_BYTE *a1@<X8>)
{
  sub_1A336E6EC();
  result = sub_1A34CB0E0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1A3212A80@<X0>(void *a1@<X8>)
{
  sub_1A336E698();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3212AE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CAFA0();
  *a1 = result;
  return result;
}

uint64_t sub_1A3212B38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC7F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC7F8);
  sub_1A3284D0C(qword_1EB0C18C8, &qword_1EB0CC7F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC800);
  sub_1A349F9AC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3212C50()
{
  MEMORY[0x1A58F1130](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3212C88()
{

  return swift_deallocObject();
}

uint64_t sub_1A3212CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9780();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A3212D84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9780();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A3212E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A3212EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A3212F20()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3212FDC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1A3213090@<X0>(void *a1@<X8>)
{
  sub_1A31EBB7C();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A32130E4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1A321312C@<D0>(uint64_t a1@<X8>)
{
  sub_1A3385F40(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1A3213180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCBB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1A3213208@<D0>(double *a1@<X8>)
{
  sub_1A3365B20();
  sub_1A34CB0E0();
  result = v3;
  *a1 = v3;
  a1[1] = 1.0;
  return result;
}

uint64_t sub_1A321329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

uint64_t sub_1A3213374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

uint64_t sub_1A3213474()
{

  return swift_deallocObject();
}

id sub_1A32134B8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

__n128 sub_1A32134F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

void sub_1A3213508(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v3;
  *(a2 + 80) = v2;
  sub_1A3362D58();
}

uint64_t sub_1A32135A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 272);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContactCardConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A3213650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 272) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactCardConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A32136F8()
{
  v1 = v0;
  v2 = type metadata accessor for ContactCardDetails();
  v18 = *(*(v2 - 1) + 80);
  v16 = *(*(v2 - 1) + 64);
  v3 = *(*(type metadata accessor for ContactCardDetailsViewModel.Section(0) - 8) + 80);
  v17 = (v18 + 16) & ~v18;
  v4 = v1 + v17;
  if (*(v1 + v17 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 32);

    __swift_destroy_boxed_opaque_existential_0(v4 + 88);
    __swift_destroy_boxed_opaque_existential_0(v4 + 128);
    __swift_destroy_boxed_opaque_existential_0(v4 + 168);
    __swift_destroy_boxed_opaque_existential_0(v4 + 216);
  }

  v5 = (v4 + v2[6]);

  MEMORY[0x1A58F1130](v5 + 3);
  v6 = type metadata accessor for ContactCardConfiguration(0);
  v7 = v5 + v6[9];
  v8 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v15 = v1;
    v9 = sub_1A34C93B0();
    v10 = *(v9 - 8);
    v14 = *(v10 + 8);
    v14(v7, v9);

    v11 = *(v8 + 28);
    if (!(*(v10 + 48))(&v7[v11], 1, v9))
    {
      v14(&v7[v11], v9);
    }

    v1 = v15;
  }

  v12 = sub_1A34C9780();
  (*(*(v12 - 8) + 8))(v1 + ((v17 + v16 + v3) & ~v3), v12);

  return swift_deallocObject();
}

uint64_t sub_1A3213AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCF60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A3213B6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callAlert];
  *a2 = result;
  return result;
}

uint64_t sub_1A3213BC8()
{
  v1 = type metadata accessor for ContactCardDetails();
  v2 = *(*(v1 - 1) + 80);

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  }

  if (*(v0 + 152))
  {
  }

  v3 = (v2 + 193) & ~v2;
  if (*(v0 + 184) >= 2uLL)
  {
  }

  v4 = v0 + v3;
  if (*(v0 + v3 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 32);

    __swift_destroy_boxed_opaque_existential_0(v4 + 88);
    __swift_destroy_boxed_opaque_existential_0(v4 + 128);
    __swift_destroy_boxed_opaque_existential_0(v4 + 168);
    __swift_destroy_boxed_opaque_existential_0(v4 + 216);
  }

  v5 = (v4 + v1[6]);

  MEMORY[0x1A58F1130](v5 + 3);
  v6 = type metadata accessor for ContactCardConfiguration(0);
  v7 = v5 + v6[9];
  v8 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_1A34C93B0();
    v10 = *(v9 - 8);
    v13 = *(v10 + 8);
    v13(v7, v9);

    v11 = *(v8 + 28);
    if (!(*(v10 + 48))(&v7[v11], 1, v9))
    {
      v13(&v7[v11], v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1A3213F20(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardLabeledPropertyView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A32140DC@<X0>(void *a1@<X8>)
{
  result = sub_1A34C9DE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A321418C(uint64_t result)
{
  if (result)
  {
    return sub_1A34C9010();
  }

  return result;
}

uint64_t sub_1A32141EC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void *sub_1A3214230@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_1A321426C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1A32142B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  CNGuardOSLog_cn_once_object_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

BOOL sHasValidDestination_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _cnui_IDSIDRepresentation];
  v3 = v2 != 0;

  return v3;
}

void *__getIDSServiceNameFaceTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameFaceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameFaceTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IDSLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IDSLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E7A00;
    v5 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IDSLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IDSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIDSServiceNameFaceTimeMultiwaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameFaceTimeMultiway");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameFaceTimeMultiwaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initRTTTelephonyUtilities()
{
  if (LoadRTTUtilities_loadPredicate != -1)
  {
    initRTTTelephonyUtilities_cold_1();
  }

  result = objc_getClass("RTTTelephonyUtilities");
  classRTTTelephonyUtilities = result;
  getRTTTelephonyUtilitiesClass = RTTTelephonyUtilitiesFunction;
  return result;
}

void __LoadRTTUtilities_block_invoke()
{
  LoadRTTUtilities_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/RTTUtilities.framework/RTTUtilities", 1);
  if (!LoadRTTUtilities_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadRTTUtilities_block_invoke_cold_1();
  }
}

void __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUCallCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getTUCallCenterClass_block_invoke_cold_1();
    TelephonyUtilitiesLibrary();
  }
}

void TelephonyUtilitiesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E7BB8;
    v3 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

_CNUILikenessRenderer *__getTUDialRequestClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUDialRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getTUDialRequestClass_block_invoke_cold_1();
    return [(_CNUILikenessRenderer *)v3 initWithLikenessResolver:v4 schedulerProvider:v5, v6];
  }

  return result;
}

uint64_t imageFromImageRef(uint64_t a1, double a2, double a3, double a4)
{
  v6 = NSClassFromString(&cfstr_Uiimage.isa);

  return [(objc_class *)v6 imageWithCGImage:a1 scale:0 orientation:a4];
}

void sub_1A321960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t imageRefFromImage(void *a1)
{
  v1 = a1;

  return [v1 CGImage];
}

Class initPRMonogram()
{
  if (LoadPersonaUI_loadPredicate != -1)
  {
    initPRMonogram_cold_1();
  }

  result = objc_getClass("PRMonogram");
  classPRMonogram = result;
  getPRMonogramClass = PRMonogramFunction;
  return result;
}

void __LoadPersonaUI_block_invoke()
{
  LoadPersonaUI_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PersonaUI.framework/PersonaUI", 1);
  if (!LoadPersonaUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPersonaUI_block_invoke_cold_1();
  }
}

Class initPRLikeness()
{
  if (LoadPersonaUI_loadPredicate != -1)
  {
    initPRMonogram_cold_1();
  }

  result = objc_getClass("PRLikeness");
  classPRLikeness = result;
  getPRLikenessClass = PRLikenessFunction;
  return result;
}

id sPhoneNumberValue_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

id CNContactsUICoreBundle()
{
  if (CNContactsUICoreBundle_onceToken != -1)
  {
    CNContactsUICoreBundle_cold_1();
  }

  v1 = CNContactsUICoreBundle___bundle;

  return v1;
}

uint64_t __CNContactsUICoreBundle_block_invoke()
{
  CNContactsUICoreBundle___bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Contacts.ContactsUICore"];

  return MEMORY[0x1EEE66BB8]();
}

Class initCLGeocoder()
{
  if (LoadCoreLocation_loadPredicate != -1)
  {
    initCLGeocoder_cold_1();
  }

  result = objc_getClass("CLGeocoder");
  classCLGeocoder = result;
  getCLGeocoderClass = CLGeocoderFunction;
  return result;
}

void __LoadCoreLocation_block_invoke()
{
  LoadCoreLocation_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 1);
  if (!LoadCoreLocation_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreLocation_block_invoke_cold_1();
  }
}

Class initMKMapSnapshotter()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    initMKMapSnapshotter_cold_1();
  }

  result = objc_getClass("MKMapSnapshotter");
  classMKMapSnapshotter = result;
  getMKMapSnapshotterClass = MKMapSnapshotterFunction;
  return result;
}

void __LoadMapKit_block_invoke()
{
  LoadMapKit_frameworkLibrary = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 1);
  if (!LoadMapKit_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadMapKit_block_invoke_cold_1();
  }
}

Class initMKPlacemark()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    initMKMapSnapshotter_cold_1();
  }

  result = objc_getClass("MKPlacemark");
  classMKPlacemark = result;
  getMKPlacemarkClass = MKPlacemarkFunction;
  return result;
}

Class initMKMapSnapshotOptions()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    initMKMapSnapshotter_cold_1();
  }

  result = objc_getClass("MKMapSnapshotOptions");
  classMKMapSnapshotOptions = result;
  getMKMapSnapshotOptionsClass = MKMapSnapshotOptionsFunction;
  return result;
}

Class initMKMapSnapshotFeatureAnnotation()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    initMKMapSnapshotter_cold_1();
  }

  result = objc_getClass("MKMapSnapshotFeatureAnnotation");
  classMKMapSnapshotFeatureAnnotation = result;
  getMKMapSnapshotFeatureAnnotationClass = MKMapSnapshotFeatureAnnotationFunction;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id getPISegmentationLoaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPISegmentationLoaderClass_softClass;
  v7 = getPISegmentationLoaderClass_softClass;
  if (!getPISegmentationLoaderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPISegmentationLoaderClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPISegmentationLoaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A321ED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A321F0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A321F8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initPHObject()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHObject");
  classPHObject = result;
  getPHObjectClass[0] = PHObjectFunction;
  return result;
}

void __LoadPhotos_block_invoke()
{
  LoadPhotos_frameworkLibrary = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1);
  if (!LoadPhotos_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPhotos_block_invoke_cold_1();
  }
}

Class initPHCachingImageManager()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHCachingImageManager");
  classPHCachingImageManager = result;
  getPHCachingImageManagerClass[0] = PHCachingImageManagerFunction;
  return result;
}

Class initPHImageRequestOptions()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHImageRequestOptions");
  classPHImageRequestOptions = result;
  getPHImageRequestOptionsClass[0] = PHImageRequestOptionsFunction;
  return result;
}

Class initPHWallpaperAsset()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHWallpaperAsset");
  classPHWallpaperAsset = result;
  getPHWallpaperAssetClass[0] = PHWallpaperAssetFunction;
  return result;
}

void __getPISegmentationLoaderClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISegmentationLoader");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPISegmentationLoaderClass_block_invoke_cold_1();
    PhotoImagingLibrary();
  }
}

void PhotoImagingLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotoImagingLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E8108;
    v3 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotoImagingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPISegmentationLayoutRegionsClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  result = objc_getClass("PISegmentationLayoutRegions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationLayoutRegionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPISegmentationLayoutRegionsClass_block_invoke_cold_1();
    return initPHPhotoLibrary(v3);
  }

  return result;
}

Class initPHPhotoLibrary()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHPhotoLibrary");
  classPHPhotoLibrary = result;
  getPHPhotoLibraryClass = PHPhotoLibraryFunction;
  return result;
}

Class initPHAsset()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHAsset");
  classPHAsset = result;
  getPHAssetClass = PHAssetFunction;
  return result;
}

Class initPHSuggestion()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHSuggestion");
  classPHSuggestion = result;
  getPHSuggestionClass = PHSuggestionFunction;
  return result;
}

Class initPHAssetChangeRequest()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    initPHObject_cold_1();
  }

  result = objc_getClass("PHAssetChangeRequest");
  classPHAssetChangeRequest = result;
  getPHAssetChangeRequestClass[0] = PHAssetChangeRequestFunction;
  return result;
}

Class initPHPickerConfiguration()
{
  if (LoadPhotosUI_loadPredicate != -1)
  {
    initPHPickerConfiguration_cold_1();
  }

  result = objc_getClass("PHPickerConfiguration");
  classPHPickerConfiguration = result;
  getPHPickerConfigurationClass[0] = PHPickerConfigurationFunction;
  return result;
}

void __LoadPhotosUI_block_invoke()
{
  LoadPhotosUI_frameworkLibrary = dlopen("/System/Library/Frameworks/PhotosUI.framework/PhotosUI", 1);
  if (!LoadPhotosUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPhotosUI_block_invoke_cold_1();
  }
}

Class initPHPickerFilter()
{
  if (LoadPhotosUI_loadPredicate != -1)
  {
    initPHPickerConfiguration_cold_1();
  }

  result = objc_getClass("PHPickerFilter");
  classPHPickerFilter = result;
  getPHPickerFilterClass[0] = PHPickerFilterFunction;
  return result;
}

Class init_PHPickerSuggestionGroup()
{
  if (LoadPhotosUI_loadPredicate != -1)
  {
    initPHPickerConfiguration_cold_1();
  }

  result = objc_getClass("_PHPickerSuggestionGroup");
  class_PHPickerSuggestionGroup = result;
  get_PHPickerSuggestionGroupClass[0] = _PHPickerSuggestionGroupFunction;
  return result;
}

Class initPHPickerViewController()
{
  if (LoadPhotosUI_loadPredicate != -1)
  {
    initPHPickerConfiguration_cold_1();
  }

  result = objc_getClass("PHPickerViewController");
  classPHPickerViewController = result;
  getPHPickerViewControllerClass[0] = PHPickerViewControllerFunction;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_0()
{
  CNGuardOSLog_cn_once_object_0_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1A32229A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_1()
{
  CNGuardOSLog_cn_once_object_0_1 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CNUICoreItemFormattedNameComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 formattedName];
  v6 = [v4 formattedName];

  v7 = [v5 compare:v6];
  return v7;
}

Class __getTUDialRequestClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E83D8;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUDialRequestClass_block_invoke_cold_1();
  }

  getTUDialRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1A322620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A32263E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTStickerGeneratorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTStickerGeneratorClass_softClass;
  v7 = getAVTStickerGeneratorClass_softClass;
  if (!getAVTStickerGeneratorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTStickerGeneratorClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTStickerGeneratorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A32264C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3226740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3226B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarRecordImageProviderClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarRecordImageProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordImageProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTAvatarRecordImageProviderClass_block_invoke_cold_1();
    AvatarUILibrary();
  }
}

void AvatarUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AvatarUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E84B0;
    v3 = 0;
    AvatarUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVTRenderingScopeClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary();
  result = objc_getClass("AVTRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTRenderingScopeClass_block_invoke_cold_1();
    return __getAVTStickerGeneratorClass_block_invoke(v3);
  }

  return result;
}

void __getAVTStickerGeneratorClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTStickerGenerator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTStickerGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTStickerGeneratorClass_block_invoke_cold_1();
    AvatarKitLibrary();
  }
}

void AvatarKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AvatarKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E84C8;
    v3 = 0;
    AvatarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVTStickerGeneratorPosterOptionsClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  result = objc_getClass("AVTStickerGeneratorPosterOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTStickerGeneratorPosterOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTStickerGeneratorPosterOptionsClass_block_invoke_cold_1();
    return __getAVTStickerGeneratorOptionsClass_block_invoke(v3);
  }

  return result;
}

CNUICoreContactEdit *__getAVTStickerGeneratorOptionsClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary();
  result = objc_getClass("AVTStickerGeneratorOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTStickerGeneratorOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTStickerGeneratorOptionsClass_block_invoke_cold_1();
    return [(CNUICoreContactEdit *)v3 initWithContact:v4, v5];
  }

  return result;
}

uint64_t __CNGuardOSLog_block_invoke_2()
{
  CNGuardOSLog_cn_once_object_0_2 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_3()
{
  CNGuardOSLog_cn_once_object_0_3 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1A322F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A32304D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSQueryContinuationActionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSQueryContinuationActionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSQueryContinuationActionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCSSearchableItemActionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSSearchableItemActionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSearchableItemActionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCSSearchQueryStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSSearchQueryString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSearchQueryStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCSSearchableItemActivityIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary();
  result = dlsym(v2, "CSSearchableItemActivityIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSSearchableItemActivityIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t initPKPeerPaymentIsAvailable()
{
  if (LoadPassKitCore_loadPredicate != -1)
  {
    initPKPeerPaymentIsAvailable_cold_1();
  }

  v0 = dlsym(LoadPassKitCore_frameworkLibrary, "PKPeerPaymentIsAvailable");
  softLinkPKPeerPaymentIsAvailable = v0;

  return v0();
}

void __LoadPassKitCore_block_invoke()
{
  LoadPassKitCore_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 1);
  if (!LoadPassKitCore_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPassKitCore_block_invoke_cold_1();
  }
}

id initPKPeerPaymentGetSendPaymentSensitiveURL(void *a1, void *a2, void *a3)
{
  v5 = LoadPassKitCore_loadPredicate;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (v5 != -1)
  {
    initPKPeerPaymentIsAvailable_cold_1();
  }

  softLinkPKPeerPaymentGetSendPaymentSensitiveURL[0] = dlsym(LoadPassKitCore_frameworkLibrary, "PKPeerPaymentGetSendPaymentSensitiveURL");
  v9 = (softLinkPKPeerPaymentGetSendPaymentSensitiveURL[0])(v8, v7, v6);

  return v9;
}

void sub_1A323280C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3232E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUCallProviderManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUCallProviderManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUCallProviderManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getTUCallProviderManagerClass_block_invoke_cold_1();
    TelephonyUtilitiesLibrary_0();
  }
}

void TelephonyUtilitiesLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __TelephonyUtilitiesLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E87C8;
    v3 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t initABLogDisplayInternalAlert(uint64_t a1)
{
  if (LoadAddressBookLegacy_loadPredicate != -1)
  {
    initABLogDisplayInternalAlert_cold_1();
  }

  v2 = dlsym(LoadAddressBookLegacy_frameworkLibrary, "ABLogDisplayInternalAlert");
  softLinkABLogDisplayInternalAlert = v2;

  return (v2)(a1);
}

void __LoadAddressBookLegacy_block_invoke()
{
  LoadAddressBookLegacy_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AddressBookLegacy.framework/AddressBookLegacy", 1);
  if (!LoadAddressBookLegacy_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAddressBookLegacy_block_invoke_cold_1();
  }
}

Class __getTUDialRequestClass_block_invoke_1(uint64_t a1)
{
  TelephonyUtilitiesLibrary_0();
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUDialRequestClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getTUDialRequestClass_block_invoke_cold_1();
    return __getTUConversationMemberClass_block_invoke(v3);
  }

  return result;
}

Class __getTUConversationMemberClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary_0();
  result = objc_getClass("TUConversationMember");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUConversationMemberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getTUConversationMemberClass_block_invoke_cold_1();
    return __getTUJoinConversationRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getTUJoinConversationRequestClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary_0();
  result = objc_getClass("TUJoinConversationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUJoinConversationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getTUJoinConversationRequestClass_block_invoke_cold_1();
    return [(_CNUIUserActionCallProviderVoiceTarget *)v3 actionsForContact:v4 discoveringEnvironment:v5, v6];
  }

  return result;
}

void sub_1A32334BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMCCommunicationServiceTypeAudioCallSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E76E8830;
    v7 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = ManagedConfigurationLibraryCore_frameworkLibrary;
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = ManagedConfigurationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "kMCCommunicationServiceTypeAudioCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMCCommunicationServiceTypeAudioCallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_4()
{
  CNGuardOSLog_cn_once_object_0_4 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3236284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3236404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_5()
{
  CNGuardOSLog_cn_once_object_0_5 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __CNGuardOSLog_block_invoke_6()
{
  CNGuardOSLog_cn_once_object_0_6 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

id contactsBackgroundColorServiceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1688EE8];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ argumentIndex:1 ofReply:0];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id sEmailStringRepresentationsTransform_block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *MEMORY[0x1E6996568];
  v4 = [v2 value];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [v2 value];
    v8[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

void sAddNonEmptyString_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    [v5 addObject:v4];
  }
}

id sPhoneNumberStringRepresentationsTransform_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF70];
  v3 = a2;
  v4 = [v2 array];
  v5 = [v3 value];
  v6 = [v5 unformattedInternationalStringValue];
  sAddNonEmptyString_block_invoke_3(v6, v4, v6);

  v7 = [v3 value];
  v8 = [v7 stringValue];
  sAddNonEmptyString_block_invoke_3(v8, v4, v8);

  v9 = [v3 value];
  v10 = [v9 formattedStringValue];
  v11 = [v10 _cn_stringBySanitizingPhoneNumber];
  sAddNonEmptyString_block_invoke_3(v11, v4, v11);

  v12 = [v3 value];
  v13 = [v12 formattedInternationalStringValue];
  v14 = [v13 _cn_stringBySanitizingPhoneNumber];
  sAddNonEmptyString_block_invoke_3(v14, v4, v14);

  v15 = [v3 value];

  v16 = [v15 digits];
  sAddNonEmptyString_block_invoke_3(v16, v4, v16);

  v17 = [v4 copy];

  return v17;
}

void *__getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary_0();
  result = dlsym(v2, "IDSCopyIDForPhoneNumberWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IDSLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IDSLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E8CD0;
    v5 = 0;
    IDSLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = IDSLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!IDSLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IDSLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getIDSCopyIDForEmailAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary_0();
  result = dlsym(v2, "IDSCopyIDForEmailAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSCopyIDForEmailAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAVTAvatarFetchRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarFetchRequestClass_softClass;
  v7 = getAVTAvatarFetchRequestClass_softClass;
  if (!getAVTAvatarFetchRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarFetchRequestClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTAvatarFetchRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A323C204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkAVTStickerPackPoses()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAVTStickerPackPosesSymbolLoc_ptr;
  v8 = getkAVTStickerPackPosesSymbolLoc_ptr;
  if (!getkAVTStickerPackPosesSymbolLoc_ptr)
  {
    v1 = AvatarKitLibrary_0();
    v6[3] = dlsym(v1, "kAVTStickerPackPoses");
    getkAVTStickerPackPosesSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVTStickerConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTStickerConfigurationClass_softClass;
  v7 = getAVTStickerConfigurationClass_softClass;
  if (!getAVTStickerConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTStickerConfigurationClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTStickerConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A323C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTAvatarRecordSerializerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarRecordSerializerClass_softClass;
  v7 = getAVTAvatarRecordSerializerClass_softClass;
  if (!getAVTAvatarRecordSerializerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarRecordSerializerClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTAvatarRecordSerializerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A323C95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A323CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initAVTPAvatarStore()
{
  if (LoadAvatarPersistence_loadPredicate != -1)
  {
    initAVTPAvatarStore_cold_1();
  }

  result = objc_getClass("AVTPAvatarStore");
  classAVTPAvatarStore = result;
  getAVTPAvatarStoreClass = AVTPAvatarStoreFunction;
  return result;
}

void __LoadAvatarPersistence_block_invoke()
{
  LoadAvatarPersistence_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AvatarPersistence.framework/AvatarPersistence", 1);
  if (!LoadAvatarPersistence_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAvatarPersistence_block_invoke_cold_1();
  }
}

void __getAVTAvatarFetchRequestClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarFetchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTAvatarFetchRequestClass_block_invoke_cold_1();
    AvatarUILibrary_0();
  }
}

void AvatarUILibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AvatarUILibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E8CE8;
    v3 = 0;
    AvatarUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AvatarUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkAVTStickerPackPosesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AvatarKitLibrary_0();
  result = dlsym(v2, "kAVTStickerPackPoses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVTStickerPackPosesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AvatarKitLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E8D00;
    v5 = 0;
    AvatarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AvatarKitLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AvatarKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AvatarKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAVTStickerConfigurationClass_block_invoke(uint64_t a1)
{
  AvatarKitLibrary_0();
  result = objc_getClass("AVTStickerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTStickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTStickerConfigurationClass_block_invoke_cold_1();
    return __getAVTAvatarRecordSerializerClass_block_invoke(v3);
  }

  return result;
}

Class __getAVTAvatarRecordSerializerClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary_0();
  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordSerializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTAvatarRecordSerializerClass_block_invoke_cold_1();
    return __getAVTAvatarRecordRenderingClass_block_invoke(v3);
  }

  return result;
}

Class __getAVTAvatarRecordRenderingClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary_0();
  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordRenderingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTAvatarRecordRenderingClass_block_invoke_cold_1();
    return initAXUIAvatarUtilities(v3);
  }

  return result;
}

Class initAXUIAvatarUtilities()
{
  if (LoadAccessibilityUIUtilities_loadPredicate != -1)
  {
    initAXUIAvatarUtilities_cold_1();
  }

  result = objc_getClass("AXUIAvatarUtilities");
  classAXUIAvatarUtilities = result;
  getAXUIAvatarUtilitiesClass = AXUIAvatarUtilitiesFunction;
  return result;
}

void __LoadAccessibilityUIUtilities_block_invoke()
{
  LoadAccessibilityUIUtilities_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AccessibilityUIUtilities.framework/AccessibilityUIUtilities", 1);
  if (!LoadAccessibilityUIUtilities_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAccessibilityUIUtilities_block_invoke_cold_1();
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A323EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __TelephonyUtilitiesLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E76E8E00;
    v7 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v3 = v5[0];
    v2 = TelephonyUtilitiesLibraryCore_frameworkLibrary_2;
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = TelephonyUtilitiesLibraryCore_frameworkLibrary_2;
LABEL_5:
  result = dlsym(v2, "TUCallCapabilitiesFaceTimeAvailabilityChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id background_color_os_log()
{
  if (background_color_os_log_cn_once_token_7 != -1)
  {
    background_color_os_log_cold_1();
  }

  v1 = background_color_os_log_cn_once_object_7;

  return v1;
}

uint64_t __background_color_os_log_block_invoke()
{
  background_color_os_log_cn_once_object_7 = os_log_create("com.apple.contacts.ui", "backgroundColor");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3242260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class initCNAssistantConversion()
{
  if (LoadContactsAssistantServices_loadPredicate != -1)
  {
    initCNAssistantConversion_cold_1();
  }

  result = objc_getClass("CNAssistantConversion");
  classCNAssistantConversion = result;
  getCNAssistantConversionClass[0] = CNAssistantConversionFunction;
  return result;
}

void __LoadContactsAssistantServices_block_invoke()
{
  LoadContactsAssistantServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ContactsAssistantServices.framework/ContactsAssistantServices", 1);
  if (!LoadContactsAssistantServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadContactsAssistantServices_block_invoke_cold_1();
  }
}

id CNUICoreLocalizedStringForPropertyWithFormatKey(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, v8];
  v12 = [v10 localizedStringForKey:v11 value:v9 table:@"Localized"];
  if (![v12 length] || objc_msgSend(v12, "isEqualToString:", v11))
  {
    v13 = [v10 localizedStringForKey:v7 value:&stru_1F162C170 table:@"Localized"];
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x1E695CD58] localizedStringForKey:v8];
    }

    v15 = v14;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, v14];

    v12 = v16;
  }

  return v12;
}

uint64_t __CNGuardOSLog_block_invoke_7()
{
  CNGuardOSLog_cn_once_object_0_7 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3244B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A3244FD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_8()
{
  CNGuardOSLog_cn_once_object_0_8 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

Class initGKGameCenterFriendPlayerView()
{
  if (LoadGameCenterUI_loadPredicate != -1)
  {
    initGKGameCenterFriendPlayerView_cold_1();
  }

  result = objc_getClass("GKGameCenterFriendPlayerView");
  classGKGameCenterFriendPlayerView = result;
  getGKGameCenterFriendPlayerViewClass = GKGameCenterFriendPlayerViewFunction;
  return result;
}

void __LoadGameCenterUI_block_invoke()
{
  LoadGameCenterUI_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/GameCenterUI.framework/GameCenterUI", 1);
  if (!LoadGameCenterUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadGameCenterUI_block_invoke_cold_1();
  }
}

void sub_1A3247E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_9()
{
  CNGuardOSLog_cn_once_object_0_9 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_10()
{
  CNGuardOSLog_cn_once_object_0_10 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_11()
{
  CNGuardOSLog_cn_once_object_0_11 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _mergedCarrierBundleValue(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [MEMORY[0x1E69A51E8] sharedInstance];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v7 = [v4 carrierBundleValueFromAllSIMsForKey:v3 ofType:v5 withFallback:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    LOBYTE(a2) = 1;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (a2)
        {
          a2 = [*(*(&v13 + 1) + 8 * v11) BOOLValue];
        }

        else
        {
          a2 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return a2;
}

Class __getTUCallCapabilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9280;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TUCallCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUCallCapabilitiesClass_block_invoke_cold_1();
  }

  getTUCallCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class initFTiMessageStatus()
{
  if (LoadFTServices_loadPredicate != -1)
  {
    initFTiMessageStatus_cold_1();
  }

  result = objc_getClass("FTiMessageStatus");
  classFTiMessageStatus = result;
  getFTiMessageStatusClass = FTiMessageStatusFunction;
  return result;
}

void __LoadFTServices_block_invoke()
{
  LoadFTServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FTServices.framework/FTServices", 1);
  if (!LoadFTServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadFTServices_block_invoke_cold_1();
  }
}

uint64_t __CNGuardOSLog_block_invoke_12()
{
  CNGuardOSLog_cn_once_object_0_12 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3250388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IMCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9550;
    v6 = 0;
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (IMCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIMNicknameControllerClass_block_invoke_cold_1();
  }

  getIMNicknameControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CNGuardOSLog_block_invoke_13()
{
  CNGuardOSLog_cn_once_object_0_13 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

double _interiorPointForCorner(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 > 3)
  {
    v5 = a2 + a4;
    v6 = a4 - a3;
    if (a1 == 8)
    {
      a2 = v6;
    }

    if (a1 == 4)
    {
      return v5;
    }

    else
    {
      return a2;
    }
  }

  else if (a1 == 1)
  {
    return a3 + a4;
  }

  else
  {
    v4 = a4 - a2;
    if (a1 != 2)
    {
      return a2;
    }
  }

  return v4;
}

double QL_UIValueCGSizeValue(void *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sizep = 0;
  v1 = a1;
  NSGetSizeAndAlignment([v1 objCType], &sizep, 0);
  [v1 getValue:v3 size:16];

  return *v3;
}

void _addContinuousCornerToContextPath(CGContext *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = 20.0;
  if ((a2 - 1) <= 3)
  {
    v8 = dbl_1A34D94A0[a2 - 1];
  }

  v9 = a5 * 0.95 / 1.528665;
  v10 = v9 * 0.33 * 0.666666667;
  v11 = v10 * 1.05304313 + (v9 / 1.05304313 + v10 * 0.33 / 1.05304313) * 0.67;
  v12 = v10 * 1.05304313 + v11;
  v13 = v10 * 1.05304313 + v10 * 1.05304313 + v12;
  v14 = _interiorPointForCorner(a2, v12, 0.0, a3);
  v35 = v15;
  v36 = v14;
  cp2x = _interiorPointForCorner(a2, v11, 0.0, a3);
  v17 = v16;
  v18 = _interiorPointForCorner(a2, 0.0, v11, a3);
  v33 = v19;
  v34 = v18;
  v20 = _interiorPointForCorner(a2, 0.0, v12, a3);
  v31 = v21;
  v32 = v20;
  v22 = _interiorPointForCorner(a2, 0.0, v13, a3);
  v24 = v23;
  v25 = _interiorPointForCorner(a2, v9, v9, a3);
  v27 = v26;
  v28 = v9 * 0.980263;
  v29 = __sincos_stret(v8 * 0.0174532925);
  CGContextAddCurveToPoint(a1, v36, v35, cp2x, v17, v25 + v28 * v29.__cosval, v27 + v28 * v29.__sinval);
  CGContextAddArc(a1, v25, v27, v28, v8 * 0.0174532925, (v8 + 50.0) * 0.0174532925, 0);

  CGContextAddCurveToPoint(a1, v34, v33, v32, v31, v22, v24);
}

void CNUIAddRoundedRectToContextInRect(CGContext *a1, double a2, CGFloat a3, double a4, double a5)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v10 = floor(a4 * 0.2);
  v11 = [MEMORY[0x1E696B098] valueWithCGSize:{v10, v10}];
  v21[0] = v11;
  v21[1] = v11;
  v21[2] = v11;
  v21[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v13 = [v12 objectAtIndex:0];
  [v13 QL_CGSizeValue];
  v15 = v14 * 1.528665;
  v16 = [v12 objectAtIndex:0];
  [v16 QL_CGSizeValue];
  v18 = v17 * 1.528665;

  v19 = a2 + a4;
  v20 = a3 + a5;
  CGContextMoveToPoint(a1, a2 + v15, a3);
  CGContextAddLineToPoint(a1, v19 - v15, a3);
  _addContinuousCornerToContextPath(a1, 2, v19, a3, v15);
  CGContextAddLineToPoint(a1, v19, v20 - v18);
  _addContinuousCornerToContextPath(a1, 8, v19, v20, v15);
  CGContextAddLineToPoint(a1, a2 + v15, v20);
  _addContinuousCornerToContextPath(a1, 4, a2, v20, v15);
  CGContextAddLineToPoint(a1, a2, a3 + v18);
  _addContinuousCornerToContextPath(a1, 1, a2, a3, v15);
}

void CNUIClipContextWithCircleInRect(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  CNUIAddCircleToContextInRect(a1, a2, a3, a4, a5);

  CGContextClip(a1);
}

void CNUIClipContextWithRoundedRectInRect(CGContext *a1, double a2, CGFloat a3, double a4, double a5)
{
  CNUIAddRoundedRectToContextInRect(a1, a2, a3, a4, a5);

  CGContextClip(a1);
}

CGImageRef CNUIRoundedRectImageCreate(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (a4 <= 0.0)
  {
    goto LABEL_7;
  }

  v8 = a2 * a4;
  v9 = a3 * a4;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CNUIBitmapContextCreate(v8, v9, DeviceRGB);
  if (!v11)
  {
    CGColorSpaceRelease(DeviceRGB);
LABEL_7:
    Image = 0;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  CNUIAddRoundedRectToContextInRect(v11, *MEMORY[0x1E695F058], v14, v8, v9);
  CGContextClip(v12);
  if (v7)
  {
    v7[2](v7, v12, DeviceRGB, v13, v14, v8, v9);
  }

  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
LABEL_8:

  return Image;
}

uint64_t CNUIEmptyPixelImageGet()
{
  if (CNUIEmptyPixelImageGet_onceToken != -1)
  {
    CNUIEmptyPixelImageGet_cold_1();
  }

  return CNUIEmptyPixelImageGet_emptyPixelImage;
}

void __CNUIEmptyPixelImageGet_block_invoke()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v1 = DeviceRGB;
    v2 = CNUIBitmapContextCreate(1, 1, DeviceRGB);
    CGColorSpaceRelease(v1);
    if (v2)
    {
      CNUIEmptyPixelImageGet_emptyPixelImage = CGBitmapContextCreateImage(v2);

      CGContextRelease(v2);
    }
  }
}

double __CNUISmartCeiling(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.00000011920929)
  {
    return v1;
  }

  return result;
}

double CNUIRectIntegralWithScale(double a1, double a2, double a3, double a4, double a5)
{
  if (CGRectIsNull(*&a1))
  {
    return a1;
  }

  if (a5 == 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't pass a 0 scale when rendering likenesses"];
  }

  if (a5 == 1.0)
  {
    v7 = floor(a1);
  }

  else
  {
    v7 = floor(a1 * a5) / a5;
  }

  if (a5 == 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't pass a 0 scale when rendering likenesses"];
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't pass a 0 scale when rendering likenesses"];
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't pass a 0 scale when rendering likenesses"];
  }

  return v7;
}

void CNUICalculateSubRectsForOverlappingLikenesses(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1)
  {
    v12 = 0.666666667;
    if (a1 == 1)
    {
      v12 = 1.0;
    }

    if (a6 >= a7)
    {
      v13 = a7;
    }

    else
    {
      v13 = a6;
    }

    v14 = v12 * v13;
    v15 = v13 - v12 * v13;
    if (a3)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13 - v12 * v13;
    }

    *a2 = CNUIRectIntegralWithScale(v16, 0.0, v14, v14, a8);
    *(a2 + 8) = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    if (a1 != 1)
    {
      if (a3)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0.0;
      }

      *(a2 + 32) = CNUIRectIntegralWithScale(v20, v15, v14, v14, a8);
      *(a2 + 40) = v21;
      *(a2 + 48) = v22;
      *(a2 + 56) = v23;
    }
  }
}

void CNUIApplyOutlineToContext(CGContext *a1, CGColor *a2, void (*a3)(CGContext *, double, double, double, double), double a4, double a5, double a6, double a7, CGFloat a8)
{
  if (a2)
  {
    CGContextSetLineWidth(a1, a8);
    CGContextSetStrokeColorWithColor(a1, a2);
    a3(a1, a4, a5, a6, a7);

    CGContextStrokePath(a1);
  }
}

void CNUIClipPathInRect(CGContext *a1, void (*a2)(void))
{
  a2();

  CGContextClip(a1);
}

void CNUIDrawImagesInRects(CGContextRef c, CGColor *a2, uint64_t a3, CGImageRef *a4, CGRect *a5, void (*a6)(CGContext *, double, double, double, double), CGFloat a7, CGFloat a8)
{
  if (a3)
  {
    if (a3 != 1)
    {
      CGContextSaveGState(c);
      x = a5[1].origin.x;
      y = a5[1].origin.y;
      width = a5[1].size.width;
      height = a5[1].size.height;
      CGAffineTransformMakeScale(&v39, a7, a7);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = CGRectApplyAffineTransform(v40, &v39);
      v19 = v41.origin.x;
      v20 = v41.origin.y;
      v21 = v41.size.width;
      v22 = v41.size.height;
      (a6)(c);
      CGContextClip(c);
      v42.origin.x = v19;
      v42.origin.y = v20;
      v42.size.width = v21;
      v42.size.height = v22;
      CGContextDrawImage(c, v42, a4[1]);
      CNUIApplyOutlineToContext(c, a2, a6, v19, v20, v21, v22, a8);
      CGContextRestoreGState(c);
      CGContextSaveGState(c);
      v43 = CGRectInset(*a5, -2.0, -2.0);
      v23 = v43.origin.x;
      v24 = v43.origin.y;
      v25 = v43.size.width;
      v26 = v43.size.height;
      CGAffineTransformMakeScale(&v39, a7, a7);
      v44.origin.x = v23;
      v44.origin.y = v24;
      v44.size.width = v25;
      v44.size.height = v26;
      v45 = CGRectApplyAffineTransform(v44, &v39);
      v27 = v45.origin.x;
      v28 = v45.origin.y;
      v29 = v45.size.width;
      v30 = v45.size.height;
      (a6)(c);
      CGContextClip(c);
      CGContextSetBlendMode(c, kCGBlendModeClear);
      v46.origin.x = v27;
      v46.origin.y = v28;
      v46.size.width = v29;
      v46.size.height = v30;
      CGContextFillRect(c, v46);
      CGContextRestoreGState(c);
    }

    CGContextSaveGState(c);
    v31 = a5->origin.x;
    v32 = a5->origin.y;
    v33 = a5->size.width;
    v34 = a5->size.height;
    CGAffineTransformMakeScale(&v39, a7, a7);
    v47.origin.x = v31;
    v47.origin.y = v32;
    v47.size.width = v33;
    v47.size.height = v34;
    v48 = CGRectApplyAffineTransform(v47, &v39);
    v35 = v48.origin.x;
    v36 = v48.origin.y;
    v37 = v48.size.width;
    v38 = v48.size.height;
    (a6)(c);
    CGContextClip(c);
    v49.origin.x = v35;
    v49.origin.y = v36;
    v49.size.width = v37;
    v49.size.height = v38;
    CGContextDrawImage(c, v49, *a4);
    CNUIApplyOutlineToContext(c, a2, a6, v35, v36, v37, v38, a8);
    CGContextRestoreGState(c);
  }
}

uint64_t __CNUIPRLikenessRenderingUtilitiesLog_block_invoke()
{
  CNUIPRLikenessRenderingUtilitiesLog_cn_once_object_1 = os_log_create("com.apple.contactsui", "CNUIPRLikenessRenderingUtilitiesLog");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_14()
{
  CNGuardOSLog_cn_once_object_0_14 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

Class __getPRSPosterConfigurationAttributesClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSPosterConfigurationAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterConfigurationAttributesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRSPosterConfigurationAttributesClass_block_invoke_cold_1();
    return PosterBoardServicesLibrary();
  }

  return result;
}

uint64_t PosterBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E95B8;
    v5 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PosterBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPRPosterConfiguredPropertiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E95D0;
    v6 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PosterKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRPosterConfiguredProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterConfiguredPropertiesClass_block_invoke_cold_1();
  }

  getPRPosterConfiguredPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPRSPosterRoleIncomingCallSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardServicesLibrary();
  result = dlsym(v2, "PRSPosterRoleIncomingCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRSPosterRoleIncomingCallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISPosterConfigurationFinalizerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E95E8;
    v6 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PosterBoardUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRUISPosterConfigurationFinalizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterConfigurationFinalizerClass_block_invoke_cold_1();
  }

  getPRUISPosterConfigurationFinalizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A32555FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A3255870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUCallProviderManagerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9748;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary_4)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TUCallProviderManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUCallProviderManagerClass_block_invoke_cold_1();
  }

  getTUCallProviderManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void sub_1A3258454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A32586CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initPRMonogram_0()
{
  if (LoadPersonaUI_loadPredicate_0 != -1)
  {
    initPRMonogram_cold_1_0();
  }

  result = objc_getClass("PRMonogram");
  classPRMonogram_0 = result;
  getPRMonogramClass_0 = PRMonogramFunction_0;
  return result;
}

void __LoadPersonaUI_block_invoke_0()
{
  LoadPersonaUI_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/PersonaUI.framework/PersonaUI", 1);
  if (!LoadPersonaUI_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPersonaUI_block_invoke_cold_1_0();
  }
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1A325B04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRSPosterArchiverClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterArchiverClass_softClass;
  v7 = getPRSPosterArchiverClass_softClass;
  if (!getPRSPosterArchiverClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterArchiverClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRSPosterArchiverClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A325B1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325B864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325C200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISPosterEditingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterEditingViewControllerClass_softClass;
  v7 = getPRUISPosterEditingViewControllerClass_softClass;
  if (!getPRUISPosterEditingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterEditingViewControllerClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRUISPosterEditingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A325C4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISPosterRenderingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterRenderingViewControllerClass_softClass;
  v7 = getPRUISPosterRenderingViewControllerClass_softClass;
  if (!getPRUISPosterRenderingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterRenderingViewControllerClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRUISPosterRenderingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A325CA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTPIncomingCallMetricsProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTPIncomingCallMetricsProviderClass_softClass;
  v7 = getTPIncomingCallMetricsProviderClass_softClass;
  if (!getTPIncomingCallMetricsProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTPIncomingCallMetricsProviderClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getTPIncomingCallMetricsProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A325D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325D6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CNUIPFFileProtectionNoneAttributes()
{
  if (CNUIPFFileProtectionNoneAttributes_onceToken != -1)
  {
    CNUIPFFileProtectionNoneAttributes_cold_1();
  }

  v1 = CNUIPFFileProtectionNoneAttributes___sharedInstance;

  return v1;
}

void __CNUIPFFileProtectionNoneAttributes_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A3A0];
  v4[0] = *MEMORY[0x1E696A370];
  v4[1] = v0;
  v1 = *MEMORY[0x1E696A3A8];
  v5[0] = &unk_1F1645D90;
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = CNUIPFFileProtectionNoneAttributes___sharedInstance;
  CNUIPFFileProtectionNoneAttributes___sharedInstance = v2;
}

void sub_1A325E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325E1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325F2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A325F6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSMutablePosterConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_0();
  result = objc_getClass("PRSMutablePosterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSMutablePosterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRSMutablePosterConfigurationClass_block_invoke_cold_1();
    return PosterBoardServicesLibrary_0();
  }

  return result;
}

uint64_t PosterBoardServicesLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E9A08;
    v5 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = PosterBoardServicesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getPRSPosterRoleIncomingCallSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = PosterBoardServicesLibrary_0();
  result = dlsym(v2, "PRSPosterRoleIncomingCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRSPosterRoleIncomingCallSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRSPosterConfigurationAttributesClass_block_invoke_0(uint64_t a1)
{
  PosterBoardServicesLibrary_0();
  result = objc_getClass("PRSPosterConfigurationAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterConfigurationAttributesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRSPosterConfigurationAttributesClass_block_invoke_cold_1();
    return __getPRSPosterArchiverClass_block_invoke(v3);
  }

  return result;
}

Class __getPRSPosterArchiverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_0();
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterArchiverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRSPosterArchiverClass_block_invoke_cold_1();
    return __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISIncomingCallPosterContextNameVariations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallPosterContextNameVariationsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke_cold_1();
    return PosterBoardUIServicesLibrary();
  }

  return result;
}

uint64_t PosterBoardUIServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardUIServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E9A20;
    v5 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = PosterBoardUIServicesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPRUISIncomingCallPosterContextClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISIncomingCallPosterContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallPosterContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISIncomingCallPosterContextClass_block_invoke_cold_1();
    return __getPRUISPosterConfigurationUtilitiesClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterConfigurationUtilitiesClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterConfigurationUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterConfigurationUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterConfigurationUtilitiesClass_block_invoke_cold_1();
    return __getPRUISPosterEditingViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterEditingViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterEditingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterEditingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterEditingViewControllerClass_block_invoke_cold_1();
    return __getPRUISPosterRenderingViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterRenderingViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterRenderingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterRenderingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterRenderingViewControllerClass_block_invoke_cold_1();
    return __getTPIncomingCallMetricsProviderClass_block_invoke(v3);
  }

  return result;
}

Class __getTPIncomingCallMetricsProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9A38;
    v6 = 0;
    TelephonyUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TelephonyUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TPIncomingCallMetricsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTPIncomingCallMetricsProviderClass_block_invoke_cold_1();
  }

  getTPIncomingCallMetricsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPREditorColorPaletteClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76E9A50;
    v6 = 0;
    PosterKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (PosterKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PREditorColorPalette");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPREditorColorPaletteClass_block_invoke_cold_1();
  }

  getPREditorColorPaletteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPRUISPosterSnapshotSQLiteCacheClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterSnapshotSQLiteCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotSQLiteCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterSnapshotSQLiteCacheClass_block_invoke_cold_1();
    return __getPRUISPosterSnapshotControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterSnapshotControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterSnapshotController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterSnapshotControllerClass_block_invoke_cold_1();
    return __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISIncomingCallSnapshotDefinition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallSnapshotDefinitionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke_cold_1();
    return __getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterAppearanceObservingAttachmentProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke_cold_1();
    return __getPRUISMutablePosterSnapshotDescriptorClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISMutablePosterSnapshotDescriptorClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISMutablePosterSnapshotDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISMutablePosterSnapshotDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISMutablePosterSnapshotDescriptorClass_block_invoke_cold_1();
    return __getPRUISPosterSnapshotRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterSnapshotRequestClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterSnapshotRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterSnapshotRequestClass_block_invoke_cold_1();
    return __getPRUISPosterAttachmentConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getPRUISPosterAttachmentConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterAttachmentConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterAttachmentConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPRUISPosterAttachmentConfigurationClass_block_invoke_cold_1();
    return [(CNUIPRLikenessPlaceholderProvider *)v3 imageNameForDiameter:v4, v5];
  }

  return result;
}

uint64_t __CNGuardOSLog_block_invoke_15()
{
  CNGuardOSLog_cn_once_object_0_15 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A32636BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTAvatarFetchRequestClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarFetchRequestClass_softClass_0;
  v7 = getAVTAvatarFetchRequestClass_softClass_0;
  if (!getAVTAvatarFetchRequestClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarFetchRequestClass_block_invoke_0;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTAvatarFetchRequestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A326379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVTCombinedPickerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTCombinedPickerViewControllerClass_softClass;
  v7 = getAVTCombinedPickerViewControllerClass_softClass;
  if (!getAVTCombinedPickerViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTCombinedPickerViewControllerClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getAVTCombinedPickerViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A326387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarStoreClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTAvatarStoreClass_block_invoke_cold_1();
    AvatarUILibrary_1();
  }
}

void AvatarUILibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AvatarUILibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E76E9B20;
    v3 = 0;
    AvatarUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AvatarUILibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getAVTAvatarFetchRequestClass_block_invoke_0(uint64_t a1)
{
  AvatarUILibrary_1();
  result = objc_getClass("AVTAvatarFetchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarFetchRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVTAvatarFetchRequestClass_block_invoke_cold_1_0();
    return __getAVTCombinedPickerViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getAVTCombinedPickerViewControllerClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary_1();
  result = objc_getClass("AVTCombinedPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTCombinedPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVTCombinedPickerViewControllerClass_block_invoke_cold_1();
    return __37__CNUIUserActionListModel_emptyModel__block_invoke();
  }

  return result;
}

id getTPInComingCallUISnapshotViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTPInComingCallUISnapshotViewControllerClass_softClass;
  v7 = getTPInComingCallUISnapshotViewControllerClass_softClass;
  if (!getTPInComingCallUISnapshotViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTPInComingCallUISnapshotViewControllerClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getTPInComingCallUISnapshotViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}