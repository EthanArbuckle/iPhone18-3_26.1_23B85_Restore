__n128 sub_2442F8450(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2442F849C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_2442F84E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFRecipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFRecipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442F86C0()
{
  result = qword_27EDDF868;
  if (!qword_27EDDF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF868);
  }

  return result;
}

unint64_t sub_2442F8718()
{
  result = qword_27EDDF870;
  if (!qword_27EDDF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF870);
  }

  return result;
}

unint64_t sub_2442F8770()
{
  result = qword_27EDDF878;
  if (!qword_27EDDF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF878);
  }

  return result;
}

uint64_t sub_2442F87C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_244313108() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D695470657270 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D69546B6F6F63 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065 || (sub_244313108() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6959657069636572 && a2 == 0xEB00000000646C65 || (sub_244313108() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_244313108() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7463655370657473 && a2 == 0xEC000000736E6F69 || (sub_244313108() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024431C620 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_2442F8BA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2442F8C08(uint64_t a1)
{
  v2 = sub_2442C6564(&qword_27EDDF880, &qword_244318838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2442F8CD8()
{
  v1 = *v0;
  v2 = 0x7372656D6974;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x696C705370657473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6572757361656DLL;
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

uint64_t sub_2442F8D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442FA6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442F8DC0(uint64_t a1)
{
  v2 = sub_2442F95D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F8DFC(uint64_t a1)
{
  v2 = sub_2442F95D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442F8E38(uint64_t a1)
{
  v2 = sub_2442F9678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F8E74(uint64_t a1)
{
  v2 = sub_2442F9678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442F8EB0(uint64_t a1)
{
  v2 = sub_2442F96CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F8EEC(uint64_t a1)
{
  v2 = sub_2442F96CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442F8F28(uint64_t a1)
{
  v2 = sub_2442F9720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F8F64(uint64_t a1)
{
  v2 = sub_2442F9720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442F8FA0(uint64_t a1)
{
  v2 = sub_2442F9624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F8FDC(uint64_t a1)
{
  v2 = sub_2442F9624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442F9018(uint64_t a1)
{
  v2 = sub_2442F9774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F9054(uint64_t a1)
{
  v2 = sub_2442F9774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFStructuredComponent.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDF888, &qword_244318840);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = sub_2442C6564(&qword_27EDDF890, &qword_244318848);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = sub_2442C6564(&qword_27EDDF898, &qword_244318850);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = sub_2442C6564(&qword_27EDDF8A0, &qword_244318858);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = sub_2442C6564(&qword_27EDDF8A8, &qword_244318860);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = sub_2442C6564(&qword_27EDDF8B0, &qword_244318868);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  sub_2442C65AC(v25, v24);
  sub_2442F95D0();
  sub_244313238();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_2442F9720();
      v38 = v52;
      sub_244313058();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_2442F9774();
      v38 = v52;
      sub_244313058();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_2442F96CC();
      v29 = v40;
      v30 = v52;
      sub_244313058();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_2442F9678();
      v29 = v43;
      v30 = v52;
      sub_244313058();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_2442F9624();
      v29 = v46;
      v30 = v52;
      sub_244313058();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_2442F95D0()
{
  result = qword_27EDDF8B8;
  if (!qword_27EDDF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8B8);
  }

  return result;
}

unint64_t sub_2442F9624()
{
  result = qword_27EDDF8C0;
  if (!qword_27EDDF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8C0);
  }

  return result;
}

unint64_t sub_2442F9678()
{
  result = qword_27EDDF8C8;
  if (!qword_27EDDF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8C8);
  }

  return result;
}

unint64_t sub_2442F96CC()
{
  result = qword_27EDDF8D0;
  if (!qword_27EDDF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8D0);
  }

  return result;
}

unint64_t sub_2442F9720()
{
  result = qword_27EDDF8D8;
  if (!qword_27EDDF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8D8);
  }

  return result;
}

unint64_t sub_2442F9774()
{
  result = qword_27EDDF8E0;
  if (!qword_27EDDF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF8E0);
  }

  return result;
}

uint64_t IARFStructuredComponent.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t IARFStructuredComponent.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = sub_2442C6564(&qword_27EDDF8E8, &qword_244318870);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = sub_2442C6564(&qword_27EDDF8F0, &qword_244318878);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = sub_2442C6564(&qword_27EDDF8F8, &qword_244318880);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = sub_2442C6564(&qword_27EDDF900, &qword_244318888);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = sub_2442C6564(&qword_27EDDF908, &qword_244318890);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = sub_2442C6564(&qword_27EDDF910, &unk_244318898);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  sub_2442C65AC(a1, v25);
  sub_2442F95D0();
  v26 = v69;
  sub_244313228();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_244313048();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_2442CECD0();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_244312EE8();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_2442C6564(&qword_27EDDEC40, &qword_244313E00) + 48);
    *v41 = &type metadata for IARFStructuredComponent;
    sub_244312FC8();
    sub_244312EC8();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_2442F9720();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_244312FB8();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_2442F9774();
      v45 = v54;
      sub_244312FB8();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_2442F96CC();
    v46 = v31;
    v47 = v54;
    sub_244312FB8();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_2442F9624();
    v49 = v64;
    v50 = v54;
    sub_244312FB8();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return sub_2442C6908(v43);
  }

  v75 = 3;
  sub_2442F9678();
  v38 = v54;
  sub_244312FB8();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return sub_2442C6908(v43);
}

unint64_t sub_2442FA03C()
{
  result = qword_27EDDF918;
  if (!qword_27EDDF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF918);
  }

  return result;
}

uint64_t sub_2442FA0D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2442FA168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442FA27C()
{
  result = qword_27EDDF920;
  if (!qword_27EDDF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF920);
  }

  return result;
}

unint64_t sub_2442FA2D4()
{
  result = qword_27EDDF928;
  if (!qword_27EDDF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF928);
  }

  return result;
}

unint64_t sub_2442FA32C()
{
  result = qword_27EDDF930;
  if (!qword_27EDDF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF930);
  }

  return result;
}

unint64_t sub_2442FA384()
{
  result = qword_27EDDF938;
  if (!qword_27EDDF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF938);
  }

  return result;
}

unint64_t sub_2442FA3DC()
{
  result = qword_27EDDF940;
  if (!qword_27EDDF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF940);
  }

  return result;
}

unint64_t sub_2442FA434()
{
  result = qword_27EDDF948;
  if (!qword_27EDDF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF948);
  }

  return result;
}

unint64_t sub_2442FA48C()
{
  result = qword_27EDDF950;
  if (!qword_27EDDF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF950);
  }

  return result;
}

unint64_t sub_2442FA4E4()
{
  result = qword_27EDDF958;
  if (!qword_27EDDF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF958);
  }

  return result;
}

unint64_t sub_2442FA53C()
{
  result = qword_27EDDF960;
  if (!qword_27EDDF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF960);
  }

  return result;
}

unint64_t sub_2442FA594()
{
  result = qword_27EDDF968;
  if (!qword_27EDDF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF968);
  }

  return result;
}

unint64_t sub_2442FA5EC()
{
  result = qword_27EDDF970;
  if (!qword_27EDDF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF970);
  }

  return result;
}

unint64_t sub_2442FA644()
{
  result = qword_27EDDF978;
  if (!qword_27EDDF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF978);
  }

  return result;
}

unint64_t sub_2442FA69C()
{
  result = qword_27EDDF980;
  if (!qword_27EDDF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF980);
  }

  return result;
}

uint64_t sub_2442FA6F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372656D6974 && a2 == 0xE600000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEC00000073746E65 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024431C640 == a2 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024431C660 == a2 || (sub_244313108() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C705370657473 && a2 == 0xED0000676E697474)
  {

    return 4;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442FA8C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = Table.offset(_:)(4);
  if (v7)
  {
    v8 = __OFADD__(v7, v6);
    result = (v7 + v6);
    if (v8)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v9 = Table.directString(at:)(result);
    countAndFlagsBits = v9.value._countAndFlagsBits;
    object = v9.value._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  result = Table.offset(_:)(6);
  v95 = v6;
  if (!result)
  {
    goto LABEL_28;
  }

  v12 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v13 = *(v3 + 24);
  v14 = *(v13 + v12);
  if (v14 != 2)
  {
    if (v14 == 1)
    {
      result = Table.offset(_:)(8);
      if (result)
      {
        v15 = result + v95;
        if (__OFADD__(result, v95))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v16 = *(v13 + v15);
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        result = Table.offset(_:)(4);
        if (result)
        {
          v18 = result + v17;
          if (__OFADD__(result, v17))
          {
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v19 = Table.directString(at:)(v18);
          v20 = v19.value._countAndFlagsBits;

          v89 = v19.value._object;
          if (v19.value._object)
          {
            v87 = 0;
            v88 = 0;
            v86 = 0;
            goto LABEL_30;
          }
        }
      }
    }

    goto LABEL_28;
  }

  result = Table.offset(_:)(8);
  if (!result)
  {
LABEL_28:
    v20 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v28 = -1;
    goto LABEL_29;
  }

  v21 = result + v95;
  if (__OFADD__(result, v95))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v22 = *(v13 + v21);
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = Table.offset(_:)(4);
  v24 = result + v23;
  if (__OFADD__(result, v23))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v25 = Table.directString(at:)(v24);
  v89 = v25.value._object;
  if (!v25.value._object)
  {

    goto LABEL_28;
  }

  v20 = v25.value._countAndFlagsBits;
  v26 = Table.offset(_:)(6);
  v8 = __OFADD__(v26, v23);
  result = (v26 + v23);
  if (v8)
  {
LABEL_105:
    __break(1u);
    return result;
  }

  v27 = Table.directString(at:)(result);
  v88 = v27.value._countAndFlagsBits;

  v87 = v27.value._object;
  if (!v27.value._object)
  {

    goto LABEL_28;
  }

  v28 = 1;
LABEL_29:
  v86 = v28;
LABEL_30:
  v103.value._countAndFlagsBits = v3;
  v103.value._object = v4;
  v104 = v5;
  LODWORD(v105) = v95;
  result = IARFFB_StepSection.stepsCount.getter(result);
  if ((result & 0x80000000) != 0)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v29 = result;
  v82 = v20;
  v83 = object;
  v84 = countAndFlagsBits;
  v85 = a2;
  v90 = v5;
  v91 = v4;
  v94 = v3;
  if (result)
  {
    v30 = 0;
    v98 = MEMORY[0x277D84F90];
    v31 = -536870912;
    v32 = v95;
    while (1)
    {
      v33 = *(v3 + 24);
      v34 = *(v33 + v32);
      v8 = __OFSUB__(v32, v34);
      v35 = v32 - v34;
      if (v8)
      {
        break;
      }

      if (*(v33 + v35) < 0xBu)
      {
        goto LABEL_46;
      }

      v8 = __OFADD__(v35, 10);
      v36 = v35 + 10;
      if (v8)
      {
        goto LABEL_81;
      }

      v37 = *(v33 + v36);
      if (v37)
      {
        v8 = __OFADD__(v37, v32);
        v38 = v37 + v32;
        if (v8)
        {
          goto LABEL_83;
        }

        v39 = *(v33 + v38);
        v8 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v8)
        {
          goto LABEL_84;
        }

        v8 = __OFADD__(v40, 4);
        v41 = v40 + 4;
        if (v8)
        {
          goto LABEL_85;
        }

        if (v31 >> 30 != 3)
        {
          goto LABEL_86;
        }

        v8 = __OFADD__(v41, v30);
        v42 = v41 + v30;
        if (v8)
        {
          goto LABEL_87;
        }

        v43 = *(v33 + v42);
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_88;
        }

        v45 = v3;
        v47 = v90;
        v46 = v91;
      }

      else
      {
LABEL_46:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v44 = 0;
      }

      v99 = v45;
      v100 = v46;
      v101 = v47;
      v102 = v44;
      sub_2442C8094(&v99, &v103);
      v49 = v103.value._countAndFlagsBits;
      v48 = v103.value._object;
      v50 = v104;
      v51 = v105;
      v52 = v107;
      if (v107)
      {
        v92 = v106;
        v96 = v108;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2442DC77C(0, *(v98 + 16) + 1, 1, v98);
          v98 = result;
        }

        v54 = *(v98 + 16);
        v53 = *(v98 + 24);
        if (v54 >= v53 >> 1)
        {
          result = sub_2442DC77C((v53 > 1), v54 + 1, 1, v98);
          v98 = result;
        }

        *(v98 + 16) = v54 + 1;
        v55 = v98 + 56 * v54;
        *(v55 + 32) = v49;
        *(v55 + 40) = v48;
        *(v55 + 48) = v50;
        *(v55 + 56) = v51;
        v3 = v94;
        *(v55 + 64) = v92;
        v32 = v95;
        *(v55 + 72) = v52;
        *(v55 + 80) = v96;
      }

      else
      {
        result = sub_2442FBDC8(v103.value._countAndFlagsBits, v103.value._object, v104, v105, v106, 0);
      }

      ++v31;
      v30 += 4;
      if (!--v29)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

  v98 = MEMORY[0x277D84F90];
  v32 = v95;
LABEL_54:
  v103.value._countAndFlagsBits = v3;
  v103.value._object = v91;
  v104 = v90;
  LODWORD(v105) = v32;
  result = IARFFB_StepSection.ingredientsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_96;
  }

  v56 = result;
  if (result)
  {
    v57 = 0;
    v97 = MEMORY[0x277D84F90];
    v58 = -536870912;
    while (1)
    {
      v59 = *(v3 + 24);
      v60 = *(v59 + v32);
      v8 = __OFSUB__(v32, v60);
      v61 = v32 - v60;
      if (v8)
      {
        break;
      }

      if (*(v59 + v61) < 0xDu)
      {
        goto LABEL_70;
      }

      v8 = __OFADD__(v61, 12);
      v62 = v61 + 12;
      if (v8)
      {
        goto LABEL_82;
      }

      v63 = *(v59 + v62);
      if (v63)
      {
        v8 = __OFADD__(v63, v32);
        v64 = v63 + v32;
        if (v8)
        {
          goto LABEL_89;
        }

        v65 = *(v59 + v64);
        v8 = __OFADD__(v64, v65);
        v66 = v64 + v65;
        if (v8)
        {
          goto LABEL_90;
        }

        v8 = __OFADD__(v66, 4);
        v67 = v66 + 4;
        if (v8)
        {
          goto LABEL_91;
        }

        if (v58 >> 30 != 3)
        {
          goto LABEL_92;
        }

        v8 = __OFADD__(v67, v57);
        v68 = v67 + v57;
        if (v8)
        {
          goto LABEL_93;
        }

        v69 = *(v59 + v68);
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_94;
        }

        v71 = v3;
        v73 = v90;
        v72 = v91;
      }

      else
      {
LABEL_70:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v70 = 0;
      }

      v99 = v71;
      v100 = v72;
      v101 = v73;
      v102 = v70;
      sub_244300288(&v99, &v103);
      v75 = v103.value._countAndFlagsBits;
      v74 = v103.value._object;
      v77 = v104;
      v76 = v105;
      v78 = v106;
      if (v103.value._object)
      {
        v93 = v107;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2442DB9A8(0, *(v97 + 16) + 1, 1, v97);
          v97 = result;
        }

        v80 = *(v97 + 16);
        v79 = *(v97 + 24);
        if (v80 >= v79 >> 1)
        {
          result = sub_2442DB9A8((v79 > 1), v80 + 1, 1, v97);
          v97 = result;
        }

        *(v97 + 16) = v80 + 1;
        v81 = (v97 + 48 * v80);
        v81[4] = v75;
        v81[5] = v74;
        v81[6] = v77;
        v81[7] = v76;
        v3 = v94;
        v81[8] = v78;
        v81[9] = v93;
        v32 = v95;
      }

      else
      {
        result = sub_2442F8BA4(v103.value._countAndFlagsBits, 0);
      }

      ++v58;
      v57 += 4;
      if (!--v56)
      {
        goto LABEL_78;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v97 = MEMORY[0x277D84F90];
LABEL_78:

  *v85 = v84;
  *(v85 + 8) = v83;
  *(v85 + 16) = v82;
  *(v85 + 24) = v89;
  *(v85 + 32) = v88;
  *(v85 + 40) = v87;
  *(v85 + 48) = v86;
  *(v85 + 56) = v98;
  *(v85 + 64) = v97;
  return result;
}

uint64_t IARFStepSection.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IARFStepSection.totalTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t sub_2442FAFD4()
{
  v1 = 0x656C746974;
  v2 = 0x7370657473;
  if (*v0 != 2)
  {
    v2 = 0x6569646572676E69;
  }

  if (*v0)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2442FB054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442FBC60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442FB07C(uint64_t a1)
{
  v2 = sub_2442FB3C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FB0B8(uint64_t a1)
{
  v2 = sub_2442FB3C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFStepSection.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDF988, &qword_244318E70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v30 = *(v1 + 48);
  v12 = v1[7];
  v18 = v1[8];
  v19 = v12;
  v13 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FB3C4();
  sub_244313238();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_244313068();
  if (!v14)
  {
    v16 = v18;
    v15 = v19;
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v30;
    v31 = 1;
    sub_2442C6EFC(v23, v22, v21, v20, v30);
    sub_2442C73A0();
    sub_244313088();
    sub_2442C73F4(v25, v26, v27, v28, v29);
    v25 = v15;
    v31 = 2;
    sub_2442C6564(&qword_27EDDF998, &qword_244318E78);
    sub_2442FB93C(&qword_27EDDF9A0, sub_2442FB418);
    sub_2443130C8();
    v25 = v16;
    v31 = 3;
    sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
    sub_2442FB46C(&qword_27EDDE8A0, sub_2442C74A4);
    sub_244313088();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2442FB3C4()
{
  result = qword_27EDDF990;
  if (!qword_27EDDF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF990);
  }

  return result;
}

unint64_t sub_2442FB418()
{
  result = qword_27EDDF9A8;
  if (!qword_27EDDF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9A8);
  }

  return result;
}

uint64_t sub_2442FB46C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IARFStepSection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF9B0, &qword_244318E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FB3C4();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  LOBYTE(v31) = 0;
  v11 = sub_244312FD8();
  v25 = v12;
  LOBYTE(v26) = 1;
  sub_2442C7938();
  sub_244312FF8();
  v24 = v31;
  v23 = v32;
  v22 = v33;
  sub_2442C6564(&qword_27EDDF998, &qword_244318E78);
  LOBYTE(v26) = 2;
  sub_2442FB93C(&qword_27EDDF9B8, sub_2442FB9B4);
  sub_244313038();
  v21 = v31;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  v37 = 3;
  sub_2442FB46C(&qword_27EDDE8D8, sub_2442C7A04);
  sub_244312FF8();
  (*(v6 + 8))(v9, v5);
  v13 = v38;
  v14 = v25;
  *&v26 = v11;
  *(&v26 + 1) = v25;
  v27 = v24;
  v15 = v23;
  v28 = v23;
  v16 = v22;
  LOBYTE(v29) = v22;
  *(&v29 + 1) = v21;
  v30 = v38;
  *(a2 + 64) = v38;
  v17 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v17;
  v18 = v27;
  *a2 = v26;
  *(a2 + 16) = v18;
  sub_2442FBA08(&v26, &v31);
  sub_2442C6908(a1);
  *&v31 = v11;
  *(&v31 + 1) = v14;
  v32 = v24;
  v33 = v15;
  v34 = v16;
  v35 = v21;
  v36 = v13;
  return sub_2442FBA40(&v31);
}

uint64_t sub_2442FB93C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDF998, &qword_244318E78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442FB9B4()
{
  result = qword_27EDDF9C0;
  if (!qword_27EDDF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9C0);
  }

  return result;
}

uint64_t sub_2442FBAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442FBAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2442FBB5C()
{
  result = qword_27EDDF9C8;
  if (!qword_27EDDF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9C8);
  }

  return result;
}

unint64_t sub_2442FBBB4()
{
  result = qword_27EDDF9D0;
  if (!qword_27EDDF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9D0);
  }

  return result;
}

unint64_t sub_2442FBC0C()
{
  result = qword_27EDDF9D8;
  if (!qword_27EDDF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9D8);
  }

  return result;
}

uint64_t sub_2442FBC60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2442FBDC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2442C73F4(result, a2, a3, a4, a5);
  }

  return result;
}

double sub_2442FBE14@<D0>(void *a1@<X8>)
{
  sub_2442C6564(&qword_27EDDF010, &qword_2443164A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_244317120;
  v3 = sub_2443130D8();
  MEMORY[0x245D5E950](v3);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v4 = sub_2443130D8();
  MEMORY[0x245D5E950](v4);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  *(v2 + 32) = xmmword_2443190C0;
  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x800000024431C8A0;
  *(v2 + 64) = 21584;
  *(v2 + 72) = 0xE200000000000000;
  *(v2 + 80) = 21584;
  *(v2 + 88) = 0xE200000000000000;
  *(v2 + 96) = 1;
  v5 = sub_2443130D8();
  MEMORY[0x245D5E950](v5);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  *(v2 + 104) = xmmword_2443190D0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 21584;
  *(v2 + 144) = 0xE200000000000000;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  sub_2442C6564(&qword_27EDDF008, &qword_244316488);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2443190E0;
  *(v6 + 32) = xmmword_2443190F0;
  *(v6 + 48) = xmmword_244319100;
  *(v6 + 64) = xmmword_244319110;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  *(v6 + 96) = xmmword_244319120;
  *(v6 + 112) = xmmword_244319130;
  *(v6 + 128) = xmmword_244316360;
  *(v6 + 144) = 0;
  *(v6 + 152) = 2;
  *(v6 + 160) = xmmword_244319140;
  *(v6 + 176) = xmmword_244319150;
  v7 = vdupq_n_s64(1uLL);
  *(v6 + 192) = v7;
  *(v6 + 208) = 0;
  *(v6 + 216) = 2;
  *(v6 + 224) = xmmword_244319160;
  *(v6 + 240) = xmmword_244319130;
  *(v6 + 256) = xmmword_244319110;
  *(v6 + 272) = 0;
  *(v6 + 280) = 1;
  *(v6 + 288) = xmmword_244319170;
  *(v6 + 304) = xmmword_244319180;
  *(v6 + 320) = xmmword_244316360;
  *(v6 + 336) = 0;
  *(v6 + 344) = 2;
  *(v6 + 352) = xmmword_244319190;
  *(v6 + 368) = xmmword_2443191A0;
  *(v6 + 384) = v7;
  *(v6 + 400) = 0;
  *(v6 + 408) = 2;
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v8 = swift_allocObject();
  v8[1] = xmmword_244313970;
  v8[2] = xmmword_244313980;
  *&result = 500;
  v8[3] = xmmword_2443191B0;
  *a1 = 0x10000000000001FELL;
  a1[1] = 0x800000024431C6A0;
  a1[2] = v2;
  a1[3] = v6;
  a1[4] = v8;
  return result;
}

uint64_t sub_2442FC130@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = Table.offset(_:)(4);
  v8 = __OFADD__(v7, v6);
  result = (v7 + v6);
  if (v8)
  {
    goto LABEL_204;
  }

  v160 = a2;
  v9 = Table.directString(at:)(result);
  result = v9.value._countAndFlagsBits;
  if (!v9.value._object)
  {
LABEL_226:
    __break(1u);
    return result;
  }

  v173 = v3;
  *&v176 = v3;
  *(&v176 + 1) = v4;
  *&v177 = v5;
  DWORD2(v177) = v6;
  result = IARFFB_SubStep.textTimersCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_205;
  }

  v10 = result;
  v162 = v5;
  v163 = v4;
  if (result)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = -536870912;
    v14 = v173;
    while (1)
    {
      v16 = *(v14 + 24);
      v17 = *(v16 + v6);
      v8 = __OFSUB__(v6, v17);
      v18 = v6 - v17;
      if (v8)
      {
        __break(1u);
        goto LABEL_161;
      }

      if (*(v16 + v18) >= 7u)
      {
        v8 = __OFADD__(v18, 6);
        v19 = v18 + 6;
        if (v8)
        {
          goto LABEL_163;
        }

        v20 = *(v16 + v19);
        if (v20)
        {
          break;
        }
      }

LABEL_8:
      ++v13;
      v11 += 4;
      if (!--v10)
      {
        goto LABEL_87;
      }
    }

    v8 = __OFADD__(v20, v6);
    v21 = v20 + v6;
    if (v8)
    {
      goto LABEL_166;
    }

    v22 = *(v16 + v21);
    v8 = __OFADD__(v21, v22);
    v23 = v21 + v22;
    if (v8)
    {
      goto LABEL_167;
    }

    v8 = __OFADD__(v23, 4);
    v24 = v23 + 4;
    if (v8)
    {
      goto LABEL_168;
    }

    if (v13 >> 30 != 3)
    {
      goto LABEL_169;
    }

    v8 = __OFADD__(v24, v11);
    v25 = v24 + v11;
    if (v8)
    {
      goto LABEL_170;
    }

    v26 = *(v16 + v25);
    v8 = __OFADD__(v25, v26);
    v27 = v25 + v26;
    if (v8)
    {
      goto LABEL_171;
    }

    v28 = *(v16 + v27);
    v8 = __OFSUB__(v27, v28);
    v29 = v27 - v28;
    if (v8)
    {
      goto LABEL_172;
    }

    v30 = *(v16 + v29);
    if (v30 < 5)
    {
      v31 = 0;
    }

    else
    {
      if (__OFADD__(v29, 4))
      {
        goto LABEL_192;
      }

      v31 = *(v16 + v29 + 4);
    }

    v8 = __OFADD__(v31, v27);
    v32 = v31 + v27;
    if (v8)
    {
      goto LABEL_173;
    }

    v33 = (v16 + v32);
    v165 = v33[1];
    v167 = *v33;
    if (v30 >= 7)
    {
      v8 = __OFADD__(v29, 6);
      v34 = v29 + 6;
      if (v8)
      {
        goto LABEL_193;
      }

      v35 = *(v16 + v34);
      if (v35)
      {
        v8 = __OFADD__(v35, v27);
        v36 = v35 + v27;
        if (v8)
        {
          goto LABEL_198;
        }

        v37 = *(v16 + v36);
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_199;
        }

        v39 = *(v16 + v38);
        v8 = __OFSUB__(v38, v39);
        v40 = v38 - v39;
        if (v8)
        {
          goto LABEL_200;
        }

        v41 = *(v16 + v40);
        if (v41 >= 7)
        {
          if (__OFADD__(v40, 6))
          {
            goto LABEL_208;
          }

          v42 = *(v16 + v40 + 6);
          if (*(v16 + v40 + 6))
          {
            v8 = __OFADD__(v42, v38);
            v43 = v42 + v38;
            if (v8)
            {
              goto LABEL_209;
            }

            v44 = *(v16 + v43);
            if (v44 == 2)
            {
              if (v41 < 9)
              {
                v48 = 0;
              }

              else
              {
                v8 = __OFADD__(v40, 8);
                v47 = v40 + 8;
                if (v8)
                {
                  goto LABEL_220;
                }

                v48 = *(v16 + v47);
              }

              v8 = __OFADD__(v48, v38);
              v67 = v48 + v38;
              if (v8)
              {
                goto LABEL_211;
              }

              v68 = *(v16 + v67);
              v69 = v67 + v68;
              if (__OFADD__(v67, v68))
              {
                goto LABEL_213;
              }

              v70 = *(v16 + v69);
              v8 = __OFSUB__(v69, v70);
              v71 = v69 - v70;
              if (v8)
              {
                goto LABEL_214;
              }

              if (*(v16 + v71) <= 4u)
              {
                v73 = 0;
              }

              else
              {
                v8 = __OFADD__(v71, 4);
                v72 = v71 + 4;
                if (v8)
                {
                  goto LABEL_221;
                }

                v73 = *(v16 + v72);
              }

              v74 = v73 + v69;
              if (__OFADD__(v73, v69))
              {
                goto LABEL_216;
              }

              v57 = v12;
              swift_retain_n();
              v75 = Table.directString(at:)(v74);
              if (v75.value._object)
              {
                object = v75.value._object;
                countAndFlagsBits = v75.value._countAndFlagsBits;
                v76 = Table.offset(_:)(6);
                v8 = __OFADD__(v76, v69);
                result = (v76 + v69);
                if (v8)
                {
                  goto LABEL_217;
                }

                v77 = Table.directString(at:)(result);
                v59 = v77.value._countAndFlagsBits;
                v60 = v77.value._object;

                if (v77.value._object)
                {
                  v61 = 1;
                  goto LABEL_71;
                }
              }

              else
              {
              }

LABEL_81:
              v62 = 0;
              countAndFlagsBits = 0;
              object = 0;
              v164 = 0;
              v60 = 0;
              v61 = 0;
              v63 = 1;
LABEL_82:
              v12 = v57;
              goto LABEL_54;
            }

            if (v44 == 1)
            {
              if (v41 < 9)
              {
                v46 = 0;
              }

              else
              {
                v8 = __OFADD__(v40, 8);
                v45 = v40 + 8;
                if (v8)
                {
                  goto LABEL_219;
                }

                v46 = *(v16 + v45);
              }

              v8 = __OFADD__(v46, v38);
              v49 = v46 + v38;
              if (v8)
              {
                goto LABEL_210;
              }

              v50 = *(v16 + v49);
              v51 = v49 + v50;
              if (__OFADD__(v49, v50))
              {
                goto LABEL_212;
              }

              v52 = *(v16 + v51);
              v8 = __OFSUB__(v51, v52);
              v53 = v51 - v52;
              if (v8)
              {
                goto LABEL_215;
              }

              if (*(v16 + v53) > 4u)
              {
                v8 = __OFADD__(v53, 4);
                v54 = v53 + 4;
                if (v8)
                {
                  goto LABEL_222;
                }

                v55 = *(v16 + v54);
                if (v55)
                {
                  v56 = v55 + v51;
                  if (__OFADD__(v55, v51))
                  {
                    goto LABEL_223;
                  }

                  v57 = v12;
                  swift_retain_n();
                  v58 = Table.directString(at:)(v56);
                  result = v58.value._countAndFlagsBits;
                  if (v58.value._object)
                  {
                    object = v58.value._object;
                    countAndFlagsBits = v58.value._countAndFlagsBits;
                    v59 = 0;
                    v60 = 0;
                    v61 = 0;
LABEL_71:
                    v78 = *(v173 + 24);
                    v79 = *(v78 + v38);
                    v8 = __OFSUB__(v38, v79);
                    v80 = v38 - v79;
                    if (v8)
                    {
                      goto LABEL_218;
                    }

                    v164 = v59;
                    if (*(v78 + v80) < 5u)
                    {
                      goto LABEL_77;
                    }

                    v8 = __OFADD__(v80, 4);
                    v81 = v80 + 4;
                    if (v8)
                    {
                      goto LABEL_224;
                    }

                    v82 = *(v78 + v81);
                    if (v82)
                    {
                      result = (v82 + v38);
                      if (__OFADD__(v82, v38))
                      {
                        goto LABEL_225;
                      }

                      v83 = Table.directString(at:)(result);
                      v62 = v83.value._countAndFlagsBits;
                      v63 = v83.value._object;
                    }

                    else
                    {
LABEL_77:

                      v62 = 0;
                      v63 = 0;
                    }

                    goto LABEL_82;
                  }

                  goto LABEL_81;
                }
              }
            }
          }
        }
      }
    }

    v62 = 0;
    countAndFlagsBits = 0;
    object = 0;
    v164 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 1;
LABEL_54:
    v64 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v12 = v64;
    }

    else
    {
      result = sub_2442DBCE0(0, *(v64 + 16) + 1, 1, v64);
      v12 = result;
    }

    v66 = *(v12 + 16);
    v65 = *(v12 + 24);
    v14 = v173;
    if (v66 >= v65 >> 1)
    {
      result = sub_2442DBCE0((v65 > 1), v66 + 1, 1, v12);
      v14 = v173;
      v12 = result;
    }

    *(v12 + 16) = v66 + 1;
    v15 = v12 + 72 * v66;
    *(v15 + 32) = v167;
    *(v15 + 40) = v165;
    *(v15 + 48) = v62;
    *(v15 + 56) = v63;
    *(v15 + 64) = countAndFlagsBits;
    *(v15 + 72) = object;
    *(v15 + 80) = v164;
    *(v15 + 88) = v60;
    *(v15 + 96) = v61;
    goto LABEL_8;
  }

  v12 = MEMORY[0x277D84F90];
  v14 = v173;
LABEL_87:
  v166 = v12;
  v85 = v162;
  v84 = v163;
  *&v176 = v14;
  *(&v176 + 1) = v163;
  *&v177 = v162;
  DWORD2(v177) = v6;
  result = IARFFB_SubStep.textMeasurementsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_206;
  }

  v86 = result;
  if (result)
  {
    v87 = 0;
    v172 = MEMORY[0x277D84F90];
    v88 = -536870912;
    result = v173;
    while (1)
    {
      v90 = *(result + 24);
      v91 = *(v90 + v6);
      v8 = __OFSUB__(v6, v91);
      v92 = v6 - v91;
      if (v8)
      {
        break;
      }

      if (*(v90 + v92) >= 9u)
      {
        v8 = __OFADD__(v92, 8);
        v93 = v92 + 8;
        if (v8)
        {
          goto LABEL_164;
        }

        v94 = *(v90 + v93);
        if (v94)
        {
          v8 = __OFADD__(v94, v6);
          v95 = v94 + v6;
          if (v8)
          {
            goto LABEL_174;
          }

          v96 = *(v90 + v95);
          v8 = __OFADD__(v95, v96);
          v97 = v95 + v96;
          if (v8)
          {
            goto LABEL_175;
          }

          v8 = __OFADD__(v97, 4);
          v98 = v97 + 4;
          if (v8)
          {
            goto LABEL_176;
          }

          if (v88 >> 30 != 3)
          {
            goto LABEL_177;
          }

          v8 = __OFADD__(v98, v87);
          v99 = v98 + v87;
          if (v8)
          {
            goto LABEL_178;
          }

          v100 = *(v90 + v99);
          v101 = v99 + v100;
          if (__OFADD__(v99, v100))
          {
            goto LABEL_179;
          }

          v102 = *(v90 + v101);
          v8 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v8)
          {
            goto LABEL_180;
          }

          if (*(v90 + v103) < 7u)
          {
            goto LABEL_109;
          }

          v8 = __OFADD__(v103, 6);
          v104 = v103 + 6;
          if (v8)
          {
            goto LABEL_194;
          }

          v105 = *(v90 + v104);
          if (v105)
          {
            v8 = __OFADD__(v105, v101);
            v106 = v105 + v101;
            if (v8)
            {
              goto LABEL_201;
            }

            v107 = *(v90 + v106);
            v108 = v106 + v107;
            if (__OFADD__(v106, v107))
            {
              goto LABEL_202;
            }

            v109 = v173;
            v110 = v84;
            v111 = v85;
          }

          else
          {
LABEL_109:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v108 = 0;
          }

          v174[0] = v109;
          v174[1] = v110;
          v174[2] = v111;
          v175 = v108;

          sub_2442D31EC(v174, &v176);
          result = v173;
          v112 = *(v173 + 24);
          v113 = *(v112 + v101);
          v8 = __OFSUB__(v101, v113);
          v114 = v101 - v113;
          if (v8)
          {
            goto LABEL_181;
          }

          v170 = v176;
          v115 = v178;
          v116 = v179;
          if (*(v112 + v114) < 5u)
          {
            v118 = 0;
          }

          else
          {
            v8 = __OFADD__(v114, 4);
            v117 = v114 + 4;
            if (v8)
            {
              goto LABEL_195;
            }

            v118 = *(v112 + v117);
          }

          v8 = __OFADD__(v118, v101);
          v119 = v118 + v101;
          if (v8)
          {
            goto LABEL_182;
          }

          v168 = v177;
          v120 = (v112 + v119);
          v121 = *v120;
          v122 = v120[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v172 = sub_2442DBBD4(0, *(v172 + 2) + 1, 1, v172);
          }

          result = v173;
          v124 = *(v172 + 2);
          v123 = *(v172 + 3);
          if (v124 >= v123 >> 1)
          {
            v172 = sub_2442DBBD4((v123 > 1), v124 + 1, 1, v172);
            result = v173;
          }

          *(v172 + 2) = v124 + 1;
          v89 = &v172[64 * v124];
          *(v89 + 4) = v121;
          *(v89 + 5) = v122;
          *(v89 + 3) = v170;
          *(v89 + 4) = v168;
          *(v89 + 10) = v115;
          v89[88] = v116;
          v85 = v162;
          v84 = v163;
        }
      }

      ++v88;
      v87 += 4;
      if (!--v86)
      {
        goto LABEL_121;
      }
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v172 = MEMORY[0x277D84F90];
  result = v173;
LABEL_121:
  *&v176 = result;
  *(&v176 + 1) = v84;
  *&v177 = v85;
  DWORD2(v177) = v6;
  result = IARFFB_SubStep.textIngredientsCount.getter();
  if ((result & 0x80000000) != 0)
  {
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v125 = result;
  if (result)
  {
    v126 = 0;
    v127 = MEMORY[0x277D84F90];
    v128 = -536870912;
    result = v173;
    v161 = v6;
    while (1)
    {
      v130 = *(result + 24);
      v131 = *(v130 + v6);
      v8 = __OFSUB__(v6, v131);
      v132 = v6 - v131;
      if (v8)
      {
        break;
      }

      if (*(v130 + v132) >= 0xBu)
      {
        v8 = __OFADD__(v132, 10);
        v133 = v132 + 10;
        if (v8)
        {
          goto LABEL_165;
        }

        v134 = *(v130 + v133);
        if (v134)
        {
          v8 = __OFADD__(v134, v6);
          v135 = v134 + v6;
          if (v8)
          {
            goto LABEL_183;
          }

          v136 = *(v130 + v135);
          v8 = __OFADD__(v135, v136);
          v137 = v135 + v136;
          if (v8)
          {
            goto LABEL_184;
          }

          v8 = __OFADD__(v137, 4);
          v138 = v137 + 4;
          if (v8)
          {
            goto LABEL_185;
          }

          if (v128 >> 30 != 3)
          {
            goto LABEL_186;
          }

          v8 = __OFADD__(v138, v126);
          v139 = v138 + v126;
          if (v8)
          {
            goto LABEL_187;
          }

          v140 = *(v130 + v139);
          v141 = v139 + v140;
          if (__OFADD__(v139, v140))
          {
            goto LABEL_188;
          }

          v142 = *(v130 + v141);
          v143 = v141 - v142;
          v144 = __OFSUB__(v141, v142);
          if (__OFSUB__(v141, v142))
          {
            goto LABEL_189;
          }

          if (*(v130 + v143) < 5u)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v143, 4))
          {
            goto LABEL_196;
          }

          v145 = *(v130 + v143 + 4);
          if (*(v130 + v143 + 4))
          {
            v146 = v145 + v141;
            if (__OFADD__(v145, v141))
            {
              goto LABEL_203;
            }

            v147 = result;

            v149 = Table.directString(at:)(v146);
            v148 = v149.value._object;
            result = v149.value._countAndFlagsBits;
            v150 = v149.value._countAndFlagsBits;
            v130 = *(v147 + 24);
            v151 = *(v130 + v141);
            v143 = v141 - v151;
            v144 = __OFSUB__(v141, v151);
          }

          else
          {
LABEL_147:

            v150 = 0;
            v148 = 0;
          }

          if (v144)
          {
            goto LABEL_190;
          }

          v152 = v148;
          if (*(v130 + v143) < 7u)
          {
            v153 = 0;
            result = v173;
          }

          else
          {
            result = v173;
            if (__OFADD__(v143, 6))
            {
              goto LABEL_197;
            }

            v153 = *(v130 + v143 + 6);
          }

          v8 = __OFADD__(v153, v141);
          v154 = v153 + v141;
          if (v8)
          {
            goto LABEL_191;
          }

          v155 = (v130 + v154);
          v156 = *v155;
          v157 = v155[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_2442DBAC8(0, *(v127 + 2) + 1, 1, v127);
          }

          v159 = *(v127 + 2);
          v158 = *(v127 + 3);
          result = v173;
          if (v159 >= v158 >> 1)
          {
            v127 = sub_2442DBAC8((v158 > 1), v159 + 1, 1, v127);
            result = v173;
          }

          *(v127 + 2) = v159 + 1;
          v129 = &v127[32 * v159];
          *(v129 + 4) = v150;
          *(v129 + 5) = v152;
          *(v129 + 6) = v156;
          *(v129 + 7) = v157;
          v6 = v161;
        }
      }

      ++v128;
      v126 += 4;
      if (!--v125)
      {
        goto LABEL_159;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v127 = MEMORY[0x277D84F90];
LABEL_159:

  *v160 = v9;
  v160[1].value._countAndFlagsBits = v166;
  v160[1].value._object = v172;
  v160[2].value._countAndFlagsBits = v127;
  return result;
}

uint64_t IARFSubStep.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_2442FCC08()
{
  v1 = 1954047348;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x72676E4974786574;
  }

  if (*v0)
  {
    v1 = 0x656D695474786574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2442FCC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442FD9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442FCCB8(uint64_t a1)
{
  v2 = sub_2442FCF84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FCCF4(uint64_t a1)
{
  v2 = sub_2442FCF84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFSubStep.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDF9E0, &qword_2443191C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v21 = v1[3];
  v22 = v11;
  v20 = v1[4];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  sub_2442C65AC(v14, v12);
  sub_2442FCF84();
  sub_244313238();
  LOBYTE(v24) = 0;
  sub_244313098();
  if (!v2)
  {
    v17 = v20;
    v18 = v21;
    v24 = v22;
    v23 = 1;
    sub_2442C6564(&qword_27EDDF9F0, &qword_2443191C8);
    sub_2442FCFD8();
    sub_2443130C8();
    v24 = v18;
    v23 = 2;
    sub_2442C6564(&qword_27EDDFA08, &qword_2443191D0);
    sub_2442FD0B0();
    sub_2443130C8();
    v24 = v17;
    v23 = 3;
    sub_2442C6564(&qword_27EDDFA18, &qword_2443191D8);
    sub_2442FD134();
    sub_2443130C8();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_2442FCF84()
{
  result = qword_27EDDF9E8;
  if (!qword_27EDDF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9E8);
  }

  return result;
}

unint64_t sub_2442FCFD8()
{
  result = qword_27EDDF9F8;
  if (!qword_27EDDF9F8)
  {
    sub_2442C745C(&qword_27EDDF9F0, &qword_2443191C8);
    sub_2442FD05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF9F8);
  }

  return result;
}

unint64_t sub_2442FD05C()
{
  result = qword_27EDDFA00;
  if (!qword_27EDDFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA00);
  }

  return result;
}

unint64_t sub_2442FD0B0()
{
  result = qword_27EDDFA10;
  if (!qword_27EDDFA10)
  {
    sub_2442C745C(&qword_27EDDFA08, &qword_2443191D0);
    sub_2442E200C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA10);
  }

  return result;
}

unint64_t sub_2442FD134()
{
  result = qword_27EDDFA20;
  if (!qword_27EDDFA20)
  {
    sub_2442C745C(&qword_27EDDFA18, &qword_2443191D8);
    sub_2442FD1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA20);
  }

  return result;
}

unint64_t sub_2442FD1B8()
{
  result = qword_27EDDFA28;
  if (!qword_27EDDFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA28);
  }

  return result;
}

uint64_t IARFSubStep.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFA30, &qword_2443191E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FCF84();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_244313008();
  v20 = v12;
  sub_2442C6564(&qword_27EDDF9F0, &qword_2443191C8);
  v21 = 1;
  sub_2442FD578();
  sub_244313038();
  v19 = v22;
  sub_2442C6564(&qword_27EDDFA08, &qword_2443191D0);
  v21 = 2;
  sub_2442FD650();
  sub_244313038();
  v18 = v22;
  sub_2442C6564(&qword_27EDDFA18, &qword_2443191D8);
  v21 = 3;
  sub_2442FD6D4();
  sub_244313038();
  (*(v6 + 8))(v9, v5);
  v14 = v22;
  v16 = v19;
  v15 = v20;
  *a2 = v11;
  a2[1] = v15;
  v17 = v18;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v14;

  sub_2442C6908(a1);
}

unint64_t sub_2442FD578()
{
  result = qword_27EDDFA38;
  if (!qword_27EDDFA38)
  {
    sub_2442C745C(&qword_27EDDF9F0, &qword_2443191C8);
    sub_2442FD5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA38);
  }

  return result;
}

unint64_t sub_2442FD5FC()
{
  result = qword_27EDDFA40;
  if (!qword_27EDDFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA40);
  }

  return result;
}

unint64_t sub_2442FD650()
{
  result = qword_27EDDFA48;
  if (!qword_27EDDFA48)
  {
    sub_2442C745C(&qword_27EDDFA08, &qword_2443191D0);
    sub_2442E2338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA48);
  }

  return result;
}

unint64_t sub_2442FD6D4()
{
  result = qword_27EDDFA50;
  if (!qword_27EDDFA50)
  {
    sub_2442C745C(&qword_27EDDFA18, &qword_2443191D8);
    sub_2442FD758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA50);
  }

  return result;
}

unint64_t sub_2442FD758()
{
  result = qword_27EDDFA58;
  if (!qword_27EDDFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA58);
  }

  return result;
}

__n128 sub_2442FD7DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2442FD7F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2442FD838(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2442FD8A4()
{
  result = qword_27EDDFA60;
  if (!qword_27EDDFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA60);
  }

  return result;
}

unint64_t sub_2442FD8FC()
{
  result = qword_27EDDFA68;
  if (!qword_27EDDFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA68);
  }

  return result;
}

unint64_t sub_2442FD954()
{
  result = qword_27EDDFA70;
  if (!qword_27EDDFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA70);
  }

  return result;
}

uint64_t sub_2442FD9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695474786574 && a2 == 0xEA00000000007372 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C680 == a2 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72676E4974786574 && a2 == 0xEF73746E65696465)
  {

    return 3;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 IARFInTextCountdownTimer.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void IARFInTextCountdownTimer.timer.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  sub_2442FDB54(v2, v3, v4, v5, v6, v7, v8);
}

void sub_2442FDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a2 != 1)
  {

    sub_2442C6F14(a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_2442FDBCC()
{
  if (*v0)
  {
    result = 0x72656D6974;
  }

  else
  {
    result = 0x676E615274786574;
  }

  *v0;
  return result;
}

uint64_t sub_2442FDC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615274786574 && a2 == 0xE900000000000065;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442FDCE8(uint64_t a1)
{
  v2 = sub_2442FDF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FDD24(uint64_t a1)
{
  v2 = sub_2442FDF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFInTextCountdownTimer.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDFA78, &qword_2443193B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v10;
  v11 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = v11;
  v12 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = v12;
  v30 = *(v1 + 64);
  v13 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FDF48();
  sub_244313238();
  v23 = v8;
  v24 = v9;
  v31 = 0;
  sub_2442C6644();
  v14 = v22;
  sub_2443130C8();
  if (!v14)
  {
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v29 = v30;
    v31 = 1;
    sub_2442FDB54(v21, v20, v19, v18, v17, v16, v30);
    sub_2442FDF9C();
    sub_244313088();
    sub_2442FDFF0(v23, v24, v25, v26, v27, v28, v29);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2442FDF48()
{
  result = qword_27EDDFA80;
  if (!qword_27EDDFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA80);
  }

  return result;
}

unint64_t sub_2442FDF9C()
{
  result = qword_27EDDFA88;
  if (!qword_27EDDFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA88);
  }

  return result;
}

void sub_2442FDFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a2 != 1)
  {

    sub_2442C740C(a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t IARFInTextCountdownTimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFA90, &qword_2443193B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FDF48();
  sub_244313228();
  if (!v2)
  {
    v17 = 0;
    sub_2442C6954();
    sub_244313038();
    v11 = v15[0];
    v17 = 1;
    sub_2442FE250();
    sub_244312FF8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    v13 = v15[1];
    *(a2 + 16) = v15[0];
    *(a2 + 32) = v13;
    *(a2 + 48) = v15[2];
    *(a2 + 64) = v12;
  }

  return sub_2442C6908(a1);
}

unint64_t sub_2442FE250()
{
  result = qword_27EDDFA98;
  if (!qword_27EDDFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFA98);
  }

  return result;
}

uint64_t sub_2442FE2D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442FE2F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 65))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_2442FE360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2442FE3E8()
{
  result = qword_27EDDFAA0;
  if (!qword_27EDDFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAA0);
  }

  return result;
}

unint64_t sub_2442FE440()
{
  result = qword_27EDDFAA8;
  if (!qword_27EDDFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAA8);
  }

  return result;
}

unint64_t sub_2442FE498()
{
  result = qword_27EDDFAB0;
  if (!qword_27EDDFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAB0);
  }

  return result;
}

uint64_t IARFCountdownTimer.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IARFCountdownTimer.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2442C6F14(v2, v3, v4, v5, v6);
}

uint64_t sub_2442FE538()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2442FE570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442FE648(uint64_t a1)
{
  v2 = sub_2442FE884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FE684(uint64_t a1)
{
  v2 = sub_2442FE884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFCountdownTimer.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDFAB8, &qword_2443195F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[4];
  v15 = v1[5];
  v16 = v11;
  v25 = *(v1 + 48);
  v12 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FE884();
  sub_244313238();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_244313068();
  if (!v13)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v25;
    v26 = 1;
    sub_2442C6F14(v18, v17, v16, v15, v25);
    sub_2442C73A0();
    sub_2443130C8();
    sub_2442C740C(v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2442FE884()
{
  result = qword_27EDDFAC0;
  if (!qword_27EDDFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAC0);
  }

  return result;
}

uint64_t IARFCountdownTimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFAC8, &qword_2443195F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FE884();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_244312FD8();
  v13 = v12;
  v20 = v11;
  v26 = 1;
  sub_2442C7938();
  sub_244313038();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;

  sub_2442C6F14(v14, v15, v16, v17, v18);
  sub_2442C6908(a1);

  return sub_2442C740C(v14, v15, v16, v17, v18);
}

__n128 sub_2442FEB3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2442FEB58(uint64_t a1, unsigned int a2)
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

uint64_t sub_2442FEBB4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2442FEC3C()
{
  result = qword_27EDDFAD0;
  if (!qword_27EDDFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAD0);
  }

  return result;
}

unint64_t sub_2442FEC94()
{
  result = qword_27EDDFAD8;
  if (!qword_27EDDFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAD8);
  }

  return result;
}

unint64_t sub_2442FECEC()
{
  result = qword_27EDDFAE0;
  if (!qword_27EDDFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFAE0);
  }

  return result;
}

uint64_t static IARFDuration.exact(minutes:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  result = MEMORY[0x245D5E950](77, 0xE100000000000000);
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static IARFDuration.minuteRange(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v3 = sub_2443130D8();
  MEMORY[0x245D5E950](v3);

  result = MEMORY[0x245D5E950](77, 0xE100000000000000);
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 21584;
  *(a1 + 24) = 0xE200000000000000;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_2442FEEC0()
{
  if (*v0)
  {
    return 0x65676E6172;
  }

  else
  {
    return 0x7463617865;
  }
}

uint64_t sub_2442FEEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617865 && a2 == 0xE500000000000000;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442FEFC0(uint64_t a1)
{
  v2 = sub_2442FF568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FEFFC(uint64_t a1)
{
  v2 = sub_2442FF568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442FF038(uint64_t a1)
{
  v2 = sub_2442FF610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FF074(uint64_t a1)
{
  v2 = sub_2442FF610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442FF0B0()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_2442FF0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442FF1B0(uint64_t a1)
{
  v2 = sub_2442FF5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442FF1EC(uint64_t a1)
{
  v2 = sub_2442FF5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFDuration.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDFAE8, &qword_244319808);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v25 = v23 - v5;
  v6 = sub_2442C6564(&qword_27EDDFAF0, &qword_244319810);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v31 = sub_2442C6564(&qword_27EDDFAF8, &qword_244319818);
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = v23 - v12;
  v14 = *v1;
  v28 = v1[1];
  v29 = v14;
  v15 = v1[2];
  v23[0] = v1[3];
  v23[1] = v15;
  v16 = *(v1 + 32);
  v17 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442FF568();
  sub_244313238();
  if (v16)
  {
    v35 = 1;
    sub_2442FF5BC();
    v18 = v25;
    v19 = v31;
    sub_244313058();
    v34 = 0;
    v20 = v27;
    v21 = v30;
    sub_244313098();
    if (!v21)
    {
      v33 = 1;
      sub_244313098();
    }

    (*(v26 + 8))(v18, v20);
  }

  else
  {
    v32 = 0;
    sub_2442FF610();
    v19 = v31;
    sub_244313058();
    sub_244313098();
    (*(v24 + 8))(v9, v6);
  }

  return (*(v10 + 8))(v13, v19);
}

unint64_t sub_2442FF568()
{
  result = qword_27EDDFB00;
  if (!qword_27EDDFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB00);
  }

  return result;
}

unint64_t sub_2442FF5BC()
{
  result = qword_27EDDFB08;
  if (!qword_27EDDFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB08);
  }

  return result;
}

unint64_t sub_2442FF610()
{
  result = qword_27EDDFB10;
  if (!qword_27EDDFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB10);
  }

  return result;
}

uint64_t IARFDuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_2442C6564(&qword_27EDDFB18, &qword_244319820);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  v8 = sub_2442C6564(&qword_27EDDFB20, &qword_244319828);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_2442C6564(&qword_27EDDFB28, &qword_244319830);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v56 = a1;
  sub_2442C65AC(a1, v18);
  sub_2442FF568();
  v19 = v55;
  sub_244313228();
  if (v19)
  {
    return sub_2442C6908(v56);
  }

  v50 = v13;
  v55 = v16;
  v20 = sub_244313048();
  v21 = (2 * *(v20 + 16)) | 1;
  v57 = v20;
  v58 = v20 + 32;
  v59 = 0;
  v60 = v21;
  v22 = sub_2442CED04();
  v23 = v12;
  if (v22 == 2 || v59 != v60 >> 1)
  {
    v25 = sub_244312EE8();
    swift_allocError();
    v27 = v26;
    v28 = *(sub_2442C6564(&qword_27EDDEC40, &qword_244313E00) + 48);
    *v27 = &type metadata for IARFDuration;
    v29 = v55;
    sub_244312FC8();
    sub_244312EC8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v50 + 8))(v29, v12);
    swift_unknownObjectRelease();
    return sub_2442C6908(v56);
  }

  v24 = v22;
  if (v22)
  {
    v61 = 1;
    sub_2442FF5BC();
    sub_244312FB8();
    v61 = 0;
    v33 = v52;
    v34 = v7;
    v35 = sub_244313008();
    v36 = v50;
    v41 = v40;
    v48 = v23;
    v49 = v35;
    v61 = 1;
    v51 = sub_244313008();
    v42 = (v36 + 8);
    v45 = v44;
    (*(v53 + 8))(v34, v33);
    (*v42)(v55, v48);
    swift_unknownObjectRelease();
    v46 = v54;
  }

  else
  {
    v61 = 0;
    sub_2442FF610();
    v31 = v11;
    v32 = v55;
    sub_244312FB8();
    v46 = v54;
    v37 = v8;
    v38 = sub_244313008();
    v39 = (v50 + 8);
    v41 = v43;
    v49 = v38;
    (*(v51 + 8))(v31, v37);
    (*v39)(v32, v23);
    swift_unknownObjectRelease();
    v51 = 0;
    v45 = 0;
  }

  *v46 = v49;
  *(v46 + 8) = v41;
  *(v46 + 16) = v51;
  *(v46 + 24) = v45;
  *(v46 + 32) = v24 & 1;
  return sub_2442C6908(v56);
}

__n128 sub_2442FFC88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2442FFC9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2442FFCE4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_2442FFD7C()
{
  result = qword_27EDDFB30;
  if (!qword_27EDDFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB30);
  }

  return result;
}

unint64_t sub_2442FFDD4()
{
  result = qword_27EDDFB38;
  if (!qword_27EDDFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB38);
  }

  return result;
}

unint64_t sub_2442FFE2C()
{
  result = qword_27EDDFB40;
  if (!qword_27EDDFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB40);
  }

  return result;
}

unint64_t sub_2442FFE84()
{
  result = qword_27EDDFB48;
  if (!qword_27EDDFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB48);
  }

  return result;
}

unint64_t sub_2442FFEDC()
{
  result = qword_27EDDFB50;
  if (!qword_27EDDFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB50);
  }

  return result;
}

unint64_t sub_2442FFF34()
{
  result = qword_27EDDFB58;
  if (!qword_27EDDFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB58);
  }

  return result;
}

unint64_t sub_2442FFF8C()
{
  result = qword_27EDDFB60;
  if (!qword_27EDDFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB60);
  }

  return result;
}

unint64_t sub_2442FFFE4()
{
  result = qword_27EDDFB68;
  if (!qword_27EDDFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB68);
  }

  return result;
}

unint64_t sub_24430003C()
{
  result = qword_27EDDFB70;
  if (!qword_27EDDFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB70);
  }

  return result;
}

uint64_t sub_244300090@<X0>(uint64_t a1@<X8>)
{
  sub_2442C6564(&qword_27EDDF008, &qword_244316488);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_244313970;
  *(v2 + 32) = xmmword_244316A00;
  *(v2 + 48) = xmmword_244319C60;
  *(v2 + 64) = xmmword_244319C70;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  result = swift_allocObject();
  *(result + 16) = xmmword_244313970;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = xmmword_244319C80;
  *a1 = 0x7261677573;
  *(a1 + 8) = 0xE500000000000000;
  strcpy((a1 + 16), "1 cup of sugar");
  *(a1 + 31) = -18;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

double sub_244300188@<D0>(void *a1@<X8>)
{
  sub_2442C6564(&qword_27EDDF008, &qword_244316488);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_244313970;
  *(v2 + 32) = xmmword_244319C90;
  *(v2 + 48) = xmmword_244319CA0;
  *(v2 + 64) = xmmword_244319CB0;
  *(v2 + 80) = 0xE600000000000000;
  *(v2 + 88) = 0;
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_244317120;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = xmmword_244319CC0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *&result = 71;
  *(v3 + 80) = xmmword_244319CD0;
  *a1 = 0x6461657262;
  a1[1] = 0xE500000000000000;
  a1[2] = 0xD000000000000054;
  a1[3] = 0x800000024431C8C0;
  a1[4] = v2;
  a1[5] = v3;
  return result;
}

uint64_t sub_244300288@<X0>(uint64_t result@<X0>, Swift::String_optional *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = Table.offset(_:)(4);
  v8 = __OFADD__(v7, v6);
  result = (v7 + v6);
  if (v8)
  {
    goto LABEL_109;
  }

  v9 = Table.directString(at:)(result);
  result = v9.value._countAndFlagsBits;
  if (!v9.value._object)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v10 = Table.offset(_:)(6);
  v8 = __OFADD__(v10, v6);
  result = (v10 + v6);
  if (v8)
  {
    goto LABEL_110;
  }

  v11 = Table.directString(at:)(result);
  result = v11.value._countAndFlagsBits;
  if (!v11.value._object)
  {
LABEL_114:
    __break(1u);
    return result;
  }

  *&v94 = v3;
  *(&v94 + 1) = v4;
  *&v95 = v5;
  DWORD2(v95) = v6;
  result = IARFFB_Ingredient.textMeasurementsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_111;
  }

  v12 = result;
  v83 = a2;
  v84 = v5;
  v85 = v4;
  if (result)
  {
    v13 = 0;
    v91 = MEMORY[0x277D84F90];
    v14 = -536870912;
    v86 = v6;
    while (1)
    {
      v16 = *(v3 + 24);
      v17 = *(v16 + v6);
      v8 = __OFSUB__(v6, v17);
      v18 = v6 - v17;
      if (v8)
      {
        break;
      }

      if (*(v16 + v18) >= 9u)
      {
        v8 = __OFADD__(v18, 8);
        v19 = v18 + 8;
        if (v8)
        {
          goto LABEL_82;
        }

        v20 = *(v16 + v19);
        if (v20)
        {
          v8 = __OFADD__(v20, v6);
          v21 = v20 + v6;
          if (v8)
          {
            goto LABEL_84;
          }

          v22 = *(v16 + v21);
          v8 = __OFADD__(v21, v22);
          v23 = v21 + v22;
          if (v8)
          {
            goto LABEL_85;
          }

          v8 = __OFADD__(v23, 4);
          v24 = v23 + 4;
          if (v8)
          {
            goto LABEL_86;
          }

          if (v14 >> 30 != 3)
          {
            goto LABEL_87;
          }

          v8 = __OFADD__(v24, v13);
          v25 = v24 + v13;
          if (v8)
          {
            goto LABEL_88;
          }

          v26 = *(v16 + v25);
          v27 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_89;
          }

          v28 = *(v16 + v27);
          v8 = __OFSUB__(v27, v28);
          v29 = v27 - v28;
          if (v8)
          {
            goto LABEL_90;
          }

          if (*(v16 + v29) < 7u)
          {
            goto LABEL_28;
          }

          v8 = __OFADD__(v29, 6);
          v30 = v29 + 6;
          if (v8)
          {
            goto LABEL_102;
          }

          v31 = *(v16 + v30);
          if (v31)
          {
            v8 = __OFADD__(v31, v27);
            v32 = v31 + v27;
            if (v8)
            {
              goto LABEL_106;
            }

            v33 = *(v16 + v32);
            v34 = v32 + v33;
            if (__OFADD__(v32, v33))
            {
              goto LABEL_107;
            }

            v35 = v3;
            v37 = v84;
            v36 = v85;
          }

          else
          {
LABEL_28:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v34 = 0;
          }

          v92[0] = v35;
          v92[1] = v36;
          v92[2] = v37;
          v93 = v34;

          result = sub_2442D31EC(v92, &v94);
          v38 = *(v3 + 24);
          v39 = *(v38 + v27);
          v8 = __OFSUB__(v27, v39);
          v40 = v27 - v39;
          if (v8)
          {
            goto LABEL_91;
          }

          v89 = v94;
          v41 = v96;
          v42 = v97;
          if (*(v38 + v40) < 5u)
          {
            v44 = 0;
          }

          else
          {
            v8 = __OFADD__(v40, 4);
            v43 = v40 + 4;
            if (v8)
            {
              goto LABEL_103;
            }

            v44 = *(v38 + v43);
          }

          v8 = __OFADD__(v44, v27);
          v45 = v44 + v27;
          if (v8)
          {
            goto LABEL_92;
          }

          v87 = v95;
          v46 = (v38 + v45);
          v47 = *v46;
          v48 = v46[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2442DBBD4(0, *(v91 + 16) + 1, 1, v91);
            v91 = result;
          }

          v50 = *(v91 + 16);
          v49 = *(v91 + 24);
          if (v50 >= v49 >> 1)
          {
            result = sub_2442DBBD4((v49 > 1), v50 + 1, 1, v91);
            v91 = result;
          }

          *(v91 + 16) = v50 + 1;
          v15 = v91 + (v50 << 6);
          *(v15 + 32) = v47;
          *(v15 + 40) = v48;
          *(v15 + 48) = v89;
          *(v15 + 64) = v87;
          *(v15 + 80) = v41;
          *(v15 + 88) = v42;
          v6 = v86;
        }
      }

      ++v14;
      v13 += 4;
      if (!--v12)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_41:
  *&v94 = v3;
  *(&v94 + 1) = v85;
  *&v95 = v84;
  DWORD2(v95) = v6;
  result = IARFFB_Ingredient.textIngredientsCount.getter();
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  v51 = result;
  if (result)
  {
    v52 = 0;
    v90 = MEMORY[0x277D84F90];
    v53 = -536870912;
    while (1)
    {
      v55 = *(v3 + 24);
      v56 = *(v55 + v6);
      v8 = __OFSUB__(v6, v56);
      v57 = v6 - v56;
      if (v8)
      {
        break;
      }

      if (*(v55 + v57) >= 0xBu)
      {
        v8 = __OFADD__(v57, 10);
        v58 = v57 + 10;
        if (v8)
        {
          goto LABEL_83;
        }

        v59 = *(v55 + v58);
        if (v59)
        {
          v8 = __OFADD__(v59, v6);
          v60 = v59 + v6;
          if (v8)
          {
            goto LABEL_93;
          }

          v61 = *(v55 + v60);
          v8 = __OFADD__(v60, v61);
          v62 = v60 + v61;
          if (v8)
          {
            goto LABEL_94;
          }

          v8 = __OFADD__(v62, 4);
          v63 = v62 + 4;
          if (v8)
          {
            goto LABEL_95;
          }

          if (v53 >> 30 != 3)
          {
            goto LABEL_96;
          }

          v8 = __OFADD__(v63, v52);
          v64 = v63 + v52;
          if (v8)
          {
            goto LABEL_97;
          }

          v65 = *(v55 + v64);
          v66 = v64 + v65;
          if (__OFADD__(v64, v65))
          {
            goto LABEL_98;
          }

          v67 = *(v55 + v66);
          v68 = v66 - v67;
          v69 = __OFSUB__(v66, v67);
          if (__OFSUB__(v66, v67))
          {
            goto LABEL_99;
          }

          if (*(v55 + v68) < 5u)
          {
            goto LABEL_67;
          }

          if (__OFADD__(v68, 4))
          {
            goto LABEL_104;
          }

          v70 = *(v55 + v68 + 4);
          if (*(v55 + v68 + 4))
          {
            v71 = v70 + v66;
            if (__OFADD__(v70, v66))
            {
              goto LABEL_108;
            }

            v73 = Table.directString(at:)(v71);
            object = v73.value._object;
            result = v73.value._countAndFlagsBits;
            countAndFlagsBits = v73.value._countAndFlagsBits;
            v55 = *(v3 + 24);
            v75 = *(v55 + v66);
            v68 = v66 - v75;
            v69 = __OFSUB__(v66, v75);
          }

          else
          {
LABEL_67:

            countAndFlagsBits = 0;
            object = 0;
          }

          if (v69)
          {
            goto LABEL_100;
          }

          if (*(v55 + v68) < 7u)
          {
            v76 = 0;
          }

          else
          {
            if (__OFADD__(v68, 6))
            {
              goto LABEL_105;
            }

            v76 = *(v55 + v68 + 6);
          }

          v8 = __OFADD__(v76, v66);
          v77 = v76 + v66;
          if (v8)
          {
            goto LABEL_101;
          }

          v88 = object;
          v78 = (v55 + v77);
          v79 = *v78;
          v80 = v78[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2442DBAC8(0, *(v90 + 16) + 1, 1, v90);
            v90 = result;
          }

          v82 = *(v90 + 16);
          v81 = *(v90 + 24);
          if (v82 >= v81 >> 1)
          {
            result = sub_2442DBAC8((v81 > 1), v82 + 1, 1, v90);
            v90 = result;
          }

          *(v90 + 16) = v82 + 1;
          v54 = (v90 + 32 * v82);
          v54[4] = countAndFlagsBits;
          v54[5] = v88;
          v54[6] = v79;
          v54[7] = v80;
        }
      }

      ++v53;
      v52 += 4;
      if (!--v51)
      {
        goto LABEL_79;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_79:

  *v83 = v9;
  v83[1] = v11;
  v83[2].value._countAndFlagsBits = v91;
  v83[2].value._object = v90;
  return result;
}

uint64_t IARFIngredient.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IARFIngredient.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_2443008BC()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x72676E4974786574;
  }

  if (*v0)
  {
    v1 = 1954047348;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_244300934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_244301368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24430095C(uint64_t a1)
{
  v2 = sub_244300C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244300998(uint64_t a1)
{
  v2 = sub_244300C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFIngredient.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDFB78, &qword_244319CE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v12 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244300C9C();
  sub_244313238();
  LOBYTE(v23) = 0;
  v13 = v21;
  sub_244313098();
  if (!v13)
  {
    v15 = v17;
    v16 = v18;
    LOBYTE(v23) = 1;
    sub_244313098();
    v23 = v16;
    v22 = 2;
    sub_2442C6564(&qword_27EDDFA08, &qword_2443191D0);
    sub_244301104(&qword_27EDDFA10, sub_2442E200C);
    sub_244313088();
    v23 = v15;
    v22 = 3;
    sub_2442C6564(&qword_27EDDFA18, &qword_2443191D8);
    sub_244300CF0(&qword_27EDDFA20, sub_2442FD1B8);
    sub_244313088();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_244300C9C()
{
  result = qword_27EDDFB80;
  if (!qword_27EDDFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB80);
  }

  return result;
}

uint64_t sub_244300CF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDFA18, &qword_2443191D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IARFIngredient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFB88, &qword_244319CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244300C9C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  LOBYTE(v26) = 0;
  v11 = sub_244313008();
  v24 = v12;
  LOBYTE(v26) = 1;
  v13 = sub_244313008();
  v23 = v14;
  v22 = v13;
  sub_2442C6564(&qword_27EDDFA08, &qword_2443191D0);
  v25 = 2;
  sub_244301104(&qword_27EDDFA48, sub_2442E2338);
  sub_244312FF8();
  v21 = v26;
  sub_2442C6564(&qword_27EDDFA18, &qword_2443191D8);
  v25 = 3;
  sub_244300CF0(&qword_27EDDFA50, sub_2442FD758);
  sub_244312FF8();
  (*(v6 + 8))(v9, v5);
  v16 = v26;
  v18 = v23;
  v17 = v24;
  *a2 = v11;
  a2[1] = v17;
  v19 = v21;
  a2[2] = v22;
  a2[3] = v18;
  a2[4] = v19;
  a2[5] = v16;

  sub_2442C6908(a1);
}

uint64_t sub_244301104(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDFA08, &qword_2443191D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2443011AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2443011F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_244301264()
{
  result = qword_27EDDFB90;
  if (!qword_27EDDFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB90);
  }

  return result;
}

unint64_t sub_2443012BC()
{
  result = qword_27EDDFB98;
  if (!qword_27EDDFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFB98);
  }

  return result;
}

unint64_t sub_244301314()
{
  result = qword_27EDDFBA0;
  if (!qword_27EDDFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBA0);
  }

  return result;
}

uint64_t sub_244301368(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C680 == a2 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72676E4974786574 && a2 == 0xEF73746E65696465)
  {

    return 3;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2443014E4()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_244301518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2443015EC(uint64_t a1)
{
  v2 = sub_2443017F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244301628(uint64_t a1)
{
  v2 = sub_2443017F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFTextRange.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDFBA8, &qword_244319EB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2443017F0();
  sub_244313238();
  v14 = 0;
  sub_2443130B8();
  if (!v2)
  {
    v13 = 1;
    sub_2443130B8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2443017F0()
{
  result = qword_27EDDFBB0;
  if (!qword_27EDDFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBB0);
  }

  return result;
}

uint64_t IARFTextRange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFBB8, &qword_244319EB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2443017F0();
  sub_244313228();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_244313028();
    v15 = 1;
    v12 = sub_244313028();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_2442C6908(a1);
}

uint64_t getEnumTagSinglePayload for IARFTextRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IARFTextRange(uint64_t result, int a2, int a3)
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

unint64_t sub_244301A80()
{
  result = qword_27EDDFBC0;
  if (!qword_27EDDFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBC0);
  }

  return result;
}

unint64_t sub_244301AD8()
{
  result = qword_27EDDFBC8;
  if (!qword_27EDDFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBC8);
  }

  return result;
}

unint64_t sub_244301B30()
{
  result = qword_27EDDFBD0;
  if (!qword_27EDDFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBD0);
  }

  return result;
}

uint64_t IARFInTextIngredient.recipeIngredientsID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 IARFInTextIngredient.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t sub_244301BC0()
{
  if (*v0)
  {
    result = 0x676E615274786574;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_244301C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024431C920 == a2 || (sub_244313108() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x676E615274786574 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_244313108();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_244301CF4(uint64_t a1)
{
  v2 = sub_244301F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244301D30(uint64_t a1)
{
  v2 = sub_244301F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFInTextIngredient.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDFBD8, &qword_24431A060);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244301F00();
  sub_244313238();
  LOBYTE(v17) = 0;
  sub_244313068();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_2442C6644();
    sub_2443130C8();
  }

  return (*(v16 + 8))(v7, v4);
}

unint64_t sub_244301F00()
{
  result = qword_27EDDFBE0;
  if (!qword_27EDDFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBE0);
  }

  return result;
}

uint64_t IARFInTextIngredient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDFBE8, &qword_24431A068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244301F00();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  LOBYTE(v17) = 0;
  v11 = sub_244312FD8();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_2442C6954();
  sub_244313038();
  (*(v6 + 8))(v9, v5);
  v15 = v17;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  sub_2442C6908(a1);
}

__n128 sub_244302160(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24430216C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2443021C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_244302240()
{
  result = qword_27EDDFBF0;
  if (!qword_27EDDFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBF0);
  }

  return result;
}

unint64_t sub_244302298()
{
  result = qword_27EDDFBF8;
  if (!qword_27EDDFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFBF8);
  }

  return result;
}

unint64_t sub_2443022F0()
{
  result = qword_27EDDFC00;
  if (!qword_27EDDFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFC00);
  }

  return result;
}

uint64_t sub_244302344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  result = Table.offset(_:)(4);
  if (!result)
  {

    v8 = 0;
    goto LABEL_5;
  }

  if (!__OFADD__(result, v6))
  {
    IARFFB_MeasurementWeightUnitType.init(rawValue:)(*(*(v4 + 24) + result + v6));

    v8 = byte_24431B142[v9];
LABEL_5:
    *a2 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2443023F0(char a1)
{
  result = 0x6D6172676F6C696BLL;
  switch(a1)
  {
    case 1:
      return 0x736D617267;
    case 2:
      v4 = 1768121700;
      goto LABEL_17;
    case 3:
      v3 = 1953391971;
      goto LABEL_11;
    case 4:
      v3 = 1819044205;
LABEL_11:
      v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x676900000000;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
    case 5:
      v5 = 0x676F7263696DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
    case 6:
      v4 = 1869504878;
      goto LABEL_17;
    case 7:
      v4 = 1868786032;
LABEL_17:
      result = v4 | 0x6D61726700000000;
      break;
    case 8:
      result = 0x7365636E756FLL;
      break;
    case 9:
      result = 0x73646E756F70;
      break;
    case 10:
      result = 0x73656E6F7473;
      break;
    case 11:
      result = 0x6F5463697274656DLL;
      break;
    case 12:
      result = 0x6E6F5474726F6873;
      break;
    case 13:
      result = 0x737461726163;
      break;
    case 14:
      result = 0x72547365636E756FLL;
      break;
    case 15:
      result = 0x7367756C73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2443025A0(uint64_t a1)
{
  v2 = sub_244303D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2443025DC(uint64_t a1)
{
  v2 = sub_244303D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302618(uint64_t a1)
{
  v2 = sub_2443040C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302654(uint64_t a1)
{
  v2 = sub_2443040C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2443062BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2443026CC(uint64_t a1)
{
  v2 = sub_244303C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302708(uint64_t a1)
{
  v2 = sub_244303C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302744(uint64_t a1)
{
  v2 = sub_244304114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302780(uint64_t a1)
{
  v2 = sub_244304114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2443027BC(uint64_t a1)
{
  v2 = sub_244304168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2443027F8(uint64_t a1)
{
  v2 = sub_244304168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302834(uint64_t a1)
{
  v2 = sub_2443041BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302870(uint64_t a1)
{
  v2 = sub_2443041BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2443028AC(uint64_t a1)
{
  v2 = sub_244303E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2443028E8(uint64_t a1)
{
  v2 = sub_244303E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302924(uint64_t a1)
{
  v2 = sub_244304018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302960(uint64_t a1)
{
  v2 = sub_244304018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24430299C(uint64_t a1)
{
  v2 = sub_24430406C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2443029D8(uint64_t a1)
{
  v2 = sub_24430406C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302A14(uint64_t a1)
{
  v2 = sub_244303FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302A50(uint64_t a1)
{
  v2 = sub_244303FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302A8C(uint64_t a1)
{
  v2 = sub_244303F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302AC8(uint64_t a1)
{
  v2 = sub_244303F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302B04(uint64_t a1)
{
  v2 = sub_244303D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302B40(uint64_t a1)
{
  v2 = sub_244303D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302B7C(uint64_t a1)
{
  v2 = sub_244303F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302BB8(uint64_t a1)
{
  v2 = sub_244303F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302BF4(uint64_t a1)
{
  v2 = sub_244303EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302C30(uint64_t a1)
{
  v2 = sub_244303EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302C6C(uint64_t a1)
{
  v2 = sub_244303DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302CA8(uint64_t a1)
{
  v2 = sub_244303DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302CE4(uint64_t a1)
{
  v2 = sub_244303CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302D20(uint64_t a1)
{
  v2 = sub_244303CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_244302D5C(uint64_t a1)
{
  v2 = sub_244303E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_244302D98(uint64_t a1)
{
  v2 = sub_244303E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFWeightUnit.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2442C6564(&qword_27EDDFC08, &qword_24431A220);
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v4);
  v111 = &v68 - v6;
  v7 = sub_2442C6564(&qword_27EDDFC10, &qword_24431A228);
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v7);
  v108 = &v68 - v9;
  v10 = sub_2442C6564(&qword_27EDDFC18, &qword_24431A230);
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v68 - v12;
  v13 = sub_2442C6564(&qword_27EDDFC20, &qword_24431A238);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = &v68 - v15;
  v16 = sub_2442C6564(&qword_27EDDFC28, &qword_24431A240);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v16);
  v99 = &v68 - v18;
  v19 = sub_2442C6564(&qword_27EDDFC30, &qword_24431A248);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v68 - v21;
  v95 = sub_2442C6564(&qword_27EDDFC38, &qword_24431A250);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v68 - v23;
  v92 = sub_2442C6564(&qword_27EDDFC40, &qword_24431A258);
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v68 - v25;
  v89 = sub_2442C6564(&qword_27EDDFC48, &qword_24431A260);
  v88 = *(v89 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v68 - v27;
  v86 = sub_2442C6564(&qword_27EDDFC50, &qword_24431A268);
  v85 = *(v86 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v68 - v29;
  v83 = sub_2442C6564(&qword_27EDDFC58, &qword_24431A270);
  v82 = *(v83 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v68 - v31;
  v80 = sub_2442C6564(&qword_27EDDFC60, &qword_24431A278);
  v79 = *(v80 - 8);
  v32 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v68 - v33;
  v77 = sub_2442C6564(&qword_27EDDFC68, &qword_24431A280);
  v76 = *(v77 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - v35;
  v74 = sub_2442C6564(&qword_27EDDFC70, &qword_24431A288);
  v73 = *(v74 - 8);
  v36 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - v37;
  v71 = sub_2442C6564(&qword_27EDDFC78, &qword_24431A290);
  v70 = *(v71 - 8);
  v38 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v40 = &v68 - v39;
  v41 = sub_2442C6564(&qword_27EDDFC80, &qword_24431A298);
  v69 = *(v41 - 8);
  v42 = *(v69 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v68 - v43;
  v115 = sub_2442C6564(&qword_27EDDFC88, &qword_24431A2A0);
  v45 = *(v115 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v115);
  v48 = &v68 - v47;
  v49 = *v2;
  v50 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_244303C7C();
  v114 = v48;
  sub_244313238();
  switch(v49)
  {
    case 1:
      v117 = 1;
      sub_244304168();
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v70 + 8);
      v58 = v40;
      v59 = &v103;
      goto LABEL_19;
    case 2:
      v117 = 2;
      sub_244304114();
      v61 = v72;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v73 + 8);
      v58 = v61;
      v59 = &v106;
      goto LABEL_19;
    case 3:
      v117 = 3;
      sub_2443040C0();
      v62 = v75;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v76 + 8);
      v58 = v62;
      v59 = &v109;
      goto LABEL_19;
    case 4:
      v117 = 4;
      sub_24430406C();
      v56 = v78;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v79 + 8);
      v58 = v56;
      v59 = &v112;
      goto LABEL_19;
    case 5:
      v117 = 5;
      sub_244304018();
      v64 = v81;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v82 + 8);
      v58 = v64;
      v59 = &v115;
      goto LABEL_19;
    case 6:
      v117 = 6;
      sub_244303FC4();
      v65 = v84;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v85 + 8);
      v58 = v65;
      v59 = &v116;
      goto LABEL_19;
    case 7:
      v117 = 7;
      sub_244303F70();
      v63 = v87;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v88 + 8);
      v58 = v63;
      v59 = &v118;
      goto LABEL_19;
    case 8:
      v117 = 8;
      sub_244303F1C();
      v66 = v90;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v91 + 8);
      v58 = v66;
      v59 = &v119;
      goto LABEL_19;
    case 9:
      v117 = 9;
      sub_244303EC8();
      v60 = v93;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v57 = *(v94 + 8);
      v58 = v60;
      v59 = &v120;
LABEL_19:
      v57(v58, *(v59 - 32));
      return (*(v45 + 8))(v51, v52);
    case 10:
      v117 = 10;
      sub_244303E74();
      v53 = v96;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v97;
      v54 = v98;
      goto LABEL_17;
    case 11:
      v117 = 11;
      sub_244303E20();
      v53 = v99;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v100;
      v54 = v101;
      goto LABEL_17;
    case 12:
      v117 = 12;
      sub_244303DCC();
      v53 = v102;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v103;
      v54 = v104;
      goto LABEL_17;
    case 13:
      v117 = 13;
      sub_244303D78();
      v53 = v105;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v106;
      v54 = v107;
      goto LABEL_17;
    case 14:
      v117 = 14;
      sub_244303D24();
      v53 = v108;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v109;
      v54 = v110;
      goto LABEL_17;
    case 15:
      v117 = 15;
      sub_244303CD0();
      v53 = v111;
      v51 = v114;
      v52 = v115;
      sub_244313058();
      v55 = v112;
      v54 = v113;
LABEL_17:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      v117 = 0;
      sub_2443041BC();
      v51 = v114;
      v52 = v115;
      sub_244313058();
      (*(v69 + 8))(v44, v41);
      break;
  }

  return (*(v45 + 8))(v51, v52);
}

unint64_t sub_244303C7C()
{
  result = qword_27EDDFC90;
  if (!qword_27EDDFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFC90);
  }

  return result;
}

unint64_t sub_244303CD0()
{
  result = qword_27EDDFC98;
  if (!qword_27EDDFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFC98);
  }

  return result;
}

unint64_t sub_244303D24()
{
  result = qword_27EDDFCA0;
  if (!qword_27EDDFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCA0);
  }

  return result;
}

unint64_t sub_244303D78()
{
  result = qword_27EDDFCA8;
  if (!qword_27EDDFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCA8);
  }

  return result;
}

unint64_t sub_244303DCC()
{
  result = qword_27EDDFCB0;
  if (!qword_27EDDFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCB0);
  }

  return result;
}

unint64_t sub_244303E20()
{
  result = qword_27EDDFCB8;
  if (!qword_27EDDFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCB8);
  }

  return result;
}

unint64_t sub_244303E74()
{
  result = qword_27EDDFCC0;
  if (!qword_27EDDFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCC0);
  }

  return result;
}

unint64_t sub_244303EC8()
{
  result = qword_27EDDFCC8;
  if (!qword_27EDDFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCC8);
  }

  return result;
}

unint64_t sub_244303F1C()
{
  result = qword_27EDDFCD0;
  if (!qword_27EDDFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCD0);
  }

  return result;
}

unint64_t sub_244303F70()
{
  result = qword_27EDDFCD8;
  if (!qword_27EDDFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCD8);
  }

  return result;
}

unint64_t sub_244303FC4()
{
  result = qword_27EDDFCE0;
  if (!qword_27EDDFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCE0);
  }

  return result;
}

unint64_t sub_244304018()
{
  result = qword_27EDDFCE8;
  if (!qword_27EDDFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCE8);
  }

  return result;
}

unint64_t sub_24430406C()
{
  result = qword_27EDDFCF0;
  if (!qword_27EDDFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCF0);
  }

  return result;
}

unint64_t sub_2443040C0()
{
  result = qword_27EDDFCF8;
  if (!qword_27EDDFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFCF8);
  }

  return result;
}

unint64_t sub_244304114()
{
  result = qword_27EDDFD00;
  if (!qword_27EDDFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFD00);
  }

  return result;
}

unint64_t sub_244304168()
{
  result = qword_27EDDFD08;
  if (!qword_27EDDFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFD08);
  }

  return result;
}

unint64_t sub_2443041BC()
{
  result = qword_27EDDFD10;
  if (!qword_27EDDFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFD10);
  }

  return result;
}

uint64_t IARFWeightUnit.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t IARFWeightUnit.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v146 = a2;
  v145 = sub_2442C6564(&qword_27EDDFD18, &qword_24431A2A8);
  v130 = *(v145 - 8);
  v3 = *(v130 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = v97 - v4;
  v129 = sub_2442C6564(&qword_27EDDFD20, &qword_24431A2B0);
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v140 = v97 - v6;
  v127 = sub_2442C6564(&qword_27EDDFD28, &qword_24431A2B8);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v139 = v97 - v8;
  v125 = sub_2442C6564(&qword_27EDDFD30, &qword_24431A2C0);
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v138 = v97 - v10;
  v123 = sub_2442C6564(&qword_27EDDFD38, &qword_24431A2C8);
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v137 = v97 - v12;
  v121 = sub_2442C6564(&qword_27EDDFD40, &qword_24431A2D0);
  v120 = *(v121 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v136 = v97 - v14;
  v119 = sub_2442C6564(&qword_27EDDFD48, &qword_24431A2D8);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v135 = v97 - v16;
  v117 = sub_2442C6564(&qword_27EDDFD50, &qword_24431A2E0);
  v116 = *(v117 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v134 = v97 - v18;
  v115 = sub_2442C6564(&qword_27EDDFD58, &qword_24431A2E8);
  v114 = *(v115 - 8);
  v19 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v144 = v97 - v20;
  v113 = sub_2442C6564(&qword_27EDDFD60, &qword_24431A2F0);
  v112 = *(v113 - 8);
  v21 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v143 = v97 - v22;
  v111 = sub_2442C6564(&qword_27EDDFD68, &qword_24431A2F8);
  v110 = *(v111 - 8);
  v23 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v142 = v97 - v24;
  v109 = sub_2442C6564(&qword_27EDDFD70, &qword_24431A300);
  v108 = *(v109 - 8);
  v25 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v133 = v97 - v26;
  v107 = sub_2442C6564(&qword_27EDDFD78, &qword_24431A308);
  v106 = *(v107 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v132 = v97 - v28;
  v105 = sub_2442C6564(&qword_27EDDFD80, &qword_24431A310);
  v104 = *(v105 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v131 = v97 - v30;
  v103 = sub_2442C6564(&qword_27EDDFD88, &qword_24431A318);
  v102 = *(v103 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v33 = v97 - v32;
  v34 = sub_2442C6564(&qword_27EDDFD90, &qword_24431A320);
  v101 = *(v34 - 8);
  v35 = *(v101 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = v97 - v36;
  v38 = sub_2442C6564(&qword_27EDDFD98, &unk_24431A328);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = v97 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v147 = a1;
  sub_2442C65AC(a1, v44);
  sub_244303C7C();
  v45 = v148;
  sub_244313228();
  v148 = v45;
  if (v45)
  {
LABEL_8:
    v67 = v147;
    return sub_2442C6908(v67);
  }

  v98 = v37;
  v97[1] = v34;
  v99 = v33;
  v46 = v142;
  v47 = v143;
  v49 = v144;
  v48 = v145;
  v100 = v39;
  v50 = v146;
  v51 = sub_244313048();
  v52 = (2 * *(v51 + 16)) | 1;
  v149[0] = v51;
  v149[1] = v51 + 32;
  v150 = 0;
  v151 = v52;
  v53 = sub_2442CED38();
  v54 = v42;
  if (v150 != v151 >> 1)
  {
LABEL_6:
    v61 = sub_244312EE8();
    v62 = swift_allocError();
    v64 = v63;
    v65 = v38;
    v66 = *(sub_2442C6564(&qword_27EDDEC40, &qword_244313E00) + 48);
    *v64 = &type metadata for IARFWeightUnit;
    sub_244312FC8();
    sub_244312EC8();
    (*(*(v61 - 8) + 104))(v64, *MEMORY[0x277D84160], v61);
    v148 = v62;
    swift_willThrow();
    (*(v100 + 8))(v54, v65);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v55 = v53;
  switch(v53)
  {
    case 0:
      v154 = 0;
      sub_2443041BC();
      v56 = v98;
      v57 = v148;
      sub_244312FB8();
      v148 = v57;
      if (v57)
      {
        goto LABEL_39;
      }

      v58 = *(v101 + 8);
      v59 = v56;
      v60 = &v129;
      goto LABEL_41;
    case 1:
      v154 = 1;
      sub_244304168();
      v87 = v99;
      v88 = v148;
      sub_244312FB8();
      v148 = v88;
      if (v88)
      {
        goto LABEL_39;
      }

      v58 = *(v102 + 8);
      v59 = v87;
      v60 = &v135;
      goto LABEL_41;
    case 2:
      v154 = 2;
      sub_244304114();
      v79 = v131;
      v80 = v148;
      sub_244312FB8();
      v148 = v80;
      if (v80)
      {
        goto LABEL_39;
      }

      v58 = *(v104 + 8);
      v59 = v79;
      v60 = &v137;
      goto LABEL_41;
    case 3:
      v154 = 3;
      sub_2443040C0();
      v84 = v132;
      v85 = v148;
      sub_244312FB8();
      v148 = v85;
      if (v85)
      {
        goto LABEL_39;
      }

      v58 = *(v106 + 8);
      v59 = v84;
      v60 = &v139;
      goto LABEL_41;
    case 4:
      v154 = 4;
      sub_24430406C();
      v73 = v133;
      v74 = v148;
      sub_244312FB8();
      v148 = v74;
      if (v74)
      {
        goto LABEL_39;
      }

      v58 = *(v108 + 8);
      v59 = v73;
      v60 = &v141;
      goto LABEL_41;
    case 5:
      v154 = 5;
      sub_244304018();
      v89 = v148;
      sub_244312FB8();
      v148 = v89;
      if (v89)
      {
        goto LABEL_39;
      }

      v58 = *(v110 + 8);
      v59 = v46;
      v60 = &v143;
      goto LABEL_41;
    case 6:
      v154 = 6;
      sub_244303FC4();
      v92 = v148;
      sub_244312FB8();
      v148 = v92;
      if (v92)
      {
        goto LABEL_39;
      }

      v58 = *(v112 + 8);
      v59 = v47;
      v60 = &v145;
      goto LABEL_41;
    case 7:
      v154 = 7;
      sub_244303F70();
      v86 = v148;
      sub_244312FB8();
      v148 = v86;
      if (v86)
      {
        goto LABEL_39;
      }

      v58 = *(v114 + 8);
      v59 = v49;
      v60 = &v147;
      goto LABEL_41;
    case 8:
      v154 = 8;
      sub_244303F1C();
      v95 = v134;
      v96 = v148;
      sub_244312FB8();
      v148 = v96;
      if (v96)
      {
        goto LABEL_39;
      }

      v58 = *(v116 + 8);
      v59 = v95;
      v60 = v149;
      goto LABEL_41;
    case 9:
      v154 = 9;
      sub_244303EC8();
      v77 = v135;
      v78 = v148;
      sub_244312FB8();
      v148 = v78;
      if (v78)
      {
        goto LABEL_39;
      }

      v58 = *(v118 + 8);
      v59 = v77;
      v60 = &v150;
      goto LABEL_41;
    case 10:
      v154 = 10;
      sub_244303E74();
      v93 = v136;
      v94 = v148;
      sub_244312FB8();
      v148 = v94;
      if (v94)
      {
        goto LABEL_39;
      }

      v58 = *(v120 + 8);
      v59 = v93;
      v60 = &v152;
      goto LABEL_41;
    case 11:
      v154 = 11;
      sub_244303E20();
      v71 = v137;
      v72 = v148;
      sub_244312FB8();
      v148 = v72;
      if (v72)
      {
        goto LABEL_39;
      }

      v58 = *(v122 + 8);
      v59 = v71;
      v60 = &v153;
      goto LABEL_41;
    case 12:
      v154 = 12;
      sub_244303DCC();
      v75 = v138;
      v76 = v148;
      sub_244312FB8();
      v148 = v76;
      if (v76)
      {
        goto LABEL_39;
      }

      v58 = *(v124 + 8);
      v59 = v75;
      v60 = &v155;
      goto LABEL_41;
    case 13:
      v154 = 13;
      sub_244303D78();
      v90 = v139;
      v91 = v148;
      sub_244312FB8();
      v148 = v91;
      if (v91)
      {
        goto LABEL_39;
      }

      v58 = *(v126 + 8);
      v59 = v90;
      v60 = &v156;
      goto LABEL_41;
    case 14:
      v154 = 14;
      sub_244303D24();
      v69 = v140;
      v70 = v148;
      sub_244312FB8();
      v148 = v70;
      if (v70)
      {
        goto LABEL_39;
      }

      v58 = *(v128 + 8);
      v59 = v69;
      v60 = &v157;
LABEL_41:
      v58(v59, *(v60 - 32));
      goto LABEL_42;
    case 15:
      v81 = v48;
      v154 = 15;
      sub_244303CD0();
      v82 = v141;
      v83 = v148;
      sub_244312FB8();
      v148 = v83;
      if (v83)
      {
LABEL_39:
        (*(v100 + 8))(v54, v38);
        goto LABEL_7;
      }

      (*(v130 + 8))(v82, v81);
LABEL_42:
      (*(v100 + 8))(v54, v38);
      swift_unknownObjectRelease();
      v67 = v147;
      *v50 = v55;
      break;
    default:
      goto LABEL_6;
  }

  return sub_2442C6908(v67);
}

unint64_t sub_2443053C8()
{
  result = qword_27EDDFDA0;
  if (!qword_27EDDFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFFB_MeasurementWeightUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFFB_MeasurementWeightUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2443056B8()
{
  result = qword_27EDDFDA8;
  if (!qword_27EDDFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDA8);
  }

  return result;
}

unint64_t sub_244305710()
{
  result = qword_27EDDFDB0;
  if (!qword_27EDDFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDB0);
  }

  return result;
}

unint64_t sub_244305768()
{
  result = qword_27EDDFDB8;
  if (!qword_27EDDFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDB8);
  }

  return result;
}

unint64_t sub_2443057C0()
{
  result = qword_27EDDFDC0;
  if (!qword_27EDDFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDC0);
  }

  return result;
}

unint64_t sub_244305818()
{
  result = qword_27EDDFDC8;
  if (!qword_27EDDFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDC8);
  }

  return result;
}

unint64_t sub_244305870()
{
  result = qword_27EDDFDD0;
  if (!qword_27EDDFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDD0);
  }

  return result;
}

unint64_t sub_2443058C8()
{
  result = qword_27EDDFDD8;
  if (!qword_27EDDFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDD8);
  }

  return result;
}

unint64_t sub_244305920()
{
  result = qword_27EDDFDE0;
  if (!qword_27EDDFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDE0);
  }

  return result;
}

unint64_t sub_244305978()
{
  result = qword_27EDDFDE8;
  if (!qword_27EDDFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDE8);
  }

  return result;
}

unint64_t sub_2443059D0()
{
  result = qword_27EDDFDF0;
  if (!qword_27EDDFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDF0);
  }

  return result;
}

unint64_t sub_244305A28()
{
  result = qword_27EDDFDF8;
  if (!qword_27EDDFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFDF8);
  }

  return result;
}

unint64_t sub_244305A80()
{
  result = qword_27EDDFE00;
  if (!qword_27EDDFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE00);
  }

  return result;
}

unint64_t sub_244305AD8()
{
  result = qword_27EDDFE08;
  if (!qword_27EDDFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE08);
  }

  return result;
}

unint64_t sub_244305B30()
{
  result = qword_27EDDFE10;
  if (!qword_27EDDFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE10);
  }

  return result;
}

unint64_t sub_244305B88()
{
  result = qword_27EDDFE18;
  if (!qword_27EDDFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE18);
  }

  return result;
}

unint64_t sub_244305BE0()
{
  result = qword_27EDDFE20;
  if (!qword_27EDDFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE20);
  }

  return result;
}

unint64_t sub_244305C38()
{
  result = qword_27EDDFE28;
  if (!qword_27EDDFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE28);
  }

  return result;
}

unint64_t sub_244305C90()
{
  result = qword_27EDDFE30;
  if (!qword_27EDDFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE30);
  }

  return result;
}

unint64_t sub_244305CE8()
{
  result = qword_27EDDFE38;
  if (!qword_27EDDFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE38);
  }

  return result;
}

unint64_t sub_244305D40()
{
  result = qword_27EDDFE40;
  if (!qword_27EDDFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE40);
  }

  return result;
}

unint64_t sub_244305D98()
{
  result = qword_27EDDFE48;
  if (!qword_27EDDFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE48);
  }

  return result;
}

unint64_t sub_244305DF0()
{
  result = qword_27EDDFE50;
  if (!qword_27EDDFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE50);
  }

  return result;
}

unint64_t sub_244305E48()
{
  result = qword_27EDDFE58;
  if (!qword_27EDDFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE58);
  }

  return result;
}

unint64_t sub_244305EA0()
{
  result = qword_27EDDFE60;
  if (!qword_27EDDFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE60);
  }

  return result;
}

unint64_t sub_244305EF8()
{
  result = qword_27EDDFE68;
  if (!qword_27EDDFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE68);
  }

  return result;
}

unint64_t sub_244305F50()
{
  result = qword_27EDDFE70;
  if (!qword_27EDDFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE70);
  }

  return result;
}

unint64_t sub_244305FA8()
{
  result = qword_27EDDFE78;
  if (!qword_27EDDFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE78);
  }

  return result;
}

unint64_t sub_244306000()
{
  result = qword_27EDDFE80;
  if (!qword_27EDDFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE80);
  }

  return result;
}

unint64_t sub_244306058()
{
  result = qword_27EDDFE88;
  if (!qword_27EDDFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE88);
  }

  return result;
}

unint64_t sub_2443060B0()
{
  result = qword_27EDDFE90;
  if (!qword_27EDDFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE90);
  }

  return result;
}

unint64_t sub_244306108()
{
  result = qword_27EDDFE98;
  if (!qword_27EDDFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFE98);
  }

  return result;
}

unint64_t sub_244306160()
{
  result = qword_27EDDFEA0;
  if (!qword_27EDDFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEA0);
  }

  return result;
}

unint64_t sub_2443061B8()
{
  result = qword_27EDDFEA8;
  if (!qword_27EDDFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEA8);
  }

  return result;
}

unint64_t sub_244306210()
{
  result = qword_27EDDFEB0;
  if (!qword_27EDDFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEB0);
  }

  return result;
}

unint64_t sub_244306268()
{
  result = qword_27EDDFEB8;
  if (!qword_27EDDFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEB8);
  }

  return result;
}

uint64_t sub_2443062BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6172676F6C696BLL && a2 == 0xE900000000000073;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D617267 && a2 == 0xE500000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D61726769636564 && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61726769746E6563 && a2 == 0xEA0000000000736DLL || (sub_244313108() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617267696C6C696DLL && a2 == 0xEA0000000000736DLL || (sub_244313108() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6172676F7263696DLL && a2 == 0xEA0000000000736DLL || (sub_244313108() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6172676F6E616ELL && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6172676F636970 && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7365636E756FLL && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73646E756F70 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73656E6F7473 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F5463697274656DLL && a2 == 0xEA0000000000736ELL || (sub_244313108() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F5474726F6873 && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737461726163 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72547365636E756FLL && a2 == 0xEA0000000000796FLL || (sub_244313108() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7367756C73 && a2 == 0xE500000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

char IARFFB_MeasurementVolumeUnit.type.getter@<W0>(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  v7 = Table.offset(_:)(4);
  if (v7)
  {
    if (__OFADD__(v7, v6))
    {
      __break(1u);
      return v7;
    }

    LOBYTE(v7) = IARFFB_MeasurementVolumeUnitType.init(rawValue:)(*(*(v4 + 24) + v7 + v6));
    v8 = v10;
    if (v10 == 31)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return v7;
}

uint64_t IARFFB_Measurement.unitType.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  result = Table.offset(_:)(6);
  if (!result)
  {
    LOBYTE(v8) = 0;
LABEL_6:
    *a1 = v8;
    return result;
  }

  if (!__OFADD__(result, v6))
  {
    v8 = *(*(v4 + 24) + result + v6);
    if (v8 >= 5)
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void IARFFB_Measurement.quantity.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 5u)
  {
    return;
  }

  v4 = __OFADD__(v5, 4);
  v6 = v5 + 4;
  if (v4)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v2 + v8);
}

void IARFFB_Measurement.maxQuantity.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0xBu)
  {
    return;
  }

  v4 = __OFADD__(v5, 10);
  v6 = v5 + 10;
  if (v4)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v2 + v8);
}

void sub_244306980(uint64_t a1, uint64_t a2)
{
  sub_2442E0FBC(a2);
  if (!v2)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = *(*(v6 + 24) + a2) + a2;
      if (v7 < 0)
      {
        v7 = -v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_2442E0FBC(v8);
      Verifier.rangeInBuffer(position:size:)(v8, 4);
      if (!v9)
      {
        v10 = v8 + 4;
        if (v8 + 4 < 0)
        {
          v10 = -4 - v8;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        Verifier.rangeInBuffer(position:size:)(v11, *(*(v6 + 24) + v8));
      }
    }
  }
}

void sub_244306A30(uint64_t a1, uint64_t a2)
{
  v5 = sub_244312CC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_2442E0FBC(a2);
  if (!v2)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v13)
    {
      v14 = *(a1 + 40);
      v15 = *(*(v14 + 24) + a2);
      v16 = a2 + 4;
      if (a2 + 4 < 0)
      {
        v16 = -4 - a2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      Verifier.rangeInBuffer(position:size:)(v17, *(*(v14 + 24) + a2));
      if (!v18)
      {
        v19 = v17 + v15;
        v20 = *(a1 + 8);
        if ((v17 + v15) >= v20)
        {
          if (v19 >= 0)
          {
            v23 = v17 + v15;
          }

          else
          {
            v23 = -v19;
          }

          v24 = v20;
          sub_2442DDB84();
          swift_allocError();
          *v25 = v23;
          *(v25 + 8) = v24;
          v27 = v35;
          v26 = v36;
          *(v25 + 16) = v34;
          *(v25 + 32) = v27;
          *(v25 + 48) = v26;
          *(v25 + 64) = 1;
          swift_willThrow();
        }

        else if ((*(a1 + 76) & 1) == 0 && *(*(v14 + 24) + v19))
        {
          sub_244312CB8();
          if (v15)
          {
            v21 = *(v14 + 24);
            v22 = sub_2442D54E0(v15, 0);
            memcpy(v22 + 4, (v21 + v17), v15);
          }

          else
          {
            v22 = MEMORY[0x277D84F90];
          }

          *&v34 = v22;
          (*(v6 + 16))(v10, v12, v5);
          sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
          sub_2442C90F4();
          v28 = sub_244312CA8();
          v30 = v29;
          (*(v6 + 8))(v12, v5);

          sub_2442DDB84();
          swift_allocError();
          *v31 = a2;
          *(v31 + 8) = v28;
          *(v31 + 16) = v30;
          v32 = v36;
          v33 = v35;
          *(v31 + 24) = v34;
          *(v31 + 40) = v33;
          *(v31 + 56) = v32;
          *(v31 + 64) = 4;
          swift_willThrow();
        }
      }
    }
  }
}

void *sub_244306CF8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + a5);
  v7 = __OFSUB__(a5, v6);
  v8 = a5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v5 + v8) <= result)
  {
    return 0;
  }

  v7 = __OFADD__(v8, result);
  v9 = v8 + result;
  if (v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v5 + v9);
  if (!v10)
  {
    return 0;
  }

  v7 = __OFADD__(v10, a5);
  v11 = v10 + a5;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v5 + v11);
  v7 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v13, 4))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *(v5 + v13);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (v5 + v13 + 4);
  v16 = sub_2442D54E0(*(v5 + v13), 0);
  memcpy(v16 + 4, v15, v14);
  return v16;
}

void sub_244306DC0(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (v4[2] > a1)
  {
    v9 = a4;
    v10 = v4[1] + a1;
    sub_2442E0E9C(v10);
    if (v5)
    {
      return;
    }

    Verifier.rangeInBuffer(position:size:)(v10, 2);
    if (v11)
    {
      return;
    }

    v12 = v4[8];
    if (*(*(v12 + 24) + v10))
    {
      v13 = *v4 + *(*(v12 + 24) + v10);
      sub_2442E0FBC(v13);
      Verifier.rangeInBuffer(position:size:)(v13, 4);
      if (!v14)
      {
        v15 = v13 + *(*(v12 + 24) + v13);
        if (v15 < 0)
        {
          v15 = -v15;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        sub_244306A30((v4 + 3), v16);
      }

      return;
    }

    a4 = v9;
  }

  if (a4)
  {
    sub_2442DDB84();
    swift_allocError();
    *v17 = a1;
    *(v17 + 6) = v22;
    *(v17 + 2) = v21;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    *(v17 + 24) = v18;
    *(v17 + 40) = v19;
    *(v17 + 56) = v20;
    *(v17 + 64) = 3;
    swift_willThrow();
  }
}

void sub_244306F20(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  if (v4[2] <= a1)
  {
LABEL_7:
    if (a4)
    {
      sub_2442DDB84();
      swift_allocError();
      *v14 = a1;
      *(v14 + 6) = v19;
      *(v14 + 2) = v18;
      *(v14 + 8) = a2;
      *(v14 + 16) = a3;
      *(v14 + 24) = v15;
      *(v14 + 40) = v16;
      *(v14 + 56) = v17;
      *(v14 + 64) = 3;
      swift_willThrow();
    }

    return;
  }

  v9 = a4;
  v10 = v4[1] + a1;
  sub_2442E0E9C(v10);
  if (!v5)
  {
    Verifier.rangeInBuffer(position:size:)(v10, 2);
    if (!v11)
    {
      v12 = *(*(v4[8] + 24) + v10);
      if (v12)
      {
        v13 = *v4;
        sub_2442E0ECC(*v4 + v12);
        Verifier.rangeInBuffer(position:size:)(v13 + v12, 4);
        return;
      }

      a4 = v9;
      goto LABEL_7;
    }
  }
}

void sub_2443070B0(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t))
{
  if (v5[2] > a1)
  {
    v10 = a4;
    v12 = v5[1] + a1;
    sub_2442E0E9C(v12);
    if (v6)
    {
      return;
    }

    Verifier.rangeInBuffer(position:size:)(v12, 2);
    if (v13)
    {
      return;
    }

    v14 = v5[8];
    if (*(*(v14 + 24) + v12))
    {
      v15 = *v5 + *(*(v14 + 24) + v12);
      sub_2442E0FBC(v15);
      Verifier.rangeInBuffer(position:size:)(v15, 4);
      if (!v16)
      {
        v17 = v15 + *(*(v14 + 24) + v15);
        if (v17 < 0)
        {
          v17 = -v17;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        sub_244307224((v5 + 3), v18, a5);
      }

      return;
    }

    a4 = v10;
  }

  if (a4)
  {
    sub_2442DDB84();
    swift_allocError();
    *v19 = a1;
    *(v19 + 6) = v24;
    *(v19 + 2) = v23;
    *(v19 + 8) = a2;
    *(v19 + 16) = a3;
    *(v19 + 24) = v20;
    *(v19 + 40) = v21;
    *(v19 + 56) = v22;
    *(v19 + 64) = 3;
    swift_willThrow();
  }
}

void sub_244307224(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_2442E0FBC(a2);
  if (!v3)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v7)
    {
      v8 = *(*(*(a1 + 40) + 24) + a2);
      v9 = a2 + 4;
      if (a2 + 4 < 0)
      {
        v9 = -4 - a2;
      }

      v10 = v9 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v9;
      sub_2442E0FBC(v10);
      Verifier.rangeInBuffer(position:size:)(v10, v8);
      if (!v11)
      {
        v12 = v10 + v8;
        if (v10 < v12)
        {
          do
          {
            v13 = v10 + 4;
            if (__OFADD__(v10, 4))
            {
              v14 = 0x7FFFFFFFFFFFFFFFLL;
              if ((*a1 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v14 = v10 + 4;
              if (!*a1)
              {
                goto LABEL_17;
              }
            }

            if (((*(*(a1 + 40) + 24) + v10) & 3) != 0)
            {
              *&v27 = MEMORY[0x277D84CC0];
              sub_2442C6564(&qword_27EDDF268, qword_244316998);
              v23 = sub_244312CD8();
              v25 = v24;
              sub_2442DDB84();
              swift_allocError();
              *v26 = v10;
              *(v26 + 8) = v23;
              *(v26 + 16) = v25;
              *(v26 + 24) = v27;
              *(v26 + 40) = v28;
              *(v26 + 56) = v29;
              *(v26 + 64) = 0;
              swift_willThrow();
              return;
            }

LABEL_17:
            if ((v13 & 0x8000000000000000) != 0)
            {
              v13 = -v13;
            }

            v15 = *(a1 + 40);
            v16 = *(v15 + 32);
            if ((v16 & 0x8000000000000000) != 0 || v16 < v13)
            {
              v20 = *(a1 + 8);
              sub_2442DDB84();
              swift_allocError();
              *v21 = v13;
              *(v21 + 8) = v20;
              *(v21 + 16) = v27;
              *(v21 + 32) = v28;
              *(v21 + 48) = v29;
              v22 = 1;
LABEL_32:
              *(v21 + 64) = v22;
              swift_willThrow();
              return;
            }

            v17 = *(a1 + 16) + 4;
            *(a1 + 16) = v17;
            if (*(a1 + 64) < v17)
            {
              sub_2442DDB84();
              swift_allocError();
              *v21 = 6;
              *(v21 + 8) = 0u;
              *(v21 + 24) = 0u;
              *(v21 + 40) = 0u;
              *(v21 + 56) = 0;
              v22 = 7;
              goto LABEL_32;
            }

            v18 = v10 + *(*(v15 + 24) + v10);
            if (v18 < 0)
            {
              v18 = -v18;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            a3(a1, v19);
            v10 = v14;
          }

          while (v14 < v12);
        }
      }
    }
  }
}

void sub_244307494(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  sub_2442E0FBC(a2);
  if (!v3)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v7)
    {
      v8 = *(*(*(a1 + 40) + 24) + a2);
      v9 = a2 + 4;
      if (a2 + 4 < 0)
      {
        v9 = -4 - a2;
      }

      v10 = v9 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v9;
      sub_2442E0FBC(v10);
      Verifier.rangeInBuffer(position:size:)(v10, v8);
      if (!v11)
      {
        v12 = v10 + v8;
        if (v10 < v12)
        {
          do
          {
            v13 = v10 + 4;
            if (__OFADD__(v10, 4))
            {
              v14 = 0x7FFFFFFFFFFFFFFFLL;
              if ((*a1 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v14 = v10 + 4;
              if (!*a1)
              {
                goto LABEL_17;
              }
            }

            if (((*(*(a1 + 40) + 24) + v10) & 3) != 0)
            {
              *&v27 = MEMORY[0x277D84CC0];
              sub_2442C6564(&qword_27EDDF268, qword_244316998);
              v23 = sub_244312CD8();
              v25 = v24;
              sub_2442DDB84();
              swift_allocError();
              *v26 = v10;
              *(v26 + 8) = v23;
              *(v26 + 16) = v25;
              *(v26 + 24) = v27;
              *(v26 + 40) = v28;
              *(v26 + 56) = v29;
              *(v26 + 64) = 0;
              swift_willThrow();
              return;
            }

LABEL_17:
            if ((v13 & 0x8000000000000000) != 0)
            {
              v13 = -v13;
            }

            v15 = *(a1 + 40);
            v16 = *(v15 + 32);
            if ((v16 & 0x8000000000000000) != 0 || v16 < v13)
            {
              v20 = *(a1 + 8);
              sub_2442DDB84();
              swift_allocError();
              *v21 = v13;
              *(v21 + 8) = v20;
              *(v21 + 16) = v27;
              *(v21 + 32) = v28;
              *(v21 + 48) = v29;
              v22 = 1;
LABEL_32:
              *(v21 + 64) = v22;
              swift_willThrow();
              return;
            }

            v17 = *(a1 + 16) + 4;
            *(a1 + 16) = v17;
            if (*(a1 + 64) < v17)
            {
              sub_2442DDB84();
              swift_allocError();
              *v21 = 6;
              *(v21 + 8) = 0u;
              *(v21 + 24) = 0u;
              *(v21 + 40) = 0u;
              *(v21 + 56) = 0;
              v22 = 7;
              goto LABEL_32;
            }

            v18 = v10 + *(*(v15 + 24) + v10);
            if (v18 < 0)
            {
              v18 = -v18;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            sub_24430BCB4(a1, v19, a3);
            v10 = v14;
          }

          while (v14 < v12);
        }
      }
    }
  }
}

uint64_t IARFFB_Recipe.recipeYieldCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0x19u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 24);
  v6 = v5 + 24;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t IARFFB_Recipe.ingredientsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0x1Bu)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 26);
  v6 = v5 + 26;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t IARFFB_Recipe.stepSectionsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0x1Du)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 28);
  v6 = v5 + 28;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t IARFFB_Recipe.structuredComponentsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0x1Fu)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 30);
  v6 = v5 + 30;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

CookingData::IARFFB_StructuredComponent_optional __swiftcall IARFFB_Recipe.structuredComponents(at:)(Swift::Int32 at)
{
  v4 = v1;
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 6);
  v9 = Table.offset(_:)(30);
  if (v9)
  {
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v6 + 24);
      v12 = *(v11 + v10);
      v13 = __OFADD__(v10, v12);
      v14 = v10 + v12;
      if (!v13)
      {
        v13 = __OFADD__(v14, 4);
        v15 = v14 + 4;
        if (!v13)
        {
          v13 = __OFADD__(v15, at);
          v16 = v15 + at;
          if (!v13)
          {
            v17 = *(v11 + v16);
            if (v17 >= 5)
            {
              LOBYTE(v17) = 5;
            }

            goto LABEL_9;
          }

LABEL_13:
          __break(1u);
          return v9;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v17) = 0;
LABEL_9:
  *v4 = v17;
  return v9;
}

uint64_t sub_244307A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, Swift::Int32 a3@<W3>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = Table.offset(_:)(a3);
  if (v12)
  {
    Table.union<A>(_:)(v12, v8, v9, v10, v11, a1, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(*(a1 - 8) + 56);

  return v14(a4, v13, 1, a1);
}

uint64_t IARFFB_StepSection.ingredientsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0xDu)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 12);
  v6 = v5 + 12;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t IARFFB_SubStep.textTimersCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 7u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 6);
  v6 = v5 + 6;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t _s11CookingData12IARFFB_YieldV15textMeasurementAA0c7_InTextF0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  result = Table.offset(_:)(6);
  if (!result)
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = result + v6;
  if (__OFADD__(result, v6))
  {
    __break(1u);
  }

  else
  {
    v9 = *(*(v4 + 24) + v8);
    v10 = v8 + v9;
    if (!__OFADD__(v8, v9))
    {

LABEL_6:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;
      *(a1 + 24) = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_244307C54@<X0>(Swift::Int32 a1@<W0>, char *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  result = Table.offset(_:)(a1);
  if (!result)
  {
    v10 = 0;
LABEL_7:
    *a2 = v10;
    return result;
  }

  if (!__OFADD__(result, v7))
  {
    v9 = *(*(v5 + 24) + result + v7);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s11CookingData18IARFFB_MeasurementV4unit4typexSgxm_tAA24FlatbuffersInitializableRzlF_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = Table.offset(_:)(8);
  Table.union<A>(_:)(v11, v7, v8, v9, v10, a1, a2);
  v12 = *(*(a1 - 8) + 56);

  return v12(a3, 0, 1, a1);
}

uint64_t sub_244307D90(Swift::Int32 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 6);
  v6 = Table.offset(_:)(a1);
  v7 = __OFADD__(v6, v5);
  result = (v6 + v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {

    return Table.directString(at:)(result).value._countAndFlagsBits;
  }

  return result;
}

uint64_t _s11CookingData11IARFFB_StepV16ingredientsCounts5Int32Vvg_0()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t _s11CookingData11IARFFB_StepV13substepsCounts5Int32Vvg_0()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 0xBu)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 10);
  v6 = v5 + 10;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_244307ED8@<X0>(int a1@<W0>, Swift::Int32 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v9 = *(v3 + 6);
  result = Table.offset(_:)(a2);
  if (!result)
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  v11 = result + v9;
  if (__OFADD__(result, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v7 + 24);
  v13 = *(v12 + v11);
  v14 = __OFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFADD__(v15, 4);
  v16 = v15 + 4;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = __OFADD__(v16, 4 * a1);
  v17 = v16 + 4 * a1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(v12 + v17);
  v19 = v17 + v18;
  if (!__OFADD__(v17, v18))
  {

LABEL_10:
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v8;
    *(a3 + 24) = v19;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s11CookingData18IARFFB_StepSectionV5titleSSSgvg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = Table.offset(_:)(4);
  if (!v5)
  {
    return 0;
  }

  v6 = __OFADD__(v5, v4);
  result = (v5 + v4);
  if (!v6)
  {
    return Table.directString(at:)(result).value._countAndFlagsBits;
  }

  __break(1u);
  return result;
}