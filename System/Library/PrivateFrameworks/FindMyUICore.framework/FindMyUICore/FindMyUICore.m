double sub_24AFD4A78(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AFD4AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24AFD4B30()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24B2D3714();
  }

  else
  {
    sub_24B2D35A4();
  }

  return sub_24B2D37B4();
}

uint64_t sub_24AFD4B98()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24B2D3714();
    sub_24B2D37B4();
    sub_24AFF1AB4();
  }

  else
  {
    sub_24B2D35A4();
    sub_24B2D37B4();
    sub_24AFF1B00();
  }

  return swift_getWitnessTable();
}

uint64_t sub_24AFD4C5C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B2D40C4();

    return sub_24B2D37B4();
  }

  else
  {
    sub_24B2D38C4();
    swift_getWitnessTable();
    sub_24B2D3FA4();
    sub_24B2D37B4();
    sub_24B2D5A84();
    swift_getWitnessTable();
    sub_24B2D38C4();
    swift_getWitnessTable();
    sub_24B2D3FA4();
    return sub_24B2D37B4();
  }
}

uint64_t sub_24AFD4DC0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B2D40C4();
    sub_24B2D37B4();
  }

  else
  {
    sub_24B2D38C4();
    swift_getWitnessTable();
    sub_24B2D3FA4();
    sub_24B2D37B4();
    sub_24B2D5A84();
    swift_getWitnessTable();
    sub_24B2D38C4();
    swift_getWitnessTable();
    sub_24B2D3FA4();
    sub_24B2D37B4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFD4FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for CompositeAppViewState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AFD50FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for CompositeAppViewState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncEmojiView.Info.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AsyncEmojiView.Info.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24AFD5274(uint64_t a1, int a2)
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

uint64_t sub_24AFD5294(uint64_t result, int a2, int a3)
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

uint64_t sub_24AFD52D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Friend();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24AFD5404(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Friend();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundGridView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundGridView(uint64_t result, int a2, int a3)
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

uint64_t sub_24AFD5598@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24AFD55E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ContentV0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFD564C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ContentV0(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFD56BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFD5778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFD5840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFD5880(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AFD5890(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AFD58A0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_24AFD593C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1704();
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

uint64_t sub_24AFD5A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1704();
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

uint64_t sub_24AFD5B10()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFD5B50()
{
  MEMORY[0x24C23D610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFD5B94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD5BE4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24B2D24A4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFD5C94(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_24B2D24A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFD5D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionsState();
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

uint64_t sub_24AFD5DA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for DirectionsState();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFD5E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D2504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFD5E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D2504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFD602C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFD6064()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD609C()
{
  v1 = sub_24B2D24A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(_s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v11 = sub_24B2D1704();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_24AFD622C()
{
  v1 = sub_24B2D24A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_24AFD6318()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFD63EC()
{
  v1 = sub_24B2D24A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFD64CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86A8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_24B2D2604();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[18];
  v8 = sub_24B2D5D64();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24AFD661C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFD66F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFD67D8()
{
  v1 = type metadata accessor for SessionFriend(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;
  v5 = sub_24B2D1704();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v1 + 24);
  v7 = sub_24B2D24A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v1 + 28);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v12, v2 | 7);
}

uint64_t sub_24AFD6998()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[19];
  v8 = sub_24B2D5D64();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24AFD6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1704();
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AFD6BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1704();
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

uint64_t sub_24AFD6C9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFD6CE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFD6D64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFD6E20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFD6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AFD6FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24AFD7124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E8);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFD72E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8930) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8938);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFD749C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8980) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8988);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFD7660()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFD7698()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD76DC()
{
  v1 = type metadata accessor for CompositeAppViewInitialInfo();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CompositeAppViewState(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
    v9 = v7 + v8[6];

    v10 = type metadata accessor for Friend();
    (*(v6 + 8))(v9 + *(v10 + 20), v5);

    v11 = v8[11];
    v12 = sub_24B2D24A4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFD7A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFD7AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFD7B34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  sub_24B039184(&qword_27EFC8AF0, &qword_27EFC8AD8);
  sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFD7C24()
{
  sub_24B076874();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DA4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  swift_getOpaqueTypeConformance2();
  sub_24B2D4DA4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  sub_24B2D4DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC93C0);
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  sub_24B2D37B4();
  sub_24B2D3EE4();
  swift_getTupleTypeMetadata3();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D3484();
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFD7FC8@<X0>(_BYTE *a1@<X8>)
{
  sub_24B07A6C4();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFD8064(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC8C48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_24AFD8120(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC8C48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFD81D0()
{
  sub_24B2D37B4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4E14();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFD8334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24B2D50F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24AFD8458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_24B2D50F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24AFD85AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3C34();
  *a1 = result;
  return result;
}

uint64_t sub_24AFD8644()
{

  return MEMORY[0x2821FE8E8](v0, 83, 7);
}

uint64_t sub_24AFD86CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24AFD8750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24AFD87D8()
{
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  swift_getWitnessTable();
  sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100);
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D5A84();
  sub_24B2D37B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BubbleMessageTemplate();
  return swift_getWitnessTable();
}

uint64_t sub_24AFD8BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFD8C14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFD8C5C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ShareMenu() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[12], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFD8D64()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ShareMenu() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;

  (*(*(v1 - 8) + 8))(v6 + v2[12], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFD8E78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD8EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9490);
  sub_24B039184(&qword_27EFC9498, &qword_27EFC9490);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94A0);
  swift_getOpaqueTypeConformance2();
  sub_24B08880C();
  sub_24B2D44D4();
  return swift_getWitnessTable();
}

uint64_t sub_24AFD8FDC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for DebugViewWithActorInit() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 40) & ~v3;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v5, 1, v1))
  {
    (*(v6 + 8))(v0 + v5, v1);
  }

  type metadata accessor for DebugViewWithActorInit.ContentState();
  sub_24B2D4D04();

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_24AFD9158()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94F8);
  sub_24B2D3EE4();
  sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
  swift_getWitnessTable();
  sub_24B2D4E14();
  sub_24B2D35A4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  sub_24B091168(&qword_27EFC7890, MEMORY[0x277CDD8B0]);
  return swift_getWitnessTable();
}

uint64_t sub_24AFD92C4()
{
  v1 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 56) & ~v2;
  sub_24B090790();
  if (*(v0 + 40) != 1)
  {
  }

  v5 = v0 + v4;

  v6 = v0 + v4 + v1[6];

  v7 = type metadata accessor for Friend();
  v8 = *(v7 + 20);
  v9 = sub_24B2D1704();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  v10 = v1[11];
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AFD94E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9608);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9628);
  sub_24B0907A0();
  sub_24B090FB4();
  sub_24B091008();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFD9594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD95CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFD9634()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850);
  sub_24B0928AC();
  sub_24B092A60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFD96CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DetailsAppView.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DetailsAppView.Style(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24AFD97F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DetailsAppView.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for DetailsAppView.Style(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_24AFD991C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CustomControlStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AFD99C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CustomControlStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFD9A6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    Action = type metadata accessor for LocateAction();
    v15 = *(*(Action - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, Action);
  }
}

uint64_t sub_24AFD9BF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    Action = type metadata accessor for LocateAction();
    v15 = *(*(Action - 8) + 56);
    v16 = a1 + a4[11];

    return v15(v16, a2, a2, Action);
  }

  return result;
}

uint64_t sub_24AFD9D9C()
{
  v1 = type metadata accessor for DirectionsState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 24);
  v7 = sub_24B2D24A4();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFD9E78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFD9EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9918);
  sub_24B09986C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFD9F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailsAppView.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AFDA084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailsAppView.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24AFDA1B4()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AFDA21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
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
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AFDA2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFDA3B0(uint64_t a1, uint64_t a2, int *a3)
{
  Action = type metadata accessor for LocateAction();
  v7 = *(Action - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = Action;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24AFDA4E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for LocateAction();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_24AFDA618()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9BC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9B80);
  sub_24B0A2FD0();
  swift_getOpaqueTypeConformance2();
  sub_24B039184(&qword_27EFC9BC8, &qword_27EFC9BC0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDA7A0()
{
  v1 = type metadata accessor for DirectionsState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 24);
  v7 = sub_24B2D24A4();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFDA87C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDA900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9D38);
  sub_24B0A4D50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDA994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustomControlStyle(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24AFDAA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CustomControlStyle(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24AFDAA90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for QuickSendActionsModule.Style(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFDAB3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuickSendActionsModule.Style(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFDABE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9FB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
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

uint64_t sub_24AFDAD74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
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

uint64_t sub_24AFDAE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDAEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFDAF18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA068);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA060);
  sub_24B039184(&qword_27EFCA0A8, &qword_27EFCA060);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24B0A93BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CustomControlStyle(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24AFDB110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CustomControlStyle(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24AFDB18C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for QuickSendAppView.Style(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFDB238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuickSendAppView.Style(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFDB2EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for CustomControlStyle(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFDB398(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CustomControlStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFDB438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestReceivedMessageView.Style(0);
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

uint64_t sub_24AFDB4F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RequestReceivedMessageView.Style(0);
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

uint64_t sub_24AFDB5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDB678()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFDB6C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850);
  sub_24B0B23E4();
  sub_24B092A60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDB750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
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

uint64_t sub_24AFDB7BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFDB840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShareReceivedMessageView.State.Active.Location(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    Action = type metadata accessor for LocateAction();
    v12 = *(Action - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = Action;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24AFDB948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ShareReceivedMessageView.State.Active.Location(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LocateAction();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFDBA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation();
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

uint64_t sub_24AFDBABC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Annotation();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFDBB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ShareReceivedMessageView.State(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFDBC4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Friend();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ShareReceivedMessageView.State(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFDBD68()
{
  v1 = type metadata accessor for ShareReceivedMessageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v51 = (v3 + v4 + v7) & ~v7;
  v9 = v0 + v3;

  v10 = type metadata accessor for Friend();
  v11 = *(v10 + 20);
  v12 = sub_24B2D1704();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  v13 = v9 + *(v1 + 20);
  if (!(*(v6 + 48))(v13, 3, v5))
  {
    v50 = v8;
    v14 = type metadata accessor for Annotation();
    if (!(*(*(v14 - 1) + 48))(v13, 2, v14))
    {
      v49 = v0;

      v15 = v14[7];
      v16 = sub_24B2D24A4();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }

      v18 = v13 + v14[9];
      type metadata accessor for PlatterWithIcon.Icon(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v0 = v49;
        if (*(v18 + 8))
        {
        }
      }

      else
      {
        v0 = v49;
        if (EnumCaseMultiPayload == 1)
        {
        }

        else if (!EnumCaseMultiPayload)
        {
          v20 = sub_24B2D1494();
          v21 = *(v20 - 8);
          v48 = v20;
          if (!(*(v21 + 48))(v18, 1))
          {
            (*(v21 + 8))(v18, v48);
          }
        }
      }

      v22 = v14[10];
      v23 = sub_24B2D1BB4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(v13 + v22, 1, v23))
      {
        (*(v24 + 8))(v13 + v22, v23);
      }
    }

    v25 = v13 + *(v5 + 20);
    v26 = type metadata accessor for DirectionsState();
    v8 = v50;
    if (!(*(*(v26 - 8) + 48))(v25, 2, v26))
    {
      v27 = *(v26 + 24);
      v28 = sub_24B2D24A4();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
    }
  }

  v29 = v51;
  v30 = v0 + v51;
  v31 = type metadata accessor for Annotation();
  if (!(*(*(v31 - 1) + 48))(v0 + v51, 2, v31))
  {
    v32 = v8;

    v33 = v31[7];
    v34 = sub_24B2D24A4();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v30 + v33, 1, v34))
    {
      (*(v35 + 8))(v30 + v33, v34);
    }

    v36 = v30 + v31[9];
    type metadata accessor for PlatterWithIcon.Icon(0);
    v37 = swift_getEnumCaseMultiPayload();
    switch(v37)
    {
      case 2:
        if (*(v36 + 8))
        {
        }

        break;
      case 1:

        break;
      case 0:
        v38 = sub_24B2D1494();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v36, 1, v38))
        {
          (*(v39 + 8))(v36, v38);
        }

        break;
    }

    v40 = v31[10];
    v41 = sub_24B2D1BB4();
    v42 = *(v41 - 8);
    v8 = v32;
    v29 = v51;
    if (!(*(v42 + 48))(v30 + v40, 1, v41))
    {
      (*(v42 + 8))(v30 + v40, v41);
    }
  }

  v43 = v30 + *(v5 + 20);
  v44 = type metadata accessor for DirectionsState();
  if (!(*(*(v44 - 8) + 48))(v43, 2, v44))
  {
    v45 = *(v44 + 24);
    v46 = sub_24B2D24A4();
    (*(*(v46 - 8) + 8))(v43 + v45, v46);
  }

  return MEMORY[0x2821FE8E8](v0, v29 + v8, v2 | v7 | 7);
}

uint64_t sub_24AFDC560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustomControlStyle(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24AFDC5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CustomControlStyle(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24AFDC65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Action = type metadata accessor for LocateAction();
  v7 = *(Action - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = Action;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24AFDC768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  Action = type metadata accessor for LocateAction();
  v9 = *(Action - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = Action;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFDC878()
{
  v1 = type metadata accessor for ShareReceivedMessageViewActionsModule(0);
  v27 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = (v27 + 16) & ~v27;
  v28 = v0;
  v2 = v0 + v26;
  v3 = type metadata accessor for DirectionsState();
  if (!(*(*(v3 - 8) + 48))(v0 + v26, 2, v3))
  {
    v4 = *(v3 + 24);
    v5 = sub_24B2D24A4();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  v6 = v2 + *(v1 + 24);
  v7 = type metadata accessor for ShareReceivedMessageViewActionsModule.Style(0);
  v8 = v6 + v7[5];
  __swift_destroy_boxed_opaque_existential_0(v8);

  v9 = type metadata accessor for CustomControlStyle(0);
  v10 = v9[6];
  v11 = sub_24B2D50F4();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  v13 = v8 + v9[7];
  if (*(v13 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v14 = v9[8];
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24B2D3364();
    (*(*(v15 - 8) + 8))(v8 + v14, v15);
  }

  v16 = v6 + v7[6];
  __swift_destroy_boxed_opaque_existential_0(v16);

  v12(v16 + v9[6], v11);
  v17 = v16 + v9[7];
  if (*(v17 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  v18 = v9[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24B2D3364();
    (*(*(v19 - 8) + 8))(v16 + v18, v19);
  }

  v20 = v6 + v7[7];
  __swift_destroy_boxed_opaque_existential_0(v20);

  v12(v20 + v9[6], v11);
  v21 = v20 + v9[7];
  if (*(v21 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v22 = v9[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B2D3364();
    (*(*(v23 - 8) + 8))(v20 + v22, v23);
  }

  return MEMORY[0x2821FE8E8](v28, v26 + v25, v27 | 7);
}

uint64_t sub_24AFDCC74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDCCAC()
{
  v1 = type metadata accessor for DirectionsState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 24);
  v7 = sub_24B2D24A4();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFDCD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShareSentMessageView.ShareState(0);
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

uint64_t sub_24AFDCE54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShareSentMessageView.ShareState(0);
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

uint64_t sub_24AFDCF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFDD028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA6D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFDD140()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA728);
  sub_24B0BF340();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDD274()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFDD2E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFDD324@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_24AFDD3DC()
{
  MEMORY[0x24C23D610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFDD418()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_24AFDD48C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD4C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24B0CA0B4(v1, v2);
}

uint64_t sub_24AFDD514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD558()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD5CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24B0CCB98(v1, v2);
}

uint64_t sub_24AFDD618()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD658()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFDD6C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24B0CF118(v1, v2);
}

uint64_t sub_24AFDD714()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFDD750(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24B0D18BC(v1, v2);
}

uint64_t sub_24AFDD7D0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFDD824()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AFDD860()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24AFDD8EC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24AFDD924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDD994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFDDA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D4F84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFDDAC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D4F84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFDDB7C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_24AFDDC50(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_24AFDDD34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFDDE04@<X0>(void *a1@<X8>)
{
  sub_24B0E5E60();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFDDE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1D74();
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

uint64_t sub_24AFDDF18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1D74();
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

uint64_t sub_24AFDDFD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D24A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_24B2D2274();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = sub_24B2D2464();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_24AFDE194(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B2D24A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_24B2D2274();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_24B2D2464();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24AFDE358()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24AFDE3A8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AFDE3EC@<X0>(void *a1@<X8>)
{
  sub_24B0EC868();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFDE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1D34();
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AFDE50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1D34();
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

uint64_t sub_24AFDE5C4()
{
  v1 = *(v0 + 16);
  v2 = sub_24B2D5644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (type metadata accessor for AlertInfo.ActionInfo() - 8);
  v8 = *(*v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*v7 + 64);
  v11 = v4 | v8;
  (*(v3 + 8))(v0 + v5, v2);

  (*(*(v1 - 8) + 8))(v0 + v9 + v7[10], v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AFDE774@<X0>(void *a1@<X8>)
{
  result = sub_24B2D3A14();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFDE7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDE810(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Icon(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8]);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4B0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24AFDE9A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Icon(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24AFDEB38()
{
  v1 = type metadata accessor for AnnotationPin();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  type metadata accessor for Icon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = sub_24B2D1D74();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_12;
      }

      v7 = sub_24B2D1D34();
    }

    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v8 = sub_24B2D1494();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

LABEL_12:
  v10 = v1[7];
  v11 = sub_24B2D1BB4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v5 + v1[8];

  if (*(v13 + 4))
  {
  }

  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24B2D3354();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  sub_24AFEFDB8(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFDEE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFDEEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFDEF18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFDEF50()
{
  v1 = *(type metadata accessor for AsyncButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24B2D32E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFDF0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFDF17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFDF240()
{
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCB598);
  sub_24B2D37B4();
  swift_getWitnessTable();
  sub_24B039184(qword_27EFCB5A0, &qword_27EFCB598);
  swift_getWitnessTable();
  sub_24B2D4D74();
  sub_24B2D37B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFDF390()
{
  v1 = *(type metadata accessor for AsyncButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_24B2D32E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFDF4FC()
{
  v1 = *(type metadata accessor for AsyncButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_24B2D32E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AFDF67C@<X0>(void *a1@<X8>)
{
  result = sub_24B2D3A24();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFDF6D0()
{

  sub_24AFEFDB8(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2821FE8E8](v0, 161, 7);
}

uint64_t sub_24AFDF73C()
{
  sub_24B0F9D9C();
  sub_24B0F9DF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFDF7A4()
{
  swift_unknownObjectRelease();

  sub_24AFEFDB8(*(v0 + 168), *(v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 177, 7);
}

uint64_t sub_24AFDF848()
{
  type metadata accessor for BadgeViewModifier();
  sub_24B2D37B4();
  sub_24B0FE820();
  return swift_getWitnessTable();
}

uint64_t sub_24AFDF8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AFDF988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_24AFDFAC0()
{
  sub_24B2D37B4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFDFB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D24A4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AFDFC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D24A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_24AFDFD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D6264();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFDFD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D6264();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFDFE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D32E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFDFF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24B2D32E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE0058()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24AFE00A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAC8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
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

uint64_t sub_24AFE01DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAC8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFE0304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFE03B4()
{
  v1 = sub_24B2D4284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE044C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFE04B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBBF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBBF0);
  sub_24B2D3D14();
  sub_24B107B30();
  sub_24B107DEC(&qword_27EFCBC60, MEMORY[0x277CDDE78]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE05A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B2D3B84();
  *a1 = result;
  return result;
}

uint64_t sub_24AFE05FC@<X0>(_BYTE *a1@<X8>)
{
  sub_24B10D71C();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFE0698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B2D3BF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AFE0714()
{
  sub_24B10E0EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_24AFEFDB8(*(v0 + 112), *(v0 + 120));
  sub_24AFEFDB8(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_24AFE0798()
{
  swift_unknownObjectRelease();

  sub_24B10E0EC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  sub_24AFEFDB8(*(v0 + 144), *(v0 + 152));
  sub_24AFEFDB8(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_24AFE0824()
{
  sub_24B10E0EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_24AFEFDB8(*(v0 + 112), *(v0 + 120));
  sub_24AFEFDB8(*(v0 + 128), *(v0 + 136));
  sub_24B10D214();

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_24AFE08BC()
{
  swift_unknownObjectRelease();
  sub_24B10D214();

  sub_24B10E0EC(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  sub_24AFEFDB8(*(v0 + 192), *(v0 + 200));
  sub_24AFEFDB8(*(v0 + 208), *(v0 + 216));

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_24AFE0968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE09E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE0A5C()
{
  v1 = *(type metadata accessor for IconAndPlatter(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for Icon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = sub_24B2D1D74();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_12;
      }

      v6 = sub_24B2D1D34();
    }

    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v7 = sub_24B2D1494();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFE0C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Icon(0);
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

uint64_t sub_24AFE0CD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Icon(0);
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

uint64_t sub_24AFE0DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE0E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB4B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE0F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE0F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE1030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFE10A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PinCollection.Style(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24AFE1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PinCollection.Style(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24AFE1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Icon(0);
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

uint64_t sub_24AFE124C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Icon(0);
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

uint64_t sub_24AFE1308@<X0>(void *a1@<X8>)
{
  result = sub_24B2D3B24();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFE1398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlatterWithIcon.Icon(0);
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

uint64_t sub_24AFE1454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlatterWithIcon.Icon(0);
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

uint64_t sub_24AFE1530()
{
  v1 = *(type metadata accessor for PulseAnimation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24B2D24A4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFE1660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_24AFE1738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_24AFE1804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D13C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B2D2274();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
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

uint64_t sub_24AFE191C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24B2D13C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24B2D2274();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AFE1A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C8);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AFE1B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_24AFE1C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3BA4();
  *a1 = result;
  return result;
}

uint64_t sub_24AFE1C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AFE1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1BB4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AFE1D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1BB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_24AFE1E40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA190);
  sub_24B121A20();
  sub_24B039184(&qword_27EFCA1A8, &qword_27EFCA190);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE1F08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC588);
  sub_24B2D3764();
  swift_getOpaqueTypeMetadata2();
  sub_24B039184(&qword_27EFCC590, &qword_27EFCC588);
  sub_24B1227B0(&qword_27EFCC598, MEMORY[0x277CDFA28]);
  sub_24B2D4EF4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24AFE2058()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC5A0);
  sub_24B2D3354();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC5A8);
  sub_24B2D37B4();
  sub_24B039184(&qword_27EFCC5B0, &qword_27EFCC5A0);
  sub_24B1227B0(&qword_27EFCC5B8, MEMORY[0x277CDF3E0]);
  sub_24B2D4EF4();
  sub_24B039184(&qword_27EFCC5C0, &qword_27EFCC5A8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFE21EC()
{
  sub_24B2D38F4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  sub_24B2D3914();
  sub_24B2D37B4();
  sub_24B0A48B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B2D3F64();
  sub_24B2D37B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24AFE2330(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D2504();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24B2D24A4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24AFE24B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B2D2504();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24B2D24A4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24AFE2638()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE26C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1F24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_24AFE2858(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B2D1F24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24AFE29F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE2A2C()
{
  v1 = sub_24B2D1DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFE2B40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFE2BFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC868);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_24AFE2CFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFE2D30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE2D68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE2DA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE2E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ListItemInfo();
  sub_24B140EF0(&qword_27EFCC9D8);
  sub_24B140EF0(&qword_27EFCC9E0);
  sub_24B140EF0(&qword_27EFCC9E8);
  sub_24B140EF0(&qword_27EFCC9F0);
  sub_24B140EF0(&qword_27EFCC9F8);
  v6 = sub_24B2D19E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 <= 6)
  {
    v10 = 6;
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
  }

  v11 = v10 - 6;
  if (v9 >= 3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFE2FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ListItemInfo();
  sub_24B140EF0(&qword_27EFCC9D8);
  sub_24B140EF0(&qword_27EFCC9E0);
  sub_24B140EF0(&qword_27EFCC9E8);
  sub_24B140EF0(&qword_27EFCC9F0);
  sub_24B140EF0(&qword_27EFCC9F8);
  result = sub_24B2D19E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = a2 + 6;
  return result;
}

uint64_t sub_24AFE3164(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1F24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_24AFE32FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B2D1F24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24AFE3488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D55F4();
  *a1 = result;
  return result;
}

uint64_t sub_24AFE34B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1E14();
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

uint64_t sub_24AFE3520(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24B2D1E14();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFE35A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B2D1494();
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

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_24AFE3784(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B2D1794();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B2D1494();
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

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24AFE3994()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE39CC()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFE3AF4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFE3BB0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE3C5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_24B2D1494();
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

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_24AFE3E3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B2D1794();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24B2D1494();
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

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_24AFE4014(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1684();
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

uint64_t sub_24AFE4080(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24B2D1684();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 sub_24AFE4158(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFE418C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE41C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE41FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AFE4290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  v6 = sub_24B2D19E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 <= 6)
  {
    v10 = 6;
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
  }

  v11 = v10 - 6;
  if (v9 >= 3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AFE4434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  result = sub_24B2D19E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = a2 + 6;
  return result;
}

uint64_t sub_24AFE45CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PlatterWithIcon.Icon(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24AFE4750(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PlatterWithIcon.Icon(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_24AFE48D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Annotation();
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

    return (v10 + 1);
  }
}

uint64_t sub_24AFE4990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Annotation();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFE4A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFE4AB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD150);
  sub_24B15ADA4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnnotationV2();
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

    return (v10 + 1);
  }
}

uint64_t sub_24AFE4C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnnotationV2();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFE4CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD1D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD1C8);
  sub_24B15BA70();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE4D6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Icon(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_24B2D1C44();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_24AFE4F8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B2D1974();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Icon(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_24B2D1C44();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24AFE51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Annotation();
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

uint64_t sub_24AFE5268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Annotation();
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

uint64_t sub_24AFE5324()
{
  v1 = sub_24B2D24A4();
  v2 = *(v1 - 8);
  v20 = *(v2 + 80);
  v3 = (v20 + 32) & ~v20;
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for AnnotationView() - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v22 = v7;
  v9 = v0 + v7;

  v10 = type metadata accessor for Annotation();
  v11 = v10[7];
  if (!(*(v2 + 48))(v9 + v11, 1, v1))
  {
    v8(v9 + v11, v1);
  }

  v12 = v9 + v10[9];
  type metadata accessor for PlatterWithIcon.Icon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v12 + 8))
      {
      }

      break;
    case 1:

      break;
    case 0:
      v14 = sub_24B2D1494();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v12, 1, v14))
      {
        (*(v15 + 8))(v12, v14);
      }

      break;
  }

  v16 = v10[10];
  v17 = sub_24B2D1BB4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v9 + v16, 1, v17))
  {
    (*(v18 + 8))(v9 + v16, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v22 + v21, v20 | v6 | 7);
}

uint64_t sub_24AFE5688()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD250);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8450);
  sub_24B15EE80();
  sub_24B15EF70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE5728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnnotationV2();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 80);
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

uint64_t sub_24AFE57F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnnotationV2();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 80) = a2;
  }

  return result;
}

double sub_24AFE58B4@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_24AFE58C0(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_24AFE58CC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_24AFE58D8(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFE58E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B162744();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24AFE5958@<X0>(_BYTE *a1@<X8>)
{
  sub_24B162888();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24AFE59F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFE5AB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE5B60()
{
  v1 = (type metadata accessor for CustomMapFocusButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B2D3364();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFE5C90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AFE5D4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE5E04()
{
  v1 = (type metadata accessor for CustomMapStyleToggle(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B2D3364();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFE5F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD698);
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

uint64_t sub_24AFE6020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD698);
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

uint64_t sub_24AFE60E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD620);
  type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD618);
  sub_24B16AA28();
  sub_24B16ACB0();
  swift_getOpaqueTypeConformance2();
  sub_24B16AE5C(&qword_27EFCD668, type metadata accessor for CustomMapStyleToggle.MapStylePickerContainer);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE61EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B165990(v3 | *a1 | v2, a2);
}

uint64_t sub_24AFE6224()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6C8);
  sub_24B2D40A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD6C0);
  sub_24B16B2FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE62E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE6320(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24AFE63DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE648C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD768);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850);
  sub_24B16F3E8();
  sub_24B092A60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFE6538()
{
  v1 = type metadata accessor for InteractiveMap();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_24B2D3524();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v14 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v3 + *(v1 + 28);
  type metadata accessor for CustomMapCameraPosition();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_24B2D2DE4();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD760);

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v11 | 7);
}

uint64_t sub_24AFE676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B177DA8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24AFE68D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE690C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24AFE6A48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24AFE6B88()
{
  v1 = type metadata accessor for InteractiveMapV2();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8) + 32);
  v8 = sub_24B2D1974();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + v1[8];
  v11 = sub_24B2D2DE4();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);

  sub_24B177594(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 9));
  sub_24B177594(*(v5 + v1[15]), *(v5 + v1[15] + 8), *(v5 + v1[15] + 9));
  sub_24AFEFDB8(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24AFEFDB8(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFE6E0C(unsigned __int8 *a1)
{
  if (a1[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24B1655AC(v2 | *a1 | v1);
}

uint64_t sub_24AFE6ECC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24AFE6F0C(uint64_t a1)
{
  result = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE6F64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCDB48);
}

uint64_t sub_24AFE6FDC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE7024()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE7064()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFE70A0()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFE713C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE7174()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC18);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFE7330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s12ContactStateV7RequestVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFE742C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s12ContactStateV7RequestVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE7534(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE75A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE7618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE7650()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ETAProvider.ETAState.Request(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v11 = sub_24B2D24A4();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[7];
  v13 = sub_24B2D1C44();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v8 + v12, v13);
  v14(v0 + v8 + v6[8], v13);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_24AFE7840()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE7984(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for DataObservableStorage();
  return DataObservableStorage.isInitialized.setter(v1, v2);
}

__n128 sub_24AFE79D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_24AFE79E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 24);
  v7 = type metadata accessor for DataObservableStorage();
  v8 = *(*(v6 - 8) + 16);
  v9 = a1 + *(v7 + 48);

  return v8(a4, v9, v6);
}

uint64_t sub_24AFE7AC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE7B00()
{
  MEMORY[0x24C23D610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE7B38()
{
  v1 = sub_24B2D2504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE7BFC()
{
  v1 = sub_24B2D2504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE7CD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFE7D28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFE7DA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SubscriptionManagerStorage() + 36));
}

__n128 sub_24AFE7E28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFE7E34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SubscriptionManagerStorage() + 40));
}

uint64_t sub_24AFE7EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for SubscriptionManagerStorage();
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_24AFE7EFC(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SubscriptionManagerStorage();
  return SubscriptionManagerStorage.isPaused.setter(v1, v2);
}

uint64_t sub_24AFE7F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFE8004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D3184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFE80C8()
{
  v1 = sub_24B2D1DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE8194()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE81CC(uint64_t a1)
{
  result = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE8224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCC850);
}

uint64_t sub_24AFE829C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE82EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFE8324(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1DA4();
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

uint64_t sub_24AFE8390(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24B2D1DA4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFE8410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ItemsProvider.InfoState.Request(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ItemsProvider.InfoState.Result(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFE8500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemsProvider.InfoState.Request(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ItemsProvider.InfoState.Result(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE85FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE8668(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE86DC(uint64_t a1)
{
  result = sub_24B1E6414(&qword_27EFCE1D0, type metadata accessor for ItemsLocationsProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE8734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCE1B0);
}

uint64_t sub_24AFE87AC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE87FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE8874()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFE88DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ItemsLocationsProvider.LocationState.Request(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFE89CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemsLocationsProvider.LocationState.Request(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE8AF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFE8BB4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE8C60()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE8D2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE8D64(uint64_t a1)
{
  result = sub_24B1EF014(&qword_27EFCE350, type metadata accessor for PeopleProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE8DBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCC7E8);
}

uint64_t sub_24AFE8E34()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE8E84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFE8EBC()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE8F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE8FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1574();
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

uint64_t sub_24AFE9024(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24B2D1574();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFE90A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11PersonStateV7RequestVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s11PersonStateV6ResultOMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFE9194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s11PersonStateV7RequestVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s11PersonStateV6ResultOMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE9290(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE92FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE9370()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE93AC(uint64_t a1)
{
  result = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE9404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCC7D0);
}

uint64_t sub_24AFE9480()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFE94F8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFE9530()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFE95F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE962C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D1574();
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

uint64_t sub_24AFE96E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D1574();
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

uint64_t sub_24AFE979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PeopleLocationsProvider.LocationState.Request(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AFE988C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PeopleLocationsProvider.LocationState.Request(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AFE9988(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFE99F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFE9A64(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AFE9B20(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFE9BCC(uint64_t a1)
{
  result = sub_24B202C98(&qword_27EFCE528, type metadata accessor for UserLocationProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AFE9CBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE9CF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFE9D34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFE9D40(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_24AFE9D84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24B20338C;
  a2[1] = v5;
}

uint64_t sub_24AFE9DF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFE9E38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AFE9EB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFE9EE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFE9F3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24B204F50(v1, v2);
}

uint64_t sub_24AFEA094()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEA0E0()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEA1C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEA20C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B217338();
  *a1 = result;
  return result;
}

uint64_t sub_24AFEA238(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24AFEA3C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B2D1704();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24AFEA57C()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEA634()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEA66C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEA744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEA814()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEA854()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEA8DC()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFEAB0C()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEAB94()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEAC90()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEAD54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEAD8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEAE64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFEAE70(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_24AFEAEB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_24B2F2100;
  a2[1] = v5;
}

uint64_t sub_24AFEAF24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEAF60()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEAFE8()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE798) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE7A0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFEB258()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEB2E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEB348()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEB380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFEB464()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEB52C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFEB538(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_24AFEB57C()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEB604()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFEB7D0()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEB858@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SettingsSubscriptionManagerStorage() + 36));
}

__n128 sub_24AFEB8E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFEB8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SettingsSubscriptionManagerStorage() + 40));
}

uint64_t sub_24AFEB974@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for SettingsSubscriptionManagerStorage();
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_24AFEB9B4(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SettingsSubscriptionManagerStorage();
  return SettingsSubscriptionManagerStorage.isPaused.setter(v1, v2);
}

uint64_t sub_24AFEBA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AFEBAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B2D3184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AFEBB88()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFEBC28()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFEBCEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEBD24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEBD5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFEBE80()
{
  v1 = *(type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_24B2D1704();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFEBF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFEBF78(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_24AFEBFBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_24B2F2B28;
  a2[1] = v5;
}

uint64_t sub_24AFEC02C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_24B2F2B08;
  a2[1] = v5;
}

uint64_t sub_24AFEC09C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24B23DC18;
  a2[1] = v5;
}

uint64_t sub_24AFEC10C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEC158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA48) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA58);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFEC314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
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

uint64_t sub_24AFEC380(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AFEC400(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AFEC46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AFEC4DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
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

  else
  {
    v14 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24AFEC660(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24AFEC7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24AFEC918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24AFECA5C()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFECAE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFECB4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFECB84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFECC68()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFECD34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFECD40(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_24AFECD84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24AFECD90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_24AFECDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBA0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBB0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24AFECFA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC68);
  sub_24B258B64();
  sub_24B258D3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFED08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFED0FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B2D3B84();
  *a1 = result;
  return result;
}

uint64_t sub_24AFED150()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFED198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B25D038();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AFED1CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24AFED22C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFED27C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFED2B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AFED348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8018);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_24AFED3F4()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AFED484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF70);
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

uint64_t sub_24AFED55C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF70);
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

uint64_t sub_24AFED628()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFED6A8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24AFED710(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24AFED84C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24AFED988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24AFEDB14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24AFEDCA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEF90);
  sub_24B26BFEC(&qword_27EFCEFC0, &qword_27EFCEF90, &unk_24B2F40B8, sub_24B26BFBC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFEDD3C()
{
  v1 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v29 = *(*(v1 - 8) + 80);
  v2 = (v29 + 16) & ~v29;
  v27 = *(*(v1 - 8) + 64);
  v3 = *(type metadata accessor for PersonLocateAction() - 8);
  v31 = *(v3 + 80);
  v28 = *(v3 + 64);
  v30 = v0;
  v4 = v0 + v2;

  v5 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v6 = v5[5];
  v7 = sub_24B2D2214();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[7];
  v12 = sub_24B2D1954();
  if (!(*(*(v12 - 8) + 48))(v4 + v11, 1, v12))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v8 + 8))(v4 + v11, v7);
    }

    else
    {
      v13 = sub_24B2D13C4();
      (*(*(v13 - 8) + 8))(v4 + v11, v13);
    }
  }

  v14 = v5[8];
  if (!v9(v4 + v14, 1, v7))
  {
    (*(v8 + 8))(v4 + v14, v7);
  }

  v15 = v5[9];
  if (!v9(v4 + v15, 1, v7))
  {
    (*(v8 + 8))(v4 + v15, v7);
  }

  v16 = v4 + *(v1 + 28);

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8) + 32);
  v18 = sub_24B2D1974();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v16 + v17, 1, v18))
  {
    (*(v19 + 8))(v16 + v17, v18);
  }

  v20 = (v2 + v27 + v31) & ~v31;

  v21 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24B2D4034();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v4 + v21, 1, v22))
    {
      (*(v23 + 8))(v4 + v21, v22);
    }
  }

  else
  {
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_24B2D1F54();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v30 + v20, 1, v24))
    {
      (*(v25 + 8))(v30 + v20, v24);
    }
  }

  return MEMORY[0x2821FE8E8](v30, v20 + v28, v29 | v31 | 7);
}

uint64_t sub_24AFEE2B0()
{
  v1 = *(type metadata accessor for PersonLocateAction() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24B2D1F54();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24AFEE4DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEE514()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_24AFEE5AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFEE5BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEE5F8()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFEE6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
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

uint64_t sub_24AFEE7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
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

uint64_t sub_24AFEE8B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEE918()
{
  v1 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AFEEA30@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B2D3C14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24AFEEB64()
{
  v1 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for PersonLocateAction() - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B2D1F54();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v7, 1, v10))
    {
      (*(v11 + 8))(v0 + v7, v10);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24AFEED7C()
{
  v1 = *(type metadata accessor for PersonLocateAction() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24B2D1F54();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  v10 = (v3 + v4 + v6) & ~v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v10 + v7, v2 | v6 | 7);
}

uint64_t sub_24AFEEFA4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C23A3A0]();
  *a1 = result;
  return result;
}

uint64_t sub_24AFEEFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3A84();
  *a1 = result;
  return result;
}

uint64_t sub_24AFEF074(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[8]);
    if (v14 >= 2)
    {
      return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24AFEF218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8]) = a2 + 1;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

__n128 sub_24AFEF410(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AFEF460()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEF588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEF5C4()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AFEF680(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24AFEF73C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFEF810(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AFEF8CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AFEF9E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEFA80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFEFAB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEFAF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AFEFB2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AFEFBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEC68);
  sub_24B2C45A8();
  sub_24B258D3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24AFEFC50()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AFEFCA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AFEFCF8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AFEFDB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24AFEFFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CompositeAppViewInitialInfo.groupName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompositeAppViewInitialInfo() + 20));

  return v1;
}

uint64_t type metadata accessor for CompositeAppViewInitialInfo()
{
  result = qword_27EFC78E8;
  if (!qword_27EFC78E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CompositeAppViewInitialInfo.friends.getter()
{
  type metadata accessor for CompositeAppViewInitialInfo();
}

uint64_t CompositeAppViewInitialInfo.init(callerHandle:groupName:friends:state:areFindMyFeaturesDisable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_24AFF026C(a1, a7);
  v13 = type metadata accessor for CompositeAppViewInitialInfo();
  v14 = (a7 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a7 + v13[6]) = a4;
  result = sub_24AFF2138(a5, a7 + v13[7], type metadata accessor for CompositeAppViewState);
  *(a7 + v13[8]) = a6;
  return result;
}

uint64_t sub_24AFF026C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AFF02DC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompositeAppViewInitialInfo();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(v4 + 24));
  if (*(v7 + 16) == 1)
  {
    v8 = type metadata accessor for Friend();
    v18 = *(v8 - 8);
    sub_24AFF2050(v7 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), a1, type metadata accessor for Friend);
    v9 = *(v18 + 56);

    return v9(a1, 0, 1, v8);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v11 = sub_24B2D3184();
    __swift_project_value_buffer(v11, qword_27EFE4418);
    sub_24AFF2050(v1, v6, type metadata accessor for CompositeAppViewInitialInfo);
    v12 = sub_24B2D3164();
    v13 = sub_24B2D5934();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7710, &v19);
      *(v14 + 12) = 2048;
      v16 = *(*&v6[*(v3 + 24)] + 16);
      sub_24AFF20B8(v6, type metadata accessor for CompositeAppViewInitialInfo);
      *(v14 + 14) = v16;
      _os_log_impl(&dword_24AFD2000, v12, v13, "CompositeAppViewInitialInfo: %s - count: %ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C23D530](v15, -1, -1);
      MEMORY[0x24C23D530](v14, -1, -1);
    }

    else
    {
      sub_24AFF20B8(v6, type metadata accessor for CompositeAppViewInitialInfo);
    }

    v17 = type metadata accessor for Friend();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_24AFF05EC()
{
  v1 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - v8;
  v9 = type metadata accessor for Friend();
  v56 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for CompositeAppViewInitialInfo();
  sub_24AFF2050(v0 + *(v18 + 28), v17, type metadata accessor for CompositeAppViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = MEMORY[0x277D84FA0];
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = *v17;
      v58 = MEMORY[0x277D84FA0];
      v34 = *(v0 + *(v18 + 24));
      v35 = sub_24AFF0E54(v34);
      sub_24B039F90(v35);
      v36 = sub_24AFF12D8(v34, 1);
      sub_24B039F90(v36);
      if ((v33 & 8) == 0 || *(v34 + 16) != 1)
      {
        return v58;
      }

      sub_24AFF2050(v34 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v14, type metadata accessor for Friend);
      swift_storeEnumTagMultiPayload();
      v37 = v57;
      sub_24B1ABC80(v57, v7);
      sub_24AFF20B8(v37, _s14descr285E46659O16SubscriptionDataOMa);
      v38 = sub_24AFF177C(v14);
      sub_24B039F90(v38);
      v39 = type metadata accessor for Friend;
      v40 = v14;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 1)
    {
      return result;
    }

    v21 = MEMORY[0x277D84FA0];
    v12 = v3;
    sub_24AFF2138(v17, v3, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    if (v3[v1[13]] == 1)
    {
      if (v3[v1[10] + 8] != 2)
      {
        if (v3[v1[8]])
        {
          v58 = v21;
          v47 = sub_24AFF0E54(*&v3[v1[7]]);
          sub_24B039F90(v47);
          swift_storeEnumTagMultiPayload();
          v48 = v57;
          sub_24B1ABC80(v57, v7);
          sub_24AFF20B8(v48, _s14descr285E46659O16SubscriptionDataOMa);
          if (v3[v1[9]] == 1)
          {
            swift_storeEnumTagMultiPayload();
            sub_24B1ABC80(v48, v7);
            sub_24AFF20B8(v48, _s14descr285E46659O16SubscriptionDataOMa);
          }

          goto LABEL_27;
        }

        v58 = v21;
        v49 = sub_24AFF0E54(*(v0 + *(v18 + 24)));
        sub_24B039F90(v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
        v50 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_24B2DE430;
        v52 = v1[6];
        sub_24AFF2050(&v3[v52], v51 + v50, type metadata accessor for Friend);
        v53 = sub_24AFF12D8(v51, 0);
        swift_setDeallocating();
        sub_24AFF20B8(v51 + v50, type metadata accessor for Friend);
        swift_deallocClassInstance();
        sub_24B039F90(v53);
        swift_storeEnumTagMultiPayload();
        v54 = v57;
        sub_24B1ABC80(v57, v7);
        sub_24AFF20B8(v54, _s14descr285E46659O16SubscriptionDataOMa);
        v26 = sub_24AFF177C(&v3[v52]);
LABEL_26:
        sub_24B039F90(v26);
LABEL_27:
        v32 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
LABEL_28:
        v39 = v32;
        v40 = v12;
LABEL_29:
        sub_24AFF20B8(v40, v39);
        return v58;
      }

      if ((v3[v1[8]] & 1) == 0)
      {
        v58 = v21;
        swift_storeEnumTagMultiPayload();
        v22 = v57;
        sub_24B1ABC80(v57, v7);
        sub_24AFF20B8(v22, _s14descr285E46659O16SubscriptionDataOMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
        v23 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_24B2DE430;
        sub_24AFF2050(&v3[v1[6]], v24 + v23, type metadata accessor for Friend);
        v25 = sub_24AFF0E54(v24);
        swift_setDeallocating();
        sub_24AFF20B8(v24 + v23, type metadata accessor for Friend);
        swift_deallocClassInstance();
        v26 = v25;
        goto LABEL_26;
      }
    }

    else
    {
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v42 = sub_24B2D3184();
      __swift_project_value_buffer(v42, qword_27EFE4418);
      v43 = sub_24B2D3164();
      v44 = sub_24B2D58F4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v58 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_24AFF321C(0x7069726373627573, 0xED0000736E6F6974, &v58);
        _os_log_impl(&dword_24AFD2000, v43, v44, "CompositeAppViewInitialInfo: %s - canShowExpensiveUIAndControls: false", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x24C23D530](v46, -1, -1);
        MEMORY[0x24C23D530](v45, -1, -1);
      }
    }

    sub_24AFF20B8(v12, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    return MEMORY[0x277D84FA0];
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      return result;
    }

    v58 = MEMORY[0x277D84FA0];
    v27 = *(v0 + *(v18 + 24));
    v28 = sub_24AFF0E54(v27);
    sub_24B039F90(v28);
    v29 = sub_24AFF12D8(v27, 1);
    sub_24B039F90(v29);
    if (*(v27 + 16) != 1)
    {
      return v58;
    }

    sub_24AFF2050(v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v12, type metadata accessor for Friend);
    swift_storeEnumTagMultiPayload();
    v30 = v57;
    sub_24B1ABC80(v57, v7);
    sub_24AFF20B8(v30, _s14descr285E46659O16SubscriptionDataOMa);
    v31 = sub_24AFF177C(v12);
    sub_24B039F90(v31);
    v32 = type metadata accessor for Friend;
    goto LABEL_28;
  }

  v58 = MEMORY[0x277D84FA0];
  v41 = sub_24AFF0E54(*(v0 + *(v18 + 24)));
  sub_24B039F90(v41);
  return v58;
}

uint64_t sub_24AFF0E54(uint64_t a1)
{
  v44 = sub_24B2D1704();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Friend();
  v8 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v42 = *(a1 + 16);
  if (v42)
  {
    v13 = 0;
    v46 = 0;
    v14 = *(v8 + 20);
    v38 = *(v8 + 24);
    v39 = v14;
    v15 = *(v9 + 80);
    v36 = *(v9 + 72);
    v37 = a1 + ((v15 + 32) & ~v15);
    v50 = v2 + 16;
    v16 = (v2 + 32);
    v35 = xmmword_24B2DE430;
    v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v2;
    do
    {
      v45 = v13;
      sub_24AFF2050(v37 + v36 * v13, v11, type metadata accessor for Friend);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v49 = *(v2 + 72);
      v18 = swift_allocObject();
      *(v18 + 16) = v35;
      v19 = *(v2 + 16);
      v20 = v19(v18 + v17, &v11[v39], v44);
      v21 = *&v11[v38];
      MEMORY[0x28223BE20](v20);
      *(&v35 - 2) = v22;

      v23 = v21;
      v24 = v46;
      v25 = sub_24B00DCB0(sub_24AFF2290, (&v35 - 2), v23);
      v46 = v24;
      v51 = v18;
      sub_24B0300DC(v25);
      v26 = v51;
      v27 = *(v51 + 16);
      if (v27)
      {
        v51 = v12;
        sub_24B0076B0(0, v27, 0);
        v12 = v51;
        v43 = v26;
        v28 = v26 + v17;
        v29 = v44;
        do
        {
          v30 = v48;
          v19(v48, v28, v29);
          (*v16)(v6, v30, v29);
          swift_storeEnumTagMultiPayload();
          v51 = v12;
          v32 = *(v12 + 16);
          v31 = *(v12 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_24B0076B0(v31 > 1, v32 + 1, 1);
            v29 = v44;
            v12 = v51;
          }

          *(v12 + 16) = v32 + 1;
          sub_24AFF2138(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, _s14descr285E46659O16SubscriptionDataOMa);
          v28 += v49;
          --v27;
        }

        while (v27);
      }

      v13 = v45 + 1;
      v11 = v40;
      sub_24AFF20B8(v40, type metadata accessor for Friend);
      sub_24B0300B0(v12);
      v2 = v41;
      v12 = MEMORY[0x277D84F90];
    }

    while (v13 != v42);
    v12 = v52;
  }

  v33 = sub_24B1CFFD0(v12);

  return v33;
}

uint64_t sub_24AFF12D8(uint64_t a1, char a2)
{
  v46 = sub_24B2D1704();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v51 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Friend();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v44 = *(a1 + 16);
  if (v44)
  {
    v15 = 0;
    v48 = 0;
    v16 = *(v10 + 20);
    v40 = *(v10 + 24);
    v41 = v16;
    v17 = *(v11 + 80);
    v38 = *(v11 + 72);
    v39 = a1 + ((v17 + 32) & ~v17);
    v53 = v4 + 16;
    v18 = (v4 + 32);
    v49 = a2 & 1;
    v37 = xmmword_24B2DE430;
    v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v4;
    do
    {
      v47 = v15;
      sub_24AFF2050(v39 + v38 * v15, v13, type metadata accessor for Friend);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v52 = *(v4 + 72);
      v20 = swift_allocObject();
      *(v20 + 16) = v37;
      v21 = *(v4 + 16);
      v22 = v21(v20 + v19, &v13[v41], v46);
      v23 = *&v13[v40];
      MEMORY[0x28223BE20](v22);
      *(&v37 - 2) = v24;

      v25 = v23;
      v26 = v48;
      v27 = sub_24B00DCB0(sub_24AFF2290, (&v37 - 2), v25);
      v48 = v26;
      v54 = v20;
      sub_24B0300DC(v27);
      v28 = v54;
      v29 = *(v54 + 16);
      if (v29)
      {
        v54 = v14;
        sub_24B0076B0(0, v29, 0);
        v14 = v54;
        v45 = v28;
        v30 = v28 + v19;
        v31 = v46;
        do
        {
          v32 = v51;
          v21(v51, v30, v31);
          (*v18)(v8, v32, v31);
          v8[*(_s14descr285E46659O16SubscriptionDataO9LocationsVMa(0) + 20)] = v49;
          swift_storeEnumTagMultiPayload();
          v54 = v14;
          v34 = *(v14 + 16);
          v33 = *(v14 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_24B0076B0(v33 > 1, v34 + 1, 1);
            v31 = v46;
            v14 = v54;
          }

          *(v14 + 16) = v34 + 1;
          sub_24AFF2138(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, _s14descr285E46659O16SubscriptionDataOMa);
          v30 += v52;
          --v29;
        }

        while (v29);
      }

      v15 = v47 + 1;
      v13 = v42;
      sub_24AFF20B8(v42, type metadata accessor for Friend);
      sub_24B0300B0(v14);
      v4 = v43;
      v14 = MEMORY[0x277D84F90];
    }

    while (v15 != v44);
    v14 = v55;
  }

  v35 = sub_24B1CFFD0(v14);

  return v35;
}