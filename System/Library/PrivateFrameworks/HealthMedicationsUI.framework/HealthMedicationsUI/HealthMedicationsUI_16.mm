id sub_228303B9C(char a1)
{
  v2 = v1;
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F440();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  result = [v2 endDateTime];
  if (result)
  {
    v18 = result;
    sub_22838F3E0();

    sub_22838F680();
    sub_22838F3F0();
    v19 = sub_22838F600();
    v20 = *(v10 + 8);
    v20(v14, v9);
    (*(v5 + 8))(v8, v4);
    if (a1)
    {
      if (v19 < 0)
      {
        sub_2283074B4(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_228397F40;
        v22 = Date.formattedWithYearIfDifferent()();
        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_22818E210();
        *(v21 + 32) = v22;
        if (qword_280DDCF18 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_22838F340();
      sub_228306F40(&qword_280DDCDB8, 255, MEMORY[0x277CC9578]);
      v23 = sub_228391FA0();
      v20(v14, v9);
      if ((v23 & 1) != 0 || v19 < 0)
      {
        v20(v16, v9);
        return 0;
      }
    }

    if (v19 == 1)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v19)
      {
        sub_2283074B4(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_228397F40;
        v25 = Date.formattedWithYearIfDifferent()();
        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_22818E210();
        *(v21 + 32) = v25;
        if (qword_280DDCF18 == -1)
        {
LABEL_17:
          v26 = qword_280DDCF20;

          v27 = sub_22838F0C0();
          if (*(v21 + 16))
          {
            v24 = sub_228391FD0();
          }

          else
          {
            v24 = v27;
          }

          v20(v16, v9);

          return v24;
        }

LABEL_24:
        swift_once();
        goto LABEL_17;
      }

      if (qword_280DDCF18 == -1)
      {
LABEL_15:
        v24 = sub_22838F0C0();
        v20(v16, v9);
        return v24;
      }
    }

    swift_once();
    goto LABEL_15;
  }

  return result;
}

uint64_t MedicationListViewData.title.getter()
{
  v2 = *v0;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  return sub_228390F20();
}

char *MedicationListViewData.items.getter()
{
  v1 = *v0;
  v43 = v0[1];
  sub_2283045C4();
  v2 = swift_allocObject();
  v3 = sub_228392A30();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = [objc_opt_self() labelColor];
    *(v2 + 32) = 3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v2 + 32) = 0;
  }

  *(v2 + 40) = v7;
  *(v2 + 48) = v6;
  *(v2 + 56) = v5;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  v8 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    v12 = [objc_opt_self() labelColor];
    *(v2 + 96) = 2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v2 + 96) = 0;
  }

  v13 = 0;
  *(v2 + 104) = v12;
  *(v2 + 112) = v11;
  *(v2 + 120) = v10;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = (v2 + 48 + (v13++ << 6));
    while (1)
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = v15[1];
      v52 = *v15;
      v53 = v18;
      v54 = v15[2];
      if (v17)
      {
        break;
      }

      v15 += 4;
      if (++v13 == 3)
      {
        goto LABEL_17;
      }
    }

    v47 = v16;
    v48 = v17;
    v19 = v15[1];
    v49 = *v15;
    v50 = v19;
    v51 = v15[2];
    sub_228211388(&v47, &v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_228198390(0, *(v14 + 2) + 1, 1, v14);
    }

    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    if (v21 >= v20 >> 1)
    {
      v14 = sub_228198390((v20 > 1), v21 + 1, 1, v14);
    }

    v45 = v53;
    v46 = v54;
    v44 = v52;
    *(v14 + 2) = v21 + 1;
    v22 = &v14[64 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v17;
    v23 = v44;
    v24 = v46;
    *(v22 + 4) = v45;
    *(v22 + 5) = v24;
    *(v22 + 3) = v23;
  }

  while (v13 != 2);
LABEL_17:
  swift_setDeallocating();
  sub_228307574(0, &qword_280DDC6C0, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = v14;
  v47 = v1;
  v48 = v43;
  v25 = sub_228304FD0();
  sub_2281D54DC(v25);
  *&v44 = v1;
  *(&v44 + 1) = v43;
  sub_2283051B8(&v47);
  v26 = v47;
  v27 = v48;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  if (v48)
  {
    v28 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_228198390(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_228198390((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[64 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
    v32 = v44;
    v33 = v46;
    *(v31 + 4) = v45;
    *(v31 + 5) = v33;
    *(v31 + 3) = v32;
    v55 = v28;
  }

  *&v52 = v1;
  *(&v52 + 1) = v43;
  sub_228305320(&v47);
  v34 = v47;
  v35 = v48;
  v52 = v49;
  v53 = v50;
  v54 = v51;
  v36 = v55;
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_228198390(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_228198390((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[64 * v38];
    *(v39 + 4) = v34;
    *(v39 + 5) = v35;
    v40 = v52;
    v41 = v54;
    *(v39 + 4) = v53;
    *(v39 + 5) = v41;
    *(v39 + 3) = v40;
  }

  return v36;
}

void sub_2283045C4()
{
  if (!qword_280DDB8B0)
  {
    sub_228307574(255, &qword_280DDC6C0, MEMORY[0x277D83D88]);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB8B0);
    }
  }
}

uint64_t sub_228304638(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_228393460();

  if ((v2 & 1) == 0)
  {
    if (a1 > 1u)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_228393460();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_228304784()
{
  v1 = *v0;
  sub_228393520();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228304848()
{
  *v0;
  *v0;
  *v0;
  sub_2283920B0();
}

uint64_t sub_2283048F8()
{
  v1 = *v0;
  sub_228393520();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2283049B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_228306E00();
  *a2 = result;
  return result;
}

void sub_2283049E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656C756465686373;
  v4 = 0xE800000000000000;
  v5 = 0x6874676E65727473;
  if (*v1 != 2)
  {
    v5 = 1836216166;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656863536174656DLL;
    v2 = 0xEC000000656C7564;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MedicationCellItem.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  sub_2283920B0();

  sub_228392C70();
  sub_2283920B0();
  if (!v7)
  {
    sub_228393540();
    if (v9)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v9)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t MedicationCellItem.hashValue.getter()
{
  sub_228393520();
  MedicationCellItem.hash(into:)();
  return sub_228393570();
}

uint64_t sub_228304C24()
{
  sub_228393520();
  MedicationCellItem.hash(into:)();
  return sub_228393570();
}

uint64_t sub_228304C68()
{
  sub_228393520();
  MedicationCellItem.hash(into:)();
  return sub_228393570();
}

void *MedicationListViewData.schedule.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t MedicationListViewData.init(medication:schedule:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MedicationListViewData.id.getter()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2283931D0();

  v20 = 0x3A747065636E6F63;
  v21 = 0xE800000000000000;
  v8 = [v7 UUID];
  sub_22838F480();

  v9 = sub_22838F450();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v5, v1);
  MEMORY[0x22AAB5C80](v9, v11);

  MEMORY[0x22AAB5C80](0x6C7564656863735FLL, 0xEA00000000003A65);
  if (v6)
  {
    v13 = [v6 UUID];
    sub_22838F480();

    v14 = sub_22838F450();
    v16 = v15;
    v12(v5, v1);
  }

  else
  {
    v16 = 0xE400000000000000;
    v14 = 1819047278;
  }

  MEMORY[0x22AAB5C80](v14, v16);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v19[1] = v6;
  sub_2281DFB88();
  sub_228306458();
  v19[0] = sub_228392F10();
  v17 = sub_228393420();
  MEMORY[0x22AAB5C80](v17);

  return v20;
}

uint64_t MedicationListViewData.incompatibleSchedules.getter()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 0;
  }

  sub_228390890();
  v2 = v1;
  sub_228390880();
  v3 = sub_228390870();

  v4 = sub_228390800();

  return v4;
}

uint64_t sub_228304FD0()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = v1;
    v3 = HKMedicationSchedule.makeItems()();

    return v3;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v5 = sub_22838F0C0();
    v7 = v6;
    sub_228307574(0, &qword_280DDB8B8, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F40;
    v9 = [objc_opt_self() secondaryLabelColor];
    v10 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v10);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    MEMORY[0x22AAB5C80](v5, v7);
    *(v8 + 32) = 0;
    *(v8 + 40) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v7;
    *(v8 + 64) = xmmword_2283A3520;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0xE000000000000000;
    return v8;
  }
}

double sub_2283051B8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_228303B9C(0);
  if (!v6)
  {

LABEL_7:
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v7 = v5;
  v8 = v6;
  v9 = [objc_opt_self() secondaryLabelColor];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v10 = sub_22838F0C0();
  MEMORY[0x22AAB5C80](v10);

  MEMORY[0x22AAB5C80](32, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v7, v8);

  *a1 = 1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  return result;
}

double sub_228305320@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  sub_228390890();
  v4 = v3;
  sub_228390880();
  v5 = sub_228390870();

  v6 = sub_228390800();

  if (v6)
  {

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v7 = sub_22838F0C0();
    v9 = v8;
    v10 = [objc_opt_self() secondaryLabelColor];
    v11 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v11);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    MEMORY[0x22AAB5C80](v7, v9);
    *a1 = 1;
    *(a1 + 8) = v10;
    *(a1 + 16) = v7;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0xD00000000000001BLL;
    *(a1 + 40) = 0x80000002283A9BE0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xE000000000000000;
  }

  else
  {
LABEL_6:
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void MedicationListViewData.hash(into:)()
{
  v1 = v0[1];
  v2 = *v0;
  sub_228392C70();
  if (v1)
  {
    sub_228393540();
    v3 = v1;
    sub_228392C70();
  }

  else
  {
    sub_228393540();
  }
}

uint64_t MedicationListViewData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v2)
  {
    v3 = v2;
    sub_228392C70();
  }

  return sub_228393570();
}

uint64_t sub_22830562C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v2)
  {
    v3 = v2;
    sub_228392C70();
  }

  return sub_228393570();
}

void sub_2283056AC()
{
  v1 = v0[1];
  v2 = *v0;
  sub_228392C70();
  if (v1)
  {
    sub_228393540();
    v3 = v1;
    sub_228392C70();
  }

  else
  {
    sub_228393540();
  }
}

uint64_t sub_228305744()
{
  v1 = *v0;
  v2 = v0[1];
  sub_228393520();
  sub_228392C70();
  sub_228393540();
  if (v2)
  {
    v3 = v2;
    sub_228392C70();
  }

  return sub_228393570();
}

id MedicationListItem.itemRepresentable.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v5 = *(v1 + 16);
  *a1 = v5;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

id MedicationListItem.healthStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void MedicationListItem.healthStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id MedicationListItem.conceptStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void MedicationListItem.conceptStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t MedicationListItem.listManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t MedicationListItem.listManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *MedicationListItem.__allocating_init(viewData:healthStore:)(uint64_t *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_228306E4C(a1, a2);

  return v4;
}

void *MedicationListItem.init(viewData:healthStore:)(uint64_t *a1, void *a2)
{
  v3 = sub_228306E4C(a1, a2);

  return v3;
}

void *MedicationListItem.__allocating_init(itemRepresentable:indexInList:accessories:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for MedicationListItemCell();
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell);
  v8[9] = sub_22838FBB0();
  v8[10] = v11;
  v8[4] = a4;
  sub_228390890();
  v12 = a4;
  sub_228390880();
  v13 = sub_228390820();

  v8[5] = v13;
  v8[2] = v9;
  v8[3] = v10;
  v8[7] = a3;
  v8[8] = a2;
  sub_228390880();
  v14 = sub_228390840();

  v8[6] = v14;
  return v8;
}

void *MedicationListItem.init(itemRepresentable:indexInList:accessories:healthStore:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for MedicationListItemCell();
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell);
  v4[9] = sub_22838FBB0();
  v4[10] = v10;
  v4[4] = a4;
  sub_228390890();
  v11 = a4;
  sub_228390880();
  v12 = sub_228390820();

  v4[5] = v12;
  v4[2] = v8;
  v4[3] = v9;
  v4[7] = a3;
  v4[8] = a2;
  sub_228390880();
  v13 = sub_228390840();

  v4[6] = v13;
  return v4;
}

uint64_t MedicationListItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MedicationListItem.uniqueIdentifier.getter()
{
  v5 = v0[9];
  v6 = v0[10];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v3 = v0[2];
  v4 = v0[3];
  v1 = MedicationListViewData.id.getter();
  MEMORY[0x22AAB5C80](v1);

  return v5;
}

uint64_t MedicationListItem.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return v0;
}

uint64_t MedicationListItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_228305EAC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

id sub_228305EE0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *a1 = v5;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

id sub_228305F24()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

void sub_228305F74(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  swift_allocObject();
  v6 = sub_228306E4C(a1, a2);

  *a3 = v6;
}

uint64_t sub_228305FD0()
{
  v1 = *v0;
  v6 = *(*v0 + 72);
  v7 = *(*v0 + 80);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v2 = MedicationListViewData.id.getter();
  MEMORY[0x22AAB5C80](v2);

  return v6;
}

uint64_t sub_22830603C(uint64_t a1, uint64_t a2)
{
  v3 = sub_228306F40(&qword_280DDC6B8, a2, type metadata accessor for MedicationListItem);

  return MEMORY[0x282169440](a1, v3);
}

uint64_t MedicationListItem.hash(into:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MedicationListViewData.id.getter();
  sub_2283920B0();
}

uint64_t MedicationListItem.hashValue.getter()
{
  sub_228393520();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228306188()
{
  v1 = *v0;
  sub_228393520();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2283061F4()
{
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  MedicationListViewData.id.getter();
  sub_2283920B0();
}

uint64_t sub_22830625C()
{
  v1 = *v0;
  sub_228393520();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  MedicationListViewData.id.getter();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t _s19HealthMedicationsUI18MedicationCellItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a1 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);
  if ((sub_228303A58(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if ((sub_228392C60() & 1) == 0)
  {
    return 0;
  }

  if ((v3 != v8 || v4 != v9) && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v5 != v10 || v6 != v11) && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v16)
  {
    if (v15 && (v14 == v13 && v16 == v15 || (sub_228393460() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_228306458()
{
  result = qword_280DDBA58;
  if (!qword_280DDBA58)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBA58);
  }

  return result;
}

uint64_t _s19HealthMedicationsUI22MedicationListViewDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if (sub_228392C60())
  {
    if (v3)
    {
      if (v5)
      {
        sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
        v6 = v5;
        v7 = v3;
        v8 = sub_228392C60();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s19HealthMedicationsUI18MedicationListItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390D50();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228644();
  v56 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283074B4(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v59 = &v54 - v19;
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v62 = v21;
  v63 = v20;
  v22 = MedicationListViewData.id.getter();
  v24 = v23;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  v60 = v26;
  v61 = v25;
  if (v22 == MedicationListViewData.id.getter() && v24 == v27)
  {
  }

  else
  {
    v28 = sub_228393460();

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v54 = v7;
  v62 = v21;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v29 = sub_228390F20();
  v31 = v30;
  v62 = v26;
  if (v29 == sub_228390F20() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_228393460();

    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v34 = *(a1 + 24);
  v62 = *(a1 + 16);
  v63 = v34;
  v35 = MedicationListViewData.items.getter();
  v37 = *(a2 + 16);
  v36 = *(a2 + 24);
  v60 = v37;
  v61 = v36;
  v38 = MedicationListViewData.items.getter();
  v39 = sub_2282103D0(v35, v38);

  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

  v40 = v59;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v41 = v40;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v42 = *(v56 + 48);
  sub_2281BF64C(v41, v11);
  sub_2281BF64C(v18, &v11[v42]);
  v44 = v57;
  v43 = v58;
  v45 = *(v57 + 48);
  if (v45(v11, 1, v58) != 1)
  {
    v46 = v55;
    sub_2281BF64C(v11, v55);
    if (v45(&v11[v42], 1, v43) == 1)
    {
      sub_2281A9A08(v18);
      sub_2281A9A08(v59);
      (*(v44 + 8))(v46, v43);
      goto LABEL_15;
    }

    v49 = v54;
    (*(v44 + 32))(v54, &v11[v42], v43);
    sub_228306F40(&qword_27D8257B8, 255, MEMORY[0x277D116C8]);
    v50 = sub_228391FB0();
    v51 = *(v44 + 8);
    v51(v49, v43);
    sub_2281A9A08(v18);
    sub_2281A9A08(v59);
    v51(v46, v43);
    sub_2281A9A08(v11);
    if (v50)
    {
      goto LABEL_19;
    }

LABEL_16:
    v47 = 0;
    return v47 & 1;
  }

  sub_2281A9A08(v18);
  sub_2281A9A08(v41);
  if (v45(&v11[v42], 1, v43) != 1)
  {
LABEL_15:
    sub_228307518(v11);
    goto LABEL_16;
  }

  sub_2281A9A08(v11);
LABEL_19:
  v47 = (v34 | v36) == 0;
  if (v34 && v36)
  {
    sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
    v52 = v36;
    v53 = v34;
    v47 = sub_228392C60();
  }

  return v47 & 1;
}

void sub_228306ADC(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v2 + 32);
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = type metadata accessor for MedicationConceptDetailViewController();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[qword_27D824AB0];
  v9 = *MEMORY[0x277D12788];
  v30 = sub_228392000();
  v31 = v10;
  v11 = v3;
  v12 = v4;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v13 = v31;
  *v8 = v30;
  v8[1] = v13;
  *&v7[qword_27D824AB8] = 0;
  *&v7[qword_27D824AC0] = 0;
  *&v7[qword_27D824AC8] = 0;
  *&v7[qword_27D824A90] = v11;
  *&v7[qword_27D824A98] = v5;
  *&v7[qword_27D824AA0] = v12;
  v14 = v11;
  v15 = v12;

  v16 = [v14 localizedOntologyEducationContent];
  if (v16)
  {
    v30 = v16;
    v17 = v16;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v19 = v18;

    if (v19)
    {
    }
  }

  v20 = [v14 localizedOntologyEducationContent];
  if (v20)
  {
    v30 = v20;
    v21 = v20;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v23 = v22;

    if (v23)
    {
    }
  }

  v24 = sub_228391020();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v7[qword_27D824AA8] = sub_228390FF0();
  v29.receiver = v7;
  v29.super_class = v6;
  v27 = objc_msgSendSuper2(&v29, sel_initWithCollectionViewLayout_, 0);
  (*((*MEMORY[0x277D85000] & *v27) + class metadata base offset for MedicationConceptDetailViewController + 224))(v14);

  [a1 showViewController:v27 sender:v2];
}

uint64_t sub_228306E00()
{
  v0 = sub_228393390();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void *sub_228306E4C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for MedicationListItemCell();
  sub_228306F40(&unk_280DDC4B8, 255, type metadata accessor for MedicationListItemCell);
  v2[9] = sub_22838FBB0();
  v2[10] = v6;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a2;
  sub_228390890();
  v7 = a2;
  sub_228390880();
  v8 = sub_228390820();

  v2[5] = v8;
  v2[7] = MEMORY[0x277D84F90];
  v2[8] = 0;
  sub_228390880();
  v9 = sub_228390840();

  v2[6] = v9;
  return v2;
}

uint64_t sub_228306F40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228306F8C()
{
  result = qword_27D827938;
  if (!qword_27D827938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827938);
  }

  return result;
}

unint64_t sub_228306FE4()
{
  result = qword_27D827940;
  if (!qword_27D827940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827940);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_228307190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2283071D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_228307238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_228307280(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MedicationCellItem.ItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicationCellItem.ItemKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228307460()
{
  result = qword_27D827950;
  if (!qword_27D827950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827950);
  }

  return result;
}

void sub_2283074B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228307518(uint64_t a1)
{
  sub_228228644();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228307574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicationCellItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id InteractionFactorsInfoViewController.__allocating_init()()
{
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;
  return objc_msgSendSuper2(&v2, sel_initWithCollectionViewLayout_, 0);
}

id InteractionFactorsInfoViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoViewController();
  return objc_msgSendSuper2(&v2, sel_initWithCollectionViewLayout_, 0);
}

uint64_t type metadata accessor for InteractionFactorsInfoViewController()
{
  result = qword_27D827960;
  if (!qword_27D827960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2283076F0()
{
  v1 = type metadata accessor for InteractionFactorsInfoDataSourceProvider();
  v2 = swift_allocObject();
  v9 = v1;
  v10 = sub_228307870();
  v8 = v2;
  sub_2283904B0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v0 setTitle_];

  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneButtonTapped_];
  [v4 setRightBarButtonItem_];

  v7.receiver = v0;
  v7.super_class = type metadata accessor for InteractionFactorsInfoViewController();
  return objc_msgSendSuper2(&v7, sel_viewDidLoad);
}

unint64_t sub_228307870()
{
  result = qword_27D827958;
  if (!qword_27D827958)
  {
    type metadata accessor for InteractionFactorsInfoDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827958);
  }

  return result;
}

void sub_2283078C8(void *a1)
{
  v1 = a1;
  sub_2283076F0();
}

void sub_228307910(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_228390470();
    sub_2283901F0();
    sub_22838FD60();

    sub_228180FB0(v11, v8);
    sub_22818217C(0, &qword_27D827E00);
    sub_22818217C(0, &qword_27D8243E0);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_22816DFFC(v5, v10);
      __swift_project_boxed_opaque_existential_0(v10, v10[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v11);
      __swift_destroy_boxed_opaque_existential_0(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_2281AC828(v6, &qword_27D827780, &qword_27D8243E0);
    *&v6[0] = v4;
    sub_2281ED1D8();
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    __swift_destroy_boxed_opaque_existential_0(v11);
    sub_2281AC828(v8, &qword_27D827780, &qword_27D8243E0);
  }
}

uint64_t sub_228307B34(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_228307910(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_228307C30(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id InteractionFactorsInfoViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InteractionFactorsInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsInfoViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NetworkStateObserver.$connectionState.getter()
{
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t NetworkStateObserver.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t NetworkStateObserver.connectionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();
}

uint64_t sub_228307FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_228308040(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_2283080B4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391930();
  return swift_endAccess();
}

uint64_t sub_22830813C(uint64_t a1, uint64_t *a2)
{
  sub_2283087E4(0, &qword_27D823B08, MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *(v6 + 16);
  v13(&v16 - v11, a1, v5);
  v14 = *a2;
  v13(v10, v12, v5);
  swift_beginAccess();
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  sub_228391940();
  swift_endAccess();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_2283082E0()
{
  v0 = sub_228391B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391B70();
    (*(v1 + 104))(v5, *MEMORY[0x277CD8F78], v0);
    v9 = sub_228391B50();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12[7] = v11;
    return sub_228391970();
  }

  return result;
}

uint64_t NetworkStateObserver.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor;
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor);

  sub_228391B20();

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver__connectionState;
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + v2);

  return v1;
}

uint64_t NetworkStateObserver.__deallocating_deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor;
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor);

  sub_228391B20();

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver__connectionState;
  sub_2283087E4(0, &qword_27D823B40, MEMORY[0x277CBCED0]);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + v2);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkStateObserver()
{
  result = qword_27D827980;
  if (!qword_27D827980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228308704()
{
  sub_2283087E4(319, &qword_27D823B40, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2283087E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for NetworkStateObserver.ConnectionStatus);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22830884C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2283088F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2283089A0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AAB6D80](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2283930D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(void *a1)
{
  v2 = v1;
  sub_228206298();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390670();
  v8 = sub_2283906D0();
  v16 = a1;
  v15 = &v16;
  v9 = sub_2283089A0(sub_228309338, v14, v8);

  if ((v9 & 1) == 0)
  {
    v10 = sub_2283922D0();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v2;
    v11[5] = a1;

    v12 = a1;
    sub_2281DC568(0, 0, v7, &unk_2283A3AA0, v11);

    v13 = [objc_opt_self() sharedInstance];
    [v13 removeMedication_];
  }
}

uint64_t sub_228308CAC()
{
  v1 = [*(v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  v5 = v4;

  *(v0 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_228308D98;

  return sub_22830953C(v3, v5);
}

uint64_t sub_228308D98()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t ListConceptManager.toggleMedicationPinState(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_228308EC8, 0, 0);
}

uint64_t sub_228308EC8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_228308FBC;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](&v0[3], 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228309460, v1, v4);
}

uint64_t sub_228308FBC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2283090D4, 0, 0);
}

uint64_t sub_2283090EC(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = a2;
  sub_228309468();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_2283906E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(a3);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2283092D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_27D824A30, 0x277CCDAF0);
  return sub_228392C60() & 1;
}

uint64_t sub_228309338(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22817A958(0, &qword_27D824A30, 0x277CCDAF0);
  return sub_228392C60() & 1;
}

uint64_t sub_2283093A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_228308C8C(a1, v4, v5, v7, v6);
}

void sub_228309468()
{
  if (!qword_27D827990)
  {
    v0 = sub_228392270();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827990);
    }
  }
}

uint64_t sub_2283094C8()
{
  sub_228309468();
  v1 = (*(*(v0 - 8) + 80) + 16) & ~*(*(v0 - 8) + 80);
  return sub_228392260();
}

uint64_t sub_22830953C(uint64_t a1, uint64_t a2)
{
  v2[36] = a1;
  v2[37] = a2;
  v3 = sub_2283911B0();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2283095FC, 0, 0);
}

uint64_t sub_2283095FC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
  v0[41] = v4;

  v5 = sub_228391FC0();
  v0[42] = v5;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_228309778;
  v6 = swift_continuation_init();
  sub_2281BC3FC();
  v0[25] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2281B1080;
  v0[21] = &block_descriptor_23;
  v0[22] = v6;
  [v4 fetchScheduleWithMedicationIdentifier:v5 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_228309778()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_228309B74;
  }

  else
  {
    v3 = sub_228309888;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228309888()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 272);
  *(v0 + 352) = v2;

  if (v2)
  {
    v3 = *(v0 + 328);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_2283099F4;
    v4 = swift_continuation_init();
    sub_2281E0600();
    *(v0 + 264) = v5;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2282B4368;
    *(v0 + 232) = &block_descriptor_9;
    *(v0 + 240) = v4;
    [v3 deleteSchedule:v2 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {

    v6 = *(v0 + 320);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2283099F4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_228309DA0;
  }

  else
  {
    v3 = sub_228309B04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228309B04()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_228309B74()
{
  v28 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  swift_willThrow();

  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  sub_228391150();

  v6 = v3;
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 328);
    v10 = *(v0 + 312);
    v25 = *(v0 + 304);
    v26 = *(v0 + 320);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2281C96FC(v12, v11, v27);
    *(v13 + 12) = 2082;
    *(v0 + 280) = v3;
    v15 = v3;
    sub_228192C1C();
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v27);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_22816B000, v7, v8, "Could not delete schedule after archiving medication %{public}s error %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v10 + 8))(v26, v25);
  }

  else
  {
    v19 = *(v0 + 320);
    v20 = *(v0 + 304);
    v21 = *(v0 + 312);

    (*(v21 + 8))(v19, v20);
  }

  v22 = *(v0 + 320);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_228309DA0()
{
  v28 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  swift_willThrow();

  v3 = *(v0 + 360);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  sub_228391150();

  v6 = v3;
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 328);
    v10 = *(v0 + 312);
    v25 = *(v0 + 304);
    v26 = *(v0 + 320);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2281C96FC(v12, v11, v27);
    *(v13 + 12) = 2082;
    *(v0 + 280) = v3;
    v15 = v3;
    sub_228192C1C();
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v27);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_22816B000, v7, v8, "Could not delete schedule after archiving medication %{public}s error %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v10 + 8))(v26, v25);
  }

  else
  {
    v19 = *(v0 + 320);
    v20 = *(v0 + 304);
    v21 = *(v0 + 312);

    (*(v21 + 8))(v19, v20);
  }

  v22 = *(v0 + 320);

  v23 = *(v0 + 8);

  return v23();
}

id sub_22830A030(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithHealthStore_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t OptionsDataSource.__allocating_init(with:listManager:healthStore:analyticsManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_228391150();
  v12 = (v11 + qword_27D8279A0);
  *v12 = 0xD000000000000020;
  v12[1] = 0x80000002283B3A00;
  *(v11 + qword_27D8279A8) = 0;
  *(v11 + qword_27D8279B0) = 0;
  *(v11 + qword_27D8279B8) = 0;
  *(v11 + qword_27D8279C0) = a2;
  *(v11 + qword_27D8279C8) = a1;
  *(v11 + qword_27D8279D0) = a3;
  *(v11 + qword_27D8279D8) = a4;
  sub_22830ED24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v13 = *(sub_22838FEF0() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;

  v16 = a3;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v17 = sub_22838F920();

  sub_22830A5B0();
  sub_22830A824();

  return v17;
}

uint64_t OptionsDataSource.init(with:listManager:healthStore:analyticsManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_228391150();
  v9 = (v4 + qword_27D8279A0);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000002283B3A00;
  *(v4 + qword_27D8279A8) = 0;
  *(v4 + qword_27D8279B0) = 0;
  *(v4 + qword_27D8279B8) = 0;
  *(v4 + qword_27D8279C0) = a2;
  *(v4 + qword_27D8279C8) = a1;
  *(v4 + qword_27D8279D0) = a3;
  *(v4 + qword_27D8279D8) = a4;
  sub_22830ED24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v10 = *(sub_22838FEF0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;

  v13 = a3;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v14 = sub_22838F920();

  sub_22830A5B0();
  sub_22830A824();

  return v14;
}

uint64_t sub_22830A5B0()
{
  v1 = v0;
  sub_22838F910();
  sub_22838FCD0();

  v2 = sub_22830B158();
  sub_228195594(v2);

  sub_22838FF60();

  sub_22838F910();
  sub_22838FCD0();

  sub_22830EC90(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F40;
  v4 = *(v0 + qword_27D8279C0);
  v5 = sub_228390660();
  v6 = *(v1 + qword_27D8279C8);
  sub_228391870();
  v7 = v17;
  v16 = v17;
  v15 = &v16;
  LOBYTE(v6) = sub_228309FEC(sub_22830F564, v14, v5);

  v8 = sub_228390170();
  *(v3 + 56) = v8;
  v9 = sub_22830F45C(&qword_27D823AB0, MEMORY[0x277D11000]);
  *(v3 + 64) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_22830BFEC(v6 & 1, boxed_opaque_existential_1);
  sub_22838FF60();

  sub_22838F910();
  sub_22838FCD0();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228397F40;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  v12 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_22830C660(v12);
  sub_22838FF60();
}

uint64_t sub_22830A824()
{
  v1 = v0;
  sub_22830ED24(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v43 - v4;
  sub_22830EE80();
  v43 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F104();
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F258();
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F2F4();
  v21 = *(v20 - 8);
  v49 = v20;
  v50 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830F388();
  v26 = *(v25 - 8);
  v51 = v25;
  v52 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v48 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v0 + qword_27D8279C8);
  sub_228180ED0();
  *(swift_allocObject() + 16) = xmmword_228396260;

  sub_228391870();
  sub_2281A65B4();
  sub_22830F45C(&qword_27D8241C0, sub_2281A65B4);
  sub_228391A60();

  v29 = *(v0 + qword_27D8279C0);
  v30 = v1;
  v54 = sub_2283906C0();
  sub_22830F1F0();
  sub_22830F45C(&qword_27D827A20, sub_22830EE80);
  sub_22830F45C(&qword_27D827D00, sub_22830F1F0);
  v31 = v43;
  sub_2283919E0();

  (*(v6 + 8))(v9, v31);
  sub_22830F45C(&qword_27D827A30, sub_22830F104);
  v32 = v44;
  sub_2283919F0();
  (*(v45 + 8))(v14, v32);
  sub_22830F45C(&qword_27D827A40, sub_22830F258);
  v33 = v46;
  sub_228391AA0();
  (*(v47 + 8))(v19, v33);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v34 = sub_228392790();
  v54 = v34;
  v35 = sub_228392730();
  v36 = v53;
  (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
  sub_22830F45C(&qword_27D827A50, sub_22830F2F4);
  sub_2281A1504();
  v37 = v48;
  v38 = v49;
  sub_228391A70();
  sub_2281A16F0(v36);

  (*(v50 + 8))(v24, v38);
  swift_allocObject();
  swift_weakInit();
  sub_22830F45C(&qword_27D827A58, sub_22830F388);
  v39 = v51;
  v40 = sub_228391AC0();

  (*(v52 + 8))(v37, v39);
  v41 = *(v30 + qword_27D8279B8);
  *(v30 + qword_27D8279B8) = v40;
}

uint64_t sub_22830AF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  sub_22830F4A4();
  v6 = a1 + *(v5 + 48);
  v7 = sub_2283906D0();
  v10 = v4;
  v9[2] = &v10;
  LOBYTE(v6) = sub_228309FEC(sub_22830F524, v9, v7);

  *a2 = v6 & 1;
  return result;
}

uint64_t sub_22830AFF8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22838F910();

    sub_22838FCD0();

    sub_22830EC90(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_228397F40;
    *(v3 + 56) = sub_228390170();
    *(v3 + 64) = sub_22830F45C(&qword_27D823AB0, MEMORY[0x277D11000]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
    sub_22830BFEC(v1, boxed_opaque_existential_1);
    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22830B158()
{
  v119 = sub_228390460();
  v111 = *(v119 - 8);
  v0 = *(v111 + 64);
  MEMORY[0x28223BE20](v119);
  v108 = v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = v72 - v5;
  v118 = sub_22838FFC0();
  v121 = *(v118 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v2);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v72 - v10;
  v12 = sub_2283912A0();
  v120 = *(v12 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v12);
  v106 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_228391220();
  v15 = *(v116 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v116);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228390170();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v107 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = v72 - v23;
  v24 = sub_228391590();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v93 = qword_280DDCF20;
  v92 = *algn_280DDCF28;
  v91 = qword_280DDCF30;
  sub_22838F0C0();
  v113 = v28;
  sub_228391540();
  v126 = v24;
  v127 = MEMORY[0x277D74C30];
  v112 = v24;
  v29 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v30 = *(v25 + 16);
  v101 = v25 + 16;
  v102 = v30;
  v30(v29, v28, v24);
  v104 = MEMORY[0x277D84560];
  sub_22830ED24(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v99 = v31;
  v32 = *(sub_2283912F0() - 8);
  v100 = *(v32 + 72);
  v98 = *(v32 + 80);
  v81 = (v98 + 32) & ~v98;
  v33 = swift_allocObject();
  v97 = xmmword_228397F40;
  *(v33 + 16) = xmmword_228397F40;
  v72[1] = v33;
  v96 = *MEMORY[0x277D74A98];
  v34 = v15[13];
  v94 = v15 + 13;
  v95 = v34;
  v35 = v116;
  v34(v18);
  v89 = sub_228391230();
  v36 = *(v89 - 8);
  v88 = *(v36 + 56);
  v90 = v36 + 56;
  v74 = v11;
  v88(v11, 1, 1, v89);
  v37 = v106;
  sub_228391290();
  sub_228391260();
  v38 = *(v120 + 8);
  v120 += 8;
  v87 = v38;
  v38(v37, v12);
  v39 = v15[1];
  v85 = v15 + 1;
  v86 = v39;
  v39(v18, v35);
  v40 = swift_allocObject();
  v82 = v12;
  v41 = v40;
  v42 = v115;
  swift_weakInit();
  v43 = *(v42 + qword_27D8279C8);
  v44 = swift_allocObject();
  v103 = v25;
  *(v44 + 16) = v41;
  *(v44 + 24) = v43;
  v75 = v43;
  v45 = v114;
  *v114 = 1;
  v84 = *MEMORY[0x277D10F90];
  v46 = *(v121 + 104);
  v121 += 104;
  v83 = v46;
  v46(v45);
  v79 = sub_2283913A0();
  v47 = *(v79 - 8);
  v78 = *(v47 + 56);
  v80 = v47 + 56;
  v48 = v105;
  v78(v105, 1, 1, v79);
  v49 = *(v42 + qword_27D8279A0 + 8);
  v77 = *(v42 + qword_27D8279A0);
  v122 = v77;
  v123 = v49;
  v73 = v49;

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283B3CA0);
  v76 = *MEMORY[0x277D11140];
  v111 = *(v111 + 104);
  v50 = v108;
  (v111)(v108);
  sub_228390160();

  sub_22838F0C0();
  v51 = v113;
  sub_228391540();
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_2283931D0();

  v124 = 0xD000000000000010;
  v125 = 0x80000002283B3CC0;
  v52 = v51;
  v53 = sub_228391530();
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  MEMORY[0x22AAB5C80](v53, v55);

  v93 = v124;
  v92 = v125;
  v56 = v112;
  v126 = v112;
  v127 = MEMORY[0x277D74C30];
  v57 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v102(v57, v52, v56);
  *(swift_allocObject() + 16) = v97;
  v58 = v116;
  v95(v18, v96, v116);
  v88(v74, 1, 1, v89);
  sub_228391290();
  sub_228391260();
  v87(v37, v82);
  v86(v18, v58);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v59;
  *(v60 + 24) = v61;
  v62 = v114;
  *v114 = 1;
  v83(v62, v84, v118);
  v78(v48, 1, 1, v79);
  v122 = v77;
  v123 = v73;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B3CE0);
  (v111)(v50, v76, v119);
  v63 = v107;
  sub_228390160();

  sub_22830ED24(0, &qword_27D824800, MEMORY[0x277D11000], v104);
  v64 = v109;
  v65 = *(v109 + 72);
  v66 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_228397F30;
  v68 = v67 + v66;
  v69 = v117;
  v70 = v110;
  (*(v64 + 16))(v68, v117, v110);
  (*(v64 + 32))(v68 + v65, v63, v70);
  (*(v64 + 8))(v69, v70);
  (*(v103 + 8))(v113, v112);
  return v67;
}

void sub_22830BF18(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_228391870();
    v4 = *(v3 + qword_27D8279D0);
    v5 = objc_allocWithZone(type metadata accessor for MedicationSourceListViewController());
    v6 = v4;
    v7 = v9;
    v8 = sub_22822F190(v6, v7);
    [a1 showAdaptively:v8 sender:a1];
  }
}

uint64_t sub_22830BFEC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v35 = a2;
  v2 = sub_228390460();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v29 - v7;
  v8 = sub_22838FFC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391590();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v18 = [objc_opt_self() tintColor];
  v19 = sub_228391450();
  sub_228391420();
  v19(v38, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();

  sub_228391540();
  v38[3] = v13;
  v38[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(v14 + 16))(boxed_opaque_existential_1, v17, v13);
  v21 = swift_allocObject();
  v22 = v30;
  swift_weakInit();
  v23 = *(v22 + qword_27D8279C8);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  *v12 = 1;
  (*(v9 + 104))(v12, *MEMORY[0x277D10F90], v8);
  v25 = sub_2283913A0();
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  v26 = *(v22 + qword_27D8279A0);
  v27 = *(v22 + qword_27D8279A0 + 8);
  v36 = v26;
  v37 = v27;

  MEMORY[0x22AAB5C80](0x657669686372412ELL, 0xEF6E6F747475422ELL);
  (*(v33 + 104))(v32, *MEMORY[0x277D11140], v34);
  sub_228390160();
  (*(v14 + 8))(v17, v13);
}

void sub_22830C51C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_228391870();
    v4 = *(v3 + qword_27D8279C0);
    if (sub_2283906B0())
    {
      v5 = *(v3 + qword_27D8279D8);
      v6 = swift_allocObject();
      v6[2] = v5;
      v6[3] = v3;
      v6[4] = v9;

      v7 = v9;
      v8 = _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(sub_22830EDC0, v6, 0, 0);

      [a1 presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      sub_22830DDBC(v9);
    }
  }
}

uint64_t sub_22830C660@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_228390460();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22830ED24(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = v28 - v6;
  v7 = sub_22838FFC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391590();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v17 = [objc_opt_self() systemRedColor];
  v18 = sub_228391450();
  sub_228391420();
  v18(v36, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v36[3] = v12;
  v36[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v13 + 16))(boxed_opaque_existential_1, v16, v12);
  v20 = swift_allocObject();
  v21 = v28[1];
  swift_weakInit();
  v22 = *(v21 + qword_27D8279C8);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *v11 = 1;
  (*(v8 + 104))(v11, *MEMORY[0x277D10F90], v7);
  v24 = sub_2283913A0();
  (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
  v25 = *(v21 + qword_27D8279A0);
  v26 = *(v21 + qword_27D8279A0 + 8);
  v34 = v25;
  v35 = v26;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B3C10);
  (*(v31 + 104))(v30, *MEMORY[0x277D11140], v32);
  sub_228390160();
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_22830CB4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391870();
    a4(v7, a1);
  }

  return result;
}

uint64_t sub_22830CBE0(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v9;
}

void sub_22830CCFC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = [objc_opt_self() sharedInstanceForHealthStore_];
  v8 = [v7 profile];

  v9 = [v8 displayTypeController];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() medicationDoseEventType];
    v12 = [v10 displayTypeForObjectType_];

    if (v12)
    {
      v13 = type metadata accessor for MedicationListAllDataProvider();
      v14 = objc_allocWithZone(v13);
      v15 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
      *&v14[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
      *&v14[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a1;
      *&v14[v15] = 0;
      v20.receiver = v14;
      v20.super_class = v13;
      v16 = a1;
      v17 = objc_msgSendSuper2(&v20, sel_initWithDisplayType_profile_, v12, v8);
      v18 = [objc_allocWithZone(MEMORY[0x277D12540]) initWithDisplayType:v12 profile:v8 dataProvider:v17 usingInsetStyling:1];
      [a2 showAdaptively:v18 sender:a2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_2283931D0();
  v19 = sub_228393600();
  MEMORY[0x22AAB5C80](v19);

  MEMORY[0x22AAB5C80](0xD000000000000039, 0x80000002283B3BB0);
  sub_228393300();
  __break(1u);
}

void sub_22830CF70(void *a1, void *a2)
{
  v3 = v2;
  v22 = *v2;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22830EC90(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  aBlock = a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v6 = sub_228390F20();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22818E210();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_22838F0C0();
  if (*(v5 + 16))
  {
    sub_228391FD0();
  }

  sub_22838F0C0();
  v9 = sub_228391FC0();

  v10 = sub_228391FC0();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v3;
  v12[4] = a2;
  v12[5] = v22;
  v13 = a1;

  v23 = a2;
  v14 = sub_228391FC0();

  v28 = sub_22830ECF8;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_228281980;
  v27 = &block_descriptor_9_0;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v11 addAction_];
  sub_22838F0C0();
  v18 = sub_228391FC0();

  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_228281980;
  v27 = &block_descriptor_12_1;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 actionWithTitle:v18 style:1 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  [v11 addAction_];
  [v23 presentViewController:v11 animated:1 completion:0];
}

void sub_22830D46C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391190();
  v14 = a2;
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    v20 = sub_228393600();
    v39 = a5;
    v22 = sub_2281C96FC(v20, v21, aBlock);
    v38 = a3;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = [v14 semanticIdentifier];
    v25 = [v24 stringValue];

    v26 = sub_228392000();
    v37 = v9;
    v28 = v27;

    a5 = v39;
    v29 = sub_2281C96FC(v26, v28, aBlock);

    *(v18 + 14) = v29;
    a3 = v38;
    _os_log_impl(&dword_22816B000, v15, v16, "[%s] Attempting to delete medication with semantic identifier %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v19, -1, -1);
    v30 = v18;
    a4 = v40;
    MEMORY[0x22AAB7B80](v30, -1, -1);

    (*(v10 + 8))(v13, v37);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v31 = sub_22830A008();
  v32 = *(a3 + qword_27D8279D8);
  v33 = swift_allocObject();
  v33[2] = v14;
  v33[3] = a4;
  v33[4] = v32;
  v33[5] = a5;
  aBlock[4] = sub_22830ED04;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  aBlock[3] = &block_descriptor_18_0;
  v34 = _Block_copy(aBlock);
  v35 = v14;

  v36 = a4;

  [v31 deleteUserDomainConcept:v35 completion:v34];
  _Block_release(v34);
}

uint64_t sub_22830D7BC(char a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v11 = sub_228391DC0();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_228391DF0();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v27 = sub_228392790();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a2;
  *(v19 + 56) = v26;
  aBlock[4] = sub_22830ED10;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_24_1;
  v20 = _Block_copy(aBlock);
  v21 = a3;
  v22 = a4;

  v23 = a2;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22830F45C(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_22830ED24(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  v24 = v27;
  MEMORY[0x22AAB6340](0, v18, v14, v20);
  _Block_release(v20);

  (*(v29 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v28);
}

uint64_t sub_22830DAE0(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = [objc_opt_self() sharedInstance];
    [v14 removeMedication_];

    v15 = [a3 navigationController];
    if (v15)
    {
      v16 = v15;
    }

    return sub_228390FE0();
  }

  else
  {
    sub_228391190();
    v18 = a5;
    v19 = sub_2283911A0();
    v20 = sub_2283925C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315394;
      v23 = sub_228393600();
      v25 = sub_2281C96FC(v23, v24, &v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v30 = a5;
      v26 = a5;
      sub_22830EC90(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v27 = sub_228392020();
      v29 = sub_2281C96FC(v27, v28, &v31);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_22816B000, v19, v20, "[%s] Error deleting medication %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v21, -1, -1);
    }

    return (*(v10 + 8))(v13, v9);
  }
}

void sub_22830DDBC(void *a1)
{
  v3 = *v1;
  v4 = sub_2283906E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27D8279C0);
  v10 = sub_2283906B0();
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(a1);
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v11 = [a1 firstOntologyCoding];
    if (v11)
    {

      v12 = sub_22830A01C();
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = a1;
      v14[4] = v3;
      aBlock[4] = sub_22830EC6C;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2283282E4;
      aBlock[3] = &block_descriptor_24;
      v15 = _Block_copy(aBlock);
      v16 = a1;

      [v12 deleteDismissedPregnancyLactationInteractionsForMedication:v16 interactionTypes:0 completion:v15];
      _Block_release(v15);
    }
  }
}

uint64_t sub_22830DFF4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v7 + 16))(v11, result + qword_27D827998, v6);

      v15 = a4;
      v16 = a2;
      v17 = sub_2283911A0();
      v18 = sub_2283925C0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v19 = 136315906;
        v20 = sub_228393600();
        v22 = sub_2281C96FC(v20, v21, &v49);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v47 = 0xD000000000000015;
        v48 = 0x80000002283ACED0;
        v23 = sub_228392070();
        v25 = sub_2281C96FC(v23, v24, &v49);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2112;
        v26 = [v15 semanticIdentifier];
        *(v19 + 24) = v26;
        v27 = v45;
        *v45 = v26;
        *(v19 + 32) = 2080;
        v47 = a2;
        sub_22830EC90(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
        v28 = sub_228392EE0();
        v30 = sub_2281C96FC(v28, v29, &v49);

        *(v19 + 34) = v30;
        _os_log_impl(&dword_22816B000, v17, v18, "%s] Unexpected error deleting dismissed %s interactions for medication: %@, error: %s", v19, 0x2Au);
        sub_228193354(v27);
        MEMORY[0x22AAB7B80](v27, -1, -1);
        v31 = v46;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v31, -1, -1);
        MEMORY[0x22AAB7B80](v19, -1, -1);
      }

      return (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v7 + 16))(v13, result + qword_27D827998, v6);

      v32 = a4;
      v33 = sub_2283911A0();
      v34 = sub_2283925E0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v35 = 136315650;
        v37 = sub_228393600();
        v39 = sub_2281C96FC(v37, v38, &v49);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v47 = 0xD000000000000015;
        v48 = 0x80000002283ACED0;
        v40 = sub_228392070();
        v42 = sub_2281C96FC(v40, v41, &v49);

        *(v35 + 14) = v42;
        *(v35 + 22) = 2112;
        v43 = [v32 semanticIdentifier];
        *(v35 + 24) = v43;
        *v36 = v43;
        _os_log_impl(&dword_22816B000, v33, v34, "%s] Successfully deleted dismissed %s interactions for medication: %@", v35, 0x20u);
        sub_228193354(v36);
        MEMORY[0x22AAB7B80](v36, -1, -1);
        v44 = v46;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v44, -1, -1);
        MEMORY[0x22AAB7B80](v35, -1, -1);
      }

      return (*(v7 + 8))(v13, v6);
    }
  }

  return result;
}

uint64_t sub_22830E55C()
{
  v1 = qword_27D827998;
  v2 = sub_2283911B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27D8279C0);

  v4 = *(v0 + qword_27D8279C8);

  v5 = *(v0 + qword_27D8279D8);

  v6 = *(v0 + qword_27D8279A0 + 8);

  v7 = *(v0 + qword_27D8279B8);
}

uint64_t OptionsDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = qword_27D827998;
  v2 = sub_2283911B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27D8279C0);

  v4 = *(v0 + qword_27D8279C8);

  v5 = *(v0 + qword_27D8279D8);

  v6 = *(v0 + qword_27D8279A0 + 8);

  v7 = *(v0 + qword_27D8279B8);

  return v0;
}

uint64_t OptionsDataSource.__deallocating_deinit()
{
  v0 = *OptionsDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall OptionsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_22830E834()
{
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t OptionsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (sub_22838F750())
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_22830F45C(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v5 = sub_22838FB60();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_22838FB50();
    a1[3] = v5;
    result = sub_22830F45C(&qword_27D823960, MEMORY[0x277D10E18]);
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

uint64_t type metadata accessor for OptionsDataSource()
{
  result = qword_27D8279E8;
  if (!qword_27D8279E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22830EB20()
{
  result = sub_2283911B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22830EC90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22830ED24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22830EDB8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22830C51C(a1);
}

void sub_22830EDC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_228390FE0();
  sub_22830DDBC(v2);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22830EE78(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22830BF18(a1);
}

void sub_22830EE80()
{
  if (!qword_27D8279F8)
  {
    sub_22830EF6C();
    sub_2281A65B4();
    sub_22830F45C(&qword_27D827A10, sub_22830EF6C);
    sub_22830F45C(&qword_27D8241C0, sub_2281A65B4);
    v0 = sub_2283916E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8279F8);
    }
  }
}

void sub_22830EF6C()
{
  if (!qword_27D827A00)
  {
    sub_22830F018(255, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
    sub_22830F080();
    v0 = sub_2283917A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827A00);
    }
  }
}

void sub_22830F018(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22830F080()
{
  result = qword_27D827A08;
  if (!qword_27D827A08)
  {
    sub_22830F018(255, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827A08);
  }

  return result;
}

void sub_22830F104()
{
  if (!qword_27D827A18)
  {
    sub_22830EE80();
    sub_22830F1F0();
    sub_22830F45C(&qword_27D827A20, sub_22830EE80);
    sub_22830F45C(&qword_27D827D00, sub_22830F1F0);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827A18);
    }
  }
}

void sub_22830F1F0()
{
  if (!qword_27D824108)
  {
    sub_2283906E0();
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824108);
    }
  }
}

void sub_22830F258()
{
  if (!qword_27D827A28)
  {
    sub_22830F104();
    sub_22830F45C(&qword_27D827A30, sub_22830F104);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827A28);
    }
  }
}

void sub_22830F2F4()
{
  if (!qword_27D827A38)
  {
    sub_22830F258();
    sub_22830F45C(&qword_27D827A40, sub_22830F258);
    v0 = sub_228391730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827A38);
    }
  }
}

void sub_22830F388()
{
  if (!qword_27D827A48)
  {
    sub_22830F2F4();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22830F45C(&qword_27D827A50, sub_22830F2F4);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827A48);
    }
  }
}

uint64_t sub_22830F45C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22830F4A4()
{
  if (!qword_27D827A60)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    sub_2283906E0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827A60);
    }
  }
}

void sub_22830F590(uint64_t a1@<X8>)
{
  v3 = [v1 timeIntervals];
  sub_2281DC17C();
  v4 = sub_2283921A0();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_2283930D0();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v4 + 8 * v7 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_19;
  }

  v8 = MEMORY[0x22AAB6D80](v7, v4);
LABEL_8:
  v9 = v8;

  v10 = [v9 cycleIntervalDays];

  if (!v10)
  {
LABEL_13:
    v12 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  v11 = [v10 integerValue];

  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    v13 = 0;
LABEL_14:
    *a1 = v12;
    *(a1 + 8) = v13;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_22830F6D4(char a1)
{
  v2 = *v1;
  if ((a1 & 1) == 0)
  {
    if (v2 != 2)
    {
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_17:
    swift_once();
    return sub_22838F0C0();
  }

  if (v2 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_17;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_14:
  sub_22838F0C0();
  sub_2281BC044();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83B88];
  *(v4 + 16) = xmmword_228397F40;
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_228391FD0();

  return v7;
}

uint64_t getEnumTagSinglePayload for FrequencyInterval(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FrequencyInterval(uint64_t result, int a2, int a3)
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

uint64_t sub_22830F9DC()
{
  v4 = MEMORY[0x277D84F90];
  sub_2281C9E24(0, 98, 0);
  v0 = 2;
  result = v4;
  do
  {
    v5 = result;
    v3 = *(result + 16);
    v2 = *(result + 24);
    if (v3 >= v2 >> 1)
    {
      sub_2281C9E24((v2 > 1), v3 + 1, 1);
      result = v5;
    }

    *(result + 8 * v3 + 32) = v0;
    *(result + 16) = v3 + 1;
    ++v0;
  }

  while (v0 != 100);
  return result;
}

uint64_t InteractionSeparatorLineItem.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_22838F490();
  v4 = (v3 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_228310120(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell);
  *v4 = sub_22838FBB0();
  v4[1] = v5;
  return v3;
}

uint64_t InteractionSeparatorLineItem.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);

  return v1;
}

uint64_t sub_22830FB68()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);
  v3 = sub_22838F450();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return v2;
}

uint64_t InteractionSeparatorLineItem.init()()
{
  sub_22838F490();
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_228310120(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell);
  *v1 = sub_22838FBB0();
  v1[1] = v2;
  return v0;
}

uint64_t sub_22830FC98()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t InteractionSeparatorLineItem.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);

  return v0;
}

uint64_t InteractionSeparatorLineItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22830FE54()
{
  sub_228393520();
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_22830FF08()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22830FF48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22838F470();
}

uint64_t sub_22830FFA8()
{
  v1 = *v0;
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  return sub_228391F70();
}

uint64_t type metadata accessor for InteractionSeparatorLineItem()
{
  result = qword_27D827A70;
  if (!qword_27D827A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228310120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228310168()
{
  sub_228393520();
  v1 = *v0;
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier + 8);
  sub_2283920B0();
  sub_22838F4A0();
  sub_228310120(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_22831021C()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  v3 = *v1;
  v2 = v1[1];
  v4 = sub_22838F450();
  v6 = v5;

  MEMORY[0x22AAB5C80](v4, v6);

  return v3;
}

uint64_t sub_2283102A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228310310()
{
  result = sub_22838F4A0();
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

uint64_t DosageItem.init(uuid:isEditEnabled:medication:conceptBackedLoggingUnits:dataProvider:updateHandler:deletionHandler:validationHandler:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  type metadata accessor for DosageCollectionViewCell(0);
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
  *a9 = sub_22838FBB0();
  a9[1] = v19;
  a9[2] = 0;
  a9[3] = 0xE000000000000000;
  v20 = type metadata accessor for DosageItem(0);
  a9[4] = 0;
  a9[5] = 0;
  v21 = (a9 + v20[11]);
  v22 = (a9 + v20[12]);
  v23 = (a9 + v20[13]);
  v24 = (a9 + v20[14]);
  v25 = v20[7];
  v26 = sub_22838F4A0();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a1, v26);
  *(a9 + v20[8]) = a2;
  *(a9 + v20[9]) = a3;
  v28 = (a9 + v20[10]);
  *v28 = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  *v21 = a8;
  v21[1] = a10;
  *v22 = a11;
  v22[1] = a12;
  *v24 = a13;
  v24[1] = a14;
  *v23 = a15;
  v23[1] = a16;
  return result;
}

uint64_t DosageItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DosageItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DosageItem.uniqueIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for DosageItem(0) + 28);
  v2 = sub_22838F450();
  MEMORY[0x22AAB5C80](v2);

  return 0x7449656761736F44;
}

uint64_t DosageItem.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DosageItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DosageItem.placeholderText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DosageItem.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DosageItem.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DosageItem(0) + 28);
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DosageItem.isEditEnabled.setter(char a1)
{
  result = type metadata accessor for DosageItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id DosageItem.medication.getter()
{
  v1 = *(v0 + *(type metadata accessor for DosageItem(0) + 36));

  return v1;
}

uint64_t DosageItem.conceptBackedLoggingUnits.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 40));
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  sub_228267888(*v1, v1[1]);
  return v2;
}

uint64_t sub_2283109E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for DosageItem(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_228176FA8(v2);
  result = sub_228176EC8(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t DosageItem.dataProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DosageItem.dataProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 44));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310B28@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228310BBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.updateHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DosageItem.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 48));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310D3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_228318D14;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228310DD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_228318CD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.validationHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 52));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DosageItem.validationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 52));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_228310F50@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DosageItem(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22822F0D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_228176FA8(v4);
}

uint64_t sub_228310FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22822F0F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for DosageItem(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  sub_228176FA8(v3);
  result = sub_228176EC8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t DosageItem.deletionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for DosageItem(0) + 56));
  v2 = *v1;
  v3 = v1[1];
  sub_228176FA8(*v1);
  return v2;
}

uint64_t DosageItem.deletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DosageItem(0) + 56));
  v6 = v5[1];
  result = sub_228176EC8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_228311164(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 44);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822C53C;
}

uint64_t sub_2283111A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v2[1];
  }

  sub_228176FA8(*v2);
  return v4;
}

uint64_t sub_2283111E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v3 + *(a3 + 48));
  v7 = v6[1];
  result = sub_228176EC8(*v6);
  *v6 = a1;
  v6[1] = v5;
  return result;
}

uint64_t (*sub_22831122C(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 48);
  *(a1 + 24) = v3;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v2;
  return sub_22822F0FC;
}

uint64_t sub_228311270(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = sub_22838F450();
  MEMORY[0x22AAB5C80](v3);

  return 0x7449656761736F44;
}

uint64_t sub_2283112D8(uint64_t a1)
{
  v2 = sub_228318D68(&qword_27D826210, type metadata accessor for DosageItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228311354(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2283113C0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_228311418(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2283114D8(uint64_t a1, void **a2)
{
  sub_228317208(a1, v7, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v3) + 0x160))(v5);
  return sub_228317270(v7, sub_228181D50);
}

uint64_t sub_2283115B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  return sub_228317208(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_228311620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x160))(v4);
  return sub_228317270(a1, sub_228181D50);
}

uint64_t (*sub_2283116E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228311748;
}

uint64_t sub_228311748(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x160))(result);
  }

  return result;
}

uint64_t sub_2283117B4@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D74AE0];
  sub_22831713C(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  swift_beginAccess();
  sub_228318BCC(v1 + v12, v11, &qword_280DDBCE0, v4);
  v13 = sub_2283912F0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  v15 = MEMORY[0x277D74AE0];
  sub_228318DB0(v11, &qword_280DDBCE0, MEMORY[0x277D74AE0]);
  sub_2283119FC(ObjectType, a1);
  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_228318C4C(v9, v1 + v12, &qword_280DDBCE0, v15);
  return swift_endAccess();
}

uint64_t sub_2283119FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  sub_22831713C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - v5;
  v7 = sub_228391210();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391220();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D74A98], v12);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  v19 = sub_228391230();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);

  sub_228391200();
  sub_2283912C0();

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_228311CDC(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_2283911B0();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - v12;
  v14 = type metadata accessor for Dosage();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v9);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - v19;
  v21 = type metadata accessor for DosageItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    goto LABEL_10;
  }

  v27 = Strong;
  v54 = v8;
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v27 + v28, &v61, sub_228181D50);

  if (!*(&v62 + 1))
  {
LABEL_10:
    sub_228317270(&v61, sub_228181D50);
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_11;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v29 = swift_dynamicCast();
  (*(v22 + 56))(v20, v29 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v30 = v25;
    sub_2283171A0(v20, v25, type metadata accessor for DosageItem);
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      v33 = v31;
      swift_beginAccess();
      sub_228318BCC(v33 + v32, v13, &qword_27D826200, type metadata accessor for Dosage);

      v34 = (*(v56 + 48))(v13, 1, v14);
      v35 = v54;
      if (v34 != 1)
      {
        v36 = v55;
        sub_2283171A0(v13, v55, type metadata accessor for Dosage);
        v37 = &v25[*(v21 + 56)];
        if (*v37)
        {
          v38 = *(v37 + 1);
          (*v37)(v25, v36);
        }

        sub_228317270(v36, type metadata accessor for Dosage);
        return sub_228317270(v30, type metadata accessor for DosageItem);
      }
    }

    else
    {
      (*(v56 + 56))(v13, 1, 1, v14);
      v35 = v54;
    }

    sub_228318DB0(v13, &qword_27D826200, type metadata accessor for Dosage);
    sub_228391170();
    v47 = sub_2283911A0();
    v48 = sub_2283925C0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315138;
      v51 = sub_228393600();
      v53 = sub_2281C96FC(v51, v52, &v60);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_22816B000, v47, v48, "[%s] Unable to continue with cell selection as Dosage is nil", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAB7B80](v50, -1, -1);
      MEMORY[0x22AAB7B80](v49, -1, -1);
    }

    (*(v58 + 8))(v35, v59);
    return sub_228317270(v30, type metadata accessor for DosageItem);
  }

LABEL_11:
  sub_228318DB0(v20, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v39 = sub_2283911A0();
  v40 = sub_2283925C0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v61 = v42;
    *v41 = 136315138;
    v43 = sub_228393600();
    v45 = sub_2281C96FC(v43, v44, &v61);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_22816B000, v39, v40, "[%s] item is not a DatePickerItem", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AAB7B80](v42, -1, -1);
    MEMORY[0x22AAB7B80](v41, -1, -1);
  }

  return (*(v58 + 8))(v6, v59);
}

id sub_228312440()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField];
  }

  else
  {
    swift_getObjectType();
    v4 = sub_2283124B0(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2283124B0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v3 = *MEMORY[0x277D76918];
  v4 = sub_228392AD0();
  [v2 setFont_];

  v5 = *MEMORY[0x277D12788];
  v6 = sub_228392000();
  v8 = v7;
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
  v9 = v2;
  v10 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v10);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);

  v11 = sub_228391FC0();

  [v9 setAccessibilityIdentifier_];

  v12 = [objc_opt_self() systemBlueColor];
  [v9 setTextColor_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  LOBYTE(v11) = [a1 effectiveUserInterfaceLayoutDirection] == 1;
  v13 = [a1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];

  LOBYTE(v13) = sub_2283928C0();
  if ((v13 ^ v11))
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  [v9 setTextAlignment_];
  return v9;
}

uint64_t sub_228312780(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_228312794(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_228312440();
  return sub_2283127DC;
}

void sub_2283127DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = v2;
}

id sub_2283127F4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_22831285C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22831285C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v2 = sub_228392000();
  v4 = v3;
  sub_228318D68(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
  v5 = v0;
  v6 = sub_22838FBB0();
  MEMORY[0x22AAB5C80](v6);

  v12 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C65756C61562ELL, 0xEB000000006C6562);

  v7 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v8 = *MEMORY[0x277D76918];
  v9 = sub_228392AD0();
  [v5 setFont_];

  [v5 setTextAlignment_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() systemBlueColor];
  [v5 setTextColor_];

  [v5 setNumberOfLines_];
  [v5 setUserInteractionEnabled_];
  return v5;
}

id sub_228312AD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  v11 = type metadata accessor for Dosage();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier];
  v13 = *MEMORY[0x277D12788];
  v29 = sub_228392000();
  v30 = v14;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v15 = v30;
  *v12 = v29;
  v12[1] = v15;
  v16 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  v18 = sub_2283912F0();
  v19 = *(*(v18 - 8) + 56);
  v19(&v5[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker;
  v21 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setPreferredDatePickerStyle_];
  [v21 setDatePickerMode_];
  [v21 setMinuteInterval_];
  [v21 setContentHorizontalAlignment_];
  [v21 setRoundsToMinuteInterval_];
  *&v5[v20] = v21;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] = 0;
  v19(&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___spacerAccessory], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = MEMORY[0x277D84F90];
  v28.receiver = v5;
  v28.super_class = type metadata accessor for DosageCollectionViewCell(0);
  v22 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v24 = v22;
  v25 = [v23 init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v26 = sub_228392BD0();
  [v25 setBackgroundColor_];

  [v24 setBackgroundView_];
  sub_228312E90();

  return v24;
}

id DosageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_228312E90()
{
  v1 = MEMORY[0x277D84560];
  sub_22831713C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v2 = *(sub_2283912F0() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  sub_2283117B4(v5 + v4);
  sub_2283928F0();
  v6 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  [v6 addTarget:v0 action:sel_timePickerChanged_ forControlEvents:4096];
  v7 = sub_228312440();
  [v7 setDelegate_];

  v8 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] setKeyboardType_];
  [*&v0[v8] addTarget:v0 action:sel_textFieldChanged_ forControlEvents:0x20000];
  v9 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_valueLabelTapped_];
  [v9 setNumberOfTapsRequired_];
  v10 = sub_2283127F4();
  [v10 addGestureRecognizer_];

  v11 = [v0 contentView];
  [v11 addSubview_];

  v12 = [v0 contentView];
  [v12 addSubview_];

  v13 = [v0 contentView];
  [v13 addSubview_];

  sub_228315110();
  v14 = &v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_228314FDC();

  sub_22831713C(0, &qword_27D825090, sub_2281D51F0, v1);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_228397F40;
  v18 = sub_228391640();
  v19 = MEMORY[0x277D74DB8];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();
}

void sub_2283131FC(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LODWORD(v3) = sub_2283928C0() & 1;
  v5 = [a2 preferredContentSizeCategory];
  LODWORD(v4) = sub_2283928C0() & 1;

  if (v3 != v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_228315110();
    }
  }
}

uint64_t sub_2283132D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22838F580();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Dosage();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v52 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v52 - v21;
  v23 = type metadata accessor for DosageItem(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(&v0[v28], v60, sub_228181D50);
  if (!v60[3])
  {
    sub_228317270(v60, sub_228181D50);
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_228318DB0(v22, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v29 = swift_dynamicCast();
  (*(v24 + 56))(v22, v29 ^ 1u, 1, v23);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_228318DB0(v22, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  v30 = v27;
  sub_2283171A0(v22, v27, type metadata accessor for DosageItem);
  v31 = &v27[*(v23 + 44)];
  if (!*v31)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_9;
  }

  v32 = v0;
  v33 = v31[1];
  (*v31)(v27);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_9:
    sub_228318DB0(v14, &qword_27D826200, type metadata accessor for Dosage);
    v44 = v57;
    sub_228391170();
    v45 = sub_2283911A0();
    v46 = sub_2283925C0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60[0] = v48;
      *v47 = 136315138;
      v49 = sub_228393600();
      v51 = sub_2281C96FC(v49, v50, v60);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_22816B000, v45, v46, "[%s] Unable to continue with item update as Dosage is nil", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAB7B80](v48, -1, -1);
      MEMORY[0x22AAB7B80](v47, -1, -1);
    }

    (*(v58 + 8))(v44, v59);
    v42 = v30;
    return sub_228317270(v42, type metadata accessor for DosageItem);
  }

  v34 = v14;
  v35 = v52;
  sub_2283171A0(v34, v52, type metadata accessor for Dosage);
  sub_228317208(v35, v12, type metadata accessor for Dosage);
  (*(v16 + 56))(v12, 0, 1, v15);
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  swift_beginAccess();
  sub_228318C4C(v12, &v32[v36], &qword_27D826200, type metadata accessor for Dosage);
  swift_endAccess();
  [v32 setUserInteractionEnabled_];
  v37 = *&v32[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v38 = v35 + *(v15 + 20);
  v39 = sub_22838F380();
  [v37 setDate:v39 animated:1];

  sub_228316290();
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v40 = *(v35 + *(v15 + 24));
  v41 = v53;
  sub_22838F540();
  sub_228390A90();
  (*(v54 + 8))(v41, v55);
  sub_228313AB8();

  sub_228315110();
  sub_228317270(v35, type metadata accessor for Dosage);
  v42 = v27;
  return sub_228317270(v42, type metadata accessor for DosageItem);
}

void sub_228313AB8()
{
  v0 = sub_22838F580();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22838F540();
  sub_228390AA0();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22838F540();
  sub_228390A90();
  v7(v4, v0);
  v8 = sub_228312440();
  v9 = sub_228391FC0();

  [v8 setText_];

  v10 = sub_2283127F4();
  sub_228313CA8(v6);
  v11 = sub_228391FC0();

  [v10 setText_];
}

uint64_t sub_228313CA8(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for DosageItem(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v2 + v18, v36, sub_228181D50);
  if (v36[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v19 = swift_dynamicCast();
    (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2283171A0(v12, v17, type metadata accessor for DosageItem);
      v20 = &v17[*(v13 + 40)];
      if (v20[1])
      {
        v21 = *v20;
        v23 = v20[2];
        v22 = v20[3];
        v24 = v20[1];

        sub_228317270(v17, type metadata accessor for DosageItem);

        if (a1 == 1.0)
        {
          return v21;
        }

        else
        {
          return v23;
        }
      }

      else
      {
        v33 = *&v17[*(v13 + 36)];
        v34 = sub_2283929E0();
        sub_228317270(v17, type metadata accessor for DosageItem);
        return v34;
      }
    }
  }

  else
  {
    sub_228317270(v36, sub_228181D50);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_228318DB0(v12, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v26 = sub_2283911A0();
  v27 = sub_2283925C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 136315138;
    v30 = sub_228393600();
    v32 = sub_2281C96FC(v30, v31, v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22816B000, v26, v27, "[%s] item is not a DosageItem", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_2283141AC(void *a1)
{
  v107 = a1;
  ObjectType = swift_getObjectType();
  v112 = sub_2283911B0();
  v2 = *(v112 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v112);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v95 - v7;
  v103 = sub_22838F440();
  v102 = *(v103 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22838F4A0();
  v99 = *(v100 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22838F580();
  v106 = *(v104 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v104);
  v105 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v96 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  v24 = type metadata accessor for Dosage();
  v109 = *(v24 - 8);
  v110 = v24;
  v25 = *(v109 + 64);
  MEMORY[0x28223BE20](v24);
  v108 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v15);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v95 - v29;
  v31 = type metadata accessor for DosageItem(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v1 + v36, v114, sub_228181D50);
  if (v114[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v37 = swift_dynamicCast();
    (*(v32 + 56))(v30, v37 ^ 1u, 1, v31);
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      v38 = v35;
      sub_2283171A0(v30, v35, type metadata accessor for DosageItem);
      v39 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      swift_beginAccess();
      sub_228318BCC(v1 + v39, v23, &qword_27D826200, type metadata accessor for Dosage);
      if ((*(v109 + 48))(v23, 1, v110) == 1)
      {
        sub_228318DB0(v23, &qword_27D826200, type metadata accessor for Dosage);
        sub_228391170();
        v40 = sub_2283911A0();
        v41 = sub_2283925C0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v113 = v43;
          *v42 = 136315138;
          v44 = sub_228393600();
          v46 = sub_2281C96FC(v44, v45, &v113);
          v38 = v35;

          *(v42 + 4) = v46;
          _os_log_impl(&dword_22816B000, v40, v41, "[%s] CurrentDosage is nil", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x22AAB7B80](v43, -1, -1);
          MEMORY[0x22AAB7B80](v42, -1, -1);
        }

        (*(v2 + 8))(v8, v112);
      }

      else
      {
        v112 = v39;
        v55 = v108;
        sub_2283171A0(v23, v108, type metadata accessor for Dosage);
        v56 = v107;
        v57 = [v107 text];
        if (!v57)
        {
          goto LABEL_17;
        }

        v58 = v57;
        v59 = sub_228392000();
        v61 = v60;

        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = v59 & 0xFFFFFFFFFFFFLL;
        }

        if (v62)
        {
          v63 = [v56 text];
          ObjectType = v1;
          if (v63)
          {
            v64 = v63;
            sub_228392000();
          }

          sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
          v66 = v105;
          sub_22838F540();
          sub_228390AA0();
          v68 = v67;

          v69 = v106 + 8;
          v70 = *(v106 + 8);
          v71 = v66;
          v72 = v104;
          v70(v71, v104);
          v65 = v108;
          if (v68 != *(v108 + *(v110 + 24)))
          {
            v106 = v69;
            v73 = [v56 text];
            if (v73)
            {
              v74 = v73;
              sub_228392000();

              v72 = v104;
            }

            v75 = v105;
            sub_22838F540();
            sub_228390AA0();
            v77 = v76;

            v70(v75, v72);
            v78 = sub_2283127F4();
            sub_228313CA8(v77);
            v79 = sub_228391FC0();

            [v78 setText_];

            v80 = v108;
            (*(v99 + 16))(v98, v108, v100);
            (*(v102 + 16))(v101, v80 + *(v110 + 20), v103);
            v81 = [v56 text];
            if (v81)
            {
              v82 = v81;
              sub_228392000();
            }

            v83 = v105;
            sub_22838F540();
            sub_228390AA0();
            v85 = v84;

            v70(v83, v104);
            v86 = v97;
            (*(v99 + 32))(v97, v98, v100);
            v87 = v110;
            (*(v102 + 32))(v86 + *(v110 + 20), v101, v103);
            *(v86 + *(v87 + 24)) = v85;
            (*(v109 + 56))(v86, 0, 1, v87);
            v89 = ObjectType;
            v88 = v112;
            swift_beginAccess();
            sub_228318C4C(v86, v89 + v88, &qword_27D826200, type metadata accessor for Dosage);
            swift_endAccess();
            v90 = v38 + *(v31 + 48);
            v91 = *v90;
            if (*v90)
            {
              v92 = *(v90 + 8);
              v93 = v89 + v88;
              v94 = v96;
              sub_228318BCC(v93, v96, &qword_27D826200, type metadata accessor for Dosage);
              v91(v38, v94);
              sub_228318DB0(v94, &qword_27D826200, type metadata accessor for Dosage);
            }

            v65 = v108;
          }
        }

        else
        {
LABEL_17:
          v65 = v55;
        }

        sub_228317270(v65, type metadata accessor for Dosage);
      }

      return sub_228317270(v38, type metadata accessor for DosageItem);
    }
  }

  else
  {
    sub_228317270(v114, sub_228181D50);
    (*(v32 + 56))(v30, 1, 1, v31);
  }

  sub_228318DB0(v30, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v47 = sub_2283911A0();
  v48 = sub_2283925C0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v114[0] = v50;
    *v49 = 136315138;
    v51 = sub_228393600();
    v53 = sub_2281C96FC(v51, v52, v114);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_22816B000, v47, v48, "[%s] item is not a DatePickerItem", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AAB7B80](v50, -1, -1);
    MEMORY[0x22AAB7B80](v49, -1, -1);
  }

  return (*(v2 + 8))(v6, v112);
}

void sub_228314FDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker);

  MEMORY[0x22AAB5C80](0x636950656D69542ELL, 0xEF6C6C654372656BLL);
  v2 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];

  v3 = sub_228312440();

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);
  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];
}

id sub_228315110()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints;
  v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints];
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v4 = sub_228392190();

  [v1 deactivateConstraints_];

  v5 = *&v0[v2];
  *&v0[v2] = MEMORY[0x277D84F90];

  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_2283928C0();
  if (v6)
  {
    sub_228315230();
  }

  else
  {
    sub_228315834();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_228315230()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:6.0];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  if (qword_27D823320 != -1)
  {
    swift_once();
  }

  v10 = *&qword_27D827A80;
  v11 = [v7 constraintEqualToAnchor:v9 constant:*&qword_27D827A80];

  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14 constant:-v10];
  *(v1 + 48) = v15;
  v16 = sub_228312440();
  v17 = [v16 topAnchor];

  v18 = [v2 bottomAnchor];
  v19 = [v17 &selRef_resignFirstResponder + 6];

  *(v1 + 56) = v19;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v21 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] leadingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 &selRef_resignFirstResponder + 6];
  *(v1 + 64) = v24;
  v25 = [*&v0[v20] trailingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27 constant:-v10];
  *(v1 + 72) = v28;
  v29 = sub_2283127F4();
  v30 = [v29 topAnchor];

  v31 = [*&v0[v20] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:6.0];

  *(v1 + 80) = v32;
  v33 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v34 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] leadingAnchor];
  v35 = [v0 &selRef_didTapDay_];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:v10];
  *(v1 + 88) = v37;
  v38 = [*&v0[v33] trailingAnchor];
  v39 = [v0 &selRef_didTapDay_];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40 constant:-v10];
  *(v1 + 96) = v41;
  v42 = [*&v0[v33] bottomAnchor];
  v43 = [v0 &selRef_didTapDay_];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-6.0];
  *(v1 + 104) = v45;
  v46 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();
  [v46 activateConstraints_];

  v48 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = v1;
}

uint64_t sub_228315834()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D823320 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D827A80;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D827A80];

  *(v1 + 32) = v7;
  v8 = [v2 topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
  *(v1 + 40) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-6.0];
  *(v1 + 48) = v15;
  v16 = sub_228312440();
  v17 = [v16 leadingAnchor];

  v18 = [v2 trailingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:v6];

  *(v1 + 56) = v19;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v21 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] topAnchor];
  v22 = [v0 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:6.0];
  *(v1 + 64) = v24;
  v25 = [*&v0[v20] bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-6.0];
  *(v1 + 72) = v28;
  v29 = sub_2283127F4();
  v30 = [v29 leadingAnchor];

  v31 = [*&v0[v20] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  *(v1 + 80) = v32;
  v33 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v34 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-v6];
  *(v1 + 88) = v37;
  v38 = [*&v0[v33] topAnchor];
  v39 = [v0 contentView];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:6.0];
  *(v1 + 96) = v41;
  v42 = [*&v0[v33] bottomAnchor];
  v43 = [v0 contentView];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-6.0];
  *(v1 + 104) = v45;
  v46 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();
  [v46 activateConstraints_];

  v48 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = v1;
}

id DosageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DosageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DosageCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_228315FF4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

Swift::Void __swiftcall DosageCollectionViewCell.textFieldShouldReturn(_:)(UITextField *a1)
{
  v1 = sub_228312440();
  [v1 resignFirstResponder];
}

uint64_t sub_22831625C()
{
  sub_228390360();
  result = sub_228390350();
  qword_27D827A80 = v1;
  return result;
}

uint64_t sub_228316290()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v100 = *(v1 - 8);
  v101 = v1;
  v2 = *(v100 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v88 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v88 - v10;
  v97 = sub_22838F440();
  v95 = *(v97 - 8);
  v11 = v95[8];
  v12 = MEMORY[0x28223BE20](v97);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v88 - v15;
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, v7);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  v22 = type metadata accessor for Dosage();
  v98 = *(v22 - 8);
  v23 = *(v98 + 64);
  MEMORY[0x28223BE20](v22);
  v94 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v7);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v88 - v27;
  v29 = type metadata accessor for DosageItem(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v0 + v34, v103, sub_228181D50);
  if (v103[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v35 = swift_dynamicCast();
    (*(v30 + 56))(v28, v35 ^ 1u, 1, v29);
    if ((*(v30 + 48))(v28, 1, v29) != 1)
    {
      v36 = v28;
      v37 = v33;
      sub_2283171A0(v36, v33, type metadata accessor for DosageItem);
      v38 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      swift_beginAccess();
      sub_228318BCC(v0 + v38, v21, &qword_27D826200, type metadata accessor for Dosage);
      if ((*(v98 + 48))(v21, 1, v22) == 1)
      {
        sub_228318DB0(v21, &qword_27D826200, type metadata accessor for Dosage);
        v39 = v93;
        sub_228391170();
        v40 = sub_2283911A0();
        v41 = sub_2283925C0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v102 = v43;
          *v42 = 136315138;
          v44 = sub_228393600();
          v46 = sub_2281C96FC(v44, v45, &v102);

          *(v42 + 4) = v46;
          v37 = v33;
          _os_log_impl(&dword_22816B000, v40, v41, "[%s] CurrentDosage is nil", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x22AAB7B80](v43, -1, -1);
          MEMORY[0x22AAB7B80](v42, -1, -1);
        }

        (*(v100 + 8))(v39, v101);
        return sub_228317270(v37, type metadata accessor for DosageItem);
      }

      v101 = v33;
      v55 = v94;
      sub_2283171A0(v21, v94, type metadata accessor for Dosage);
      ObjectType = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker);
      v100 = v0;
      v56 = [ObjectType date];
      sub_22838F3E0();

      v57 = v96;
      sub_22838F3B0();
      v58 = v95[1];
      v59 = v97;
      v58(v14, v97);
      v60 = *(v22 + 20);
      sub_228318D68(&unk_27D827B20, MEMORY[0x277CC9578]);
      if (sub_228391FB0())
      {
        v58(v57, v59);
        sub_228317270(v55, type metadata accessor for Dosage);
        return sub_228317270(v101, type metadata accessor for DosageItem);
      }

      v93 = v58;
      v61 = v101;
      v62 = &v101[*(v29 + 52)];
      v63 = v55;
      if (*v62)
      {
        v64 = *(v62 + 1);
        v65 = v95;
        v66 = v95[2];
        v67 = v91;
        v89 = *v62;
        v68 = v101;
        v69 = v97;
        v66(v91, v96, v97);
        v70 = v69;
        v61 = v68;
        v71 = v89;
        (v65[7])(v67, 0, 1, v70);

        v90 = v64;
        LOBYTE(v65) = v71(v61, v67, 0, 0);
        sub_228318DB0(v67, &qword_280DDCDB0, MEMORY[0x277CC9578]);
        if ((v65 & 1) == 0)
        {
          v83 = v96;
          sub_22838F350();
          v84 = sub_22838F380();
          v85 = v97;
          v86 = v93;
          (v93)(v14, v97);
          [ObjectType setDate:v84 animated:1];

          sub_228316290();
          sub_228176EC8(v71);
          v86(v83, v85);
          goto LABEL_20;
        }

        sub_228176EC8(v71);
        v63 = v94;
      }

      v72 = sub_22838F4A0();
      v73 = v92;
      (*(*(v72 - 8) + 16))(v92, v63, v72);
      v74 = v96;
      v75 = v97;
      (v95[2])(&v73[*(v22 + 20)], v96, v97);
      *&v73[*(v22 + 24)] = *(v63 + *(v22 + 24));
      v76 = v22;
      v77 = v73;
      (*(v98 + 56))(v73, 0, 1, v76);
      v78 = v100;
      swift_beginAccess();
      sub_228318C4C(v77, v78 + v38, &qword_27D826200, type metadata accessor for Dosage);
      swift_endAccess();
      v79 = v61 + *(v29 + 48);
      v80 = *v79;
      if (!*v79)
      {
        (v93)(v74, v75);
        v87 = v63;
        goto LABEL_22;
      }

      v81 = v74;
      v82 = *(v79 + 8);
      sub_228318BCC(v78 + v38, v77, &qword_27D826200, type metadata accessor for Dosage);
      v80(v61, v77);
      sub_228318DB0(v77, &qword_27D826200, type metadata accessor for Dosage);
      (v93)(v81, v75);
LABEL_20:
      v87 = v94;
LABEL_22:
      sub_228317270(v87, type metadata accessor for Dosage);
      return sub_228317270(v61, type metadata accessor for DosageItem);
    }
  }

  else
  {
    sub_228317270(v103, sub_228181D50);
    (*(v30 + 56))(v28, 1, 1, v29);
  }

  sub_228318DB0(v28, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v48 = sub_2283911A0();
  v49 = sub_2283925C0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v103[0] = v51;
    *v50 = 136315138;
    v52 = sub_228393600();
    v54 = sub_2281C96FC(v52, v53, v103);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_22816B000, v48, v49, "[%s] item is not a DatePickerItem", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x22AAB7B80](v51, -1, -1);
    MEMORY[0x22AAB7B80](v50, -1, -1);
  }

  return (*(v100 + 8))(v5, v101);
}

void _s19HealthMedicationsUI24DosageCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  v3 = type metadata accessor for Dosage();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  v5 = *MEMORY[0x277D12788];
  v13 = sub_228392000();
  v14 = v6;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  *v4 = v13;
  v4[1] = v14;
  v7 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  v9 = sub_2283912F0();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker;
  v12 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setPreferredDatePickerStyle_];
  [v12 setDatePickerMode_];
  [v12 setMinuteInterval_];
  [v12 setContentHorizontalAlignment_];
  [v12 setRoundsToMinuteInterval_];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = 0;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel) = 0;
  v10(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___spacerAccessory, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  sub_228393300();
  __break(1u);
}

void sub_22831713C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283171A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228317208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228317270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC27textFieldShouldBeginEditingySbSo06UITextI0CF_0()
{
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for DosageItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v0 + v10, v15, sub_228181D50);
  if (v16)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v11 = swift_dynamicCast();
    (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_2283171A0(v4, v9, type metadata accessor for DosageItem);
      v12 = v9[*(v5 + 32)];
      sub_228317270(v9, type metadata accessor for DosageItem);
      return v12;
    }
  }

  else
  {
    sub_228317270(v15, sub_228181D50);
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_228318DB0(v4, &qword_27D827AA0, type metadata accessor for DosageItem);
  return 0;
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC24textFieldDidBeginEditingyySo06UITextI0CF_0(void *a1)
{
  v2 = sub_228391DC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391DF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v12 = sub_228392790();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_228216CC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_25;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228318D68(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_22831713C(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC9textField_24shouldChangeCharactersIn17replacementStringSbSo06UITextI0C_So8_NSRangeVSStF_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F580();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_228391FC0();
    v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

    sub_228392000();
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_22838F540();
    v15 = sub_228390A80();

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC22textFieldDidEndEditingyySo06UITextI0CF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v78 = sub_2283911B0();
  v77 = *(v78 - 8);
  v2 = *(v77 + 8);
  MEMORY[0x28223BE20](v78);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F440();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22838F4A0();
  v80 = *(v81 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22838F580();
  v88 = *(v85 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v73 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - v20;
  v22 = type metadata accessor for Dosage();
  v87 = *(v22 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x28223BE20](v22);
  v86 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v13);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v73 - v27;
  v29 = type metadata accessor for DosageItem(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_228312440();
  [v34 resignFirstResponder];

  v35 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v1 + v35, v90, sub_228181D50);
  if (!v91)
  {
    sub_228317270(v90, sub_228181D50);
    (*(v30 + 56))(v28, 1, 1, v29);
    return sub_228318DB0(v28, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v36 = swift_dynamicCast();
  (*(v30 + 56))(v28, v36 ^ 1u, 1, v29);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_228318DB0(v28, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  v37 = v33;
  sub_2283171A0(v28, v33, type metadata accessor for DosageItem);
  v38 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  swift_beginAccess();
  sub_228318BCC(v1 + v38, v21, &qword_27D826200, type metadata accessor for Dosage);
  if ((*(v87 + 48))(v21, 1, v22) == 1)
  {
    sub_228318DB0(v21, &qword_27D826200, type metadata accessor for Dosage);
    sub_228391170();
    v39 = sub_2283911A0();
    v40 = sub_2283925C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v89 = v42;
      *v41 = 136315138;
      v43 = sub_228393600();
      v45 = sub_2281C96FC(v43, v44, &v89);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22816B000, v39, v40, "[%s] CurrentDosage is nil", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAB7B80](v42, -1, -1);
      MEMORY[0x22AAB7B80](v41, -1, -1);
    }

    (*(v77 + 1))(v4, v78);
    return sub_228317270(v37, type metadata accessor for DosageItem);
  }

  v78 = v38;
  v47 = v86;
  sub_2283171A0(v21, v86, type metadata accessor for Dosage);
  v48 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v49 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) text];
  if (v49)
  {
    v50 = v49;
    sub_228392000();
  }

  sub_228313AB8();

  v51 = [*(v1 + v48) text];
  if (v51)
  {
    v52 = v51;
    sub_228392000();
  }

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22838F540();
  sub_228390AA0();
  v54 = v53;

  v55 = *(v88 + 8);
  v88 += 8;
  v77 = v55;
  v55(v12, v85);
  if (v54 != *(v47 + *(v22 + 24)))
  {
    goto LABEL_19;
  }

  v56 = [*(v1 + v48) text];
  if (v56)
  {
    v57 = v56;
    v58 = sub_228392000();
    v60 = v59;

    if (!v58 && v60 == 0xE000000000000000)
    {

      v47 = v86;
LABEL_19:
      (*(v80 + 16))(v79, v47, v81);
      (*(v83 + 16))(v82, v47 + *(v22 + 20), v84);
      v62 = [*(v1 + v48) text];
      if (v62)
      {
        v63 = v62;
        sub_228392000();

        v47 = v86;
      }

      sub_22838F540();
      sub_228390AA0();
      v65 = v64;

      v77(v12, v85);
      v66 = v76;
      (*(v80 + 32))(v76, v79, v81);
      (*(v83 + 32))(v66 + *(v22 + 20), v82, v84);
      *(v66 + *(v22 + 24)) = v65;
      (*(v87 + 56))(v66, 0, 1, v22);
      v67 = v78;
      swift_beginAccess();
      sub_228318C4C(v66, v1 + v67, &qword_27D826200, type metadata accessor for Dosage);
      swift_endAccess();
      v68 = v37 + *(v29 + 48);
      v69 = *v68;
      if (*v68)
      {
        v70 = *(v68 + 8);
        v71 = v1 + v67;
        v72 = v74;
        sub_228318BCC(v71, v74, &qword_27D826200, type metadata accessor for Dosage);
        v69(v37, v72);
        sub_228318DB0(v72, &qword_27D826200, type metadata accessor for Dosage);
      }

      goto LABEL_23;
    }

    v61 = sub_228393460();

    v47 = v86;
    if (v61)
    {
      goto LABEL_19;
    }
  }

LABEL_23:
  sub_228317270(v47, type metadata accessor for Dosage);
  return sub_228317270(v37, type metadata accessor for DosageItem);
}

void sub_228318610()
{
  sub_22821B3F8(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22838F4A0();
    if (v1 <= 0x3F)
    {
      sub_22817A958(319, &qword_280DDB9E0, 0x277D115B8);
      if (v2 <= 0x3F)
      {
        sub_22831713C(319, &qword_27D827AD8, sub_228318784, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22831713C(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_228318784()
{
  if (!qword_27D827AE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827AE0);
    }
  }
}

void sub_2283187EC()
{
  sub_22831713C(319, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22831713C(319, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_228318BCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22831713C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228318C4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22831713C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_228318CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a3;
  v9[1] = a4;
  v5(&v8, a1, a2, v9);
  return v8;
}

uint64_t sub_228318D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(a1, a2, *a3, a3[1]);
  *a4 = result & 1;
  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228318D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228318DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22831713C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ClinicalRecordsMedicationsProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228318E64(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_228319854();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281AB388(0, &qword_280DDCE30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228396260;
  v12 = *MEMORY[0x277CCC3D0];
  sub_228392000();
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_228391FC0();

  v15 = [v13 initWithKey:v14 ascending:0];

  *(v11 + 32) = v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v11;
  v16[4] = v2;
  v16[5] = v4;
  sub_2283198E8();
  sub_2283199CC(&qword_27D827B40, sub_2283198E8);
  v17 = a1;

  sub_228391900();
  sub_2283199CC(&qword_27D827B48, sub_228319854);
  v18 = sub_228391990();
  (*(v7 + 8))(v10, v6);
  return v18;
}

uint64_t sub_2283190E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_2283198E8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = a1;

  result = sub_2283918F0();
  *a5 = result;
  return result;
}

void sub_228319190(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  _sSo17HKQueryDescriptorC19HealthMedicationsUIE22recordsMatchingConceptySayABGSo9HKConceptCFZ_0(a3);
  sub_2281AB388(0, &qword_27D823EE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228397F40;
  v13 = *MEMORY[0x277CCBB78];
  *(v12 + 32) = sub_228392000();
  *(v12 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22818DEBC;
  *(v15 + 24) = v11;
  v16 = objc_allocWithZone(MEMORY[0x277CCD8B8]);
  sub_22817A958(0, &qword_27D827B50, 0x277CCD848);
  v17 = sub_228392190();

  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  v18 = sub_228392190();
  v19 = sub_228392190();

  aBlock[4] = sub_228319ADC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228319658;
  aBlock[3] = &block_descriptor_26;
  v20 = _Block_copy(aBlock);
  v21 = [v16 initWithQueryDescriptors:v17 sortDescriptors:v18 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:v19 limit:0 resultsHandler:v20];

  _Block_release(v20);

  aBlock[0] = a6;
  swift_getMetatypeMetadata();
  v22 = v21;
  sub_228392020();
  v23 = sub_228391FC0();

  [v22 setDebugIdentifier_];

  [*(a5 + 16) executeQuery_];
}

void sub_228319430(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char **a5)
{
  if (a2 && (v7 = sub_2281BFDB4(a2)) != 0)
  {
    v8 = v7;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v17 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v15 = a4;
    v16 = a5;
    v10 = 0;
    a5 = &selRef_localizedStringFromTimeInterval_;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      a4 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 isDisplayable])
      {
        sub_228393210();
        v13 = v17[2];
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v10;
      if (a4 == i)
      {
        a5 = v16;
        a4 = v15;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v14 = a4;
  sub_228319958();
  sub_228393580();
  (a5)(v17, v18);
  sub_228319AFC(v17, v18);
}

uint64_t ClinicalRecordsMedicationsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228319658(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
    v7 = sub_2283921A0();
  }

  v11 = a2;
  v12 = a4;
  v13 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t _sSo17HKQueryDescriptorC19HealthMedicationsUIE22recordsMatchingConceptySayABGSo9HKConceptCFZ_0(void *a1)
{
  sub_2281AB388(0, &qword_280DDCE30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228396260;
  v3 = [objc_opt_self() medicationOrderType];
  sub_22817A958(0, &qword_27D827B58, 0x277D10380);
  v4 = [a1 identifier];
  [v4 rawIdentifier];

  v5 = *MEMORY[0x277CCBB78];
  v6 = sub_228392B70();
  v7 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v3 predicate:v6];

  *(v2 + 32) = v7;
  return v2;
}

void sub_228319854()
{
  if (!qword_27D827B30)
  {
    sub_2283198E8();
    sub_2283199CC(&qword_27D827B40, sub_2283198E8);
    v0 = sub_228391910();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827B30);
    }
  }
}

void sub_2283198E8()
{
  if (!qword_27D827B38)
  {
    sub_228319958();
    sub_228192C1C();
    v0 = sub_2283918E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827B38);
    }
  }
}

void sub_228319958()
{
  if (!qword_27D8241F8)
  {
    sub_22817A958(255, &qword_27D824200, 0x277CCD5F8);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241F8);
    }
  }
}

uint64_t sub_2283199CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228319AFC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_228319B08()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionFactorsHeaderItem();
  v6 = swift_allocObject();
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell);
  *(v6 + 16) = sub_22838FBB0();
  *(v6 + 24) = v7;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  v8 = *(sub_22838FEF0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v15 = xmmword_228397F40;
  *(v11 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  *(v12 + 56) = v5;
  *(v12 + 64) = sub_22831A17C(&qword_27D825720, type metadata accessor for InteractionFactorsHeaderItem);
  *(v12 + 32) = v6;

  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v4, v0);
  sub_22838FED0();
  v13 = sub_22838F920();

  return v13;
}

uint64_t sub_228319DC4()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283928D0();
  sub_2283900B0();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t InteractionFactorsHeaderDataSource.__deallocating_deinit()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsHeaderDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell);
  sub_2283926B0();
}

uint64_t type metadata accessor for InteractionFactorsHeaderDataSource()
{
  result = qword_27D827B68;
  if (!qword_27D827B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22831A06C()
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell);
  return sub_2283926B0();
}

uint64_t sub_22831A17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CustomStrengthOptionItem.init(title:actionTitle:onActionTapped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for CustomStrengthOptionCell();
  sub_22831A270();
  result = sub_22838FBB0();
  a7[6] = result;
  a7[7] = v15;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_22831A270()
{
  result = qword_27D8271D8;
  if (!qword_27D8271D8)
  {
    type metadata accessor for CustomStrengthOptionCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8271D8);
  }

  return result;
}

uint64_t CustomStrengthOptionItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CustomStrengthOptionItem.actionTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CustomStrengthOptionItem.onActionTapped.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CustomStrengthOptionItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CustomStrengthOptionItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[6];
  v5 = v0[7];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0x3A656C7469745FLL, 0xE700000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  MEMORY[0x22AAB5C80](0x6E6F69746361202CLL, 0xEE003A656C746954);
  MEMORY[0x22AAB5C80](v3, v4);
  return v6;
}

uint64_t static CustomStrengthOptionItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_228393460(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

uint64_t CustomStrengthOptionItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t CustomStrengthOptionItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

unint64_t sub_22831A5C0()
{
  result = qword_27D827B78;
  if (!qword_27D827B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827B78);
  }

  return result;
}

unint64_t sub_22831A618()
{
  result = qword_27D827B80;
  if (!qword_27D827B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827B80);
  }

  return result;
}

uint64_t sub_22831A670(uint64_t a1)
{
  v2 = sub_2282BC780();

  return MEMORY[0x282169440](a1, v2);
}

id sub_22831A6CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  return v0;
}

id sub_22831A7C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = v4;
    [v5 setContentHorizontalAlignment_];
    [v5 setContentVerticalAlignment_];

    [v5 addTarget:v0 action:sel_actionButtonTapped forControlEvents:64];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_22831A8A8(double a1, double a2, double a3, double a4)
{
  sub_22831B690(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel;
  *&v4[v14] = sub_22831A6CC();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton] = 0;
  v15 = type metadata accessor for CustomStrengthOptionCell();
  v55.receiver = v4;
  v55.super_class = v15;
  v16 = objc_msgSendSuper2(&v55, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = [v16 contentView];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel;
  [v17 addSubview_];

  v19 = [v16 &selRef_didTapDay_];
  v20 = sub_22831A7C4();
  [v19 addSubview_];

  sub_228391380();
  v21 = sub_2283913A0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  MEMORY[0x22AAB6420](v12);
  v54 = objc_opt_self();
  sub_228180ED0();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228399E10;
  v23 = [*&v16[v18] leadingAnchor];
  v24 = [v16 &selRef_didTapDay_];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 &selRef_logTimeChanged_ + 1];
  v27 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v27;
  v28 = [*&v16[v18] trailingAnchor];
  v29 = [v16 &selRef_didTapDay_];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 trailingAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  *(v22 + 40) = v32;
  v33 = [*&v16[v18] topAnchor];
  v34 = [v16 &selRef_didTapDay_];
  v35 = [v34 topAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v22 + 48) = v36;
  v37 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton;
  v38 = [*&v16[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton] topAnchor];
  v39 = [*&v16[v18] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:6.0];

  *(v22 + 56) = v40;
  v41 = [*&v16[v37] leadingAnchor];
  v42 = [*&v16[v18] leadingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v22 + 64) = v43;
  v44 = [*&v16[v37] trailingAnchor];
  v45 = [*&v16[v18] trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 72) = v46;
  v47 = [*&v16[v37] bottomAnchor];
  v48 = [v16 contentView];

  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor_];

  *(v22 + 80) = v50;
  sub_2281BF1B8();
  v51 = sub_228392190();

  [v54 activateConstraints_];

  return v16;
}

uint64_t sub_22831AF00()
{
  sub_22831B690(0, &qword_280DDB950, MEMORY[0x277D75058]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - v3;
  v5 = sub_228392D00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228392DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v15, v34);
  if (!v35)
  {
    return sub_22819482C(v34);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v11;
    v17 = v6;
    v26[0] = v31;
    v26[1] = v30;
    v28 = v33;
    v29 = v32;
    v18 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel);
    v19 = sub_228391FC0();
    [v18 setText_];

    sub_228392DA0();

    sub_228392DB0();
    v20 = *MEMORY[0x277D75060];
    v21 = *(MEMORY[0x277D75060] + 8);
    v22 = *(MEMORY[0x277D75060] + 16);
    v23 = *(MEMORY[0x277D75060] + 24);
    sub_228392CF0();
    sub_228392D40();
    (*(v17 + 104))(v9, *MEMORY[0x277D74FF8], v5);
    sub_228392D20();
    v24 = sub_22831A7C4();
    v25 = v27;
    (*(v27 + 16))(v4, v14, v10);
    (*(v25 + 56))(v4, 0, 1, v10);
    sub_228392E10();

    return (*(v25 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_22831B25C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v4);
  if (!v5)
  {
    return sub_22819482C(v4);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v3();
  }

  return result;
}

id sub_22831B36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomStrengthOptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22831B3FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22831B454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22831AF00();
  return sub_22819482C(a1);
}

uint64_t (*sub_22831B4C0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22831B524;
}

uint64_t sub_22831B528@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_22831B584(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_22831AF00();
  return sub_22819482C(a1);
}

uint64_t (*sub_22831B5F4(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22831B6E4;
}

uint64_t sub_22831B65C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22831AF00();
  }

  return result;
}

void sub_22831B690(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22831B6E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.__allocating_init(listManager:healthStore:viewController:analyticsManager:pregnancyModelProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v39 = a5;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  v17 = *(v6 + 48);
  v18 = *(v6 + 52);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = qword_27D827BC8;
  aBlock = 0;
  sub_22831F8E8(0, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
  sub_228391920();
  v21 = v19 + v20;
  v22 = a3;
  v23 = a4;
  v24 = v39;
  (*(v13 + 32))(v21, v16, v12);
  *(v19 + qword_27D827BD0) = 0;
  *(v19 + qword_27D827BD8) = 0;
  *(v19 + qword_27D827BE0) = MEMORY[0x277D84FA0];
  *(v19 + qword_27D827BE8) = a1;
  *(v19 + qword_27D827BF0) = a2;
  swift_unknownObjectWeakAssign();
  *(v19 + qword_27D827BF8) = v23;
  if (v24)
  {

    v25 = a2;

    v26 = v24;
  }

  else
  {
    v27 = objc_allocWithZone(MEMORY[0x277D119C8]);

    v28 = a2;

    v26 = [v27 initWithHealthStore_];
  }

  *(v19 + qword_27D827C00) = v26;
  aBlock = 0;
  LOBYTE(v41) = 1;
  sub_22831BF5C();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v19 + qword_27D827C18) = sub_228391890();
  v32 = sub_22838F920();
  swift_retain_n();
  v33 = sub_22831C400();
  v34 = swift_allocObject();
  swift_weakInit();
  v44 = sub_22831C958;
  v45 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_22831CA40;
  v43 = &block_descriptor_27;
  v35 = _Block_copy(&aBlock);

  [v33 allDismissedPregnancyLactationInteractionsWithCompletion_];
  _Block_release(v35);

  sub_22831CBBC();
  sub_22838F910();
  sub_22838FCD0();

  v36 = sub_22838FF20();

  [v36 registerObserver_];

  [v26 registerObserver:v32 isUserInitiated:1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v32;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.init(listManager:healthStore:viewController:analyticsManager:pregnancyModelProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v35 = a5;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  swift_unknownObjectWeakInit();
  v16 = qword_27D827BC8;
  aBlock = 0;
  sub_22831F8E8(0, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
  sub_228391920();
  v17 = v5 + v16;
  v18 = a3;
  v19 = a4;
  v20 = v35;
  (*(v12 + 32))(v17, v15, v11);
  *(v5 + qword_27D827BD0) = 0;
  *(v5 + qword_27D827BD8) = 0;
  *(v5 + qword_27D827BE0) = MEMORY[0x277D84FA0];
  *(v5 + qword_27D827BE8) = a1;
  *(v5 + qword_27D827BF0) = a2;
  swift_unknownObjectWeakAssign();
  *(v5 + qword_27D827BF8) = v19;
  if (v20)
  {

    v21 = a2;

    v22 = v20;
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277D119C8]);

    v24 = a2;

    v22 = [v23 initWithHealthStore_];
  }

  *(v5 + qword_27D827C00) = v22;
  aBlock = 0;
  LOBYTE(v37) = 1;
  sub_22831BF5C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v5 + qword_27D827C18) = sub_228391890();
  v28 = sub_22838F920();
  swift_retain_n();
  v29 = sub_22831C400();
  v30 = swift_allocObject();
  swift_weakInit();
  v40 = sub_228320D68;
  v41 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_22831CA40;
  v39 = &block_descriptor_5_2;
  v31 = _Block_copy(&aBlock);

  [v29 allDismissedPregnancyLactationInteractionsWithCompletion_];
  _Block_release(v31);

  sub_22831CBBC();
  sub_22838F910();
  sub_22838FCD0();

  v32 = sub_22838FF20();

  [v32 registerObserver_];

  [v22 registerObserver:v28 isUserInitiated:1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v28;
}

void sub_22831BF5C()
{
  if (!qword_27D827C08)
  {
    sub_22831BFF4(255, &qword_27D827C10, type metadata accessor for HKMCPregnancyState, MEMORY[0x277D83D88]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827C08);
    }
  }
}

void sub_22831BFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22831C058()
{
  MEMORY[0x22AAB7C80](v0 + qword_27D827BC0);
  v1 = *(v0 + qword_27D827BF8);

  v2 = qword_27D827BC8;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27D827BE8);

  v5 = *(v0 + qword_27D827BD8);

  v6 = *(v0 + qword_27D827C00);
  swift_unknownObjectRelease();
  v7 = *(v0 + qword_27D827C18);

  v8 = *(v0 + qword_27D827BE0);
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.deinit()
{
  [*(v0 + qword_27D827C00) unregisterObserver_];
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  MEMORY[0x22AAB7C80](v1 + qword_27D827BC0);
  v2 = *(v1 + qword_27D827BF8);

  v3 = qword_27D827BC8;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(v1 + qword_27D827BE8);

  v6 = *(v1 + qword_27D827BD8);

  v7 = *(v1 + qword_27D827C00);
  swift_unknownObjectRelease();
  v8 = *(v1 + qword_27D827C18);

  v9 = *(v1 + qword_27D827BE0);

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.__deallocating_deinit()
{
  v0 = *PregnancyLactationInteractionCriticalAlertDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22831C2F4()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  sub_2283900B0();
  v6 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v6;
}

id sub_22831C400()
{
  v1 = qword_27D827BD0;
  v2 = *(v0 + qword_27D827BD0);
  if (v2)
  {
    v3 = *(v0 + qword_27D827BD0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D11530]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22831C484()
{
  sub_228241B70();
  result = sub_2283915B0();
  if (result >= 1)
  {
    v2 = *(v0 + qword_27D827BF8);
    return sub_228390FE0();
  }

  return result;
}

uint64_t sub_22831C4D4(uint64_t a1)
{
  sub_228241B70();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  if (sub_2283915B0() < 1)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v8 = *(a1 + qword_27D827BF8);
    sub_228390FE0();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_22831C620(uint64_t a1, void *a2)
{
  v4 = sub_228391DC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391DF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v23 = sub_228392790();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = v15;
    v16[4] = a1;
    aBlock[4] = sub_228320D2C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228191E9C;
    aBlock[3] = &block_descriptor_42;
    v17 = _Block_copy(aBlock);
    v22 = v9;
    v18 = v17;
    v19 = a2;

    sub_228391DE0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22831F2D8(&qword_280DDCF10, MEMORY[0x277D85198]);
    sub_22831BFF4(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_228216D44();
    sub_228393030();
    v20 = v23;
    MEMORY[0x22AAB6340](0, v13, v8, v18);
    _Block_release(v18);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v22);
  }

  return result;
}

uint64_t sub_22831C960(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_228391970();
}

uint64_t sub_22831CA40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22817A958(0, &qword_27D827BB8, 0x277D114F8);
    v4 = sub_2283921A0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22831CAFC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  v4 = [swift_getObjCClassFromMetadata() lactationType];
  if (v4)
  {
    v5 = v4;
    if (*(v3 + 16) && (v6 = sub_2281A7B2C(v4), (v7 & 1) != 0))
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      v9 = v8 > 0;
    }

    else
    {

      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }
}

id sub_22831CBBC()
{
  v1 = v0;
  sub_22831BFF4(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = &v85 - v4;
  v87 = sub_228392570();
  v86 = *(v87 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F530();
  v94 = v7;
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F5CC();
  v96 = v10;
  v95 = *(v10 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22838F440();
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v13);
  v117 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F6D8(0, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
  v104 = v16;
  v103 = *(v16 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v16);
  v120 = &v85 - v18;
  sub_22831F758(0, &qword_27D827CF0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  v20 = v19;
  v114 = *(v19 - 8);
  v21 = *(v114 + 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v85 - v22;
  sub_22831F81C();
  v25 = *(v24 - 8);
  v115 = v24;
  v116 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F944(0);
  v89 = v29;
  v88 = *(v29 - 8);
  v30 = *(v88 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F968();
  v99 = v33;
  v98 = *(v33 - 8);
  v34 = *(v98 + 64);
  MEMORY[0x28223BE20](v33);
  v93 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FC20();
  v101 = v36;
  v100 = *(v36 - 8);
  v37 = *(v100 + 64);
  MEMORY[0x28223BE20](v36);
  v97 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FEF8();
  v105 = *(v39 - 8);
  v106 = v39;
  v40 = *(v105 + 64);
  MEMORY[0x28223BE20](v39);
  v102 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FF8C();
  v108 = *(v42 - 8);
  v109 = v42;
  v43 = *(v108 + 64);
  MEMORY[0x28223BE20](v42);
  v107 = &v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228320068();
  v111 = *(v45 - 8);
  v112 = v45;
  v46 = *(v111 + 64);
  MEMORY[0x28223BE20](v45);
  v110 = &v85 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v0 + qword_27D827BE8);
  v121 = sub_2283906C0();
  sub_22830F1F0();
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_22831F2D8(&qword_27D827D00, sub_22830F1F0);
  sub_2283919A0();

  swift_allocObject();
  swift_weakInit();
  sub_22831F8E8(0, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
  sub_2283916C0();

  (*(v114 + 1))(v23, v20);
  sub_22818DF04(0, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
  v114 = v32;
  v49 = v115;
  sub_2283916B0();
  (*(v116 + 8))(v28, v49);
  swift_beginAccess();
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  v121 = *(v1 + qword_27D827C18);
  v50 = objc_opt_self();

  v51 = v117;
  sub_22838F330();
  v52 = sub_22838F380();
  (*(v118 + 8))(v51, v119);
  v53 = [v50 predicateForSamplesWithStartDate:0 endDate:v52 options:0];

  v119 = v1;
  v54 = *(v1 + qword_27D827BF0);
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  result = [swift_getObjCClassFromMetadata() lactationType];
  if (result)
  {
    *(v55 + 32) = result;
    v57 = v53;
    v58 = v85;
    sub_228392580();

    sub_22831F2D8(&qword_27D827CC0, MEMORY[0x277D11358]);
    v59 = v90;
    v60 = v87;
    sub_2283919F0();
    (*(v86 + 8))(v58, v60);
    v61 = MEMORY[0x277CBCE88];
    sub_22831FB00(0, &qword_27D827CD0, MEMORY[0x277CBCE88]);
    v118 = MEMORY[0x277CBCC08];
    sub_22831F2D8(&qword_27D827CD8, sub_22831F530);
    sub_22831FBDC(&qword_27D827CE0, &qword_27D827CD0, v61);
    v62 = v91;
    v63 = v94;
    sub_228391A10();
    (*(v92 + 8))(v59, v63);
    sub_22831F2D8(&qword_27D827DE8, sub_22831F5CC);
    v64 = v96;
    v65 = sub_228391990();

    (*(v95 + 8))(v62, v64);
    v125 = v65;
    sub_22831BF5C();
    v66 = MEMORY[0x277CBCD88];
    sub_22831FB00(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D40, sub_22831F944);
    sub_22831FB68();
    sub_22831F2D8(&unk_27D827D50, sub_22831BF5C);
    sub_22831FBDC(&qword_27D8245D8, &qword_27D8245D0, v66);
    v67 = v93;
    v68 = v120;
    v69 = v89;
    v70 = v104;
    v71 = v114;
    sub_2283919D0();

    (*(v103 + 8))(v68, v70);
    (*(v88 + 8))(v71, v69);
    sub_2283917E0();
    v72 = MEMORY[0x277CBCD88];
    sub_22832054C(0, &qword_27D827D68, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D88, sub_22831F968);
    sub_2283205D4(&qword_27D827D90, &qword_27D827D68, v72);
    v73 = v97;
    v74 = v99;
    sub_228391AF0();
    (*(v98 + 8))(v67, v74);
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 1;
    sub_22831F2D8(&qword_27D827DA8, sub_22831FC20);
    v75 = v102;
    v76 = v101;
    sub_2283919B0();
    (*(v100 + 8))(v73, v76);
    sub_22831BFF4(0, &qword_27D827DB8, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, MEMORY[0x277D83940]);
    sub_22831F2D8(&qword_27D827DC0, sub_22831FEF8);

    v77 = v106;
    v78 = v107;
    sub_2283919F0();

    (*(v105 + 8))(v75, v77);
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v79 = sub_228392790();
    v121 = v79;
    v80 = sub_228392730();
    v81 = v113;
    (*(*(v80 - 8) + 56))(v113, 1, 1, v80);
    sub_22831F2D8(&unk_27D827DD8, sub_22831FF8C);
    sub_2281A1504();
    v83 = v109;
    v82 = v110;
    sub_228391A70();
    sub_228320CBC(v81, &qword_280DDBAD0, MEMORY[0x277D85248]);

    (*(v108 + 8))(v78, v83);
    swift_allocObject();
    swift_weakInit();
    sub_22831F2D8(&unk_27D827DF0, sub_228320068);
    v84 = v112;
    sub_228391AC0();

    (*(v111 + 8))(v82, v84);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22831DE54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_228320618(v3);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22831DED0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v24 = a4;
  v25 = a5;
  sub_22831BFF4(0, &qword_27D827E20, sub_22831FD2C, MEMORY[0x277CBCE78]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  v14 = MEMORY[0x277CBCF38];
  sub_22832054C(0, &qword_27D827E28, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v23 - v19;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = v24 & 1;
  v30 = v25;
  sub_22831FD2C();

  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860);
  sub_2283918A0();
  (*(v10 + 8))(v13, v9);
  sub_2283205D4(&qword_27D827E30, &qword_27D827E28, v14);
  v21 = sub_228391990();
  (*(v17 + 8))(v20, v16);
  return v21;
}

uint64_t sub_22831E148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22831DED0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 25));
  *a2 = result;
  return result;
}

uint64_t sub_22831E184@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = *(result + 25);
  v9 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v5)
  {

    sub_22832014C(v5, a2, v4, v6, v7, v8, &v11);

    v9 = v11;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_22831E234(unint64_t *a1)
{
  v31 = sub_22838F4A0();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22838FEF0();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (v10 >> 62)
    {
      v13 = sub_2283930D0();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v32 = MEMORY[0x277D84F90];
      result = sub_2281CA2AC(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v23[1] = v12;
      v14 = 0;
      v15 = v32;
      v16 = v10;
      v26 = (v2 + 8);
      v27 = v10 & 0xC000000000000001;
      v25 = v6 + 32;
      v24 = xmmword_228397F40;
      v28 = v9;
      v29 = v10;
      v17 = v9;
      do
      {
        v18 = v13;
        if (v27)
        {
          v19 = MEMORY[0x22AAB6D80](v14, v16);
        }

        else
        {
          v19 = *(v16 + 8 * v14 + 32);
        }

        sub_2281BBE0C();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 56) = type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
        *(v20 + 64) = sub_22831F2D8(&qword_27D827238, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem);
        *(v20 + 32) = v19;

        sub_22838F490();
        sub_22838F450();
        (*v26)(v5, v31);
        sub_22838FED0();

        v32 = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2281CA2AC(v21 > 1, v22 + 1, 1);
          v15 = v32;
        }

        ++v14;
        *(v15 + 16) = v22 + 1;
        (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v17, v30);
        v13 = v18;
        v16 = v29;
      }

      while (v18 != v14);
    }

    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  return result;
}

void sub_22831E5F8(void *a1, uint64_t a2)
{
  v4 = [a1 interactionType];
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    if (v4 != 2)
    {
      sub_228393300();
      __break(1u);
      return;
    }

    v5 = 2;
  }

  v6 = [a1 medication];
  v7 = sub_22827F81C(v6, v5);
  v9 = v8;

  if (!v9)
  {
    v7 = MedicationSecondaryEducationType.unavailableText.getter();
    v9 = v10;
  }

  v11 = [a1 medication];
  v12 = [v11 localizedOntologyEducationContent];
  if (!v12)
  {

    v14 = 0;
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 primarySection];

  if (!v14)
  {

    goto LABEL_12;
  }

  sub_228392A90();

  sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2281BF13C();
  v14 = sub_228391F90();
  v16 = v15;

LABEL_13:
  v17 = sub_22824DB80(v5, [a1 medication], v7, v9, v14, v16);
  [v17 setModalPresentationStyle_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong showAdaptively:v17 sender:a2];
  }
}

void sub_22831E844(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 medication];
  v9 = [a2 interactionType];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_228320544;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2283282E4;
  v12[3] = &block_descriptor_27;
  v11 = _Block_copy(v12);

  [a1 markPregnancyLactationInteractionForMedicationAsDismissed:v8 interactionType:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_22831E980()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_22831C400();
    v1 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_228320D68;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22831CA40;
    aBlock[3] = &block_descriptor_32_0;
    v2 = _Block_copy(aBlock);

    [v0 allDismissedPregnancyLactationInteractionsWithCompletion_];
    _Block_release(v2);
  }

  return sub_228390FE0();
}

Swift::Void __swiftcall PregnancyLactationInteractionCriticalAlertDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell);
  sub_2283926B0();
}

uint64_t sub_22831EBA4()
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell);
  return sub_2283926B0();
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.pregnancyModelDidUpdate(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_22831BFF4(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29[-v7];
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (HKShowSensitiveLogItems())
  {
    sub_228391160();
    v14 = sub_2283911A0();
    v15 = sub_2283925E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v16 = 136315138;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v32);
      v30 = v15;
      v20 = a1;
      v21 = v19;

      *(v16 + 4) = v21;
      a1 = v20;
      _os_log_impl(&dword_22816B000, v14, v30, "[%s] Received pregnancy model update", v16, 0xCu);
      v22 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v16, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  v23 = sub_2283922D0();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_2283922A0();

  v24 = a1;
  v25 = sub_228392290();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v2;
  v26[5] = v24;
  sub_2281DC568(0, 0, v8, &unk_2283A42A8, v26);
}

uint64_t sub_22831EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_2283922A0();
  v5[6] = sub_228392290();
  v7 = sub_228392250();

  return MEMORY[0x2822009F8](sub_22831EFBC, v7, v6);
}

uint64_t sub_22831EFBC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  v4 = *(v3 + qword_27D827C18);
  sub_228391870();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = [v2 state];
  if ((v6 & 1) != 0 || v5 != v7)
  {
    *(v0 + 16) = [*(v0 + 40) state];
    *(v0 + 24) = 0;
    sub_228391850();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22831F084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22831EF24(a1, v4, v5, v7, v6);
}

uint64_t sub_22831F144(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  PregnancyLactationInteractionCriticalAlertDataSource.pregnancyModelDidUpdate(_:)(v3);
}

uint64_t sub_22831F194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v5;
  return result;
}

uint64_t sub_22831F214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22831F2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PregnancyLactationInteractionCriticalAlertDataSource()
{
  result = qword_27D827C40;
  if (!qword_27D827C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22831F36C()
{
  sub_22831F6D8(319, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_22831F530()
{
  if (!qword_27D827CB8)
  {
    sub_228392570();
    sub_22831F2D8(&qword_27D827CC0, MEMORY[0x277D11358]);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827CB8);
    }
  }
}

void sub_22831F5CC()
{
  if (!qword_27D827CC8)
  {
    sub_22831F530();
    v0 = MEMORY[0x277CBCE88];
    sub_22831FB00(255, &qword_27D827CD0, MEMORY[0x277CBCE88]);
    sub_22831F2D8(&qword_27D827CD8, sub_22831F530);
    sub_22831FBDC(&qword_27D827CE0, &qword_27D827CD0, v0);
    v1 = sub_228391750();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827CC8);
    }
  }
}

void sub_22831F6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22831F8E8(255, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22831F758(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_22830F1F0();
    sub_22818DF04(255, a3, a4, a5);
    sub_22831F2D8(&qword_27D827D00, sub_22830F1F0);
    v9 = sub_2283916D0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22831F81C()
{
  if (!qword_27D827D08)
  {
    sub_22830F1F0();
    sub_22831F8E8(255, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
    sub_22831F2D8(&qword_27D827D00, sub_22830F1F0);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827D08);
    }
  }
}

void sub_22831F8E8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_22818DF04(255, a3, a4, a5);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22831F968()
{
  if (!qword_27D827D30)
  {
    sub_22831F944(255);
    sub_22831F6D8(255, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
    sub_22831BF5C();
    v0 = MEMORY[0x277CBCD88];
    sub_22831FB00(255, &qword_27D8245D0, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D40, sub_22831F944);
    sub_22831FB68();
    sub_22831F2D8(&unk_27D827D50, sub_22831BF5C);
    sub_22831FBDC(&qword_27D8245D8, &qword_27D8245D0, v0);
    v1 = sub_2283916A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827D30);
    }
  }
}

void sub_22831FB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22831FB68()
{
  result = qword_27D827D48;
  if (!qword_27D827D48)
  {
    sub_22831F6D8(255, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827D48);
  }

  return result;
}

uint64_t sub_22831FBDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_22831FB00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22831FC20()
{
  if (!qword_27D827D60)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22832054C(255, &qword_27D827D68, MEMORY[0x277CBCD88]);
    sub_22831FE2C();
    sub_2283205D4(&qword_27D827D90, &qword_27D827D68, v0);
    sub_22831F2D8(&qword_27D827D98, sub_22831FE2C);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827D60);
    }
  }
}

void sub_22831FD2C()
{
  if (!qword_27D827D70)
  {
    sub_22831F8E8(255, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
    sub_22831F8E8(255, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
    sub_22831BFF4(255, &qword_27D827C10, type metadata accessor for HKMCPregnancyState, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D827D70);
    }
  }
}

void sub_22831FE2C()
{
  if (!qword_27D827D80)
  {
    sub_22831F968();
    sub_2281810DC(255, &qword_280DDB860);
    sub_22831F2D8(&qword_27D827D88, sub_22831F968);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827D80);
    }
  }
}

void sub_22831FEF8()
{
  if (!qword_27D827DA0)
  {
    sub_22831FC20();
    sub_22831F2D8(&qword_27D827DA8, sub_22831FC20);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827DA0);
    }
  }
}

void sub_22831FF8C()
{
  if (!qword_27D827DB0)
  {
    sub_22831FEF8();
    sub_22831BFF4(255, &qword_27D827DB8, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, MEMORY[0x277D83940]);
    sub_22831F2D8(&qword_27D827DC0, sub_22831FEF8);
    v0 = sub_228391740();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827DB0);
    }
  }
}

void sub_228320068()
{
  if (!qword_27D827DC8)
  {
    sub_22831FF8C();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22831F2D8(&unk_27D827DD8, sub_22831FF8C);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827DC8);
    }
  }
}

void sub_22832014C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, void *a7)
{
  LODWORD(v8) = a5;
  if (a1 >> 62)
  {
LABEL_40:
    v10 = sub_2283930D0();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = 0;
  v29 = qword_27D827BF8;
  if (a3 >= 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = a3;
  }

  v27 = v12;
  v37 = v8;
  v38 = a6;
  v36 = v10;
  while (1)
  {
LABEL_8:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAB6D80](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v13 = *(a1 + 32 + 8 * v11);
    }

    v14 = v13;
    if (__OFADD__(v11++, 1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ([v13 interactionType] != 1 || (v8 & 1) == 0 && a4 == 1) && (objc_msgSend(v14, sel_interactionType, v27) != 2 || (a6) && a3)
    {
      break;
    }

    if (v11 == v10)
    {
      return;
    }
  }

  if (a3 >> 62)
  {
    v8 = sub_2283930D0();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  while (v8 != v16)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AAB6D80](v16, a3);
    }

    else
    {
      if (v16 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v17 = *(a3 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    a6 = [v17 isEquivalentToPregnancyLactationInteraction_];

    ++v16;
    if (a6)
    {

      goto LABEL_32;
    }
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v14;
  *(v35 + 24) = a2;
  v33 = swift_allocObject();
  swift_weakInit();
  v19 = v14;

  v20 = sub_22831C400();
  v34 = *(a2 + v29);
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v33;
  v21[5] = v34;
  type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
  v22 = swift_allocObject();
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell);
  v32 = v19;

  v22[3] = sub_22838FBB0();
  v22[4] = v23;
  v24 = v32;

  v22[2] = v24;
  v22[5] = sub_228320530;
  v22[6] = v35;
  v22[7] = sub_228320538;
  v22[8] = v21;

  MEMORY[0x22AAB5D20](v25);
  if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2283921E0();
  }

  sub_228392230();

LABEL_32:
  LODWORD(v8) = v37;
  a6 = v38;
  v10 = v36;
  if (v11 != v36)
  {
    goto LABEL_8;
  }
}

uint64_t sub_228320544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22831E980();
}

void sub_22832054C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22831FD2C();
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2283205D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22832054C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228320618(unint64_t a1)
{
  sub_22831BFF4(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v52 = a1;
    v53 = i;
    if (i)
    {
      v10 = 0;
      v11 = a1 & 0xC000000000000001;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x22AAB6D80](v10, a1);
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_54;
          }

          v13 = *(a1 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_228392A10();
        v16 = sub_228390F60();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v8, 1, v16) == 1)
        {

          sub_228320CBC(v8, &unk_280DDBD10, MEMORY[0x277D11720]);
        }

        else
        {
          v18 = sub_228390F40();
          (*(v17 + 8))(v8, v16);
          if (v18)
          {
            sub_228393210();
            v19 = *(v54 + 16);
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }
        }

        a1 = v52;
        ++v10;
        if (v15 == v53)
        {
          i = v53;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_17:
    swift_getKeyPath();

    v54 = sub_2281D93A0(v20);
    sub_2282014A8(&v54);
    v21 = 0;

    v22 = v54;
    if (v54 < 0 || (v54 & 0x4000000000000000) != 0)
    {
      v23 = sub_2283930D0();
    }

    else
    {
      v23 = *(v54 + 16);
    }

    v24 = MEMORY[0x277D84F90];
    v51 = 0;
    if (v23)
    {
      break;
    }

    v21 = MEMORY[0x277D84F90];
    v54 = v24;
    if (!i)
    {
      goto LABEL_42;
    }

LABEL_28:
    v50 = v21;
    v29 = 0;
    v30 = a1 & 0xC000000000000001;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = &unk_280DDBD10;
    while (1)
    {
      if (v30)
      {
        v32 = MEMORY[0x22AAB6D80](v29, a1);
      }

      else
      {
        if (v29 >= *(v31 + 16))
        {
          goto LABEL_56;
        }

        v32 = *(a1 + 8 * v29 + 32);
      }

      v33 = v32;
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      sub_228392A10();
      v35 = sub_228390F60();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v6, 1, v35) == 1)
      {

        sub_228320CBC(v6, &unk_280DDBD10, MEMORY[0x277D11720]);
      }

      else
      {
        v37 = sub_228390F50();
        (*(v36 + 8))(v6, v35);
        if (v37)
        {
          sub_228393210();
          v38 = *(v54 + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }
      }

      a1 = v52;
      ++v29;
      if (v34 == v53)
      {
        v21 = v50;
        goto LABEL_42;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v54 = MEMORY[0x277D84F90];
  sub_228393240();
  if (v23 < 0)
  {
    __break(1u);
LABEL_63:
    __break(1u);

    v49 = v21;
    goto LABEL_65;
  }

  v25 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x22AAB6D80](v25, v22);
    }

    else
    {
      v26 = *(v22 + 8 * v25 + 32);
    }

    v27 = v26;
    ++v25;
    [objc_allocWithZone(MEMORY[0x277D11568]) initWithMedication:v26 interactionType:1];

    sub_228393210();
    v28 = *(v54 + 16);
    sub_228393250();
    sub_228393260();
    sub_228393220();
  }

  while (v23 != v25);

  v21 = v54;
  v54 = v24;
  if (v53)
  {
    goto LABEL_28;
  }

LABEL_42:
  swift_getKeyPath();

  v54 = sub_2281D93A0(v39);
  v40 = v51;
  sub_2282014A8(&v54);
  if (!v40)
  {

    v41 = v54;
    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
    {
      v42 = *(v54 + 16);
      if (v42)
      {
        goto LABEL_46;
      }

LABEL_60:

      v47 = MEMORY[0x277D84F90];
LABEL_61:
      v54 = v21;
      sub_2281D5FB0(v47);
      return v54;
    }

    v42 = sub_2283930D0();
    if (!v42)
    {
      goto LABEL_60;
    }

LABEL_46:
    v54 = MEMORY[0x277D84F90];
    sub_228393240();
    if ((v42 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x22AAB6D80](v43, v41);
        }

        else
        {
          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        ++v43;
        [objc_allocWithZone(MEMORY[0x277D11568]) initWithMedication:v44 interactionType:2];

        sub_228393210();
        v46 = *(v54 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      while (v42 != v43);

      v47 = v54;
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v49 = v40;
LABEL_65:

  __break(1u);
  return result;
}