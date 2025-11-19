uint64_t sub_24E7D5870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D58E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return InviteFriendsSearchPageIntentImplementation.perform(_:objectGraph:)(a1, a2);
}

uint64_t sub_24E7D5980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsSearchShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D59E4(uint64_t a1)
{
  v2 = type metadata accessor for InviteFriendsSearchShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D5A88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t GameLibraryArcadeChicletMetadataIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24E7D5C48(uint64_t a1)
{
  v2 = sub_24E7D6330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D5C84(uint64_t a1)
{
  v2 = sub_24E7D6330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryArcadeChicletMetadataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t GameLibraryArcadeChicletMetadataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA38);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameLibraryArcadeChicletMetadataIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24E7D63D0(v13, v11, type metadata accessor for Player);
    sub_24E7D63D0(v11, v12, type metadata accessor for GameLibraryArcadeChicletMetadataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7D60BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6330();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7D6220@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_24E7D6330()
{
  result = qword_27F21DA30;
  if (!qword_27F21DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA30);
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryArcadeChicletMetadataIntent()
{
  result = qword_27F21DA40;
  if (!qword_27F21DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7D63D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7D644C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E7D64CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24E7D6550()
{
  result = qword_27F21DA50;
  if (!qword_27F21DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA50);
  }

  return result;
}

unint64_t sub_24E7D65A8()
{
  result = qword_27F21DA58;
  if (!qword_27F21DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA58);
  }

  return result;
}

unint64_t sub_24E7D6600()
{
  result = qword_27F21DA60;
  if (!qword_27F21DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA60);
  }

  return result;
}

uint64_t AddFriendButtonShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for AddFriendButtonShelfConstructionIntent()
{
  result = qword_27F21DA80;
  if (!qword_27F21DA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AddFriendButtonShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = *(type metadata accessor for AddFriendButtonShelfConstructionIntent() + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D6FE4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E7D68BC(uint64_t a1)
{
  v2 = sub_24E7D6F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D68F8(uint64_t a1)
{
  v2 = sub_24E7D6F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendButtonShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6F90();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AddFriendButtonShelfConstructionIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AddFriendButtonShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA78);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AddFriendButtonShelfConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D6F90();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24E7D6FE4(v10, v16, type metadata accessor for AddFriendButtonShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7D704C(v10);
}

unint64_t sub_24E7D6E10@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D6FE4(v2 + v9, boxed_opaque_existential_1, type metadata accessor for Player);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E7D6F90()
{
  result = qword_27F21DA70;
  if (!qword_27F21DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA70);
  }

  return result;
}

uint64_t sub_24E7D6FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7D704C(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendButtonShelfConstructionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7D70BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7D717C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24E7D7234()
{
  result = qword_27F21DA90;
  if (!qword_27F21DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA90);
  }

  return result;
}

unint64_t sub_24E7D728C()
{
  result = qword_27F21DA98;
  if (!qword_27F21DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DA98);
  }

  return result;
}

unint64_t sub_24E7D72E4()
{
  result = qword_27F21DAA0;
  if (!qword_27F21DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAA0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24E7D7354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_24E7D73B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E7D7438(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ButtonGroupItemType();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7D75D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ButtonGroupItemType();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ButtonGroupItem()
{
  result = qword_27F21DAA8;
  if (!qword_27F21DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7D77A0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ButtonGroupItemType();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            sub_24E7CA640();
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

uint64_t sub_24E7D78B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v35 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v39);
  v38 = v35 - v5;
  v6 = type metadata accessor for ButtonGroupItemType();
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DAC0);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = type metadata accessor for ButtonGroupItem();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 24)];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v44 = v17;
  sub_24E61DA68(&v48, v17, qword_27F21B590);
  v18 = *(v13 + 28);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v47 = v18;
  v20(&v16[v18], 1, 1, v19);
  v21 = *(v13 + 32);
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v45 = v21;
  v23(&v16[v21], 1, 1, v22);
  v24 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E7D82E0();
  v42 = v12;
  v25 = v43;
  sub_24F92D108();
  if (v25)
  {
    v27 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v28 = v45;
    sub_24E601704(v27, qword_27F24EC90);
    sub_24E601704(&v16[v47], &qword_27F215440);
    return sub_24E601704(&v16[v28], &qword_27F213E68);
  }

  else
  {
    v35[1] = v22;
    v43 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v26 = v40;
    sub_24F92CC68();
    v29 = v49;
    *v16 = v48;
    *(v16 + 1) = v29;
    *(v16 + 4) = v50;
    LOBYTE(v48) = 1;
    sub_24E7D8398(&qword_27F21DAD0, type metadata accessor for ButtonGroupItemType);
    sub_24F92CC68();
    v30 = v43;
    sub_24E7D8334(v8, &v16[*(v43 + 20)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v51 = 2;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v48, v44, qword_27F24EC90);
    LOBYTE(v48) = 3;
    sub_24E65CAA0();
    v31 = v38;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v16[v47], &qword_27F215440);
    LOBYTE(v48) = 4;
    sub_24E7D8398(&qword_27F213F48, MEMORY[0x277D21F70]);
    v32 = v37;
    sub_24F92CC18();
    sub_24E61DA68(v32, &v16[v45], &qword_27F213E68);
    LOBYTE(v48) = 5;
    v33 = sub_24F92CBD8();
    (*(v41 + 8))(v42, v26);
    v16[*(v30 + 36)] = v33;
    sub_24E7D83E0(v16, v36);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24E7D8444(v16, type metadata accessor for ButtonGroupItem);
  }
}

uint64_t sub_24E7D7FF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6575676573;
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

uint64_t sub_24E7D80A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7D85BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7D80C8(uint64_t a1)
{
  v2 = sub_24E7D82E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D8104(uint64_t a1)
{
  v2 = sub_24E7D82E0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7D8140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 24), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E7D819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E7D82E0()
{
  result = qword_27F21DAC8;
  if (!qword_27F21DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAC8);
  }

  return result;
}

uint64_t sub_24E7D8334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonGroupItemType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D8398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7D83E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonGroupItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7D8444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7D84B8()
{
  result = qword_27F21DAD8;
  if (!qword_27F21DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAD8);
  }

  return result;
}

unint64_t sub_24E7D8510()
{
  result = qword_27F21DAE0;
  if (!qword_27F21DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAE0);
  }

  return result;
}

unint64_t sub_24E7D8568()
{
  result = qword_27F21DAE8;
  if (!qword_27F21DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAE8);
  }

  return result;
}

uint64_t sub_24E7D85BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA47710 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_24E7D87BC()
{
  result = 0.0;
  xmmword_27F39ACF8 = 0u;
  *&qword_27F39AD08 = 0u;
  byte_27F39AD18 = 2;
  return result;
}

uint64_t sub_24E7D87D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93FC20;
    *(inited + 32) = v1;
    *(inited + 40) = v2;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    if (v1 && *(v1 + 16) || v2 && *(v2 + 16) || v3 && *(v3 + 16))
    {
    }

    else
    {

      swift_bridgeObjectRetain_n();

      if (!v4)
      {
        return 1;
      }

      v8 = *(v4 + 16);

      if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_24E7D88F0()
{
  v1 = *v0;
  v2 = 0x676E696C69617274;
  v3 = 0x49676E696461656CLL;
  v4 = 0x6974616D6F747561;
  if (v1 != 3)
  {
    v4 = 0x42656E6F44646461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24E7D89BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7D9428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7D89E4(uint64_t a1)
{
  v2 = sub_24E7D8D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7D8A20(uint64_t a1)
{
  v2 = sub_24E7D8D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageToolbarItemGroups.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DAF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  v13[3] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D8D08();

  sub_24F92D128();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00);
  sub_24E7D9150(&qword_27F21DB08, &qword_27F21DB10);
  sub_24F92CCF8();
  if (v2)
  {
  }

  else
  {
    v11 = v15;

    v18 = v16;
    v17 = 1;
    sub_24F92CCF8();
    v18 = v11;
    v17 = 2;
    sub_24F92CCF8();
    v18 = v14;
    v17 = 3;
    sub_24F92CCF8();
    LOBYTE(v18) = 4;
    sub_24F92CCB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24E7D8D08()
{
  result = qword_27F21DAF8;
  if (!qword_27F21DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DAF8);
  }

  return result;
}

uint64_t PageToolbarItemGroups.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7D8D08();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB00);
  v18 = 0;
  sub_24E7D9150(&qword_27F21DB20, &qword_27F21DB28);
  sub_24F92CC18();
  v17 = v19;
  v18 = 1;
  sub_24F92CC18();
  v15 = 0;
  v16 = v19;
  v18 = 2;
  sub_24F92CC18();
  v14 = v19;
  v18 = 3;
  sub_24F92CC18();
  v9 = v19;
  LOBYTE(v19) = 4;
  v11 = sub_24F92CBD8();
  (*(v6 + 8))(v8, v5);
  v12 = v16;
  *a2 = v17;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7D9150(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB00);
    sub_24E7D91D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D91D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PageToolbarItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7D924C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_24E7D92A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24E7D9324()
{
  result = qword_27F21DB30;
  if (!qword_27F21DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB30);
  }

  return result;
}

unint64_t sub_24E7D937C()
{
  result = qword_27F21DB38;
  if (!qword_27F21DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB38);
  }

  return result;
}

unint64_t sub_24E7D93D4()
{
  result = qword_27F21DB40;
  if (!qword_27F21DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB40);
  }

  return result;
}

uint64_t sub_24E7D9428(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA47730 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xED0000736D657449 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E696461656CLL && a2 == 0xEC000000736D6574 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEE00736D65744963 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x42656E6F44646461 && a2 == 0xED00006E6F747475)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E7D9614(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RecordingAssociation();
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E7D97B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RecordingAssociation();
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

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RecordingFullScreenView()
{
  result = qword_27F21DB58;
  if (!qword_27F21DB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7D9994()
{
  type metadata accessor for RecordingAssociation();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24E600550();
      if (v2 <= 0x3F)
      {
        sub_24E7D9B18(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24E7D9B7C(319, &qword_27F254E10);
          if (v4 <= 0x3F)
          {
            sub_24E7D9B18(319, &qword_27F21DB68, MEMORY[0x277CDDE90], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24E7D9B7C(319, &qword_27F236310);
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

void sub_24E7D9B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24E7D9B7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24F926F68();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_24E7D9BE4()
{
  type metadata accessor for RecordingFullScreenView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  sub_24F926F38();
  return sub_24F926F48();
}

uint64_t sub_24E7D9CD8()
{
  type metadata accessor for RecordingFullScreenView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
  sub_24F926F38();
  return sub_24F926F48();
}

uint64_t sub_24E7D9D78(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RecordingFullScreenView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  result = sub_24F923528();
  if (v11 > 50.0)
  {
    v12 = sub_24F92B858();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_24E7DCF2C(a2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24F92B7F8();
    v13 = sub_24F92B7E8();
    v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    sub_24E7DDB84(v6, v15 + v14, type metadata accessor for RecordingFullScreenView);
    sub_24EA998B8(0, 0, v9, &unk_24F95ACC8, v15);
  }

  return result;
}

uint64_t sub_24E7D9F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_24F921B58();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  sub_24F928AD8();
  v4[21] = swift_task_alloc();
  v6 = sub_24F92A6B8();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  sub_24F92B7F8();
  v4[25] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7DA0D8, v8, v7);
}

uint64_t sub_24E7DA0D8()
{

  sub_24F928A98();
  sub_24F92A698();
  sub_24F92A668();
  type metadata accessor for RecordingFullScreenView();
  sub_24F7695C8(v0 + 56);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 184);
    v1 = *(v0 + 192);
    v3 = *(v0 + 176);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v18 = *(v0 + 144);
    sub_24E612E28((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = MEMORY[0x277D223D8];
    *(v0 + 120) = v3;
    *(v0 + 128) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
    sub_24F76973C(v4);
    sub_24F9218A8();
    (*(v5 + 8))(v4, v18);
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_24E601704(v0 + 56, &unk_27F212740);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E850);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Failed to dismiss full screen recording, missing performAction", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24E7DA388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = type metadata accessor for RecordingFullScreenView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB70);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - v8);
  *v9 = sub_24F927618();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB78);
  sub_24E7DA630(v2, v9 + *(v11 + 44));
  v12 = v2 + *(v4 + 44);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  sub_24E7DCF2C(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_24E7DDB84(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RecordingFullScreenView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB80);
  sub_24E602068(&qword_27F21DB88, &qword_27F21DB70);
  sub_24E7DD004();
  sub_24F926958();

  return sub_24E601704(v9, &qword_27F21DB70);
}

uint64_t sub_24E7DA630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBB8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBC0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBC8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  *v20 = sub_24F9249A8();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBD0);
  sub_24E7DA9D4(a1, &v20[*(v21 + 44)]);
  *v14 = sub_24F924C88();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBD8) + 44)];
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBE0);
  sub_24E7DC050(a1, &v8[*(v23 + 44)]);
  sub_24E60169C(v8, v6, &qword_27F21DBB8);
  sub_24E60169C(v6, v22, &qword_27F21DBB8);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBE8) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_24E601704(v8, &qword_27F21DBB8);
  sub_24E601704(v6, &qword_27F21DBB8);
  LOBYTE(v6) = sub_24F925808();
  sub_24F923318();
  v25 = &v14[*(v10 + 44)];
  *v25 = v6;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_24E60169C(v20, v18, &qword_27F21DBC8);
  v30 = v34;
  sub_24E60169C(v14, v34, &qword_27F21DBC0);
  v31 = v35;
  sub_24E60169C(v18, v35, &qword_27F21DBC8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF0);
  sub_24E60169C(v30, v31 + *(v32 + 48), &qword_27F21DBC0);
  sub_24E601704(v14, &qword_27F21DBC0);
  sub_24E601704(v20, &qword_27F21DBC8);
  sub_24E601704(v30, &qword_27F21DBC0);
  return sub_24E601704(v18, &qword_27F21DBC8);
}

uint64_t sub_24E7DA9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v122 = sub_24F924EB8();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCC0);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = &v109 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCC8);
  v129 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v128 = &v109 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCD0);
  MEMORY[0x28223BE20](v116);
  v117 = &v109 - v6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCD8);
  MEMORY[0x28223BE20](v152);
  v118 = &v109 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCE0);
  v120 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v149 = &v109 - v8;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCE8);
  v126 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v124 = &v109 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCF0);
  MEMORY[0x28223BE20](v143);
  v144 = &v109 - v10;
  v11 = type metadata accessor for RecordingFullScreenView();
  v134 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v150 = v12;
  v140 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24F924E98();
  MEMORY[0x28223BE20](v133);
  v132 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24F923568();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50);
  v139 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v138 = &v109 - v15;
  v113 = sub_24F91F6B8();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24F9289E8();
  v130 = *(v131 - 8);
  v17 = MEMORY[0x28223BE20](v131);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v109 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v109 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = (&v109 - v28);
  v30 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v141);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCF8);
  v115 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v114 = &v109 - v35;
  if (*(a1 + *(type metadata accessor for PhotosAsset() + 28)) == 1)
  {
    v149 = a1;
    sub_24F91F488();
    v36 = sub_24F91F4A8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    v129 = v29;
    result = v38(v29, 1, v36);
    if (result != 1)
    {
      sub_24F91F488();
      result = v38(v27, 1, v36);
      if (result != 1)
      {
        v40 = v110;
        sub_24F928978();
        v41 = v30[9];
        v42 = sub_24F928698();
        v43 = *(*(v42 - 8) + 56);
        v43(&v32[v41], 1, 1, v42);
        v43(&v32[v30[10]], 1, 1, v42);
        v44 = &v32[v30[11]];
        v45 = v111;
        sub_24F91F6A8();
        v46 = sub_24F91F668();
        v48 = v47;
        (*(v112 + 8))(v45, v113);
        *v44 = v46;
        v44[1] = v48;
        (*(v37 + 32))(v32, v129, v36);
        (*(v130 + 32))(&v32[v30[5]], v40, v131);
        *&v32[v30[6]] = 5;
        *&v32[v30[7]] = 15;
        v49 = &v32[v30[8]];
        *v49 = 15;
        v49[8] = 0;
        v50 = v141;
        v51 = *(v141 + 20);
        v52 = type metadata accessor for VideoConfiguration();
        (*(*(v52 - 8) + 56))(&v34[v51], 1, 1, v52);
        v53 = sub_24F9238D8();
        v54 = &v34[v50[12]];
        type metadata accessor for GSKVideoPlaybackCoordinator();
        sub_24E7DDB3C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
        *v54 = sub_24F9243D8();
        v54[1] = v55;
        sub_24E7DDB84(v32, v34, type metadata accessor for GSKVideo);
        v34[v50[9]] = 1;
        *&v34[v50[10]] = v53;
        v34[v50[11]] = 0;
        *&v34[v50[6]] = 0x3FE8000000000000;
        *&v34[v50[7]] = 0x3FE0000000000000;
        v56 = &v34[v50[8]];
        *(v56 + 2) = 0u;
        *(v56 + 3) = 0u;
        *v56 = 0u;
        *(v56 + 1) = 0u;
        *(v56 + 32) = 5;
        sub_24F925228();
        v57 = v135;
        sub_24F923518();
        v58 = v140;
        sub_24E7DCF2C(v149, v140);
        v59 = (*(v134 + 80) + 16) & ~*(v134 + 80);
        v60 = swift_allocObject();
        sub_24E7DDB84(v58, v60 + v59, type metadata accessor for RecordingFullScreenView);
        sub_24E7DDB3C(&unk_27F236560, MEMORY[0x277CDD730]);
        sub_24E7DDB3C(&qword_27F2180A0, MEMORY[0x277CDD708]);
        v61 = v138;
        v62 = v137;
        sub_24F927278();

        (*(v136 + 8))(v57, v62);
        sub_24F9235A8();
        v63 = sub_24E7DDB3C(&qword_27F2141D8, type metadata accessor for GSKVideoView);
        v64 = sub_24E602068(&qword_27F218C18, &qword_27F218B50);
        v65 = v114;
        v66 = v151;
        sub_24F9269D8();
        (*(v139 + 8))(v61, v66);
        sub_24E7DE0E0(v34);
        v67 = v115;
        v68 = v142;
        (*(v115 + 16))(v144, v65, v142);
        swift_storeEnumTagMultiPayload();
        v153 = v50;
        v154 = v66;
        v155 = v63;
        v156 = v64;
        swift_getOpaqueTypeConformance2();
        v69 = sub_24E7DD8EC();
        v153 = v152;
        v154 = v66;
        v155 = v69;
        v156 = v64;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v71 = sub_24E602068(&qword_27F21DD28, &qword_27F21DCC8);
        v153 = v145;
        v154 = v147;
        v155 = OpaqueTypeConformance2;
        v156 = v71;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
        return (*(v67 + 8))(v65, v68);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    sub_24F91F488();
    v72 = sub_24F91F4A8();
    result = (*(*(v72 - 8) + 48))(v24, 1, v72);
    if (result != 1)
    {
      sub_24F928978();
      v73 = v117;
      (*(v130 + 32))(v117, v19, v131);
      v74 = v73 + *(v116 + 36);
      *v74 = 0;
      *(v74 + 8) = 1;
      v75 = (a1 + *(v11 + 44));
      v76 = *v75;
      v77 = v75[1];
      v153 = v76;
      v154 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0);
      sub_24F926F38();
      v78 = v157;
      sub_24F9278A8();
      v80 = v79;
      v82 = v81;
      v83 = v118;
      sub_24E6009C8(v73, v118, &qword_27F21DCD0);
      v84 = (v83 + *(v152 + 36));
      *v84 = v78;
      v84[1] = v78;
      v84[2] = v80;
      v84[3] = v82;
      sub_24F925228();
      v85 = v135;
      sub_24F923518();
      v86 = v140;
      sub_24E7DCF2C(a1, v140);
      v133 = *(v134 + 80);
      v87 = (v133 + 16) & ~v133;
      v88 = swift_allocObject();
      v134 = type metadata accessor for RecordingFullScreenView;
      sub_24E7DDB84(v86, v88 + v87, type metadata accessor for RecordingFullScreenView);
      sub_24E7DDB3C(&unk_27F236560, MEMORY[0x277CDD730]);
      sub_24E7DDB3C(&qword_27F2180A0, MEMORY[0x277CDD708]);
      v89 = v138;
      v90 = v137;
      sub_24F927278();

      (*(v136 + 8))(v85, v90);
      sub_24F9235A8();
      v137 = sub_24E7DD8EC();
      v135 = MEMORY[0x277CDFB18];
      v136 = sub_24E602068(&qword_27F218C18, &qword_27F218B50);
      v91 = v151;
      sub_24F9269D8();
      (*(v139 + 8))(v89, v91);
      sub_24E601704(v83, &qword_27F21DCD8);
      v92 = v119;
      sub_24F924EA8();
      sub_24E7DCF2C(a1, v86);
      v93 = swift_allocObject();
      sub_24E7DDB84(v86, v93 + v87, v134);
      sub_24E7DDB3C(&qword_27F21DD10, MEMORY[0x277CDE010]);
      sub_24E7DDA4C();
      v94 = v123;
      v95 = v122;
      sub_24F927278();

      (*(v121 + 8))(v92, v95);
      sub_24E7DCF2C(a1, v86);
      v96 = swift_allocObject();
      sub_24E7DDB84(v86, v96 + v87, v134);
      sub_24E602068(&qword_27F21DD20, &qword_27F21DCC0);
      v97 = v128;
      v98 = v127;
      sub_24F927268();

      (*(v125 + 8))(v94, v98);
      sub_24F9235A8();
      v153 = v152;
      v154 = v151;
      v99 = v136;
      v155 = v137;
      v156 = v136;
      v100 = swift_getOpaqueTypeConformance2();
      v101 = sub_24E602068(&qword_27F21DD28, &qword_27F21DCC8);
      v102 = v124;
      v103 = v145;
      v104 = v147;
      v105 = v149;
      sub_24F9269D8();
      v129[1](v97, v104);
      (*(v120 + 8))(v105, v103);
      v106 = v126;
      v107 = v146;
      (*(v126 + 16))(v144, v102, v146);
      swift_storeEnumTagMultiPayload();
      v108 = sub_24E7DDB3C(&qword_27F2141D8, type metadata accessor for GSKVideoView);
      v153 = v141;
      v154 = v151;
      v155 = v108;
      v156 = v99;
      swift_getOpaqueTypeConformance2();
      v153 = v103;
      v154 = v104;
      v155 = v100;
      v156 = v101;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      return (*(v106 + 8))(v102, v107);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24E7DC050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a1;
  v87 = a2;
  v2 = type metadata accessor for RecordingFullScreenView();
  v83 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = v3;
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF8);
  MEMORY[0x28223BE20](v4);
  v6 = &v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC00);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC08);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC10);
  MEMORY[0x28223BE20](v79);
  v14 = &v76 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC18);
  v78 = *(v82 - 8);
  v15 = MEMORY[0x28223BE20](v82);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v76 - v17;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC20) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v20 = *MEMORY[0x277CE1048];
  v21 = sub_24F926E78();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x800000024FA40140;
  *(v6 + 8) = 1;
  v22 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v24 = &v6[*(v4 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_24E7DD170();
  sub_24F9268B8();
  sub_24E601704(v6, &qword_27F21DBF8);
  LOBYTE(v6) = sub_24F925808();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC40) + 36)];
  *v33 = v6;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_24F926D18();
  v35 = swift_getKeyPath();
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC48) + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC50) + 36)];
  sub_24F927438();
  LOBYTE(v35) = sub_24F925808();
  v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v35;
  *&v9[*(v7 + 36)] = 256;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v38 = sub_24F9248C8();
  __swift_project_value_buffer(v38, qword_27F39F078);
  sub_24E7DD33C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F21DC00);
  v88[3] = sub_24F9271D8();
  v88[4] = sub_24E7DDB3C(&qword_27F214E38, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_24F924B38();
  (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, v40, v41);
  sub_24E60169C(v88, v14, &qword_27F21DC78);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC80);
  v44 = v76;
  v43 = v77;
  (*(v76 + 16))(&v14[v42[9]], v12, v77);
  v45 = &v14[v42[10]];
  *v45 = sub_24F923398() & 1;
  *(v45 + 1) = v46;
  v45[16] = v47 & 1;
  v48 = &v14[v42[11]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = v43;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24E488;
  v51 = sub_24F923398();
  v53 = v52;
  v55 = v54;
  v56 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC88) + 36)];
  *v56 = v50;
  v56[8] = v51 & 1;
  *(v56 + 2) = v53;
  v56[24] = v55 & 1;
  LOBYTE(v50) = sub_24F923398();
  v58 = v57;
  LOBYTE(v53) = v59;
  sub_24E601704(v88, &qword_27F21DC78);
  (*(v44 + 8))(v12, v49);
  v60 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC90) + 36)];
  *v60 = v50 & 1;
  *(v60 + 1) = v58;
  v60[16] = v53 & 1;
  v61 = sub_24F926D18();
  v62 = swift_getKeyPath();
  v63 = &v14[*(v79 + 36)];
  *v63 = v62;
  v63[1] = v61;
  v64 = v86;
  sub_24E7DCF2C(v85, v86);
  v65 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v66 = swift_allocObject();
  sub_24E7DDB84(v64, v66 + v65, type metadata accessor for RecordingFullScreenView);
  sub_24E7DD6EC();
  v67 = v80;
  sub_24F9262B8();

  sub_24E601704(v14, &qword_27F21DC10);
  v68 = v78;
  v69 = *(v78 + 16);
  v71 = v81;
  v70 = v82;
  v69(v81, v67, v82);
  v72 = v87;
  *v87 = 0;
  *(v72 + 8) = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DCB8);
  v69(v72 + *(v73 + 48), v71, v70);
  v74 = *(v68 + 8);
  v74(v67, v70);
  return (v74)(v71, v70);
}

uint64_t sub_24E7DC930()
{
  type metadata accessor for RecordingFullScreenView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24E7DC9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = type metadata accessor for RecordingFullScreenView();
  v36 = a1;
  sub_24F91F488();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F228530);
    v21 = 1;
  }

  else
  {
    v32 = v20;
    v35 = a2;
    v22 = *(v14 + 32);
    v22(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    (*(v14 + 56))(v10, 1, 1, v13);
    type metadata accessor for ShareSheetGenericMetadata();
    v23 = swift_allocObject();
    v34 = v6;
    v24 = v23;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0xE000000000000000;
    type metadata accessor for ShareSheetData();
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 32) = 0;
    v25 = swift_allocObject();
    v22((v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url), v17, v13);
    sub_24E6009C8(v10, v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, &qword_27F228530);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v24 | 0xC000000000000000;
    v26 = *(v36 + *(v20 + 24));
    type metadata accessor for ArtworkLoader();
    sub_24F928FD8();

    sub_24F92A758();
    v27 = v37;
    v37 = v25;
    v38 = MEMORY[0x277D84F90];
    v39 = 0;
    v40 = v26;
    v41 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBB0);
    v33 = v19;
    sub_24F924AD8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93A400;

    sub_24F924AC8();
    sub_24F924AB8();
    sub_24E8029C0(v28);
    swift_setDeallocating();
    a2 = v35;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50);
    v29 = v34;
    sub_24F926F58();
    sub_24E7DD0B4();
    sub_24F926648();

    sub_24E601704(v29, &qword_27F21DBA0);

    (*(v14 + 8))(v33, v13);
    v21 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBA8);
  return (*(*(v30 - 8) + 56))(a2, v21, 1, v30);
}

uint64_t sub_24E7DCF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingFullScreenView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7DCF94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordingFullScreenView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7DC9A4(v4, a1);
}

unint64_t sub_24E7DD004()
{
  result = qword_27F21DB90;
  if (!qword_27F21DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB80);
    sub_24E7DD0B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB90);
  }

  return result;
}

unint64_t sub_24E7DD0B4()
{
  result = qword_27F21DB98;
  if (!qword_27F21DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DB98);
  }

  return result;
}

uint64_t sub_24E7DD108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924808();
  *a1 = result;
  return result;
}

unint64_t sub_24E7DD170()
{
  result = qword_27F21DC28;
  if (!qword_27F21DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DBF8);
    sub_24E7DD228();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC28);
  }

  return result;
}

unint64_t sub_24E7DD228()
{
  result = qword_27F21DC30;
  if (!qword_27F21DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC20);
    sub_24E7DD2E0();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC30);
  }

  return result;
}

unint64_t sub_24E7DD2E0()
{
  result = qword_27F21DC38;
  if (!qword_27F21DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC38);
  }

  return result;
}

unint64_t sub_24E7DD33C()
{
  result = qword_27F21DC58;
  if (!qword_27F21DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC00);
    sub_24E7DD3F4();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC58);
  }

  return result;
}

unint64_t sub_24E7DD3F4()
{
  result = qword_27F21DC60;
  if (!qword_27F21DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC50);
    sub_24E7DD4AC();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC60);
  }

  return result;
}

unint64_t sub_24E7DD4AC()
{
  result = qword_27F21DC68;
  if (!qword_27F21DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC48);
    sub_24E7DD564();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC68);
  }

  return result;
}

unint64_t sub_24E7DD564()
{
  result = qword_27F21DC70;
  if (!qword_27F21DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DBF8);
    sub_24E7DD170();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC70);
  }

  return result;
}

uint64_t sub_24E7DD634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924808();
  *a1 = result;
  return result;
}

uint64_t sub_24E7DD68C()
{
  type metadata accessor for RecordingFullScreenView();

  return sub_24E7DC930();
}

unint64_t sub_24E7DD6EC()
{
  result = qword_27F21DC98;
  if (!qword_27F21DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC10);
    sub_24E7DD7A4();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DC98);
  }

  return result;
}

unint64_t sub_24E7DD7A4()
{
  result = qword_27F21DCA0;
  if (!qword_27F21DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC90);
    sub_24E7DD830();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DCA0);
  }

  return result;
}

unint64_t sub_24E7DD830()
{
  result = qword_27F21DCA8;
  if (!qword_27F21DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DC88);
    sub_24E602068(&qword_27F21DCB0, &qword_27F21DC80);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DCA8);
  }

  return result;
}

unint64_t sub_24E7DD8EC()
{
  result = qword_27F21DD00;
  if (!qword_27F21DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DCD8);
    sub_24E7DD978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD00);
  }

  return result;
}

unint64_t sub_24E7DD978()
{
  result = qword_27F21DD08;
  if (!qword_27F21DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DCD0);
    sub_24E7DDB3C(&qword_27F214C28, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD08);
  }

  return result;
}

unint64_t sub_24E7DDA4C()
{
  result = qword_27F21DD18;
  if (!qword_27F21DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD18);
  }

  return result;
}

uint64_t sub_24E7DDAB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecordingFullScreenView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24E7DDB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7DDB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for RecordingFullScreenView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = *(type metadata accessor for PhotosAsset() + 24);
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + *(type metadata accessor for RecordingAssociation() + 20);
  v8 = type metadata accessor for Achievement(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[7];
    v10 = sub_24F9289E8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[8];
    type metadata accessor for AchievementProgressStatus(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v6 + 8))(v7 + v12, v5);
    }

    v13 = v8[14];
    v14 = sub_24F920818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }
  }

  v16 = v3 + v1[7];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F921B58();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  v19 = v3 + v1[10];
  v20 = sub_24F924AD8();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50);

  return swift_deallocObject();
}

uint64_t sub_24E7DE070(uint64_t a1)
{
  v3 = *(type metadata accessor for RecordingFullScreenView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E7D9D78(a1, v4);
}

uint64_t sub_24E7DE0E0(uint64_t a1)
{
  v2 = type metadata accessor for GSKVideoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7DE13C()
{
  v1 = type metadata accessor for RecordingFullScreenView();
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = *(type metadata accessor for PhotosAsset() + 24);
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + *(type metadata accessor for RecordingAssociation() + 20);
  v8 = type metadata accessor for Achievement(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[7];
    v10 = sub_24F9289E8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[8];
    type metadata accessor for AchievementProgressStatus(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v6 + 8))(v7 + v12, v5);
    }

    v13 = v8[14];
    v14 = sub_24F920818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }
  }

  v16 = v3 + v1[7];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F921B58();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
  }

  v19 = v3 + v1[10];
  v20 = sub_24F924AD8();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DB50);

  return swift_deallocObject();
}

uint64_t sub_24E7DE5C8(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingFullScreenView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E7D9F5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_24E7DE6B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DB80);
  sub_24E602068(&qword_27F21DB88, &qword_27F21DB70);
  sub_24E7DD004();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ChallengeDetailHeaderShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengeDetailHeaderShelfConstructionIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x676E656C6C616863;
  *(inited + 96) = 0xEF6C696174654465;
  v7 = type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for ChallengeDetail(0);
  *(inited + 136) = sub_24E7DF6D4(&qword_27F21DD30, type metadata accessor for ChallengeDetail);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7DF78C(v1 + v8, boxed_opaque_existential_1, type metadata accessor for ChallengeDetail);
  *(inited + 144) = 0x616C506C61636F6CLL;
  *(inited + 152) = 0xEB00000000726579;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for Player(0);
  *(inited + 192) = sub_24E7DF6D4(&qword_27F215388, type metadata accessor for Player);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E7DF78C(v1 + v10, v11, type metadata accessor for Player);
  *(inited + 200) = 0x6E49656D61477369;
  *(inited + 208) = 0xEF64656C6C617473;
  v12 = *(v1 + v7[7]);
  v13 = MEMORY[0x277D839B0];
  v14 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v14;
  *(inited + 216) = v12;
  strcpy((inited + 256), "isUpdateNeeded");
  *(inited + 271) = -18;
  v15 = *(v1 + v7[8]);
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v15;
  *(inited + 312) = 0xD00000000000001ALL;
  *(inited + 320) = 0x800000024FA47750;
  v16 = *(v1 + v7[9]);
  *(inited + 352) = v13;
  *(inited + 360) = v14;
  *(inited + 328) = v16;
  *(inited + 368) = 0x6F43657469766E69;
  *(inited + 376) = 0xEA00000000006564;
  v17 = (v1 + v7[10]);
  v18 = *v17;
  v19 = v17[1];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 408) = v20;
  v21 = sub_24E605DB4();
  *(inited + 384) = v18;
  *(inited + 392) = v19;
  *(inited + 416) = v21;
  *(inited + 424) = 0x4E72657469766E69;
  *(inited + 432) = 0xEB00000000656D61;
  v22 = (v1 + v7[11]);
  v23 = *v22;
  v24 = v22[1];
  *(inited + 464) = v20;
  *(inited + 472) = v21;
  *(inited + 440) = v23;
  *(inited + 448) = v24;
  strcpy((inited + 480), "pageBackground");
  *(inited + 495) = -18;
  v25 = v7[12];
  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 528) = sub_24E7D17FC();
  v26 = __swift_allocate_boxed_opaque_existential_1((inited + 496));
  sub_24E7D14D8(v1 + v25, v26);

  v27 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v28 = sub_24E80FFAC(v27);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v28;
  return result;
}

uint64_t type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent()
{
  result = qword_27F21DD50;
  if (!qword_27F21DD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E7DEC88(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444965676170;
    v6 = 0x616C506C61636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x6E49656D61477369;
    }

    if (a1)
    {
      v5 = 0x676E656C6C616863;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F43657469766E69;
    v2 = 0x4E72657469766E69;
    if (a1 != 7)
    {
      v2 = 0x6B63614265676170;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6574616470557369;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
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

uint64_t sub_24E7DEDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7DFD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7DEE18(uint64_t a1)
{
  v2 = sub_24E7DF618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7DEE54(uint64_t a1)
{
  v2 = sub_24E7DF618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetailHeaderShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v35 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChallengeDetail(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DD38);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent();
  MEMORY[0x28223BE20](v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24E7DF618();
  v16 = v11;
  v17 = v38;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v18 = v36;
  v19 = v37;
  v48 = 0;
  *v14 = sub_24F92CC28();
  v14[1] = v20;
  v47 = 1;
  sub_24E7DF6D4(&qword_27F21DD48, type metadata accessor for ChallengeDetail);
  sub_24F92CC68();
  sub_24E7DF66C(v8, v14 + v12[5], type metadata accessor for ChallengeDetail);
  v46 = 2;
  sub_24E7DF6D4(&qword_27F213E38, type metadata accessor for Player);
  v21 = v34;
  sub_24F92CC68();
  sub_24E7DF66C(v21, v14 + v12[6], type metadata accessor for Player);
  v45 = 3;
  v22 = v18;
  *(v14 + v12[7]) = sub_24F92CC38() & 1;
  v44 = 4;
  *(v14 + v12[8]) = sub_24F92CC38() & 1;
  v43 = 5;
  *(v14 + v12[9]) = sub_24F92CC38() & 1;
  v42 = 6;
  v23 = sub_24F92CBC8();
  v24 = (v14 + v12[10]);
  *v24 = v23;
  v24[1] = v25;
  v41 = 7;
  v26 = sub_24F92CBC8();
  v27 = (v14 + v12[11]);
  *v27 = v26;
  v27[1] = v28;
  type metadata accessor for Page.Background(0);
  v40 = 8;
  sub_24E7DF6D4(&qword_27F21D930, type metadata accessor for Page.Background);
  v29 = v33;
  sub_24F92CC18();
  (*(v22 + 8))(v16, v19);
  sub_24E7DF71C(v29, v14 + v12[12]);
  sub_24E7DF78C(v14, v32, type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_24E7DF7F4(v14, type metadata accessor for ChallengeDetailHeaderShelfConstructionIntent);
}

unint64_t sub_24E7DF618()
{
  result = qword_27F21DD40;
  if (!qword_27F21DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD40);
  }

  return result;
}

uint64_t sub_24E7DF66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7DF6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7DF71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7DF78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7DF7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7DF868(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ChallengeDetail(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7DF9F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChallengeDetail(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Player(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_24E7DFB6C()
{
  type metadata accessor for ChallengeDetail(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24E7D231C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E7DFC50()
{
  result = qword_27F21DD60;
  if (!qword_27F21DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD60);
  }

  return result;
}

unint64_t sub_24E7DFCA8()
{
  result = qword_27F21DD68;
  if (!qword_27F21DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD68);
  }

  return result;
}

unint64_t sub_24E7DFD00()
{
  result = qword_27F21DD70[0];
  if (!qword_27F21DD70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F21DD70);
  }

  return result;
}

uint64_t sub_24E7DFD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF6C696174654465 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49656D61477369 && a2 == 0xEF64656C6C617473 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xEE0064656465654ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA47750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43657469766E69 && a2 == 0xEA00000000006564 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E72657469766E69 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B63614265676170 && a2 == 0xEE00646E756F7267)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24E7E0078(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92A6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  v12 = v24[0];
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (v13)
  {
    sub_24E7E048C(a1, v11);
    v14 = type metadata accessor for Leaderboard(0);
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    KeyPath = swift_getKeyPath();
    v22 = v6;
    v23 = a2;
    v21 = &v19;
    MEMORY[0x28223BE20](KeyPath);
    *(&v19 - 2) = v13;
    *(&v19 - 1) = v11;
    v24[0] = v13;
    sub_24E7E0514(&qword_27F212898, type metadata accessor for GameActivityDraft);
    v20 = v8;

    v8 = v20;
    sub_24F91FD78();

    v6 = v22;

    sub_24E7E055C(v11);
  }

  sub_24F928A98();
  sub_24F92A678();
  sub_24F92A668();
  v24[3] = v5;
  v24[4] = MEMORY[0x277D223D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  type metadata accessor for UpdateChallengeLeaderboardActionImplementation();
  swift_getWitnessTable();
  v17 = sub_24F1489C4(v24);

  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v17;
}

uint64_t sub_24E7E048C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7E0514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7E055C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7E05D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a3;
  v4 = *(a2 + 8);
  *(v3 + 104) = *a2;
  *(v3 + 112) = v4;
  *(v3 + 120) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_24E7E0608, 0, 0);
}

uint64_t sub_24E7E0608()
{
  *(v0 + 136) = sub_24F92B7F8();
  *(v0 + 144) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7E06A0, v2, v1);
}

uint64_t sub_24E7E06A0()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 152) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24E7E0728, 0, 0);
}

uint64_t sub_24E7E0728()
{
  *(v0 + 160) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7E07B4, v2, v1);
}

uint64_t sub_24E7E07B4()
{
  v1 = v0[19];

  swift_getKeyPath();
  v0[10] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v0[21] = v3;

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24E7E08E4;
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];

  return sub_24E7E0CDC((v0 + 2), v4, v3, v8, v9, v6, v7, v10);
}

uint64_t sub_24E7E08E4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24E7E0B44;
  }

  else
  {
    v2 = sub_24E7E0A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7E0A18()
{
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesFriendComparisonDataIntentImplementation comparison data fetched", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  *v5 = v9;
  v5[1] = v8;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24E7E0B44()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesFriendComparisonDataIntentImplementation failed to fetch comparison data: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24E7E0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[230] = a8;
  v8[229] = a7;
  v8[228] = a6;
  v8[227] = a5;
  v8[226] = a4;
  v8[225] = a3;
  v8[219] = a2;
  v8[213] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DDF8);
  v8[231] = swift_task_alloc();
  v9 = type metadata accessor for Challenge(0);
  v8[232] = v9;
  v8[233] = *(v9 - 8);
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE00);
  v8[236] = swift_task_alloc();
  v10 = type metadata accessor for ChallengesFriendComparisonData.WinComparison();
  v8[237] = v10;
  v8[238] = *(v10 - 8);
  v8[239] = swift_task_alloc();
  v8[240] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7E0E9C, 0, 0);
}

uint64_t sub_24E7E0E9C()
{
  v1 = v0[229];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 challengeServicePrivate];
  v0[241] = v3;

  v4 = sub_24F92B098();
  v0[242] = v4;
  v5 = sub_24F92B098();
  v0[243] = v5;
  if (v1)
  {
    v6 = sub_24F92B098();
  }

  else
  {
    v6 = 0;
  }

  v0[244] = v6;
  v0[162] = v0;
  v0[167] = v0 + 183;
  v0[163] = sub_24E7E1070;
  v7 = swift_continuation_init();
  v0[182] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE08);
  v0[179] = v7;
  v0[175] = MEMORY[0x277D85DD0];
  v0[176] = 1107296256;
  v0[177] = sub_24E787F20;
  v0[178] = &block_descriptor_17;
  [v3 compareLeaderboardChallengeWithPlayerID:v4 otherPlayerID:v5 bundleID:v6 completionHandler:v0 + 175];

  return MEMORY[0x282200938](v0 + 162);
}

uint64_t sub_24E7E1070()
{
  v1 = *(*v0 + 1328);
  *(*v0 + 1960) = v1;
  if (v1)
  {
    v2 = sub_24E7E221C;
  }

  else
  {
    v2 = sub_24E7E1180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7E1180()
{
  v71 = v0;
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[183];
  v0[246] = v4;
  swift_unknownObjectRelease();

  if (v4)
  {
    v5 = [v4 wonChallenges];
    v6 = [v5 comparisons];

    v65 = v0;
    v0[247] = sub_24E69A5C4(0, &qword_27F21DE18);
    v7 = sub_24F92B5A8();

    if (v7 >> 62)
    {
      goto LABEL_44;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v8)
    {
      v70 = MEMORY[0x277D84F90];
      v9 = sub_24F4578E0(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v13 = 0;
      v14 = v70;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v13, v7);
        }

        else
        {
          v15 = *(v7 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 bundleID];
        v18 = sub_24F92B0D8();
        v20 = v19;

        v70 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24F4578E0((v21 > 1), v22 + 1, 1);
          v14 = v70;
        }

        ++v13;
        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v8 != v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v7 = sub_24F45D828(v14);

    v26 = v65;
    v65[189] = v7;
    v65[195] = MEMORY[0x277D84FA0];
    v27 = [v4 completedChallenges];
    v4 = [v27 details];

    v65[248] = sub_24E69A5C4(0, &qword_27F21DE20);
    v28 = sub_24F92B5A8();

    v29 = MEMORY[0x277D84F90];
    if (v28 >> 62)
    {
      v30 = sub_24F92C738();
      if (v30)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_20:
        v31 = 0;
        v66 = v30;
        v67 = v28 & 0xC000000000000001;
        v62 = v28 + 32;
        v63 = v28 & 0xFFFFFFFFFFFFFF8;
        v64 = v28;
        do
        {
          if (v67)
          {
            v32 = MEMORY[0x253052270](v31, v28);
            v33 = __OFADD__(v31, 1);
            v34 = v31 + 1;
            if (v33)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v31 >= *(v63 + 16))
            {
              goto LABEL_43;
            }

            v32 = *(v62 + 8 * v31);
            v33 = __OFADD__(v31, 1);
            v34 = v31 + 1;
            if (v33)
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              v8 = sub_24F92C738();
              goto LABEL_4;
            }
          }

          v35 = v32;
          v36 = [v32 bundleID];
          v4 = sub_24F92B0D8();
          v7 = v37;

          sub_24ED7C5F0(&v70, v4, v7);

          v68 = v35;
          v38 = [v35 participants];
          sub_24E69A5C4(0, &qword_27F21DE28);
          v39 = sub_24F92B5A8();

          if (v39 >> 62)
          {
            v40 = sub_24F92C738();
            v69 = v34;
            if (!v40)
            {
LABEL_40:

              v42 = v29;
              goto LABEL_21;
            }
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v69 = v34;
            if (!v40)
            {
              goto LABEL_40;
            }
          }

          v70 = v29;
          sub_24F4578E0(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            goto LABEL_42;
          }

          v41 = 0;
          v42 = v70;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x253052270](v41, v39);
            }

            else
            {
              v43 = *(v39 + 8 * v41 + 32);
            }

            v44 = v43;
            v45 = [v43 playerID];
            v4 = sub_24F92B0D8();
            v7 = v46;

            v70 = v42;
            v48 = *(v42 + 16);
            v47 = *(v42 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_24F4578E0((v47 > 1), v48 + 1, 1);
              v42 = v70;
            }

            ++v41;
            *(v42 + 16) = v48 + 1;
            v49 = v42 + 16 * v48;
            *(v49 + 32) = v4;
            *(v49 + 40) = v7;
          }

          while (v40 != v41);

          v28 = v64;
          v26 = v65;
          v29 = MEMORY[0x277D84F90];
LABEL_21:
          sub_24EAE9E40(v42);

          v31 = v69;
        }

        while (v69 != v66);
      }
    }

    v50 = v26[195];
    v26[249] = v50;
    v51 = *(v50 + 16);
    if (!v51)
    {
      v52 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

    v52 = sub_24EAE678C(*(v50 + 16), 0);
    v53 = sub_24EAE7C84(&v70, v52 + 4, v51, v50);

    v9 = sub_24E6586B4();
    if (v53 == v51)
    {
      v26 = v65;
LABEL_50:
      v54 = v26[230];
      v55 = swift_allocObject();
      v26[250] = v55;
      *(v55 + 16) = v52;
      *(v55 + 24) = 0;
      *(v55 + 32) = v54;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30);
      swift_asyncLet_begin();
      v56 = v26[189];
      v26[251] = v56;
      v57 = *(v56 + 16);
      if (!v57)
      {
        v58 = MEMORY[0x277D84F90];
LABEL_54:
        v60 = v26[230];
        v61 = swift_allocObject();
        v26[252] = v61;
        *(v61 + 16) = v58;
        *(v61 + 24) = 0;
        *(v61 + 32) = v60;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE38);
        swift_asyncLet_begin();
        v11 = sub_24E7E1964;
        v9 = (v26 + 2);
        v10 = v26 + 201;
        v12 = v26 + 170;

        return MEMORY[0x282200930](v9, v10, v11, v12);
      }

      v58 = sub_24EAE678C(*(v56 + 16), 0);
      v59 = sub_24EAE7C84(&v70, v58 + 4, v57, v56);

      v9 = sub_24E6586B4();
      if (v59 == v57)
      {
        v26 = v65;
        goto LABEL_54;
      }

LABEL_59:
      __break(1u);
      return MEMORY[0x282200930](v9, v10, v11, v12);
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_24E7E36D8();
  swift_allocError();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24E7E1964()
{
  v1[253] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 207, sub_24E7E2300, v1 + 184);
  }

  else
  {
    v1[254] = v1[201];

    return MEMORY[0x282200930](v1 + 82, v1 + 207, sub_24E7E1A2C, v1 + 196);
  }
}

uint64_t sub_24E7E1A2C()
{
  *(v1 + 2040) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1656, sub_24E7E2428, v1 + 1616);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E7E1AF0, 0, 0);
  }
}

uint64_t sub_24E7E1AF0()
{
  v54 = v0;
  v1 = v0[246];
  v52 = v0[207];

  v2 = [v1 completedChallengeCount];
  v44 = [v2 integerValue];

  v3 = [v1 completedChallengeGameCount];
  v43 = [v3 integerValue];

  v4 = [v1 wonChallenges];
  v5 = [v4 comparisons];

  v6 = sub_24F92B5A8();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v7 = v20)
  {
    v9 = 0;
    v47 = v7 & 0xFFFFFFFFFFFFFF8;
    v49 = v7 & 0xC000000000000001;
    v46 = v0[238];
    v51 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v49)
      {
        v10 = v7;
        v7 = MEMORY[0x253052270](v9);
      }

      else
      {
        if (v9 >= *(v47 + 16))
        {
          goto LABEL_18;
        }

        v10 = v7;
        v7 = *(v7 + 8 * v9 + 32);
      }

      v11 = v7;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = v0[237];
      v14 = v0[236];
      v53[0] = v7;
      sub_24E7E26D8(v53, v52, v14);

      if ((*(v46 + 48))(v14, 1, v13) == 1)
      {
        sub_24E601704(v0[236], &qword_27F21DE00);
      }

      else
      {
        v15 = v0[240];
        v16 = v0[239];
        sub_24E7E39A8(v0[236], v15, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
        sub_24E7E39A8(v15, v16, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_24E617804(0, v51[2] + 1, 1, v51);
        }

        v18 = v51[2];
        v17 = v51[3];
        if (v18 >= v17 >> 1)
        {
          v51 = sub_24E617804(v17 > 1, v18 + 1, 1, v51);
        }

        v19 = v0[239];
        v51[2] = v18 + 1;
        sub_24E7E39A8(v19, v51 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v18, type metadata accessor for ChallengesFriendComparisonData.WinComparison);
      }

      ++v9;
      v7 = v10;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v20 = v7;
    i = sub_24F92C738();
  }

  v51 = MEMORY[0x277D84F90];
LABEL_21:
  v21 = v0[246];

  v22 = [v21 completedChallenges];
  v23 = [v22 details];

  v24 = sub_24F92B5A8();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_39;
  }

  for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v25 = v40)
  {
    v27 = 0;
    v48 = v25 & 0xFFFFFFFFFFFFFF8;
    v50 = v25 & 0xC000000000000001;
    v45 = v0[233];
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v50)
      {
        v29 = v25;
        v25 = MEMORY[0x253052270](v27);
      }

      else
      {
        if (v27 >= *(v48 + 16))
        {
          goto LABEL_38;
        }

        v29 = v25;
        v25 = *(v25 + 8 * v27 + 32);
      }

      v30 = v25;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32 = v0[254];
      v33 = v0[232];
      v34 = v0[231];
      v53[0] = v25;
      sub_24E7E2A74(v53, v52, v32, v34);

      if ((*(v45 + 48))(v34, 1, v33) == 1)
      {
        sub_24E601704(v0[231], &qword_27F21DDF8);
      }

      else
      {
        v35 = v0[235];
        v36 = v0[234];
        sub_24E7E39A8(v0[231], v35, type metadata accessor for Challenge);
        sub_24E7E39A8(v35, v36, type metadata accessor for Challenge);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_24E6177DC(0, v28[2] + 1, 1, v28);
        }

        v38 = v28[2];
        v37 = v28[3];
        if (v38 >= v37 >> 1)
        {
          v28 = sub_24E6177DC(v37 > 1, v38 + 1, 1, v28);
        }

        v39 = v0[234];
        v28[2] = v38 + 1;
        sub_24E7E39A8(v39, v28 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38, type metadata accessor for Challenge);
      }

      ++v27;
      v25 = v29;
      if (v31 == j)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v40 = v25;
    j = sub_24F92C738();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_41:
  v41 = v0[213];

  *v41 = v44;
  v41[1] = v43;
  v41[2] = v51;
  v41[3] = v28;

  return MEMORY[0x282200920](v0 + 82, v0 + 207, sub_24E7E20E8, v0 + 214);
}

uint64_t sub_24E7E2140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E221C()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E7E2358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E2480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7E2550(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E7E3A7C;

  return sub_24E6473DC(a2, a3, a4);
}

uint64_t sub_24E7E2614(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E67D244;

  return sub_24E64768C(a2, a3, a4);
}

uint64_t sub_24E7E26D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v10 bundleID];
  v12 = sub_24F92B0D8();
  v14 = v13;

  if (*(a2 + 16))
  {
    v15 = sub_24E76D644(v12, v14);
    v17 = v16;

    if (v17)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v7 + 72) * v15, v9, type metadata accessor for Game);
      sub_24E7E38E0(v9, a3, type metadata accessor for Game);
      v18 = [v10 playerWinCount];
      v19 = [v18 integerValue];

      v20 = [v10 otherPlayerWinCount];
      v21 = [v20 integerValue];

      sub_24E7E3948(v9, type metadata accessor for Game);
      v22 = type metadata accessor for ChallengesFriendComparisonData.WinComparison();
      *(a3 + *(v22 + 20)) = v19;
      *(a3 + *(v22 + 24)) = v21;
      return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v24 = sub_24F9220D8();
  __swift_project_value_buffer(v24, qword_27F39E778);
  v25 = v10;
  v26 = sub_24F9220B8();
  v27 = sub_24F92BDB8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = [v25 bundleID];
    v31 = sub_24F92B0D8();
    v33 = v32;

    v34 = sub_24E7620D4(v31, v33, &v37);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24E5DD000, v26, v27, "ChallengesFriendComparisonDataIntentImplementation winComparisons: Failed to find game for bundleID: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  v35 = type metadata accessor for ChallengesFriendComparisonData.WinComparison();
  return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
}

uint64_t sub_24E7E2A74@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v126 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v100 - v9;
  v10 = type metadata accessor for Player(0);
  v119 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v122 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v100 - v14;
  MEMORY[0x28223BE20](v13);
  v121 = &v100 - v15;
  v16 = type metadata accessor for Challenge.Participant(0);
  v116 = *(v16 - 8);
  v117 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v115 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v100 - v19;
  v20 = sub_24F91F648();
  v112 = *(v20 - 8);
  v113 = v20;
  MEMORY[0x28223BE20](v20);
  v111 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v22 - 8);
  v109 = &v100 - v23;
  v24 = type metadata accessor for Game();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v110 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v100 - v28;
  v29 = &off_279691000;
  v114 = *a1;
  v30 = [v114 bundleID];
  v31 = sub_24F92B0D8();
  v33 = v32;

  if (!*(a2 + 16))
  {

LABEL_26:
    if (qword_27F2113B8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v34 = sub_24E76D644(v31, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_26;
  }

  v106 = v4;
  v37 = v108;
  sub_24E7E38E0(*(a2 + 56) + *(v25 + 72) * v34, v108, type metadata accessor for Game);
  v38 = v114;
  v39 = [v114 challengeVendorID];
  v104 = sub_24F92B0D8();
  v103 = v40;

  v41 = [v38 scheduledEndDate];
  v42 = v109;
  sub_24F91F608();

  (*(v112 + 56))(v42, 0, 1, v113);
  v43 = [v38 challengeID];
  v102 = sub_24F92B0D8();
  v101 = v44;

  v45 = [v38 endDate];
  sub_24F91F608();

  sub_24E7E38E0(v37, v110, type metadata accessor for Game);
  v46 = [v38 participants];
  sub_24E69A5C4(0, &qword_27F21DE28);
  v29 = sub_24F92B5A8();

  if (v29 >> 62)
  {
    v47 = sub_24F92C738();
  }

  else
  {
    v47 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = a4;
  if (!v47)
  {
    v125 = MEMORY[0x277D84F90];
LABEL_31:

    v86 = type metadata accessor for ChallengeDefinitionDetail(0);
    v87 = v107;
    (*(*(v86 - 8) + 56))(v107, 1, 1, v86);
    v88 = [v114 rank];
    v89 = v88;
    if (v88)
    {
      v90 = [v88 integerValue];
    }

    else
    {
      v90 = 0;
    }

    v91 = v104;
    v92 = v103;
    v93 = v89 == 0;
    sub_24E7E3948(v108, type metadata accessor for Game);
    v94 = type metadata accessor for Challenge(0);
    v95 = v105;
    sub_24E6009C8(v109, v105 + v94[13], &unk_27F22EC30);
    v96 = v101;
    *v95 = v102;
    v95[1] = v96;
    v95[2] = v91;
    v95[3] = v92;
    (*(v112 + 32))(v95 + v94[6], v111, v113);
    sub_24E7E39A8(v110, v95 + v94[7], type metadata accessor for Game);
    *(v95 + v94[8]) = v125;
    v97 = (v95 + v94[9]);
    *v97 = 0;
    v97[1] = 0xE000000000000000;
    sub_24E6009C8(v87, v95 + v94[10], &qword_27F212A08);
    v98 = v95 + v94[11];
    *v98 = 0;
    v98[8] = 0;
    v99 = v95 + v94[12];
    *v99 = v90;
    v99[8] = v93;
    return (*(*(v94 - 1) + 56))(v95, 0, 1, v94);
  }

  v48 = 0;
  v123 = v29 & 0xFFFFFFFFFFFFFF8;
  v124 = v29 & 0xC000000000000001;
  v125 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v124)
    {
      v49 = MEMORY[0x253052270](v48, v29);
    }

    else
    {
      if (v48 >= *(v123 + 16))
      {
        goto LABEL_36;
      }

      v49 = *(v29 + 8 * v48 + 32);
    }

    v50 = v49;
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    a4 = v29;
    v52 = [v49 playerID];
    v53 = sub_24F92B0D8();
    v55 = v54;

    if (*(v126 + 16))
    {
      v56 = v53;
      v57 = v126;
      v58 = sub_24E76D644(v56, v55);
      v60 = v59;

      if (v60)
      {
        v61 = *(v57 + 56) + *(v119 + 72) * v58;
        v62 = v118;
        sub_24E7E38E0(v61, v118, type metadata accessor for Player);
        v63 = v62;
        v64 = v121;
        sub_24E7E39A8(v63, v121, type metadata accessor for Player);
        sub_24E7E38E0(v64, v122, type metadata accessor for Player);
        v65 = [v50 rank];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 integerValue];
        }

        else
        {
          v67 = 0;
        }

        sub_24E7E3948(v121, type metadata accessor for Player);
        v68 = v115;
        sub_24E7E39A8(v122, v115, type metadata accessor for Player);
        v69 = v68 + *(v117 + 20);
        *v69 = v67;
        *(v69 + 8) = v66 == 0;
        sub_24E7E39A8(v68, v120, type metadata accessor for Challenge.Participant);
        v29 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_24E61782C(0, v125[2] + 1, 1, v125);
        }

        v71 = v125[2];
        v70 = v125[3];
        if (v71 >= v70 >> 1)
        {
          v125 = sub_24E61782C(v70 > 1, v71 + 1, 1, v125);
        }

        v72 = v125;
        v125[2] = v71 + 1;
        sub_24E7E39A8(v120, v72 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v71, type metadata accessor for Challenge.Participant);
        goto LABEL_9;
      }
    }

    else
    {
    }

    v29 = a4;
LABEL_9:
    ++v48;
    if (v51 == v47)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_27:
  v73 = sub_24F9220D8();
  __swift_project_value_buffer(v73, qword_27F39E778);
  v74 = v114;
  v75 = sub_24F9220B8();
  v76 = sub_24F92BDB8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v127 = v78;
    *v77 = 136315138;
    v79 = [v74 *(v29 + 2152)];
    v80 = sub_24F92B0D8();
    v82 = v81;

    v83 = sub_24E7620D4(v80, v82, &v127);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_24E5DD000, v75, v76, "ChallengesFriendComparisonDataIntentImplementation completedChallenges: Failed to find game for bundleID: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x2530542D0](v78, -1, -1);
    MEMORY[0x2530542D0](v77, -1, -1);
  }

  v84 = type metadata accessor for Challenge(0);
  return (*(*(v84 - 8) + 56))(a4, 1, 1, v84);
}

uint64_t sub_24E7E3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24E7E05D8(a1, a2, a3);
}

unint64_t sub_24E7E36D8()
{
  result = qword_27F21DE10;
  if (!qword_27F21DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE10);
  }

  return result;
}

uint64_t sub_24E7E3730(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E7E2550(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_12()
{

  return swift_deallocObject();
}

uint64_t sub_24E7E3828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E7E2614(a1, v4, v5, v6);
}

uint64_t sub_24E7E38E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7E3948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7E39A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7E3A24()
{
  result = qword_27F21DE40;
  if (!qword_27F21DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE40);
  }

  return result;
}

uint64_t sub_24E7E3AA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7E3B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardActionButton()
{
  result = qword_27F21DE48;
  if (!qword_27F21DE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7E3C70()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E7E3D20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7E55A0();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CD18();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for LeaderboardActionButton();
    v8[10] = 5;
    sub_24F929608();
    sub_24E7E56B4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E7E4050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEF0);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for LeaderboardActionButton();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  v35 = v13 + 80;
  sub_24E61DA68(&v38, (v13 + 80), qword_27F21B590);
  v14 = *(v11 + 44);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24E7E55A0();
  sub_24F92D108();
  if (v2)
  {
    v20 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E601704(v20, qword_27F24EC90);
    return sub_24E601704(&v13[v37], &qword_27F213E68);
  }

  else
  {
    v31 = v6;
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v19 = v34;
    sub_24F92CC68();
    v21 = v39;
    *v13 = v38;
    *(v13 + 1) = v21;
    *(v13 + 4) = v40;
    LOBYTE(v38) = 1;
    v22 = sub_24F92CC28();
    v23 = v18;
    v24 = v35;
    *(v13 + 5) = v22;
    *(v13 + 6) = v25;
    LOBYTE(v38) = 2;
    *(v13 + 7) = sub_24F92CC28();
    *(v13 + 8) = v26;
    LOBYTE(v38) = 3;
    v27 = sub_24F92CC38();
    v30 = 0;
    v13[72] = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v41 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v38, v24, qword_27F24EC90);
    LOBYTE(v38) = 5;
    sub_24E7E56B4(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v31;
    sub_24F92CC18();
    (*(v23 + 8))(v9, v19);
    sub_24E61DA68(v28, &v13[v37], &qword_27F213E68);
    sub_24E7E55F4(v13, v32);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24E7E5658(v13);
  }
}

uint64_t sub_24E7E4610()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x72616D6972507369;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_24E7E46C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7E5A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7E46EC(uint64_t a1)
{
  v2 = sub_24E7E55A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7E4728(uint64_t a1)
{
  v2 = sub_24E7E55A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7E4764@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 80, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E7E47EC@<X0>(void *a1@<X8>)
{
  *a1 = 2;
  v2 = *MEMORY[0x277D7EB30];
  v3 = sub_24F9218F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_24E7E48B8()
{
  result = qword_27F21DE58;
  if (!qword_27F21DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE58);
  }

  return result;
}

uint64_t sub_24E7E490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v85 = sub_24F924B38();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE70);
  *&v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v8 = &v71 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE78);
  MEMORY[0x28223BE20](v72);
  v10 = &v71 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE80);
  MEMORY[0x28223BE20](v75);
  v12 = &v71 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE88);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v71 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE90);
  MEMORY[0x28223BE20](v77);
  v84 = &v71 - v14;
  *v10 = sub_24F9249A8();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = *(a1 + 64);
  *&v87 = *(a1 + 56);
  *(&v87 + 1) = v15;
  sub_24E600AEC();

  sub_24F926EB8();
  v16 = sub_24F925A28();
  KeyPath = swift_getKeyPath();
  v18 = &v6[*(v4 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v6, &qword_27F2177F8);
  v76 = *(a1 + 72);
  if (v76 == 1)
  {
    v19 = sub_24F926C88();
  }

  else
  {
    v19 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v20 = v19;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE98) + 44)];
  (*(v73 + 32))(v21, v8, v74);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEA0) + 36)] = v20;
  v22 = sub_24F925808();
  v23 = &v10[*(v72 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v10, v12, &qword_27F21DE78);
  v24 = &v12[*(v75 + 36)];
  v25 = v92;
  *(v24 + 4) = v91;
  *(v24 + 5) = v25;
  *(v24 + 6) = v93;
  v26 = v88;
  *v24 = v87;
  *(v24 + 1) = v26;
  v27 = v90;
  *(v24 + 2) = v89;
  *(v24 + 3) = v27;
  sub_24E60169C(a1 + 80, v86, qword_27F24EC90);
  sub_24E601704(v86, qword_27F21B590);
  v28 = v84;
  v29 = v85;
  v30 = v82;
  v31 = v80;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9248C8();
  __swift_project_value_buffer(v32, qword_27F39F078);
  sub_24E7E53E4();
  v33 = v78;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v12, &qword_27F21DE80);
  v34 = v81;
  v35 = *(v81 + 104);
  v36 = v79;
  LODWORD(v75) = *MEMORY[0x277CE0118];
  v74 = v35;
  v35(v79);
  v37 = sub_24F924258();
  v86[3] = v37;
  v86[4] = sub_24E7E56B4(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  (*(v34 + 16))(boxed_opaque_existential_1 + *(v37 + 20), v36, v29);
  __asm { FMOV            V0.2D, #12.0 }

  v73 = _Q0;
  *boxed_opaque_existential_1 = _Q0;
  (*(v34 + 8))(v36, v29);
  sub_24E7E5528(v86, v28);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DED0);
  (*(v31 + 16))(v28 + v44[9], v33, v30);
  v45 = v30;
  v46 = v28 + v44[10];
  *v46 = sub_24F923398() & 1;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48 & 1;
  v49 = v28 + v44[11];
  *v49 = swift_getKeyPath();
  *(v49 + 8) = 0;
  v50 = v28;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v51 = qword_27F24E488;
  v52 = sub_24F923398();
  v54 = v53;
  v56 = v55;
  v57 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DED8) + 36);
  *v57 = v51;
  *(v57 + 8) = v52 & 1;
  *(v57 + 16) = v54;
  *(v57 + 24) = v56 & 1;
  LOBYTE(v51) = sub_24F923398();
  v59 = v58;
  LOBYTE(v54) = v60;
  sub_24E601704(v86, &qword_27F21DEC8);
  (*(v31 + 8))(v33, v45);
  v61 = v50 + *(v77 + 36);
  *v61 = v51 & 1;
  *(v61 + 8) = v59;
  *(v61 + 16) = v54 & 1;
  if (v76)
  {
    v62 = sub_24F925198();
  }

  else
  {
    v62 = sub_24F9251A8();
  }

  v63 = v62;
  v64 = v85;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEE0);
  v66 = v83;
  v67 = (v83 + *(v65 + 36));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEE8);
  v69 = (v67 + *(v68 + 52));
  (v74)(v69 + *(v37 + 20), v75, v64);
  *v69 = v73;
  *v67 = v63;
  *(v67 + *(v68 + 56)) = 256;
  return sub_24E6009C8(v84, v66, &qword_27F21DE90);
}

uint64_t sub_24E7E524C()
{
  sub_24E7E48B8();

  return sub_24F9218E8();
}

unint64_t sub_24E7E52DC()
{
  result = qword_27F21DE68;
  if (!qword_27F21DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DE68);
  }

  return result;
}

unint64_t sub_24E7E53E4()
{
  result = qword_27F21DEA8;
  if (!qword_27F21DEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE80);
    sub_24E7E5470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEA8);
  }

  return result;
}

unint64_t sub_24E7E5470()
{
  result = qword_27F21DEB0;
  if (!qword_27F21DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE78);
    sub_24E602068(&qword_27F21DEB8, &qword_27F21DEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEB0);
  }

  return result;
}

uint64_t sub_24E7E5528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DEC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E7E55A0()
{
  result = qword_27F21DEF8;
  if (!qword_27F21DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DEF8);
  }

  return result;
}

uint64_t sub_24E7E55F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardActionButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7E5658(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardActionButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7E56B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E7E5710()
{
  result = qword_27F21DF08;
  if (!qword_27F21DF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DEE0);
    sub_24E7E57C8();
    sub_24E602068(&qword_27F21DF28, &qword_27F21DEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF08);
  }

  return result;
}

unint64_t sub_24E7E57C8()
{
  result = qword_27F21DF10;
  if (!qword_27F21DF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE90);
    sub_24E7E5854();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF10);
  }

  return result;
}

unint64_t sub_24E7E5854()
{
  result = qword_27F21DF18;
  if (!qword_27F21DF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DED8);
    sub_24E602068(&qword_27F21DF20, &qword_27F21DED0);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF18);
  }

  return result;
}

unint64_t sub_24E7E5910()
{
  result = qword_27F21DF30;
  if (!qword_27F21DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF30);
  }

  return result;
}

unint64_t sub_24E7E5968()
{
  result = qword_27F21DF38;
  if (!qword_27F21DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF38);
  }

  return result;
}

unint64_t sub_24E7E59C0()
{
  result = qword_27F21DF40;
  if (!qword_27F21DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DF40);
  }

  return result;
}

uint64_t sub_24E7E5A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24E7E5C18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v42 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v43 = v4;
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF68);
  MEMORY[0x28223BE20](v45);
  v47 = (&v38 - v5);
  v46 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  MEMORY[0x28223BE20](v46);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF70);
  MEMORY[0x28223BE20](v8);
  v48 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF78);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SystemArtworkView(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v17 = *(*v1 + 24);
  v50 = *(*v1 + 16);
  v51 = v17;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    *v15 = v16;
    v18 = *(v13 + 20);
    *(v15 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFA8);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9B64(v15, v12, type metadata accessor for SystemArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView);
    sub_24E7E9A7C();

    sub_24F924E28();
    return sub_24E7E9BF4(v15, type metadata accessor for SystemArtworkView);
  }

  else
  {
    v38 = v10;
    v39 = v12;
    v40 = v13;
    v41 = v8;
    v21 = *(v1 + 8);
    v20 = *(v1 + 16);
    v22 = *(v1 + 24);
    if (v22 == 1 && (v23 = *(v16 + 24), v50 = *(v16 + 16), v51 = v23, !Artwork.URLTemplate.isBundleImage.getter()))
    {
      v34 = v44;
      sub_24E7E9B64(v1, v44, type metadata accessor for SwiftUIArtworkView);
      v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v36 = swift_allocObject();
      sub_24E7EAFA8(v34, v36 + v35, type metadata accessor for SwiftUIArtworkView);
      v37 = v47;
      *v47 = sub_24E7E99B4;
      v37[1] = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF80);
      sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent);
      sub_24E602068(&qword_27F21DF90, &qword_27F21DF80);
      v33 = v48;
      sub_24F924E28();
    }

    else
    {
      v24 = v3[6];
      v25 = v46;
      v26 = *(v46 + 24);
      v27 = sub_24F926E68();
      (*(*(v27 - 8) + 16))(&v7[v26], v2 + v24, v27);
      v28 = v2 + v3[7];
      v29 = *(v28 + 16);
      v30 = *(v2 + v3[8]);
      v31 = *(v2 + v3[9]);
      *v7 = v16;
      *(v7 + 1) = v21;
      *(v7 + 2) = v20;
      v7[24] = v22;
      v32 = &v7[v25[7]];
      *v32 = *v28;
      v32[16] = v29;
      v7[v25[8]] = v30;
      v7[v25[9]] = v31;
      sub_24E7E9B64(v7, v47, type metadata accessor for SwiftUIArtworkView.SizedContent);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DF80);
      sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent);
      sub_24E602068(&qword_27F21DF90, &qword_27F21DF80);
      v33 = v48;
      sub_24F924E28();
      sub_24E7E9BF4(v7, type metadata accessor for SwiftUIArtworkView.SizedContent);
    }

    sub_24E60169C(v33, v39, &qword_27F21DF70);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView);
    sub_24E7E9A7C();
    sub_24F924E28();
    return sub_24E601704(v33, &qword_27F21DF70);
  }
}

__n128 sub_24E7E630C@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;

  sub_24F923998();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  v10 = v9[6];
  v11 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
  v12 = v11[6];
  v13 = sub_24F926E68();
  (*(*(v13 - 8) + 16))(a2 + v12, &a1[v10], v13);
  v14 = &a1[v9[7]];
  v15 = v14[1].n128_u8[0];
  v16 = a1[v9[8]];
  v17 = a1[v9[9]];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  v18 = (a2 + v11[7]);
  result = *v14;
  *v18 = *v14;
  v18[1].n128_u8[0] = v15;
  *(a2 + v11[8]) = v16;
  *(a2 + v11[9]) = v17;
  return result;
}

uint64_t sub_24E7E6410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E000);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_24E7E6604(v1, v6);
  v13 = *(v1 + *(type metadata accessor for SwiftUIArtworkView.SizedContent(0) + 32));
  if (v13 == 2)
  {
    LOBYTE(v13) = sub_24E7E6C64();
  }

  sub_24E6009C8(v6, v9, &qword_27F21DFF0);
  v9[*(v7 + 36)] = v13;
  v14 = v2[1];
  v15 = v2[2];
  v16 = *(v2 + 24);
  sub_24E6009C8(v9, v12, &qword_27F21DFF8);
  v17 = &v12[*(v10 + 36)];
  *v17 = v14;
  *(v17 + 1) = v15;
  v17[16] = v16;
  sub_24E6009C8(v12, a1, &qword_27F21E000);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E008);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E7E6604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = type metadata accessor for BundleArtworkView(0);
  MEMORY[0x28223BE20](v60);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E010);
  MEMORY[0x28223BE20](v58);
  v6 = &v48[-v5];
  v7 = sub_24F91F6B8();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v48[-v11];
  v13 = type metadata accessor for RemoteArtworkView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[2];
  v56 = a1[1];
  v57 = v16;
  v17 = *(a1 + 24);
  if ((v17 & 1) != 0 || (v54 = *a1, v18 = *(v54 + 24), *&v62[0] = *(v54 + 16), *(&v62[0] + 1) = v18, Artwork.URLTemplate.isBundleImage.getter()))
  {
    v19 = *a1;
    v20 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v21 = *(v20 + 24);
    v22 = v60;
    v23 = *(v60 + 24);
    v24 = sub_24F926E68();
    (*(*(v24 - 8) + 16))(&v4[v23], a1 + v21, v24);
    v25 = *(a1 + *(v20 + 32));
    v27 = v56;
    v26 = v57;
    *v4 = v19;
    *(v4 + 1) = v27;
    *(v4 + 2) = v26;
    v4[24] = v17;
    v4[*(v22 + 28)] = v25;
    v28 = *(v22 + 32);
    *&v4[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFA8);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9B64(v4, v6, type metadata accessor for BundleArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView);

    sub_24F924E28();
    v29 = type metadata accessor for BundleArtworkView;
    v30 = v4;
  }

  else
  {
    v31 = type metadata accessor for SwiftUIArtworkView.SizedContent(0);
    v32 = v31[6];
    v33 = v13[6];
    v34 = sub_24F926E68();
    (*(*(v34 - 8) + 16))(&v15[v33], a1 + v32, v34);
    v35 = v31[8];
    v36 = (a1 + v31[7]);
    v37 = *v36;
    v50 = v36[1];
    v51 = v37;
    LODWORD(v35) = *(a1 + v35);
    v49 = *(v36 + 16);
    v52 = *(a1 + v31[9]);
    v53 = v35;
    v38 = &v15[v13[10]];
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader);
    v39 = v54;

    *v38 = sub_24F9243D8();
    v38[1] = v40;
    v41 = v13[11];
    v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
    sub_24F926F28();
    *&v15[v41] = v62[0];
    sub_24F91F6A8();
    v42 = v55;
    (*(v55 + 16))(v10, v12, v7);
    sub_24E7E9A34(&qword_27F2551B0, MEMORY[0x277CC95F0]);
    sub_24F92C7F8();
    (*(v42 + 8))(v12, v7);
    sub_24E65864C(v62, v61);
    sub_24F926F28();
    sub_24E6585F8(v62);
    v44 = v56;
    v43 = v57;
    *v15 = v39;
    *(v15 + 1) = v44;
    *(v15 + 2) = v43;
    v45 = &v15[v13[7]];
    v46 = v50;
    *v45 = v51;
    *(v45 + 1) = v46;
    v45[16] = v49;
    LOBYTE(v46) = v52;
    v15[v13[8]] = v53;
    v15[v13[9]] = v46;
    sub_24E7E9B64(v15, v6, type metadata accessor for RemoteArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView);
    sub_24F924E28();
    v29 = type metadata accessor for RemoteArtworkView;
    v30 = v15;
  }

  return sub_24E7E9BF4(v30, v29);
}

uint64_t sub_24E7E6C64()
{
  if (Artwork.Crop.preferredContentMode.getter() == 1)
  {
    return 0;
  }

  if (Artwork.Crop.preferredContentMode.getter() == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_24E7E6CD0@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E140);
  MEMORY[0x28223BE20](v116);
  v117 = (&v92 - v2);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E148);
  v3 = MEMORY[0x28223BE20](v113);
  v104 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v105 = &v92 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E150);
  MEMORY[0x28223BE20](v111);
  v112 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E038);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v99 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v92 - v10;
  v109 = sub_24F926E78();
  v107 = *(v109 - 8);
  v11 = MEMORY[0x28223BE20](v109);
  v95 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v98 = &v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v92 - v16;
  MEMORY[0x28223BE20](v15);
  v102 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100);
  MEMORY[0x28223BE20](v18 - 8);
  v106 = &v92 - v19;
  v20 = sub_24F926E08();
  v97 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E158);
  v23 = MEMORY[0x28223BE20](v108);
  v100 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v92 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E160);
  MEMORY[0x28223BE20](v115);
  v110 = &v92 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v92 - v28;
  v30 = sub_24F91F4A8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v1;
  v34 = *v1;

  sub_24F91F488();
  v35 = v30;

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_24E601704(v29, &qword_27F228530);
LABEL_13:
    v52 = v117;
    *v117 = 0;
    *(v52 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_24E7EB448();
    return sub_24F924E28();
  }

  (*(v31 + 32))(v33, v29, v30);
  sub_24F91F438();
  v36 = v33;
  if (!v37)
  {
    (*(v31 + 8))(v33, v30);
    goto LABEL_13;
  }

  v38 = v114;
  v39 = *(v114 + 24);
  v94 = v31;
  v93 = v36;
  if ((v39 & 1) == 0)
  {
    v105 = v30;
    v99 = v114[2];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = qword_27F22B5B8;
    sub_24F926E98();
    v55 = v97;
    (*(v97 + 104))(v22, *MEMORY[0x277CE0FE0], v20);
    sub_24F926E88();

    (*(v55 + 8))(v22, v20);
    v56 = type metadata accessor for BundleArtworkView(0);
    v57 = *(v56 + 24);
    v58 = sub_24F926E68();
    v59 = *(v58 - 8);
    v60 = v38 + v57;
    v61 = v106;
    (*(v59 + 16))(v106, v60, v58);
    (*(v59 + 56))(v61, 0, 1, v58);
    v104 = sub_24F926E38();

    sub_24E601704(v61, &qword_27F21E100);
    v62 = *(v38 + *(v56 + 28));
    if (v62 == 2)
    {
      LOBYTE(v62) = sub_24E7E6C64();
    }

    sub_24F927618();
    sub_24F9238C8();
    *&v119[6] = v120;
    *&v119[22] = v121;
    *&v119[38] = v122;
    v63 = *(v34 + 96);
    v64 = v110;
    v65 = v107;
    if (v63 > 1)
    {
      v35 = v105;
      v67 = v109;
      if (v63 != 2)
      {
        v89 = v103;
        (*(v107 + 56))(v103, 1, 1, v109);
        v90 = v102;
        sub_24F769EA0(v102);
        v91 = (*(v65 + 48))(v89, 1, v67);
        if (v91 != 1)
        {
          sub_24E601704(v89, &qword_27F21E038);
        }

        goto LABEL_32;
      }

      v66 = MEMORY[0x277CE1048];
    }

    else
    {
      if (*(v34 + 96))
      {
        v66 = MEMORY[0x277CE1058];
      }

      else
      {
        v66 = MEMORY[0x277CE1050];
      }

      v35 = v105;
      v67 = v109;
    }

    v78 = v96;
    (*(v107 + 104))(v96, *v66, v67);
    v79 = *(v65 + 32);
    v80 = v103;
    v79(v103, v78, v67);
    (*(v65 + 56))(v80, 0, 1, v67);
    v90 = v102;
    v79(v102, v80, v67);
LABEL_32:
    KeyPath = swift_getKeyPath();
    v82 = v100;
    v83 = &v100[*(v108 + 36)];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
    (*(v65 + 32))(v83 + *(v84 + 28), v90, v67);
    *v83 = KeyPath;
    *v82 = v104;
    *(v82 + 8) = v62;
    *(v82 + 9) = 1;
    *(v82 + 56) = *&v119[46];
    *(v82 + 42) = *&v119[32];
    v85 = *v119;
    *(v82 + 26) = *&v119[16];
    *(v82 + 10) = v85;
    v86 = v101;
    sub_24E6009C8(v82, v101, &qword_27F21E158);
    sub_24E60169C(v86, v112, &qword_27F21E158);
    swift_storeEnumTagMultiPayload();
    sub_24E7EB4D4();
    sub_24E7EB724();
    sub_24F924E28();
    v76 = v86;
    v77 = &qword_27F21E158;
    goto LABEL_33;
  }

  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_27F22B5B8;
  sub_24F926E98();
  v41 = *(type metadata accessor for BundleArtworkView(0) + 24);
  v42 = sub_24F926E68();
  v43 = *(v42 - 8);
  v44 = v114 + v41;
  v45 = v106;
  (*(v43 + 16))(v106, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  v46 = sub_24F926E38();

  sub_24E601704(v45, &qword_27F21E100);
  v47 = *(v34 + 96);
  if (v47 > 1)
  {
    v49 = v109;
    v50 = v107;
    v51 = v98;
    if (v47 != 2)
    {
      v87 = v99;
      (*(v107 + 56))(v99, 1, 1, v109);
      sub_24F769EA0(v51);
      v88 = (*(v50 + 48))(v87, 1, v49);
      if (v88 != 1)
      {
        sub_24E601704(v87, &qword_27F21E038);
      }

      goto LABEL_27;
    }

    v48 = MEMORY[0x277CE1048];
  }

  else
  {
    if (*(v34 + 96))
    {
      v48 = MEMORY[0x277CE1058];
    }

    else
    {
      v48 = MEMORY[0x277CE1050];
    }

    v49 = v109;
    v50 = v107;
    v51 = v98;
  }

  v68 = v95;
  (*(v50 + 104))(v95, *v48, v49);
  v69 = *(v50 + 32);
  v70 = v99;
  v69(v99, v68, v49);
  (*(v50 + 56))(v70, 0, 1, v49);
  v69(v51, v70, v49);
LABEL_27:
  v71 = swift_getKeyPath();
  v72 = v104;
  v73 = &v104[*(v113 + 36)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
  (*(v50 + 32))(v73 + *(v74 + 28), v51, v49);
  *v73 = v71;
  *v72 = v46;
  *(v72 + 8) = 1;
  v75 = v105;
  sub_24E6009C8(v72, v105, &qword_27F21E148);
  sub_24E60169C(v75, v112, &qword_27F21E148);
  swift_storeEnumTagMultiPayload();
  sub_24E7EB4D4();
  sub_24E7EB724();
  v64 = v110;
  sub_24F924E28();
  v76 = v75;
  v77 = &qword_27F21E148;
LABEL_33:
  sub_24E601704(v76, v77);
  sub_24E60169C(v64, v117, &qword_27F21E160);
  swift_storeEnumTagMultiPayload();
  sub_24E7EB448();
  sub_24F924E28();
  sub_24E601704(v64, &qword_27F21E160);
  return (*(v94 + 8))(v93, v35);
}

uint64_t sub_24E7E7C74(uint64_t a1)
{
  v2 = sub_24F926E78();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24F924468();
}

uint64_t sub_24E7E7D40@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E030);
  MEMORY[0x28223BE20](v44);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E038);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - v5;
  v37 = sub_24F926E78();
  v41 = *(v37 - 8);
  v6 = MEMORY[0x28223BE20](v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  v10 = MEMORY[0x28223BE20](v43);
  v38 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v20 = *v1;

  sub_24F91F488();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F228530);
LABEL_10:
    *v3 = 0;
    v3[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_24E62A864();
    return sub_24F924E28();
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_24F91F438();
  if (!v21)
  {
    (*(v17 + 8))(v19, v16);
    goto LABEL_10;
  }

  v35 = sub_24F926E48();
  if (*(v20 + 96) > 1u)
  {
    v23 = v41;
    if (*(v20 + 96) != 2)
    {
      v33 = v39;
      v25 = v37;
      (*(v41 + 56))(v39, 1, 1, v37);
      type metadata accessor for SystemArtworkView(0);
      sub_24F769EA0(v42);
      if ((*(v23 + 48))(v33, 1, v25) != 1)
      {
        sub_24E601704(v33, &qword_27F21E038);
      }

      goto LABEL_14;
    }

    v22 = MEMORY[0x277CE1048];
  }

  else
  {
    if (*(v20 + 96))
    {
      v22 = MEMORY[0x277CE1058];
    }

    else
    {
      v22 = MEMORY[0x277CE1050];
    }

    v23 = v41;
  }

  v25 = v37;
  (*(v23 + 104))(v8, *v22, v37);
  v26 = *(v23 + 32);
  v27 = v39;
  v26(v39, v8, v25);
  (*(v23 + 56))(v27, 0, 1, v25);
  v26(v42, v27, v25);
LABEL_14:
  KeyPath = swift_getKeyPath();
  v29 = v38;
  v30 = (v38 + *(v43 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30);
  (*(v23 + 32))(v30 + *(v31 + 28), v42, v25);
  *v30 = KeyPath;
  *v29 = v35;
  v32 = v40;
  sub_24E6009C8(v29, v40, &qword_27F22DF20);
  sub_24E60169C(v32, v3, &qword_27F22DF20);
  swift_storeEnumTagMultiPayload();
  sub_24E62A864();
  sub_24F924E28();
  sub_24E601704(v32, &qword_27F22DF20);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_24E7E8360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0C8);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = v2[1];
  if (v13 <= 0.0 || (v14 = v2[2], v14 <= 0.0))
  {
    v17 = *(v10 + 56);

    return v17(a1, 1, 1);
  }

  else
  {
    v30 = v4;
    v31 = v10;
    v32 = v9;
    v33 = a1;
    v16 = *(*v2 + 72);
    v15 = *(*v2 + 80);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      v29 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, v13, v14);
    }

    else
    {
      *&v35 = v16;
      *(&v35 + 1) = v15;

      v29 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v35, 0, v13, v14);
    }

    *v12 = sub_24F927618();
    *(v12 + 1) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0D0);
    sub_24E7E8740(v2, &v12[*(v20 + 44)]);
    sub_24E7E9B64(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    sub_24E7EAFA8(v7, v22 + v21, type metadata accessor for RemoteArtworkView);
    *(v22 + ((v21 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0D8) + 36)];
    *v23 = sub_24E7EB010;
    v23[1] = v22;
    v23[2] = 0;
    v23[3] = 0;
    v35 = *(v2 + *(v30 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
    sub_24F926F38();
    v24 = v34;
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E8) + 36)] = v24;
    sub_24E7E9B64(v2, v7, type metadata accessor for RemoteArtworkView);
    v25 = swift_allocObject();
    sub_24E7EAFA8(v7, v25 + v21, type metadata accessor for RemoteArtworkView);
    v26 = v32;
    v27 = &v12[*(v32 + 36)];
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 2) = sub_24E7EB0A0;
    *(v27 + 3) = v25;
    v28 = v33;
    sub_24E7EB100(v12, v33);
    return (*(v31 + 56))(v28, 0, 1, v26);
  }
}

uint64_t sub_24E7E8740@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F8);
  v54 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - v6;
  v7 = sub_24F926E08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RemoteArtworkView(0);
  v15 = (a1 + v14[11]);
  v16 = *v15;
  v17 = v15[1];
  v65 = *v15;
  v66 = v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
  sub_24F926F38();
  if (v60)
  {
    v44 = v17;
    v45 = v16;
    v46 = v3;
    v56 = v60;
    sub_24F926DD8();
    v18 = v14[6];
    v19 = sub_24F926E68();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v13, a1 + v18, v19);
    (*(v20 + 56))(v13, 0, 1, v19);
    sub_24F926E38();

    sub_24E601704(v13, &qword_27F21E100);
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v59 = sub_24F926E88();

    (*(v8 + 8))(v10, v7);
    v21 = *(a1 + v14[8]);
    if (v21 == 2)
    {
      LOBYTE(v21) = sub_24E7E6C64();
    }

    sub_24F927618();
    sub_24F9238C8();
    v50 = v77;
    v22 = v78;
    v49 = v79;
    v23 = v80;
    v58 = v81;
    v57 = v82;

    LOBYTE(v65) = v22;
    LOBYTE(v60) = v23;
    v24 = v22;
    v56 = v23;
    v55 = v21;
    v47 = 1;
    v3 = v46;
    v16 = v45;
    v17 = v44;
  }

  else
  {
    v59 = 0;
    v50 = 0;
    v49 = 0;
    v58 = 0;
    v57 = 0;
    v47 = 0;
    v56 = 0;
    v24 = 0;
    v55 = 0;
  }

  v65 = v16;
  v66 = v17;
  sub_24F926F38();
  v25 = v60;
  if (v60)
  {
  }

  v26 = (a1 + v14[7]);
  if (*(v26 + 16))
  {
    v26 = a1 + 1;
    v27 = a1 + 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  v28 = *v27;
  v29 = *v26;
  v74 = *a1;
  v75 = v29;
  v76 = v28;

  v30 = sub_24F927708();
  MEMORY[0x28223BE20](v30);
  *(&v44 - 16) = v25 != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E108);
  sub_24E7EB33C();
  sub_24E7EB390();
  v31 = v51;
  sub_24F926B28();

  v32 = v54;
  v33 = *(v54 + 16);
  v34 = v53;
  v33(v53, v31, v3);
  *&v60 = v59;
  *(&v60 + 1) = v55;
  v35 = v50;
  *&v61 = v50;
  *(&v61 + 1) = v24;
  v48 = v24;
  v36 = v49;
  *&v62 = v49;
  *(&v62 + 1) = v56;
  *&v63 = v58;
  *(&v63 + 1) = v57;
  v37 = v47;
  v64 = v47;
  v38 = v52;
  v52[64] = v47;
  v39 = v63;
  *(v38 + 2) = v62;
  *(v38 + 3) = v39;
  v40 = v61;
  *v38 = v60;
  *(v38 + 1) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E130);
  v33(&v38[*(v41 + 48)], v34, v3);
  sub_24E60169C(&v60, &v65, &qword_27F21E138);
  v42 = *(v32 + 8);
  v42(v31, v3);
  v42(v34, v3);
  v65 = v59;
  v66 = v55;
  v67 = v35;
  v68 = v48;
  v69 = v36;
  v70 = v56;
  v71 = v58;
  v72 = v57;
  v73 = v37;
  return sub_24E601704(&v65, &qword_27F21E138);
}

uint64_t sub_24E7E8ED8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E128);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E108);
  *(a3 + *(result + 36)) = v5;
  return result;
}

void sub_24E7E8F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteArtworkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v9[0] = *(a1 + *(MEMORY[0x28223BE20](v4) + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
  sub_24F926F38();
  if (v10)
  {
  }

  else if (*(a1 + *(v4 + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F0);
    sub_24F926F38();
    sub_24E7E9B64(a1, v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteArtworkView);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    sub_24E7EAFA8(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RemoteArtworkView);
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(a2, 1, v9, sub_24E7EB29C, v8);

    sub_24E601704(v9, &qword_27F235830);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader);
    sub_24F9243C8();
    __break(1u);
  }
}

uint64_t sub_24E7E91C0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for RemoteArtworkView(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24E7E9234(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for RemoteArtworkView(0) + 40)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0F0);
    sub_24F926F38();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v2, 1);

    return sub_24E6585F8(v2);
  }

  else
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader);
    result = sub_24F9243C8();
    __break(1u);
  }

  return result;
}

__n128 sub_24E7E9324@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v5 = (MEMORY[0x28223BE20])(v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_24E7E95E4(a1, v25);
  v23 = *&v25[0];
  v22 = BYTE8(v25[0]);
  v10 = BYTE9(v25[0]);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v11 = sub_24F922348();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = *(a1 + 80);
  *&v25[0] = *(a1 + 72);
  *(&v25[0] + 1) = v13;
  v14 = Artwork.Crop.preferredContentMode.getter();
  sub_24E60169C(v9, v7, &qword_27F214148);
  v15 = (*(v12 + 48))(v7, 1, v11);
  if (v15 == 1)
  {
    sub_24E601704(v9, &qword_27F214148);
    sub_24E601704(v7, &qword_27F214148);
    v16 = 0;
  }

  else
  {
    sub_24F9222E8();
    v16 = v17;
    sub_24E601704(v9, &qword_27F214148);
    (*(v12 + 8))(v7, v11);
  }

  sub_24F927618();
  sub_24F9238C8();
  *&v24[6] = v25[0];
  *&v24[22] = v25[1];
  *&v24[38] = v25[2];
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 9) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15 == 1;
  *(a2 + 25) = v14 != 1;
  result = *v24;
  v19 = *&v24[16];
  v20 = *&v24[32];
  *(a2 + 72) = *&v24[46];
  *(a2 + 58) = v20;
  *(a2 + 42) = v19;
  *(a2 + 26) = result;
  return result;
}

void sub_24E7E95E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
    sub_24F926BF8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24E7EBBCC();
    sub_24F924E28();
  }

  else
  {
    sub_24F926C98();
    sub_24F925808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220);
    sub_24E7EBBCC();
    sub_24F924E28();
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
}

void sub_24E7E9710(void **a1, void (*a2)(void **__return_ptr))
{
  a2(&v5);
  v3 = v5;
  v4 = *a1;
  if (v5)
  {

    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_24E7E9768(uint64_t a1, double a2, double a3)
{
  result = 0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v10 = v8;
    v11 = v7;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      return Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, a2, a3);
    }

    else
    {
      v10 = v8;
      v11 = v7;

      v9 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v10, 0, a2, a3);

      return v9;
    }
  }

  return result;
}

uint64_t sub_24E7E98CC()
{
  v1 = (type metadata accessor for SwiftUIArtworkView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

double sub_24E7E99B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwiftUIArtworkView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_24E7E630C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_24E7E9A34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E7E9A7C()
{
  result = qword_27F21DFA0;
  if (!qword_27F21DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DF70);
    sub_24E7E9A34(&qword_27F21DF88, type metadata accessor for SwiftUIArtworkView.SizedContent);
    sub_24E602068(&qword_27F21DF90, &qword_27F21DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DFA0);
  }

  return result;
}

uint64_t sub_24E7E9B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7E9BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24E7E9C80()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F926E68();
      if (v2 <= 0x3F)
      {
        sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E7E9DA8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E7E9E78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7E9F28()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DFD8, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7E9FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_24E7EA054()
{
  result = qword_27F21DFE0;
  if (!qword_27F21DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFE8);
    sub_24E7E9A34(&qword_27F21DF98, type metadata accessor for SystemArtworkView);
    sub_24E7E9A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DFE0);
  }

  return result;
}

uint64_t sub_24E7EA1A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F926E68();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E7EA2E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F926E68();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DFC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E7EA418()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F926E68();
      if (v2 <= 0x3F)
      {
        sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E7E9FDC(319, &qword_27F21DFD8, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F926E68();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F926E68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7EA6E0()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24F926E68();
      if (v2 <= 0x3F)
      {
        sub_24E7E9FDC(319, &qword_27F21DF58, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E7EA96C(319, &qword_27F21DF60, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E7EA874();
            if (v5 <= 0x3F)
            {
              sub_24E7EA908();
              if (v6 <= 0x3F)
              {
                sub_24E7EA96C(319, &qword_27F21E070, MEMORY[0x277D84030], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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

void sub_24E7EA874()
{
  if (!qword_27F21E060)
  {
    type metadata accessor for ArtworkLoader();
    sub_24E7E9A34(&qword_27F21E028, type metadata accessor for ArtworkLoader);
    v0 = sub_24F9243E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21E060);
    }
  }
}

void sub_24E7EA908()
{
  if (!qword_27F21E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21B9C0);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21E068);
    }
  }
}

void sub_24E7EA96C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E7EA9C0()
{
  result = qword_27F21E078;
  if (!qword_27F21E078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E008);
    sub_24E7EAA78();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E078);
  }

  return result;
}

unint64_t sub_24E7EAA78()
{
  result = qword_27F21E080;
  if (!qword_27F21E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E000);
    sub_24E7EAB04();
    sub_24E7EAD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E080);
  }

  return result;
}

unint64_t sub_24E7EAB04()
{
  result = qword_27F21E088;
  if (!qword_27F21E088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFF8);
    sub_24E7EAB90();
    sub_24E7EAD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E088);
  }

  return result;
}

unint64_t sub_24E7EAB90()
{
  result = qword_27F21E090;
  if (!qword_27F21E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DFF0);
    sub_24E7EAC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E090);
  }

  return result;
}

unint64_t sub_24E7EAC14()
{
  result = qword_27F21E098;
  if (!qword_27F21E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0A0);
    sub_24E7E9A34(&qword_27F21E018, type metadata accessor for RemoteArtworkView);
    sub_24E7E9A34(&qword_27F21E020, type metadata accessor for BundleArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E098);
  }

  return result;
}

unint64_t sub_24E7EAD00()
{
  result = qword_27F21E0A8;
  if (!qword_27F21E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0A8);
  }

  return result;
}

unint64_t sub_24E7EAD54()
{
  result = qword_27F21E0B0;
  if (!qword_27F21E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0B0);
  }

  return result;
}

unint64_t sub_24E7EADAC()
{
  result = qword_27F21E0B8;
  if (!qword_27F21E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0C0);
    sub_24E62A864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E0B8);
  }

  return result;
}

uint64_t sub_24E7EAE70()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_24E7EAFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24E7EB010()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24E7E8F78(v0 + v2, v3);
}

uint64_t sub_24E7EB0A0()
{
  v1 = *(type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E7E9234(v2);
}

uint64_t sub_24E7EB100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_49Tm()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F926E68();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_24E7EB29C(uint64_t a1)
{
  type metadata accessor for RemoteArtworkView(0);

  return sub_24E7E91C0(a1);
}

unint64_t sub_24E7EB33C()
{
  result = qword_27F21E110;
  if (!qword_27F21E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E110);
  }

  return result;
}

unint64_t sub_24E7EB390()
{
  result = qword_27F21E118;
  if (!qword_27F21E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E108);
    sub_24E602068(&qword_27F21E120, &qword_27F21E128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E118);
  }

  return result;
}

unint64_t sub_24E7EB448()
{
  result = qword_27F21E168;
  if (!qword_27F21E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E160);
    sub_24E7EB4D4();
    sub_24E7EB724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E168);
  }

  return result;
}

unint64_t sub_24E7EB4D4()
{
  result = qword_27F21E170;
  if (!qword_27F21E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E158);
    sub_24E7EB58C();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E170);
  }

  return result;
}

unint64_t sub_24E7EB58C()
{
  result = qword_27F21E178;
  if (!qword_27F21E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E180);
    sub_24E7EB618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E178);
  }

  return result;
}

unint64_t sub_24E7EB618()
{
  result = qword_27F21E188;
  if (!qword_27F21E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E190);
    sub_24E7EB808(&qword_27F21E198, &qword_27F21E1A0, &unk_24F95BA00, sub_24E7EAD00);
    sub_24E7EB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E188);
  }

  return result;
}

unint64_t sub_24E7EB6D0()
{
  result = qword_27F21E1A8;
  if (!qword_27F21E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1A8);
  }

  return result;
}

unint64_t sub_24E7EB724()
{
  result = qword_27F21E1B0;
  if (!qword_27F21E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E148);
    sub_24E7EB808(&qword_27F21E1B8, &qword_27F21E1C0, &unk_24F95BA08, sub_24E7EB6D0);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1B0);
  }

  return result;
}

uint64_t sub_24E7EB808(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7EB8A0()
{
  result = qword_27F21E1C8;
  if (!qword_27F21E1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E1D0);
    sub_24E7EB924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1C8);
  }

  return result;
}

unint64_t sub_24E7EB924()
{
  result = qword_27F21E1D8;
  if (!qword_27F21E1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0C8);
    sub_24E7EB9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1D8);
  }

  return result;
}

unint64_t sub_24E7EB9B0()
{
  result = qword_27F21E1E0;
  if (!qword_27F21E1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0E8);
    sub_24E7EBA68();
    sub_24E602068(&qword_27F21E200, &qword_27F21E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1E0);
  }

  return result;
}

unint64_t sub_24E7EBA68()
{
  result = qword_27F21E1E8;
  if (!qword_27F21E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E0D8);
    sub_24E602068(&qword_27F21E1F0, &qword_27F21E1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E1E8);
  }

  return result;
}

unint64_t sub_24E7EBB24()
{
  result = qword_27F21E210;
  if (!qword_27F21E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E218);
    sub_24E7EB448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E210);
  }

  return result;
}

unint64_t sub_24E7EBBCC()
{
  result = qword_27F21E228;
  if (!qword_27F21E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E220);
    sub_24E602068(&qword_27F21E230, &qword_27F21E238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E228);
  }

  return result;
}

unint64_t sub_24E7EBC88()
{
  result = qword_27F21E240;
  if (!qword_27F21E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E248);
    sub_24E7EBD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E240);
  }

  return result;
}

unint64_t sub_24E7EBD14()
{
  result = qword_27F21E250;
  if (!qword_27F21E250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E258);
    sub_24E7EBDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E250);
  }

  return result;
}

unint64_t sub_24E7EBDA0()
{
  result = qword_27F21E260;
  if (!qword_27F21E260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E268);
    sub_24E7EBE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E260);
  }

  return result;
}

unint64_t sub_24E7EBE24()
{
  result = qword_27F21E270;
  if (!qword_27F21E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E278);
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E270);
  }

  return result;
}

uint64_t sub_24E7EC070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E7EC0B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_24E7EC110()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v3 setNumberOfPages_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E290);
  sub_24F925518();
  [v3 addTarget:v5 action:sel_updateCurrentPageWithSender_ forControlEvents:4096];

  [v3 setProgress_];
  return v3;
}

id sub_24E7EC1DC(void *a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  v9 = *(v1 + 1);
  v10 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8);
  MEMORY[0x25304CAF0](&v8, v6);
  [a1 setCurrentPage_];
  [a1 setNumberOfPages_];
  return [a1 setProgress_];
}

id sub_24E7EC284@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = type metadata accessor for PageControl.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV12GameStoreKit11PageControl11Coordinator_control];
  *v10 = v4;
  *(v10 + 1) = v3;
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 4) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  v11 = v7;
  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24E7EC36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E7EC4B4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E7EC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E7EC4B4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E7EC434()
{
  sub_24E7EC4B4();
  sub_24F924DC8();
  __break(1u);
}

unint64_t sub_24E7EC460()
{
  result = qword_27F21E288;
  if (!qword_27F21E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E288);
  }

  return result;
}

unint64_t sub_24E7EC4B4()
{
  result = qword_27F21E298;
  if (!qword_27F21E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E298);
  }

  return result;
}

uint64_t sub_24E7EC51C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Game();
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
    v14 = *(a1 + a3[6] + 8);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24E7EC6CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Game();
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
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardsListPageIntent()
{
  result = qword_27F21E2A0;
  if (!qword_27F21E2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7EC8A8()
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Game();
    if (v1 <= 0x3F)
    {
      sub_24E7EC99C();
      if (v2 <= 0x3F)
      {
        sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E7EC99C()
{
  if (!qword_27F21E2B0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21E2B0);
    }
  }
}

void sub_24E7EC9EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24E7ECA40@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v24 = v1;
  sub_24E60169C(v1, boxed_opaque_existential_1, &qword_27F21D8F8);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v4 = type metadata accessor for LeaderboardsListPageIntent();
  v5 = v4[5];
  *(inited + 128) = type metadata accessor for Game();
  *(inited + 136) = sub_24E7EDC68(&qword_27F217960, type metadata accessor for Game);
  v6 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7EDA28(v1 + v5, v6, type metadata accessor for Game);
  strcpy((inited + 144), "leaderboardSet");
  *(inited + 159) = -18;
  v7 = (v1 + v4[6]);
  v9 = *v7;
  v8 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v23 = *v7;
  v14 = v7[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2E0);
  *(inited + 192) = sub_24E7EDA90();
  v15 = swift_allocObject();
  *(inited + 160) = v15;
  v15[2] = v9;
  v15[3] = v8;
  v15[4] = v11;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = v14;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v16 = v4[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 248) = sub_24E7EDBB4();
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v24 + v16, v17, &unk_27F23E1F0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v18 = *(v24 + v4[8]);
  v19 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v19;
  *(inited + 272) = v18;
  sub_24E7ED984(v23, v8);
  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24E7ECD74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7ED87C();
  sub_24F92D128();
  LOBYTE(v19) = 0;
  type metadata accessor for Page.Background(0);
  sub_24E7EDC68(&qword_27F21D920, type metadata accessor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardsListPageIntent();
    LOBYTE(v19) = 1;
    type metadata accessor for Game();
    sub_24E7EDC68(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[6];
    v19 = *v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18[7] = 2;
    sub_24E7ED984(v19, v11);
    sub_24E7ED9D4();
    sub_24F92CCF8();
    sub_24E687F7C(v19, v20);
    LOBYTE(v19) = 3;
    type metadata accessor for Player(0);
    sub_24E7EDC68(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    LOBYTE(v19) = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E7ED090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27 - v4;
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v27 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E2B8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v27 - v10;
  v12 = type metadata accessor for LeaderboardsListPageIntent();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7ED87C();
  v32 = v11;
  v15 = v34;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v7;
  v17 = v14;
  type metadata accessor for Page.Background(0);
  LOBYTE(v35) = 0;
  sub_24E7EDC68(&qword_27F21D930, type metadata accessor for Page.Background);
  v18 = v30;
  v19 = v33;
  v20 = v32;
  sub_24F92CC18();
  sub_24E6009C8(v18, v17, &qword_27F21D8F8);
  LOBYTE(v35) = 1;
  sub_24E7EDC68(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E636644(v16, v17 + v12[5]);
  v39 = 2;
  sub_24E7ED8D0();
  sub_24F92CC18();
  v21 = v31;
  v34 = 0;
  v22 = v38;
  v23 = v17 + v12[6];
  v24 = v36;
  *v23 = v35;
  *(v23 + 16) = v24;
  *(v23 + 32) = v37;
  *(v23 + 48) = v22;
  type metadata accessor for Player(0);
  LOBYTE(v35) = 3;
  sub_24E7EDC68(&qword_27F213E38, type metadata accessor for Player);
  v25 = v29;
  sub_24F92CC18();
  sub_24E6009C8(v25, v17 + v12[7], &unk_27F23E1F0);
  LOBYTE(v35) = 4;
  LOBYTE(v25) = sub_24F92CC38();
  (*(v21 + 8))(v20, v19);
  *(v17 + v12[8]) = v25 & 1;
  sub_24E7EDA28(v17, v28, type metadata accessor for LeaderboardsListPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7ED924(v17, type metadata accessor for LeaderboardsListPageIntent);
}

uint64_t sub_24E7ED6D0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x6F6272656461656CLL;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
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

uint64_t sub_24E7ED774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7EDDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7ED79C(uint64_t a1)
{
  v2 = sub_24E7ED87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7ED7D8(uint64_t a1)
{
  v2 = sub_24E7ED87C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E7ED87C()
{
  result = qword_27F21E2C0;
  if (!qword_27F21E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2C0);
  }

  return result;
}

unint64_t sub_24E7ED8D0()
{
  result = qword_27F21E2C8;
  if (!qword_27F21E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2C8);
  }

  return result;
}

uint64_t sub_24E7ED924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7ED984(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24E7ED9D4()
{
  result = qword_27F21E2D8;
  if (!qword_27F21E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2D8);
  }

  return result;
}

uint64_t sub_24E7EDA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7EDA90()
{
  result = qword_27F21E2E8;
  if (!qword_27F21E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21E2E0);
    sub_24E7EDB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2E8);
  }

  return result;
}

unint64_t sub_24E7EDB14()
{
  result = qword_27F21E2F0;
  if (!qword_27F21E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2F0);
  }

  return result;
}

uint64_t sub_24E7EDB68()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24E7EDBB4()
{
  result = qword_27F21E2F8;
  if (!qword_27F21E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E1F0);
    sub_24E7EDC68(&qword_27F215388, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E2F8);
  }

  return result;
}

uint64_t sub_24E7EDC68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E7EDCC4()
{
  result = qword_27F21E300;
  if (!qword_27F21E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E300);
  }

  return result;
}

unint64_t sub_24E7EDD1C()
{
  result = qword_27F21E308;
  if (!qword_27F21E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E308);
  }

  return result;
}

unint64_t sub_24E7EDD74()
{
  result = qword_27F21E310;
  if (!qword_27F21E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E310);
  }

  return result;
}

uint64_t sub_24E7EDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEE00746553647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

id sub_24E7EDF8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v72 - v7;
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v78 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72 - v17;
  v19 = a1;
  v20 = [v19 bundleIdentifier];
  v21 = sub_24F92B0D8();
  v23 = v22;

  *a3 = v21;
  *(a3 + 8) = v23;
  v24 = [v19 adamID];
  v25 = [v24 stringValue];

  v26 = sub_24F92B0D8();
  v28 = v27;

  *(a3 + 16) = v26;
  *(a3 + 24) = v28;
  v29 = [v19 name];
  v30 = sub_24F92B0D8();
  v32 = v31;

  *(a3 + 32) = v30;
  *(a3 + 40) = v32;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v75 = a2;
  sub_24E60169C(a2, v18, &unk_27F22EC30);
  v33 = sub_24F91F648();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v18, 1, v33);
  if (v35 == 1)
  {
    sub_24E601704(v18, &unk_27F22EC30);
    v36 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v36 = v37 * 1000.0;
    (*(v34 + 8))(v18, v33);
  }

  *(a3 + 64) = v36;
  *(a3 + 72) = v35 == 1;
  v38 = [v19 compatiblePlatforms];
  v39 = sub_24F92BAA8();

  *&v80 = 0x736F63616DLL;
  *(&v80 + 1) = 0xE500000000000000;
  sub_24F92C7F8();
  LOBYTE(v38) = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  if (v38)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  *&v80 = 7565161;
  *(&v80 + 1) = 0xE300000000000000;
  sub_24F92C7F8();
  v41 = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  v42 = v40 & 0xFFFFFFFFFFFFFFFELL | v41 & 1;
  *&v80 = 0x6F7674656C707061;
  *(&v80 + 1) = 0xE900000000000073;
  sub_24F92C7F8();
  v43 = sub_24F4D3620(&v82, v39);
  sub_24E6585F8(&v82);
  if (v43)
  {
    v42 |= 4uLL;
  }

  *&v80 = 1936683640;
  *(&v80 + 1) = 0xE400000000000000;
  sub_24F92C7F8();
  v44 = sub_24F4D3620(&v82, v39);

  sub_24E6585F8(&v82);
  v45 = v42 | 8;
  if ((v44 & 1) == 0)
  {
    v45 = v42;
  }

  *(a3 + 96) = v45;
  *(a3 + 105) = [v19 isArcadeGame];
  result = [objc_opt_self() defaultWorkspace];
  v47 = v77;
  v48 = v78;
  if (result)
  {
    v49 = result;
    v50 = [v19 bundleIdentifier];

    v51 = v76;
    if (!v50)
    {
      sub_24F92B0D8();
      v50 = sub_24F92B098();
    }

    v52 = [v49 applicationIsInstalled_];

    *(a3 + 104) = v52;
    *(a3 + 106) = [v19 supportsAchievements];
    *(a3 + 107) = 0;
    *(a3 + 109) = [v19 supportsLeaderboardSets];
    *(a3 + 110) = [v19 supportsLeaderboards];
    sub_24F9289D8();
    v53 = [v19 artwork];
    if (v53)
    {
      v54 = v53;
      sub_24F3D7378(v54);

      sub_24E601704(v75, &unk_27F22EC30);
      (*(v47 + 8))(v48, v51);
      (*(v47 + 32))(v48, v14, v51);
    }

    else
    {
      v55 = [v19 icons];
      if (v55)
      {
        v56 = v55;
        v57 = sub_24F92AE38();

        strcpy(v79, "template");
        BYTE1(v79[2]) = 0;
        HIWORD(v79[2]) = 0;
        v79[3] = -402653184;
        sub_24F92C7F8();
        if (*(v57 + 16) && (v58 = sub_24E76D934(&v82), (v59 & 1) != 0))
        {
          sub_24E643A9C(*(v57 + 56) + 32 * v58, &v80);
          sub_24E6585F8(&v82);

          if (*(&v81 + 1))
          {
            if (swift_dynamicCast())
            {
              strcpy(&v80, "{w}x{h}bb.png");
              HIWORD(v80) = -4864;
              strcpy(v79, "{w}x{h}{c}.{f}");
              HIBYTE(v79[3]) = -18;
              sub_24E600AEC();
              v60 = sub_24F92C568();
              v62 = v61;

              v63 = HIBYTE(v62) & 0xF;
              if ((v62 & 0x2000000000000000) == 0)
              {
                v63 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (v63)
              {
                sub_24F3E5448(MEMORY[0x277D84F90]);
                v64 = v74;
                sub_24F928948();

                sub_24E601704(v75, &unk_27F22EC30);
                (*(v47 + 8))(v48, v51);
                (*(v47 + 56))(v64, 0, 1, v51);
                v65 = v73;
                (*(v47 + 32))(v73, v64, v51);
              }

              else
              {

                v71 = v74;
                (*(v47 + 56))(v74, 1, 1, v51);
                v65 = v73;
                sub_24F9289D8();

                sub_24E601704(v75, &unk_27F22EC30);
                (*(v47 + 8))(v48, v51);
                if ((*(v47 + 48))(v71, 1, v51) != 1)
                {
                  sub_24E601704(v71, &qword_27F213FB0);
                }
              }

              (*(v47 + 32))(v48, v65, v51);
            }

            else
            {
              sub_24E601704(v75, &unk_27F22EC30);
            }

            goto LABEL_29;
          }
        }

        else
        {

          sub_24E6585F8(&v82);
          v80 = 0u;
          v81 = 0u;
        }

        sub_24E601704(v75, &unk_27F22EC30);
      }

      else
      {

        sub_24E601704(v75, &unk_27F22EC30);
        v80 = 0u;
        v81 = 0u;
      }

      sub_24E601704(&v80, &qword_27F2129B0);
    }

LABEL_29:
    v66 = type metadata accessor for Game();
    (*(v47 + 32))(a3 + v66[18], v48, v51);
    (*(v47 + 56))(a3 + v66[19], 1, 1, v51);
    *(a3 + 80) = 0;
    *(a3 + 88) = 1;
    v67 = (a3 + v66[20]);
    *v67 = 0;
    v67[1] = 0;
    v68 = v66[21];
    v69 = sub_24F920818();
    result = (*(*(v69 - 8) + 56))(a3 + v68, 1, 1, v69);
    v70 = (a3 + v66[22]);
    *v70 = 0;
    v70[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Game.displayName()()
{
  if (v0[7])
  {
    v1 = v0[6];
    v2 = v0[7];
  }

  else
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Game.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Game.adamID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Game.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Game.gamesDisplayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Game.gameIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Game() + 72);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Game()
{
  result = qword_27F21E380;
  if (!qword_27F21E380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Game.rawMediaAPIResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for Game() + 80));

  return v1;
}

uint64_t Game.miniGamesDeepLink.getter()
{
  v1 = *(v0 + *(type metadata accessor for Game() + 88));

  return v1;
}

uint64_t sub_24E7EEEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v273 = a2;
  v274 = a3;
  v249 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v5 - 8);
  v253 = &v222 - v6;
  v246 = sub_24F921118();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v244 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v243 = &v222 - v9;
  v242 = sub_24F920788();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v240 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0);
  MEMORY[0x28223BE20](v11 - 8);
  v239 = &v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v238 = &v222 - v14;
  MEMORY[0x28223BE20](v15);
  v237 = &v222 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B8);
  MEMORY[0x28223BE20](v17 - 8);
  v232 = &v222 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v19 - 8);
  v248 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v247 = &v222 - v22;
  MEMORY[0x28223BE20](v23);
  v251 = &v222 - v24;
  MEMORY[0x28223BE20](v25);
  v254 = &v222 - v26;
  v260 = sub_24F920818();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v264 = &v222 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_24F9202F8();
  v261 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v258 = &v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v257 = &v222 - v30;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v236 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v235 = &v222 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0);
  MEMORY[0x28223BE20](v32 - 8);
  v262 = &v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v255 = &v222 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v36 - 8);
  v252 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v250 = &v222 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v222 - v41;
  MEMORY[0x28223BE20](v43);
  v265 = &v222 - v44;
  v269 = sub_24F9289E8();
  v45 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v47 = &v222 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v222 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v222 - v52;
  v54 = sub_24F920258();
  v55 = *(v54 - 8);
  v271 = v54;
  v272 = v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v222 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v222 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v267 = *(v61 - 8);
  v268 = v61;
  MEMORY[0x28223BE20](v61);
  v63 = &v222 - v62;
  sub_24F920318();
  v270 = v60;
  sub_24F920268();
  v64 = v266;
  v65 = sub_24F920F08();
  if (v64)
  {

    sub_24E601704(v273, &qword_27F21E3B0);
    v67 = sub_24F920358();
    (*(*(v67 - 8) + 8))(a1, v67);
LABEL_41:
    (*(v272 + 8))(v270, v271);
    return (*(v267 + 8))(v63, v268);
  }

  v229 = v42;
  v223 = v50;
  v225 = v65;
  v231 = v66;
  v233 = a1;
  v227 = v57;
  v228 = v47;
  sub_24F9289D8();
  v68 = v45 + 56;
  v224 = *(v45 + 56);
  v224(v265, 1, 1, v269);
  v69 = sub_24F920ED8();
  v266 = v53;
  v234 = v45;
  v226 = v69;
  v230 = v70;
  v71 = v261;
  v72 = v258;
  v73 = v255;
  v74 = v233;
  MEMORY[0x253045CB0]();
  v75 = v229;
  sub_24F3D6C4C(v73, v229);
  v255 = v63;
  v76 = v234;
  v77 = v269;
  v78 = (*(v234 + 48))(v75, 1, v269);
  v222 = v68;
  if (v78 == 1)
  {
    sub_24E601704(v75, &qword_27F213FB0);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v79 = sub_24F9220D8();
    __swift_project_value_buffer(v79, qword_27F39E850);
    v80 = v231;

    v81 = sub_24F9220B8();
    v82 = sub_24F92BDB8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v276 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_24E7620D4(v225, v80, &v276);
      _os_log_impl(&dword_24E5DD000, v81, v82, "Icon Artwork is nil for a game with bundleID: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x2530542D0](v84, -1, -1);
      MEMORY[0x2530542D0](v83, -1, -1);
    }

    v85 = v222;
  }

  else
  {
    v86 = v71;
    v87 = v74;
    v88 = v72;
    v89 = v75;
    v90 = v266;
    (*(v76 + 8))(v266, v77);
    v91 = v89;
    v72 = v88;
    v74 = v87;
    v71 = v86;
    v85 = v222;
    (*(v76 + 32))(v90, v91, v77);
  }

  v92 = v256;
  type metadata accessor for ASKBagContract();
  sub_24F928EF8();
  v93 = v262;
  if (v276)
  {
    v256 = v276;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    sub_24F928FD8();
    sub_24F92A758();
    v94 = sub_24F927548();
    v95 = v263;
    if (v94)
    {
      v96 = v71;
      v97 = v74;
      v98 = v72;
      if (qword_27F210C08 != -1)
      {
        swift_once();
      }

      v99 = v235;
      sub_24F92A3B8();
      sub_24F92A408();
      (*(v236 + 8))(v99, v92);
      v72 = v98;
      v74 = v97;
      v71 = v96;
      v95 = v263;
      if (v275)
      {
        goto LABEL_16;
      }
    }

    v100 = v277;
    v101 = v278;
    __swift_project_boxed_opaque_existential_1(&v276, v277);
    LOBYTE(v275) = 31;
    v102 = v100;
    v93 = v262;
    if ((*(v101 + 8))(&v275, v102, v101))
    {
LABEL_16:
      sub_24F920298();
      v103 = v250;
      sub_24F3D6C4C(v93, v250);
      v109 = v234;
      v110 = v269;
      v111 = (*(v234 + 48))(v103, 1, v269);
      v262 = 0;
      if (v111 != 1)
      {
        v209 = v265;
        sub_24E601704(v265, &qword_27F213FB0);

        v210 = *(v109 + 32);
        v211 = v95;
        v212 = v223;
        v210(v223, v103, v110);
        v213 = v212;
        v95 = v211;
        v210(v209, v213, v110);
        v224(v209, 0, 1, v110);
        v108 = v257;
        v74 = v233;
        v71 = v261;
        goto LABEL_30;
      }

      sub_24E601704(v103, &qword_27F213FB0);
      v112 = v277;
      v113 = v278;
      __swift_project_boxed_opaque_existential_1(&v276, v277);
      LOBYTE(v275) = 32;
      if ((*(v113 + 8))(&v275, v112, v113))
      {
        v222 = v85;
        v71 = v261;
        if (qword_27F211400 != -1)
        {
          swift_once();
        }

        v114 = sub_24F9220D8();
        __swift_project_value_buffer(v114, qword_27F39E850);
        v115 = v231;

        v116 = sub_24F9220B8();
        v117 = sub_24F92BD98();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          LODWORD(v250) = v117;
          v119 = v118;
          v120 = swift_slowAlloc();
          v275 = v120;
          *v119 = 136315138;
          v121 = sub_24E7620D4(v225, v115, &v275);

          *(v119 + 4) = v121;
          v72 = v258;
          v122 = v269;
          v123 = v234;
          v124 = v116;
          v125 = v265;
          v95 = v263;
          _os_log_impl(&dword_24E5DD000, v124, v250, "forcePrerenderedIcons is enabled, using existing Game Icon artwork for Prerendered Icon Artwork for a game with bundleID: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x2530542D0](v120, -1, -1);
          MEMORY[0x2530542D0](v119, -1, -1);

          sub_24E601704(v125, &qword_27F213FB0);
          v108 = v257;
        }

        else
        {

          v125 = v265;
          sub_24E601704(v265, &qword_27F213FB0);
          v122 = v269;
          v108 = v257;
          v123 = v234;
        }

        (*(v123 + 16))(v125, v266, v122);
        v224(v125, 0, 1, v122);
        v74 = v233;
        goto LABEL_30;
      }

      v74 = v233;
      v71 = v261;
      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v214 = sub_24F9220D8();
      __swift_project_value_buffer(v214, qword_27F39E850);
      v215 = v231;

      v216 = sub_24F9220B8();
      v217 = sub_24F92BDA8();

      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        LODWORD(v250) = v217;
        v219 = v218;
        v220 = swift_slowAlloc();
        v275 = v220;
        *v219 = 136315138;
        v221 = sub_24E7620D4(v225, v215, &v275);

        *(v219 + 4) = v221;
        v72 = v258;
        v95 = v263;
        _os_log_impl(&dword_24E5DD000, v216, v250, "Prerendered Icon Artwork is nil for a game with bundleID: %s", v219, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v220);
        MEMORY[0x2530542D0](v220, -1, -1);
        MEMORY[0x2530542D0](v219, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v262 = 0;
    }

    v108 = v257;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(&v276);
    goto LABEL_31;
  }

  v95 = v263;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v262 = 0;
  v104 = sub_24F9220D8();
  __swift_project_value_buffer(v104, qword_27F39E850);
  v105 = sub_24F9220B8();
  v106 = sub_24F92BD98();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_24E5DD000, v105, v106, "Game.init(): ASKBagContract is not available in the object graph", v107, 2u);
    MEMORY[0x2530542D0](v107, -1, -1);
  }

  v108 = v257;
LABEL_31:
  sub_24F920308();
  sub_24F920238();
  sub_24E7F4B74(&qword_27F21E3C8, MEMORY[0x277D0C9F8]);
  v126 = sub_24F92C678();
  v127 = *(v71 + 8);
  v127(v72, v95);
  v128 = v74;
  if (v126)
  {
    v129 = 2;
  }

  else
  {
    v129 = 0;
  }

  sub_24F920228();
  v130 = sub_24F92C678();
  v127(v72, v95);
  v131 = v129 & 0xFFFFFFFFFFFFFFFELL | v130 & 1;
  sub_24F920218();
  v132 = sub_24F92C678();
  v127(v72, v95);
  if (v132)
  {
    v131 |= 4uLL;
  }

  sub_24F9202E8();
  v133 = sub_24F92C678();
  v127(v72, v95);
  if (v133)
  {
    v134 = v131 | 8;
  }

  else
  {
    v134 = v131;
  }

  v127(v108, v95);
  v135 = sub_24F9201F8();
  v137 = v136;
  v138 = v264;
  sub_24F920278();
  v63 = v255;
  v139 = v262;
  v140 = sub_24F920F08();
  if (v139)
  {

    sub_24E601704(v273, &qword_27F21E3B0);
    v142 = sub_24F920358();
    (*(*(v142 - 8) + 8))(v128, v142);
    (*(v259 + 8))(v138, v260);
    sub_24E601704(v265, &qword_27F213FB0);
    (*(v234 + 8))(v266, v269);
    goto LABEL_41;
  }

  v236 = v141;
  v250 = v140;
  v258 = v135;
  v261 = v137;
  v262 = 0;
  v235 = sub_24F920338();
  v231 = v144;
  v229 = sub_24F920348();
  v225 = v145;
  v146 = v237;
  sub_24E60169C(v273, v237, &qword_27F21E3B0);
  v147 = sub_24F9207B8();
  v148 = *(v147 - 8);
  v149 = *(v148 + 48);
  v150 = v149(v146, 1, v147);
  v257 = v134;
  if (v150 == 1)
  {
    v151 = &qword_27F21E3B0;
    v152 = v146;
  }

  else
  {
    v153 = v232;
    sub_24F920758();
    v154 = v153;
    (*(v148 + 8))(v146, v147);
    v155 = sub_24F920748();
    v156 = *(v155 - 8);
    if ((*(v156 + 48))(v154, 1, v155) != 1)
    {
      sub_24F920738();
      (*(v156 + 8))(v154, v155);
      v157 = 0;
      goto LABEL_48;
    }

    v151 = &qword_27F21E3B8;
    v152 = v154;
  }

  sub_24E601704(v152, v151);
  v157 = 1;
LABEL_48:
  v158 = sub_24F91F648();
  v263 = *(v158 - 8);
  v159 = *(v263 + 56);
  v159(v254, v157, 1, v158);
  v160 = v273;
  v161 = v238;
  sub_24E60169C(v273, v238, &qword_27F21E3B0);
  v162 = v149(v161, 1, v147);
  v256 = v158;
  if (v162 == 1)
  {
    sub_24E601704(v161, &qword_27F21E3B0);
    v159(v251, 1, 1, v158);
    v163 = v249;
    v164 = v242;
  }

  else
  {
    v165 = v240;
    sub_24F920798();
    (*(v148 + 8))(v161, v147);
    sub_24F920778();
    v160 = v273;
    v166 = v165;
    v164 = v242;
    (*(v241 + 8))(v166, v242);
    v163 = v249;
  }

  v167 = v239;
  sub_24E60169C(v160, v239, &qword_27F21E3B0);
  if (v149(v167, 1, v147) == 1)
  {
    sub_24E601704(v167, &qword_27F21E3B0);
    LODWORD(v242) = 0;
  }

  else
  {
    v168 = v240;
    sub_24F920798();
    (*(v148 + 8))(v167, v147);
    LODWORD(v242) = sub_24F920768();
    (*(v241 + 8))(v168, v164);
  }

  v169 = v245;
  v170 = v244;
  v171 = v243;
  v172 = v227;
  sub_24F920288();
  sub_24F921108();
  sub_24E7F4B74(&qword_27F21E3D0, MEMORY[0x277D0D550]);
  v173 = v246;
  LODWORD(v245) = sub_24F92C678();
  v174 = *(v169 + 8);
  v174(v170, v173);
  v174(v171, v173);
  sub_24F920218();
  sub_24E7F4B74(&qword_27F21E3D8, MEMORY[0x277D0C9D0]);
  v175 = v271;
  LODWORD(v246) = sub_24F92C678();
  v176 = v272 + 8;
  v177 = *(v272 + 8);
  v177(v172, v175);
  sub_24F920248();
  LODWORD(v244) = sub_24F92C678();
  v177(v172, v175);
  sub_24F920208();
  LODWORD(v243) = sub_24F92C678();
  v177(v172, v175);
  sub_24F920238();
  LODWORD(v241) = sub_24F92C678();
  v177(v172, v175);
  sub_24F920228();
  LODWORD(v238) = sub_24F92C678();
  v272 = v176;
  v177(v172, v175);
  (*(v234 + 16))(v228, v266, v269);
  sub_24E60169C(v265, v252, &qword_27F213FB0);
  v178 = v259;
  v179 = v253;
  v180 = v260;
  (*(v259 + 16))(v253, v264, v260);
  (*(v178 + 56))(v179, 0, 1, v180);
  v240 = sub_24F9202A8();
  v239 = v181;
  v182 = v236;
  *v163 = v250;
  *(v163 + 8) = v182;
  v183 = v230;
  *(v163 + 16) = v226;
  *(v163 + 24) = v183;
  v184 = v231;
  *(v163 + 32) = v235;
  *(v163 + 40) = v184;
  v185 = v225;
  *(v163 + 48) = v229;
  *(v163 + 56) = v185;
  v186 = v254;
  v187 = v247;
  sub_24E60169C(v254, v247, &unk_27F22EC30);
  v188 = v263;
  v189 = *(v263 + 48);
  v190 = v256;
  v191 = v189(v187, 1, v256);
  if (v191 == 1)
  {
    sub_24E601704(v187, &unk_27F22EC30);
    v192 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v192 = v193 * 1000.0;
    (*(v188 + 8))(v187, v190);
  }

  v194 = v248;
  *(v163 + 64) = v192;
  *(v163 + 72) = v191 == 1;
  v195 = v251;
  sub_24E60169C(v251, v194, &unk_27F22EC30);
  v196 = v189(v194, 1, v190);
  if (v196 == 1)
  {

    sub_24E601704(v273, &qword_27F21E3B0);
    v197 = sub_24F920358();
    (*(*(v197 - 8) + 8))(v233, v197);
    sub_24E601704(v195, &unk_27F22EC30);
    sub_24E601704(v186, &unk_27F22EC30);
    (*(v259 + 8))(v264, v260);
    sub_24E601704(v265, &qword_27F213FB0);
    v198 = v234;
    v199 = v269;
    (*(v234 + 8))(v266, v269);
    v177(v270, v271);
    (*(v267 + 8))(v255, v268);
    sub_24E601704(v194, &unk_27F22EC30);
    v200 = 0.0;
  }

  else
  {
    sub_24F91F5E8();
    v202 = v201;

    sub_24E601704(v273, &qword_27F21E3B0);
    v203 = sub_24F920358();
    (*(*(v203 - 8) + 8))(v233, v203);
    sub_24E601704(v195, &unk_27F22EC30);
    sub_24E601704(v186, &unk_27F22EC30);
    (*(v259 + 8))(v264, v260);
    sub_24E601704(v265, &qword_27F213FB0);
    v198 = v234;
    v199 = v269;
    (*(v234 + 8))(v266, v269);
    v177(v270, v271);
    (*(v267 + 8))(v255, v268);
    v200 = v202 * 1000.0;
    (*(v263 + 8))(v194, v190);
  }

  v204 = v261;
  *(v163 + 80) = v200;
  *(v163 + 88) = v196 == 1;
  *(v163 + 96) = v257;
  *(v163 + 104) = v242 & 1;
  *(v163 + 105) = v245 & 1;
  *(v163 + 106) = v246 & 1;
  *(v163 + 107) = v244 & 1;
  *(v163 + 108) = v243 & 1;
  *(v163 + 109) = v241 & 1;
  *(v163 + 110) = v238 & 1;
  v205 = type metadata accessor for Game();
  (*(v198 + 32))(v163 + v205[18], v228, v199);
  sub_24E6009C8(v252, v163 + v205[19], &qword_27F213FB0);
  v206 = (v163 + v205[20]);
  *v206 = v258;
  v206[1] = v204;
  result = sub_24E6009C8(v253, v163 + v205[21], &qword_27F219030);
  v207 = (v163 + v205[22]);
  v208 = v239;
  *v207 = v240;
  v207[1] = v208;
  return result;
}

uint64_t Game.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_24E69A5C4(0, &qword_27F21E318);
  sub_24E69A5C4(0, &qword_27F235840);
  result = sub_24F92BE38();
  if (v3)
  {
    return sub_24E627880(a1, a2);
  }

  if (result)
  {
    v11 = result;
    v12 = sub_24F91F648();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_24E7EDF8C(v11, v9, a3);
    return sub_24E627880(a1, a2);
  }

  __break(1u);
  return result;
}

unint64_t Game.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = v61 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F95BE60;
  *(v5 + 32) = 0x4449656C646E7562;
  v65 = v5 + 32;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  v8 = *v1;
  v62 = v1[1];
  v9 = v62;
  *(v5 + 72) = MEMORY[0x277D837D0];
  *(v5 + 80) = v7;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  *(v5 + 88) = 0x44496D616461;
  *(v5 + 96) = 0xE600000000000000;
  v11 = v1[2];
  v10 = v1[3];
  v61[1] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(v5 + 128) = v12;
  v67 = v12;
  v13 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740);
  *(v5 + 104) = v11;
  *(v5 + 112) = v10;
  *(v5 + 136) = v13;
  *(v5 + 144) = 1701667182;
  v14 = v2[4];
  v61[0] = v2[5];
  v15 = v61[0];
  *(v5 + 184) = v6;
  *(v5 + 192) = v7;
  *(v5 + 152) = 0xE400000000000000;
  *(v5 + 160) = v14;
  *(v5 + 168) = v15;
  *(v5 + 200) = 0xD000000000000010;
  *(v5 + 208) = 0x800000024FA47820;
  v16 = v2[6];
  v17 = v2[7];
  *(v5 + 240) = v12;
  *(v5 + 248) = v13;
  v18 = v13;
  *(v5 + 216) = v16;
  *(v5 + 224) = v17;
  strcpy((v5 + 256), "lastPlayedAt");
  *(v5 + 269) = 0;
  *(v5 + 270) = -5120;
  v19 = v2[8];
  LOBYTE(v7) = *(v2 + 72);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E320);
  *(v5 + 296) = v20;
  v21 = sub_24E7594F8(&qword_27F21E328, &qword_27F21E320);
  *(v5 + 272) = v19;
  *(v5 + 280) = v7;
  *(v5 + 304) = v21;
  *(v5 + 312) = 0x6564644165746164;
  v22 = v2[10];
  v23 = *(v2 + 88);
  *(v5 + 352) = v20;
  *(v5 + 360) = v21;
  *(v5 + 320) = 0xE900000000000064;
  *(v5 + 328) = v22;
  *(v5 + 336) = v23;
  *(v5 + 368) = 0xD000000000000013;
  *(v5 + 376) = 0x800000024FA47840;
  v24 = v2[12];
  *(v5 + 408) = &type metadata for SupportedPlatforms;
  v25 = sub_24E7F1CE4();
  *(v5 + 384) = v24;
  *(v5 + 416) = v25;
  *(v5 + 424) = 0x6C6174736E497369;
  *(v5 + 432) = 0xEB0000000064656CLL;
  v26 = *(v2 + 104);
  v27 = MEMORY[0x277D839B0];
  v28 = MEMORY[0x277D22598];
  *(v5 + 464) = MEMORY[0x277D839B0];
  *(v5 + 472) = v28;
  *(v5 + 440) = v26;
  *(v5 + 480) = 0x6564616372417369;
  *(v5 + 488) = 0xE800000000000000;
  v29 = *(v2 + 105);
  *(v5 + 520) = v27;
  *(v5 + 528) = v28;
  *(v5 + 496) = v29;
  *(v5 + 536) = 0xD000000000000014;
  *(v5 + 544) = 0x800000024FA47860;
  v30 = *(v2 + 106);
  *(v5 + 576) = v27;
  *(v5 + 584) = v28;
  *(v5 + 552) = v30;
  *(v5 + 592) = 0xD00000000000001CLL;
  *(v5 + 600) = 0x800000024FA47880;
  v31 = *(v2 + 107);
  *(v5 + 632) = v27;
  *(v5 + 640) = v28;
  *(v5 + 608) = v31;
  *(v5 + 648) = 0xD000000000000026;
  *(v5 + 656) = 0x800000024FA478A0;
  v32 = *(v2 + 108);
  *(v5 + 688) = v27;
  *(v5 + 696) = v28;
  *(v5 + 664) = v32;
  *(v5 + 704) = 0xD000000000000017;
  *(v5 + 712) = 0x800000024FA478D0;
  v33 = *(v2 + 109);
  *(v5 + 744) = v27;
  *(v5 + 752) = v28;
  *(v5 + 720) = v33;
  *(v5 + 760) = 0xD000000000000014;
  *(v5 + 768) = 0x800000024FA478F0;
  v34 = *(v2 + 110);
  *(v5 + 800) = v27;
  *(v5 + 808) = v28;
  *(v5 + 776) = v34;
  *(v5 + 816) = 0x6E6F6349656D6167;
  *(v5 + 824) = 0xE800000000000000;
  v35 = type metadata accessor for Game();
  v36 = v35[18];
  v37 = sub_24F9289E8();
  *(v5 + 856) = v37;
  *(v5 + 864) = sub_24E7F4B74(&qword_27F21E338, MEMORY[0x277D21C48]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 832));
  (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v2 + v36, v37);
  *(v5 + 872) = 0xD000000000000013;
  *(v5 + 880) = 0x800000024FA47910;
  v39 = v35[19];
  *(v5 + 912) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(v5 + 920) = sub_24E7F1D38();
  v40 = __swift_allocate_boxed_opaque_existential_1((v5 + 888));
  sub_24E60169C(v2 + v39, v40, &qword_27F213FB0);
  *(v5 + 928) = 0xD000000000000013;
  *(v5 + 936) = 0x800000024FA47930;
  v41 = (v2 + v35[20]);
  v42 = *v41;
  v43 = v41[1];
  *(v5 + 968) = v67;
  v44 = v63;
  v64 = v18;
  *(v5 + 976) = v18;
  *(v5 + 944) = v42;
  *(v5 + 952) = v43;
  strcpy((v5 + 984), "releaseState");
  *(v5 + 997) = 0;
  *(v5 + 998) = -5120;
  sub_24E60169C(v2 + v35[21], v44, &qword_27F219030);
  v45 = sub_24F920818();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);

  if (v47 == 1)
  {
    sub_24E601704(v44, &qword_27F219030);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = v44;
    v48 = sub_24F920808();
    v49 = v51;
    (*(v46 + 8))(v50, v45);
  }

  v52 = v67;
  *(v5 + 1024) = v67;
  v53 = v64;
  *(v5 + 1032) = v64;
  *(v5 + 1000) = v48;
  *(v5 + 1008) = v49;
  *(v5 + 1040) = 0xD000000000000011;
  *(v5 + 1048) = 0x800000024FA47950;
  v54 = (v2 + v35[22]);
  v56 = *v54;
  v55 = v54[1];
  *(v5 + 1080) = v52;
  *(v5 + 1088) = v53;
  *(v5 + 1056) = v56;
  *(v5 + 1064) = v55;

  v57 = sub_24E607E40(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  v59 = v66;
  v66[3] = v58;
  result = sub_24E6060B8();
  v59[4] = result;
  *v59 = v57;
  return result;
}

unint64_t sub_24E7F1CE4()
{
  result = qword_27F21E330;
  if (!qword_27F21E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E330);
  }

  return result;
}

unint64_t sub_24E7F1D38()
{
  result = qword_27F21E340;
  if (!qword_27F21E340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0);
    sub_24E7F4B74(&qword_27F21E338, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E340);
  }

  return result;
}

unint64_t sub_24E7F1DF0(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x44496D616461;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x79616C507473616CLL;
      break;
    case 5:
      result = 0x6564644165746164;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6C6174736E497369;
      break;
    case 8:
      result = 0x6564616372417369;
      break;
    case 9:
    case 13:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x6E6F6349656D6167;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x53657361656C6572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E7F2058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7F4594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7F208C(uint64_t a1)
{
  v2 = sub_24E7F3D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7F20C8(uint64_t a1)
{
  v2 = sub_24E7F3D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Game.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7F3D20();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CCA8();
    LOBYTE(v11) = 2;
    sub_24F92CD08();
    LOBYTE(v11) = 3;
    sub_24F92CCA8();
    LOBYTE(v11) = 4;
    sub_24F92CCC8();
    LOBYTE(v11) = 5;
    sub_24F92CCC8();
    v11 = *(v3 + 96);
    v10[15] = 6;
    sub_24E7F3D74();
    sub_24F92CD48();
    LOBYTE(v11) = 7;
    sub_24F92CD18();
    LOBYTE(v11) = 8;
    sub_24F92CD18();
    LOBYTE(v11) = 9;
    sub_24F92CD18();
    LOBYTE(v11) = 10;
    sub_24F92CD18();
    LOBYTE(v11) = 11;
    sub_24F92CD18();
    LOBYTE(v11) = 12;
    sub_24F92CD18();
    LOBYTE(v11) = 13;
    sub_24F92CD18();
    type metadata accessor for Game();
    LOBYTE(v11) = 14;
    sub_24F9289E8();
    sub_24E7F4B74(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    LOBYTE(v11) = 15;
    sub_24F92CCF8();
    LOBYTE(v11) = 16;
    sub_24F92CCA8();
    LOBYTE(v11) = 17;
    sub_24F920818();
    sub_24E7F4B74(&qword_27F21E360, MEMORY[0x277D0CF00]);
    sub_24F92CCF8();
    LOBYTE(v11) = 18;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Game.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_24F9289E8();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E368);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24E7F3D20();
  v60 = v12;
  v17 = v62;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v54 = v7;
  v55 = v13;
  v62 = v8;
  v19 = v59;
  v18 = v60;
  LOBYTE(v65) = 0;
  v20 = v61;
  *v15 = sub_24F92CC28();
  *(v15 + 1) = v22;
  LOBYTE(v65) = 1;
  *(v15 + 2) = sub_24F92CBC8();
  *(v15 + 3) = v23;
  LOBYTE(v65) = 2;
  v52 = 0;
  *(v15 + 4) = sub_24F92CC28();
  *(v15 + 5) = v24;
  LOBYTE(v65) = 3;
  *(v15 + 6) = sub_24F92CBC8();
  *(v15 + 7) = v25;
  LOBYTE(v65) = 4;
  *(v15 + 8) = sub_24F92CBE8();
  v15[72] = v26 & 1;
  LOBYTE(v65) = 5;
  v27 = sub_24F92CBE8();
  v53 = 0;
  *(v15 + 10) = v27;
  v15[88] = v29 & 1;
  v64 = 6;
  sub_24E7F3DC8();
  v30 = v53;
  sub_24F92CC68();
  if (v30)
  {
    v53 = v30;
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    *(v15 + 12) = v65;
    LOBYTE(v65) = 7;
    v15[104] = sub_24F92CC38() & 1;
    LOBYTE(v65) = 8;
    v31 = sub_24F92CC38();
    v53 = 0;
    v15[105] = v31 & 1;
    LOBYTE(v65) = 9;
    v32 = v53;
    v33 = sub_24F92CC38();
    v53 = v32;
    if (!v32)
    {
      v15[106] = v33 & 1;
      LOBYTE(v65) = 10;
      v34 = v53;
      v35 = sub_24F92CC38();
      v53 = v34;
      if (!v34)
      {
        v15[107] = v35 & 1;
        LOBYTE(v65) = 11;
        v36 = v53;
        v37 = sub_24F92CC38();
        v53 = v36;
        if (!v36)
        {
          v15[108] = v37 & 1;
          LOBYTE(v65) = 12;
          v38 = v53;
          v39 = sub_24F92CC38();
          v53 = v38;
          if (!v38)
          {
            v15[109] = v39 & 1;
            LOBYTE(v65) = 13;
            v40 = v53;
            v41 = sub_24F92CC38();
            v53 = v40;
            if (!v40)
            {
              v15[110] = v41 & 1;
              LOBYTE(v65) = 14;
              sub_24E7F4B74(&qword_27F214018, MEMORY[0x277D21C48]);
              v42 = v53;
              sub_24F92CC68();
              v53 = v42;
              if (!v42)
              {
                (*(v58 + 32))(&v15[v55[18]], v10, v62);
                LOBYTE(v65) = 15;
                v43 = v53;
                sub_24F92CC18();
                if (v43)
                {
                  (*(v19 + 8))(v60, v61);
                  __swift_destroy_boxed_opaque_existential_1(v63);

                  return (*(v58 + 8))(&v15[v55[18]], v62);
                }

                else
                {
                  sub_24E6009C8(v54, &v15[v55[19]], &qword_27F213FB0);
                  LOBYTE(v65) = 16;
                  v44 = sub_24F92CBC8();
                  v45 = &v15[v55[20]];
                  *v45 = v44;
                  v45[1] = v46;
                  sub_24F920818();
                  LOBYTE(v65) = 17;
                  sub_24E7F4B74(&qword_27F21E378, MEMORY[0x277D0CF00]);
                  sub_24F92CC18();
                  sub_24E6009C8(v56, &v15[v55[21]], &qword_27F219030);
                  LOBYTE(v65) = 18;
                  v47 = sub_24F92CBC8();
                  v49 = v48;
                  (*(v19 + 8))(v60, v61);
                  v50 = &v15[v55[22]];
                  *v50 = v47;
                  v50[1] = v49;
                  sub_24E69BF7C(v15, v57);
                  __swift_destroy_boxed_opaque_existential_1(v63);
                  return sub_24E69BFE0(v15);
                }
              }
            }
          }
        }
      }
    }

    (*(v19 + 8))(v60, v61);
  }

  v28 = v52;
  __swift_destroy_boxed_opaque_existential_1(v63);

  if (!v28)
  {
  }
}

uint64_t sub_24E7F2FA0()
{
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[18] = __swift_project_value_buffer(v1, qword_27F39E850);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Notifying gamed Game Center UI is about to be presented.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 profileServicePrivate];
  v0[19] = v6;

  v0[2] = v0;
  v0[3] = sub_24E7F31AC;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E760660;
  v0[13] = &block_descriptor_18;
  v0[14] = v7;
  [v6 startContactsIntegrationSyncWithOptions:3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E7F31AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24E7F331C;
  }

  else
  {
    v2 = sub_24E7F32BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7F32BC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7F331C()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Error notifying gamed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

BOOL _s12GameStoreKit0A0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920818();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_24F9289E8();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v21 = *(a1 + 24);
  v22 = *(a2 + 24);
  if (v21)
  {
    if (!v22 || (*(a1 + 16) != *(a2 + 16) || v21 != v22) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24 || (*(a1 + 48) != *(a2 + 48) || v23 != v24) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  if (*(a1 + 105) != *(a2 + 105))
  {
    return 0;
  }

  if (*(a1 + 106) != *(a2 + 106))
  {
    return 0;
  }

  if (*(a1 + 107) != *(a2 + 107))
  {
    return 0;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    return 0;
  }

  if (*(a1 + 109) != *(a2 + 109))
  {
    return 0;
  }

  if (*(a1 + 110) != *(a2 + 110))
  {
    return 0;
  }

  v56 = type metadata accessor for Game();
  if ((MEMORY[0x25304E2E0](a1 + v56[18], a2 + v56[18]) & 1) == 0)
  {
    return 0;
  }

  v55 = v56[19];
  v27 = *(v18 + 48);
  sub_24E60169C(a1 + v55, v20, &qword_27F213FB0);
  v28 = a2 + v55;
  v55 = v27;
  sub_24E60169C(v28, &v20[v27], &qword_27F213FB0);
  v54 = *(v60 + 48);
  if (v54(v20, 1, v12) == 1)
  {
    if (v54(&v20[v55], 1, v12) == 1)
    {
      sub_24E601704(v20, &qword_27F213FB0);
      goto LABEL_51;
    }

LABEL_47:
    v29 = &qword_27F21E3E8;
    v30 = v20;
LABEL_48:
    sub_24E601704(v30, v29);
    return 0;
  }

  sub_24E60169C(v20, v17, &qword_27F213FB0);
  if (v54(&v20[v55], 1, v12) == 1)
  {
    (*(v60 + 8))(v17, v12);
    goto LABEL_47;
  }

  v32 = v60;
  (*(v60 + 32))(v14, &v20[v55], v12);
  sub_24E7F4B74(&qword_27F21E3F8, MEMORY[0x277D21C48]);
  LODWORD(v55) = sub_24F92AFF8();
  v33 = *(v32 + 8);
  v33(v14, v12);
  v33(v17, v12);
  sub_24E601704(v20, &qword_27F213FB0);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v34 = v56[20];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v39 = v56[21];
  v40 = *(v9 + 48);
  sub_24E60169C(a1 + v39, v11, &qword_27F219030);
  sub_24E60169C(a2 + v39, &v11[v40], &qword_27F219030);
  v41 = *(v58 + 48);
  if (v41(v11, 1, v59) == 1)
  {
    if (v41(&v11[v40], 1, v59) == 1)
    {
      sub_24E601704(v11, &qword_27F219030);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  sub_24E60169C(v11, v8, &qword_27F219030);
  if (v41(&v11[v40], 1, v59) == 1)
  {
    (*(v58 + 8))(v8, v59);
LABEL_63:
    v29 = &qword_27F21E3E0;
    v30 = v11;
    goto LABEL_48;
  }

  v43 = v57;
  v42 = v58;
  v44 = &v11[v40];
  v45 = v59;
  (*(v58 + 32))(v57, v44, v59);
  sub_24E7F4B74(&qword_27F21E3F0, MEMORY[0x277D0CF00]);
  v46 = sub_24F92AFF8();
  v47 = *(v42 + 8);
  v47(v43, v45);
  v47(v8, v45);
  sub_24E601704(v11, &qword_27F219030);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v48 = v56[22];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (!v50)
  {
    return !v52;
  }

  return v52 && (*v49 == *v51 && v50 == v52 || (sub_24F92CE08() & 1) != 0);
}