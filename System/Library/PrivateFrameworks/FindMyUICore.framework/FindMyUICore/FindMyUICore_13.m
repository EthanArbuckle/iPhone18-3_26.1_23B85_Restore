uint64_t sub_24B140484()
{
  swift_getKeyPath();
  sub_24B139200();
}

uint64_t sub_24B14052C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B132CF4(v2, v3, v5, v4);
}

void sub_24B1405D8()
{
  sub_24B2D24A4();
  if (v0 <= 0x3F)
  {
    sub_24B2D3184();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ItemsListController.State();
      if (v2 <= 0x3F)
      {
        sub_24B1407CC();
        if (v3 <= 0x3F)
        {
          sub_24B2D25C4();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24B1407CC()
{
  if (!qword_27EFCC9C8)
  {
    type metadata accessor for DataControllerSessionMetrics();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCC9C8);
    }
  }
}

uint64_t sub_24B140824(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24B140888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFD370;

  return sub_24B13AB98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24B140990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1409F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B140A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B140AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ItemsListController.Dependencies.itemsProvider.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ItemsListController.Dependencies.itemsLocationsProvider.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ItemsListController.Dependencies.userLocationProvider.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ItemsListController.Dependencies.metricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

__n128 ItemsListController.Dependencies.metricsPublisher.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

__n128 ItemsListController.Dependencies.init(itemsProvider:itemsLocationsProvider:userLocationProvider:metricsPublisher:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  result = *a4;
  *(a5 + 24) = *a4;
  return result;
}

uint64_t sub_24B140C90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B140CCC(uint64_t *a1, int a2)
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

uint64_t sub_24B140D14(uint64_t result, int a2, int a3)
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

uint64_t ItemsListController.State.init(list:info:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for ListItemInfo();
  sub_24B140EF0(&qword_27EFCC9D8);
  sub_24B140EF0(&qword_27EFCC9E0);
  sub_24B140EF0(&qword_27EFCC9E8);
  sub_24B140EF0(&qword_27EFCC9F0);
  sub_24B140EF0(&qword_27EFCC9F8);
  v6 = sub_24B2D19E4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ItemsListController.State();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_24B140EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ListItemInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B140F4C(uint64_t result)
{
  v2 = *(result + 36);
  if (*(v1 + v2) == 3)
  {
    *(v1 + v2) = 4;
  }

  return result;
}

uint64_t sub_24B140F68(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v33 = a1;
  v29 = a3;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ListItemInfo();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 16);
  v13 = sub_24B140EF0(&qword_27EFCC9D8);
  v14 = sub_24B140EF0(&qword_27EFCC9E0);
  v15 = sub_24B140EF0(&qword_27EFCC9E8);
  v16 = sub_24B140EF0(&qword_27EFCC9F0);
  v17 = sub_24B140EF0(&qword_27EFCC9F8);
  v31 = a4;
  v18 = *(a4 + 24);
  v34 = v8;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v19 = v32;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  sub_24B2D19E4();
  sub_24B2D1994();
  v20 = *(sub_24B2D19A4() + 16);

  if (v20)
  {
    result = sub_24B2D19A4();
    v22 = result;
    v23 = 0;
    v24 = *(result + 16);
    v25 = v19;
    while (v24 != v23)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24B141860(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23++, v11);
      sub_24B1418C4(&v11[*(v8 + 24)], v7);
      v26 = sub_24B2D1944();
      v27 = (*(*(v26 - 8) + 48))(v7, 1, v26);
      sub_24B141934(v7);
      result = sub_24B14199C(v11);
      if (v27 != 1)
      {

        v28 = 1;
        goto LABEL_14;
      }
    }

    if (v29)
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    if (v30)
    {
      v28 = 5;
    }

    else
    {
      v28 = 4;
    }

    v25 = v19;
  }

LABEL_14:
  *(v25 + *(v31 + 36)) = v28;
  return result;
}

uint64_t ItemsListController.State.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ListItemInfo();
  sub_24B140EF0(&qword_27EFCC9D8);
  sub_24B140EF0(&qword_27EFCC9E0);
  sub_24B140EF0(&qword_27EFCC9E8);
  sub_24B140EF0(&qword_27EFCC9F0);
  sub_24B140EF0(&qword_27EFCC9F8);
  v3 = sub_24B2D19E4();
  return (*(*(v3 - 8) + 16))(a1, v1, v3);
}

uint64_t ItemsListController.State.Info.Locations.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24B1414B8()
{
  sub_24B2D60E4();
  ItemsListController.State.Info.Locations.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B141510()
{
  type metadata accessor for ListItemInfo();
  sub_24B140EF0(&qword_27EFCC9D8);
  sub_24B140EF0(&qword_27EFCC9E0);
  sub_24B140EF0(&qword_27EFCC9E8);
  sub_24B140EF0(&qword_27EFCC9F0);
  sub_24B140EF0(&qword_27EFCC9F8);
  result = sub_24B2D19E4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ItemsListController.State.Info();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1416CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B14176C(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B141824(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B141838(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_24B141860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1418C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B141934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B14199C(uint64_t a1)
{
  v2 = type metadata accessor for ListItemInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ListItemInfo.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1F24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ListItemInfo()
{
  result = qword_27EFCCC20;
  if (!qword_27EFCCC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemInfo.init(model:locationState:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v47 = type metadata accessor for ItemsLocationsProvider.LocationState.Result(0);
  MEMORY[0x28223BE20](v47);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC608);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  v29 = sub_24B2D1F24();
  v48 = *(v29 - 8);
  v49 = v29;
  v30 = *(v48 + 16);
  v57 = a4;
  v55 = a1;
  v30(a4, a1);
  v56 = a2;
  sub_24B008890(a2, v28, &qword_27EFCC608);
  v31 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v28, 1, v31) == 1)
  {
    sub_24AFF8258(v28, &qword_27EFCC608);
    v33 = 0;
  }

  else
  {
    sub_24B125280(&v28[*(v31 + 20)], v22);
    sub_24B14224C(v28, type metadata accessor for ItemsLocationsProvider.LocationState);
    v33 = *v22;
    sub_24B14224C(v22, type metadata accessor for ItemsLocationsProvider.LocationState.Result);
  }

  v34 = type metadata accessor for ListItemInfo();
  v35 = v56;
  *(v57 + v34[5]) = v33;
  sub_24B008890(v35, v25, &qword_27EFCC608);
  if (v32(v25, 1, v31) == 1)
  {
    sub_24AFF8258(v25, &qword_27EFCC608);
    v36 = sub_24B2D1944();
    (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  }

  else
  {
    sub_24B125280(&v25[*(v31 + 20)], v22);
    sub_24B14224C(v25, type metadata accessor for ItemsLocationsProvider.LocationState);
    sub_24B0391CC(&v22[*(v47 + 20)], v20, &qword_27EFCB288);
  }

  v37 = v54;
  v38 = v51;
  sub_24B008890(v20, v57 + v34[6], &qword_27EFCB288);
  sub_24B008890(v37, v50, &qword_27EFCE590);
  sub_24B008890(v20, v17, &qword_27EFCB288);
  v39 = sub_24B2D1944();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v17, 1, v39) == 1)
  {
    sub_24AFF8258(v17, &qword_27EFCB288);
    v41 = 1;
  }

  else
  {
    sub_24B2D18B4();
    (*(v40 + 8))(v17, v39);
    v41 = 0;
  }

  v42 = sub_24B2D1C44();
  (*(*(v42 - 8) + 56))(v38, v41, 1, v42);
  v43 = sub_24B2D17E4();
  (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
  v44 = v52;
  sub_24B2D17F4();
  sub_24AFF8258(v37, &qword_27EFCE590);
  sub_24AFF8258(v56, &qword_27EFCC608);
  (*(v48 + 8))(v55, v49);
  sub_24AFF8258(v20, &qword_27EFCB288);
  return sub_24B0391CC(v44, v57 + v34[7], &qword_27EFCB278);
}

uint64_t sub_24B14224C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL ListItemInfo.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ListItemInfo();
  sub_24B008890(v0 + *(v4 + 24), v3, &qword_27EFCB288);
  v5 = sub_24B2D1944();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_24AFF8258(v3, &qword_27EFCB288);
  return v6;
}

uint64_t ListItemInfo.hash(into:)()
{
  v1 = sub_24B2D1824();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_24B2D1944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_24B2D1F24();
  sub_24B142FB8(&qword_27EFCC610, MEMORY[0x277D08EA8]);
  sub_24B2D5254();
  v13 = type metadata accessor for ListItemInfo();
  sub_24B2D6104();
  sub_24B008890(v0 + *(v13 + 24), v12, &qword_27EFCB288);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24B2D6104();
    sub_24B142FB8(&qword_27EFCC618, MEMORY[0x277D08CD0]);
    sub_24B2D5254();
    (*(v7 + 8))(v9, v6);
  }

  sub_24B008890(v0 + *(v13 + 28), v5, &qword_27EFCB278);
  v15 = v20;
  v14 = v21;
  if ((*(v20 + 48))(v5, 1, v21) == 1)
  {
    return sub_24B2D6104();
  }

  v17 = v19;
  (*(v15 + 32))(v19, v5, v14);
  sub_24B2D6104();
  sub_24B142FB8(&qword_27EFCC620, MEMORY[0x277D08C90]);
  sub_24B2D5254();
  return (*(v15 + 8))(v17, v14);
}

uint64_t ListItemInfo.hashValue.getter()
{
  sub_24B2D60E4();
  ListItemInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B1427F8()
{
  sub_24B2D60E4();
  ListItemInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B14283C()
{
  sub_24B2D60E4();
  ListItemInfo.hash(into:)();
  return sub_24B2D6124();
}

BOOL _s12FindMyUICore12ListItemInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1824();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC658);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - v9;
  v10 = sub_24B2D1944();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  if ((MEMORY[0x24C2385A0](a1, a2, v18) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for ListItemInfo();
  if (*(a1 + *(v21 + 20)) != *(a2 + *(v21 + 20)))
  {
    return 0;
  }

  v42 = v6;
  v43 = v21;
  v46 = v4;
  v22 = *(v21 + 24);
  v23 = *(v17 + 48);
  v44 = a1;
  sub_24B008890(a1 + v22, v20, &qword_27EFCB288);
  v45 = a2;
  sub_24B008890(a2 + v22, &v20[v23], &qword_27EFCB288);
  v24 = *(v11 + 48);
  if (v24(v20, 1, v10) != 1)
  {
    sub_24B008890(v20, v16, &qword_27EFCB288);
    if (v24(&v20[v23], 1, v10) != 1)
    {
      (*(v11 + 32))(v13, &v20[v23], v10);
      sub_24B142FB8(&qword_27EFCC670, MEMORY[0x277D08CD0]);
      v27 = sub_24B2D52A4();
      v28 = *(v11 + 8);
      v28(v13, v10);
      v28(v16, v10);
      sub_24AFF8258(v20, &qword_27EFCB288);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v11 + 8))(v16, v10);
LABEL_8:
    v25 = &qword_27EFCC660;
    v26 = v20;
LABEL_16:
    sub_24AFF8258(v26, v25);
    return 0;
  }

  if (v24(&v20[v23], 1, v10) != 1)
  {
    goto LABEL_8;
  }

  sub_24AFF8258(v20, &qword_27EFCB288);
LABEL_10:
  v29 = *(v43 + 28);
  v30 = v49;
  v31 = *(v48 + 48);
  sub_24B008890(v44 + v29, v49, &qword_27EFCB278);
  sub_24B008890(v45 + v29, v30 + v31, &qword_27EFCB278);
  v32 = v50;
  v33 = *(v50 + 48);
  v34 = v46;
  if (v33(v30, 1, v46) == 1)
  {
    if (v33(v30 + v31, 1, v34) == 1)
    {
      sub_24AFF8258(v30, &qword_27EFCB278);
      return 1;
    }

    goto LABEL_15;
  }

  v35 = v47;
  sub_24B008890(v30, v47, &qword_27EFCB278);
  if (v33(v30 + v31, 1, v34) == 1)
  {
    (*(v32 + 8))(v35, v34);
LABEL_15:
    v25 = &qword_27EFCC658;
    v26 = v30;
    goto LABEL_16;
  }

  v37 = v30 + v31;
  v38 = v42;
  (*(v32 + 32))(v42, v37, v34);
  sub_24B142FB8(&qword_27EFCC668, MEMORY[0x277D08C90]);
  v39 = sub_24B2D52A4();
  v40 = *(v32 + 8);
  v40(v38, v34);
  v40(v35, v34);
  sub_24AFF8258(v30, &qword_27EFCB278);
  return (v39 & 1) != 0;
}

uint64_t sub_24B142FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B143000@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ListItemInfo();
  sub_24B1418C4(a1 + *(v7 + 24), v6);
  v8 = sub_24B2D1944();
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_24AFF8258(v6, &qword_27EFCB288);
  *a2 = a1;
  return result;
}

uint64_t ListItemInfo.Sort.sortDescriptor<A>(rootKeyPath:)()
{
  v1 = sub_24B2D1E14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListItemInfo.Sort();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1433C0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      swift_getKeyPath();
      sub_24B2D6154();

      sub_24B2D1824();
      sub_24B14441C(&qword_27EFCCC38, MEMORY[0x277D08C90]);
      return sub_24B2D2144();
    }

    else
    {
      swift_getKeyPath();
      sub_24B2D6154();

      return sub_24B2D2134();
    }
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    swift_getKeyPath();
    sub_24B2D6154();

    sub_24B2D1DF4();

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t type metadata accessor for ListItemInfo.Sort()
{
  result = qword_27EFCCC88;
  if (!qword_27EFCCC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1433C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemInfo.Sort();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B143424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D55F4();
  *a1 = result;
  return result;
}

uint64_t sub_24B143468()
{
  result = sub_24B143488();
  qword_27EFCCC30 = result;
  return result;
}

uint64_t sub_24B143488()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA0);
  v0 = *(type metadata accessor for ListItemInfo.Sort() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B2EC620;
  v4 = v3 + v2;
  v5 = *MEMORY[0x277D08E58];
  v6 = sub_24B2D1E14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 104);
  v8(v4, v5, v6);
  v9 = *(v7 + 56);
  v9(v4, 0, 2, v6);
  v9(v4 + v1, 2, 2, v6);
  v9(v4 + 2 * v1, 1, 2, v6);
  v8(v4 + 3 * v1, *MEMORY[0x277D08E68], v6);
  v9(v4 + 3 * v1, 0, 2, v6);
  v8(v4 + 4 * v1, *MEMORY[0x277D08E70], v6);
  v9(v4 + 4 * v1, 0, 2, v6);
  v8(v4 + 5 * v1, *MEMORY[0x277D08E60], v6);
  v9(v4 + 5 * v1, 0, 2, v6);
  v10 = v4 + 6 * v1;
  v8(v10, *MEMORY[0x277D08E78], v6);
  v9(v10, 0, 2, v6);
  return v3;
}

uint64_t static ListItemInfo.Sort.allCases.getter()
{
  if (qword_27EFC76C8 != -1)
  {
    swift_once();
  }
}

uint64_t ListItemInfo.Sort.hash(into:)()
{
  v1 = sub_24B2D1E14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListItemInfo.Sort();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1433C0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    return MEMORY[0x24C23C8D0](v8 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](2);
  sub_24B14441C(&qword_27EFCCC40, MEMORY[0x277D08E80]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t ListItemInfo.Sort.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListItemInfo.Sort();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1433C0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x24C23C8D0](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](2);
    sub_24B14441C(&qword_27EFCCC40, MEMORY[0x277D08E80]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B143B34()
{
  v1 = sub_24B2D1E14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1433C0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    return MEMORY[0x24C23C8D0](v8 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](2);
  sub_24B14441C(&qword_27EFCCC40, MEMORY[0x277D08E80]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24B143CF8()
{
  v1 = v0;
  v2 = sub_24B2D1E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B1433C0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x24C23C8D0](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](2);
    sub_24B14441C(&qword_27EFCCC40, MEMORY[0x277D08E80]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B143EE4@<X0>(void *a1@<X8>)
{
  if (qword_27EFC76C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EFCCC30;
}

uint64_t _s12FindMyUICore12ListItemInfoV4SortO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListItemInfo.Sort();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCC98);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24B1433C0(a1, &v21 - v12);
  sub_24B1433C0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_24B1433C0(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_24B2D1E04();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_24B1444E4(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_24AFF8258(v13, &qword_27EFCCC98);
    v18 = 0;
    return v18 & 1;
  }

  sub_24B1444E4(v13);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_24B144370()
{
  result = qword_27EFCCC70;
  if (!qword_27EFCCC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCCC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCC70);
  }

  return result;
}

uint64_t sub_24B14441C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B14448C()
{
  v0 = sub_24B2D1E14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B1444E4(uint64_t a1)
{
  v2 = type metadata accessor for ListItemInfo.Sort();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B144540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1794();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetailsPersonInfo.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1794();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for DetailsPersonInfo()
{
  result = qword_27EFCCCC8;
  if (!qword_27EFCCCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetailsPersonInfo.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetailsPersonInfo() + 20);
  v4 = sub_24B2D1494();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DetailsPersonInfo.init(model:contact:locationState:userLocation:etaState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a5;
  v99 = a4;
  v102 = a3;
  v103 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5F8);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = &v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  MEMORY[0x28223BE20](v22 - 8);
  v84 = &v83 - v23;
  v24 = sub_24B2D1524();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24B2D1544();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCB0);
  MEMORY[0x28223BE20](v32 - 8);
  v88 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v86 = &v83 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v83 - v37;
  MEMORY[0x28223BE20](v39);
  v105 = &v83 - v40;
  v41 = sub_24B2D1794();
  v91 = *(v41 - 8);
  v92 = v41;
  (*(v91 + 16))(a6, a1);
  v104 = type metadata accessor for DetailsPersonInfo();
  v42 = v104[5];
  v43 = sub_24B2D1494();
  v89 = *(v43 - 8);
  v90 = v43;
  v44 = *(v89 + 16);
  v101 = a6;
  v44(a6 + v42, v103);
  v100 = a1;
  sub_24B2D1554();
  sub_24B2D1534();
  (*(v29 + 8))(v31, v28);
  LOBYTE(a1) = sub_24B2D1514();
  (*(v25 + 8))(v27, v24);
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v45 = v84;
  sub_24B008890(v102, v84, &qword_27EFCCCA8);
  v46 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    sub_24AFF8258(v45, &qword_27EFCCCA8);
LABEL_4:
    v47 = 1;
    goto LABEL_6;
  }

  sub_24B1453E8(v45 + *(v46 + 20), v105);
  sub_24B14544C(v45, type metadata accessor for PeopleLocationsProvider.LocationState);
  v47 = 0;
LABEL_6:
  v48 = v99;
  v50 = v93;
  v49 = v94;
  v51 = v86;
  v52 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
  v53 = *(v52 - 8);
  v54 = v105;
  (*(v53 + 56))(v105, v47, 1, v52);
  sub_24B008890(v54, v38, &qword_27EFCCCB0);
  v55 = *(v53 + 48);
  if (v55(v38, 1, v52) == 1)
  {
    sub_24AFF8258(v38, &qword_27EFCCCB0);
    v56 = 0;
  }

  else
  {
    v56 = *v38;
    sub_24B14544C(v38, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v57 = v105;
  v58 = v101;
  *(v101 + v104[6]) = v56;
  v59 = v58;
  sub_24B008890(v57, v51, &qword_27EFCCCB0);
  v60 = v55(v51, 1, v52);
  v61 = v95;
  if (v60 == 1)
  {
    sub_24AFF8258(v51, &qword_27EFCCCB0);
    v62 = sub_24B2D1944();
    v63 = v87;
    (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
  }

  else
  {
    v63 = v87;
    sub_24B008890(v51 + *(v52 + 20), v87, &qword_27EFCB288);
    sub_24B14544C(v51, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  sub_24B0391CC(v63, v59 + v104[7], &qword_27EFCB288);
  sub_24B008890(v48, v50, &qword_27EFCE590);
  v64 = v88;
  sub_24B008890(v105, v88, &qword_27EFCCCB0);
  v65 = v55(v64, 1, v52);
  v66 = v98;
  if (v65 == 1)
  {
    v67 = &qword_27EFCCCB0;
    v68 = v64;
LABEL_16:
    sub_24AFF8258(v68, v67);
    v72 = 1;
    goto LABEL_18;
  }

  v69 = v85;
  sub_24B008890(v64 + *(v52 + 20), v85, &qword_27EFCB288);
  sub_24B14544C(v64, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  v70 = sub_24B2D1944();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    v67 = &qword_27EFCB288;
    v68 = v69;
    goto LABEL_16;
  }

  sub_24B2D18B4();
  (*(v71 + 8))(v69, v70);
  v72 = 0;
LABEL_18:
  v73 = sub_24B2D1C44();
  (*(*(v73 - 8) + 56))(v61, v72, 1, v73);
  sub_24B008890(v66, v49, &qword_27EFCC5F8);
  v74 = type metadata accessor for ETAProvider.ETAState(0);
  if ((*(*(v74 - 8) + 48))(v49, 1, v74) == 1)
  {
    sub_24AFF8258(v49, &qword_27EFCC5F8);
    v75 = sub_24B2D17E4();
    (*(*(v75 - 8) + 56))(v96, 1, 1, v75);
  }

  else
  {
    v76 = *(v74 + 20);
    v77 = sub_24B2D17E4();
    v78 = *(v77 - 8);
    v79 = v49 + v76;
    v80 = v96;
    (*(v78 + 16))(v96, v79, v77);
    sub_24B14544C(v49, type metadata accessor for ETAProvider.ETAState);
    (*(v78 + 56))(v80, 0, 1, v77);
  }

  v81 = v97;
  sub_24B2D17F4();
  sub_24AFF8258(v66, &qword_27EFCC5F8);
  sub_24AFF8258(v48, &qword_27EFCE590);
  sub_24AFF8258(v102, &qword_27EFCCCA8);
  (*(v89 + 8))(v103, v90);
  (*(v91 + 8))(v100, v92);
  sub_24AFF8258(v105, &qword_27EFCCCB0);
  return sub_24B0391CC(v81, v59 + v104[8], &qword_27EFCB278);
}

uint64_t sub_24B1453E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B14544C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DetailsPersonInfo.hash(into:)()
{
  v1 = sub_24B2D1824();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_24B2D1944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_24B2D1794();
  sub_24B146230(&qword_27EFCCCB8, MEMORY[0x277D08C40]);
  sub_24B2D5254();
  v13 = type metadata accessor for DetailsPersonInfo();
  sub_24B2D1494();
  sub_24B146230(&qword_27EFCBE58, MEMORY[0x277D08B20]);
  sub_24B2D5254();
  sub_24B2D6104();
  sub_24B008890(v0 + *(v13 + 28), v12, &qword_27EFCB288);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24B2D6104();
    sub_24B146230(&qword_27EFCC618, MEMORY[0x277D08CD0]);
    sub_24B2D5254();
    (*(v7 + 8))(v9, v6);
  }

  sub_24B008890(v0 + *(v13 + 32), v5, &qword_27EFCB278);
  v15 = v20;
  v14 = v21;
  if ((*(v20 + 48))(v5, 1, v21) == 1)
  {
    return sub_24B2D6104();
  }

  v17 = v19;
  (*(v15 + 32))(v19, v5, v14);
  sub_24B2D6104();
  sub_24B146230(&qword_27EFCC620, MEMORY[0x277D08C90]);
  sub_24B2D5254();
  return (*(v15 + 8))(v17, v14);
}

uint64_t DetailsPersonInfo.hashValue.getter()
{
  sub_24B2D60E4();
  DetailsPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B14595C()
{
  sub_24B2D60E4();
  DetailsPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B1459A0()
{
  sub_24B2D60E4();
  DetailsPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

BOOL _s12FindMyUICore17DetailsPersonInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1824();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC658);
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v10;
  v11 = sub_24B2D1944();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  if ((MEMORY[0x24C237E10](a1, a2, v18) & 1) == 0)
  {
    return 0;
  }

  v45 = v5;
  v21 = type metadata accessor for DetailsPersonInfo();
  if ((sub_24B2D1474() & 1) == 0 || *(a1 + v21[6]) != *(a2 + v21[6]))
  {
    return 0;
  }

  v43 = v4;
  v22 = v21[7];
  v23 = *(v17 + 48);
  sub_24B008890(a1 + v22, v20, &qword_27EFCB288);
  v44 = v23;
  sub_24B008890(a2 + v22, &v20[v23], &qword_27EFCB288);
  v24 = *(v49 + 48);
  if (v24(v20, 1, v11) != 1)
  {
    sub_24B008890(v20, v16, &qword_27EFCB288);
    if (v24(&v20[v44], 1, v11) != 1)
    {
      v27 = v49;
      (*(v49 + 32))(v13, &v20[v44], v11);
      sub_24B146230(&qword_27EFCC670, MEMORY[0x277D08CD0]);
      LODWORD(v44) = sub_24B2D52A4();
      v28 = *(v27 + 8);
      v28(v13, v11);
      v28(v16, v11);
      sub_24AFF8258(v20, &qword_27EFCB288);
      if ((v44 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v49 + 8))(v16, v11);
LABEL_9:
    v25 = &qword_27EFCC660;
    v26 = v20;
LABEL_17:
    sub_24AFF8258(v26, v25);
    return 0;
  }

  if (v24(&v20[v44], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_24AFF8258(v20, &qword_27EFCB288);
LABEL_11:
  v29 = v21[8];
  v30 = *(v9 + 48);
  v31 = a1 + v29;
  v32 = v48;
  sub_24B008890(v31, v48, &qword_27EFCB278);
  sub_24B008890(a2 + v29, v32 + v30, &qword_27EFCB278);
  v33 = *(v45 + 48);
  v34 = v43;
  if (v33(v32, 1, v43) == 1)
  {
    if (v33(v32 + v30, 1, v34) == 1)
    {
      sub_24AFF8258(v32, &qword_27EFCB278);
      return 1;
    }

    goto LABEL_16;
  }

  v35 = v47;
  sub_24B008890(v32, v47, &qword_27EFCB278);
  if (v33(v32 + v30, 1, v34) == 1)
  {
    (*(v45 + 8))(v35, v34);
LABEL_16:
    v25 = &qword_27EFCC658;
    v26 = v32;
    goto LABEL_17;
  }

  v37 = v45;
  v38 = v32 + v30;
  v39 = v46;
  (*(v45 + 32))(v46, v38, v34);
  sub_24B146230(&qword_27EFCC668, MEMORY[0x277D08C90]);
  v40 = sub_24B2D52A4();
  v41 = *(v37 + 8);
  v41(v39, v34);
  v41(v35, v34);
  sub_24AFF8258(v32, &qword_27EFCB278);
  return (v40 & 1) != 0;
}

void sub_24B14613C()
{
  sub_24B2D1794();
  if (v0 <= 0x3F)
  {
    sub_24B2D1494();
    if (v1 <= 0x3F)
    {
      sub_24B126038(319, &qword_27EFCC648, MEMORY[0x277D08CD0]);
      if (v2 <= 0x3F)
      {
        sub_24B126038(319, &qword_27EFCC650, MEMORY[0x277D08C90]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B146230(unint64_t *a1, void (*a2)(uint64_t))
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

void *DetailsPersonInfo.locateActions(allowedActions:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v55 - v5;
  Action = type metadata accessor for PersonLocateAction();
  v7 = *(Action - 8);
  v63 = Action;
  v64 = v7;
  MEMORY[0x28223BE20](Action);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v58 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  v57 = &v55 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v55 - v18;
  MEMORY[0x28223BE20](v19);
  v55 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v55 - v22;
  v24 = sub_24B2D1824();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DetailsPersonInfo();
  sub_24B008890(v2 + *(v28 + 32), v23, &qword_27EFCB278);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    (*(v25 + 32))(v27, v23, v24);
    if (sub_24B2D1804())
    {
      v39 = a1;
      if (sub_24B128D40(0, a1))
      {
        if ((sub_24B128D40(1, a1) & 1) == 0)
        {
          (*(v25 + 8))(v27, v24);
          return MEMORY[0x277D84F90];
        }

        v40 = v55;
        *v55 = 0;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006CF4(0, 1, 1, MEMORY[0x277D84F90]);
        v42 = v36[2];
        v41 = v36[3];
LABEL_35:
        if (v42 >= v41 >> 1)
        {
          v36 = sub_24B006CF4(v41 > 1, v42 + 1, 1, v36);
        }

        (*(v25 + 8))(v27, v24);
        v36[2] = v42 + 1;
        v45 = v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v42;
        goto LABEL_38;
      }

      if (sub_24B128D40(2, a1))
      {
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48);
        v51 = v56;
        sub_24B2D1814();
        *(v51 + v50) = sub_24B2D1804() & 1;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006CF4(0, 1, 1, MEMORY[0x277D84F90]);
        v53 = v36[2];
        v52 = v36[3];
        if (v53 >= v52 >> 1)
        {
          v36 = sub_24B006CF4(v52 > 1, v53 + 1, 1, v36);
        }

        v36[2] = v53 + 1;
        sub_24B147C1C(v51, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      if (sub_24B128D40(1, v39))
      {
        v40 = v57;
        goto LABEL_32;
      }
    }

    else
    {
      if (sub_24B128D40(2, a1))
      {
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48);
        v47 = v58;
        sub_24B2D1814();
        *(v47 + v46) = sub_24B2D1804() & 1;
        swift_storeEnumTagMultiPayload();
        v36 = sub_24B006CF4(0, 1, 1, MEMORY[0x277D84F90]);
        v49 = v36[2];
        v48 = v36[3];
        if (v49 >= v48 >> 1)
        {
          v36 = sub_24B006CF4(v48 > 1, v49 + 1, 1, v36);
        }

        v36[2] = v49 + 1;
        sub_24B147C1C(v47, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v49);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      if (sub_24B128D40(1, a1))
      {
        v40 = v59;
LABEL_32:
        *v40 = 0;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_24B006CF4(0, v36[2] + 1, 1, v36);
        }

        v42 = v36[2];
        v41 = v36[3];
        goto LABEL_35;
      }
    }

    (*(v25 + 8))(v27, v24);
    return v36;
  }

  sub_24AFF8258(v23, &qword_27EFCB278);
  v29 = a1;
  if (sub_24B128D40(2, a1))
  {
    v30 = sub_24B2D1F54();
    v31 = v61;
    (*(*(v30 - 8) + 56))(v61, 1, 1, v30);
    v32 = v60;
    sub_24B008890(v2 + *(v28 + 28), v60, &qword_27EFCB288);
    v33 = sub_24B2D1944();
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33) == 1;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48);
    sub_24AFF8258(v32, &qword_27EFCB288);
    *(v31 + v35) = v34;
    swift_storeEnumTagMultiPayload();
    v36 = sub_24B006CF4(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_24B006CF4(v37 > 1, v38 + 1, 1, v36);
    }

    v36[2] = v38 + 1;
    sub_24B147C1C(v31, v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v38);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  if (sub_24B128D40(1, v29))
  {
    v40 = v62;
    *v62 = 0;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_24B006CF4(0, v36[2] + 1, 1, v36);
    }

    v44 = v36[2];
    v43 = v36[3];
    if (v44 >= v43 >> 1)
    {
      v36 = sub_24B006CF4(v43 > 1, v44 + 1, 1, v36);
    }

    v36[2] = v44 + 1;
    v45 = v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v44;
LABEL_38:
    sub_24B147C1C(v40, v45);
  }

  return v36;
}

uint64_t type metadata accessor for PersonLocateAction()
{
  result = qword_27EFCCCF8;
  if (!qword_27EFCCCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B146B74@<X0>(char *a1@<X8>)
{
  v2 = v1;
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_24AFF8258(v6, &qword_27EFCB280);
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t PersonLocateAction.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t PersonLocateAction.primaryLabel.getter()
{
  v1 = sub_24B2D2534();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24B2D2204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24B2D5344();
  MEMORY[0x28223BE20](v6 - 8);
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B147C80(v0, v9);
  v10 = (v3 + 104);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B2D52E4();
    *v5 = type metadata accessor for UIBaseModule();
    (*v10)(v5, *MEMORY[0x277CC9120], v2);
    sub_24B2D2524();
    sub_24B2D2224();
    return sub_24AFF8258(v9, &qword_27EFCB280);
  }

  else
  {
    sub_24B2D52E4();
    *v5 = type metadata accessor for UIBaseModule();
    (*v10)(v5, *MEMORY[0x277CC9120], v2);
    sub_24B2D2524();
    return sub_24B2D2224();
  }
}

uint64_t PersonLocateAction.secondaryLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B2D1F54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1 && (*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24B2D1F34();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_24B2D21F4();
  }

  v11 = sub_24B2D2214();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t PersonLocateAction.tint.getter()
{
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v0, v3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_24B2D4B54();
  }

  v4 = sub_24B2D4A84();
  sub_24AFF8258(v3, &qword_27EFCB280);
  return v4;
}

BOOL PersonLocateAction.isProminent.getter()
{
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AFF8258(v3, &qword_27EFCB280);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t PersonLocateAction.compactLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return PersonLocateAction.primaryLabel.getter();
  }

  v9 = sub_24B2D1F54();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return PersonLocateAction.primaryLabel.getter();
  }

  PersonLocateAction.secondaryLabel.getter(v5);
  v11 = sub_24B2D2214();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v5, 1, v11) == 1)
  {
    PersonLocateAction.primaryLabel.getter();
    if (v13(v5, 1, v11) != 1)
    {
      sub_24AFF8258(v5, &qword_27EFCB270);
    }
  }

  else
  {
    (*(v12 + 32))(a1, v5, v11);
  }

  return sub_24AFF8258(v8, &qword_27EFCB280);
}

uint64_t PersonLocateAction.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B12897C(v15, v12);
    sub_24B008890(v12, v9, &qword_27EFCB280);
    v16 = sub_24B2D1F54();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_24AFF8258(v9, &qword_27EFCB280);
      v18 = sub_24B2D1BB4();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v6, 1, 1, v18);
      sub_24B2D1AD4();
      sub_24AFF8258(v12, &qword_27EFCB280);
      if ((*(v19 + 48))(v6, 1, v18) != 1)
      {
        sub_24AFF8258(v6, &qword_27EFC8A80);
      }
    }

    else
    {
      sub_24B2D1F44();
      (*(v17 + 8))(v9, v16);
      v18 = sub_24B2D1BB4();
      v22 = *(v18 - 8);
      (*(v22 + 56))(v6, 0, 1, v18);
      sub_24AFF8258(v12, &qword_27EFCB280);
      (*(v22 + 32))(a1, v6, v18);
    }

    sub_24B2D1BB4();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v20 = sub_24B2D1BB4();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }
}

uint64_t PersonLocateAction.isDisabled.getter()
{
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v0, v3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  v4 = v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48)];
  sub_24AFF8258(v3, &qword_27EFCB280);
  return v4;
}

uint64_t PersonLocateAction.isHidden(visibleIfDisabled:)(uint64_t a1)
{
  Action = type metadata accessor for PersonLocateAction();
  MEMORY[0x28223BE20](Action);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B147C80(v1, &v13 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678) + 48)];
    sub_24AFF8258(v8, &qword_27EFCB280);
    if ((v9 & 1) == 0)
    {
LABEL_3:
      v10 = 0;
      return v10 & 1;
    }
  }

  else if (*v8 != 1)
  {
    goto LABEL_3;
  }

  sub_24B147C80(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AFF8258(v5, &qword_27EFCB280);
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v10 = sub_24B128D40(v11, a1) ^ 1;
  return v10 & 1;
}

uint64_t sub_24B147B64@<X0>(char *a1@<X8>)
{
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B147C80(v5, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_24AFF8258(v4, &qword_27EFCB280);
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_24B147C1C(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for PersonLocateAction();
  (*(*(Action - 8) + 32))(a2, a1, Action);
  return a2;
}

uint64_t sub_24B147C80(uint64_t a1, uint64_t a2)
{
  Action = type metadata accessor for PersonLocateAction();
  (*(*(Action - 8) + 16))(a2, a1, Action);
  return a2;
}

unint64_t sub_24B147CE8()
{
  result = qword_27EFCCCD8;
  if (!qword_27EFCCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCCD8);
  }

  return result;
}

unint64_t sub_24B147D40()
{
  result = qword_27EFCCCE0;
  if (!qword_27EFCCCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCCCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCCE0);
  }

  return result;
}

unint64_t sub_24B147DA8()
{
  result = qword_27EFCCCF0;
  if (!qword_27EFCCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCCF0);
  }

  return result;
}

uint64_t PersonDetailsController.personIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier;
  v4 = sub_24B2D1574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24B147E88()
{
  swift_getKeyPath();
  sub_24B148360();
  sub_24B2D2584();
}

uint64_t sub_24B147F04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B148360();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask);
}

uint64_t sub_24B147F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B148360();
    sub_24B2D2574();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t PersonDetailsController.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B148360();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  return sub_24B14D5FC(v5 + v3, a1, type metadata accessor for PersonDetailsController.State);
}

uint64_t sub_24B148194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B148360();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  return sub_24B14D5FC(v3 + v4, a2, type metadata accessor for PersonDetailsController.State);
}

uint64_t sub_24B148240(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B14D5FC(a1, v6, type metadata accessor for PersonDetailsController.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B148360();
  sub_24B2D2574();

  return sub_24B14D680(v6, type metadata accessor for PersonDetailsController.State);
}

unint64_t sub_24B148360()
{
  result = qword_27EFCCD10;
  if (!qword_27EFCCD10)
  {
    type metadata accessor for PersonDetailsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCD10);
  }

  return result;
}

uint64_t type metadata accessor for PersonDetailsController()
{
  result = qword_27EFCCD40;
  if (!qword_27EFCCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B148404(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  sub_24B14D6E0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t PersonDetailsController.__allocating_init(personIdentifier:initialState:dependencies:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  PersonDetailsController.init(personIdentifier:initialState:dependencies:)(a1, a2, a3);
  return v6;
}

uint64_t PersonDetailsController.init(personIdentifier:initialState:dependencies:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 4);
  sub_24B2D24F4();
  v13 = sub_24B2D24B4();
  v15 = v14;
  v16 = *(v9 + 8);
  v17 = *a3;
  v23 = a3[1];
  v24 = v17;
  v16(v11, v8);
  *(v4 + 16) = v13;
  *(v4 + 24) = v15;
  sub_24B2D3174();
  *(v4 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
  *(v4 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  sub_24B2D25B4();
  v18 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier;
  v19 = sub_24B2D1574();
  (*(*(v19 - 8) + 32))(v4 + v18, a1, v19);
  sub_24B14D594(a2, v4 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
  v20 = v4 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies;
  v21 = v23;
  *v20 = v24;
  *(v20 + 16) = v21;
  *(v20 + 32) = v12;
  return v4;
}

uint64_t PersonDetailsController.deinit()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v3 = *(v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  swift_retain_n();

  sub_24B2D12C4();

  v7 = v2[1];
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v8;
  swift_retain_n();

  sub_24B2D12C4();

  v11 = v2[2];
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;
  swift_retain_n();

  sub_24B2D12C4();

  v15 = v2[3];
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = v16;
  swift_retain_n();

  sub_24B2D12C4();

  v19 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier;
  v20 = sub_24B2D1574();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);

  v21 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_logger;
  v22 = sub_24B2D3184();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);

  sub_24B14D680(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
  v23 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController___observationRegistrar;
  v24 = sub_24B2D25C4();
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  return v1;
}

uint64_t PersonDetailsController.__deallocating_deinit()
{
  PersonDetailsController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24B148A94()
{
  v1 = sub_24B2D1574();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  swift_getKeyPath();
  v28 = v0;
  sub_24B148360();
  sub_24B2D2584();

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask))
  {

    sub_24B2D5764();
  }

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v10 = v0;
  v25 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v11 = *(v0 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies + 8);
  v14 = v9[2];
  v13 = v9[3];
  v24 = v9[4];
  v15 = v27;
  (*(v27 + 16))(&v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v1);
  v16 = *(v15 + 80);
  v23 = v1;
  v17 = (v16 + 72) & ~v16;
  v26 = v6;
  v18 = (v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v12;
  *(v19 + 5) = v11;
  *(v19 + 6) = v14;
  *(v19 + 7) = v13;
  *(v19 + 8) = v8;
  (*(v15 + 32))(&v19[v17], v3, v23);
  *&v19[v18] = v24;

  v20 = v26;
  v21 = sub_24AFFBE08(0, 0, v26, &unk_24B2ECC30, v19);
  sub_24AFF8258(v20, &qword_27EFC8580);
  return sub_24B147F88(v21);
}

uint64_t sub_24B148DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = v22;
  v8[34] = v23;
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600);
  v8[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v8[36] = swift_task_alloc();
  v10 = sub_24B2D1524();
  v8[37] = v10;
  v8[38] = *(v10 - 8);
  v8[39] = swift_task_alloc();
  v11 = sub_24B2D1544();
  v8[40] = v11;
  v8[41] = *(v11 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCB0);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v12 = type metadata accessor for DetailsPersonInfo();
  v8[47] = v12;
  v8[48] = *(v12 - 8);
  v8[49] = swift_task_alloc();
  v8[50] = type metadata accessor for ContactsProvider.Subscription(0);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v13 = sub_24B2D1494();
  v8[53] = v13;
  v8[54] = *(v13 - 8);
  v8[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  v8[56] = swift_task_alloc();
  v8[57] = _s11PersonStateV6ResultOMa(0);
  v8[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v14 = sub_24B2D1794();
  v8[61] = v14;
  v8[62] = *(v14 - 8);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = type metadata accessor for PersonDetailsController.State();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v15 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
  v8[68] = v15;
  v8[69] = *(v15 - 8);
  v8[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5F8);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD58);
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  v8[89] = swift_task_alloc();
  v16 = sub_24B2D3184();
  v8[90] = v16;
  v8[91] = *(v16 - 8);
  v8[92] = swift_task_alloc();
  v8[93] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60);
  v8[94] = swift_task_alloc();
  v8[95] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68);
  v8[96] = swift_task_alloc();
  v8[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78);
  v8[101] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0);
  v8[102] = v17;
  v8[103] = *(v17 - 8);
  v8[104] = swift_task_alloc();
  v18 = sub_24B2D2504();
  v8[105] = v18;
  v8[106] = *(v18 - 8);
  v8[107] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8);
  v8[108] = v19;
  v8[109] = *(v19 - 8);
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v8[113] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1496EC, a4, 0);
}

uint64_t sub_24B1496EC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 224);
  v11 = *(v0 + 232);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  *(v0 + 156) = *MEMORY[0x277D85778];
  v8 = *(v5 + 104);
  *(v0 + 912) = v8;
  *(v0 + 920) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v4);
  sub_24B2D5744();

  v9 = *(v2 + 8);
  *(v0 + 928) = v9;
  *(v0 + 936) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  return MEMORY[0x2822009F8](sub_24B149840, v11, 0);
}

uint64_t sub_24B149840()
{
  v11 = *(v0 + 928);
  v1 = *(v0 + 912);
  v2 = *(v0 + 156);
  v3 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 816);
  v6 = *(v0 + 232);
  v9 = *(v0 + 840);
  v10 = *(v0 + 240);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B149964, v10, 0);
}

uint64_t sub_24B149964()
{
  v11 = *(v0 + 928);
  v1 = *(v0 + 912);
  v2 = *(v0 + 156);
  v3 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 816);
  v6 = *(v0 + 240);
  v9 = *(v0 + 840);
  v10 = *(v0 + 248);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B149A88, v10, 0);
}

uint64_t sub_24B149A88()
{
  v10 = *(v0 + 928);
  v1 = *(v0 + 912);
  v2 = *(v0 + 156);
  v3 = *(v0 + 856);
  v9 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 816);
  v6 = *(v0 + 248);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v10(v3, v9);

  return MEMORY[0x2822009F8](sub_24B149BAC, 0, 0);
}

uint64_t sub_24B149BAC()
{
  v1 = v0[99];
  v2 = v0[98];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8);
  sub_24B2D3134();
  sub_24B2D3134();
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70);
  sub_24AFF8258(v1, &qword_27EFCCD70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78);
  sub_24B2D57D4();
  v0[24] = &unk_285E48C30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68);
  sub_24B2D3134();
  v3 = sub_24B2D30C4();
  v0[118] = v3;
  v0[25] = v3;
  v0[119] = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v0[120] = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v0[121] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[122] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v4 = v0;
  v4[1] = sub_24B149F74;

  return MEMORY[0x282141C10](v0 + 17, v5);
}

uint64_t sub_24B149F74()
{
  *(*v1 + 984) = v0;

  if (v0)
  {
    v2 = sub_24B14A6C4;
  }

  else
  {
    v2 = sub_24B14A088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B14A0A4()
{
  v1 = *(v0 + 152);
  if (v1 == 255)
  {
    v11 = *(v0 + 904);
    v12 = *(v0 + 896);
    v13 = *(v0 + 888);
    v14 = *(v0 + 880);
    v15 = *(v0 + 872);
    v16 = *(v0 + 864);
    v17 = *(v0 + 808);
    v18 = *(v0 + 768);
    v19 = *(v0 + 752);

    sub_24AFF8258(v19, &qword_27EFCCD60);
    sub_24AFF8258(v18, &qword_27EFCCD68);
    sub_24AFF8258(v17, &qword_27EFCCD78);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 728) + 16))(*(v0 + 736), Strong + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_logger, *(v0 + 720));

      sub_24B138120();
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 216) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 160);
          v10 = (v0 + 168);
          *(v0 + 160) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 176);
          v10 = (v0 + 184);
          *(v0 + 176) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v28 = *(v0 + 736);
        v29 = *(v0 + 728);
        v30 = *(v0 + 720);
        v31 = sub_24AFF321C(v26, v27, (v0 + 216));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "ItemDetailsController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v23 = *(v0 + 736);
        v24 = *(v0 + 728);
        v25 = *(v0 + 720);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 224);

    return MEMORY[0x2822009F8](sub_24B14A750, v32, 0);
  }
}

uint64_t sub_24B14A6C4()
{
  *(v0 + 208) = *(v0 + 984);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B14A750()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224) + *(v0 + 952);
  *(v0 + 153) = *(v2 + 16);
  *(v0 + 992) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B14A7D4, v1, 0);
}

uint64_t sub_24B14A7D4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232) + *(v0 + 960);
  *(v0 + 154) = *(v2 + 16);
  *(v0 + 1000) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B14A85C, v1, 0);
}

uint64_t sub_24B14A85C()
{
  sub_24B008890(v0[31] + v0[121], v0[89], &qword_27EFCC880);

  return MEMORY[0x2822009F8](sub_24B14A8E0, 0, 0);
}

uint64_t sub_24B14A8E0()
{
  if (*(v0[124] + 16))
  {
    v1 = sub_24B18146C(v0[33]);
    v2 = v0[87];
    if (v3)
    {
      v4 = v1;
      v5 = *(v0[124] + 56);
      v6 = type metadata accessor for PeopleProvider.PersonState(0);
      v7 = *(v6 - 8);
      sub_24B14D5FC(v5 + *(v7 + 72) * v4, v2, type metadata accessor for PeopleProvider.PersonState);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {

      v10 = type metadata accessor for PeopleProvider.PersonState(0);
      (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    }
  }

  else
  {
    v8 = v0[87];

    v9 = type metadata accessor for PeopleProvider.PersonState(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  if (*(v0[125] + 16))
  {
    v11 = sub_24B18146C(v0[33]);
    v12 = v0[85];
    if (v13)
    {
      v14 = v11;
      v15 = *(v0[125] + 56);
      v16 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
      v17 = *(v16 - 8);
      sub_24B14D5FC(v15 + *(v17 + 72) * v14, v12, type metadata accessor for PeopleLocationsProvider.LocationState);

      (*(v17 + 56))(v12, 0, 1, v16);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = v0[85];
  }

  v16 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
LABEL_11:
  v18 = v0[85];
  v19 = v0[84];
  sub_24B008890(v0[89] + *(v0[88] + 48), v0[81], &qword_27EFCE590);
  sub_24B008890(v18, v19, &qword_27EFCCCA8);
  type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v0[126] = v16;
  v20 = *(v16 - 8);
  v21 = *(v20 + 48);
  v0[127] = v21;
  v0[128] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v22 = v21(v19, 1, v16);
  v23 = v0[84];
  if (v22 == 1)
  {
    v24 = &qword_27EFCCCA8;
LABEL_15:
    sub_24AFF8258(v23, v24);
    v32 = 1;
    goto LABEL_17;
  }

  v25 = v0[73];
  v26 = v0[70];
  v27 = v0[68];
  v28 = *(v16 + 20);
  v29 = v0[84];
  sub_24B14D5FC(v23 + v28, v26, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  sub_24B14D680(v29, type metadata accessor for PeopleLocationsProvider.LocationState);
  sub_24B0391CC(v26 + *(v27 + 20), v25, &qword_27EFCB288);
  v30 = sub_24B2D1944();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v25, 1, v30) == 1)
  {
    v23 = v0[73];
    v24 = &qword_27EFCB288;
    goto LABEL_15;
  }

  v33 = v0[73];
  sub_24B2D18B4();
  (*(v31 + 8))(v33, v30);
  v32 = 0;
LABEL_17:
  v34 = v0[80];
  v35 = v0[34];
  v36 = sub_24B2D1C44();
  (*(*(v36 - 8) + 56))(v34, v32, 1, v36);

  return MEMORY[0x2822009F8](sub_24B14ADD4, v35, 0);
}

uint64_t sub_24B14ADD4()
{
  v1 = v0[80];
  sub_24B188104(v0[81], v1, v0[76]);
  sub_24AFF8258(v1, &qword_27EFCE590);

  return MEMORY[0x2822009F8](sub_24B14AE64, 0, 0);
}

uint64_t sub_24B14AE64()
{
  v1 = *(v0 + 688);
  sub_24B008890(*(v0 + 696), v1, &qword_27EFCCD58);
  v2 = type metadata accessor for PeopleProvider.PersonState(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 688);
  if (v3 == 1)
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 496);
    v7 = *(v0 + 480);
    sub_24AFF8258(v4, &qword_27EFCCD58);
    (*(v6 + 56))(v7, 1, 1, v5);
  }

  else
  {
    sub_24B14D5FC(v4 + *(v2 + 20), *(v0 + 464), _s11PersonStateV6ResultOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(v0 + 496) + 32))(*(v0 + 472), *(v0 + 464), *(v0 + 488));
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 688);
    v10 = *(v0 + 488);
    v11 = *(v0 + 496);
    v13 = *(v0 + 472);
    v12 = *(v0 + 480);
    (*(v11 + 56))(v13, v8, 1, v10);
    sub_24B0391CC(v13, v12, &qword_27EFCB018);
    sub_24B14D680(v9, type metadata accessor for PeopleProvider.PersonState);
    if ((*(v11 + 48))(v12, 1, v10) != 1)
    {
      v33 = *(v0 + 504);
      v34 = *(v0 + 512);
      v35 = *(v0 + 488);
      v36 = *(v0 + 496);
      (*(v36 + 32))(v34, *(v0 + 480), v35);
      v37 = *(v36 + 16);
      *(v0 + 1032) = v37;
      *(v0 + 1040) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v33, v34, v35);
      v38 = sub_24B2D1604();
      if (v39)
      {
        v40 = *(v0 + 408);
        *v40 = v38;
        v40[1] = v39;
      }

      else
      {
        v41 = *(v0 + 408);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
        sub_24B2D14D4();
        v42 = sub_24B2D14C4();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        sub_24B2D1724();
      }

      swift_storeEnumTagMultiPayload();
      v43 = *(v0 + 240);
      sub_24B14D594(*(v0 + 408), *(v0 + 416), type metadata accessor for ContactsProvider.Subscription);
      v23 = sub_24B14B39C;
      v24 = v43;
      v25 = 0;
      goto LABEL_16;
    }
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 520);
  v16 = *(v0 + 376);
  v17 = *(v0 + 384);
  v18 = *(v0 + 153) & *(v0 + 154);
  sub_24AFF8258(*(v0 + 480), &qword_27EFCB018);
  (*(v17 + 56))(&v14[*(v15 + 20)], 1, 1, v16);
  *v14 = v18 & 1;
  sub_24B14D594(*(v0 + 528), *(v0 + 536), type metadata accessor for PersonDetailsController.State);
  Strong = swift_weakLoadStrong();
  *(v0 + 1048) = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    *(v0 + 1056) = sub_24B2D5684();
    v20 = sub_24B2D5604();
    v22 = v21;
    v23 = sub_24B14BED8;
    v24 = v20;
    v25 = v22;
LABEL_16:

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  v26 = *(v0 + 712);
  v27 = *(v0 + 696);
  v28 = *(v0 + 680);
  v29 = *(v0 + 648);
  v30 = *(v0 + 608);
  sub_24B14D680(*(v0 + 536), type metadata accessor for PersonDetailsController.State);
  sub_24AFF8258(v30, &qword_27EFCC5F8);
  sub_24AFF8258(v29, &qword_27EFCE590);
  sub_24AFF8258(v28, &qword_27EFCCCA8);
  sub_24AFF8258(v27, &qword_27EFCCD58);
  sub_24AFF8258(v26, &qword_27EFCC880);
  v31 = swift_task_alloc();
  *(v0 + 976) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v31 = v0;
  v31[1] = sub_24B149F74;

  return MEMORY[0x282141C10](v0 + 136, v32);
}

uint64_t sub_24B14B39C()
{
  v1 = *(v0 + 416);
  sub_24B17CC44(v1, *(v0 + 440));
  sub_24B14D680(v1, type metadata accessor for ContactsProvider.Subscription);

  return MEMORY[0x2822009F8](sub_24B14B42C, 0, 0);
}

uint64_t sub_24B14B42C()
{
  v88 = *(v0 + 1032);
  v1 = *(v0 + 648);
  v2 = *(v0 + 632);
  v76 = *(v0 + 600);
  v78 = *(v0 + 608);
  v3 = *(v0 + 504);
  v4 = *(v0 + 432);
  v86 = *(v0 + 440);
  v82 = *(v0 + 488);
  v84 = *(v0 + 424);
  v5 = *(v0 + 392);
  v80 = *(v0 + 376);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 312);
  v9 = *(v0 + 304);
  v91 = *(v0 + 320);
  v93 = *(v0 + 296);
  sub_24B008890(*(v0 + 680), *(v0 + 664), &qword_27EFCCCA8);
  sub_24B008890(v1, v2, &qword_27EFCE590);
  sub_24B008890(v78, v76, &qword_27EFCC5F8);
  v88(v5, v3, v82);
  (*(v4 + 16))(v5 + *(v80 + 20), v86, v84);
  sub_24B2D1554();
  sub_24B2D1534();
  (*(v7 + 8))(v6, v91);
  LOBYTE(v1) = sub_24B2D1514();
  (*(v9 + 8))(v8, v93);
  if ((v1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 1016);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 656);
  sub_24B008890(*(v0 + 664), v12, &qword_27EFCCCA8);
  if (v10(v12, 1, v11) == 1)
  {
    sub_24AFF8258(*(v0 + 656), &qword_27EFCCCA8);
LABEL_4:
    v13 = 1;
    goto LABEL_6;
  }

  v14 = *(v0 + 656);
  sub_24B14D5FC(v14 + *(*(v0 + 1008) + 20), *(v0 + 368), type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  sub_24B14D680(v14, type metadata accessor for PeopleLocationsProvider.LocationState);
  v13 = 0;
LABEL_6:
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  (*(v15 + 56))(v17, v13, 1, v16);
  sub_24B008890(v17, v18, &qword_27EFCCCB0);
  v19 = *(v15 + 48);
  v20 = v19(v18, 1, v16);
  v21 = *(v0 + 360);
  if (v20 == 1)
  {
    sub_24AFF8258(v21, &qword_27EFCCCB0);
    v22 = 0;
  }

  else
  {
    v22 = *v21;
    sub_24B14D680(v21, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v23 = *(v0 + 544);
  v24 = *(v0 + 368);
  v25 = *(v0 + 352);
  *(*(v0 + 392) + *(*(v0 + 376) + 24)) = v22;
  sub_24B008890(v24, v25, &qword_27EFCCCB0);
  v26 = v19(v25, 1, v23);
  v27 = *(v0 + 576);
  if (v26 == 1)
  {
    sub_24AFF8258(*(v0 + 352), &qword_27EFCCCB0);
    v28 = sub_24B2D1944();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  else
  {
    v29 = *(v0 + 352);
    sub_24B008890(v29 + *(*(v0 + 544) + 20), *(v0 + 576), &qword_27EFCB288);
    sub_24B14D680(v29, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 544);
  v33 = *(v0 + 368);
  v34 = *(v0 + 344);
  sub_24B0391CC(*(v0 + 576), *(v0 + 392) + *(*(v0 + 376) + 28), &qword_27EFCB288);
  sub_24B008890(v30, v31, &qword_27EFCE590);
  sub_24B008890(v33, v34, &qword_27EFCCCB0);
  if (v19(v34, 1, v32) == 1)
  {
    v35 = *(v0 + 344);
    v36 = &qword_27EFCCCB0;
LABEL_16:
    sub_24AFF8258(v35, v36);
    v41 = 1;
    goto LABEL_18;
  }

  v37 = *(v0 + 568);
  v38 = *(v0 + 344);
  sub_24B008890(v38 + *(*(v0 + 544) + 20), v37, &qword_27EFCB288);
  sub_24B14D680(v38, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  v39 = sub_24B2D1944();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v37, 1, v39) == 1)
  {
    v35 = *(v0 + 568);
    v36 = &qword_27EFCB288;
    goto LABEL_16;
  }

  v42 = *(v0 + 568);
  sub_24B2D18B4();
  (*(v40 + 8))(v42, v39);
  v41 = 0;
LABEL_18:
  v43 = *(v0 + 616);
  v44 = *(v0 + 600);
  v45 = *(v0 + 592);
  v46 = sub_24B2D1C44();
  (*(*(v46 - 8) + 56))(v43, v41, 1, v46);
  sub_24B008890(v44, v45, &qword_27EFCC5F8);
  v47 = type metadata accessor for ETAProvider.ETAState(0);
  v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
  v49 = *(v0 + 592);
  v50 = *(v0 + 280);
  if (v48 == 1)
  {
    sub_24AFF8258(*(v0 + 592), &qword_27EFCC5F8);
    v51 = sub_24B2D17E4();
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  }

  else
  {
    v52 = *(v47 + 20);
    v53 = sub_24B2D17E4();
    v54 = *(v53 - 8);
    (*(v54 + 16))(v50, v49 + v52, v53);
    sub_24B14D680(v49, type metadata accessor for ETAProvider.ETAState);
    (*(v54 + 56))(v50, 0, 1, v53);
  }

  v77 = *(v0 + 632);
  v55 = *(v0 + 600);
  v92 = *(v0 + 528);
  v94 = *(v0 + 520);
  v89 = *(v0 + 512);
  v56 = *(v0 + 496);
  v87 = *(v0 + 504);
  v57 = *(v0 + 488);
  v58 = *(v0 + 448);
  v81 = *(v0 + 440);
  v83 = *(v0 + 664);
  v59 = *(v0 + 432);
  v79 = *(v0 + 424);
  v60 = *(v0 + 384);
  v61 = *(v0 + 392);
  v62 = *(v0 + 368);
  v85 = *(v0 + 376);
  v90 = *(v0 + 153) & *(v0 + 154);
  v63 = *(v0 + 288);
  sub_24B2D17F4();
  sub_24AFF8258(v62, &qword_27EFCCCB0);
  sub_24AFF8258(v55, &qword_27EFCC5F8);
  sub_24AFF8258(v77, &qword_27EFCE590);
  sub_24AFF8258(v83, &qword_27EFCCCA8);
  (*(v59 + 8))(v81, v79);
  v64 = *(v56 + 8);
  v64(v87, v57);
  v64(v89, v57);
  sub_24B0391CC(v63, v61 + *(v85 + 32), &qword_27EFCB278);
  sub_24B14D594(v61, v58, type metadata accessor for DetailsPersonInfo);
  (*(v60 + 56))(v58, 0, 1, v85);
  *v92 = v90 & 1;
  sub_24B0391CC(v58, &v92[*(v94 + 20)], &qword_27EFCCD50);
  sub_24B14D594(*(v0 + 528), *(v0 + 536), type metadata accessor for PersonDetailsController.State);
  Strong = swift_weakLoadStrong();
  *(v0 + 1048) = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    *(v0 + 1056) = sub_24B2D5684();
    v67 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B14BED8, v67, v66);
  }

  else
  {
    v68 = *(v0 + 712);
    v69 = *(v0 + 696);
    v70 = *(v0 + 680);
    v71 = *(v0 + 648);
    v72 = *(v0 + 608);
    sub_24B14D680(*(v0 + 536), type metadata accessor for PersonDetailsController.State);
    sub_24AFF8258(v72, &qword_27EFCC5F8);
    sub_24AFF8258(v71, &qword_27EFCE590);
    sub_24AFF8258(v70, &qword_27EFCCCA8);
    sub_24AFF8258(v69, &qword_27EFCCD58);
    sub_24AFF8258(v68, &qword_27EFCC880);
    v73 = swift_task_alloc();
    *(v0 + 976) = v73;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
    *v73 = v0;
    v73[1] = sub_24B149F74;

    return MEMORY[0x282141C10](v0 + 136, v74);
  }
}

uint64_t sub_24B14BED8()
{
  v1 = *(v0 + 536);

  sub_24B14C0C4(v1);

  return MEMORY[0x2822009F8](sub_24B14BF58, 0, 0);
}

uint64_t sub_24B14BF58()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[85];
  v4 = v0[81];
  v5 = v0[76];
  sub_24B14D680(v0[67], type metadata accessor for PersonDetailsController.State);
  sub_24AFF8258(v5, &qword_27EFCC5F8);
  sub_24AFF8258(v4, &qword_27EFCE590);
  sub_24AFF8258(v3, &qword_27EFCCCA8);
  sub_24AFF8258(v2, &qword_27EFCCD58);
  sub_24AFF8258(v1, &qword_27EFCC880);
  v6 = swift_task_alloc();
  v0[122] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v6 = v0;
  v6[1] = sub_24B149F74;

  return MEMORY[0x282141C10](v0 + 17, v7);
}

uint64_t sub_24B14C0C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactsProvider.Subscription(0);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_24B2D1794();
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  if (*(v2 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) == 1)
  {
    v19 = *(v4 + 20);
    v35 = a1;
    sub_24B008890(a1 + v19, v12, &qword_27EFCCD50);
    v20 = type metadata accessor for DetailsPersonInfo();
    if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
    {
      sub_24AFF8258(v12, &qword_27EFCCD50);
    }

    else
    {
      v21 = v37;
      (*(v37 + 16))(v15, v12, v13);
      sub_24B14D680(v12, type metadata accessor for DetailsPersonInfo);
      (*(v21 + 32))(v18, v15, v13);
      v22 = *(v2 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FC8);
      v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24B2DE430;
      v25 = sub_24B2D1604();
      if (v26)
      {
        *v9 = v25;
        v9[1] = v26;
      }

      else
      {
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        sub_24B2D14D4();
        v27 = sub_24B2D14C4();
        (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
        sub_24B2D1724();
      }

      swift_storeEnumTagMultiPayload();
      sub_24B14D594(v9, v24 + v23, type metadata accessor for ContactsProvider.Subscription);
      v28 = sub_24B1354FC(v24);
      swift_setDeallocating();
      sub_24B14D680(v24 + v23, type metadata accessor for ContactsProvider.Subscription);
      swift_deallocClassInstance();
      v30 = *(v2 + 16);
      v29 = *(v2 + 24);
      v31 = swift_allocObject();
      v31[2] = v22;
      v31[3] = v28;
      v31[4] = v30;
      v31[5] = v29;

      sub_24B2D12C4();

      (*(v37 + 8))(v18, v13);
    }

    a1 = v35;
  }

  sub_24B14D5FC(a1, v6, type metadata accessor for PersonDetailsController.State);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v34 - 2) = v2;
  *(&v34 - 1) = v6;
  v38 = v2;
  sub_24B148360();
  sub_24B2D2574();

  return sub_24B14D680(v6, type metadata accessor for PersonDetailsController.State);
}

Swift::Void __swiftcall PersonDetailsController.onAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeopleProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5934();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v44);
    _os_log_impl(&dword_24AFD2000, v9, v10, "PersonDetailsController: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 1;
  sub_24B148A94();
  v43 = v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies;
  v13 = *(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v14 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier;
  v39 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier;
  v15 = sub_24B2D1574();
  v16 = *(v15 - 8);
  v38 = *(v16 + 16);
  v38(v8, v1 + v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v17 = *(v1 + 24);
  v36 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v37 = xmmword_24B2DE430;
  *(v19 + 16) = xmmword_24B2DE430;
  sub_24B14D5FC(v8, v19 + v18, type metadata accessor for PeopleProvider.Subscription);
  v20 = sub_24B13405C(v19);
  swift_setDeallocating();
  sub_24B14D680(v19 + v18, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = v20;
  v21[4] = v36;
  v21[5] = v17;

  sub_24B2D12C4();

  sub_24B14D680(v8, type metadata accessor for PeopleProvider.Subscription);
  v22 = v42;
  v23 = *(v43 + 8);
  v38(v42, v1 + v39, v15);
  *(v22 + *(v40 + 20)) = 0;
  v24 = *(v1 + 16);
  v25 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FB8);
  v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  sub_24B14D5FC(v22, v27 + v26, type metadata accessor for PeopleLocationsProvider.Subscription);
  v28 = sub_24B1363B8(v27);
  swift_setDeallocating();
  sub_24B14D680(v27 + v26, type metadata accessor for PeopleLocationsProvider.Subscription);
  swift_deallocClassInstance();
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v28;
  v29[4] = v24;
  v29[5] = v25;

  sub_24B2D12C4();

  sub_24B14D680(v22, type metadata accessor for PeopleLocationsProvider.Subscription);
  v30 = *(v43 + 24);
  v32 = *(v1 + 16);
  v31 = *(v1 + 24);
  v33 = sub_24B134824(&unk_285E48C68);
  v34 = swift_allocObject();
  v34[2] = v30;
  v34[3] = v33;
  v34[4] = v32;
  v34[5] = v31;

  sub_24B2D12C4();
}

Swift::Void __swiftcall PersonDetailsController.onDisappear()()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v23);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PersonDetailsController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  v6 = (v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v8;

  sub_24B2D12C4();

  v11 = v6[1];
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v14[4] = v12;

  sub_24B2D12C4();

  v15 = v6[2];
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = v16;

  sub_24B2D12C4();

  v19 = v6[3];
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v21;
  v22[4] = v20;

  sub_24B2D12C4();
}

uint64_t sub_24B14CEFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B132F00(v2, v3, v4);
}

uint64_t sub_24B14CFA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B132B8C(v2, v3, v5, v4);
}

uint64_t sub_24B14D050()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B132C40(v2, v3, v5, v4);
}

uint64_t sub_24B14D0FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B132FAC(v2, v3, v4);
}

uint64_t sub_24B14D1A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B132E54(v2, v3, v4);
}

uint64_t sub_24B14D254()
{
  result = sub_24B2D1574();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D3184();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PersonDetailsController.State();
      if (v3 <= 0x3F)
      {
        result = sub_24B2D25C4();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24B14D3E4(uint64_t a1)
{
  sub_24B2D1574();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFD370;

  return sub_24B148DC0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24B14D538()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = *(v0 + 24);
}

uint64_t sub_24B14D594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B14D5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B14D680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B14D6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonDetailsController.State();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PersonDetailsController.Dependencies.peopleProvider.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PersonDetailsController.Dependencies.peopleLocationsProvider.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PersonDetailsController.Dependencies.contactsProvider.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PersonDetailsController.Dependencies.userLocationProvider.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PersonDetailsController.Dependencies.etaProvider.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PersonDetailsController.Dependencies.init(peopleProvider:peopleLocationsProvider:contactsProvider:userLocationProvider:etaProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static PersonDetailsController.State.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFC76D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonDetailsController.State();
  v3 = __swift_project_value_buffer(v2, qword_27EFCCDA0);

  return sub_24B14DB74(v3, a1);
}

uint64_t PersonDetailsController.State.personInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonDetailsController.State() + 20);

  return sub_24B14DBD8(v3, a1);
}

uint64_t PersonDetailsController.State.personInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersonDetailsController.State() + 20);

  return sub_24B14DC48(a1, v3);
}

uint64_t sub_24B14DA98()
{
  v0 = type metadata accessor for PersonDetailsController.State();
  __swift_allocate_value_buffer(v0, qword_27EFCCDA0);
  v1 = __swift_project_value_buffer(v0, qword_27EFCCDA0);
  v2 = *(v0 + 20);
  v3 = type metadata accessor for DetailsPersonInfo();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0;
  return result;
}

uint64_t type metadata accessor for PersonDetailsController.State()
{
  result = qword_27EFCCDB8;
  if (!qword_27EFCCDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B14DB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonDetailsController.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B14DBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B14DC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_24B14DCE0()
{
  sub_24B14DD5C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B14DD5C()
{
  if (!qword_27EFCCDC8)
  {
    type metadata accessor for DetailsPersonInfo();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCCDC8);
    }
  }
}

uint64_t ListPersonInfo.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1794();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ListPersonInfo()
{
  result = qword_27EFCCDD8;
  if (!qword_27EFCCDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListPersonInfo.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListPersonInfo() + 20);
  v4 = sub_24B2D1494();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListPersonInfo.init(model:contact:locationState:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v89 = a3;
  v90 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  MEMORY[0x28223BE20](v19 - 8);
  v72 = &v71 - v20;
  v74 = sub_24B2D1524();
  v21 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B2D1544();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCB0);
  MEMORY[0x28223BE20](v28 - 8);
  v75 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v71 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v71 - v34;
  MEMORY[0x28223BE20](v36);
  v81 = &v71 - v37;
  v38 = sub_24B2D1794();
  v79 = *(v38 - 8);
  v80 = v38;
  (*(v79 + 16))(a5, a1);
  v91 = type metadata accessor for ListPersonInfo();
  v39 = v91[5];
  v40 = sub_24B2D1494();
  v77 = *(v40 - 8);
  v78 = v40;
  v41 = *(v77 + 16);
  v88 = a5;
  v41(a5 + v39, v90);
  v87 = a1;
  sub_24B2D1554();
  sub_24B2D1534();
  (*(v25 + 8))(v27, v24);
  LOBYTE(a1) = sub_24B2D1514();
  (*(v21 + 8))(v23, v74);
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v42 = v72;
  sub_24B008890(v89, v72, &qword_27EFCCCA8);
  v43 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    sub_24AFF8258(v42, &qword_27EFCCCA8);
LABEL_4:
    v44 = 1;
    v46 = v81;
    v45 = v82;
    goto LABEL_6;
  }

  v46 = v81;
  sub_24B1453E8(v42 + *(v43 + 20), v81);
  sub_24B14E9DC(v42, type metadata accessor for PeopleLocationsProvider.LocationState);
  v44 = 0;
  v45 = v82;
LABEL_6:
  v47 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
  v48 = *(v47 - 8);
  (*(v48 + 56))(v46, v44, 1, v47);
  sub_24B008890(v46, v35, &qword_27EFCCCB0);
  v49 = *(v48 + 48);
  v50 = v49(v35, 1, v47);
  v51 = v83;
  if (v50 == 1)
  {
    sub_24AFF8258(v35, &qword_27EFCCCB0);
    v52 = 0;
  }

  else
  {
    v52 = *v35;
    sub_24B14E9DC(v35, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v53 = v88;
  *(v88 + v91[6]) = v52;
  v54 = v53;
  sub_24B008890(v46, v32, &qword_27EFCCCB0);
  v55 = v49(v32, 1, v47);
  v56 = v86;
  if (v55 == 1)
  {
    sub_24AFF8258(v32, &qword_27EFCCCB0);
    v57 = sub_24B2D1944();
    v58 = v76;
    (*(*(v57 - 8) + 56))(v76, 1, 1, v57);
  }

  else
  {
    v58 = v76;
    sub_24B008890(&v32[*(v47 + 20)], v76, &qword_27EFCB288);
    sub_24B14E9DC(v32, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  sub_24B0391CC(v58, v54 + v91[7], &qword_27EFCB288);
  sub_24B008890(v56, v45, &qword_27EFCE590);
  v59 = v75;
  sub_24B008890(v46, v75, &qword_27EFCCCB0);
  if (v49(v59, 1, v47) == 1)
  {
    v60 = &qword_27EFCCCB0;
    v61 = v59;
  }

  else
  {
    v62 = v59 + *(v47 + 20);
    v63 = v73;
    sub_24B008890(v62, v73, &qword_27EFCB288);
    sub_24B14E9DC(v59, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
    v64 = sub_24B2D1944();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) != 1)
    {
      sub_24B2D18B4();
      (*(v65 + 8))(v63, v64);
      v66 = 0;
      goto LABEL_18;
    }

    v60 = &qword_27EFCB288;
    v61 = v63;
  }

  sub_24AFF8258(v61, v60);
  v66 = 1;
LABEL_18:
  v67 = sub_24B2D1C44();
  (*(*(v67 - 8) + 56))(v51, v66, 1, v67);
  v68 = sub_24B2D17E4();
  (*(*(v68 - 8) + 56))(v85, 1, 1, v68);
  v69 = v84;
  sub_24B2D17F4();
  sub_24AFF8258(v56, &qword_27EFCE590);
  sub_24AFF8258(v89, &qword_27EFCCCA8);
  (*(v77 + 8))(v90, v78);
  (*(v79 + 8))(v87, v80);
  sub_24AFF8258(v46, &qword_27EFCCCB0);
  return sub_24B0391CC(v69, v54 + v91[8], &qword_27EFCB278);
}

uint64_t sub_24B14E9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL ListPersonInfo.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ListPersonInfo();
  sub_24B008890(v0 + *(v4 + 28), v3, &qword_27EFCB288);
  v5 = sub_24B2D1944();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_24AFF8258(v3, &qword_27EFCB288);
  return v6;
}

uint64_t ListPersonInfo.hash(into:)()
{
  v1 = sub_24B2D1824();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_24B2D1944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_24B2D1794();
  sub_24B14F7BC(&qword_27EFCCCB8, MEMORY[0x277D08C40]);
  sub_24B2D5254();
  v13 = type metadata accessor for ListPersonInfo();
  sub_24B2D1494();
  sub_24B14F7BC(&qword_27EFCBE58, MEMORY[0x277D08B20]);
  sub_24B2D5254();
  sub_24B2D6104();
  sub_24B008890(v0 + *(v13 + 28), v12, &qword_27EFCB288);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24B2D6104();
    sub_24B14F7BC(&qword_27EFCC618, MEMORY[0x277D08CD0]);
    sub_24B2D5254();
    (*(v7 + 8))(v9, v6);
  }

  sub_24B008890(v0 + *(v13 + 32), v5, &qword_27EFCB278);
  v15 = v20;
  v14 = v21;
  if ((*(v20 + 48))(v5, 1, v21) == 1)
  {
    return sub_24B2D6104();
  }

  v17 = v19;
  (*(v15 + 32))(v19, v5, v14);
  sub_24B2D6104();
  sub_24B14F7BC(&qword_27EFCC620, MEMORY[0x277D08C90]);
  sub_24B2D5254();
  return (*(v15 + 8))(v17, v14);
}

uint64_t ListPersonInfo.hashValue.getter()
{
  sub_24B2D60E4();
  ListPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B14EFE0()
{
  sub_24B2D60E4();
  ListPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B14F024()
{
  sub_24B2D60E4();
  ListPersonInfo.hash(into:)();
  return sub_24B2D6124();
}

BOOL _s12FindMyUICore14ListPersonInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1824();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC658);
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v10;
  v11 = sub_24B2D1944();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  if ((MEMORY[0x24C237E10](a1, a2, v18) & 1) == 0)
  {
    return 0;
  }

  v45 = v5;
  v21 = type metadata accessor for ListPersonInfo();
  if ((sub_24B2D1474() & 1) == 0 || *(a1 + v21[6]) != *(a2 + v21[6]))
  {
    return 0;
  }

  v43 = v4;
  v22 = v21[7];
  v23 = *(v17 + 48);
  sub_24B008890(a1 + v22, v20, &qword_27EFCB288);
  v44 = v23;
  sub_24B008890(a2 + v22, &v20[v23], &qword_27EFCB288);
  v24 = *(v49 + 48);
  if (v24(v20, 1, v11) != 1)
  {
    sub_24B008890(v20, v16, &qword_27EFCB288);
    if (v24(&v20[v44], 1, v11) != 1)
    {
      v27 = v49;
      (*(v49 + 32))(v13, &v20[v44], v11);
      sub_24B14F7BC(&qword_27EFCC670, MEMORY[0x277D08CD0]);
      LODWORD(v44) = sub_24B2D52A4();
      v28 = *(v27 + 8);
      v28(v13, v11);
      v28(v16, v11);
      sub_24AFF8258(v20, &qword_27EFCB288);
      if ((v44 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v49 + 8))(v16, v11);
LABEL_9:
    v25 = &qword_27EFCC660;
    v26 = v20;
LABEL_17:
    sub_24AFF8258(v26, v25);
    return 0;
  }

  if (v24(&v20[v44], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_24AFF8258(v20, &qword_27EFCB288);
LABEL_11:
  v29 = v21[8];
  v30 = *(v9 + 48);
  v31 = a1 + v29;
  v32 = v48;
  sub_24B008890(v31, v48, &qword_27EFCB278);
  sub_24B008890(a2 + v29, v32 + v30, &qword_27EFCB278);
  v33 = *(v45 + 48);
  v34 = v43;
  if (v33(v32, 1, v43) == 1)
  {
    if (v33(v32 + v30, 1, v34) == 1)
    {
      sub_24AFF8258(v32, &qword_27EFCB278);
      return 1;
    }

    goto LABEL_16;
  }

  v35 = v47;
  sub_24B008890(v32, v47, &qword_27EFCB278);
  if (v33(v32 + v30, 1, v34) == 1)
  {
    (*(v45 + 8))(v35, v34);
LABEL_16:
    v25 = &qword_27EFCC658;
    v26 = v32;
    goto LABEL_17;
  }

  v37 = v45;
  v38 = v32 + v30;
  v39 = v46;
  (*(v45 + 32))(v46, v38, v34);
  sub_24B14F7BC(&qword_27EFCC668, MEMORY[0x277D08C90]);
  v40 = sub_24B2D52A4();
  v41 = *(v37 + 8);
  v41(v39, v34);
  v41(v35, v34);
  sub_24AFF8258(v32, &qword_27EFCB278);
  return (v40 & 1) != 0;
}

uint64_t sub_24B14F7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ListPersonInfo.Sort.sortDescriptor<A>(rootKeyPath:)()
{
  v1 = sub_24B2D1684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListPersonInfo.Sort();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B14FAE0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      swift_getKeyPath();
      sub_24B2D6154();

      sub_24B2D1824();
      sub_24B150BAC(&qword_27EFCCC38, MEMORY[0x277D08C90]);
      return sub_24B14345C();
    }

    else
    {
      swift_getKeyPath();
      sub_24B2D6154();

      return sub_24B143450();
    }
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    swift_getKeyPath();
    sub_24B2D6154();

    sub_24B2D1664();

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t type metadata accessor for ListPersonInfo.Sort()
{
  result = qword_27EFCCE38;
  if (!qword_27EFCCE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B14FAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListPersonInfo.Sort();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B14FB44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ListPersonInfo();
  sub_24B1418C4(a1 + *(v7 + 28), v6);
  v8 = sub_24B2D1944();
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_24AFF8258(v6, &qword_27EFCB288);
  *a2 = a1;
  return result;
}

uint64_t sub_24B14FC40()
{
  result = sub_24B14FC60();
  qword_27EFCCDE8 = result;
  return result;
}

uint64_t sub_24B14FC60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCE50);
  v0 = *(type metadata accessor for ListPersonInfo.Sort() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B2ECDF0;
  v4 = v3 + v2;
  v5 = sub_24B2D1684();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 2, 2, v5);
  v8 = *(v6 + 104);
  v8(v4 + v1, *MEMORY[0x277D08BC0], v5);
  v7(v4 + v1, 0, 2, v5);
  v7(v4 + 2 * v1, 1, 2, v5);
  v8(v4 + 3 * v1, *MEMORY[0x277D08BB0], v5);
  v7(v4 + 3 * v1, 0, 2, v5);
  v8(v4 + 4 * v1, *MEMORY[0x277D08BA8], v5);
  v7(v4 + 4 * v1, 0, 2, v5);
  v1 *= 5;
  v8(v4 + v1, *MEMORY[0x277D08BB8], v5);
  v7(v4 + v1, 0, 2, v5);
  return v3;
}

uint64_t static ListPersonInfo.Sort.allCases.getter()
{
  if (qword_27EFC76D8 != -1)
  {
    swift_once();
  }
}

uint64_t ListPersonInfo.Sort.hash(into:)()
{
  v1 = sub_24B2D1684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListPersonInfo.Sort();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B14FAE0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    return MEMORY[0x24C23C8D0](v8 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](2);
  sub_24B150BAC(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t ListPersonInfo.Sort.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListPersonInfo.Sort();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B14FAE0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x24C23C8D0](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](2);
    sub_24B150BAC(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B1502C4()
{
  v1 = sub_24B2D1684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B14FAE0(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    return MEMORY[0x24C23C8D0](v8 != 1);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x24C23C8D0](2);
  sub_24B150BAC(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24B150488()
{
  v1 = v0;
  v2 = sub_24B2D1684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B14FAE0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x24C23C8D0](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](2);
    sub_24B150BAC(&qword_27EFCCDF0, MEMORY[0x277D08BC8]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B150674@<X0>(void *a1@<X8>)
{
  if (qword_27EFC76D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EFCCDE8;
}

uint64_t _s12FindMyUICore14ListPersonInfoV4SortO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListPersonInfo.Sort();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCE48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24B14FAE0(a1, &v21 - v12);
  sub_24B14FAE0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_24B14FAE0(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_24B2D1674();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_24B150C74(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_24AFF8258(v13, &qword_27EFCCE48);
    v18 = 0;
    return v18 & 1;
  }

  sub_24B150C74(v13);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_24B150B00()
{
  result = qword_27EFCCE20;
  if (!qword_27EFCCE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCCE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCCE20);
  }

  return result;
}

uint64_t sub_24B150BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B150C1C()
{
  v0 = sub_24B2D1684();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B150C74(uint64_t a1)
{
  v2 = type metadata accessor for ListPersonInfo.Sort();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PeopleListController.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24B150EAC();

  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = type metadata accessor for PeopleListController.State();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PeopleListController.state.setter(uint64_t a1)
{
  sub_24B157AC0();
  v2 = type metadata accessor for PeopleListController.State();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_24B150F4C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for PeopleListController.State();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t (*PeopleListController.state.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_24B150EAC();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B151270;
}

uint64_t sub_24B151270()
{
  swift_endAccess();

  return sub_24B1512A8();
}

uint64_t sub_24B1512A8()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D2594();
}

uint64_t sub_24B151370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 152));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B14085C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B15141C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24B140824;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 152));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_24AFD5880(v3);
  return sub_24AFD5890(v8);
}

uint64_t PeopleListController.didChangePeopleStatesList.getter()
{
  v1 = (v0 + *(*v0 + 152));
  swift_beginAccess();
  v2 = *v1;
  sub_24AFD5880(*v1);
  return v2;
}

uint64_t PeopleListController.didChangePeopleStatesList.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24AFD5890(v6);
}

uint64_t PeopleListController.__allocating_init(initialState:dependencies:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  PeopleListController.init(initialState:dependencies:)(a1, a2);
  return v4;
}

_OWORD *PeopleListController.init(initialState:dependencies:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_24B2D2504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v10 = sub_24B2D24B4();
  v12 = v11;
  v13 = *(v7 + 8);
  v14 = *a2;
  v23 = a2[1];
  v24 = v14;
  v22 = a2[2];
  v13(v9, v6);
  *(v3 + 2) = v10;
  *(v3 + 3) = v12;
  sub_24B2D2494();
  sub_24B2D3174();
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v15 = (v3 + *(*v3 + 152));
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v3 + 160);
  v17 = type metadata accessor for DataControllerSessionMetrics();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  sub_24B2D25B4();
  v18 = *(*v3 + 128);
  v19 = type metadata accessor for PeopleListController.State();
  (*(*(v19 - 8) + 32))(v3 + v18, a1, v19);
  v20 = v23;
  v3[2] = v24;
  v3[3] = v20;
  v3[4] = v22;
  return v3;
}

char *PeopleListController.deinit()
{
  v1 = v0;
  v2 = *v0;
  v41 = v2;
  v39 = type metadata accessor for DataControllerSessionMetrics();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v40 = *(v2 + 144);
  if (*&v1[v40])
  {

    sub_24B2D5764();
  }

  v13 = *(v1 + 3);
  v12 = *(v1 + 4);
  v14 = *(v1 + 2);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  swift_retain_n();

  sub_24B2D12C4();

  v16 = *(v1 + 5);
  v17 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v18;
  swift_retain_n();

  sub_24B2D12C4();

  v20 = *(v1 + 6);
  v21 = *(v1 + 2);
  v22 = *(v1 + 3);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v22;
  swift_retain_n();

  sub_24B2D12C4();

  v24 = *(v1 + 7);
  v25 = *(v1 + 2);
  v26 = *(v1 + 3);
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = v26;
  swift_retain_n();

  sub_24B2D12C4();

  v28 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B008890(&v1[v28], v11, qword_27EFCC940);
  sub_24B008890(v11, v8, qword_27EFCC940);
  if ((*(v3 + 48))(v8, 1, v39) != 1)
  {
    sub_24B157FA4(v8, v5, type metadata accessor for DataControllerSessionMetrics);
    sub_24B151F54(v5, v1);
    sub_24B15800C(v5, type metadata accessor for DataControllerSessionMetrics);
  }

  sub_24AFF8258(v11, qword_27EFCC940);

  v29 = qword_27EFCCE58;
  v30 = sub_24B2D24A4();
  (*(*(v30 - 8) + 8))(&v1[v29], v30);
  v31 = qword_27EFCCE60;
  v32 = sub_24B2D3184();
  (*(*(v32 - 8) + 8))(&v1[v31], v32);
  v33 = *(*v1 + 128);
  v34 = type metadata accessor for PeopleListController.State();
  (*(*(v34 - 8) + 8))(&v1[v33], v34);

  sub_24AFD5890(*&v1[*(*v1 + 152)]);
  sub_24AFF8258(&v1[v28], qword_27EFCC940);
  v35 = *(*v1 + 168);
  v36 = sub_24B2D25C4();
  (*(*(v36 - 8) + 8))(&v1[v35], v36);
  return v1;
}

uint64_t sub_24B151F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v6[3] = type metadata accessor for DataControllerSessionMetrics();
  v6[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  sub_24B15806C(a1, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v3(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t PeopleListController.__deallocating_deinit()
{
  PeopleListController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24B152038()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_24B1525B0();
  v9 = qword_27EFCCE58;
  v10 = type metadata accessor for DataControllerSessionMetrics();
  v11 = v10[6];
  v12 = sub_24B2D24A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v8[v11], v1 + v9, v12);
  sub_24B2D2494();
  v14 = *(v13 + 56);
  v14(&v8[v10[8]], 1, 1, v12);
  v14(&v8[v10[10]], 1, 1, v12);
  v14(&v8[v10[12]], 1, 1, v12);
  sub_24B2D24F4();
  v15 = &v8[v10[5]];
  *v15 = 0xD000000000000014;
  *(v15 + 1) = 0x800000024B2ED120;
  v8[v10[9]] = 2;
  v16 = &v8[v10[11]];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v8[v10[13]];
  *v17 = 0;
  v17[8] = 1;
  (*(*(v10 - 1) + 56))(v8, 0, 1, v10);
  v18 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v8, v1 + v18, qword_27EFCC940);
  v19 = swift_endAccess();
  v20 = *v1;
  v21 = *(*v1 + 144);
  if (*(v1 + v21))
  {

    sub_24B2D5764();

    v20 = *v1;
  }

  *(v1 + *(v20 + 136)) = 1;
  MEMORY[0x28223BE20](v19);
  v33 = *(v2 + 80);
  *(&v32 - 1) = v33;
  swift_getKeyPath();
  sub_24B150EAC();

  v34 = v1;
  MEMORY[0x28223BE20](v22);
  *(&v32 - 1) = v33;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();

  swift_beginAccess();
  v23 = type metadata accessor for PeopleListController.State();
  sub_24B140F4C(v23);
  sub_24B1512A8();
  v24 = sub_24B2D56D4();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  v32 = *(v1 + 2);
  v26 = v1[6];
  v27 = v1[7];
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = v32;
  *(v28 + 32) = v33;
  *(v28 + 48) = v29;
  *(v28 + 64) = v25;
  *(v28 + 72) = v26;
  *(v28 + 80) = v27;

  v30 = sub_24AFFBE08(0, 0, v5, &unk_24B2ED200, v28);
  sub_24AFF8258(v5, &qword_27EFC8580);
  *(v1 + v21) = v30;
}

uint64_t sub_24B1525B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DataControllerSessionMetrics();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v0 + 160);
  swift_beginAccess();
  v39 = v19;
  sub_24B008890(v0 + v19, v14, qword_27EFCC940);
  v40 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, qword_27EFCC940);
  }

  v36 = v3;
  v37 = v11;
  sub_24B157FA4(v14, v18, type metadata accessor for DataControllerSessionMetrics);
  v21 = *(v15 + 32);
  sub_24B008890(&v18[v21], v8, &qword_27EFC8450);
  v22 = sub_24B2D24A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v8, 1, v22);
  sub_24AFF8258(v8, &qword_27EFC8450);
  if (v25 != 1)
  {
    return sub_24B15800C(v18, type metadata accessor for DataControllerSessionMetrics);
  }

  v35 = v21;
  v26 = &v18[v21];
  v27 = v38;
  sub_24B008890(v26, v38, &qword_27EFC8450);
  v28 = v24(v27, 1, v22);
  sub_24AFF8258(v27, &qword_27EFC8450);
  if (v28 == 1)
  {
    v29 = v36;
    sub_24B2D2494();
    (*(v23 + 56))(v29, 0, 1, v22);
    sub_24B068E10(v29, &v18[v35], &qword_27EFC8450);
  }

  v30 = v0[8];
  v41[3] = v15;
  v41[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  sub_24B15806C(v18, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v32 = v0;
  v30(v41);
  sub_24B15800C(v18, type metadata accessor for DataControllerSessionMetrics);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v33 = v37;
  (*(v40 + 56))(v37, 1, 1, v15);
  v34 = v39;
  swift_beginAccess();
  sub_24B068E10(v33, v32 + v34, qword_27EFCC940);
  return swift_endAccess();
}

uint64_t sub_24B152A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[42] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  v8[47] = swift_task_alloc();
  v10 = sub_24B2D3184();
  v8[48] = v10;
  v8[49] = *(v10 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60);
  v8[52] = swift_task_alloc();
  v8[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68);
  v8[54] = swift_task_alloc();
  v8[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70);
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78);
  v8[59] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0);
  v8[60] = v11;
  v8[61] = *(v11 - 8);
  v8[62] = swift_task_alloc();
  v12 = sub_24B2D2504();
  v8[63] = v12;
  v8[64] = *(v12 - 8);
  v8[65] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8);
  v8[66] = v13;
  v8[67] = *(v13 - 8);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B152DAC, a4, 0);
}

uint64_t sub_24B152DAC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v0 + 576) = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 257) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B152E40, v2, 0);
}

uint64_t sub_24B152E40()
{
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v0 + 584) = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 258) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B152ED4, 0, 0);
}

uint64_t sub_24B152ED4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[74] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[75] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B152FAC;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[42];
    v5 = sub_24B15303C;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B152FAC()
{
  v1 = *(v0 + 258);
  v2 = *(v0 + 257);

  sub_24B13C208(v2 & v1 & 1);

  v3 = *(v0 + 336);

  return MEMORY[0x2822009F8](sub_24B15303C, v3, 0);
}

uint64_t sub_24B15303C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 336);
  v11 = *(v0 + 344);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  *(v0 + 260) = *MEMORY[0x277D85778];
  v8 = *(v5 + 104);
  *(v0 + 608) = v8;
  *(v0 + 616) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v4);
  sub_24B2D5744();

  v9 = *(v3 + 8);
  *(v0 + 624) = v9;
  *(v0 + 632) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);

  return MEMORY[0x2822009F8](sub_24B153188, v11, 0);
}

uint64_t sub_24B153188()
{
  v11 = *(v0 + 624);
  v1 = *(v0 + 608);
  v2 = *(v0 + 260);
  v3 = *(v0 + 520);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v9 = *(v0 + 504);
  v10 = *(v0 + 360);
  v6 = *(v0 + 344);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B1532AC, v10, 0);
}

uint64_t sub_24B1532AC()
{
  v11 = *(v0 + 624);
  v1 = *(v0 + 608);
  v2 = *(v0 + 260);
  v3 = *(v0 + 520);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 360);
  v9 = *(v0 + 504);
  v10 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v11(v3, v9);

  return MEMORY[0x2822009F8](sub_24B1533CC, v10, 0);
}

uint64_t sub_24B1533CC()
{
  v10 = *(v0 + 624);
  v1 = *(v0 + 608);
  v2 = *(v0 + 260);
  v3 = *(v0 + 520);
  v4 = *(v0 + 496);
  v9 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 368);
  sub_24B2D24F4();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v1(v4, v2, v5);
  sub_24B2D5744();

  v10(v3, v9);

  return MEMORY[0x2822009F8](sub_24B1534EC, 0, 0);
}

uint64_t sub_24B1534EC()
{
  v2 = v0[56];
  v1 = v0[57];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8);
  sub_24B2D3134();
  sub_24B2D3134();
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70);
  sub_24AFF8258(v1, &qword_27EFCCD70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78);
  sub_24B2D57D4();
  v0[37] = &unk_285E48D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68);
  sub_24B2D3134();
  v3 = sub_24B2D30C4();
  v0[80] = v3;
  v0[38] = v3;
  v0[81] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[82] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v4 = v0;
  v4[1] = sub_24B15384C;

  return MEMORY[0x282141C10](v0 + 30, v5);
}

uint64_t sub_24B15384C()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_24B153D90;
  }

  else
  {
    v2 = sub_24B153960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B15397C()
{
  v1 = *(v0 + 256);
  if (v1 == 255)
  {
    v11 = *(v0 + 568);
    v12 = *(v0 + 560);
    v13 = *(v0 + 552);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = *(v0 + 472);
    v18 = *(v0 + 432);
    v19 = *(v0 + 416);

    sub_24AFF8258(v19, &qword_27EFCCD60);
    sub_24AFF8258(v18, &qword_27EFCCD68);
    sub_24AFF8258(v17, &qword_27EFCCD78);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 392) + 16))(*(v0 + 400), Strong + qword_27EFCCE60, *(v0 + 384));

      sub_24B138120();
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 328) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 264);
          v10 = (v0 + 272);
          *(v0 + 264) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 280);
          v10 = (v0 + 288);
          *(v0 + 280) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v29 = *(v0 + 392);
        v28 = *(v0 + 400);
        v30 = *(v0 + 384);
        v31 = sub_24AFF321C(v26, v27, (v0 + 328));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "PeopleListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v24 = *(v0 + 392);
        v23 = *(v0 + 400);
        v25 = *(v0 + 384);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 336);

    return MEMORY[0x2822009F8](sub_24B153E1C, v32, 0);
  }
}

uint64_t sub_24B153D90()
{
  *(v0 + 312) = *(v0 + 664);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B153E1C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336) + *(v0 + 576);
  *(v0 + 259) = *(v2 + 16);
  *(v0 + 672) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B153EA0, v1, 0);
}

uint64_t sub_24B153EA0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344) + *(v0 + 584);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B153F3C, v1, 0);
}

uint64_t sub_24B153F3C()
{
  sub_24B008890(v0[46] + v0[81], v0[47], &qword_27EFCC880);

  return MEMORY[0x2822009F8](sub_24B153FBC, 0, 0);
}

uint64_t sub_24B153FBC()
{
  v1 = v0[47];
  v2 = v0[45];
  v0[40] = v0[84];
  v3 = swift_task_alloc();
  v0[85] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[86] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF20);
  v6 = type metadata accessor for ListPersonInfo();
  v7 = sub_24B039184(qword_27EFCCF28, &qword_27EFCCF20);
  *v4 = v0;
  v4[1] = sub_24B154108;

  return MEMORY[0x28215ED58](&unk_24B2ED258, v3, v5, v6, v7);
}

void sub_24B154108(uint64_t a1)
{
  *(*v2 + 696) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B154254, 0, 0);
  }
}

uint64_t sub_24B154254()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 704) = Strong;
  if (Strong)
  {
    *(v0 + 720) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 712) = sub_24B2D5684();
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B1543C8, v3, v2);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCCF18);
    sub_24AFF8258(*(v0 + 376), &qword_27EFCC880);
    v4 = swift_task_alloc();
    *(v0 + 656) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
    *v4 = v0;
    v4[1] = sub_24B15384C;

    return MEMORY[0x282141C10](v0 + 240, v5);
  }
}

uint64_t sub_24B1543C8()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 696);
  v3 = *(v0 + 259);

  sub_24B155A0C(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCCF18);

  return MEMORY[0x2822009F8](sub_24B154484, 0, 0);
}

uint64_t sub_24B154484()
{
  sub_24AFF8258(*(v0 + 376), &qword_27EFCC880);
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98);
  *v1 = v0;
  v1[1] = sub_24B15384C;

  return MEMORY[0x282141C10](v0 + 240, v2);
}

uint64_t sub_24B154550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC600);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = sub_24B2D1524();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_24B2D1544();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCB0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v8 = type metadata accessor for ListPersonInfo();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for ContactsProvider.Subscription(0);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = sub_24B2D1494();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v10 = sub_24B2D1574();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = _s11PersonStateV6ResultOMa(0);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF10);
  v5[44] = swift_task_alloc();
  v11 = sub_24B2D1794();
  v5[45] = v11;
  v5[46] = *(v11 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B154A8C, 0, 0);
}

uint64_t sub_24B154A8C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[40];
  sub_24B008890(v0[3], v1, &qword_27EFCCF10);
  v4 = v1 + *(v2 + 48);
  v5 = type metadata accessor for PeopleProvider.PersonState(0);
  sub_24B15806C(v4 + *(v5 + 20), v3, _s11PersonStateV6ResultOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[46] + 32))(v0[41], v0[40], v0[45]);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[45];
  v8 = v0[46];
  v10 = v0[41];
  v9 = v0[42];
  (*(v8 + 56))(v10, v6, 1, v7);
  sub_24B0391CC(v10, v9, &qword_27EFCB018);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = v0[44];
    v12 = v0[33];
    v13 = v0[34];
    sub_24AFF8258(v0[42], &qword_27EFCB018);
    sub_24B15800C(v4, type metadata accessor for PeopleProvider.PersonState);
    (*(v13 + 8))(v11, v12);
    (*(v0[22] + 56))(v0[2], 1, 1, v0[21]);

    v14 = v0[1];

    return v14();
  }

  v16 = v0[44];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[4];
  (*(v0[46] + 32))(v0[48], v0[42], v0[45]);
  sub_24B15800C(v4, type metadata accessor for PeopleProvider.PersonState);
  v20 = *(v17 + 8);
  v20(v16, v18);
  v21 = *(v19 + 24);
  _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
  if (!*(v21 + 16))
  {
    v23 = v0[38];
    v31 = v0[35];
    v32 = v0[33];
LABEL_13:
    v20(v31, v32);
    v33 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
    (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
    goto LABEL_14;
  }

  v22 = sub_24B18146C(v0[35]);
  v23 = v0[38];
  v24 = v0[35];
  v25 = v0[33];
  if ((v26 & 1) == 0)
  {
    v31 = v0[35];
    v32 = v0[33];
    goto LABEL_13;
  }

  v27 = v22;
  v28 = *(v21 + 56);
  v29 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v30 = *(v29 - 8);
  sub_24B15806C(v28 + *(v30 + 72) * v27, v23, type metadata accessor for PeopleLocationsProvider.LocationState);
  v20(v24, v25);
  (*(v30 + 56))(v23, 0, 1, v29);
LABEL_14:
  v34 = v0[47];
  v35 = v0[48];
  v36 = v0[45];
  v37 = v0[46];
  v38 = *(v37 + 16);
  v0[49] = v38;
  v0[50] = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v34, v35, v36);
  v39 = sub_24B2D1604();
  if (v40)
  {
    v41 = v0[28];
    *v41 = v39;
    v41[1] = v40;
  }

  else
  {
    v42 = v0[28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
    sub_24B2D14D4();
    v43 = sub_24B2D14C4();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_24B2D1724();
  }

  swift_storeEnumTagMultiPayload();
  v44 = v0[5];
  sub_24B157FA4(v0[28], v0[29], type metadata accessor for ContactsProvider.Subscription);

  return MEMORY[0x2822009F8](sub_24B15508C, v44, 0);
}

uint64_t sub_24B15508C()
{
  v1 = *(v0 + 232);
  sub_24B17CC44(v1, *(v0 + 256));
  sub_24B15800C(v1, type metadata accessor for ContactsProvider.Subscription);

  return MEMORY[0x2822009F8](sub_24B15511C, 0, 0);
}

uint64_t sub_24B15511C()
{
  v1 = v0[47];
  v62 = v0[45];
  v64 = v0[49];
  v2 = v0[31];
  v69 = v0[32];
  v66 = v0[30];
  v3 = v0[26];
  v4 = v0[23];
  v60 = v0[21];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[12];
  v71 = v0[14];
  v73 = v0[11];
  v9 = v0[6];
  sub_24B008890(v0[38], v0[37], &qword_27EFCCCA8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  sub_24B008890(v9 + *(v10 + 48), v3, &qword_27EFCE590);
  v64(v4, v1, v62);
  (*(v2 + 16))(v4 + *(v60 + 20), v69, v66);
  sub_24B2D1554();
  sub_24B2D1534();
  (*(v6 + 8))(v5, v71);
  LOBYTE(v1) = sub_24B2D1514();
  (*(v8 + 8))(v7, v73);
  if ((v1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v11 = v0[36];
  sub_24B008890(v0[37], v11, &qword_27EFCCCA8);
  v12 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  v14 = v0[36];
  if (v13 == 1)
  {
    sub_24AFF8258(v14, &qword_27EFCCCA8);
LABEL_4:
    v15 = 1;
    goto LABEL_6;
  }

  v16 = *(v12 + 20);
  v17 = v0[36];
  sub_24B15806C(v14 + v16, v0[20], type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  sub_24B15800C(v17, type metadata accessor for PeopleLocationsProvider.LocationState);
  v15 = 0;
LABEL_6:
  v19 = v0[19];
  v18 = v0[20];
  v20 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v18, v15, 1, v20);
  sub_24B008890(v18, v19, &qword_27EFCCCB0);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v24 = v0[19];
  if (v23 == 1)
  {
    sub_24AFF8258(v24, &qword_27EFCCCB0);
    v25 = 0;
  }

  else
  {
    v25 = *v24;
    sub_24B15800C(v24, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v26 = v0[20];
  v27 = v0[18];
  *(v0[23] + *(v0[21] + 24)) = v25;
  sub_24B008890(v26, v27, &qword_27EFCCCB0);
  v28 = v22(v27, 1, v20);
  v29 = v0[18];
  v30 = v0[10];
  if (v28 == 1)
  {
    sub_24AFF8258(v0[18], &qword_27EFCCCB0);
    v31 = sub_24B2D1944();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  }

  else
  {
    sub_24B008890(v29 + *(v20 + 20), v0[10], &qword_27EFCB288);
    sub_24B15800C(v29, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  }

  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[20];
  v35 = v0[17];
  sub_24B0391CC(v0[10], v0[23] + *(v0[21] + 28), &qword_27EFCB288);
  sub_24B008890(v32, v33, &qword_27EFCE590);
  sub_24B008890(v34, v35, &qword_27EFCCCB0);
  v36 = v22(v35, 1, v20);
  v37 = v0[17];
  if (v36 == 1)
  {
    v38 = &qword_27EFCCCB0;
LABEL_16:
    sub_24AFF8258(v37, v38);
    v44 = 1;
    goto LABEL_18;
  }

  v39 = v0[9];
  v40 = *(v20 + 20);
  v41 = v0[17];
  sub_24B008890(v37 + v40, v39, &qword_27EFCB288);
  sub_24B15800C(v41, type metadata accessor for PeopleLocationsProvider.LocationState.Result);
  v42 = sub_24B2D1944();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v39, 1, v42) == 1)
  {
    v37 = v0[9];
    v38 = &qword_27EFCB288;
    goto LABEL_16;
  }

  v45 = v0[9];
  sub_24B2D18B4();
  (*(v43 + 8))(v45, v42);
  v44 = 0;
LABEL_18:
  v72 = v0[48];
  v46 = v0[46];
  v63 = v0[45];
  v65 = v0[47];
  v67 = v0[38];
  v47 = v0[31];
  v61 = v0[32];
  v58 = v0[37];
  v59 = v0[30];
  v48 = v0[26];
  v49 = v0[24];
  v50 = v0[20];
  v68 = v0[21];
  v70 = v0[23];
  v51 = v0[7];
  v52 = v0[8];
  v74 = v0[2];
  v53 = sub_24B2D1C44();
  (*(*(v53 - 8) + 56))(v49, v44, 1, v53);
  v54 = sub_24B2D17E4();
  (*(*(v54 - 8) + 56))(v51, 1, 1, v54);
  sub_24B2D17F4();
  sub_24AFF8258(v50, &qword_27EFCCCB0);
  sub_24AFF8258(v48, &qword_27EFCE590);
  sub_24AFF8258(v58, &qword_27EFCCCA8);
  (*(v47 + 8))(v61, v59);
  v55 = *(v46 + 8);
  v55(v65, v63);
  sub_24AFF8258(v67, &qword_27EFCCCA8);
  v55(v72, v63);
  sub_24B0391CC(v52, v70 + *(v68 + 32), &qword_27EFCB278);
  sub_24B157FA4(v70, v74, type metadata accessor for ListPersonInfo);
  (*(v0[22] + 56))(v0[2], 0, 1, v0[21]);

  v56 = v0[1];

  return v56();
}

uint64_t sub_24B155A0C(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v89) = a3;
  v87 = a1;
  v86 = *v3;
  v6 = v86;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v77 - v8;
  v10 = type metadata accessor for ListPersonInfo();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10);
  v90 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v14 - 8);
  v78 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v80 = &v77 - v19;
  v20 = *(v6 + 10);
  v21 = *(v6 + 11);
  v22 = type metadata accessor for PeopleListController.State();
  v83 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v81 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = &v77 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - v27;
  v95 = v20;
  v96 = v21;
  swift_getKeyPath();
  sub_24B150EAC();

  v97 = v3;
  v84 = v20;
  v93 = v20;
  v94 = v21;
  v85 = v21;
  v29 = v89;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_24B2D25A4();

  swift_beginAccess();
  sub_24B1586E0(v87, a2, v29, v22);
  swift_endAccess();
  result = sub_24B1512A8();
  if ((a2 & 1) == 0)
  {
LABEL_4:
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  PeopleListController.state.getter(v28);
  v31 = sub_24B157F60(&qword_27EFCCEE8);
  v32 = sub_24B157F60(&qword_27EFCCEF0);
  v33 = sub_24B157F60(&qword_27EFCCEF8);
  v34 = sub_24B157F60(&qword_27EFCCF00);
  v35 = sub_24B157F60(&qword_27EFCCF08);
  v97 = v92;
  v98 = v84;
  v99 = v31;
  v100 = v32;
  v101 = v33;
  v102 = v34;
  v103 = v35;
  v104 = v85;
  v36 = sub_24B2D19E4();
  v37 = sub_24B2D19A4();
  (*(*(v36 - 8) + 8))(v28, v36);
  sub_24B156670(v37);

  v38 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v39 = type metadata accessor for DataControllerSessionMetrics();
  if ((*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    result = swift_endAccess();
    goto LABEL_4;
  }

  v87 = v22;
  PeopleListController.state.getter(v82);
  v86 = *(sub_24B2D19A4() + 16);

  v60 = *(v39 + 40);
  v61 = v80;
  sub_24B008890(&v38[v60], v80, &qword_27EFC8450);
  v62 = sub_24B2D24A4();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 48))(v61, 1, v62);
  sub_24AFF8258(v61, &qword_27EFC8450);
  if (v64 == 1)
  {
    v65 = v79;
    sub_24B2D2494();
    (*(v63 + 56))(v65, 0, 1, v62);
    sub_24B068E10(v65, &v38[v60], &qword_27EFC8450);
    v66 = &v38[*(v39 + 44)];
    *v66 = v86;
    v66[8] = 0;
  }

  swift_endAccess();
  v22 = v87;
  result = (*(v83 + 8))(v82, v87);
  if ((v89 & 1) == 0)
  {
    return result;
  }

LABEL_5:
  v40 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v41 = type metadata accessor for DataControllerSessionMetrics();
  if ((*(*(v41 - 8) + 48))(v40, 1, v41))
  {
    return swift_endAccess();
  }

  v82 = v41;
  v86 = v40;
  v42 = v22;
  v43 = v81;
  PeopleListController.state.getter(v81);
  v44 = sub_24B157F60(&qword_27EFCCEE8);
  v45 = sub_24B157F60(&qword_27EFCCEF0);
  v46 = sub_24B157F60(&qword_27EFCCEF8);
  v47 = sub_24B157F60(&qword_27EFCCF00);
  v48 = sub_24B157F60(&qword_27EFCCF08);
  v97 = v92;
  v98 = v84;
  v99 = v44;
  v100 = v45;
  v101 = v46;
  v102 = v47;
  v103 = v48;
  v104 = v85;
  sub_24B2D19E4();
  v49 = sub_24B2D19A4();
  result = (*(v83 + 8))(v43, v42);
  v89 = *(v49 + 16);
  if (!v89)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_22:

    v67 = v51[2];

    v68 = v82;
    v69 = *(v82 + 48);
    v70 = v86;
    v71 = v78;
    sub_24B008890(&v86[v69], v78, &qword_27EFC8450);
    v72 = sub_24B2D24A4();
    v73 = *(v72 - 8);
    v74 = (*(v73 + 48))(v71, 1, v72);
    sub_24AFF8258(v71, &qword_27EFC8450);
    if (v74 == 1)
    {
      v75 = v79;
      sub_24B2D2494();
      (*(v73 + 56))(v75, 0, 1, v72);
      sub_24B068E10(v75, &v70[v69], &qword_27EFC8450);
      v76 = &v70[*(v68 + 52)];
      *v76 = v67;
      v76[8] = 0;
    }

    return swift_endAccess();
  }

  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v87 = v9;
  v52 = v88;
  while (v50 < *(v49 + 16))
  {
    v53 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v54 = *(v91 + 72);
    sub_24B15806C(v49 + v53 + v54 * v50, v52, type metadata accessor for ListPersonInfo);
    sub_24B008890(v52 + *(v92 + 28), v9, &qword_27EFCB288);
    v55 = sub_24B2D1944();
    v56 = (*(*(v55 - 8) + 48))(v9, 1, v55);
    sub_24AFF8258(v9, &qword_27EFCB288);
    if (v56 == 1)
    {
      result = sub_24B15800C(v52, type metadata accessor for ListPersonInfo);
    }

    else
    {
      sub_24B157FA4(v52, v90, type metadata accessor for ListPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007738(0, v51[2] + 1, 1);
        v51 = v97;
      }

      v59 = v51[2];
      v58 = v51[3];
      if (v59 >= v58 >> 1)
      {
        sub_24B007738(v58 > 1, v59 + 1, 1);
        v51 = v97;
      }

      v51[2] = v59 + 1;
      result = sub_24B157FA4(v90, v51 + v53 + v59 * v54, type metadata accessor for ListPersonInfo);
      v9 = v87;
      v52 = v88;
    }

    if (v89 == ++v50)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1565E0()
{
  *(v0 + *(*v0 + 136)) = 0;
  if (*(v0 + *(*v0 + 144)))
  {

    sub_24B2D5764();
  }

  return sub_24B1525B0();
}

char *sub_24B156670(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v115 = *(v2 - 8);
  v116 = v2;
  MEMORY[0x28223BE20](v2);
  v117 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24B2D1524();
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24B2D1544();
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactsProvider.Subscription(0);
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6);
  v120 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v108 = &v102 - v9;
  MEMORY[0x28223BE20](v10);
  v119 = (&v102 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v102 - v13;
  v15 = sub_24B2D1794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v124 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v102 - v19;
  MEMORY[0x28223BE20](v20);
  v107 = &v102 - v21;
  MEMORY[0x28223BE20](v22);
  v105 = &v102 - v23;
  MEMORY[0x28223BE20](v24);
  v125 = &v102 - v25;
  MEMORY[0x28223BE20](v26);
  v118 = &v102 - v27;
  v28 = type metadata accessor for ListPersonInfo() - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  v128 = v15;
  v126 = v16;
  if (v32)
  {
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = *(v29 + 72);
    v123 = (v16 + 16);
    v35 = (v16 + 56);
    v36 = (v16 + 48);
    v37 = (v16 + 32);
    v127 = MEMORY[0x277D84F90];
    v109 = v34;
    do
    {
      sub_24B15806C(v33, v31, type metadata accessor for ListPersonInfo);
      (*v123)(v14, v31, v15);
      (*v35)(v14, 0, 1, v15);
      sub_24B15800C(v31, type metadata accessor for ListPersonInfo);
      if ((*v36)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCB018);
      }

      else
      {
        v38 = *v37;
        v39 = v118;
        (*v37)(v118, v14, v15);
        v38(v125, v39, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v127;
        }

        else
        {
          v40 = sub_24B006934(0, v127[2] + 1, 1, v127);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24B006934(v41 > 1, v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v16 = v126;
        v43 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v127 = v40;
        v44 = v40 + v43 + *(v126 + 72) * v42;
        v15 = v128;
        v38(v44, v125, v128);
        v34 = v109;
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v45 = v106;
  v46 = (v106 + *(*v106 + 152));
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {

    v47(v127);
    sub_24AFD5890(v47);
  }

  if (*(v45 + *(*v45 + 136)) != 1)
  {
  }

  v48 = v45[6];
  v49 = v127;
  v50 = v127[2];
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v109 = v45[6];
    v129 = MEMORY[0x277D84F90];
    sub_24B007804(0, v50, 0);
    v51 = v129;
    v53 = *(v16 + 16);
    v52 = (v16 + 16);
    v123 = v53;
    v54 = v49 + ((v52[64] + 32) & ~v52[64]);
    v118 = *(v52 + 7);
    v125 = v52;
    v55 = (v52 - 8);
    v56 = v108;
    v57 = v105;
    do
    {
      (v123)(v57, v54, v15);
      v58 = sub_24B2D1604();
      if (v59)
      {
        v60 = v120;
        *v120 = v58;
        *(v60 + 8) = v59;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
        v61 = v120;
        sub_24B2D14D4();
        v62 = sub_24B2D14C4();
        (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
        sub_24B2D1724();
        v60 = v61;
        v56 = v108;
      }

      swift_storeEnumTagMultiPayload();
      sub_24B157FA4(v60, v56, type metadata accessor for ContactsProvider.Subscription);
      v63 = v119;
      sub_24B157FA4(v56, v119, type metadata accessor for ContactsProvider.Subscription);
      (*v55)(v57, v15);
      v129 = v51;
      v65 = *(v51 + 16);
      v64 = *(v51 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_24B007804(v64 > 1, v65 + 1, 1);
        v57 = v105;
        v51 = v129;
      }

      *(v51 + 16) = v65 + 1;
      sub_24B157FA4(v63, v51 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v65, type metadata accessor for ContactsProvider.Subscription);
      v54 = &v118[v54];
      --v50;
      v15 = v128;
    }

    while (v50);
    v45 = v106;
    v16 = v126;
    v48 = v109;
  }

  v67 = sub_24B1D032C(v51);

  v69 = v45[2];
  v68 = v45[3];
  v70 = swift_allocObject();
  v70[2] = v48;
  v70[3] = v67;
  v70[4] = v69;
  v70[5] = v68;

  sub_24B2D12C4();

  result = v127;
  v71 = MEMORY[0x277D84F90];
  v125 = v127[2];
  if (v125)
  {
    v72 = 0;
    v123 = (v16 + 16);
    v122 = (v104 + 8);
    v119 = (v16 + 8);
    v120 = (v16 + 32);
    v121 = v103 + 8;
    v73 = v107;
    v74 = v111;
    while (v72 < *(result + 2))
    {
      v75 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v76 = *(v16 + 72);
      v77 = *(v16 + 16);
      v78 = v128;
      v77(v73, &result[v75 + v76 * v72], v128);
      sub_24B2D1554();
      v79 = v113;
      sub_24B2D1534();
      v80 = sub_24B2D1514();
      (*v122)(v79, v114);
      (*v121)(v74, v112);
      if (v80)
      {
        v81 = *v120;
        (*v120)(v110, v73, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B0077C0(0, *(v71 + 16) + 1, 1);
          v73 = v107;
          v71 = v129;
        }

        v84 = *(v71 + 16);
        v83 = *(v71 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_24B0077C0(v83 > 1, v84 + 1, 1);
          v73 = v107;
          v71 = v129;
        }

        *(v71 + 16) = v84 + 1;
        v81((v71 + v75 + v84 * v76), v110, v128);
      }

      else
      {
        (*v119)(v73, v78);
      }

      ++v72;
      v16 = v126;
      result = v127;
      if (v125 == v72)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v85 = *(v71 + 16);
    if (v85)
    {
      v129 = MEMORY[0x277D84F90];
      sub_24B00777C(0, v85, 0);
      sub_24B2D5694();
      v86 = *(v16 + 16);
      v126 = v16 + 16;
      v127 = v86;
      v88 = v128;
      v87 = v129;
      v89 = v71 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v125 = *(v16 + 72);
      v90 = (v16 + 8);
      do
      {
        (v127)(v124, v89, v88);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v91 = v117;
        v92 = v124;
        _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
        v88 = v128;
        (*v90)(v92, v128);

        v93 = v91;
        v91[*(v116 + 20)] = 1;
        v129 = v87;
        v95 = *(v87 + 16);
        v94 = *(v87 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_24B00777C(v94 > 1, v95 + 1, 1);
          v93 = v117;
          v87 = v129;
        }

        *(v87 + 16) = v95 + 1;
        sub_24B157FA4(v93, v87 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v95, type metadata accessor for PeopleLocationsProvider.Subscription);
        v89 += v125;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v96 = v106;
    v97 = v106[5];
    v98 = sub_24B1D04BC(v87);

    v100 = v96[2];
    v99 = v96[3];
    v101 = swift_allocObject();
    v101[2] = v97;
    v101[3] = v98;
    v101[4] = v100;
    v101[5] = v99;

    sub_24B2D12C4();
  }

  return result;
}

Swift::Void __swiftcall PeopleListController.onAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v24);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B152038();
  v10 = v1[4];
  v11 = sub_24B2D1574();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B15806C(v5, v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  v16 = sub_24B13405C(v15);
  swift_setDeallocating();
  sub_24B15800C(v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B15800C(v5, type metadata accessor for PeopleProvider.Subscription);
  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E48D60);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();
}

Swift::Void __swiftcall PeopleListController.onDisappear()()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v22);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PeopleListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  sub_24B1565E0();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();

  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = v19;

  sub_24B2D12C4();
}

uint64_t sub_24B157AC0()
{
  swift_getKeyPath();
  sub_24B151028();
}

uint64_t sub_24B157B68()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B132AD8(v2, v3, v5, v4);
}

void sub_24B157C14()
{
  sub_24B2D24A4();
  if (v0 <= 0x3F)
  {
    sub_24B2D3184();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeopleListController.State();
      if (v2 <= 0x3F)
      {
        sub_24B1407CC();
        if (v3 <= 0x3F)
        {
          sub_24B2D25C4();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_24B157E08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B2974E8(v2, v3, v5, v4);
}

uint64_t sub_24B157EB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B297434(v2, v3, v5, v4);
}

uint64_t sub_24B157F60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ListPersonInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B157FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B15800C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B15806C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1580D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFD370;

  return sub_24B152A58(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24B1581C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AFFD370;

  return sub_24B154550(a1, a2, v6, v7, v8);
}

uint64_t PeopleListController.Dependencies.peopleProvider.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PeopleListController.Dependencies.peopleLocationsProvider.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PeopleListController.Dependencies.contactsProvider.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PeopleListController.Dependencies.userLocationProvider.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PeopleListController.Dependencies.metricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

__n128 PeopleListController.Dependencies.metricsPublisher.setter(__n128 *a1)
{

  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 PeopleListController.Dependencies.init(peopleProvider:peopleLocationsProvider:contactsProvider:userLocationProvider:metricsPublisher:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

uint64_t sub_24B158464()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B1584A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B1584E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t PeopleListController.State.init(list:info:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  v6 = sub_24B2D19E4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PeopleListController.State();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_24B1586E0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v45 = a3;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v43 - v8;
  v56 = sub_24B2D1524();
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24B2D1544();
  v49 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ListPersonInfo();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = *(a4 + 16);
  v52 = sub_24B157F60(&qword_27EFCCEE8);
  v51 = sub_24B157F60(&qword_27EFCCEF0);
  v19 = sub_24B157F60(&qword_27EFCCEF8);
  v20 = sub_24B157F60(&qword_27EFCCF00);
  v21 = sub_24B157F60(&qword_27EFCCF08);
  v22 = *(a4 + 24);
  v47 = v13;
  v57 = v13;
  v58 = v18;
  v59 = v52;
  v60 = v51;
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = v22;
  v23 = sub_24B2D19E4();
  sub_24B2D1994();
  v24 = *(sub_24B2D19A4() + 16);

  if (v24)
  {
    v44 = a2;
    v51 = a4;
    v52 = v4;
    v43 = v23;
    result = sub_24B2D19A4();
    v26 = result;
    v27 = 0;
    v53 = *(result + 16);
    v28 = (v50 + 8);
    v29 = (v49 + 8);
    do
    {
      if (v53 == v27)
      {

        if (v44)
        {
          v42 = 6;
        }

        else
        {
          v42 = 4;
        }

        a4 = v51;
        v4 = v52;
        goto LABEL_22;
      }

      if (v27 >= *(v26 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v30 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v31 = *(v54 + 72);
      sub_24B1591F4(v26 + v30 + v31 * v27++, v17);
      sub_24B2D1554();
      sub_24B2D1534();
      v32 = sub_24B2D1514();
      (*v28)(v10, v56);
      (*v29)(v12, v55);
      result = sub_24B159258(v17);
    }

    while ((v32 & 1) == 0);

    v4 = v52;
    v33 = sub_24B2D19A4();
    result = v33 + v30;
    v34 = -*(v33 + 16);
    v35 = -1;
    v37 = v47;
    v36 = v48;
    v38 = v46;
    while (v34 + v35 != -1)
    {
      if (++v35 >= *(v33 + 16))
      {
        goto LABEL_24;
      }

      v39 = result + v31;
      sub_24B1591F4(result, v38);
      sub_24B1418C4(v38 + *(v37 + 28), v36);
      v40 = sub_24B2D1944();
      v41 = (*(*(v40 - 8) + 48))(v36, 1, v40);
      sub_24B141934(v36);
      sub_24B159258(v38);
      result = v39;
      if (v41 != 1)
      {

        v42 = 1;
        goto LABEL_21;
      }
    }

    if (v45)
    {
      v42 = 2;
    }

    else
    {
      v42 = 0;
    }

LABEL_21:
    a4 = v51;
  }

  else if (a2)
  {
    v42 = 5;
  }

  else
  {
    v42 = 4;
  }

LABEL_22:
  *(v4 + *(a4 + 36)) = v42;
  return result;
}

uint64_t PeopleListController.State.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  v3 = sub_24B2D19E4();
  return (*(*(v3 - 8) + 16))(a1, v1, v3);
}

uint64_t PeopleListController.State.list.setter(uint64_t a1)
{
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  v3 = sub_24B2D19E4();
  return (*(*(v3 - 8) + 40))(v1, a1, v3);
}

uint64_t PeopleListController.State.Info.Locations.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t sub_24B158FC8()
{
  sub_24B2D60E4();
  PeopleListController.State.Info.Locations.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B159020()
{
  type metadata accessor for ListPersonInfo();
  sub_24B157F60(&qword_27EFCCEE8);
  sub_24B157F60(&qword_27EFCCEF0);
  sub_24B157F60(&qword_27EFCCEF8);
  sub_24B157F60(&qword_27EFCCF00);
  sub_24B157F60(&qword_27EFCCF08);
  result = sub_24B2D19E4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PeopleListController.State.Info();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B1591F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListPersonInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B159258(uint64_t a1)
{
  v2 = type metadata accessor for ListPersonInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Annotation.init(id:title:contact:coordinate:showPulseAnimationEndDate:horizontalAccuracy:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v36 = a4;
  v37 = a7;
  v35 = a3;
  v19 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v34 - v23;
  sub_24B008890(a6, &v34 - v23, &qword_27EFC8450);
  if (a5)
  {
    sub_24B2D14A4();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_24AFF8258(a6, &qword_27EFC8450);
  v26 = sub_24B2D1494();
  (*(*(v26 - 8) + 56))(v21, v25, 1, v26);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for Annotation();
  v28 = v27[7];
  v29 = sub_24B2D24A4();
  (*(*(v29 - 8) + 56))(a8 + v28, 1, 1, v29);
  v30 = v27[10];
  v31 = sub_24B2D1BB4();
  (*(*(v31 - 8) + 56))(a8 + v30, 1, 1, v31);
  *a8 = a1;
  *(a8 + 8) = a2;
  v32 = v36;
  *(a8 + 16) = v35;
  *(a8 + 24) = v32;
  *(a8 + 32) = a9;
  *(a8 + 40) = a10;
  sub_24B068E10(v24, a8 + v28, &qword_27EFC8450);
  *(a8 + v27[8]) = a11;
  sub_24B11AEAC(v21, a8 + v27[9]);
  return sub_24B068E10(v37, a8 + v30, &qword_27EFC8A80);
}

uint64_t Annotation.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Annotation.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Annotation.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Annotation.horizontalAccuracy.setter(double a1)
{
  result = type metadata accessor for Annotation();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Annotation.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Annotation() + 36);

  return sub_24B11BE1C(v3, a1);
}

uint64_t Annotation.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Annotation() + 36);

  return sub_24B159B1C(a1, v3);
}

uint64_t Annotation.init(id:title:coordinate:showPulseAnimationEndDate:horizontalAccuracy:icon:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v21 = type metadata accessor for Annotation();
  v22 = v21[7];
  v23 = sub_24B2D24A4();
  (*(*(v23 - 8) + 56))(a8 + v22, 1, 1, v23);
  v24 = v21[10];
  v25 = sub_24B2D1BB4();
  (*(*(v25 - 8) + 56))(a8 + v24, 1, 1, v25);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a9;
  *(a8 + 40) = a10;
  sub_24B068E10(a5, a8 + v22, &qword_27EFC8450);
  *(a8 + v21[8]) = a11;
  sub_24B11AEAC(a6, a8 + v21[9]);
  return sub_24B068E10(a7, a8 + v24, &qword_27EFC8A80);
}

uint64_t type metadata accessor for Annotation()
{
  result = qword_27EFCD130;
  if (!qword_27EFCD130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B159B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterWithIcon.Icon(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Annotation.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_24B2D24A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_24B2D5404();
  sub_24B2D5404();
  v11 = *(v0 + 32);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v11);
  v12 = *(v0 + 40);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v12);
  v13 = type metadata accessor for Annotation();
  sub_24B008890(v0 + v13[7], v10, &qword_27EFC8450);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24B2D6104();
    sub_24B15A088(&qword_27EFCB108, MEMORY[0x277CC9578]);
    sub_24B2D5254();
    (*(v5 + 8))(v7, v4);
  }

  v14 = *(v0 + v13[8]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x24C23C8F0](*&v14);
  PlatterWithIcon.Icon.hash(into:)();
  sub_24B008890(v0 + v13[10], v3, &qword_27EFC8A80);
  v15 = sub_24B2D1BB4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    return sub_24AFF8258(v3, &qword_27EFC8A80);
  }

  sub_24B2D1B64();
  return (*(v16 + 8))(v3, v15);
}

BOOL static Annotation.== infix(_:_:)()
{
  sub_24B2D60E4();
  Annotation.hash(into:)();
  v0 = sub_24B2D6124();
  sub_24B2D60E4();
  Annotation.hash(into:)();
  return v0 == sub_24B2D6124();
}

uint64_t Annotation.hashValue.getter()
{
  sub_24B2D60E4();
  Annotation.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B159FC0()
{
  sub_24B2D60E4();
  Annotation.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B15A004()
{
  sub_24B2D60E4();
  Annotation.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B15A088(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_24B15A0D0()
{
  sub_24B2D60E4();
  Annotation.hash(into:)();
  v0 = sub_24B2D6124();
  sub_24B2D60E4();
  Annotation.hash(into:)();
  return v0 == sub_24B2D6124();
}

void sub_24B15A174()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_24B15A278(319, &qword_27EFC7B78, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlatterWithIcon.Icon(319);
      if (v2 <= 0x3F)
      {
        sub_24B15A278(319, &qword_27EFCB4C8, MEMORY[0x277D08DA8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B15A278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D5A84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AnnotationContent()
{
  result = qword_27EFCD140;
  if (!qword_27EFCD140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B15A340()
{
  result = type metadata accessor for Annotation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B15A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD178);
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v6;
  v7 = sub_24B2D2F74();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD180);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD188);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_24B2D5694();
  v35 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for AnnotationContent();
  if (*(a1 + *(v20 + 20)) == 1)
  {
    v21 = v20;
    type metadata accessor for Annotation();
    sub_24B2D2F64();
    v40 = *(a1 + *(v21 + 32));
    v22 = v34;
    sub_24B2D2FC4();
    (*(v33 + 8))(v9, v22);
    (*(v11 + 32))(v19, v13, v10);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v19, 1, 1, v10);
  }

  v23 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v23;
  MEMORY[0x28223BE20](v23);
  *(&v32 - 2) = a1;

  sub_24B2D5184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD190);
  sub_24B15AE5C();
  sub_24AFFE0A4();
  v24 = v36;
  sub_24B2D3024();
  sub_24AFE4A48(v19, v16);
  v25 = *(v3 + 16);
  v26 = v37;
  v27 = v39;
  v25(v37, v24, v39);
  v28 = v38;
  sub_24AFE4A48(v16, v38);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1B0);
  v25((v28 + *(v29 + 48)), v26, v27);
  v30 = *(v3 + 8);
  v30(v24, v27);
  sub_24AFF8258(v19, &qword_27EFCD188);
  v30(v26, v27);
  sub_24AFF8258(v16, &qword_27EFCD188);
}

uint64_t sub_24B15A934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for AnnotationContent();
  v5 = *(a1 + *(v4 + 24));
  v6 = *(a1 + *(v4 + 28));
  sub_24B092CB4(a1, a2);
  v7 = type metadata accessor for AnnotationView();
  v8 = a2 + v7[5];
  *v8 = xmmword_24B2E41F0;
  *(v8 + 16) = xmmword_24B2E4200;
  *(v8 + 32) = xmmword_24B2E4210;
  *(v8 + 48) = 0x3FF8000000000000;
  v9 = a2 + v7[6];
  v10 = [objc_opt_self() systemGray2Color];
  sub_24B2D4B94();
  v11 = sub_24B2D34A4();
  *&v18 = sub_24B2D4B04();
  v12 = sub_24B2D34A4();
  *v9 = v11;
  *(v9 + 8) = 0;
  *(v9 + 16) = v12;
  *(v9 + 24) = 0x4010000000000000;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(a2 + v7[7]) = v5;
  *(a2 + v7[8]) = v6;
  v13 = a2 + v7[9];
  sub_24B2D4CC4();
  *v13 = v18;
  *(v13 + 8) = *(&v18 + 1);
  v14 = v7[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA380);
  sub_24B2D4CC4();
  *(a2 + v14) = v18;
  v15 = sub_24B2D50E4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD190);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v6;
  return result;
}

uint64_t sub_24B15AB60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD150);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD158);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD160);
  sub_24B039184(&qword_27EFCD168, &qword_27EFCD160);
  sub_24B2D4BA4();
  v8 = sub_24B15ADA4();
  sub_24B2D2FD4();
  sub_24AFF8258(v3, &qword_27EFCD150);
  v12 = v1;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_24B2D2FE4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B15ADA4()
{
  result = qword_27EFCD170;
  if (!qword_27EFCD170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD150);
    sub_24B039184(&qword_27EFCD168, &qword_27EFCD160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD170);
  }

  return result;
}

unint64_t sub_24B15AE5C()
{
  result = qword_27EFCD198;
  if (!qword_27EFCD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD190);
    sub_24B15AF14();
    sub_24B039184(&qword_27EFCD1A0, &qword_27EFCD1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD198);
  }

  return result;
}

unint64_t sub_24B15AF14()
{
  result = qword_27EFCA378;
  if (!qword_27EFCA378)
  {
    type metadata accessor for AnnotationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA378);
  }

  return result;
}

uint64_t type metadata accessor for AnnotationContentV2()
{
  result = qword_27EFCD1B8;
  if (!qword_27EFCD1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B15AFE0()
{
  result = type metadata accessor for AnnotationV2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B15B094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v40 - v11;
  v12 = sub_24B2D2F74();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD180);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v41 = v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD188);
  MEMORY[0x28223BE20](v17 - 8);
  v46 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = v40 - v20;
  sub_24B2D5694();
  v45 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for AnnotationContentV2();
  if (*(a1 + *(v21 + 20)))
  {
    v22 = v21;
    v23 = type metadata accessor for AnnotationV2();
    v40[0] = v14;
    v40[1] = v23;
    sub_24B2D1BE4();
    sub_24B2D1C04();
    v24 = v42;
    sub_24B2D2F64();
    v49 = *(a1 + *(v22 + 32));
    v25 = v41;
    sub_24B2D2FC4();
    (*(v43 + 8))(v24, v12);
    v26 = v48;
    v27 = v40[0];
    (*(v15 + 32))(v48, v25, v40[0]);
    v28 = 1;
    (*(v15 + 56))(v26, 0, 1, v27);
    v29 = sub_24B2D1BF4();
    v30 = v47;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(v15 + 56))(v48, 1, 1, v14);
    v30 = v47;
  }

  v31 = (a1 + *(type metadata accessor for AnnotationV2() + 20));
  v33 = *v31;
  v32 = v31[1];
  v49 = v33;
  v50 = v32;

  v34 = sub_24B2D1BE4();
  MEMORY[0x28223BE20](v34);
  v40[-2] = a1;
  sub_24B2D5184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD200);
  sub_24B15BB28();
  sub_24AFFE0A4();
  v35 = v44;
  sub_24B2D3024();
  (*(v5 + 32))(v30, v35, v4);
  v28 = 0;
LABEL_8:
  (*(v5 + 56))(v30, v28, 1, v4);
  v36 = v48;
  v37 = v46;
  sub_24AFE4A48(v48, v46);
  sub_24B15BC38(v30, v9);
  sub_24AFE4A48(v37, a2);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD218);
  sub_24B15BC38(v9, a2 + *(v38 + 48));
  sub_24B15BCA8(v30);
  sub_24AFF8258(v36, &qword_27EFCD188);
  sub_24B15BCA8(v9);
  sub_24AFF8258(v37, &qword_27EFCD188);
}

uint64_t sub_24B15B6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B15BD10(a1, a2);
  v4 = type metadata accessor for AnnotationContentV2();
  v5 = *(a1 + *(v4 + 24));
  v6 = *(a1 + *(v4 + 28));
  if (qword_27EFC76F0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27EFCD2C0, sizeof(__dst));
  v7 = type metadata accessor for AnnotationViewV2();
  *(a2 + v7[5]) = v5;
  *(a2 + v7[6]) = v6;
  memcpy((a2 + v7[7]), &qword_27EFCD2C0, 0x120uLL);
  v8 = sub_24B15BD74(__dst, &v12);
  v9 = MEMORY[0x24C23B8B0](v8, 0.5, 0.7, 0.0);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD200);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v6;
  return result;
}

uint64_t sub_24B15B84C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1C8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1D8);
  sub_24B039184(&qword_27EFCD1E0, &qword_27EFCD1D8);
  sub_24B2D4BA4();
  v8 = sub_24B15BA70();
  sub_24B2D2FD4();
  sub_24AFF8258(v3, &qword_27EFCD1C8);
  v12 = v1;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_24B2D2FE4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B15BA70()
{
  result = qword_27EFCD1E8;
  if (!qword_27EFCD1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD1C8);
    sub_24B039184(&qword_27EFCD1E0, &qword_27EFCD1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD1E8);
  }

  return result;
}

unint64_t sub_24B15BB28()
{
  result = qword_27EFCD208;
  if (!qword_27EFCD208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD200);
    sub_24B15BBE0();
    sub_24B039184(&qword_27EFCD1A0, &qword_27EFCD1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD208);
  }

  return result;
}

unint64_t sub_24B15BBE0()
{
  result = qword_27EFCD210;
  if (!qword_27EFCD210)
  {
    type metadata accessor for AnnotationViewV2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD210);
  }

  return result;
}

uint64_t sub_24B15BC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B15BCA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B15BD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationV2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnnotationV2.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1974();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnnotationV2.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnnotationV2() + 20));

  return v1;
}

uint64_t type metadata accessor for AnnotationV2()
{
  result = qword_27EFCD228;
  if (!qword_27EFCD228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnotationV2.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AnnotationV2() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AnnotationV2.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnnotationV2() + 24);

  return sub_24B1102AC(v3, a1);
}

uint64_t AnnotationV2.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AnnotationV2() + 24);

  return sub_24B15BFDC(a1, v3);
}

uint64_t sub_24B15BFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AnnotationV2.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationV2() + 28);
  v4 = sub_24B2D1C44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationV2.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationV2() + 28);
  v4 = sub_24B2D1C44();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationV2.init(id:title:icon:location:showPulseAnimationEndDate:symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for AnnotationV2();
  v16 = v15[8];
  v17 = sub_24B2D24A4();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  v18 = v15[9];
  v19 = sub_24B2D1BB4();
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  v20 = sub_24B2D1974();
  (*(*(v20 - 8) + 32))(a8, a1, v20);
  v21 = (a8 + v15[5]);
  *v21 = a2;
  v21[1] = a3;
  sub_24B15C540(a4, a8 + v15[6]);
  v22 = v15[7];
  v23 = sub_24B2D1C44();
  (*(*(v23 - 8) + 32))(a8 + v22, a5, v23);
  sub_24B068E10(a6, a8 + v16, &qword_27EFC8450);
  return sub_24B068E10(a7, a8 + v18, &qword_27EFC8A80);
}

uint64_t sub_24B15C540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AnnotationV2.shape.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnnotationV2();
  sub_24B1102AC(v1 + *(v6 + 24), v5);
  v7 = 0xEu >> (swift_getEnumCaseMultiPayload() & 0xF);
  result = sub_24B15C65C(v5);
  *a1 = v7 & 1;
  return result;
}

uint64_t sub_24B15C65C(uint64_t a1)
{
  v2 = type metadata accessor for Icon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnotationV2.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_24B2D24A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_24B2D1964();
  v13 = type metadata accessor for AnnotationV2();
  sub_24B2D5404();
  Icon.hash(into:)(a1);
  sub_24B2D1C24();
  sub_24B008890(v1 + *(v13 + 32), v12, &qword_27EFC8450);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_24B2D6104();
    sub_24B15CC1C(&qword_27EFCB108, MEMORY[0x277CC9578]);
    sub_24B2D5254();
    (*(v7 + 8))(v9, v6);
  }

  sub_24B008890(v1 + *(v13 + 36), v5, &qword_27EFC8A80);
  v14 = sub_24B2D1BB4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    return sub_24B0FED48(v5);
  }

  sub_24B2D1B64();
  return (*(v15 + 8))(v5, v14);
}

BOOL static AnnotationV2.== infix(_:_:)()
{
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v2);
  v0 = sub_24B2D6124();
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v2);
  return v0 == sub_24B2D6124();
}

uint64_t AnnotationV2.hashValue.getter()
{
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B15CAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1974();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24B15CB0C()
{
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B15CB50()
{
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B15CC1C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_24B15CC64()
{
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v2);
  v0 = sub_24B2D6124();
  sub_24B2D60E4();
  AnnotationV2.hash(into:)(v2);
  return v0 == sub_24B2D6124();
}

void sub_24B15CD08()
{
  sub_24B2D1974();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Icon(319);
    if (v1 <= 0x3F)
    {
      sub_24B2D1C44();
      if (v2 <= 0x3F)
      {
        sub_24B15A278(319, &qword_27EFC7B78, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_24B15A278(319, &qword_27EFCB4C8, MEMORY[0x277D08DA8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for AnnotationView()
{
  result = qword_27EFCD238;
  if (!qword_27EFCD238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B15CE88()
{
  type metadata accessor for Annotation();
  if (v0 <= 0x3F)
  {
    sub_24B0BA5A4();
    if (v1 <= 0x3F)
    {
      sub_24B15CF48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B15CF48()
{
  if (!qword_27EFCD248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCA380);
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCD248);
    }
  }
}

uint64_t sub_24B15CFAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B15CFCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

double sub_24B15D030@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Annotation();
  sub_24B15F584(v1 + *(v3 + 36), a1, type metadata accessor for PlatterWithIcon.Icon);
  v4 = v1 + *(type metadata accessor for AnnotationView() + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 48);
  v8 = a1 + *(type metadata accessor for PlatterWithIcon(0) + 20);
  *v8 = v5;
  *(v8 + 8) = v6;
  v9 = *(v4 + 32);
  *(v8 + 16) = *(v4 + 16);
  *(v8 + 32) = v9;
  *(v8 + 48) = v7;

  sub_24B2D5064();
  sub_24B2D3494();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B80) + 36));
  v11 = v27[5];
  *v10 = v27[4];
  v10[1] = v11;
  v10[2] = v27[6];
  v12 = sub_24B2D5064();
  v14 = v13;
  sub_24B15D2CC(v1, &v32);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  *&v31 = v12;
  *(&v31 + 1) = v14;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD2A8) + 36));
  v19 = v29;
  *v18 = v28;
  v18[1] = v19;
  v20 = v31;
  v18[2] = v30;
  v18[3] = v20;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v12;
  v36 = v14;
  sub_24B008890(&v28, v27, &qword_27EFCC430);
  sub_24AFF8258(&v32, &qword_27EFCC430);
  v21 = *(v3 + 40);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD2B0) + 36);
  sub_24B008890(v1 + v21, v22, &qword_27EFC8A80);
  v23 = type metadata accessor for BadgeViewModifier();
  v24 = v22 + *(v23 + 24);
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v22 + *(v23 + 20);
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v25 + 10) = 1;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0x80;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0;
  result = 0.25;
  *(v25 + 88) = xmmword_24B2E8DF0;
  return result;
}

double sub_24B15D2CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() systemGreenColor];
  v5 = sub_24B2D4B94();
  v6 = type metadata accessor for AnnotationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CD4();
  v7 = 24;
  if (v15)
  {
    v7 = 32;
  }

  v8 = *(a1 + *(v6 + 20) + v7);
  sub_24B2D5184();
  v10 = v9;
  v12 = v11;
  sub_24B2D4CD4();

  v13 = 8;
  if (v15)
  {
    v13 = 16;
  }

  result = *(a1 + *(v6 + 20) + v13);
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24B15D470()
{
  sub_24B15F530();
  result = sub_24B2D3CE4();
  qword_27EFE4548 = result;
  return result;
}

uint64_t sub_24B15D4A0@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for AnnotationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD250);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  *v10 = sub_24B2D3DF4();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD258);
  sub_24B15D800(v1, &v10[*(v11 + 44)]);
  sub_24B2D3DF4();
  if (qword_27EFC76E0 != -1)
  {
    swift_once();
  }

  sub_24B2D3494();
  v12 = &v10[*(v8 + 36)];
  v13 = v22;
  *(v12 + 1) = v21;
  *(v12 + 2) = v13;
  *v12 = v20;
  if (*(v1 + *(v2 + 28)) == 1)
  {
    v14 = type metadata accessor for Annotation();
    sub_24B008890(v1 + *(v14 + 28), v7, &qword_27EFC8450);
  }

  else
  {
    v15 = sub_24B2D24A4();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_24B15F584(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnnotationView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_24B15ED9C(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_24B15EE80();
  sub_24B15EF70();
  sub_24B2D49B4();

  sub_24AFF8258(v7, &qword_27EFC8450);
  return sub_24AFF8258(v10, &qword_27EFCD250);
}

uint64_t sub_24B15D800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD290);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  sub_24B2D5694();
  v37 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B15D030(v8);
  *&v8[*(v3 + 36)] = 0x3FF0000000000000;
  v9 = type metadata accessor for AnnotationView();
  v39 = 0;
  v38 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (*(a1 + *(v9 + 32)) == 1)
  {
    v39 = *(a1 + *(v9 + 24) + 16);
    if (!v39)
    {
      v46[0] = sub_24B2D4A94();
      v39 = sub_24B2D34A4();
    }

    sub_24B2D5064();
    sub_24B2D3494();
    v10 = v46[12];
    v38 = v46[11];
    v11 = v47;
    v12 = v48;
    v13 = v49;
    v14 = v50;
    if (qword_27EFC76E0 != -1)
    {
      v29 = v47;
      v30 = v50;
      swift_once();
      v14 = v30;
      v11 = v29;
    }

    v15 = qword_27EFE4548;
    v16 = sub_24B075808;
    v17 = 256;
  }

  v31 = v12;
  v18 = v8;
  v35 = v8;
  v19 = v11;
  v32 = v11;
  v33 = v13;
  v20 = v14;
  v34 = v17;
  sub_24B008890(v18, v5, &qword_27EFCD290);
  v21 = v36;
  sub_24B008890(v5, v36, &qword_27EFCD290);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD298) + 48);
  v23 = v39;
  *&v40 = v39;
  *(&v40 + 1) = v17;
  v24 = v38;
  *&v41 = v38;
  *(&v41 + 1) = v10;
  *&v42 = v19;
  v25 = v31;
  *(&v42 + 1) = v31;
  *&v43 = v13;
  *(&v43 + 1) = v20;
  *&v44 = v15;
  *(&v44 + 1) = v16;
  v45 = 0;
  *(v22 + 80) = 0;
  v26 = v41;
  *v22 = v40;
  *(v22 + 16) = v26;
  v27 = v43;
  *(v22 + 32) = v42;
  *(v22 + 48) = v27;
  *(v22 + 64) = v44;
  sub_24B008890(&v40, v46, &qword_27EFCD2A0);
  sub_24AFF8258(v35, &qword_27EFCD290);
  v46[0] = v23;
  v46[1] = v34;
  v46[2] = v24;
  v46[3] = v10;
  v46[4] = v32;
  v46[5] = v25;
  v46[6] = v33;
  v46[7] = v20;
  v46[8] = v15;
  v46[9] = v16;
  v46[10] = 0;
  sub_24AFF8258(v46, &qword_27EFCD2A0);
  sub_24AFF8258(v5, &qword_27EFCD290);
}

uint64_t sub_24B15DC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v38 = a2;
  v3 = type metadata accessor for AnnotationView();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = v4;
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = &v30 - v15;
  sub_24B2D5694();
  v39 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = (v40 + *(v3 + 40));
  v17 = *v16;
  v18 = v16[1];
  v42 = *v16;
  v43 = v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD280);
  sub_24B2D4CD4();
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
    sub_24B2D5764();
  }

  sub_24B008890(v38, v10, &qword_27EFC8450);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24AFF8258(v10, &qword_27EFC8450);
  }

  else
  {
    v31 = *(v12 + 32);
    v38 = v17;
    v19 = v37;
    v31(v37, v10, v11);
    v20 = sub_24B2D56D4();
    v21 = v34;
    (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
    v22 = *(v12 + 16);
    v30 = v18;
    v23 = v33;
    v22(v33, v19, v11);
    sub_24B15F584(v40, v5, type metadata accessor for AnnotationView);
    v24 = sub_24B2D5684();
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = (v13 + *(v35 + 80) + v25) & ~*(v35 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = MEMORY[0x277D85700];
    v31((v27 + v25), v23, v11);
    sub_24B15ED9C(v5, v27 + v26);
    v28 = sub_24B01DD34(0, 0, v21, &unk_24B2ED838, v27);
    v42 = v38;
    v43 = v30;
    v41 = v28;
    sub_24B2D4CE4();
    (*(v12 + 8))(v37, v11);
  }
}

uint64_t sub_24B15E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_24B2D4154();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for AnnotationView();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v9 = sub_24B2D5D54();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v11 = sub_24B2D24A4();
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  sub_24B2D5694();
  v5[26] = sub_24B2D5684();
  v13 = sub_24B2D5604();
  v5[27] = v13;
  v5[28] = v12;

  return MEMORY[0x2822009F8](sub_24B15E390, v13, v12);
}

uint64_t sub_24B15E390()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_24B2D2494();
  v4 = sub_24B2D23D4();
  v5 = *(v2 + 8);
  *(v0 + 232) = v5;
  v5(v1, v3);
  if (v4)
  {
    *(v0 + 240) = *(*(v0 + 64) + *(*(v0 + 96) + 20) + 40);
    v6 = sub_24B2D62A4();
    v8 = v7;
    sub_24B2D6084();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_24B15E510, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B15E510()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_24B15F174(&qword_27EFC8640, MEMORY[0x277D85928]);
  sub_24B2D6064();
  sub_24B15F174(&qword_27EFC8648, MEMORY[0x277D858F8]);
  sub_24B2D5D74();
  v5 = *(v2 + 8);
  v0[31] = v5;
  v0[32] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_24B15E694;
  v8 = v0[19];
  v7 = v0[20];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

uint64_t sub_24B15E694()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 152), *(v2 + 128));
    v3 = sub_24B15EAA4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 168);
    v6 = *(v2 + 176);
    v8 = *(v2 + 160);
    (*(v2 + 248))(*(v2 + 152), *(v2 + 128));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 216);
    v5 = *(v2 + 224);
    v3 = sub_24B15E7F4;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24B15E7F4()
{
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = *(v0 + 232);
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v13 = *(v0 + 72);
  sub_24B2D50C4();
  *(swift_task_alloc() + 16) = v5;
  sub_24B15F584(v5, v1, type metadata accessor for AnnotationView);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_24B15ED9C(v1, v7 + v6);
  sub_24B2D4144();
  sub_24B2D35B4();

  (*(v3 + 8))(v4, v13);

  sub_24B2D2494();
  LOBYTE(v5) = sub_24B2D23D4();
  v16(v14, v15);
  if (v5)
  {
    *(v0 + 240) = *(*(v0 + 64) + *(*(v0 + 96) + 20) + 40);
    v8 = sub_24B2D62A4();
    v10 = v9;
    sub_24B2D6084();
    *(v0 + 40) = v8;
    *(v0 + 48) = v10;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_24B15E510, 0, 0);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24B15EAA4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_24B15EB18, v1, v2);
}

uint64_t sub_24B15EB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B15EBCC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AnnotationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

uint64_t sub_24B15ECBC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AnnotationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

uint64_t sub_24B15ED9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B15EE00(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AnnotationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24B15DC30(a1, a2, v6);
}

unint64_t sub_24B15EE80()
{
  result = qword_27EFCD260;
  if (!qword_27EFCD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD250);
    sub_24B15EF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD260);
  }

  return result;
}

unint64_t sub_24B15EF0C()
{
  result = qword_27EFCD268;
  if (!qword_27EFCD268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD268);
  }

  return result;
}

unint64_t sub_24B15EF70()
{
  result = qword_27EFCD278;
  if (!qword_27EFCD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8450);
    sub_24B15F174(&qword_27EFC88B0, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD278);
  }

  return result;
}

uint64_t sub_24B15F024(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B2D24A4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AnnotationView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B15E118(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24B15F174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_19()
{
  v1 = *(type metadata accessor for AnnotationView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for Annotation();
  v7 = v6[7];
  v8 = sub_24B2D24A4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v5 + v6[9];
  type metadata accessor for PlatterWithIcon.Icon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v10 + 8))
      {
      }

      break;
    case 1:

      break;
    case 0:
      v12 = sub_24B2D1494();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v10, 1, v12))
      {
        (*(v13 + 8))(v10, v12);
      }

      break;
  }

  v14 = v6[10];
  v15 = sub_24B2D1BB4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B15F4D0()
{
  type metadata accessor for AnnotationView();

  return sub_24B15ECBC();
}

unint64_t sub_24B15F530()
{
  result = qword_27EFCD288;
  if (!qword_27EFCD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD288);
  }

  return result;
}

uint64_t sub_24B15F584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *AnnotationViewV2.init(annotation:canShowPulseAnimation:isSelected:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24B160604(a1, a5, type metadata accessor for AnnotationV2);
  v9 = type metadata accessor for AnnotationViewV2();
  *(a5 + v9[5]) = a2;
  *(a5 + v9[6]) = a3;
  v10 = (a5 + v9[7]);

  return memcpy(v10, a4, 0x120uLL);
}

uint64_t type metadata accessor for AnnotationViewV2()
{
  result = qword_27EFCD3F0;
  if (!qword_27EFCD3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AnnotationViewV2.Style.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EFC76F0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27EFCD2C0, sizeof(__dst));
  memcpy(a1, &qword_27EFCD2C0, 0x120uLL);
  return sub_24B15BD74(__dst, &v3);
}

double AnnotationViewV2.body.getter@<D0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v2 - 8);
  *&v77 = &v60 - v3;
  v78 = type metadata accessor for PulseAnimation();
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for AnnotationPin();
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC200);
  MEMORY[0x28223BE20](v72);
  v75 = &v60 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD3E0);
  MEMORY[0x28223BE20](v74);
  *&v76 = &v60 - v18;
  v19 = type metadata accessor for AnnotationV2();
  v20 = *(v19 + 24);
  sub_24B1102AC(v1 + v20, v13);
  sub_24B1102AC(v1 + v20, v10);
  v71 = 0xEu >> (swift_getEnumCaseMultiPayload() & 0xF);
  sub_24B15C65C(v10);
  v21 = type metadata accessor for AnnotationViewV2();
  v22 = *(v1 + v21[6]);
  v61 = v19;
  v23 = v1 + *(v19 + 36);
  v73 = v7;
  sub_24B008890(v23, v7, &qword_27EFC8A80);
  v24 = v1 + v21[7];
  if (v22 == 1)
  {
    v89 = *(v24 + 280);
    v25 = *(v24 + 264);
    v26 = *(v24 + 232);
    v85 = *(v24 + 216);
    v86 = v26;
    v87 = *(v24 + 248);
    v88 = v25;
    v27 = *(v24 + 200);
    v83 = *(v24 + 184);
    v84 = v27;
    v29 = *(&v88 + 1);
    v28 = v89;
    v70 = v26;
  }

  else
  {
    v89 = *(v24 + 176);
    v32 = *(v24 + 128);
    v85 = *(v24 + 112);
    v86 = v32;
    v33 = *(v24 + 160);
    v87 = *(v24 + 144);
    v88 = v33;
    v27 = *(v24 + 96);
    v83 = *(v24 + 80);
    v84 = v27;
    v29 = *(&v88 + 1);
    v28 = v89;
    v70 = v86;
  }

  v69 = v85;
  v67 = *(&v87 + 1);
  v68 = v87;
  v66 = v88;
  v65 = BYTE8(v27);
  v64 = v83;
  v63 = BYTE8(v83);
  v62 = BYTE9(v83);
  v30 = BYTE10(v83);
  v31 = v27;
  sub_24B0F65E4(&v83, v82);
  v34 = v14[9];
  *&v16[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
  swift_storeEnumTagMultiPayload();
  v35 = &v16[v14[10]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  sub_24B160604(v13, v16, type metadata accessor for Icon);
  v16[v14[5]] = v71 & 1;
  v16[v14[6]] = v22;
  sub_24B0391CC(v73, &v16[v14[7]], &qword_27EFC8A80);
  v36 = &v16[v14[8]];
  *v36 = v64;
  v36[8] = v63;
  v36[9] = v62;
  v36[10] = v30;
  *(v36 + 2) = v31;
  v36[24] = v65;
  v37 = v70;
  *(v36 + 2) = v69;
  *(v36 + 3) = v37;
  v38 = v67;
  *(v36 + 8) = v68;
  *(v36 + 9) = v38;
  *(v36 + 10) = v66;
  *(v36 + 11) = v29;
  *(v36 + 12) = v28;
  *(v36 + 104) = xmmword_24B2E8240;
  sub_24B2D5064();
  sub_24B2D3494();
  v39 = v75;
  sub_24B160604(v16, v75, type metadata accessor for AnnotationPin);
  v40 = (v39 + *(v72 + 36));
  v41 = v82[2];
  v42 = v82[0];
  v40[1] = v82[1];
  v40[2] = v41;
  *v40 = v42;
  if (*(v1 + v21[5]) == 1)
  {
    v43 = v77;
    sub_24B008890(v1 + *(v61 + 32), v77, &qword_27EFC8450);
  }

  else
  {
    v44 = sub_24B2D24A4();
    v43 = v77;
    (*(*(v44 - 8) + 56))(v77, 1, 1, v44);
  }

  v45 = v76;
  v46 = v1 + v21[7];
  v47 = *(v46 + 64);
  v48 = *(v46 + 72);
  v49 = *(v46 + 48);
  v77 = *(v46 + 32);
  v76 = v49;
  v50 = v79;
  sub_24B0391CC(v43, v79, &qword_27EFC8450);
  v51 = v78;
  v52 = v50 + *(v78 + 20);
  v53 = v76;
  *v52 = v77;
  *(v52 + 16) = v53;
  *(v52 + 32) = v47;
  *(v52 + 40) = v48;
  v54 = v50 + *(v51 + 24);
  v81 = 0;
  sub_24B2D4CC4();
  v55 = *(&v83 + 1);
  *v54 = v83;
  *(v54 + 8) = v55;
  sub_24B0391CC(v39, v45, &qword_27EFCC200);
  sub_24B160604(v50, v45 + *(v74 + 36), type metadata accessor for PulseAnimation);
  if (qword_27EFC7660 != -1)
  {
    swift_once();
  }

  sub_24B2D3494();
  v56 = v80;
  sub_24B0391CC(v45, v80, &qword_27EFCD3E0);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD3E8) + 36));
  v58 = v84;
  *v57 = v83;
  v57[1] = v58;
  result = *&v85;
  v57[2] = v85;
  return result;
}

__n128 AnnotationViewV2.Style.regularSize.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AnnotationViewV2.Style.selectedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 AnnotationViewV2.Style.pulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  return result;
}

uint64_t AnnotationViewV2.Style.regularBadge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 160);
  v13 = *(v1 + 144);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 176);
  v4 = v15;
  v5 = *(v1 + 96);
  v10[0] = *(v1 + 80);
  v10[1] = v5;
  v6 = *(v1 + 128);
  v11 = *(v1 + 112);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_24B0F65E4(v10, v9);
}

uint64_t AnnotationViewV2.Style.selectedBadge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v15 = *(v1 + 280);
  v4 = v15;
  v5 = *(v1 + 200);
  v10[0] = *(v1 + 184);
  v10[1] = v5;
  v11 = *(v1 + 216);
  v6 = v11;
  v12 = v2;
  v7 = *(v1 + 264);
  v13 = v3;
  v14 = v7;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  *(a1 + 80) = v7;
  return sub_24B0F65E4(v10, v9);
}

__n128 AnnotationViewV2.Style.init(regularSize:selectedSize:pulse:regularBadge:selectedBadge:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *a1;
  *(a6 + 16) = v6;
  v7 = a3[1];
  *(a6 + 32) = *a3;
  *(a6 + 48) = v7;
  v8 = a3[2];
  v9 = a4[4];
  v10 = a4[5];
  v11 = a4[2];
  *(a6 + 128) = a4[3];
  *(a6 + 144) = v9;
  *(a6 + 160) = v10;
  v12 = *a4;
  v13 = a4[1];
  *(a6 + 64) = v8;
  *(a6 + 80) = v12;
  *(a6 + 96) = v13;
  *(a6 + 112) = v11;
  v14 = a5[4];
  *(a6 + 264) = a5[5];
  *(a6 + 248) = v14;
  v15 = a5[2];
  *(a6 + 232) = a5[3];
  *(a6 + 216) = v15;
  v17 = *a5;
  result = a5[1];
  *(a6 + 200) = result;
  *(a6 + 176) = *(a4 + 12);
  *(a6 + 280) = *(a5 + 12);
  *(a6 + 184) = v17;
  return result;
}

FindMyUICore::AnnotationViewV2::Style::Size __swiftcall AnnotationViewV2.Style.Size.init(increased:decreased:)(Swift::Double increased, Swift::Double decreased)
{
  *v2 = increased;
  v2[1] = decreased;
  result.decreased = decreased;
  result.increased = increased;
  return result;
}

uint64_t sub_24B160180()
{
  v0 = sub_24B2D3084();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7818 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27EFE4708);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_24B2D4B84();
  qword_27EFCD2B8 = result;
  return result;
}

uint64_t static AnnotationViewV2.Style.annotationPinShapeFillDefaultColor.getter()
{
  if (qword_27EFC76E8 != -1)
  {
    swift_once();
  }
}

double sub_24B1602F4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24B2D3084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  if (qword_27EFC76B0 != -1)
  {
    swift_once();
  }

  v22 = unk_27EFCC400;
  v23 = xmmword_27EFCC3F0;
  v9 = qword_27EFCC410;
  v10 = qword_27EFCC418;
  v11 = sub_24B2D43B4();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 1, 1, v11);
  v21 = sub_24B2D4404();
  sub_24B107AC8(v8);
  if (qword_27EFC7818 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27EFE4708);
  v14 = *(v3 + 16);
  v14(v5, v13, v2);
  v20 = sub_24B2D4B84();
  v12(v8, 1, 1, v11);
  v15 = sub_24B2D4404();
  sub_24B107AC8(v8);
  v14(v5, v13, v2);
  v16 = sub_24B2D4B84();
  *a1 = vdupq_n_s64(0x404E000000000000uLL);
  *(a1 + 16) = vdupq_n_s64(0x4056800000000000uLL);
  v17 = v22;
  *(a1 + 32) = v23;
  *(a1 + 48) = v17;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v18 = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = 1;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x80;
  *(a1 + 112) = v18;
  *(a1 + 120) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = xmmword_24B2E8DF0;
  *(a1 + 184) = v15;
  *(a1 + 192) = 1;
  *(a1 + 194) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x80;
  *(a1 + 216) = v16;
  *(a1 + 224) = 0x3FF0000000000000;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 272) = xmmword_24B2E8DF0;
  return result;
}

uint64_t sub_24B160604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1606B0()
{
  result = type metadata accessor for AnnotationV2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B160738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_24B160794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

unint64_t sub_24B160854()
{
  result = qword_27EFCD400;
  if (!qword_27EFCD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD3E8);
    sub_24B1608E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD400);
  }

  return result;
}

unint64_t sub_24B1608E0()
{
  result = qword_27EFCD408;
  if (!qword_27EFCD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD3E0);
    sub_24B16099C();
    sub_24B160A58(&qword_27EFCD420, type metadata accessor for PulseAnimation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD408);
  }

  return result;
}

unint64_t sub_24B16099C()
{
  result = qword_27EFCD410;
  if (!qword_27EFCD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC200);
    sub_24B160A58(&qword_27EFCD418, type metadata accessor for AnnotationPin);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCD410);
  }

  return result;
}

uint64_t sub_24B160A58(unint64_t *a1, void (*a2)(uint64_t))
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

FindMyUICore::PinCircleShape __swiftcall PinCircleShape.init(showTail:)(Swift::Bool showTail)
{
  v2 = 0.0;
  v3 = 1.0;
  if (showTail)
  {
    v2 = 1.0;
  }

  *v1 = v2;
  v4 = 0.1485;
  *(v1 + 8) = xmmword_24B2E8220;
  *(v1 + 24) = 0x3FBE978D4FDF3B64;
  result.tipHeightMultiplier = v3;
  result.showTailPercentage = v4;
  return result;
}

double (*PinCircleShape.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24B160B14;
}

double sub_24B160B14(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double PinCircleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  sub_24B2D4554();
  sub_24B2D4534();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  sub_24B2D4544();
  sub_24B2D4514();
  sub_24B160E44(v14);
  sub_24B160E44(v13);
  sub_24B160E44(v12);
  result = *&v15;
  v11 = v16;
  *a1 = v15;
  *(a1 + 16) = v11;
  *(a1 + 32) = v17;
  return result;
}

double PinCircleShape.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (result = *&a3 / (*v4 * v4[3] + 1.0), (a2 & 1) == 0) && result > *&a1)
  {
    result = *&a1;
    if (a2)
    {
      return 50.0;
    }
  }

  return result;
}

uint64_t sub_24B160D5C()
{
  sub_24B2D4504();
  sub_24B2D4524();
  sub_24B2D4524();
  return sub_24B2D44F4();
}