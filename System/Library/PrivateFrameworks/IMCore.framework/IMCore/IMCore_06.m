unint64_t sub_1A83F3678()
{
  result = qword_1EB2E4630;
  if (!qword_1EB2E4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4630);
  }

  return result;
}

unint64_t sub_1A83F36CC()
{
  result = qword_1EB2E4660;
  if (!qword_1EB2E4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4660);
  }

  return result;
}

unint64_t sub_1A83F3720()
{
  result = qword_1EB2E4648;
  if (!qword_1EB2E4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4648);
  }

  return result;
}

unint64_t sub_1A83F3774()
{
  result = qword_1EB2E4678;
  if (!qword_1EB2E4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4678);
  }

  return result;
}

uint64_t CountStatistics.description.getter()
{
  v67 = *(v0 + 32);
  v68 = *(v0 + 48);
  v69 = *(v0 + 64);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v66 = *(v0 + 160);
  v64 = *(v0 + 128);
  v65 = *(v0 + 144);
  v26 = *(v0 + 184);
  v27 = *(v0 + 176);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v25 = *(v0 + 168);
  v63 = *(v0 + 256);
  v61 = *(v0 + 224);
  v62 = *(v0 + 240);
  v32 = *(v0 + 280);
  v33 = *(v0 + 272);
  v29 = *(v0 + 304);
  v30 = *(v0 + 296);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v60 = *(v0 + 352);
  v58 = *(v0 + 320);
  v59 = *(v0 + 336);
  v38 = *(v0 + 376);
  v39 = *(v0 + 368);
  v35 = *(v0 + 400);
  v36 = *(v0 + 392);
  v34 = *(v0 + 384);
  v37 = *(v0 + 360);
  v57 = *(v0 + 448);
  v55 = *(v0 + 416);
  v56 = *(v0 + 432);
  v44 = *(v0 + 472);
  v45 = *(v0 + 464);
  v41 = *(v0 + 496);
  v42 = *(v0 + 488);
  v40 = *(v0 + 480);
  v43 = *(v0 + 456);
  v54 = sub_1A84740F4();
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v10 = sub_1A847AAF0(v5);
  MEMORY[0x1AC56A990](v10);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v11 = sub_1A84953E4(v6, v1, v2);
  MEMORY[0x1AC56A990](v11);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v46 = sub_1A84740F4();
  v50 = v12;
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v13 = sub_1A847AAF0(v9);
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v14 = sub_1A84953E4(v25, v27, v26);
  MEMORY[0x1AC56A990](v14);

  MEMORY[0x1AC56A990](v46, v50);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v47 = sub_1A84740F4();
  v51 = v15;
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v16 = sub_1A847AAF0(v28);
  MEMORY[0x1AC56A990](v16);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v17 = sub_1A84953E4(v31, v33, v32);
  MEMORY[0x1AC56A990](v17);

  MEMORY[0x1AC56A990](v47, v51);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v48 = sub_1A84740F4();
  v52 = v18;
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v19 = sub_1A847AAF0(v34);
  MEMORY[0x1AC56A990](v19);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v20 = sub_1A84953E4(v37, v39, v38);
  MEMORY[0x1AC56A990](v20);

  MEMORY[0x1AC56A990](v48, v52);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v49 = sub_1A84740F4();
  v53 = v21;
  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v22 = sub_1A847AAF0(v40);
  MEMORY[0x1AC56A990](v22);

  MEMORY[0x1AC56A990](10, 0xE100000000000000);
  v23 = sub_1A84953E4(v43, v45, v44);
  MEMORY[0x1AC56A990](v23);

  MEMORY[0x1AC56A990](v49, v53);

  return v54;
}

unint64_t sub_1A83F3BD8()
{
  result = qword_1EB2E6F28;
  if (!qword_1EB2E6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6F28);
  }

  return result;
}

unint64_t sub_1A83F3C30()
{
  result = qword_1EB2E4638;
  if (!qword_1EB2E4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4638);
  }

  return result;
}

unint64_t sub_1A83F3C88()
{
  result = qword_1EB2E4640;
  if (!qword_1EB2E4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4640);
  }

  return result;
}

unint64_t sub_1A83F3CE0()
{
  result = qword_1EB2E6F30;
  if (!qword_1EB2E6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6F30);
  }

  return result;
}

unint64_t sub_1A83F3D38()
{
  result = qword_1EB2E4668;
  if (!qword_1EB2E4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4668);
  }

  return result;
}

unint64_t sub_1A83F3D90()
{
  result = qword_1EB2E4670;
  if (!qword_1EB2E4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4670);
  }

  return result;
}

unint64_t sub_1A83F3DE8()
{
  result = qword_1EB2E6F38;
  if (!qword_1EB2E6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6F38);
  }

  return result;
}

unint64_t sub_1A83F3E40()
{
  result = qword_1EB2E4650;
  if (!qword_1EB2E4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4650);
  }

  return result;
}

unint64_t sub_1A83F3E98()
{
  result = qword_1EB2E4658;
  if (!qword_1EB2E4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4658);
  }

  return result;
}

unint64_t sub_1A83F3EF0()
{
  result = qword_1EB2E6F40;
  if (!qword_1EB2E6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6F40);
  }

  return result;
}

unint64_t sub_1A83F3F48()
{
  result = qword_1EB2E4680;
  if (!qword_1EB2E4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4680);
  }

  return result;
}

unint64_t sub_1A83F3FA0()
{
  result = qword_1EB2E4688;
  if (!qword_1EB2E4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4688);
  }

  return result;
}

uint64_t sub_1A83F3FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 504))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 6;
  if (v3 < 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1A83F4050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountStatistics.RootKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountStatistics.RootKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountStatistics.SyncStoreCountKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountStatistics.SyncStoreCountKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncCountType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncCountType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CountStatistics.ServerCountKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountStatistics.ServerCountKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1A83F4684@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v150 = a6;
  v149 = a5;
  v151 = a4;
  v11 = sub_1A84E5B9C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1A84E577C();
  v122 = *(v123 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1A84E56DC();
  v16 = *(v147 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v147);
  v124 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v119 - v20;
  v21 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v144 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v145 = &v119 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v119 - v27;
  v29 = type metadata accessor for ImportExport.MessagePart();
  v148 = *(v29 - 1);
  v30 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = a1;
  v33 = [a1 guid];
  if (!v33)
  {
    sub_1A84E5DBC();
    v33 = sub_1A84E5D8C();
  }

  v34 = [a2 messagePartGUIDForMessageGUID_];

  if (!v34)
  {
    sub_1A824B2D4(v150, &qword_1EB2E6F50, &unk_1A8502920);

    return (*(v148 + 56))(a7, 1, 1, v29);
  }

  v141 = a2;
  v35 = [v34 encodedMessagePartGUID];

  v139 = sub_1A84E5DBC();
  v138 = v36;

  v37 = a3;
  v38 = v151;
  v39 = sub_1A84E5D8C();
  v40 = _IMStringStrippingControlCharacters();

  if (v40)
  {
    v37 = sub_1A84E5DBC();
    v137 = v41;
  }

  else
  {

    v137 = v38;
  }

  v43 = v156;
  sub_1A84D4AF0(&v155);
  v136 = v155;
  if (![v43 isReply])
  {
    v48 = 0;
    v50 = 0;
    OriginatorRange = 0;
    v132 = 0;
    OriginatorMessagePart = 0;
    goto LABEL_16;
  }

  v135 = v16;
  v44 = a7;
  v45 = [v43 threadOriginatorGUID];
  if (!v45)
  {
    goto LABEL_14;
  }

  v46 = v43;
  v47 = v45;
  v48 = sub_1A84E5DBC();
  v50 = v49;

  v51 = [v46 threadOriginatorPart];
  if (!v51)
  {

LABEL_14:
    v48 = 0;
    v50 = 0;
    OriginatorRange = 0;
    v132 = 0;
    OriginatorMessagePart = 0;
    goto LABEL_15;
  }

  v52 = v51;
  OriginatorRange = IMMessageThreadIdentifierGetOriginatorRange();
  v132 = v53;
  OriginatorMessagePart = IMMessageThreadIdentifierGetOriginatorMessagePart();

LABEL_15:
  a7 = v44;
  v16 = v135;
LABEL_16:
  v54 = v156;
  sub_1A84D4C30(v154);
  v55 = [v54 balloonBundleID];
  if (v55)
  {
    v56 = v55;
    v128 = sub_1A84E5DBC();
    v127 = v57;
  }

  else
  {
    v128 = 0;
    v127 = 0;
  }

  v58 = [v156 payloadData];
  if (v58)
  {
    v59 = v58;
    v131 = sub_1A84E55FC();
    v130 = v60;
  }

  else
  {
    v131 = 0;
    v130 = 0xF000000000000000;
  }

  v61 = [v156 expressiveSendStyleID];
  v142 = a7;
  v135 = v48;
  if (v61)
  {
    v62 = v61;
    v126 = sub_1A84E5DBC();
    v125 = v63;
  }

  else
  {
    v126 = 0;
    v125 = 0;
  }

  v64 = v156;
  v65 = [v156 expressiveSendPlayedTime];
  v140 = v37;
  v134 = v50;
  if (v65)
  {
    v120 = v29;
    v66 = v65;
    sub_1A84E569C();

    v67 = *(v16 + 56);
    v68 = v147;
    v67(v28, 0, 1, v147);
    sub_1A824B2D4(v28, &qword_1EB2E6F48, &unk_1A8501F00);
    result = [v64 expressiveSendPlayedTime];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v69 = result;

    v70 = v143;
    sub_1A84E569C();

    v71 = *(v16 + 32);
    v72 = v145;
    v71(v145, v70, v68);
    v67(v72, 0, 1, v68);
    v73 = v144;
    sub_1A8243D74(v72, v144, &qword_1EB2E6F48, &unk_1A8501F00);
    if ((*(v16 + 48))(v73, 1, v68) == 1)
    {
      sub_1A824B2D4(v72, &qword_1EB2E6F48, &unk_1A8501F00);
      sub_1A824B2D4(v73, &qword_1EB2E6F48, &unk_1A8501F00);
      v151 = 0;
      v144 = 0;
    }

    else
    {
      v74 = v124;
      v71(v124, v73, v68);
      v151 = objc_opt_self();
      v75 = sub_1A84E565C();
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v76 = v123;
      v77 = sub_1A824431C(v123, qword_1EB2E7FC8);
      swift_beginAccess();
      v78 = v122;
      v79 = v121;
      (*(v122 + 16))(v121, v77, v76);
      v80 = sub_1A84E576C();
      (*(v78 + 8))(v79, v76);
      v81 = [v151 stringFromDate:v75 timeZone:v80 formatOptions:1907];

      v151 = sub_1A84E5DBC();
      v144 = v82;

      (*(v16 + 8))(v74, v147);
      sub_1A824B2D4(v145, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    v29 = v120;
  }

  else
  {

    (*(v16 + 56))(v28, 1, 1, v147);
    sub_1A824B2D4(v28, &qword_1EB2E6F48, &unk_1A8501F00);
    v151 = 0;
    v144 = 0;
  }

  v83 = v156;
  v84 = [v156 dataDetectorsInfo];
  if (v84)
  {
    v85 = v84;
    v143 = sub_1A84E5D3C();
  }

  else
  {
    v143 = 0;
  }

  LODWORD(v147) = [v83 isExpirable];
  v86 = [v83 expireState];
  if (v86 == 3)
  {
    v87 = 3;
  }

  else
  {
    v87 = 4;
  }

  if (v86 < 3)
  {
    v87 = v86;
  }

  LODWORD(v145) = v87;
  LODWORD(v124) = [v83 wasDetonated];
  sub_1A8243D74(v150, &v32[v29[11]], &qword_1EB2E6F50, &unk_1A8502920);
  v88 = [v83 guid];
  v123 = sub_1A84E5DBC();
  v122 = v89;

  v90 = v141;
  v91 = [v141 messagePartRange];
  v93 = v92;
  v121 = [v90 messagePartIndex];
  *(v32 + 6) = 0u;
  *(v32 + 7) = 0u;
  *(v32 + 8) = 0u;
  *(v32 + 9) = 0u;
  *(v32 + 10) = 0u;
  *(v32 + 22) = 0;
  *(v32 + 4) = 0u;
  *(v32 + 5) = 0u;
  v94 = v29[21];
  *&v153[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v32[16] = v136;
  v95 = v138;
  *v32 = v139;
  *(v32 + 1) = v95;
  *(v32 + 5) = v91;
  *(v32 + 6) = v93;
  v96 = &v32[v29[19]];
  v97 = v137;
  *v96 = v140;
  *(v96 + 1) = v97;
  v98 = *(v32 + 9);

  v99 = v134;
  *(v32 + 8) = v135;
  *(v32 + 9) = v99;
  v100 = v132;
  *(v32 + 10) = OriginatorRange;
  *(v32 + 11) = v100;
  *(v32 + 12) = OriginatorMessagePart;
  v101 = *(v32 + 120);
  v102 = *(v32 + 152);
  v153[2] = *(v32 + 136);
  v153[3] = v102;
  v153[4] = *(v32 + 168);
  v103 = *(v32 + 104);
  v153[1] = v101;
  v153[0] = v103;
  sub_1A824B2D4(v153, &qword_1EB2E6F58, &qword_1A8501388);
  v104 = v154[2];
  *(v32 + 120) = v154[1];
  *(v32 + 136) = v104;
  v105 = v154[4];
  *(v32 + 152) = v154[3];
  *(v32 + 168) = v105;
  *(v32 + 104) = v154[0];
  v106 = &v32[v29[12]];
  v107 = v127;
  *v106 = v128;
  v106[1] = v107;
  v108 = &v32[v29[13]];
  v109 = v131;
  v110 = v130;
  *v108 = v131;
  v108[1] = v110;
  v111 = &v32[v29[14]];
  v112 = v125;
  *v111 = v126;
  v111[1] = v112;
  v113 = &v32[v29[15]];
  v114 = v144;
  *v113 = v151;
  *(v113 + 1) = v114;
  sub_1A83F5918(v109, v110);
  v115 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v115 - 8) + 8))(&v32[v94], v115);
  v152 = v143;
  sub_1A84E5B8C();
  sub_1A84E594C();

  sub_1A83F5980(v109, v110);
  sub_1A824B2D4(v150, &qword_1EB2E6F50, &unk_1A8502920);
  v32[v29[16]] = v147;
  v32[v29[17]] = v145;
  v32[v29[18]] = v124;
  *&v32[v29[20]] = v149;
  v116 = v122;
  *(v32 + 3) = v123;
  *(v32 + 4) = v116;
  *(v32 + 7) = v121;
  v117 = v32;
  v118 = v142;
  sub_1A83F5A8C(v117, v142, type metadata accessor for ImportExport.MessagePart);
  return (*(v148 + 56))(v118, 0, 1, v29);
}

uint64_t sub_1A83F54E0()
{
  v1 = type metadata accessor for ImportExport.MessagePart();
  if (*(v0 + *(v1 + 64)) != 1)
  {
    return 1;
  }

  v2 = *(v1 + 68);
  v3 = *(v0 + v2);
  if (v3 == 4 || (sub_1A8436C0C(*(v0 + v2), 2u) & 1) == 0)
  {
    return 1;
  }

  if (v3 <= 1 && v3)
  {

    return 0;
  }

  v5 = sub_1A84E67AC();

  result = 0;
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  return result;
}

id sub_1A83F55D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for ImportExport.Attachment();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1A83EBE2C(MEMORY[0x1E69E7CC0]);
  v14 = *MEMORY[0x1E69A5FD8];
  v15 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v16 = v14;
  v17 = [v15 initWithUnsignedInteger_];
  v38 = sub_1A83F59E8();
  *&v37 = v17;
  sub_1A8243DDC(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v13;
  sub_1A848D528(v36, v16, isUniquelyReferenced_nonNull_native);

  v19 = v35;
  v20 = type metadata accessor for ImportExport.MessagePart();
  sub_1A8243D74(v2 + *(v20 + 44), v7, &qword_1EB2E6F50, &unk_1A8502920);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E6F50, &unk_1A8502920);
    v21 = (v2 + *(v20 + 76));
    v23 = *v21;
    v22 = v21[1];
  }

  else
  {
    sub_1A83F5A8C(v7, v12, type metadata accessor for ImportExport.Attachment);
    v24 = *MEMORY[0x1E69A5F68];
    v25 = *v12;
    v26 = v12[1];
    v38 = MEMORY[0x1E69E6158];
    *&v37 = v25;
    *(&v37 + 1) = v26;
    sub_1A8243DDC(&v37, v36);
    v27 = v24;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v19;
    sub_1A848D528(v36, v27, v28);

    sub_1A83F5AF4(v12);
  }

  v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v30 = sub_1A84E5D8C();

  type metadata accessor for Key(0);
  sub_1A83F5A34();
  v31 = sub_1A84E5D2C();

  v32 = [v29 initWithString:v30 attributes:v31];

  return v32;
}

uint64_t sub_1A83F5918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A83F592C(a1, a2);
  }

  return a1;
}

uint64_t sub_1A83F592C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A83F5980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A83F5994(a1, a2);
  }

  return a1;
}

uint64_t sub_1A83F5994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1A83F59E8()
{
  result = qword_1EB2E6F68;
  if (!qword_1EB2E6F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E6F68);
  }

  return result;
}

unint64_t sub_1A83F5A34()
{
  result = qword_1EB2E5B90;
  if (!qword_1EB2E5B90)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E5B90);
  }

  return result;
}

uint64_t sub_1A83F5A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A83F5AF4(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.Attachment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A83F5CB4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  sub_1A83F5DFC(a3, v8);

  v10 = sub_1A84E56DC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1A84E565C();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1A83F5DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  if (*(v2 + *a1))
  {
    v9 = sub_1A84E56DC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v11(v8, 1, 1, v9);
    sub_1A83F81C8();
    sub_1A84E659C();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v12 = a2;
      v13 = 1;
    }

    else
    {
      (*(v10 + 32))(a2, v8, v9);
      v12 = a2;
      v13 = 0;
    }

    return (v11)(v12, v13, 1, v9);
  }

  else
  {
    v14 = sub_1A84E56DC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1A83F6024()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  if (v2)
  {
    if ([v0 syncStatus] != 1)
    {
      return 0;
    }

    return [v0 syncingFailed] ^ 1;
  }

  v4 = v0[OBJC_IVAR___IMCloudKitSyncState_syncState];
  if (v4 > 4)
  {

    return 1;
  }

  v5 = sub_1A84E67AC();

  if (v5)
  {
    return 1;
  }

  result = [v0 syncControllerSyncState];
  if (result)
  {
    return [v0 syncingFailed] ^ 1;
  }

  return result;
}

uint64_t sub_1A83F61E4()
{
  if (*(v0 + OBJC_IVAR___IMCloudKitSyncState_syncState) == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A84E67AC();
  }

  return v1 & 1;
}

uint64_t sub_1A83F630C()
{
  v1 = *(v0 + OBJC_IVAR___IMCloudKitSyncState_syncState);
  if (v1 == 3)
  {
    v2 = 1;
LABEL_11:

    return v2 & 1;
  }

  v3 = sub_1A84E67AC();

  if ((v3 & 1) == 0)
  {
    if (v1 == 4)
    {
      v2 = 1;
      goto LABEL_11;
    }

    v4 = sub_1A84E67AC();

    if ((v4 & 1) == 0)
    {
      if (v1 >= 4)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1A84E67AC();
      }

      goto LABEL_11;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1A83F65D0()
{
  v1 = *(v0 + OBJC_IVAR___IMCloudKitSyncState_syncState);
  if (v1 == 2)
  {
    v2 = 1;
LABEL_14:

    return v2 & 1;
  }

  v3 = sub_1A84E67AC();

  if ((v3 & 1) == 0)
  {
    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_14;
    }

    v4 = sub_1A84E67AC();

    if ((v4 & 1) == 0)
    {
      if (v1 == 4)
      {
        v2 = 1;
        goto LABEL_14;
      }

      v5 = sub_1A84E67AC();

      if ((v5 & 1) == 0)
      {
        if (v1 > 2)
        {
          v2 = 1;
        }

        else
        {
          v2 = sub_1A84E67AC();
        }

        goto LABEL_14;
      }
    }
  }

  v2 = 1;
  return v2 & 1;
}

id sub_1A83F6984()
{
  result = [v0 isSyncingAvailable];
  if (result)
  {
    if (([v0 isSyncingEnabled] & 1) != 0 || objc_msgSend(v0, sel_changingEnabledState) == 1)
    {
      return 0;
    }

    else
    {
      return ([v0 changingEnabledState] != 2);
    }
  }

  return result;
}

id sub_1A83F6A30()
{
  result = [v0 isSyncingEnabled];
  if (result)
  {
    if (([v0 isSyncing] & 1) != 0 || objc_msgSend(v0, sel_changingEnabledState) == 1 || objc_msgSend(v0, sel_changingEnabledState) == 2)
    {
      return 0;
    }

    else
    {
      return ([v0 isDisablingDevices] ^ 1);
    }
  }

  return result;
}

uint64_t sub_1A83F6B64()
{
  v1 = v0;
  v2 = [v0 changingEnabledState];
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_13;
    }

    if (v2)
    {
      if (qword_1EB2E46B8 != -1)
      {
        swift_once();
      }

      v4 = sub_1A84E5C9C();
      sub_1A824431C(v4, qword_1EB2FEFF8);
      v5 = sub_1A84E5C7C();
      v6 = sub_1A84E619C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v5, v6, "Encountered unnknown changing enabled state setting enabled to false", v7, 2u);
        MEMORY[0x1AC56D3F0](v7, -1, -1);
      }
    }

    else if (([v0 isDisablingDevices] & 1) == 0)
    {
      v3 = [v0 isSyncingEnabled];
      goto LABEL_13;
    }
  }

  v3 = 0;
LABEL_13:
  if (qword_1EB2E46B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1EB2FEFF8);
  v9 = v1;
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E61BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    if (v3)
    {
      v15 = 5457241;
    }

    else
    {
      v15 = 20302;
    }

    if (v3)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1A82446BC(v15, v16, &v20);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v18 = v9;
    _os_log_impl(&dword_1A823F000, v10, v11, "isSyncEnabledForDisplayOnly = %s, State: %@", v12, 0x16u);
    sub_1A824B2D4(v13, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    sub_1A8244788(v14);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  return v3;
}

void sub_1A83F6EB0()
{
  v1 = [v0 syncJobState];
  if ((v1 - 1) < 3)
  {
LABEL_5:
    v5 = sub_1A84E5D8C();
    v6 = sub_1A84E5D8C();
    v7 = sub_1A84E5D8C();
    v8 = IMCoreLocalizedString(v5, v6);

    if (v8)
    {
      sub_1A84E5DBC();
    }

    return;
  }

  if ((v1 - 4) >= 2)
  {
    if (v1 || ([v0 isBetweenInitialAndFullSync] & 1) == 0 && (!objc_msgSend(v0, sel_hasNotSyncedInLastSevenDays) || objc_msgSend(v0, sel_accountStatus) != 2 && !objc_msgSend(v0, sel_accountNeedsRepair)))
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = [v0 statistics];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 remainingMessagesCount];
  }

  else
  {
    v4 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10 = [objc_opt_self() __ck_defaultNumberFormatter];
  v11 = [v10 stringFromNumber_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A84E5DBC();
    v15 = v14;

    if (v4 >= 1)
    {

      v16 = sub_1A84E5D8C();
      v17 = sub_1A84E5D8C();
      v18 = sub_1A84E5D8C();
      v19 = IMCoreLocalizedString(v16, v17);

      if (v19)
      {

        sub_1A84E5DBC();

        sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1A8501390;
        v21 = MEMORY[0x1E69E65A8];
        *(v20 + 56) = MEMORY[0x1E69E6530];
        *(v20 + 64) = v21;
        *(v20 + 32) = v4;
        *(v20 + 96) = MEMORY[0x1E69E6158];
        *(v20 + 104) = sub_1A83F8174();
        *(v20 + 72) = v13;
        *(v20 + 80) = v15;
        sub_1A84E5DDC();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v22 = sub_1A84E5D8C();
  v23 = sub_1A84E5D8C();
  v24 = sub_1A84E5D8C();
  v25 = IMCoreLocalizedString(v22, v23);

  if (v25)
  {
    sub_1A84E5DBC();
  }

  else
  {
  }
}

void sub_1A83F7398(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v7 = [v4 errors];
  if (v7)
  {
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    v8 = sub_1A84E5FFC();

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_16:

      return;
    }

    v10 = 0;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v11;
      v13 = sub_1A84E547C();
      v14 = [v13 domain];
      v15 = sub_1A84E5DBC();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {
      }

      else
      {
        v19 = sub_1A84E67AC();

        if ((v19 & 1) == 0)
        {

          goto LABEL_5;
        }
      }

      v20 = [v13 code];

      if (v20 == a3)
      {

        return;
      }

LABEL_5:
      if (v9 == ++v10)
      {
        goto LABEL_16;
      }
    }
  }
}

uint64_t IMCloudKitSyncState.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v71 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v71 - v14;
  [v1 changingEnabledState];
  v16 = IMStringFromCloudKitChangingSettingState();
  if (v16)
  {
    v17 = v16;
    v81 = sub_1A84E5DBC();
    v82 = v18;
  }

  else
  {
    v81 = 7104878;
    v82 = 0xE300000000000000;
  }

  [v1 syncType];
  v19 = IMStringFromIMCloudKitSyncType();
  if (v19)
  {
    v20 = v19;
    v89 = sub_1A84E5DBC();
    v90 = v21;
  }

  else
  {
    v89 = 7104878;
    v90 = 0xE300000000000000;
  }

  [v1 syncStatus];
  v22 = IMStringFromIMCloudKitSyncStatus();
  if (v22)
  {
    v23 = v22;
    v87 = sub_1A84E5DBC();
    v88 = v24;
  }

  else
  {
    v87 = 7104878;
    v88 = 0xE300000000000000;
  }

  [v1 syncJobState];
  v25 = IMStringFromIMCloudKitSyncJobState();
  if (v25)
  {
    v26 = v25;
    v85 = sub_1A84E5DBC();
    v86 = v27;
  }

  else
  {
    v85 = 7104878;
    v86 = 0xE300000000000000;
  }

  [v1 accountStatus];
  v28 = IMStringFromIMCloudKitAccountStatus();
  if (v28)
  {
    v29 = v28;
    v83 = sub_1A84E5DBC();
    v84 = v30;
  }

  else
  {
    v83 = 7104878;
    v84 = 0xE300000000000000;
  }

  [v1 syncControllerSyncState];
  v31 = IMStringFromIMCloudKitSyncControllerSyncState();
  if (v31)
  {
    v32 = v31;
    v79 = sub_1A84E5DBC();
    v80 = v33;
  }

  else
  {
    v79 = 7104878;
    v80 = 0xE300000000000000;
  }

  [v1 syncControllerSyncType];
  v34 = IMStringFromIMCloudKitSyncControllerSyncType();
  if (v34)
  {
    v35 = v34;
    v77 = sub_1A84E5DBC();
    v78 = v36;
  }

  else
  {
    v77 = 7104878;
    v78 = 0xE300000000000000;
  }

  [v1 syncControllerRecordType];
  v37 = IMStringFromIMCloudKitSyncControllerSyncRecordType();
  if (v37)
  {
    v38 = v37;
    v75 = sub_1A84E5DBC();
    v76 = v39;
  }

  else
  {
    v75 = 7104878;
    v76 = 0xE300000000000000;
  }

  v40 = [v1 exitDate];
  if (v40)
  {
    v41 = v40;
    sub_1A84E569C();

    v42 = sub_1A84E56DC();
    (*(*(v42 - 8) + 56))(v13, 0, 1, v42);
  }

  else
  {
    v42 = sub_1A84E56DC();
    (*(*(v42 - 8) + 56))(v13, 1, 1, v42);
  }

  sub_1A83F8010(v13, v15);
  sub_1A84E56DC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v15, 1, v42) == 1)
  {
    sub_1A824B2D4(v15, &qword_1EB2E6F48, &unk_1A8501F00);
    v45 = 0xE300000000000000;
    v73 = 7104878;
  }

  else
  {
    v73 = sub_1A84E563C();
    v45 = v46;
    (*(v43 + 8))(v15, v42);
  }

  v47 = [v1 lastSyncDate];
  if (v47)
  {
    v48 = v47;
    sub_1A84E569C();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  (*(v43 + 56))(v7, v49, 1, v42);
  sub_1A83F8010(v7, v10);
  if (v44(v10, 1, v42) == 1)
  {
    sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
    v50 = 0xE300000000000000;
    v72 = 7104878;
  }

  else
  {
    v72 = sub_1A84E563C();
    v50 = v51;
    (*(v43 + 8))(v10, v42);
  }

  v52 = [v1 errors];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    v55 = sub_1A84E5FFC();

    v2 = MEMORY[0x1AC56AB00](v55, v54);
    v74 = v56;
  }

  else
  {
    v74 = 0xE300000000000000;
  }

  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A852F2D0);
  v57 = v1[OBJC_IVAR___IMCloudKitSyncState_syncState];
  v91 = v2;
  if (v57 > 2)
  {
    if (v57 == 3)
    {
      v58 = 0xE400000000000000;
      v59 = 1701602409;
    }

    else if (v57 == 4)
    {
      v58 = 0xE600000000000000;
      v59 = 0x646573756170;
    }

    else
    {
      v58 = 0xE700000000000000;
      v59 = 0x676E69636E7973;
    }
  }

  else if (v57)
  {
    if (v57 == 1)
    {
      v58 = 0xEA0000000000656CLL;
      v59 = 0x6261696176616E75;
    }

    else
    {
      v58 = 0xE800000000000000;
      v59 = 0x64656C6261736964;
    }
  }

  else
  {
    v58 = 0xE700000000000000;
    v59 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC56A990](v59, v58);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A852F2F0);
  if (v1[OBJC_IVAR___IMCloudKitSyncState_accountEnabled])
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___IMCloudKitSyncState_accountEnabled])
  {
    v61 = 0xE400000000000000;
  }

  else
  {
    v61 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v60, v61);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A852F310);
  MEMORY[0x1AC56A990](v81, v82);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A852F330);
  v62 = [v1 isDisablingDevices];
  v63 = v62 == 0;
  if (v62)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE500000000000000;
  }

  else
  {
    v65 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v64, v65);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A852F350);
  v66 = [v1 hasExited];
  v67 = v66 == 0;
  if (v66)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v67)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v68, v69);

  MEMORY[0x1AC56A990](0x642074697865202CLL, 0xED0000203A657461);
  MEMORY[0x1AC56A990](v73, v45);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A852F370);
  MEMORY[0x1AC56A990](v72, v50);

  MEMORY[0x1AC56A990](0x7420636E7973202CLL, 0xED0000203A657079);
  MEMORY[0x1AC56A990](v89, v90);

  MEMORY[0x1AC56A990](0x7320636E7973202CLL, 0xEF203A7375746174);
  MEMORY[0x1AC56A990](v87, v88);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A852F390);
  MEMORY[0x1AC56A990](v85, v86);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A852F3B0);
  MEMORY[0x1AC56A990](v83, v84);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A852F3D0);
  MEMORY[0x1AC56A990](v79, v80);

  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A852F3F0);
  MEMORY[0x1AC56A990](v77, v78);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A852F410);
  MEMORY[0x1AC56A990](v75, v76);

  MEMORY[0x1AC56A990](0x73726F727265202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1AC56A990](v91, v74);

  return v92;
}

uint64_t sub_1A83F8010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id IMCloudKitSyncState.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMCloudKitSyncState()
{
  result = qword_1EB2E7018;
  if (!qword_1EB2E7018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E7018);
  }

  return result;
}

uint64_t sub_1A83F8164(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1A83F8174()
{
  result = qword_1EB2E4620;
  if (!qword_1EB2E4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E4620);
  }

  return result;
}

unint64_t sub_1A83F81C8()
{
  result = qword_1EB2E46C8;
  if (!qword_1EB2E46C8)
  {
    sub_1A84E56DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E46C8);
  }

  return result;
}

uint64_t sub_1A83F8220()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E7050);
  sub_1A824431C(v0, qword_1EB2E7050);
  return sub_1A84E5C8C();
}

void sub_1A83F82A0()
{
  v0 = sub_1A84E570C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 isInternalInstall];

  if (v11)
  {
    v12 = [objc_opt_self() sharedFeatureFlags];
    v13 = [v12 isRCSEncryptionOptInTestEnabled];

    if (v13)
    {
      if (sub_1A83F88C4())
      {
        sub_1A83F8AD8();
        if (v14)
        {
          v15 = v14;
          IMChat.refreshSupportEncryptionStatus()();
          __buf[0] = 0;
          arc4random_buf(__buf, 8uLL);
          if ((__buf[0] & 0x20000) != 0)
          {
            sub_1A84E56CC();
            v22 = sub_1A84E56DC();
            v46 = *(v22 - 8);
            (v46[7].isa)(v8, 0, 1, v22);
            v23 = *MEMORY[0x1E69A7880];
            v24 = sub_1A84E5DBC();
            v26 = v25;
            v27 = sub_1A83F98D4(0x14uLL);
            v28 = sub_1A83FAF38(v27 + 1);
            v30 = v29;
            __buf[0] = v24;
            __buf[1] = v26;

            MEMORY[0x1AC56A990](v28, v30);

            v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v32 = sub_1A84E5D8C();

            v33 = [v31 initWithString_];

            sub_1A84E56FC();
            sub_1A84E56EC();
            v34 = v0;
            v35 = v46;
            (*(v1 + 8))(v4, v34);
            v36 = 0;
            if ((v35[6].isa)(v8, 1, v22) != 1)
            {
              v36 = sub_1A84E565C();
              (v35[1].isa)(v8, v22);
            }

            v37 = objc_allocWithZone(IMMessage);
            v38 = sub_1A84E5D8C();

            v39 = [v37 initWithSender:0 time:v36 text:v33 fileTransferGUIDs:0 flags:0x200000000005 error:0 guid:v38 subject:0];

            if (v39)
            {
              sub_1A83FADA8(v39, v15);

LABEL_30:
              return;
            }

            if (qword_1EB2E5940 != -1)
            {
              swift_once();
            }

            v44 = sub_1A84E5C9C();
            sub_1A824431C(v44, qword_1EB2E7050);
            v17 = sub_1A84E5C7C();
            v41 = sub_1A84E619C();
            if (!os_log_type_enabled(v17, v41))
            {
LABEL_29:

              goto LABEL_30;
            }

            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Cannot create a test attachment message!";
          }

          else
          {
            sub_1A83FA264();
            if (v16)
            {
              v17 = v16;
              sub_1A83FADA8(v16, v15);
              goto LABEL_29;
            }

            if (qword_1EB2E5940 != -1)
            {
              swift_once();
            }

            v40 = sub_1A84E5C9C();
            sub_1A824431C(v40, qword_1EB2E7050);
            v17 = sub_1A84E5C7C();
            v41 = sub_1A84E619C();
            if (!os_log_type_enabled(v17, v41))
            {
              goto LABEL_29;
            }

            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Cannot create a test text message!";
          }

          _os_log_impl(&dword_1A823F000, v17, v41, v43, v42, 2u);
          MEMORY[0x1AC56D3F0](v42, -1, -1);
          goto LABEL_29;
        }

        if (qword_1EB2E5940 != -1)
        {
          swift_once();
        }

        v18 = sub_1A84E5C9C();
        sub_1A824431C(v18, qword_1EB2E7050);
        v46 = sub_1A84E5C7C();
        v19 = sub_1A84E619C();
        if (os_log_type_enabled(v46, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1A823F000, v46, v19, "Cannot find or create an RCS chat!", v20, 2u);
          MEMORY[0x1AC56D3F0](v20, -1, -1);
        }

        v21 = v46;
      }
    }
  }
}

uint64_t sub_1A83F88C4()
{
  v1 = [objc_opt_self() messagesAppDomain];
  if (!v1)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_9:
    sub_1A824B2D4(&v14, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1A84E5D8C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v5 = v12;
    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
LABEL_11:
  v6 = [v0 supportsEncryption];
  if (qword_1EB2E5940 != -1)
  {
    swift_once();
  }

  v7 = sub_1A84E5C9C();
  sub_1A824431C(v7, qword_1EB2E7050);
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&dword_1A823F000, v8, v9, "Check if we should send RCS encryption test message, isUserOptedIn: %{BOOL}d, isReceiverOptedIn: %{BOOL}d", v10, 0xEu);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  return v5 & v6;
}

void sub_1A83F8AD8()
{
  v1 = [v0 participants];
  sub_1A8253D64();
  v2 = sub_1A84E5FFC();

  if (v2 >> 62)
  {
    v3 = sub_1A84E654C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == 1)
  {
    v4 = [v0 participants];
    v5 = sub_1A84E5FFC();

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1AC56AF80](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v8 = [objc_opt_self() rcsService];
    v9 = IMPreferredAccountForService(v8);

    v10 = [v7 imHandleForOtherAccount_];
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_self();
      v13 = [v12 sharedRegistry];
      v14 = [v13 existingChatWithHandle:v11 allowAlternativeService:0];

      if (v14)
      {
      }

      else
      {
        v15 = [v12 sharedRegistry];
        [v15 chatWithHandle:v11 lastAddressedHandle:0 lastAddressedSIMID:0 shouldForceCreate:1];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1A83F8FDC(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = result;
    v4 = sub_1A84E602C();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t sub_1A83F9050(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_1A83EA2FC(&qword_1EB2E7090, &qword_1A8501400);
  if (swift_dynamicCast())
  {
    sub_1A83FB5BC(__src, &v42);
    sub_1A82471E0(&v42, v43);
    sub_1A84E545C();
    __src[0] = v41;
    sub_1A8244788(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1A824B2D4(__src, &qword_1EB2E7098, &unk_1A8501408);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1A84E64CC();
  }

  sub_1A83F9960(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1A83FB4B4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1A83F9A28(sub_1A83FB554);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1A84E55CC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1A84B8E6C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1A84E5EBC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1A84E5EEC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1A84E64CC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1A84B8E6C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1A84E5ECC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1A84E55DC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1A84E55DC();
    sub_1A83F5980(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1A83F5980(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1A83F592C(*&__src[0], *(&__src[0] + 1));

  sub_1A83F5994(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

unint64_t sub_1A83F98D4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A83F9960@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1A83F9FD0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1A84E542C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1A84E53DC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1A84E55BC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1A83F9A28(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1A83F5994(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A83F5994(v6, v5);
    *v3 = xmmword_1A85013D0;
    sub_1A83F5994(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1A84E53EC() && __OFSUB__(v6, sub_1A84E541C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1A84E542C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1A84E53CC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1A83F9ECC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1A83F5994(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1A85013D0;
    sub_1A83F5994(0, 0xC000000000000000);
    sub_1A84E559C();
    result = sub_1A83F9ECC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1A83F9DCC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1A83F9FD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1A83FA088(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1A83FA104(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1A83F9E60(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A83F9ECC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1A84E53EC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1A84E541C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1A84E540C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1A83F9F80@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1A84E647C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A83F9FD0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A83FA088(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1A84E542C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1A84E53DC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A84E55BC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1A83FA104(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1A84E542C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1A84E53DC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1A83FA188(uint64_t a1)
{
  v9 = sub_1A83EA2FC(&qword_1EB2E7080, &qword_1A85013F8);
  v10 = sub_1A83F0624(&qword_1EB2E7088, &qword_1EB2E7080, &qword_1A85013F8);
  v8[0] = a1;
  v2 = sub_1A82471E0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1A83F9DCC(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1A8244788(v8);
  return v5;
}

void sub_1A83FA264()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v88 = &v84 - v2;
  v91 = sub_1A84E570C();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v91);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v84 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v84 - v15;
  v17 = sub_1A84E558C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v84 - v24;
  v25 = sub_1A83F98D4(0x14uLL);
  v26 = v25 + 1;
  if ((v25 + 1) < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v87 = v7;
  v90 = v17;
  if (v25 == -1)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v27 = v25;
    v28 = sub_1A84E602C();
    v29 = v28;
    *(v28 + 16) = v26;
    *(v28 + 32) = 0;
    if (v27)
    {
      bzero((v28 + 33), v27);
    }
  }

  SecRandomCopyBytes(*MEMORY[0x1E697B308], v26, (v29 + 32));
  v93 = sub_1A83FA188(v29);
  v94 = v30;

  v31 = *MEMORY[0x1E69A7880];
  v32 = sub_1A84E5DBC();
  v34 = v33;
  sub_1A84E56FC();
  v35 = sub_1A84E56EC();
  v37 = v36;
  v86 = *(v3 + 8);
  v86(v9, v91);
  v95[0] = v32;
  v95[1] = v34;

  MEMORY[0x1AC56A990](v35, v37);

  v38 = [objc_opt_self() defaultManager];
  v39 = sub_1A84E5D8C();
  v40 = [v38 im:v39 randomTemporaryFileURLWithFileName:?];

  if (v40)
  {
    sub_1A84E554C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v90;
  v43 = v18;
  (*(v18 + 56))(v14, v41, 1, v90);
  sub_1A83FB148(v14, v16);

  v44 = (*(v18 + 48))(v16, 1, v42);
  v45 = v92;
  if (v44 == 1)
  {
    sub_1A824B2D4(v16, &qword_1EB2E7068, &unk_1A8501EB0);
    if (qword_1EB2E5940 == -1)
    {
LABEL_11:
      v46 = sub_1A84E5C9C();
      sub_1A824431C(v46, qword_1EB2E7050);
      v47 = sub_1A84E5C7C();
      v48 = sub_1A84E619C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1A823F000, v47, v48, "Cannot create temporary file.", v49, 2u);
        MEMORY[0x1AC56D3F0](v49, -1, -1);
      }

      sub_1A83F5994(v93, v94);

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_11;
  }

  (*(v43 + 32))(v92, v16, v42);
  v50 = 0;
  sub_1A84E560C();
  v51 = objc_opt_self();
  v52 = [v51 sharedInstance];
  if (!v52)
  {
    __break(1u);
    goto LABEL_28;
  }

  v53 = v52;
  v54 = sub_1A84E551C();
  v50 = [v53 createNewOutgoingGroupPhotoTransferWithLocalFileURL_];

  if (v50)
  {
    v55 = sub_1A84E5DBC();
    v57 = v56;
    v58 = [v51 sharedInstance];
    if (v58)
    {
      v59 = v58;
      [v58 registerTransferWithDaemon_];

      v60 = v88;
      sub_1A84E56CC();
      v61 = sub_1A84E56DC();
      v62 = *(v61 - 8);
      (*(v62 + 56))(v60, 0, 1, v61);
      v63 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
      sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1A85013E0;
      *(v64 + 32) = v55;
      *(v64 + 40) = v57;
      v65 = v87;
      sub_1A84E56FC();
      sub_1A84E56EC();
      v86(v65, v91);
      v66 = 0;
      if ((*(v62 + 48))(v60, 1, v61) != 1)
      {
        v66 = sub_1A84E565C();
        (*(v62 + 8))(v60, v61);
      }

      v67 = objc_allocWithZone(IMMessage);
      v68 = sub_1A84E5FEC();

      v69 = sub_1A84E5D8C();

      [v67 initWithSender:0 time:v66 text:v63 fileTransferGUIDs:v68 flags:0x200000000005 error:0 guid:v69 subject:0];

      sub_1A83F5994(v93, v94);
      (*(v43 + 8))(v92, v90);
      return;
    }

LABEL_28:

    __break(1u);
    return;
  }

  if (qword_1EB2E5940 != -1)
  {
    swift_once();
  }

  v70 = sub_1A84E5C9C();
  sub_1A824431C(v70, qword_1EB2E7050);
  v71 = v85;
  (*(v43 + 16))(v85, v45, v42);
  v72 = sub_1A84E5C7C();
  v73 = sub_1A84E619C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = v45;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v95[0] = v76;
    *v75 = 136315138;
    v77 = sub_1A84E54DC();
    v78 = v71;
    v80 = v79;
    v81 = *(v43 + 8);
    v81(v78, v42);
    v82 = sub_1A82446BC(v77, v80, v95);

    *(v75 + 4) = v82;
    _os_log_impl(&dword_1A823F000, v72, v73, "Cannot create transferGuid with file: %s.", v75, 0xCu);
    sub_1A8244788(v76);
    MEMORY[0x1AC56D3F0](v76, -1, -1);
    MEMORY[0x1AC56D3F0](v75, -1, -1);
    sub_1A83F5994(v93, v94);

    v81(v74, v42);
  }

  else
  {
    sub_1A83F5994(v93, v94);

    v83 = *(v43 + 8);
    v83(v71, v42);
    v83(v45, v42);
  }
}

void sub_1A83FADA8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() rcsService];
    oslog = [v5 bestAccountForService_];

    if (oslog)
    {
      [a2 sendMessage:a1 onAccount:?];
    }

    else
    {
      if (qword_1EB2E5940 != -1)
      {
        swift_once();
      }

      v7 = sub_1A84E5C9C();
      sub_1A824431C(v7, qword_1EB2E7050);
      oslog = sub_1A84E5C7C();
      v8 = sub_1A84E619C();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, oslog, v8, "Cannot create account for RCS service!", v9, 2u);
        MEMORY[0x1AC56D3F0](v9, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A83FAF38(uint64_t result)
{
  v1 = result - 1;
  if (result >= 1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (result == 1)
    {
LABEL_14:
      v13 = v2;
      sub_1A83EA2FC(&qword_1EB2E7070, &qword_1A85013F0);
      sub_1A83F0624(&qword_1EB2E7078, &qword_1EB2E7070, &qword_1A85013F0);
      return sub_1A84E5F3C();
    }

    v13 = MEMORY[0x1E69E7CC0];
    result = sub_1A83EF614(0, v1, 0);
    v3 = 0;
    v2 = v13;
    while (v3 != v1)
    {
      if (("@0:8q16" & 0x2F00000000000000) == 0x2000000000000000)
      {
        goto LABEL_16;
      }

      result = sub_1A84E5E7C();
      if (result < 0)
      {
        goto LABEL_17;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_18;
      }

      v12 = 0;
      arc4random_buf(&v12, 8uLL);
      if (v4 > v12 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v12 * v4)
        {
          v12 = 0;
          arc4random_buf(&v12, 8uLL);
        }
      }

      sub_1A84E5E8C();
      result = sub_1A84E5F2C();
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_1A83EF614((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v2 = v13;
      }

      ++v3;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v3 == v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A83FB148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A83FB1B8()
{
  v0 = sub_1A84E570C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v27 - v7;
  sub_1A84E56CC();
  v9 = sub_1A84E56DC();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *MEMORY[0x1E69A7880];
  v12 = sub_1A84E5DBC();
  v14 = v13;
  v15 = sub_1A83F98D4(0x14uLL);
  v16 = sub_1A83FAF38(v15 + 1);
  v18 = v17;
  v27[0] = v12;
  v27[1] = v14;

  MEMORY[0x1AC56A990](v16, v18);

  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1A84E5D8C();

  v21 = [v19 initWithString_];

  sub_1A84E56FC();
  sub_1A84E56EC();
  (*(v1 + 8))(v4, v0);
  v22 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v22 = sub_1A84E565C();
    (*(v10 + 8))(v8, v9);
  }

  v23 = objc_allocWithZone(IMMessage);
  v24 = sub_1A84E5D8C();

  v25 = [v23 initWithSender:0 time:v22 text:v21 fileTransferGUIDs:0 flags:0x200000000005 error:0 guid:v24 subject:0];

  return v25;
}

uint64_t sub_1A83FB4B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1A84E542C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1A84E53FC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1A84E55BC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1A83FB554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1A83F9E60(sub_1A83FB5D4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1A83FB5BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A83FB5F4(void *a1)
{
  if ([a1 accountNeedsRepair] && objc_msgSend(a1, sel_accountStatus) != 4 || objc_msgSend(a1, sel_accountStatus) == 2)
  {

    return 0;
  }

  else if ([a1 isSyncingEnabled])
  {
    if ([a1 isSyncingPaused])
    {

      return 2;
    }

    else
    {
      v3 = *MEMORY[0x1E69A6DD0];
      v4 = [a1 syncErrorWithDomain:*MEMORY[0x1E69A6DD0] code:4];
      if (v4)
      {
        v5 = v4;

        return 3;
      }

      else
      {
        v6 = [a1 syncErrorWithDomain:v3 code:5];
        if (v6)
        {
          v7 = v6;

          return 4;
        }

        else
        {
          v8 = [a1 syncErrorWithDomain:v3 code:6];
          if (v8)
          {
            v9 = v8;

            return 5;
          }

          else if ([a1 syncingFailed] || (objc_msgSend(a1, sel_isSyncing) & 1) == 0)
          {

            return 6;
          }

          else
          {
            v10 = [a1 hasNotSyncedInLastSevenDays];

            if (v10)
            {
              return 8;
            }

            else
            {
              return 7;
            }
          }
        }
      }
    }
  }

  else
  {

    return 1;
  }
}

id sub_1A83FB7A8(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        if (qword_1EB2E46B8 != -1)
        {
          swift_once();
        }

        v31 = sub_1A84E5C9C();
        sub_1A824431C(v31, qword_1EB2FEFF8);
        v32 = sub_1A84E5C7C();
        v33 = sub_1A84E61BC();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1A823F000, v32, v33, "Creating Paused SyncProgress", v34, 2u);
          MEMORY[0x1AC56D3F0](v34, -1, -1);
        }

        v10 = 1;
      }

      else if (a1 == 3)
      {
        if (qword_1EB2E46B8 != -1)
        {
          swift_once();
        }

        v5 = sub_1A84E5C9C();
        sub_1A824431C(v5, qword_1EB2FEFF8);
        v6 = sub_1A84E5C7C();
        v7 = sub_1A84E61BC();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v50 = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_1A82446BC(0xD000000000000013, 0x80000001A852FBD0, &v50);
          _os_log_impl(&dword_1A823F000, v6, v7, "Creating Error SyncProgress %s", v8, 0xCu);
          sub_1A8244788(v9);
          MEMORY[0x1AC56D3F0](v9, -1, -1);
          MEMORY[0x1AC56D3F0](v8, -1, -1);
        }

        v10 = 5;
      }

      else
      {
        if (qword_1EB2E46B8 != -1)
        {
          swift_once();
        }

        v39 = sub_1A84E5C9C();
        sub_1A824431C(v39, qword_1EB2FEFF8);
        v40 = sub_1A84E5C7C();
        v41 = sub_1A84E61BC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v50 = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_1A82446BC(0xD000000000000015, 0x80000001A852FBB0, &v50);
          _os_log_impl(&dword_1A823F000, v40, v41, "Creating Error SyncProgress %s", v42, 0xCu);
          sub_1A8244788(v43);
          MEMORY[0x1AC56D3F0](v43, -1, -1);
          MEMORY[0x1AC56D3F0](v42, -1, -1);
        }

        v10 = 4;
      }

      goto LABEL_54;
    }

    if (!a1)
    {
      if (qword_1EB2E46B8 != -1)
      {
        swift_once();
      }

      v26 = sub_1A84E5C9C();
      sub_1A824431C(v26, qword_1EB2FEFF8);
      v27 = sub_1A84E5C7C();
      v28 = sub_1A84E61BC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v50 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1A82446BC(0xD000000000000012, 0x80000001A852FA00, &v50);
        _os_log_impl(&dword_1A823F000, v27, v28, "Creating Error SyncProgress: %s", v29, 0xCu);
        sub_1A8244788(v30);
        MEMORY[0x1AC56D3F0](v30, -1, -1);
        MEMORY[0x1AC56D3F0](v29, -1, -1);
      }

      v10 = 3;
      goto LABEL_54;
    }

    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v44 = sub_1A84E5C9C();
    sub_1A824431C(v44, qword_1EB2FEFF8);
    v13 = sub_1A84E5C7C();
    v45 = sub_1A84E61BC();
    if (!os_log_type_enabled(v13, v45))
    {
LABEL_53:

      v10 = 2;
      goto LABEL_54;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1A82446BC(0x44676E69636E7973, 0xEF64656C62617369, &v50);
    _os_log_impl(&dword_1A823F000, v13, v45, "Creating Hidden SyncProgress: %s", v46, 0xCu);
    sub_1A8244788(v47);
    MEMORY[0x1AC56D3F0](v47, -1, -1);
    v20 = v46;
LABEL_52:
    MEMORY[0x1AC56D3F0](v20, -1, -1);
    goto LABEL_53;
  }

  if (a1 - 6 < 2)
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2FEFF8);
    v13 = sub_1A84E5C7C();
    v14 = sub_1A84E61BC();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_53;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v15 = 136315138;
    if (a1 == 7)
    {
      v17 = 0xD000000000000012;
    }

    else
    {
      v17 = 0x6C696146636E7973;
    }

    if (a1 == 7)
    {
      v18 = 0x80000001A852FB90;
    }

    else
    {
      v18 = 0xEA00000000006465;
    }

    v19 = sub_1A82446BC(v17, v18, &v50);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1A823F000, v13, v14, "Creating Hidden SyncProgress %s", v15, 0xCu);
    sub_1A8244788(v16);
    MEMORY[0x1AC56D3F0](v16, -1, -1);
    v20 = v15;
    goto LABEL_52;
  }

  if (a1 == 5)
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1A84E5C9C();
    sub_1A824431C(v21, qword_1EB2FEFF8);
    v22 = sub_1A84E5C7C();
    v23 = sub_1A84E61BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1A82446BC(0x4B676E69646E6570, 0xEE006C6C6F527965, &v50);
      _os_log_impl(&dword_1A823F000, v22, v23, "Creating Error SyncProgress %s", v24, 0xCu);
      sub_1A8244788(v25);
      MEMORY[0x1AC56D3F0](v25, -1, -1);
      MEMORY[0x1AC56D3F0](v24, -1, -1);
    }

    v10 = 6;
  }

  else
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v35 = sub_1A84E5C9C();
    sub_1A824431C(v35, qword_1EB2FEFF8);
    v36 = sub_1A84E5C7C();
    v37 = sub_1A84E61BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1A823F000, v36, v37, "Creating Sync SyncProgress", v38, 2u);
      MEMORY[0x1AC56D3F0](v38, -1, -1);
    }

    v10 = 0;
  }

LABEL_54:
  v48 = objc_allocWithZone(IMCloudKitSyncProgress);

  return [v48 initWithType:v10 syncState:a2 syncStatistics:a3];
}

unint64_t sub_1A83FC084()
{
  type metadata accessor for ImportExport.AccountManager();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = sub_1A83EBF68(MEMORY[0x1E69E7CC0]);
  v0[3] = sub_1A83EBF7C(v1);
  v0[4] = sub_1A83EC07C(v1);
  result = sub_1A83EC260(v1);
  v0[5] = result;
  qword_1EB2E70A0 = v0;
  return result;
}

uint64_t static ImportExport.AccountManager.shared.getter()
{
  if (qword_1EB2E5948 != -1)
  {
    swift_once();
  }
}

void sub_1A83FC150(_BYTE *a1)
{
  v2 = *a1;
  LOBYTE(v19) = *a1;
  v3 = sub_1A83FC3A4(&v19);
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v3 ID];
      if (!v5)
      {
        sub_1A84E5DBC();
        v5 = sub_1A84E5D8C();
      }

      v6 = [v5 _stripFZIDPrefix];

      if (v6)
      {
        sub_1A84E5DBC();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD000000000000056, 0x80000001A852FBF0);
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      v9 = 0xE300000000000000;
      v10 = 5456722;
      if (v2 != 6)
      {
        v10 = 0x74696C6C65746153;
        v9 = 0xEC000000534D5365;
      }

      v11 = 5459283;
      v12 = 0xE300000000000000;
      if (v2 != 4)
      {
        v11 = 0x656D695465636146;
        v12 = 0xE800000000000000;
      }

      if (v2 <= 5)
      {
        v10 = v11;
        v9 = v12;
      }

      v13 = 0xE800000000000000;
      if (v2 != 2)
      {
        v13 = 0xEC0000006574694CLL;
      }

      if (v2)
      {
        v8 = 7958113;
        v7 = 0xE300000000000000;
      }

      if (v2 > 1)
      {
        v8 = 0x6567617373654D69;
        v7 = v13;
      }

      if (v2 <= 3)
      {
        v14 = v8;
      }

      else
      {
        v14 = v10;
      }

      if (v2 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = v9;
      }

      MEMORY[0x1AC56A990](v14, v15);

      v16 = v19;
      v17 = v20;
      sub_1A8400E28();
      swift_allocError();
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = 1;
      swift_willThrow();
    }
  }
}

void *sub_1A83FC3A4(_BYTE *a1)
{
  LOBYTE(v5) = *a1;
  result = sub_1A83FD1C8(&v5);
  if (!v1)
  {
    v3 = result;
    v4 = [result loginIMHandle];

    if (v4)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      if (swift_dynamicCast())
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1A824B2D4(v7, &qword_1EB2E66B0, &qword_1A8500960);
      return 0;
    }
  }

  return result;
}

void sub_1A83FC4A8(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1A84E5C9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  v14 = *(v5 + 32);
  if (*(v14 + 16))
  {
    v15 = *(v5 + 32);

    v16 = sub_1A8489DCC(v13);
    if (v17)
    {
      v18 = (*(v14 + 56) + 144 * v16);
      v167 = *v18;
      v19 = v18[3];
      v20 = v18[4];
      v21 = v18[2];
      v168 = v18[1];
      v169 = v21;
      v170 = v19;
      v171 = v20;
      v22 = v18[5];
      v23 = v18[6];
      v24 = v18[8];
      v174 = v18[7];
      v175 = v24;
      v172 = v22;
      v173 = v23;
      sub_1A8400E7C(&v167, &v158);

      v25 = v174;
      a2[6] = v173;
      a2[7] = v25;
      a2[8] = v175;
      v26 = v170;
      a2[2] = v169;
      a2[3] = v26;
      v27 = v172;
      a2[4] = v171;
      a2[5] = v27;
      v29 = v167;
      v28 = v168;
LABEL_4:
      *a2 = v29;
      a2[1] = v28;
      return;
    }
  }

  v144 = v8;
  v145 = v12;
  v143 = v9;
  LOBYTE(v167) = v13;
  v30 = sub_1A83FD1C8(&v167);
  if (!v3)
  {
    v31 = v5;
    v32 = v30;
    v136 = v31;
    if ([v30 loginIMHandle])
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v158 = 0u;
      v159 = 0u;
    }

    v167 = v158;
    v168 = v159;
    if (*(&v159 + 1))
    {
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      if (swift_dynamicCast())
      {
        v33 = v176[0];
        LOBYTE(v167) = v13;
        v34 = sub_1A83FDD90(&v167);
        v137 = v33;
        v47 = *(v34 + 16);
        v141 = v32;
        v142 = a2;
        v140 = v47;
        if (v47)
        {
          v48 = 0;
          v49 = (v34 + 40);
          v186 = MEMORY[0x1E69E7CC0];
          v50 = v137;
          v138 = v34;
          v139 = v13;
          while (v48 < *(v34 + 16))
          {
            v60 = *(v49 - 1);
            v59 = *v49;
            v156 = v49;

            v61 = sub_1A84E5D8C();
            v62 = [v32 imHandleWithID_];

            v157 = v48;
            if (v62)
            {
              v63 = [v62 countryCode];
              if (v63)
              {
                v64 = v63;
                v65 = sub_1A84E5DBC();
                v154 = v66;
                v155 = v65;
              }

              else
              {
                v154 = 0xE000000000000000;
                v155 = 0;
              }

              v82 = [v62 _unformattedPhoneNumber];
              if (v82)
              {
                v83 = v82;
                v84 = sub_1A84E5DBC();
                v152 = v85;
                v153 = v84;
              }

              else
              {
                v152 = 0;
                v153 = 0;
              }

              v86 = [v62 email];
              if (v86)
              {
                v87 = v86;
                v88 = sub_1A84E5DBC();
                v150 = v89;
                v151 = v88;
              }

              else
              {
                v150 = 0;
                v151 = 0;
              }

              v90 = [v62 fullName];
              if (v90)
              {
                v91 = v90;
                v92 = sub_1A84E5DBC();
                v148 = v93;
                v149 = v92;
              }

              else
              {
                v148 = 0;
                v149 = 0;
              }

              v94 = [v62 _contactID];
              if (v94)
              {
                v95 = v94;
                v96 = sub_1A84E5DBC();
                v146 = v97;
                v147 = v96;
              }

              else
              {
                v146 = 0;
                v147 = 0;
              }

              v98 = v4;
              v99 = sub_1A84E5D8C();
              v100 = [v99 _stripFZIDPrefix];

              if (!v100)
              {
                goto LABEL_95;
              }

              v101 = sub_1A84E5DBC();
              v103 = v102;

              v104 = sub_1A84E5D8C();
              v105 = [v104 _stripFZIDPrefix];

              if (!v105)
              {
                goto LABEL_96;
              }

              v106 = sub_1A84E5DBC();
              v108 = v107;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v186 = sub_1A83EF00C(0, *(v186 + 2) + 1, 1, v186);
              }

              v110 = *(v186 + 2);
              v109 = *(v186 + 3);
              if (v110 >= v109 >> 1)
              {
                v186 = sub_1A83EF00C((v109 > 1), v110 + 1, 1, v186);
              }

              v51 = v186;
              *(v186 + 2) = v110 + 1;
              v52 = &v51[128 * v110];
              *(v52 + 4) = 0;
              *(v52 + 5) = v101;
              *(v52 + 6) = v103;
              *(v52 + 7) = v106;
              *(v52 + 8) = v108;
              v13 = v139;
              v52[72] = v139;
              v53 = *(&v167 + 3);
              *(v52 + 73) = v167;
              *(v52 + 19) = v53;
              v54 = v154;
              *(v52 + 10) = v155;
              *(v52 + 11) = v54;
              v55 = v152;
              *(v52 + 12) = v153;
              *(v52 + 13) = v55;
              v56 = v150;
              *(v52 + 14) = v151;
              *(v52 + 15) = v56;
              v57 = v148;
              *(v52 + 16) = v149;
              *(v52 + 17) = v57;
              v58 = v146;
              *(v52 + 18) = v147;
              *(v52 + 19) = v58;
              v4 = v98;
              v50 = v137;
            }

            else
            {
              v67 = sub_1A84E5D8C();
              v68 = [v67 _stripFZIDPrefix];

              if (!v68)
              {
                goto LABEL_98;
              }

              v69 = sub_1A84E5DBC();
              v71 = v70;

              v72 = sub_1A84E5D8C();
              v73 = [v72 _stripFZIDPrefix];

              if (!v73)
              {
                goto LABEL_97;
              }

              v74 = sub_1A84E5DBC();
              v76 = v75;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v186 = sub_1A83EF00C(0, *(v186 + 2) + 1, 1, v186);
              }

              v78 = *(v186 + 2);
              v77 = *(v186 + 3);
              if (v78 >= v77 >> 1)
              {
                v186 = sub_1A83EF00C((v77 > 1), v78 + 1, 1, v186);
              }

              v79 = v186;
              *(v186 + 2) = v78 + 1;
              v80 = &v79[128 * v78];
              *(v80 + 4) = 0;
              *(v80 + 5) = v69;
              *(v80 + 6) = v71;
              *(v80 + 7) = v74;
              *(v80 + 8) = v76;
              v13 = v139;
              v80[72] = v139;
              v81 = *(&v167 + 3);
              *(v80 + 73) = v167;
              *(v80 + 19) = v81;
              *(v80 + 10) = 0;
              *(v80 + 11) = 0xE000000000000000;
              *(v80 + 6) = 0u;
              *(v80 + 7) = 0u;
              *(v80 + 8) = 0u;
              *(v80 + 9) = 0u;
            }

            v48 = v157 + 1;
            v49 = v156 + 2;
            v32 = v141;
            a2 = v142;
            v34 = v138;
            if (v140 == v157 + 1)
            {
              goto LABEL_71;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v186 = MEMORY[0x1E69E7CC0];
        v50 = v137;
LABEL_71:

        v111 = [v50 ID];
        if (!v111)
        {
          sub_1A84E5DBC();
          v111 = sub_1A84E5D8C();
        }

        v112 = [v111 _stripFZIDPrefix];

        if (!v112)
        {
LABEL_99:
          __break(1u);
          return;
        }

        v157 = sub_1A84E5DBC();
        v114 = v113;
        v115 = v186;

        *&v158 = 0;
        BYTE8(v158) = 1;
        ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(0, 0, v115, v157, v114, 0, 0, &v158, &v167);
        v183 = v173;
        v184 = v174;
        v185 = v175;
        v179 = v169;
        v180 = v170;
        v181 = v171;
        v182 = v172;
        v177 = v167;
        v178 = v168;
        v116 = v136;
        swift_beginAccess();
        sub_1A8400E7C(&v177, &v167);
        v117 = *(v116 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v167 = *(v116 + 32);
        *(v116 + 32) = 0x8000000000000000;
        sub_1A848D95C(&v177, v13, isUniquelyReferenced_nonNull_native);
        *(v116 + 32) = v167;
        swift_endAccess();
        v119 = v145;
        sub_1A84E5C8C();
        sub_1A8400E7C(&v177, &v167);
        v120 = sub_1A84E5C7C();
        v121 = v13;
        v122 = sub_1A84E617C();
        sub_1A8400ED8(&v177);
        if (!os_log_type_enabled(v120, v122))
        {

          (*(v143 + 8))(v119, v144);
LABEL_93:
          v133 = v184;
          a2[6] = v183;
          a2[7] = v133;
          a2[8] = v185;
          v134 = v180;
          a2[2] = v179;
          a2[3] = v134;
          v135 = v182;
          a2[4] = v181;
          a2[5] = v135;
          v29 = v177;
          v28 = v178;
          goto LABEL_4;
        }

        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v176[0] = v124;
        *v123 = 136315394;
        if (v121 > 3)
        {
          if (v121 <= 5)
          {
            if (v121 == 4)
            {
              v125 = 5459283;
              v126 = 0xE300000000000000;
            }

            else
            {
              v126 = 0xE800000000000000;
              v125 = 0x656D695465636146;
            }

            goto LABEL_92;
          }

          if (v121 == 6)
          {
            v126 = 0xE300000000000000;
            v125 = 5456722;
            goto LABEL_92;
          }

          v125 = 0x74696C6C65746153;
          v127 = 1397576549;
        }

        else
        {
          if (v121 <= 1)
          {
            if (v121)
            {
              v126 = 0xE300000000000000;
              v125 = 7958113;
            }

            else
            {
              v125 = 0x6E776F6E6B6E75;
              v126 = 0xE700000000000000;
            }

            goto LABEL_92;
          }

          if (v121 == 2)
          {
            v126 = 0xE800000000000000;
            v125 = 0x6567617373654D69;
LABEL_92:
            v128 = sub_1A82446BC(v125, v126, v176);

            *(v123 + 4) = v128;
            *(v123 + 12) = 2080;
            v164 = v183;
            v165 = v184;
            v166 = v185;
            v160 = v179;
            v161 = v180;
            v162 = v181;
            v163 = v182;
            v158 = v177;
            v159 = v178;
            sub_1A8400E7C(&v177, &v167);
            v129 = ImportExport.Participant.description.getter();
            v131 = v130;
            v173 = v164;
            v174 = v165;
            v175 = v166;
            v169 = v160;
            v170 = v161;
            v171 = v162;
            v172 = v163;
            v167 = v158;
            v168 = v159;
            sub_1A8400ED8(&v167);
            v132 = sub_1A82446BC(v129, v131, v176);

            *(v123 + 14) = v132;
            _os_log_impl(&dword_1A823F000, v120, v122, "Loaded account participant for %s: %s", v123, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC56D3F0](v124, -1, -1);
            MEMORY[0x1AC56D3F0](v123, -1, -1);

            (*(v143 + 8))(v145, v144);
            a2 = v142;
            goto LABEL_93;
          }

          v125 = 0x6567617373654D69;
          v127 = 1702127948;
        }

        v126 = v127 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_92;
      }
    }

    else
    {
      sub_1A824B2D4(&v167, &qword_1EB2E66B0, &qword_1A8500960);
    }

    *&v167 = 0;
    *(&v167 + 1) = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0x2065636976726553, 0xEC00000020726F66);
    v35 = 0xE700000000000000;
    v36 = 0xE300000000000000;
    v37 = 5456722;
    if (v13 != 6)
    {
      v37 = 0x74696C6C65746153;
      v36 = 0xEC000000534D5365;
    }

    v38 = 5459283;
    v39 = 0xE300000000000000;
    if (v13 != 4)
    {
      v38 = 0x656D695465636146;
      v39 = 0xE800000000000000;
    }

    if (v13 <= 5)
    {
      v37 = v38;
      v36 = v39;
    }

    v40 = 0xE800000000000000;
    v41 = 0x6567617373654D69;
    if (v13 != 2)
    {
      v41 = 0x6567617373654D69;
      v40 = 0xEC0000006574694CLL;
    }

    v42 = 7958113;
    if (v13)
    {
      v35 = 0xE300000000000000;
    }

    else
    {
      v42 = 0x6E776F6E6B6E75;
    }

    if (v13 > 1)
    {
      v35 = v40;
    }

    else
    {
      v41 = v42;
    }

    if (v13 <= 3)
    {
      v43 = v41;
    }

    else
    {
      v43 = v37;
    }

    if (v13 <= 3)
    {
      v44 = v35;
    }

    else
    {
      v44 = v36;
    }

    MEMORY[0x1AC56A990](v43, v44);

    MEMORY[0x1AC56A990](0xD000000000000037, 0x80000001A852FC50);
    v45 = v167;
    sub_1A8400E28();
    swift_allocError();
    *v46 = v45;
    *(v46 + 16) = 1;
    swift_willThrow();
  }
}

void *sub_1A83FD1C8(unsigned __int8 *a1)
{
  v4 = sub_1A84E5C9C();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 > 3)
  {
    v100 = v6;
  }

  else if (v9 > 1)
  {
    v100 = v6;
  }

  else
  {
    if (!v9)
    {

LABEL_9:
      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1A84E646C();

      v103 = 0xD000000000000027;
      v104 = 0x80000001A852FE40;
      v11 = 0xE700000000000000;
      v12 = 0xE300000000000000;
      v13 = 5456722;
      if (v9 != 6)
      {
        v13 = 0x74696C6C65746153;
        v12 = 0xEC000000534D5365;
      }

      v14 = 5459283;
      v15 = 0xE300000000000000;
      if (v9 != 4)
      {
        v14 = 0x656D695465636146;
        v15 = 0xE800000000000000;
      }

      if (v9 <= 5)
      {
        v13 = v14;
        v12 = v15;
      }

      v16 = 0xE800000000000000;
      v17 = 0x6567617373654D69;
      if (v9 != 2)
      {
        v17 = 0x6567617373654D69;
        v16 = 0xEC0000006574694CLL;
      }

      if (v9)
      {
        v18 = 7958113;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
      }

      if (v9)
      {
        v11 = 0xE300000000000000;
      }

      if (v9 > 1)
      {
        v11 = v16;
      }

      else
      {
        v17 = v18;
      }

      if (v9 <= 3)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (v9 <= 3)
      {
        v20 = v11;
      }

      else
      {
        v20 = v12;
      }

      MEMORY[0x1AC56A990](v19, v20);

      MEMORY[0x1AC56A990](46, 0xE100000000000000);
      v21 = v103;
      v22 = v104;
      sub_1A8400E28();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
LABEL_32:
      swift_willThrow();
      return v4;
    }

    v100 = v6;
  }

  v10 = sub_1A84E67AC();

  if (v10)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v25 = *(v1 + 24);
  if (*(v25 + 16))
  {
    v26 = *(v1 + 24);

    v27 = sub_1A8489DCC(v9);
    if (v28)
    {
      v4 = *(*(v25 + 56) + 8 * v27);

      return v4;
    }
  }

  v29 = objc_opt_self();
  result = [v29 sharedInstance];
  if (result)
  {
    v30 = result;
    v31 = [result numberOfAccounts];

    if (v31 < 1)
    {
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD000000000000036, 0x80000001A852FDA0);
      v55 = 0xE300000000000000;
      v56 = 0xE300000000000000;
      v57 = 5456722;
      if (v9 != 6)
      {
        v57 = 0x74696C6C65746153;
        v56 = 0xEC000000534D5365;
      }

      v58 = 5459283;
      v59 = 0xE300000000000000;
      if (v9 != 4)
      {
        v58 = 0x656D695465636146;
        v59 = 0xE800000000000000;
      }

      if (v9 <= 5)
      {
        v57 = v58;
        v56 = v59;
      }

      v60 = 0xE800000000000000;
      v61 = 0x6567617373654D69;
      if (v9 != 2)
      {
        v61 = 0x6567617373654D69;
        v60 = 0xEC0000006574694CLL;
      }

      if (v9 == 1)
      {
        v61 = 7958113;
      }

      else
      {
        v55 = v60;
      }

      if (v9 <= 3)
      {
        v62 = v61;
      }

      else
      {
        v62 = v57;
      }

      if (v9 <= 3)
      {
        v63 = v55;
      }

      else
      {
        v63 = v56;
      }

      MEMORY[0x1AC56A990](v62, v63);

      MEMORY[0x1AC56A990](0xD00000000000002BLL, 0x80000001A852FDE0);
      v64 = v101;
      v65 = v102;
      sub_1A8400E28();
      swift_allocError();
      *v66 = v64;
      *(v66 + 8) = v65;
      *(v66 + 16) = 2;
      goto LABEL_32;
    }

    LOBYTE(v101) = v9;
    v32 = v1;
    v33 = sub_1A83FF264(&v101);
    if (v2)
    {
      return v4;
    }

    v34 = v33;
    result = [v29 sharedInstance];
    if (result)
    {
      v35 = result;
      v36 = [result bestAccountForService_];

      if (v36)
      {
        v99 = v34;
        if ([v36 loginStatus] == 4)
        {
          sub_1A84E5C8C();
          v37 = v36;
          v38 = sub_1A84E5C7C();
          v39 = sub_1A84E617C();

          if (os_log_type_enabled(v38, v39))
          {
            v96 = v39;
            v97 = v37;
            v98 = v38;
            v40 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v101 = v95;
            v41 = 0xE300000000000000;
            v42 = 0xE300000000000000;
            v43 = 5456722;
            *v40 = 136315394;
            if (v9 != 6)
            {
              v43 = 0x74696C6C65746153;
              v42 = 0xEC000000534D5365;
            }

            v44 = 5459283;
            v45 = 0xE300000000000000;
            if (v9 != 4)
            {
              v44 = 0x656D695465636146;
              v45 = 0xE800000000000000;
            }

            if (v9 <= 5)
            {
              v43 = v44;
              v42 = v45;
            }

            v46 = 0xE800000000000000;
            v47 = 0x6567617373654D69;
            if (v9 != 2)
            {
              v47 = 0x6567617373654D69;
              v46 = 0xEC0000006574694CLL;
            }

            if (v9 == 1)
            {
              v47 = 7958113;
            }

            else
            {
              v41 = v46;
            }

            if (v9 <= 3)
            {
              v48 = v47;
            }

            else
            {
              v48 = v43;
            }

            if (v9 <= 3)
            {
              v49 = v41;
            }

            else
            {
              v49 = v42;
            }

            v50 = v40;
            v51 = sub_1A82446BC(v48, v49, &v101);

            *(v50 + 1) = v51;
            *(v50 + 6) = 2112;
            v37 = v97;
            *(v50 + 14) = v97;
            v52 = v94;
            *v94 = v36;
            v53 = v37;
            _os_log_impl(&dword_1A823F000, v98, v96, "Loaded account for serviceType: %s: %@", v50, 0x16u);
            sub_1A824B2D4(v52, &unk_1EB2E9070, &unk_1A8501A90);
            MEMORY[0x1AC56D3F0](v52, -1, -1);
            v54 = v95;
            sub_1A8244788(v95);
            MEMORY[0x1AC56D3F0](v54, -1, -1);
            MEMORY[0x1AC56D3F0](v50, -1, -1);
          }

          else
          {
          }

          (*(v100 + 8))(v8, v4);
          swift_beginAccess();
          v4 = v37;
          v91 = *(v32 + 24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = *(v32 + 24);
          sub_1A848D690(v4, v9, isUniquelyReferenced_nonNull_native);
          *(v32 + 24) = v105;
          swift_endAccess();
        }

        else
        {
          v101 = 0;
          v102 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000036, 0x80000001A852FDA0);
          v79 = 0xE300000000000000;
          v80 = 0xE300000000000000;
          v81 = 5456722;
          if (v9 != 6)
          {
            v81 = 0x74696C6C65746153;
            v80 = 0xEC000000534D5365;
          }

          v82 = 5459283;
          v83 = 0xE300000000000000;
          if (v9 != 4)
          {
            v82 = 0x656D695465636146;
            v83 = 0xE800000000000000;
          }

          if (v9 <= 5)
          {
            v81 = v82;
            v80 = v83;
          }

          v84 = 0xE800000000000000;
          v85 = 0x6567617373654D69;
          if (v9 != 2)
          {
            v85 = 0x6567617373654D69;
            v84 = 0xEC0000006574694CLL;
          }

          if (v9 == 1)
          {
            v85 = 7958113;
          }

          else
          {
            v79 = v84;
          }

          if (v9 <= 3)
          {
            v86 = v85;
          }

          else
          {
            v86 = v81;
          }

          if (v9 <= 3)
          {
            v87 = v79;
          }

          else
          {
            v87 = v80;
          }

          MEMORY[0x1AC56A990](v86, v87);

          MEMORY[0x1AC56A990](0xD000000000000025, 0x80000001A852FE10);
          v105 = [v36 loginStatus];
          type metadata accessor for IMAccountLoginStatus(0);
          sub_1A84E652C();
          v88 = v101;
          v89 = v102;
          sub_1A8400E28();
          swift_allocError();
          *v90 = v88;
          *(v90 + 8) = v89;
          *(v90 + 16) = 2;
          swift_willThrow();
        }
      }

      else
      {
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000036, 0x80000001A852FDA0);
        v67 = 0xE300000000000000;
        v68 = 0xE300000000000000;
        v69 = 5456722;
        if (v9 != 6)
        {
          v69 = 0x74696C6C65746153;
          v68 = 0xEC000000534D5365;
        }

        v70 = 5459283;
        v71 = 0xE300000000000000;
        if (v9 != 4)
        {
          v70 = 0x656D695465636146;
          v71 = 0xE800000000000000;
        }

        if (v9 <= 5)
        {
          v69 = v70;
          v68 = v71;
        }

        v72 = 0xE800000000000000;
        v73 = 0x6567617373654D69;
        if (v9 != 2)
        {
          v73 = 0x6567617373654D69;
          v72 = 0xEC0000006574694CLL;
        }

        if (v9 == 1)
        {
          v73 = 7958113;
        }

        else
        {
          v67 = v72;
        }

        if (v9 <= 3)
        {
          v74 = v73;
        }

        else
        {
          v74 = v69;
        }

        if (v9 <= 3)
        {
          v75 = v67;
        }

        else
        {
          v75 = v68;
        }

        MEMORY[0x1AC56A990](v74, v75);

        MEMORY[0x1AC56A990](46, 0xE100000000000000);
        v76 = v101;
        v77 = v102;
        sub_1A8400E28();
        swift_allocError();
        *v78 = v76;
        *(v78 + 8) = v77;
        *(v78 + 16) = 0;
        swift_willThrow();
      }

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A83FDD90(unsigned __int8 *a1)
{
  v4 = v1;
  v6 = sub_1A84E5C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  v12 = *(v4 + 40);
  if (*(v12 + 16))
  {
    v13 = *(v4 + 40);

    v14 = sub_1A8489DCC(v11);
    if (v15)
    {
      v3 = *(*(v12 + 56) + 8 * v14);

LABEL_40:

      return v3;
    }
  }

  LOBYTE(v69) = v11;
  v16 = sub_1A83FD1C8(&v69);
  if (v2)
  {
    return v3;
  }

  v17 = v16;
  v64 = v11;
  v67 = v10;
  v70 = MEMORY[0x1E69E7CD0];
  v18 = [v16 profileStringForKey_];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 _stripFZIDPrefix];

    if (!v20)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v21 = sub_1A84E5DBC();
    v23 = v22;

    sub_1A82493D0(&v69, v21, v23);
  }

  v24 = [v17 login];
  if (!v24)
  {
LABEL_12:
    v30 = [v17 aliases];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1A84E5FFC();

      v33 = sub_1A83FF070(v32);

      if (v33)
      {
        sub_1A83FF184(v33);
      }
    }

    v34 = v70;
    v35 = *(v70 + 16);
    v65 = v7;
    v66 = v6;
    v62[1] = v70;
    v63 = v17;
    if (!v35)
    {
      v36 = MEMORY[0x1E69E7CC0];
LABEL_19:
      v38 = v67;
      v39 = v64;
      v69 = v36;

      sub_1A8401864(&v69);

      v3 = v69;
      swift_beginAccess();

      v40 = *(v4 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v4 + 40);
      *(v4 + 40) = 0x8000000000000000;
      sub_1A848D810(v3, v39, isUniquelyReferenced_nonNull_native);
      *(v4 + 40) = v68;
      swift_endAccess();
      sub_1A84E5C8C();

      v42 = sub_1A84E5C7C();
      v43 = sub_1A84E617C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v39;
        v47 = v45;
        v69 = v45;
        v48 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E75;
        v50 = 0xE300000000000000;
        *v44 = 136315394;
        v51 = 5456722;
        if (v46 != 6)
        {
          v51 = 0x74696C6C65746153;
          v50 = 0xEC000000534D5365;
        }

        v52 = 5459283;
        v53 = 0xE300000000000000;
        if (v46 != 4)
        {
          v52 = 0x656D695465636146;
          v53 = 0xE800000000000000;
        }

        if (v46 <= 5)
        {
          v51 = v52;
          v50 = v53;
        }

        v54 = 0xE800000000000000;
        if (v46 != 2)
        {
          v54 = 0xEC0000006574694CLL;
        }

        if (v46)
        {
          v49 = 7958113;
          v48 = 0xE300000000000000;
        }

        if (v46 > 1)
        {
          v49 = 0x6567617373654D69;
          v48 = v54;
        }

        if (v46 <= 3)
        {
          v55 = v49;
        }

        else
        {
          v55 = v51;
        }

        if (v46 <= 3)
        {
          v56 = v48;
        }

        else
        {
          v56 = v50;
        }

        v57 = sub_1A82446BC(v55, v56, &v69);

        *(v44 + 4) = v57;
        *(v44 + 12) = 2080;
        v58 = MEMORY[0x1AC56AB00](v3, MEMORY[0x1E69E6158]);
        v60 = sub_1A82446BC(v58, v59, &v69);

        *(v44 + 14) = v60;
        _os_log_impl(&dword_1A823F000, v42, v43, "Loaded account aliases for %s: %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v47, -1, -1);
        MEMORY[0x1AC56D3F0](v44, -1, -1);

        (*(v65 + 8))(v67, v66);
      }

      else
      {

        (*(v7 + 8))(v38, v6);
      }

      goto LABEL_40;
    }

    v36 = sub_1A84D832C(v35, 0);
    v37 = sub_1A84D8438(&v69, v36 + 4, v35, v34);

    sub_1A8267334();
    if (v37 == v35)
    {
      v7 = v65;
      v6 = v66;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_43;
  }

  v25 = v24;
  v26 = [v24 _stripFZIDPrefix];

  if (v26)
  {
    v27 = sub_1A84E5DBC();
    v29 = v28;

    sub_1A82493D0(&v69, v27, v29);

    goto LABEL_12;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

void *ImportExport.AccountManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t ImportExport.AccountManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

void sub_1A83FE48C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  if (a2 && (v8 = sub_1A84E5D8C(), v9 = [v8 _stripFZIDPrefix], v8, v9))
  {
    sub_1A84E5DBC();
  }

  else
  {
    v15 = v7;
    v10 = sub_1A83FC3A4(&v15);
    if (!v5)
    {
      if (v10)
      {
        v11 = v10;
        v12 = [v10 ID];
        if (!v12)
        {
          sub_1A84E5DBC();
          v12 = sub_1A84E5D8C();
        }

        v13 = [v12 _stripFZIDPrefix];

        if (v13)
        {
          sub_1A84E5DBC();
        }

        else
        {
          __break(1u);
        }
      }

      else if (a5)
      {
      }

      else
      {
        v14 = v7;
        sub_1A83FC150(&v14);
      }
    }
  }
}

void sub_1A83FE5E8(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1A84E5C9C();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v53 - v13;
  v14 = *a3;
  v15 = sub_1A84E5D8C();
  v16 = [v15 _stripFZIDPrefix];

  if (!v16)
  {
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    sub_1A84E646C();

    *&v88 = 0xD000000000000020;
    *(&v88 + 1) = 0x80000001A852FD70;
    MEMORY[0x1AC56A990](a1, a2);
    v20 = v88;
    sub_1A84023CC();
    swift_allocError();
    *v21 = v20;
    *(v21 + 16) = 0;
    swift_willThrow();
    return;
  }

  v17 = sub_1A84E5DBC();
  v19 = v18;

  v54 = v17;
  if (!v14)
  {

LABEL_6:
    sub_1A84E5C8C();

    v23 = sub_1A84E5C7C();
    v24 = sub_1A84E619C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v88 = v26;
      *v25 = 136315138;
      v27 = sub_1A82446BC(v54, v19, &v88);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1A823F000, v23, v24, "Attempting to find an account participant for an unknown serviceType for accountAddress: %s", v25, 0xCu);
      sub_1A8244788(v26);
      MEMORY[0x1AC56D3F0](v26, -1, -1);
      MEMORY[0x1AC56D3F0](v25, -1, -1);
    }

    else
    {
    }

    (*(v56 + 8))(v12, v57);
    sub_1A8402420(&v88);
    v29 = v95;
    a4[6] = v94;
    a4[7] = v29;
    a4[8] = v96;
    v30 = v91;
    a4[2] = v90;
    a4[3] = v30;
    v31 = v93;
    a4[4] = v92;
    a4[5] = v31;
    v32 = v89;
    v33 = v88;
    goto LABEL_12;
  }

  v22 = sub_1A84E67AC();

  if (v22)
  {
    goto LABEL_6;
  }

  v97 = v14;
  v28 = v58;
  sub_1A83FC4A8(&v97, &v88);
  if (v28)
  {

    return;
  }

  v85 = v94;
  v86 = v95;
  v87 = v96;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v79 = v88;
  v80 = v89;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v70 = v88;
  v71 = v89;

  v34 = v54;
  v35.value._countAndFlagsBits = v54;
  v35.value._object = v19;
  v36 = ImportExport.Participant.contains(_:)(v35);

  if (!v36)
  {
    sub_1A8400ED8(&v79);
    v41 = v55;
    sub_1A84E5C8C();

    v42 = sub_1A84E5C7C();
    v43 = sub_1A84E619C();

    if (!os_log_type_enabled(v42, v43))
    {

      (*(v56 + 8))(v41, v57);
LABEL_32:
      LOBYTE(v59) = v14;
      ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v34, v19, 0, 0, &v59, 0, 0xE000000000000000, 0, &v70);
      goto LABEL_33;
    }

    LODWORD(v58) = v43;
    v44 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v70 = v53;
    *v44 = 136315394;
    *(v44 + 4) = sub_1A82446BC(v34, v19, &v70);
    *(v44 + 12) = 2080;
    if (v14 <= 3)
    {
      if (v14 == 1)
      {
        v46 = 0xE300000000000000;
        v45 = 7958113;
        goto LABEL_31;
      }

      if (v14 == 2)
      {
        v46 = 0xE800000000000000;
        v45 = 0x6567617373654D69;
LABEL_31:
        v48 = sub_1A82446BC(v45, v46, &v70);

        *(v44 + 14) = v48;
        _os_log_impl(&dword_1A823F000, v42, v58, "accountAddress %s not found in account participant for serviceType: %s, returning bespoke participant", v44, 0x16u);
        v49 = v53;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v49, -1, -1);
        MEMORY[0x1AC56D3F0](v44, -1, -1);

        (*(v56 + 8))(v55, v57);
        v34 = v54;
        goto LABEL_32;
      }

      v45 = 0x6567617373654D69;
      v47 = 1702127948;
    }

    else
    {
      if (v14 <= 5)
      {
        if (v14 == 4)
        {
          v45 = 5459283;
          v46 = 0xE300000000000000;
        }

        else
        {
          v46 = 0xE800000000000000;
          v45 = 0x656D695465636146;
        }

        goto LABEL_31;
      }

      if (v14 == 6)
      {
        v46 = 0xE300000000000000;
        v45 = 5456722;
        goto LABEL_31;
      }

      v45 = 0x74696C6C65746153;
      v47 = 1397576549;
    }

    v46 = v47 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_31;
  }

  v37 = v79;
  v38 = v34;
  v39 = v80;
  v40 = v85;
  v59 = v86;
  v60 = BYTE8(v86);

  ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(v37, *(&v37 + 1), v39, v38, v19, v40, *(&v40 + 1), &v59, &v70);
  sub_1A8400ED8(&v79);
LABEL_33:
  v67 = v76;
  v68 = v77;
  v69 = v78;
  v63 = v72;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v61 = v70;
  v62 = v71;
  nullsub_4(&v61);
  v50 = v68;
  a4[6] = v67;
  a4[7] = v50;
  a4[8] = v69;
  v51 = v64;
  a4[2] = v63;
  a4[3] = v51;
  v52 = v66;
  a4[4] = v65;
  a4[5] = v52;
  v33 = v61;
  v32 = v62;
LABEL_12:
  *a4 = v33;
  a4[1] = v32;
}

uint64_t sub_1A83FEE6C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v33 = a1[4];
  v34 = v4;
  v5 = a1[7];
  v35 = a1[6];
  v36 = v5;
  v6 = a1[1];
  v29 = *a1;
  v30 = v6;
  v7 = a1[3];
  v31 = a1[2];
  v32 = v7;
  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v8 = swift_allocObject();
  v9 = a1[4];
  v10 = a1[6];
  v11 = a1[7];
  *(v8 + 112) = a1[5];
  *(v8 + 128) = v10;
  *(v8 + 144) = v11;
  v12 = *a1;
  v13 = a1[1];
  *(v8 + 16) = xmmword_1A85013E0;
  *(v8 + 32) = v12;
  v14 = a1[2];
  v15 = a1[3];
  *(v8 + 48) = v13;
  *(v8 + 64) = v14;
  v16 = v32;
  v17 = *(&v30 + 1);
  v18 = v31;
  v20 = *(&v29 + 1);
  v19 = v30;
  v21 = v29;
  *(v8 + 80) = v15;
  *(v8 + 96) = v9;
  v22 = *(v8 + 72);
  v28 = 1;
  if (v22 > 3)
  {
    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v23 = 0xE300000000000000;
        v24 = 5456722;
      }

      else
      {
        v23 = 0xEC000000534D5365;
        v24 = 0x74696C6C65746153;
      }
    }

    else if (v22 == 4)
    {
      v24 = 5459283;
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE800000000000000;
      v24 = 0x656D695465636146;
    }
  }

  else if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0xEC0000006574694CLL;
    }

    v24 = 0x6567617373654D69;
  }

  else if (v22)
  {
    v23 = 0xE300000000000000;
    v24 = 7958113;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  v25 = v28;
  *a2 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v22;
  *(a2 + 80) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = v25;
  *(a2 + 128) = v24;
  *(a2 + 136) = v23;
  swift_bridgeObjectRetain_n();
  sub_1A840243C(&v29, v27);
}

uint64_t sub_1A83FF070(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A83EF534(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A8244F40(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A83EF534((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1A83FF184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v3 = *(i - 1);
      v4 = *i;

      v5 = sub_1A84E5D8C();
      v6 = [v5 _stripFZIDPrefix];

      if (!v6)
      {
        break;
      }

      v7 = sub_1A84E5DBC();
      v9 = v8;

      sub_1A82493D0(&v10, v7, v9);

      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1A83FF264(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A84E5C9C();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 > 3)
  {
    v65 = v6;
  }

  else if (v9 > 1)
  {
    v65 = v6;
  }

  else
  {
    if (!v9)
    {

LABEL_9:
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_1A84E646C();

      v68 = 0xD00000000000002ALL;
      v69 = 0x80000001A852FE70;
      v11 = 0xE700000000000000;
      v12 = 0xE300000000000000;
      v13 = 5456722;
      if (v9 != 6)
      {
        v13 = 0x74696C6C65746153;
        v12 = 0xEC000000534D5365;
      }

      v14 = 5459283;
      v15 = 0xE300000000000000;
      if (v9 != 4)
      {
        v14 = 0x656D695465636146;
        v15 = 0xE800000000000000;
      }

      if (v9 <= 5)
      {
        v13 = v14;
        v12 = v15;
      }

      v16 = 0xE800000000000000;
      v17 = 0x6567617373654D69;
      if (v9 != 2)
      {
        v17 = 0x6567617373654D69;
        v16 = 0xEC0000006574694CLL;
      }

      if (v9)
      {
        v18 = 7958113;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
      }

      if (v9)
      {
        v11 = 0xE300000000000000;
      }

      if (v9 > 1)
      {
        v11 = v16;
      }

      else
      {
        v17 = v18;
      }

      if (v9 <= 3)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (v9 <= 3)
      {
        v20 = v11;
      }

      else
      {
        v20 = v12;
      }

      MEMORY[0x1AC56A990](v19, v20);

      MEMORY[0x1AC56A990](46, 0xE100000000000000);
      v21 = v68;
      v22 = v69;
LABEL_32:
      sub_1A8400E28();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      swift_willThrow();
      return v4;
    }

    v65 = v6;
  }

  v10 = sub_1A84E67AC();

  if (v10)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v24 = *(v1 + 16);
  if (*(v24 + 16))
  {
    v25 = *(v2 + 16);

    v26 = sub_1A8489DCC(v9);
    if (v27)
    {
      v4 = *(*(v24 + 56) + 8 * v26);

      return v4;
    }
  }

  v28 = sub_1A84E5D8C();

  v29 = [objc_opt_self() serviceWithName_];

  if (!v29)
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1A84E646C();

    v66 = 0xD00000000000002ALL;
    v67 = 0x80000001A852FE70;
    v48 = 0xE300000000000000;
    v49 = 0xE300000000000000;
    v50 = 5456722;
    if (v9 != 6)
    {
      v50 = 0x74696C6C65746153;
      v49 = 0xEC000000534D5365;
    }

    v51 = 5459283;
    v52 = 0xE300000000000000;
    if (v9 != 4)
    {
      v51 = 0x656D695465636146;
      v52 = 0xE800000000000000;
    }

    if (v9 <= 5)
    {
      v50 = v51;
      v49 = v52;
    }

    v53 = 0xE800000000000000;
    v54 = 0x6567617373654D69;
    if (v9 != 2)
    {
      v54 = 0x6567617373654D69;
      v53 = 0xEC0000006574694CLL;
    }

    if (v9 == 1)
    {
      v54 = 7958113;
    }

    else
    {
      v48 = v53;
    }

    if (v9 <= 3)
    {
      v55 = v54;
    }

    else
    {
      v55 = v50;
    }

    if (v9 <= 3)
    {
      v56 = v48;
    }

    else
    {
      v56 = v49;
    }

    MEMORY[0x1AC56A990](v55, v56);

    MEMORY[0x1AC56A990](46, 0xE100000000000000);
    v21 = v66;
    v22 = v67;
    goto LABEL_32;
  }

  sub_1A84E5C8C();
  v30 = v29;
  v31 = sub_1A84E5C7C();
  v32 = sub_1A84E617C();

  if (os_log_type_enabled(v31, v32))
  {
    v62 = v32;
    v63 = v30;
    v64 = v31;
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66 = v61;
    v34 = 0xE300000000000000;
    v35 = 0xE300000000000000;
    v36 = 5456722;
    *v33 = 136315394;
    if (v9 != 6)
    {
      v36 = 0x74696C6C65746153;
      v35 = 0xEC000000534D5365;
    }

    v37 = 5459283;
    v38 = 0xE300000000000000;
    if (v9 != 4)
    {
      v37 = 0x656D695465636146;
      v38 = 0xE800000000000000;
    }

    if (v9 <= 5)
    {
      v36 = v37;
      v35 = v38;
    }

    v39 = 0xE800000000000000;
    v40 = 0x6567617373654D69;
    if (v9 != 2)
    {
      v40 = 0x6567617373654D69;
      v39 = 0xEC0000006574694CLL;
    }

    if (v9 == 1)
    {
      v40 = 7958113;
    }

    else
    {
      v34 = v39;
    }

    if (v9 <= 3)
    {
      v41 = v40;
    }

    else
    {
      v41 = v36;
    }

    if (v9 <= 3)
    {
      v42 = v34;
    }

    else
    {
      v42 = v35;
    }

    v43 = sub_1A82446BC(v41, v42, &v66);

    *(v33 + 4) = v43;
    *(v33 + 12) = 2112;
    v30 = v63;
    *(v33 + 14) = v63;
    v44 = v33;
    v45 = v60;
    *v60 = v29;
    v46 = v30;
    _os_log_impl(&dword_1A823F000, v64, v62, "Loaded service for serviceType: %s: %@", v44, 0x16u);
    sub_1A824B2D4(v45, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v45, -1, -1);
    v47 = v61;
    sub_1A8244788(v61);
    MEMORY[0x1AC56D3F0](v47, -1, -1);
    MEMORY[0x1AC56D3F0](v44, -1, -1);
  }

  else
  {
  }

  (*(v65 + 8))(v8, v4);
  swift_beginAccess();
  v4 = v30;
  v57 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_1A848D67C(v4, v9, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v70;
  swift_endAccess();
  return v4;
}

uint64_t sub_1A83FFB1C(uint64_t a1)
{
  v2 = sub_1A8401028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83FFB58(uint64_t a1)
{
  v2 = sub_1A8401028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A83FFB94()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x4C746F4E72657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E746E756F636361;
  }
}

uint64_t sub_1A83FFC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A840229C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A83FFC34(uint64_t a1)
{
  v2 = sub_1A8400F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83FFC70(uint64_t a1)
{
  v2 = sub_1A8400F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A83FFCAC(uint64_t a1)
{
  v2 = sub_1A8400FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83FFCE8(uint64_t a1)
{
  v2 = sub_1A8400FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A83FFD24()
{
  sub_1A84E684C();
  MEMORY[0x1AC56B350](0);
  return sub_1A84E687C();
}

uint64_t sub_1A83FFD68()
{
  sub_1A84E684C();
  MEMORY[0x1AC56B350](0);
  return sub_1A84E687C();
}

uint64_t sub_1A83FFDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A84E67AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A83FFE28(uint64_t a1)
{
  v2 = sub_1A8400F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83FFE64(uint64_t a1)
{
  v2 = sub_1A8400F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AccountManagerError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E70B0, &qword_1A8501418);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v29 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E70B8, &qword_1A8501420);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E70C0, &qword_1A8501428);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v39 = sub_1A83EA2FC(&qword_1EB2E70C8, &qword_1A8501430);
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v29 - v16;
  v18 = v1[1];
  v37 = *v1;
  v38 = v18;
  v19 = *(v1 + 16);
  v20 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8400F2C();
  sub_1A84E68AC();
  v21 = (v14 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v41 = 1;
      sub_1A8400FD4();
      v22 = v39;
      sub_1A84E669C();
      v23 = v33;
      sub_1A84E66CC();
      (*(v32 + 8))(v9, v23);
    }

    else
    {
      v42 = 2;
      sub_1A8400F80();
      v27 = v34;
      v22 = v39;
      sub_1A84E669C();
      v28 = v36;
      sub_1A84E66CC();
      (*(v35 + 8))(v27, v28);
    }

    return (*v21)(v17, v22);
  }

  else
  {
    v40 = 0;
    sub_1A8401028();
    v24 = v39;
    sub_1A84E669C();
    v25 = v31;
    sub_1A84E66CC();
    (*(v30 + 8))(v13, v25);
    return (*v21)(v17, v24);
  }
}

uint64_t ImportExport.AccountManagerError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v59 = sub_1A83EA2FC(&qword_1EB2E70F0, &qword_1A8501438);
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E70F8, &qword_1A8501440);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = sub_1A83EA2FC(&qword_1EB2E7100, &qword_1A8501448);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = sub_1A83EA2FC(&qword_1EB2E7108, &unk_1A8501450);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v61 = a1;
  sub_1A82471E0(a1, v19);
  sub_1A8400F2C();
  v21 = v60;
  sub_1A84E689C();
  if (!v21)
  {
    v51 = 0;
    v52 = v15;
    v23 = v58;
    v22 = v59;
    v60 = v18;
    v24 = sub_1A84E668C();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
    {
      v28 = sub_1A84E64BC();
      swift_allocError();
      v29 = v14;
      v31 = v30;
      v32 = *(sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20) + 48);
      *v31 = &type metadata for ImportExport.AccountManagerError;
      v33 = v60;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v52 + 8))(v33, v29);
    }

    else
    {
      if (*(v24 + 32))
      {
        if (v26 != 1)
        {
          v64 = 2;
          sub_1A8400F80();
          v42 = v60;
          v43 = v51;
          sub_1A84E65BC();
          if (!v43)
          {
            v40 = sub_1A84E660C();
            v47 = v52;
            v51 = 0;
            v39 = v48;
            (*(v56 + 8))(v23, v22);
            (*(v47 + 8))(v60, v14);
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          (*(v52 + 8))(v42, v14);
          goto LABEL_17;
        }

        v63 = 1;
        sub_1A8400FD4();
        v34 = v9;
        v35 = v60;
        v36 = v51;
        sub_1A84E65BC();
        if (!v36)
        {
          v37 = v54;
          v59 = sub_1A84E660C();
          v39 = v38;
          (*(v55 + 8))(v34, v37);
          (*(v52 + 8))(v35, v14);
          swift_unknownObjectRelease();
          v40 = v59;
LABEL_21:
          v49 = v57;
          *v57 = v40;
          v49[1] = v39;
          *(v49 + 16) = v26;
          return sub_1A8244788(v61);
        }
      }

      else
      {
        v62 = 0;
        sub_1A8401028();
        v35 = v60;
        v41 = v51;
        sub_1A84E65BC();
        if (!v41)
        {
          v45 = v10;
          v40 = sub_1A84E660C();
          v39 = v46;
          (*(v53 + 8))(v13, v45);
          (*(v52 + 8))(v35, v14);
          swift_unknownObjectRelease();
          goto LABEL_21;
        }
      }

      (*(v52 + 8))(v35, v14);
    }

LABEL_17:
    swift_unknownObjectRelease();
  }

  return sub_1A8244788(v61);
}

uint64_t sub_1A84008EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A8400920()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A8400954()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A8400988()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A84009FC(void *a1)
{
  if ([a1 state] != 3)
  {
    return 0;
  }

  v3 = [a1 handleRecords];
  sub_1A8244B68(0, &qword_1EB2E7180, 0x1E69A5DB0);
  v4 = sub_1A84E5FFC();

  v5 = v4 >> 62 ? sub_1A84E654C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v5)
  {
    return 0;
  }

  v6 = [a1 guid];
  if (!v6)
  {
    sub_1A84E5DBC();
    v6 = sub_1A84E5D8C();
  }

  v7 = [v1 _cachedChatWithGUID_];

  if (v7)
  {
    return v7;
  }

  v8 = [a1 chatIdentifier];
  if (!v8)
  {
    sub_1A84E5DBC();
    v8 = sub_1A84E5D8C();
  }

  v7 = [v1 _cachedChatWithIdentifier_];

  if (v7)
  {
    return v7;
  }

  v10 = [a1 chatIdentifier];
  if (!v10)
  {
    sub_1A84E5DBC();
    v10 = sub_1A84E5D8C();
  }

  v11 = [a1 style];
  v12 = [a1 serviceName];
  if (!v12)
  {
    sub_1A84E5DBC();
    v12 = sub_1A84E5D8C();
  }

  v13 = [v1 _existingChatWithIdentifier_style_service_];

  return v13;
}

void *sub_1A8400C40(void *a1)
{
  v3 = [v1 participantsWithState_];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v4 = sub_1A84E5FFC();

  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A84E654C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56AF80](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [a1 canonicalizedURIString];
      v11 = sub_1A84E5DBC();
      v13 = v12;

      LOBYTE(v10) = sub_1A847A890(v11, v13);

      if (v10 & 1) != 0 || (v14 = [a1 uncanonicalizedURIString], v15 = sub_1A84E5DBC(), v17 = v16, v14, LOBYTE(v14) = sub_1A847A890(v15, v17), , (v14))
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

unint64_t sub_1A8400E28()
{
  result = qword_1EB2E70A8;
  if (!qword_1EB2E70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E70A8);
  }

  return result;
}

unint64_t sub_1A8400F2C()
{
  result = qword_1EB2E70D0;
  if (!qword_1EB2E70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E70D0);
  }

  return result;
}

unint64_t sub_1A8400F80()
{
  result = qword_1EB2E70D8;
  if (!qword_1EB2E70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E70D8);
  }

  return result;
}

unint64_t sub_1A8400FD4()
{
  result = qword_1EB2E70E0;
  if (!qword_1EB2E70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E70E0);
  }

  return result;
}

unint64_t sub_1A8401028()
{
  result = qword_1EB2E70E8;
  if (!qword_1EB2E70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E70E8);
  }

  return result;
}

__n128 sub_1A8401134(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A8401148(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A8401190(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s19AccountManagerErrorO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19AccountManagerErrorO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImportExport(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ImportExport(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1A8401448()
{
  result = qword_1EB2E7118;
  if (!qword_1EB2E7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7118);
  }

  return result;
}

unint64_t sub_1A84014A0()
{
  result = qword_1EB2E7120;
  if (!qword_1EB2E7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7120);
  }

  return result;
}

unint64_t sub_1A84014F8()
{
  result = qword_1EB2E7128;
  if (!qword_1EB2E7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7128);
  }

  return result;
}

unint64_t sub_1A8401550()
{
  result = qword_1EB2E7130;
  if (!qword_1EB2E7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7130);
  }

  return result;
}

unint64_t sub_1A84015A8()
{
  result = qword_1EB2E7138;
  if (!qword_1EB2E7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7138);
  }

  return result;
}

unint64_t sub_1A8401600()
{
  result = qword_1EB2E7140;
  if (!qword_1EB2E7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7140);
  }

  return result;
}

unint64_t sub_1A8401658()
{
  result = qword_1EB2E7148;
  if (!qword_1EB2E7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7148);
  }

  return result;
}

unint64_t sub_1A84016B0()
{
  result = qword_1EB2E7150;
  if (!qword_1EB2E7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7150);
  }

  return result;
}

unint64_t sub_1A8401708()
{
  result = qword_1EB2E7158;
  if (!qword_1EB2E7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7158);
  }

  return result;
}

unint64_t sub_1A8401760()
{
  result = qword_1EB2E7160;
  if (!qword_1EB2E7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7160);
  }

  return result;
}

unint64_t sub_1A84017B8()
{
  result = qword_1EB2E7168;
  if (!qword_1EB2E7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7168);
  }

  return result;
}

unint64_t sub_1A8401810()
{
  result = qword_1EB2E7170;
  if (!qword_1EB2E7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7170);
  }

  return result;
}

uint64_t sub_1A8401864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A841E558(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A84018D0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A84018D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A84E674C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A84E602C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A8401A98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A84019C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A84019C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1A84E67AC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A8401A98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1A841E100(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1A8402074((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1A84E67AC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A84E67AC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A83EEF08(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1A83EEF08((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1A8402074((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A841E100(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1A841E074(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1A84E67AC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1A8402074(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1A84E67AC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1A840229C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E746E756F636361 && a2 == 0xEF646E756F46746FLL;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A852FD50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C746F4E72657375 && a2 == 0xEF6E49646567676FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1A84023CC()
{
  result = qword_1EB2E7178;
  if (!qword_1EB2E7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7178);
  }

  return result;
}

double sub_1A8402420(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A84024B4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_1A84E558C();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1A83EF634(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A83EF634(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8402680(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A840888C(a1, v7, type metadata accessor for ImportExport.Conversation);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A8408828(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1A840274C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  return sub_1A840888C(v1 + v3, a1, type metadata accessor for ImportExport.Conversation);
}

uint64_t sub_1A84027B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1A8402820()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1A8402868()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_1A84028B0()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ImportExport.ArchivedConversation.__allocating_init(withConversation:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1A8408954(a1, v5 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount) = 0;
  return v5;
}

uint64_t ImportExport.ArchivedConversation.init(withConversation:)(uint64_t a1)
{
  sub_1A8408954(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount) = 0;
  return v1;
}

uint64_t sub_1A84029D0()
{
  v0 = sub_1A84E558C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E553C();
  sub_1A84E552C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1A8402AC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v8 = v1;
  v9 = a1;

  v5 = sub_1A84024B4(sub_1A8402C50, &v7, v4);

  return v5;
}

uint64_t sub_1A8402B54(uint64_t *a1)
{
  v2 = sub_1A84E558C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  sub_1A84E553C();
  sub_1A84E552C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A8402C50(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1A8402B54(a1);
}

uint64_t *sub_1A8402C70(uint64_t a1)
{
  v44 = sub_1A84E558C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A84E5C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A84E526C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1A84E525C();
  v14 = sub_1A84E55AC();
  if (v1)
  {

    sub_1A84E5C8C();
    v19 = v43;
    v18 = v44;
    (*(v3 + 16))(v43, a1, v44);
    v20 = v1;
    v21 = v10;
    v22 = sub_1A84E5C7C();
    v23 = sub_1A84E619C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = v7;
      v25 = v24;
      v26 = swift_slowAlloc();
      v42 = v21;
      v27 = v19;
      v38 = v26;
      v39 = swift_slowAlloc();
      v45 = v39;
      *v25 = 136315394;
      v28 = sub_1A84E555C();
      v40 = v6;
      v30 = v29;
      (*(v3 + 8))(v27, v18);
      v31 = sub_1A82446BC(v28, v30, &v45);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = v1;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      v34 = v38;
      *v38 = v33;
      _os_log_impl(&dword_1A823F000, v22, v23, "failed to read MessageBatch JSON from %s with error: %@", v25, 0x16u);
      sub_1A824B2D4(v34, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
      v35 = v39;
      sub_1A8244788(v39);
      MEMORY[0x1AC56D3F0](v35, -1, -1);
      MEMORY[0x1AC56D3F0](v25, -1, -1);

      (*(v41 + 8))(v42, v40);
    }

    else
    {

      (*(v3 + 8))(v19, v18);
      (*(v7 + 8))(v21, v6);
    }

    return swift_willThrow();
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v42 = v10;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A8406F98();
    sub_1A84E524C();

    sub_1A83F5994(v16, v17);
    return v45;
  }
}

uint64_t sub_1A84030BC()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x436567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_1A840312C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84085D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8403154(uint64_t a1)
{
  v2 = sub_1A8407C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8403190(uint64_t a1)
{
  v2 = sub_1A8407C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivedConversation.deinit()
{
  sub_1A84088F4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths);

  return v0;
}

uint64_t ImportExport.ArchivedConversation.__deallocating_deinit()
{
  sub_1A84088F4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84032A0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E71A0, &unk_1A8501AA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8407C5C();
  sub_1A84E68AC();
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A840888C(v2 + v14, v7, type metadata accessor for ImportExport.Conversation);
  v21 = 0;
  sub_1A8407CB0(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  v15 = v20[0];
  sub_1A84E672C();
  sub_1A84088F4(v7, type metadata accessor for ImportExport.Conversation);
  if (!v15)
  {
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
    swift_beginAccess();
    v20[1] = *(v2 + v16);
    v22 = 1;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D18(&qword_1EB2E71B8);
    sub_1A84E672C();
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
    swift_beginAccess();
    v18 = *(v2 + v17);
    v22 = 2;
    sub_1A84E670C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t ImportExport.ArchivedConversation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = type metadata accessor for ImportExport.Conversation();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A83EA2FC(&qword_1EB2E71C0, &qword_1A8501AB0);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v22 = a1;
  sub_1A82471E0(a1, v14);
  sub_1A8407C5C();
  sub_1A84E689C();
  if (v2)
  {
    type metadata accessor for ImportExport.ArchivedConversation(0);
    v16 = *(*v3 + 48);
    v17 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    sub_1A8407CB0(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
    v15 = v21;
    sub_1A84E666C();
    sub_1A8408954(v8, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v25 = 1;
    sub_1A8407D18(&qword_1EB2E71D0);
    sub_1A84E666C();
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths) = v23;
    v24 = 2;
    v19 = sub_1A84E664C();
    (*(v9 + 8))(v12, v15);
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount) = v19;
  }

  sub_1A8244788(v22);
  return v3;
}

uint64_t ImportExport.ArchivedConversation.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Conversation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1A84E646C();
  v18 = v16;
  v19 = v17;
  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A852FED0);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A840888C(v1 + v6, v5, type metadata accessor for ImportExport.Conversation);
  v7 = ImportExport.Conversation.shortDescription.getter();
  v9 = v8;
  sub_1A84088F4(v5, type metadata accessor for ImportExport.Conversation);
  MEMORY[0x1AC56A990](v7, v9);

  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A852FEF0);
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  v15[1] = *(*(v1 + v10) + 16);
  v11 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v11);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF10);
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  swift_beginAccess();
  v15[0] = *(v1 + v12);
  v13 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v13);

  return v18;
}

uint64_t ImportExport.ArchivedConversation.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A840888C(v2 + v8, v7, type metadata accessor for ImportExport.Conversation);
  v9 = ImportExport.Conversation.shortDescription.getter();
  v11 = v10;
  sub_1A84088F4(v7, type metadata accessor for ImportExport.Conversation);
  v12 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1A83EEBEC(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1A83EEBEC((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[32 * v14];
  strcpy(v15 + 32, "Conversation:");
  *(v15 + 23) = -4864;
  *(v15 + 6) = v9;
  *(v15 + 7) = v11;
  *(a1 + 16) = v12;
  v16 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  swift_beginAccess();
  v33[1] = *(v2 + v16);
  v17 = sub_1A84E676C();
  v20 = *(v12 + 2);
  v19 = *(v12 + 3);
  if (v20 >= v19 >> 1)
  {
    v30 = v17;
    v31 = v18;
    v32 = sub_1A83EEBEC((v19 > 1), v20 + 1, 1, v12);
    v18 = v31;
    v12 = v32;
    v17 = v30;
  }

  *(v12 + 2) = v20 + 1;
  v21 = &v12[32 * v20];
  strcpy(v21 + 32, "Message Count");
  *(v21 + 23) = -4864;
  *(v21 + 6) = v17;
  *(v21 + 7) = v18;
  *(a1 + 16) = v12;
  v22 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  v33[0] = *(v2 + v22);

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v23 = sub_1A84E5D6C();
  v25 = v24;

  v28 = *(v12 + 2);
  v27 = *(v12 + 3);
  if (v28 >= v27 >> 1)
  {
    result = sub_1A83EEBEC((v27 > 1), v28 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v28 + 1;
  v29 = &v12[32 * v28];
  *(v29 + 4) = 0x206567617373654DLL;
  *(v29 + 5) = 0xEF73656863746142;
  *(v29 + 6) = v23;
  *(v29 + 7) = v25;
  *(a1 + 16) = v12;
  return result;
}

uint64_t ImportExport.ArchivedConversation.beginIterating(withArchivedConversationFileURL:)(uint64_t a1)
{
  v3 = sub_1A84E558C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v1;
  (*(v4 + 32))(v11 + OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL, v7, v3);

  return v11;
}

uint64_t ImportExport.ArchivedConversation.Iterator.__allocating_init(withArchivedConversation:withArchivedConversationFileURL:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  v8 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v9 = sub_1A84E558C();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t ImportExport.ArchivedConversation.Iterator.init(withArchivedConversation:withArchivedConversationFileURL:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v4 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v5 = sub_1A84E558C();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_1A840416C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1A84E5C9C();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(type metadata accessor for ImportExport.Message() - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for ImportExport.MessageBatch();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ImportExport.Conversation() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = sub_1A84E558C();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8404380, 0, 0);
}

uint64_t sub_1A8404380()
{
  v103 = v0;
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (v3 >= *(v6 + 16))
  {
    (*(v0[17] + 56))(v0[9], 1, 1, v0[16]);
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[10];
    v12 = v6 + 16 * v3;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);

    sub_1A84E553C();
    sub_1A84E552C();

    v101 = *(v10 + 8);
    v101(v8, v9);
    v15 = sub_1A84E526C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_1A84E525C();
    v18 = sub_1A84E55AC();
    v20 = v19;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A8406F98();
    sub_1A84E524C();
    v65 = v0[10];

    sub_1A83F5994(v18, v20);
    v66 = sub_1A8404B64(v0[8]);
    v67 = v0[19];

    v98 = v1;
    v68 = *(v1 + 24);
    v69 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
    swift_beginAccess();
    result = sub_1A840888C(v68 + v69, v67, type metadata accessor for ImportExport.Conversation);
    v100 = *(v66 + 16);
    if (v100)
    {
      v70 = 0;
      v71 = v0[19];
      v72 = v0[14];
      v73 = v0[15];
      while (v70 < *(v66 + 16))
      {
        sub_1A840888C(v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v0[15], type metadata accessor for ImportExport.Message);
        v74 = *(v73 + 32);
        v75 = *(v73 + 40);
        v76 = *(v71 + 8);
        v77 = *(v71 + 16);
        if (v74 != v76 || v75 != v77)
        {
          v79 = *(v73 + 32);
          v80 = *(v73 + 40);
          v81 = *(v71 + 8);
          v82 = *(v71 + 16);
          if ((sub_1A84E67AC() & 1) == 0)
          {
            v83 = v0[19];
            v84 = v0[15];

            v102[0] = 0;
            v102[1] = 0xE000000000000000;
            sub_1A84E646C();
            MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
            MEMORY[0x1AC56A990](v74, v75);
            MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
            MEMORY[0x1AC56A990](v76, v77);
            sub_1A8407E40();
            v85 = swift_allocError();
            *v86 = 0;
            v86[1] = 0xE000000000000000;
            swift_willThrow();
            sub_1A84088F4(v83, type metadata accessor for ImportExport.Conversation);
            sub_1A84088F4(v84, type metadata accessor for ImportExport.Message);
            v40 = v98;
            v21 = v0[24];
            v23 = v0[21];
            v22 = v0[22];
            v24 = v0[20];
            v25 = v0[13];
            sub_1A84E5C8C();
            (*(v23 + 16))(v22, v21, v24);
            v26 = v85;
            v27 = sub_1A84E5C7C();
            v28 = sub_1A84E619C();

            v29 = os_log_type_enabled(v27, v28);
            v30 = v0[22];
            v31 = v0[20];
            v33 = v0[12];
            v32 = v0[13];
            v99 = v0[11];
            if (v29)
            {
              v34 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v102[0] = v96;
              *v34 = 136315394;
              v94 = v28;
              v35 = sub_1A84E555C();
              v97 = v32;
              v36 = v40;
              v38 = v37;
              v101(v30, v31);
              v39 = sub_1A82446BC(v35, v38, v102);
              v40 = v36;

              *(v34 + 4) = v39;
              *(v34 + 12) = 2112;
              v41 = v85;
              v42 = _swift_stdlib_bridgeErrorToNSError();
              *(v34 + 14) = v42;
              *v95 = v42;
              _os_log_impl(&dword_1A823F000, v27, v94, "ArchivedConversation.Iterator: Failed to decode message batch at %s: %@", v34, 0x16u);
              sub_1A824B2D4(v95, &unk_1EB2E9070, &unk_1A8501A90);
              MEMORY[0x1AC56D3F0](v95, -1, -1);
              sub_1A8244788(v96);
              MEMORY[0x1AC56D3F0](v96, -1, -1);
              v43 = v34;
              v44 = v101;
              MEMORY[0x1AC56D3F0](v43, -1, -1);

              (*(v33 + 8))(v97, v99);
            }

            else
            {

              v44 = v101;
              v101(v30, v31);
              (*(v33 + 8))(v32, v99);
            }

            v53 = v0[24];
            v54 = v0[20];
            swift_willThrow();
            result = v44(v53, v54);
            v55 = *(v40 + 16);
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (!v56)
            {
              v59 = v0[23];
              v58 = v0[24];
              v60 = v0[22];
              v62 = v0[18];
              v61 = v0[19];
              v63 = v0[15];
              v64 = v0[13];
              *(v40 + 16) = v57;

              v52 = v0[1];
              goto LABEL_11;
            }

            goto LABEL_27;
          }
        }

        ++v70;
        result = sub_1A84088F4(v0[15], type metadata accessor for ImportExport.Message);
        if (v100 == v70)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

LABEL_24:
    v87 = v0[19];
    v89 = v0[17];
    v88 = v0[18];
    v90 = v0[16];
    v91 = v0[9];
    v101(v0[24], v0[20]);
    sub_1A8408954(v87, v88, type metadata accessor for ImportExport.Conversation);
    *(v88 + *(v90 + 20)) = v66;
    *(v88 + *(v90 + 24)) = 0;
    sub_1A8408954(v88, v91, type metadata accessor for ImportExport.MessageBatch);
    result = (*(v89 + 56))(v91, 0, 1, v90);
    v92 = *(v98 + 16);
    v56 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v56)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    *(v98 + 16) = v93;
  }

  v46 = v0[23];
  v45 = v0[24];
  v47 = v0[22];
  v49 = v0[18];
  v48 = v0[19];
  v50 = v0[15];
  v51 = v0[13];

  v52 = v0[1];
LABEL_11:

  return v52();
}

uint64_t sub_1A8404B64(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v113 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v113 - v10;
  v12 = sub_1A84E558C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v133 = &v113 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v131 = &v113 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v113 - v21;
  v22 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = &v113 - v24;
  v25 = type metadata accessor for ImportExport.Attachment();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v152 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v132 = &v113 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v129 = (&v113 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v139 = &v113 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v151 = &v113 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v150 = &v113 - v38;
  v114 = type metadata accessor for ImportExport.MessagePart();
  v113 = *(v114 - 8);
  v39 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v149 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ImportExport.Message();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v116 = &v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v121 = &v113 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v122 = &v113 - v48;
  v119 = *(a1 + 16);
  if (v119)
  {
    v49 = 0;
    v127 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
    v118 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v120 = a1 + v118;
    v50 = *(v47 + 72);
    v153 = v26;
    v148 = (v26 + 48);
    v142 = (v13 + 48);
    v137 = (v13 + 32);
    v140 = (v13 + 8);
    v126 = (v13 + 16);
    v125 = (v13 + 56);
    v51 = MEMORY[0x1E69E7CC0];
    v134 = v12;
    v156 = v25;
    v52 = v122;
    v128 = v6;
    v136 = v9;
    v143 = v11;
    v117 = v50;
    while (1)
    {
      v124 = v51;
      v123 = v49;
      result = sub_1A840888C(v120 + v50 * v49, v52, type metadata accessor for ImportExport.Message);
      v57 = *(v52 + 216);
      v58 = *(v57 + 16);
      if (v58)
      {
        v155 = *(v114 + 44);
        v59 = v57 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v154 = *(v113 + 72);
        v60 = MEMORY[0x1E69E7CC0];
        v61 = v115;
        do
        {
          v62 = v60;
          v63 = v149;
          sub_1A840888C(v59, v149, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(v155 + v63, v61, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84088F4(v63, type metadata accessor for ImportExport.MessagePart);
          if ((*v148)(v61, 1, v156) == 1)
          {
            result = sub_1A824B2D4(v61, &qword_1EB2E6F50, &unk_1A8502920);
            v60 = v62;
          }

          else
          {
            v64 = v150;
            sub_1A8408954(v61, v150, type metadata accessor for ImportExport.Attachment);
            sub_1A840888C(v64, v151, type metadata accessor for ImportExport.Attachment);
            v60 = v62;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1A83EF118(0, v62[2] + 1, 1, v62);
            }

            v66 = v60[2];
            v65 = v60[3];
            if (v66 >= v65 >> 1)
            {
              v60 = sub_1A83EF118(v65 > 1, v66 + 1, 1, v60);
            }

            sub_1A84088F4(v150, type metadata accessor for ImportExport.Attachment);
            v60[2] = v66 + 1;
            result = sub_1A8408954(v151, v60 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v66, type metadata accessor for ImportExport.Attachment);
          }

          v59 += v154;
          --v58;
        }

        while (v58);
      }

      else
      {
        v60 = MEMORY[0x1E69E7CC0];
      }

      v145 = v60[2];
      if (!v145)
      {

        v52 = v122;
        sub_1A840888C(v122, v116, type metadata accessor for ImportExport.Message);
        v51 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1A83EF168(0, v51[2] + 1, 1, v51);
        }

        v108 = v51[2];
        v110 = v51[3];
        v109 = v108 + 1;
        if (v108 >= v110 >> 1)
        {
          v51 = sub_1A83EF168(v110 > 1, v108 + 1, 1, v51);
        }

        v53 = &v147;
        goto LABEL_4;
      }

      v67 = 0;
      v68 = *(v153 + 80);
      v146 = v60;
      v138 = (v68 + 32) & ~v68;
      v144 = v60 + v138;
      v69 = MEMORY[0x1E69E7CC0];
      v70 = v139;
      v51 = &qword_1EB2E7068;
      v71 = v156;
      do
      {
        if (v67 >= v146[2])
        {
          __break(1u);
          return result;
        }

        v154 = *(v153 + 72);
        v155 = v69;
        sub_1A840888C(&v144[v154 * v67], v70, type metadata accessor for ImportExport.Attachment);
        v72 = *(v71 + 40);
        v73 = v70 + v72;
        v74 = v70;
        v75 = v143;
        sub_1A8243D74(v73, v143, &qword_1EB2E7068, &unk_1A8501EB0);
        v76 = *v142;
        if ((*v142)(v75, 1, v12) == 1)
        {
          sub_1A824B2D4(v75, &qword_1EB2E7068, &unk_1A8501EB0);
          v70 = v74;
          v69 = v155;
LABEL_24:
          sub_1A840888C(v70, v152, type metadata accessor for ImportExport.Attachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_1A83EF118(0, v69[2] + 1, 1, v69);
          }

          v78 = v69[2];
          v77 = v69[3];
          if (v78 >= v77 >> 1)
          {
            v69 = sub_1A83EF118(v77 > 1, v78 + 1, 1, v69);
          }

          sub_1A84088F4(v70, type metadata accessor for ImportExport.Attachment);
          v69[2] = v78 + 1;
          result = sub_1A8408954(v152, v69 + v138 + v78 * v154, type metadata accessor for ImportExport.Attachment);
          v71 = v156;
          goto LABEL_20;
        }

        v141 = v67;
        v79 = *v137;
        (*v137)(v147, v75, v12);
        v80 = v74 + v72;
        v81 = v136;
        sub_1A8243D74(v80, v136, &qword_1EB2E7068, &unk_1A8501EB0);
        if (v76(v81, 1, v12) == 1)
        {
          v70 = v74;
          sub_1A824B2D4(v81, &qword_1EB2E7068, &unk_1A8501EB0);
        }

        else
        {
          v82 = v131;
          v79(v131, v81, v12);
          v83 = [objc_opt_self() defaultManager];
          sub_1A84E555C();
          v84 = sub_1A84E5D8C();

          v85 = [v83 fileExistsAtPath_];

          v86 = v134;
          v87 = *v140;
          v88 = v82;
          v70 = v139;
          v12 = v86;
          (*v140)(v88, v86);
          if (v85)
          {
            v87(v147, v86);
            v51 = &qword_1EB2E7068;
            v69 = v155;
            v67 = v141;
            goto LABEL_24;
          }
        }

        v71 = v156;
        if (*(v70 + *(v156 + 48)) == 1)
        {
          sub_1A84E555C();
          v89 = v12;
          v90 = v71;
          v91 = v130;
          sub_1A84E553C();
          v92 = v133;
          sub_1A84E552C();

          v93 = *v140;
          (*v140)(v91, v89);
          v94 = *(v139 + *(v90 + 92));
          if (sub_1A84E54CC())
          {
            v95 = v94;
          }

          else
          {
            v95 = v94 | 0x40;
          }

          v96 = v128;
          (*v126)(v128, v92, v89);
          v97 = v139;
          (*v125)(v96, 0, 1, v89);
          v157 = v95;
          v98 = v129;
          v99 = v135;
          ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v96, 0, 0, &v157, v129);
          v51 = &qword_1EB2E7068;
          if (v99)
          {

            sub_1A824B2D4(v96, &qword_1EB2E7068, &unk_1A8501EB0);
            v111 = v134;
            v93(v133, v134);
            v93(v147, v111);
            sub_1A84088F4(v97, type metadata accessor for ImportExport.Attachment);

            v112 = v122;
LABEL_54:
            sub_1A84088F4(v112, type metadata accessor for ImportExport.Message);

            return v51;
          }

          sub_1A824B2D4(v96, &qword_1EB2E7068, &unk_1A8501EB0);
          sub_1A840888C(v98, v132, type metadata accessor for ImportExport.Attachment);
          v100 = v155;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135 = 0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = sub_1A83EF118(0, v100[2] + 1, 1, v100);
          }

          v103 = v100[2];
          v102 = v100[3];
          if (v103 >= v102 >> 1)
          {
            v100 = sub_1A83EF118(v102 > 1, v103 + 1, 1, v100);
          }

          sub_1A84088F4(v98, type metadata accessor for ImportExport.Attachment);
          v104 = v134;
          v93(v133, v134);
          v93(v147, v104);
          v12 = v104;
          v70 = v139;
          sub_1A84088F4(v139, type metadata accessor for ImportExport.Attachment);
          v69 = v100;
          v100[2] = v103 + 1;
          result = sub_1A8408954(v132, v100 + v138 + v103 * v154, type metadata accessor for ImportExport.Attachment);
          v71 = v156;
        }

        else
        {
          (*v140)(v147, v12);
          result = sub_1A84088F4(v70, type metadata accessor for ImportExport.Attachment);
          v51 = &qword_1EB2E7068;
          v69 = v155;
        }

        v67 = v141;
LABEL_20:
        ++v67;
      }

      while (v145 != v67);

      v52 = v122;
      v105 = v135;
      ImportExport.Message.update(attachments:)(v69, v121);
      if (v105)
      {

        v112 = v52;
        goto LABEL_54;
      }

      v51 = v124;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v135 = 0;
      if ((v106 & 1) == 0)
      {
        v51 = sub_1A83EF168(0, v51[2] + 1, 1, v51);
      }

      v108 = v51[2];
      v107 = v51[3];
      v109 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        v51 = sub_1A83EF168(v107 > 1, v108 + 1, 1, v51);
      }

      v53 = &v152;
LABEL_4:
      v54 = *(v53 - 32);
      v55 = v123 + 1;
      v51[2] = v109;
      v50 = v117;
      sub_1A8408954(v54, v51 + v118 + v108 * v117, type metadata accessor for ImportExport.Message);
      sub_1A84088F4(v52, type metadata accessor for ImportExport.Message);
      v49 = v55;
      if (v55 == v119)
      {
        return v51;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}