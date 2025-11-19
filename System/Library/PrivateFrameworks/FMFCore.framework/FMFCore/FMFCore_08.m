unint64_t sub_24A421A78()
{
  result = qword_27EF3FED0;
  if (!qword_27EF3FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FED0);
  }

  return result;
}

unint64_t sub_24A421AD0()
{
  result = qword_27EF3FED8;
  if (!qword_27EF3FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FED8);
  }

  return result;
}

unint64_t sub_24A421B28()
{
  result = qword_27EF3FEE0;
  if (!qword_27EF3FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FEE0);
  }

  return result;
}

uint64_t sub_24A421B7C()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A421BC8()
{
  result = qword_27EF3F3C0;
  if (!qword_27EF3F3C0)
  {
    sub_24A4AAAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3C0);
  }

  return result;
}

uint64_t FMFRemoveLocationAlertAction.__allocating_init(locationAlert:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMFRemoveLocationAlertAction.init(locationAlert:)(a1);
  return v5;
}

uint64_t FMFRemoveLocationAlertAction.init(locationAlert:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v75 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  v19 = type metadata accessor for FMFLocationAlert();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v26);
  v88 = &v75 - v27;
  v89 = a1;
  sub_24A3DE9CC(a1, v25);
  v28 = type metadata accessor for FMFSchedule();
  v29 = *(v28 - 8);
  v81 = *(v29 + 56);
  v81(v18, 1, 1, v28);
  v30 = sub_24A4AAAD0();
  v83 = *(v30 - 8);
  v84 = v30;
  v31 = *(v83 + 56);
  v91 = v9;
  v76 = v31;
  v77 = v83 + 56;
  (v31)(v9, 1, 1);
  v32 = *(v25 + 1);
  *v22 = *v25;
  *(v22 + 1) = v32;
  v22[42] = 0;
  v22[43] = v25[43];
  v87 = v18;
  sub_24A37B740(v18, v13, &qword_27EF3F470, &qword_24A4B6960);
  v33 = *(v29 + 48);
  if (v33(v13, 1, v28) == 1)
  {
    v34 = v82;
    sub_24A37B740(&v25[v19[12]], v82, &qword_27EF3F470, &qword_24A4B6960);
    v35 = v33(v13, 1, v28);

    v36 = v34;
    if (v35 != 1)
    {
      sub_24A37EF2C(v13, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v36 = v82;
    sub_24A3B5814(v13, v82, type metadata accessor for FMFSchedule);
    v81(v36, 0, 1, v28);
  }

  sub_24A37BE24(v36, &v22[v19[12]], &qword_27EF3F470, &qword_24A4B6960);
  v22[40] = v25[40];
  v22[41] = v25[41];
  v37 = v19[13];
  v39 = *&v25[v37];
  v38 = *&v25[v37 + 8];
  v40 = &v22[v37];
  *v40 = v39;
  *(v40 + 1) = v38;
  v80 = v38;
  v41 = v19[14];
  v43 = *&v25[v41];
  v42 = *&v25[v41 + 8];
  v44 = &v22[v41];
  *v44 = v43;
  *(v44 + 1) = v42;
  v79 = v42;
  v22[v19[15]] = v25[v19[15]];
  v45 = v19[16];
  v78 = *&v25[v45];
  *&v22[v45] = v78;
  v46 = v19[17];
  v81 = *&v25[v46];
  *&v22[v46] = v81;
  v47 = v19[18];
  v82 = *&v25[v47];
  *&v22[v47] = v82;
  v48 = v19[19];
  v49 = *&v25[v48];
  v50 = *&v25[v48 + 8];
  v51 = &v22[v48];
  *v51 = v49;
  *(v51 + 1) = v50;
  v52 = v85;
  sub_24A37B740(v91, v85, &qword_27EF3F460, &unk_24A4B53B0);
  v53 = v83;
  v54 = v84;
  v55 = *(v83 + 48);
  if (v55(v52, 1, v84) == 1)
  {
    v56 = v52;
    v57 = v86;
    sub_24A37B740(&v25[v19[27]], v86, &qword_27EF3F460, &unk_24A4B53B0);
    v58 = v55(v56, 1, v54);
    v59 = v57;
    v60 = v58;

    if (v60 != 1)
    {
      sub_24A37EF2C(v56, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v59 = v86;
    (*(v53 + 32))(v86, v52, v54);
    v76(v59, 0, 1, v54);
  }

  sub_24A37BE24(v59, &v22[v19[27]], &qword_27EF3F460, &unk_24A4B53B0);
  *(v22 + 1) = *(v25 + 1);
  sub_24A37B740(&v25[v19[26]], &v22[v19[26]], &qword_27EF3F460, &unk_24A4B53B0);
  *(v22 + 4) = *(v25 + 4);
  v61 = v19[23];
  memcpy(v93, &v25[v61], 0x130uLL);
  memcpy(&v22[v19[23]], &v25[v61], 0x130uLL);
  v62 = v19[22];
  v63 = *&v25[v62];
  v64 = *&v25[v62 + 8];
  v65 = &v22[v62];
  *v65 = v63;
  *(v65 + 1) = v64;
  sub_24A37B740(v93, &v92, &unk_27EF404E0, &unk_24A4B5230);

  sub_24A3DEA30(v89);
  sub_24A37EF2C(v91, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v87, &qword_27EF3F470, &qword_24A4B6960);
  v66 = v19[20];
  v68 = *&v25[v66];
  v67 = *&v25[v66 + 8];
  v69 = *&v25[v66 + 16];
  v70 = &v22[v66];
  *v70 = v68;
  *(v70 + 1) = v67;
  *(v70 + 8) = v69;
  v22[v19[21]] = v25[v19[21]];
  v22[v19[24]] = v25[v19[24]];
  v71 = v25[v19[25]];

  sub_24A3DEA30(v25);
  v22[v19[25]] = v71;
  v72 = v88;
  sub_24A3B5814(v22, v88, type metadata accessor for FMFLocationAlert);
  v73 = v90;
  sub_24A3B5814(v72, v90 + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v73 + 16) = 1;
  return v73;
}

uint64_t sub_24A4223CC()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert();
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFRemoveLocationAlertAction.__deallocating_deinit()
{
  sub_24A3DEA30(v0 + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFRemoveLocationAlertAction()
{
  result = qword_27EF3FEE8;
  if (!qword_27EF3FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4227B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A384774(*a1);
  v5 = v4;
  if (v3 == sub_24A384774(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A422838()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A384774(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A42289C()
{
  sub_24A384774(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A4228F0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A384774(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A422950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A423578();
  *a2 = result;
  return result;
}

unint64_t sub_24A422980@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A384774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A4229AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A423578();
  *a1 = result;
  return result;
}

uint64_t sub_24A4229E0(uint64_t a1)
{
  v2 = sub_24A384718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A422A1C(uint64_t a1)
{
  v2 = sub_24A384718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFConfig.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v43 = v0[7];
  v44 = v0[8];
  v45 = v0[9];
  v46 = v0[10];
  v47 = v0[11];
  v48 = *(v0 + 96);
  v49 = v0[13];
  v50 = v0[14];
  v51 = v0[15];
  v52 = v0[16];
  v53 = v0[17];
  v54 = v0[18];
  v55 = v0[19];
  v56 = v0[20];
  v57 = v0[21];
  v58 = v0[22];
  v59 = v0[23];
  v60 = v0[24];
  v61 = *(v0 + 200);
  v62 = *(v0 + 201);
  v63 = v0[26];
  v64 = v0[27];
  v65 = v0[28];
  v66 = v0[29];
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x69666E6F43464D46, 0xE900000000000067);
  MEMORY[0x24C217D50]();
  v8 = sub_24A4AC240();
  MEMORY[0x24C217D50](v8);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4B0F60);
  v9 = sub_24A4AC240();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4B0F80);
  v10 = sub_24A4AC240();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4B0FA0);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B0FC0);
  v11 = sub_24A4AC240();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](0x69766E4978616D20, 0xED0000203A736574);
  v12 = sub_24A4AC240();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4B0FE0);
  if (v7)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v7)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v13, v14);

  MEMORY[0x24C217D50](0x6562614C78616D20, 0xEC000000203A736CLL);
  v15 = sub_24A4AC240();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4B1000);
  v16 = sub_24A4AC240();
  MEMORY[0x24C217D50](v16);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1020);
  v17 = sub_24A4AC240();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B1040);
  v18 = sub_24A4AC240();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1060);
  v19 = sub_24A4AC240();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B1090);
  if (v48)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v48)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v20, v21);

  MEMORY[0x24C217D50](0x6F697461636F6C20, 0xEE00203A4C54546ELL);
  v22 = sub_24A4AC240();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](0xD00000000000001FLL, 0x800000024A4B10B0);
  v23 = sub_24A4AC240();
  MEMORY[0x24C217D50](v23);

  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B10D0);
  v24 = sub_24A4AC240();
  MEMORY[0x24C217D50](v24);

  MEMORY[0x24C217D50](0xD000000000000017, 0x800000024A4B10F0);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B1110);
  v26 = sub_24A4AC240();
  MEMORY[0x24C217D50](v26);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4B1130);
  v27 = sub_24A4AC240();
  MEMORY[0x24C217D50](v27);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B1150);
  v28 = sub_24A4AC240();
  MEMORY[0x24C217D50](v28);

  MEMORY[0x24C217D50](0x6569724678616D20, 0xED0000203A73646ELL);
  v29 = sub_24A4AC240();
  MEMORY[0x24C217D50](v29);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1170);
  v30 = sub_24A4AC240();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1190);
  v31 = sub_24A4AC240();
  MEMORY[0x24C217D50](v31);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4B11B0);
  v32 = sub_24A4AC240();
  MEMORY[0x24C217D50](v32);

  MEMORY[0x24C217D50](0xD00000000000001ELL, 0x800000024A4B11E0);
  v33 = sub_24A4AC240();
  MEMORY[0x24C217D50](v33);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B1200);
  if (v61)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v61)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v34, v35);

  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B1220);
  if (v62)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v62)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v36, v37);

  MEMORY[0x24C217D50](0xD00000000000001ELL, 0x800000024A4B1240);
  v38 = sub_24A4AC240();
  MEMORY[0x24C217D50](v38);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1260);
  v39 = sub_24A4AC240();
  MEMORY[0x24C217D50](v39);

  MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B1280);
  v40 = sub_24A4AC240();
  MEMORY[0x24C217D50](v40);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4B12A0);
  v41 = sub_24A4AC240();
  MEMORY[0x24C217D50](v41);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A423410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A423524()
{
  result = qword_27EF3FF10;
  if (!qword_27EF3FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF10);
  }

  return result;
}

uint64_t sub_24A423578()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for FMFNotNowRequest()
{
  result = qword_27EF3FF28;
  if (!qword_27EF3FF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A423664()
{
  v1 = *(v0 + qword_27EF4E110);
  v2 = *(v0 + qword_27EF4E110 + 8);
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v4, 25705, 0xE200000000000000);
  return swift_endAccess();
}

uint64_t sub_24A423708()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF4E110 + 8);

  return v0;
}

uint64_t sub_24A4237EC()
{
  v0 = *sub_24A423708();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMFSetFavoriteAction.__allocating_init(friend:order:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_24A423930(a1, v9 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
  v10 = v9 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  *(v9 + 16) = 0;
  return v9;
}

uint64_t FMFSetFavoriteAction.init(friend:order:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_24A423930(a1, v3 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
  v6 = v3 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
  *v6 = a2;
  *(v6 + 8) = a3 & 1;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A423930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFFriend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A423994()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](0x203A646E65697266, 0xE800000000000000);
  type metadata accessor for FMFFriend();
  sub_24A4AC030();
  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  v6 = *(v0 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order);
  v7 = *(v0 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order + 8);
  sub_24A3C9CEC(&qword_27EF3F0F0, &qword_24A4B4940);
  v4 = sub_24A4AB870();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0x203A726564726FLL, 0xE700000000000000);

  return 60;
}

uint64_t FMFSetFavoriteAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFSetFavoriteAction()
{
  result = qword_27EF3FF38;
  if (!qword_27EF3FF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A423CD0()
{
  result = type metadata accessor for FMFFriend();
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

void *sub_24A423DAC(unsigned __int8 *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - v7;
  v66 = *a1;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v69 = sub_24A4AA800();
  v13 = v12;

  v14 = [v10 bundleForClass_];
  v67 = sub_24A4AA800();
  v68 = v15;

  v63 = ObjCClassFromMetadata;
  v16 = [v10 bundleForClass_];
  v17 = sub_24A4AA800();
  v19 = v18;

  v20 = sub_24A4AA9D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v64 = v21 + 56;
  v65 = v8;
  v22(v8, 1, 1, v20);
  v23 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
  [v23 refresh];
  LODWORD(v8) = [v23 airplaneMode];

  if (v8)
  {
    v60 = v22;
    v61 = v20;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v62 = v6;
    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);
    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v63;
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24A376000, v25, v26, "FMNetworkUtil: Airplane mode is enabled", v29, 2u);
      MEMORY[0x24C219130](v29, -1, -1);
    }

    v69 = sub_24A4578FC();
    v58 = "_TITLE_AIRPLANE_MODE";
    v59 = v30;
    v31 = 0xD00000000000001DLL;
  }

  else
  {
    v40 = v13;
    if ((sub_24A3CEE58() & 1) != 0 || (v41 = sub_24A4AB820(), v42 = MGGetBoolAnswer(), v41, !v42))
    {
      v36 = 0;
      v38 = 0;
      v33 = v17;
      v39 = v65;
      v22(v6, 1, 1, v20);
      goto LABEL_16;
    }

    v60 = v22;
    v61 = v20;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v62 = v6;
    v43 = sub_24A4AB630();
    sub_24A378E18(v43, qword_27EF4E260);
    v44 = sub_24A4AB600();
    v45 = sub_24A4ABCE0();
    v46 = os_log_type_enabled(v44, v45);
    v28 = v63;
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A376000, v44, v45, "FMNetworkUtil: Cellular is disabled", v47, 2u);
      MEMORY[0x24C219130](v47, -1, -1);
    }

    v48 = [v10 bundleForClass_];
    v69 = sub_24A4AA800();
    v59 = v49;

    v67 = sub_24A4578FC();
    v68 = v50;
    v58 = "ALERT_NO_NETWORK_CANCEL";
    v31 = 0xD000000000000022;
  }

  v57[1] = v31;
  v32 = [v10 bundleForClass_];
  v33 = sub_24A4AA800();
  v19 = v34;

  v35 = [v10 bundleForClass_];
  v36 = sub_24A4AA800();
  v38 = v37;

  v6 = v62;
  sub_24A4AA9C0();
  v39 = v65;
  sub_24A3D9248(v65);
  sub_24A3996FC(v6, v39);
  v40 = v59;
  v60(v6, 1, 1, v61);
LABEL_16:
  v51 = type metadata accessor for FMFAlert();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v54[3] = 0;
  swift_unknownObjectWeakInit();
  v54[4] = 0;
  v54[5] = 0;
  v54[6] = v69;
  v54[7] = v40;
  v55 = v68;
  v54[8] = v67;
  v54[9] = v55;
  v54[10] = v33;
  v54[11] = v19;
  v54[12] = v36;
  v54[13] = v38;
  sub_24A3996FC(v39, v54 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(v6, v54 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v54 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v66;
  return v54;
}

char *sub_24A4244D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v86 = a4;
  v85 = a3;
  v93 = a1;
  v6 = sub_24A3C9CEC(&qword_27EF3FF50, &qword_24A4BD250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v78 - v8;
  v10 = sub_24A4AAAD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v84 = &v78 - v19;
  v20 = type metadata accessor for ShallowRelabilityStats(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v89 = (&v78 - v26);
  v27 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v78 - v33;
  v38 = MEMORY[0x28223BE20](v35);
  result = &v78 - v36;
  if (a2)
  {
    v79 = v37;
    v90 = v21;
    v91 = v20;
    v81 = v11;
    v40 = *(v11 + 56);
    v92 = &v78 - v36;
    v40(v38);
    swift_beginAccess();
    v88 = v4;
    v41 = *(v4 + 152);
    v42 = *(v41 + 16);

    if (v42)
    {

      v80 = a2;
      v43 = sub_24A39B2C8(v93, a2);
      if (v44)
      {
        sub_24A4256F0(*(v41 + 56) + *(v90 + 72) * v43, v24, type metadata accessor for ShallowRelabilityStats);

        v45 = v92;
        sub_24A413470(v92);
        v46 = v89;
        sub_24A425758(v24, v89, type metadata accessor for ShallowRelabilityStats);
        v47 = *v46;
        sub_24A38CB20(v46 + *(v91 + 32), v45);
        v48 = v46[2];
        v49 = v46[3];
        sub_24A38CB20(v85, v34);
        v50 = v81;
        v51 = *(v81 + 48);
        if (v51(v34, 1, v10) == 1)
        {
          sub_24A413470(v34);
          sub_24A38CB20(v45, v31);
          if (v51(v31, 1, v10) == 1)
          {
            sub_24A413470(v31);
            v52 = v86;
            v53 = v91;
            v54 = v81;
LABEL_19:
            if (v47 == -1.0)
            {
              v69 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
              v70 = v88;
              swift_beginAccess();
              v71 = v70 + v69;
              v72 = v79;
              sub_24A38CB20(v71, v79);
              if (v51(v72, 1, v10) == 1)
              {
                sub_24A413470(v72);
                v47 = -1.0;
              }

              else
              {
                v73 = v83;
                (*(v54 + 32))(v83, v72, v10);
                v74 = v87;
                sub_24A4AAAC0();
                sub_24A4AAA50();
                v47 = v75;
                v76 = *(v54 + 8);
                v76(v74, v10);
                v76(v73, v10);
              }
            }

            v77 = v92;
            sub_24A38CB20(v92, &v9[*(v53 + 32)]);
            *v9 = v47;
            v9[8] = v52 & 1;
            *(v9 + 2) = v48;
            *(v9 + 3) = v49;
            (*(v90 + 56))(v9, 0, 1, v53);
            swift_beginAccess();
            sub_24A4A3518(v9, v93, v80);
            swift_endAccess();
            sub_24A4257C0(v89, type metadata accessor for ShallowRelabilityStats);
            v61 = v77;
            return sub_24A413470(v61);
          }

          v63 = v82;
          v64 = v31;
          v54 = v81;
          (*(v81 + 32))(v82, v64, v10);
          v53 = v91;
        }

        else
        {
          sub_24A413470(v45);
          v62 = v84;
          (*(v50 + 32))(v84, v34, v10);
          (*(v50 + 16))(v45, v62, v10);
          (v40)(v45, 0, 1, v10);
          v63 = v62;
          v53 = v91;
          v54 = v50;
        }

        v65 = v87;
        sub_24A4AAAC0();
        sub_24A4AAA50();
        v67 = v66;
        v68 = *(v54 + 8);
        v68(v65, v10);
        v68(v63, v10);
        if (v48 < v67)
        {
          v48 = v67;
        }

        if (v67 >= 120.0 && v49 == -1.0)
        {
          v49 = -1.0;
        }

        else if (v49 < v67)
        {
          v49 = v67;
        }

        v52 = v86;
        goto LABEL_19;
      }

      a2 = v80;
    }

    v55 = v91;
    (v40)(&v9[*(v91 + 32)], 1, 1, v10);
    *v9 = 0xBFF0000000000000;
    v9[8] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v9 + 1) = _Q0;
    (*(v90 + 56))(v9, 0, 1, v55);
    swift_beginAccess();
    sub_24A4A3518(v9, v93, a2);
    swift_endAccess();
    v61 = v92;
    return sub_24A413470(v61);
  }

  return result;
}

void sub_24A424CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A3C9CEC(&qword_27EF3FF48, &qword_24A4BD240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - v10;
  v12 = type metadata accessor for LiveRelabilityStats(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_24A4AAAD0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v27 = &v60 - v24;
  if (!a2)
  {
    return;
  }

  v62 = v16;
  v60 = v26;
  v66 = v25;
  v61 = a3;
  v65 = v19;
  v69 = v13;
  v70 = v12;
  v67 = v23;
  v68 = v11;
  v28 = *(a4 + 16);
  if (v28)
  {
    v63 = &v60 - v24;
    v64 = a1;
    v29 = sub_24A3A11D8(v28, 0);
    v30 = sub_24A40BDB8(v72, v29 + 4, v28, a4);

    v31 = sub_24A407000();
    if (v30 != v28)
    {
      __break(1u);
      return;
    }

    v27 = v63;
    a1 = v64;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v72[0] = a1;
  v72[1] = a2;
  MEMORY[0x28223BE20](v31);
  *(&v60 - 2) = v72;
  v32 = sub_24A45363C(sub_24A41ED80, (&v60 - 4), v29);

  v33 = v71;
  if ((v32 & 1) == 0)
  {

    return;
  }

  sub_24A4AAAC0();
  swift_beginAccess();
  v34 = *(v33 + 160);
  v35 = v67;
  v36 = v69;
  if (!*(v34 + 16))
  {
LABEL_14:
    v55 = v70;
    v56 = v66;
    v57 = v68;
    (*(v66 + 16))(&v68[*(v70 + 24)], v27, v35);
    *v57 = 0xBFF0000000000000;
    *(v57 + 8) = 0;
    (*(v36 + 56))(v57, 0, 1, v55);
    swift_beginAccess();
    sub_24A4A3344(v57, a1, a2);
    swift_endAccess();
    (*(v56 + 8))(v27, v35);
    return;
  }

  v37 = *(v33 + 160);

  v38 = sub_24A39B2C8(a1, a2);
  if ((v39 & 1) == 0)
  {

    goto LABEL_14;
  }

  v40 = v62;
  sub_24A4256F0(*(v34 + 56) + *(v36 + 72) * v38, v62, type metadata accessor for LiveRelabilityStats);

  v41 = v66;
  v63 = *(v66 + 8);
  v64 = v66 + 8;
  (v63)(v27, v35);
  v42 = v40;
  v43 = v65;
  sub_24A425758(v42, v65, type metadata accessor for LiveRelabilityStats);
  v44 = *v43;
  v45 = v27;
  v46 = *(v43 + 8);
  v47 = *(v70 + 24);
  v48 = *(v41 + 16);
  v49 = v45;
  v48();
  v50 = -1.0;
  if (v44 == -1.0)
  {
    v51 = (*(v41 + 48))(v61, 1, v35);
    v52 = v46;
    if (v51 != 1)
    {
      v53 = v60;
      sub_24A4AAAC0();
      sub_24A4AAA50();
      v50 = v54;
      (v63)(v53, v35);
      v52 = 1;
    }
  }

  else
  {
    v50 = v44;
    v52 = v46;
  }

  v58 = v70;
  v59 = v68;
  (v48)(&v68[*(v70 + 24)], v49, v35);
  *v59 = v50;
  *(v59 + 8) = v52;
  (*(v69 + 56))(v59, 0, 1, v58);
  swift_beginAccess();
  sub_24A4A3344(v59, a1, a2);
  swift_endAccess();
  sub_24A4257C0(v65, type metadata accessor for LiveRelabilityStats);
  (v63)(v49, v35);
}

uint64_t sub_24A425294()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v45 - v3;
  v4 = type metadata accessor for ShallowRelabilityStats(0);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A3C9CEC(&qword_27EF3FF58, &qword_24A4B92B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = (&v45 - v12);
  swift_beginAccess();
  v13 = *(v0 + 152);
  v16 = *(v13 + 64);
  v15 = v13 + 64;
  v14 = v16;
  v17 = 1 << *(*(v0 + 152) + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v49 = *(v0 + 152);
  v50 = v0;

  v22 = 0;
  v46 = v10;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_11:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v23 << 6);
      v27 = (*(v49 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = v47;
      sub_24A4256F0(*(v49 + 56) + *(v48 + 72) * v26, v47, type metadata accessor for ShallowRelabilityStats);
      v31 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
      v32 = *(v31 + 48);
      v33 = v46;
      *v46 = v28;
      *(v33 + 1) = v29;
      v10 = v33;
      sub_24A425758(v30, &v33[v32], type metadata accessor for ShallowRelabilityStats);
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);

      v53 = v23;
LABEL_12:
      v34 = v10;
      v35 = v10;
      v36 = v52;
      sub_24A425820(v35, v52);
      v37 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {
      }

      v38 = *v36;
      v39 = v36[1];
      v40 = v36 + *(v37 + 48);
      v41 = sub_24A4AAAD0();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = *(v40 + 8);
      sub_24A4257C0(v40, type metadata accessor for ShallowRelabilityStats);
      sub_24A4244D4(v38, v39, v42, v43);

      result = sub_24A413470(v42);
      v22 = v53;
      v10 = v34;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v20 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v20;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v53 = v24 - 1;
        v44 = sub_24A3C9CEC(&qword_27EF3FF60, qword_24A4B92B8);
        (*(*(v44 - 8) + 56))(v10, 1, 1, v44);
        v19 = 0;
        goto LABEL_12;
      }

      v19 = *(v15 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A4256F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A425758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4257C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A425820(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3FF58, &qword_24A4B92B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24A425890(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A4258AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_24A425908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_24A425980(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3FF68, &qword_24A4B9348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A425D4C();
  sub_24A4AC3D0();
  v11 = *v3;
  v22[15] = 0;
  sub_24A4AC1D0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v22[14] = 1;
  sub_24A4AC1D0();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v22[13] = 2;
  sub_24A4AC1A0();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v22[12] = 3;
  sub_24A4AC1A0();
  v17 = v3[6];
  v18 = *(v3 + 56);
  v22[11] = 4;
  sub_24A4AC1A0();
  v20 = v3[8];
  v21 = v3[9];
  v22[10] = 5;
  sub_24A4AC190();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24A425B8C()
{
  v1 = 0x656475746974616CLL;
  v2 = *v0;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000010;
  if (v2 != 4)
  {
    v4 = 0x6C6562616CLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A425C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A425DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A425C70(uint64_t a1)
{
  v2 = sub_24A425D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A425CAC(uint64_t a1)
{
  v2 = sub_24A425D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A425CE8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A425FA8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_24A425D4C()
{
  result = qword_27EF3FF70;
  if (!qword_27EF3FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF70);
  }

  return result;
}

uint64_t sub_24A425DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_24A4AC270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_24A4AC270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A4AE0B0 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A4B14B0 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A4AC270();

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

uint64_t sub_24A425FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FF78, &qword_24A4B9350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A425D4C();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v39 = 0;
  sub_24A4AC140();
  v12 = v11;
  v38 = 1;
  sub_24A4AC140();
  v14 = v13;
  v37 = 2;
  v15 = sub_24A4AC0F0();
  v33 = v16 & 1;
  v36 = 3;
  v17 = sub_24A4AC0F0();
  v32 = v18 & 1;
  v35 = 4;
  v30 = sub_24A4AC0F0();
  v31 = v19 & 1;
  v34 = 5;
  v20 = sub_24A4AC0E0();
  v22 = v21;
  v23 = *(v6 + 8);
  v29 = v20;
  v23(v9, v5);
  v24 = v33;
  v25 = v32;
  v26 = v31;
  result = sub_24A37EEE0(a1);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v24;
  *(a2 + 32) = v17;
  *(a2 + 40) = v25;
  v28 = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28;
  *(a2 + 72) = v22;
  return result;
}

unint64_t sub_24A426234()
{
  result = qword_27EF3FF80;
  if (!qword_27EF3FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF80);
  }

  return result;
}

unint64_t sub_24A42628C()
{
  result = qword_27EF3FF88;
  if (!qword_27EF3FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF88);
  }

  return result;
}

unint64_t sub_24A4262E4()
{
  result = qword_27EF3FF90;
  if (!qword_27EF3FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF90);
  }

  return result;
}

uint64_t sub_24A426338(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x776F6C6C616873;
  if (v2 != 1)
  {
    v4 = 1885693284;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x776F6C6C616873;
  if (*a2 != 1)
  {
    v8 = 1885693284;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A426424()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4264B8()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A426538()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4265C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A426AC8();
  *a2 = result;
  return result;
}

void sub_24A4265F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x776F6C6C616873;
  if (v2 != 1)
  {
    v5 = 1885693284;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A426648@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

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

uint64_t sub_24A4266A8@<X0>(char *a1@<X8>)
{
  v2 = sub_24A4AC0C0();

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

uint64_t sub_24A42670C(uint64_t a1)
{
  v2 = sub_24A3B5C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A426748(uint64_t a1)
{
  v2 = sub_24A3B5C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A426784(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF3FFA8, &qword_24A4B9538);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B5C54();
  sub_24A4AC3D0();
  v16 = 0;
  sub_24A4AC1B0();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_24A4AC1B0();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_24A4269A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_24A4AC270() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 0x776F6C6C616873;
      }

      else
      {
        v9 = 1885693284;
      }

      if (a3 == 1)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      v11 = a6;
      if (a6)
      {
LABEL_12:
        if (v11 == 1)
        {
          v12 = 0x776F6C6C616873;
        }

        else
        {
          v12 = 1885693284;
        }

        if (v11 == 1)
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE400000000000000;
        }

        if (v9 != v12)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_25:

          return v8 & 1;
        }

LABEL_24:
        v8 = sub_24A4AC270();
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1701736302;
      v11 = a6;
      if (a6)
      {
        goto LABEL_12;
      }
    }

    v13 = 0xE400000000000000;
    if (v9 != 1701736302)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

uint64_t sub_24A426AC8()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A426B28()
{
  result = qword_27EF3FFB0;
  if (!qword_27EF3FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFB0);
  }

  return result;
}

unint64_t sub_24A426B80()
{
  result = qword_27EF3FFB8;
  if (!qword_27EF3FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFB8);
  }

  return result;
}

uint64_t sub_24A426BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000024A4AEA60;
  if (v2 == 1)
  {
    v4 = 0x800000024A4AEA60;
  }

  else
  {
    v4 = 0x800000024A4AEA80;
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000024A4AEA80;
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A426CA8()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A426D54()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A426DEC()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A426E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A4277F4();
  *a2 = result;
  return result;
}

void sub_24A426EC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x800000024A4AEA60;
  if (v2 != 1)
  {
    v4 = 0x800000024A4AEA80;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24A426F2C()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_24A426F90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A4277F4();
  *a1 = result;
  return result;
}

uint64_t sub_24A426FC4(uint64_t a1)
{
  v2 = sub_24A427688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A427000(uint64_t a1)
{
  v2 = sub_24A427688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A42703C(uint64_t *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FFD0, &qword_24A4B97D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A427688();
  sub_24A4AC3C0();
  if (v1)
  {
    v9 = v27;
    type metadata accessor for FMFMyLocationResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v4;
    v31 = 0;
    sub_24A3B2D98();
    sub_24A4AC160();
    v9 = v27;
    memcpy((v27 + 16), v29, 0x161uLL);
    LOBYTE(v28) = 1;
    sub_24A4AC140();
    *(v9 + 376) = v11;
    LOBYTE(v28) = 2;
    sub_24A4AC140();
    *(v9 + 384) = v12;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v16;
      v18 = v17;
      v26 = swift_slowAlloc();
      v28 = v26;
      *v18 = 136315138;
      v25 = v15;
      v19 = sub_24A4273E8();
      v21 = v10;
      v22 = sub_24A37BD58(v19, v20, &v28);

      *(v18 + 4) = v22;
      v23 = v25;
      _os_log_impl(&dword_24A376000, v25, v30, "FMFMyLocationResponse: initialized with coder %s", v18, 0xCu);
      v24 = v26;
      sub_24A37EEE0(v26);
      MEMORY[0x24C219130](v24, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);

      (*(v21 + 8))(v7, v3);
      v9 = v27;
    }

    else
    {

      (*(v10 + 8))(v7, v3);
    }
  }

  sub_24A37EEE0(a1);
  return v9;
}

uint64_t sub_24A4273E8()
{
  __dst[0] = 60;
  __dst[1] = 0xE100000000000000;
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v10 = 0;
  v11 = 0xE000000000000000;
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEA0000000000203ALL);
  memcpy(__dst, v0 + 2, 0x161uLL);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B1500);
  v4 = v0[47];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B1520);
  v5 = v0[48];
  sub_24A4ABBE0();
  v6 = v10;
  v7 = v11;
  __dst[0] = 60;
  __dst[1] = 0xE100000000000000;

  MEMORY[0x24C217D50](v6, v7);

  return __dst[0];
}

uint64_t sub_24A42760C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMFMyLocationResponse();
  v5 = swift_allocObject();
  result = sub_24A42703C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A427688()
{
  result = qword_27EF3FFD8;
  if (!qword_27EF3FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFD8);
  }

  return result;
}

unint64_t sub_24A4276F0()
{
  result = qword_27EF3FFE0;
  if (!qword_27EF3FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFE0);
  }

  return result;
}

unint64_t sub_24A427748()
{
  result = qword_27EF3FFE8;
  if (!qword_27EF3FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFE8);
  }

  return result;
}

unint64_t sub_24A4277A0()
{
  result = qword_27EF3FFF0;
  if (!qword_27EF3FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FFF0);
  }

  return result;
}

uint64_t sub_24A4277F4()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A427858(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F43737574617473;
    v6 = 7107189;
    if (a1 != 2)
    {
      v6 = 0x6D614E7473726966;
    }

    if (a1)
    {
      v5 = 0x614D737574617473;
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
    v1 = 0xD000000000000010;
    v2 = 0x55746E6572727563;
    if (a1 != 7)
    {
      v2 = 0x65636E6566;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656D614E7473616CLL;
    if (a1 != 4)
    {
      v3 = 0x6C69616D65;
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

uint64_t sub_24A427984()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A41F4F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A4279D4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A41F4F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A427A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A428E20();
  *a2 = result;
  return result;
}

unint64_t sub_24A427A48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A427858(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A427A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A428E20();
  *a1 = result;
  return result;
}

uint64_t sub_24A427AC4(uint64_t a1)
{
  v2 = sub_24A4287F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A427B00(uint64_t a1)
{
  v2 = sub_24A4287F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A427B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v81[-v6];
  v8 = sub_24A3C9CEC(&qword_27EF40018, &unk_24A4B99E0);
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v81[-v10];
  v12 = type metadata accessor for FMFCommandResponseFragment();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[3];
  v17 = a1[4];
  v86 = a1;
  sub_24A37EACC(a1, v16);
  sub_24A4287F4();
  sub_24A4AC3C0();
  if (v2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);
    v25 = v2;
    v26 = sub_24A4AB600();
    v27 = sub_24A4ABCC0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v87[0] = v29;
      *v28 = 136315138;
      v88 = v2;
      v30 = v2;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v31 = sub_24A4AB870();
      v33 = sub_24A37BD58(v31, v32, v87);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_24A376000, v26, v27, "Error decoding command response. Error - %s", v28, 0xCu);
      sub_24A37EEE0(v29);
      MEMORY[0x24C219130](v29, -1, -1);
      MEMORY[0x24C219130](v28, -1, -1);
    }

    swift_willThrow();
    return sub_24A37EEE0(v86);
  }

  v83 = v7;
  v18 = v15;
  v20 = v84;
  v19 = v85;
  LOBYTE(v87[0]) = 0;
  result = sub_24A4AC120();
  v23 = v8;
  v34 = v11;
  v35 = HIBYTE(v22) & 0xF;
  v36 = result & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v37 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    v38 = v18;
    v39 = v12;
    goto LABEL_71;
  }

  v38 = v18;
  v39 = v12;
  if ((v22 & 0x1000000000000000) != 0)
  {
    LOBYTE(v88) = 0;
    v41 = sub_24A49D860(result, v22, 10);
    v82 = v79;

    if ((v82 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A4ABF90();
      v36 = v80;
    }

    v40 = *result;
    if (v40 == 43)
    {
      if (v36 >= 1)
      {
        if (--v36)
        {
          v41 = 0;
          if (result)
          {
            v48 = (result + 1);
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                goto LABEL_69;
              }

              v50 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                goto LABEL_69;
              }

              v41 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                goto LABEL_69;
              }

              ++v48;
              if (!--v36)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_68;
        }

        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (v40 != 45)
    {
      if (v36)
      {
        v41 = 0;
        if (result)
        {
          while (1)
          {
            v54 = *result - 48;
            if (v54 > 9)
            {
              goto LABEL_69;
            }

            v55 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              goto LABEL_69;
            }

            v41 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              goto LABEL_69;
            }

            ++result;
            if (!--v36)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_69:
      v41 = 0;
      LOBYTE(v36) = 1;
LABEL_70:
      LOBYTE(v88) = v36;
      v59 = v36;

      if ((v59 & 1) == 0)
      {
LABEL_72:
        *v38 = v41;
        sub_24A3C9CEC(&qword_27EF40010, qword_24A4B9960);
        LOBYTE(v88) = 1;
        sub_24A428848();
        sub_24A4AC160();
        v60 = v83;
        v38[1] = v87[0];
        LOBYTE(v87[0]) = 3;
        v61 = sub_24A4AC120();
        v62 = (v38 + v39[7]);
        *v62 = v61;
        v62[1] = v63;
        LOBYTE(v87[0]) = 4;
        v64 = sub_24A4AC120();
        v65 = (v38 + v39[8]);
        *v65 = v64;
        v65[1] = v66;
        LOBYTE(v87[0]) = 5;
        v67 = sub_24A4AC120();
        v68 = (v38 + v39[9]);
        *v68 = v67;
        v68[1] = v69;
        LOBYTE(v87[0]) = 7;
        v70 = sub_24A4AC120();
        v71 = (v38 + v39[11]);
        *v71 = v70;
        v71[1] = v72;
        v73 = type metadata accessor for FMFLocationAlert();
        LOBYTE(v87[0]) = 8;
        sub_24A4288F8();
        sub_24A4AC160();
        (*(*(v73 - 8) + 56))(v60, 0, 1, v73);
        sub_24A428950(v60, v38 + v39[12]);
        LOBYTE(v87[0]) = 2;
        sub_24A4AC120();
        v74 = v38 + v39[6];
        sub_24A4AA9C0();

        LOBYTE(v87[0]) = 6;
        v75 = sub_24A4AC170();
        v76 = v39[10];
        v77 = [objc_opt_self() fm:v75 dateFromEpoch:?];
        sub_24A4AAAA0();

        (*(v20 + 8))(v34, v23);
        v78 = sub_24A4AAAD0();
        (*(*(v78 - 8) + 56))(v38 + v76, 0, 1, v78);
        sub_24A4289C0(v38, v19);
        return sub_24A37EEE0(v86);
      }

LABEL_71:
      v41 = 500;
      goto LABEL_72;
    }

    if (v36 >= 1)
    {
      if (--v36)
      {
        v41 = 0;
        if (result)
        {
          v42 = (result + 1);
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              goto LABEL_69;
            }

            v44 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              goto LABEL_69;
            }

            v41 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              goto LABEL_69;
            }

            ++v42;
            if (!--v36)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_68:
        LOBYTE(v36) = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v87[0] = result;
  v87[1] = v22 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v35)
      {
        v41 = 0;
        v56 = v87;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          v56 = (v56 + 1);
          if (!--v35)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_69;
    }

    if (v35)
    {
      v36 = v35 - 1;
      if (v35 != 1)
      {
        v41 = 0;
        v45 = v87 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v47 - v46;
          if (__OFSUB__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v36)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_78;
  }

  if (v35)
  {
    v36 = v35 - 1;
    if (v35 != 1)
    {
      v41 = 0;
      v51 = v87 + 1;
      while (1)
      {
        v52 = *v51 - 48;
        if (v52 > 9)
        {
          break;
        }

        v53 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v53 + v52;
        if (__OFADD__(v53, v52))
        {
          break;
        }

        ++v51;
        if (!--v36)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_24A42851C(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF40040, &qword_24A4B99F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A4287F4();
  sub_24A4AC3D0();
  v11 = *v3;
  v15 = 0;
  sub_24A4AC1E0();
  if (!v2)
  {
    v14 = v3[1];
    v13[15] = 1;
    sub_24A3C9CEC(&qword_27EF40048, &qword_24A4B9A00);
    sub_24A428A24();
    sub_24A4AC1F0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24A4286AC()
{
  sub_24A4ABF50();

  v4 = *v0;
  v1 = sub_24A4AC240();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x4D73757461747320, 0xEC000000203A7061);
  v5 = v0[1];

  sub_24A3C9CEC(&qword_27EF40048, &qword_24A4B9A00);
  v2 = sub_24A4AB870();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000029;
}

unint64_t sub_24A4287F4()
{
  result = qword_27EF40020;
  if (!qword_27EF40020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40020);
  }

  return result;
}

unint64_t sub_24A428848()
{
  result = qword_27EF40028;
  if (!qword_27EF40028)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    sub_24A428B58(&qword_27EF40030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40028);
  }

  return result;
}

unint64_t sub_24A4288F8()
{
  result = qword_27EF3F1C0;
  if (!qword_27EF3F1C0)
  {
    type metadata accessor for FMFLocationAlert();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1C0);
  }

  return result;
}

uint64_t sub_24A428950(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A4289C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFCommandResponseFragment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A428A24()
{
  result = qword_27EF40050;
  if (!qword_27EF40050)
  {
    sub_24A3CBC9C(&qword_27EF40048, &qword_24A4B9A00);
    sub_24A428AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40050);
  }

  return result;
}

unint64_t sub_24A428AA8()
{
  result = qword_27EF40058;
  if (!qword_27EF40058)
  {
    sub_24A3CBC9C(&qword_27EF40010, qword_24A4B9960);
    sub_24A428B58(&qword_27EF40060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40058);
  }

  return result;
}

uint64_t sub_24A428B58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF40038, &qword_24A4B99F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFCommandResponseFragment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFCommandResponseFragment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A428D1C()
{
  result = qword_27EF40068;
  if (!qword_27EF40068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40068);
  }

  return result;
}

unint64_t sub_24A428D74()
{
  result = qword_27EF40070;
  if (!qword_27EF40070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40070);
  }

  return result;
}

unint64_t sub_24A428DCC()
{
  result = qword_27EF40078;
  if (!qword_27EF40078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40078);
  }

  return result;
}

uint64_t sub_24A428E20()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t FMFSnapshotHandlers.responseFilter.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24A3C8498(v1);
  return v1;
}

uint64_t FMFSnapshotHandlers.responseHandler.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24A3C8498(v1);
  return v1;
}

void *FMFSnapshotHandlers.__allocating_init(responseFilter:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *FMFSnapshotHandlers.init(responseFilter:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t *FMFSnapshotHandlers.deinit()
{
  v1 = v0[3];
  sub_24A3C84A8(v0[2]);
  v2 = v0[5];
  sub_24A3C84A8(v0[4]);
  return v0;
}

uint64_t FMFSnapshotHandlers.__deallocating_deinit()
{
  v1 = v0[3];
  sub_24A3C84A8(v0[2]);
  v2 = v0[5];
  sub_24A3C84A8(v0[4]);

  return swift_deallocClassInstance();
}

uint64_t FMFManagerConfiguration.preferredLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v4 = sub_24A4AAB80();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMFManagerConfiguration.cacheDirectory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory + 8);

  return v1;
}

uint64_t sub_24A4290E0()
{
  if (*(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1)
  {
    return (*(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FMFManagerConfiguration.__allocating_init(enabledSubsystems:preferredLocale:cacheDirectory:useCache:snapshotHandlers:useOptimizedFetch:disableContactMatching:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, int a8)
{
  v43 = a7;
  v44 = a8;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v11 = sub_24A4AAB80();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  v37 = sub_24A378E18(v16, qword_27EF4E260);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a5 & 1;
    _os_log_impl(&dword_24A376000, v17, v18, "FMFManagerConfiguration: public useCache: %{BOOL}d", v19, 8u);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  v20 = a5;

  v21 = v12[2];
  v45 = a2;
  v21(v15, a2, v11);
  if (qword_27EF3EBB8 != -1)
  {
    swift_once();
  }

  v23 = *(qword_27EF40080 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v22 = *(qword_27EF40080 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);
  v24 = type metadata accessor for FMFManagerConfiguration();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v41 = v15;
  v21((v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale), v15, v11);
  v28 = (v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
  v29 = v40;
  *v28 = v39;
  v28[1] = v29;
  v30 = v20 & 1;
  *(v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) = v20 & 1;
  v31 = (v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  *v31 = v23;
  v31[1] = v22;
  *(v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) = v38;
  *(v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers) = v42;
  *(v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) = v43 & 1;
  *(v27 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) = v44 & 1;

  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = v30;
    _os_log_impl(&dword_24A376000, v32, v33, "FMFManagerConfiguration: internal useCache: %{BOOL}d", v34, 8u);
    MEMORY[0x24C219130](v34, -1, -1);
  }

  v35 = v12[1];
  v35(v45, v11);
  v35(v41, v11);
  return v27;
}

uint64_t FMFManagerConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v2 = sub_24A4AAB80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory + 8);

  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);

  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);

  return v0;
}

uint64_t FMFManagerConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v2 = sub_24A4AAB80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory + 8);

  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);

  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_24A429600(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24A429674@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A4296A8()
{
  result = qword_27EF40088;
  if (!qword_27EF40088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40088);
  }

  return result;
}

unint64_t sub_24A429700()
{
  result = qword_27EF40090;
  if (!qword_27EF40090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40090);
  }

  return result;
}

unint64_t sub_24A429758()
{
  result = qword_27EF40098;
  if (!qword_27EF40098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40098);
  }

  return result;
}

unint64_t sub_24A4297B0()
{
  result = qword_27EF400A0;
  if (!qword_27EF400A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF400A0);
  }

  return result;
}

uint64_t FMReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMReverseGeocodingCache.init(preferredLocale:)(a1);
  return v5;
}

uint64_t *FMReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = *v1;
  v4 = sub_24A4ABD50();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A4AB6E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24A4AAAB0();
  v11 = qword_27EF400C8;
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  type metadata accessor for FMReverseGeocodingCache.FMReverseGeocodingCacheContext();
  *(v2 + v11) = sub_24A4AB740();
  v14 = qword_27EF400D0;
  *(v2 + v14) = sub_24A4AB740();
  *(v2 + qword_27EF400D8) = MEMORY[0x277D84F98];
  *(v2 + qword_27EF400E0) = 0;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E278);

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v20 = *v2;
    v21 = sub_24A4AC420();
    v23 = sub_24A37BD58(v21, v22, &v35);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_24A376000, v16, v17, "%s: initialized", v18, 0xCu);
    sub_24A37EEE0(v19);
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1690);
  v25 = *v2;
  v26 = sub_24A4AC420();
  MEMORY[0x24C217D50](v26);

  MEMORY[0x24C217D50](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v27 = sub_24A4AB820();

  [v24 setName_];

  [v24 setMaxConcurrentOperationCount_];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24A4ABF50();

  v35 = 0xD000000000000022;
  v36 = 0x800000024A4B1690;
  v28 = sub_24A4AC420();
  MEMORY[0x24C217D50](v28);

  MEMORY[0x24C217D50](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A4AB6D0();
  v35 = MEMORY[0x277D84F90];
  sub_24A37D4E0();
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A37D538();
  sub_24A4ABE90();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  v29 = sub_24A4ABD90();
  *(v2 + qword_27EF400E8) = v24;
  sub_24A429FD8(v34, v2 + qword_27EF4E178);
  *(v2 + qword_27EF400F0) = v29;
  return v2;
}

uint64_t FMReverseGeocodingCache.deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27EF400C8);

  v4 = *(v0 + qword_27EF400D0);

  v5 = *(v0 + qword_27EF400D8);

  sub_24A3E36D0(v0 + qword_27EF4E178);
  return v0;
}

uint64_t FMReverseGeocodingCache.__deallocating_deinit()
{
  FMReverseGeocodingCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A429FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A42A048(void (*a1)(void))
{
  a1();

  return sub_24A4AC420();
}

uint64_t sub_24A42A0CC(uint64_t a1)
{
  result = sub_24A37B428(319, &qword_27EF40200, 0x277CE41F8);
  if (v3 <= 0x3F)
  {
    result = sub_24A4AAAD0();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24A42A194(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24A4AAAD0() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) == -1)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(v8 + 64) + ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + 1;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24A42A430(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24A4AAAD0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(v10 + 64) + ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t type metadata accessor for FMFGetURLInfoRequest()
{
  result = qword_27EF40208;
  if (!qword_27EF40208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A42A7AC()
{
  result = sub_24A4AA9D0();
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

uint64_t sub_24A42A844()
{
  v0 = sub_24A4AA960();
  v3[3] = MEMORY[0x277D837D0];
  v3[0] = v0;
  v3[1] = v1;
  swift_beginAccess();
  sub_24A3A6CEC(v3, 7107189, 0xE300000000000000);
  return swift_endAccess();
}

uint64_t sub_24A42A8CC()
{
  v1 = qword_27EF4E180;
  v2 = sub_24A4AA9D0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A42A934()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_27EF4E180;
  v9 = sub_24A4AA9D0();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A42AAB0()
{
  v1 = v0 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_24A42AB00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A42AB6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A42AC0C;
}

void sub_24A42AC0C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24A42AC94()
{
  *(v0 + 88) = *(v0 + 192);
  sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

id FMFGenericResponseHandler.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream])
  {

    sub_24A4AAF30();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = v0;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
    v8 = *&v2[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier + 8];

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v22);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGenericResponseHandler<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = type metadata accessor for FMFGenericResponseHandler();
  v23.receiver = v2;
  v23.super_class = v20;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_24A42B034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v269 = a2;
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v273 = &v223 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v258 = &v223 - v10;
  v11 = sub_24A4AAB20();
  v256 = *(v11 - 8);
  v257 = v11;
  v12 = *(v256 + 64);
  MEMORY[0x28223BE20](v11);
  v255 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB020();
  v253 = *(v14 - 8);
  v254 = v14;
  v15 = *(v253 + 64);
  MEMORY[0x28223BE20](v14);
  v252 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_24A4AADD0();
  v259 = *(v278 - 8);
  v17 = *(v259 + 64);
  v18 = MEMORY[0x28223BE20](v278);
  v276 = &v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v277 = &v223 - v20;
  v21 = sub_24A4AAFC0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v275 = (&v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_24A4AB130();
  v226 = *(v24 - 8);
  v227 = v24;
  v25 = *(v226 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v225 = &v223 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v224 = &v223 - v28;
  v29 = sub_24A4AB0B0();
  v230 = *(v29 - 8);
  v231 = v29;
  v30 = *(v230 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v228 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v229 = &v223 - v33;
  v34 = sub_24A4AB0C0();
  v238 = *(v34 - 8);
  v239 = v34;
  v35 = *(v238 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v223 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v237 = &v223 - v38;
  v274 = sub_24A3C9CEC(&qword_27EF40288, &qword_24A4B9F58);
  v39 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274);
  v242 = &v223 - v40;
  v41 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v272 = &v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v271 = &v223 - v45;
  v264 = sub_24A4AAEF0();
  v270 = *(v264 - 8);
  v46 = *(v270 + 64);
  v47 = MEMORY[0x28223BE20](v264);
  v263 = &v223 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v262 = &v223 - v49;
  v50 = sub_24A4AAF60();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v247 = &v223 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A4AB5D0();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v250 = &v223 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24A4AAAD0();
  v267 = *(v56 - 8);
  v268 = v56;
  v57 = *(v267 + 64);
  MEMORY[0x28223BE20](v56);
  v248 = &v223 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_24A4AAFB0();
  v59 = *(v265 - 8);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x28223BE20](v265);
  v249 = &v223 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v223 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v223 - v66;
  v68 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v68 - 8);
  v72 = (&v223 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v70);
  v74 = &v223 - v73;
  v279 = v3;
  sub_24A432984(sub_24A42E21C, a1, &v223 - v73);
  v251 = v74;
  sub_24A37B740(v74, v72, &qword_27EF3F2D0, &qword_24A4B4F50);
  v75 = type metadata accessor for FMFFriend();
  if ((*(*(v75 - 8) + 48))(v72, 1, v75) == 1)
  {
    sub_24A37EF2C(v72, &qword_27EF3F2D0, &qword_24A4B4F50);
    v261 = 0;
    v266 = 0;
  }

  else
  {
    v76 = v72[1];
    v261 = *v72;
    v266 = v76;

    sub_24A3B599C(v72, type metadata accessor for FMFFriend);
  }

  sub_24A4AB0A0();
  sub_24A4AAF80();
  v78 = v77;
  v79 = *(v59 + 8);
  v80 = v265;
  v79(v67, v265);
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v82 = v81;
  v79(v65, v80);
  v83 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v78 longitude:v82];
  [v83 coordinate];
  v246 = v84;
  v86 = v85;
  [v83 altitude];
  v88 = v87;
  [v83 horizontalAccuracy];
  v90 = v89;
  [v83 verticalAccuracy];
  v92 = v91;
  [v83 course];
  v94 = v93;
  [v83 courseAccuracy];
  v96 = v95;
  [v83 speed];
  v98 = v97;
  [v83 speedAccuracy];
  v100 = v99;
  v101 = v248;
  sub_24A4AB1A0();
  v102 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v103 = sub_24A4AAA60();
  v104 = [v102 initWithCoordinate:v103 altitude:v246 horizontalAccuracy:v86 verticalAccuracy:v88 course:v90 courseAccuracy:v92 speed:v94 speedAccuracy:v96 timestamp:{v98, v100}];

  (*(v267 + 8))(v101, v268);
  v248 = v104;
  v105 = v250;
  sub_24A4AB190();
  FMFAddress.init(from:)(v105, v282);
  sub_24A4AB0A0();
  v106 = v247;
  sub_24A4AAFA0();
  v250 = (v59 + 8);
  v244 = v79;
  v79(v67, v80);
  sub_24A3EF74C(v106, v281);
  LODWORD(v247) = LOBYTE(v281[0]);
  v107 = sub_24A4AB060();
  v109 = v108;

  v245 = v109;
  *&v246 = v107;
  v110._countAndFlagsBits = v107;
  v110._object = v109;
  FMFDefaultLabel.init(rawValue:)(v110);
  v243 = LOBYTE(v281[0]);
  v111 = v262;
  v112 = v3;
  sub_24A4AB180();
  v113 = *MEMORY[0x277D091D0];
  v114 = v270;
  v116 = v270 + 104;
  v115 = *(v270 + 104);
  v118 = v263;
  v117 = v264;
  v115(v263, v113, v264);
  v236 = sub_24A4AAEE0();
  v119 = *(v114 + 8);
  v119(v118, v117);
  v119(v111, v117);
  sub_24A4AB080();
  v232 = v115;
  v233 = v116;
  v115(v118, v113, v117);
  v120 = v112;
  v235 = sub_24A4AAEE0();
  v119(v118, v117);
  v234 = v119;
  v119(v111, v117);
  v121 = v237;
  sub_24A4AB0D0();
  v123 = v238;
  v122 = v239;
  v124 = (*(v238 + 88))(v121, v239);
  v125 = *MEMORY[0x277D09280];
  v270 = v114 + 8;
  v240 = v125;
  v241 = v124;
  if (v124 == v125 || v124 == *MEMORY[0x277D09288])
  {
    (*(v123 + 96))(v121, v122);
    v127 = v229;
    v126 = v230;
    v128 = v231;
    (*(v230 + 32))(v229, v121, v231);
    v129 = v274;
    v130 = *(v274 + 48);
    v131 = v228;
    (*(v126 + 16))(v228, v127, v128);
    v132 = v242;
    sub_24A3EFBFC(v131, v242);
    (*(v126 + 8))(v127, v128);
    v133 = type metadata accessor for FMFSchedule();
    (*(*(v133 - 8) + 56))(&v132[v130], 1, 1, v133);
  }

  else
  {
    if (v124 != *MEMORY[0x277D09290])
    {
      v281[0] = 0;
      v281[1] = 0xE000000000000000;
      sub_24A4ABF50();

      v281[0] = 0xD00000000000001BLL;
      v281[1] = 0x800000024A4B18C0;
      v221 = v223;
      sub_24A4AB0D0();
      sub_24A38D32C(&qword_27EF40290, MEMORY[0x277D09298]);
      v222 = sub_24A4AC240();
      MEMORY[0x24C217D50](v222);

      (*(v123 + 8))(v221, v122);
      result = sub_24A4AC050();
      __break(1u);
      return result;
    }

    (*(v123 + 96))(v121, v122);
    v135 = v226;
    v134 = v227;
    v136 = v224;
    (*(v226 + 32))(v224, v121, v227);
    v129 = v274;
    v137 = *(v274 + 48);
    v132 = v242;
    *v242 = 3;
    v138 = v225;
    (*(v135 + 16))(v225, v136, v134);
    FMFSchedule.init(fmlSchedule:)(v138, &v132[v137]);
    (*(v135 + 8))(v136, v134);
    v139 = type metadata accessor for FMFSchedule();
    (*(*(v139 - 8) + 56))(&v132[v137], 0, 1, v139);
  }

  LODWORD(v242) = *v132;
  sub_24A37BE24(&v132[*(v129 + 48)], v271, &qword_27EF3F470, &qword_24A4B6960);
  v140 = v275;
  sub_24A4AAFD0();
  sub_24A3F0658(v140, v281);
  LODWORD(v239) = LOBYTE(v281[0]);
  v141 = sub_24A4AB090();
  v142 = *(v141 + 16);
  v260 = v120;
  if (v142)
  {
    v143 = *(v259 + 16);
    v144 = *(v259 + 80);
    v238 = v141;
    v145 = v141 + ((v144 + 32) & ~v144);
    v274 = *(v259 + 72);
    v275 = v143;
    v146 = (v259 + 8);
    v147 = MEMORY[0x277D84F90];
    do
    {
      v150 = v277;
      v149 = v278;
      v275(v277, v145, v278);
      v151 = sub_24A4AADC0();
      v153 = v152;
      (*v146)(v150, v149);
      if (v153)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_24A3ED900(0, *(v147 + 2) + 1, 1, v147);
        }

        v155 = *(v147 + 2);
        v154 = *(v147 + 3);
        if (v155 >= v154 >> 1)
        {
          v147 = sub_24A3ED900((v154 > 1), v155 + 1, 1, v147);
        }

        *(v147 + 2) = v155 + 1;
        v148 = &v147[16 * v155];
        *(v148 + 4) = v151;
        *(v148 + 5) = v153;
      }

      v145 += v274;
      --v142;
    }

    while (v142);
  }

  else
  {

    v147 = MEMORY[0x277D84F90];
  }

  v156 = sub_24A4AB090();
  v157 = *(v156 + 16);
  if (v157)
  {
    v158 = v259 + 16;
    v159 = *(v259 + 16);
    v160 = *(v259 + 80);
    v259 = v156;
    v161 = v156 + ((v160 + 32) & ~v160);
    v274 = *(v158 + 56);
    v275 = v159;
    v162 = (v158 - 8);
    v277 = MEMORY[0x277D84F90];
    do
    {
      v165 = v276;
      v166 = v278;
      v275(v276, v161, v278);
      v167 = sub_24A4AAD90();
      v169 = v168;
      (*v162)(v165, v166);
      if (v169)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v277 = sub_24A3ED900(0, *(v277 + 2) + 1, 1, v277);
        }

        v171 = *(v277 + 2);
        v170 = *(v277 + 3);
        if (v171 >= v170 >> 1)
        {
          v277 = sub_24A3ED900((v170 > 1), v171 + 1, 1, v277);
        }

        v163 = v277;
        *(v277 + 2) = v171 + 1;
        v164 = &v163[16 * v171];
        *(v164 + 4) = v167;
        *(v164 + 5) = v169;
      }

      v161 += v274;
      --v157;
    }

    while (v157);
  }

  else
  {

    v277 = MEMORY[0x277D84F90];
  }

  v172 = v262;
  sub_24A4AB070();
  v174 = v263;
  v173 = v264;
  v232(v263, *MEMORY[0x277D091C8], v264);
  v175 = sub_24A4AAEE0();
  v176 = v234;
  v234(v174, v173);
  v176(v172, v173);
  if (v175)
  {
    v178 = v235;
    v177 = v236;
    if (v266)
    {
      v179 = v266;
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_24A4B4E10;
      *(v180 + 32) = v261;
      *(v180 + 40) = v179;
      v276 = v180;
      v261 = 0;
      v266 = 0;
    }

    else
    {
      v261 = 0;
      v266 = 0;
      v276 = 0;
    }
  }

  else
  {
    v276 = 0;
    v178 = v235;
    v177 = v236;
  }

  LODWORD(v278) = v178 ^ v177;
  if (!*(v147 + 2))
  {

    v147 = v277;
  }

  v181 = v252;
  v182 = sub_24A4AB040();
  v183 = v255;
  MEMORY[0x24C217410](v182);
  (*(v253 + 8))(v181, v254);
  sub_24A4AAAF0();
  v185 = v256;
  v184 = v257;
  v186 = *(v256 + 8);
  v186(v183, v257);
  v274 = sub_24A4AB880();
  v270 = v187;

  v188 = v249;
  sub_24A4AB0A0();
  sub_24A4AAF90();
  v190 = v189;
  v244(v188, v265);
  sub_24A37B740(v271, v272, &qword_27EF3F470, &qword_24A4B6960);
  v191 = v258;
  sub_24A4AAFE0();
  if ((*(v185 + 48))(v191, 1, v184) == 1)
  {
    sub_24A37EF2C(v191, &qword_27EF3F468, &qword_24A4B9F30);
    v192 = 0;
    v193 = 0;
  }

  else
  {
    sub_24A4AAAF0();
    v186(v191, v184);
    v192 = sub_24A4AB880();
    v193 = v194;
  }

  v195 = v241 != v240;
  if (v243 == 5)
  {
    v196 = 259;
  }

  else
  {
    v196 = 3;
  }

  LODWORD(v275) = v196;
  v197 = sub_24A4AAFF0();
  v199 = v198;
  sub_24A4AAF00();
  v200 = v269;
  v201 = v270;
  *v269 = v274;
  v200[1] = v201;
  *(v200 + 42) = 1;
  *(v200 + 43) = v195;
  v202 = type metadata accessor for FMFLocationAlert();
  sub_24A37B740(v272, v200 + v202[12], &qword_27EF3F470, &qword_24A4B6960);
  *(v200 + 40) = v278 & 1;
  *(v200 + 41) = v242;
  v203 = (v200 + v202[13]);
  *v203 = v192;
  v203[1] = v193;
  v204 = (v200 + v202[14]);
  *v204 = v197;
  v204[1] = v199;
  *(v200 + v202[15]) = v239;
  v205 = v276;
  *(v200 + v202[16]) = v277;
  *(v200 + v202[17]) = v147;
  *(v200 + v202[18]) = v205;
  v206 = (v200 + v202[19]);
  v207 = v266;
  *v206 = v261;
  v206[1] = v207;
  v208 = v248;
  [v248 coordinate];
  v200[2] = v209;
  [v208 coordinate];
  v200[3] = v210;
  v211 = v202[26];
  v212 = [v208 timestamp];
  sub_24A4AAAA0();

  (*(v267 + 56))(v200 + v211, 0, 1, v268);
  v200[4] = v190;
  memcpy(v281, v282, sizeof(v281));
  nullsub_1(v281);
  memcpy(v200 + v202[23], v281, 0x130uLL);
  memcpy(v280, v282, sizeof(v280));
  v213 = FMFAddress.displayAddress.getter();
  v214 = (v200 + v202[22]);
  *v214 = v213;
  v214[1] = v215;
  v216 = v200 + v202[20];
  v217 = v245;
  *v216 = v246;
  *(v216 + 1) = v217;
  *(v216 + 8) = v275;
  *(v200 + v202[21]) = v247;
  sub_24A37B740(v273, v200 + v202[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v200 + v202[24]) = 1;
  v218 = 1;
  if ((v278 & 1) == 0)
  {
    v218 = sub_24A4AC270();
  }

  v219 = v251;

  sub_24A37EF2C(v273, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v272, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A37EF2C(v271, &qword_27EF3F470, &qword_24A4B6960);
  result = sub_24A37EF2C(v219, &qword_27EF3F2D0, &qword_24A4B4F50);
  *(v269 + v202[25]) = v218 & 1;
  return result;
}

uint64_t sub_24A42C7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v204 = a3;
  v203 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v179 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v180 = &v169 - v9;
  MEMORY[0x28223BE20](v8);
  v187 = &v169 - v10;
  v11 = sub_24A4AB5D0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v178 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFLocationAlert();
  v201 = *(v14 - 8);
  v202 = v14;
  v15 = *(v201 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v188 = (&v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v186 = &v169 - v18;
  v19 = sub_24A4AAEF0();
  v183 = *(v19 - 8);
  v184 = v19;
  v20 = *(v183 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v182 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v181 = &v169 - v23;
  v195 = sub_24A4AAFB0();
  v197 = *(v195 - 8);
  v24 = v197[8];
  v25 = MEMORY[0x28223BE20](v195);
  v176 = &v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v192 = &v169 - v28;
  MEMORY[0x28223BE20](v27);
  v191 = &v169 - v29;
  v30 = sub_24A4AB130();
  v175 = *(v30 - 8);
  v31 = *(v175 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v174 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v173 = &v169 - v34;
  v194 = sub_24A4AB0C0();
  v196 = *(v194 - 8);
  v35 = v196[8];
  v36 = MEMORY[0x28223BE20](v194);
  v193 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v190 = &v169 - v38;
  v39 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v177 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v169 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v185 = &v169 - v47;
  MEMORY[0x28223BE20](v46);
  v198 = (&v169 - v48);
  v49 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v169 - v51;
  v53 = sub_24A4AAB20();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24A3C9CEC(&qword_27EF40280, &qword_24A4B9F38);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v169 - v60;
  v62 = sub_24A4AB1B0();
  v199 = *(v62 - 8);
  v200 = v62;
  v63 = *(v199 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v169 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v64[1])
  {
    return (*(v201 + 56))(v204, 1, 1, v202);
  }

  v171 = v30;
  v172 = v45;
  v67 = a2;
  v68 = v204;
  v69 = v205;
  v189 = v66;
  v70 = *v64;
  sub_24A4AAAE0();
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_24A37EF2C(v52, &qword_27EF3F468, &qword_24A4B9F30);
    (*(v199 + 56))(v61, 1, 1, v200);
    v71 = v201;
LABEL_7:
    sub_24A37EF2C(v61, &qword_27EF40280, &qword_24A4B9F38);
    return (*(v71 + 56))(v68, 1, 1, v202);
  }

  v73 = (*(v54 + 32))(v57, v52, v53);
  v74 = *(v67 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences);
  MEMORY[0x28223BE20](v73);
  *(&v169 - 2) = v57;

  sub_24A4329EC(sub_24A42E18C, v74, v61);
  v205 = v69;

  (*(v54 + 8))(v57, v53);
  v76 = v199;
  v75 = v200;
  if ((*(v199 + 48))(v61, 1, v200) == 1)
  {
    v68 = v204;
    v71 = v201;
    goto LABEL_7;
  }

  (*(v76 + 32))(v189, v61, v75);
  v77 = v190;
  sub_24A4AB0D0();
  v78 = v196;
  v79 = v194;
  v170 = v196[11];
  v80 = v170(v77, v194);
  v208 = *MEMORY[0x277D09280];
  if (v80 == v208)
  {
    v81 = type metadata accessor for FMFSchedule();
    (*(*(v81 - 8) + 56))(v198, 1, 1, v81);
  }

  else
  {
    v82 = v198;
    if (v80 == *MEMORY[0x277D09288])
    {
      v83 = type metadata accessor for FMFSchedule();
      v84 = *(*(v83 - 8) + 56);
      LODWORD(v175) = 1;
      v84(v82, 1, 1, v83);
      (v78[1])(v77, v79);
      goto LABEL_15;
    }

    if (v80 == *MEMORY[0x277D09290])
    {
      (v78[12])(v77, v79);
      v85 = v175;
      v86 = v173;
      v87 = v171;
      (*(v175 + 32))(v173, v77, v171);
      v88 = v174;
      (*(v85 + 16))(v174, v86, v87);
      FMFSchedule.init(fmlSchedule:)(v88, v82);
      (*(v85 + 8))(v86, v87);
      v89 = type metadata accessor for FMFSchedule();
      v90 = *(*(v89 - 8) + 56);
      LODWORD(v175) = 1;
      v90(v82, 0, 1, v89);
      goto LABEL_15;
    }

    v128 = type metadata accessor for FMFSchedule();
    (*(*(v128 - 8) + 56))(v82, 1, 1, v128);
  }

  (v78[1])(v77, v79);
  LODWORD(v175) = 0;
LABEL_15:
  v91 = v191;
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v93 = v92;
  v95 = v197 + 1;
  v94 = v197[1];
  v96 = v91;
  v97 = v195;
  v94(v96, v195);
  v98 = v192;
  sub_24A4AB0A0();
  sub_24A4AAF80();
  v100 = v99;
  v197 = v95;
  v94(v98, v97);
  v101 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v93 longitude:v100];
  v102 = v193;
  sub_24A4AB0D0();
  v103 = v170(v102, v79);
  if (v103 == v208 || v103 != *MEMORY[0x277D09288] && v103 != *MEMORY[0x277D09290])
  {

    (v196[1])(v102, v79);
LABEL_19:
    sub_24A37EF2C(v198, &qword_27EF3F470, &qword_24A4B6960);
    (*(v199 + 8))(v189, v200);
    v104 = v204;
    sub_24A3BCA40(v203, v204, type metadata accessor for FMFLocationAlert);
    return (*(v201 + 56))(v104, 0, 1, v202);
  }

  (v196[1])(v102, v79);
  v105 = v181;
  sub_24A4AB180();
  v106 = v182;
  sub_24A4AB080();
  v107 = sub_24A4AAEE0();
  v108 = *(v183 + 8);
  v109 = v106;
  v110 = v184;
  v108(v109, v184);
  v108(v105, v110);
  if ((v107 & 1) == 0)
  {

    goto LABEL_19;
  }

  v111 = v186;
  sub_24A3BCA40(v203, v186, type metadata accessor for FMFLocationAlert);
  v196 = v101;
  v112 = v176;
  sub_24A4AB0A0();
  sub_24A4AAF90();
  v114 = v113;
  v94(v112, v195);
  v115 = v178;
  sub_24A4AB190();
  FMFAddress.init(from:)(v115, v207);
  v203 = sub_24A4AB060();
  v197 = v116;
  v117 = v185;
  sub_24A37B740(v198, v185, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A4AAF00();
  v118 = *(v111 + 8);
  v119 = v188;
  *v188 = *v111;
  v119[1] = v118;
  *(v119 + 42) = 1;
  *(v119 + 43) = v175;
  v120 = v177;
  sub_24A37B740(v117, v177, &qword_27EF3F470, &qword_24A4B6960);
  v121 = type metadata accessor for FMFSchedule();
  v122 = *(v121 - 8);
  v123 = *(v122 + 48);
  if (v123(v120, 1, v121) == 1)
  {
    v124 = v202;
    v125 = v172;
    sub_24A37B740(v111 + v202[12], v172, &qword_27EF3F470, &qword_24A4B6960);
    v126 = v123(v120, 1, v121);

    v127 = v179;
    if (v126 != 1)
    {
      sub_24A37EF2C(v120, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v125 = v172;
    sub_24A3B587C(v120, v172, type metadata accessor for FMFSchedule);
    (*(v122 + 56))(v125, 0, 1, v121);

    v124 = v202;
    v127 = v179;
  }

  v129 = v188;
  sub_24A37BE24(v125, v188 + v124[12], &qword_27EF3F470, &qword_24A4B6960);
  *(v129 + 40) = *(v111 + 40);
  *(v129 + 41) = *(v111 + 41);
  v130 = v124[13];
  v132 = *(v111 + v130);
  v131 = *(v111 + v130 + 8);
  v133 = (v129 + v130);
  *v133 = v132;
  v133[1] = v131;
  v193 = v131;
  v134 = v124[14];
  v136 = *(v111 + v134);
  v135 = *(v111 + v134 + 8);
  v137 = (v129 + v134);
  *v137 = v136;
  v137[1] = v135;
  v192 = v135;
  *(v129 + v124[15]) = *(v111 + v124[15]);
  v138 = v124[16];
  v191 = *(v111 + v138);
  *(v129 + v138) = v191;
  v139 = v124[17];
  v194 = *(v111 + v139);
  *(v129 + v139) = v194;
  v140 = v124[18];
  v195 = *(v111 + v140);
  *(v129 + v140) = v195;
  v141 = v124[19];
  v142 = *(v111 + v141);
  v143 = *(v111 + v141 + 8);
  v144 = (v129 + v141);
  *v144 = v142;
  v144[1] = v143;
  sub_24A37B740(v187, v127, &qword_27EF3F460, &unk_24A4B53B0);
  v145 = sub_24A4AAAD0();
  v146 = *(v145 - 8);
  v147 = v111;
  v148 = *(v146 + 48);
  if (v148(v127, 1, v145) == 1)
  {
    v149 = v180;
    sub_24A37B740(v147 + v124[27], v180, &qword_27EF3F460, &unk_24A4B53B0);
    v150 = v148(v127, 1, v145);

    if (v150 != 1)
    {
      sub_24A37EF2C(v127, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v149 = v180;
    (*(v146 + 32))(v180, v127, v145);
    (*(v146 + 56))(v149, 0, 1, v145);
  }

  v151 = v202;
  v152 = v188;
  sub_24A37BE24(v149, v188 + v202[27], &qword_27EF3F460, &unk_24A4B53B0);
  v153 = v196;
  [v153 coordinate];
  *(v152 + 2) = v154;
  [v153 coordinate];
  *(v152 + 3) = v155;
  v156 = v151[26];
  v157 = [v153 timestamp];
  sub_24A4AAAA0();

  (*(v146 + 56))(&v152[v156], 0, 1, v145);
  *(v152 + 4) = v114;
  memcpy(v206, v207, sizeof(v206));
  nullsub_1(v206);
  memcpy(&v152[v151[23]], v206, 0x130uLL);
  v158 = FMFAddress.displayAddress.getter();
  v159 = &v152[v151[22]];
  *v159 = v158;
  v159[1] = v160;
  v161 = v197;

  v162 = v203;
  v163._countAndFlagsBits = v203;
  v163._object = v161;
  FMFDefaultLabel.init(rawValue:)(v163);

  sub_24A37EF2C(v187, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v185, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A37EF2C(v198, &qword_27EF3F470, &qword_24A4B6960);
  (*(v199 + 8))(v189, v200);
  if (v209 == 5)
  {
    v164 = 259;
  }

  else
  {
    v164 = 3;
  }

  v165 = &v152[v151[20]];
  *v165 = v162;
  *(v165 + 1) = v161;
  *(v165 + 8) = v164;
  v166 = v186;
  v152[v151[21]] = *(v186 + v151[21]);
  v152[v151[24]] = *(v166 + v151[24]);
  v167 = *(v166 + v151[25]);
  sub_24A3B599C(v166, type metadata accessor for FMFLocationAlert);
  v152[v151[25]] = v167;
  v168 = v204;
  sub_24A3B587C(v152, v204, type metadata accessor for FMFLocationAlert);
  return (*(v201 + 56))(v168, 0, 1, v151);
}

uint64_t sub_24A42DB6C()
{
  v0 = sub_24A4AAB20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4AB020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB040();
  MEMORY[0x24C217410](v10);
  (*(v6 + 8))(v9, v5);
  v11 = sub_24A4AAB00();
  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

id FMFGenericResponseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A42DD98(uint64_t a1)
{
  v28 = sub_24A4AADD0();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24A4AB090();
  v23 = *(result + 16);
  if (v23)
  {
    v22[1] = v1;
    v8 = 0;
    v26 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v27 = result;
    v9 = *(a1 + 32);
    v24 = v3 + 8;
    v25 = v3 + 16;
    v10 = v9 + 56;
    while (1)
    {
      if (v8 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v11 = v28;
      (*(v3 + 16))(v6, v26 + *(v3 + 72) * v8, v28);
      v12 = sub_24A4AADB0();
      v14 = v13;
      (*(v3 + 8))(v6, v11);
      if (*(v9 + 16))
      {
        v15 = *(v9 + 40);
        sub_24A4AC360();
        sub_24A4AB8F0();
        v16 = sub_24A4AC3A0();
        v17 = -1 << *(v9 + 32);
        v18 = v16 & ~v17;
        if ((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          break;
        }
      }

LABEL_3:
      ++v8;

      result = v27;
      if (v8 == v23)
      {
        goto LABEL_16;
      }
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(v9 + 48) + 16 * v18);
      v21 = *v20 == v12 && v20[1] == v14;
      if (v21 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 1;
  }

  else
  {
LABEL_16:

    return 0;
  }
}

uint64_t FMFContactsDataController.__allocating_init(isSnapshotMode:)(int a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMFContactsDataController.init(isSnapshotMode:)(a1);
  return v5;
}

uint64_t *FMFContactsDataController.deinit()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v26 = *v1;
    v27 = v6;
    sub_24A3C9CEC(&unk_27EF402F0, &unk_24A4B9FC8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = v1[2];
    v11 = v1[3];

    v12 = sub_24A37E99C(0xCuLL, v10, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x24C217CD0](v12, v14, v16, v18);
    v21 = v20;

    v22 = sub_24A37BD58(v19, v21, &v27);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_24A376000, v3, v4, "%{public}s<%s>.deinit", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v23 = v1[3];

  sub_24A3C8470((v1 + 5));

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactUpdateDate, &qword_27EF3F460, &unk_24A4B53B0);
  v24 = *(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_contactRecords);

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache + 8, &unk_27EF40300, &qword_24A4B9FD8);
  return v1;
}

uint64_t FMFContactsDataController.__deallocating_deinit()
{
  FMFContactsDataController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A42E63C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_24A4AA8C0();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AA8B0();
  if ([a1 isKeyAvailable_])
  {
    v7 = [a1 nickname];
    sub_24A4AB850();

    sub_24A4AA8A0();
    v8 = [a1 nickname];
    v9 = sub_24A4AB850();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 2;
  }

  if ([a1 isKeyAvailable_])
  {
    v14 = [a1 givenName];
    sub_24A4AB850();

    sub_24A4AA870();
  }

  if ([a1 isKeyAvailable_])
  {
    v15 = [a1 familyName];
    sub_24A4AB850();

    sub_24A4AA880();
  }

  v16 = sub_24A4AA890();
  v17 = objc_opt_self();
  v18 = [v17 localizedStringFromPersonNameComponents:v16 style:v13 options:0];

  v19 = sub_24A4AB850();
  v21 = v20;

  v22 = sub_24A4AA890();
  v23 = [v17 localizedStringFromPersonNameComponents:v22 style:1 options:0];

  v24 = sub_24A4AB850();
  v26 = v25;

  v27 = [a1 identifier];
  v28 = sub_24A4AB850();
  v30 = v29;

  v31 = sub_24A42F704(a1);
  v33 = v32;
  result = (*(v38 + 8))(v6, v39);
  v35 = v33;
  v36 = v33 >> 60;
  if (v36 <= 0xE)
  {
    result = sub_24A386DFC(v31, v35);
  }

  *a2 = v28;
  *(a2 + 8) = v30;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v36 < 0xF;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26;
  return result;
}

unint64_t sub_24A42E998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = sub_24A4AB820();
  v7 = [v5 predicateForContactsMatchingName_];

  v8 = *(v3 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v9 = sub_24A4ABA50();

  v32[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v32];

  v11 = v32[0];
  if (!v10)
  {
    v14 = v32[0];
    v15 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A4AB630();
    sub_24A378E18(v16, qword_27EF4E260);
    v17 = v15;
    v18 = sub_24A4AB600();
    v19 = sub_24A4ABCE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      v22 = v15;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v23 = sub_24A4AB870();
      v25 = sub_24A37BD58(v23, v24, v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_24A376000, v18, v19, "Error getting contact - %s", v20, 0xCu);
      sub_24A37EEE0(v21);
      MEMORY[0x24C219130](v21, -1, -1);
      MEMORY[0x24C219130](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v12 = sub_24A4ABA70();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_24A4AC060())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);
    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24A376000, v27, v28, "No contact found in store", v29, 2u);
      MEMORY[0x24C219130](v29, -1, -1);
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_6:

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t sub_24A42ED80(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_24A3A1488();

  sub_24A3DB82C(v6);
  v7 = sub_24A42EE0C(a1, a2, a3);

  return v7;
}

unint64_t sub_24A42EE0C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v37[2] = *MEMORY[0x277D85DE8];
  v37[0] = a1;
  v37[1] = a2;
  sub_24A3A1434();
  v6 = sub_24A4ABE60();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = sub_24A4AB820();
    v9 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v11 = sub_24A4AB820();
    v8 = [v10 initWithStringValue_];

    v9 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v12 = [v7 *v9];

  v13 = *(v4 + 56);
  if (!a3)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v14 = sub_24A4ABA50();

  v37[0] = 0;
  v15 = [v13 unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:v37];

  v16 = v37[0];
  if (!v15)
  {
    v19 = v37[0];
    v20 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A4AB630();
    sub_24A378E18(v21, qword_27EF4E260);
    v22 = v20;
    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315138;
      v27 = v20;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v28 = sub_24A4AB870();
      v30 = sub_24A37BD58(v28, v29, v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_24A376000, v23, v24, "Error getting contact - %s", v25, 0xCu);
      sub_24A37EEE0(v26);
      MEMORY[0x24C219130](v26, -1, -1);
      MEMORY[0x24C219130](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v17 = sub_24A4ABA70();
  v18 = v16;

  if (v17 >> 62)
  {
    if (sub_24A4AC060())
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v31 = sub_24A4AB630();
    sub_24A378E18(v31, qword_27EF4E260);
    v32 = sub_24A4AB600();
    v33 = sub_24A4ABCE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A376000, v32, v33, "No contact found in store", v34, 2u);
      MEMORY[0x24C219130](v34, -1, -1);
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

LABEL_9:

LABEL_22:
  v35 = *MEMORY[0x277D85DE8];
  return v17;
}

id sub_24A42F284(uint64_t a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 56);
  if (!a2)
  {
    sub_24A3A1488();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v5 = sub_24A4ABA50();

  v38[0] = 0;
  v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (!v6)
  {
    v12 = v38[0];
    v13 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v15 = v13;
    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136315138;
      v20 = v13;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v21 = sub_24A4AB870();
      v23 = sub_24A37BD58(v21, v22, v38);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_24A376000, v16, v17, "Error fetching me contact - %s", v18, 0xCu);
      sub_24A37EEE0(v19);
      MEMORY[0x24C219130](v19, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v7 = *MEMORY[0x277CBD028];
  v8 = v38[0];
  if ([v6 isKeyAvailable_])
  {
    v9 = v6;
    v10 = [v9 identifier];
    sub_24A4AB850();

    result = v6;
    goto LABEL_26;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A4AB630();
  sub_24A378E18(v24, qword_27EF4E260);
  v25 = sub_24A4AB600();
  v26 = sub_24A4ABCE0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A376000, v25, v26, "Me contact found but no image data. Will try to search by handle", v27, 2u);
    MEMORY[0x24C219130](v27, -1, -1);
  }

  if (!a1)
  {
    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A376000, v33, v34, "FMFInfo does NOT have any email handles.", v35, 2u);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    goto LABEL_24;
  }

  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_24:

LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  v29 = (a1 + 40);
  while (1)
  {
    v30 = *(v29 - 1);
    v31 = *v29;

    v32 = sub_24A42EE0C(v30, v31, 0);
    if (v32)
    {
      break;
    }

    v29 += 2;
    if (!--v28)
    {
      goto LABEL_24;
    }
  }

  v37 = sub_24A42F78C(v32);

  result = v37;
LABEL_26:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A42F704(void *a1)
{
  if (*(v1 + 32) != 1)
  {
    v2 = [a1 imageData];
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = [a1 thumbnailImageData];
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = v2;
  v4 = sub_24A4AAA10();

  return v4;
}

id sub_24A42F78C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A4AC060())
  {
    v4 = 0;
    v5 = *(v1 + 32);
    v1 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v1)
      {
        v6 = MEMORY[0x24C218380](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v9 = [v6 thumbnailImageData];
        if (v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = [v6 imageData];
        if (v9)
        {
LABEL_15:
          v10 = v9;
          v11 = sub_24A4AAA10();
          v13 = v12;

          sub_24A386E10(v11, v13);
          return v7;
        }
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v1 = a1 & 0xC000000000000001;
LABEL_20:
  if (v1)
  {

LABEL_29:
    JUMPOUT(0x24C218380);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v15 = *(a1 + 32);

  return v15;
}

id sub_24A42F93C()
{
  sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A4B9FA0;
  v1 = *MEMORY[0x277CBD068];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD068];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD0E0];
  v6 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBD0E0];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD078];
  v8 = *MEMORY[0x277CBCFC0];
  *(v0 + 80) = *MEMORY[0x277CBD078];
  *(v0 + 88) = v8;
  v18 = *MEMORY[0x277CBD098];
  *(v0 + 96) = *MEMORY[0x277CBD098];
  qword_27EF402B0 = v0;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  return v18;
}

void *sub_24A42FA64(void *a1, void *a2)
{
  v3 = v2;
  v51[2] = *MEMORY[0x277D85DE8];
  v6 = v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache));
  v7 = *(v6 + 8);
  if (*(v7 + 16) && (v8 = sub_24A39B2C8(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
    os_unfair_lock_unlock(v6);
    if (v10 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    os_unfair_lock_unlock(v6);
  }

  v51[0] = a1;
  v51[1] = a2;
  sub_24A3A1434();
  v12 = sub_24A4ABE60();
  v13 = objc_opt_self();
  if (v12)
  {
    v14 = sub_24A4AB820();
    v15 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v17 = sub_24A4AB820();
    v14 = [v16 initWithStringValue_];

    v15 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v18 = [v13 *v15];

  v19 = *(v3 + 56);
  v20 = qword_27EF3EBC8;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
  v22 = sub_24A4ABA50();
  v51[0] = 0;
  v23 = [v19 unifiedContactsMatchingPredicate:v21 keysToFetch:v22 error:v51];

  v24 = v51[0];
  if (!v23)
  {
    v31 = v51[0];
    v24 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 == -1)
    {
LABEL_20:
      v32 = sub_24A4AB630();
      sub_24A378E18(v32, qword_27EF4E260);
      v33 = v24;
      v34 = sub_24A4AB600();
      v35 = sub_24A4ABCC0();

      if (!os_log_type_enabled(v34, v35))
      {

LABEL_29:
        os_unfair_lock_lock(v6);
        goto LABEL_30;
      }

      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v36 = 136315138;
      v37 = v24;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      v38 = sub_24A4AB870();
      v40 = v21;
      v41 = sub_24A37BD58(v38, v39, v51);

      *(v36 + 4) = v41;
      v21 = v40;
      _os_log_impl(&dword_24A376000, v34, v35, "Error getting contact - %s", v36, 0xCu);
      sub_24A37EEE0(v50);
      MEMORY[0x24C219130](v50, -1, -1);
      MEMORY[0x24C219130](v36, -1, -1);

LABEL_28:
      goto LABEL_29;
    }

LABEL_35:
    swift_once();
    goto LABEL_20;
  }

  sub_24A37B428(0, &qword_27EF40320, 0x277CBDA58);
  v25 = sub_24A4ABA70();
  v26 = v24;

  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_24:

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v42 = sub_24A4AB630();
    sub_24A378E18(v42, qword_27EF4E260);

    v34 = sub_24A4AB600();
    v43 = sub_24A4ABCE0();

    if (os_log_type_enabled(v34, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51[0] = v45;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      *(v44 + 14) = sub_24A37BD58(a1, a2, v51);
      _os_log_impl(&dword_24A376000, v34, v43, "No contact found for handle: %{private,mask.hash}s", v44, 0x16u);
      sub_24A37EEE0(v45);
      MEMORY[0x24C219130](v45, -1, -1);
      MEMORY[0x24C219130](v44, -1, -1);
    }

    goto LABEL_28;
  }

  if (!sub_24A4AC060())
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v25 & 0xC000000000000001) == 0)
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v25 + 32);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_35;
  }

  v27 = MEMORY[0x24C218380](0, v25);
LABEL_17:
  v10 = v27;

  os_unfair_lock_lock(v6);
  if (!v10)
  {
LABEL_30:

    v46 = *(v6 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *(v6 + 8);
    *(v6 + 8) = 0x8000000000000000;
    sub_24A430C14(0, a1, a2, isUniquelyReferenced_nonNull_native);

    v10 = 0;
    goto LABEL_31;
  }

  v28 = v10;
  v29 = *(v6 + 8);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = *(v6 + 8);
  *(v6 + 8) = 0x8000000000000000;
  sub_24A430C14(v10, a1, a2, v30);

LABEL_31:
  *(v6 + 8) = v51[0];
  os_unfair_lock_unlock(v6);

LABEL_32:
  v48 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24A4300A0()
{
  v1 = v0 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache));
  if (*(*(v1 + 8) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v1 + 8);
    *(v1 + 8) = 0x8000000000000000;
    sub_24A3C9CEC(&unk_27EF40360, &unk_24A4BA150);
    sub_24A4AC040();
    v2 = *(v1 + 8);
    *(v1 + 8) = v3;
  }

  os_unfair_lock_unlock(v1);
}

unint64_t sub_24A43014C(char a1)
{
  v3 = *(v1 + 40);
  sub_24A4AC360();
  MEMORY[0x24C218780](a1 & 1);
  v4 = sub_24A4AC3A0();

  return sub_24A4301FC(a1 & 1, v4);
}

unint64_t sub_24A4301B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24A4ABEC0();

  return sub_24A43026C(a1, v5);
}

unint64_t sub_24A4301FC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A43026C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A431804(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C2182E0](v9, a1);
      sub_24A431860(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_24A430334(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A39B2C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_24A4A84C0();
      result = v19;
      goto LABEL_8;
    }

    sub_24A4A48D4(v16, a4 & 1);
    v20 = *v5;
    result = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_24A4A7FC0(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_24A430468(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_24A39B2C8(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_24A4A863C();
      v17 = v25;
      goto LABEL_8;
    }

    sub_24A4A4B88(v22, a7 & 1);
    v26 = *v8;
    v17 = sub_24A39B2C8(a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * v17;
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3;
    *(v29 + 24) = a4 & 1;
    *(v29 + 25) = BYTE1(a4) & 1;
    *(v29 + 26) = BYTE2(a4) & 1;
  }

  else
  {
    sub_24A4A8008(v17, a5, a6, a1, a2, a3, a4 & 0x10101, v28);
  }
}

uint64_t sub_24A430600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for LiveRelabilityStats(0);
      return sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for LiveRelabilityStats);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A87E8();
    goto LABEL_7;
  }

  sub_24A4A4E80(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24A4AC2B0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A8070(v12, a2, a3, a1, v18);
}

uint64_t sub_24A43076C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ShallowRelabilityStats(0);
      return sub_24A39CB20(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ShallowRelabilityStats);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A8824();
    goto LABEL_7;
  }

  sub_24A4A4EBC(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24A4AC2B0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A809C(v12, a2, a3, a1, v18);
}

uint64_t sub_24A430918(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24A39B2C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
      return sub_24A431910(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_27EF403A8, &qword_24A4BA760);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24A4A8AC8();
    goto LABEL_7;
  }

  sub_24A4A4F0C(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_24A39B2C8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_24A4AC2B0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24A4A80C8(v12, a2, a3, a1, v18);
}

uint64_t sub_24A430ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A8D14();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A5264(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 56 * v11;

    return sub_24A4318B4(a1, v23);
  }

  else
  {
    sub_24A4A816C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_24A430C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A8EC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A5570(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_24A4A81D0(v11, a2, a3, a1, v22);
}

uint64_t sub_24A430D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_24A39B2C8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_24A39B2C8(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v28);
}

unint64_t sub_24A430F00(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24A43014C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24A4A9814();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24A4A67E4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_24A43014C(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return sub_24A4A8300(v9, a2 & 1, a1, v20);
}

uint64_t sub_24A431020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A39B2C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24A4A9970();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24A4A6A70(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24A39B2C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_24A4A81D0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_24A431168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF40380, &unk_24A4BA160);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v15, &qword_27EF3F818, &qword_24A4B6548);
      v5 = v15;
      v6 = v16;
      result = sub_24A39B2C8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A431298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
    v3 = sub_24A4AC090();
    v4 = a1 + 32;

    while (1)
    {
      sub_24A37B740(v4, &v13, &qword_27EF3F0B0, &qword_24A4B4728);
      v5 = v13;
      v6 = v14;
      result = sub_24A39B2C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24A3A60B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A4313C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF403D8, &qword_24A4BA1A8);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24A39B2C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24A4314CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A431730(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24A431780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_24A4317D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24A431910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A431978(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v56 - v5;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_24A3A11D8(*(v6 + 16), 0);
    v9 = sub_24A3A1268(&v70, v8 + 4, v7, v6);

    sub_24A3A13C0();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v70 = v8;
  sub_24A3A13C8(&v70);
  v10 = v70;
  v57 = *(v70 + 2);
  if (v57)
  {
    v11 = 0;
    v12 = v70 + 32;
    v59 = v70;
    v56 = v70 + 32;
    while (v11 < *(v10 + 2))
    {
      v58 = v11;
      v13 = &v12[16 * v11];
      v14 = *(v13 + 1);
      v65 = *v13;
      v70 = v65;
      v71 = v14;
      v68 = 64;
      v69 = 0xE100000000000000;
      v15 = sub_24A4AAB80();
      v16 = v62;
      (*(*(v15 - 8) + 56))(v62, 1, 1, v15);
      v17 = sub_24A3A1434();

      v54 = v17;
      v55 = v17;
      sub_24A4ABE50();
      LOBYTE(v17) = v18;
      sub_24A37EF2C(v16, &qword_27EF3F650, &qword_24A4B5A10);
      v66 = v14;
      if ((v17 & 1) == 0)
      {
        v41 = [v63 emailAddresses];
        sub_24A3C9CEC(&qword_27EF403C8, &qword_24A4BA198);
        v42 = sub_24A4ABA70();

        v64 = v42 & 0xFFFFFFFFFFFFFF8;
        if (v42 >> 62)
        {
          v43 = sub_24A4AC060();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = 0;
        while (1)
        {
          if (v43 == v44)
          {
            goto LABEL_46;
          }

          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x24C218380](v44, v42);
          }

          else
          {
            if (v44 >= *(v64 + 16))
            {
              goto LABEL_57;
            }

            v45 = *(v42 + 8 * v44 + 32);
          }

          v46 = v45;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          v47 = [v45 value];
          v48 = sub_24A4AB850();
          v50 = v49;

          if (v48 == v65 && v50 == v66)
          {

LABEL_55:

            return 1;
          }

          v52 = sub_24A4AC270();

          ++v44;
          if (v52)
          {
LABEL_54:

            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v19 = [v63 phoneNumbers];
      sub_24A3C9CEC(&qword_27EF403C8, &qword_24A4BA198);
      v20 = sub_24A4ABA70();

      if (v20 >> 62)
      {
        v21 = sub_24A4AC060();
        if (v21)
        {
LABEL_11:
          v22 = 0;
          v64 = v20 & 0xC000000000000001;
          v60 = v20 + 32;
          v61 = v20 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v64)
            {
              v23 = MEMORY[0x24C218380](v22, v20);
            }

            else
            {
              if (v22 >= *(v61 + 16))
              {
                goto LABEL_59;
              }

              v23 = *(v60 + 8 * v22);
            }

            v24 = v23;
            if (__OFADD__(v22++, 1))
            {
              break;
            }

            v26 = [v23 value];
            v27 = [v26 stringValue];

            v28 = sub_24A4AB850();
            v30 = v29;

            v31 = 0xE000000000000000;
            v68 = 0;
            v69 = 0xE000000000000000;
            v32 = HIBYTE(v30) & 0xF;
            if ((v30 & 0x2000000000000000) == 0)
            {
              v32 = v28 & 0xFFFFFFFFFFFFLL;
            }

            v70 = v28;
            v71 = v30;
            v72 = 0;
            v73 = v32;
            v33 = sub_24A4AB960();
            if (v34)
            {
              v35 = v33;
              v36 = v34;
              do
              {
                v67[0] = v35;
                v67[1] = v36;
                MEMORY[0x28223BE20](v33);
                v54 = v67;
                if ((sub_24A4536E8(sub_24A431FF8, (&v56 - 4), 2336, 0xE200000000000000) & 1) == 0)
                {
                  MEMORY[0x24C217D40](v35, v36);
                }

                v33 = sub_24A4AB960();
                v35 = v33;
                v36 = v37;
              }

              while (v37);
              v38 = v68;
              v31 = v69;
            }

            else
            {
              v38 = 0;
            }

            v70 = v38;
            v71 = v31;
            if (sub_24A4AB9F0() == v65 && v39 == v66)
            {

              goto LABEL_55;
            }

            v40 = sub_24A4AC270();

            if (v40)
            {
              goto LABEL_54;
            }

            if (v22 == v21)
            {
              goto LABEL_46;
            }
          }

LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          break;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_11;
        }
      }

LABEL_46:
      v11 = v58 + 1;

      v12 = v56;
      v10 = v59;
      if (v11 == v57)
      {
        goto LABEL_51;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_51:

    return 0;
  }

  return result;
}

uint64_t sub_24A431FF8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

uint64_t sub_24A432098(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FMFBaseAction.__allocating_init(requiresRefresh:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24A43215C()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  return 60;
}

uint64_t sub_24A432370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A37B740(a3, v27 - v11, &qword_27EF3F0C8, &qword_24A4B4840);
  v13 = sub_24A4ABB70();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A37EF2C(v12, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A4ABB40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A4AB8B0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24A432670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A37B740(a3, v27 - v11, &qword_27EF3F0C8, &qword_24A4B4840);
  v13 = sub_24A4ABB70();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A37EF2C(v12, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A4ABB40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A4AB8B0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24A4329EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_24A4AB1B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_24A432BC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v24 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(v24 + 48) + 24 * (__clz(__rbit64(v7)) | (v11 << 6));
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = *(v12 + 18);
      v18 = *v12;
      v20[0] = *v12;
      v20[1] = v13;
      v21 = v14;
      v22 = v15;
      v23 = v16;

      v17 = a1(v20);
      if (v3)
      {
      }

      if (v17)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      v3 = 0;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v18;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A432D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24A37B740(a3, v24 - v10, &qword_27EF3F0C8, &qword_24A4B4840);
  v12 = sub_24A4ABB70();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A37EF2C(v11, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24A4ABB40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24A4AB8B0() + 32;

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

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

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

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24A433010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24A37B740(a3, v24 - v10, &qword_27EF3F0C8, &qword_24A4B4840);
  v12 = sub_24A4ABB70();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A37EF2C(v11, &qword_27EF3F0C8, &qword_24A4B4840);
  }

  else
  {
    sub_24A4ABB60();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24A4ABB40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24A4AB8B0() + 32;

      sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);

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

  sub_24A37EF2C(a3, &qword_27EF3F0C8, &qword_24A4B4840);
  sub_24A3C9CEC(&qword_27EF404A0, &qword_24A4BA6A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t FMFBundleIdsAllowedToUseCache.getter()
{
  if (qword_27EF3EBD0 != -1)
  {
    swift_once();
  }
}

uint64_t FMFManager.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A4333C4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v4[5] = v3;
  swift_unknownObjectWeakAssign();
  v5 = v4[9];
  v6 = v4[10];
  v8[0] = v4[8];
  v8[1] = v5;
  v8[2] = v6;

  sub_24A3A2E74(v8);
}

uint64_t sub_24A433464()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

void (*sub_24A4334A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24A433534;
}

void sub_24A433534(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v6 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v7 = v6[9];
    v8 = v6[10];
    v9[0] = v6[8];
    v9[1] = v7;
    v9[2] = v8;

    sub_24A3A2E74(v9);
  }

  free(v3);
}

uint64_t sub_24A433614(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_24A37B740(a1, &v11 - v6, &qword_27EF3F2D0, &qword_24A4B4F50);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A43D840(v7, v8 + v9);
  swift_endAccess();
  sub_24A433700();
  return sub_24A37EF2C(v7, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A433700()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AB6E0();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 48);
  aBlock[4] = sub_24A441194;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88F40;
  v10 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v14 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_24A4339B4(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24A3C9CEC(&qword_27EF404A8, &qword_24A4BA6C0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = (&v35 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = *(a1 + 128);
  v20 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  swift_beginAccess();
  sub_24A37B740(v19 + v20, v18, &qword_27EF3F2D0, &qword_24A4B4F50);
  v21 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  v22 = *(v7 + 56);
  sub_24A37B740(v18, v10, &qword_27EF3F2D0, &qword_24A4B4F50);
  v23 = a1;
  sub_24A37B740(a1 + v21, &v10[v22], &qword_27EF3F2D0, &qword_24A4B4F50);
  v24 = *(v3 + 48);
  if (v24(v10, 1, v2) == 1)
  {
    sub_24A37EF2C(v18, &qword_27EF3F2D0, &qword_24A4B4F50);
    if (v24(&v10[v22], 1, v2) == 1)
    {
      return sub_24A37EF2C(v10, &qword_27EF3F2D0, &qword_24A4B4F50);
    }

    goto LABEL_6;
  }

  v26 = v36;
  sub_24A37B740(v10, v36, &qword_27EF3F2D0, &qword_24A4B4F50);
  if (v24(&v10[v22], 1, v2) == 1)
  {
    sub_24A37EF2C(v18, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A39A758(v26, type metadata accessor for FMFFriend);
LABEL_6:
    sub_24A37EF2C(v10, &qword_27EF404A8, &qword_24A4BA6C0);
LABEL_7:
    v27 = v23;
    v28 = *(v23 + 128);
    v29 = v23 + v21;
    v30 = v37;
    sub_24A37B740(v29, v37, &qword_27EF3F2D0, &qword_24A4B4F50);
    v31 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
    swift_beginAccess();

    sub_24A43F22C(v30, v28 + v31);
    swift_endAccess();

    v32 = *(v27 + 128);

    sub_24A3AE1EC(0.0);
  }

  v33 = v35;
  sub_24A3997D4(&v10[v22], v35, type metadata accessor for FMFFriend);
  v34 = _s7FMFCore9FMFFriendV2eeoiySbAC_ACtFZ_0(v26, v33);
  sub_24A39A758(v33, type metadata accessor for FMFFriend);
  sub_24A37EF2C(v18, &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A39A758(v26, type metadata accessor for FMFFriend);
  result = sub_24A37EF2C(v10, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((v34 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A433E10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  return sub_24A37B740(v1 + v3, a1, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A433E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A43D840(a1, v1 + v3);
  swift_endAccess();
  sub_24A433700();
  return sub_24A37EF2C(a1, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t (*sub_24A433EF4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24A433F58;
}

uint64_t sub_24A433F58(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_24A433700();
  }

  return result;
}

uint64_t sub_24A433FCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 184);
  if (v4)
  {
    v5 = *a1;
    swift_beginAccess();
    return sub_24A37B740(v4 + v5, a2, &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    v7 = type metadata accessor for FMFLocation();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_24A434098()
{
  v1 = *(*(v0 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3FDB0, &qword_24A4BA250);
  sub_24A4ABD70();
}

uint64_t sub_24A434128()
{
  v1 = *(*(v0 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4ABD70();
}

uint64_t sub_24A4341B8()
{
  v1 = *(*(v0 + 88) + 56);

  sub_24A3C9CEC(&qword_27EF3FDC8, &qword_24A4B8A28);
  sub_24A4ABD70();
}

uint64_t FMFManager.__allocating_init(configuration:tabInfo:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FMFManager.init(configuration:tabInfo:)(a1, a2);
  return v7;
}

uint64_t FMFManager.deinit()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v35);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFManager<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = *(v1 + 24);

  sub_24A3C8470(v1 + 32);

  v21 = *(v1 + 56);

  v22 = *(v1 + 64);
  v23 = *(v1 + 72);
  v24 = *(v1 + 80);

  v25 = *(v1 + 88);

  v26 = *(v1 + 104);

  v27 = *(v1 + 112);

  v28 = *(v1 + 128);

  sub_24A37EEE0((v1 + 136));
  v29 = *(v1 + 176);

  v30 = *(v1 + 192);

  v31 = *(v1 + 200);

  v32 = *(v1 + 208);

  v33 = *(v1 + 216);

  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend, &qword_27EF3F2D0, &qword_24A4B4F50);
  return v1;
}

uint64_t FMFManager.__deallocating_deinit()
{
  FMFManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A434610()
{
  v1[0] = MEMORY[0x277D84F90];
  v1[1] = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  sub_24A3A2E74(v1);
  return swift_bridgeObjectRelease_n();
}

void sub_24A434658()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v22 = v11;
    v23 = v4;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A376000, v15, v16, "FMFManager: start refreshing", v17, 2u);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    *(v1 + 224) = 1;
    v18 = v1[6];
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v2;
    aBlock[4] = sub_24A43EBA0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88808;
    v20 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v24 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v7, v20);
    _Block_release(v20);
    (*(v23 + 8))(v7, v3);
    (*(v9 + 8))(v13, v22);
  }
}

uint64_t sub_24A434A14(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  if (sub_24A3A290C())
  {
    v6 = sub_24A4ABB70();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = a1;

    sub_24A433010(0, 0, v5, &unk_24A4BA698, v7);
  }

  else if (a1[25])
  {
    v8 = *(a1[11] + 56);
    v9 = a1[25];

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    sub_24A469BEC(v13[1]);
  }

  v10 = a1[11];

  sub_24A44CB28();

  v11 = a1[16];

  sub_24A3D18E8();
}

uint64_t sub_24A434BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24A3C0000, 0, 0);
}

uint64_t sub_24A434C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24A434D5C;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v4 = sub_24A434D30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A434D5C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_24A434DC8()
{
  swift_beginAccess();
  sub_24A39997C(v0 + 136, v4);
  v1 = v5;
  v2 = v6;
  sub_24A37EACC(v4, v5);
  (*(v2 + 56))(v1, v2);
  return sub_24A37EEE0(v4);
}

void sub_24A434E4C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v22 = v11;
    v23 = v4;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A376000, v15, v16, "FMFManager: stop refreshing", v17, 2u);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    *(v1 + 224) = 0;
    v18 = v1[6];
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v2;
    aBlock[4] = sub_24A43EBA8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88858;
    v20 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v24 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v7, v20);
    _Block_release(v20);
    (*(v23 + 8))(v7, v3);
    (*(v9 + 8))(v13, v22);
  }
}

uint64_t sub_24A435204(void *a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = a1[16];

  sub_24A3D1B70();

  v7 = a1[11];

  sub_24A44E38C();

  v8 = a1[11];

  sub_24A44E598();

  result = sub_24A3A290C();
  if (result)
  {
    v10 = sub_24A4ABB70();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a1;

    sub_24A432D64(0, 0, v5, &unk_24A4BA680, v11);
  }

  else if (a1[25])
  {
    v12 = a1[25];

    sub_24A46A014();
  }

  return result;
}

uint64_t sub_24A4353A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = *(type metadata accessor for LiveRelabilityStats(0) - 8);
  v4[24] = v5;
  v6 = *(v5 + 64) + 15;
  v4[25] = swift_task_alloc();
  v7 = *(type metadata accessor for ShallowRelabilityStats(0) - 8);
  v4[26] = v7;
  v8 = *(v7 + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v10 = sub_24A4AAAD0();
  v4[29] = v10;
  v11 = *(v10 - 8);
  v4[30] = v11;
  v12 = *(v11 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A435554, 0, 0);
}

uint64_t sub_24A435554()
{
  v1 = *(v0[23] + 208);
  v0[33] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A435640, v1, 0);
  }

  else
  {
    v3 = v0[31];
    v2 = v0[32];
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24A435640()
{
  v1 = *(v0 + 264);
  sub_24A425294();

  return MEMORY[0x2822009F8](sub_24A4356B0, 0, 0);
}

uint64_t sub_24A4356B0()
{
  v1 = *(v0[23] + 208);
  v0[34] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24A43579C, v1, 0);
  }

  else
  {
    v3 = v0[31];
    v2 = v0[32];
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24A43579C()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24A435828, 0, 0);
}

uint64_t sub_24A435828()
{
  v1 = *(v0[23] + 208);
  v0[36] = v1;
  if (v1)
  {
    v2 = sub_24A43597C;
LABEL_5:
    v7 = v2;

    return MEMORY[0x2822009F8](v7, v1, 0);
  }

  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[28];

  (*(v5 + 56))(v6, 1, 1, v4);
  sub_24A37EF2C(v0[28], &qword_27EF3F460, &unk_24A4B53B0);
  v1 = *(v0[23] + 208);
  v0[37] = v1;
  if (v1)
  {
    v2 = sub_24A435E0C;
    goto LABEL_5;
  }

  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[25];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A43597C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A37B740(v1 + v3, v2, &qword_27EF3F460, &unk_24A4B53B0);

  return MEMORY[0x2822009F8](sub_24A435A30, 0, 0);
}

uint64_t sub_24A435A30()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[35];
  if (v4 != 1)
  {
    v7 = v0[31];
    v8 = v0[27];
    v43 = v0[26];
    (*(v1 + 32))(v0[32], v3, v2);
    sub_24A4AAAC0();
    sub_24A4AAA50();
    v10 = v9;
    v42 = *(v1 + 8);
    v11 = v42(v7, v2);
    v14 = 0;
    v44 = v5;
    v15 = v5 + 64;
    v16 = -1;
    v17 = -1 << *(v5 + 32);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & *(v5 + 64);
    v19 = (63 - v17) >> 6;
    while (v18)
    {
      v20 = v14;
LABEL_11:
      v21 = v0[27];
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      sub_24A399284(*(v44 + 56) + *(v43 + 72) * (v22 | (v20 << 6)), v21, type metadata accessor for ShallowRelabilityStats);
      v23 = *v21;
      v24 = *(v8 + 8);
      v25 = *(v8 + 16);
      v26 = *(v8 + 24);
      sub_24A39A758(v21, type metadata accessor for ShallowRelabilityStats);
      v27 = sub_24A4AB820();
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      *(v28 + 24) = v24;
      *(v28 + 25) = *(v0 + 84);
      *(v28 + 28) = *(v0 + 339);
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      *(v28 + 48) = v10;
      v0[12] = sub_24A411334;
      v0[13] = v28;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_24A41133C;
      v0[11] = &unk_285D88EA0;
      v29 = _Block_copy(v0 + 8);
      v30 = v0[13];

      AnalyticsSendEventLazy();
      _Block_release(v29);
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v31 = v0[35];
        v32 = v0[32];
        v33 = v0[29];

        v42(v32, v33);
        goto LABEL_14;
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        v14 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v6 = v0[35];

  sub_24A37EF2C(v0[28], &qword_27EF3F460, &unk_24A4B53B0);
LABEL_14:
  v34 = *(v0[23] + 208);
  v0[37] = v34;
  if (v34)
  {

    v11 = sub_24A435E0C;
    v12 = v34;
    v13 = 0;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v36 = v0[31];
  v35 = v0[32];
  v38 = v0[27];
  v37 = v0[28];
  v39 = v0[25];

  v40 = v0[1];

  return v40();
}

uint64_t sub_24A435E0C()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24A435E98, 0, 0);
}

void sub_24A435E98()
{
  v1 = 0;
  v2 = v0[38];
  v26 = v0[24];
  v27 = v0[25];
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = v0[25];
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_24A399284(*(v2 + 56) + *(v26 + 72) * (v9 | (v7 << 6)), v8, type metadata accessor for LiveRelabilityStats);
      v10 = *v8;
      v11 = *(v27 + 8);
      sub_24A39A758(v8, type metadata accessor for LiveRelabilityStats);
      v12 = sub_24A4AB820();
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      v0[6] = sub_24A411714;
      v0[7] = v13;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_24A41133C;
      v0[5] = &unk_285D88E50;
      v14 = _Block_copy(v0 + 2);
      v15 = v0[7];

      AnalyticsSendEventLazy();
      _Block_release(v14);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  v16 = v0[38];
  v17 = v0[23];

  v18 = *(v17 + 208);
  v0[39] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[40] = v19;
    *v19 = v0;
    v19[1] = sub_24A436198;

    sub_24A3F7458();
  }

  else
  {
    v21 = v0[31];
    v20 = v0[32];
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[25];

    v25 = v0[1];

    v25();
  }
}

uint64_t sub_24A436198()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A436314, 0, 0);
  }

  else
  {
    v4 = v3[39];

    v6 = v3[31];
    v5 = v3[32];
    v8 = v3[27];
    v7 = v3[28];
    v9 = v3[25];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_24A436314()
{
  v1 = v0[39];
  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];

  v7 = v0[1];
  v8 = v0[41];

  return v7();
}

void sub_24A4363BC()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 225) & 1) == 0)
  {
    v20 = v10;
    v21 = v3;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A4AB630();
    sub_24A378E18(v13, qword_27EF4E260);
    v14 = sub_24A4AB600();
    v15 = sub_24A4ABCE0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A376000, v14, v15, "FMFManager: forced refresh", v16, 2u);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    v17 = *(v1 + 48);
    aBlock[4] = sub_24A43EBB0;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D88880;
    v18 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v22 = MEMORY[0x277D84F90];
    sub_24A378668(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v12, v6, v18);
    _Block_release(v18);
    (*(v21 + 8))(v6, v2);
    (*(v8 + 8))(v12, v20);
  }
}

uint64_t sub_24A436730(uint64_t a1)
{
  v1 = *(a1 + 128);

  sub_24A3AE1EC(0.0);
}

uint64_t sub_24A436774(uint64_t a1, void *a2)
{
  v86 = a2;
  v3 = type metadata accessor for FMFFriend();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v87 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v81 - v11;
  v13 = *(a1 + 16);
  v84 = a1;
  v81 = v10;
  v82 = v13;
  if (v13)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = *(v10 + 72);
    v16 = a1 + v14;
    v17 = MEMORY[0x277D84F90];
    v85 = v14;
    do
    {
      sub_24A399284(v16, v12, type metadata accessor for FMFFriend);
      v18 = v12[*(v3 + 44)];
      if (v18 == 2 || (v18 & 1) == 0)
      {
        sub_24A39A758(v12, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A3997D4(v12, v9, type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, *(v17 + 16) + 1, 1);
          v14 = v85;
          v17 = v88;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24A39E574(v20 > 1, v21 + 1, 1);
          v14 = v85;
          v17 = v88;
        }

        *(v17 + 16) = v21 + 1;
        sub_24A3997D4(v9, v17 + v14 + v21 * v15, type metadata accessor for FMFFriend);
      }

      v16 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v23 = v83;
  v22 = v84;
  v24 = v86;
  if (v86)
  {
    v25 = v86;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);
    v27 = v24;

    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v88 = v31;
      *v30 = 134218498;
      *(v30 + 4) = *(v17 + 16);

      *(v30 + 12) = 2048;
      *(v30 + 14) = v82;

      *(v30 + 22) = 2080;
      swift_getErrorValue();
      v32 = sub_24A4AC310();
      v34 = sub_24A37BD58(v32, v33, &v88);

      *(v30 + 24) = v34;
      _os_log_impl(&dword_24A376000, v28, v29, "FMFManager: received cached %ld proactive friends (out of %ld) (error=%s)", v30, 0x20u);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    else
    {
    }
  }

  v35 = *(v23 + 56);
  v36 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers;
  v37 = *(v35 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (!v37 || (v38 = *(v37 + 16)) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v52 = sub_24A4AB630();
    sub_24A378E18(v52, qword_27EF4E260);

    v53 = sub_24A4AB600();
    v54 = sub_24A4ABCE0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = *(v17 + 16);

      *(v55 + 12) = 2048;
      *(v55 + 14) = v82;

      _os_log_impl(&dword_24A376000, v53, v54, "FMFManager: received %ld proactive friends (out of %ld)", v55, 0x16u);
      MEMORY[0x24C219130](v55, -1, -1);

      v56 = *(v35 + v36);
      if (!v56)
      {
      }
    }

    else
    {

      v56 = *(v35 + v36);
      if (!v56)
      {
      }
    }

    v57 = *(v56 + 32);
    if (v57)
    {
      v58 = *(v56 + 40);

      v57(v23, v22, v17, v17, v86);
      sub_24A3C84A8(v57);
    }
  }

  v39 = *(v37 + 24);

  v85 = v39;
  v40 = v38(v23, v22, v17);
  v41 = v40;
  if (v86 || (v42 = *(v40 + 16)) == 0)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v60 = sub_24A4AB630();
    sub_24A378E18(v60, qword_27EF4E260);

    v61 = sub_24A4AB600();
    v62 = sub_24A4ABCE0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      v64 = *(v17 + 16);

      *(v63 + 4) = v64;

      _os_log_impl(&dword_24A376000, v61, v62, "FMFManager: received %ld proactive friends but no proactive location asked", v63, 0xCu);
      MEMORY[0x24C219130](v63, -1, -1);
    }

    else
    {
    }

    v74 = *(v35 + v36);
    v75 = v84;
    if (v74)
    {
      v76 = *(v74 + 32);
      if (v76)
      {
        v77 = *(v74 + 40);

        v76(v23, v75, v41, v41, v86);
        sub_24A3C84A8(v38);
        v78 = v76;
LABEL_55:
        sub_24A3C84A8(v78);
      }
    }

LABEL_54:
    v78 = v38;
    goto LABEL_55;
  }

  v43 = v41 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v44 = *(v81 + 72);
  v45 = MEMORY[0x277D84F90];
  do
  {
    v46 = v87;
    sub_24A399284(v43, v87, type metadata accessor for FMFFriend);
    v48 = *v46;
    v47 = v46[1];

    sub_24A39A758(v46, type metadata accessor for FMFFriend);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_24A3ED900(0, *(v45 + 2) + 1, 1, v45);
    }

    v50 = *(v45 + 2);
    v49 = *(v45 + 3);
    if (v50 >= v49 >> 1)
    {
      v45 = sub_24A3ED900((v49 > 1), v50 + 1, 1, v45);
    }

    *(v45 + 2) = v50 + 1;
    v51 = &v45[16 * v50];
    *(v51 + 4) = v48;
    *(v51 + 5) = v47;
    v43 += v44;
    --v42;
  }

  while (v42);
  v88 = v45;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A378704(&qword_27EF40498, &qword_27EF3F108, &qword_24A4B4950);
  v65 = sub_24A4AB800();
  v67 = v66;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v68 = sub_24A4AB630();
  sub_24A378E18(v68, qword_27EF4E260);

  v69 = sub_24A4AB600();
  v70 = sub_24A4ABCE0();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88 = v72;
    *v71 = 134218498;
    *(v71 + 4) = v82;

    *(v71 + 12) = 2048;
    *(v71 + 14) = *(v41 + 16);

    *(v71 + 22) = 2080;
    v73 = sub_24A37BD58(v65, v67, &v88);

    *(v71 + 24) = v73;
    _os_log_impl(&dword_24A376000, v69, v70, "FMFManager: received %ld friends incl. %ld proactive locations asked for %s…", v71, 0x20u);
    sub_24A37EEE0(v72);
    MEMORY[0x24C219130](v72, -1, -1);
    MEMORY[0x24C219130](v71, -1, -1);
  }

  else
  {
  }

  v79 = v83;
  if (!*(v83 + 192))
  {
    goto LABEL_54;
  }

  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v84;
  v80[4] = v41;

  sub_24A417628(v41, sub_24A44100C, v80);
  sub_24A3C84A8(v38);
}

void sub_24A4371F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v36 = a2;
  v5 = type metadata accessor for FMFFriend();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v35 = v10;
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      sub_24A399284(v11, v9, type metadata accessor for FMFFriend);
      v14 = *v9;
      v15 = v9[1];

      sub_24A39A758(v9, type metadata accessor for FMFFriend);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24A3ED900(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_24A3ED900((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v37 = v13;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A378704(&qword_27EF40498, &qword_27EF3F108, &qword_24A4B4950);
  v19 = sub_24A4AB800();
  v21 = v20;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 134218242;
    *(v25 + 4) = v35;

    *(v25 + 12) = 2080;
    v27 = sub_24A37BD58(v19, v21, &v37);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_24A376000, v23, v24, "FMFManager: fetched proactive %ld locations for %s", v25, 0x16u);
    sub_24A37EEE0(v26);
    MEMORY[0x24C219130](v26, -1, -1);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  else
  {
  }

  v28 = v36;
  v29 = *(*(v36 + 56) + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (v29)
  {
    v30 = *(v29 + 32);
    if (v30)
    {
      v31 = *(v29 + 40);

      v30(v28, v33, v34, a1, 0);
      sub_24A3C84A8(v30);
    }
  }
}