uint64_t storeEnumTagSinglePayload for RapportMessage.RPFrameType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2143E0378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_2143E03C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2143E0480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_2143E04C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143E054C()
{
  result = qword_27C912988;
  if (!qword_27C912988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912988);
  }

  return result;
}

unint64_t sub_2143E05E0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_2143E18F8;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143E072C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143E08B0@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653DC0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2143E1900;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2143E1904;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2143E0A5C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653EB0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2143E18F0;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2143E0C3C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  *(v3 + 40) = v5;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2143E0D88@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_2143E0DEC()
{
  if (*v0)
  {
    result = 0x6574656C6564;
  }

  else
  {
    result = 7824750;
  }

  *v0;
  return result;
}

uint64_t sub_2143E0E1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574656C6564;
  }

  else
  {
    v4 = 7824750;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574656C6564;
  }

  else
  {
    v6 = 7824750;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2143E0EB8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E0F30()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143E0F94()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E1008@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2143E1068(uint64_t *a1@<X8>)
{
  v2 = 7824750;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2143E114C()
{
  sub_2143E11F4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143E11A0()
{
  sub_2143E11F4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143E11F4()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84F98];
  if (v1 != 2)
  {
    v3 = (v1 & 1) == 0;
    v4 = 7824750;
    if (!v3)
    {
      v4 = 0x6574656C6564;
    }

    v5 = 0xE300000000000000;
    v14 = MEMORY[0x277D837D0];
    if (!v3)
    {
      v5 = 0xE600000000000000;
    }

    *&v13 = v4;
    *(&v13 + 1) = v5;
    sub_213FDC730(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v12, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  v7 = &v0[*(type metadata accessor for PhotosSharedAlbumMessage(0) + 20)];
  v8 = sub_21404D3BC();
  v14 = MEMORY[0x277CC9318];
  *&v13 = v8;
  *(&v13 + 1) = v9;
  sub_213FDC730(&v13, v12);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v12, 0x7461446D75626C61, 0xE900000000000061, v10);
  return v2;
}

unint64_t sub_2143E1314()
{
  result = qword_27C912990;
  if (!qword_27C912990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912990);
  }

  return result;
}

unint64_t sub_2143E1368(uint64_t a1)
{
  *(a1 + 8) = sub_2142FC0A8();
  result = sub_2142FC180();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143E1398(uint64_t a1)
{
  *(a1 + 8) = sub_2143E143C(&qword_27C908350, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  result = sub_2143E143C(&qword_27C908370, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143E143C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143E1484(uint64_t a1)
{
  *(a1 + 8) = sub_2143E143C(&qword_27C90CA30, type metadata accessor for PhotosSharedAlbumMessage);
  result = sub_2143E143C(&qword_27C90C950, type metadata accessor for PhotosSharedAlbumMessage);
  *(a1 + 16) = result;
  return result;
}

void sub_2143E1550()
{
  sub_2143E1844(319, &qword_27C9129A8, &type metadata for PhotosSharedAlbumMessage.MessageType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143E1630()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_2143E1844(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2143E1844(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21403BE74(319, &qword_280B35230, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_21403BE74(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
          if (v4 <= 0x3F)
          {
            sub_2143E1844(319, &qword_27C9129C0, MEMORY[0x277D849A8], type metadata accessor for Validated);
            if (v5 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
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

void sub_2143E1844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2143E1894()
{
  result = qword_27C9129C8;
  if (!qword_27C9129C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9129C8);
  }

  return result;
}

uint64_t sub_2143E1908()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  MBDChipList.dictionaryRepresentation.getter();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t MBDChipList.bridgedToObjectiveC.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  MBDChipList.dictionaryRepresentation.getter();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t MBDChipList.dictionaryRepresentation.getter()
{
  v1 = type metadata accessor for MBDChip();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v20[1] = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000214799BC0;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v11 = MEMORY[0x277D84F90];
    do
    {
      sub_2143E1C68(v9, v5);
      v12 = sub_2144DA1CC();
      sub_2143E1CCC(v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_214095798(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_214095798((v13 > 1), v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      v11[v14 + 4] = v12;
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
  *(inited + 48) = v11;
  *(inited + 72) = v15;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000214799BE0;
  v16 = sub_2146D9988();
  *(inited + 120) = sub_21403EBDC();
  *(inited + 96) = v16;
  v17 = sub_214045690(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v18 = sub_2140418B8(v17);

  return v18;
}

uint64_t sub_2143E1C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDChip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143E1CCC(uint64_t a1)
{
  v2 = type metadata accessor for MBDChip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143E1D2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6465696C706572;
  }

  else
  {
    v4 = 0x7473694C70696863;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6465696C706572;
  }

  else
  {
    v6 = 0x7473694C70696863;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2143E1DD4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E1E58()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143E1EC8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E1F48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2143E1FA8(uint64_t *a1@<X8>)
{
  v2 = 0x7473694C70696863;
  if (*v1)
  {
    v2 = 0x6465696C706572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2143E1FE8@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_2143E204C(uint64_t a1)
{
  v2 = sub_2143E24F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143E2088(uint64_t a1)
{
  v2 = sub_2143E24F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipList.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9129D0, ":J\t");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E24F8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
    v14[15] = 0;
    sub_2143E254C(&qword_27C9129E0, &qword_27C9129E8);
    sub_2146DA0D8();
    v11 = v15;
    v14[14] = 1;
    v12 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipList.encode(to:configuration:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9129F0, &qword_21473AB68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[2] = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E24F8();

  sub_2146DAA28();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
  sub_2143E254C(&qword_27C9129F8, &qword_27C912A00);
  sub_2146DA2A8();

  if (!v2)
  {
    v13 = 1;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2143E24F8()
{
  result = qword_27C9129D8;
  if (!qword_27C9129D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9129D8);
  }

  return result;
}

uint64_t sub_2143E254C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905FF8, &qword_2146F4170);
    sub_2140326D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143E25F8()
{
  result = qword_27C912A08;
  if (!qword_27C912A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A08);
  }

  return result;
}

unint64_t sub_2143E2650()
{
  result = qword_27C912A10;
  if (!qword_27C912A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A10);
  }

  return result;
}

unint64_t sub_2143E26A8()
{
  result = qword_27C912A18;
  if (!qword_27C912A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A18);
  }

  return result;
}

uint64_t sub_2143E26FC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 32) = 0x5479616C70736964;
  *(inited + 16) = xmmword_2146E68D0;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEB00000000747865;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6B63616274736F70;
  *(inited + 88) = 0xE800000000000000;
  if (v3)
  {
    v9 = MEMORY[0x277D837D0];
    v10 = v3;
  }

  else
  {
    v4 = 0;
    v10 = 0;
    v9 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v10;
  *(inited + 120) = v9;
  *(inited + 128) = 0x54796C7065526E69;
  *(inited + 136) = 0xEB0000000044496FLL;
  if (v5)
  {
    v11 = MEMORY[0x277D837D0];
  }

  else
  {
    v6 = 0;
    v11 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v6;
  *(inited + 152) = v5;
  *(inited + 168) = v11;
  v12 = inited;

  v13 = sub_214045690(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v14 = sub_2140418B8(v13);

  return v14;
}

uint64_t sub_2143E28A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v4 = 0x54796C7065526E69;
    v3 = 0xEB0000000044496FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x5479616C70736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000747865;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6B63616274736F70;
  if (*a2 != 1)
  {
    v8 = 0x54796C7065526E69;
    v7 = 0xEB0000000044496FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000747865;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2143E29B8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E2A6C()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143E2B0C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143E2BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2143E32C0();
  *a2 = result;
  return result;
}

void sub_2143E2BEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0xE800000000000000;
  v5 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v5 = 0x54796C7065526E69;
    v4 = 0xEB0000000044496FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2143E2C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2143E32C0();
  *a1 = result;
  return result;
}

uint64_t sub_2143E2C84(uint64_t a1)
{
  v2 = sub_2143E3144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143E2CC0(uint64_t a1)
{
  v2 = sub_2143E3144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143E2CFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912A20, &qword_21473AD50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E3144();
  sub_2146DAA08();
  if (!v2)
  {
    v27 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v24 = v11;
    v26 = 1;
    v14 = sub_2146DA0F8();
    v16 = v15;
    v23 = v14;
    v25 = 2;
    v18 = sub_2146DA0F8();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    v22 = v23;
    *a2 = v24;
    a2[1] = v13;
    a2[2] = v22;
    a2[3] = v16;
    a2[4] = v18;
    a2[5] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143E2F2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912A30, &unk_21473AD58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E3144();
  sub_2146DAA28();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_2146DA328();
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2143E3144()
{
  result = qword_27C912A28;
  if (!qword_27C912A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A28);
  }

  return result;
}

unint64_t sub_2143E31BC()
{
  result = qword_27C912A38;
  if (!qword_27C912A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A38);
  }

  return result;
}

unint64_t sub_2143E3214()
{
  result = qword_27C912A40;
  if (!qword_27C912A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A40);
  }

  return result;
}

unint64_t sub_2143E326C()
{
  result = qword_27C912A48;
  if (!qword_27C912A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912A48);
  }

  return result;
}

uint64_t sub_2143E32C0()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2143E330C(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_214095BE4(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_214095BE4(v4 > 1, v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = *(type metadata accessor for LinkPresentation.EncodedToken(0) - 8);
  result = sub_214400A9C(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for LinkPresentation.EncodedToken);
  *v1 = v3;
  return result;
}

uint64_t sub_2143E341C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v4 = (a1 + 32);
    do
    {
      v10 = v4[4];
      v11 = v4[5];
      *v12 = v4[6];
      *&v12[9] = *(v4 + 105);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      sub_2143F7CD4();
      sub_2146D9F98();
      v5 = *(v13 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 8;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_2143E34EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v4 = (a1 + 32);
    do
    {
      v10 = v4[4];
      v11 = v4[5];
      v12 = v4[6];
      v13 = v4[7];
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      sub_214400398();
      sub_2146D9F98();
      v5 = *(v14 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 8;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

char *sub_2143E35B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v4;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_2140A0000(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v22;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = i - 1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216054E00](v6, a1);
      }

      else
      {
        if (v6 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      sub_2143EE118(v9, v20);
      if (v1)
      {

        return v4;
      }

      v15 = v20[2];
      v16 = v20[3];
      *&v19[9] = *(v21 + 9);
      v18 = v20[5];
      *v19 = v21[0];
      v17 = v20[4];
      v13 = v20[0];
      v14 = v20[1];
      v22 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2140A0000((v10 > 1), v11 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + (v11 << 7));
      v12[4] = v15;
      v12[5] = v16;
      v12[2] = v13;
      v12[3] = v14;
      *(v12 + 137) = *&v19[9];
      v12[7] = v18;
      v12[8] = *v19;
      v12[6] = v17;
      if (v7 == v6)
      {
        return v4;
      }

      ++v6;
    }

    while (!__OFADD__(v6, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

char *sub_2143E3784(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    v17 = MEMORY[0x277D84F90];
    result = sub_2140A0020(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x216054E00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_2144001E4(v6, v16);
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2140A0020((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = (v3 + (v8 << 7));
      v10 = v16[0];
      v11 = v16[1];
      v12 = v16[3];
      v9[4] = v16[2];
      v9[5] = v12;
      v9[2] = v10;
      v9[3] = v11;
      v13 = v16[4];
      v14 = v16[5];
      v15 = v16[7];
      v9[8] = v16[6];
      v9[9] = v15;
      v9[6] = v13;
      v9[7] = v14;
      if (i - 1 == v5)
      {
        return v3;
      }

      ++v5;
    }

    while (!__OFADD__(v5, 1));
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2143E38F4()
{
  v0 = sub_2143E3A80();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_2143E393C()
{
  v0 = sub_2143E3A80();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

void sub_2143E3984(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_2143EE118(a1, a2);
    if (!v2)
    {
      nullsub_1(a2);
    }
  }

  else
  {
    sub_2144008B4(v7);
    v4 = v7[5];
    a2[4] = v7[4];
    a2[5] = v4;
    a2[6] = v8[0];
    *(a2 + 105) = *(v8 + 9);
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    v6 = v7[3];
    a2[2] = v7[2];
    a2[3] = v6;
  }
}

double sub_2143E3A0C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_2144001E4(a1, a2);
    nullsub_1(a2);
  }

  else
  {
    sub_214400940(v8);
    v4 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v4;
    v5 = v14;
    *(a2 + 96) = v13;
    *(a2 + 112) = v5;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_2143E3A80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v1 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A50, off_278175228);
  [v0 setClassName:v1 forClass:swift_getObjCClassFromMetadata()];

  v2 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A58, off_278175138);
  [v0 setClassName:v2 forClass:swift_getObjCClassFromMetadata()];

  v3 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A60, off_2781751E8);
  [v0 setClassName:v3 forClass:swift_getObjCClassFromMetadata()];

  v4 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A68, off_278175278);
  [v0 setClassName:v4 forClass:swift_getObjCClassFromMetadata()];

  v5 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A70, off_278175130);
  [v0 setClassName:v5 forClass:swift_getObjCClassFromMetadata()];

  v6 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A78, off_278175198);
  [v0 setClassName:v6 forClass:swift_getObjCClassFromMetadata()];

  v7 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  [v0 setClassName:v7 forClass:swift_getObjCClassFromMetadata()];

  v8 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A88, off_278175270);
  [v0 setClassName:v8 forClass:swift_getObjCClassFromMetadata()];

  v9 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A90, off_278175140);
  [v0 setClassName:v9 forClass:swift_getObjCClassFromMetadata()];

  v10 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
  [v0 setClassName:v10 forClass:swift_getObjCClassFromMetadata()];

  v11 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
  [v0 setClassName:v11 forClass:swift_getObjCClassFromMetadata()];

  v12 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
  [v0 setClassName:v12 forClass:swift_getObjCClassFromMetadata()];

  v13 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
  [v0 setClassName:v13 forClass:swift_getObjCClassFromMetadata()];

  v14 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AB8, off_278175188);
  [v0 setClassName:v14 forClass:swift_getObjCClassFromMetadata()];

  v15 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AC0, off_278175208);
  [v0 setClassName:v15 forClass:swift_getObjCClassFromMetadata()];

  v16 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AC8, off_278175200);
  [v0 setClassName:v16 forClass:swift_getObjCClassFromMetadata()];

  v17 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AD0, off_278175238);
  [v0 setClassName:v17 forClass:swift_getObjCClassFromMetadata()];

  v18 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AD8, off_278175258);
  [v0 setClassName:v18 forClass:swift_getObjCClassFromMetadata()];

  v19 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
  [v0 setClassName:v19 forClass:swift_getObjCClassFromMetadata()];

  v20 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
  [v0 setClassName:v20 forClass:swift_getObjCClassFromMetadata()];

  v21 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
  [v0 setClassName:v21 forClass:swift_getObjCClassFromMetadata()];

  v22 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
  [v0 setClassName:v22 forClass:swift_getObjCClassFromMetadata()];

  v23 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
  [v0 setClassName:v23 forClass:swift_getObjCClassFromMetadata()];

  v24 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
  [v0 setClassName:v24 forClass:swift_getObjCClassFromMetadata()];

  v25 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B10, off_278175300);
  [v0 setClassName:v25 forClass:swift_getObjCClassFromMetadata()];

  v26 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
  [v0 setClassName:v26 forClass:swift_getObjCClassFromMetadata()];

  v27 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
  [v0 setClassName:v27 forClass:swift_getObjCClassFromMetadata()];

  v28 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
  [v0 setClassName:v28 forClass:swift_getObjCClassFromMetadata()];

  v29 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
  [v0 setClassName:v29 forClass:swift_getObjCClassFromMetadata()];

  v30 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B38, off_278175310);
  [v0 setClassName:v30 forClass:swift_getObjCClassFromMetadata()];

  v31 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B40, off_278175318);
  [v0 setClassName:v31 forClass:swift_getObjCClassFromMetadata()];

  v32 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B48, off_278175158);
  [v0 setClassName:v32 forClass:swift_getObjCClassFromMetadata()];

  v33 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
  [v0 setClassName:v33 forClass:swift_getObjCClassFromMetadata()];

  v34 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
  [v0 setClassName:v34 forClass:swift_getObjCClassFromMetadata()];

  v35 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
  [v0 setClassName:v35 forClass:swift_getObjCClassFromMetadata()];

  v36 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v0 setClassName:v36 forClass:swift_getObjCClassFromMetadata()];

  v37 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B68, off_278175298);
  [v0 setClassName:v37 forClass:swift_getObjCClassFromMetadata()];

  v38 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
  [v0 setClassName:v38 forClass:swift_getObjCClassFromMetadata()];

  v39 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B78, off_278175220);
  [v0 setClassName:v39 forClass:swift_getObjCClassFromMetadata()];

  v40 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B80, off_278175210);
  [v0 setClassName:v40 forClass:swift_getObjCClassFromMetadata()];

  v41 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B88, off_278175218);
  [v0 setClassName:v41 forClass:swift_getObjCClassFromMetadata()];

  v42 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
  [v0 setClassName:v42 forClass:swift_getObjCClassFromMetadata()];

  v43 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B98, off_278175160);
  [v0 setClassName:v43 forClass:swift_getObjCClassFromMetadata()];

  v44 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
  [v0 setClassName:v44 forClass:swift_getObjCClassFromMetadata()];

  v45 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
  [v0 setClassName:v45 forClass:swift_getObjCClassFromMetadata()];

  v46 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
  [v0 setClassName:v46 forClass:swift_getObjCClassFromMetadata()];

  v47 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
  [v0 setClassName:v47 forClass:swift_getObjCClassFromMetadata()];

  v48 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
  [v0 setClassName:v48 forClass:swift_getObjCClassFromMetadata()];

  v49 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BC8, off_2781751B0);
  [v0 setClassName:v49 forClass:swift_getObjCClassFromMetadata()];

  v50 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
  [v0 setClassName:v50 forClass:swift_getObjCClassFromMetadata()];

  v51 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BD8, off_278175150);
  [v0 setClassName:v51 forClass:swift_getObjCClassFromMetadata()];

  v52 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BE0, off_278175268);
  [v0 setClassName:v52 forClass:swift_getObjCClassFromMetadata()];

  v53 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
  [v0 setClassName:v53 forClass:swift_getObjCClassFromMetadata()];

  v54 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
  [v0 setClassName:v54 forClass:swift_getObjCClassFromMetadata()];

  v55 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
  [v0 setClassName:v55 forClass:swift_getObjCClassFromMetadata()];

  v56 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912C08, off_278175190);
  [v0 setClassName:v56 forClass:swift_getObjCClassFromMetadata()];

  v57 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
  [v0 setClassName:v57 forClass:swift_getObjCClassFromMetadata()];

  v58 = sub_2143E4D5C();
  [v0 encodeObject:v58 forKey:*MEMORY[0x277CCA308]];

  v59 = [v0 encodedData];
  v60 = sub_2146D8A58();

  return v60;
}

id sub_2143E4D5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = [objc_allocWithZone(_BlastDoorLPMessagesPayload) init];
  sub_213FB2E54(v1, v5, &qword_27C904860, &qword_2146EDB50);
  v7 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C904860, &qword_2146EDB50);
    v8 = 0;
  }

  else
  {
    v8 = sub_2143EB164();
    sub_214400B04(v5, type metadata accessor for LinkPresentation.LinkMetadata);
  }

  [v6 setMetadata_];

  [v6 setPlaceholder_];
  return v6;
}

void sub_2143E4ED8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v163 - v9);
  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v12 = sub_21404A62C();
  if (!v3)
  {
    v163 = a3;
    v164 = v10;
    v165 = 0;
    v172 = a2;
    v173 = a1;
    v27 = v12;
    [v27 _enableStrictSecureDecodingMode];
    [v27 setDecodingFailurePolicy_];
    v167 = sub_21404A8B8(0, &qword_27C912A50, off_278175228);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = sub_2146D9588();
    [v27 setClass:ObjCClassFromMetadata forClassName:v29];

    sub_21404A8B8(0, &qword_27C912A58, off_278175138);
    v30 = swift_getObjCClassFromMetadata();
    v31 = sub_2146D9588();
    [v27 setClass:v30 forClassName:v31];

    sub_21404A8B8(0, &qword_27C912A60, off_2781751E8);
    v32 = swift_getObjCClassFromMetadata();
    v33 = sub_2146D9588();
    [v27 setClass:v32 forClassName:v33];

    sub_21404A8B8(0, &qword_27C912A68, off_278175278);
    v34 = swift_getObjCClassFromMetadata();
    v35 = sub_2146D9588();
    [v27 setClass:v34 forClassName:v35];

    sub_21404A8B8(0, &qword_27C912A70, off_278175130);
    v36 = swift_getObjCClassFromMetadata();
    v37 = sub_2146D9588();
    [v27 setClass:v36 forClassName:v37];

    sub_21404A8B8(0, &qword_27C912A78, off_278175198);
    v38 = swift_getObjCClassFromMetadata();
    v39 = sub_2146D9588();
    [v27 setClass:v38 forClassName:v39];

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v40 = swift_getObjCClassFromMetadata();
    v41 = sub_2146D9588();
    [v27 setClass:v40 forClassName:v41];

    sub_21404A8B8(0, &qword_27C912A88, off_278175270);
    v42 = swift_getObjCClassFromMetadata();
    v43 = sub_2146D9588();
    [v27 setClass:v42 forClassName:v43];

    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v44 = swift_getObjCClassFromMetadata();
    v168 = 0xD000000000000011;
    v45 = sub_2146D9588();
    [v27 setClass:v44 forClassName:v45];

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v46 = swift_getObjCClassFromMetadata();
    v47 = sub_2146D9588();
    [v27 setClass:v46 forClassName:v47];

    sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
    v48 = swift_getObjCClassFromMetadata();
    v49 = sub_2146D9588();
    [v27 setClass:v48 forClassName:v49];

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v50 = swift_getObjCClassFromMetadata();
    v51 = sub_2146D9588();
    [v27 setClass:v50 forClassName:v51];

    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    v52 = swift_getObjCClassFromMetadata();
    v53 = sub_2146D9588();
    [v27 setClass:v52 forClassName:v53];

    sub_21404A8B8(0, &qword_27C912AB8, off_278175188);
    v54 = swift_getObjCClassFromMetadata();
    v55 = sub_2146D9588();
    [v27 setClass:v54 forClassName:v55];

    sub_21404A8B8(0, &qword_27C912AC0, off_278175208);
    v56 = swift_getObjCClassFromMetadata();
    v169 = 0xD000000000000016;
    v57 = sub_2146D9588();
    [v27 setClass:v56 forClassName:v57];

    sub_21404A8B8(0, &qword_27C912AC8, off_278175200);
    v58 = swift_getObjCClassFromMetadata();
    v59 = sub_2146D9588();
    [v27 setClass:v58 forClassName:v59];

    sub_21404A8B8(0, &qword_27C912AD0, off_278175238);
    v60 = swift_getObjCClassFromMetadata();
    v61 = sub_2146D9588();
    [v27 setClass:v60 forClassName:v61];

    sub_21404A8B8(0, &qword_27C912AD8, off_278175258);
    v62 = swift_getObjCClassFromMetadata();
    v170 = 0xD000000000000018;
    v63 = sub_2146D9588();
    [v27 setClass:v62 forClassName:v63];

    sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
    v64 = swift_getObjCClassFromMetadata();
    v166 = 0xD000000000000019;
    v65 = sub_2146D9588();
    [v27 setClass:v64 forClassName:v65];

    sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
    v66 = swift_getObjCClassFromMetadata();
    v67 = sub_2146D9588();
    [v27 setClass:v66 forClassName:v67];

    sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
    v68 = swift_getObjCClassFromMetadata();
    v69 = sub_2146D9588();
    [v27 setClass:v68 forClassName:v69];

    sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
    v70 = swift_getObjCClassFromMetadata();
    v171 = 0xD00000000000001FLL;
    v71 = sub_2146D9588();
    [v27 setClass:v70 forClassName:v71];

    sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
    v72 = swift_getObjCClassFromMetadata();
    v73 = sub_2146D9588();
    [v27 setClass:v72 forClassName:v73];

    sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
    v74 = swift_getObjCClassFromMetadata();
    v75 = sub_2146D9588();
    [v27 setClass:v74 forClassName:v75];

    sub_21404A8B8(0, &qword_27C912B10, off_278175300);
    v76 = swift_getObjCClassFromMetadata();
    v77 = sub_2146D9588();
    [v27 setClass:v76 forClassName:v77];

    sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
    v78 = swift_getObjCClassFromMetadata();
    v79 = sub_2146D9588();
    [v27 setClass:v78 forClassName:v79];

    sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
    v80 = swift_getObjCClassFromMetadata();
    v81 = sub_2146D9588();
    [v27 setClass:v80 forClassName:v81];

    sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
    v82 = swift_getObjCClassFromMetadata();
    v83 = sub_2146D9588();
    [v27 setClass:v82 forClassName:v83];

    sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
    v84 = swift_getObjCClassFromMetadata();
    v85 = v167;
    v86 = sub_2146D9588();
    [v27 setClass:v84 forClassName:v86];

    sub_21404A8B8(0, &qword_27C912B38, off_278175310);
    v87 = swift_getObjCClassFromMetadata();
    v88 = sub_2146D9588();
    [v27 setClass:v87 forClassName:v88];

    sub_21404A8B8(0, &qword_27C912B40, off_278175318);
    v89 = swift_getObjCClassFromMetadata();
    v90 = sub_2146D9588();
    [v27 setClass:v89 forClassName:v90];

    sub_21404A8B8(0, &qword_27C912B48, off_278175158);
    v91 = swift_getObjCClassFromMetadata();
    v92 = sub_2146D9588();
    [v27 setClass:v91 forClassName:v92];

    sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
    v93 = swift_getObjCClassFromMetadata();
    v94 = sub_2146D9588();
    [v27 setClass:v93 forClassName:v94];

    sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
    v95 = swift_getObjCClassFromMetadata();
    v96 = sub_2146D9588();
    [v27 setClass:v95 forClassName:v96];

    sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
    v97 = swift_getObjCClassFromMetadata();
    v98 = sub_2146D9588();
    [v27 setClass:v97 forClassName:v98];

    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    v99 = swift_getObjCClassFromMetadata();
    v100 = sub_2146D9588();
    [v27 setClass:v99 forClassName:v100];

    sub_21404A8B8(0, &qword_27C912B68, off_278175298);
    v101 = swift_getObjCClassFromMetadata();
    v102 = sub_2146D9588();
    [v27 setClass:v101 forClassName:v102];

    sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
    v103 = swift_getObjCClassFromMetadata();
    v104 = sub_2146D9588();
    [v27 setClass:v103 forClassName:v104];

    sub_21404A8B8(0, &qword_27C912B78, off_278175220);
    v105 = swift_getObjCClassFromMetadata();
    v106 = sub_2146D9588();
    [v27 setClass:v105 forClassName:v106];

    sub_21404A8B8(0, &qword_27C912B80, off_278175210);
    v107 = swift_getObjCClassFromMetadata();
    v108 = sub_2146D9588();
    [v27 setClass:v107 forClassName:v108];

    sub_21404A8B8(0, &qword_27C912B88, off_278175218);
    v109 = swift_getObjCClassFromMetadata();
    v110 = sub_2146D9588();
    [v27 setClass:v109 forClassName:v110];

    sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
    v111 = swift_getObjCClassFromMetadata();
    v112 = sub_2146D9588();
    [v27 setClass:v111 forClassName:v112];

    sub_21404A8B8(0, &qword_27C912B98, off_278175160);
    v113 = swift_getObjCClassFromMetadata();
    v114 = sub_2146D9588();
    [v27 setClass:v113 forClassName:v114];

    sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
    v115 = swift_getObjCClassFromMetadata();
    v116 = sub_2146D9588();
    [v27 setClass:v115 forClassName:v116];

    sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
    v117 = swift_getObjCClassFromMetadata();
    v118 = sub_2146D9588();
    [v27 setClass:v117 forClassName:v118];

    sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
    v119 = swift_getObjCClassFromMetadata();
    v120 = sub_2146D9588();
    [v27 setClass:v119 forClassName:v120];

    sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
    v121 = swift_getObjCClassFromMetadata();
    v122 = sub_2146D9588();
    [v27 setClass:v121 forClassName:v122];

    sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
    v123 = swift_getObjCClassFromMetadata();
    v124 = sub_2146D9588();
    [v27 setClass:v123 forClassName:v124];

    sub_21404A8B8(0, &qword_27C912BC8, off_2781751B0);
    v125 = swift_getObjCClassFromMetadata();
    v126 = sub_2146D9588();
    [v27 setClass:v125 forClassName:v126];

    sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
    v127 = swift_getObjCClassFromMetadata();
    v128 = sub_2146D9588();
    [v27 setClass:v127 forClassName:v128];

    sub_21404A8B8(0, &qword_27C912BD8, off_278175150);
    v129 = swift_getObjCClassFromMetadata();
    v130 = sub_2146D9588();
    [v27 setClass:v129 forClassName:v130];

    sub_21404A8B8(0, &qword_27C912BE0, off_278175268);
    v131 = swift_getObjCClassFromMetadata();
    v132 = sub_2146D9588();
    [v27 setClass:v131 forClassName:v132];

    sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
    v133 = swift_getObjCClassFromMetadata();
    v134 = sub_2146D9588();
    [v27 setClass:v133 forClassName:v134];

    sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
    v135 = swift_getObjCClassFromMetadata();
    v136 = sub_2146D9588();
    [v27 setClass:v135 forClassName:v136];

    sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
    v137 = swift_getObjCClassFromMetadata();
    v138 = sub_2146D9588();
    [v27 setClass:v137 forClassName:v138];

    sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
    v139 = swift_getObjCClassFromMetadata();
    v140 = sub_2146D9588();
    [v27 setClass:v139 forClassName:v140];

    sub_21404A8B8(0, &qword_27C912C08, off_278175190);
    v141 = swift_getObjCClassFromMetadata();
    v142 = sub_2146D9588();
    [v27 setClass:v141 forClassName:v142];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_2146EA710;
    *(v143 + 32) = v85;
    v144 = *MEMORY[0x277CCA308];
    sub_2146D95B8();
    sub_2146D9D08();

    if (v176)
    {
      v145 = swift_dynamicCast();
      v146 = v172;
      v147 = v173;
      if (v145)
      {
        v148 = v178;
        v149 = [v178 metadata];
        if (v149)
        {
          v150 = v149;
          v152 = v164;
          v151 = v165;
          sub_2143E6788(v150, v164);
          if (v151)
          {

LABEL_12:
            sub_213FB54FC(v147, v146);
            return;
          }

          v159 = 0;
        }

        else
        {
          v159 = 1;
          v152 = v164;
        }

        v160 = type metadata accessor for LinkPresentation.LinkMetadata(0);
        (*(*(v160 - 8) + 56))(v152, v159, 1, v160);
        v161 = [v148 isPlaceholder];

        v162 = v163;
        sub_21408AC04(v152, v163, &qword_27C904860, &qword_2146EDB50);

        sub_213FB54FC(v147, v146);
        *(v162 + *(type metadata accessor for LinkPresentation.MessagesPayload(0) + 20)) = v161;
        return;
      }
    }

    else
    {
      sub_213FB2DF4(&v174, &qword_27C913170, &qword_2146EAB20);
      v146 = v172;
      v147 = v173;
    }

    v156 = sub_2146D9F58();
    swift_allocError();
    v158 = v157;
    sub_2146D9F28();
    (*(*(v156 - 8) + 104))(v158, *MEMORY[0x277D84168], v156);
    swift_willThrow();

    goto LABEL_12;
  }

  v178 = v3;
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v14 = v177;
    v173 = 0x8000000214799C00;
    sub_21404A6EC();
    swift_allocError();
    v16 = v15;
    v17 = v14;
    v18 = [v17 domain];
    v19 = sub_2146D95B8();
    v20 = a1;
    v22 = v21;

    v174 = 0xD000000000000014;
    v175 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v19, v22);

    v23 = v175;
    *v16 = v174;
    v16[1] = v23;
    v174 = [v17 code];
    v24 = sub_2146DA428();
    v26 = v25;

    v16[2] = v24;
    v16[3] = v26;
    v16[4] = 0xD000000000000020;
    v16[5] = v173;
    swift_willThrow();
    sub_213FB54FC(v20, a2);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v154 = v153;
    v155 = v3;
    sub_214689A34(v3, 0xD000000000000020, 0x8000000214799C00, v154);
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }
}

void sub_2143E6788(id a1@<X0>, unsigned int *a2@<X8>)
{
  v3 = v2;
  v513 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C10, &qword_21473AF48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v514 = &v478 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v511 = *(v8 - 8);
  v512 = v8;
  v9 = *(v511 + 64);
  MEMORY[0x28223BE20](v8);
  v542 = &v478 - v10;
  v515 = type metadata accessor for LinkPresentation.AudioMetadata(0);
  v519 = *(v515 - 8);
  v11 = *(v519 + 64);
  MEMORY[0x28223BE20](v515);
  v521 = &v478 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = type metadata accessor for LinkPresentation.VideoMetadata(0);
  v518 = *(v516 - 8);
  v13 = *(v518 + 64);
  v14 = MEMORY[0x28223BE20](v516);
  v523 = &v478 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v525 = &v478 - v16;
  v558 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v557 = *(v558 - 8);
  v17 = *(v557 + 64);
  v18 = MEMORY[0x28223BE20](v558);
  v530 = (&v478 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v540 = &v478 - v21;
  MEMORY[0x28223BE20](v20);
  v529 = &v478 - v22;
  v543 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
  v541 = *(v543 - 8);
  v23 = *(v541 + 64);
  v24 = MEMORY[0x28223BE20](v543);
  v528 = (&v478 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v538 = &v478 - v27;
  MEMORY[0x28223BE20](v26);
  v527 = &v478 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v517 = &v478 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v520 = &v478 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v522 = &v478 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v531 = &v478 - v40;
  v565 = type metadata accessor for LinkPresentation.ImageMetadata(0);
  v559 = *(v565 - 8);
  v41 = *(v559 + 64);
  v42 = MEMORY[0x28223BE20](v565);
  v524 = (&v478 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v534 = &v478 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v526 = (&v478 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v536 = &v478 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v556 = &v478 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v564 = &v478 - v53;
  MEMORY[0x28223BE20](v52);
  v555 = &v478 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v532 = &v478 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v478 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v65 = &v478 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v533 = &v478 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v535 = &v478 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v539 = &v478 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v537 = &v478 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v563 = &v478 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v80 = &v478 - v79;
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v478 - v82;
  MEMORY[0x28223BE20](v81);
  v85 = &v478 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  v87 = *(*(v86 - 8) + 64);
  v88 = MEMORY[0x28223BE20](v86 - 8);
  v90 = (&v478 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v88);
  v566 = &v478 - v91;
  v92 = [a1 associatedApplication];
  v642 = a1;
  if (v92)
  {
    v93 = v61;
    v94 = v92;
    sub_2143EDE48(v94, &v630);
    if (v2)
    {

      return;
    }

    nullsub_1(&v630);
    v61 = v93;
    a1 = v642;
  }

  else
  {
    sub_214400888(&v618);
    v638 = v626;
    v639 = v627;
    v640 = v628;
    v641 = v629;
    v634 = v622;
    v635 = v623;
    v636 = v624;
    v637 = v625;
    v630 = v618;
    v631 = v619;
    v632 = v620;
    v633 = v621;
  }

  v562 = v80;
  v626 = v638;
  v627 = v639;
  v628 = v640;
  v629 = v641;
  v622 = v634;
  v623 = v635;
  v624 = v636;
  v625 = v637;
  v618 = v630;
  v619 = v631;
  v620 = v632;
  v621 = v633;
  v95 = [a1 collaborationMetadata];
  v96 = v61;
  if (v95)
  {
    sub_21449979C(v95, v90);
    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = type metadata accessor for CollaborationMetadata();
  v99 = 1;
  (*(*(v98 - 8) + 56))(v90, v97, 1, v98);
  sub_21408AC04(v90, v566, &qword_27C904C68, &qword_2146EE6E8);
  v100 = v642;
  v509 = [v642 version];
  v101 = [v100 originalURL];
  if (v101)
  {
    v102 = v101;
    sub_2146D88E8();

    v99 = 0;
  }

  i = v562;
  v104 = sub_2146D8958();
  v105 = *(v104 - 8);
  v106 = *(v105 + 56);
  v107 = 1;
  v569 = v104;
  v568 = v106;
  v567 = v105 + 56;
  v106(v85, v99, 1);
  v108 = [v642 URL];
  if (v108)
  {
    v109 = v108;
    sub_2146D88E8();

    v107 = 0;
  }

  v110 = v96;
  (v568)(v83, v107, 1, v569);
  v111 = v642;
  v112 = [v642 title];
  if (v112)
  {
    v113 = v112;
    v508 = sub_2146D95B8();
    v554 = v114;
  }

  else
  {
    v508 = 0;
    v554 = 0;
  }

  v115 = [v111 summary];
  if (v115)
  {
    v116 = v115;
    v507 = sub_2146D95B8();
    v553 = v117;
  }

  else
  {
    v507 = 0;
    v553 = 0;
  }

  v118 = [v111 selectedText];
  if (v118)
  {
    v119 = v118;
    v506 = sub_2146D95B8();
    v552 = v120;
  }

  else
  {
    v506 = 0;
    v552 = 0;
  }

  v121 = [v111 siteName];
  if (v121)
  {
    v122 = v121;
    v505 = sub_2146D95B8();
    v551 = v123;
  }

  else
  {
    v505 = 0;
    v551 = 0;
  }

  v124 = [v111 itemType];
  if (v124)
  {
    v125 = v124;
    v504 = sub_2146D95B8();
    v549 = v126;
  }

  else
  {
    v504 = 0;
    v549 = 0;
  }

  v127 = [v111 relatedURL];
  if (v127)
  {
    v128 = v127;
    sub_2146D88E8();

    v129 = 0;
  }

  else
  {
    v129 = 1;
  }

  (v568)(i, v129, 1, v569);
  v130 = [v111 creator];
  if (v130)
  {
    v131 = v130;
    v503 = sub_2146D95B8();
    v547 = v132;
  }

  else
  {
    v503 = 0;
    v547 = 0;
  }

  v133 = [v111 creatorFacebookProfile];
  if (v133)
  {
    v134 = v133;
    v502 = sub_2146D95B8();
    v546 = v135;
  }

  else
  {
    v502 = 0;
    v546 = 0;
  }

  v136 = [v111 creatorTwitterUsername];
  if (v136)
  {
    v137 = v136;
    v501 = sub_2146D95B8();
    v545 = v138;
  }

  else
  {
    v501 = 0;
    v545 = 0;
  }

  v139 = [v111 twitterCard];
  if (v139)
  {
    v140 = v139;
    v500 = sub_2146D95B8();
    v544 = v141;
  }

  else
  {
    v500 = 0;
    v544 = 0;
  }

  v499 = [v111 usesActivityPub];
  v142 = [v111 themeColor];
  v143 = v142;
  if (v142)
  {
    [v142 r];
    v561 = v144;
    [v143 g];
    v550 = v145;
    [v143 b];
    v560 = v146;
    [v143 a];
    v548 = v147;

    *&v148 = v561;
    *(&v148 + 1) = v550;
    v561 = v148;
    *&v149 = v560;
    *(&v149 + 1) = v548;
  }

  else
  {
    v149 = 0uLL;
    v561 = 0u;
  }

  v560 = v149;
  v497 = v143;
  v150 = [v111 appleContentID];
  if (v150)
  {
    v151 = v150;
    v498 = sub_2146D95B8();
    *&v550 = v152;
  }

  else
  {
    v498 = 0;
    *&v550 = 0;
  }

  v153 = [v111 appleSummary];
  if (v153)
  {
    v154 = v153;
    v496 = sub_2146D95B8();
    *&v548 = v155;
  }

  else
  {
    v496 = 0;
    *&v548 = 0;
  }

  v156 = [v111 icon];
  if (v156)
  {
    v157 = v156;
    sub_2143EE118(v157, &v611);
    if (v2)
    {

      v158 = &qword_27C90B408;
      v159 = &qword_2146F64D8;
      v160 = &v618;
LABEL_60:
      sub_213FB2DF4(v160, v158, v159);

LABEL_73:
      v166 = i;
LABEL_74:
      sub_213FB2DF4(v166, &unk_27C9131A0, &unk_2146E9D10);
      v167 = v83;
LABEL_75:
      sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v85, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v566, &qword_27C904C68, &qword_2146EE6E8);
      return;
    }

    nullsub_1(&v611);
  }

  else
  {
    sub_2144008B4(&v604);
    v615 = v608;
    v616 = v609;
    v617[0] = v610[0];
    *(v617 + 9) = *(v610 + 9);
    v611 = v604;
    v612 = v605;
    v613 = v606;
    v614 = v607;
  }

  v608 = v615;
  v609 = v616;
  v610[0] = v617[0];
  *(v610 + 9) = *(v617 + 9);
  v604 = v611;
  v605 = v612;
  v606 = v613;
  v607 = v614;
  v161 = [v111 iconMetadata];
  if (v161)
  {
    v157 = v161;
    sub_2143EE4E0(v157, v65);
    if (v2)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      v158 = &qword_27C904868;
      v159 = &qword_2146EDB58;
      v160 = &v604;
      goto LABEL_60;
    }

    v162 = 0;
  }

  else
  {
    v162 = 1;
  }

  (*(v557 + 56))(v65, v162, 1, v558);
  v163 = [v111 arAsset];
  if (v163)
  {
    v164 = v163;
    sub_2143EE758(v164, &v599);
    if (v2)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
LABEL_71:

LABEL_72:
      sub_213FB2DF4(v65, &qword_27C904C38, &qword_2146EE6B8);
      goto LABEL_73;
    }

    v485 = v599;
    v486 = v600;
    v487 = v601;
    v488 = v602;
    v489 = v603;
  }

  else
  {
    v488 = 0;
    v489 = 0;
    v485 = 0;
    v486 = 0;
    v600 = 0;
    v599 = 0;
    v603 = 0;
    v487 = 1;
    v601 = 1;
    v602 = 0;
  }

  v165 = [v111 arAssetMetadata];
  if (v165)
  {
    v164 = v165;
    sub_2143EF124(v164, type metadata accessor for LinkPresentation.ARAssetMetadata, type metadata accessor for LinkPresentation.ARAssetMetadata, v110);
    if (v2)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      goto LABEL_71;
    }

    v481 = v110;

    v168 = 0;
  }

  else
  {
    v481 = v110;
    v168 = 1;
  }

  (*(v541 + 56))(v481, v168, 1, v543);
  v169 = [v111 image];
  if (v169)
  {
    v170 = v169;
    sub_2143EE118(v170, &v592);
    if (v2)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);

      sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
      goto LABEL_72;
    }

    nullsub_1(&v592);
  }

  else
  {
    sub_2144008B4(&v585);
    v596 = v589;
    v597 = v590;
    v598[0] = v591[0];
    *(v598 + 9) = *(v591 + 9);
    v592 = v585;
    v593 = v586;
    v594 = v587;
    v595 = v588;
  }

  v589 = v596;
  v590 = v597;
  v591[0] = v598[0];
  *(v591 + 9) = *(v598 + 9);
  v585 = v592;
  v586 = v593;
  v587 = v594;
  v588 = v595;
  v171 = [v111 alternateImages];
  v490 = v83;
  v491 = v85;
  v510 = v65;
  if (!v171)
  {
    goto LABEL_104;
  }

  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  i = sub_2146D9918();

  if (i >> 62)
  {
LABEL_102:
    v172 = sub_2146DA028();
    if (v172)
    {
LABEL_86:
      v584 = MEMORY[0x277D84F90];
      sub_2140A0000(0, v172 & ~(v172 >> 63), 0);
      if (v172 < 0)
      {
        goto LABEL_130;
      }

      v111 = 0;
      v171 = v584;
      v83 = (i & 0xC000000000000001);
      v495 = i & 0xFFFFFFFFFFFFFF8;
      v85 = (v172 - 1);
      while (1)
      {
        if (v83)
        {
          v173 = MEMORY[0x216054E00](v111, i);
        }

        else
        {
          if (v111 >= *(v495 + 16))
          {
            goto LABEL_101;
          }

          v173 = *(i + 8 * v111 + 32);
        }

        sub_2143EE118(v173, &v577);
        if (v3)
        {
          break;
        }

        v572 = v579;
        v573 = v580;
        *(v576 + 9) = *(v583 + 9);
        v575 = v582;
        v576[0] = v583[0];
        v574 = v581;
        v570 = v577;
        v571 = v578;
        v584 = v171;
        v175 = v171[2];
        v174 = v171[3];
        if (v175 >= v174 >> 1)
        {
          sub_2140A0000((v174 > 1), v175 + 1, 1);
          v171 = v584;
        }

        v171[2] = v175 + 1;
        v176 = &v171[16 * v175];
        v177 = v570;
        v178 = v571;
        v179 = v573;
        v176[4] = v572;
        v176[5] = v179;
        v176[2] = v177;
        v176[3] = v178;
        v180 = v574;
        v181 = v575;
        v182 = v576[0];
        *(v176 + 137) = *(v576 + 9);
        v176[7] = v181;
        v176[8] = v182;
        v176[6] = v180;
        if (v85 == v111)
        {

          v3 = 0;
          v83 = v490;
          v85 = v491;
          i = v562;
          v65 = v510;
          v111 = v642;
          goto LABEL_104;
        }

        ++v111;
        v3 = 0;
        v65 = v510;
        if (__OFADD__(v111, 1))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);

      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

      goto LABEL_127;
    }
  }

  else
  {
    v172 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v172)
    {
      goto LABEL_86;
    }
  }

  v171 = MEMORY[0x277D84F90];
  i = v562;
LABEL_104:
  v183 = v532;
  v479 = v171;
  v184 = [v111 imageMetadata];
  if (v184)
  {
    v185 = v184;
    sub_2143EECA0(v185, type metadata accessor for LinkPresentation.ImageMetadata, type metadata accessor for LinkPresentation.ImageMetadata, v183);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

LABEL_179:
      sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
      sub_213FB2DF4(v65, &qword_27C904C38, &qword_2146EE6B8);
      v166 = v562;
      goto LABEL_74;
    }

    v186 = 0;
  }

  else
  {
    v186 = 1;
  }

  (*(v559 + 56))(v183, v186, 1, v565);
  v187 = [v111 contentImages];
  if (!v187)
  {
    v478 = 0;
    goto LABEL_133;
  }

  v188 = v187;
  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  i = sub_2146D9918();

  if (i >> 62)
  {
    goto LABEL_131;
  }

  v183 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v183)
  {
LABEL_112:
    v584 = MEMORY[0x277D84F90];
    v189 = sub_2140A0000(0, v183 & ~(v183 >> 63), 0);
    if (v183 < 0)
    {
      goto LABEL_206;
    }

    v111 = 0;
    v190 = v584;
    v83 = (i & 0xC000000000000001);
    v495 = i & 0xFFFFFFFFFFFFFF8;
    v85 = (v183 - 1);
    while (1)
    {
      if (v83)
      {
        v191 = MEMORY[0x216054E00](v111, i);
      }

      else
      {
        if (v111 >= *(v495 + 16))
        {
          goto LABEL_129;
        }

        v191 = *(i + 8 * v111 + 32);
      }

      sub_2143EE118(v191, &v577);
      if (v3)
      {
        break;
      }

      v572 = v579;
      v573 = v580;
      *(v576 + 9) = *(v583 + 9);
      v575 = v582;
      v576[0] = v583[0];
      v574 = v581;
      v570 = v577;
      v571 = v578;
      v584 = v190;
      v193 = v190[2];
      v192 = v190[3];
      v183 = v193 + 1;
      if (v193 >= v192 >> 1)
      {
        sub_2140A0000((v192 > 1), v193 + 1, 1);
        v190 = v584;
      }

      v190[2] = v183;
      v194 = &v190[16 * v193];
      v195 = v570;
      v196 = v571;
      v197 = v573;
      v194[4] = v572;
      v194[5] = v197;
      v194[2] = v195;
      v194[3] = v196;
      v198 = v574;
      v199 = v575;
      v200 = v576[0];
      *(v194 + 137) = *(v576 + 9);
      v194[7] = v199;
      v194[8] = v200;
      v194[6] = v198;
      if (v85 == v111)
      {
        v478 = v190;

        v3 = 0;
        v83 = v490;
        v85 = v491;
        i = v562;
        v65 = v510;
        v111 = v642;
        goto LABEL_133;
      }

      ++v111;
      v3 = 0;
      v65 = v510;
      if (__OFADD__(v111, 1))
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        v183 = sub_2146DA028();
        if (!v183)
        {
          goto LABEL_132;
        }

        goto LABEL_112;
      }
    }

    sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
    sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
    sub_214314998(v485, v486, v487);
    sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

    sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
LABEL_127:
    sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
    sub_213FB2DF4(v65, &qword_27C904C38, &qword_2146EE6B8);
    sub_213FB2DF4(v562, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v490, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v491, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v566, &qword_27C904C68, &qword_2146EE6E8);

    return;
  }

LABEL_132:

  v478 = MEMORY[0x277D84F90];
  i = v562;
LABEL_133:
  v201 = [v111 contentImagesMetadata];
  if (v201)
  {
    v202 = v201;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v203 = sub_2146D9918();

    v484 = v203;
    if (v203 >> 62)
    {
      goto LABEL_158;
    }

    v204 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v562; v204; i = v562)
    {
      *&v577 = MEMORY[0x277D84F90];
      v483 = v204;
      v189 = sub_21409FFBC(0, v204 & ~(v204 >> 63), 0);
      if (v483 < 0)
      {
        goto LABEL_207;
      }

      v205 = 0;
      v206 = v484;
      v482 = v484 & 0xC000000000000001;
      v495 = v577;
      v480 = v484 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v482)
        {
          v207 = MEMORY[0x216054E00](v205, v206);
          goto LABEL_143;
        }

        if ((v205 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v205 >= *(v480 + 16))
        {
          goto LABEL_157;
        }

        v207 = *(v206 + 8 * v205 + 32);
LABEL_143:
        v208 = v207;
        v209 = v565;
        v210 = *(v565 + 20);
        v211 = 1;
        v212 = v564;
        (v568)(&v564[v210], 1, 1, v569);
        v213 = &v212[*(v209 + 24)];
        *v213 = 0;
        *(v213 + 1) = 0;
        v214 = &v212[*(v209 + 32)];
        *v214 = 0;
        *(v214 + 1) = 0;
        v215 = [v208 version];
        v216 = [v208 URL];
        v217 = v563;
        if (v216)
        {
          v218 = v216;
          sub_2146D88E8();

          v211 = 0;
        }

        (v568)(v217, v211, 1, v569);
        v219 = [v208 type];
        if (v219)
        {
          v220 = v219;
          v492 = sub_2146D95B8();
          v222 = v221;
        }

        else
        {
          v492 = 0;
          v222 = 0;
        }

        [v208 size];
        v224 = v223;
        v226 = v225;
        v227 = [v208 accessibilityText];
        v493 = v210;
        v494 = v3;
        if (v227)
        {
          v228 = v227;
          v229 = sub_2146D95B8();
          v231 = v230;
        }

        else
        {

          v229 = 0;
          v231 = 0;
        }

        v232 = v556;
        *v556 = v215;
        v233 = v565;
        sub_21408AC04(v563, v232 + *(v565 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v234 = (v232 + v233[6]);
        *v234 = v492;
        v234[1] = v222;
        v235 = (v232 + v233[7]);
        *v235 = v224;
        v235[1] = v226;
        v236 = (v232 + v233[8]);
        *v236 = v229;
        v236[1] = v231;
        v237 = v564;
        sub_213FB2DF4(&v564[v493], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v232, v237, type metadata accessor for LinkPresentation.ImageMetadata);
        v238 = v555;
        sub_214400A9C(v237, v555, type metadata accessor for LinkPresentation.ImageMetadata);
        v239 = v495;
        *&v577 = v495;
        v241 = *(v495 + 16);
        v240 = *(v495 + 24);
        v183 = v241 + 1;
        v111 = v642;
        if (v241 >= v240 >> 1)
        {
          sub_21409FFBC(v240 > 1, v241 + 1, 1);
          v239 = v577;
        }

        ++v205;
        *(v239 + 16) = v183;
        v242 = (*(v559 + 80) + 32) & ~*(v559 + 80);
        v495 = v239;
        sub_214400A9C(v238, v239 + v242 + *(v559 + 72) * v241, type metadata accessor for LinkPresentation.ImageMetadata);
        v206 = v484;
        v83 = v490;
        v85 = v491;
        v65 = v510;
        v3 = v494;
        if (v483 == v205)
        {

          i = v562;
          goto LABEL_160;
        }
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      v204 = sub_2146DA028();
    }

    v495 = MEMORY[0x277D84F90];
  }

  else
  {
    v495 = 0;
  }

LABEL_160:
  v243 = [v111 video];
  if (v243)
  {
    v244 = v243;
    sub_2143EE928(v244, v531);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

LABEL_178:
      sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
      goto LABEL_179;
    }

    v245 = 0;
  }

  else
  {
    v245 = 1;
  }

  v246 = type metadata accessor for LinkPresentation.Video(0);
  v247 = 1;
  (*(*(v246 - 8) + 56))(v531, v245, 1, v246);
  v248 = [v111 videoMetadata];
  if (v248)
  {
    v249 = v248;
    sub_2143EECA0(v249, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v522);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

LABEL_177:
      sub_213FB2DF4(v531, &qword_27C904888, &unk_2146EDB80);
      goto LABEL_178;
    }

    v247 = 0;
  }

  v250 = 1;
  (*(v518 + 56))(v522, v247, 1, v516);
  v251 = [v111 audio];
  if (v251)
  {
    v252 = v251;
    sub_2143EEF80(v252, v520);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

LABEL_176:
      sub_213FB2DF4(v522, &qword_27C904C50, &unk_2146EE6D0);
      goto LABEL_177;
    }

    v250 = 0;
  }

  v253 = type metadata accessor for LinkPresentation.Audio(0);
  v254 = 1;
  (*(*(v253 - 8) + 56))(v520, v250, 1, v253);
  v255 = [v111 audioMetadata];
  if (v255)
  {
    v256 = v255;
    sub_2143EF124(v256, type metadata accessor for LinkPresentation.AudioMetadata, type metadata accessor for LinkPresentation.AudioMetadata, v517);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

      sub_213FB2DF4(v520, &qword_27C904C58, &unk_2146F6450);
      goto LABEL_176;
    }

    v254 = 0;
  }

  (*(v519 + 56))(v517, v254, 1, v515);
  v257 = [v111 arAssets];
  v183 = v542;
  if (v257)
  {
    v258 = v257;
    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v259 = sub_2146D9918();

    v189 = v259;
    if (v259 >> 62)
    {
      goto LABEL_208;
    }

    for (j = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v189 = v292)
    {
      v183 = v189;
      *&v577 = MEMORY[0x277D84F90];
      v189 = sub_21409FF78(0, j & ~(j >> 63), 0);
      if (j < 0)
      {
        goto LABEL_346;
      }

      i = 0;
      v261 = v577;
      v262 = v183;
      v515 = v183 & 0xC000000000000001;
      v492 = v183 & 0xFFFFFFFFFFFFFF8;
      v493 = j;
      v494 = v183;
      while (1)
      {
        v563 = v261;
        if (v515)
        {
          v263 = MEMORY[0x216054E00](i, v262);
          goto LABEL_191;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v492 + 16))
        {
          goto LABEL_205;
        }

        v263 = *(v262 + 8 * i + 32);
LABEL_191:
        v264 = v263;
        v265 = v543;
        v266 = 1;
        v267 = v538;
        v556 = *(v543 + 20);
        (v568)(&v538[v556], 1, 1, v569);
        v268 = &v267[*(v265 + 24)];
        *v268 = 0;
        *(v268 + 1) = 0;
        v269 = &v267[*(v265 + 28)];
        *v269 = 0;
        *(v269 + 1) = 0;
        v270 = [v264 version];
        v271 = [v264 URL];
        v272 = v537;
        if (v271)
        {
          v273 = v271;
          sub_2146D88E8();

          v266 = 0;
        }

        (v568)(v272, v266, 1, v569);
        v274 = [v264 type];
        if (v274)
        {
          v275 = v274;
          v555 = sub_2146D95B8();
          v516 = v276;
        }

        else
        {
          v555 = 0;
          v516 = 0;
        }

        v277 = [v264 accessibilityText];
        v564 = i;
        if (v277)
        {
          v278 = v3;
          v279 = v277;
          v280 = sub_2146D95B8();
          v282 = v281;

          v3 = v278;
          v111 = v642;
        }

        else
        {

          v280 = 0;
          v282 = 0;
        }

        v283 = v528;
        *v528 = v270;
        v284 = v543;
        sub_21408AC04(v537, v283 + *(v543 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v285 = (v283 + *(v284 + 24));
        v286 = v516;
        *v285 = v555;
        v285[1] = v286;
        v287 = (v283 + *(v284 + 28));
        *v287 = v280;
        v287[1] = v282;
        v288 = v538;
        sub_213FB2DF4(&v538[v556], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v283, v288, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v289 = v527;
        sub_214400A9C(v288, v527, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v261 = v563;
        *&v577 = v563;
        v291 = *(v563 + 16);
        v290 = *(v563 + 24);
        if (v291 >= v290 >> 1)
        {
          sub_21409FF78(v290 > 1, v291 + 1, 1);
          v261 = v577;
        }

        i = (v564 + 1);
        *(v261 + 16) = v291 + 1;
        v189 = sub_214400A9C(v289, v261 + ((*(v541 + 80) + 32) & ~*(v541 + 80)) + *(v541 + 72) * v291, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v262 = v494;
        v85 = v491;
        v65 = v510;
        v183 = v542;
        if (v493 == i)
        {
          v563 = v261;

          i = v562;
          goto LABEL_210;
        }
      }

      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      v292 = v189;
      j = sub_2146DA028();
    }

    v563 = MEMORY[0x277D84F90];
  }

  else
  {
    v563 = 0;
  }

LABEL_210:
  v293 = [v111 icons];
  if (!v293)
  {
    v564 = 0;
    goto LABEL_230;
  }

  v294 = v293;
  sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
  v295 = sub_2146D9918();

  v296 = v295;
  if (v295 >> 62)
  {
    v326 = v295;
    v297 = sub_2146DA028();
    v296 = v326;
    if (v297)
    {
      goto LABEL_213;
    }

LABEL_229:

    v564 = MEMORY[0x277D84F90];
    goto LABEL_230;
  }

  v297 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v297)
  {
    goto LABEL_229;
  }

LABEL_213:
  v298 = v296;
  *&v577 = MEMORY[0x277D84F90];
  sub_21409FF34(0, v297 & ~(v297 >> 63), 0);
  if (v297 < 0)
  {
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
    return;
  }

  v299 = 0;
  v564 = v577;
  v300 = v298;
  v538 = (v298 & 0xC000000000000001);
  v543 = v298;
  v541 = v297;
  do
  {
    v556 = v299;
    if (v538)
    {
      v301 = MEMORY[0x216054E00](v299, v300);
    }

    else
    {
      v301 = *(v300 + 8 * v299 + 32);
    }

    v302 = v301;
    v303 = v558;
    v304 = 1;
    v305 = v540;
    v555 = *(v558 + 20);
    (v568)(v540 + v555, 1, 1, v569);
    v306 = (v305 + *(v303 + 24));
    *v306 = 0;
    v306[1] = 0;
    v307 = [v302 version];
    v308 = [v302 URL];
    v309 = v539;
    if (v308)
    {
      v310 = v308;
      sub_2146D88E8();

      v304 = 0;
    }

    (v568)(v309, v304, 1, v569);
    v311 = [v302 accessibilityText];
    if (v311)
    {
      v312 = v3;
      v313 = v311;
      v314 = sub_2146D95B8();
      v316 = v315;

      v3 = v312;
      v85 = v491;
    }

    else
    {

      v314 = 0;
      v316 = 0;
    }

    v317 = v530;
    *v530 = v307;
    v318 = v558;
    sub_21408AC04(v539, v317 + *(v558 + 20), &unk_27C9131A0, &unk_2146E9D10);
    v319 = (v317 + *(v318 + 24));
    *v319 = v314;
    v319[1] = v316;
    v320 = v540;
    sub_213FB2DF4(v540 + v555, &unk_27C9131A0, &unk_2146E9D10);
    sub_214400A9C(v317, v320, type metadata accessor for LinkPresentation.IconMetadata);
    v321 = v529;
    sub_214400A9C(v320, v529, type metadata accessor for LinkPresentation.IconMetadata);
    v322 = v564;
    *&v577 = v564;
    v324 = *(v564 + 2);
    v323 = *(v564 + 3);
    if (v324 >= v323 >> 1)
    {
      sub_21409FF34(v323 > 1, v324 + 1, 1);
      v322 = v577;
    }

    v299 = v556 + 1;
    *(v322 + 2) = v324 + 1;
    v325 = (*(v557 + 80) + 32) & ~*(v557 + 80);
    v564 = v322;
    sub_214400A9C(v321, &v322[v325 + *(v557 + 72) * v324], type metadata accessor for LinkPresentation.IconMetadata);
    v183 = v542;
    i = v562;
    v65 = v510;
    v300 = v543;
  }

  while (v541 != v299);

  v111 = v642;
LABEL_230:
  v327 = [v111 images];
  if (v327)
  {
    v328 = v327;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v329 = sub_2146D9918();

    v330 = v329;
    if (v329 >> 62)
    {
      goto LABEL_255;
    }

    for (k = *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10); k; v330 = v366)
    {
      v183 = v330;
      *&v577 = MEMORY[0x277D84F90];
      v330 = sub_21409FFBC(0, k & ~(k >> 63), 0);
      if (k < 0)
      {
        goto LABEL_356;
      }

      i = 0;
      v332 = v183;
      v540 = v183;
      v541 = v183 & 0xC000000000000001;
      v333 = v577;
      v538 = (v183 & 0xFFFFFFFFFFFFFF8);
      v539 = k;
      while (!__OFADD__(i, 1))
      {
        v111 = v536;
        v558 = v333;
        v557 = i + 1;
        if (v541)
        {
          v334 = MEMORY[0x216054E00](i, v332);
        }

        else
        {
          if (i >= *(v538 + 2))
          {
            goto LABEL_254;
          }

          v334 = *(v332 + 8 * i + 32);
        }

        v335 = v334;
        v336 = v565;
        v337 = 1;
        v543 = *(v565 + 20);
        (v568)(v111 + v543, 1, 1, v569);
        v338 = (v111 + *(v336 + 24));
        *v338 = 0;
        v338[1] = 0;
        v339 = (v111 + *(v336 + 32));
        *v339 = 0;
        v339[1] = 0;
        v340 = [v335 version];
        v341 = [v335 URL];
        v342 = v535;
        if (v341)
        {
          v343 = v341;
          sub_2146D88E8();

          v337 = 0;
        }

        (v568)(v342, v337, 1, v569);
        v344 = [v335 type];
        if (v344)
        {
          v345 = v344;
          v556 = sub_2146D95B8();
          v555 = v346;
        }

        else
        {
          v556 = 0;
          v555 = 0;
        }

        [v335 size];
        v348 = v347;
        v350 = v349;
        v351 = [v335 accessibilityText];
        if (v351)
        {
          v352 = v3;
          v353 = v351;
          v354 = sub_2146D95B8();
          v356 = v355;

          v3 = v352;
        }

        else
        {

          v354 = 0;
          v356 = 0;
        }

        v357 = v526;
        *v526 = v340;
        v358 = v565;
        sub_21408AC04(v535, v357 + *(v565 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v359 = (v357 + v358[6]);
        v360 = v555;
        *v359 = v556;
        v359[1] = v360;
        v361 = (v357 + v358[7]);
        *v361 = v348;
        v361[1] = v350;
        v362 = (v357 + v358[8]);
        *v362 = v354;
        v362[1] = v356;
        v363 = v536;
        sub_213FB2DF4(&v536[v543], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v357, v363, type metadata accessor for LinkPresentation.ImageMetadata);
        v333 = v558;
        *&v577 = v558;
        v365 = *(v558 + 16);
        v364 = *(v558 + 24);
        if (v365 >= v364 >> 1)
        {
          sub_21409FFBC(v364 > 1, v365 + 1, 1);
          v333 = v577;
        }

        *(v333 + 16) = v365 + 1;
        v330 = sub_214400A9C(v363, v333 + ((*(v559 + 80) + 32) & ~*(v559 + 80)) + *(v559 + 72) * v365, type metadata accessor for LinkPresentation.ImageMetadata);
        ++i;
        v332 = v540;
        v85 = v491;
        v65 = v510;
        v111 = v642;
        v183 = v542;
        if (v557 == v539)
        {
          v558 = v333;

          i = v562;
          goto LABEL_257;
        }
      }

      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      v366 = v330;
      k = sub_2146DA028();
    }

    v558 = MEMORY[0x277D84F90];
  }

  else
  {
    v558 = 0;
  }

LABEL_257:
  v367 = [v111 availableContentImages];
  if (v367)
  {
    v368 = v367;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v369 = sub_2146D9918();

    v370 = v369;
    if (v369 >> 62)
    {
      goto LABEL_282;
    }

    for (m = *((v369 & 0xFFFFFFFFFFFFFF8) + 0x10); m; v370 = v407)
    {
      v183 = v370;
      *&v577 = MEMORY[0x277D84F90];
      v370 = sub_21409FFBC(0, m & ~(m >> 63), 0);
      if (m < 0)
      {
        goto LABEL_357;
      }

      i = 0;
      v372 = v183;
      v538 = v183;
      v539 = v183 & 0xC000000000000001;
      v373 = v577;
      v536 = (v183 & 0xFFFFFFFFFFFFFF8);
      v537 = m;
      while (!__OFADD__(i, 1))
      {
        v65 = v534;
        v557 = v373;
        v556 = i + 1;
        if (v539)
        {
          v374 = MEMORY[0x216054E00](i, v372);
        }

        else
        {
          if (i >= *(v536 + 2))
          {
            goto LABEL_281;
          }

          v374 = *&v372[8 * i + 32];
        }

        v375 = v374;
        v376 = v565;
        v377 = 1;
        v540 = *(v565 + 20);
        (v568)(v65 + v540, 1, 1, v569);
        v378 = (v65 + *(v376 + 24));
        *v378 = 0;
        v378[1] = 0;
        v379 = (v65 + *(v376 + 32));
        *v379 = 0;
        v379[1] = 0;
        v380 = [v375 version];
        v381 = [v375 URL];
        v382 = v533;
        if (v381)
        {
          v383 = v381;
          sub_2146D88E8();

          v377 = 0;
        }

        (v568)(v382, v377, 1, v569);
        v384 = [v375 type];
        if (v384)
        {
          v385 = v384;
          v555 = sub_2146D95B8();
          v543 = v386;
        }

        else
        {
          v555 = 0;
          v543 = 0;
        }

        v387 = v380;
        [v375 size];
        v389 = v388;
        v391 = v390;
        v392 = [v375 accessibilityText];
        v541 = i;
        if (v392)
        {
          v393 = v3;
          v394 = v392;
          v395 = sub_2146D95B8();
          v397 = v396;

          v3 = v393;
          v111 = v642;
        }

        else
        {

          v395 = 0;
          v397 = 0;
        }

        v398 = v524;
        *v524 = v387;
        v399 = v565;
        sub_21408AC04(v533, v398 + *(v565 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v400 = (v398 + v399[6]);
        v401 = v543;
        *v400 = v555;
        v400[1] = v401;
        v402 = (v398 + v399[7]);
        *v402 = v389;
        v402[1] = v391;
        v403 = (v398 + v399[8]);
        *v403 = v395;
        v403[1] = v397;
        v404 = v534;
        sub_213FB2DF4(v534 + v540, &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v398, v404, type metadata accessor for LinkPresentation.ImageMetadata);
        v373 = v557;
        *&v577 = v557;
        v406 = *(v557 + 16);
        v405 = *(v557 + 24);
        if (v406 >= v405 >> 1)
        {
          sub_21409FFBC(v405 > 1, v406 + 1, 1);
          v373 = v577;
        }

        *(v373 + 16) = v406 + 1;
        v370 = sub_214400A9C(v404, v373 + ((*(v559 + 80) + 32) & ~*(v559 + 80)) + *(v559 + 72) * v406, type metadata accessor for LinkPresentation.ImageMetadata);
        v183 = v542;
        i = v541 + 1;
        v372 = v538;
        v85 = v491;
        v65 = v510;
        if (v556 == v537)
        {
          v557 = v373;

          i = v562;
          goto LABEL_284;
        }
      }

      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      v407 = v370;
      m = sub_2146DA028();
    }

    v557 = MEMORY[0x277D84F90];
  }

  else
  {
    v557 = 0;
  }

LABEL_284:
  v408 = [v111 videos];
  if (v408)
  {
    v409 = v408;
    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v410 = sub_2146D9918();

    if (v410 >> 62)
    {
      goto LABEL_303;
    }

    for (n = *((v410 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_2146DA028())
    {
      v412 = v3;
      *&v577 = MEMORY[0x277D84F90];
      v569 = n;
      sub_21409FEF0(0, n & ~(n >> 63), 0);
      if ((v569 & 0x8000000000000000) != 0)
      {
        goto LABEL_358;
      }

      v65 = 0;
      v183 = v577;
      v568 = v410 & 0xC000000000000001;
      v567 = v410 & 0xFFFFFFFFFFFFFF8;
      v413 = v518;
      while (1)
      {
        v3 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v568)
        {
          v414 = MEMORY[0x216054E00](v65, v410);
        }

        else
        {
          if (v65 >= *(v567 + 16))
          {
            goto LABEL_302;
          }

          v414 = *(v410 + 8 * v65 + 32);
        }

        v85 = v410;
        sub_2143EECA0(v414, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v525);
        if (v412)
        {

          sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v485, v486, v487);
          sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v517, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v520, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v522, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v531, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v510, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(i, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v490, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v491, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v566, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        *&v577 = v183;
        v416 = *(v183 + 16);
        v415 = *(v183 + 24);
        if (v416 >= v415 >> 1)
        {
          sub_21409FEF0(v415 > 1, v416 + 1, 1);
          v413 = v518;
          v183 = v577;
        }

        *(v183 + 16) = v416 + 1;
        sub_214400A9C(v525, v183 + ((*(v413 + 80) + 32) & ~*(v413 + 80)) + *(v413 + 72) * v416, type metadata accessor for LinkPresentation.VideoMetadata);
        ++v65;
        i = v562;
        if (v3 == v569)
        {
          v565 = v183;

          v3 = 0;
          v85 = v491;
          v65 = v510;
          v111 = v642;
          v183 = v542;
          goto LABEL_305;
        }
      }

      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      ;
    }

    v565 = MEMORY[0x277D84F90];
    v111 = v642;
  }

  else
  {
    v565 = 0;
  }

LABEL_305:
  v417 = [v111 streamingVideos];
  if (v417)
  {
    v418 = v417;
    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v419 = sub_2146D9918();

    if (v419 >> 62)
    {
      goto LABEL_324;
    }

    for (ii = *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10); ii; ii = sub_2146DA028())
    {
      *&v577 = MEMORY[0x277D84F90];
      sub_21409FEF0(0, ii & ~(ii >> 63), 0);
      v568 = ii;
      if (ii < 0)
      {
        goto LABEL_359;
      }

      v65 = 0;
      v183 = v577;
      v569 = v419 & 0xC000000000000001;
      v567 = v419 & 0xFFFFFFFFFFFFFF8;
      v421 = v518;
      while (1)
      {
        i = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v569)
        {
          v422 = MEMORY[0x216054E00](v65, v419);
        }

        else
        {
          if (v65 >= *(v567 + 16))
          {
            goto LABEL_323;
          }

          v422 = *(v419 + 8 * v65 + 32);
        }

        sub_2143EECA0(v422, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v523);
        if (v3)
        {

          sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v485, v486, v487);
          sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v517, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v520, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v522, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v531, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v510, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(v562, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v490, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v85, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v566, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        *&v577 = v183;
        v424 = *(v183 + 16);
        v423 = *(v183 + 24);
        if (v424 >= v423 >> 1)
        {
          sub_21409FEF0(v423 > 1, v424 + 1, 1);
          v421 = v518;
          v183 = v577;
        }

        *(v183 + 16) = v424 + 1;
        sub_214400A9C(v523, v183 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v424, type metadata accessor for LinkPresentation.VideoMetadata);
        ++v65;
        v85 = v491;
        if (i == v568)
        {
          v567 = v183;

          i = v562;
          v65 = v510;
          v111 = v642;
          v183 = v542;
          goto LABEL_326;
        }
      }

      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      ;
    }

    v567 = MEMORY[0x277D84F90];
    v111 = v642;
  }

  else
  {
    v567 = 0;
  }

LABEL_326:
  v425 = [v111 audios];
  if (v425)
  {
    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    j = sub_2146D9918();

    if (j >> 62)
    {
      goto LABEL_347;
    }

    for (jj = *((j & 0xFFFFFFFFFFFFFF8) + 0x10); jj; jj = sub_2146DA028())
    {
      v427 = v3;
      *&v577 = MEMORY[0x277D84F90];
      sub_214400810(jj);
      if (jj < 0)
      {
        goto LABEL_360;
      }

      v65 = 0;
      v3 = j & 0xC000000000000001;
      v569 = j;
      v568 = j & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        j = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v3)
        {
          v428 = MEMORY[0x216054E00](v65, v569);
        }

        else
        {
          if (v65 >= *(v568 + 16))
          {
            goto LABEL_345;
          }

          v428 = *(v569 + 8 * v65 + 32);
        }

        sub_2143EF124(v428, type metadata accessor for LinkPresentation.AudioMetadata, type metadata accessor for LinkPresentation.AudioMetadata, v521);
        if (v427)
        {

          sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v485, v486, v487);
          sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v517, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v520, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v522, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v531, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v510, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(i, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v490, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v491, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v566, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        v425 = v577;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21409FEAC(0, v425[2] + 1, 1);
          v425 = v577;
        }

        v430 = v425[2];
        v429 = v425[3];
        v183 = v430 + 1;
        if (v430 >= v429 >> 1)
        {
          sub_21409FEAC(v429 > 1, v430 + 1, 1);
          v425 = v577;
        }

        v425[2] = v183;
        sub_214400A9C(v521, v425 + ((*(v519 + 80) + 32) & ~*(v519 + 80)) + *(v519 + 72) * v430, type metadata accessor for LinkPresentation.AudioMetadata);
        ++v65;
        i = v562;
        if (j == jj)
        {

          v3 = 0;
          v85 = v491;
          v65 = v510;
          v111 = v642;
          v183 = v542;
          goto LABEL_349;
        }
      }

      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      ;
    }

    v425 = MEMORY[0x277D84F90];
    v85 = v491;
    v111 = v642;
  }

LABEL_349:
  v431 = [v111 specialization];
  if (v431)
  {
    v432 = v431;
    v433 = v514;
    sub_2143EF3D8(v432, v514);
    if (v3)
    {

      sub_213FB2DF4(&v618, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v604, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v485, v486, v487);
      sub_213FB2DF4(&v585, &qword_27C904868, &qword_2146EDB58);

      sub_213FB2DF4(v517, &qword_27C904C60, &qword_2146EE6E0);
      sub_213FB2DF4(v520, &qword_27C904C58, &unk_2146F6450);
      sub_213FB2DF4(v522, &qword_27C904C50, &unk_2146EE6D0);
      sub_213FB2DF4(v531, &qword_27C904888, &unk_2146EDB80);
      sub_213FB2DF4(v532, &qword_27C904C48, &qword_2146EE6C8);
      sub_213FB2DF4(v481, &qword_27C904C40, &qword_2146EE6C0);
      sub_213FB2DF4(v65, &qword_27C904C38, &qword_2146EE6B8);
      sub_213FB2DF4(v562, &unk_27C9131A0, &unk_2146E9D10);
      v167 = v490;
      goto LABEL_75;
    }

    (*(v511 + 56))(v433, 0, 1, v512);
    sub_21408AC04(v433, v542, &qword_27C904870, &qword_2146EDB60);
  }

  else
  {

    (*(v511 + 56))(v514, 1, 1, v512);
    v434 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
    (*(*(v434 - 8) + 56))(v183, 1, 1, v434);
  }

  LODWORD(v642) = v497 == 0;
  v435 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  v436 = v513;
  sub_21408AC04(v566, v513 + v435[43], &qword_27C904C68, &qword_2146EE6E8);
  *v436 = v509;
  sub_21408AC04(v85, v436 + v435[5], &unk_27C9131A0, &unk_2146E9D10);
  sub_21408AC04(v490, v436 + v435[6], &unk_27C9131A0, &unk_2146E9D10);
  v437 = (v436 + v435[7]);
  v438 = v554;
  *v437 = v508;
  v437[1] = v438;
  v439 = (v436 + v435[8]);
  v440 = v553;
  *v439 = v507;
  v439[1] = v440;
  v441 = (v436 + v435[9]);
  v442 = v552;
  *v441 = v506;
  v441[1] = v442;
  v443 = (v436 + v435[10]);
  v444 = v551;
  *v443 = v505;
  v443[1] = v444;
  v445 = (v436 + v435[11]);
  v446 = v549;
  *v445 = v504;
  v445[1] = v446;
  sub_21408AC04(v562, v436 + v435[12], &unk_27C9131A0, &unk_2146E9D10);
  v447 = (v436 + v435[13]);
  v448 = v547;
  *v447 = v503;
  v447[1] = v448;
  v449 = (v436 + v435[14]);
  v450 = v546;
  *v449 = v502;
  v449[1] = v450;
  v451 = (v436 + v435[15]);
  v452 = v545;
  *v451 = v501;
  v451[1] = v452;
  v453 = (v436 + v435[16]);
  v454 = v544;
  *v453 = v500;
  v453[1] = v454;
  *(v436 + v435[17]) = v499;
  v455 = v436 + v435[18];
  v456 = v560;
  *v455 = v561;
  *(v455 + 1) = v456;
  v455[32] = v642;
  v457 = (v436 + v435[19]);
  v458 = v550;
  *v457 = v498;
  v457[1] = v458;
  v459 = (v436 + v435[20]);
  v460 = v548;
  *v459 = v496;
  v459[1] = v460;
  v461 = (v436 + v435[21]);
  v462 = v609;
  v461[4] = v608;
  v461[5] = v462;
  v461[6] = v610[0];
  *(v461 + 105) = *(v610 + 9);
  v463 = v605;
  *v461 = v604;
  v461[1] = v463;
  v464 = v607;
  v461[2] = v606;
  v461[3] = v464;
  sub_21408AC04(v65, v436 + v435[22], &qword_27C904C38, &qword_2146EE6B8);
  v465 = (v436 + v435[23]);
  v466 = v486;
  *v465 = v485;
  v465[1] = v466;
  v467 = v488;
  v465[2] = v487;
  v465[3] = v467;
  v465[4] = v489;
  sub_21408AC04(v481, v436 + v435[24], &qword_27C904C40, &qword_2146EE6C0);
  v468 = (v436 + v435[25]);
  v469 = v590;
  v468[4] = v589;
  v468[5] = v469;
  v468[6] = v591[0];
  *(v468 + 105) = *(v591 + 9);
  v470 = v586;
  *v468 = v585;
  v468[1] = v470;
  v471 = v588;
  v468[2] = v587;
  v468[3] = v471;
  *(v436 + v435[26]) = v479;
  sub_21408AC04(v532, v436 + v435[27], &qword_27C904C48, &qword_2146EE6C8);
  *(v436 + v435[28]) = v478;
  *(v436 + v435[29]) = v495;
  sub_21408AC04(v531, v436 + v435[30], &qword_27C904888, &unk_2146EDB80);
  sub_21408AC04(v522, v436 + v435[31], &qword_27C904C50, &unk_2146EE6D0);
  sub_21408AC04(v520, v436 + v435[32], &qword_27C904C58, &unk_2146F6450);
  sub_21408AC04(v517, v436 + v435[33], &qword_27C904C60, &qword_2146EE6E0);
  *(v436 + v435[34]) = v563;
  *(v436 + v435[35]) = v564;
  *(v436 + v435[36]) = v558;
  *(v436 + v435[37]) = v557;
  *(v436 + v435[38]) = v565;
  *(v436 + v435[39]) = v567;
  *(v436 + v435[40]) = v425;
  sub_21408AC04(v542, v436 + v435[41], &qword_27C904870, &qword_2146EDB60);
  v472 = v436 + v435[42];
  v473 = v627;
  *(v472 + 8) = v626;
  *(v472 + 9) = v473;
  *(v472 + 10) = v628;
  *(v472 + 22) = v629;
  v474 = v623;
  *(v472 + 4) = v622;
  *(v472 + 5) = v474;
  v475 = v625;
  *(v472 + 6) = v624;
  *(v472 + 7) = v475;
  v476 = v619;
  *v472 = v618;
  *(v472 + 1) = v476;
  v477 = v621;
  *(v472 + 2) = v620;
  *(v472 + 3) = v477;
}

id sub_2143EB164()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v363 = &v358 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v362 = &v358 - v7;
  v391 = type metadata accessor for LinkPresentation.AudioMetadata(0);
  v364 = *(v391 - 1);
  v8 = *(v364 + 64);
  MEMORY[0x28223BE20](v391);
  v10 = &v358 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for LinkPresentation.VideoMetadata(0);
  v367 = *(v389 - 8);
  v11 = *(v367 + 64);
  v12 = MEMORY[0x28223BE20](v389);
  v388 = &v358 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v387 = &v358 - v14;
  v390 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v366 = *(v390 - 8);
  v15 = *(v366 + 64);
  MEMORY[0x28223BE20](v390);
  v384 = &v358 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
  v365 = *(v392 - 8);
  v17 = *(v365 + 64);
  MEMORY[0x28223BE20](v392);
  v383 = &v358 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v361 = &v358 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v360 = &v358 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v359 = &v358 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v358 = &v358 - v30;
  v31 = type metadata accessor for LinkPresentation.ImageMetadata(0);
  v368 = *(v31 - 1);
  v32 = *(v368 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v386 = &v358 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v385 = &v358 - v36;
  MEMORY[0x28223BE20](v35);
  v394 = &v358 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v395 = &v358 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v393 = &v358 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v373 = &v358 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v381 = &v358 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v380 = &v358 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v379 = &v358 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v378 = &v358 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v377 = &v358 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v376 = &v358 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v375 = &v358 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v374 = &v358 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v358 - v66;
  v68 = MEMORY[0x28223BE20](v65);
  v70 = &v358 - v69;
  MEMORY[0x28223BE20](v68);
  v72 = &v358 - v71;
  v371 = [objc_allocWithZone(_BlastDoorLPLinkMetadata) init];
  v382 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  sub_213FB2E54(v0 + v382[5], v72, &unk_27C9131A0, &unk_2146E9D10);
  v73 = sub_2146D8958();
  v370 = *(v73 - 8);
  v396 = *(v370 + 48);
  v397 = v370 + 48;
  v74 = 0;
  if (v396(v72, 1, v73) != 1)
  {
    v74 = sub_2146D8898();
    (*(v370 + 8))(v72, v73);
  }

  v75 = v371;
  [v371 setOriginalURL_];

  v76 = v382;
  sub_213FB2E54(v1 + v382[6], v70, &unk_27C9131A0, &unk_2146E9D10);
  if (v396(v70, 1, v73) == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_2146D8898();
    (*(v370 + 8))(v70, v73);
  }

  v78 = v373;
  [v75 setURL_];

  v79 = (v1 + v76[7]);
  if (v79[1])
  {
    v80 = *v79;
    v81 = sub_2146D9588();
  }

  else
  {
    v81 = 0;
  }

  [v75 setTitle_];

  v82 = (v1 + v76[8]);
  if (v82[1])
  {
    v83 = *v82;
    v84 = sub_2146D9588();
  }

  else
  {
    v84 = 0;
  }

  [v75 setSummary_];

  v85 = (v1 + v76[9]);
  if (v85[1])
  {
    v86 = *v85;
    v87 = sub_2146D9588();
  }

  else
  {
    v87 = 0;
  }

  [v75 setSelectedText_];

  v88 = (v1 + v76[10]);
  if (v88[1])
  {
    v89 = *v88;
    v90 = sub_2146D9588();
  }

  else
  {
    v90 = 0;
  }

  [v75 setSiteName_];

  v91 = (v1 + v76[11]);
  if (v91[1])
  {
    v92 = *v91;
    v93 = sub_2146D9588();
  }

  else
  {
    v93 = 0;
  }

  [v75 setItemType_];

  sub_213FB2E54(v1 + v76[12], v67, &unk_27C9131A0, &unk_2146E9D10);
  if (v396(v67, 1, v73) == 1)
  {
    v94 = 0;
  }

  else
  {
    v94 = sub_2146D8898();
    (*(v370 + 8))(v67, v73);
  }

  [v75 setRelatedURL_];

  v95 = (v1 + v76[13]);
  if (v95[1])
  {
    v96 = *v95;
    v97 = sub_2146D9588();
  }

  else
  {
    v97 = 0;
  }

  [v75 setCreator_];

  v98 = (v1 + v76[14]);
  if (v98[1])
  {
    v99 = *v98;
    v100 = sub_2146D9588();
  }

  else
  {
    v100 = 0;
  }

  [v75 setCreatorFacebookProfile_];

  v101 = (v1 + v76[15]);
  if (v101[1])
  {
    v102 = *v101;
    v103 = sub_2146D9588();
  }

  else
  {
    v103 = 0;
  }

  [v75 setCreatorTwitterUsername_];

  v104 = (v1 + v76[16]);
  if (v104[1])
  {
    v105 = *v104;
    v106 = sub_2146D9588();
  }

  else
  {
    v106 = 0;
  }

  [v75 setTwitterCard_];

  [v75 setUsesActivityPub_];
  v107 = (v1 + v76[19]);
  if (v107[1])
  {
    v108 = *v107;
    v109 = sub_2146D9588();
  }

  else
  {
    v109 = 0;
  }

  [v75 setAppleContentID_];

  v110 = (v1 + v76[20]);
  if (v110[1])
  {
    v111 = *v110;
    v112 = sub_2146D9588();
  }

  else
  {
    v112 = 0;
  }

  [v75 setAppleSummary_];

  v113 = (v1 + v76[21]);
  v114 = v113[5];
  v431 = v113[4];
  v432 = v114;
  v433[0] = v113[6];
  *(v433 + 9) = *(v113 + 105);
  v115 = v113[1];
  v427 = *v113;
  v428 = v115;
  v116 = v113[3];
  v429 = v113[2];
  v430 = v116;
  if (sub_2144009B4(&v427) == 1)
  {
    v117 = 0;
  }

  else
  {
    v413 = v431;
    v414 = v432;
    v415[0] = v433[0];
    *(v415 + 9) = *(v433 + 9);
    v410 = v427;
    v411[0] = v428;
    v411[1] = v429;
    v412 = v430;
    v117 = sub_2143F7CD4();
  }

  [v75 setIcon_];

  sub_213FB2E54(v1 + v76[22], v78, &qword_27C904C38, &qword_2146EE6B8);
  if ((*(v366 + 48))(v78, 1, v390) == 1)
  {
    sub_213FB2DF4(v78, &qword_27C904C38, &qword_2146EE6B8);
    v118 = 0;
  }

  else
  {
    v118 = sub_2143F7F44();
    sub_214400B04(v78, type metadata accessor for LinkPresentation.IconMetadata);
  }

  [v75 setIconMetadata_];

  v119 = (v1 + v76[23]);
  v120 = *(v119 + 2);
  if (v120 == 1)
  {
    v121 = 0;
  }

  else
  {
    v410 = *v119;
    *&v411[0] = v120;
    *(v411 + 8) = *(v119 + 24);
    v121 = sub_2143F80EC();
  }

  [v75 setArAsset_];

  v122 = v393;
  sub_213FB2E54(v1 + v76[24], v393, &qword_27C904C40, &qword_2146EE6C0);
  if ((*(v365 + 48))(v122, 1, v392) == 1)
  {
    sub_213FB2DF4(v122, &qword_27C904C40, &qword_2146EE6C0);
    v123 = 0;
  }

  else
  {
    v124 = v122;
    v123 = sub_2143F88F4(off_278175140, type metadata accessor for LinkPresentation.ARAssetMetadata);
    sub_214400B04(v124, type metadata accessor for LinkPresentation.ARAssetMetadata);
  }

  [v75 setArAssetMetadata_];

  v125 = (v1 + v76[25]);
  v126 = v125[5];
  v424 = v125[4];
  v425 = v126;
  v426[0] = v125[6];
  *(v426 + 9) = *(v125 + 105);
  v127 = v125[1];
  v420 = *v125;
  v421 = v127;
  v128 = v125[3];
  v422 = v125[2];
  v423 = v128;
  if (sub_2144009B4(&v420) == 1)
  {
    v129 = 0;
  }

  else
  {
    v413 = v424;
    v414 = v425;
    v415[0] = v426[0];
    *(v415 + 9) = *(v426 + 9);
    v410 = v420;
    v411[0] = v421;
    v411[1] = v422;
    v412 = v423;
    v129 = sub_2143F7CD4();
  }

  [v75 setImage_];

  v130 = *(v1 + v76[26]);
  v369 = v1;
  if (v130)
  {
    v131 = *(v130 + 16);
    if (v131)
    {
      *&v398 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v132 = (v130 + 32);
      do
      {
        v413 = v132[4];
        v414 = v132[5];
        v415[0] = v132[6];
        *(v415 + 9) = *(v132 + 105);
        v410 = *v132;
        v411[0] = v132[1];
        v411[1] = v132[2];
        v412 = v132[3];
        sub_2143F7CD4();
        sub_2146D9F98();
        v133 = *(v398 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v132 += 8;
        --v131;
      }

      while (v131);
      v1 = v369;
      v75 = v371;
    }

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v134 = sub_2146D98E8();
  }

  else
  {
    v134 = 0;
  }

  v135 = v382;
  [v75 setAlternateImages_];

  v136 = v395;
  sub_213FB2E54(v1 + v135[27], v395, &qword_27C904C48, &qword_2146EE6C8);
  if ((*(v368 + 48))(v136, 1, v31) == 1)
  {
    sub_213FB2DF4(v136, &qword_27C904C48, &qword_2146EE6C8);
    v137 = 0;
  }

  else
  {
    v137 = sub_2143F8554(off_2781751F0, type metadata accessor for LinkPresentation.ImageMetadata);
    sub_214400B04(v136, type metadata accessor for LinkPresentation.ImageMetadata);
  }

  [v75 setImageMetadata_];

  v138 = *(v1 + v135[28]);
  v393 = v10;
  v395 = v73;
  if (v138)
  {
    v139 = *(v138 + 16);
    if (v139)
    {
      *&v398 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      if (*(v138 + 16))
      {
        v140 = 0;
        v141 = (v138 + 32);
        while (1)
        {
          v413 = v141[4];
          v414 = v141[5];
          v415[0] = v141[6];
          *(v415 + 9) = *(v141 + 105);
          v410 = *v141;
          v411[0] = v141[1];
          v411[1] = v141[2];
          v412 = v141[3];
          sub_2143F7CD4();
          sub_2146D9F98();
          v142 = *(v398 + 16);
          sub_2146D9FC8();
          sub_2146D9FD8();
          sub_2146D9FA8();
          if (v139 - 1 == v140)
          {
            break;
          }

          v141 += 8;
          if (++v140 >= *(v138 + 16))
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
LABEL_73:
        __break(1u);
      }

      v1 = v369;
      v75 = v371;
      v10 = v393;
      v73 = v395;
    }

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v143 = sub_2146D98E8();
  }

  else
  {
    v143 = 0;
  }

  v144 = v382;
  [v75 setContentImages_];

  v145 = *(v1 + v144[29]);
  if (v145)
  {
    v146 = *(v145 + 16);
    if (v146)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v147 = v145 + ((*(v368 + 80) + 32) & ~*(v368 + 80));
      v372 = (v370 + 8);
      v148 = *(v368 + 72);
      v149 = &unk_27C9131A0;
      v150 = 0x278175000uLL;
      do
      {
        v154 = v394;
        sub_2144009D8(v147, v394, type metadata accessor for LinkPresentation.ImageMetadata);
        v155 = [objc_allocWithZone(*(v150 + 496)) init];
        v156 = v154 + v31[5];
        v157 = v374;
        sub_213FB2E54(v156, v374, v149, &unk_2146E9D10);
        if (v396(v157, 1, v73) == 1)
        {
          v158 = 0;
        }

        else
        {
          v373 = v146;
          v159 = v73;
          v160 = v148;
          v161 = v150;
          v162 = v31;
          v163 = v149;
          v164 = v157;
          v158 = sub_2146D8898();
          v165 = v164;
          v149 = v163;
          v31 = v162;
          v150 = v161;
          v148 = v160;
          v166 = v159;
          v146 = v373;
          (*v372)(v165, v166);
        }

        [v155 setURL_];

        v167 = (v394 + v31[6]);
        if (v167[1])
        {
          v168 = *v167;
          v169 = sub_2146D9588();
        }

        else
        {
          v169 = 0;
        }

        [v155 setType_];

        v170 = v394;
        [v155 setSize_];
        v171 = (v170 + v31[8]);
        if (v171[1])
        {
          v151 = *v171;
          v152 = sub_2146D9588();
        }

        else
        {
          v152 = 0;
        }

        [v155 setAccessibilityText_];

        sub_214400B04(v394, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        v153 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v147 += v148;
        --v146;
        v73 = v395;
      }

      while (v146);
      v1 = v369;
      v75 = v371;
      v10 = v393;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v172 = sub_2146D98E8();
  }

  else
  {
    v172 = 0;
  }

  v173 = v382;
  v174 = v360;
  v175 = v358;
  [v75 setContentImagesMetadata_];

  sub_213FB2E54(v1 + v173[30], v175, &qword_27C904888, &unk_2146EDB80);
  v176 = type metadata accessor for LinkPresentation.Video(0);
  if ((*(*(v176 - 8) + 48))(v175, 1, v176) == 1)
  {
    sub_213FB2DF4(v175, &qword_27C904888, &unk_2146EDB80);
    v177 = 0;
  }

  else
  {
    v177 = sub_2143F8214();
    sub_214400B04(v175, type metadata accessor for LinkPresentation.Video);
  }

  v178 = v361;
  [v75 setVideo_];

  v179 = v382;
  v180 = v359;
  sub_213FB2E54(v1 + v382[31], v359, &qword_27C904C50, &unk_2146EE6D0);
  if ((*(v367 + 48))(v180, 1, v389) == 1)
  {
    sub_213FB2DF4(v180, &qword_27C904C50, &unk_2146EE6D0);
    v181 = 0;
  }

  else
  {
    v182 = v1;
    v183 = v180;
    v181 = sub_2143F8554(off_278175280, type metadata accessor for LinkPresentation.VideoMetadata);
    v184 = v183;
    v1 = v182;
    v179 = v382;
    sub_214400B04(v184, type metadata accessor for LinkPresentation.VideoMetadata);
  }

  [v75 setVideoMetadata_];

  sub_213FB2E54(v1 + v179[32], v174, &qword_27C904C58, &unk_2146F6450);
  v185 = type metadata accessor for LinkPresentation.Audio(0);
  if ((*(*(v185 - 8) + 48))(v174, 1, v185) == 1)
  {
    sub_213FB2DF4(v174, &qword_27C904C58, &unk_2146F6450);
    v186 = 0;
  }

  else
  {
    v186 = sub_2143F875C();
    sub_214400B04(v174, type metadata accessor for LinkPresentation.Audio);
  }

  [v75 setAudio_];

  sub_213FB2E54(v1 + v179[33], v178, &qword_27C904C60, &qword_2146EE6E0);
  if ((*(v364 + 48))(v178, 1, v391) == 1)
  {
    sub_213FB2DF4(v178, &qword_27C904C60, &qword_2146EE6E0);
    v187 = 0;
  }

  else
  {
    v187 = sub_2143F88F4(off_2781751A0, type metadata accessor for LinkPresentation.AudioMetadata);
    sub_214400B04(v178, type metadata accessor for LinkPresentation.AudioMetadata);
  }

  [v75 setAudioMetadata_];

  v188 = *(v1 + v179[34]);
  if (v188)
  {
    v189 = *(v188 + 16);
    if (v189)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v190 = v188 + ((*(v365 + 80) + 32) & ~*(v365 + 80));
      v191 = *(v365 + 72);
      v192 = (v370 + 8);
      v193 = v383;
      do
      {
        sub_2144009D8(v190, v193, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v197 = [objc_allocWithZone(_BlastDoorLPARAssetMetadata) init];
        v198 = v193 + *(v392 + 20);
        v199 = v375;
        sub_213FB2E54(v198, v375, &unk_27C9131A0, &unk_2146E9D10);
        if (v396(v199, 1, v73) == 1)
        {
          v200 = 0;
        }

        else
        {
          v200 = sub_2146D8898();
          (*v192)(v199, v73);
        }

        [v197 setURL_];

        v193 = v383;
        v201 = &v383[*(v392 + 24)];
        if (*(v201 + 1))
        {
          v202 = *v201;
          v203 = sub_2146D9588();
        }

        else
        {
          v203 = 0;
        }

        [v197 setType_];

        v204 = (v193 + *(v392 + 28));
        if (v204[1])
        {
          v194 = *v204;
          v195 = sub_2146D9588();
        }

        else
        {
          v195 = 0;
        }

        [v197 setAccessibilityText_];

        sub_214400B04(v193, type metadata accessor for LinkPresentation.ARAssetMetadata);
        sub_2146D9F98();
        v196 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v190 += v191;
        --v189;
        v73 = v395;
      }

      while (v189);
      v1 = v369;
      v75 = v371;
      v10 = v393;
    }

    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v205 = sub_2146D98E8();
  }

  else
  {
    v205 = 0;
  }

  v206 = v382;
  [v75 setArAssets_];

  v207 = *(v1 + v206[35]);
  if (v207)
  {
    v208 = *(v207 + 16);
    if (v208)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v209 = v207 + ((*(v366 + 80) + 32) & ~*(v366 + 80));
      v210 = *(v366 + 72);
      v211 = (v370 + 8);
      v212 = v384;
      do
      {
        sub_2144009D8(v209, v212, type metadata accessor for LinkPresentation.IconMetadata);
        v216 = [objc_allocWithZone(_BlastDoorLPIconMetadata) init];
        v217 = v212 + *(v390 + 20);
        v218 = v376;
        sub_213FB2E54(v217, v376, &unk_27C9131A0, &unk_2146E9D10);
        if (v396(v218, 1, v73) == 1)
        {
          v219 = 0;
        }

        else
        {
          v219 = sub_2146D8898();
          (*v211)(v218, v73);
        }

        [v216 setURL_];

        v212 = v384;
        v220 = &v384[*(v390 + 24)];
        if (*(v220 + 1))
        {
          v213 = *v220;
          v214 = sub_2146D9588();
        }

        else
        {
          v214 = 0;
        }

        [v216 setAccessibilityText_];

        sub_214400B04(v212, type metadata accessor for LinkPresentation.IconMetadata);
        sub_2146D9F98();
        v215 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v209 += v210;
        --v208;
        v73 = v395;
      }

      while (v208);
      v1 = v369;
      v75 = v371;
      v10 = v393;
    }

    sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
    v221 = sub_2146D98E8();
  }

  else
  {
    v221 = 0;
  }

  v222 = v382;
  [v75 setIcons_];

  v223 = *(v1 + v222[36]);
  if (v223)
  {
    v224 = *(v223 + 16);
    if (v224)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v225 = v223 + ((*(v368 + 80) + 32) & ~*(v368 + 80));
      v226 = (v370 + 8);
      v227 = *(v368 + 72);
      v228 = v385;
      do
      {
        sub_2144009D8(v225, v228, type metadata accessor for LinkPresentation.ImageMetadata);
        v232 = [objc_allocWithZone(_BlastDoorLPImageMetadata) init];
        v233 = v228 + v31[5];
        v234 = v377;
        sub_213FB2E54(v233, v377, &unk_27C9131A0, &unk_2146E9D10);
        if (v396(v234, 1, v73) == 1)
        {
          v235 = 0;
        }

        else
        {
          v235 = sub_2146D8898();
          (*v226)(v234, v73);
        }

        [v232 setURL_];

        v228 = v385;
        v236 = &v385[v31[6]];
        if (*(v236 + 1))
        {
          v237 = *v236;
          v238 = sub_2146D9588();
        }

        else
        {
          v238 = 0;
        }

        [v232 setType_];

        [v232 setSize_];
        v239 = (v228 + v31[8]);
        if (v239[1])
        {
          v229 = *v239;
          v230 = sub_2146D9588();
        }

        else
        {
          v230 = 0;
        }

        [v232 setAccessibilityText_];

        sub_214400B04(v228, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        v231 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v225 += v227;
        --v224;
        v73 = v395;
      }

      while (v224);
      v1 = v369;
      v75 = v371;
      v10 = v393;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v240 = sub_2146D98E8();
  }

  else
  {
    v240 = 0;
  }

  v241 = v382;
  [v75 setImages_];

  v242 = *(v1 + v241[37]);
  if (v242)
  {
    v243 = *(v242 + 16);
    if (v243)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v244 = v242 + ((*(v368 + 80) + 32) & ~*(v368 + 80));
      v245 = (v370 + 8);
      v246 = *(v368 + 72);
      v247 = v386;
      do
      {
        sub_2144009D8(v244, v247, type metadata accessor for LinkPresentation.ImageMetadata);
        v251 = [objc_allocWithZone(_BlastDoorLPImageMetadata) init];
        v252 = v247 + v31[5];
        v253 = v378;
        sub_213FB2E54(v252, v378, &unk_27C9131A0, &unk_2146E9D10);
        if (v396(v253, 1, v73) == 1)
        {
          v254 = 0;
        }

        else
        {
          v254 = sub_2146D8898();
          (*v245)(v253, v73);
        }

        [v251 setURL_];

        v247 = v386;
        v255 = &v386[v31[6]];
        if (*(v255 + 1))
        {
          v256 = *v255;
          v257 = sub_2146D9588();
        }

        else
        {
          v257 = 0;
        }

        [v251 setType_];

        [v251 setSize_];
        v258 = (v247 + v31[8]);
        if (v258[1])
        {
          v248 = *v258;
          v249 = sub_2146D9588();
        }

        else
        {
          v249 = 0;
        }

        [v251 setAccessibilityText_];

        sub_214400B04(v247, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        v250 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v244 += v246;
        --v243;
        v73 = v395;
      }

      while (v243);
      v1 = v369;
      v75 = v371;
      v10 = v393;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v259 = sub_2146D98E8();
  }

  else
  {
    v259 = 0;
  }

  v260 = v382;
  [v75 setAvailableContentImages_];

  v261 = *(v1 + v260[38]);
  if (v261)
  {
    v262 = *(v261 + 16);
    if (v262)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v263 = v261 + ((*(v367 + 80) + 32) & ~*(v367 + 80));
      v392 = v370 + 8;
      v264 = *(v367 + 72);
      v265 = &unk_27C9131A0;
      v266 = 0x278175000uLL;
      v267 = v387;
      do
      {
        sub_2144009D8(v263, v267, type metadata accessor for LinkPresentation.VideoMetadata);
        v271 = [objc_allocWithZone(*(v266 + 640)) init];
        v272 = v389;
        v273 = v379;
        sub_213FB2E54(v267 + *(v389 + 20), v379, v265, &unk_2146E9D10);
        v274 = v395;
        if (v396(v273, 1, v395) == 1)
        {
          v275 = 0;
        }

        else
        {
          v394 = v262;
          v276 = v264;
          v277 = v266;
          v278 = v265;
          v279 = v273;
          v275 = sub_2146D8898();
          v280 = v279;
          v265 = v278;
          v266 = v277;
          v264 = v276;
          v262 = v394;
          (*v392)(v280, v274);
        }

        [v271 setURL_];

        v267 = v387;
        v281 = &v387[v272[6]];
        if (*(v281 + 1))
        {
          v282 = *v281;
          v283 = sub_2146D9588();
        }

        else
        {
          v283 = 0;
        }

        [v271 setType_];

        [v271 setSize_];
        v284 = (v267 + v272[8]);
        if (v284[1])
        {
          v268 = *v284;
          v269 = sub_2146D9588();
        }

        else
        {
          v269 = 0;
        }

        [v271 setAccessibilityText_];

        sub_214400B04(v267, type metadata accessor for LinkPresentation.VideoMetadata);
        sub_2146D9F98();
        v270 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v263 += v264;
        --v262;
        v10 = v393;
      }

      while (v262);
      v1 = v369;
      v75 = v371;
    }

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v285 = sub_2146D98E8();
  }

  else
  {
    v285 = 0;
  }

  v286 = v382;
  [v75 setVideos_];

  v287 = *(v1 + v286[39]);
  if (v287)
  {
    v288 = *(v287 + 16);
    if (v288)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v289 = v287 + ((*(v367 + 80) + 32) & ~*(v367 + 80));
      v392 = v370 + 8;
      v290 = *(v367 + 72);
      v291 = &unk_27C9131A0;
      v292 = 0x278175000uLL;
      v293 = v388;
      do
      {
        sub_2144009D8(v289, v293, type metadata accessor for LinkPresentation.VideoMetadata);
        v297 = [objc_allocWithZone(*(v292 + 640)) init];
        v298 = v389;
        v299 = v380;
        sub_213FB2E54(v293 + *(v389 + 20), v380, v291, &unk_2146E9D10);
        v300 = v395;
        if (v396(v299, 1, v395) == 1)
        {
          v301 = 0;
        }

        else
        {
          v394 = v288;
          v302 = v290;
          v303 = v292;
          v304 = v291;
          v305 = v299;
          v301 = sub_2146D8898();
          v306 = v305;
          v291 = v304;
          v292 = v303;
          v290 = v302;
          v288 = v394;
          (*v392)(v306, v300);
        }

        [v297 setURL_];

        v307 = &v388[v298[6]];
        if (*(v307 + 1))
        {
          v308 = *v307;
          v309 = sub_2146D9588();
        }

        else
        {
          v309 = 0;
        }

        [v297 setType_];

        v293 = v388;
        [v297 setSize_];
        v310 = (v293 + v298[8]);
        if (v310[1])
        {
          v294 = *v310;
          v295 = sub_2146D9588();
        }

        else
        {
          v295 = 0;
        }

        [v297 setAccessibilityText_];

        sub_214400B04(v293, type metadata accessor for LinkPresentation.VideoMetadata);
        sub_2146D9F98();
        v296 = *(v410 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v289 += v290;
        --v288;
        v10 = v393;
      }

      while (v288);
      v1 = v369;
      v75 = v371;
    }

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v311 = sub_2146D98E8();
  }

  else
  {
    v311 = 0;
  }

  v312 = v382;
  [v75 setStreamingVideos_];

  v313 = *(v1 + v312[40]);
  if (v313)
  {
    v314 = *(v313 + 16);
    if (v314)
    {
      *&v410 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v315 = v313 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
      v316 = *(v364 + 72);
      v392 = v370 + 8;
      v317 = 0x278175000uLL;
      v318 = &unk_27C9131A0;
      do
      {
        sub_2144009D8(v315, v10, type metadata accessor for LinkPresentation.AudioMetadata);
        v322 = [objc_allocWithZone(*(v317 + 416)) init];
        v323 = v381;
        sub_213FB2E54(&v10[v391[5]], v381, v318, &unk_2146E9D10);
        v324 = v395;
        if (v396(v323, 1, v395) == 1)
        {
          v325 = 0;
        }

        else
        {
          v394 = v314;
          v326 = v10;
          v327 = v318;
          v328 = v316;
          v329 = v317;
          v330 = v323;
          v325 = sub_2146D8898();
          v331 = v330;
          v317 = v329;
          v316 = v328;
          v318 = v327;
          v10 = v326;
          v314 = v394;
          (*v392)(v331, v324);
        }

        [v322 setURL_];

        v332 = &v10[v391[6]];
        if (*(v332 + 1))
        {
          v333 = *v332;
          v334 = sub_2146D9588();
        }

        else
        {
          v334 = 0;
        }

        [v322 setType_];

        v335 = &v10[v391[7]];
        if (*(v335 + 1))
        {
          v319 = *v335;
          v320 = sub_2146D9588();
        }

        else
        {
          v320 = 0;
        }

        [v322 setAccessibilityText_];

        sub_214400B04(v10, type metadata accessor for LinkPresentation.AudioMetadata);
        sub_2146D9F98();
        v321 = *(v410 + 16);
        sub_2146D9FC8();
        v10 = v393;
        sub_2146D9FD8();
        sub_2146D9FA8();
        v315 += v316;
        --v314;
      }

      while (v314);
      v1 = v369;
      v75 = v371;
    }

    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    v336 = sub_2146D98E8();
  }

  else
  {
    v336 = 0;
  }

  v337 = v382;
  [v75 setAudios_];

  v338 = v362;
  sub_213FB2E54(v1 + v337[41], v362, &qword_27C904870, &qword_2146EDB60);
  v339 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  if ((*(*(v339 - 8) + 48))(v338, 1, v339) == 1)
  {
    sub_213FB2DF4(v338, &qword_27C904870, &qword_2146EDB60);
    v340 = 0;
  }

  else
  {
    v340 = sub_2143F8AE0();
    sub_214400B04(v338, type metadata accessor for LinkPresentation.SpecializationMetadata);
  }

  v341 = v363;
  [v75 setSpecialization_];

  v342 = v1 + v337[18];
  if (*(v342 + 32))
  {
    v343 = 0;
  }

  else
  {
    v345 = *(v342 + 16);
    v344 = *(v342 + 24);
    v347 = *v342;
    v346 = *(v342 + 8);
    v343 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v343 setR_];
    [v343 setG_];
    [v343 setB_];
    [v343 setA_];
  }

  [v75 setThemeColor_];

  v348 = (v1 + v337[42]);
  v349 = v348[9];
  v416 = v348[8];
  v417 = v349;
  v418 = v348[10];
  v419 = *(v348 + 22);
  v350 = v348[5];
  v413 = v348[4];
  v414 = v350;
  v351 = v348[7];
  v415[0] = v348[6];
  v415[1] = v351;
  v352 = v348[1];
  v410 = *v348;
  v411[0] = v352;
  v353 = v348[3];
  v411[1] = v348[2];
  v412 = v353;
  if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v410) == 1)
  {
    v354 = 0;
  }

  else
  {
    v406 = v416;
    v407 = v417;
    v408 = v418;
    v409 = v419;
    v402 = v413;
    v403 = v414;
    v404 = v415[0];
    v405 = v415[1];
    v398 = v410;
    v399 = v411[0];
    v400 = v411[1];
    v401 = v412;
    v354 = sub_2143FF8F0();
  }

  [v75 setAssociatedApplication_];

  sub_213FB2E54(v1 + v337[43], v341, &qword_27C904C68, &qword_2146EE6E8);
  v355 = type metadata accessor for CollaborationMetadata();
  if ((*(*(v355 - 8) + 48))(v341, 1, v355) == 1)
  {
    sub_213FB2DF4(v341, &qword_27C904C68, &qword_2146EE6E8);
    v356 = 0;
  }

  else
  {
    v356 = sub_214499F88();
    sub_214400B04(v341, type metadata accessor for CollaborationMetadata);
  }

  [v75 setCollaborationMetadata_];

  return v75;
}

uint64_t sub_2143EDE48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2144008B4(&v56);
  v53 = v60;
  v54 = v61;
  v55[0] = v62[0];
  *(v55 + 9) = *(v62 + 9);
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v5 = [a1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2146D95B8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 icon];
  if (v10)
  {
    v11 = v10;
    sub_2143EE118(v11, &v42);
    if (v2)
    {

      v32 = v53;
      v33 = v54;
      v34[0] = v55[0];
      *(v34 + 9) = *(v55 + 9);
      v28 = v49;
      v29 = v50;
      v30 = v51;
      v31 = v52;
      return sub_213FB2DF4(&v28, &qword_27C904868, &qword_2146EDB58);
    }

    nullsub_1(&v42);
  }

  else
  {
    v46 = v60;
    v47 = v61;
    v48[0] = v62[0];
    *(v48 + 9) = *(v62 + 9);
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
  }

  v39 = v46;
  v40 = v47;
  v41[0] = v48[0];
  *(v41 + 9) = *(v48 + 9);
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v13 = [a1 caption];
  v14 = v9;
  if (v13)
  {
    v15 = v13;
    v63 = sub_2146D95B8();
    v17 = v16;
  }

  else
  {
    v63 = 0;
    v17 = 0;
  }

  v18 = v7;
  v19 = [a1 action];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2146D95B8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [a1 clipAction];

  v32 = v53;
  v33 = v54;
  v34[0] = v55[0];
  *(v34 + 9) = *(v55 + 9);
  v28 = v49;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  result = sub_213FB2DF4(&v28, &qword_27C904868, &qword_2146EDB58);
  *a2 = v18;
  *(a2 + 8) = v14;
  v25 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v25;
  *(a2 + 112) = v41[0];
  *(a2 + 121) = *(v41 + 9);
  v26 = v36;
  *(a2 + 16) = v35;
  *(a2 + 32) = v26;
  v27 = v38;
  *(a2 + 48) = v37;
  *(a2 + 64) = v27;
  *(a2 + 144) = v63;
  *(a2 + 152) = v17;
  *(a2 + 160) = v21;
  *(a2 + 168) = v23;
  *(a2 + 176) = v24;
  return result;
}

void sub_2143EE118(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v47 = [v5 index];
    v7 = v6;
    v8 = [v5 MIMEType];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2146D95B8();
      v45 = v11;
      v46 = v10;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v15 = [v5 properties];
    v44 = [v15 type];

    v16 = [v5 properties];
    v17 = [v16 accessibilityText];

    if (v17)
    {
      v18 = sub_2146D95B8();
      v42 = v19;
      v43 = v18;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v20 = [v5 properties];
    v21 = [v20 overlaidTextColor];

    if (v21)
    {
      [v21 r];
      v50 = v22;
      [v21 g];
      v40 = v23;
      [v21 b];
      v48 = v24;
      [v21 a];
      v38 = v25;

      *&v26 = v50;
      *(&v26 + 1) = v40;
      v51 = v26;
      *&v27 = v48;
      *(&v27 + 1) = v38;
    }

    else
    {
      v27 = 0uLL;
      v51 = 0u;
    }

    v49 = v27;
    v28 = [v5 properties];

    v29 = [v28 dominantColor];
    if (v29)
    {
      [v29 &selRef_specialization + 2];
      v41 = v30;
      [v29 &selRef_encodeInteger_forKey_ + 4];
      v39 = v31;
      [v29 &selRef_encodeInteger_forKey_ + 5];
      v36 = v32;
      [v29 &selRef_hasMmv + 5];
      v37 = v33;

      *&v34 = v41;
      *(&v34 + 1) = v39;
      *&v35 = v36;
      *(&v35 + 1) = v37;
    }

    else
    {

      v34 = 0uLL;
      v35 = 0uLL;
    }

    *a2 = v47;
    *(a2 + 8) = v46;
    *(a2 + 16) = v45;
    *(a2 + 24) = v44;
    *(a2 + 32) = v43;
    *(a2 + 40) = v42;
    *(a2 + 48) = v51;
    *(a2 + 64) = v49;
    *(a2 + 80) = v21 == 0;
    *(a2 + 88) = v34;
    *(a2 + 104) = v35;
    *(a2 + 120) = v29 == 0;
  }

  else
  {
    v12 = sub_2146D9F58();
    swift_allocError();
    v14 = v13;
    sub_2146D9F28();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
  }
}

uint64_t sub_2143EE4E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v6;
  v7 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 20);
  v13 = sub_2146D8958();
  v14 = *(*(v13 - 8) + 56);
  v15 = 1;
  v34 = v12;
  v14(a2 + v12, 1, 1, v13);
  v16 = *(v7 + 24);
  v35 = a2;
  v17 = (a2 + v16);
  *v17 = 0;
  v17[1] = 0;
  v32 = [a1 version];
  v33 = a1;
  v18 = [a1 URL];
  v19 = v31;
  if (v18)
  {
    v20 = v18;
    sub_2146D88E8();

    v15 = 0;
  }

  v14(v19, v15, 1, v13);
  v21 = v33;
  v22 = [v33 accessibilityText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2146D95B8();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *v11 = v32;
  sub_21408AC04(v19, v11 + *(v7 + 20), &unk_27C9131A0, &unk_2146E9D10);
  v27 = (v11 + *(v7 + 24));
  *v27 = v24;
  v27[1] = v26;
  v28 = v35;
  sub_213FB2DF4(v35 + v34, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v11, v28, type metadata accessor for LinkPresentation.IconMetadata);
}

void sub_2143EE758(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 index];
    v8 = v6;
    v9 = [v5 MIMEType];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2146D95B8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v17 = [v5 properties];

    v18 = [v17 accessibilityText];
    v19 = sub_2146D95B8();
    v21 = v20;

    *a2 = v7;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v19;
    a2[4] = v21;
  }

  else
  {
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
    swift_willThrow();
  }
}

uint64_t sub_2143EE928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = [v12 index];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 youTubeURL];
  if (v14)
  {
    v15 = v14;
    sub_2146D88E8();

    v16 = sub_2146D8958();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  }

  else
  {
    v17 = sub_2146D8958();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  v18 = [a1 streamingURL];
  if (v18)
  {
    v19 = v18;
    sub_2146D88E8();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_2146D8958();
  (*(*(v21 - 8) + 56))(v8, v20, 1, v21);
  v22 = [a1 MIMEType];
  v42 = v8;
  if (v22)
  {
    v23 = v22;
    v24 = sub_2146D95B8();
    v40 = v25;
    v41 = v24;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v26 = [a1 hasAudio];

  v27 = [a1 properties];
  v28 = [v27 hasAudio];

  v29 = [a1 properties];
  v30 = [v29 accessibilityText];

  v31 = sub_2146D95B8();
  v33 = v32;

  sub_21408AC04(v10, a2, &unk_27C9131A0, &unk_2146E9D10);
  v34 = type metadata accessor for LinkPresentation.Video(0);
  result = sub_21408AC04(v42, a2 + v34[5], &unk_27C9131A0, &unk_2146E9D10);
  v36 = (a2 + v34[6]);
  v37 = v40;
  *v36 = v41;
  v36[1] = v37;
  *(a2 + v34[7]) = v26;
  *(a2 + v34[8]) = v13;
  v38 = a2 + v34[9];
  *v38 = v28;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  return result;
}

uint64_t sub_2143EECA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - v8;
  v10 = a2(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v44 - v13);
  v15 = *(v12 + 20);
  v16 = sub_2146D8958();
  v17 = *(*(v16 - 8) + 56);
  v18 = 1;
  v47 = v15;
  v19 = a4 + v15;
  v20 = a4;
  v21 = v45;
  v17(v19, 1, 1, v16);
  v22 = (v20 + v10[6]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v20 + v10[8]);
  *v23 = 0;
  v23[1] = 0;
  v46 = [v21 version];
  v24 = [v21 URL];
  v49 = v9;
  if (v24)
  {
    v25 = v24;
    sub_2146D88E8();

    v9 = v49;
    v18 = 0;
  }

  v17(v9, v18, 1, v16);
  v26 = [v21 type];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2146D95B8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  [v21 size];
  v32 = v31;
  v34 = v33;
  v35 = [v21 accessibilityText];
  if (v35)
  {
    v36 = v35;
    v37 = sub_2146D95B8();
    v39 = v38;
  }

  else
  {

    v37 = 0;
    v39 = 0;
  }

  *v14 = v46;
  sub_21408AC04(v49, v14 + v10[5], &unk_27C9131A0, &unk_2146E9D10);
  v40 = (v14 + v10[6]);
  *v40 = v28;
  v40[1] = v30;
  v41 = (v14 + v10[7]);
  *v41 = v32;
  v41[1] = v34;
  v42 = (v14 + v10[8]);
  *v42 = v37;
  v42[1] = v39;
  sub_213FB2DF4(v20 + v47, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v14, v20, v48);
}

uint64_t sub_2143EEF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = [a1 streamingURL];
  if (v8)
  {
    v9 = v8;
    sub_2146D88E8();

    v10 = sub_2146D8958();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_2146D8958();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v12 = [a1 MIMEType];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2146D95B8();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  sub_21408AC04(v7, a2, &unk_27C9131A0, &unk_2146E9D10);
  result = type metadata accessor for LinkPresentation.Audio(0);
  v18 = (a2 + *(result + 20));
  *v18 = v14;
  v18[1] = v16;
  return result;
}

uint64_t sub_2143EF124@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = a2(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v39 - v13);
  v15 = *(v12 + 20);
  v16 = sub_2146D8958();
  v17 = *(*(v16 - 8) + 56);
  v18 = 1;
  v42 = v15;
  v19 = a4 + v15;
  v20 = a4;
  v21 = v40;
  v17(v19, 1, 1, v16);
  v22 = (v20 + v10[6]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v20 + v10[7]);
  *v23 = 0;
  v23[1] = 0;
  v41 = [v21 version];
  v24 = [v21 URL];
  v44 = v9;
  if (v24)
  {
    v25 = v24;
    sub_2146D88E8();

    v9 = v44;
    v18 = 0;
  }

  v17(v9, v18, 1, v16);
  v26 = [v21 type];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2146D95B8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [v21 accessibilityText];
  if (v31)
  {
    v32 = v31;
    v33 = sub_2146D95B8();
    v35 = v34;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  *v14 = v41;
  sub_21408AC04(v44, v14 + v10[5], &unk_27C9131A0, &unk_2146E9D10);
  v36 = (v14 + v10[6]);
  *v36 = v28;
  v36[1] = v30;
  v37 = (v14 + v10[7]);
  *v37 = v33;
  v37[1] = v35;
  sub_213FB2DF4(v20 + v42, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v14, v20, v43);
}

void sub_2143EF3D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v1357 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C10, &qword_21473AF48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v1315 = &v1285 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v1313 = *(v6 - 8);
  v1314 = v6;
  v7 = *(v1313 + 64);
  MEMORY[0x28223BE20](v6);
  v1316 = &v1285 - v8;
  v9 = type metadata accessor for LinkPresentation.EncodedToken(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v1326 = &v1285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v1325 = (&v1285 - v13);
  v1351 = sub_2146D8958();
  v1350 = *(v1351 - 8);
  v14 = *(v1350 + 64);
  MEMORY[0x28223BE20](v1351);
  v1324 = &v1285 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CloudKitSharingToken();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v1323 = &v1285 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v1329 = (&v1285 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v1308 = &v1285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v1307 = &v1285 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v1312 = &v1285 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v1311 = &v1285 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v1310 = &v1285 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v1309 = &v1285 - v34;
  MEMORY[0x28223BE20](v33);
  v1339 = &v1285 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v1343 = &v1285 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v1337 = &v1285 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v1347 = &v1285 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v1346 = &v1285 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v1352 = (&v1285 - v48);
  MEMORY[0x28223BE20](v47);
  v1359 = (&v1285 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v1320 = &v1285 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v1322 = &v1285 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v1328 = &v1285 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v1331 = &v1285 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v1333 = &v1285 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v1335 = &v1285 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v1338 = &v1285 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v1340 = &v1285 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v1341 = &v1285 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v1344 = &v1285 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v1345 = &v1285 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v1348 = &v1285 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v1353 = (&v1285 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v1358 = (&v1285 - v79);
  MEMORY[0x28223BE20](v78);
  v1360 = &v1285 - v80;
  v1356 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v1355 = *(v1356 - 8);
  v81 = *(v1355 + 64);
  v82 = MEMORY[0x28223BE20](v1356);
  v1305 = &v1285 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v1302 = (&v1285 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v1299 = (&v1285 - v87);
  v88 = MEMORY[0x28223BE20](v86);
  v1296 = (&v1285 - v89);
  v90 = MEMORY[0x28223BE20](v88);
  v1298 = (&v1285 - v91);
  v92 = MEMORY[0x28223BE20](v90);
  v1301 = (&v1285 - v93);
  v94 = MEMORY[0x28223BE20](v92);
  v1294 = (&v1285 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v1295 = (&v1285 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v1292 = (&v1285 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v1303 = &v1285 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v1293 = (&v1285 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v1297 = (&v1285 - v105);
  v106 = MEMORY[0x28223BE20](v104);
  v1288 = (&v1285 - v107);
  v108 = MEMORY[0x28223BE20](v106);
  v1300 = &v1285 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v1290 = (&v1285 - v111);
  v112 = MEMORY[0x28223BE20](v110);
  v1304 = (&v1285 - v113);
  v114 = MEMORY[0x28223BE20](v112);
  v1317 = &v1285 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v1291 = (&v1285 - v117);
  v118 = MEMORY[0x28223BE20](v116);
  v1289 = (&v1285 - v119);
  v120 = MEMORY[0x28223BE20](v118);
  v1306 = (&v1285 - v121);
  v122 = MEMORY[0x28223BE20](v120);
  v1318 = (&v1285 - v123);
  v124 = MEMORY[0x28223BE20](v122);
  v1319 = (&v1285 - v125);
  v126 = MEMORY[0x28223BE20](v124);
  v1321 = (&v1285 - v127);
  v128 = MEMORY[0x28223BE20](v126);
  v1327 = (&v1285 - v129);
  v130 = MEMORY[0x28223BE20](v128);
  v1330 = &v1285 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v1332 = (&v1285 - v133);
  v134 = MEMORY[0x28223BE20](v132);
  v1334 = (&v1285 - v135);
  v136 = MEMORY[0x28223BE20](v134);
  v1336 = (&v1285 - v137);
  v138 = MEMORY[0x28223BE20](v136);
  v1342 = &v1285 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v142 = &v1285 - v141;
  v143 = MEMORY[0x28223BE20](v140);
  v145 = &v1285 - v144;
  v146 = MEMORY[0x28223BE20](v143);
  v148 = (&v1285 - v147);
  v149 = MEMORY[0x28223BE20](v146);
  v151 = &v1285 - v150;
  v152 = MEMORY[0x28223BE20](v149);
  v154 = &v1285 - v153;
  v155 = MEMORY[0x28223BE20](v152);
  v157 = (&v1285 - v156);
  v158 = MEMORY[0x28223BE20](v155);
  v1349 = (&v1285 - v159);
  MEMORY[0x28223BE20](v158);
  v1354 = (&v1285 - v160);
  objc_opt_self();
  v161 = swift_dynamicCastObjCClass();
  if (v161)
  {
    v162 = v161;
    v1361 = a1;
    v163 = [v161 storeFrontIdentifier];
    if (v163)
    {
      v164 = v163;
      v165 = sub_2146D95B8();
      v167 = v166;
    }

    else
    {
      v165 = 0;
      v167 = 0;
    }

    v174 = [v162 storeIdentifier];
    if (v174)
    {
      v175 = v174;
      v176 = sub_2146D95B8();
      v1358 = v177;
    }

    else
    {
      v176 = 0;
      v1358 = 0;
    }

    v178 = [v162 name];
    if (v178)
    {
      v179 = v178;
      v180 = sub_2146D95B8();
      v182 = v181;
    }

    else
    {
      v180 = 0;
      v182 = 0;
    }

    v183 = [v162 artist];
    if (v183)
    {
      v184 = v183;
      v1348 = sub_2146D95B8();
      v186 = v185;
    }

    else
    {
      v1348 = 0;
      v186 = 0;
    }

    v187 = [v162 album];
    if (v187)
    {
      v188 = v187;
      v1347 = sub_2146D95B8();
      v1353 = v189;
    }

    else
    {
      v1347 = 0;
      v1353 = 0;
    }

    v190 = [v162 lyrics];
    if (v190)
    {
      v191 = v190;
      v1346 = sub_2146D95B8();
      v1352 = v192;
    }

    else
    {
      v1346 = 0;
      v1352 = 0;
    }

    v193 = [v162 artwork];
    if (v193)
    {
      *&v1414 = v193;
      v194 = v193;
      v195 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v195)
      {
LABEL_25:

LABEL_675:

        return;
      }

      v1362 = 0;

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v196 = [v162 artworkMetadata];
    if (v196)
    {
      v1344 = v180;
      v197 = v162;
      v198 = v176;
      v199 = v165;
      *&v1407 = v196;
      v200 = v196;
      v201 = v1360;
      v202 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1360);
      if (v202)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

LABEL_31:
        return;
      }

      v1362 = 0;

      v210 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v210 - 8) + 56))(v201, 0, 1, v210);
      v165 = v199;
      v176 = v198;
      v162 = v197;
      v180 = v1344;
    }

    else
    {
      v203 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v203 - 8) + 56))(v1360, 1, 1, v203);
    }

    v1345 = v165;
    v211 = [v162 previewURL];
    if (v211)
    {
      v212 = v1359;
      v213 = v211;
      sub_2146D88E8();

      v214 = v212;
      v215 = 0;
    }

    else
    {
      v215 = 1;
      v214 = v1359;
    }

    (*(v1350 + 56))(v214, v215, 1, v1351);
    v234 = [v162 offers];
    if (v234)
    {
      v235 = v234;
      v236 = v1358;
      v1351 = sub_2146D9918();
    }

    else
    {
      v236 = v1358;
      v1351 = 0;
    }

    v237 = [v162 lyricExcerpt];
    if (v237)
    {
      *&v1407 = v237;
      v238 = v237;
      v239 = v1362;
      sub_214400664(&v1407, &v1400, &v1363);
      if (v239)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v1359, &unk_27C9131A0, &unk_2146E9D10);
        v240 = &qword_27C904878;
        v241 = &unk_2146EDB68;
        v242 = v1360;
LABEL_151:
        sub_213FB2DF4(v242, v240, v241);
        return;
      }

      v243 = v167;
      v1362 = 0;
    }

    else
    {
      v243 = v167;

      v1363 = xmmword_2146EA720;
      v1364 = 0u;
      memset(v1365, 0, 25);
    }

    v247 = v1349;
    *v1349 = v1345;
    v247[1] = v243;
    v247[2] = v176;
    v247[3] = v236;
    v247[4] = v180;
    v247[5] = v182;
    v248 = v1347;
    v247[6] = v1348;
    v247[7] = v186;
    v249 = v1353;
    v247[8] = v248;
    v247[9] = v249;
    v250 = v1352;
    v247[10] = v1346;
    v247[11] = v250;
    v251 = v1419;
    *(v247 + 10) = v1418;
    *(v247 + 11) = v251;
    *(v247 + 12) = v1420[0];
    *(v247 + 201) = *(v1420 + 9);
    v252 = v1415;
    *(v247 + 6) = v1414;
    *(v247 + 7) = v252;
    v253 = v1417;
    *(v247 + 8) = v1416;
    *(v247 + 9) = v253;
    v254 = type metadata accessor for LinkPresentation.SongMetadata(0);
    sub_21408AC04(v1360, v247 + v254[11], &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v1359, v247 + v254[12], &unk_27C9131A0, &unk_2146E9D10);
    *(v247 + v254[13]) = v1351;
    v255 = (v247 + v254[14]);
    v256 = v1364;
    *v255 = v1363;
    v255[1] = v256;
    v255[2] = v1365[0];
    *(v255 + 41) = *(v1365 + 9);
    v257 = v1356;
    goto LABEL_67;
  }

  v1360 = v154;
  v1359 = v157;
  v1349 = v151;
  v1286 = v145;
  v1287 = v148;
  v168 = v1358;
  v1285 = v142;
  objc_opt_self();
  v169 = swift_dynamicCastObjCClass();
  if (v169)
  {
    v170 = v169;
    v171 = [v169 storeFrontIdentifier];
    if (v171)
    {
      v172 = v171;
      v1353 = sub_2146D95B8();
      v1360 = v173;
    }

    else
    {
      v1353 = 0;
      v1360 = 0;
    }

    v216 = v168;
    v217 = [v170 storeIdentifier];
    if (v217)
    {
      v218 = v217;
      v219 = sub_2146D95B8();
      v221 = v220;
    }

    else
    {
      v219 = 0;
      v221 = 0;
    }

    v1361 = a1;
    v222 = [v170 name];
    if (v222)
    {
      v223 = v222;
      v224 = sub_2146D95B8();
      v226 = v225;
    }

    else
    {
      v224 = 0;
      v226 = 0;
    }

    v227 = [v170 artist];
    if (v227)
    {
      v228 = v227;
      v1358 = sub_2146D95B8();
      v230 = v229;
    }

    else
    {
      v1358 = 0;
      v230 = 0;
    }

    v231 = [v170 artwork];
    if (v231)
    {
      *&v1414 = v231;
      v232 = v231;
      v233 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v233)
      {

LABEL_327:

        goto LABEL_328;
      }

      v1362 = 0;

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v244 = [v170 artworkMetadata];
    if (v244)
    {
      *&v1407 = v244;
      v245 = v244;
      v246 = v1362;
      sub_213FC29FC(&v1407, &v1400, v216);
      if (v246)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v1352 = v224;
      v259 = v221;
      v1362 = 0;

      v267 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v267 - 8) + 56))(v216, 0, 1, v267);
    }

    else
    {
      v1352 = v224;
      v259 = v221;
      v260 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v260 - 8) + 56))(v216, 1, 1, v260);
    }

    v268 = v216;
    v269 = [v170 offers];
    if (v269)
    {
      v270 = v269;
      v271 = sub_2146D9918();
    }

    else
    {

      v271 = 0;
    }

    v290 = v1359;
    v291 = v1360;
    v1359->isa = v1353;
    v290[1].isa = v291;
    v290[2].isa = v219;
    v290[3].isa = v259;
    v290[4].isa = v1352;
    v290[5].isa = v226;
    v290[6].isa = v1358;
    v290[7].isa = v230;
    v292 = v1419;
    *&v290[16].isa = v1418;
    *&v290[18].isa = v292;
    *&v290[20].isa = v1420[0];
    *(&v290[21].isa + 1) = *(v1420 + 9);
    v293 = v1415;
    *&v290[8].isa = v1414;
    *&v290[10].isa = v293;
    v294 = v1417;
    *&v290[12].isa = v1416;
    *&v290[14].isa = v294;
    v295 = v290;
    v296 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
    sub_21408AC04(v268, v295 + *(v296 + 36), &qword_27C904878, &unk_2146EDB68);
    *(&v295->isa + *(v296 + 40)) = v271;
    v257 = v1356;
LABEL_91:
    swift_storeEnumTagMultiPayload();
    v258 = v295;
    goto LABEL_129;
  }

  objc_opt_self();
  v204 = swift_dynamicCastObjCClass();
  if (v204)
  {
    v205 = v204;
    v206 = a1;
    v207 = [v204 storeFrontIdentifier];
    if (v207)
    {
      v208 = v207;
      v1358 = sub_2146D95B8();
      v1359 = v209;
    }

    else
    {
      v1358 = 0;
      v1359 = 0;
    }

    v272 = v1353;
    v273 = [v205 storeIdentifier];
    if (v273)
    {
      v274 = v273;
      v1353 = sub_2146D95B8();
      v276 = v275;
    }

    else
    {
      v1353 = 0;
      v276 = 0;
    }

    v277 = [v205 name];
    if (v277)
    {
      v278 = v277;
      v1352 = sub_2146D95B8();
      v280 = v279;
    }

    else
    {
      v1352 = 0;
      v280 = 0;
    }

    v281 = [v205 genre];
    if (v281)
    {
      v282 = v281;
      v283 = sub_2146D95B8();
      v285 = v284;
    }

    else
    {
      v283 = 0;
      v285 = 0;
    }

    v286 = v1360;
    v287 = [v205 artwork];
    if (v287)
    {
      *&v1414 = v287;
      v288 = v287;
      v289 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v289)
      {

        goto LABEL_675;
      }

      v1362 = 0;

      nullsub_1(&v1428);
      v286 = v1360;
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v297 = [v205 artworkMetadata];
    if (v297)
    {
      *&v1407 = v297;
      v298 = v297;
      v299 = v1362;
      sub_213FC29FC(&v1407, &v1400, v272);
      if (v299)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

LABEL_121:
        return;
      }

      v1362 = 0;

      v306 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v306 - 8) + 56))(v272, 0, 1, v306);
    }

    else
    {

      v300 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v300 - 8) + 56))(v272, 1, 1, v300);
    }

    v307 = v1359;
    *v286 = v1358;
    *(v286 + 8) = v307;
    *(v286 + 16) = v1353;
    *(v286 + 24) = v276;
    *(v286 + 32) = v1352;
    *(v286 + 40) = v280;
    *(v286 + 48) = v283;
    *(v286 + 56) = v285;
    v308 = v1419;
    *(v286 + 128) = v1418;
    *(v286 + 144) = v308;
    *(v286 + 160) = v1420[0];
    *(v286 + 169) = *(v1420 + 9);
    v309 = v1415;
    *(v286 + 64) = v1414;
    *(v286 + 80) = v309;
    v310 = v1417;
    *(v286 + 96) = v1416;
    *(v286 + 112) = v310;
    v311 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
    sub_21408AC04(v272, v286 + *(v311 + 36), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
LABEL_128:
    swift_storeEnumTagMultiPayload();
    v258 = v286;
    goto LABEL_129;
  }

  objc_opt_self();
  v261 = swift_dynamicCastObjCClass();
  if (v261)
  {
    v262 = v261;
    v263 = a1;
    v264 = [v261 storeFrontIdentifier];
    if (v264)
    {
      v265 = v264;
      v1359 = sub_2146D95B8();
      v1360 = v266;
    }

    else
    {
      v1359 = 0;
      v1360 = 0;
    }

    v312 = v1348;
    v313 = [v262 storeIdentifier];
    if (v313)
    {
      v314 = v313;
      v1358 = sub_2146D95B8();
      v316 = v315;
    }

    else
    {
      v1358 = 0;
      v316 = 0;
    }

    v317 = [v262 name];
    if (v317)
    {
      v318 = v317;
      v1353 = sub_2146D95B8();
      v320 = v319;
    }

    else
    {
      v1353 = 0;
      v320 = 0;
    }

    v321 = [v262 artist];
    if (v321)
    {
      v322 = v321;
      v323 = sub_2146D95B8();
      v325 = v324;
    }

    else
    {
      v323 = 0;
      v325 = 0;
    }

    v286 = v1349;
    v326 = [v262 artwork];
    if (v326)
    {
      *&v1414 = v326;
      v327 = v326;
      v328 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v328)
      {

LABEL_115:

        goto LABEL_327;
      }

      v1362 = 0;

      nullsub_1(&v1428);
      v286 = v1349;
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v329 = [v262 artworkMetadata];
    if (v329)
    {
      *&v1407 = v329;
      v298 = v329;
      v330 = v1362;
      sub_213FC29FC(&v1407, &v1400, v312);
      if (v330)
      {
LABEL_120:

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_121;
      }

      v1362 = 0;

      v337 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v337 - 8) + 56))(v312, 0, 1, v337);
    }

    else
    {

      v331 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v331 - 8) + 56))(v312, 1, 1, v331);
    }

    v338 = v1360;
    *v286 = v1359;
    *(v286 + 8) = v338;
    *(v286 + 16) = v1358;
    *(v286 + 24) = v316;
    *(v286 + 32) = v1353;
    *(v286 + 40) = v320;
    *(v286 + 48) = v323;
    *(v286 + 56) = v325;
    v339 = v1419;
    *(v286 + 128) = v1418;
    *(v286 + 144) = v339;
    *(v286 + 160) = v1420[0];
    *(v286 + 169) = *(v1420 + 9);
    v340 = v1415;
    *(v286 + 64) = v1414;
    *(v286 + 80) = v340;
    v341 = v1417;
    *(v286 + 96) = v1416;
    *(v286 + 112) = v341;
    v342 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
    sub_21408AC04(v312, v286 + *(v342 + 36), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
    goto LABEL_128;
  }

  objc_opt_self();
  v301 = swift_dynamicCastObjCClass();
  if (v301)
  {
    v302 = v301;
    v303 = [v301 curatorProfileURL];
    v304 = v1346;
    if (v303)
    {
      v305 = v303;
      sub_2146D88E8();

      (*(v1350 + 56))(v304, 0, 1, v1351);
    }

    else
    {
      (*(v1350 + 56))(v1346, 1, 1, v1351);
    }

    v295 = v1287;
    sub_21408AC04(v304, v1352, &unk_27C9131A0, &unk_2146E9D10);
    v346 = [v302 curatorHandle];
    if (v346)
    {
      v347 = v346;
      v1358 = sub_2146D95B8();
      v1360 = v348;
    }

    else
    {
      v1358 = 0;
      v1360 = 0;
    }

    v349 = [v302 storeFrontIdentifier];
    if (v349)
    {
      v350 = v349;
      v1353 = sub_2146D95B8();
      v1359 = v351;
    }

    else
    {
      v1353 = 0;
      v1359 = 0;
    }

    v352 = [v302 storeIdentifier];
    if (v352)
    {
      v353 = v352;
      v1351 = sub_2146D95B8();
      v355 = v354;
    }

    else
    {
      v1351 = 0;
      v355 = 0;
    }

    v356 = [v302 name];
    if (v356)
    {
      v357 = v356;
      v1350 = sub_2146D95B8();
      v359 = v358;
    }

    else
    {
      v1350 = 0;
      v359 = 0;
    }

    v360 = [v302 curator];
    if (v360)
    {
      v361 = v360;
      v362 = sub_2146D95B8();
      v364 = v363;
    }

    else
    {
      v362 = 0;
      v364 = 0;
    }

    v365 = v1347;
    sub_213FB2E54(v1352, v1347, &unk_27C9131A0, &unk_2146E9D10);
    v366 = [v302 artwork];
    if (v366)
    {
      *&v1414 = v366;
      v367 = v366;
      v368 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v368)
      {

        sub_213FB2DF4(v1347, &unk_27C9131A0, &unk_2146E9D10);
        v242 = v1352;
        v240 = &unk_27C9131A0;
        v241 = &unk_2146E9D10;
        goto LABEL_151;
      }

      v1362 = 0;

      nullsub_1(&v1428);
      v365 = v1347;
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v369 = [v302 artworkMetadata];
    if (v369)
    {
      *&v1407 = v369;
      v370 = v369;
      v371 = v1345;
      v372 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1345);
      if (v372)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v365, &unk_27C9131A0, &unk_2146E9D10);
        v242 = v1352;
        v240 = &unk_27C9131A0;
        v241 = &unk_2146E9D10;
        goto LABEL_151;
      }

      v1362 = 0;

      sub_213FB2DF4(v1352, &unk_27C9131A0, &unk_2146E9D10);
      v380 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v380 - 8) + 56))(v371, 0, 1, v380);
      v295 = v1287;
    }

    else
    {

      sub_213FB2DF4(v1352, &unk_27C9131A0, &unk_2146E9D10);
      v373 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      v371 = v1345;
      (*(*(v373 - 8) + 56))(v1345, 1, 1, v373);
    }

    v381 = v1359;
    v295->isa = v1353;
    v295[1].isa = v381;
    v295[2].isa = v1351;
    v295[3].isa = v355;
    v295[4].isa = v1350;
    v295[5].isa = v359;
    v295[6].isa = v362;
    v295[7].isa = v364;
    v382 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
    sub_21408AC04(v1347, v295 + v382[8], &unk_27C9131A0, &unk_2146E9D10);
    v383 = (&v295->isa + v382[9]);
    v384 = v1360;
    *v383 = v1358;
    v383[1] = v384;
    v385 = (v295 + v382[10]);
    v386 = v1419;
    v385[4] = v1418;
    v385[5] = v386;
    v385[6] = v1420[0];
    *(v385 + 105) = *(v1420 + 9);
    v387 = v1415;
    *v385 = v1414;
    v385[1] = v387;
    v388 = v1417;
    v385[2] = v1416;
    v385[3] = v388;
    sub_21408AC04(v371, v295 + v382[11], &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
    goto LABEL_91;
  }

  objc_opt_self();
  v332 = swift_dynamicCastObjCClass();
  if (v332)
  {
    v333 = v332;
    v263 = a1;
    v334 = [v332 storeFrontIdentifier];
    if (v334)
    {
      v335 = v334;
      v1359 = sub_2146D95B8();
      v1360 = v336;
    }

    else
    {
      v1359 = 0;
      v1360 = 0;
    }

    v389 = v1344;
    v390 = [v333 storeIdentifier];
    if (v390)
    {
      v391 = v390;
      v1358 = sub_2146D95B8();
      v393 = v392;
    }

    else
    {
      v1358 = 0;
      v393 = 0;
    }

    v394 = [v333 name];
    if (v394)
    {
      v395 = v394;
      v1353 = sub_2146D95B8();
      v397 = v396;
    }

    else
    {
      v1353 = 0;
      v397 = 0;
    }

    v398 = [v333 curator];
    if (v398)
    {
      v399 = v398;
      v400 = sub_2146D95B8();
      v402 = v401;
    }

    else
    {
      v400 = 0;
      v402 = 0;
    }

    v286 = v1286;
    v403 = [v333 artwork];
    if (v403)
    {
      *&v1414 = v403;
      v404 = v403;
      v405 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v405)
      {

LABEL_328:

        goto LABEL_675;
      }

      v1362 = 0;

      nullsub_1(&v1428);
      v286 = v1286;
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v406 = [v333 artworkMetadata];
    if (v406)
    {
      *&v1407 = v406;
      v298 = v406;
      v407 = v1362;
      sub_213FC29FC(&v1407, &v1400, v389);
      if (v407)
      {
        goto LABEL_120;
      }

      v1362 = 0;

      v415 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v415 - 8) + 56))(v389, 0, 1, v415);
    }

    else
    {

      v408 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v408 - 8) + 56))(v389, 1, 1, v408);
    }

    v416 = v1360;
    *v286 = v1359;
    *(v286 + 8) = v416;
    *(v286 + 16) = v1358;
    *(v286 + 24) = v393;
    *(v286 + 32) = v1353;
    *(v286 + 40) = v397;
    *(v286 + 48) = v400;
    *(v286 + 56) = v402;
    v417 = v1419;
    *(v286 + 128) = v1418;
    *(v286 + 144) = v417;
    *(v286 + 160) = v1420[0];
    *(v286 + 169) = *(v1420 + 9);
    v418 = v1415;
    *(v286 + 64) = v1414;
    *(v286 + 80) = v418;
    v419 = v1417;
    *(v286 + 96) = v1416;
    *(v286 + 112) = v419;
    v420 = type metadata accessor for LinkPresentation.RadioMetadata(0);
    sub_21408AC04(v389, v286 + *(v420 + 36), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
    goto LABEL_128;
  }

  objc_opt_self();
  v374 = swift_dynamicCastObjCClass();
  if (v374)
  {
    v375 = v374;
    v1361 = a1;
    v376 = [v374 storeFrontIdentifier];
    if (v376)
    {
      v377 = v376;
      v1359 = sub_2146D95B8();
      v379 = v378;
    }

    else
    {
      v1359 = 0;
      v379 = 0;
    }

    v421 = [v375 storeIdentifier];
    if (v421)
    {
      v422 = v421;
      v1358 = sub_2146D95B8();
      v424 = v423;
    }

    else
    {
      v1358 = 0;
      v424 = 0;
    }

    v425 = [v375 name];
    if (v425)
    {
      v426 = v425;
      v1353 = sub_2146D95B8();
      v428 = v427;
    }

    else
    {
      v1353 = 0;
      v428 = 0;
    }

    v429 = [v375 subtitle];
    if (v429)
    {
      v430 = v429;
      v1352 = sub_2146D95B8();
      v432 = v431;
    }

    else
    {
      v1352 = 0;
      v432 = 0;
    }

    v433 = [v375 genre];
    if (v433)
    {
      v434 = v433;
      v1351 = sub_2146D95B8();
      v436 = v435;
    }

    else
    {
      v1351 = 0;
      v436 = 0;
    }

    v437 = [v375 platform];
    if (v437)
    {
      v438 = v437;
      v1350 = sub_2146D95B8();
      v440 = v439;
    }

    else
    {
      v1350 = 0;
      v440 = 0;
    }

    v441 = [v375 icon];
    if (v441)
    {
      *&v1414 = v441;
      v194 = v441;
      v442 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v442)
      {
        goto LABEL_25;
      }

      v1360 = v379;
      v1362 = 0;

      nullsub_1(&v1428);
    }

    else
    {
      v1360 = v379;
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v443 = [v375 screenshots];
    if (v443)
    {
      v444 = v443;
      sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
      v445 = sub_2146D9918();

      v446 = v1362;
      v447 = sub_2143E35B4(v445);
      v1362 = v446;
      if (v446)
      {
        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_211;
      }

      v1349 = v447;
    }

    else
    {
      v1349 = 0;
    }

    v455 = [v375 previewVideo];
    if (v455)
    {
      *&v1407 = v455;
      v456 = v455;
      v457 = v1343;
      v458 = v1362;
      sub_2144006B4(&v1407, &v1400, v1343);
      if (v458)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v1362 = 0;

      v481 = type metadata accessor for LinkPresentation.Video(0);
      (*(*(v481 - 8) + 56))(v457, 0, 1, v481);
    }

    else
    {
      v477 = type metadata accessor for LinkPresentation.Video(0);
      v457 = v1343;
      (*(*(v477 - 8) + 56))(v1343, 1, 1, v477);
    }

    LODWORD(v1348) = [v375 isMessagesOnlyApp];
    v482 = [v375 messagesAppIcon];
    v286 = v1285;
    if (v482)
    {
      *&v1400 = v482;
      v483 = v482;
      v484 = v1362;
      sub_213FC2A4C(&v1400, &v1393, &v1407);
      if (v484)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v457, &qword_27C904888, &unk_2146EDB80);
        return;
      }

      v1362 = 0;

      nullsub_1(&v1407);
    }

    else
    {

      sub_2144008B4(&v1407);
    }

    v1404 = v1411;
    v1405 = v1412;
    v1406[0] = v1413[0];
    *(v1406 + 9) = *(v1413 + 9);
    v1400 = v1407;
    v1401 = v1408;
    v1402 = v1409;
    v1403 = v1410;
    v498 = v1360;
    *v286 = v1359;
    *(v286 + 8) = v498;
    *(v286 + 16) = v1358;
    *(v286 + 24) = v424;
    *(v286 + 32) = v1353;
    *(v286 + 40) = v428;
    *(v286 + 48) = v1352;
    *(v286 + 56) = v432;
    *(v286 + 64) = v1351;
    *(v286 + 72) = v436;
    *(v286 + 80) = v1350;
    *(v286 + 88) = v440;
    *(v286 + 201) = *(v1420 + 9);
    v499 = v1420[0];
    v500 = v1418;
    *(v286 + 176) = v1419;
    *(v286 + 192) = v499;
    v501 = v1416;
    *(v286 + 144) = v1417;
    *(v286 + 160) = v500;
    v502 = v1414;
    *(v286 + 112) = v1415;
    *(v286 + 128) = v501;
    *(v286 + 96) = v502;
    *(v286 + 224) = v1349;
    v503 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
    sub_21408AC04(v1343, v286 + v503[12], &qword_27C904888, &unk_2146EDB80);
    *(v286 + v503[13]) = v1348;
    v504 = (v286 + v503[14]);
    v505 = v1405;
    v504[4] = v1404;
    v504[5] = v505;
    v504[6] = v1406[0];
    *(v504 + 105) = *(v1406 + 9);
    v506 = v1401;
    *v504 = v1400;
    v504[1] = v506;
    v507 = v1403;
    v504[2] = v1402;
    v504[3] = v507;
    v257 = v1356;
    goto LABEL_128;
  }

  objc_opt_self();
  v409 = swift_dynamicCastObjCClass();
  v410 = a1;
  if (v409)
  {
    v411 = v409;
    v412 = [v409 storeIdentifier];
    if (v412)
    {
      v413 = v412;
      v1359 = sub_2146D95B8();
      v1360 = v414;
    }

    else
    {
      v1359 = 0;
      v1360 = 0;
    }

    v459 = v1342;
    v460 = [v411 storeIdentifier];
    if (v460)
    {
      v461 = v460;
      v1358 = sub_2146D95B8();
      v463 = v462;
    }

    else
    {
      v1358 = 0;
      v463 = 0;
    }

    v464 = a1;
    v465 = [v411 name];
    if (v465)
    {
      v466 = v465;
      v1353 = sub_2146D95B8();
      v468 = v467;
    }

    else
    {
      v1353 = 0;
      v468 = 0;
    }

    v469 = [v411 author];
    if (v469)
    {
      v470 = v469;
      v471 = sub_2146D95B8();
      v473 = v472;
    }

    else
    {
      v471 = 0;
      v473 = 0;
    }

    v474 = [v411 artwork];
    if (v474)
    {
      *&v1414 = v474;
      v475 = v474;
      v476 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      if (v476)
      {

        goto LABEL_115;
      }

      v1362 = 0;

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v478 = [v411 artworkMetadata];
    if (v478)
    {
      *&v1407 = v478;
      v200 = v478;
      v479 = v1341;
      v480 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1341);
      if (v480)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_31;
      }

      v1362 = 0;

      v491 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v491 - 8) + 56))(v479, 0, 1, v491);
      v459 = v1342;
    }

    else
    {
      v485 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      v479 = v1341;
      (*(*(v485 - 8) + 56))(v1341, 1, 1, v485);
    }

    v492 = [v411 hasSpineOnRight];

    v493 = v1360;
    *v459 = v1359;
    *(v459 + 1) = v493;
    *(v459 + 2) = v1358;
    *(v459 + 3) = v463;
    *(v459 + 4) = v1353;
    *(v459 + 5) = v468;
    *(v459 + 6) = v471;
    *(v459 + 7) = v473;
    v494 = v1419;
    *(v459 + 8) = v1418;
    *(v459 + 9) = v494;
    *(v459 + 10) = v1420[0];
    *(v459 + 169) = *(v1420 + 9);
    v495 = v1415;
    *(v459 + 4) = v1414;
    *(v459 + 5) = v495;
    v496 = v1417;
    *(v459 + 6) = v1416;
    *(v459 + 7) = v496;
    v295 = v459;
    v497 = type metadata accessor for LinkPresentation.BookMetadata(0);
    sub_21408AC04(v479, v295 + *(v497 + 36), &qword_27C904878, &unk_2146EDB68);
    *(&v295->isa + *(v497 + 40)) = v492;
    v257 = v1356;
    goto LABEL_91;
  }

  objc_opt_self();
  v448 = swift_dynamicCastObjCClass();
  if (v448)
  {
    v449 = v448;
    v450 = [v448 storeFrontIdentifier];
    if (v450)
    {
      v451 = v450;
      v452 = sub_2146D95B8();
      v454 = v453;
    }

    else
    {
      v452 = 0;
      v454 = 0;
    }

    v508 = [v449 storeIdentifier];
    if (v508)
    {
      v509 = v508;
      v1359 = sub_2146D95B8();
      v511 = v510;
    }

    else
    {
      v1359 = 0;
      v511 = 0;
    }

    v512 = [v449 name];
    if (v512)
    {
      v513 = v512;
      v1358 = sub_2146D95B8();
      v1360 = v514;
    }

    else
    {
      v1358 = 0;
      v1360 = 0;
    }

    v515 = [v449 author];
    if (v515)
    {
      v516 = v515;
      v1353 = sub_2146D95B8();
      v518 = v517;
    }

    else
    {
      v1353 = 0;
      v518 = 0;
    }

    v519 = v410;
    v520 = [v449 narrator];
    if (v520)
    {
      v521 = v520;
      v1352 = sub_2146D95B8();
      v523 = v522;
    }

    else
    {
      v1352 = 0;
      v523 = 0;
    }

    v524 = [v449 artwork];
    if (v524)
    {
      *&v1414 = v524;
      v525 = v524;
      v526 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v526;
      if (v526)
      {

        goto LABEL_675;
      }

      v1349 = v452;

      nullsub_1(&v1428);
    }

    else
    {
      v1349 = v452;
      sub_2144008B4(&v1428);
    }

    v527 = v454;
    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v528 = [v449 artworkMetadata];
    if (v528)
    {
      *&v1407 = v528;
      v200 = v528;
      v529 = v1340;
      v530 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1340);
      v1362 = v530;
      if (v530)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_31;
      }

      v538 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v538 - 8) + 56))(v529, 0, 1, v538);
    }

    else
    {
      v531 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v531 - 8) + 56))(v1340, 1, 1, v531);
    }

    v539 = [v449 previewURL];
    if (v539)
    {
      v540 = v1337;
      v541 = v539;
      sub_2146D88E8();

      v542 = 0;
    }

    else
    {
      v542 = 1;
      v540 = v1337;
    }

    (*(v1350 + 56))(v540, v542, 1, v1351);
    v568 = v1336;
    *v1336 = v1349;
    v568[1] = v527;
    v568[2] = v1359;
    v568[3] = v511;
    v569 = v1360;
    v568[4] = v1358;
    v568[5] = v569;
    v568[6] = v1353;
    v568[7] = v518;
    v568[8] = v1352;
    v568[9] = v523;
    v570 = v1419;
    *(v568 + 9) = v1418;
    *(v568 + 10) = v570;
    *(v568 + 11) = v1420[0];
    *(v568 + 185) = *(v1420 + 9);
    v571 = v1415;
    *(v568 + 5) = v1414;
    *(v568 + 6) = v571;
    v572 = v1417;
    *(v568 + 7) = v1416;
    *(v568 + 8) = v572;
    v573 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
    sub_21408AC04(v1340, v568 + *(v573 + 40), &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v540, v568 + *(v573 + 44), &unk_27C9131A0, &unk_2146E9D10);
    v257 = v1356;
    goto LABEL_302;
  }

  objc_opt_self();
  v486 = swift_dynamicCastObjCClass();
  v1361 = a1;
  if (v486)
  {
    v487 = v486;
    v488 = [v486 storeFrontIdentifier];
    if (v488)
    {
      v489 = v488;
      v1359 = sub_2146D95B8();
      v1360 = v490;
    }

    else
    {
      v1359 = 0;
      v1360 = 0;
    }

    v543 = [v487 storeIdentifier];
    if (v543)
    {
      v544 = v543;
      v1358 = sub_2146D95B8();
      v546 = v545;
    }

    else
    {
      v1358 = 0;
      v546 = 0;
    }

    v547 = [v487 episodeName];
    if (v547)
    {
      v548 = v547;
      v1353 = sub_2146D95B8();
      v550 = v549;
    }

    else
    {
      v1353 = 0;
      v550 = 0;
    }

    v551 = [v487 podcastName];
    if (v551)
    {
      v552 = v551;
      v1352 = sub_2146D95B8();
      v554 = v553;
    }

    else
    {
      v1352 = 0;
      v554 = 0;
    }

    v555 = [v487 artist];
    if (v555)
    {
      v556 = v555;
      v557 = sub_2146D95B8();
      v559 = v558;
    }

    else
    {
      v557 = 0;
      v559 = 0;
    }

    v560 = [v487 releaseDate];
    if (v560)
    {
      v561 = v1339;
      v562 = v560;
      sub_2146D8AE8();

      v563 = sub_2146D8B08();
      (*(*(v563 - 8) + 56))(v561, 0, 1, v563);
    }

    else
    {
      v564 = sub_2146D8B08();
      (*(*(v564 - 8) + 56))(v1339, 1, 1, v564);
    }

    v565 = [v487 artwork];
    if (v565)
    {
      *&v1414 = v565;
      v566 = v565;
      v567 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v567;
      if (v567)
      {

        v240 = &qword_27C913090;
        v241 = &unk_2146E9DB0;
        v242 = v1339;
        goto LABEL_151;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v574 = [v487 artworkMetadata];
    if (v574)
    {
      *&v1407 = v574;
      v575 = v574;
      v576 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1338);
      v1362 = v576;
      if (v576)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        v240 = &qword_27C913090;
        v241 = &unk_2146E9DB0;
        v242 = v1339;
        goto LABEL_151;
      }

      v583 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v583 - 8) + 56))(v1338, 0, 1, v583);
    }

    else
    {
      v577 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v577 - 8) + 56))(v1338, 1, 1, v577);
    }

    v584 = [v487 offers];
    if (v584)
    {
      v585 = v584;
      v586 = sub_2146D9918();
    }

    else
    {

      v586 = 0;
    }

    v295 = v1334;
    v603 = v1360;
    v1334->isa = v1359;
    v295[1].isa = v603;
    v295[2].isa = v1358;
    v295[3].isa = v546;
    v295[4].isa = v1353;
    v295[5].isa = v550;
    v295[6].isa = v1352;
    v295[7].isa = v554;
    v295[8].isa = v557;
    v295[9].isa = v559;
    v604 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
    sub_21408AC04(v1339, v295 + v604[9], &qword_27C913090, &unk_2146E9DB0);
    v605 = (v295 + v604[10]);
    v606 = v1419;
    v605[4] = v1418;
    v605[5] = v606;
    v605[6] = v1420[0];
    *(v605 + 105) = *(v1420 + 9);
    v607 = v1415;
    *v605 = v1414;
    v605[1] = v607;
    v608 = v1417;
    v605[2] = v1416;
    v605[3] = v608;
    sub_21408AC04(v1338, v295 + v604[11], &qword_27C904878, &unk_2146EDB68);
    *(&v295->isa + v604[12]) = v586;
    v257 = v1356;
    goto LABEL_91;
  }

  objc_opt_self();
  v532 = swift_dynamicCastObjCClass();
  if (v532)
  {
    v533 = v532;
    v534 = [v532 storeFrontIdentifier];
    if (v534)
    {
      v535 = v534;
      v1360 = sub_2146D95B8();
      v537 = v536;
    }

    else
    {
      v1360 = 0;
      v537 = 0;
    }

    v587 = [v533 storeIdentifier];
    if (v587)
    {
      v588 = v587;
      v1359 = sub_2146D95B8();
      v590 = v589;
    }

    else
    {
      v1359 = 0;
      v590 = 0;
    }

    v591 = [v533 name];
    if (v591)
    {
      v592 = v591;
      v1358 = sub_2146D95B8();
      v594 = v593;
    }

    else
    {
      v1358 = 0;
      v594 = 0;
    }

    v595 = [v533 artist];
    if (v595)
    {
      v596 = v595;
      v597 = sub_2146D95B8();
      v599 = v598;
    }

    else
    {
      v597 = 0;
      v599 = 0;
    }

    v600 = [v533 artwork];
    if (v600)
    {
      *&v1414 = v600;
      v601 = v600;
      v602 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v602;
      if (v602)
      {

        goto LABEL_327;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v609 = [v533 artworkMetadata];
    if (v609)
    {
      *&v1407 = v609;
      v610 = v609;
      v611 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1335);
      v1362 = v611;
      if (v611)
      {

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v619 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v619 - 8) + 56))(v1335, 0, 1, v619);
    }

    else
    {
      v612 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v612 - 8) + 56))(v1335, 1, 1, v612);
    }

    v620 = [v533 offers];
    if (v620)
    {
      v621 = v620;
      v622 = sub_2146D9918();
    }

    else
    {

      v622 = 0;
    }

    v247 = v1332;
    *v1332 = v1360;
    v247[1] = v537;
    v247[2] = v1359;
    v247[3] = v590;
    v247[4] = v1358;
    v247[5] = v594;
    v247[6] = v597;
    v247[7] = v599;
    v644 = v1419;
    *(v247 + 8) = v1418;
    *(v247 + 9) = v644;
    *(v247 + 10) = v1420[0];
    *(v247 + 169) = *(v1420 + 9);
    v645 = v1415;
    *(v247 + 4) = v1414;
    *(v247 + 5) = v645;
    v646 = v1417;
    *(v247 + 6) = v1416;
    *(v247 + 7) = v646;
    v647 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
    sub_21408AC04(v1335, v247 + *(v647 + 36), &qword_27C904878, &unk_2146EDB68);
    *(v247 + *(v647 + 40)) = v622;
    v257 = v1356;
LABEL_67:
    swift_storeEnumTagMultiPayload();
    v258 = v247;
LABEL_129:
    v343 = v1354;
    sub_214400A9C(v258, v1354, type metadata accessor for LinkPresentation.SpecializationMetadata);
LABEL_130:
    v344 = v1357;
    v345 = v1355;
    sub_214400A9C(v343, v1357, type metadata accessor for LinkPresentation.SpecializationMetadata);
    (*(v345 + 56))(v344, 0, 1, v257);
    return;
  }

  objc_opt_self();
  v578 = swift_dynamicCastObjCClass();
  if (v578)
  {
    v579 = v578;
    v580 = [v578 storeFrontIdentifier];
    if (v580)
    {
      v581 = v580;
      v1359 = sub_2146D95B8();
      v1360 = v582;
    }

    else
    {
      v1359 = 0;
      v1360 = 0;
    }

    v623 = [v579 storeIdentifier];
    if (v623)
    {
      v624 = v623;
      v1358 = sub_2146D95B8();
      v626 = v625;
    }

    else
    {
      v1358 = 0;
      v626 = 0;
    }

    v627 = [v579 episodeName];
    if (v627)
    {
      v628 = v627;
      v1353 = sub_2146D95B8();
      v630 = v629;
    }

    else
    {
      v1353 = 0;
      v630 = 0;
    }

    v631 = [v579 seasonName];
    if (v631)
    {
      v632 = v631;
      v633 = sub_2146D95B8();
      v635 = v634;
    }

    else
    {
      v633 = 0;
      v635 = 0;
    }

    v636 = [v579 genre];
    if (v636)
    {
      v637 = v636;
      v638 = sub_2146D95B8();
      v640 = v639;
    }

    else
    {
      v638 = 0;
      v640 = 0;
    }

    v641 = [v579 artwork];
    if (v641)
    {
      *&v1414 = v641;
      v642 = v641;
      v643 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v643;
      if (v643)
      {

        goto LABEL_328;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v648 = [v579 artworkMetadata];
    if (v648)
    {
      *&v1407 = v648;
      v298 = v648;
      v649 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1333);
      v1362 = v649;
      if (v649)
      {

LABEL_413:

        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_121;
      }

      v658 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v658 - 8) + 56))(v1333, 0, 1, v658);
    }

    else
    {

      v650 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v650 - 8) + 56))(v1333, 1, 1, v650);
    }

    v659 = v1330;
    v660 = v1360;
    *v1330 = v1359;
    *(v659 + 1) = v660;
    *(v659 + 2) = v1358;
    *(v659 + 3) = v626;
    *(v659 + 4) = v1353;
    *(v659 + 5) = v630;
    *(v659 + 6) = v633;
    *(v659 + 7) = v635;
    *(v659 + 8) = v638;
    *(v659 + 9) = v640;
    v661 = v1419;
    *(v659 + 9) = v1418;
    *(v659 + 10) = v661;
    *(v659 + 11) = v1420[0];
    *(v659 + 185) = *(v1420 + 9);
    v662 = v1415;
    *(v659 + 5) = v1414;
    *(v659 + 6) = v662;
    v663 = v1417;
    *(v659 + 7) = v1416;
    *(v659 + 8) = v663;
    v664 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
    sub_21408AC04(v1333, &v659[*(v664 + 40)], &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
LABEL_372:
    swift_storeEnumTagMultiPayload();
    v258 = v659;
    goto LABEL_129;
  }

  objc_opt_self();
  v613 = swift_dynamicCastObjCClass();
  if (v613)
  {
    v614 = v613;
    v615 = [v613 storeFrontIdentifier];
    if (v615)
    {
      v616 = v615;
      v1360 = sub_2146D95B8();
      v618 = v617;
    }

    else
    {
      v1360 = 0;
      v618 = 0;
    }

    v665 = [v614 storeIdentifier];
    if (v665)
    {
      v666 = v665;
      v1359 = sub_2146D95B8();
      v668 = v667;
    }

    else
    {
      v1359 = 0;
      v668 = 0;
    }

    v669 = [v614 name];
    if (v669)
    {
      v670 = v669;
      v671 = sub_2146D95B8();
      v673 = v672;
    }

    else
    {
      v671 = 0;
      v673 = 0;
    }

    v674 = [v614 genre];
    if (v674)
    {
      v675 = v674;
      v676 = sub_2146D95B8();
      v678 = v677;
    }

    else
    {
      v676 = 0;
      v678 = 0;
    }

    v679 = [v614 artwork];
    if (v679)
    {
      *&v1414 = v679;
      v680 = v679;
      v681 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v681;
      if (v681)
      {
LABEL_385:

        goto LABEL_327;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v682 = [v614 artworkMetadata];
    if (v682)
    {
      *&v1407 = v682;
      v298 = v682;
      v683 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1331);
      v1362 = v683;
      if (v683)
      {
LABEL_390:

LABEL_412:

        goto LABEL_413;
      }

      v691 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v691 - 8) + 56))(v1331, 0, 1, v691);
    }

    else
    {

      v684 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v684 - 8) + 56))(v1331, 1, 1, v684);
    }

    v692 = v1327;
    *v1327 = v1360;
    v692[1] = v618;
    v692[2] = v1359;
    v692[3] = v668;
    v692[4] = v671;
    v692[5] = v673;
    v692[6] = v676;
    v692[7] = v678;
    v693 = v1419;
    *(v692 + 8) = v1418;
    *(v692 + 9) = v693;
    *(v692 + 10) = v1420[0];
    *(v692 + 169) = *(v1420 + 9);
    v694 = v1415;
    *(v692 + 4) = v1414;
    *(v692 + 5) = v694;
    v695 = v1417;
    *(v692 + 6) = v1416;
    *(v692 + 7) = v695;
    v696 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
    sub_21408AC04(v1331, v692 + *(v696 + 36), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
LABEL_397:
    swift_storeEnumTagMultiPayload();
    v258 = v692;
    goto LABEL_129;
  }

  objc_opt_self();
  v651 = swift_dynamicCastObjCClass();
  if (v651)
  {
    v652 = v651;
    v653 = [v651 storeFrontIdentifier];
    if (v653)
    {
      v654 = v653;
      v655 = sub_2146D95B8();
      v657 = v656;
    }

    else
    {
      v655 = 0;
      v657 = 0;
    }

    v697 = [v652 storeIdentifier];
    if (v697)
    {
      v698 = v697;
      v699 = sub_2146D95B8();
      v701 = v700;
    }

    else
    {
      v699 = 0;
      v701 = 0;
    }

    v702 = [v652 name];
    if (v702)
    {
      v703 = v702;
      v704 = sub_2146D95B8();
      v706 = v705;
    }

    else
    {
      v704 = 0;
      v706 = 0;
    }

    v707 = [v652 artwork];
    if (v707)
    {
      *&v1414 = v707;
      v708 = v707;
      v709 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v709;
      if (v709)
      {

        goto LABEL_327;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v710 = [v652 artworkMetadata];
    if (v710)
    {
      *&v1407 = v710;
      v298 = v710;
      v711 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1328);
      v1362 = v711;
      if (v711)
      {
        goto LABEL_412;
      }

      v719 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v719 - 8) + 56))(v1328, 0, 1, v719);
    }

    else
    {

      v712 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v712 - 8) + 56))(v1328, 1, 1, v712);
    }

    v247 = v1321;
    *v1321 = v655;
    v247[1] = v657;
    v247[2] = v699;
    v247[3] = v701;
    v247[4] = v704;
    v247[5] = v706;
    v720 = v1419;
    *(v247 + 7) = v1418;
    *(v247 + 8) = v720;
    *(v247 + 9) = v1420[0];
    *(v247 + 153) = *(v1420 + 9);
    v721 = v1415;
    *(v247 + 3) = v1414;
    *(v247 + 4) = v721;
    v722 = v1417;
    *(v247 + 5) = v1416;
    *(v247 + 6) = v722;
    v723 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
    sub_21408AC04(v1328, v247 + *(v723 + 32), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
    goto LABEL_67;
  }

  objc_opt_self();
  v685 = swift_dynamicCastObjCClass();
  if (v685)
  {
    v686 = v685;
    v687 = [v685 storeFrontIdentifier];
    if (v687)
    {
      v688 = v687;
      v1360 = sub_2146D95B8();
      v690 = v689;
    }

    else
    {
      v1360 = 0;
      v690 = 0;
    }

    v724 = [v686 storeIdentifier];
    if (v724)
    {
      v725 = v724;
      v1359 = sub_2146D95B8();
      v727 = v726;
    }

    else
    {
      v1359 = 0;
      v727 = 0;
    }

    v728 = [v686 name];
    if (v728)
    {
      v729 = v728;
      v730 = sub_2146D95B8();
      v732 = v731;
    }

    else
    {
      v730 = 0;
      v732 = 0;
    }

    v733 = [v686 genre];
    if (v733)
    {
      v734 = v733;
      v735 = sub_2146D95B8();
      v737 = v736;
    }

    else
    {
      v735 = 0;
      v737 = 0;
    }

    v738 = [v686 artwork];
    if (v738)
    {
      *&v1414 = v738;
      v680 = v738;
      v739 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v739;
      if (v739)
      {
        goto LABEL_385;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v740 = [v686 artworkMetadata];
    if (v740)
    {
      *&v1407 = v740;
      v298 = v740;
      v741 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1322);
      v1362 = v741;
      if (v741)
      {
        goto LABEL_390;
      }

      v742 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v742 - 8) + 56))(v1322, 0, 1, v742);
    }

    else
    {

      v743 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v743 - 8) + 56))(v1322, 1, 1, v743);
    }

    sub_2144008B4(&v1407);
    v692 = v1319;
    *v1319 = v1360;
    v692[1] = v690;
    v692[2] = v1359;
    v692[3] = v727;
    v692[4] = v730;
    v692[5] = v732;
    v692[6] = v735;
    v692[7] = v737;
    v744 = v1419;
    *(v692 + 8) = v1418;
    *(v692 + 9) = v744;
    *(v692 + 10) = v1420[0];
    *(v692 + 169) = *(v1420 + 9);
    v745 = v1415;
    *(v692 + 4) = v1414;
    *(v692 + 5) = v745;
    v746 = v1417;
    *(v692 + 6) = v1416;
    *(v692 + 7) = v746;
    v747 = type metadata accessor for LinkPresentation.MovieMetadata(0);
    sub_21408AC04(v1322, v692 + v747[9], &qword_27C904878, &unk_2146EDB68);
    v748 = (v692 + v747[10]);
    v749 = v1412;
    v748[4] = v1411;
    v748[5] = v749;
    v748[6] = v1413[0];
    *(v748 + 105) = *(v1413 + 9);
    v750 = v1408;
    *v748 = v1407;
    v748[1] = v750;
    v751 = v1410;
    v748[2] = v1409;
    v748[3] = v751;
    v752 = (v692 + v747[11]);
    *v752 = 0;
    v752[1] = 0;
    v257 = v1356;
    goto LABEL_397;
  }

  objc_opt_self();
  v713 = swift_dynamicCastObjCClass();
  if (v713)
  {
    v714 = v713;
    v715 = [v713 storeFrontIdentifier];
    if (v715)
    {
      v716 = v715;
      v1360 = sub_2146D95B8();
      v718 = v717;
    }

    else
    {
      v1360 = 0;
      v718 = 0;
    }

    v756 = [v714 storeIdentifier];
    if (v756)
    {
      v757 = v756;
      v1359 = sub_2146D95B8();
      v759 = v758;
    }

    else
    {
      v1359 = 0;
      v759 = 0;
    }

    v760 = [v714 name];
    if (v760)
    {
      v761 = v760;
      v762 = sub_2146D95B8();
      v764 = v763;
    }

    else
    {
      v762 = 0;
      v764 = 0;
    }

    v765 = [v714 genre];
    if (v765)
    {
      v766 = v765;
      v767 = sub_2146D95B8();
      v769 = v768;
    }

    else
    {
      v767 = 0;
      v769 = 0;
    }

    v770 = [v714 artwork];
    if (v770)
    {
      *&v1414 = v770;
      v680 = v770;
      v771 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v771;
      if (v771)
      {
        goto LABEL_385;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v772 = [v714 artworkMetadata];
    if (v772)
    {
      *&v1407 = v772;
      v298 = v772;
      v773 = v1362;
      sub_213FC29FC(&v1407, &v1400, v1320);
      v1362 = v773;
      if (v773)
      {
        goto LABEL_390;
      }

      v774 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v774 - 8) + 56))(v1320, 0, 1, v774);
    }

    else
    {

      v775 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v775 - 8) + 56))(v1320, 1, 1, v775);
    }

    v692 = v1318;
    *v1318 = v1360;
    v692[1] = v718;
    v692[2] = v1359;
    v692[3] = v759;
    v692[4] = v762;
    v692[5] = v764;
    v692[6] = v767;
    v692[7] = v769;
    v776 = v1419;
    *(v692 + 8) = v1418;
    *(v692 + 9) = v776;
    *(v692 + 10) = v1420[0];
    *(v692 + 169) = *(v1420 + 9);
    v777 = v1415;
    *(v692 + 4) = v1414;
    *(v692 + 5) = v777;
    v778 = v1417;
    *(v692 + 6) = v1416;
    *(v692 + 7) = v778;
    v779 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
    sub_21408AC04(v1320, v692 + *(v779 + 36), &qword_27C904878, &unk_2146EDB68);
    v257 = v1356;
    goto LABEL_397;
  }

  objc_opt_self();
  v1358 = swift_dynamicCastObjCClass();
  if (v1358)
  {
    *&v1400 = MEMORY[0x277D84F90];
    v753 = [(objc_class *)v1358 encodedTokens];
    if (v753)
    {
      v754 = v753;
      sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
      v755 = sub_2146D9488();
    }

    else
    {
      v755 = sub_214046834(MEMORY[0x277D84F90]);
    }

    v787 = sub_21464225C(v755);

    v788 = 0;
    v789 = *(v787 + 64);
    v1360 = (v787 + 64);
    v1353 = v787;
    v790 = 1 << *(v787 + 32);
    v791 = -1;
    if (v790 < 64)
    {
      v791 = ~(-1 << v790);
    }

    v792 = v791 & v789;
    v793 = (v790 + 63) >> 6;
    if ((v791 & v789) != 0)
    {
      while (1)
      {
        v794 = v788;
LABEL_476:
        v796 = __clz(__rbit64(v792));
        v792 &= v792 - 1;
        v797 = v796 | (v794 << 6);
        v798 = (*(v1353 + 6) + 16 * v797);
        v800 = *v798;
        v799 = v798[1];
        sub_2140537E4(*(v1353 + 7) + 32 * v797, &v1407);
        *&v1414 = v800;
        *(&v1414 + 1) = v799;
        sub_213FDC730(&v1407, &v1415);

        v1359 = v794;
LABEL_477:
        v1428 = v1414;
        v1429 = v1415;
        v1430 = v1416;
        v801 = *(&v1414 + 1);
        if (!*(&v1414 + 1))
        {
          break;
        }

        v802 = v1428;
        v803 = sub_2146D9588();
        v804 = v1358;
        v805 = [(objc_class *)v1358 tokenDataForHandle:v803];

        v806 = sub_2146D8A58();
        v808 = v807;

        v809 = sub_2146D9588();
        v810 = [(objc_class *)v804 shareURLForHandle:v809];

        v811 = v1324;
        sub_2146D88E8();

        v812 = v1362;
        sub_2145A9478(v806, v808, v811, 0, 0, v1329);
        v1362 = v812;
        if (v812)
        {

          __swift_destroy_boxed_opaque_existential_1(&v1429);
          return;
        }

        v813 = v1329;
        v814 = v1323;
        sub_2144009D8(v1329, v1323, type metadata accessor for CloudKitSharingToken);
        v815 = v1325;
        sub_214070530(v802, v801, v814, v1325);
        v816 = v1326;
        sub_2144009D8(v815, v1326, type metadata accessor for LinkPresentation.EncodedToken);
        v755 = &v1400;
        sub_2143E330C(v816);
        sub_214400B04(v815, type metadata accessor for LinkPresentation.EncodedToken);
        sub_214400B04(v813, type metadata accessor for CloudKitSharingToken);
        __swift_destroy_boxed_opaque_existential_1(&v1429);
        v788 = v1359;
        if (!v792)
        {
          goto LABEL_469;
        }
      }

      v817 = [(objc_class *)v1358 application];
      if (v817)
      {
        v818 = v817;
        v819 = sub_2146D95B8();
        v821 = v820;
      }

      else
      {
        v819 = 0;
        v821 = 0;
      }

      v826 = [(objc_class *)v1358 kind];
      if (v826)
      {
        v827 = v826;
        v828 = sub_2146D95B8();
        v830 = v829;
      }

      else
      {
        v828 = 0;
        v830 = 0;
      }

      v831 = [(objc_class *)v1358 title];
      if (v831)
      {
        v832 = v831;
        v833 = sub_2146D95B8();
        v835 = v834;
      }

      else
      {
        v833 = 0;
        v835 = 0;
      }

      v836 = [(objc_class *)v1358 icon];
      if (v836)
      {
        v837 = v836;
        *&v1414 = v836;
        v838 = v1362;
        sub_213FC2A4C(&v1414, &v1407, &v1428);
        v1362 = v838;
        if (v838)
        {

          goto LABEL_675;
        }

        nullsub_1(&v1428);
      }

      else
      {
        sub_2144008B4(&v1428);
      }

      v1418 = v1432;
      v1419 = v1433;
      v1420[0] = v1434[0];
      *(v1420 + 9) = *(v1434 + 9);
      v1414 = v1428;
      v1415 = v1429;
      v1416 = v1430;
      v1417 = v1431;
      v852 = [(objc_class *)v1358 thumbnail];
      if (v852)
      {
        v853 = v852;
        *&v1393 = v852;
        v854 = v1362;
        sub_213FC2A4C(&v1393, &v1440, &v1407);
        v1362 = v854;
        if (v854)
        {

          sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

          goto LABEL_675;
        }

        nullsub_1(&v1407);
      }

      else
      {

        sub_2144008B4(&v1407);
      }

      v863 = v1400;
      *(&v1366[4] + 7) = v1411;
      *(&v1366[5] + 7) = v1412;
      *(&v1366[6] + 7) = v1413[0];
      v1366[7] = *(v1413 + 9);
      *(v1366 + 7) = v1407;
      *(&v1366[1] + 7) = v1408;
      *(&v1366[2] + 7) = v1409;
      *(&v1366[3] + 7) = v1410;
      v295 = v1306;
      *v1306 = v819;
      v295[1].isa = v821;
      v295[2].isa = v828;
      v295[3].isa = v830;
      v295[4].isa = v833;
      v295[5].isa = v835;
      v864 = v1417;
      *&v295[10].isa = v1416;
      *&v295[12].isa = v864;
      v865 = v1415;
      *&v295[6].isa = v1414;
      *&v295[8].isa = v865;
      *(&v295[19].isa + 1) = *(v1420 + 9);
      v866 = v1420[0];
      v867 = v1418;
      *&v295[16].isa = v1419;
      *&v295[18].isa = v866;
      *&v295[14].isa = v867;
      v868 = v1366[0];
      v869 = v1366[1];
      v870 = v1366[2];
      *(&v295[27].isa + 1) = v1366[3];
      *(&v295[25].isa + 1) = v870;
      *(&v295[23].isa + 1) = v869;
      *(&v295[21].isa + 1) = v868;
      v871 = v1366[4];
      v872 = v1366[5];
      v873 = v1366[7];
      *(&v295[33].isa + 1) = v1366[6];
      *(&v295[35].isa + 1) = v873;
      *(&v295[31].isa + 1) = v872;
      *(&v295[29].isa + 1) = v871;
      v295[38].isa = v863;
      v257 = v1356;
      goto LABEL_91;
    }

LABEL_469:
    if (v793 <= &v788->isa + 1)
    {
      v795 = &v788->isa + 1;
    }

    else
    {
      v795 = v793;
    }

    v1359 = (v795 - 1);
    while (1)
    {
      v794 = (&v788->isa + 1);
      if (__OFADD__(v788, 1))
      {
        break;
      }

      if (v794 >= v793)
      {
        v792 = 0;
        v1416 = 0u;
        v1415 = 0u;
        v1414 = 0u;
        goto LABEL_477;
      }

      v792 = *&v1360[8 * v794];
      v788 = (v788 + 1);
      if (v792)
      {
        goto LABEL_476;
      }
    }

    __break(1u);
    goto LABEL_528;
  }

  objc_opt_self();
  v780 = swift_dynamicCastObjCClass();
  if (v780)
  {
    v781 = v780;
    v782 = [v780 title];
    if (v782)
    {
      v783 = v782;
      v784 = sub_2146D95B8();
      v786 = v785;
    }

    else
    {
      v784 = 0;
      v786 = 0;
    }

    v839 = [v781 subtitle];
    if (v839)
    {
      v840 = v839;
      v841 = sub_2146D95B8();
      v843 = v842;
    }

    else
    {
      v841 = 0;
      v843 = 0;
    }

    v844 = [v781 action];
    if (v844)
    {
      v845 = v844;
      v846 = sub_2146D95B8();
      v848 = v847;
    }

    else
    {
      v846 = 0;
      v848 = 0;
    }

    v849 = [v781 image];
    if (v849)
    {
      v850 = v849;
      *&v1414 = v849;
      v851 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v851;
      if (v851)
      {

        goto LABEL_327;
      }

      nullsub_1(&v1428);
    }

    else
    {

      sub_2144008B4(&v1428);
    }

    v692 = v1289;
    *v1289 = v784;
    v692[1] = v786;
    v692[2] = v841;
    v692[3] = v843;
    v692[4] = v846;
    v692[5] = v848;
    v855 = v1433;
    *(v692 + 7) = v1432;
    *(v692 + 8) = v855;
    *(v692 + 9) = v1434[0];
    *(v692 + 153) = *(v1434 + 9);
    v856 = v1429;
    *(v692 + 3) = v1428;
    *(v692 + 4) = v856;
    v857 = v1431;
    *(v692 + 5) = v1430;
    *(v692 + 6) = v857;
    v257 = v1356;
    goto LABEL_397;
  }

  objc_opt_self();
  v822 = swift_dynamicCastObjCClass();
  if (v822)
  {
    v792 = v822;
    v823 = [v822 game];
    if (v823)
    {
      v824 = v823;
      v793 = sub_2146D95B8();
      v755 = v825;
    }

    else
    {
      v793 = 0;
      v755 = 0;
    }

    v874 = [v792 image];
    if (!v874)
    {
      sub_2144008B4(&v1428);
LABEL_529:
      v1418 = v1432;
      v1419 = v1433;
      v1420[0] = v1434[0];
      *(v1420 + 9) = *(v1434 + 9);
      v1414 = v1428;
      v1415 = v1429;
      v1416 = v1430;
      v1417 = v1431;
      v876 = [v792 icon];
      if (v876)
      {
        v877 = v876;
        *&v1400 = v876;
        v878 = v1362;
        sub_213FC2A4C(&v1400, &v1393, &v1407);
        v1362 = v878;
        if (v878)
        {
          sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

          goto LABEL_675;
        }

        nullsub_1(&v1407);
      }

      else
      {
        sub_2144008B4(&v1407);
      }

      v1404 = v1411;
      v1405 = v1412;
      v1406[0] = v1413[0];
      *(v1406 + 9) = *(v1413 + 9);
      v1400 = v1407;
      v1401 = v1408;
      v1402 = v1409;
      v1403 = v1410;
      v886 = [v792 numberOfPlayers];
      v887 = [v792 minimumNumberOfPlayers];
      v888 = [v792 maximumNumberOfPlayers];

      *(&v1367[4] + 7) = v1404;
      *(&v1367[5] + 7) = v1405;
      *(&v1367[6] + 7) = v1406[0];
      v1367[7] = *(v1406 + 9);
      *(v1367 + 7) = v1400;
      *(&v1367[1] + 7) = v1401;
      *(&v1367[2] + 7) = v1402;
      *(&v1367[3] + 7) = v1403;
      v247 = v1291;
      *v1291 = v793;
      v247[1] = v755;
      *(v247 + 121) = *(v1420 + 9);
      v889 = v1420[0];
      v890 = v1418;
      *(v247 + 6) = v1419;
      *(v247 + 7) = v889;
      v891 = v1416;
      *(v247 + 4) = v1417;
      *(v247 + 5) = v890;
      v892 = v1414;
      *(v247 + 2) = v1415;
      *(v247 + 3) = v891;
      *(v247 + 1) = v892;
      v893 = v1367[0];
      v894 = v1367[1];
      v895 = v1367[2];
      *(v247 + 185) = v1367[3];
      *(v247 + 169) = v895;
      *(v247 + 153) = v894;
      *(v247 + 137) = v893;
      v896 = v1367[4];
      v897 = v1367[5];
      v898 = v1367[6];
      *(v247 + 249) = v1367[7];
      *(v247 + 233) = v898;
      *(v247 + 217) = v897;
      *(v247 + 201) = v896;
      *(v247 + 67) = v886;
      *(v247 + 68) = v887;
      *(v247 + 69) = v888;
      v257 = v1356;
      goto LABEL_67;
    }

    *&v1414 = v874;
    v794 = v874;
    v875 = v1362;
    sub_213FC2A4C(&v1414, &v1407, &v1428);
    v1362 = v875;
    if (v875)
    {

      goto LABEL_675;
    }

LABEL_528:

    nullsub_1(&v1428);
    goto LABEL_529;
  }

  objc_opt_self();
  v858 = swift_dynamicCastObjCClass();
  if (v858)
  {
    v859 = v858;
    v860 = [v858 name];
    if (v860)
    {
      v861 = v860;
      v1348 = sub_2146D95B8();
      v1360 = v862;
    }

    else
    {
      v1348 = 0;
      v1360 = 0;
    }

    v899 = [v859 address];
    if (v899)
    {
      v900 = v899;
      v1347 = sub_2146D95B8();
      v1359 = v901;
    }

    else
    {
      v1347 = 0;
      v1359 = 0;
    }

    v902 = [v859 addressComponents];
    if (v902)
    {
      v903 = v902;
      sub_2144001E4(v903, &v1407);

      v1418 = v1411;
      v1419 = v1412;
      v1420[0] = v1413[0];
      v1420[1] = v1413[1];
      v1414 = v1407;
      v1415 = v1408;
      v1416 = v1409;
      v1417 = v1410;
      nullsub_1(&v1414);
      v1432 = v1418;
      v1433 = v1419;
      v1434[0] = v1420[0];
      v1434[1] = v1420[1];
      v1428 = v1414;
      v1429 = v1415;
      v1430 = v1416;
      v1431 = v1417;
    }

    else
    {
      sub_214400940(&v1428);
    }

    v904 = [v859 category];
    if (v904)
    {
      v905 = v904;
      v1346 = sub_2146D95B8();
      v907 = v906;
    }

    else
    {
      v1346 = 0;
      v907 = 0;
    }

    v908 = [v859 categoryIcon];
    if (v908)
    {
      v909 = v908;
      *&v1414 = v908;
      v910 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1440);
      v1362 = v910;
      if (v910)
      {
        sub_213FB2DF4(&v1428, &qword_27C904890, &qword_2146EDB90);

        return;
      }

      nullsub_1(&v1440);
    }

    else
    {
      sub_2144008B4(&v1440);
    }

    v1425 = v1444;
    v1426 = v1445;
    v1427[0] = v1446[0];
    *(v1427 + 9) = *(v1446 + 9);
    v1421 = v1440;
    v1422 = v1441;
    v1423 = v1442;
    v1424 = v1443;
    v911 = [v859 searchQuery];
    if (v911)
    {
      v912 = v911;
      v1345 = sub_2146D95B8();
      v1358 = v913;
    }

    else
    {
      v1345 = 0;
      v1358 = 0;
    }

    v914 = [v859 directionsType];
    if (v914)
    {
      v915 = v914;
      v1344 = sub_2146D95B8();
      v1353 = v916;
    }

    else
    {
      v1344 = 0;
      v1353 = 0;
    }

    v917 = [v859 transportType];
    v918 = v917;
    if (v917)
    {
      v1343 = [v917 unsignedIntegerValue];
    }

    else
    {
      v1343 = 0;
    }

    v919 = [v859 directionsSourceAddress];
    if (v919)
    {
      v920 = v919;
      v1342 = sub_2146D95B8();
      v1352 = v921;
    }

    else
    {
      v1342 = 0;
      v1352 = 0;
    }

    v922 = [v859 directionsSourceAddressComponents];
    v923 = v1362;
    sub_2143E3A0C(v922, &v1407);

    v1418 = v1411;
    v1419 = v1412;
    v1420[0] = v1413[0];
    v1420[1] = v1413[1];
    v1414 = v1407;
    v1415 = v1408;
    v1416 = v1409;
    v1417 = v1410;
    v924 = [v859 directionsSourceLocationName];
    if (v924)
    {
      v925 = v924;
      v1341 = sub_2146D95B8();
      v1351 = v926;
    }

    else
    {
      v1341 = 0;
      v1351 = 0;
    }

    v927 = [v859 directionsDestinationAddress];
    if (v927)
    {
      v928 = v927;
      v1340 = sub_2146D95B8();
      v1350 = v929;
    }

    else
    {
      v1340 = 0;
      v1350 = 0;
    }

    v930 = [v859 directionsDestinationAddressComponents];
    sub_2143E3A0C(v930, &v1393);

    v1404 = v1397;
    v1405 = v1398;
    v1406[0] = v1399[0];
    v1406[1] = v1399[1];
    v1400 = v1393;
    v1401 = v1394;
    v1402 = v1395;
    v1403 = v1396;
    v931 = [v859 directionsDestinationLocationName];
    if (v931)
    {
      v932 = v931;
      v1339 = sub_2146D95B8();
      v1349 = v933;
    }

    else
    {
      v1339 = 0;
      v1349 = 0;
    }

    v934 = [v859 distance];
    v935 = v934;
    if (v934)
    {
      [v934 doubleValue];
      v937 = v936;
    }

    else
    {
      v937 = 0;
    }

    v938 = [v859 image];
    sub_2143E3984(v938, v1391);
    if (v923)
    {
      sub_213FB2DF4(&v1400, &qword_27C904890, &qword_2146EDB90);
      sub_213FB2DF4(&v1414, &qword_27C904890, &qword_2146EDB90);
      sub_213FB2DF4(&v1421, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1428, &qword_27C904890, &qword_2146EDB90);

      return;
    }

    v1388 = v1391[4];
    v1389 = v1391[5];
    v1390[0] = v1392[0];
    *(v1390 + 9) = *(v1392 + 9);
    v1384 = v1391[0];
    v1385 = v1391[1];
    v1386 = v1391[2];
    v1387 = v1391[3];
    v939 = [v859 darkImage];
    sub_2143E3984(v939, v1382);

    v1379 = v1382[4];
    v1380 = v1382[5];
    v1381[0] = v1383[0];
    *(v1381 + 9) = *(v1383 + 9);
    v1375 = v1382[0];
    v1376 = v1382[1];
    v1377 = v1382[2];
    v1378 = v1382[3];
    v954 = [v859 storeFrontImage];
    sub_2143E3984(v954, v1373);
    v1362 = 0;
    v977 = v935 == 0;
    v978 = v918 == 0;

    v979 = [v859 isPointOfInterest];
    v1372 = v978;
    v1371 = v977;
    *(&v1370[4] + 7) = v1388;
    *(&v1370[5] + 7) = v1389;
    *(&v1370[6] + 7) = v1390[0];
    v1370[7] = *(v1390 + 9);
    *(v1370 + 7) = v1384;
    *(&v1370[1] + 7) = v1385;
    *(&v1370[2] + 7) = v1386;
    *(&v1370[3] + 7) = v1387;
    *(&v1369[4] + 7) = v1379;
    *(&v1369[5] + 7) = v1380;
    *(&v1369[6] + 7) = v1381[0];
    v1369[7] = *(v1381 + 9);
    *(v1369 + 7) = v1375;
    *(&v1369[1] + 7) = v1376;
    *(&v1369[2] + 7) = v1377;
    *(&v1369[3] + 7) = v1378;
    *(&v1368[3] + 7) = v1373[3];
    *(&v1368[2] + 7) = v1373[2];
    *(&v1368[1] + 7) = v1373[1];
    *(v1368 + 7) = v1373[0];
    v1368[7] = *(v1374 + 9);
    *(&v1368[6] + 7) = v1374[0];
    *(&v1368[5] + 7) = v1373[5];
    *(&v1368[4] + 7) = v1373[4];
    v659 = v1317;
    v980 = v1360;
    *v1317 = v1348;
    *(v659 + 1) = v980;
    v981 = v1359;
    *(v659 + 2) = v1347;
    *(v659 + 3) = v981;
    v982 = v1433;
    *(v659 + 6) = v1432;
    *(v659 + 7) = v982;
    v983 = v1434[1];
    *(v659 + 8) = v1434[0];
    *(v659 + 9) = v983;
    v984 = v1429;
    *(v659 + 2) = v1428;
    *(v659 + 3) = v984;
    v985 = v1431;
    *(v659 + 4) = v1430;
    *(v659 + 5) = v985;
    *(v659 + 20) = v1346;
    *(v659 + 21) = v907;
    v986 = v1421;
    v987 = v1422;
    v988 = v1424;
    *(v659 + 13) = v1423;
    *(v659 + 14) = v988;
    *(v659 + 11) = v986;
    *(v659 + 12) = v987;
    v989 = v1425;
    v990 = v1426;
    v991 = v1427[0];
    *(v659 + 281) = *(v1427 + 9);
    *(v659 + 16) = v990;
    *(v659 + 17) = v991;
    *(v659 + 15) = v989;
    v992 = v1358;
    *(v659 + 38) = v1345;
    *(v659 + 39) = v992;
    v993 = v1353;
    *(v659 + 40) = v1344;
    *(v659 + 41) = v993;
    *(v659 + 42) = v1343;
    v659[344] = v978;
    v994 = v1352;
    *(v659 + 44) = v1342;
    *(v659 + 45) = v994;
    v995 = v1414;
    v996 = v1415;
    v997 = v1417;
    *(v659 + 25) = v1416;
    *(v659 + 26) = v997;
    *(v659 + 23) = v995;
    *(v659 + 24) = v996;
    v998 = v1418;
    v999 = v1419;
    v1000 = v1420[1];
    *(v659 + 29) = v1420[0];
    *(v659 + 30) = v1000;
    *(v659 + 27) = v998;
    *(v659 + 28) = v999;
    v1001 = v1351;
    *(v659 + 62) = v1341;
    *(v659 + 63) = v1001;
    *(v659 + 64) = v1340;
    *(v659 + 65) = v1350;
    v1002 = v1400;
    v1003 = v1401;
    v1004 = v1403;
    *(v659 + 35) = v1402;
    *(v659 + 36) = v1004;
    *(v659 + 33) = v1002;
    *(v659 + 34) = v1003;
    v1005 = v1404;
    v1006 = v1405;
    v1007 = v1406[1];
    *(v659 + 39) = v1406[0];
    *(v659 + 40) = v1007;
    *(v659 + 37) = v1005;
    *(v659 + 38) = v1006;
    *(v659 + 82) = v1339;
    *(v659 + 83) = v1349;
    *(v659 + 84) = v937;
    v659[680] = v977;
    v1008 = v1370[0];
    v1009 = v1370[1];
    v1010 = v1370[3];
    *(v659 + 713) = v1370[2];
    *(v659 + 729) = v1010;
    *(v659 + 681) = v1008;
    *(v659 + 697) = v1009;
    v1011 = v1370[4];
    v1012 = v1370[5];
    v1013 = v1370[7];
    *(v659 + 777) = v1370[6];
    *(v659 + 793) = v1013;
    *(v659 + 745) = v1011;
    *(v659 + 761) = v1012;
    v1014 = v1369[0];
    v1015 = v1369[1];
    v1016 = v1369[3];
    *(v659 + 841) = v1369[2];
    *(v659 + 857) = v1016;
    *(v659 + 809) = v1014;
    *(v659 + 825) = v1015;
    v1017 = v1369[4];
    v1018 = v1369[5];
    v1019 = v1369[7];
    *(v659 + 905) = v1369[6];
    *(v659 + 921) = v1019;
    *(v659 + 873) = v1017;
    *(v659 + 889) = v1018;
    v1020 = v1368[0];
    v1021 = v1368[1];
    v1022 = v1368[3];
    *(v659 + 969) = v1368[2];
    *(v659 + 985) = v1022;
    *(v659 + 937) = v1020;
    *(v659 + 953) = v1021;
    v1023 = v1368[4];
    v1024 = v1368[5];
    v1025 = v1368[7];
    *(v659 + 1033) = v1368[6];
    *(v659 + 1049) = v1025;
    *(v659 + 1001) = v1023;
    *(v659 + 1017) = v1024;
    v659[1065] = v979;
    v257 = v1356;
    goto LABEL_372;
  }

  objc_opt_self();
  v879 = swift_dynamicCastObjCClass();
  if (v879)
  {
    v880 = v879;
    v881 = [v879 name];
    if (v881)
    {
      v882 = v881;
      v883 = sub_2146D95B8();
      v885 = v884;
    }

    else
    {
      v883 = 0;
      v885 = 0;
    }

    v947 = [v880 numberOfItems];
    v948 = [v880 icon];
    if (v948)
    {
      v949 = v948;
      *&v1414 = v948;
      v950 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v950;
      if (v950)
      {

        goto LABEL_675;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v951 = [v880 image];
    if (v951)
    {
      v952 = v951;
      *&v1400 = v951;
      v953 = v1362;
      sub_213FC2A4C(&v1400, &v1393, &v1407);
      v1362 = v953;
      if (v953)
      {
        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_675;
      }

      nullsub_1(&v1407);
    }

    else
    {
      sub_2144008B4(&v1407);
    }

    v1404 = v1411;
    v1405 = v1412;
    v1406[0] = v1413[0];
    *(v1406 + 9) = *(v1413 + 9);
    v1400 = v1407;
    v1401 = v1408;
    v1402 = v1409;
    v1403 = v1410;
    v962 = [v880 darkImage];
    if (v962)
    {
      v963 = v962;
      *&v1440 = v962;
      v964 = v1362;
      sub_213FC2A4C(&v1440, &v1421, &v1393);
      v1362 = v964;
      if (v964)
      {
        sub_213FB2DF4(&v1400, &qword_27C904868, &qword_2146EDB58);
        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      nullsub_1(&v1393);
    }

    else
    {
      sub_2144008B4(&v1393);
    }

    v1444 = v1397;
    v1445 = v1398;
    v1446[0] = v1399[0];
    *(v1446 + 9) = *(v1399 + 9);
    v1440 = v1393;
    v1441 = v1394;
    v1442 = v1395;
    v1443 = v1396;
    v973 = [v880 addresses];
    if (v973)
    {
      v974 = v973;
      sub_21404A8B8(0, &qword_27C912C20, 0x277CBDB78);
      v975 = sub_2146D9918();

      v976 = v1362;
      v1360 = sub_2143E3784(v975);
      v1362 = v976;
    }

    else
    {
      v1360 = MEMORY[0x277D84F90];
    }

    v1026 = [v880 publisherName];
    if (v1026)
    {
      v1027 = v1026;
      v1358 = sub_2146D95B8();
      v1359 = v1028;
    }

    else
    {
      v1358 = 0;
      v1359 = 0;
    }

    v1029 = [v880 publisherIcon];
    v1030 = v1362;
    sub_2143E3984(v1029, v1438);
    v1362 = v1030;
    if (v1030)
    {
      sub_213FB2DF4(&v1440, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1400, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

      return;
    }

    *(&v1437[4] + 4) = v1418;
    *(&v1437[5] + 4) = v1419;
    *(&v1437[6] + 4) = v1420[0];
    *(&v1437[6] + 13) = *(v1420 + 9);
    *(v1437 + 4) = v1414;
    *(&v1437[1] + 4) = v1415;
    *(&v1437[2] + 4) = v1416;
    *(&v1437[3] + 4) = v1417;
    *(&v1436[3] + 7) = v1403;
    *(&v1436[2] + 7) = v1402;
    *(&v1436[1] + 7) = v1401;
    *(v1436 + 7) = v1400;
    v1436[7] = *(v1406 + 9);
    *(&v1436[6] + 7) = v1406[0];
    *(&v1436[5] + 7) = v1405;
    *(&v1436[4] + 7) = v1404;
    *(&v1435[3] + 7) = v1443;
    *(&v1435[2] + 7) = v1442;
    *(&v1435[1] + 7) = v1441;
    *(v1435 + 7) = v1440;
    v1435[7] = *(v1446 + 9);
    *(&v1435[6] + 7) = v1446[0];
    *(&v1435[5] + 7) = v1445;
    *(&v1435[4] + 7) = v1444;
    v568 = v1304;
    *v1304 = v883;
    v568[1] = v885;
    *(v568 + 4) = v947;
    v1031 = v1437[0];
    v1032 = v1437[1];
    v1033 = v1437[2];
    *(v568 + 68) = v1437[3];
    *(v568 + 52) = v1033;
    *(v568 + 36) = v1032;
    *(v568 + 20) = v1031;
    v1034 = v1437[4];
    v1035 = v1437[5];
    v1036 = v1437[6];
    *(v568 + 129) = *(&v1437[6] + 13);
    *(v568 + 116) = v1036;
    *(v568 + 100) = v1035;
    *(v568 + 84) = v1034;
    v1037 = v1436[0];
    v1038 = v1436[1];
    v1039 = v1436[2];
    *(v568 + 193) = v1436[3];
    *(v568 + 177) = v1039;
    *(v568 + 161) = v1038;
    *(v568 + 145) = v1037;
    v1040 = v1436[4];
    v1041 = v1436[5];
    v1042 = v1436[6];
    *(v568 + 257) = v1436[7];
    *(v568 + 241) = v1042;
    *(v568 + 225) = v1041;
    *(v568 + 209) = v1040;
    v1043 = v1435[0];
    v1044 = v1435[1];
    v1045 = v1435[3];
    *(v568 + 305) = v1435[2];
    *(v568 + 321) = v1045;
    *(v568 + 273) = v1043;
    *(v568 + 289) = v1044;
    v1046 = v1435[4];
    v1047 = v1435[5];
    v1048 = v1435[7];
    *(v568 + 369) = v1435[6];
    *(v568 + 385) = v1048;
    *(v568 + 337) = v1046;
    *(v568 + 353) = v1047;
    v1049 = v1358;
    v568[51] = v1360;
    v568[52] = v1049;
    v568[53] = v1359;
    v1050 = v1438[0];
    v1051 = v1438[1];
    v1052 = v1438[3];
    *(v568 + 29) = v1438[2];
    *(v568 + 30) = v1052;
    *(v568 + 27) = v1050;
    *(v568 + 28) = v1051;
    v1053 = v1438[4];
    v1054 = v1438[5];
    v1055 = v1439[0];
    *(v568 + 537) = *(v1439 + 9);
    *(v568 + 32) = v1054;
    *(v568 + 33) = v1055;
    *(v568 + 31) = v1053;
    v257 = v1356;
LABEL_302:
    swift_storeEnumTagMultiPayload();
    v258 = v568;
    goto LABEL_129;
  }

  objc_opt_self();
  v940 = swift_dynamicCastObjCClass();
  if (v940)
  {
    v941 = v940;
    v942 = [v940 name];
    if (v942)
    {
      v943 = v942;
      v944 = sub_2146D95B8();
      v946 = v945;
    }

    else
    {
      v944 = 0;
      v946 = 0;
    }

    v965 = [v941 icon];
    if (v965)
    {
      v966 = v965;
      *&v1414 = v965;
      v967 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v967;
      if (v967)
      {

        goto LABEL_675;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v968 = [v941 numberOfPublishedCollections];

    v969 = v1290;
    *v1290 = v944;
    v969[1] = v946;
    v970 = v1419;
    *(v969 + 5) = v1418;
    *(v969 + 6) = v970;
    *(v969 + 7) = v1420[0];
    *(v969 + 121) = *(v1420 + 9);
    v971 = v1415;
    *(v969 + 1) = v1414;
    *(v969 + 2) = v971;
    v972 = v1417;
    *(v969 + 3) = v1416;
    *(v969 + 4) = v972;
    *(v969 + 35) = v968;
    v257 = v1356;
    goto LABEL_608;
  }

  objc_opt_self();
  v955 = swift_dynamicCastObjCClass();
  if (v955)
  {
    v956 = v955;
    v957 = [v955 name];
    if (v957)
    {
      v958 = v957;
      v959 = sub_2146D95B8();
      v961 = v960;
    }

    else
    {
      v959 = 0;
      v961 = 0;
    }

    v1057 = [v956 type];
    if (v1057)
    {
      v1058 = v1057;
      v1059 = sub_2146D95B8();
      v1061 = v1060;
    }

    else
    {
      v1059 = 0;
      v1061 = 0;
    }

    v1062 = [v956 size];
    v1063 = [v956 thumbnail];
    if (v1063)
    {
      v1064 = v1063;
      *&v1414 = v1063;
      v1065 = v1362;
      sub_213FC2A4C(&v1414, &v1407, &v1428);
      v1362 = v1065;
      if (v1065)
      {

        goto LABEL_328;
      }

      nullsub_1(&v1428);
    }

    else
    {
      sub_2144008B4(&v1428);
    }

    v1418 = v1432;
    v1419 = v1433;
    v1420[0] = v1434[0];
    *(v1420 + 9) = *(v1434 + 9);
    v1414 = v1428;
    v1415 = v1429;
    v1416 = v1430;
    v1417 = v1431;
    v1066 = [v956 icon];
    if (v1066)
    {
      v1067 = v1066;
      *&v1400 = v1066;
      v1068 = v1362;
      sub_213FC2A4C(&v1400, &v1393, &v1407);
      v1362 = v1068;
      if (v1068)
      {
        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_675;
      }

      nullsub_1(&v1407);
    }

    else
    {
      sub_2144008B4(&v1407);
    }

    v1404 = v1411;
    v1405 = v1412;
    v1406[0] = v1413[0];
    *(v1406 + 9) = *(v1413 + 9);
    v1400 = v1407;
    v1401 = v1408;
    v1402 = v1409;
    v1403 = v1410;
    v1074 = [v956 creationDate];
    if (v1074)
    {
      v1075 = v1074;
      sub_2146D8AE8();

      v1076 = 0;
    }

    else
    {
      v1076 = 1;
    }

    v1077 = sub_2146D8B08();
    v1078 = v1309;
    (*(*(v1077 - 8) + 56))(v1309, v1076, 1, v1077);
    v1079 = v1419;
    v247 = v1300;
    *(v1300 + 104) = v1418;
    *(v247 + 15) = v1079;
    *(v247 + 17) = v1420[0];
    *(v247 + 145) = *(v1420 + 9);
    v1080 = v1415;
    *(v247 + 5) = v1414;
    *(v247 + 7) = v1080;
    v1081 = v1417;
    *(v247 + 9) = v1416;
    *(v247 + 11) = v1081;
    *(v247 + 273) = *(v1406 + 9);
    *(v247 + 33) = v1406[0];
    v1082 = v1404;
    *(v247 + 31) = v1405;
    *(v247 + 29) = v1082;
    v1083 = v1402;
    *(v247 + 27) = v1403;
    *(v247 + 25) = v1083;
    v1084 = v1400;
    *(v247 + 23) = v1401;
    *v247 = v959;
    v247[1] = v961;
    v247[2] = v1059;
    v247[3] = v1061;
    v247[4] = v1062;
    *(v247 + 21) = v1084;
    v1085 = type metadata accessor for LinkPresentation.FileMetadata(0);
    sub_21408AC04(v1078, v247 + *(v1085 + 36), &qword_27C913090, &unk_2146E9DB0);
    v257 = v1356;
    goto LABEL_67;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v1056 = v1362;
    sub_21438F834(0, 0xE000000000000000, &v1428);
    v1362 = v1056;
    if (!v1056)
    {
      v659 = v1288;
      *v1288 = v1428;
      v257 = v1356;
      goto LABEL_372;
    }
  }

  else
  {
    objc_opt_self();
    v1069 = swift_dynamicCastObjCClass();
    if (v1069)
    {
      v1070 = v1069;
      v1071 = [v1069 combinedTitle];
      if (v1071)
      {
        v1072 = v1071;
        v1359 = sub_2146D95B8();
        v1360 = v1073;
      }

      else
      {
        v1359 = 0;
        v1360 = 0;
      }

      v1093 = [v1070 title];
      if (v1093)
      {
        v1094 = v1093;
        v1358 = sub_2146D95B8();
        v1096 = v1095;
      }

      else
      {
        v1358 = 0;
        v1096 = 0;
      }

      v1097 = [v1070 subtitle];
      if (v1097)
      {
        v1098 = v1097;
        v1099 = sub_2146D95B8();
        v1101 = v1100;
      }

      else
      {
        v1099 = 0;
        v1101 = 0;
      }

      v1102 = [v1070 footnote];
      if (v1102)
      {
        v1103 = v1102;
        v1104 = sub_2146D95B8();
        v1106 = v1105;
      }

      else
      {
        v1104 = 0;
        v1106 = 0;
      }

      v1107 = [v1070 icon];
      v1108 = v1362;
      sub_2143E3984(v1107, v1447);
      v1362 = v1108;
      if (!v1108)
      {

        v295 = v1297;
        v1109 = v1360;
        v1297->isa = v1359;
        v295[1].isa = v1109;
        v295[2].isa = v1358;
        v295[3].isa = v1096;
        v295[4].isa = v1099;
        v295[5].isa = v1101;
        v295[6].isa = v1104;
        v295[7].isa = v1106;
        v1110 = v1447[5];
        *&v295[16].isa = v1447[4];
        *&v295[18].isa = v1110;
        *&v295[20].isa = v1448[0];
        *(&v295[21].isa + 1) = *(v1448 + 9);
        v1111 = v1447[1];
        *&v295[8].isa = v1447[0];
        *&v295[10].isa = v1111;
        v1112 = v1447[3];
        *&v295[12].isa = v1447[2];
        *&v295[14].isa = v1112;
        v257 = v1356;
        goto LABEL_91;
      }

LABEL_211:

      return;
    }

    objc_opt_self();
    v1086 = swift_dynamicCastObjCClass();
    if (v1086)
    {
      v1087 = v1086;
      v1088 = [v1086 title];
      if (v1088)
      {
        v1089 = v1088;
        v1090 = sub_2146D95B8();
        v1092 = v1091;
      }

      else
      {
        v1090 = 0;
        v1092 = 0;
      }

      v1119 = [v1087 subtitle];
      if (v1119)
      {
        v1120 = v1119;
        v1121 = sub_2146D95B8();
        v1123 = v1122;
      }

      else
      {
        v1121 = 0;
        v1123 = 0;
      }

      v1124 = [v1087 artwork];
      v1125 = v1362;
      sub_2143E3984(v1124, v1449);
      v1362 = v1125;
      if (v1125)
      {

        goto LABEL_675;
      }

      v295 = v1293;
      *v1293 = v1090;
      v295[1].isa = v1092;
      v295[2].isa = v1121;
      v295[3].isa = v1123;
      v1126 = v1449[5];
      *&v295[12].isa = v1449[4];
      *&v295[14].isa = v1126;
      *&v295[16].isa = v1450[0];
      *(&v295[17].isa + 1) = *(v1450 + 9);
      v1127 = v1449[1];
      *&v295[4].isa = v1449[0];
      *&v295[6].isa = v1127;
      v1128 = v1449[3];
      *&v295[8].isa = v1449[2];
      *&v295[10].isa = v1128;
      v257 = v1356;
      goto LABEL_91;
    }

    objc_opt_self();
    v1113 = swift_dynamicCastObjCClass();
    if (v1113)
    {
      v1114 = v1113;
      v1115 = [v1113 title];
      if (v1115)
      {
        v1116 = v1115;
        v1360 = sub_2146D95B8();
        v1118 = v1117;
      }

      else
      {
        v1360 = 0;
        v1118 = 0;
      }

      v1359 = [v1114 photoCount];
      v1358 = [v1114 videoCount];
      v1135 = [v1114 otherItemCount];
      v1136 = [v1114 keyPhoto];
      v1137 = v1362;
      sub_2143E3984(v1136, &v1428);
      v1362 = v1137;
      if (v1137)
      {

        goto LABEL_675;
      }

      v1418 = v1432;
      v1419 = v1433;
      v1420[0] = v1434[0];
      *(v1420 + 9) = *(v1434 + 9);
      v1414 = v1428;
      v1415 = v1429;
      v1416 = v1430;
      v1417 = v1431;
      v1138 = [v1114 expirationDate];
      if (v1138)
      {
        v1139 = v1138;
        v1140 = v1310;
        sub_2146D8AE8();

        v1141 = sub_2146D8B08();
        (*(*(v1141 - 8) + 56))(v1140, 0, 1, v1141);
      }

      else
      {
        v1150 = sub_2146D8B08();
        (*(*(v1150 - 8) + 56))(v1310, 1, 1, v1150);
      }

      v1151 = [v1114 earliestAssetDate];
      if (v1151)
      {
        v1152 = v1151;
        sub_2146D8AE8();

        v1153 = 0;
      }

      else
      {
        v1153 = 1;
      }

      v1154 = sub_2146D8B08();
      v1155 = *(*(v1154 - 8) + 56);
      v1156 = 1;
      v1155(v1311, v1153, 1, v1154);
      v1157 = [v1114 latestAssetDate];
      if (v1157)
      {
        v1158 = v1157;
        sub_2146D8AE8();

        v1156 = 0;
      }

      v1159 = v1312;
      v1155(v1312, v1156, 1, v1154);
      v1160 = v1419;
      v692 = v1303;
      *(v1303 + 104) = v1418;
      *(v692 + 15) = v1160;
      *(v692 + 17) = v1420[0];
      *(v692 + 145) = *(v1420 + 9);
      v1161 = v1415;
      *(v692 + 5) = v1414;
      *(v692 + 7) = v1161;
      v1162 = v1417;
      *(v692 + 9) = v1416;
      *v692 = v1360;
      v692[1] = v1118;
      v1163 = v1358;
      v692[2] = v1359;
      v692[3] = v1163;
      v692[4] = v1135;
      *(v692 + 11) = v1162;
      v1164 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
      sub_21408AC04(v1310, v692 + v1164[9], &qword_27C913090, &unk_2146E9DB0);
      sub_21408AC04(v1311, v692 + v1164[10], &qword_27C913090, &unk_2146E9DB0);
      sub_21408AC04(v1159, v692 + v1164[11], &qword_27C913090, &unk_2146E9DB0);
      v257 = v1356;
      goto LABEL_397;
    }

    objc_opt_self();
    v1129 = swift_dynamicCastObjCClass();
    if (v1129)
    {
      v1130 = [v1129 status];
      v1131 = v1130;
      if (v1130)
      {
        v1132 = [v1130 string];

        v1131 = sub_2146D95B8();
        v1134 = v1133;
      }

      else
      {

        v1134 = 0;
      }

      v1149 = v1362;
      sub_21438F84C(v1131, v1134, &v1428);
      v1362 = v1149;
      if (!v1149)
      {
        v659 = v1292;
        *v1292 = v1428;
        v257 = v1356;
        goto LABEL_372;
      }
    }

    else
    {
      objc_opt_self();
      v1142 = swift_dynamicCastObjCClass();
      if (v1142)
      {
        v1143 = v1142;
        v1144 = [v1142 message];
        if (v1144)
        {
          v1145 = v1144;
          v1146 = sub_2146D95B8();
          v1148 = v1147;
        }

        else
        {
          v1146 = 0;
          v1148 = 0;
        }

        v1171 = [v1143 originatorDisplayName];
        if (v1171)
        {
          v1172 = v1171;
          v1173 = sub_2146D95B8();
          v1175 = v1174;
        }

        else
        {

          v1173 = 0;
          v1175 = 0;
        }

        v1176 = v1362;
        sub_21438F4CC(&v1428, v1146, v1148, v1173, v1175);
        v1362 = v1176;
        if (!v1176)
        {
          v1177 = v1429;
          v659 = v1295;
          *v1295 = v1428;
          *(v659 + 1) = v1177;
          v257 = v1356;
          goto LABEL_372;
        }
      }

      else
      {
        objc_opt_self();
        v1165 = swift_dynamicCastObjCClass();
        if (v1165)
        {
          v1166 = [v1165 subtitle];
          if (v1166)
          {
            v1167 = v1166;
            v1168 = sub_2146D95B8();
            v1170 = v1169;
          }

          else
          {

            v1168 = 0;
            v1170 = 0;
          }

          v1185 = v1362;
          sub_21438F864(v1168, v1170, &v1428);
          v1362 = v1185;
          if (!v1185)
          {
            v659 = v1294;
            *v1294 = v1428;
            v257 = v1356;
            goto LABEL_372;
          }
        }

        else
        {
          objc_opt_self();
          v1178 = swift_dynamicCastObjCClass();
          if (v1178)
          {
            v1179 = v1178;
            v1180 = [v1178 name];
            if (v1180)
            {
              v1181 = v1180;
              v1182 = sub_2146D95B8();
              v1184 = v1183;
            }

            else
            {
              v1182 = 0;
              v1184 = 0;
            }

            v1192 = [v1179 eventDate];
            if (v1192)
            {
              v1193 = v1192;
              v1194 = v1307;
              sub_2146D8AE8();

              v1195 = sub_2146D8B08();
              (*(*(v1195 - 8) + 56))(v1194, 0, 1, v1195);
            }

            else
            {
              v1196 = sub_2146D8B08();
              (*(*(v1196 - 8) + 56))(v1307, 1, 1, v1196);
            }

            v1197 = [v1179 expirationDate];
            if (v1197)
            {
              v1198 = v1197;
              sub_2146D8AE8();

              v1199 = 0;
            }

            else
            {
              v1199 = 1;
            }

            v1200 = sub_2146D8B08();
            v1201 = v1308;
            (*(*(v1200 - 8) + 56))(v1308, v1199, 1, v1200);
            v969 = v1301;
            *v1301 = v1182;
            v969[1] = v1184;
            v1202 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
            sub_21408AC04(v1307, v969 + *(v1202 + 20), &qword_27C913090, &unk_2146E9DB0);
            sub_21408AC04(v1201, v969 + *(v1202 + 24), &qword_27C913090, &unk_2146E9DB0);
            v257 = v1356;
LABEL_608:
            swift_storeEnumTagMultiPayload();
            v258 = v969;
            goto LABEL_129;
          }

          objc_opt_self();
          v1186 = swift_dynamicCastObjCClass();
          if (v1186)
          {
            v1187 = [v1186 subtitle];
            if (v1187)
            {
              v1188 = v1187;
              v1189 = sub_2146D95B8();
              v1191 = v1190;
            }

            else
            {

              v1189 = 0;
              v1191 = 0;
            }

            v1204 = v1362;
            sub_21438F87C(v1189, v1191, &v1428);
            v1362 = v1204;
            if (!v1204)
            {
              v659 = v1298;
              *v1298 = v1428;
              v257 = v1356;
              goto LABEL_372;
            }
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {

              v1203 = v1362;
              sub_21438F894(0, 0xE000000000000000, &v1428);
              v1362 = v1203;
              if (!v1203)
              {
                v659 = v1296;
                *v1296 = v1428;
                v257 = v1356;
                goto LABEL_372;
              }
            }

            else
            {
              objc_opt_self();
              v1205 = swift_dynamicCastObjCClass();
              if (v1205)
              {
                v1206 = [v1205 title];
                if (v1206)
                {
                  v1207 = v1206;
                  v1208 = sub_2146D95B8();
                  v1210 = v1209;
                }

                else
                {

                  v1208 = 0;
                  v1210 = 0;
                }

                v1218 = v1362;
                sub_21438F8AC(v1208, v1210, &v1428);
                v1362 = v1218;
                if (!v1218)
                {
                  v659 = v1299;
                  *v1299 = v1428;
                  v257 = v1356;
                  goto LABEL_372;
                }
              }

              else
              {
                objc_opt_self();
                v1211 = swift_dynamicCastObjCClass();
                if (v1211)
                {
                  v1212 = v1211;
                  v1213 = [v1211 groupName];
                  if (v1213)
                  {
                    v1214 = v1213;
                    v1215 = sub_2146D95B8();
                    v1217 = v1216;
                  }

                  else
                  {
                    v1215 = 0;
                    v1217 = 0;
                  }

                  v1225 = [v1212 urlParameters];
                  if (v1225)
                  {
                    v1226 = v1225;
                    v1227 = sub_2146D95B8();
                    v1229 = v1228;
                  }

                  else
                  {

                    v1227 = 0;
                    v1229 = 0;
                  }

                  v1230 = v1362;
                  sub_21438F4E4(&v1428, v1215, v1217, v1227, v1229);
                  v1362 = v1230;
                  if (!v1230)
                  {
                    v1231 = v1429;
                    v659 = v1302;
                    *v1302 = v1428;
                    *(v659 + 1) = v1231;
                    v257 = v1356;
                    goto LABEL_372;
                  }
                }

                else
                {
                  objc_opt_self();
                  v1219 = swift_dynamicCastObjCClass();
                  if (v1219)
                  {
                    v1220 = v1219;
                    v1221 = [v1219 title];
                    if (v1221)
                    {
                      v1222 = v1221;
                      v1360 = sub_2146D95B8();
                      v1224 = v1223;
                    }

                    else
                    {
                      v1360 = 0;
                      v1224 = 0;
                    }

                    v1239 = [v1220 subtitle];
                    if (v1239)
                    {
                      v1240 = v1239;
                      v1359 = sub_2146D95B8();
                      v1242 = v1241;
                    }

                    else
                    {
                      v1359 = 0;
                      v1242 = 0;
                    }

                    v1243 = [v1220 information];
                    if (v1243)
                    {
                      v1244 = v1243;
                      v1358 = sub_2146D95B8();
                      v1246 = v1245;
                    }

                    else
                    {
                      v1358 = 0;
                      v1246 = 0;
                    }

                    v1247 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
                    v1248 = swift_allocBox();
                    v1250 = v1249;
                    v1251 = [v1220 icon];
                    v1252 = v1362;
                    sub_2143E3984(v1251, &v1428);
                    v1362 = v1252;
                    if (v1252)
                    {

                      swift_deallocBox();
                      return;
                    }

                    v1418 = v1432;
                    v1419 = v1433;
                    v1420[0] = v1434[0];
                    *(v1420 + 9) = *(v1434 + 9);
                    v1414 = v1428;
                    v1415 = v1429;
                    v1416 = v1430;
                    v1417 = v1431;
                    v1253 = [v1220 isCollaboration];
                    v1254 = [v1220 specialization];
                    if (v1254)
                    {
                      *&v1407 = v1254;
                      v1255 = v1254;
                      v1256 = v1362;
                      sub_214400704(&v1407, &v1400);
                      v1362 = v1256;
                      if (v1256)
                      {
                        sub_213FB2DF4(&v1414, &qword_27C904868, &qword_2146EDB58);

                        swift_deallocBox();
                        return;
                      }

                      v1276 = v1315;
                      (*(v1313 + 56))(v1315, 0, 1, v1314);
                      sub_21408AC04(v1276, v1316, &qword_27C904870, &qword_2146EDB60);
                    }

                    else
                    {

                      (*(v1313 + 56))(v1315, 1, 1, v1314);
                      (*(v1355 + 56))(v1316, 1, 1, v1356);
                    }

                    *v1250 = v1360;
                    *(v1250 + 8) = v1224;
                    *(v1250 + 16) = v1359;
                    *(v1250 + 24) = v1242;
                    *(v1250 + 32) = v1358;
                    *(v1250 + 40) = v1246;
                    v1277 = v1415;
                    v1278 = v1417;
                    v1279 = v1416;
                    *(v1250 + 48) = v1414;
                    v1280 = v1418;
                    v1281 = v1420[0];
                    *(v1250 + 128) = v1419;
                    *(v1250 + 144) = v1281;
                    *(v1250 + 153) = *(v1420 + 9);
                    *(v1250 + 64) = v1277;
                    *(v1250 + 80) = v1279;
                    *(v1250 + 96) = v1278;
                    *(v1250 + 112) = v1280;
                    *(v1250 + 169) = v1253;
                    sub_21408AC04(v1316, v1250 + *(v1247 + 36), &qword_27C904870, &qword_2146EDB60);
                    v343 = v1354;
                    *v1354 = v1248;
                    v257 = v1356;
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_130;
                  }

                  objc_opt_self();
                  v1232 = swift_dynamicCastObjCClass();
                  if (v1232)
                  {
                    v1233 = v1232;
                    v1234 = [v1232 title];
                    if (v1234)
                    {
                      v1235 = v1234;
                      v1236 = sub_2146D95B8();
                      v1238 = v1237;
                    }

                    else
                    {
                      v1236 = 0;
                      v1238 = 0;
                    }

                    v1271 = [v1233 subtitle];
                    if (v1271)
                    {
                      v1272 = v1271;
                      v1273 = sub_2146D95B8();
                      v1275 = v1274;
                    }

                    else
                    {
                      v1273 = 0;
                      v1275 = 0;
                    }

                    v1282 = [v1233 artwork];
                    v1283 = v1362;
                    sub_2143E3984(v1282, &v1428);
                    if (v1283)
                    {

                      return;
                    }

                    v1418 = v1432;
                    v1419 = v1433;
                    v1420[0] = v1434[0];
                    *(v1420 + 9) = *(v1434 + 9);
                    v1414 = v1428;
                    v1415 = v1429;
                    v1416 = v1430;
                    v1417 = v1431;
                    v1284 = [v1233 icon];
                    sub_2143E3984(v1284, &v1407);

                    v1404 = v1411;
                    v1405 = v1412;
                    v1406[0] = v1413[0];
                    *(v1406 + 9) = *(v1413 + 9);
                    v1400 = v1407;
                    v1401 = v1408;
                    v1402 = v1409;
                    v1403 = v1410;
                    sub_214279184(v1236, v1238, v1273, v1275, &v1414, &v1400, v1451);
                    v1362 = 0;

                    v659 = v1305;
                    memcpy(v1305, v1451, 0x149uLL);
                    v257 = v1356;
                    goto LABEL_372;
                  }

                  LODWORD(v1360) = sub_2146D9B88();
                  v1359 = *sub_214062480();
                  v1257 = swift_allocObject();
                  v1258 = v1361;
                  *(v1257 + 16) = v1361;
                  v1259 = swift_allocObject();
                  *(v1259 + 16) = 32;
                  v1260 = swift_allocObject();
                  *(v1260 + 16) = 8;
                  v1261 = swift_allocObject();
                  *(v1261 + 16) = sub_2144008E4;
                  *(v1261 + 24) = v1257;
                  v1262 = swift_allocObject();
                  *(v1262 + 16) = sub_2144008F4;
                  *(v1262 + 24) = v1261;
                  v1263 = swift_allocObject();
                  *(v1263 + 16) = sub_214400930;
                  *(v1263 + 24) = v1262;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C18, &qword_21473AF50);
                  v1264 = swift_allocObject();
                  *(v1264 + 16) = xmmword_2146E68D0;
                  *(v1264 + 32) = sub_2144008EC;
                  *(v1264 + 40) = v1259;
                  *(v1264 + 48) = sub_214400B64;
                  *(v1264 + 56) = v1260;
                  *(v1264 + 64) = sub_214400938;
                  *(v1264 + 72) = v1263;
                  v1265 = v1258;

                  if (os_log_type_enabled(v1359, v1360))
                  {
                    v1266 = sub_2144AE990();
                    v1361 = swift_slowAlloc();
                    *&v1428 = v1361;
                    *v1266 = 258;
                    *(v1266 + 2) = 32;

                    *(v1266 + 3) = 8;

                    swift_getObjectType();
                    v1267 = sub_2146DAA78();
                    v1269 = sub_2144AEA38(v1267, v1268, &v1428);

                    *(v1266 + 4) = v1269;

                    _os_log_impl(&dword_213FAF000, v1359, v1360, "Unable to handle specialized metadata of type: %s", v1266, 0xCu);
                    v1270 = v1361;
                    __swift_destroy_boxed_opaque_existential_1(v1361);
                    MEMORY[0x216056AC0](v1270, -1, -1);
                    sub_2144AE998();
                  }

                  (*(v1355 + 56))(v1357, 1, 1, v1356);
                }
              }
            }
          }
        }
      }
    }
  }
}