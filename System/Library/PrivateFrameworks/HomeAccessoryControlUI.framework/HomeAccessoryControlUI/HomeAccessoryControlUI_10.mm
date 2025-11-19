unint64_t sub_25242CE68()
{
  result = qword_27F4DC370;
  if (!qword_27F4DC370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC378);
    sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278);
    sub_25242C2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC370);
  }

  return result;
}

unint64_t sub_25242CF20()
{
  result = qword_27F4DC380;
  if (!qword_27F4DC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC388);
    sub_25242C43C();
    sub_25242C520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC380);
  }

  return result;
}

uint64_t sub_25242CFBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25242D018(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_25242D0E8()
{
  result = qword_27F4DC3B8;
  if (!qword_27F4DC3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC3A8);
    sub_252400FC8(&qword_27F4DC3C0, &qword_27F4DC3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC3B8);
  }

  return result;
}

unint64_t sub_25242D1F0()
{
  result = qword_27F4DC3F0;
  if (!qword_27F4DC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC3D0);
    sub_25242D27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC3F0);
  }

  return result;
}

unint64_t sub_25242D27C()
{
  result = qword_27F4DC3F8;
  if (!qword_27F4DC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC3C8);
    sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC3F8);
  }

  return result;
}

uint64_t sub_25242D364@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a1 = v3;
  return result;
}

uint64_t sub_25242D3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

unint64_t sub_25242D500()
{
  result = qword_27F4E15E0;
  if (!qword_27F4E15E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4E15E0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25242D574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25242D610(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242D66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25242D70C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242D768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25242D814()
{
  result = qword_27F4DC410;
  if (!qword_27F4DC410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC418);
    sub_25242D0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC410);
  }

  return result;
}

unint64_t sub_25242D898()
{
  result = qword_27F4DC420;
  if (!qword_27F4DC420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC428);
    sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0);
    sub_25242D1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC420);
  }

  return result;
}

unint64_t sub_25242DA00()
{
  result = qword_27F4DC448;
  if (!qword_27F4DC448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC438);
    sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC448);
  }

  return result;
}

unint64_t sub_25242DB20()
{
  result = qword_27F4DC468;
  if (!qword_27F4DC468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC458);
    sub_25242DBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC468);
  }

  return result;
}

unint64_t sub_25242DBAC()
{
  result = qword_27F4DC470;
  if (!qword_27F4DC470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC478);
    sub_25242DC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC470);
  }

  return result;
}

unint64_t sub_25242DC30()
{
  result = qword_27F4DC480;
  if (!qword_27F4DC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC488);
    sub_25242DCBC();
    sub_25242DEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC480);
  }

  return result;
}

unint64_t sub_25242DCBC()
{
  result = qword_27F4DC490;
  if (!qword_27F4DC490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC498);
    sub_25242DD48();
    sub_25242DE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC490);
  }

  return result;
}

unint64_t sub_25242DD48()
{
  result = qword_27F4DC4A0;
  if (!qword_27F4DC4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC4A8);
    sub_252400FC8(&qword_27F4DC4B0, &qword_27F4DC4B8);
    sub_252400FC8(&qword_27F4DBD28, &qword_27F4DBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC4A0);
  }

  return result;
}

unint64_t sub_25242DE2C()
{
  result = qword_27F4DC4C0;
  if (!qword_27F4DC4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC4C8);
    sub_25242DD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC4C0);
  }

  return result;
}

unint64_t sub_25242DEB0()
{
  result = qword_27F4DC4D0;
  if (!qword_27F4DC4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC4D8);
    sub_25242DD48();
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC4D0);
  }

  return result;
}

unint64_t sub_25242DF68()
{
  result = qword_27F4DC4E0;
  if (!qword_27F4DC4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC460);
    sub_25242DB20();
    sub_252400FC8(&qword_27F4DC4E8, &qword_27F4DC4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC4E0);
  }

  return result;
}

uint64_t sub_25242E020(uint64_t a1, uint64_t a2)
{
  v4 = sub_252691640();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25242E084()
{
  result = qword_27F4DC538;
  if (!qword_27F4DC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC528);
    sub_25242E110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC538);
  }

  return result;
}

unint64_t sub_25242E110()
{
  result = qword_27F4DC540;
  if (!qword_27F4DC540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC520);
    sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC540);
  }

  return result;
}

unint64_t sub_25242E1C8()
{
  result = qword_27F4DC568;
  if (!qword_27F4DC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC558);
    sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC568);
  }

  return result;
}

unint64_t sub_25242E2C8()
{
  result = qword_27F4DC5A8;
  if (!qword_27F4DC5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC598);
    sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5A8);
  }

  return result;
}

unint64_t sub_25242E3E0()
{
  result = qword_27F4DC5B8;
  if (!qword_27F4DC5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC5C0);
    sub_25242DA00();
    sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5B8);
  }

  return result;
}

unint64_t sub_25242E498()
{
  result = qword_27F4DC5C8;
  if (!qword_27F4DC5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC5D0);
    sub_25242E084();
    sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5C8);
  }

  return result;
}

unint64_t sub_25242E550()
{
  result = qword_27F4DC5D8;
  if (!qword_27F4DC5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC5E0);
    sub_25242E1C8();
    sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5D8);
  }

  return result;
}

unint64_t sub_25242E608()
{
  result = qword_27F4DC5E8;
  if (!qword_27F4DC5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC588);
    sub_25242E6C0();
    sub_252400FC8(&qword_27F4DC600, &qword_27F4DC608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5E8);
  }

  return result;
}

unint64_t sub_25242E6C0()
{
  result = qword_27F4DC5F0;
  if (!qword_27F4DC5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC578);
    sub_252400FC8(&qword_27F4DC5F8, &qword_27F4DC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC5F0);
  }

  return result;
}

unint64_t sub_25242E778()
{
  result = qword_27F4DC610;
  if (!qword_27F4DC610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC618);
    sub_25242E2C8();
    sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC610);
  }

  return result;
}

unint64_t sub_25242E884()
{
  result = qword_27F4DC648;
  if (!qword_27F4DC648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC638);
    sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640);
    sub_25242E93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC648);
  }

  return result;
}

unint64_t sub_25242E93C()
{
  result = qword_27F4DC658;
  if (!qword_27F4DC658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC620);
    sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC658);
  }

  return result;
}

unint64_t sub_25242E9F4()
{
  result = qword_27F4DC680;
  if (!qword_27F4DC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC660);
    sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670);
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC680);
  }

  return result;
}

unint64_t sub_25242EAD8()
{
  result = qword_27F4DC6B0;
  if (!qword_27F4DC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC6A0);
    sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8);
    sub_25242EB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC6B0);
  }

  return result;
}

unint64_t sub_25242EB90()
{
  result = qword_27F4DC6C0;
  if (!qword_27F4DC6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC688);
    sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationModel.ControlAnimation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationModel.ControlAnimation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25242ED0C()
{
  result = qword_27F4DC6C8;
  if (!qword_27F4DC6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC6D0);
    sub_25242E884();
    sub_25242E93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC6C8);
  }

  return result;
}

unint64_t sub_25242ED98()
{
  result = qword_27F4DC6D8;
  if (!qword_27F4DC6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC6E0);
    sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670);
    sub_25242E9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC6D8);
  }

  return result;
}

unint64_t sub_25242EE50()
{
  result = qword_27F4DC6E8;
  if (!qword_27F4DC6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC6F0);
    sub_25242EAD8();
    sub_25242EB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC6E8);
  }

  return result;
}

unint64_t sub_25242EF30()
{
  result = qword_27F4DC718;
  if (!qword_27F4DC718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC708);
    sub_252400FC8(&qword_27F4DC720, &qword_27F4DC710);
    sub_25242EFE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC718);
  }

  return result;
}

unint64_t sub_25242EFE8()
{
  result = qword_27F4DC728;
  if (!qword_27F4DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC728);
  }

  return result;
}

unint64_t sub_25242F03C()
{
  result = qword_27F4DC730;
  if (!qword_27F4DC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC6F8);
    sub_252400FC8(&qword_27F4DC720, &qword_27F4DC710);
    sub_25242F0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC730);
  }

  return result;
}

unint64_t sub_25242F0F4()
{
  result = qword_27F4DC738;
  if (!qword_27F4DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC738);
  }

  return result;
}

unint64_t sub_25242F148()
{
  result = qword_27F4DC760;
  if (!qword_27F4DC760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC740);
    sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750);
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC760);
  }

  return result;
}

unint64_t sub_25242F22C()
{
  result = qword_27F4DC790;
  if (!qword_27F4DC790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC780);
    sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788);
    sub_25242F2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC790);
  }

  return result;
}

unint64_t sub_25242F2E4()
{
  result = qword_27F4DC7A0;
  if (!qword_27F4DC7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC768);
    sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC7A0);
  }

  return result;
}

uint64_t sub_25242F39C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242F3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25242F45C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25242F4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25242F518()
{
  result = qword_27F4DC7A8;
  if (!qword_27F4DC7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC7B0);
    sub_25242EF30();
    sub_25242F03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC7A8);
  }

  return result;
}

unint64_t sub_25242F5A4()
{
  result = qword_27F4DC7B8;
  if (!qword_27F4DC7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC7C0);
    sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750);
    sub_25242F148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC7B8);
  }

  return result;
}

unint64_t sub_25242F65C()
{
  result = qword_27F4DC7C8;
  if (!qword_27F4DC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC7D0);
    sub_25242F22C();
    sub_25242F2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC7C8);
  }

  return result;
}

unint64_t sub_25242F720()
{
  result = qword_27F4DC7F8;
  if (!qword_27F4DC7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC7D8);
    sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8);
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC7F8);
  }

  return result;
}

unint64_t sub_25242F804()
{
  result = qword_27F4DC820;
  if (!qword_27F4DC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC800);
    sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC820);
  }

  return result;
}

unint64_t sub_25242F8BC()
{
  result = qword_27F4DC828;
  if (!qword_27F4DC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC830);
    sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8);
    sub_25242F720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC828);
  }

  return result;
}

unint64_t sub_25242F974()
{
  result = qword_27F4DC838;
  if (!qword_27F4DC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC840);
    sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810);
    sub_25242F804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC838);
  }

  return result;
}

void sub_25242FA9C()
{
  sub_252404218();
  if (v0 <= 0x3F)
  {
    sub_25242FB30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25242FB30()
{
  if (!qword_27F4DC860)
  {
    type metadata accessor for AccessoryControlsHeaderConfig.Image(255);
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DC860);
    }
  }
}

void sub_25242FBA8()
{
  sub_25242FC1C();
  if (v0 <= 0x3F)
  {
    sub_25242FC88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25242FC1C()
{
  if (!qword_27F4DC878)
  {
    type metadata accessor for IconDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DC878);
    }
  }
}

void sub_25242FC88()
{
  if (!qword_27F4DC880)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DC880);
    }
  }
}

uint64_t sub_25242FCF4()
{
  v1 = v0;
  v2 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252430EF8(v1, v7, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[3];
    MEMORY[0x2530A4FE0](1);
    sub_252692C80();

    sub_2526922E0();
    v9 = 0.0;
    if (v8 != 0.0)
    {
      v9 = v8;
    }

    MEMORY[0x2530A5020](*&v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898);
    sub_2524306A8(v7, v4, type metadata accessor for IconDescriptor);
    MEMORY[0x2530A4FE0](0);
    sub_252692C80();
    sub_25268F910();
    sub_2524302AC(&qword_27F4DB560, MEMORY[0x277D165A0]);
    sub_252692B30();
    sub_252693480();
    sub_2526922E0();

    return sub_252430710(v4, type metadata accessor for IconDescriptor);
  }
}

uint64_t sub_25242FF48()
{
  v1 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_252692C80();
  if (*(v0 + 24))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v8 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  sub_2524302F4(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_252693480();
  }

  sub_2524306A8(v7, v4, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  sub_252693480();
  sub_25242FCF4();
  return sub_252430710(v4, type metadata accessor for AccessoryControlsHeaderConfig.Image);
}

uint64_t sub_2524301B8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25243021C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t sub_2524302AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2524302F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252430364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_25268F500();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device();

  sub_25268F4F0();
  v11 = sub_25268F4E0();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = (a1 + v10[17]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v17 = (a1 + v10[16]);
    v15 = *v17;
    v16 = v17[1];
  }

  v18 = (a1 + v10[7]);
  v19 = v18[1];
  if (v19)
  {
    v35 = *v18;
    v20 = v10[15];
    v21 = *(a1 + v10[14]);
    v22 = v16;
    v23 = v15;
    v24 = v13;
    v25 = v11;
    v26 = *(a1 + v20);

    sub_252430710(a1, type metadata accessor for Device);
    v27 = v26 == 0;
    v11 = v25;
    v13 = v24;
    v15 = v23;
    v16 = v22;
    v28 = 0.5;
    *v5 = v35;
    *(v5 + 1) = v19;
    if (!v27)
    {
      v28 = 0.0;
    }

    *(v5 + 2) = v21;
    *(v5 + 3) = v28;
  }

  else
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898) + 48);
    sub_252430EF8(a1 + v10[6], v5, type metadata accessor for IconDescriptor);
    v30 = *(a1 + v10[14]);

    sub_252430710(a1, type metadata accessor for Device);
    *&v5[v29] = v30;
  }

  v31 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
  v32 = v36;
  *v36 = v11;
  v32[1] = v13;
  v32[2] = v15;
  v32[3] = v16;
  v33 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  return sub_252430F60(v5, v32 + *(v33 + 24));
}

uint64_t sub_2524306A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252430710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252430770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC8A8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = (&v28 + *(v14 + 56) - v15);
  sub_252430EF8(a1, &v28 - v15, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  sub_252430EF8(a2, v17, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252430EF8(v16, v10, type metadata accessor for AccessoryControlsHeaderConfig.Image);
    v19 = *v10;
    v18 = *(v10 + 1);
    v20 = *(v10 + 3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v17[3];
      if (v19 == *v17 && v18 == *(v17 + 1))
      {
      }

      else
      {
        v23 = sub_2526933B0();

        if ((v23 & 1) == 0)
        {

LABEL_24:
          sub_252430710(v16, type metadata accessor for AccessoryControlsHeaderConfig.Image);
          goto LABEL_25;
        }
      }

      v25 = sub_252692280();

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

      v26 = v20 == v21;
      goto LABEL_28;
    }
  }

  else
  {
    sub_252430EF8(v16, v12, type metadata accessor for AccessoryControlsHeaderConfig.Image);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2524306A8(v17, v6, type metadata accessor for IconDescriptor);
      v24 = *v12 == *v6 && v12[1] == v6[1];
      if (!v24 && (sub_2526933B0() & 1) == 0 || (sub_25268F900() & 1) == 0 || *(v12 + *(v4 + 24)) != *(v6 + *(v4 + 24)))
      {

        sub_252430710(v12, type metadata accessor for IconDescriptor);
        sub_252430710(v6, type metadata accessor for IconDescriptor);
        goto LABEL_24;
      }

      sub_252430710(v12, type metadata accessor for IconDescriptor);
      v26 = sub_252692280();

      sub_252430710(v6, type metadata accessor for IconDescriptor);
LABEL_28:
      sub_252430710(v16, type metadata accessor for AccessoryControlsHeaderConfig.Image);
      return v26 & 1;
    }

    sub_252430710(v12, type metadata accessor for IconDescriptor);
  }

  sub_252372288(v16, &qword_27F4DC8A8);
LABEL_25:
  v26 = 0;
  return v26 & 1;
}

BOOL sub_252430BCC(void *a1, void *a2)
{
  v4 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC8A0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v17 = *(v11 + 48);
  sub_2524302F4(a1 + v16, v13);
  sub_2524302F4(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_252372288(v13, &qword_27F4DC848);
      return 1;
    }

    goto LABEL_16;
  }

  sub_2524302F4(v13, v10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_252430710(v10, type metadata accessor for AccessoryControlsHeaderConfig.Image);
LABEL_16:
    sub_252372288(v13, &qword_27F4DC8A0);
    return 0;
  }

  sub_2524306A8(&v13[v17], v7, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  v20 = sub_252430770(v10, v7);
  sub_252430710(v7, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  sub_252430710(v10, type metadata accessor for AccessoryControlsHeaderConfig.Image);
  sub_252372288(v13, &qword_27F4DC848);
  return (v20 & 1) != 0;
}

uint64_t sub_252430EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252430F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 AccessoryControlsStyle.presentation.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  *a1 = *(v1 + 8);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  *(a1 + 40) = v2;
  *(a1 + 41) = v3;
  return result;
}

__n128 AccessoryControlsStyle.presentation.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  *(v1 + 8) = *a1;
  result = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v1 + 16) = result;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 49) = v3;
  return result;
}

double static AccessoryControlsStyle.PresentationStyle.fullScreen.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAA00 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = word_27F4DC938;
  v2 = HIBYTE(word_27F4DC938);
  *a1 = byte_27F4DC910;
  *(a1 + 8) = *&qword_27F4DC918;
  result = *&qword_27F4DC928;
  *(a1 + 24) = *&qword_27F4DC928;
  *(a1 + 40) = v1;
  *(a1 + 41) = v2;
  return result;
}

__n128 AccessoryControlsStyle.init(background:header:presentation:dismissOptions:material:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[40];
  v9 = a3[41];
  v10 = *a4;
  v11 = *a5;
  *a6 = *a1;
  *(a6 + 1) = v6;
  *(a6 + 8) = v7;
  result = *(a3 + 8);
  v13 = *(a3 + 24);
  *(a6 + 16) = result;
  *(a6 + 32) = v13;
  *(a6 + 48) = v8;
  *(a6 + 49) = v9;
  *(a6 + 56) = v10;
  *(a6 + 64) = v11;
  return result;
}

void AccessoryControlsStyle.PresentationStyle.cornerRadii.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AccessoryControlsStyle.PresentationStyle.init(fullScreen:cornerRadii:dimsBackground:orientation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a3;
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a2;
  *(a4 + 41) = v8;
  return result;
}

uint64_t sub_252431358()
{
  result = sub_2526914E0();
  byte_27F4DC8B0 = 0;
  qword_27F4DC8B8 = v1;
  unk_27F4DC8C0 = v2;
  qword_27F4DC8C8 = v3;
  unk_27F4DC8D0 = v4;
  word_27F4DC8D8 = 1;
  return result;
}

double static AccessoryControlsStyle.PresentationStyle.roundedCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F4DA9F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = word_27F4DC8D8;
  v2 = HIBYTE(word_27F4DC8D8);
  *a1 = byte_27F4DC8B0;
  *(a1 + 8) = *&qword_27F4DC8B8;
  result = *&qword_27F4DC8C8;
  *(a1 + 24) = *&qword_27F4DC8C8;
  *(a1 + 40) = v1;
  *(a1 + 41) = v2;
  return result;
}

uint64_t sub_252431428()
{
  result = sub_2526914E0();
  byte_27F4DC8E0 = 1;
  qword_27F4DC8E8 = v1;
  unk_27F4DC8F0 = v2;
  qword_27F4DC8F8 = v3;
  unk_27F4DC900 = v4;
  word_27F4DC908 = 0;
  return result;
}

double static AccessoryControlsStyle.PresentationStyle.topRoundedFullScreen.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F4DA9F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = word_27F4DC908;
  v2 = HIBYTE(word_27F4DC908);
  *a1 = byte_27F4DC8E0;
  *(a1 + 8) = *&qword_27F4DC8E8;
  result = *&qword_27F4DC8F8;
  *(a1 + 24) = *&qword_27F4DC8F8;
  *(a1 + 40) = v1;
  *(a1 + 41) = v2;
  return result;
}

uint64_t sub_2524314F4()
{
  result = sub_2526914E0();
  byte_27F4DC910 = 1;
  qword_27F4DC918 = v1;
  unk_27F4DC920 = v2;
  qword_27F4DC928 = v3;
  unk_27F4DC930 = v4;
  word_27F4DC938 = 0;
  return result;
}

uint64_t AccessoryControlsStyle.PresentationStyle.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

double sub_2524315D4()
{
  if (qword_27F4DA9F8 != -1)
  {
    swift_once();
  }

  LOWORD(xmmword_27F4DC940) = 257;
  BYTE8(xmmword_27F4DC940) = byte_27F4DC8E0;
  result = *&qword_27F4DC8E8;
  xmmword_27F4DC950 = *&qword_27F4DC8E8;
  xmmword_27F4DC960 = *&qword_27F4DC8F8;
  word_27F4DC970 = word_27F4DC908;
  qword_27F4DC978 = 2;
  byte_27F4DC980 = 0;
  return result;
}

__n128 static AccessoryControlsStyle.legacyCardFullScreen.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAA08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&word_27F4DC970;
  *(a1 + 32) = xmmword_27F4DC960;
  *(a1 + 48) = v1;
  *(a1 + 64) = byte_27F4DC980;
  result = xmmword_27F4DC950;
  *a1 = xmmword_27F4DC940;
  *(a1 + 16) = result;
  return result;
}

double sub_2524316DC()
{
  if (qword_27F4DA9F0 != -1)
  {
    swift_once();
  }

  LOWORD(xmmword_27F4DC988) = 257;
  BYTE8(xmmword_27F4DC988) = byte_27F4DC8B0;
  result = *&qword_27F4DC8B8;
  xmmword_27F4DC998 = *&qword_27F4DC8B8;
  xmmword_27F4DC9A8 = *&qword_27F4DC8C8;
  word_27F4DC9B8 = word_27F4DC8D8;
  qword_27F4DC9C0 = 2;
  byte_27F4DC9C8 = 0;
  return result;
}

__n128 static AccessoryControlsStyle.legacyCard.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F4DAA10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&word_27F4DC9B8;
  *(a1 + 32) = xmmword_27F4DC9A8;
  *(a1 + 48) = v1;
  *(a1 + 64) = byte_27F4DC9C8;
  result = xmmword_27F4DC998;
  *a1 = xmmword_27F4DC988;
  *(a1 + 16) = result;
  return result;
}

uint64_t View.accessoryControlsStyle(_:)()
{
  swift_getKeyPath();
  sub_252691DF0();
}

uint64_t _s22HomeAccessoryControlUI0B13ControlsStyleV012PresentationF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[41];
  v4 = a2[41];
  v5 = a2[40];
  v6 = a1[40];
  v7 = sub_2526914D0();
  if ((v5 ^ v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 ^ v4 ^ 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t _s22HomeAccessoryControlUI0B13ControlsStyleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (v3 && ((a1[8] ^ a2[8]) & 1) == 0)
  {
    v4 = a2[64];
    v5 = a1[64];
    v6 = *(a2 + 7);
    v7 = a2[49];
    v8 = a2[48];
    v9 = *(a1 + 7);
    v10 = a1[49];
    v11 = a1[48];
    LODWORD(v2) = sub_2526914D0() & ~(v8 ^ v11) & ~(v7 ^ v10) & (v9 == v6);
    if (v5 == v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t sub_252431A54()
{
  result = qword_27F4DC9D0;
  if (!qword_27F4DC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9D0);
  }

  return result;
}

unint64_t sub_252431AAC()
{
  result = qword_27F4DC9D8;
  if (!qword_27F4DC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9D8);
  }

  return result;
}

unint64_t sub_252431B04()
{
  result = qword_27F4DC9E0;
  if (!qword_27F4DC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9E0);
  }

  return result;
}

unint64_t sub_252431B5C()
{
  result = qword_27F4DC9E8;
  if (!qword_27F4DC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9E8);
  }

  return result;
}

unint64_t sub_252431BB4()
{
  result = qword_27F4DC9F0;
  if (!qword_27F4DC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9F0);
  }

  return result;
}

unint64_t sub_252431C0C()
{
  result = qword_27F4DC9F8;
  if (!qword_27F4DC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC9F8);
  }

  return result;
}

unint64_t sub_252431C64()
{
  result = qword_27F4DCA00;
  if (!qword_27F4DCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA00);
  }

  return result;
}

unint64_t sub_252431CBC()
{
  result = qword_27F4DCA08;
  if (!qword_27F4DCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA08);
  }

  return result;
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

uint64_t sub_252431D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252431D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s11PickerStateVwet(uint64_t a1, int a2)
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

uint64_t _s11PickerStateVwst(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252431E7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252431ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_252431F50()
{
  result = qword_27F4DCA18;
  if (!qword_27F4DCA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA18);
  }

  return result;
}

unint64_t sub_252431FB4()
{
  result = qword_27F4DCA20;
  if (!qword_27F4DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA20);
  }

  return result;
}

uint64_t AccessoryControl.BinaryState.init(value:progress:badgeIconIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t AccessoryControl.IncrementalState.init(value:writeInProgress:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25268ED70();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AccessoryControl.IncrementalState(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

double AccessoryControl.ThermostatState.init(currentTemperature:mode:threshold:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 16);
  *(a5 + 33) = 514;
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v13 = v12[8];
  v14 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = a5 + v12[9];
  result = 0.0;
  *v15 = xmmword_252695260;
  *(v15 + 16) = 0;
  *(a5 + v12[11]) = 3;
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + v12[10]) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  return result;
}

uint64_t AccessoryControl.ColorState.init(color:brightness:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_25268ED20();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = a4 + *(type metadata accessor for AccessoryControl.ColorState(0) + 20);
  result = sub_252377048(a1, a4, &qword_27F4DB2A8);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t AccessoryControl.SimpleAreaPickerState.init(selectedMapID:selectedAreaIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t AccessoryControl.StatusButtonState.init(title:subtitle:selectionState:paused:identify:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>)
{
  v15 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v16 = v15[6];
  v17 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v15[8];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  result = sub_252377048(a5, &a8[v16], &qword_27F4DB458);
  a8[v15[7]] = a6;
  a8[v18] = a7;
  return result;
}

uint64_t AccessoryControl.PickerButtonState.init(title:options:selectionState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AccessoryControl.BinaryState.progress.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AccessoryControl.BinaryState.badgeIconIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AccessoryControl.BinaryState.badgeIconIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AccessoryControl.BinaryState.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_252693480();
  if (v2 != 1)
  {
    sub_252693480();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x2530A5020](v5);
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_252693480();
  }

  sub_252693480();
  if (!v3)
  {
    return sub_252693480();
  }

LABEL_3:
  sub_252693480();

  return sub_252692C80();
}

uint64_t AccessoryControl.BinaryState.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.BinaryState.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_252432654()
{
  sub_252693460();
  AccessoryControl.BinaryState.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_2524326BC()
{
  sub_252693460();
  AccessoryControl.BinaryState.hash(into:)();
  return sub_2526934C0();
}

uint64_t AccessoryControl.IncrementalState.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268ED70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessoryControl.IncrementalState.value.setter(uint64_t a1)
{
  v3 = sub_25268ED70();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccessoryControl.IncrementalState.writeInProgress.setter(char a1)
{
  result = type metadata accessor for AccessoryControl.IncrementalState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t static AccessoryControl.IncrementalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25268ED60())
  {
    v4 = type metadata accessor for AccessoryControl.IncrementalState(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AccessoryControl.IncrementalState.hash(into:)()
{
  sub_25268ED70();
  sub_2524434A4(&qword_27F4DB790, MEMORY[0x277D15BC0]);
  sub_252692B30();
  type metadata accessor for AccessoryControl.IncrementalState(0);
  return sub_252693480();
}

uint64_t AccessoryControl.IncrementalState.hashValue.getter()
{
  sub_252693460();
  sub_25268ED70();
  sub_2524434A4(&qword_27F4DB790, MEMORY[0x277D15BC0]);
  sub_252692B30();
  type metadata accessor for AccessoryControl.IncrementalState(0);
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_252432A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25268ED60())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_252432A84()
{
  sub_252693460();
  sub_25268ED70();
  sub_2524434A4(&qword_27F4DB790, MEMORY[0x277D15BC0]);
  sub_252692B30();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_252432B28()
{
  sub_25268ED70();
  sub_2524434A4(&qword_27F4DB790, MEMORY[0x277D15BC0]);
  sub_252692B30();
  return sub_252693480();
}

uint64_t sub_252432BB4()
{
  sub_252693460();
  sub_25268ED70();
  sub_2524434A4(&qword_27F4DB790, MEMORY[0x277D15BC0]);
  sub_252692B30();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t AccessoryControl.ThermostatState.currentTemperature.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 AccessoryControl.ThermostatState.threshold.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AccessoryControl.ThermostatState.threshold.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t AccessoryControl.ThermostatState.activityState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryControl.ThermostatState(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(v3 + 16);

  return sub_25235E298(v4, v5);
}

uint64_t AccessoryControl.ThermostatState.activityState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for AccessoryControl.ThermostatState(0) + 36);
  result = sub_25235E2A8(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AccessoryControl.ThermostatState.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.ThermostatState(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AccessoryControl.ThermostatState.mode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl.ThermostatState(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

unint64_t AccessoryControl.ThermostatState.Mode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AccessoryControl.ThermostatState.Threshold.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x2530A4FE0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x2530A5020](v4);
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x2530A4FE0](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x2530A5020](v3);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x2530A5020](v4);
  }

  return MEMORY[0x2530A4FE0](0);
}

uint64_t AccessoryControl.ThermostatState.Threshold.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ThermostatState.Threshold.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_25243311C()
{
  sub_252693460();
  AccessoryControl.ThermostatState.Threshold.hash(into:)();
  return sub_2526934C0();
}

uint64_t sub_252433174()
{
  sub_252693460();
  AccessoryControl.ThermostatState.Threshold.hash(into:)();
  return sub_2526934C0();
}

uint64_t AccessoryControl.ThermostatState.runningState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.ThermostatState(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t AccessoryControl.ThermostatState.runningState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl.ThermostatState(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

unint64_t AccessoryControl.ThermostatState.RunningState.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unsigned __int8 *AccessoryControl.ThermostatState.ThermostatHoldType.init(from:)@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 & 1;
  }

  *a2 = v3;
  return result;
}

uint64_t AccessoryControl.ThermostatState.ThermostatHoldType.rawValue.getter()
{
  if (*v0)
  {
    return 0x796772656E45;
  }

  else
  {
    return 0x746573657250;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25268D990();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_25268DB10();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - v19;
  v21 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  if ((*(*(v24 - 8) + 48))(a1, 1, v24) != 1)
  {
    v52 = a1;
    v53 = a2;
    sub_25237153C(a1, v20, &qword_27F4DB300);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25243FED8(v20, v9, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v9, 1, v27) == 1)
      {
        (*(v28 + 56))(v23, 1, 1, v27);
      }

      else
      {
        v51 = *v9;
        v39 = *(v27 + 48);
        v40 = *(v27 + 64);
        v41 = v55;
        v54 = *(v54 + 32);
        (v54)(v6, v9 + v39, v55);
        v50 = v6;
        v42 = *(v57 + 32);
        v43 = v9 + v40;
        v44 = v56;
        v45 = v58;
        v42(v56, v43, v58);
        v46 = *(v27 + 48);
        v57 = *(v27 + 64);
        v47 = v50;
        *v23 = v51;
        (v54)(v23 + v46, v47, v41);
        v42(v23 + v57, v44, v45);
        (*(v28 + 56))(v23, 0, 1, v27);
      }
    }

    else
    {
      sub_25243FED8(v20, v17, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      v30 = *(v29 - 8);
      v31 = (*(v30 + 48))(v17, 3, v29);
      if (v31 > 1)
      {
        v48 = v52;
        if (v31 == 2)
        {
          (*(v30 + 56))(v23, 2, 3, v29);
        }

        else
        {
          (*(v30 + 56))(v23, 3, 3, v29);
        }

        v49 = v53;
        goto LABEL_19;
      }

      if (v31)
      {
        (*(v30 + 56))(v23, 1, 3, v29);
      }

      else
      {
        v55 = *v17;
        v32 = *(v29 + 64);
        sub_2523714D4(v17 + *(v29 + 48), v14, &qword_27F4DB2D8);
        v33 = v56;
        v34 = *(v57 + 32);
        v35 = v17 + v32;
        v36 = v58;
        v34(v56, v35, v58);
        v37 = *(v29 + 48);
        v38 = *(v29 + 64);
        *v23 = v55;
        sub_2523714D4(v14, v23 + v37, &qword_27F4DB2D8);
        v34(v23 + v38, v33, v36);
        (*(v30 + 56))(v23, 0, 3, v29);
      }
    }

    v48 = v52;
    v49 = v53;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    sub_252372288(v48, &qword_27F4DB300);
    sub_25243FED8(v23, v49, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    return (*(v59 + 56))(v49, 0, 1, v21);
  }

  sub_252372288(a1, &qword_27F4DB300);
  v25 = *(v59 + 56);

  return v25(a2, 1, 1, v21);
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v13, v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    sub_25243FF80(v7, v5, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_25243FFE8(v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
      return 0x6F54206C69746E55;
    }

    else
    {
      v17 = *(v14 + 48);
      v18 = *(v14 + 64);
      sub_25243FFE8(v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
      v19 = sub_25268DB10();
      (*(*(v19 - 8) + 8))(&v5[v18], v19);
      v20 = sub_25268D990();
      (*(*(v20 - 8) + 8))(&v5[v17], v20);
      return 0xD000000000000011;
    }
  }

  else
  {
    sub_25243FED8(v13, v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v16 = AccessoryControl.ThermostatState.ThermostatSetpointHold.id.getter();
    sub_25243FFE8(v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    return v16;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatSetpointHold.id.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0x696E696665646E49;
    }
  }

  else if (v5)
  {
    return 1701736270;
  }

  else
  {
    v6 = *v3;
    v7 = *(v4 + 48);
    v8 = *(v4 + 64);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252693210();

    v14 = 0xD000000000000014;
    v15 = 0x80000002526AED60;
    v13[1] = v6;
    v9 = sub_252693370();
    MEMORY[0x2530A4800](v9);

    v10 = v14;
    v11 = sub_25268DB10();
    (*(*(v11 - 8) + 8))(&v3[v8], v11);
    sub_252372288(&v3[v7], &qword_27F4DB2D8);
    return v10;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatEnergyHold.id.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return 0x6F54206C69746E55;
  }

  v6 = *(v4 + 48);
  v7 = *(v4 + 64);
  v8 = sub_25268DB10();
  (*(*(v8 - 8) + 8))(&v3[v7], v8);
  v9 = sub_25268D990();
  (*(*(v9 - 8) + 8))(&v3[v6], v9);
  return 0xD000000000000011;
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.label.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v13, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v14 = AccessoryControl.ThermostatState.ThermostatEnergyHold.label.getter();
    v15 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
    v16 = v4;
  }

  else
  {
    sub_25243FED8(v13, v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    sub_25243FF80(v10, v8, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    v18 = (*(*(v17 - 8) + 48))(v8, 3, v17);
    if (v18 > 1)
    {
      v14 = sub_252692C40();
    }

    else if (v18)
    {
      v14 = 0;
    }

    else
    {
      v19 = *v8;
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D83B88];
      *(v22 + 16) = xmmword_252694E90;
      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v19;
      v14 = sub_252692C60();

      v25 = sub_25268DB10();
      (*(*(v25 - 8) + 8))(&v8[v21], v25);
      sub_252372288(&v8[v20], &qword_27F4DB2D8);
    }

    v15 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
    v16 = v10;
  }

  sub_25243FFE8(v16, v15);
  return v14;
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.longStatusString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v13, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v14 = AccessoryControl.ThermostatState.ThermostatEnergyHold.label.getter();
    v15 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
    v16 = v4;
  }

  else
  {
    sub_25243FED8(v13, v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    sub_25243FF80(v10, v8, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    v18 = (*(*(v17 - 8) + 48))(v8, 3, v17);
    if (v18 > 1)
    {
      v14 = sub_252692C40();
    }

    else if (v18)
    {
      v14 = 0;
    }

    else
    {
      v19 = *v8;
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D83B88];
      *(v22 + 16) = xmmword_252694E90;
      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v19;
      v14 = sub_252692C60();

      v25 = sub_25268DB10();
      (*(*(v25 - 8) + 8))(&v8[v21], v25);
      sub_252372288(&v8[v20], &qword_27F4DB2D8);
    }

    v15 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
    v16 = v10;
  }

  sub_25243FFE8(v16, v15);
  return v14;
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.subtitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FFE8(v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    return 0;
  }

  else
  {
    sub_25243FED8(v7, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v9 = AccessoryControl.ThermostatState.ThermostatSetpointHold.subtitle.getter();
    sub_25243FFE8(v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    return v9;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.value.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v10, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) != 1)
    {
      v15 = *v4;
      v16 = *(v11 + 48);
      v17 = *(v11 + 64);
      v18 = sub_25268DB10();
      (*(*(v18 - 8) + 8))(&v4[v17], v18);
      v19 = sub_25268D990();
      (*(*(v19 - 8) + 8))(&v4[v16], v19);
      return v15;
    }

    v12 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
    v13 = v4;
  }

  else
  {
    sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    if (!(*(*(v14 - 8) + 48))(v7, 3, v14))
    {
      v15 = *v7;
      v20 = *(v14 + 48);
      v21 = *(v14 + 64);
      v22 = sub_25268DB10();
      (*(*(v22 - 8) + 8))(&v7[v21], v22);
      sub_252372288(&v7[v20], &qword_27F4DB2D8);
      return v15;
    }

    v12 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
    v13 = v7;
  }

  sub_25243FFE8(v13, v12);
  return 0;
}

uint64_t AccessoryControl.ThermostatState.ThermostatSetpointHold.value.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  if ((*(*(v4 - 8) + 48))(v3, 3, v4))
  {
    sub_25243FFE8(v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    return 0;
  }

  else
  {
    v5 = *v3;
    v6 = *(v4 + 48);
    v7 = *(v4 + 64);
    v8 = sub_25268DB10();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
    sub_252372288(&v3[v6], &qword_27F4DB2D8);
  }

  return v5;
}

uint64_t AccessoryControl.ThermostatState.ThermostatEnergyHold.value.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_25243FFE8(v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    return 0;
  }

  else
  {
    v5 = *v3;
    v6 = *(v4 + 48);
    v7 = *(v4 + 64);
    v8 = sub_25268DB10();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
    v9 = sub_25268D990();
    (*(*(v9 - 8) + 8))(&v3[v6], v9);
  }

  return v5;
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.order.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v10, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
    {
      sub_25243FFE8(v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
      return 1;
    }

    v18 = *(v11 + 48);
    v19 = *(v11 + 64);
    v20 = sub_25268DB10();
    (*(*(v20 - 8) + 8))(&v4[v19], v20);
    v21 = sub_25268D990();
    (*(*(v21 - 8) + 8))(&v4[v18], v21);
    return 0;
  }

  sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v13 = (*(*(v12 - 8) + 48))(v7, 3, v12);
  if (v13 == 2)
  {
    return 0;
  }

  if (!v13)
  {
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    v16 = sub_25268DB10();
    (*(*(v16 - 8) + 8))(&v7[v15], v16);
    sub_252372288(&v7[v14], &qword_27F4DB2D8);
    return 1;
  }

  sub_25243FFE8(v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  return 2;
}

uint64_t AccessoryControl.ThermostatState.ThermostatSetpointHold.order.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 == 2)
  {
    return 0;
  }

  if (v5)
  {
    sub_25243FFE8(v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    return 2;
  }

  else
  {
    v6 = *(v4 + 48);
    v7 = *(v4 + 64);
    v8 = sub_25268DB10();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
    sub_252372288(&v3[v6], &qword_27F4DB2D8);
    return 1;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatEnergyHold.order.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_25243FFE8(v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    return 1;
  }

  else
  {
    v6 = *(v4 + 48);
    v7 = *(v4 + 64);
    v8 = sub_25268DB10();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
    v9 = sub_25268D990();
    (*(*(v9 - 8) + 8))(&v3[v6], v9);
    return 0;
  }
}

uint64_t AccessoryControl.ThermostatState.ThermostatHold.hash(into:)(uint64_t a1)
{
  v3 = sub_25268DB10();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268D990();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v20, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v20, v14, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    MEMORY[0x2530A4FE0](1);
    sub_25243FF80(v14, v12, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) == 1)
    {
      MEMORY[0x2530A4FE0](0);
    }

    else
    {
      v24 = *v12;
      v25 = *(v21 + 48);
      v26 = *(v21 + 64);
      v27 = v33;
      (*(v33 + 32))(v8, &v12[v25], v6);
      v28 = v34;
      v29 = &v12[v26];
      v30 = v35;
      (*(v34 + 32))(v5, v29, v35);
      MEMORY[0x2530A4FE0](1);
      MEMORY[0x2530A4FE0](v24);
      sub_2524434A4(&qword_27F4DB768, MEMORY[0x277CC9578]);
      sub_252692B30();
      sub_2524434A4(&qword_27F4DB770, MEMORY[0x277CC9A70]);
      sub_252692B30();
      (*(v28 + 8))(v5, v30);
      (*(v27 + 8))(v8, v6);
    }

    v22 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
    v23 = v14;
  }

  else
  {
    sub_25243FED8(v20, v17, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    MEMORY[0x2530A4FE0](0);
    AccessoryControl.ThermostatState.ThermostatSetpointHold.hash(into:)(a1);
    v22 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
    v23 = v17;
  }

  return sub_25243FFE8(v23, v22);
}

uint64_t sub_252435C08@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryControl.ThermostatState.ThermostatHold.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252435C30(uint64_t a1)
{
  v30 = a1;
  v1 = sub_25268DB10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268DA40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268DA60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_25268DA30();
  sub_25268DA50();
  (*(v10 + 8))(v12, v9);
  v26 = v6;
  v27 = v5;
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v6) = *MEMORY[0x277CC9760];
  v14 = *MEMORY[0x277CC9758];
  sub_25268DB00();
  sub_2524434A4(&qword_27F4DCD10, MEMORY[0x277CC9A70]);
  sub_252692B70();
  v15 = *(v2 + 8);
  v29 = v2 + 8;
  v15(v4, v1);
  if (v13 == v6 || v13 == v14)
  {
    v17 = sub_252692BA0();
    v19 = v28;
    [v28 setLocalizedDateFormatFromTemplate_];
  }

  else
  {
    v18 = sub_252692BA0();
    v19 = v28;
    [v28 setLocalizedDateFormatFromTemplate_];

    (*(v26 + 8))(v8, v27);
  }

  sub_25268DB00();
  v20 = sub_252692B70();
  v15(v4, v1);
  if ((v20 & 1) == 0)
  {
    v21 = sub_25268DAE0();
    [v19 setTimeZone_];
  }

  [v19 setFormattingContext_];
  v22 = sub_25268D930();
  v23 = [v19 stringFromDate_];

  v24 = sub_252692BD0();
  return v24;
}

BOOL AccessoryControl.ThermostatState.ThermostatSetpointHold.holdValue.getter()
{
  v1 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 != 1)
  {
    sub_25243FFE8(v3, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  }

  return v5 != 1;
}

uint64_t sub_2524361E8@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryControl.ThermostatState.ThermostatSetpointHold.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25243628C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v5, v4, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    v8 = 0xEE00776F72726F6DLL;
    v9 = 0x6F54206C69746E55;
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = *(v6 + 64);
    v8 = 0x80000002526AED40;
    v12 = sub_25268DB10();
    (*(*(v12 - 8) + 8))(&v4[v11], v12);
    v13 = sub_25268D990();
    result = (*(*(v13 - 8) + 8))(&v4[v10], v13);
    v9 = 0xD000000000000011;
  }

  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t AccessoryControl.ThermostatState.ThermostatActivityState.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        result = sub_25235E2A8(result, 4uLL);
        v7 = xmmword_252699460;
      }

      else
      {
        result = sub_25235E2A8(result, 5uLL);
        v7 = xmmword_252699450;
      }

      goto LABEL_18;
    }

    if (v5 == 6)
    {
      result = sub_25235E2A8(result, 6uLL);
      v7 = xmmword_252699440;
      goto LABEL_18;
    }

    if (v5 == 7)
    {
      v7 = xmmword_252695260;
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result = sub_25235E2A8(result, 2uLL);
        v7 = xmmword_2526952E0;
      }

      else
      {
        result = sub_25235E2A8(result, 3uLL);
        v7 = xmmword_252699470;
      }

      goto LABEL_18;
    }

    if (!v5)
    {
      result = sub_25235E2A8(result, 0);
      *a2 = 0;
      *(a2 + 8) = 0;
LABEL_19:
      *(a2 + 16) = 0;
      return result;
    }

    if (v5 == 1)
    {
      result = sub_25235E2A8(result, 1uLL);
      v7 = xmmword_2526952D0;
LABEL_18:
      *a2 = v7;
      goto LABEL_19;
    }
  }

  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t AccessoryControl.ThermostatState.ThermostatActivityState.contextString.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (v2 <= 1)
    {
      return sub_252692C40();
    }
  }

  else if (v2 == 2 || v2 == 3 || v2 == 4)
  {
    return sub_252692C40();
  }

  return v1;
}

uint64_t AccessoryControl.ThermostatState.ThermostatActivityState.state.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (v2 <= 1)
    {
      return sub_252692C40();
    }
  }

  else if (v2 == 2 || v2 == 3 || v2 == 4)
  {
    return sub_252692C40();
  }

  return v1;
}

uint64_t AccessoryControl.ThermostatState.ThermostatActivityState.symbol.getter()
{
  result = 0x69662E6573756F68;
  v2 = *(v0 + 8);
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        return result;
      case 1:
        return 0xD000000000000015;
      case 2:
        return 0x69662E6B636F6C63;
    }

    goto LABEL_12;
  }

  if ((v2 - 5) < 2)
  {
    return 0x646E612E746C6F62;
  }

  if (v2 == 3)
  {
    return 0x6174732E6E6F6F6DLL;
  }

  if (v2 != 4)
  {
LABEL_12:
    if ((*(v0 + 16) & 1) == 0)
    {
      return 0xD000000000000013;
    }
  }

  return result;
}

uint64_t AccessoryControl.ThermostatState.init(currentTemperature:mode:threshold:hold:setpointOffsetActive:activeHold:activityState:runningState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v12 = *a3;
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v23 = *a7;
  v28 = a8[1];
  v29 = *a8;
  v26 = *a10;
  v27 = *(a8 + 16);
  *(a9 + 34) = 2;
  v16 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v17 = v16[8];
  v18 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a9 + v16[9];
  *v19 = xmmword_252695260;
  *(v19 + 16) = 0;
  v20 = v16[11];
  *(a9 + v20) = 3;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + v16[10]) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;
  *(a9 + 33) = a6;
  sub_252377048(a5, a9 + v17, &qword_27F4DCA28);
  *(a9 + 34) = v23;
  result = sub_25235E2A8(*v19, *(v19 + 8));
  *v19 = v29;
  *(v19 + 8) = v28;
  *(v19 + 16) = v27;
  *(a9 + v20) = v26;
  return result;
}

uint64_t AccessoryControl.ThermostatState.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  if (*(v1 + 8) == 1)
  {
    sub_252693480();
  }

  else
  {
    v10 = *v1;
    sub_252693480();
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x2530A5020](v11);
  }

  v12 = v1[2];
  if (!*(v1 + 32))
  {
    MEMORY[0x2530A4FE0](1);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

LABEL_15:
    MEMORY[0x2530A5020](v15);
    goto LABEL_20;
  }

  if (*(v1 + 32) == 1)
  {
    v13 = v1[3];
    MEMORY[0x2530A4FE0](2);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x2530A5020](v14);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_15;
  }

  MEMORY[0x2530A4FE0](0);
LABEL_20:
  if (*(v1 + 33) != 2)
  {
    sub_252693480();
  }

  sub_252693480();
  if (*(v1 + 34) == 2)
  {
    sub_252693480();
  }

  else
  {
    sub_252693480();
    sub_252692C80();
  }

  v16 = type metadata accessor for AccessoryControl.ThermostatState(0);
  sub_25237153C(v1 + v16[8], v9, &qword_27F4DCA28);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_25243FED8(v9, v6, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    sub_252693480();
    AccessoryControl.ThermostatState.ThermostatHold.hash(into:)(a1);
    sub_25243FFE8(v6, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  }

  v17 = (v1 + v16[9]);
  v18 = v17[1];
  if (v18 == 7)
  {
    sub_252693480();
    goto LABEL_47;
  }

  v19 = *v17;
  sub_252693480();
  if (v18 > 2)
  {
    if (v18 <= 4)
    {
      if (v18 == 3)
      {
        MEMORY[0x2530A4FE0](3);
        v20 = v19;
        v21 = 3;
      }

      else
      {
        MEMORY[0x2530A4FE0](4);
        v20 = v19;
        v21 = 4;
      }

      goto LABEL_46;
    }

    if (v18 == 5)
    {
      MEMORY[0x2530A4FE0](5);
      v20 = v19;
      v21 = 5;
      goto LABEL_46;
    }

    if (v18 == 6)
    {
      MEMORY[0x2530A4FE0](6);
      v20 = v19;
      v21 = 6;
      goto LABEL_46;
    }

LABEL_42:
    MEMORY[0x2530A4FE0](7);
    sub_25235E190(v19, v18);
    sub_252692C80();
    sub_252693480();
    v20 = v19;
    v21 = v18;
    goto LABEL_46;
  }

  if (!v18)
  {
    MEMORY[0x2530A4FE0](0);
    v20 = v19;
    v21 = 0;
    goto LABEL_46;
  }

  if (v18 == 1)
  {
    MEMORY[0x2530A4FE0](1);
    v20 = v19;
    v21 = 1;
    goto LABEL_46;
  }

  if (v18 != 2)
  {
    goto LABEL_42;
  }

  MEMORY[0x2530A4FE0](2);
  v20 = v19;
  v21 = 2;
LABEL_46:
  sub_25235E2A8(v20, v21);
LABEL_47:
  MEMORY[0x2530A4FE0](*(v1 + v16[10]));
  v22 = *(v1 + v16[11]);
  if (v22 == 3)
  {
    return sub_252693480();
  }

  sub_252693480();
  return MEMORY[0x2530A4FE0](v22);
}

uint64_t AccessoryControl.MultiSectionPickerState.selectedOptionIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_252436F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v62 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = a2;
  v59 = v7;
  v16 = 0;
  v57 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v55 = (v20 + 63) >> 6;
  v56 = v18;
  v23 = &qword_27F4DB4C0;
  v24 = &unk_252695780;
  while (v22)
  {
    v60 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_16:
    v30 = *(v57 + 48) + 16 * v25;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = v61;
    sub_25243FF80(*(v57 + 56) + *(v62 + 72) * v25, v61, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v35 = *(v34 + 48);
    *v12 = v31;
    v12[8] = v32;
    sub_25243FED8(v33, &v12[v35], type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
LABEL_17:
    sub_2523714D4(v12, v15, &qword_27F4DB4B0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v37 = (*(*(v36 - 8) + 48))(v15, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return 1;
    }

    v39 = *(v36 + 48);
    v40 = *v15;
    v41 = v15[8];
    v42 = v59;
    sub_25243FED8(&v15[v39], v59, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v43 = v58;
    v44 = sub_25236743C(v40, v41);
    if ((v45 & 1) == 0)
    {
      sub_25243FFE8(v42, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
      return 0;
    }

    v46 = v38;
    v47 = v24;
    v48 = v23;
    v49 = v15;
    v50 = v12;
    v51 = v61;
    sub_25243FF80(*(v43 + 56) + *(v62 + 72) * v44, v61, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v52 = _s22HomeAccessoryControlUI0bC0V17PickerButtonStateV09SelectionG0O2eeoiySbAG_AGtFZ_0(v51, v42);
    v53 = v51;
    v12 = v50;
    v15 = v49;
    v23 = v48;
    v24 = v47;
    sub_25243FFE8(v53, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    result = sub_25243FFE8(v42, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v22 = v60;
    if ((v52 & 1) == 0)
    {
      return v46;
    }
  }

  if (v55 <= v16 + 1)
  {
    v26 = v16 + 1;
  }

  else
  {
    v26 = v55;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v55)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
      v60 = 0;
      v16 = v27;
      goto LABEL_17;
    }

    v29 = *(v56 + 8 * v28);
    ++v16;
    if (v29)
    {
      v60 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2524373FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_252372350(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252437504(uint64_t a1, uint64_t a2)
{
  v96 = sub_25268DA10();
  v4 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v105);
  v7 = &v83 - v6;
  v102 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v106 = *(v102 - 8);
  v8 = MEMORY[0x28223BE20](v102);
  v108 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v83 - v10;
  v107 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v11 = *(v107 - 8);
  v12 = MEMORY[0x28223BE20](v107);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v101 = (&v83 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = (&v83 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v83 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB758);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v98 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v92 = &v83 - v27;
  v86 = v22;
  v90 = v14;
  v87 = v11;
  v28 = 0;
  v29 = *(a1 + 64);
  v84 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v83 = (v30 + 63) >> 6;
  v88 = (v4 + 32);
  v89 = (v4 + 8);
  v91 = a2;
  v85 = a1;
  while (v32)
  {
    v93 = (v32 - 1) & v32;
    v33 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v38 = v86;
    sub_25243FF80(*(a1 + 48) + *(v87 + 72) * v33, v86, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v39 = *(*(a1 + 56) + 8 * v33);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
    v41 = *(v40 + 48);
    v42 = v38;
    v43 = v98;
    sub_25243FED8(v42, v98, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    *(v43 + v41) = v39;
    (*(*(v40 - 8) + 56))(v43, 0, 1, v40);

LABEL_18:
    v44 = v43;
    v45 = v92;
    sub_2523714D4(v44, v92, &qword_27F4DB758);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
    v47 = 1;
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      return v47;
    }

    v48 = *(v46 + 48);
    v49 = v97;
    sub_25243FED8(v45, v97, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v50 = *(v45 + v48);
    v51 = v91;
    v52 = sub_2523674BC(v49);
    v54 = v53;
    sub_25243FFE8(v49, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if ((v54 & 1) == 0 || (v55 = *(*(v51 + 56) + 8 * v52), v56 = *(v55 + 16), v57 = v50, v56 != *(v50 + 16)))
    {
LABEL_51:

      return 0;
    }

    v58 = v102;
    if (v56 && v55 != v50)
    {
      v59 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v103 = v50 + v59;
      v104 = v55 + v59;

      v60 = 0;
      v99 = v56;
      while (1)
      {
        if (v60 >= *(v55 + 16))
        {
          goto LABEL_55;
        }

        v61 = *(v106 + 72) * v60;
        result = sub_25243FF80(v104 + v61, v109, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        if (v60 >= *(v57 + 16))
        {
          goto LABEL_56;
        }

        v62 = v108;
        sub_25243FF80(v103 + v61, v108, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        v63 = *(v105 + 48);
        sub_25243FF80(v109, v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        sub_25243FF80(v62, &v7[v63], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_25243FF80(v7, v101, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              goto LABEL_48;
            }

            if (*v101 != *&v7[v63])
            {
LABEL_45:
              sub_25243FFE8(v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
LABEL_49:
              sub_25243FFE8(v108, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
              sub_25243FFE8(v109, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
LABEL_50:

              goto LABEL_51;
            }
          }

          else
          {
            v67 = v55;
            v68 = v57;
            v69 = v90;
            sub_25243FF80(v7, v90, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
            if (swift_getEnumCaseMultiPayload() != 2)
            {
              (*v89)(v69, v96);
LABEL_48:
              sub_252372288(v7, &qword_27F4DAE50);
              goto LABEL_49;
            }

            v71 = v95;
            v70 = v96;
            (*v88)(v95, &v7[v63], v96);
            v94 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
            v72 = *v89;
            v73 = v71;
            v58 = v102;
            (*v89)(v73, v70);
            v72(v69, v70);
            v57 = v68;
            v55 = v67;
            if ((v94 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          sub_25243FFE8(v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        }

        else
        {
          sub_25243FF80(v7, v100, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_48;
          }

          v65 = *v100;
          v66 = *&v7[v63];
          sub_25243FFE8(v7, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
          if (v65 != v66)
          {
            goto LABEL_49;
          }
        }

        v74 = *(v58 + 20);
        v75 = (v109 + v74);
        v76 = *(v109 + v74 + 8);
        v77 = (v108 + v74);
        if ((*v75 != *v77 || v76 != v77[1]) && (sub_2526933B0() & 1) == 0)
        {
          goto LABEL_49;
        }

        v78 = *(v58 + 24);
        v79 = v109;
        v80 = *(v109 + v78);
        v81 = *(v108 + v78);
        sub_25243FFE8(v108, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        result = sub_25243FFE8(v79, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        if (v80 != v81)
        {
          goto LABEL_50;
        }

        if (v99 == ++v60)
        {

          break;
        }
      }
    }

    a1 = v85;
    v32 = v93;
  }

  if (v83 <= v28 + 1)
  {
    v34 = v28 + 1;
  }

  else
  {
    v34 = v83;
  }

  v35 = v34 - 1;
  while (1)
  {
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v36 >= v83)
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB760);
      v43 = v98;
      (*(*(v82 - 8) + 56))(v98, 1, 1, v82);
      v93 = 0;
      v28 = v35;
      goto LABEL_18;
    }

    v37 = *(v84 + 8 * v36);
    ++v28;
    if (v37)
    {
      v93 = (v37 - 1) & v37;
      v33 = __clz(__rbit64(v37)) | (v36 << 6);
      v28 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_252437F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v49 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB778);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x28223BE20](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v46 = &v44 - v11;
  v47 = v12;
  v13 = 0;
  v44 = a2;
  v45 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v51 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v47;
LABEL_16:
    v27 = v45;
    v28 = v48;
    sub_25243FF80(*(v45 + 48) + *(v49 + 72) * v21, v48, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v29 = *(*(v27 + 56) + 8 * v21);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
    v31 = *(v30 + 48);
    sub_25243FED8(v28, v22, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    *(v22 + v31) = v29;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    a2 = v44;
LABEL_17:
    v32 = v46;
    sub_2523714D4(v22, v46, &qword_27F4DB778);
    v33 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 != 1)
    {
      v37 = *(v34 + 48);
      v38 = v50;
      sub_25243FED8(v33, v50, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v39 = *(v33 + v37);
      v40 = sub_2523674BC(v38);
      v42 = v41;
      result = sub_25243FFE8(v38, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (v42)
      {
        v19 = v51;
        if (*(*(a2 + 56) + 8 * v40) == v39)
        {
          continue;
        }
      }
    }

    return v36;
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v47;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB780);
      (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
      v51 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v26 = *(v15 + 8 * v25);
    ++v13;
    if (v26)
    {
      v51 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_252438390(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E8E0();
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v57 - v8;
  v76 = sub_25268E310();
  v67 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB740);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v57 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v69 = v14;
    v64 = v6;
    v65 = a2;
    v17 = 0;
    v61 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v58 = (v21 + 63) >> 6;
    v59 = v19;
    v60 = v67 + 16;
    v74 = (v67 + 32);
    v72 = v77 + 16;
    v73 = (v77 + 32);
    v62 = (v67 + 8);
    v63 = (v77 + 8);
    while (v23)
    {
      v71 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v31 = v61;
      v33 = v66;
      v32 = v67;
      v34 = v76;
      (*(v67 + 16))(v66, *(v61 + 48) + *(v67 + 72) * v24, v76, v15);
      v35 = *(v31 + 56);
      v36 = v77;
      v37 = v75;
      (*(v77 + 16))(v75, v35 + *(v77 + 72) * v24, v4);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
      v39 = *(v38 + 48);
      v40 = *(v32 + 32);
      v28 = v69;
      v40(v69, v33, v34);
      (*(v36 + 32))(v28 + v39, v37, v4);
      (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
      v27 = v70;
      v23 = v71;
LABEL_17:
      sub_2523714D4(v28, v27, &qword_27F4DB740);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
      if ((*(*(v41 - 8) + 48))(v27, 1, v41) == 1)
      {
        return;
      }

      v42 = *(v41 + 48);
      v43 = v4;
      v44 = v68;
      v45 = v76;
      (*v74)(v68, v27, v76);
      v46 = v64;
      (*v73)(v64, v27 + v42, v43);
      v47 = v65;
      v48 = sub_2523674E8(v44);
      v50 = v49;
      (*v62)(v44, v45);
      if ((v50 & 1) == 0)
      {
        (*v63)(v46, v43);
        return;
      }

      v51 = v77;
      v52 = *(v47 + 56) + *(v77 + 72) * v48;
      v53 = v75;
      (*(v77 + 16))(v75, v52, v43);
      sub_2524434A4(&qword_27F4DCCB8, MEMORY[0x277D15A78]);
      v54 = sub_252692B70();
      v55 = *(v51 + 8);
      v55(v53, v43);
      v55(v46, v43);
      v4 = v43;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v58 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v58;
    }

    v26 = v25 - 1;
    v28 = v69;
    v27 = v70;
    while (1)
    {
      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v29 >= v58)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB748);
        (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
        v23 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      v30 = *(v59 + 8 * v29);
      ++v17;
      if (v30)
      {
        v71 = (v30 - 1) & v30;
        v24 = __clz(__rbit64(v30)) | (v29 << 6);
        v17 = v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t AccessoryControl.MultiSectionPickerState.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  sub_2523DD734(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_252438A30()
{
  v1 = *v0;
  sub_252693460();
  sub_2523DD734(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_252438A80()
{
  v1 = *v0;
  sub_252693460();
  sub_2523DD734(v3, v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerState.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.ColorState.brightness.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AccessoryControl.ColorState(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

unint64_t AccessoryControl.ColorState.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_252693210();

  v11 = 0xD000000000000012;
  v12 = 0x80000002526AF150;
  sub_25237153C(v0, v3, &qword_27F4DB2A8);
  v4 = sub_252692C00();
  MEMORY[0x2530A4800](v4);

  MEMORY[0x2530A4800](0x6867697262202D20, 0xEE003A7373656E74);
  v5 = v0 + *(type metadata accessor for AccessoryControl.ColorState(0) + 20);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v9 = v6;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBE8);
  v7 = sub_252692C00();
  MEMORY[0x2530A4800](v7);

  return v11;
}

uint64_t AccessoryControl.ColorState.hash(into:)()
{
  v1 = v0;
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25237153C(v1, &v13 - v7, &qword_27F4DB2A8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_252693480();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_252693480();
    sub_2524434A4(&qword_27F4DB798, MEMORY[0x277D15B48]);
    sub_252692B30();
    (*(v3 + 8))(v5, v2);
  }

  v9 = v1 + *(type metadata accessor for AccessoryControl.ColorState(0) + 20);
  if (*(v9 + 8) == 1)
  {
    return sub_252693480();
  }

  v11 = *v9;
  sub_252693480();
  if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x2530A5020](v12);
}

uint64_t AccessoryControl.SimpleAreaPickerState.selectedAreaIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static AccessoryControl.SimpleAreaPickerState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_252439504(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

void sub_252439154(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_2524434A4(&qword_27F4DAE60, MEMORY[0x277CC95F0]);
        v26 = sub_252692B20();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_2524434A4(&qword_27F4DAF90, MEMORY[0x277CC95F0]);
          v31 = sub_252692B70();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_252439504(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x2530A4FB0](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25243965C(uint64_t a1, uint64_t a2)
{
  v66 = sub_25268DA10();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v64 = &v52 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v67 = (&v52 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v71 = &v52 - v21;
  result = MEMORY[0x28223BE20](v20);
  v25 = &v52 - v24;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v26 = 0;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v70 = a2 + 56;
  v65 = (v4 + 8);
  v60 = (v4 + 32);
  v57 = a1;
  v56 = v23;
  v55 = v25;
  v54 = a1 + 56;
  v53 = v31;
  v61 = v6;
  if (!v30)
  {
    goto LABEL_8;
  }

  do
  {
    v32 = __clz(__rbit64(v30));
    v58 = (v30 - 1) & v30;
LABEL_13:
    v59 = v26;
    v35 = *(a1 + 48);
    v69 = *(v23 + 72);
    sub_25243FF80(v35 + v69 * (v32 | (v26 << 6)), v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_25243FED8(v25, v71, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_252693460();
    AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
    v36 = sub_2526934C0();
    v37 = -1 << *(a2 + 32);
    v38 = v36 & ~v37;
    v39 = v64;
    if (((*(v70 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
LABEL_31:
      sub_25243FFE8(v71, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      return 0;
    }

    v68 = ~v37;
    while (1)
    {
      sub_25243FF80(*(a2 + 48) + v38 * v69, v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v40 = *(v6 + 48);
      sub_25243FF80(v19, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_25243FF80(v71, &v8[v40], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_25243FFE8(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_25243FF80(v8, v67, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_16;
      }

      v44 = *v67;
      v45 = *&v8[v40];
      sub_25243FFE8(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (v44 == v45)
      {
        goto LABEL_28;
      }

LABEL_17:
      v38 = (v38 + 1) & v68;
      if (((*(v70 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25243FFE8(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_25243FF80(v8, v39, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v42 = *v39;
      v43 = *&v8[v40];
      sub_25243FFE8(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      if (v42 == v43)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    sub_25243FF80(v8, v12, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_25243FFE8(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      (*v65)(v12, v66);
LABEL_16:
      sub_252372288(v8, &qword_27F4DAE50);
      goto LABEL_17;
    }

    v46 = &v8[v40];
    v47 = v62;
    v48 = v66;
    (*v60)(v62, v46, v66);
    v63 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
    v49 = a2;
    v50 = *v65;
    (*v65)(v47, v48);
    sub_25243FFE8(v19, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v51 = v48;
    v39 = v64;
    v50(v12, v51);
    a2 = v49;
    v6 = v61;
    sub_25243FFE8(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if ((v63 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    result = sub_25243FFE8(v71, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    a1 = v57;
    v23 = v56;
    v25 = v55;
    v26 = v59;
    v27 = v54;
    v31 = v53;
    v30 = v58;
  }

  while (v58);
LABEL_8:
  v33 = v26;
  while (1)
  {
    v26 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      return 1;
    }

    v34 = *(v27 + 8 * v26);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v58 = (v34 - 1) & v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252439D74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v25 = result + 56;
  v26 = result;
  v24 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 16 * (v10 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_252693460();
    MEMORY[0x2530A4FE0](v15);

    sub_2523D782C(v28, v14);
    v16 = sub_2526934C0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_26:
      j__swift_bridgeObjectRelease();
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(a2 + 48) + 16 * v18;
      v21 = *v20;
      if ((*(v20 + 8) & 1) == 0)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRetain();
      v22 = sub_25243965C(v21, v14);
      j__swift_bridgeObjectRelease();
      j__swift_bridgeObjectRelease();
      j__swift_bridgeObjectRelease();
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_16:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v15)
    {
LABEL_15:
      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRetain();
      j__swift_bridgeObjectRelease();
      j__swift_bridgeObjectRelease();
      goto LABEL_16;
    }

    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    v23 = sub_25243965C(v21, v14);
    j__swift_bridgeObjectRelease();
    j__swift_bridgeObjectRelease();
    j__swift_bridgeObjectRelease();
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    j__swift_bridgeObjectRelease();
    v4 = v25;
    result = v26;
    v8 = v24;
    v7 = v27;
  }

  while (v27);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25243A038(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    sub_252693460();
    MEMORY[0x2530A4FE0](v13);
    result = sub_2526934C0();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessoryControl.SimpleAreaPickerState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_2526934A0();

  return sub_2523D7718(a1, v3);
}

uint64_t AccessoryControl.SimpleAreaPickerState.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_252693460();
  sub_2526934A0();
  sub_2523D7718(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25243A258(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_252439504(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25243A27C()
{
  v1 = *(v0 + 8);
  sub_252693460();
  sub_2526934A0();
  sub_2523D7718(v3, v1);
  return sub_2526934C0();
}

uint64_t sub_25243A2DC(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_2526934A0();

  return sub_2523D7718(a1, v3);
}

uint64_t sub_25243A32C()
{
  v1 = *(v0 + 8);
  sub_252693460();
  sub_2526934A0();
  sub_2523D7718(v3, v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonState.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessoryControl.PickerButtonState.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccessoryControl.PickerButtonState.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AccessoryControl.PickerButtonState.selectionState.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static AccessoryControl.PickerButtonState.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2526933B0() & 1) == 0 || (sub_2523E5934(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_252436F58(v3, v4);
}

uint64_t AccessoryControl.PickerButtonState.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_252692C80();
  MEMORY[0x2530A4FE0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_252692C80();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return sub_2523DCD6C(a1, v3);
}

uint64_t AccessoryControl.PickerButtonState.hashValue.getter()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_252693460();
  AccessoryControl.PickerButtonState.hash(into:)(v3);
  return sub_2526934C0();
}

uint64_t sub_25243A644(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2526933B0() & 1) == 0 || (sub_2523E5934(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_252436F58(v3, v4);
}

uint64_t sub_25243A6D8()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_252693460();
  AccessoryControl.PickerButtonState.hash(into:)(v3);
  return sub_2526934C0();
}

uint64_t sub_25243A738()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_252693460();
  AccessoryControl.PickerButtonState.hash(into:)(v3);
  return sub_2526934C0();
}

uint64_t AccessoryControl.StatusButtonState.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessoryControl.StatusButtonState.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccessoryControl.StatusButtonState.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccessoryControl.StatusButtonState.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AccessoryControl.StatusButtonState.paused.setter(char a1)
{
  result = type metadata accessor for AccessoryControl.StatusButtonState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AccessoryControl.StatusButtonState.identify.setter(char a1)
{
  result = type metadata accessor for AccessoryControl.StatusButtonState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AccessoryControl.StatusButtonState.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_252692C80();
  if (*(v1 + 24))
  {
    sub_252693480();
    sub_252692C80();
  }

  else
  {
    sub_252693480();
  }

  v10 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  sub_25237153C(v1 + *(v10 + 24), v9, &qword_27F4DB458);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_25243FED8(v9, v6, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    sub_252693480();
    AccessoryControl.PickerButtonState.SelectionState.hash(into:)(a1);
    sub_25243FFE8(v6, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  }

  sub_252693480();
  if (*(v1 + *(v10 + 32)) != 2)
  {
    sub_252693480();
  }

  return sub_252693480();
}

uint64_t AccessoryControl.AutoClimateState.activityState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryControl.AutoClimateState(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(v3 + 16);

  return sub_25235E298(v4, v5);
}

uint64_t AccessoryControl.AutoClimateState.activityState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for AccessoryControl.AutoClimateState(0) + 24);
  result = sub_25235E2A8(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AccessoryControl.AutoClimateState.runningState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControl.AutoClimateState(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AccessoryControl.AutoClimateState.runningState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryControl.AutoClimateState(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t AccessoryControl.AutoClimateState.targetTemperature.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_25243B0D0@<X0>(char *a1@<X8>)
{
  v2 = sub_2526932D0();

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

uint64_t sub_25243B13C@<X0>(char *a1@<X8>)
{
  v2 = sub_2526932D0();

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

uint64_t sub_25243B198(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x796772656E45;
  }

  else
  {
    v2 = 0x746573657250;
  }

  if (*a2)
  {
    v3 = 0x796772656E45;
  }

  else
  {
    v3 = 0x746573657250;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2526933B0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25243B218()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t sub_25243B288()
{
  sub_252693460();
  sub_252692C80();

  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimateState.AutoClimateHold.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v10, v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) != 1)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      v14 = sub_25268DB10();
      (*(*(v14 - 8) + 8))(&v4[v13], v14);
      v15 = sub_25268D990();
      (*(*(v15 - 8) + 8))(&v4[v12], v15);
      return 1;
    }

    return 0;
  }

  sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v17 = (*(*(v16 - 8) + 48))(v7, 3, v16);
  if (v17 <= 1)
  {
    if (!v17)
    {
      v18 = *(v16 + 48);
      v19 = *(v16 + 64);
      v20 = sub_25268DB10();
      (*(*(v20 - 8) + 8))(&v7[v19], v20);
      sub_252372288(&v7[v18], &qword_27F4DB2D8);
      return 3;
    }

    return 0;
  }

  if (v17 == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t AccessoryControl.AutoClimateState.SetpointHold.id.getter()
{
  v1 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  v6 = v5;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    result = 0;
    if (!v6)
    {
      v8 = *(v4 + 48);
      v9 = *(v4 + 64);
      v10 = sub_25268DB10();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      sub_252372288(&v3[v8], &qword_27F4DB2D8);
      return 3;
    }
  }

  return result;
}

uint64_t AccessoryControl.AutoClimateState.EnergyHold.id.getter()
{
  v1 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v0, v3, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  result = 0;
  if (v5 != 1)
  {
    v7 = *(v4 + 48);
    v8 = *(v4 + 64);
    v9 = sub_25268DB10();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
    v10 = sub_25268D990();
    (*(*(v10 - 8) + 8))(&v3[v7], v10);
    return 1;
  }

  return result;
}

uint64_t sub_25243B904(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_25243FF80(v2, &v18 - v5, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v8 = (*(*(v7 - 8) + 48))(v6, 3, v7);
  if (v8 > 1)
  {
    return sub_252692C40();
  }

  if (v8)
  {
    return 0;
  }

  v9 = *v6;
  v10 = *(v7 + 48);
  v11 = *(v7 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D83B88];
  *(v12 + 16) = xmmword_252694E90;
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v9;
  v15 = sub_252692C60();

  v16 = sub_25268DB10();
  (*(*(v16 - 8) + 8))(&v6[v11], v16);
  sub_252372288(&v6[v10], &qword_27F4DB2D8);
  return v15;
}

uint64_t sub_25243BB44(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = sub_25268DB10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268D990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  sub_25243FF80(v5, &v26 - v15, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    return sub_252692C40();
  }

  v19 = *(v17 + 48);
  v20 = *(v17 + 64);
  (*(v11 + 32))(v13, &v16[v19], v10);
  (*(v7 + 32))(v9, &v16[v20], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252694E90;
  v22 = sub_252435C30(v9);
  v24 = v23;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_2523AB7A4();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v25 = sub_252692C60();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return v25;
}

uint64_t sub_25243BE80(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_25243FF80(v2, &v18 - v5, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v8 = (*(*(v7 - 8) + 48))(v6, 3, v7);
  if (v8 > 1)
  {
    return sub_252692C40();
  }

  if (v8)
  {
    return 0;
  }

  v9 = *v6;
  v10 = *(v7 + 48);
  v11 = *(v7 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D83B88];
  *(v12 + 16) = xmmword_252694E90;
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v9;
  v15 = sub_252692C60();

  v16 = sub_25268DB10();
  (*(*(v16 - 8) + 8))(&v6[v11], v16);
  sub_252372288(&v6[v10], &qword_27F4DB2D8);
  return v15;
}

uint64_t sub_25243C0D8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v7 = v3;
  v8 = sub_25268D990();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25268DB10();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = a1(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v32 - v21;
  sub_25243FF80(v7, &v32 - v21, a2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  if ((*(*(v23 - 8) + 48))(v22, 3, v23))
  {
    sub_25243FFE8(v22, a3);
  }

  else
  {
    v24 = *(v23 + 64);
    sub_2523714D4(&v22[*(v23 + 48)], v19, &qword_27F4DB2D8);
    (*(v33 + 32))(v13, &v22[v24], v11);
    sub_25237153C(v19, v17, &qword_27F4DB2D8);
    v25 = v32;
    if ((*(v32 + 48))(v17, 1, v8) != 1)
    {
      (*(v25 + 32))(v10, v17, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_252694E90;
      v28 = sub_252435C30(v13);
      v30 = v29;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_2523AB7A4();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      v31 = sub_252692C60();

      (*(v25 + 8))(v10, v8);
      (*(v33 + 8))(v13, v11);
      sub_252372288(v19, &qword_27F4DB2D8);
      return v31;
    }

    (*(v33 + 8))(v13, v11);
    sub_252372288(v19, &qword_27F4DB2D8);
    sub_252372288(v17, &qword_27F4DB2D8);
  }

  return 0;
}

uint64_t sub_25243C520()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v10, v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) != 1)
    {
      v15 = *v4;
      v16 = *(v11 + 48);
      v17 = *(v11 + 64);
      v18 = sub_25268DB10();
      (*(*(v18 - 8) + 8))(&v4[v17], v18);
      v19 = sub_25268D990();
      (*(*(v19 - 8) + 8))(&v4[v16], v19);
      return v15;
    }

    v12 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
    v13 = v4;
  }

  else
  {
    sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
    if (!(*(*(v14 - 8) + 48))(v7, 3, v14))
    {
      v15 = *v7;
      v20 = *(v14 + 48);
      v21 = *(v14 + 64);
      v22 = sub_25268DB10();
      (*(*(v22 - 8) + 8))(&v7[v21], v22);
      sub_252372288(&v7[v20], &qword_27F4DB2D8);
      return v15;
    }

    v12 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
    v13 = v7;
  }

  sub_25243FFE8(v13, v12);
  return 0;
}

uint64_t sub_25243C868()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v10, v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
    {
      sub_25243FFE8(v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      return 1;
    }

    v18 = *(v11 + 48);
    v19 = *(v11 + 64);
    v20 = sub_25268DB10();
    (*(*(v20 - 8) + 8))(&v4[v19], v20);
    v21 = sub_25268D990();
    (*(*(v21 - 8) + 8))(&v4[v18], v21);
    return 0;
  }

  sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v13 = (*(*(v12 - 8) + 48))(v7, 3, v12);
  if (v13 == 2)
  {
    return 0;
  }

  if (!v13)
  {
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    v16 = sub_25268DB10();
    (*(*(v16 - 8) + 8))(&v7[v15], v16);
    sub_252372288(&v7[v14], &qword_27F4DB2D8);
    return 1;
  }

  sub_25243FFE8(v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  return 2;
}

uint64_t AccessoryControl.AutoClimateState.AutoClimateHold.hash(into:)(uint64_t a1)
{
  v3 = sub_25268DB10();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25268D990();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v1, v20, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FED8(v20, v14, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    MEMORY[0x2530A4FE0](1);
    sub_25243FF80(v14, v12, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) == 1)
    {
      MEMORY[0x2530A4FE0](0);
    }

    else
    {
      v24 = *v12;
      v25 = *(v21 + 48);
      v26 = *(v21 + 64);
      v27 = v33;
      (*(v33 + 32))(v8, &v12[v25], v6);
      v28 = v34;
      v29 = &v12[v26];
      v30 = v35;
      (*(v34 + 32))(v5, v29, v35);
      MEMORY[0x2530A4FE0](1);
      MEMORY[0x2530A4FE0](v24);
      sub_2524434A4(&qword_27F4DB768, MEMORY[0x277CC9578]);
      sub_252692B30();
      sub_2524434A4(&qword_27F4DB770, MEMORY[0x277CC9A70]);
      sub_252692B30();
      (*(v28 + 8))(v5, v30);
      (*(v27 + 8))(v8, v6);
    }

    v22 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
    v23 = v14;
  }

  else
  {
    sub_25243FED8(v20, v17, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    MEMORY[0x2530A4FE0](0);
    AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(a1);
    v22 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
    v23 = v17;
  }

  return sub_25243FFE8(v23, v22);
}

uint64_t sub_25243D0B4@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryControl.AutoClimateState.AutoClimateHold.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25243D108(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = sub_25268D990();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25268DB10();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = a2(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - v19;
  sub_25243FF80(v3, &v29 - v19, a3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v22 = (*(*(v21 - 8) + 48))(v20, 3, v21);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    return MEMORY[0x2530A4FE0](v27);
  }

  if (v22)
  {
    v27 = 0;
    return MEMORY[0x2530A4FE0](v27);
  }

  v23 = *v20;
  v24 = *(v21 + 48);
  v25 = *(v21 + 64);
  sub_2523714D4(&v20[v24], v17, &qword_27F4DB2D8);
  (*(v30 + 32))(v11, &v20[v25], v9);
  MEMORY[0x2530A4FE0](3);
  MEMORY[0x2530A4FE0](v23);
  sub_25237153C(v17, v15, &qword_27F4DB2D8);
  v26 = v29;
  if ((*(v29 + 48))(v15, 1, v6) == 1)
  {
    sub_252693480();
  }

  else
  {
    (*(v26 + 32))(v8, v15, v6);
    sub_252693480();
    sub_2524434A4(&qword_27F4DB768, MEMORY[0x277CC9578]);
    sub_252692B30();
    (*(v26 + 8))(v8, v6);
  }

  sub_2524434A4(&qword_27F4DB770, MEMORY[0x277CC9A70]);
  sub_252692B30();
  (*(v30 + 8))(v11, v9);
  return sub_252372288(v17, &qword_27F4DB2D8);
}

uint64_t sub_25243D598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v5, v4, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  result = (*(*(v6 - 8) + 48))(v4, 3, v6);
  if (result > 1)
  {
    if (result == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else if (result)
  {
    v11 = 0;
  }

  else
  {
    v8 = *(v6 + 48);
    v9 = *(v6 + 64);
    v10 = sub_25268DB10();
    (*(*(v10 - 8) + 8))(&v4[v9], v10);
    result = sub_252372288(&v4[v8], &qword_27F4DB2D8);
    v11 = 3;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_25243D728(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = sub_25268DB10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268D990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  sub_25243FF80(v3, &v22 - v15, a3);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    return MEMORY[0x2530A4FE0](0);
  }

  v19 = *v16;
  v20 = *(v17 + 48);
  v21 = *(v17 + 64);
  (*(v11 + 32))(v13, &v16[v20], v10);
  (*(v7 + 32))(v9, &v16[v21], v6);
  MEMORY[0x2530A4FE0](1);
  MEMORY[0x2530A4FE0](v19);
  sub_2524434A4(&qword_27F4DB768, MEMORY[0x277CC9578]);
  sub_252692B30();
  sub_2524434A4(&qword_27F4DB770, MEMORY[0x277CC9A70]);
  sub_252692B30();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_25243DA8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v5, v4, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(v6 + 48);
    v10 = *(v6 + 64);
    v11 = sub_25268DB10();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
    v12 = sub_25268D990();
    result = (*(*(v12 - 8) + 8))(&v4[v9], v12);
    v8 = 1;
  }

  *a2 = v8;
  return result;
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O20localizedDescriptionSSSgvg_0()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 <= 6)
    {
      return sub_252692C40();
    }

LABEL_5:
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_252694E90;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_2523AB7A4();
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;

    v4 = sub_252692C60();

    return v4;
  }

  if (v1 > 2)
  {
    goto LABEL_5;
  }

  return sub_252692C40();
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      return MEMORY[0x2530A4FE0](v2);
    }

    if (v1 == 5)
    {
      v2 = 5;
      return MEMORY[0x2530A4FE0](v2);
    }

    if (v1 == 6)
    {
      v2 = 6;
      return MEMORY[0x2530A4FE0](v2);
    }

LABEL_13:
    MEMORY[0x2530A4FE0](7);
    sub_252692C80();
    return sub_252693480();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x2530A4FE0](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x2530A4FE0](v2);
  }

  if (v1 != 2)
  {
    goto LABEL_13;
  }

  v2 = 2;
  return MEMORY[0x2530A4FE0](v2);
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  sub_252693460();
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_17;
      case 1:
        v2 = 1;
        goto LABEL_17;
      case 2:
        v2 = 2;
LABEL_17:
        MEMORY[0x2530A4FE0](v2);
        return sub_2526934C0();
    }
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      goto LABEL_17;
    }

    if (v1 == 5)
    {
      v2 = 5;
      goto LABEL_17;
    }

    if (v1 == 6)
    {
      v2 = 6;
      goto LABEL_17;
    }
  }

  MEMORY[0x2530A4FE0](7);
  sub_252692C80();
  sub_252693480();
  return sub_2526934C0();
}

uint64_t sub_25243E060(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = *(v3 + 16);
  v8 = *v3;
  v9 = v5;
  sub_252693460();
  a3(v7);
  return sub_2526934C0();
}

uint64_t sub_25243E0D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 16);
  v9 = *v4;
  v10 = v6;
  sub_252693460();
  a4(v8);
  return sub_2526934C0();
}

uint64_t AccessoryControl.AutoClimateState.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  if (*v1 == 2)
  {
    sub_252693480();
  }

  else
  {
    sub_252693480();
    sub_252692C80();
  }

  v10 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  sub_25237153C(&v1[v10[5]], v9, &qword_27F4DB300);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_25243FED8(v9, v6, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_252693480();
    AccessoryControl.AutoClimateState.AutoClimateHold.hash(into:)(a1);
    sub_25243FFE8(v6, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  }

  v11 = &v1[v10[6]];
  v12 = v11[1];
  if (v12 == 7)
  {
    sub_252693480();
    goto LABEL_26;
  }

  v13 = *v11;
  sub_252693480();
  if (v12 > 2)
  {
    if (v12 <= 4)
    {
      if (v12 == 3)
      {
        MEMORY[0x2530A4FE0](3);
        v14 = v13;
        v15 = 3;
      }

      else
      {
        MEMORY[0x2530A4FE0](4);
        v14 = v13;
        v15 = 4;
      }

      goto LABEL_25;
    }

    if (v12 == 5)
    {
      MEMORY[0x2530A4FE0](5);
      v14 = v13;
      v15 = 5;
      goto LABEL_25;
    }

    if (v12 == 6)
    {
      MEMORY[0x2530A4FE0](6);
      v14 = v13;
      v15 = 6;
      goto LABEL_25;
    }

LABEL_21:
    MEMORY[0x2530A4FE0](7);
    sub_25235E190(v13, v12);
    sub_252692C80();
    sub_252693480();
    v14 = v13;
    v15 = v12;
    goto LABEL_25;
  }

  if (!v12)
  {
    MEMORY[0x2530A4FE0](0);
    v14 = v13;
    v15 = 0;
    goto LABEL_25;
  }

  if (v12 == 1)
  {
    MEMORY[0x2530A4FE0](1);
    v14 = v13;
    v15 = 1;
    goto LABEL_25;
  }

  if (v12 != 2)
  {
    goto LABEL_21;
  }

  MEMORY[0x2530A4FE0](2);
  v14 = v13;
  v15 = 2;
LABEL_25:
  sub_25235E2A8(v14, v15);
LABEL_26:
  v16 = v1[v10[7]];
  sub_252693480();
  if (v16 != 3)
  {
    MEMORY[0x2530A4FE0](v16);
  }

  v17 = &v1[v10[8]];
  if (v17[8] == 1)
  {
    return sub_252693480();
  }

  v19 = *v17;
  sub_252693480();
  if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return MEMORY[0x2530A5020](v20);
}

uint64_t AccessoryControl.AutoClimatePickerState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_25237153C(v2, &v12 - v9, &qword_27F4DB330);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_252693480();
  }

  sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  sub_252693480();
  AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(a1);
  return sub_25243FFE8(v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
}

uint64_t AccessoryControl.AutoClimatePickerState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11[-v7 - 8];
  sub_252693460();
  sub_25237153C(v1, v8, &qword_27F4DB330);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_25243FED8(v8, v5, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    sub_252693480();
    AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(v11);
    sub_25243FFE8(v5, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  }

  return sub_2526934C0();
}

uint64_t sub_25243E954(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_25237153C(v2, &v12 - v9, &qword_27F4DB330);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_252693480();
  }

  sub_25243FED8(v10, v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  sub_252693480();
  AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(a1);
  return sub_25243FFE8(v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
}

uint64_t sub_25243EAF4()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11[-v7 - 8];
  sub_252693460();
  sub_25237153C(v1, v8, &qword_27F4DB330);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_252693480();
  }

  else
  {
    sub_25243FED8(v8, v5, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    sub_252693480();
    AccessoryControl.AutoClimateState.SetpointHold.hash(into:)(v11);
    sub_25243FFE8(v5, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  }

  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonState.OptionModification.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  MEMORY[0x2530A4FE0](*(v1 + 8));

  return sub_2523D782C(a1, v3);
}

uint64_t AccessoryControl.PickerButtonState.OptionModification.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_2523D782C(v4, v1);
  return sub_2526934C0();
}

uint64_t sub_25243ED74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_2523D782C(v4, v1);
  return sub_2526934C0();
}

uint64_t sub_25243EDD4(__int128 *a1)
{
  v3 = *v1;
  MEMORY[0x2530A4FE0](*(v1 + 8));

  return sub_2523D782C(a1, v3);
}

uint64_t sub_25243EE24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_2523D782C(v4, v1);
  return sub_2526934C0();
}

uint64_t AccessoryControl.PickerButtonState.SelectionType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

void *sub_25243EEB0@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t AccessoryControl.PickerButtonState.SelectionState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25243FF80(v2, v9, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25243FED8(v9, v6, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v11 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25243FED8(v9, v6, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v11 = 1;
LABEL_5:
    MEMORY[0x2530A4FE0](v11);
    AccessoryControl.PickerButtonViewConfig.Option.Identifier.hash(into:)();
    return sub_25243FFE8(v6, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  }

  v13 = *v9;
  v14 = v9[8];
  v16 = *(v9 + 2);
  v15 = *(v9 + 3);
  MEMORY[0x2530A4FE0](2);
  sub_2523D782C(a1, v13);

  if (v14 == 2)
  {
    sub_252693480();
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_252693480();
    if (v15)
    {
      goto LABEL_9;
    }

    return sub_252693480();
  }

  sub_252693480();
  MEMORY[0x2530A4FE0](v14 & 1);
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_252693480();
  sub_2523D7BEC(a1, v16);

  if (v15)
  {
LABEL_9:
    sub_252693480();
    sub_2523DD858(a1, v15);
  }

  return sub_252693480();
}

uint64_t sub_25243F11C(void (*a1)(_BYTE *))
{
  sub_252693460();
  a1(v3);
  return sub_2526934C0();
}

uint64_t sub_25243F180(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_252693460();
  a3(v5);
  return sub_2526934C0();
}

uint64_t sub_25243F1E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_252693460();
  a4(v6);
  return sub_2526934C0();
}

uint64_t _s22HomeAccessoryControlUI0bC0V17PickerButtonStateV09SelectionG0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCC0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v40 - v20;
  v22 = &v40 + *(v19 + 56) - v20;
  sub_25243FF80(a1, &v40 - v20, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  sub_25243FF80(a2, v22, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25243FF80(v21, v17, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_25243FED8(v22, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v25 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(v17, v8);
      sub_25243FFE8(v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      v26 = v17;
      goto LABEL_16;
    }

    sub_25243FFE8(v17, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25243FF80(v21, v12, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v27 = *v12;
    v28 = v12[8];
    v30 = *(v12 + 2);
    v29 = *(v12 + 3);
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_14;
    }

    v31 = v22[8];
    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    v34 = sub_25243965C(v27, *v22);

    if ((v34 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v28 == 2)
    {
      if (v31 != 2)
      {
LABEL_24:

LABEL_25:

LABEL_26:

LABEL_27:
        sub_25243FFE8(v21, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
        goto LABEL_28;
      }
    }

    else if (v31 == 2 || ((v31 ^ v28) & 1) != 0)
    {
      goto LABEL_24;
    }

    if (v30)
    {
      if (!v33)
      {

        goto LABEL_25;
      }

      v36 = sub_252439D74(v35, v33);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v36 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v33)
    {

      goto LABEL_26;
    }

    if (v29)
    {
      if (!v32)
      {
        goto LABEL_26;
      }

      v39 = sub_252437F5C(v38, v32);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v39 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v32)
    {
      goto LABEL_26;
    }

    sub_25243FFE8(v21, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    v25 = 1;
    return v25 & 1;
  }

  sub_25243FF80(v21, v15, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25243FFE8(v15, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
LABEL_14:
    sub_252372288(v21, &qword_27F4DCCC0);
LABEL_28:
    v25 = 0;
    return v25 & 1;
  }

  v24 = v41;
  sub_25243FED8(v22, v41, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v25 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV6OptionV10IdentifierO2eeoiySbAI_AItFZ_0(v15, v24);
  sub_25243FFE8(v24, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  v26 = v15;
LABEL_16:
  sub_25243FFE8(v26, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  sub_25243FFE8(v21, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  return v25 & 1;
}

BOOL _s22HomeAccessoryControlUI0bC0V11BinaryStateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) == *(a2 + 1))
    {
      v9 = a2[16];
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (!v6)
  {
    return !v8;
  }

  return v8 && (v5 == v7 && v6 == v8 || (sub_2526933B0() & 1) != 0);
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E10EnergyHoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DB10();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - v8;
  v9 = sub_25268D990();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v52 - v13;
  v14 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCD00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = (&v52 + *(v18 + 56) - v19);
  sub_25243FF80(a1, &v52 - v19, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  sub_25243FF80(a2, v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v20, 1, v22) != 1)
  {
    sub_25243FF80(v20, v16, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v25 = *(v22 + 48);
    v26 = *(v22 + 64);
    if (v23(v21, 1, v22) != 1)
    {
      v27 = *v16;
      v53 = *v21;
      v54 = v27;
      v28 = v60;
      v52 = *(v61 + 32);
      v52(v59, &v16[v25], v60);
      v55 = v5;
      v29 = *(v5 + 32);
      v30 = &v16[v26];
      v31 = v58;
      v29(v58, v30, v4);
      v32 = v21 + v25;
      v33 = v56;
      v52(v56, v32, v28);
      v34 = v21 + v26;
      v35 = v57;
      v29(v57, v34, v4);
      if (v54 == v53)
      {
        v36 = v55;
        v37 = v59;
        v38 = v33;
        if (sub_25268D970())
        {
          v39 = v58;
          v24 = MEMORY[0x25309F660](v58, v35);
          v40 = *(v36 + 8);
          v41 = v4;
          v40(v35, v4);
          v42 = *(v61 + 8);
          v43 = v38;
          v44 = v60;
          v42(v43, v60);
          v40(v39, v41);
          v42(v59, v44);
          sub_25243FFE8(v20, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
          return v24 & 1;
        }

        v47 = *(v36 + 8);
        v48 = v4;
        v47(v35, v4);
        v49 = v60;
        v50 = *(v61 + 8);
        v50(v33, v60);
        v47(v58, v48);
        v50(v37, v49);
      }

      else
      {
        v45 = *(v55 + 8);
        v45(v35, v4);
        v46 = *(v61 + 8);
        v46(v33, v28);
        v45(v31, v4);
        v46(v59, v28);
      }

      sub_25243FFE8(v20, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    (*(v5 + 8))(&v16[v26], v4);
    (*(v61 + 8))(&v16[v25], v60);
LABEL_6:
    sub_252372288(v20, &qword_27F4DCD00);
    goto LABEL_13;
  }

  if (v23(v21, 1, v22) != 1)
  {
    goto LABEL_6;
  }

  sub_25243FFE8(v20, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v24 = 1;
  return v24 & 1;
}

BOOL _s22HomeAccessoryControlUI0bC0V15ThermostatStateV9ThresholdO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1 && v2 == v3)
    {
      return *(a1 + 8) == v5;
    }

    return 0;
  }

  v7 = *&v5 | *&v3;
  return v4 == 2 && v7 == 0;
}

uint64_t sub_25243FED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25243FF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25243FFE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252440074(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
        if (!v9)
        {
          a3(*a1, 0, v7);
          v11 = v8;
          v12 = 0;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 1:
        if (v9 == 1)
        {
          v14 = 1;
          a3(*a1, 1, v7);
          a3(v8, 1, v10);
          return v14 & 1;
        }

        goto LABEL_28;
      case 2:
        if (v9 == 2)
        {
          a3(*a1, 2, v7);
          v11 = v8;
          v12 = 2;
          goto LABEL_25;
        }

LABEL_28:
        a4(*a2, a2[1], v10);
        a4(v5, v6, v7);
        a3(v5, v6, v7);
        a3(v8, v9, v10);
        v14 = 0;
        return v14 & 1;
    }

LABEL_17:
    if (v9 >= 7)
    {
      if (v5 == v8 && v6 == v9)
      {
        a4(*a1, v6, v10);
        a4(v5, v6, v7);
        a3(v5, v6, v7);
        a3(v5, v6, v10);
      }

      else
      {
        v18 = sub_2526933B0();
        a4(v8, v9, v10);
        a4(v5, v6, v7);
        a3(v5, v6, v7);
        a3(v8, v9, v10);
        v14 = 0;
        if ((v18 & 1) == 0)
        {
          return v14 & 1;
        }
      }

      v14 = v10 ^ v7 ^ 1;
      return v14 & 1;
    }

    goto LABEL_28;
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      if (v9 == 5)
      {
        a3(*a1, 5, v7);
        v11 = v8;
        v12 = 5;
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (v6 == 6)
    {
      if (v9 == 6)
      {
        a3(*a1, 6, v7);
        v11 = v8;
        v12 = 6;
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    goto LABEL_17;
  }

  if (v6 == 3)
  {
    if (v9 == 3)
    {
      a3(*a1, 3, v7);
      v11 = v8;
      v12 = 3;
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (v9 != 4)
  {
    goto LABEL_28;
  }

  a3(*a1, 4, v7);
  v11 = v8;
  v12 = 4;
LABEL_25:
  a3(v11, v12, v10);
  v14 = 1;
  return v14 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV10EnergyHoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DB10();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - v8;
  v9 = sub_25268D990();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v52 - v13;
  v14 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB850);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = (&v52 + *(v18 + 56) - v19);
  sub_25243FF80(a1, &v52 - v19, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  sub_25243FF80(a2, v21, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v20, 1, v22) != 1)
  {
    sub_25243FF80(v20, v16, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v25 = *(v22 + 48);
    v26 = *(v22 + 64);
    if (v23(v21, 1, v22) != 1)
    {
      v27 = *v16;
      v53 = *v21;
      v54 = v27;
      v28 = v60;
      v52 = *(v61 + 32);
      v52(v59, &v16[v25], v60);
      v55 = v5;
      v29 = *(v5 + 32);
      v30 = &v16[v26];
      v31 = v58;
      v29(v58, v30, v4);
      v32 = v21 + v25;
      v33 = v56;
      v52(v56, v32, v28);
      v34 = v21 + v26;
      v35 = v57;
      v29(v57, v34, v4);
      if (v54 == v53)
      {
        v36 = v55;
        v37 = v59;
        v38 = v33;
        if (sub_25268D970())
        {
          v39 = v58;
          v24 = MEMORY[0x25309F660](v58, v35);
          v40 = *(v36 + 8);
          v41 = v4;
          v40(v35, v4);
          v42 = *(v61 + 8);
          v43 = v38;
          v44 = v60;
          v42(v43, v60);
          v40(v39, v41);
          v42(v59, v44);
          sub_25243FFE8(v20, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
          return v24 & 1;
        }

        v47 = *(v36 + 8);
        v48 = v4;
        v47(v35, v4);
        v49 = v60;
        v50 = *(v61 + 8);
        v50(v33, v60);
        v47(v58, v48);
        v50(v37, v49);
      }

      else
      {
        v45 = *(v55 + 8);
        v45(v35, v4);
        v46 = *(v61 + 8);
        v46(v33, v28);
        v45(v31, v4);
        v46(v59, v28);
      }

      sub_25243FFE8(v20, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    (*(v5 + 8))(&v16[v26], v4);
    (*(v61 + 8))(&v16[v25], v60);
LABEL_6:
    sub_252372288(v20, &qword_27F4DB850);
    goto LABEL_13;
  }

  if (v23(v21, 1, v22) != 1)
  {
    goto LABEL_6;
  }

  sub_25243FFE8(v20, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v24 = 1;
  return v24 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V17PickerButtonStateV18OptionModificationO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
LABEL_6:
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    v4 = sub_25243965C(v2, v3);
    goto LABEL_7;
  }

  j__swift_bridgeObjectRetain();
  j__swift_bridgeObjectRetain();
  v4 = 0;
LABEL_7:
  j__swift_bridgeObjectRelease();
  j__swift_bridgeObjectRelease();
  return v4 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V17StatusButtonStateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCE0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2526933B0() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_2526933B0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v25 = v7;
  v26 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v16 = v26[6];
  v17 = *(v11 + 48);
  sub_25237153C(a1 + v16, v13, &qword_27F4DB458);
  sub_25237153C(a2 + v16, &v13[v17], &qword_27F4DB458);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_252372288(v13, &qword_27F4DB458);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_25237153C(v13, v10, &qword_27F4DB458);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_25243FFE8(v10, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
LABEL_16:
    sub_252372288(v13, &qword_27F4DCCE0);
    return 0;
  }

  v19 = v25;
  sub_25243FED8(&v13[v17], v25, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  v20 = _s22HomeAccessoryControlUI0bC0V17PickerButtonStateV09SelectionG0O2eeoiySbAG_AGtFZ_0(v10, v19);
  sub_25243FFE8(v19, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  sub_25243FFE8(v10, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
  sub_252372288(v13, &qword_27F4DB458);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + v26[7]) != *(a2 + v26[7]))
  {
    return 0;
  }

  v22 = v26[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

BOOL _s22HomeAccessoryControlUI0bC0V22AutoClimatePickerStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCC8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_25237153C(a1, &v19 - v13, &qword_27F4DB330);
  sub_25237153C(a2, &v14[v15], &qword_27F4DB330);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25237153C(v14, v10, &qword_27F4DB330);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_25243FED8(&v14[v15], v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v18 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV12SetpointHoldO2eeoiySbAG_AGtFZ_0(v10, v7);
      sub_25243FFE8(v7, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      sub_25243FFE8(v10, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      sub_252372288(v14, &qword_27F4DB330);
      return (v18 & 1) != 0;
    }

    sub_25243FFE8(v10, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
LABEL_6:
    sub_252372288(v14, &qword_27F4DCCC8);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_252372288(v14, &qword_27F4DB330);
  return 1;
}

BOOL _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = *a1;
  v15 = *a2;
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == 2)
    {
      return 0;
    }

    if (v14)
    {
      v16 = 0x796772656E45;
    }

    else
    {
      v16 = 0x746573657250;
    }

    if (v15)
    {
      v17 = 0x796772656E45;
    }

    else
    {
      v17 = 0x746573657250;
    }

    if (v16 == v17)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v18 = sub_2526933B0();
      swift_bridgeObjectRelease_n();
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v19 = type metadata accessor for AccessoryControl.AutoClimateState(0);
  v20 = a1;
  v21 = a2;
  v48 = v19;
  v49 = v20;
  v22 = *(v19 + 20);
  v23 = *(v11 + 48);
  sub_25237153C(&v20[v22], v13, &qword_27F4DB300);
  v24 = &v21[v22];
  v25 = v21;
  sub_25237153C(v24, &v13[v23], &qword_27F4DB300);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) == 1)
  {
    if (v26(&v13[v23], 1, v4) == 1)
    {
      sub_252372288(v13, &qword_27F4DB300);
      goto LABEL_21;
    }

LABEL_19:
    sub_252372288(v13, &qword_27F4DCCD0);
    return 0;
  }

  sub_25237153C(v13, v10, &qword_27F4DB300);
  if (v26(&v13[v23], 1, v4) == 1)
  {
    sub_25243FFE8(v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    goto LABEL_19;
  }

  sub_25243FED8(&v13[v23], v7, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  v27 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV0eF4HoldO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_25243FFE8(v7, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  sub_25243FFE8(v10, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  sub_252372288(v13, &qword_27F4DB300);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v29 = v48;
  v28 = v49;
  v30 = *(v48 + 24);
  v31 = *&v49[v30];
  v32 = *&v49[v30 + 8];
  v33 = v49[v30 + 16];
  v34 = &v25[v30];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v34[16];
  if (v32 == 7)
  {
    sub_25235E298(v31, 7uLL);
    if (v36 == 7)
    {
      sub_25235E298(v35, 7uLL);
      sub_25235E2A8(v31, 7uLL);
      goto LABEL_30;
    }

    sub_25235E298(v35, v36);
LABEL_27:
    sub_25235E2A8(v31, v32);
    sub_25235E2A8(v35, v36);
    return 0;
  }

  v53 = v31;
  v54 = v32;
  v55 = v33;
  if (v36 == 7)
  {
    sub_25235E298(v31, v32);
    sub_25235E298(v35, 7uLL);
    sub_25235E298(v31, v32);
    sub_25235E284(v31, v32);
    goto LABEL_27;
  }

  v50 = v35;
  v51 = v36;
  v52 = v37;
  sub_25235E298(v31, v32);
  sub_25235E298(v35, v36);
  sub_25235E298(v31, v32);
  v39 = sub_252440074(&v53, &v50, sub_25235E284, sub_25235E190);
  sub_25235E284(v50, v51);
  sub_25235E284(v53, v54);
  sub_25235E2A8(v31, v32);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v40 = *(v29 + 28);
  v41 = v28[v40];
  v42 = v25[v40];
  if (v41 == 3)
  {
    if (v42 != 3)
    {
      return 0;
    }
  }

  else if (v41 != v42)
  {
    return 0;
  }

  v43 = *(v29 + 32);
  v44 = &v28[v43];
  v45 = v28[v43 + 8];
  v46 = &v25[v43];
  v47 = v25[v43 + 8];
  if (v45)
  {
    return (v47 & 1) != 0;
  }

  if (*v44 != *v46)
  {
    v47 = 1;
  }

  return (v47 & 1) == 0;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV12SetpointHoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268D990();
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC58);
  MEMORY[0x28223BE20](v7);
  v76 = &v68 - v8;
  v9 = sub_25268DB10();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v75 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v21 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCD8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v68 - v26;
  v28 = (&v68 + *(v25 + 56) - v26);
  sub_25243FF80(a1, &v68 - v26, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  sub_25243FF80(a2, v28, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v27, 3, v29);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      if (v30(v28, 3, v29) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v30(v28, 3, v29) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v31)
    {
      v72 = v9;
      v73 = v10;
      sub_25243FF80(v27, v23, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v32 = *(v29 + 48);
      v33 = *(v29 + 64);
      if (v30(v28, 3, v29))
      {
        (*(v73 + 8))(&v23[v33], v72);
        sub_252372288(&v23[v32], &qword_27F4DB2D8);
LABEL_11:
        sub_252372288(v27, &qword_27F4DCCD8);
LABEL_12:
        v34 = 0;
        return v34 & 1;
      }

      v36 = *v23;
      v69 = *v28;
      v70 = v36;
      v71 = v20;
      sub_2523714D4(&v23[v32], v20, &qword_27F4DB2D8);
      v37 = v73;
      v38 = *(v73 + 32);
      v39 = &v23[v33];
      v40 = v72;
      v38(v81, v39, v72);
      v41 = v28 + v32;
      v42 = v79;
      sub_2523714D4(v41, v79, &qword_27F4DB2D8);
      v43 = v28 + v33;
      v44 = v40;
      v45 = v80;
      v38(v80, v43, v44);
      if (v70 != v69)
      {
        v56 = *(v37 + 8);
        v56(v45, v44);
        sub_252372288(v42, &qword_27F4DB2D8);
        v56(v81, v44);
        v57 = v71;
LABEL_23:
        sub_252372288(v57, &qword_27F4DB2D8);
        sub_25243FFE8(v27, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
        goto LABEL_12;
      }

      v46 = *(v7 + 48);
      v47 = v71;
      v48 = v76;
      sub_25237153C(v71, v76, &qword_27F4DB2D8);
      sub_25237153C(v42, v48 + v46, &qword_27F4DB2D8);
      v49 = v77;
      v50 = *(v78 + 48);
      if (v50(v48, 1, v77) == 1)
      {
        v51 = v47;
        v52 = v50(v48 + v46, 1, v49);
        v53 = v73;
        v54 = v80;
        v55 = v81;
        if (v52 == 1)
        {
          sub_252372288(v48, &qword_27F4DB2D8);
LABEL_25:
          v34 = MEMORY[0x25309F660](v55, v54);
          v67 = *(v53 + 8);
          v67(v54, v44);
          sub_252372288(v79, &qword_27F4DB2D8);
          v67(v55, v44);
          sub_252372288(v51, &qword_27F4DB2D8);
          sub_25243FFE8(v27, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
          return v34 & 1;
        }
      }

      else
      {
        v58 = v75;
        sub_25237153C(v48, v75, &qword_27F4DB2D8);
        v59 = v50(v48 + v46, 1, v49);
        v53 = v73;
        if (v59 != 1)
        {
          v61 = v48;
          v62 = v78;
          v63 = v61 + v46;
          v64 = v74;
          (*(v78 + 32))(v74, v63, v49);
          sub_2524434A4(&qword_27F4DBC68, MEMORY[0x277CC9578]);
          v65 = sub_252692B70();
          v66 = *(v62 + 8);
          v66(v64, v49);
          v66(v58, v49);
          sub_252372288(v61, &qword_27F4DB2D8);
          v51 = v71;
          v54 = v80;
          v55 = v81;
          if (v65)
          {
            goto LABEL_25;
          }

          goto LABEL_22;
        }

        (*(v78 + 8))(v58, v49);
        v51 = v71;
        v54 = v80;
        v55 = v81;
      }

      sub_252372288(v48, &qword_27F4DBC58);
LABEL_22:
      v60 = *(v53 + 8);
      v60(v54, v44);
      sub_252372288(v79, &qword_27F4DB2D8);
      v60(v55, v44);
      v57 = v51;
      goto LABEL_23;
    }

    if (v30(v28, 3, v29) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_25243FFE8(v27, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  v34 = 1;
  return v34 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV0eF4HoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB848);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_25243FF80(a1, &v27 - v18, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  sub_25243FF80(a2, &v19[v20], type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FF80(v19, v13, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25243FED8(&v19[v20], v6, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v21 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV10EnergyHoldO2eeoiySbAG_AGtFZ_0(v13, v6);
      sub_25243FFE8(v6, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v22 = v13;
      v23 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
LABEL_9:
      sub_25243FFE8(v22, v23);
      sub_25243FFE8(v19, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
      return v21 & 1;
    }

    v24 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold;
    v25 = v13;
  }

  else
  {
    sub_25243FF80(v19, v15, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25243FED8(&v19[v20], v9, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v21 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV12SetpointHoldO2eeoiySbAG_AGtFZ_0(v15, v9);
      sub_25243FFE8(v9, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      v22 = v15;
      v23 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold;
    v25 = v15;
  }

  sub_25243FFE8(v25, v24);
  sub_252372288(v19, &qword_27F4DB848);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCF8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v15;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v15 != 1)
    {
      v15 = 0;
      if (v16 != 2 || *(a2 + 16) != 0)
      {
        return v15;
      }

      goto LABEL_18;
    }

    if (v16 != 1)
    {
      return 0;
    }

    v15 = 0;
    if (*(a1 + 16) != *(a2 + 16))
    {
      return v15;
    }

    v17 = *(a1 + 24);
    v18 = *(a2 + 24);
  }

  else
  {
    if (*(a2 + 32))
    {
      return v15;
    }

    v17 = *(a1 + 16);
    v18 = *(a2 + 16);
  }

  if (v17 != v18)
  {
    return v15;
  }

LABEL_18:
  v19 = *(a1 + 33);
  v20 = *(a2 + 33);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

LABEL_23:
    v21 = *(a1 + 34);
    v22 = *(a2 + 34);
    if (v21 == 2)
    {
      v23 = v12;
      if (v22 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v22 == 2)
      {
        return 0;
      }

      v23 = v12;
      if (v21)
      {
        v24 = 0x796772656E45;
      }

      else
      {
        v24 = 0x746573657250;
      }

      if (v22)
      {
        v25 = 0x796772656E45;
      }

      else
      {
        v25 = 0x746573657250;
      }

      if (v24 == v25)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v26 = sub_2526933B0();
        swift_bridgeObjectRelease_n();
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v48 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v27 = *(v48 + 32);
    v28 = *(v23 + 48);
    sub_25237153C(a1 + v27, v14, &qword_27F4DCA28);
    v29 = a2 + v27;
    v30 = v28;
    sub_25237153C(v29, &v14[v28], &qword_27F4DCA28);
    v31 = *(v5 + 48);
    if (v31(v14, 1, v4) == 1)
    {
      if (v31(&v14[v30], 1, v4) == 1)
      {
        sub_252372288(v14, &qword_27F4DCA28);
        goto LABEL_43;
      }
    }

    else
    {
      sub_25237153C(v14, v10, &qword_27F4DCA28);
      if (v31(&v14[v30], 1, v4) != 1)
      {
        sub_25243FED8(&v14[v30], v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        v32 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E4HoldO2eeoiySbAG_AGtFZ_0(v10, v7);
        sub_25243FFE8(v7, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        sub_25243FFE8(v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        sub_252372288(v14, &qword_27F4DCA28);
        if ((v32 & 1) == 0)
        {
          return 0;
        }

LABEL_43:
        v33 = v48;
        v34 = *(v48 + 36);
        v35 = *(a1 + v34);
        v36 = *(a1 + v34 + 8);
        v37 = *(a1 + v34 + 16);
        v38 = a2 + v34;
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        if (v36 == 7)
        {
          sub_25235E298(v35, 7uLL);
          if (v40 == 7)
          {
            sub_25235E298(v39, 7uLL);
            sub_25235E2A8(v35, 7uLL);
LABEL_51:
            if (*(a1 + *(v33 + 40)) == *(a2 + *(v33 + 40)))
            {
              v43 = *(v33 + 44);
              v44 = *(a1 + v43);
              v45 = *(a2 + v43);
              if (v44 == 3)
              {
                if (v45 == 3)
                {
                  return 1;
                }
              }

              else if (v44 == v45)
              {
                return 1;
              }
            }

            return 0;
          }

          sub_25235E298(v39, v40);
        }

        else
        {
          v52 = v35;
          v53 = v36;
          v54 = v37;
          if (v40 != 7)
          {
            v49 = v39;
            v50 = v40;
            v51 = v41;
            sub_25235E298(v35, v36);
            sub_25235E298(v39, v40);
            sub_25235E298(v35, v36);
            v42 = sub_252440074(&v52, &v49, sub_252445520, sub_252445524);
            sub_25235E284(v49, v50);
            sub_25235E284(v52, v53);
            sub_25235E2A8(v35, v36);
            if ((v42 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_51;
          }

          sub_25235E298(v35, v36);
          sub_25235E298(v39, 7uLL);
          sub_25235E298(v35, v36);
          sub_25235E284(v35, v36);
        }

        sub_25235E2A8(v35, v36);
        sub_25235E2A8(v39, v40);
        return 0;
      }

      sub_25243FFE8(v10, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    }

    sub_252372288(v14, &qword_27F4DCCF8);
    return 0;
  }

  v15 = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v15;
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E4HoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB858);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_25243FF80(a1, &v27 - v17, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  sub_25243FF80(a2, &v18[v20], type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25243FF80(v18, v12, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25243FED8(&v18[v20], v6, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
      v21 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E10EnergyHoldO2eeoiySbAG_AGtFZ_0(v12, v6);
      sub_25243FFE8(v6, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
      v22 = v12;
      v23 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
LABEL_9:
      sub_25243FFE8(v22, v23);
      sub_25243FFE8(v18, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
      return v21 & 1;
    }

    v24 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold;
    v25 = v12;
  }

  else
  {
    sub_25243FF80(v18, v15, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25243FED8(&v18[v20], v9, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
      v21 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E12SetpointHoldO2eeoiySbAG_AGtFZ_0(v15, v9);
      sub_25243FFE8(v9, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
      v22 = v15;
      v23 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold;
    v25 = v15;
  }

  sub_25243FFE8(v25, v24);
  sub_252372288(v18, &qword_27F4DB858);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E12SetpointHoldO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268D990();
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC58);
  MEMORY[0x28223BE20](v7);
  v76 = &v68 - v8;
  v9 = sub_25268DB10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v68 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCD08);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v68 - v25;
  v28 = (&v68 + *(v27 + 56) - v25);
  sub_25243FF80(a1, &v68 - v25, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  sub_25243FF80(a2, v28, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v26, 3, v29);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      if (v30(v28, 3, v29) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v30(v28, 3, v29) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v31)
    {
      v72 = v9;
      v73 = v10;
      sub_25243FF80(v26, v23, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
      v32 = *(v29 + 48);
      v33 = *(v29 + 64);
      if (v30(v28, 3, v29))
      {
        (*(v73 + 8))(&v23[v33], v72);
        sub_252372288(&v23[v32], &qword_27F4DB2D8);
LABEL_11:
        sub_252372288(v26, &qword_27F4DCD08);
LABEL_12:
        v34 = 0;
        return v34 & 1;
      }

      v36 = *v23;
      v69 = *v28;
      v70 = v36;
      v71 = v20;
      sub_2523714D4(&v23[v32], v20, &qword_27F4DB2D8);
      v37 = v73;
      v38 = *(v73 + 32);
      v39 = &v23[v33];
      v40 = v72;
      v38(v81, v39, v72);
      v41 = v28 + v32;
      v42 = v79;
      sub_2523714D4(v41, v79, &qword_27F4DB2D8);
      v43 = v28 + v33;
      v44 = v40;
      v45 = v80;
      v38(v80, v43, v44);
      if (v70 != v69)
      {
        v56 = *(v37 + 8);
        v56(v45, v44);
        sub_252372288(v42, &qword_27F4DB2D8);
        v56(v81, v44);
        v57 = v71;
LABEL_23:
        sub_252372288(v57, &qword_27F4DB2D8);
        sub_25243FFE8(v26, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
        goto LABEL_12;
      }

      v46 = *(v7 + 48);
      v47 = v71;
      v48 = v76;
      sub_25237153C(v71, v76, &qword_27F4DB2D8);
      sub_25237153C(v42, v48 + v46, &qword_27F4DB2D8);
      v49 = v77;
      v50 = *(v78 + 48);
      if (v50(v48, 1, v77) == 1)
      {
        v51 = v47;
        v52 = v50(v48 + v46, 1, v49);
        v53 = v73;
        v54 = v80;
        v55 = v81;
        if (v52 == 1)
        {
          sub_252372288(v48, &qword_27F4DB2D8);
LABEL_25:
          v34 = MEMORY[0x25309F660](v55, v54);
          v67 = *(v53 + 8);
          v67(v54, v44);
          sub_252372288(v79, &qword_27F4DB2D8);
          v67(v55, v44);
          sub_252372288(v51, &qword_27F4DB2D8);
          sub_25243FFE8(v26, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
          return v34 & 1;
        }
      }

      else
      {
        v58 = v75;
        sub_25237153C(v48, v75, &qword_27F4DB2D8);
        v59 = v50(v48 + v46, 1, v49);
        v53 = v73;
        if (v59 != 1)
        {
          v61 = v48;
          v62 = v78;
          v63 = v61 + v46;
          v64 = v74;
          (*(v78 + 32))(v74, v63, v49);
          sub_2524434A4(&qword_27F4DBC68, MEMORY[0x277CC9578]);
          v65 = sub_252692B70();
          v66 = *(v62 + 8);
          v66(v64, v49);
          v66(v58, v49);
          sub_252372288(v61, &qword_27F4DB2D8);
          v51 = v71;
          v54 = v80;
          v55 = v81;
          if (v65)
          {
            goto LABEL_25;
          }

          goto LABEL_22;
        }

        (*(v78 + 8))(v58, v49);
        v51 = v71;
        v54 = v80;
        v55 = v81;
      }

      sub_252372288(v48, &qword_27F4DBC58);
LABEL_22:
      v60 = *(v53 + 8);
      v60(v54, v44);
      sub_252372288(v79, &qword_27F4DB2D8);
      v60(v55, v44);
      v57 = v51;
      goto LABEL_23;
    }

    if (v30(v28, 3, v29) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_25243FFE8(v26, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_2524434A4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL _s22HomeAccessoryControlUI0bC0V10ColorStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268ED20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCCE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_25237153C(a1, &v25 - v13, &qword_27F4DB2A8);
  sub_25237153C(a2, &v14[v15], &qword_27F4DB2A8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_252372288(v14, &qword_27F4DB2A8);
      goto LABEL_9;
    }

LABEL_6:
    sub_252372288(v14, &qword_27F4DCCE8);
    return 0;
  }

  sub_25237153C(v14, v10, &qword_27F4DB2A8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_2524434A4(&qword_27F4DCCF0, MEMORY[0x277D15B48]);
  v18 = sub_252692B70();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_252372288(v14, &qword_27F4DB2A8);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = *(type metadata accessor for AccessoryControl.ColorState(0) + 20);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if ((v22 & 1) == 0)
  {
    if (*v21 != *v23)
    {
      v24 = 1;
    }

    return (v24 & 1) == 0;
  }

  return (v24 & 1) != 0;
}

unint64_t sub_252443868()
{
  result = qword_27F4DCA30;
  if (!qword_27F4DCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA30);
  }

  return result;
}

unint64_t sub_252443904()
{
  result = qword_27F4DCA40;
  if (!qword_27F4DCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA40);
  }

  return result;
}

unint64_t sub_25244398C()
{
  result = qword_27F4DCA58;
  if (!qword_27F4DCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA58);
  }

  return result;
}

unint64_t sub_2524439E4()
{
  result = qword_27F4DCA60;
  if (!qword_27F4DCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA60);
  }

  return result;
}

unint64_t sub_252443A6C()
{
  result = qword_27F4DCA78;
  if (!qword_27F4DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA78);
  }

  return result;
}

unint64_t sub_252443BA8()
{
  result = qword_27F4DCA98;
  if (!qword_27F4DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCA98);
  }

  return result;
}

unint64_t sub_252443C48()
{
  result = qword_27F4DCAA8;
  if (!qword_27F4DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAA8);
  }

  return result;
}

unint64_t sub_252443CA0()
{
  result = qword_27F4DCAB0;
  if (!qword_27F4DCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAB0);
  }

  return result;
}

unint64_t sub_252443D40()
{
  result = qword_27F4DCAC0;
  if (!qword_27F4DCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAC0);
  }

  return result;
}

unint64_t sub_252443D98()
{
  result = qword_27F4DCAC8;
  if (!qword_27F4DCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAC8);
  }

  return result;
}

unint64_t sub_252443E68()
{
  result = qword_27F4DCAE8;
  if (!qword_27F4DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAE8);
  }

  return result;
}

unint64_t sub_252443EC0()
{
  result = qword_27F4DCAF0;
  if (!qword_27F4DCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCAF0);
  }

  return result;
}

unint64_t sub_252443FFC()
{
  result = qword_27F4DCB10;
  if (!qword_27F4DCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCB10);
  }

  return result;
}

unint64_t sub_252444104()
{
  result = qword_27F4DCB28;
  if (!qword_27F4DCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCB28);
  }

  return result;
}

unint64_t sub_25244415C()
{
  result = qword_27F4DCB30;
  if (!qword_27F4DCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DCB30);
  }

  return result;
}

uint64_t sub_2524441E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25244427C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2524442D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_25244436C()
{
  result = sub_25268ED70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_252444408()
{
  sub_2523E19E4(319, &qword_27F4DCB70);
  if (v0 <= 0x3F)
  {
    sub_2523E19E4(319, &qword_27F4DBBB8);
    if (v1 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DCB78);
      if (v2 <= 0x3F)
      {
        sub_252444918(319, &qword_27F4DCB80, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
        if (v3 <= 0x3F)
        {
          sub_2523E19E4(319, &qword_27F4DCB88);
          if (v4 <= 0x3F)
          {
            sub_2523E19E4(319, &qword_27F4DCB90);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s15ThermostatStateV9ThresholdOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t _s15ThermostatStateV9ThresholdOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_252444618(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_252444630(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_2524446CC()
{
  if (!qword_27F4DCBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2D8);
    sub_25268DB10();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DCBB8);
    }
  }
}

void sub_25244477C()
{
  if (!qword_27F4DCBD0)
  {
    sub_25268D990();
    sub_25268DB10();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DCBD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI0bC0V15ThermostatStateV0e8ActivityF0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_252444868()
{
  sub_252444918(319, &qword_27F4DCBE8, MEMORY[0x277D15B48]);
  if (v0 <= 0x3F)
  {
    sub_2523E19E4(319, &qword_27F4DCB70);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252444918(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252693130();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25244496C(uint64_t a1, int a2)
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

uint64_t sub_2524449B4(uint64_t result, int a2, int a3)
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

void sub_252444A38()
{
  sub_2523E19E4(319, &qword_27F4DB5E0);
  if (v0 <= 0x3F)
  {
    sub_252444918(319, &qword_27F4DCC00, type metadata accessor for AccessoryControl.PickerButtonState.SelectionState);
    if (v1 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DBBB8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252444B40()
{
  sub_2523E19E4(319, &qword_27F4DCC18);
  if (v0 <= 0x3F)
  {
    sub_252444918(319, &qword_27F4DCC20, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (v1 <= 0x3F)
    {
      sub_2523E19E4(319, &qword_27F4DCC28);
      if (v2 <= 0x3F)
      {
        sub_2523E19E4(319, &qword_27F4DCC30);
        if (v3 <= 0x3F)
        {
          sub_2523E19E4(319, &qword_27F4DCB70);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_252444CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_55Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
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

uint64_t __swift_store_extra_inhabitant_index_56Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
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

uint64_t __swift_store_extra_inhabitant_index_65Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_252444F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_252444FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 17))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25244504C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_93Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_2524451BC()
{
  sub_252444918(319, &qword_27F4DCC78, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_252445264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2524452AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_25244531C()
{
  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(319);
  if (v0 <= 0x3F)
  {
    sub_252445390(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_252445390(uint64_t a1)
{
  if (!qword_27F4DCC90)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCCB0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F4DCC90);
    }
  }
}

__n128 AccessoryControl.BinaryViewConfig.init(icon:foregroundColor:knobTextConfig:name:title:subtitle:statusProvider:offForegroundColor:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v28 = *(a6 + 32);
  v29 = *(a7 + 32);
  v30 = *a11;
  v18 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v19 = a9 + v18[7];
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = -1;
  v20 = a9 + v18[8];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = -1;
  v27 = v18[12];
  sub_252376EF0(a1, a9);
  *(a9 + v18[5]) = a2;
  sub_252445700(a3, a9 + v18[6], type metadata accessor for ControlTextModifier.Config);
  v21 = (a9 + v18[10]);
  *v21 = a4;
  v21[1] = a5;
  sub_252445700(a8, a9 + v18[11], type metadata accessor for AccessoryControl.StatusProvider);
  sub_252376DA8(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32));
  v22 = *(a6 + 16);
  *v19 = *a6;
  *(v19 + 16) = v22;
  *(v19 + 32) = v28;
  sub_252376DA8(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32));
  result = *a7;
  v24 = *(a7 + 16);
  *v20 = *a7;
  *(v20 + 16) = v24;
  *(v20 + 32) = v29;
  *(a9 + v27) = a10;
  *(a9 + v18[9]) = v30;
  return result;
}

uint64_t sub_252445700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryControl.PickerViewConfig.Option.init(id:text:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AccessoryControl.PickerViewConfig.init(options:allowUserInteraction:pickerBackgroundColor:textColor:icon:statusProvider:offStateOptionID:allowVariableWidth:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v17 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v18 = v17[6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = a9 + v17[11];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  sub_252377048(a5, a9 + v18, &qword_27F4DADB8);
  result = sub_252445700(a6, a9 + v17[10], type metadata accessor for AccessoryControl.StatusProvider);
  *v20 = a7;
  *(v20 + 8) = a8 & 1;
  *(a9 + v17[7]) = a10;
  return result;
}