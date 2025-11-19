unint64_t sub_1D2E94E78(char a1)
{
  result = 0x6854686365657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
    case 14:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      return result;
    case 9:
      result = 0x726854636973756DLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1D2E9504C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739000, &qword_1D2EF3868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E95D88();
  sub_1D2EE53C8();
  v11 = *v3;
  v27[15] = 0;
  sub_1D2EE5238();
  if (!v2)
  {
    v12 = v3[1];
    v27[14] = 1;
    sub_1D2EE5238();
    v13 = v3[2];
    v27[13] = 2;
    sub_1D2EE5238();
    v14 = v3[3];
    v27[12] = 3;
    sub_1D2EE5238();
    v15 = v3[4];
    v27[11] = 4;
    sub_1D2EE5238();
    v16 = v3[5];
    v27[10] = 5;
    sub_1D2EE5228();
    v17 = v3[6];
    v27[9] = 6;
    sub_1D2EE5238();
    v18 = v3[7];
    v27[8] = 7;
    sub_1D2EE5238();
    v19 = v3[8];
    v27[7] = 8;
    sub_1D2EE5228();
    v20 = v3[9];
    v27[6] = 9;
    sub_1D2EE5228();
    v21 = v3[10];
    v27[5] = 10;
    sub_1D2EE5238();
    v22 = v3[11];
    v27[4] = 11;
    sub_1D2EE5238();
    v23 = v3[12];
    v27[3] = 12;
    sub_1D2EE5238();
    v24 = v3[13];
    v27[2] = 13;
    sub_1D2EE5228();
    v25 = v3[14];
    v27[1] = 14;
    sub_1D2EE5238();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2E9539C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2E95520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2E953D0(uint64_t a1)
{
  v2 = sub_1D2E95D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E9540C(uint64_t a1)
{
  v2 = sub_1D2E95D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2E95448@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2E959C4(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
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

uint64_t sub_1D2E954C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2E95DDC();
  v5 = sub_1D2E95E30();

  return MEMORY[0x1EEE03CE0](a1, a2, v4, v5);
}

uint64_t sub_1D2E95520(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x80000001D2EE7200 == a2;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D2EE7220 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D2EE7240 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D2EE7260 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2EE7280 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D2EE72A0 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D2EE72D0 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D2EE72F0 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6854686365657073 && a2 == 0xEF646C6F68736572 || (sub_1D2EE5288() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726854636973756DLL && a2 == 0xEE00646C6F687365 || (sub_1D2EE5288() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D2EE7310 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D2EE7330 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D2EE7350 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D2EE7380 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2EE73A0 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1D2E959C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738FF0, &qword_1D2EF3860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E95D88();
  sub_1D2EE53B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = 0;
  v11 = sub_1D2EE51A8();
  v50 = 1;
  v12 = sub_1D2EE51A8();
  v49 = 2;
  v36 = sub_1D2EE51A8();
  v48 = 3;
  v35 = sub_1D2EE51A8();
  v47 = 4;
  v34 = sub_1D2EE51A8();
  v46 = 5;
  sub_1D2EE5198();
  v14 = v13;
  v45 = 6;
  v33 = sub_1D2EE51A8();
  v44 = 7;
  v32 = sub_1D2EE51A8();
  v43 = 8;
  sub_1D2EE5198();
  v16 = v15;
  v42 = 9;
  sub_1D2EE5198();
  v18 = v17;
  v41 = 10;
  v31 = sub_1D2EE51A8();
  v40 = 11;
  v30 = sub_1D2EE51A8();
  v39 = 12;
  v29 = sub_1D2EE51A8();
  v38 = 13;
  sub_1D2EE5198();
  v20 = v19;
  v37 = 14;
  v28 = sub_1D2EE51A8();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v12;
  v22 = v35;
  a2[2] = v36;
  a2[3] = v22;
  v23 = v33;
  a2[4] = v34;
  a2[5] = v14;
  v25 = v31;
  v24 = v32;
  a2[6] = v23;
  a2[7] = v24;
  a2[8] = v16;
  a2[9] = v18;
  v26 = v29;
  v27 = v30;
  a2[10] = v25;
  a2[11] = v27;
  a2[12] = v26;
  a2[13] = v20;
  a2[14] = v28;
  return result;
}

unint64_t sub_1D2E95D88()
{
  result = qword_1EC738FF8;
  if (!qword_1EC738FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738FF8);
  }

  return result;
}

unint64_t sub_1D2E95DDC()
{
  result = qword_1EC739008;
  if (!qword_1EC739008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739008);
  }

  return result;
}

unint64_t sub_1D2E95E30()
{
  result = qword_1EC739010;
  if (!qword_1EC739010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoldAssistConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoldAssistConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2E95FD8()
{
  result = qword_1EC739018;
  if (!qword_1EC739018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739018);
  }

  return result;
}

unint64_t sub_1D2E96030()
{
  result = qword_1EC739020;
  if (!qword_1EC739020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739020);
  }

  return result;
}

unint64_t sub_1D2E96088()
{
  result = qword_1EC739028;
  if (!qword_1EC739028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739028);
  }

  return result;
}

uint64_t sub_1D2E960DC()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

void sub_1D2E96228(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1D2EE3EB8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v12 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738B70, &qword_1D2EF1E70);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  v21[3] = &type metadata for TransactionManager;
  v21[4] = &off_1F4E94BF8;
  LOBYTE(v21[0]) = 1;
  v21[1] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v20[3] = &type metadata for NotificationManager;
  v20[4] = &off_1F4E94848;
  v15 = [objc_allocWithZone(MEMORY[0x1E69AED10]) init];
  v16 = type metadata accessor for WaitOnHoldSession();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1D2EA4A70(a2, v10, v12, v21, 0, v14, v20, v22, v15);
  if (!v3)
  {
    a3[3] = v16;
    a3[4] = &off_1F4E94D30;
    *a3 = v19;
  }
}

void sub_1D2E96428(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v60 - v5;
  v6 = sub_1D2EE3EB8();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v63 = v9;
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC739050, &unk_1D2EF4480);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v18 = sub_1D2EE3C28();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v69 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - v26;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v28 = sub_1D2EE4618();
  v29 = __swift_project_value_buffer(v28, qword_1EDED2DB8);
  v30 = *(v19 + 16);
  v72 = a1;
  v30(v27, a1, v18);
  v71 = v29;
  v31 = sub_1D2EE45F8();
  v32 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v31, v32))
  {
    v62 = v32;
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74[0] = v60;
    v61 = v33;
    *v33 = 136315138;
    v30(v17, v27, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_1D2E5D050(v17, v15, &unk_1EC739050, &unk_1D2EF4480);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      sub_1D2E5D0B8(v15, &unk_1EC739050, &unk_1D2EF4480);
      sub_1D2E5D0B8(v17, &unk_1EC739050, &unk_1D2EF4480);
      (*(v19 + 8))(v27, v18);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      (*(v19 + 32))(v25, v15, v18);
      v30(v69, v25, v18);
      v36 = sub_1D2EE4AA8();
      v34 = v37;
      v38 = *(v19 + 8);
      v38(v25, v18);
      sub_1D2E5D0B8(v17, &unk_1EC739050, &unk_1D2EF4480);
      v38(v27, v18);
      v35 = v36;
    }

    v39 = sub_1D2E685B0(v35, v34, v74);

    v40 = v61;
    *(v61 + 1) = v39;
    _os_log_impl(&dword_1D2E46000, v31, v62, "Handling notification for TUCallCenterCallStatusChanged %s", v40, 0xCu);
    v41 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1D38AF660](v41, -1, -1);
    MEMORY[0x1D38AF660](v40, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v27, v18);
  }

  sub_1D2EE3C18();
  if (v74[3])
  {
    sub_1D2E9C198();
    if (swift_dynamicCast())
    {
      v42 = v73;
      if ([v73 status] == 6)
      {
        v43 = [v42 uniqueProxyIdentifierUUID];
        v44 = v70;
        sub_1D2EE3E98();

        LODWORD(v72) = [v42 disconnectedReason];
        v45 = [v42 displayName];
        v71 = sub_1D2EE4A68();
        v69 = v46;

        v47 = sub_1D2EE4CB8();
        v48 = v65;
        (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
        v49 = v66;
        v50 = v67;
        v51 = v64;
        (*(v66 + 16))(v64, v44, v67);
        v52 = (*(v49 + 80) + 40) & ~*(v49 + 80);
        v53 = (v63 + v52 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v54 = swift_allocObject();
        *(v54 + 2) = 0;
        *(v54 + 3) = 0;
        *(v54 + 4) = v68;
        (*(v49 + 32))(&v54[v52], v51, v50);
        *&v54[v53] = v72;
        v55 = &v54[(v53 + 11) & 0xFFFFFFFFFFFFFFF8];
        v56 = v69;
        *v55 = v71;
        v55[1] = v56;

        sub_1D2ED7FB0(0, 0, v48, &unk_1D2EF3C60, v54);

        (*(v49 + 8))(v70, v50);
        return;
      }
    }
  }

  else
  {
    sub_1D2E5D0B8(v74, &qword_1EC7385A0, &qword_1D2EEF120);
  }

  v57 = sub_1D2EE45F8();
  v58 = sub_1D2EE4DB8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1D2E46000, v57, v58, "Dropping notification ", v59, 2u);
    MEMORY[0x1D38AF660](v59, -1, -1);
  }
}

uint64_t sub_1D2E96BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 56) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D2E96C24, a4, 0);
}

uint64_t sub_1D2E96C24()
{
  v1 = *(v0 + 16);
  sub_1D2E9A50C(*(v0 + 24), *(v0 + 56), *(v0 + 32), *(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D2E96CC8;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D2E999E4(v3);
}

uint64_t sub_1D2E96CC8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D2E96DBC(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v54 - v5;
  v6 = sub_1D2EE3EB8();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = v9;
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC739050, &unk_1D2EF4480);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = sub_1D2EE3C28();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v54 - v26;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v28 = sub_1D2EE4618();
  v29 = __swift_project_value_buffer(v28, qword_1EDED2DB8);
  v30 = *(v19 + 16);
  v66 = a1;
  v30(v27, a1, v18);
  v65 = v29;
  v31 = sub_1D2EE45F8();
  v32 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v31, v32))
  {
    v56 = v32;
    v33 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    v55 = v33;
    *v33 = 136315138;
    v30(v17, v27, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_1D2E5D050(v17, v15, &unk_1EC739050, &unk_1D2EF4480);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      sub_1D2E5D0B8(v15, &unk_1EC739050, &unk_1D2EF4480);
      sub_1D2E5D0B8(v17, &unk_1EC739050, &unk_1D2EF4480);
      (*(v19 + 8))(v27, v18);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      (*(v19 + 32))(v25, v15, v18);
      v30(v64, v25, v18);
      v36 = sub_1D2EE4AA8();
      v34 = v37;
      v38 = *(v19 + 8);
      v38(v25, v18);
      sub_1D2E5D0B8(v17, &unk_1EC739050, &unk_1D2EF4480);
      v38(v27, v18);
      v35 = v36;
    }

    v39 = sub_1D2E685B0(v35, v34, v68);

    v40 = v55;
    *(v55 + 1) = v39;
    _os_log_impl(&dword_1D2E46000, v31, v56, "Handling notification for TUCallCenterCallContinuityStateChanged %s", v40, 0xCu);
    v41 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1D38AF660](v41, -1, -1);
    MEMORY[0x1D38AF660](v40, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v27, v18);
  }

  sub_1D2EE3C18();
  if (!v68[3])
  {
    sub_1D2E5D0B8(v68, &qword_1EC7385A0, &qword_1D2EEF120);
LABEL_15:
    v42 = sub_1D2EE45F8();
    v52 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v42, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D2E46000, v42, v52, "Dropping notification ", v53, 2u);
      MEMORY[0x1D38AF660](v53, -1, -1);
    }

    goto LABEL_17;
  }

  sub_1D2E9C198();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v42 = v67;
  if (([v67 isEndpointOnCurrentDevice]& 1) == 0 && ([v42 isHostedOnCurrentDevice]& 1) != 0)
  {
    v43 = [v42 uniqueProxyIdentifierUUID];
    v44 = v59;
    sub_1D2EE3E98();

    v45 = sub_1D2EE4CB8();
    v46 = v60;
    (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
    v48 = v61;
    v47 = v62;
    v49 = v58;
    (*(v61 + 16))(v58, v44, v62);
    v50 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 2) = 0;
    *(v51 + 3) = 0;
    *(v51 + 4) = v63;
    (*(v48 + 32))(&v51[v50], v49, v47);

    sub_1D2EA4398(0, 0, v46, &unk_1D2EF3C50, v51);

    (*(v48 + 8))(v44, v47);
    return;
  }

LABEL_17:
}

uint64_t sub_1D2E97524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2E98674(a5);
}

void sub_1D2E975C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 isLowPowerModeEnabled];

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v9 = sub_1D2EE4618();
  __swift_project_value_buffer(v9, qword_1EDED2DB8);
  v10 = sub_1D2EE45F8();
  v11 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v10, v11, "Handling notification for power state did change isLPMEnabled: %{BOOL}d", v12, 8u);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  if (v8)
  {
    v13 = sub_1D2EE4CB8();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;

    sub_1D2ED7FB0(0, 0, v6, &unk_1D2EF3C40, v14);
  }
}

uint64_t sub_1D2E977F0()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_1D2E9B054(v1 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v2 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1D2E978F4;

    return sub_1D2EAEA58();
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D2E978F4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E97A04, v2, 0);
}

uint64_t sub_1D2E97A04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E97A84()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting asset download", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = __swift_project_boxed_opaque_existential_1((v5 + 128), *(v5 + 152));
  *(v0 + 24) = v6;
  v7 = *v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2E97BB4, v7, 0);
}

uint64_t sub_1D2E97BB4()
{
  v1 = **(v0 + 24);
  sub_1D2E7EC28();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2E97C1C(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = sub_1D2EE3EB8();
  v2[52] = v3;
  v4 = *(v3 - 8);
  v2[53] = v4;
  v5 = *(v4 + 64) + 15;
  v2[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E97CDC, v1, 0);
}

uint64_t sub_1D2E97CDC()
{
  v33 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD000000000000019, 0x80000001D2EE74A0, v32);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 408);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 192);
  if (*(v0 + 216))
  {
    v8 = *(v0 + 424);
    v7 = *(v0 + 432);
    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    sub_1D2E4C014((v0 + 192), v0 + 232);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
    (*(v8 + 16))(v7, *v11 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v9);
    LOBYTE(v10) = sub_1D2EE3E88();
    (*(v8 + 8))(v7, v9);
    if (v10)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
      v13 = swift_task_alloc();
      *(v0 + 464) = v13;
      *v13 = v0;
      v13[1] = sub_1D2E98338;
      v14 = *(v0 + 400);

      return sub_1D2EA5EA8(v14);
    }

    else
    {
      v22 = sub_1D2EE45F8();
      v23 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1D2E685B0(0xD000000000000019, 0x80000001D2EE74A0, v32);
        _os_log_impl(&dword_1D2E46000, v22, v23, "%s: unknown callID in the request. Ignoring.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1D38AF660](v25, -1, -1);
        MEMORY[0x1D38AF660](v24, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
      v26 = *(v0 + 432);

      v27 = *(v0 + 8);

      return v27();
    }
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v17 + 224);
    v18 = *(v17 + 240);
    v20 = *(v17 + 256);
    *(v0 + 136) = *(v17 + 208);
    *(v0 + 184) = v20;
    *(v0 + 168) = v18;
    *(v0 + 152) = v19;
    sub_1D2EE1290(v0 + 16);
    v21 = *(v17 + 120);
    (*(v17 + 112))(v16, v0 + 16);
    v28 = *(v0 + 400);
    sub_1D2E6912C(v0 + 272, v0 + 312);
    swift_beginAccess();
    sub_1D2E9BF90(v0 + 312, v6 + 264);
    swift_endAccess();
    v29 = swift_task_alloc();
    *(v0 + 440) = v29;
    *(v29 + 16) = v0 + 272;
    *(v29 + 24) = v28;
    v30 = swift_task_alloc();
    *(v0 + 448) = v30;
    *v30 = v0;
    v30[1] = sub_1D2E981A4;
    v31 = *(v0 + 408);

    return sub_1D2E99F9C(dword_1D2EF3C30, v29, "startScreening(callUUID:)", 25, 2);
  }
}

uint64_t sub_1D2E981A4()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = *(v2 + 408);
    v5 = sub_1D2E9853C;
  }

  else
  {
    v6 = *(v2 + 440);
    v7 = *(v2 + 408);

    v5 = sub_1D2E982CC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D2E982CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  v1 = v0[54];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E98338()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {
    v6 = sub_1D2E984D0;
  }

  else
  {
    v6 = sub_1D2E98464;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D2E98464()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  v1 = v0[54];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E984D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  v1 = v0[59];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2E9853C()
{
  v1 = v0[55];

  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  v2 = v0[57];
  v3 = v0[54];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2E985B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2E985D0, 0, 0);
}

uint64_t sub_1D2E985D0()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D2E5C6DC;
  v3 = *(v0 + 24);

  return sub_1D2EA5EA8(v3);
}

uint64_t sub_1D2E98674(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_1D2EE3EB8();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E98734, v1, 0);
}

uint64_t sub_1D2E98734()
{
  v25 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD000000000000017, 0x80000001D2EE7480, v24);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v8 + 16))(v7, *v11 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v9);
    LOBYTE(v10) = sub_1D2EE3E88();
    (*(v8 + 8))(v7, v9);
    if (v10)
    {
      v12 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v13 = swift_task_alloc();
      *(v0 + 224) = v13;
      *v13 = v0;
      v13[1] = sub_1D2E98AF4;
      v14 = *(v0 + 184);

      return sub_1D2EAD820(v14);
    }

    v19 = sub_1D2EE45F8();
    v20 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D2E685B0(0xD000000000000017, 0x80000001D2EE7480, v24);
      _os_log_impl(&dword_1D2E46000, v19, v20, "%s: unknown callID in the request. Ignoring.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D38AF660](v22, -1, -1);
      MEMORY[0x1D38AF660](v21, -1, -1);
    }

    v23 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    v18 = *(v0 + 8);
  }

  else
  {
    sub_1D2E94910();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 216);

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1D2E98AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1D2E9C430;
  }

  else
  {
    v6 = sub_1D2E98C20;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D2E98C20()
{
  v1 = *(v0 + 192);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 96, v1 + 264);
  swift_endAccess();
  v2 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v3 = *(v0 + 8);

  return v3();
}

void sub_1D2E98CD0(uint64_t a1@<X8>)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1D2E685B0(0xD000000000000011, 0x80000001D2EE7460, &v7);
    _os_log_impl(&dword_1D2E46000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38AF660](v6, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t sub_1D2E98E20(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E98E40, v1, 0);
}

uint64_t sub_1D2E98E40()
{
  v20 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE6750, &v19);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 368);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 192);
  if (*(v0 + 216))
  {
    sub_1D2E94910();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1D2E9BFC8(v0 + 192);
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v9 + 224);
    v10 = *(v9 + 240);
    v12 = *(v9 + 256);
    *(v0 + 136) = *(v9 + 208);
    *(v0 + 184) = v12;
    *(v0 + 168) = v10;
    *(v0 + 152) = v11;
    sub_1D2EE1290(v0 + 16);
    v13 = *(v9 + 120);
    (*(v9 + 112))(v8, v0 + 16);
    sub_1D2E6912C(v0 + 232, v0 + 272);
    swift_beginAccess();
    sub_1D2E9BF90(v0 + 272, v6 + 264);
    swift_endAccess();
    v16 = *__swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = sub_1D2E99120;
    v18 = *(v0 + 360);

    return sub_1D2EB0DF4(v18);
  }
}

uint64_t sub_1D2E99120()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = sub_1D2E992B0;
  }

  else
  {
    v6 = sub_1D2E9924C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D2E9924C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E992B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  v1 = v0[48];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E99314(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_1D2EE3EB8();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E993D4, v1, 0);
}

uint64_t sub_1D2E993D4()
{
  v25 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001CLL, 0x80000001D2EE6770, v24);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v8 + 16))(v7, *v11 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v9);
    LOBYTE(v10) = sub_1D2EE3E88();
    (*(v8 + 8))(v7, v9);
    if (v10)
    {
      *(v0 + 128) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 96) = 0u;
      swift_beginAccess();
      sub_1D2E9BF90(v0 + 96, v6 + 264);
      swift_endAccess();
      v12 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v13 = swift_task_alloc();
      *(v0 + 224) = v13;
      *v13 = v0;
      v13[1] = sub_1D2E997DC;
      v14 = *(v0 + 184);

      return sub_1D2EAEEE8(v14);
    }

    v19 = sub_1D2EE45F8();
    v20 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D2E685B0(0xD00000000000001CLL, 0x80000001D2EE6770, v24);
      _os_log_impl(&dword_1D2E46000, v19, v20, "%s: unknown callID in the request. Ignoring.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D38AF660](v22, -1, -1);
      MEMORY[0x1D38AF660](v21, -1, -1);
    }

    v23 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    v18 = *(v0 + 8);
  }

  else
  {
    sub_1D2E94910();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = *(v0 + 216);

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1D2E997DC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1D2E99978;
  }

  else
  {
    v6 = sub_1D2E99908;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D2E99908()
{
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E99978()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[29];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2E999E4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1D2EE3EB8();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E99AA4, v1, 0);
}

uint64_t sub_1D2E99AA4()
{
  v24 = v0;
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_1D2E9B054(v1 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v3 + 16))(v2, *v6 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v4);
    LOBYTE(v5) = sub_1D2EE3E88();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v7 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v8 = swift_task_alloc();
      *(v0 + 160) = v8;
      *v8 = v0;
      v8[1] = sub_1D2E99E24;
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);

      return sub_1D2E9B1D0(v7, v9, v10);
    }

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D2E685B0(0xD000000000000015, 0x80000001D2EE7440, &v23);
      _os_log_impl(&dword_1D2E46000, v17, v18, "%s: unknown callID in the request. Ignoring.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v12 = sub_1D2EE4618();
    __swift_project_value_buffer(v12, qword_1EDED2DB8);
    v13 = sub_1D2EE45F8();
    v14 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D2E46000, v13, v14, "No active session", v15, 2u);
      MEMORY[0x1D38AF660](v15, -1, -1);
    }
  }

  v21 = *(v0 + 152);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D2E99E24()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E99F34, v2, 0);
}

uint64_t sub_1D2E99F34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[19];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2E99F9C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = v5;
  *(v6 + 152) = a5;
  *(v6 + 112) = a3;
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  *(v6 + 136) = v8;
  *v8 = v6;
  v8[1] = sub_1D2E9A098;

  return v10();
}

uint64_t sub_1D2E9A098()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[16];

    return MEMORY[0x1EEE6DFA0](sub_1D2E9A1CC, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D2E9A1CC()
{
  v32 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v10 = 136446466;
    v11 = sub_1D2EE4FD8();
    v13 = sub_1D2E685B0(v11, v12, v31);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = sub_1D2EE4E58();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    v20 = *(v15 - 8);
    (*(v20 + 16))(v19, v14, v15);
    (*(v20 + 56))(v19, 0, 1, v15);
    v21 = sub_1D2EE2754(v19, v15);
    v23 = v22;
    (*(v17 + 8))(v19, v16);

    v24 = sub_1D2E685B0(v21, v23, v31);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error performing %{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v30, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  v25 = *(v0 + 144);
  v26 = *(v0 + 128);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 16, v26 + 264);
  swift_endAccess();
  swift_willThrow();
  v27 = *(v0 + 8);
  v28 = *(v0 + 144);

  return v27();
}

uint64_t sub_1D2E9A50C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D2EE3EB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25[-v15];
  swift_beginAccess();
  result = sub_1D2E9B054(v4 + 264, &v28);
  if (v29)
  {
    v26 = a2;
    sub_1D2E4C014(&v28, v27);
    v18 = *(*(*__swift_project_boxed_opaque_existential_1(v27, v27[3]) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
    os_unfair_lock_lock((v18 + 36));
    v19 = *(v18 + 32);
    os_unfair_lock_unlock((v18 + 36));
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    if (v19 < 2)
    {
      v20 = sub_1D2EE4CB8();
      (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
      (*(v10 + 16))(&v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      (*(v10 + 32))(v23 + v21, v12, v9);
      v24 = (v23 + v22);
      *v24 = a3;
      v24[1] = a4;
      *(v23 + ((v22 + 19) & 0xFFFFFFFFFFFFFFF8)) = v26;

      sub_1D2ED7FB0(0, 0, v16, &unk_1D2EF3C10, v23);
    }
  }

  return result;
}

uint64_t sub_1D2E9A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = a7 == 6;
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1D2E5BA34;

  return (sub_1D2E9CA64)(a4, a5, a6, v11);
}

uint64_t sub_1D2E9A870()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  v2 = *(v0 + 216);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);

  sub_1D2E9BFC8(v0 + 264);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

CallIntelligence::WaitOnHoldError_optional __swiftcall WaitOnHoldError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2EE5118();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WaitOnHoldError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5364696C61766E69;
  v3 = 0x436E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6C6961466B736174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

unint64_t sub_1D2E9AA68()
{
  result = qword_1EC739030;
  if (!qword_1EC739030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739030);
  }

  return result;
}

uint64_t sub_1D2E9AAC8()
{
  *v0;
  *v0;
  *v0;
  sub_1D2EE4AC8();
}

void sub_1D2E9AC14(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746174;
  v4 = 0x5364696C61766E69;
  v5 = 0xEF444955556C6C61;
  v6 = 0x436E776F6E6B6E75;
  if (v2 != 5)
  {
    v6 = 0xD000000000000019;
    v5 = 0x80000001D2EE62E0;
  }

  v7 = 0xD000000000000013;
  v8 = 0x80000001D2EE62B0;
  if (v2 != 3)
  {
    v7 = 0x6C6961466B736174;
    v8 = 0xEA00000000006465;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000013;
  v10 = 0x80000001D2EE6270;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x80000001D2EE6290;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for WaitOnHoldError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WaitOnHoldError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16CallIntelligence16HoldAssistServerC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2E9AF6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2E9AFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1D2E9B018(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2E9B08C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2EE3EB8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D2E7DE28;

  return sub_1D2E9A7A0(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1D2E9B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_1D2EE3EB8();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v10 = type metadata accessor for WaitOnHoldSession();
  v3[32] = v10;
  v3[5] = v10;
  v3[6] = &off_1F4E94D30;
  v3[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2E9B354, a3, 0);
}

uint64_t sub_1D2E9B354()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[32]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1D2E9B3F8;
  v3 = v0[19];

  return sub_1D2EAE378(v3);
}

uint64_t sub_1D2E9B3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_1D2E9B918;
  }

  else
  {
    v6 = sub_1D2E9B524;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D2E9B524()
{
  v46 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 152);
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v6 = v4;
  v7 = *(v3 + 16);
  v7(v1, v6, v2);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  if (v10)
  {
    v42 = v8;
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    v43 = v16;
    *v16 = 136315138;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738A70, &qword_1D2EF20F0);
    if ((*(v12 + 48))(v15, 1, v13) == 1)
    {
      v17 = *(v0 + 208);
      v18 = *(v0 + 192);
      sub_1D2E5D0B8(*(v0 + 184), &qword_1EC738A70, &qword_1D2EF20F0);
      sub_1D2E5D0B8(v18, &qword_1EC738A70, &qword_1D2EF20F0);
      v19 = 0xE300000000000000;
      v20 = 7104878;
      (*(v17 + 8))(*(v0 + 248), *(v0 + 200));
    }

    else
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 232);
      v41 = v9;
      v24 = *(v0 + 200);
      v23 = *(v0 + 208);
      v25 = *(v0 + 192);
      (*(v23 + 32))(v22, *(v0 + 184), v24);
      v7(v21, v22, v24);
      v20 = sub_1D2EE4AA8();
      v19 = v26;
      v27 = *(v23 + 8);
      v27(v22, v24);
      v9 = v41;
      sub_1D2E5D0B8(v25, &qword_1EC738A70, &qword_1D2EF20F0);
      v27(*(v0 + 248), *(v0 + 200));
    }

    v28 = sub_1D2E685B0(v20, v19, &v45);

    *(v43 + 1) = v28;
    _os_log_impl(&dword_1D2E46000, v42, v9, "Successfully ended WaitOnHoldSession for call %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D38AF660](v44, -1, -1);
    MEMORY[0x1D38AF660](v43, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v29 = *(v0 + 160);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 56, v29 + 264);
  swift_endAccess();
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v34 = *(v0 + 216);
  v36 = *(v0 + 184);
  v35 = *(v0 + 192);
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D2E9B918()
{
  v59 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 152);
  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v57 = *(v4 + 16);
  v57(v2, v5, v3);
  v7 = v1;
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v55 = v9;
    log = v8;
    v10 = *(v0 + 240);
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = v54;
    *v15 = 136315394;
    v57(v14, v10, v11);
    (*(v12 + 56))(v14, 0, 1, v11);
    sub_1D2E5D050(v14, v13, &qword_1EC738A70, &qword_1D2EF20F0);
    if ((*(v12 + 48))(v13, 1, v11) == 1)
    {
      v16 = *(v0 + 208);
      v17 = *(v0 + 176);
      sub_1D2E5D0B8(*(v0 + 168), &qword_1EC738A70, &qword_1D2EF20F0);
      sub_1D2E5D0B8(v17, &qword_1EC738A70, &qword_1D2EF20F0);
      v18 = *(v16 + 8);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v24 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v53 = *(v0 + 176);
      (*(v26 + 32))(v24, *(v0 + 168), v27);
      v57(v25, v24, v27);
      v20 = sub_1D2EE4AA8();
      v19 = v28;
      v18 = *(v26 + 8);
      v18(v24, v27);
      sub_1D2E5D0B8(v53, &qword_1EC738A70, &qword_1D2EF20F0);
    }

    v29 = *(v0 + 272);
    v18(*(v0 + 240), *(v0 + 200));
    v30 = sub_1D2E685B0(v20, v19, &v58);

    *(v15 + 4) = v30;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = sub_1D2EE4E58();
    v34 = *(v33 - 8);
    v35 = *(v34 + 64) + 15;
    v36 = swift_task_alloc();
    v37 = *(v32 - 8);
    (*(v37 + 16))(v36, v31, v32);
    (*(v37 + 56))(v36, 0, 1, v32);
    v38 = sub_1D2EE2754(v36, v32);
    v40 = v39;
    (*(v34 + 8))(v36, v33);

    v41 = sub_1D2E685B0(v38, v40, &v58);

    *(v15 + 14) = v41;
    _os_log_impl(&dword_1D2E46000, log, v55, "Error ending WaitOnHoldSession for call %s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v54, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  else
  {
    v21 = *(v0 + 240);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);

    (*(v23 + 8))(v21, v22);
  }

  v42 = *(v0 + 240);
  v43 = *(v0 + 248);
  v45 = *(v0 + 224);
  v44 = *(v0 + 232);
  v46 = *(v0 + 216);
  v48 = *(v0 + 184);
  v47 = *(v0 + 192);
  v50 = *(v0 + 168);
  v49 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v51 = *(v0 + 8);

  return v51();
}

void sub_1D2E9BE4C()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1D2E685B0(0x293A5F28676E6970, 0xE800000000000000, &v5);
    _os_log_impl(&dword_1D2E46000, oslog, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1D38AF660](v3, -1, -1);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }
}

uint64_t sub_1D2E9BFF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2E985B0(v2, v3);
}

unint64_t sub_1D2E9C090()
{
  result = qword_1EC739048;
  if (!qword_1EC739048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739048);
  }

  return result;
}

uint64_t sub_1D2E9C0E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2E977D0(a1, v4, v5, v6);
}

unint64_t sub_1D2E9C198()
{
  result = qword_1EC739060;
  if (!qword_1EC739060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739060);
  }

  return result;
}

uint64_t sub_1D2E9C1E4(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E5BA34;

  return sub_1D2E97524(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D2E9C2DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2EE3EB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D2E7DE28;

  return sub_1D2E96BFC(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_1D2E9C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1D2E5BA34;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D2E9C57C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739070, &unk_1D2EF3CD0);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9C648, 0, 0);
}

uint64_t sub_1D2E9C648()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D2E9C800;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1D2E9D860(0, &qword_1EC739078, 0x1E69832B0);
  sub_1D2EE4C38();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D2E9C974;
  v1[13] = &block_descriptor_5;
  [v9 getNotificationSettingsWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D2E9C800()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E9C8E0, 0, 0);
}

uint64_t sub_1D2E9C8E0()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 authorizationStatus];

  v4 = v0[1];

  return v4(v3 == 2);
}

uint64_t sub_1D2E9C974(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739070, &unk_1D2EF3CD0);
  return sub_1D2EE4C58();
}

void sub_1D2E9C9D4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    sub_1D2EE4C58();
  }
}

uint64_t sub_1D2E9CA64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 296) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  *(v4 + 208) = v5;
  v6 = *(v5 - 8);
  *(v4 + 216) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v8 = *(*(sub_1D2EE3F78() - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v9 = *(*(sub_1D2EE4A28() - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9CB90, 0, 0);
}

uint64_t sub_1D2E9CB90()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 296);
  sub_1D2EE4A18();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_1D2EE3F38();
  sub_1D2EE4A88();
  if (v3 == 1)
  {
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);

    sub_1D2EE4A18();
    v9 = [v5 bundleForClass_];
    sub_1D2EE3F38();
    sub_1D2EE4A88();
  }

  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v0 + 248) = v13;
  v14 = sub_1D2EE4A38();
  [v13 setTitle_];

  v15 = sub_1D2EE4A38();

  [v13 setBody_];

  [v13 setInterruptionLevel_];
  sub_1D2EE3E68();
  v16 = v13;
  v17 = sub_1D2EE4A38();

  *(v0 + 256) = [objc_opt_self() requestWithIdentifier:v17 content:v16 trigger:0];

  v18 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v19 = sub_1D2EE4A38();
  v20 = [v18 initWithBundleIdentifier_];
  *(v0 + 264) = v20;

  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *v21 = v0;
  v21[1] = sub_1D2E9CEA8;

  return sub_1D2E9C57C(v20);
}

uint64_t sub_1D2E9CEA8(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 297) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2E9CFA8, 0, 0);
}

uint64_t sub_1D2E9CFA8()
{
  v33 = v0;
  if (*(v0 + 297) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 256);
    v2 = sub_1D2EE4618();
    *(v0 + 280) = __swift_project_value_buffer(v2, qword_1EDED2DB8);
    v3 = v1;
    v4 = sub_1D2EE45F8();
    v5 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 256);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136315138;
      *(v0 + 176) = v6;
      sub_1D2E9D860(0, &qword_1EC739068, 0x1E6983298);
      v9 = v6;
      v10 = sub_1D2EE4AA8();
      v12 = sub_1D2E685B0(v10, v11, &v32);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D2E46000, v4, v5, "Posting notification to inform user of error %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    v13 = *(v0 + 264);
    v31 = *(v0 + 256);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 208);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D2E9D3D0;
    swift_continuation_init();
    *(v0 + 136) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4C38();
    (*(v15 + 32))(boxed_opaque_existential_0, v14, v16);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D2E9C9D4;
    *(v0 + 104) = &block_descriptor_1;
    [v13 addNotificationRequest:v31 withCompletionHandler:v0 + 80];
    (*(v15 + 8))(boxed_opaque_existential_0, v16);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2EE4618();
    __swift_project_value_buffer(v18, qword_1EDED2DB8);
    v19 = sub_1D2EE45F8();
    v20 = sub_1D2EE4DD8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2E46000, v19, v20, "Notifications not authorized", v25, 2u);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = *(v0 + 224);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1D2E9D3D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_1D2E9D568;
  }

  else
  {
    v3 = sub_1D2E9D4E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E9D4E0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D2E9D568()
{
  v33 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  swift_willThrow();
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);
    v28 = v6;
    v29 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v32);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error posting notification: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38AF660](v27, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
    v19 = *(v0 + 288);
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
  }

  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 224);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D2E9D860(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2E9D8D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D2E9D91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2E9D980()
{
  result = qword_1EC739080;
  if (!qword_1EC739080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739080);
  }

  return result;
}

unint64_t sub_1D2E9D9D4(uint64_t a1, char a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = *v3;
    result = sub_1D2E4FDA8(a3);
    if (v8)
    {
      v9 = result;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D2EDC49C();
        v12 = v16;
      }

      result = sub_1D2E9E60C(v9, v12);
      *v4 = v12;
    }
  }

  else
  {
    v14 = *v3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    result = sub_1D2EC8EC8(a3, v15, *&a1);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1D2E9DA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 4;
  }

  os_unfair_lock_lock((a1 + 52));
  if (*(a1 + 48) == 1 && v2 < *(a1 + 24))
  {
    os_unfair_lock_unlock((a1 + 52));
    return 4;
  }

  else
  {
    os_unfair_lock_unlock((a1 + 52));
    v6 = sub_1D2E9E7A0(1u, a2);
    os_unfair_lock_lock((a1 + 52));
    v7 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 52));
    v8 = sub_1D2E9E7A0(0, a2);
    os_unfair_lock_lock((a1 + 52));
    v9 = *(a1 + 40);
    os_unfair_lock_unlock((a1 + 52));
    if (v7 <= v6)
    {
      if (v9 > v8)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2 * (v9 > v8);
    }
  }
}

uint64_t sub_1D2E9DB80(uint64_t a1)
{
  sub_1D2EE4FB8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739088, &qword_1D2EF3E20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  result = sub_1D2E4FDA8(0);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(*(a1 + 56) + 8 * result);
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69E6438];
  v3[7] = MEMORY[0x1E69E63B0];
  v3[8] = v7;
  v3[4] = v5;
  v8 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v8);

  MEMORY[0x1D38AE570](0x686365657073202CLL, 0xE90000000000003ALL);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = sub_1D2E4FDA8(1u);
  if ((v10 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(*(a1 + 56) + 8 * result);
  v9[7] = v6;
  v9[8] = v7;
  v9[4] = v11;
  v12 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v12);

  MEMORY[0x1D38AE570](0x636E656C6973202CLL, 0xEA00000000003A65);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  result = sub_1D2E4FDA8(2u);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(*(a1 + 56) + 8 * result);
  v13[7] = v6;
  v13[8] = v7;
  v13[4] = v15;
  v16 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v16);

  MEMORY[0x1D38AE570](0x3A726568746F202CLL, 0xE800000000000000);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = result;
  result = sub_1D2E4FDA8(3u);
  if (v18)
  {
    v19 = *(*(a1 + 56) + 8 * result);
    v17[7] = v6;
    v17[8] = v7;
    v17[4] = v19;
    v20 = sub_1D2EE4A78();
    MEMORY[0x1D38AE570](v20);

    return 0x3A636973756DLL;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D2E9DE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D2EDCA18(0, v5, 0);
    v7 = v92;
    v8 = a2 + 32;
    v9 = v5;
    do
    {
      v10 = *v8;
      v11 = 0;
      if (*(*v8 + 16))
      {
        v12 = sub_1D2E4FDA8(0);
        if (v13)
        {
          v11 = *(*(v10 + 56) + 8 * v12);
        }
      }

      v15 = *(v92 + 16);
      v14 = *(v92 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1D2EDCA18((v14 > 1), v15 + 1, 1);
      }

      *(v92 + 16) = v16;
      *(v92 + 8 * v15 + 32) = v11;
      v8 += 8;
      --v9;
    }

    while (v9);
  }

  else
  {
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {

      v25 = 0.0;
      goto LABEL_29;
    }

    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v16 < 4)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_17:
    v22 = v16 - v17;
    v23 = (v7 + 8 * v17 + 32);
    do
    {
      v24 = *v23++;
      v18 = v18 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_19;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v7 + 48);
  v18 = 0.0;
  v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v21 = *v19;
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_17;
  }

LABEL_19:

  v25 = v18 / v16;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v26 = v6;
    v27 = a2 + 32;
    v28 = v5;
    do
    {
      v29 = *v27;
      v30 = 0;
      if (*(*v27 + 16))
      {
        v31 = sub_1D2E4FDA8(1u);
        if (v32)
        {
          v30 = *(*(v29 + 56) + 8 * v31);
        }
      }

      v34 = *(v6 + 16);
      v33 = *(v6 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_1D2EDCA18((v33 > 1), v34 + 1, 1);
      }

      *(v6 + 16) = v35;
      *(v6 + 8 * v34 + 32) = v30;
      v27 += 8;
      --v28;
    }

    while (v28);
    goto LABEL_31;
  }

LABEL_29:
  v35 = *(v6 + 16);
  if (!v35)
  {

    v44 = 0.0;
    goto LABEL_48;
  }

  v26 = v6;
LABEL_31:
  if (v35 < 4)
  {
    v36 = 0;
    v37 = 0.0;
LABEL_36:
    v41 = v35 - v36;
    v42 = (v26 + 8 * v36 + 32);
    do
    {
      v43 = *v42++;
      v37 = v37 + v43;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  v36 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = (v26 + 48);
  v37 = 0.0;
  v39 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v40 = *v38;
    v37 = v37 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
    v38 += 4;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v36)
  {
    goto LABEL_36;
  }

LABEL_38:

  v44 = v37 / v35;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v45 = v6;
    v46 = a2 + 32;
    v47 = v5;
    do
    {
      v48 = *v46;
      v49 = 0;
      if (*(*v46 + 16))
      {
        v50 = sub_1D2E4FDA8(2u);
        if (v51)
        {
          v49 = *(*(v48 + 56) + 8 * v50);
        }
      }

      v53 = *(v6 + 16);
      v52 = *(v6 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_1D2EDCA18((v52 > 1), v53 + 1, 1);
      }

      *(v6 + 16) = v54;
      *(v6 + 8 * v53 + 32) = v49;
      v46 += 8;
      --v47;
    }

    while (v47);
    goto LABEL_50;
  }

LABEL_48:
  v54 = *(v6 + 16);
  if (!v54)
  {

    v63 = 0.0;
    goto LABEL_67;
  }

  v45 = v6;
LABEL_50:
  if (v54 < 4)
  {
    v55 = 0;
    v56 = 0.0;
LABEL_55:
    v60 = v54 - v55;
    v61 = (v45 + 8 * v55 + 32);
    do
    {
      v62 = *v61++;
      v56 = v56 + v62;
      --v60;
    }

    while (v60);
    goto LABEL_57;
  }

  v55 = v54 & 0xFFFFFFFFFFFFFFFCLL;
  v57 = (v45 + 48);
  v56 = 0.0;
  v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v59 = *v57;
    v56 = v56 + *(v57 - 2) + *(v57 - 1) + *v57 + v57[1];
    v57 += 4;
    v58 -= 4;
  }

  while (v58);
  if (v54 != v55)
  {
    goto LABEL_55;
  }

LABEL_57:

  v63 = v56 / v54;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v64 = a2 + 32;
    do
    {
      v65 = *v64;
      v66 = 0;
      if (*(*v64 + 16))
      {
        v67 = sub_1D2E4FDA8(3u);
        if (v68)
        {
          v66 = *(*(v65 + 56) + 8 * v67);
        }
      }

      v70 = *(v6 + 16);
      v69 = *(v6 + 24);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1D2EDCA18((v69 > 1), v70 + 1, 1);
      }

      *(v6 + 16) = v71;
      *(v6 + 8 * v70 + 32) = v66;
      v64 += 8;
      --v5;
    }

    while (v5);
LABEL_68:
    if (v71 > 3)
    {
      v72 = v71 & 0xFFFFFFFFFFFFFFFCLL;
      v74 = (v6 + 48);
      v73 = 0.0;
      v75 = v71 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v76 = *v74;
        v73 = v73 + *(v74 - 2) + *(v74 - 1) + *v74 + v74[1];
        v74 += 4;
        v75 -= 4;
      }

      while (v75);
      if (v71 == v72)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v72 = 0;
      v73 = 0.0;
    }

    v77 = v71 - v72;
    v78 = (v6 + 8 * v72 + 32);
    do
    {
      v79 = *v78++;
      v73 = v73 + v79;
      --v77;
    }

    while (v77);
LABEL_75:

    v80 = v73 / v71;
    goto LABEL_76;
  }

LABEL_67:
  v71 = *(v6 + 16);
  if (v71)
  {
    goto LABEL_68;
  }

  v80 = 0.0;
LABEL_76:
  v81 = sub_1D2E9DA90(a1, a2);
  if (v81 == 4)
  {
    v82 = 0;
    if (v25 > 0.0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v82 = v81 == 0;
    if (v25 > 0.0)
    {
      goto LABEL_83;
    }
  }

  if (v44 <= 0.0 && v63 <= 0.0)
  {
    v83 = type metadata accessor for AudioHistEvent();
    v84 = *(*(v83 - 8) + 56);
    v85 = v83;
    v86 = a3;
    v87 = 1;
    goto LABEL_84;
  }

LABEL_83:
  v88 = type metadata accessor for AudioHistEvent();
  v89 = a3 + *(v88 + 84);
  sub_1D2EE3E38();
  *a3 = 0xD000000000000037;
  *(a3 + 8) = 0x80000001D2EE7580;
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x80000001D2EE75C0;
  *(a3 + 32) = 0xD000000000000014;
  *(a3 + 40) = 0x80000001D2EE75E0;
  *(a3 + 48) = 0xD000000000000011;
  *(a3 + 56) = 0x80000001D2EE7600;
  *(a3 + 64) = 0xD000000000000013;
  *(a3 + 72) = 0x80000001D2EE7620;
  *(a3 + 80) = 0xD000000000000012;
  *(a3 + 88) = 0x80000001D2EE7640;
  *(a3 + 96) = 0x6F6365725F706974;
  *(a3 + 104) = 0xEF6465646E656D6DLL;
  *(a3 + 112) = 0x726573755F706974;
  *(a3 + 120) = 0xEF6E6F697463615FLL;
  strcpy((a3 + 128), "failure_reason");
  *(a3 + 143) = -18;
  *(a3 + 144) = v25;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1.0 - v44;
  *(a3 + 168) = 0;
  *(a3 + 176) = v80;
  *(a3 + 184) = 0;
  *(a3 + 192) = v63;
  *(a3 + 200) = 0;
  *(a3 + 208) = v44;
  *(a3 + 216) = 0;
  *(a3 + 217) = v82;
  *(a3 + 218) = 1027;
  v84 = *(*(v88 - 8) + 56);
  v86 = a3;
  v87 = 0;
  v85 = v88;
LABEL_84:

  return v84(v86, v87, 1, v85);
}

void sub_1D2E9E5D4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1D2E9E60C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2EE4ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1D2EE5338();
      MEMORY[0x1D38AEDD0](v10);
      result = sub_1D2EE5378();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

double sub_1D2E9E7A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = *v4;
      v8 = 0.0;
      if (*(*v4 + 16))
      {
        v9 = sub_1D2E4FDA8(a1);
        v8 = 0.0;
        if (v10)
        {
          v8 = *(*(v7 + 56) + 8 * v9);
        }
      }

      v6 = v6 + v8;
      v5 = v5 + 1.0;
      ++v4;
      --v3;
    }

    while (v3);
    v11 = v6 / v5;
  }

  else
  {
    v11 = NAN;
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2DB8);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315394;
    v17 = sub_1D2EE4AA8();
    v19 = sub_1D2E685B0(v17, v18, &v21);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11;
    _os_log_impl(&dword_1D2E46000, v13, v14, "Average classification score %s: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D38AF660](v16, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  return v11;
}

unint64_t sub_1D2E9E97C(void *a1)
{
  result = sub_1D2EDD324(MEMORY[0x1E69E7CC0]);
  v36 = result;
  if (a1)
  {
    v3 = [a1 analysisResult];
    v4 = sub_1D2EE49B8();

    v34 = 0x636973756DLL;
    v35 = 0xE500000000000000;
    sub_1D2EE4F68();
    if (*(v4 + 16) && (v5 = sub_1D2E4FD64(v33), (v6 & 1) != 0))
    {
      sub_1D2E68F60(*(v4 + 56) + 32 * v5, &v34);
      sub_1D2E5073C(v33);

      v7 = swift_dynamicCast();
      if (v7)
      {
        v8 = v32;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v8 = 0;
      v9 = 1;
    }

    sub_1D2E9D9D4(v8, v9, 0);
    v10 = [a1 analysisResult];
    v11 = sub_1D2EE49B8();

    v34 = 0x686365657073;
    v35 = 0xE600000000000000;
    sub_1D2EE4F68();
    if (*(v11 + 16) && (v12 = sub_1D2E4FD64(v33), (v13 & 1) != 0))
    {
      sub_1D2E68F60(*(v11 + 56) + 32 * v12, &v34);
      sub_1D2E5073C(v33);

      v14 = swift_dynamicCast();
      if (v14)
      {
        v15 = v32;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v15 = 0;
      v16 = 1;
    }

    sub_1D2E9D9D4(v15, v16, 1u);
    v17 = [a1 analysisResult];
    v18 = sub_1D2EE49B8();

    v34 = 0x65636E656C6973;
    v35 = 0xE700000000000000;
    sub_1D2EE4F68();
    if (*(v18 + 16) && (v19 = sub_1D2E4FD64(v33), (v20 & 1) != 0))
    {
      sub_1D2E68F60(*(v18 + 56) + 32 * v19, &v34);
      sub_1D2E5073C(v33);

      v21 = swift_dynamicCast();
      if (v21)
      {
        v22 = v32;
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v22 = 0;
      v23 = 1;
    }

    result = sub_1D2E9D9D4(v22, v23, 2u);
    v24 = v36;
    if (*(v36 + 16))
    {
      result = sub_1D2E4FDA8(0);
      if (v25)
      {
        if (*(v24 + 16))
        {
          v26 = *(*(v24 + 56) + 8 * result);
          result = sub_1D2E4FDA8(1u);
          if (v27)
          {
            if (*(v24 + 16))
            {
              v28 = *(*(v24 + 56) + 8 * result);
              result = sub_1D2E4FDA8(2u);
              if (v29)
              {
                v30 = 1.0 - v26 - v28 - *(*(v24 + 56) + 8 * result);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v33[0] = v24;
                sub_1D2EC8EC8(3u, isUniquelyReferenced_nonNull_native, v30);

                return v33[0];
              }

LABEL_36:
              __break(1u);
              return result;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  return result;
}

unint64_t sub_1D2E9ED88()
{
  result = qword_1EC739090;
  if (!qword_1EC739090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739090);
  }

  return result;
}

id sub_1D2E9EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a2;
  v69 = a3;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391E8, &qword_1D2EF4058);
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391F0, &qword_1D2EF4060);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  v79 = *(v22 - 8);
  v80 = v22;
  v23 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v62 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  v26 = *(v25 - 8);
  v27 = v26;
  v65 = v25;
  v66 = v26;
  v28 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v62 - v29;
  v31 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask] = 0;
  v32 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleLength];
  v33 = v69;
  *v32 = v68;
  *(v32 + 1) = v33;
  v34 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleInitialDelay];
  *v34 = a4;
  *(v34 + 1) = a5;
  sub_1D2EA1F0C();
  v35 = *MEMORY[0x1E69E8650];
  (*(v18 + 104))(v21, v35, v17);
  v64 = v30;
  v36 = v62;
  sub_1D2EE4CC8();
  (*(v18 + 8))(v21, v17);
  (*(v27 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStream], v30, v25);
  v37 = v36;
  (*(v79 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStreamContinuation], v36, v80);
  v39 = v73;
  v38 = v74;
  v40 = v75;
  (*(v74 + 104))(v73, v35, v75);
  v41 = v67;
  v42 = v70;
  sub_1D2EE4CC8();
  (*(v38 + 8))(v39, v40);
  v44 = v71;
  v43 = v72;
  (*(v71 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStream], v41, v72);
  v46 = v76;
  v45 = v77;
  (*(v76 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStreamContinuation], v42, v77);
  v47 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_config];
  v48 = v63;
  v49 = *(v63 + 80);
  *(v47 + 4) = *(v63 + 64);
  *(v47 + 5) = v49;
  *(v47 + 6) = *(v48 + 96);
  *(v47 + 14) = *(v48 + 112);
  v50 = *(v48 + 16);
  *v47 = *v48;
  *(v47 + 1) = v50;
  v51 = *(v48 + 48);
  *(v47 + 2) = *(v48 + 32);
  *(v47 + 3) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391F8, &qword_1D2EF4068);
  v52 = swift_allocObject();
  *(v52 + 52) = 0;
  *(v52 + 16) = 1;
  *(v52 + 24) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v52 + 32) = _Q0;
  *(v52 + 48) = 1;
  v58 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator];
  v59 = MEMORY[0x1E69E7CC0];
  *v58 = v52;
  v58[1] = v59;
  v58[2] = 0;
  v81.receiver = v5;
  v81.super_class = ObjectType;
  v60 = objc_msgSendSuper2(&v81, sel_init);
  (*(v46 + 8))(v42, v45);
  (*(v44 + 8))(v41, v43);
  (*(v79 + 8))(v37, v80);
  (*(v66 + 8))(v64, v65);
  return v60;
}

id sub_1D2E9F418(id *a1, uint64_t a2, char *a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v58 - v13;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EDED2DB8);
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = a3;
    v18 = a4;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a2;
    _os_log_impl(&dword_1D2E46000, v15, v16, "Starting MediaAnalyzer client for stream token %ld", v19, 0xCu);
    v20 = v19;
    a4 = v18;
    a3 = v17;
    MEMORY[0x1D38AF660](v20, -1, -1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69865A0]) initWithDelegate:a3 delegateQueue:0 analysisType:1 streamToken:a2];
  v22 = sub_1D2EE45F8();
  v23 = sub_1D2EE4DD8();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2E46000, v22, v23, "MediaAnalyzer client successfully created", v25, 2u);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    *a1 = v21;
    result = [v21 enableMediaAnalyzer_];
    v27 = &a3[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_config];
    if (a4)
    {
      v28 = *(v27 + 14);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = 104;
LABEL_16:
        v34 = *&v27[v29];
        v35 = *(v27 + 8);
        v36 = &a3[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator];
        swift_beginAccess();
        v37 = *v36;
        os_unfair_lock_lock(*v36 + 13);
        v38 = (a4 & 1) == 0;
        LOBYTE(v37[4]._os_unfair_lock_opaque) = v38;
        *&v37[6]._os_unfair_lock_opaque = v28;
        *&v37[8]._os_unfair_lock_opaque = v35;
        *&v37[10]._os_unfair_lock_opaque = v34;
        LOBYTE(v37[12]._os_unfair_lock_opaque) = v38;
        os_unfair_lock_unlock(v37 + 13);
        v39 = v36[1];
        v36[1] = MEMORY[0x1E69E7CC0];
        v36[2] = v28;
        swift_endAccess();

        v40 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStream;
        v41 = sub_1D2EE4CB8();
        v42 = *(v41 - 8);
        v43 = *(v42 + 56);
        v60 = a4;
        v44 = v64;
        v58 = v42 + 56;
        v59 = v43;
        v43(v64, 1, 1, v41);
        v46 = v61;
        v45 = v62;
        v47 = v63;
        (*(v62 + 16))(v61, &a3[v40], v63);
        v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = 0;
        *(v49 + 24) = 0;
        (*(v45 + 32))(v49 + v48, v46, v47);
        *(v49 + ((v9 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
        v50 = a3;
        sub_1D2ED7FB0(0, 0, v44, &unk_1D2EF4020, v49);

        if (v60)
        {
          v51 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
          if (*&v50[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask])
          {
            v52 = *&v50[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask];

            sub_1D2EE4D38();

            v53 = *&v50[v51];
          }

          *&v50[v51] = 0;
        }

        else
        {
          v59(v44, 1, 1, v41);
          v54 = swift_allocObject();
          v54[2] = 0;
          v54[3] = 0;
          v54[4] = v50;
          v55 = v50;
          v56 = sub_1D2ED7FB0(0, 0, v44, &unk_1D2EF4030, v54);
          v57 = *&v55[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask];
          *&v55[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask] = v56;
        }
      }

      __break(1u);
    }

    else
    {
      v28 = *(v27 + 7);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = 72;
        goto LABEL_16;
      }
    }

    __break(1u);
    return result;
  }

  if (v24)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D2E46000, v22, v23, "MediaAnalyzer is nil", v30, 2u);
    MEMORY[0x1D38AF660](v30, -1, -1);
  }

  v31 = sub_1D2EE4CB8();
  v32 = v64;
  (*(*(v31 - 8) + 56))(v64, 1, 1, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  sub_1D2E8CB18(0, 0, v32, &unk_1D2EF4010, v33);

  return sub_1D2E5D0B8(v32, &qword_1EC739040, &qword_1D2EF2460);
}

uint64_t sub_1D2E9FA64()
{
  v1 = type metadata accessor for AudioHistEvent();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9FAF4, 0, 0);
}

uint64_t sub_1D2E9FAF4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1 + *(v2 + 84);
  sub_1D2EE3E38();
  *v1 = 0xD000000000000037;
  *(v1 + 8) = 0x80000001D2EE7580;
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001D2EE75C0;
  *(v1 + 32) = 0xD000000000000014;
  *(v1 + 40) = 0x80000001D2EE75E0;
  *(v1 + 48) = 0xD000000000000011;
  *(v1 + 56) = 0x80000001D2EE7600;
  *(v1 + 64) = 0xD000000000000013;
  *(v1 + 72) = 0x80000001D2EE7620;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = 0x80000001D2EE7640;
  *(v1 + 96) = 0x6F6365725F706974;
  *(v1 + 104) = 0xEF6465646E656D6DLL;
  *(v1 + 112) = 0x726573755F706974;
  *(v1 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v1 + 128), "failure_reason");
  *(v1 + 143) = -18;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 217) = 768;
  *(v1 + 219) = 0;
  v0[5] = v2;
  v0[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EA2BAC(v1, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EA2C10(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2E9FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = sub_1D2EE5078();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_1D2EE5088();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9FE34, 0, 0);
}

uint64_t sub_1D2E9FE34()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting media analysis duty cycling", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  *(v0 + 168) = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleLength;
  *(v0 + 176) = v5;
  if (sub_1D2EE4D48())
  {
    v6 = *(v0 + 160);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Stopping media analysis duty cycling", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    v10 = *(v0 + 152);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 96);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 57) = 0;
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = (*(v0 + 88) + *(v0 + 168));
    v23 = *v22;
    v24 = v22[1];
    sub_1D2EE52E8();
    *(v0 + 64) = v23;
    *(v0 + 72) = v24;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v25 = sub_1D2EA2EF8(&qword_1EC7391C8, MEMORY[0x1E69E8820]);
    sub_1D2EE52C8();
    sub_1D2EA2EF8(&qword_1EC7391D0, MEMORY[0x1E69E87E8]);
    sub_1D2EE5098();
    v26 = *(v20 + 8);
    *(v0 + 184) = v26;
    *(v0 + 192) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v19, v21);
    v27 = *(MEMORY[0x1E69E8938] + 4);
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_1D2EA01AC;
    v29 = *(v0 + 152);
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);

    return MEMORY[0x1EEE6DE58](v31, v0 + 40, v30, v25);
  }
}

uint64_t sub_1D2EA01AC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v4 = *(v2 + 192);
  if (v0)
  {
    (*(v2 + 184))(*(v2 + 128), *(v2 + 104));
    v5 = sub_1D2EA06B8;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    v8 = *(v2 + 136);
    (*(v2 + 184))(*(v2 + 128), *(v2 + 104));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1D2EA0304;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2EA0304()
{
  if (sub_1D2EE4D48())
  {
    v1 = *(v0 + 160);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = "Duty cycling task is cancelled";
LABEL_12:
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v2, v3, v4, v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = *(v0 + 88) + *(v0 + 176);
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 8);
  if (v6)
  {
    [v6 enableMediaAnalyzer_];
  }

  v7 = *(v0 + 160);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 57);
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v11 ^= 1u;
    *(v12 + 4) = v11;
    _os_log_impl(&dword_1D2E46000, v8, v9, "Duty cycling status enabled=%{BOOL}d", v12, 8u);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    LOBYTE(v11) = v11 ^ 1;
  }

  os_unfair_lock_unlock((*(v0 + 88) + *(v0 + 176)));
  if (sub_1D2EE4D48())
  {
    v13 = *(v0 + 160);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = "Stopping media analysis duty cycling";
      goto LABEL_12;
    }

LABEL_13:
    v15 = *(v0 + 152);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 96);

    v19 = *(v0 + 8);

    return v19();
  }

  *(v0 + 57) = v11;
  v21 = *(v0 + 152);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = (*(v0 + 88) + *(v0 + 168));
  v28 = *v27;
  v29 = v27[1];
  sub_1D2EE52E8();
  *(v0 + 64) = v28;
  *(v0 + 72) = v29;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v30 = sub_1D2EA2EF8(&qword_1EC7391C8, MEMORY[0x1E69E8820]);
  sub_1D2EE52C8();
  sub_1D2EA2EF8(&qword_1EC7391D0, MEMORY[0x1E69E87E8]);
  sub_1D2EE5098();
  v31 = *(v25 + 8);
  *(v0 + 184) = v31;
  *(v0 + 192) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v24, v26);
  v32 = *(MEMORY[0x1E69E8938] + 4);
  v33 = swift_task_alloc();
  *(v0 + 200) = v33;
  *v33 = v0;
  v33[1] = sub_1D2EA01AC;
  v34 = *(v0 + 152);
  v36 = *(v0 + 128);
  v35 = *(v0 + 136);

  return MEMORY[0x1EEE6DE58](v36, v0 + 40, v35, v30);
}

uint64_t sub_1D2EA06B8()
{
  v35 = v0;
  v1 = v0[26];
  v2 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v34);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Media analysis duty cycling failed with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1D38AF660](v33, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v19 = v0[26];
  v20 = v0[12];
  v21 = sub_1D2EE4CB8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1D2E8CB18(0, 0, v20, &unk_1D2EF4040, v22);

  sub_1D2E5D0B8(v20, &qword_1EC739040, &qword_1D2EF2460);
  v23 = v0[20];
  v24 = sub_1D2EE45F8();
  v25 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D2E46000, v24, v25, "Stopping media analysis duty cycling", v26, 2u);
    MEMORY[0x1D38AF660](v26, -1, -1);
  }

  v27 = v0[19];
  v29 = v0[15];
  v28 = v0[16];
  v30 = v0[12];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D2EA0A78()
{
  v1 = type metadata accessor for AudioHistEvent();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0B08, 0, 0);
}

uint64_t sub_1D2EA0B08()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1 + *(v2 + 84);
  sub_1D2EE3E38();
  *v1 = 0xD000000000000037;
  *(v1 + 8) = 0x80000001D2EE7580;
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001D2EE75C0;
  *(v1 + 32) = 0xD000000000000014;
  *(v1 + 40) = 0x80000001D2EE75E0;
  *(v1 + 48) = 0xD000000000000011;
  *(v1 + 56) = 0x80000001D2EE7600;
  *(v1 + 64) = 0xD000000000000013;
  *(v1 + 72) = 0x80000001D2EE7620;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = 0x80000001D2EE7640;
  *(v1 + 96) = 0x6F6365725F706974;
  *(v1 + 104) = 0xEF6465646E656D6DLL;
  *(v1 + 112) = 0x726573755F706974;
  *(v1 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v1 + 128), "failure_reason");
  *(v1 + 143) = -18;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 217) = 768;
  *(v1 + 219) = 3;
  v0[5] = v2;
  v0[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EA2BAC(v1, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EA2C10(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2EA0CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391D8, &qword_1D2EF4048);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391E0, &qword_1D2EF4050);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0E20, 0, 0);
}

uint64_t sub_1D2EA0E20()
{
  v1 = v0[13];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  sub_1D2EE4D08();
  v3 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStreamContinuation;
  v0[14] = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator;
  v0[15] = v3;
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EA0F00;
  v6 = v0[13];
  v7 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v7);
}

uint64_t sub_1D2EA0F00()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0FFC, 0, 0);
}

uint64_t sub_1D2EA0FFC()
{
  v70 = v0;
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 56);
    swift_beginAccess();
    v5 = v2;
    v6 = sub_1D2E9E97C(v2);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v7 = sub_1D2EE4618();
    __swift_project_value_buffer(v7, qword_1EDED2DB8);

    v8 = sub_1D2EE45F8();
    v9 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = v5;
      v12 = swift_slowAlloc();
      v69 = v12;
      *v10 = 136315138;
      v13 = sub_1D2E9DB80(v6);
      v15 = sub_1D2E685B0(v13, v14, &v69);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D2E46000, v8, v9, "Running classification score: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v16 = v12;
      v5 = v11;
      v1 = v0 + 40;
      MEMORY[0x1D38AF660](v16, -1, -1);
      MEMORY[0x1D38AF660](v10, -1, -1);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 56);
    v19 = v18 + v17;
    v20 = *(v18 + v17 + 16);
    if (v20)
    {
      v21 = *(v19 + 8);
      if (*(v21 + 2) == v20)
      {
        v22 = *(v19 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v19 + 8) = v21;
        if (!isUniquelyReferenced_nonNull_native || (v20 - 1) > *(v21 + 3) >> 1)
        {
          v24 = *(v0 + 56) + *(v0 + 112);
          v21 = sub_1D2EC823C(isUniquelyReferenced_nonNull_native, v20, 1, v21);
          *(v24 + 8) = v21;
        }

        v25 = *(v0 + 56) + *(v0 + 112);
        sub_1D2EA2FEC((v21 + 32));
        v26 = *(v21 + 2);
        memmove(v21 + 32, v21 + 40, 8 * v26 - 8);
        *(v21 + 2) = v26 - 1;
        *(v25 + 8) = v21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D2EC823C(0, *(v21 + 2) + 1, 1, v21);
      }

      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      if (v28 >= v27 >> 1)
      {
        v21 = sub_1D2EC823C((v27 > 1), v28 + 1, 1, v21);
      }

      v29 = *(v0 + 56) + *(v0 + 112);
      *(v21 + 2) = v28 + 1;
      *&v21[8 * v28 + 32] = v6;
      *(v29 + 8) = v21;
      v17 = *(v0 + 112);
      v18 = *(v0 + 56);
    }

    v30 = (v18 + v17);
    swift_endAccess();
    v31 = *(v18 + v17 + 8);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *v30;

      os_unfair_lock_lock((v33 + 52));
      if ((*(v33 + 48) & 1) != 0 && v32 < *(v33 + 24))
      {
        os_unfair_lock_unlock((v33 + 52));
      }

      else
      {
        os_unfair_lock_unlock((v33 + 52));
        v37 = sub_1D2E9E7A0(1u, v31);
        os_unfair_lock_lock((v33 + 52));
        v38 = *(v33 + 32);
        os_unfair_lock_unlock((v33 + 52));
        v39 = sub_1D2E9E7A0(0, v31);
        os_unfair_lock_lock((v33 + 52));
        v40 = *(v33 + 40);
        os_unfair_lock_unlock((v33 + 52));

        v41 = sub_1D2EE45F8();
        v42 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v41, v42))
        {
          if (v40 > v39)
          {
            v43 = 1;
          }

          else
          {
            v43 = 3;
          }

          if (v38 > v37)
          {
            v44 = 2 * (v40 > v39);
          }

          else
          {
            v44 = v43;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v69 = v46;
          *v45 = 136315138;
          *(v1 + 97) = v44;
          v47 = sub_1D2EE4AA8();
          v49 = sub_1D2E685B0(v47, v48, &v69);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_1D2E46000, v41, v42, "Sound analysis prediction: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1D38AF660](v46, -1, -1);
          MEMORY[0x1D38AF660](v45, -1, -1);
        }

        v50 = (*(v0 + 56) + *(v0 + 112));
        v51 = v50[1];
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = *v50;

          os_unfair_lock_lock((v53 + 52));
          if ((*(v53 + 48) & 1) != 0 && v52 < *(v53 + 24))
          {
            os_unfair_lock_unlock((v53 + 52));
          }

          else
          {
            v54 = *(v0 + 120);
            v55 = *(v0 + 72);
            v56 = *(v0 + 80);
            v58 = *(v0 + 56);
            v57 = *(v0 + 64);
            os_unfair_lock_unlock((v53 + 52));
            v59 = sub_1D2E9E7A0(1u, v51);
            os_unfair_lock_lock((v53 + 52));
            v60 = *(v53 + 32);
            os_unfair_lock_unlock((v53 + 52));
            v61 = sub_1D2E9E7A0(0, v51);
            os_unfair_lock_lock((v53 + 52));
            v62 = *(v53 + 40);
            os_unfair_lock_unlock((v53 + 52));

            if (v62 > v61)
            {
              v63 = 1;
            }

            else
            {
              v63 = 3;
            }

            v64 = 2 * (v62 > v61);
            if (v60 <= v59)
            {
              v64 = v63;
            }

            *(v0 + 136) = v64;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
            sub_1D2EE4CD8();
            (*(v55 + 8))(v56, v57);
          }
        }
      }
    }

    v65 = *(MEMORY[0x1E69E8678] + 4);
    v66 = swift_task_alloc();
    *(v0 + 128) = v66;
    *v66 = v0;
    v66[1] = sub_1D2EA0F00;
    v67 = *(v0 + 104);
    v68 = *(v0 + 88);

    return MEMORY[0x1EEE6D9C8](v1, 0, 0, v68);
  }

  else
  {
    v34 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1D2EA16D0(id *a1, uint64_t a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Stopping MediaAnalyzer client", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  if (*a1)
  {
    [*a1 enableMediaAnalyzer_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  sub_1D2EE4CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  sub_1D2EE4CE8();
  v8 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
  if (*(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask))
  {
    v9 = *(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask);

    sub_1D2EE4D38();

    v10 = *(a2 + v8);
  }

  *(a2 + v8) = 0;

  v11 = a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator;
  swift_beginAccess();
  v12 = *(v11 + 8);
  *(v11 + 8) = MEMORY[0x1E69E7CC0];
}

id sub_1D2EA18B0(id *a1, uint64_t a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Disabling MediaAnalyzer client", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
  if (*(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask))
  {
    v9 = *(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask);

    sub_1D2EE4D38();

    v10 = *(a2 + v8);
  }

  *(a2 + v8) = 0;

  result = *a1;
  if (*a1)
  {
    return [result enableMediaAnalyzer_];
  }

  return result;
}

void sub_1D2EA1A0C(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
  os_unfair_lock_lock(&v2[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex]);
  sub_1D2EA18B0(v5 + 1, v2);
  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock(v5);
  sub_1D2E9F418(v5 + 1, a1, v2, a2 & 1);

  os_unfair_lock_unlock(v5);
}

uint64_t type metadata accessor for SoundClassificationResultsProvider()
{
  result = qword_1EC7390E8;
  if (!qword_1EC7390E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EA1CD4()
{
  sub_1D2EA1EB8(319, &qword_1EC7390F8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1D2EA1EB8(319, &qword_1EC739100, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1D2EA1F58(319, &qword_1EC739108, MEMORY[0x1E69E8698]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1D2EA1F58(319, &qword_1EC739118, MEMORY[0x1E69E8660]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D2EA1EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SoundAnalyzerPrediction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D2EA1F0C()
{
  result = qword_1EC739110;
  if (!qword_1EC739110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739110);
  }

  return result;
}

void sub_1D2EA1F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D2EA1F0C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D2EA20B8()
{
  v1 = type metadata accessor for AudioHistEvent();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA2148, 0, 0);
}

uint64_t sub_1D2EA2148()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1 + *(v2 + 84);
  sub_1D2EE3E38();
  *v1 = 0xD000000000000037;
  *(v1 + 8) = 0x80000001D2EE7580;
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001D2EE75C0;
  *(v1 + 32) = 0xD000000000000014;
  *(v1 + 40) = 0x80000001D2EE75E0;
  *(v1 + 48) = 0xD000000000000011;
  *(v1 + 56) = 0x80000001D2EE7600;
  *(v1 + 64) = 0xD000000000000013;
  *(v1 + 72) = 0x80000001D2EE7620;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = 0x80000001D2EE7640;
  *(v1 + 96) = 0x6F6365725F706974;
  *(v1 + 104) = 0xEF6465646E656D6DLL;
  *(v1 + 112) = 0x726573755F706974;
  *(v1 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v1 + 128), "failure_reason");
  *(v1 + 143) = -18;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 217) = 768;
  *(v1 + 219) = 2;
  v0[5] = v2;
  v0[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EA2BAC(v1, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EA2C10(v1);

  v5 = v0[1];

  return v5();
}

void sub_1D2EA238C(char a1, void *a2)
{
  if (a2)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = a2;
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315650;
      *(v8 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7830, &v19);
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1 & 1;
      *(v8 + 18) = 2080;
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v11 = sub_1D2EE4AA8();
      v13 = sub_1D2E685B0(v11, v12, &v19);

      *(v8 + 20) = v13;
      _os_log_impl(&dword_1D2E46000, v6, v7, "%s enabled=%{BOOL}d error=%s", v8, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38AF660](v9, -1, -1);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EDED2DB8);
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7830, &v19);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1 & 1;
    _os_log_impl(&dword_1D2E46000, v15, v16, "%s enabled=%{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D38AF660](v18, -1, -1);
    MEMORY[0x1D38AF660](v17, -1, -1);
  }
}

uint64_t sub_1D2EA2678(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739198, &qword_1D2EF3FD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v9 = sub_1D2EE4618();
  __swift_project_value_buffer(v9, qword_1EDED2DB8);
  v10 = sub_1D2EE45F8();
  v11 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D2E685B0(0xD00000000000003BLL, 0x80000001D2EE77F0, &v17);
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    _os_log_impl(&dword_1D2E46000, v10, v11, "%s token %ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  v17 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  sub_1D2EE4CD8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2EA28B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE77D0, &v13);
    _os_log_impl(&dword_1D2E46000, v5, v6, "%s AVCMediaAnalyzer server has died", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  sub_1D2EE4CE8();
  v9 = sub_1D2EE4CB8();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1D2E8CB18(0, 0, v3, &unk_1D2EF3FD0, v10);

  return sub_1D2E5D0B8(v3, &qword_1EC739040, &qword_1D2EF2460);
}

uint64_t sub_1D2EA2B00()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2EA20B8();
}

uint64_t sub_1D2EA2BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EA2C10(uint64_t a1)
{
  v2 = type metadata accessor for AudioHistEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EA2C6C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2E9FA64();
}

uint64_t sub_1D2EA2D18(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA0CEC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2EA2E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2E9FCD4(a1, v4, v5, v6);
}

uint64_t sub_1D2EA2EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2EA2F40()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2EA0A78();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2EA3054(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1D2EA30A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D2EA313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D2E5BA34;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1D2EA327C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737341646C6F68;
  v4 = 0xEA00000000007473;
  if (v2 != 1)
  {
    v3 = 0x6E614D7465737361;
    v4 = 0xEF746E656D656761;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7463417472616D73;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000736E6F69;
  }

  v7 = 0x69737341646C6F68;
  v8 = 0xEA00000000007473;
  if (*a2 != 1)
  {
    v7 = 0x6E614D7465737361;
    v8 = 0xEF746E656D656761;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7463417472616D73;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000736E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2EE5288();
  }

  return v11 & 1;
}

uint64_t sub_1D2EA33A4()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EA3460()
{
  *v0;
  *v0;
  sub_1D2EE4AC8();
}

uint64_t sub_1D2EA3508()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EA35C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D2EA3AC0();
  *a2 = result;
  return result;
}

void sub_1D2EA35F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736E6F69;
  v4 = 0xEA00000000007473;
  v5 = 0x69737341646C6F68;
  if (v2 != 1)
  {
    v5 = 0x6E614D7465737361;
    v4 = 0xEF746E656D656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463417472616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1D2EA3668(uint64_t *a1)
{
  if (*a1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    __swift_project_value_buffer(v1, qword_1EDED2DB8);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D2E46000, v2, v3, "os_transaction already exists", v4, 2u);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Requesting os_transaction", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    sub_1D2EE4AB8();

    v10 = os_transaction_create();

    *a1 = v10;
  }
}

void sub_1D2EA38A8(void *a1)
{
  if (*a1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v2 = sub_1D2EE4618();
    __swift_project_value_buffer(v2, qword_1EDED2DB8);
    v3 = sub_1D2EE45F8();
    v4 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D2E46000, v3, v4, "Released os_transaction", v5, 2u);
      MEMORY[0x1D38AF660](v5, -1, -1);
    }

    swift_unknownObjectRelease();
    *a1 = 0;
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "No os_transaction to release", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }
  }
}

unint64_t sub_1D2EA3A6C()
{
  result = qword_1EC739200;
  if (!qword_1EC739200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739200);
  }

  return result;
}

uint64_t sub_1D2EA3AC0()
{
  v0 = sub_1D2EE5118();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D2EA3B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7DE28;

  return v11(a1, a2, a3);
}

uint64_t sub_1D2EA3C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7DE28;

  return v11(a1, a2, a3);
}

uint64_t sub_1D2EA3D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7DE28;

  return v11(a1, a2, a3);
}

uint64_t sub_1D2EA3E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7DE28;

  return v11(a1, a2, a3);
}

uint64_t sub_1D2EA3FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7DE28;

  return v11(a1, a2, a3);
}

uint64_t sub_1D2EA40E8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2);
}

uint64_t sub_1D2EA4214(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v13 - v7;
  v9 = v1[1];
  if (v9)
  {
    if (*(*v1 + 16) == v9)
    {
      sub_1D2E90F9C(0, 1);
    }

    sub_1D2E5D050(a1, v8, &qword_1EC738CA8, &qword_1D2EF2610);
    v10 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D2EC8348(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1D2EC8348(v11 > 1, v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    result = sub_1D2EB5E64(v8, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, &qword_1EC738CA8, &qword_1D2EF2610);
    *v1 = v10;
  }

  return result;
}

uint64_t sub_1D2EA4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D2E5D050(a3, v24 - v10, &qword_1EC739040, &qword_1D2EF2460);
  v12 = sub_1D2EE4CB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D2E5D0B8(v11, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D2EE4C28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D2EE4AB8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D2EA4644(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1D2EE4EC8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1D2EB4A2C(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_1D2EA46C0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D2EE4EE8();
    v5 = v4;
    v6 = sub_1D2EE4F38();
    v8 = v7;
    v9 = MEMORY[0x1D38AE980](v3, v5, v6, v7);
    sub_1D2EB5DF0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1D2EB5DF0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1D2EE4EC8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D2EB3FD8(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1D2EB5DF0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1D2EA47DC(uint64_t a1)
{
  v2 = sub_1D2EE3C28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1D2EE3C08();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D2EA48D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  v0 = *(sub_1D2EE3EF8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D2EF4210;
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  v4 = sub_1D2EE3704(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EC746650 = v4;
  return result;
}

void sub_1D2EA4A70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v134 = a8;
  v135 = a7;
  v129 = a3;
  v130 = a6;
  v132 = a5;
  v138 = a4;
  v136 = a2;
  v128 = a9;
  v149 = *MEMORY[0x1E69E9840];
  v124 = *v9;
  v108 = type metadata accessor for ReturnToCallPredictorEvent();
  v12 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739250, &qword_1D2EF4398);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = &v107 - v16;
  v126 = type metadata accessor for PersistenceConfiguration();
  v17 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D2EE3EB8();
  v133 = *(v137 - 8);
  v19 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v107 - v24;
  v26 = sub_1D2EE3E48();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages;
  *v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(v31 + 2) = 10;
  *(v31 + 1) = v32;
  v121 = v31 + 8;
  v33 = v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
  *v33 = 0;
  *(v33 + 1) = 0;
  v123 = v33 + 8;
  v34 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_lock;
  sub_1D2EE3E38();
  v35 = *(v22 + 56);
  *v25 = 1;
  v36 = v26;
  v37 = v132;
  (*(v27 + 32))(&v25[v35], v30, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E38, &qword_1D2EF3090);
  v39 = *(v38 + 52);
  v40 = (*(v38 + 48) + 3) & 0x1FFFFFFFCLL;
  v41 = swift_allocObject();
  *(v41 + ((*(*v41 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D2EB5E64(v25, v41 + *(*v41 + *MEMORY[0x1E69E6B68] + 16), &qword_1EC738E30, &unk_1D2EF3080);
  v122 = v34;
  *(v10 + v34) = v41;
  v42 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392F0, &qword_1D2EF4548);
  v43 = swift_allocObject();
  *(v43 + 32) = 0;
  *(v43 + 16) = 2;
  *(v43 + 24) = 0;
  v120 = v42;
  *(v10 + v42) = v43;
  v44 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392F8, &qword_1D2EF4550);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  v119 = v44;
  *(v10 + v44) = v45;
  v46 = *(a1 + 80);
  *(v10 + 5) = *(a1 + 64);
  *(v10 + 6) = v46;
  *(v10 + 7) = *(a1 + 96);
  v10[16] = *(a1 + 112);
  v47 = *(a1 + 16);
  *(v10 + 1) = *a1;
  *(v10 + 2) = v47;
  v48 = *(a1 + 48);
  *(v10 + 3) = *(a1 + 32);
  *(v10 + 4) = v48;
  v49 = v133;
  v50 = *(v133 + 16);
  v118 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v51 = v137;
  v110 = v50;
  v50(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v136, v137);
  v52 = v131;
  sub_1D2EE3EA8();
  v53 = *(v49 + 32);
  v117 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id;
  v53(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v52, v51);
  v116 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter;
  v54 = v129;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter) = v129;
  v55 = *(v10 + 6);
  v141[4] = *(v10 + 5);
  v141[5] = v55;
  v141[6] = *(v10 + 7);
  v142 = v10[16];
  v56 = *(v10 + 2);
  v141[0] = *(v10 + 1);
  v141[1] = v56;
  v57 = *(v10 + 4);
  v141[2] = *(v10 + 3);
  v141[3] = v57;
  v58 = objc_allocWithZone(type metadata accessor for CaptionProvider(0));
  v129 = v54;
  v59 = sub_1D2E85E94(v141, 0, 0);
  v115 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider) = v59;
  type metadata accessor for WaitOnHoldStateMachine();
  v60 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739300, &qword_1D2EF4558);
  v61 = swift_allocObject();
  *(v61 + 36) = 0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 2;
  *(v60 + 16) = v61;
  v113 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) = v60;
  v114 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager;
  sub_1D2E6912C(v138, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager);
  v62 = objc_allocWithZone(type metadata accessor for SoundClassificationResultsProvider());
  v63 = sub_1D2E9EDDC(a1, 0x236EFCBCBB340000, 1, 0x40AAD21B3B700000, 3);
  v112 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider) = v63;
  if (v37)
  {
    v64 = v37;
  }

  else
  {
    v66 = v125;
    v65 = v126;
    if (qword_1EDECF980 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v65, qword_1EDED2D50);
    sub_1D2EB5DFC(v67, v66, type metadata accessor for PersistenceConfiguration);
    v68 = type metadata accessor for AnsweringMachineController(0);
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    v64 = sub_1D2E9257C(a1, v66, sub_1D2E9251C, 0);
  }

  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) = v64;
  v126 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager;
  sub_1D2E6912C(v135, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager);
  v71 = v128;
  v125 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController) = v128;
  v72 = __swift_project_boxed_opaque_existential_1(v138, v138[3]);
  v73 = *v72;
  v74 = v72[1];
  MEMORY[0x1EEE9AC00](v72);
  *(&v107 - 16) = v75;
  *(&v107 - 1) = v74;

  v128 = v71;
  os_unfair_lock_lock((v74 + 24));
  v76 = v127;
  sub_1D2E82478((v74 + 16));
  if (v76)
  {
    os_unfair_lock_unlock((v74 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v74 + 24));
    sub_1D2E5D050(v134, &v143, &qword_1EC739308, &qword_1D2EF4560);
    if (*(&v144 + 1))
    {
      sub_1D2E4C014(&v143, &v146);
      sub_1D2E4C014(&v146, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector);
      v77 = v136;
    }

    else
    {
      sub_1D2E5D0B8(&v143, &qword_1EC739308, &qword_1D2EF4560);
      v145 = 0;
      v143 = 0u;
      v144 = 0u;
      v92 = *(v10 + 6);
      v139[4] = *(v10 + 5);
      v139[5] = v92;
      v139[6] = *(v10 + 7);
      v140 = v10[16];
      v93 = *(v10 + 2);
      v139[0] = *(v10 + 1);
      v139[1] = v93;
      v94 = *(v10 + 4);
      v139[2] = *(v10 + 3);
      v139[3] = v94;
      v95 = type metadata accessor for ReturnToCallDetector();
      swift_allocObject();
      v96 = sub_1D2E8EA38(&v143, v139);
      v77 = v136;
      v147 = v95;
      v148 = &off_1F4E940B8;
      *&v146 = v96;
      sub_1D2E4C014(&v146, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector);
    }

    v78 = _TUIsInternalInstall();
    v79 = v130;
    if (v78 && [v130 waitOnHoldLoggingEnabled])
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v80 = sub_1D2EE4618();
      __swift_project_value_buffer(v80, qword_1EDED2DB8);
      v81 = sub_1D2EE45F8();
      v82 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_1D2E46000, v81, v82, "Creating transcription logger", v83, 2u);
        MEMORY[0x1D38AF660](v83, -1, -1);
      }

      v84 = v131;
      v110(v131, v77, v137);
      v85 = v111;
      sub_1D2EB7634(v84, v111);
      sub_1D2EB5E64(v85, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, &qword_1EC739250, &qword_1D2EF4398);
      v86 = v128;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v87 = sub_1D2EE4618();
      __swift_project_value_buffer(v87, qword_1EDED2DB8);
      v88 = v79;
      v89 = sub_1D2EE45F8();
      v90 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 67109376;
        *(v91 + 4) = _TUIsInternalInstall();
        *(v91 + 8) = 1024;
        *(v91 + 10) = [v88 waitOnHoldLoggingEnabled];

        _os_log_impl(&dword_1D2E46000, v89, v90, "Not creating transcript logger - _TUIsInternalInstall: %{BOOL}d, waitOnHoldLoggingEnabled: %{BOOL}d", v91, 0xEu);
        MEMORY[0x1D38AF660](v91, -1, -1);
      }

      else
      {

        v89 = v88;
      }

      v86 = v128;

      v97 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger;
      v98 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
      (*(*(v98 - 8) + 56))(v10 + v97, 1, 1, v98);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A0, &qword_1D2EF4468);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1D2EF3D10;
    v100 = *MEMORY[0x1E69AEA40];
    *(v99 + 32) = *MEMORY[0x1E69AEA40];
    type metadata accessor for Name(0);
    v101 = v100;
    v102 = sub_1D2EE4BD8();

    v103 = *MEMORY[0x1E69AECD8];
    *&v146 = 0;
    LOBYTE(v100) = [v86 setAttribute:v102 forKey:v103 error:&v146];

    if (v100)
    {
      v104 = v146;

      sub_1D2E5D0B8(v134, &qword_1EC739308, &qword_1D2EF4560);
      __swift_destroy_boxed_opaque_existential_1(v135);
      (*(v133 + 8))(v77, v137);
    }

    else
    {
      v105 = v146;
      sub_1D2EE3CE8();

      swift_willThrow();

      sub_1D2E5D0B8(v134, &qword_1EC739308, &qword_1D2EF4560);
      __swift_destroy_boxed_opaque_existential_1(v135);
      (*(v133 + 8))(v77, v137);
    }

    __swift_destroy_boxed_opaque_existential_1(v138);
    v106 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1D2EA5970()
{
  v1 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager;
  sub_1D2E6912C(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager, v13);
  v2 = __swift_project_boxed_opaque_existential_1(v13, v13[3])[1];
  os_unfair_lock_lock((v2 + 24));
  sub_1D2EA38A8((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  __swift_destroy_boxed_opaque_existential_1(v13);
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69D8EB8] object:0];

  v4 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id;
  v5 = sub_1D2EE3EB8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);

  v7 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1));

  v8 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine);

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, &qword_1EC739250, &qword_1D2EF4398);
  v6(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager));

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages + 8, &qword_1EC739258, &qword_1D2EF43A0);
  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer + 8, &qword_1EC739260, &qword_1D2EF43A8);
  v9 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_lock);

  v10 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock);

  v11 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);

  return v0;
}

uint64_t sub_1D2EA5BB8()
{
  sub_1D2EA5970();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WaitOnHoldSession()
{
  result = qword_1EC739228;
  if (!qword_1EC739228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EA5C64()
{
  v0 = sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1D2EA5D94();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2EA5D94()
{
  if (!qword_1EC739238)
  {
    type metadata accessor for WaitOnHoldTranscriptLogger(255);
    v0 = sub_1D2EE4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC739238);
    }
  }
}

uint64_t sub_1D2EA5DEC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D2EA5E48(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D2EA5EA8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for AudioHistEvent();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v7 = sub_1D2EE3EB8();
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v2[31] = *(v8 + 64);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA6028, 0, 0);
}

uint64_t sub_1D2EA6028()
{
  v74 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[17].i64[0];
  v3 = v0[14].i64[1];
  v2 = v0[15].i64[0];
  v4 = v0[11].i64[0];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v72 = *(v2 + 16);
  v72(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17].i64[0];
  v11 = v0[14].i64[1];
  v10 = v0[15].i64[0];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73[0] = v13;
    *v12 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    v17 = v11;
    v18 = *(v10 + 8);
    v18(v9, v17);
    v19 = sub_1D2E685B0(v14, v16, v73);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Starting WaitOnHoldSession for call %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    v20 = v11;
    v18 = *(v10 + 8);
    v18(v9, v20);
  }

  v21 = *(v0[11].i64[1] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v22 = *(v21 + 16);
  }

  *(v21 + 16) = 0;

  if (*(v21 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v23 = *(v21 + 24);
  }

  v24 = v0[11].i64[1];
  *(v21 + 24) = 0;

  os_unfair_lock_unlock((v21 + 32));
  v25 = *(v24 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v0[17].i64[1] = v25;
  v26 = v25 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v25 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA18B0((v26 + 8), v25);
  os_unfair_lock_unlock(v26);
  v27 = *(*(v0[11].i64[1] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v27 + 9);
  sub_1D2EB48B0(&v27[4]);
  v70 = v0[11];
  os_unfair_lock_unlock(v27 + 9);
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v28 = sub_1D2EE4DE8();
  *(swift_task_alloc() + 16) = vextq_s8(v70, v70, 8uLL);
  sub_1D2EE4DF8();
  v29 = v0[16].i64[1];
  v30 = v0[14].i64[1];
  v31 = v0[11].i64[0];

  v71 = v0[6].i8[8];
  v69 = v0[7].i64[0];
  v32 = v30;
  v33 = v0[7].i64[1];
  v72(v29, v31, v32);

  v34 = sub_1D2EE45F8();
  v35 = sub_1D2EE4DD8();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[16].i64[1];
  v39 = v0[14].i64[1];
  v38 = v0[15].i64[0];
  if (v36)
  {
    v40 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v73[0] = v67;
    *v40 = 136315394;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v41 = sub_1D2EE5258();
    v65 = v35;
    v43 = v42;
    v18(v37, v39);
    v44 = sub_1D2E685B0(v41, v43, v73);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v0[9].i8[8] = v71;
    v0[10].i64[0] = v69;
    v0[10].i64[1] = v33;

    v45 = sub_1D2EE4AA8();
    v47 = sub_1D2E685B0(v45, v46, v73);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_1D2E46000, v34, v65, "Loaded details for call %s: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v67, -1, -1);
    MEMORY[0x1D38AF660](v40, -1, -1);
  }

  else
  {

    v18(v37, v39);
  }

  v49 = v0[15].i64[1];
  v48 = v0[16].i64[0];
  v51 = v0[14].i64[1];
  v50 = v0[15].i64[0];
  v52 = v0[11].i64[0];
  v66 = v0[11].i64[1];
  v53 = [objc_opt_self() defaultCenter];
  v68 = *MEMORY[0x1E69D8EF8];
  v54 = [objc_opt_self() mainQueue];
  v55 = swift_allocObject();
  swift_weakInit();
  v72(v48, v52, v51);
  v56 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  (*(v50 + 32))(v57 + v56, v48, v51);
  v0[3].i64[0] = sub_1D2EB48E8;
  v0[3].i64[1] = v57;
  v0[1].i64[0] = MEMORY[0x1E69E9820];
  v0[1].i64[1] = 1107296256;
  v0[2].i64[0] = sub_1D2EA47DC;
  v0[2].i64[1] = &block_descriptor_69;
  v58 = _Block_copy(&v0[1]);
  v59 = v0[3].i64[1];

  v60 = [v53 addObserverForName:v68 object:0 queue:v54 usingBlock:v58];
  _Block_release(v58);

  swift_unknownObjectRelease();
  sub_1D2EA7A50();

  v61 = swift_task_alloc();
  v0[18].i64[0] = v61;
  *v61 = v0;
  v61[1] = sub_1D2EA68E0;
  v62 = v0[11].i64[0];
  v63 = v0[11].i64[1];

  return sub_1D2EA7C90(v62);
}

uint64_t sub_1D2EA68E0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[33];
    v5 = v2[34];
    v7 = v2[32];
    v9 = v2[27];
    v8 = v2[28];
    v10 = v2[24];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EA6A64, 0, 0);
  }
}

uint64_t sub_1D2EA6A64()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = (v0[35] + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  sub_1D2E9DE44(v5, v6, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D2E5D0B8(v0[24], &qword_1EC739268, &unk_1D2EF43B8);
  }

  else
  {
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[25];
    sub_1D2EB5384(v0[24], v8, type metadata accessor for AudioHistEvent);
    sub_1D2EE101C(v8, 2, v9);
    v0[11] = v10;
    v0[12] = &off_1F4E95AF8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 8);
    sub_1D2EB5DFC(v9, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
    sub_1D2EDFAC8();
    sub_1D2EB5664(v9, type metadata accessor for AudioHistEvent);
    sub_1D2EB5664(v8, type metadata accessor for AudioHistEvent);
    sub_1D2E8E940((v0 + 8));
  }

  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[23];
  v18 = v0[24];
  sub_1D2EA814C(1);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2EA6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v5 = sub_1D2EE3C28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v66 - v12;
  v13 = sub_1D2EE3EB8();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v68 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v66 - v16;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v18 = sub_1D2EE4618();
  v70 = __swift_project_value_buffer(v18, qword_1EDED2DB8);
  v19 = sub_1D2EE45F8();
  v20 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v66[1] = v14;
    v22 = a1;
    v23 = a3;
    v24 = v9;
    v25 = v6;
    v26 = v17;
    v27 = v5;
    v28 = v13;
    v29 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1D2E46000, v19, v20, "Received TUCallSubtypeChanged notification", v21, 2u);
    v30 = v29;
    v13 = v28;
    v5 = v27;
    v17 = v26;
    v6 = v25;
    v9 = v24;
    a3 = v23;
    a1 = v22;
    MEMORY[0x1D38AF660](v30, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    sub_1D2EE3C18();
    if (v76[3])
    {
      sub_1D2E9D860(0, &qword_1EC739060, 0x1E69D8A40);
      if (swift_dynamicCast())
      {
        v33 = *&v74[0];
        v34 = [*&v74[0] uniqueProxyIdentifierUUID];
        sub_1D2EE3E98();

        LOBYTE(v34) = sub_1D2EE3E88();
        v35 = v69;
        v36 = *(v69 + 8);
        v36(v17, v13);
        if (v34)
        {
          v37 = sub_1D2EE4CB8();
          v38 = v67;
          (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
          (*(v35 + 16))(v17, a3, v13);
          v39 = (*(v35 + 80) + 40) & ~*(v35 + 80);
          v40 = swift_allocObject();
          *(v40 + 2) = 0;
          *(v40 + 3) = 0;
          *(v40 + 4) = v32;
          (*(v35 + 32))(&v40[v39], v17, v13);
          sub_1D2ED7FB0(0, 0, v38, &unk_1D2EF4538, v40);
        }

        else
        {
          v48 = *(v35 + 16);
          v49 = v68;
          v48(v68, a3, v13);
          v50 = v33;
          v51 = sub_1D2EE45F8();
          v52 = sub_1D2EE4DD8();

          if (!os_log_type_enabled(v51, v52))
          {

            return (v36)(v49, v13);
          }

          v53 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v76[0] = v70;
          *v53 = 136315394;
          sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
          v71 = v32;
          LODWORD(v69) = v52;
          v54 = sub_1D2EE5258();
          v55 = v49;
          v57 = v56;
          v36(v55, v13);
          v58 = sub_1D2E685B0(v54, v57, v76);

          *(v53 + 4) = v58;
          *(v53 + 12) = 2080;
          v59 = [v50 uniqueProxyIdentifierUUID];
          sub_1D2EE3E98();

          v60 = sub_1D2EE5258();
          v62 = v61;
          v36(v17, v13);
          v63 = sub_1D2E685B0(v60, v62, v76);

          *(v53 + 14) = v63;
          _os_log_impl(&dword_1D2E46000, v51, v69, "Dropping media tokens changed for call due to UUID mismatch, expected=%s, actual=%s", v53, 0x16u);
          v64 = v70;
          swift_arrayDestroy();
          MEMORY[0x1D38AF660](v64, -1, -1);
          MEMORY[0x1D38AF660](v53, -1, -1);
        }
      }
    }

    else
    {
      sub_1D2E5D0B8(v76, &qword_1EC7385A0, &qword_1D2EEF120);
    }

    (*(v6 + 16))(v9, a1, v5);
    v41 = sub_1D2EE45F8();
    v42 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v41, v42))
    {

      return (*(v6 + 8))(v9, v5);
    }

    v71 = v32;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v75 = v44;
    *v43 = 136315138;
    sub_1D2EE3C18();
    sub_1D2E5D050(v76, &v72, &qword_1EC7385A0, &qword_1D2EEF120);
    if (v73)
    {
      sub_1D2EB5B88(&v72, v74);
      sub_1D2E68F60(v74, &v72);
      v45 = sub_1D2EE4AA8();
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_1D2E5D0B8(v76, &qword_1EC7385A0, &qword_1D2EEF120);
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      sub_1D2E5D0B8(&v72, &qword_1EC7385A0, &qword_1D2EEF120);
      sub_1D2E5D0B8(v76, &qword_1EC7385A0, &qword_1D2EEF120);
      (*(v6 + 8))(v9, v5);
      v47 = 0xE300000000000000;
      v45 = 7104878;
    }

    v65 = sub_1D2E685B0(v45, v47, &v75);

    *(v43 + 4) = v65;
    _os_log_impl(&dword_1D2E46000, v41, v42, "notification.object is not a TUCall %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D38AF660](v44, -1, -1);
    MEMORY[0x1D38AF660](v43, -1, -1);
  }

  return result;
}

uint64_t sub_1D2EA7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D2EA7548, 0, 0);
}

uint64_t sub_1D2EA7548()
{
  v23 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Reconfiguring session with new media tokens", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v21 = *(v0 + 72);

  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v5 = sub_1D2EE4DE8();
  *(swift_task_alloc() + 16) = v21;
  sub_1D2EE4DF8();
  v6 = *(v0 + 72);

  v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  v9 = *(v6 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine);
  v10 = *(v9 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  v12 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v13));
  sub_1D2EB5C90(v10 + v12, &v22);
  v16 = *(v0 + 72);
  os_unfair_lock_unlock((v10 + v13));

  v17 = v22;

  v18 = *(v16 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v19 = *(v18 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  os_unfair_lock_lock(v19 + 17);
  sub_1D2E8337C(&v19[4], v17, v18);
  os_unfair_lock_unlock(v19 + 17);
  v20 = *(*(v0 + 72) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  sub_1D2EA1A0C(v17, 1);
  v14 = *(v0 + 8);

  return v14();
}

void sub_1D2EA7A50()
{
  v17 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A0, &qword_1D2EF4468);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D2EF3D10;
  v3 = *MEMORY[0x1E69AEA40];
  *(v2 + 32) = *MEMORY[0x1E69AEA40];
  v4 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController);
  type metadata accessor for Name(0);
  v5 = v3;
  v6 = sub_1D2EE4BD8();

  v7 = *MEMORY[0x1E69AECD8];
  *&v16[0] = 0;
  v8 = [v4 setAttribute:v6 forKey:v7 error:v16];

  v9 = *&v16[0];
  if (!v8)
  {
    v14 = *&v16[0];
    sub_1D2EE3CE8();

    swift_willThrow();
    goto LABEL_5;
  }

  memset(v16, 0, sizeof(v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A8, &unk_1D2EF4470);
  v10 = swift_allocObject();
  v10[12]._os_unfair_lock_opaque = 0;
  v11 = v10 + 12;
  sub_1D2E5D050(v16, &v10[4], &qword_1EC7385A0, &qword_1D2EEF120);
  v12 = v9;
  v13 = sub_1D2E5D0B8(v16, &qword_1EC7385A0, &qword_1D2EEF120);
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock(v10 + 12);
  sub_1D2EB495C(&v10[4]);
  if (!v1)
  {
    os_unfair_lock_unlock(v11);

LABEL_5:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_unlock(v11);
  __break(1u);
}

uint64_t sub_1D2EA7C90(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EA7CB0, 0, 0);
}

uint64_t sub_1D2EA7CB0()
{
  v24 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1D2EAF4C4();
  v0[5] = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E69D8CF0]);
  v5 = v3;
  v6 = sub_1D2EE3E78();
  v7 = [v4 initWithCallUUID:v6 session:v5];
  v0[6] = v7;

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v8 = sub_1D2EE4618();
  __swift_project_value_buffer(v8, qword_1EDED2DB8);
  v9 = v7;
  v10 = sub_1D2EE45F8();
  v11 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v0[2] = v9;
    sub_1D2E9D860(0, &qword_1EC739270, 0x1E69D8CF0);
    v14 = v9;
    v15 = sub_1D2EE4AA8();
    v17 = sub_1D2E685B0(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v10, v11, "Posting session to callservicesd %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  v18 = v0[4];
  v19 = swift_task_alloc();
  v0[7] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v9;
  v20 = *(MEMORY[0x1E69E8920] + 4);
  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = sub_1D2EA7F54;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D2EA7F54()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D2EA80D8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D2EA8070;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2EA8070()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2EA80D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3();
}

uint64_t sub_1D2EA814C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v13 = sub_1D2EE4618();
  __swift_project_value_buffer(v13, qword_1EDED2DB8);
  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v2;
    v29 = v17;
    v18 = a1;
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7AE0, &v29);
    _os_log_impl(&dword_1D2E46000, v14, v15, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    a1 = v18;
    v2 = v28;
    MEMORY[0x1D38AF660](v20, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  v21 = *(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v22 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStream;
  v23 = sub_1D2EE4CB8();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v5 + 16))(v8, v21 + v22, v4);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = v24 + v6;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v5 + 32))(v26 + v24, v8, v4);
  *(v26 + v25) = a1 & 1;
  *(v26 + (v25 & 0xFFFFFFFFFFFFFFF8) + 8) = v2;

  sub_1D2EA4398(0, 0, v12, &unk_1D2EF4430, v26);
}

uint64_t sub_1D2EA8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for CaptionEvent(0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392B0, &qword_1D2EF44A0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392B8, &qword_1D2EF44A8);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA85E8, 0, 0);
}

uint64_t sub_1D2EA85E8()
{
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618);
  sub_1D2EE4D08();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1D2EA86B0;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v7);
}

uint64_t sub_1D2EA86B0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2EA87AC, 0, 0);
}

uint64_t sub_1D2EA87AC()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v2 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1D2EB5384(v1, v0[6], type metadata accessor for CaptionEvent);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1D2EA8900;
    v6 = v0[6];
    v7 = v0[3];

    return sub_1D2EA8C5C(v6);
  }
}

uint64_t sub_1D2EA8900()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D2EA8AD4;
  }

  else
  {
    v3 = sub_1D2EA8A14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EA8A14()
{
  sub_1D2EB5664(v0[6], type metadata accessor for CaptionEvent);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1D2EA86B0;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v4, 0, 0, v5);
}

uint64_t sub_1D2EA8AD4()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Error handling caption event", v6, 2u);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  sub_1D2EB5664(v0[6], type metadata accessor for CaptionEvent);
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1D2EA86B0;
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v11);
}

uint64_t sub_1D2EA8C5C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_1D2EE3EF8();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for CaptionEvent(0);
  v2[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA8D84, 0, 0);
}

uint64_t sub_1D2EA8D84()
{
  v48 = v0;
  v1 = *(v0 + 104);
  sub_1D2EB5DFC(*(v0 + 56), *(v0 + 112), type metadata accessor for CaptionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 112);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 88);
      v4 = *(v0 + 96);
      v6 = *(v0 + 80);
      v7 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) + 48));
      (*(v5 + 32))(v4, v3, v6);
      v8 = swift_task_alloc();
      *(v0 + 136) = v8;
      *v8 = v0;
      v8[1] = sub_1D2EA94E4;
      v9 = *(v0 + 96);
      v10 = *(v0 + 64);

      return sub_1D2EAB714(v9, v7);
    }

    v17 = *v3;
    *(v0 + 152) = *v3;
    *(v0 + 40) = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 192);
      if (v19 == 5)
      {
        v20 = *(v0 + 64);
        v21 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
        v22 = swift_task_alloc();
        *(v0 + 176) = v22;
        *v22 = v0;
        v23 = sub_1D2EA98D0;
        goto LABEL_22;
      }

      if (v19 == 7)
      {
        v20 = *(v0 + 64);
        v21 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
        v22 = swift_task_alloc();
        *(v0 + 160) = v22;
        *v22 = v0;
        v23 = sub_1D2EA968C;
LABEL_22:
        v22[1] = v23;
        v44 = *(v0 + 64);

        return sub_1D2EABE9C(v20 + v21);
      }
    }

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v24 = sub_1D2EE4618();
    __swift_project_value_buffer(v24, qword_1EDED2DB8);
    v25 = v17;
    v26 = sub_1D2EE45F8();
    v27 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v28 = 136315138;
      swift_getErrorValue();
      v29 = *(v0 + 16);
      v30 = *(v0 + 24);
      v31 = sub_1D2EE4E58();
      v32 = *(v31 - 8);
      v33 = *(v32 + 64) + 15;
      v34 = swift_task_alloc();
      v45 = v27;
      v35 = *(v30 - 8);
      (*(v35 + 16))(v34, v29, v30);
      (*(v35 + 56))(v34, 0, 1, v30);
      v36 = sub_1D2EE2754(v34, v30);
      v38 = v37;
      (*(v32 + 8))(v34, v31);

      v39 = sub_1D2E685B0(v36, v38, &v47);

      *(v28 + 4) = v39;
      _os_log_impl(&dword_1D2E46000, v26, v45, "Ignoring unknown error: %s in caption event stream", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D38AF660](v46, -1, -1);
      MEMORY[0x1D38AF660](v28, -1, -1);
    }

    else
    {
    }

    v40 = *(v0 + 112);
    v41 = *(v0 + 96);
    v42 = *(v0 + 72);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v12 = *v3;
    v13 = *(v3 + 8);
    *(v0 + 120) = v13;
    v14 = *(v3 + 16);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_1D2EA9350;
    v16 = *(v0 + 64);

    return sub_1D2EAA4C0(v12, v13, v14);
  }
}

uint64_t sub_1D2EA9350()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2EA9468, 0, 0);
}

uint64_t sub_1D2EA9468()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EA94E4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D2EA9B14;
  }

  else
  {
    v3 = sub_1D2EA95F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EA95F8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EA968C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1D2EA9BB0;
  }

  else
  {
    v3 = sub_1D2EA97A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EA97A0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D2E8CB18(0, 0, v2, &unk_1D2EF44D8, v4);

  sub_1D2E5D0B8(v2, &qword_1EC739040, &qword_1D2EF2460);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D2EA98D0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1D2EA9C44;
  }

  else
  {
    v3 = sub_1D2EA99E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EA99E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D2E8CB18(0, 0, v2, &unk_1D2EF44C8, v4);

  sub_1D2E5D0B8(v2, &qword_1EC739040, &qword_1D2EF2460);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D2EA9B14()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2EA9BB0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2EA9C44()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2EA9CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v26 = a3;
  v32 = a1;
  v10 = sub_1D2EE3EB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E5D0B8(a1, &qword_1EC7385A0, &qword_1D2EEF120);
  v14 = [objc_opt_self() defaultCenter];
  v15 = *MEMORY[0x1E69AEA40];
  v27 = *(a2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController);
  v28 = v15;
  (*(v11 + 16))(v13, a4, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 24) = a2;
  (*(v11 + 32))(v18 + v16, v13, v10);
  v19 = v18 + v17;
  *v19 = v29;
  v20 = v31;
  *(v19 + 8) = v30;
  *(v19 + 16) = v20;
  aBlock[4] = sub_1D2EB4984;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EA47DC;
  aBlock[3] = &block_descriptor_77;
  v21 = _Block_copy(aBlock);

  v22 = [v14 addObserverForName:v28 object:v27 queue:0 usingBlock:v21];
  _Block_release(v21);

  result = swift_getObjectType();
  v24 = v32;
  v32[3] = result;
  *v24 = v22;
  return result;
}

void sub_1D2EA9F68(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, int a5)
{
  v43 = a5;
  v41 = a4;
  v42 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC739050, &unk_1D2EF4480);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = sub_1D2EE3C28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v23 = sub_1D2EE4618();
  __swift_project_value_buffer(v23, qword_1EDED2DB8);
  v24 = *(v14 + 16);
  v24(v22, a1, v13);
  v25 = sub_1D2EE45F8();
  v26 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v25, v26))
  {
    v38 = v26;
    v27 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v27 = 136315138;
    v24(v12, v22, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_1D2E5D050(v12, v10, &unk_1EC739050, &unk_1D2EF4480);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_1D2E5D0B8(v10, &unk_1EC739050, &unk_1D2EF4480);
      sub_1D2E5D0B8(v12, &unk_1EC739050, &unk_1D2EF4480);
      (*(v14 + 8))(v22, v13);
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      (*(v14 + 32))(v20, v10, v13);
      v24(v39, v20, v13);
      v30 = sub_1D2EE4AA8();
      v28 = v31;
      v32 = *(v14 + 8);
      v32(v20, v13);
      sub_1D2E5D0B8(v12, &unk_1EC739050, &unk_1D2EF4480);
      v32(v22, v13);
      v29 = v30;
    }

    v33 = sub_1D2E685B0(v29, v28, &v44);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1D2E46000, v25, v38, "WE GOT A NOTIFICATION %s", v27, 0xCu);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D38AF660](v34, -1, -1);
    MEMORY[0x1D38AF660](v27, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v22, v13);
  }

  v35 = v40;
  os_unfair_lock_lock(v40 + 12);
  sub_1D2EAA3E0(&v35[4]);
  os_unfair_lock_unlock(v35 + 12);
  sub_1D2EB4A80(v41, v43);
}

double sub_1D2EAA3E0(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  if (*(&v2 + 1))
  {
    sub_1D2EB5B88(&v5, v7);
    v3 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D2E5D0B8(&v5, &qword_1EC7385A0, &qword_1D2EEF120);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D2EAA4C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 176) = a3;
  *(v4 + 48) = a1;
  v5 = sub_1D2EE3E48();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  *(v4 + 96) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739250, &qword_1D2EF4398) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAA640, 0, 0);
}

uint64_t sub_1D2EAA640()
{
  v84 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 == 3 || v2 == 0)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v83[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7B70, v83);
      _os_log_impl(&dword_1D2E46000, v5, v6, "%s with music", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    *(v0 + 136) = __swift_project_value_buffer(v16, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v83[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7B70, v83);
      _os_log_impl(&dword_1D2E46000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    v21 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine);
    v22 = *(v21 + 16);
    os_unfair_lock_lock((v22 + 36));
    v23 = *(v22 + 32);
    os_unfair_lock_unlock((v22 + 36));
    if (v23)
    {
      LOBYTE(v24) = 0;
      v25 = 0;
      v82 = 0;
    }

    else
    {
      v42 = *(v0 + 56);
      v43 = *(v0 + 176);
      v44 = *(v0 + 48);
      v45 = *__swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
      sub_1D2E8F764(v44, v42, v43);
      v25 = v46;
      v24 = v47;
      v48 = *(v0 + 128);
      sub_1D2E5D050(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, v48, &qword_1EC739250, &qword_1D2EF4398);
      v49 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
      v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
      v51 = *(v0 + 128);
      if (v50 == 1)
      {
        sub_1D2E5D0B8(*(v0 + 128), &qword_1EC739250, &qword_1D2EF4398);
      }

      else
      {
        sub_1D2EB82A8(*(v0 + 48), *(v0 + 56), v25, v24 & 1);
        sub_1D2EB5664(v51, type metadata accessor for WaitOnHoldTranscriptLogger);
      }

      v82 = v24 ^ 1;
    }

    v26 = *(v0 + 176);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v21 + 16);
    v30 = swift_task_alloc();
    *(v30 + 16) = v21;
    *(v30 + 24) = v28;
    *(v30 + 32) = v27;
    *(v30 + 40) = v26;
    *(v30 + 48) = v25;
    os_unfair_lock_lock(v29 + 9);
    sub_1D2EB5544(&v29[4]);
    os_unfair_lock_unlock(v29 + 9);

    if ((v24 & 1) == 0)
    {
      v52 = *(v21 + 16);
      v53 = v52 + 9;
      os_unfair_lock_lock(v52 + 9);
      sub_1D2EB556C(&v52[4]);
      v54 = *(v0 + 64);
      os_unfair_lock_unlock(v53);
      v55 = *(*(v54 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
      v56 = *(*v55 + *MEMORY[0x1E69E6B68] + 16);
      v57 = (v55 + ((*(*v55 + 48) + 3) & 0x1FFFFFFFCLL));
      os_unfair_lock_lock(v57);
      sub_1D2EB5588(v55 + v56);
      v74 = *(v0 + 64);
      os_unfair_lock_unlock(v57);
      v75 = *(v74 + 24);
      v76 = v74 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
      os_unfair_lock_lock(v76);
      if (!*(v76 + 8))
      {
        v77 = *(v0 + 120);
        v78 = *(v0 + 64);
        v79 = sub_1D2EE4CB8();
        (*(*(v79 - 8) + 56))(v77, 1, 1, v79);
        v80 = swift_allocObject();
        swift_weakInit();
        v81 = swift_allocObject();
        v81[2] = 0;
        v81[3] = 0;
        v81[4] = v75;
        v81[5] = v80;
        *(v76 + 8) = sub_1D2EA4398(0, 0, v77, &unk_1D2EF4510, v81);
      }

      os_unfair_lock_unlock(v76);
    }

    v31 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_lock);
    v32 = (v31 + *(*v31 + *MEMORY[0x1E69E6B68] + 16));
    v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v31 + v33));
    if (*v32 == 1)
    {
      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 96);
      v37 = *(v0 + 72);
      v38 = *(v0 + 80);
      v39 = *(v36 + 48);
      *v34 = 0;
      sub_1D2EE3E38();
      sub_1D2EB5E64(v34, v35, &qword_1EC738E30, &unk_1D2EF3080);
      v40 = *(v36 + 48);
      *v32 = *v35;
      (*(v38 + 40))(&v32[*(v36 + 48)], &v35[v40], v37);
      v41 = 1;
    }

    else
    {
      v58 = *(v0 + 88);
      v59 = *(v0 + 96);
      v60 = *(v0 + 72);
      v61 = *(v0 + 80);
      sub_1D2EE3E38();
      v62 = *(v59 + 48);
      sub_1D2EE3E08();
      v64 = v63;
      *v32 = 0;
      (*(v61 + 40))(&v32[v62], v58, v60);
      v41 = v64 * 1000.0 >= 500.0;
    }

    os_unfair_lock_unlock((v31 + v33));
    v65 = sub_1D2EE45F8();
    v66 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 176);
      v68 = swift_slowAlloc();
      *v68 = 67109632;
      *(v68 + 4) = v41;
      *(v68 + 8) = 1024;
      *(v68 + 10) = v67;
      *(v68 + 14) = 1024;
      *(v68 + 16) = v82 & 1;
      _os_log_impl(&dword_1D2E46000, v65, v66, "shouldUpdateCallCenter: %{BOOL}d, isUtteranceComplete: %{BOOL}d, isFirstTimePredictionStateTransition: %{BOOL}d", v68, 0x14u);
      MEMORY[0x1D38AF660](v68, -1, -1);
    }

    v69 = *(v0 + 176);

    if ((v82 | v69 | v41))
    {
      v70 = *(v0 + 64);
      v71 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
      v72 = swift_task_alloc();
      *(v0 + 144) = v72;
      *v72 = v0;
      v72[1] = sub_1D2EAB160;
      v73 = *(v0 + 64);

      return sub_1D2EA7C90(v70 + v71);
    }
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D2EAB160()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAB464, 0, 0);
  }

  else
  {
    v5 = v3[15];
    v4 = v3[16];
    v7 = v3[13];
    v6 = v3[14];
    v8 = v3[11];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1D2EAB2D0()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2EAB3CC, 0, 0);
}

uint64_t sub_1D2EAB3CC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D2EAB464()
{
  v25 = v0;
  v1 = v0[19];
  v0[20] = v1;
  v2 = v0[17];
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_1D2EE4E58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_1D2EE2754(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_1D2E685B0(v14, v16, &v24);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error generating prediction: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  v18 = v0[8];
  v19 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_1D2EAB2D0;
  v21 = v0[8];

  return sub_1D2EACF34(v18 + v19);
}

uint64_t sub_1D2EAB714(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  *(v3 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAB7F4, 0, 0);
}

uint64_t sub_1D2EAB7F4()
{
  v35 = v0;
  v1 = *(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 == 3 || v2 == 0)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE7BB0, &v34);
      _os_log_impl(&dword_1D2E46000, v5, v6, "%s with music", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[4];
    v16 = v0[3];
    v17 = v0[2];
    v18 = v15 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages;
    os_unfair_lock_lock((v15 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages));
    v19 = *(v14 + 48);
    v20 = sub_1D2EE3EF8();
    (*(*(v20 - 8) + 16))(v13, v17, v20);
    *(v13 + v19) = v16;
    sub_1D2EA4214(v13);
    sub_1D2E5D0B8(v13, &qword_1EC738CA8, &qword_1D2EF2610);
    v21 = sub_1D2EB56E0(*(v18 + 8));
    v22 = *(v15 + 16);
    os_unfair_lock_unlock(v18);
    if (v21 >= v22)
    {
      v23 = *(*(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
      os_unfair_lock_lock(v23 + 9);
      sub_1D2EB5AB0(&v23[4]);
      os_unfair_lock_unlock(v23 + 9);
      v24 = *(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
      v25 = *(v24 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
      *(swift_task_alloc() + 16) = v24;
      os_unfair_lock_lock(v25 + 17);
      sub_1D2EB5FD0(&v25[4]);
      os_unfair_lock_unlock(v25 + 17);
      v26 = v0[4];

      v27 = *(*(v26 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
      v28 = *(*v27 + *MEMORY[0x1E69E6B68] + 16);
      v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v27 + v29));
      sub_1D2E932DC(v27 + v28);
      os_unfair_lock_unlock((v27 + v29));
      v30 = v0[4];
      v31 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
      v32 = swift_task_alloc();
      v0[8] = v32;
      *v32 = v0;
      v32[1] = sub_1D2EABC2C;
      v33 = v0[4];

      return sub_1D2EA7C90(v30 + v31);
    }
  }

  v9 = v0[7];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2EABC2C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 40);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EABD84, 0, 0);
  }
}

uint64_t sub_1D2EABD84()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1D2E8CB18(0, 0, v1, &unk_1D2EF4520, v4);

  sub_1D2E5D0B8(v1, &qword_1EC739040, &qword_1D2EF2460);
  v5 = v0[7];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2EABE9C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EABEBC, 0, 0);
}

uint64_t sub_1D2EABEBC()
{
  v1 = *(*(v0[7] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v1 + 9);
  sub_1D2EB5FA0(&v1[4]);
  v2 = v0[7];
  os_unfair_lock_unlock(v1 + 9);
  v3 = *(*(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D2EB5FB8(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D2EAC2F0;
  v7 = v0[6];
  v8 = v0[7];

  return sub_1D2EA7C90(v7);
}

uint64_t sub_1D2EAC2F0()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D2EAC3E4()
{
  v1 = type metadata accessor for ReturnToCallPredictorEvent();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC474, 0, 0);
}

uint64_t sub_1D2EAC474()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_1D2EE0C2C(7, v1, 0.0);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EAC548()
{
  v1 = type metadata accessor for ReturnToCallPredictorEvent();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC5D8, 0, 0);
}

uint64_t sub_1D2EAC5D8()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_1D2EE0C2C(5, v1, 0.0);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EAC6AC(double a1)
{
  *(v1 + 56) = a1;
  v2 = type metadata accessor for ReturnToCallPredictorEvent();
  *(v1 + 64) = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC740, 0, 0);
}

uint64_t sub_1D2EAC740()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1D2EE0C2C(3, v1, *(v0 + 56));
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940(v0 + 16);
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D2EAC814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D2EE5088();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC8D4, 0, 0);
}

uint64_t sub_1D2EAC8D4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  sub_1D2EE52E8();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1D2EAC9C8;
  v7 = v0[9];

  return sub_1D2EB3930(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1D2EAC9C8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v6 = sub_1D2EACCB8;
  }

  else
  {
    v6 = sub_1D2EACB30;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2EACB30()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
    v8 = v0[9];

    v7 = v0[1];
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = v0[11];
  v5 = *(*(Strong + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);

  os_unfair_lock_lock(v5 + 9);
  sub_1D2EB5F88(&v5[4]);
  os_unfair_lock_unlock(v5 + 9);
  if (v4)
  {

    v6 = v0[9];

    v7 = v0[1];
LABEL_5:

    return v7();
  }

  v10 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1D2EACD1C;

  return sub_1D2EA7C90(v3 + v10);
}

uint64_t sub_1D2EACCB8()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2EACD1C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D2EACEC8;
  }

  else
  {
    v3 = sub_1D2EACE30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EACE30()
{
  v1 = v0[12] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);

  *(v1 + 8) = 0;
  os_unfair_lock_unlock(v1);

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EACEC8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EACF34(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EACF54, 0, 0);
}

uint64_t sub_1D2EACF54()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v2 = *(v1 + 16);
  }

  *(v1 + 16) = 0;

  if (*(v1 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v3 = *(v1 + 24);
  }

  v4 = v0[11];
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
  v5 = *(v4 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v6 = *(v5 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock(v6 + 17);
  sub_1D2EB5FD0(&v6[4]);
  os_unfair_lock_unlock(v6 + 17);
  v7 = v0[11];

  v8 = *(*(v7 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1D2E932DC(v8 + v9);
  os_unfair_lock_unlock((v8 + v10));
  v11 = *(*(v0[11] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v11 + 9);
  sub_1D2EB56C4(&v11[4]);
  os_unfair_lock_unlock(v11 + 9);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1D2EAD428;
  v13 = v0[10];
  v14 = v0[11];

  return sub_1D2EA7C90(v13);
}

uint64_t sub_1D2EAD428()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAD55C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D2EAD55C()
{
  v25 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_1D2EE4E58();
    v22 = v7;
    v12 = *(v11 - 8);
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    v15 = *(v10 - 8);
    (*(v15 + 16))(v14, v9, v10);
    (*(v15 + 56))(v14, 0, 1, v10);
    v16 = sub_1D2EE2754(v14, v10);
    v18 = v17;
    (*(v12 + 8))(v14, v11);

    v19 = sub_1D2E685B0(v16, v18, &v24);

    *(v8 + 4) = v19;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error updating callservicesd about session failure %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2EAD820(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAD924, 0, 0);
}

uint64_t sub_1D2EAD924()
{
  v34 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1D2EE4618();
  v0[12] = __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v6 = *(v3 + 16);
  v0[13] = v6;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1D2E685B0(v14, v16, &v33);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v7, v8, "Ending WaitOnHoldSession for call %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D38AF660](v32, -1, -1);
    MEMORY[0x1D38AF660](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[15] = v17;
  v19 = *(*(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v19 + 9);
  sub_1D2EB47E0(&v19[4]);
  os_unfair_lock_unlock(v19 + 9);
  v20 = *(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v21 = *(v20 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v20;
  os_unfair_lock_lock(v21 + 17);
  sub_1D2EB5FD0(&v21[4]);
  os_unfair_lock_unlock(v21 + 17);
  v22 = v0[6];

  v23 = *(*(v22 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v24 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_1D2E932DC(v23 + v24);
  os_unfair_lock_unlock((v23 + v25));
  v26 = *(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v27 = v26 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v26 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA16D0((v27 + 8), v26);
  os_unfair_lock_unlock(v27);
  v28 = swift_task_alloc();
  v0[16] = v28;
  *v28 = v0;
  v28[1] = sub_1D2EADD64;
  v29 = v0[5];
  v30 = v0[6];

  return sub_1D2EA7C90(v29);
}

uint64_t sub_1D2EADD64()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[7];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EADEBC, 0, 0);
  }
}

uint64_t sub_1D2EADEBC()
{
  v28 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  if (v5)
  {
    v26 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v12 = sub_1D2EE5258();
    v14 = v13;
    v26(v7, v9);
    v15 = sub_1D2E685B0(v12, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Successfully ended WaitOnHoldSession for call %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D38AF660](v11, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  else
  {

    v6(v7, v9);
  }

  v16 = *__swift_project_boxed_opaque_existential_1((*(v0 + 48) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(*(v0 + 48) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
  swift_beginAccess();
  if (!*(*(v16 + 56) + 16))
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v19 = sub_1D2EE4CB8();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;

    sub_1D2E8CB18(0, 0, v18, &unk_1D2EF4458, v20);

    sub_1D2E5D0B8(v18, &qword_1EC739040, &qword_1D2EF2460);
  }

  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 56);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D2EAE1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ReturnToCallPredictorEvent();
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAE240, 0, 0);
}

uint64_t sub_1D2EAE240()
{
  v13 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(*(v0[7] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  sub_1D2E637F8(v4, v5, v6);
  os_unfair_lock_unlock((v3 + 36));
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_1D2EE0E20(&v10, v1);
  sub_1D2E63814(v10, v11, v12);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D2EAE378(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for AudioHistEvent();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_1D2EE3EB8();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAE4D8, 0, 0);
}

uint64_t sub_1D2EAE4D8()
{
  v47 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D2E685B0(v14, v16, &v46);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Ending WaitOnHoldSession for call %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v18 + 32));
  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v19 = *(v18 + 16);
  }

  *(v18 + 16) = 0;

  if (*(v18 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v20 = *(v18 + 24);
  }

  v21 = v0[14];
  *(v18 + 24) = 0;

  os_unfair_lock_unlock((v18 + 32));
  v22 = *(v21 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v23 = *(v22 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v22;
  os_unfair_lock_lock(v23 + 17);
  sub_1D2EB3914(&v23[4]);
  os_unfair_lock_unlock(v23 + 17);
  v24 = v0[14];

  v25 = *(v24 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v26 = v25 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v25 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA16D0((v26 + 8), v25);
  os_unfair_lock_unlock(v26);
  v27 = *(*(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v27 + 9);
  sub_1D2EB6E1C(&v27[4]);
  os_unfair_lock_unlock(v27 + 9);
  v28 = *__swift_project_boxed_opaque_existential_1((v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
  swift_beginAccess();
  if (!*(*(v28 + 56) + 16))
  {
    v29 = v0[16];
    v30 = v0[17];
    v31 = v0[15];
    v32 = (v25 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator);
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];

    sub_1D2E9DE44(v33, v34, v31);

    if ((*(v30 + 48))(v31, 1, v29) == 1)
    {
      sub_1D2E5D0B8(v0[15], &qword_1EC739268, &unk_1D2EF43B8);
    }

    else
    {
      v37 = v0[18];
      v36 = v0[19];
      v38 = v0[16];
      sub_1D2EB5384(v0[15], v36, type metadata accessor for AudioHistEvent);
      sub_1D2EE101C(v36, 1, v37);
      v0[5] = v38;
      v0[6] = &off_1F4E95AF8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_1D2EB5DFC(v37, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
      sub_1D2EDFAC8();
      sub_1D2EB5664(v37, type metadata accessor for AudioHistEvent);
      sub_1D2EB5664(v36, type metadata accessor for AudioHistEvent);
      sub_1D2E8E940((v0 + 2));
    }
  }

  v40 = v0[22];
  v41 = v0[18];
  v42 = v0[19];
  v43 = v0[15];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1D2EAEA58()
{
  v2 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1D2EAEAF4;

  return sub_1D2EAEEE8(v0 + v2);
}

uint64_t sub_1D2EAEAF4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAEC28, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D2EAEC28()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D2E46000, v17, v18, "Session not in hold detection state. Returning.", v19, 2u);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    v20 = *v2;
  }

  else
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = v5;
    v8 = sub_1D2EE45F8();
    v9 = sub_1D2EE4DB8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 32);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1D2E46000, v8, v9, "Unexpected error while stopping hold detection: %@", v12, 0xCu);
      sub_1D2E5D0B8(v13, &qword_1EC7392E8, &unk_1D2EF63D0);
      MEMORY[0x1D38AF660](v13, -1, -1);
      MEMORY[0x1D38AF660](v12, -1, -1);

      goto LABEL_16;
    }

    v20 = v11;
  }

LABEL_16:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2EAEEE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D2EE3EB8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAEFA8, 0, 0);
}

uint64_t sub_1D2EAEFA8()
{
  v30 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D2E685B0(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Stopping hold detection for call %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v18 + 32));
  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v19 = *(v18 + 16);
  }

  *(v18 + 16) = 0;

  if (*(v18 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
    v20 = *(v18 + 24);
  }

  v21 = v0[3];
  *(v18 + 24) = 0;

  os_unfair_lock_unlock((v18 + 32));
  v22 = *(*(v21 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v22 + 9);
  sub_1D2EB3DE8(&v22[4]);
  os_unfair_lock_unlock(v22 + 9);
  v23 = *(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v24 = v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA18B0((v24 + 8), v23);
  os_unfair_lock_unlock(v24);
  v25 = swift_task_alloc();
  v0[7] = v25;
  *v25 = v0;
  v25[1] = sub_1D2EAF3AC;
  v26 = v0[2];
  v27 = v0[3];

  return sub_1D2EA7C90(v26);
}

uint64_t sub_1D2EAF3AC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

id sub_1D2EAF4C4()
{
  v1 = sub_1D2EE3F78();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v74 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2EE4A28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for HoldAssistEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v68 - v12);
  v14 = sub_1D2EE3EB8();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = *(*(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock((v21 + 36));
  v22 = *(v21 + 16);
  v23 = *(v21 + 32);
  *&v69 = *(v21 + 24);
  *(&v69 + 1) = v22;
  sub_1D2E637F8(v22, v69, v23);
  os_unfair_lock_unlock((v21 + 36));
  if (v23)
  {
    if (v23 != 1)
    {
      v53 = 0;
      if (*(&v69 + 1) > 1uLL)
      {
        if (*(&v69 + 1) ^ 2 | v69)
        {
          return v53;
        }

        v59 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
        v55 = sub_1D2EE3E78();
        sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
        v56 = sub_1D2EE4BD8();
        v57 = [v59 initWithUUID:v55 state:2 events:v56 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];
      }

      else
      {
        if (v69 == 0)
        {
          return v53;
        }

        v54 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
        v55 = sub_1D2EE3E78();
        sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
        v56 = sub_1D2EE4BD8();
        v57 = [v54 initWithUUID:v55 state:1 events:v56 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];
      }

      v53 = v57;

      return v53;
    }

    (*(v70 + 16))(v18, v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v71);
    v24 = v69;
    v25 = *(v69 + 16);
    if (v25)
    {
      v68 = v18;
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D2EE5048();
      v26 = v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v27 = *(v7 + 72);
      v72 = "/WaitOnHoldSession.swift";
      v73 = v27;
      v28 = v6;
      do
      {
        sub_1D2EB5DFC(v26, v11, type metadata accessor for HoldAssistEvent);
        if ((v11[2] & 0x8000000000000000) != 0)
        {
          v34 = v11[3];
          v36 = *v11;
          v35 = *(v11 + 1);
          v37 = *(v6 + 20);
          v38 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v31 = sub_1D2EE4A38();
          v32 = sub_1D2EE3E18();
          [v38 initWithType:1 text:v31 date:v32 confidenceScore:v34];
        }

        else
        {
          sub_1D2EE4A18();
          sub_1D2EE3F38();
          sub_1D2EE4A88();
          v29 = *(v6 + 20);
          v30 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v31 = sub_1D2EE4A38();

          v32 = sub_1D2EE3E18();
          [v30 initWithType:2 text:v31 date:v32 confidenceScore:0.0];
        }

        sub_1D2EB5664(v11, type metadata accessor for HoldAssistEvent);
        sub_1D2EE5028();
        v33 = *(v75 + 16);
        sub_1D2EE5058();
        sub_1D2EE5068();
        sub_1D2EE5038();
        v26 += v73;
        --v25;
        v6 = v28;
      }

      while (v25);
      v58 = BYTE8(v69);
      sub_1D2E63814(*(&v69 + 1), v69, 1u);
      v18 = v68;
    }

    else
    {
      v58 = BYTE8(v69);
      sub_1D2E63814(*(&v69 + 1), v69, 1u);
    }

    v60 = v58;
    v61 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
    v62 = sub_1D2EE3E78();
    sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
    v63 = sub_1D2EE4BD8();

    v53 = [v61 initWithUUID:v62 state:3 events:v63 requiresUserAttentionReason:v60 + 1 hostedOnCurrentDevice:1];

    (*(v70 + 8))(v18, v71);
  }

  else
  {
    (*(v70 + 16))(v20, v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v71);
    v39 = *(&v69 + 1);
    v40 = *(*(&v69 + 1) + 16);
    if (v40)
    {
      v68 = v20;
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D2EE5048();
      v41 = v39 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v42 = *(v7 + 72);
      v72 = "/WaitOnHoldSession.swift";
      v73 = v42;
      do
      {
        sub_1D2EB5DFC(v41, v13, type metadata accessor for HoldAssistEvent);
        if ((v13[2] & 0x8000000000000000) != 0)
        {
          v48 = v13[3];
          v50 = *v13;
          v49 = *(v13 + 1);
          v51 = *(v6 + 20);
          v52 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v45 = sub_1D2EE4A38();
          v46 = sub_1D2EE3E18();
          [v52 initWithType:1 text:v45 date:v46 confidenceScore:v48];
        }

        else
        {
          sub_1D2EE4A18();
          sub_1D2EE3F38();
          sub_1D2EE4A88();
          v43 = *(v6 + 20);
          v44 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v45 = sub_1D2EE4A38();

          v46 = sub_1D2EE3E18();
          [v44 initWithType:2 text:v45 date:v46 confidenceScore:0.0];
        }

        sub_1D2EB5664(v13, type metadata accessor for HoldAssistEvent);
        sub_1D2EE5028();
        v47 = *(v75 + 16);
        sub_1D2EE5058();
        sub_1D2EE5068();
        sub_1D2EE5038();
        v41 += v73;
        --v40;
      }

      while (v40);
      sub_1D2E63814(*(&v69 + 1), v69, 0);
      v20 = v68;
    }

    else
    {
      sub_1D2E63814(*(&v69 + 1), v69, 0);
    }

    v64 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
    v65 = sub_1D2EE3E78();
    sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
    v66 = sub_1D2EE4BD8();

    v53 = [v64 initWithUUID:v65 state:0 events:v66 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];

    (*(v70 + 8))(v20, v71);
  }

  return v53;
}