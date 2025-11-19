uint64_t sub_1CFBB84F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFBB8584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v35 = type metadata accessor for RecentsCircleButtonStyle(0);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecentCellAccessoryButton(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED860, &unk_1CFCA29D0);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED868, &unk_1CFCA4230);
  v19 = *(*(v40 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v40);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v37 = &v34 - v23;
  sub_1CFBB84F4(v2, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentCellAccessoryButton);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  sub_1CFC07090(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for RecentCellAccessoryButton);
  v43 = v2;
  sub_1CFC9F298();
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v26 = v35;
  v27 = *(v35 + 20);
  sub_1CFC9CD28();
  sub_1CFBDA7AC();
  sub_1CFC9DEB8();
  v28 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
  v29 = sub_1CFC06190(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle);
  sub_1CFC9EEC8();
  sub_1CFC07158(v5, type metadata accessor for RecentsCircleButtonStyle);
  (*(v36 + 8))(v13, v10);
  LODWORD(v5) = *(v2 + *(v7 + 32));
  v44 = v10;
  v45 = v26;
  v46 = v28;
  v47 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  sub_1CFC9F008();

  (*(v39 + 8))(v18, v30);
  v44 = sub_1CFC054C4();
  v45 = v31;
  sub_1CFBB4460();
  v32 = v37;
  sub_1CFC9E188();

  sub_1CFBC2FB0(v22, &qword_1EC4ED868, &unk_1CFCA4230);
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A8, &qword_1CFCA4270);
  sub_1CFBB9B54();
  sub_1CFC071C0();
  sub_1CFC9EE28();
  return sub_1CFBC2FB0(v32, &qword_1EC4ED868, &unk_1CFCA4230);
}

uint64_t sub_1CFBB8BEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E478();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBB8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE2F8, &qword_1CFCA3F38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = (a1 + *(type metadata accessor for RecentsItemCell(0) + 40));
  v10 = *v9;
  v11 = *(v9 + 1);
  v14[16] = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v14[15])
  {
    v12 = 1;
  }

  else
  {
    sub_1CFBB9098(v8);
    sub_1CFBCCE88(v8, a2, &qword_1EC4EE2F8, &qword_1CFCA3F38);
    v12 = 0;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_1CFBB8DA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for RecentCellAccessoryButton(0);
  v9 = v8;
  if ((*(v0 + *(v8 + 24)) & 1) == 0)
  {
    sub_1CFBA29FC(v0 + *(v8 + 20), v7, &qword_1EC4EE368, &unk_1CFCA4040);
    v15 = sub_1CFC9C448();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      sub_1CFBC2FB0(v7, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v17 = sub_1CFC9C3E8();
      (*(v16 + 8))(v7, v15);
      if (v17)
      {
        return 0x69662E6F65646976;
      }
    }

    return 0x69662E656E6F6870;
  }

  v10 = 0x7269632E6F666E69;
  v11 = [objc_opt_self() shared];
  v12 = [v11 current];

  if (v12)
  {
    sub_1CFBA29FC(v0 + *(v9 + 20), v5, &qword_1EC4EE368, &unk_1CFCA4040);
    v13 = sub_1CFC9C448();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_1CFBC2FB0(v5, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v18 = sub_1CFC9C408();
      (*(v14 + 8))(v5, v13);
      if (v18)
      {

        return 0x6E6964726F636572;
      }
    }
  }

  return v10;
}

uint64_t sub_1CFBB9098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_1CFC9CD88();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CFC9BFB8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE308, &qword_1CFCA3F48);
  v9 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v30[-v10];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE300, &qword_1CFCA3F40);
  v12 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v30[-v13];
  v15 = [objc_opt_self() shared];
  v16 = [v15 current];

  if (v16 || (v17 = v2 + *(type metadata accessor for RecentsItemCell(0) + 28), (v18 = sub_1CFC9C408()) == 0))
  {
    v31 = 0;
  }

  else
  {

    v31 = 1;
  }

  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  v21 = (v2 + *(type metadata accessor for RecentsItemCell(0) + 36));
  v22 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1CFC9D038();
  sub_1CFC9D1C8();
  sub_1CFC013D4(v6);
  v23 = sub_1CFC9CD78();
  (*(v33 + 8))(v6, v34);
  KeyPath = swift_getKeyPath();
  v25 = &v11[*(v32 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  if (v20 == 6)
  {
    v26 = sub_1CFC9F188();
  }

  else if (v31)
  {
    v26 = sub_1CFC9F178();
  }

  else
  {
    v27 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v26 = sub_1CFC9D058();
  }

  v28 = v26;
  sub_1CFBCCE88(v11, v14, &qword_1EC4EE308, &qword_1CFCA3F48);
  *&v14[*(v35 + 36)] = v28;
  sub_1CFC06AD8();
  sub_1CFC9F008();
  return sub_1CFBC2FB0(v14, &qword_1EC4EE300, &qword_1CFCA3F40);
}

uint64_t sub_1CFBB9424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E438();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBB9450(uint64_t *a1)
{
  v1 = *a1;

  return sub_1CFC9E448();
}

uint64_t sub_1CFBB9480@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1CFBB8DA4();
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBB94B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFBB9528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBB9654(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CFBB45F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CFBB9698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1CFC9E858();
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3B0, &qword_1CFCA42A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v24 = v20;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3B8, &qword_1CFCA42B0);
  sub_1CFC0750C();
  sub_1CFC9F298();
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1D8, &qword_1EC4EE3B0, &qword_1CFCA42A8);
  sub_1CFC06190(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
  v18 = v21;
  sub_1CFC9EEC8();
  (*(v22 + 8))(v7, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1CFBB99E0()
{
  v1 = sub_1CFC9EB58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBB9AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED868, &unk_1CFCA4230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3A8, &qword_1CFCA4270);
  sub_1CFBB9B54();
  sub_1CFC071C0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1CFBB9B54()
{
  result = qword_1EE04D4D8;
  if (!qword_1EE04D4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED868, &unk_1CFCA4230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    type metadata accessor for RecentsCircleButtonStyle(255);
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFC06190(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1CFC06190(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4D8);
  }

  return result;
}

unint64_t sub_1CFBB9CD0()
{
  result = qword_1EE04D488;
  if (!qword_1EE04D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3C8, &unk_1CFCA42C0);
    sub_1CFBB7460();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D488);
  }

  return result;
}

unint64_t sub_1CFBB9DA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1CFC9CF08();
  sub_1CFBB9E3C(&qword_1EE04D670, MEMORY[0x1E6995AA8]);
  v5 = sub_1CFC9F6B8();

  return sub_1CFBB9E84(a1, v5);
}

uint64_t sub_1CFBB9E3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFBB9E84(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1CFC9CF08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1CFBB9E3C(&qword_1EE04D668, MEMORY[0x1E6995AA8]);
      v16 = sub_1CFC9F6F8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

id sub_1CFBBA044(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C0D8();
  v11 = &a1[*a4];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = a1;
  v15 = v13(v10);
  (*(v7 + 8))(v10, v6);

  return v15;
}

char *sub_1CFBBA174(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v5 = *&v3[v4];

    v6 = sub_1CFC9C128();
    if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v5 + 16))
    {

      return 0;
    }

    else
    {
      v7 = v5 + 16 * v6;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();

      result = [v3 collectionView];
      if (result)
      {
        v10 = result;
        ObjectType = swift_getObjectType();
        v12 = (*(v9 + 152))(a1, v10, ObjectType, v9);
        swift_unknownObjectRelease();

        return v12;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1CFBBA2A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CFC9E9C8();

    return sub_1CFC9E1C8();
  }

  else
  {
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    sub_1CFC9FEB8();
    swift_getWitnessTable();
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    return sub_1CFC9E1C8();
  }
}

uint64_t sub_1CFBBA40C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CFC9E9C8();
    sub_1CFC9E1C8();
  }

  else
  {
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    sub_1CFC9FEB8();
    swift_getWitnessTable();
    sub_1CFC9E238();
    swift_getWitnessTable();
    sub_1CFC9E8C8();
    sub_1CFC9E1C8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1CFBBA60C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1CFBBA658(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1CFBBA6B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CFC9F768();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CFBBA6EC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1CFBBA780(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBA94C(uint64_t a1, int a2)
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

uint64_t sub_1CFBBA96C(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFBBA9A8()
{
  v1 = sub_1CFC9C138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBAA6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAAA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAADC(uint64_t a1)
{
  result = sub_1CFBCE284(qword_1EE04F018, type metadata accessor for FavoriteSectionController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFBBAB38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC48AB8(v2, v3);
}

uint64_t sub_1CFBBAB78()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBABB0()
{
  v1 = sub_1CFC9C918();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1CFBBACB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBACF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBBAD44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBAD84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFBBADE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBAE48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBAE88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBAF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED888, &qword_1CFCA2A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBBB008()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB04C()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB088()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBB0C4()
{
  v1 = sub_1CFC9BF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBBB1A4()
{
  v1 = sub_1CFC9BF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBB22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E3D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBB284()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBB2F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1CFBBB408(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFBF2758(v2);
}

void sub_1CFBBB444(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFBF32C4(v2);
}

uint64_t sub_1CFBBB4A0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDBB0, &qword_1CFCA3228);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1CFBBB630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDBB0, &qword_1CFCA3228);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1CFBBB7C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFBF453C(v4);
}

uint64_t sub_1CFBBB7F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFBF1EB0(v4);
}

uint64_t sub_1CFBBB854()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBB89C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB94C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBBB9A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBB9DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBBA14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBBA4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBBAC4@<X0>(void *a1@<X8>)
{
  sub_1CFBB5868();
  result = sub_1CFC9E4F8();
  *a1 = v3;
  return result;
}

uint64_t sub_1CFBBBB18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFBB5A28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBBB48(char *a1)
{
  v2 = *a1;
  sub_1CFBB67C4();
  return sub_1CFC9E508();
}

uint64_t sub_1CFBBBBC0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1CFBBBBCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE338, &qword_1CFCA4000);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1CFC9C448();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CFBBBCE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE338, &qword_1CFCA4000);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1CFC9C448();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1CFBBBDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBBF24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C448();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBBC058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFBBC178(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE370, &qword_1CFCA4088);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CFBBC22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE370, &qword_1CFCA4088);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBBC2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E368();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBC30C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1CFC9E378();
}

uint64_t sub_1CFBBC360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E2F8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBC38C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1CFC9E308();
}

uint64_t sub_1CFBBC3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE3B0, &qword_1CFCA42A8);
  sub_1CFC9E858();
  sub_1CFBA57C0(&qword_1EE04D1D8, &qword_1EC4EE3B0, &qword_1CFCA42A8);
  sub_1CFC06190(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBC4E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBC51C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CFBBC56C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CFBBC5C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1CFBBC634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CFC09F64();
  *a2 = result;
  return result;
}

uint64_t sub_1CFBBC660(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
}

uint64_t sub_1CFBBC6AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CFBBC70C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1CFBBC744()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBC78C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBC7E4()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBC8B0()
{
  v1 = *(v0 + 16);

  sub_1CFC0DC38(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1CFBBC8F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBBC92C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBBC96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v4 = (v2 + 56) & ~v2;
  v5 = sub_1CFC9C008();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + v4 + *(type metadata accessor for LegacyMailbox(0) + 20) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1CFBBCAB0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBCAE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CFBBCB44(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CFBBCBAC()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C488();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBBCCFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1CFBBCD64(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFC1DF78(v2);
}

void sub_1CFBBCF8C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1CFC1EED0(v2);
}

uint64_t sub_1CFBBD02C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBD24C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC2BBC0(v2, v3);
}

uint64_t sub_1CFBBD2B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1CFBBD374(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBBD424()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
  sub_1CFC34828();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBD49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFC9C608();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CFBBD628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9E0, &unk_1CFCA56D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1CFC9C608();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CFBBD7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C608();
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

uint64_t sub_1CFBBD870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C608();
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

uint64_t sub_1CFBBD950()
{
  v1 = type metadata accessor for FavoriteListCell(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_1CFC9F448();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = v1[5];
  v13 = sub_1CFC9C608();
  (*(*(v13 - 8) + 8))(&v5[v12], v13);
  v14 = *&v5[v1[6]];

  v15 = *&v5[v1[7] + 8];

  v16 = *&v5[v1[8]];

  v17 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1CFC9D848();
    (*(*(v18 - 8) + 8))(&v5[v17], v18);
  }

  else
  {
    v19 = *&v5[v17];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBDBA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBDBE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBDC18()
{
  v1 = sub_1CFC9D848();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FavoritesList(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v28 = *(*(v6 - 8) + 64);
  v29 = sub_1CFC9C608();
  v9 = *(v29 - 8);
  v10 = *(v9 + 80);
  v27 = *(v9 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v11 = (v0 + v8);
  v12 = *(v0 + v8);

  v13 = *(v0 + v8 + 8);

  if (*(v0 + v8 + 24))
  {
    v14 = v11[4];
  }

  v15 = v11[5];

  v16 = v11[6];

  v17 = v11[8];

  v18 = v11 + *(v6 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v20 = *v18;

      v21 = *(v18 + 1);

      v22 = *(v19 + 32);
      v23 = sub_1CFC9F448();
      (*(*(v23 - 8) + 8))(&v18[v22], v23);
    }
  }

  else
  {
    v24 = *v18;
  }

  v25 = (v8 + v28 + v10) & ~v10;
  (*(v9 + 8))(v0 + v25, v29);

  return MEMORY[0x1EEE6BDD0](v0, v25 + v27, v3 | v7 | v10 | 7);
}

uint64_t sub_1CFBBDEEC()
{
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBBDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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

uint64_t sub_1CFBBE080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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

uint64_t sub_1CFBBE144(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IntervenableWrapperView.Wrapped();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CFC06888();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBE2A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBE2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C008();
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

uint64_t sub_1CFBBE3A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C008();
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

uint64_t sub_1CFBBE464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyMailbox(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC80, &qword_1CFCA5BB8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFBBE594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LegacyMailbox(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC80, &qword_1CFCA5BB8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CFBBE6C4()
{
  v1 = (type metadata accessor for LegacyMailboxCellView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_1CFC9C008();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + *(type metadata accessor for LegacyMailbox(0) + 20) + 8);

  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE5E0, &qword_1CFCA5C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1CFC9DE68();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
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

uint64_t sub_1CFBBE944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEDA0, &qword_1CFCA4020);
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

uint64_t sub_1CFBBEA08()
{
  v1 = type metadata accessor for LayoutTipView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1CFC9E158();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBEB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE40, &qword_1CFCA5D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBBEC78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E4B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBECA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1CFC9E4C8();
}

uint64_t sub_1CFBBECD0()
{
  v1 = type metadata accessor for LayoutTipView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CFC9E158();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + *(v1 + 20) + 8);

  v10 = *(v6 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CFBBEE18()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBBEEBC()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBEEF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEDD0, &qword_1CFCA5D38);
  sub_1CFBA57C0(&qword_1EC4EEE28, &qword_1EC4EEDD0, &qword_1CFCA5D38);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBEFC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBF01C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 168);

  v11 = *(v0 + 176);

  v12 = *(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1CFBBF0B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 168);

  v11 = *(v0 + 176);

  v12 = *(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1CFBBF244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E418();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBBF2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9D4A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFBBF398()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBBF3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC9C608();
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

uint64_t sub_1CFBBF494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFC9C608();
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

uint64_t sub_1CFBBF5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFBBF638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFBBF6B4()
{
  sub_1CFC9CF88();
  sub_1CFBB0D7C(&unk_1EE04D650, MEMORY[0x1E6995B10]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBF740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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

uint64_t sub_1CFBBF804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
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

uint64_t sub_1CFBBF8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9CC38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBF920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E478();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFBBF9A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CFBBFAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1CFBBFBE4()
{
  v1 = (type metadata accessor for VoicemailDetailContainerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_1CFC07CFC(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[9] + 8);

  v11 = *(v0 + v3 + v1[12] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFBBFE88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
  sub_1CFC55178();
  sub_1CFC55230();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBFF00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFC9E668();
  sub_1CFBA57C0(&qword_1EE04D2B8, &qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFC55814(&qword_1EE04D360, MEMORY[0x1E697C540]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBBFFF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFC9E498();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CFBC0024(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1CFC9E4A8();
}

uint64_t sub_1CFBC00CC()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBC0108()
{
  v1 = sub_1CFC9CF08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBC01A4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC01E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBC0234()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBC027C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC02C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CFBC0300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC03C8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CFBC0484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFBC0560()
{
  v1 = (type metadata accessor for VoicemailCustomBannerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1CFBC067C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC06CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC0714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C518();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C508();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC076C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9C528();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0798()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC07D4()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC090C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC0944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC098C()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBC0ADC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC0B1C()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC0BF8()
{
  v1 = sub_1CFC9C138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFBC0DA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9E3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBC0E48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC80EBC(v4);
}

uint64_t sub_1CFBC0EB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC0F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC85EFC(v2, v3);
}

uint64_t sub_1CFBC0F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0088, &qword_1CFCA9258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBC0FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0080, &qword_1CFCA9250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFBC105C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1CFBC106C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1CFBC10B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CFBC1104()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC113C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC1180()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFBC1244()
{
  v1 = sub_1CFC9C448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFBC1348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0150, &qword_1CFCA9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBC13B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBC13F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F0140, &qword_1CFCA9580);
  sub_1CFC9E858();
  sub_1CFBA57C0(&qword_1EE04D1C8, &qword_1EC4F0140, &qword_1CFCA9580);
  sub_1CFC90228(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBC14D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBC1520()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1CFBC15C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1CFBC1678(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC92D40(v4);
}

uint64_t sub_1CFBC16A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC16DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CFC9E1C8();
  sub_1CFC2F564();
  return swift_getWitnessTable();
}

uint64_t sub_1CFBC1780()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC17B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC17F0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1828()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFBA57C0(&qword_1EC4F02D0, &qword_1EC4F02C8, &qword_1CFCA9A80);
  sub_1CFC987D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFBC18DC()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBC1914()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFBC1960()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1CFBC1A34()
{
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 == 1 && (sub_1CFC9C368(), v0))
  {

    return 0;
  }

  else
  {
    sub_1CFC9C398();
    if (v2)
    {

      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v5 = sub_1CFC9BE28();

      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CFBC1B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_1CFC9C5A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecentsCellState();
  sub_1CFBC2F40(v1 + *(v19 + 24), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CFBC2FB0(v13, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    if (sub_1CFC9C578())
    {
      sub_1CFC9C588();
      (*(v15 + 8))(v18, v14);
      v20 = sub_1CFC9BFB8();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v9, 1, v20) != 1)
      {
        return (*(v21 + 32))(a1, v9, v20);
      }

      sub_1CFBC2FB0(v9, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
    }

    else
    {
      (*(v15 + 8))(v18, v14);
    }
  }

  sub_1CFC9C3A8();
  v22 = sub_1CFC9BFB8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v7, 1, v22) != 1)
  {
    return (*(v23 + 32))(a1, v7, v22);
  }

  sub_1CFC9BF98();
  result = (v24)(v7, 1, v22);
  if (result != 1)
  {
    return sub_1CFBC2FB0(v7, &qword_1EC4ED0D0, &unk_1CFCA1FE0);
  }

  return result;
}

uint64_t sub_1CFBC1F1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for RecentsCellState();
  sub_1CFBC2F40(v1 + *(v6 + 24), v5);
  v7 = sub_1CFC9C5A8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1CFBC2FB0(v5, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  }

  else
  {
    v9 = sub_1CFC9C598();
    (*(v8 + 8))(v5, v7);
    if (v9)
    {
      return sub_1CFC9F0F8();
    }
  }

  v11 = [objc_opt_self() shared];
  v12 = [v11 current];

  if (v12)
  {
    return sub_1CFC9F188();
  }

  v13 = sub_1CFC9C408();
  if (!v13)
  {
    return sub_1CFC9F188();
  }

  return sub_1CFC9F178();
}

uint64_t sub_1CFBC20B0()
{
  v0 = sub_1CFC9D1F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9D1E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9D218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A12B8], v0);
  sub_1CFC9D1D8();
  sub_1CFC9D208();
  (*(v6 + 8))(v9, v5);
  result = (*(v11 + 8))(v14, v10);
  byte_1EC4ECFE8 = 1;
  return result;
}

uint64_t sub_1CFBC22EC()
{
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 != 1 || (sub_1CFC9C368(), !v0))
  {
    sub_1CFC9C398();
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CFBC2388(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&unk_1EE04F9A8, type metadata accessor for RecentsCellState);

  return MEMORY[0x1EEDF6B60](a1, v2);
}

uint64_t sub_1CFBC243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  (*(*(v15 - 8) + 16))(a8, v8, v15);
  v16 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) + 36);
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3;
}

uint64_t sub_1CFBC24F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1CFC9F278();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1CFC9E9B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFBC2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1D3871160](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED058, &qword_1CFCA1E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED060, &unk_1CFCA1E10);
  sub_1CFBC2ABC();
  sub_1CFBC2D38();
  return sub_1CFC9EEF8();
}

uint64_t sub_1CFBC2680(uint64_t a1, id *a2)
{
  result = sub_1CFC9F748();
  *a2 = 0;
  return result;
}

uint64_t sub_1CFBC26F8(uint64_t a1, id *a2)
{
  v3 = sub_1CFC9F758();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CFBC2778@<X0>(uint64_t *a1@<X8>)
{
  sub_1CFC9F768();
  v2 = sub_1CFC9F728();

  *a1 = v2;
  return result;
}

uint64_t sub_1CFBC27BC()
{
  v1 = *v0;
  v2 = sub_1CFC9F768();
  v3 = MEMORY[0x1D3871D60](v2);

  return v3;
}

uint64_t sub_1CFBC27F8()
{
  v1 = *v0;
  sub_1CFC9F768();
  sub_1CFC9F7C8();
}

uint64_t sub_1CFBC284C()
{
  v1 = *v0;
  sub_1CFC9F768();
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v2 = sub_1CFCA0378();

  return v2;
}

uint64_t sub_1CFBC28C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CFC9F768();
  v6 = v5;
  if (v4 == sub_1CFC9F768() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CFCA02B8();
  }

  return v9 & 1;
}

uint64_t sub_1CFBC2970@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CFC9F728();

  *a2 = v5;
  return result;
}

uint64_t sub_1CFBC29B8(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&qword_1EC4ED1F8, type metadata accessor for Key);
  v3 = sub_1CFBB74B4(&unk_1EC4ED200, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
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

unint64_t sub_1CFBC2ABC()
{
  result = qword_1EC4ED068;
  if (!qword_1EC4ED068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED058, &qword_1CFCA1E08);
    sub_1CFBC2BC0();
    sub_1CFBB74B4(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED068);
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

unint64_t sub_1CFBC2BC0()
{
  result = qword_1EC4ED070;
  if (!qword_1EC4ED070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED078, &unk_1CFCA3730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFC9E858();
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFBB74B4(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED070);
  }

  return result;
}

unint64_t sub_1CFBC2D38()
{
  result = qword_1EC4ED0A0;
  if (!qword_1EC4ED0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED060, &unk_1CFCA1E10);
    sub_1CFBC2DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED0A0);
  }

  return result;
}

unint64_t sub_1CFBC2DC4()
{
  result = qword_1EC4ED0A8;
  if (!qword_1EC4ED0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED0A8);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailDetailControlsView.CustomContainerWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VoicemailDetailControlsView.CustomContainerWidth(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1CFBC2ED4()
{
  if (!qword_1EE04D6A8)
  {
    sub_1CFC9C5A8();
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D6A8);
    }
  }
}

uint64_t sub_1CFBC2F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBC2FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFBC314C(uint64_t a1, unint64_t *a2)
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

void *sub_1CFBC31CC()
{
  v1 = v0;
  v2 = sub_1CFC9C138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v8 = result;
    v9 = [result indexPathsForSelectedItems];

    if (v9)
    {
      v10 = sub_1CFC9F8A8();

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v26[1] = v10;
        v13 = v10 + v12;
        v28 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
        swift_beginAccess();
        v14 = v3 + 16;
        v15 = *(v3 + 16);
        v16 = *(v3 + 72);
        v17 = (v14 - 8);
        v26[2] = v14;
        v27 = MEMORY[0x1E69E7CC0];
        v15(v6, v13, v2);
        while (1)
        {
          v18 = *&v1[v28];

          v19 = sub_1CFC9C128();
          if ((v19 & 0x8000000000000000) != 0 || v19 >= *(v18 + 16))
          {
            break;
          }

          v20 = v1;
          v21 = *(v18 + 8 * v19 + 32);

          v22 = sub_1CFC9C118();
          if ((v22 & 0x8000000000000000) != 0 || v22 >= *(v21 + 16))
          {

            v1 = v20;
            goto LABEL_6;
          }

          sub_1CFBB94B0(v21 + 40 * v22 + 32, v29);

          (*v17)(v6, v2);
          sub_1CFBAD070(v29, v30);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v23 = v27;
          }

          else
          {
            v23 = sub_1CFC7AFC8(0, v27[2] + 1, 1, v27);
          }

          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            v23 = sub_1CFC7AFC8((v24 > 1), v25 + 1, 1, v23);
          }

          v23[2] = v25 + 1;
          v27 = v23;
          sub_1CFBAD070(v30, &v23[5 * v25 + 4]);
          v1 = v20;
LABEL_7:
          v13 += v16;
          if (!--v11)
          {

            return v27;
          }

          v15(v6, v13, v2);
        }

LABEL_6:
        (*v17)(v6, v2);
        goto LABEL_7;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CFBC3504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_1CFBAF1C8(a2);

  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1CFBC35E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v5 = *&v3[v4];

    v6 = sub_1CFC9C128();
    if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v5 + 16))
    {

      return 0;
    }

    else
    {
      v7 = v5 + 16 * v6;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();

      result = [v3 collectionView];
      if (result)
      {
        v10 = result;
        ObjectType = swift_getObjectType();
        v12 = (*(v9 + 160))(a1, v10, ObjectType, v9);
        swift_unknownObjectRelease();

        return v12;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1CFBC3718()
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(v0 + 40));
  return sub_1CFCA0378();
}

uint64_t sub_1CFBC3794()
{
  sub_1CFCA0338();
  sub_1CFCA0068();
  MEMORY[0x1D3872880](*(v0 + 40));
  return sub_1CFCA0378();
}

double sub_1CFBC3820@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_1CFC9C128();
  if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v5 + 16))
  {
    goto LABEL_10;
  }

  v7 = v5 + 16 * v6;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  swift_unknownObjectRetain();

  v10 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  swift_beginAccess();
  v11 = *(a1 + v10);

  v12 = sub_1CFC9C128();
  if ((v12 & 0x8000000000000000) != 0 || v12 >= *(v11 + 16))
  {
    swift_unknownObjectRelease();
LABEL_10:

    goto LABEL_11;
  }

  v13 = *(v11 + 8 * v12 + 32);

  v14 = sub_1CFC9C118();
  if ((v14 & 0x8000000000000000) == 0 && v14 < *(v13 + 16))
  {
    sub_1CFBB94B0(v13 + 40 * v14 + 32, &v20);

    sub_1CFBAD070(&v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1CFC55874(v15, v16);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(&v20, ObjectType, v9);
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v18 = sub_1CFC9F6D8();
    swift_unknownObjectRelease();
    *(a2 + 40) = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    sub_1CFBB94B0(v22, a2 + 48);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    return result;
  }

  swift_unknownObjectRelease();
LABEL_11:
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void sub_1CFBC3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v131 = a3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v127 = *(v128 - 8);
  v4 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v124 = v116 - v8;
  v138 = sub_1CFC9C138();
  v132 = *(v138 - 8);
  v9 = v132[8];
  v10 = MEMORY[0x1EEE9AC00](v138);
  v133 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = v116 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v137 = v116 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v123 = v116 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v130 = v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v122 = v116 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v135 = v116 - v26;
  v27 = sub_1CFC9D8C8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CFC9D888();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v119 = v37;
  v129 = v23;
  if (qword_1EE04D9A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v38 = sub_1CFC9D8B8();
    __swift_project_value_buffer(v38, qword_1EE04D9B0);
    v39 = sub_1CFC9D8A8();
    sub_1CFC9D8D8();
    v40 = sub_1CFC9FC48();
    if (sub_1CFC9FEA8())
    {

      sub_1CFC9D908();

      if ((*(v28 + 11))(v31, v27) == *MEMORY[0x1E69E93E8])
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 1))(v31, v27);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1CFC9D868();
      _os_signpost_emit_with_name_impl(&dword_1CFB9F000, v39, v40, v43, "SectionnedCollectionViewController loading", v41, v42, 2u);
      MEMORY[0x1D3873280](v42, -1, -1);
    }

    (*(v33 + 8))(v36, v32);
    v36 = Strong;
    v44 = [Strong traitCollection];
    v45 = [v44 splitViewControllerLayoutEnvironment];

    v46 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    v47 = 0x1E83CC000;
    if (v45 != 1)
    {
      break;
    }

    v48 = v36;
    v49 = [v48 collectionView];
    if (!v49)
    {
      goto LABEL_79;
    }

    v50 = v49;
    v51 = [v49 indexPathsForSelectedItems];

    v27 = v138;
    v53 = v132;
    v52 = v133;
    v54 = v135;
    v120 = v48;
    v55 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (v51)
    {
      v56 = sub_1CFC9F8A8();

      v31 = v56;
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v57 = v129;
    v58 = *(v53 + 7);
    v58(v54, 1, 1, v27);
    v118 = *(v31 + 16);
    if (v118)
    {
      goto LABEL_48;
    }

    v116[0] = v58;
    v116[1] = v53 + 56;
    v116[2] = v31;
    v59 = v131;
    v28 = v53;
    if (v131)
    {
      v31 = *(v131 + 16);
      if (v31)
      {
        v60 = (v53[80] + 32) & ~v53[80];
        v121 = *(v53 + 2);
        v121(v137, v131 + v60, v27);
        if (v31 != 1)
        {
          v64 = v132[9];
          v65 = (v132 + 1);
          v117 = (v132 + 4);
          v32 = v64;
          v66 = v59 + v64 + v60;
          v33 = 1;
          do
          {
            v28 = v31;
            v31 = v134;
            v121(v134, v66, v27);
            v36 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_74;
            }

            v67 = sub_1CFC9C118();
            v68 = v137;
            v69 = sub_1CFC9C118();
            v70 = *v65;
            if (v67 >= v69)
            {
              v27 = v138;
              v70(v31, v138);
            }

            else
            {
              v27 = v138;
              v70(v68, v138);
              (*v117)(v68, v31, v27);
            }

            ++v33;
            v66 += v32;
            v31 = v28;
          }

          while (v36 != v28);
        }

        v28 = v132;
        v31 = v132[4];
        v61 = v123;
        (v31)(v123, v137, v27);
        (v31)(v130, v61, v27);
        v62 = v124;
        sub_1CFBA29FC(v125, v124, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        v63 = v127;
        v36 = v128;
        if ((*(v127 + 48))(v62, 1, v128) == 1)
        {
          sub_1CFBC2FB0(v62, &qword_1EC4ED5E0, &qword_1CFCA24C8);
          goto LABEL_29;
        }

        v71 = sub_1CFC9DB18();
        (*(v63 + 8))(v62, v36);
        v72 = sub_1CFC9C128();
        if ((v72 & 0x8000000000000000) != 0 || v72 >= *(v71 + 16))
        {

LABEL_29:
          v73 = 0;
          v74 = 1;
        }

        else
        {
          v73 = *(v71 + 8 * v72 + 32);

          v74 = 0;
        }

        v75 = v119;
        swift_beginAccess();
        v76 = v126;
        (*(v63 + 16))(v126, v75, v36);
        v77 = sub_1CFC9DB18();
        (*(v63 + 8))(v76, v36);
        v78 = v130;
        v79 = sub_1CFC9C128();
        if ((v79 & 0x8000000000000000) != 0)
        {

          if (v74)
          {
            goto LABEL_36;
          }
        }

        else if (v79 >= *(v77 + 16))
        {

          if (v74)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v36 = *(v77 + 8 * v79 + 32);

          if (v73 == v36)
          {
            v80 = v74;
          }

          else
          {
            v80 = 1;
          }

          if ((v80 & 1) == 0)
          {
LABEL_36:
            v81 = v135;
            sub_1CFBC2FB0(v135, &unk_1EC4ED408, &qword_1CFCA22E0);
            v82 = v138;
            (v31)(v81, v78, v138);
            v27 = v82;
            (v116[0])(v81, 0, 1, v82);
            v54 = v81;
LABEL_46:
            v52 = v133;
            goto LABEL_47;
          }
        }

        (*(v28 + 1))(v78, v138);
      }
    }

    v83 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v84 = v120;
    swift_beginAccess();
    v85 = *&v84[v83];
    v32 = *(v85 + 16);

    if (!v32)
    {
LABEL_44:

      v27 = v138;
      v52 = v133;
      v54 = v135;
LABEL_47:
      v36 = Strong;
      v55 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
      v57 = v129;
      v53 = v28;
LABEL_48:
      sub_1CFBA29FC(v54, v57, &unk_1EC4ED408, &qword_1CFCA22E0);
      if ((*(v53 + 6))(v57, 1, v27) == 1)
      {
        v91 = v120;

        v92 = sub_1CFBC2FB0(v57, &unk_1EC4ED408, &qword_1CFCA22E0);
        v47 = v55;
LABEL_58:
        v46 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
        if (!v118)
        {
          (*((*MEMORY[0x1E69E7D40] & *v91) + 0x1E8))(v92);
        }
      }

      else
      {
        (*(v53 + 4))(v52, v57, v27);
        v91 = v120;
        v93 = [v120 collectionView];
        if (!v93)
        {
          goto LABEL_80;
        }

        v94 = v93;
        v47 = v55;
        v95 = [v93 v55[188]];

        if (sub_1CFC9C128() >= v95)
        {
          goto LABEL_57;
        }

        v96 = [v91 collectionView];
        if (!v96)
        {
          goto LABEL_81;
        }

        v97 = v96;
        v98 = [v96 numberOfItemsInSection_];

        if (sub_1CFC9C118() >= v98)
        {
LABEL_57:

          v92 = (*(v53 + 1))(v52, v138);
          goto LABEL_58;
        }

        v99 = v91;
        v100 = [v91 collectionView];
        v101 = v138;
        if (!v100)
        {
          goto LABEL_82;
        }

        v102 = v100;
        v103 = sub_1CFC9C0C8();
        [v102 selectItemAtIndexPath:v103 animated:0 scrollPosition:0];

        v104 = [v99 collectionView];
        if (!v104)
        {
          goto LABEL_83;
        }

        v105 = sub_1CFC9C0C8();
        [v99 collectionView:v104 didSelectItemAtIndexPath:v105];

        (*(v53 + 1))(v52, v101);
        v46 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
      }

      sub_1CFBC2FB0(v135, &unk_1EC4ED408, &qword_1CFCA22E0);
      break;
    }

    v27 = 0;
    v33 = v85 + 40;
    while (v27 < *(v85 + 16))
    {
      v86 = *(v33 - 8);
      v87 = *v33;
      ObjectType = swift_getObjectType();
      v36 = (v87 + 24);
      v89 = *(v87 + 24);
      swift_unknownObjectRetain();
      v31 = v89(ObjectType, v87);
      swift_unknownObjectRelease();
      if (v31)
      {

        v90 = v122;
        MEMORY[0x1D386E640](0, v27);
        v54 = v135;
        sub_1CFBC2FB0(v135, &unk_1EC4ED408, &qword_1CFCA22E0);
        v27 = v138;
        (v116[0])(v90, 0, 1, v138);
        sub_1CFBCCE88(v90, v54, &unk_1EC4ED408, &qword_1CFCA22E0);
        goto LABEL_46;
      }

      ++v27;
      v33 += 16;
      if (v32 == v27)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v106 = v36;
  v107 = [v106 v46[146]];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 *(v47 + 1504)];

    if ((v109 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (!v109)
      {
LABEL_69:

        return;
      }

      v110 = 0;
      v111 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload;
      while (1)
      {
        v112 = [v106 v46[146]];
        if (!v112)
        {
          break;
        }

        v113 = v112;
        v114 = [v112 numberOfItemsInSection_];

        if (v114 > 0)
        {
          v115 = *&v106[v111];
          v139 = v110;

          sub_1CFC9DCC8();
        }

        if (v109 == ++v110)
        {
          goto LABEL_69;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

void sub_1CFBC4920()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] = 1;
  }
}

uint64_t sub_1CFBC497C(int a1, int a2)
{
  v4 = v2;
  v81 = a2;
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v77 - v20;
  result = [v2 collectionView];
  if (!result)
  {
    goto LABEL_51;
  }

  v22 = result;
  v23 = [result indexPathsForSelectedItems];

  v87 = v7;
  v78 = v6;
  v88 = a1;
  if (!v23)
  {
    goto LABEL_7;
  }

  v3 = sub_1CFC9F8A8();

  v24 = *(v3 + 2);
  if (!v24)
  {

LABEL_7:
    (*(v7 + 56))(v82, 1, 1, v6);
    goto LABEL_8;
  }

  v77 = v4;
  v25 = *(v7 + 16);
  v85 = &v3[(*(v7 + 80) + 32) & ~*(v7 + 80)];
  v86 = v25;
  (v25)(v15);
  if (v24 != 1)
  {
    v83 = (v87 + 32);
    v84 = v87 + 8;
    v61 = 1;
    while (v61 < *(v3 + 2))
    {
      v62 = v24;
      v63 = v87;
      v86(v13, &v85[*(v87 + 72) * v61], v6);
      v64 = sub_1CFC9C118();
      v65 = sub_1CFC9C118();
      v66 = *(v63 + 8);
      if (v64 >= v65)
      {
        v66(v13, v6);
      }

      else
      {
        v66(v15, v6);
        (*v83)(v15, v13, v6);
      }

      v24 = v62;
      if (v62 == ++v61)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_48;
  }

LABEL_5:

  v26 = v87;
  v27 = v6;
  v28 = v82;
  (*(v87 + 32))(v82, v15, v27);
  (*(v26 + 56))(v28, 0, 1, v27);
  v4 = v77;
LABEL_8:
  v29 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v13 = v4;
  v24 = *&v4[v29];
  v30 = v24[2];

  if (v30)
  {
    v31 = 0;
    v32 = v24 + 5;
    while (v31 < v24[2])
    {
      ++v31;
      v34 = *(v32 - 1);
      v33 = *v32;
      ObjectType = swift_getObjectType();
      v3 = (v33 + 80);
      v36 = *(v33 + 80);
      swift_unknownObjectRetain();
      v36(v88 & 1, ObjectType, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      if (v30 == v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_12:

  v37 = type metadata accessor for SectionnedCollectionViewController();
  v38 = v13;
  v90.receiver = v13;
  v90.super_class = v37;
  v39 = v88;
  objc_msgSendSuper2(&v90, sel_setEditing_animated_, v88 & 1, v81 & 1);
  sub_1CFC90748();
  v40 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
  swift_beginAccess();
  v41 = *&v13[v40];
  v42 = *(v41 + 16);
  if (!v42)
  {
    v52 = v82;
    return sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  if (v39)
  {
    v89 = MEMORY[0x1E69E7CC0];

    sub_1CFCA0168();
    v43 = 144;
    do
    {
      v44 = *(v41 + v43);
      sub_1CFCA0138();
      v45 = *(v89 + 16);
      sub_1CFCA0178();
      sub_1CFCA0188();
      sub_1CFCA0148();
      v43 += 120;
      --v42;
    }

    while (v42);

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v46 = sub_1CFC9F898();

    v3 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    [v13 setToolbarItems_];

    type metadata accessor for SystemItem(0);
    sub_1CFC9CD28();
    v47 = v89;
    v48 = [v13 toolbarItems];
    if (!v48)
    {
      [v13 setToolbarItems_];
      v52 = v82;
      goto LABEL_42;
    }

    v49 = v48;
    v50 = sub_1CFC9F8A8();

    v89 = v50;
    v24 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v47 target:0 action:0];
    if (!(v50 >> 62))
    {
      result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 1)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      goto LABEL_19;
    }

LABEL_49:
    result = sub_1CFC9FFD8();
    if (result < 1)
    {
      goto LABEL_50;
    }

LABEL_19:
    v38 = v13;
    sub_1CFBB510C(1, 1, v24, &unk_1EE04D0D0, 0x1E69DC708);

    if (v89)
    {
      v51 = sub_1CFC9F898();
    }

    else
    {
      v51 = 0;
    }

    v52 = v82;
    [v13 *(v3 + 169)];

LABEL_42:
    v73 = [v38 navigationController];
    if (v73)
    {
      v74 = v73;
      [v73 setToolbarHidden:0 animated:1];
    }

    v75 = [v38 tabBarController];
    if (v75)
    {
      v76 = v75;
      [v75 setTabBarHidden:1 animated:1];
    }

    return sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  v53 = [v13 navigationController];
  v52 = v82;
  if (v53)
  {
    v54 = v53;
    [v53 setToolbarHidden:1 animated:1];
  }

  v55 = [v13 tabBarController];
  v56 = v87;
  v57 = v79;
  v58 = v80;
  if (v55)
  {
    v59 = v55;
    [v55 setTabBarHidden:0 animated:1];
  }

  sub_1CFBA29FC(v52, v57, &unk_1EC4ED408, &qword_1CFCA22E0);
  v60 = v78;
  if ((*(v56 + 48))(v57, 1, v78) == 1)
  {
    sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
    v52 = v57;
    return sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  (*(v56 + 32))(v58, v57, v60);
  v67 = [v13 traitCollection];
  v68 = [v67 splitViewControllerLayoutEnvironment];

  if (v68 != 1)
  {
LABEL_38:
    (*(v56 + 8))(v58, v60);
    return sub_1CFBC2FB0(v52, &unk_1EC4ED408, &qword_1CFCA22E0);
  }

  result = [v13 collectionView];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v69 = result;
  v70 = sub_1CFC9C0C8();
  [v69 selectItemAtIndexPath:v70 animated:0 scrollPosition:0];

  result = [v13 collectionView];
  if (result)
  {
    v71 = result;
    v72 = sub_1CFC9C0C8();
    [v13 collectionView:v71 didSelectItemAtIndexPath:v72];

    goto LABEL_38;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1CFBC53A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CFC9C088();
  v42 = *(v5 - 8);
  v6 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED528, &qword_1CFCA2440);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v40 - v10;
  v12 = sub_1CFC9C0A8();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v43 = a1;
  v19 = sub_1CFBA48FC(a1, a2);
  if (v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v19;
  SectionnedCollectionViewController.selectedRows(in:)(v43, a2, v18);
  v23 = *(v41 + 16);
  v40 = v18;
  v23(v16, v18, v12);
  v24 = MEMORY[0x1E6969B50];
  sub_1CFBA5194(&unk_1EE04D6E0, MEMORY[0x1E6969B50]);
  sub_1CFC9F858();
  v25 = *(v44 + 36);
  v43 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  v44 = v2;
  swift_beginAccess();
  sub_1CFBA5194(&qword_1EE04D6D8, v24);
  v26 = v42 + 8;
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CFC9FA48();
    sub_1CFBA5194(&qword_1EE04D6F0, MEMORY[0x1E6969B18]);
    v27 = sub_1CFC9F6F8();
    (*v26)(v8, v5);
    if (v27)
    {
      sub_1CFBC2FB0(v11, &unk_1EC4ED528, &qword_1CFCA2440);
      (*(v41 + 8))(v40, v12);
      return v42;
    }

    v28 = sub_1CFC9FA88();
    v30 = *v29;
    v28(v47, 0);
    result = sub_1CFC9FA58();
    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    v31 = *(v44 + v43);
    if (v22 >= *(v31 + 16))
    {
      goto LABEL_17;
    }

    if ((v30 & 0x8000000000000000) == 0)
    {
      v32 = *(v31 + 8 * v22 + 32);
      if (v30 < *(v32 + 16))
      {
        v33 = v32 + 40 * v30;
        v34 = *(v33 + 56);
        v35 = __swift_project_boxed_opaque_existential_1((v33 + 32), v34);
        v46 = v34;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v45);
        (*(*(v34 - 8) + 16))(boxed_opaque_existential_0Tm, v35, v34);
        sub_1CFBCC9AC(&v45, v47);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v42;
        }

        else
        {
          v37 = sub_1CFC7B110(0, *(v42 + 2) + 1, 1, v42);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = sub_1CFC7B110((v38 > 1), v39 + 1, 1, v37);
        }

        *(v37 + 2) = v39 + 1;
        v42 = v37;
        sub_1CFBCC9AC(v47, &v37[32 * v39 + 32]);
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_1CFBC5874(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SectionnedCollectionViewController();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  result = [v1 setEditing:0 animated:a1 & 1];
  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 0;
  return result;
}

void sub_1CFBC5960(uint64_t a1, uint64_t a2)
{
  v62 = sub_1CFC9C138();
  v64 = *(v62 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v63 = &v56 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v56 - v11;
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v60 = v2;
  v13 = *&v2[v12];
  v14 = *(v13 + 16);
  v67 = v13;

  v66 = v14;
  if (v14)
  {
    v15 = 0;
    v65 = a2 + 40;
    v16 = (v67 + 40);
    while (1)
    {
      if (v15 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v18 = *(v16 - 1);
      v17 = *v16;
      ObjectType = swift_getObjectType();
      v20 = *(v17 + 40);
      swift_unknownObjectRetain();
      v20(v69, ObjectType, v17);
      __swift_project_boxed_opaque_existential_1(v69, v69[3]);
      v21 = sub_1CFC9F6D8();
      v22 = swift_getObjectType();
      (*(a2 + 40))(v68, v22, a2);
      __swift_project_boxed_opaque_existential_1(v68, v68[3]);
      v23 = sub_1CFC9F6D8();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      if (v21 == v23)
      {
        break;
      }

      ++v15;
      v16 += 2;
      if (v66 == v15)
      {
        goto LABEL_6;
      }
    }

    v24 = v60;
    v25 = [v60 collectionView];
    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = v25;
    v27 = [v25 numberOfItemsInSection_];

    v28 = v59;
    if (v27 < 1)
    {
      return;
    }

    v29 = [v24 collectionView];
    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = v29;
    v31 = [v29 indexPathsForSelectedItems];

    v32 = v62;
    if (v31)
    {
      v33 = sub_1CFC9F8A8();

      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = 0;
        v58 = (v64 + 8);
        v67 = v64 + 32;
        v36 = MEMORY[0x1E69E7CC0];
        v37 = v61;
        v65 = v64 + 16;
        v66 = v34;
        while (v35 < *(v33 + 16))
        {
          v38 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v39 = *(v64 + 72);
          (*(v64 + 16))(v37, v33 + v38 + v39 * v35, v32);
          if (sub_1CFC9C128() == v15)
          {
            v40 = v32;
            v41 = *v67;
            (*v67)(v63, v37, v40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69[0] = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CFBCA940(0, *(v36 + 16) + 1, 1);
              v36 = v69[0];
            }

            v44 = *(v36 + 16);
            v43 = *(v36 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1CFBCA940(v43 > 1, v44 + 1, 1);
              v36 = v69[0];
            }

            *(v36 + 16) = v44 + 1;
            v45 = v62;
            v41((v36 + v38 + v44 * v39), v63, v62);
            v32 = v45;
            v37 = v61;
            v34 = v66;
          }

          else
          {
            (*v58)(v37, v32);
          }

          if (v34 == ++v35)
          {
            goto LABEL_25;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v36 = MEMORY[0x1E69E7CC0];
LABEL_25:

      if (*(v36 + 16))
      {
        v47 = v64;
        v48 = v57;
        (*(v64 + 16))(v57, v36 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v32);

        v49 = sub_1CFC9C118();
        (*(v47 + 8))(v48, v62);
        v46 = v49;
      }

      else
      {

        v46 = 0;
      }

      v24 = v60;
      v28 = v59;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1D386E640](v46, v15);
    v50 = [v24 collectionView];
    if (!v50)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v51 = v50;
    v52 = sub_1CFC9C0C8();
    [v51 selectItemAtIndexPath:v52 animated:0 scrollPosition:0];

    v53 = [v24 collectionView];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1CFC9C0C8();
      [v24 collectionView:v54 didSelectItemAtIndexPath:v55];

      (*(v64 + 8))(v28, v62);
      return;
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_1CFBC5F74(int a1)
{
  v2 = v1;
  HIDWORD(v17) = a1;
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2;
  v8 = [v2 collectionView];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 indexPathsForSelectedItems];

  if (v10)
  {
    v11 = sub_1CFC9F8A8();

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(v11 + 16))
      {
        (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
        v14 = [v18 collectionView];
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = v14;
        ++v13;
        v16 = sub_1CFC9C0C8();
        [v15 deselectItemAtIndexPath:v16 animated:BYTE4(v17) & 1];

        (*(v4 + 8))(v7, v3);
        if (v12 == v13)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

id SectionnedCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id SectionnedCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall SectionnedCollectionViewController.sectionItemsDidChange(animateDifferences:)(Swift::Bool animateDifferences)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) == 1)
  {
    sub_1CFBA8154(0, 0, animateDifferences);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 1;
  }
}

id SectionnedCollectionViewController.visibleIndexPaths()()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result indexPathsForVisibleItems];

    sub_1CFC9C138();
    v4 = sub_1CFC9F8A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CFBC6460()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result indexPathsForVisibleItems];

    sub_1CFC9C138();
    v4 = sub_1CFC9F8A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SectionnedCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)()
{
  v3 = MEMORY[0x1E69E6370];
  LOBYTE(v2) = 2;
  result = sub_1CFC9CD28();
  if (v4 == 1)
  {
    return [v0 setEditing:1 animated:{1, sub_1CFBCCF04, 0, sub_1CFBCCF04, 0, sub_1CFBCCF04, 0, v2, v3}];
  }

  return result;
}

id SectionnedCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
  result = [v0 isEditing];
  if (result)
  {

    return sub_1CFC90748();
  }

  return result;
}

uint64_t SectionnedCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CFC9C138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9C128();
  v11 = sub_1CFC9C118();
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v3 + v12);
  if (v10 >= *(v14 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(v14 + 8 * v10 + 32);
  if (v11 >= *(v15 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1CFBB94B0(v15 + 40 * v11 + 32, v31);
  v16 = sub_1CFC9C0C8();
  v17 = [a1 cellForItemAtIndexPath_];

  if (!v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v18 = sub_1CFC9C128();
  v19 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v20 = *(v3 + v19);
  if (v18 < *(v20 + 16))
  {
    v21 = v20 + 16 * v18;
    v22 = *(v21 + 32);
    v30 = *(v21 + 40);
    ObjectType = swift_getObjectType();
    v24 = v32;
    v29[0] = ObjectType;
    v29[1] = v33;
    v25 = __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v7 + 16))(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    (*(v7 + 32))(v27 + v26, v9, v6);
    swift_unknownObjectRetain();
    v28 = a1;
    SectionController.anyPerformPrimaryAction<A>(for:cell:deselect:)(v25, v17, sub_1CFBCB450, v27, v29[0], v24, v30);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

LABEL_15:
  __break(1u);
  return result;
}

UIContextMenuConfiguration_optional __swiftcall SectionnedCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  v3 = sub_1CFBCBA2C(contextMenuConfigurationForItemsAt._rawValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1CFBC6FF8()
{
  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);

  return sub_1CFC9FD68();
}

void sub_1CFBC7230()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v2 = Strong;
    swift_beginAccess();
    v3 = *&v2[v1];

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 40);
      while (v5 < *(v3 + 16))
      {
        ++v5;
        v7 = *(v6 - 1);
        v8 = *v6;
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 192);
        swift_unknownObjectRetain();
        v10(ObjectType, v8);
        swift_unknownObjectRelease();
        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t SectionnedCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(void *a1)
{
  v3 = sub_1CFC9C128();
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + v4);
  if (v3 >= *(v6 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 16 * v3 + 32);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    swift_unknownObjectRetain();
    v11 = sub_1CFC9C0C8();
    v12 = [a1 cellForItemAtIndexPath_];

    if (v12)
    {
      ObjectType = swift_getObjectType();
      v14 = (*(v10 + 24))(v12, ObjectType, v10);
      swift_unknownObjectRelease();

      return v14;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id SectionnedCollectionViewController.collectionView(_:dropPreviewParametersForItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C0C8();
  v5 = [v2 collectionView:a1 dragPreviewParametersForItemAtIndexPath:v4];

  return v5;
}

id sub_1CFBC7C90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1CFBC7CC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v3 = sub_1CFC9F8A8();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1CFBC7D58(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1CFCA0328();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1CFBC8AE0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1CFBC7E38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  v9 = sub_1CFCA0378();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1CFCA02B8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1CFBC8C00(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CFBC7F88(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CFC9FFE8();

    if (v9)
    {

      sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1CFC9FFD8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1CFBC81C0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1CFBC8834(v22 + 1);
    }

    v20 = v8;
    sub_1CFBC8A5C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
  v11 = *(v6 + 40);
  v12 = sub_1CFC9FDD8();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1CFBC8D80(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1CFC9FDE8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1CFBC81C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
    v2 = sub_1CFCA00A8();
    v16 = v2;
    sub_1CFC9FF98();
    if (sub_1CFCA0018())
    {
      sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1CFBC8834(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1CFC9FDD8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1CFCA0018());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CFBC83B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1CFCA0328();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CFBC85D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1CFCA0338();
      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CFBC8834(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1CFC9FDD8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1CFBC8A5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1CFC9FDD8();
  v5 = -1 << *(a2 + 32);
  result = sub_1CFC9FF78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1CFBC8AE0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFBC83B0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1CFBC8EF0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1CFBC92DC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1CFCA0328();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CFCA02F8();
  __break(1u);
  return result;
}

uint64_t sub_1CFBC8C00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CFBC85D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CFBC9030();
      goto LABEL_16;
    }

    sub_1CFBC94CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1CFCA0338();
  sub_1CFC9F7C8();
  result = sub_1CFCA0378();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CFCA02B8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CFCA02F8();
  __break(1u);
  return result;
}

void sub_1CFBC8D80(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFBC8834(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CFBC918C();
      goto LABEL_12;
    }

    sub_1CFBC9704(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1CFC9FDD8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1CFC9FDE8();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CFCA02F8();
  __break(1u);
}

void *sub_1CFBC8EF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  v2 = *v0;
  v3 = sub_1CFCA0088();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1CFBC9030()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  v2 = *v0;
  v3 = sub_1CFCA0088();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1CFBC918C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  v2 = *v0;
  v3 = sub_1CFCA0088();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFBC92DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED628, &qword_1CFCA2508);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1CFCA0328();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CFBC94CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1CFCA0338();

      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CFBC9704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED540, &qword_1CFCA2448);
  result = sub_1CFCA0098();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1CFC9FDD8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1CFBC9918(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED598, &unk_1CFCA2490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9A60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED610, &qword_1CFCA24F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9B80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1CFBC9C84(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED568, &qword_1CFCA2468);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1CFBC9E74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBC9F80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED648, &qword_1CFCA2528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CFBCA084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED640, &qword_1CFCA2520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CFBCA188(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CFBCA298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v6 >= 1)
  {
    v10 = result;
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      result = MEMORY[0x1D386F820](*a4 & 0x3F);
      if (result / 3 > v10)
      {
        if (v10 < 0)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v11 < v10)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        if (v10)
        {

          v12 = 0;
          while (1)
          {
            sub_1CFBCCD6C(a3 + 32 + 48 * v12, v50);
            v13 = *a4;
            sub_1CFCA0338();
            sub_1CFCA0068();
            MEMORY[0x1D3872880](v51);
            result = sub_1CFCA0378();
            v14 = 1 << *a4;
            v15 = __OFSUB__(v14, 1);
            v16 = v14 - 1;
            if (v15)
            {
              break;
            }

            *&v44 = a4;
            *(&v44 + 1) = a5;
            *&v46 = v16 & result;
            *(&v46 + 1) = sub_1CFC9D288();
            *&v48 = v17;
            *(&v48 + 1) = v18;
            if (*(&v46 + 1))
            {
              while (1)
              {
                v52 = v44;
                v53 = v46;
                v54 = v48;
                v55 = 0;
                v19 = sub_1CFC9D2B8();
                if ((v20 & 1) == 0 && v19 == v12)
                {
                  break;
                }

                sub_1CFC9D2D8();
              }
            }

            result = v12 + v6;
            if (__OFADD__(v12, v6))
            {
              goto LABEL_58;
            }

            ++v12;
            sub_1CFC9D2C8();
            sub_1CFBCCDA4(v50);
            if (v12 == v10)
            {

              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_18;
      }

      *&v52 = a4;
      *(&v52 + 1) = a5;
      *&v53 = 0;
      *(&v53 + 1) = sub_1CFC9D288();
      *&v54 = v36;
      *(&v54 + 1) = v37;
      v55 = 0;
      v38 = sub_1CFC9D2B8();
      if ((v39 & 1) != 0 || v38 >= v10)
      {
LABEL_45:
        result = sub_1CFC9D2D8();
LABEL_18:
        v21 = a4[1];
        if (__OFSUB__(v21 >> 6, v6))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v22 = 1 << *a4;
        v15 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v15)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v24 = (v23 & (((v21 >> 6) - v6) >> 63)) + (v21 >> 6) - v6;
        if (v24 < v23)
        {
          v23 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v24 - v23) << 6);
        return result;
      }

      if (!__OFADD__(v38, v6))
      {
        sub_1CFC9D2C8();
        goto LABEL_45;
      }

      __break(1u);
LABEL_51:
      *&v52 = a4;
      *(&v52 + 1) = a5;
      *&v53 = 0;
      *(&v53 + 1) = sub_1CFC9D288();
      *&v54 = v40;
      *(&v54 + 1) = v41;
      v55 = 0;
      v42 = sub_1CFC9D2B8();
      if ((v43 & 1) == 0 && v42 >= v5)
      {
        v15 = __OFSUB__(v42, v6);
        result = v42 - v6;
        if (v15)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        sub_1CFC9D2C8();
      }

      return sub_1CFC9D2D8();
    }

    v5 = a2;
    v25 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    result = MEMORY[0x1D386F820](*a4 & 0x3F);
    if (v25 >= result / 3)
    {
      goto LABEL_51;
    }

    if (v11 < v5)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v5 < 0)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v11 != v5)
    {
      if (v11 <= v5)
      {
LABEL_71:
        __break(1u);
        return result;
      }

      v26 = a3 + 32;

      while (1)
      {
        sub_1CFBCCD6C(v26 + 48 * v5, v50);
        v27 = *a4;
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v51);
        result = sub_1CFCA0378();
        v28 = 1 << *a4;
        v15 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v15)
        {
          goto LABEL_60;
        }

        *&v45 = a4;
        *(&v45 + 1) = a5;
        *&v47 = v29 & result;
        *(&v47 + 1) = sub_1CFC9D288();
        *&v49 = v30;
        *(&v49 + 1) = v31;
        if (*(&v47 + 1))
        {
          while (1)
          {
            v52 = v45;
            v53 = v47;
            v54 = v49;
            v55 = 0;
            v32 = sub_1CFC9D2B8();
            if ((v33 & 1) == 0 && v32 == v5)
            {
              break;
            }

            sub_1CFC9D2D8();
          }
        }

        v34 = v5 + 1;
        v35 = __OFADD__(v5, 1);
        result = v5 - v6;
        if (__OFSUB__(v5, v6))
        {
          goto LABEL_61;
        }

        sub_1CFC9D2C8();
        result = sub_1CFBCCDA4(v50);
        if (v35)
        {
          goto LABEL_62;
        }

        ++v5;
        if (v34 == v11)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CFBCA6FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1D386F850](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1D386F860](v8, a4);
    sub_1CFBCA77C(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1CFBCA7CC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        sub_1CFBCCD6C(v5 + 48 * v6, v9);
        v7 = *a3;
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v10);
        result = sub_1CFCA0378();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1CFC9D288();
        sub_1CFBCCDA4(v9);
        if (v8)
        {
          while (1)
          {
            sub_1CFC9D2D8();
          }
        }

        result = sub_1CFC9D2C8();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_1CFBCA900(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCA920(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFBCA940(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED620, &qword_1CFCA2500, MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

size_t sub_1CFBCA984(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED578, &qword_1CFCA4B00, type metadata accessor for VoicemailsSectionController.Item);
  *v3 = result;
  return result;
}

char *sub_1CFBCA9C8(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFBCA9E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBC9C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFBCAA08(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED508, &qword_1CFCA2428, MEMORY[0x1E6995D28]);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA4C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA6C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBC9F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBCAA8C(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBCA084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFBCAAAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &unk_1EC4ED580, &qword_1CFCA2480, MEMORY[0x1E697B5B0]);
  *v3 = result;
  return result;
}

char *sub_1CFBCAAF0(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBCA188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBCAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  sub_1CFCA0338();
  sub_1CFCA0068();
  v10 = *(a1 + 40);
  MEMORY[0x1D3872880](v10);
  result = sub_1CFCA0378();
  v12 = 1 << *a4;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *&v27 = a4;
    *(&v27 + 1) = a5;
    *&v28 = v14 & result;
    *(&v28 + 1) = sub_1CFC9D288();
    *&v29 = v15;
    *(&v29 + 1) = v16;
    v30 = 0;
    v17 = sub_1CFC9D2B8();
    if ((v18 & 1) == 0)
    {
      do
      {
        sub_1CFBCCD6C(a2 + 48 * v17, v21);
        if (MEMORY[0x1D3872590](v21, a1))
        {
          v20 = v22;
          sub_1CFBCCDA4(v21);
          if (v20 == v10)
          {
            return v17;
          }
        }

        else
        {
          sub_1CFBCCDA4(v21);
        }

        sub_1CFC9D2D8();
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v17 = sub_1CFC9D2B8();
      }

      while ((v19 & 1) == 0);
    }

    return v17;
  }

  return result;
}

unint64_t sub_1CFBCAC68(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1CFBB4684(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1CFBCAD3C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1CFBCAD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1CFC9D9F8();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

  if (v18 < 1)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1CFBC2FB0(v25, &qword_1EC4ED4F8, &qword_1CFCA2418);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CFBCAED8(uint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = result + 32; ; i += 88)
  {
    sub_1CFBA29FC(i, v32, &qword_1EC4ED618, &qword_1CFCA24F8);
    v29 = v32[0];
    v30 = v32[1];
    v31 = v32[2];
    sub_1CFBAD070(v33, v28);
    v10 = *a3;
    v11 = sub_1CFC94ADC(&v29);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      sub_1CFC7BFA4(v16, a2 & 1);
      v18 = *a3;
      v11 = sub_1CFC94ADC(&v29);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v26 = v11;
    sub_1CFC7B8BC();
    v11 = v26;
    if (v17)
    {
LABEL_3:
      v7 = *a3;
      v8 = 40 * v11;
      sub_1CFBB94B0(*(*a3 + 56) + 40 * v11, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      sub_1CFBCCDA4(&v29);
      v9 = *(v7 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v9 + v8));
      result = sub_1CFBAD070(v27, v9 + v8);
      goto LABEL_4;
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 48 * v11);
    v22 = v29;
    v23 = v31;
    v21[1] = v30;
    v21[2] = v23;
    *v21 = v22;
    result = sub_1CFBAD070(v28, v20[7] + 40 * v11);
    v24 = v20[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v20[2] = v25;
LABEL_4:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CFCA0308();
  __break(1u);
  return result;
}

void sub_1CFBCB0D0()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items) = v1;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + v2) = sub_1CFC9DCD8();
  *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource) = 0;
  v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_loadedDebounce;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  sub_1CFC9FC28();
  v7 = sub_1CFC9D508();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + v6) = sub_1CFC9D4E8();
  sub_1CFCA01D8();
  __break(1u);
}

uint64_t sub_1CFBCB248()
{
  v1 = v0;
  v2 = sub_1CFC9C128();
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *&v1[v3];
  if (v2 >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5 + 16 * v2;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v8) = v10(ObjectType, v8);
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (![v1 isEditing])
  {
    v19 = 1;
    return v19 & 1;
  }

  v11 = sub_1CFC9C128();
  v12 = sub_1CFC9C0F8();
  v13 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v14 = *&v1[v13];
  if (v11 >= *(v14 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v14 + 8 * v11 + 32);
  if (v12 < *(v15 + 16))
  {
    sub_1CFBB94B0(v15 + 40 * v12 + 32, v21);
    v16 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
    v17 = swift_beginAccess();
    v18 = *&v1[v16];
    MEMORY[0x1EEE9AC00](v17);
    v20[2] = v21;

    v19 = sub_1CFBB3B98(sub_1CFBCCCF8, v20, v18);

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    return v19 & 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1CFBCB450(char a1)
{
  v3 = *(sub_1CFC9C138() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = sub_1CFC9C0C8();
  [v4 deselectItemAtIndexPath:v6 animated:a1 & 1];
}

unint64_t sub_1CFBCB4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1CFBCB5C4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1CFBA74A0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1CFBCB4F4(v6, a2, 0);
  *v2 = v4;
  return result;
}

id sub_1CFBCB684()
{
  v1 = sub_1CFC9F638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFC9F658();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v10 = sub_1CFC9FC28();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_1CFBCCC38;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_51;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBA5194(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v9, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v16);
  result = [v13 isEditing];
  if (result)
  {
    return sub_1CFC90748();
  }

  return result;
}

uint64_t sub_1CFBCB968(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_1CFC9C128();
  if ((v5 & 0x8000000000000000) != 0 || v5 >= *(v4 + 16))
  {
  }

  v6 = v4 + 16 * v5;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  (*(v8 + 200))(a1, ObjectType, v8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CFBCBA2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  (*(v5 + 16))(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
  v10 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  if (v9 != 1)
  {
LABEL_12:
    v31 = sub_1CFC90E04(a1);
    if (v31)
    {
      v32 = v31;
      MEMORY[0x1D3871DC0]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();

      v10 = v45;
    }

    if (v10 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_18;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v33 = swift_allocObject();
      *(v33 + 16) = v10;
      v34 = objc_opt_self();
      v43 = sub_1CFBCCC30;
      v44 = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFBC7CC8;
      v42 = &block_descriptor_45;
      v35 = _Block_copy(aBlock);

      v36 = [v34 configurationWithIdentifier:0 previewProvider:0 actionProvider:v35];

      _Block_release(v35);
      (*(v5 + 8))(v8, v4);
      return v36;
    }

    (*(v5 + 8))(v8, v4);

    return 0;
  }

  v11 = sub_1CFC9C128();
  v12 = sub_1CFC9C118();
  v13 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v2 + v13);
  if (v11 >= *(v15 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = *(v15 + 8 * v11 + 32);
  if (v12 >= *(v16 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1CFBB94B0(v16 + 40 * v12 + 32, aBlock);
  v17 = sub_1CFC9C128();
  v18 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = *(v2 + v18);
  if (v17 < *(v19 + 16))
  {
    v20 = v19 + 16 * v17;
    v21 = *(v20 + 32);
    v39 = *(v20 + 40);
    v22 = v5;
    v23 = v4;
    ObjectType = swift_getObjectType();
    v40 = v2;
    v25 = v8;
    v26 = v42;
    v27 = __swift_project_boxed_opaque_existential_1(aBlock, v42);
    swift_unknownObjectRetain();
    v28 = ObjectType;
    v4 = v23;
    v5 = v22;
    v29 = v26;
    v8 = v25;
    v30 = SectionController.anyContextMenu<A>(for:at:)(v27, v25, v28, v29, v39);
    swift_unknownObjectRelease();
    if (v30)
    {
      v10 = v30;
    }

    v45 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1CFBCBE38(void *a1)
{
  v3 = sub_1CFC9C0C8();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v5 = v4;
    v6 = [v5 window];
    if (v6)
    {

      v7 = sub_1CFC9C0C8();
      v8 = [v1 collectionView:a1 dragPreviewParametersForItemAtIndexPath:v7];

      if (v8)
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v5 parameters:v8];

        return v9;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFBCBF3C(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = sub_1CFBCCC28;
    v15[5] = v3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CFC56F38;
    v15[3] = &block_descriptor;
    v4 = _Block_copy(v15);
    swift_unknownObjectRetain();

    [a1 addCompletion_];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = 0;
      v10 = (v7 + 40);
      while (v9 < *(v7 + 16))
      {
        ++v9;
        v11 = *(v10 - 1);
        v12 = *v10;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 192);
        swift_unknownObjectRetain();
        v14(ObjectType, v12);
        result = swift_unknownObjectRelease();
        v10 += 2;
        if (v8 == v9)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CFBCC0E8()
{
  v1 = v0;
  v2 = sub_1CFC9C128();
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v0 + v3);
  if (v2 >= *(v5 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v5 + 16 * v2 + 32);
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v7;
  swift_unknownObjectRetain();
  v10 = sub_1CFC9C128();
  v11 = sub_1CFC9C0F8();
  v12 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v13 = *(v1 + v12);
  if (v10 >= *(v13 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(v13 + 8 * v10 + 32);
  if (v11 >= *(v14 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_1CFBB94B0(v14 + 40 * v11 + 32, v20);
  ObjectType = swift_getObjectType();
  v16 = v21;
  v17 = v22;
  v18 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v19 = SectionDragDelegate.dragItems<A>(for:)(v18, ObjectType, v16, v9, v17);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v19;
}

id sub_1CFBCC278(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9C138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  result = [a1 destinationIndexPath];
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_1CFC9C0D8();

  (*(v5 + 32))(v11, v9, v4);
  v14 = sub_1CFC9C128();
  v15 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(v2 + v15);
  if (v14 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v17 = *(v16 + 16 * v14 + 32);
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = v18;
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 16);
    swift_unknownObjectRetain();
    v22(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  return (*(v5 + 8))(v11, v4);
}

id sub_1CFBCC478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED408, &qword_1CFCA22E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1CFC9C138();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA29FC(a2, v9, &unk_1EC4ED408, &qword_1CFCA22E0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = sub_1CFC9C128();
    v16 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    result = swift_beginAccess();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v3 + v16);
      if (v15 < *(v18 + 16))
      {
        v19 = *(v18 + 16 * v15 + 32);
        swift_getObjectType();
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = v20;
          ObjectType = swift_getObjectType();
          v24 = *(v22 + 24);
          swift_unknownObjectRetain();
          v25 = v24(a1, v14, ObjectType, v22);
          swift_unknownObjectRelease();
          (*(v11 + 8))(v14, v10);
          return v25;
        }

        (*(v11 + 8))(v14, v10);
        return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
      }
    }

    __break(1u);
    return result;
  }

  sub_1CFBC2FB0(v9, &unk_1EC4ED408, &qword_1CFCA22E0);
  return [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
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

uint64_t sub_1CFBCC760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CFBCC7A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1CFBCC808()
{
  result = qword_1EE04D990;
  if (!qword_1EE04D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D990);
  }

  return result;
}

unint64_t sub_1CFBCC888(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1CFBCCAB0(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_1CFBCC9AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1CFBCC9BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED550, &qword_1CFCA2458);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1CFBCCAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1CFBCCC94()
{
  result = qword_1EE04D110;
  if (!qword_1EE04D110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D110);
  }

  return result;
}

unint64_t sub_1CFBCCD18()
{
  result = qword_1EE04D998;
  if (!qword_1EE04D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D998);
  }

  return result;
}

void sub_1CFBCCDD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFBC3A34(v4, v5, v6, v0 + v2);
}

uint64_t sub_1CFBCCE88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFBCCF24(uint64_t a1)
{
  v3 = type metadata accessor for FavoriteSectionController.Item(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C608();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1CFBAAD9C(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFBCE130(v6);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v16 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];

    (*(v8 + 16))(v12, v14, v7);
    [v17 setLocalObject_];
    swift_unknownObjectRelease();
    v18 = *(v1 + 104);

    v19 = sub_1CFC9C5D8();
    v20 = [v19 entryIdentifier];

    v21 = sub_1CFC9F768();
    v23 = v22;

    sub_1CFC48AB8(v21, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CFCA2540;
    *(v24 + 32) = v17;
    (*(v8 + 8))(v14, v7);
    return v24;
  }
}

void sub_1CFBCD1DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - v5;
  v7 = sub_1CFC9C608();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFC9C138();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = [a1 destinationIndexPath];
  if (v22)
  {
    v54 = v8;
    v23 = v22;
    sub_1CFC9C0D8();

    (*(v12 + 32))(v21, v19, v11);
    v24 = [a1 items];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C8, &qword_1CFCA2600);
    v25 = sub_1CFC9F8A8();

    if (v25 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1D3872640](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v26 = *(v25 + 32);
        swift_unknownObjectRetain();
      }

      v27 = [v26 dragItem];
      swift_unknownObjectRelease();
      if (![v27 localObject])
      {
        (*(v12 + 8))(v21, v11);

        return;
      }

      sub_1CFC9FF18();
      swift_unknownObjectRelease();
      sub_1CFBCC9AC(v56, v57);
      sub_1CFBB4598(v57, v56);
      if ((swift_dynamicCast() & 1) == 0)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        (*(v12 + 8))(v21, v11);
        (*(v54 + 56))(v6, 1, 1, v7);
        sub_1CFBCE21C(v6);
        return;
      }

      v53 = v27;
      v50 = v16;
      v28 = v54;
      (*(v54 + 56))(v6, 0, 1, v7);
      v29 = v7;
      v30 = v55;
      (*(v28 + 32))(v55, v6, v29);
      v52 = v1;
      v31 = *(v1 + 64);
      v32 = sub_1CFC9C718();
      v51 = sub_1CFBCD7D8(v30, v32);
      v34 = v33;

      if (v34)
      {

        (*(v28 + 8))(v30, v29);
      }

      else
      {
        v35 = v29;
        if ((*(v52 + 96) & 1) == 0 && (*(v52 + 40) & 1) == 0)
        {
          v40 = sub_1CFC9C118();
          sub_1CFC832C4();
          if ((v42 & 1) == 0 && v40 == v41)
          {
            v43 = sub_1CFC9C128();
            v44 = v50;
            MEMORY[0x1D386E640](v51, v43);
            v45 = sub_1CFC9C0C8();
            v46 = *(v12 + 8);
            v46(v44, v11);
            v47 = a1;
            v48 = v53;
            v49 = [v47 dropItem:v53 toItemAtIndexPath:v45];
            swift_unknownObjectRelease();

            (*(v54 + 8))(v55, v35);
            __swift_destroy_boxed_opaque_existential_1Tm(v57);
            v46(v21, v11);
            return;
          }
        }

        sub_1CFC9C0F8();
        sub_1CFC9C6C8();
        v36 = sub_1CFC9C0C8();
        v37 = a1;
        v38 = v53;
        v39 = [v37 dropItem:v53 toItemAtIndexPath:v36];
        swift_unknownObjectRelease();

        sub_1CFBCD8F8();
        (*(v54 + 8))(v55, v35);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      goto LABEL_22;
    }

LABEL_22:
    (*(v12 + 8))(v21, v11);
  }
}

uint64_t sub_1CFBCD7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1CFC9C608() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1CFBCE284(&unk_1EC4ED6D0, MEMORY[0x1E6993700]);
  v7 = 0;
  while ((sub_1CFC9F6F8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1CFBCD8F8()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  if (v1[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

    sub_1CFC9C148();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }
}

void sub_1CFBCDA94()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  if (v1[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

    sub_1CFC9C148();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }
}

id sub_1CFBCDBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimultaneousGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBCDBFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBCE284(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  a2[1] = v4;
}

uint64_t sub_1CFBCDCB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC48AB8(v2, v3);
}

id sub_1CFBCDD18()
{
  v1 = v0;
  v2 = sub_1CFC9CE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v42 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v15, v2);
  v23 = [v17 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDC8();
  v26 = v25;
  v22(v13, v2);
  v27 = [v17 currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDE8();
  v30 = v29;
  v22(v10, v2);
  v31 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  [v33 setBackgroundColor_];

  v35 = [v17 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  v37 = v16 - (v21 + v21);
  sub_1CFC9CDD8();
  v39 = v38;
  v22(v7, v2);
  v40 = [objc_opt_self() bezierPathWithRoundedRect:v39 cornerRadius:{0.0, v37, v37 * v26, v37 * v30}];
  [v33 setShadowPath_];

  return v33;
}

uint64_t sub_1CFBCE130(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CFBCE18C()
{
  if (*(v0 + 96) & 1) != 0 || (*(v0 + 40) & 1) != 0 || (v4 = sub_1CFC9C118(), sub_1CFC832C4(), (v6) || v4 != v5)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69DC838]);

  return [v2 initWithDropOperation:3 intent:v1];
}

uint64_t sub_1CFBCE21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBCE284(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CFBCE2E8(void *a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v47 = a4;
  v48 = a2;
  v45 = a3;
  v7 = sub_1CFC9D938();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFC9C918();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v42 - v16;
  v18 = sub_1CFC9C9A8();
  result = 0;
  if (v18)
  {
    sub_1CFC9C938();
    (*(v12 + 104))(v15, *MEMORY[0x1E6993758], v11);
    sub_1CFBD4988(&unk_1EC4ED750, MEMORY[0x1E6993760]);
    v20 = sub_1CFC9F6F8();
    v43 = *(v12 + 8);
    v44 = v12 + 8;
    v43(v15, v11);
    if (v20)
    {
      v21 = v43;
      sub_1CFC9C6A8();
      sub_1CFC9C698();
      v22 = sub_1CFC9D918();
      v23 = sub_1CFC9FAB8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1CFB9F000, v22, v23, "CallReportingViewModel: not a valid spam flow", v24, 2u);
        MEMORY[0x1D3873280](v24, -1, -1);
      }

      (*(v46 + 8))(v10, v7);
      v21(v17, v11);
      return 0;
    }

    else
    {
      v46 = swift_allocObject();
      v42[1] = v5;
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v12 + 16))(v15, v17, v11);
      v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      v45 = v17;
      v29 = swift_allocObject();
      *(v29 + 16) = v46;
      *(v29 + 24) = v25;
      (*(v12 + 32))(v29 + v26, v15, v11);
      *(v29 + v27) = a1;
      v30 = v47;
      v31 = v48;
      *(v29 + v28) = v48;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
      v53 = sub_1CFBD2DF8;
      v54 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v50 = 1107296256;
      v51 = sub_1CFC1A29C;
      v52 = &block_descriptor_0;
      v32 = _Block_copy(&aBlock);
      v33 = objc_opt_self();

      v34 = a1;
      v35 = v31;
      v36 = v30;
      v37 = [v33 contextualActionWithStyle:0 title:0 handler:v32];
      _Block_release(v32);

      v38 = [objc_opt_self() orangeColor];
      [v37 setBackgroundColor_];

      v39 = sub_1CFC9C958();
      [v37 setImage_];

      v53 = sub_1CFBD0268;
      v54 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v50 = 1107296256;
      v51 = sub_1CFC1A370;
      v52 = &block_descriptor_15;
      v40 = _Block_copy(&aBlock);
      v41 = v37;
      [v41 setAccessibilityIdentifierBlock_];
      _Block_release(v40);

      v43(v45, v11);
      return v41;
    }
  }

  return result;
}