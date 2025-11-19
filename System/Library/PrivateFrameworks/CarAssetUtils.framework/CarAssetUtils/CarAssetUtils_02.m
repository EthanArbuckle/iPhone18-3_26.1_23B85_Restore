uint64_t storeEnumTagSinglePayload for CAUOEMPunchThroughOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_242C17940()
{
  result = qword_27ECDEB70;
  if (!qword_27ECDEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB70);
  }

  return result;
}

unint64_t sub_242C17998()
{
  result = qword_27ECDEB78;
  if (!qword_27ECDEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB78);
  }

  return result;
}

unint64_t sub_242C179F0()
{
  result = qword_27ECDEB80;
  if (!qword_27ECDEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB80);
  }

  return result;
}

unint64_t sub_242C17A48()
{
  result = qword_27ECDEB88;
  if (!qword_27ECDEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB88);
  }

  return result;
}

unint64_t sub_242C17AA0()
{
  result = qword_27ECDEB90;
  if (!qword_27ECDEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB90);
  }

  return result;
}

unint64_t sub_242C17AF8()
{
  result = qword_27ECDEB98;
  if (!qword_27ECDEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB98);
  }

  return result;
}

uint64_t sub_242C17B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C216D0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242C216F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242C17C70(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!(v6 >> 14))
  {
    v15 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v16 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v17 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v18 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v19 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v20 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v21 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v90 = v19;
    v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v85 = v17;
    v86 = v18;
    v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v81 = v20;
    v82 = v21;
    v83 = v15;
    v84 = v16;
    v80 = v6;
    v79 = BYTE1(v6) & 1;
    sub_242C0E04C(&v89, &v96);
    sub_242C0AA48(a2, a3, &v80, &v79, v88);
    goto LABEL_5;
  }

  if (v6 >> 14 == 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v8 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v9 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v10 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v11 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v12 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v13 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v90 = v11;
    v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v85 = v9;
    v86 = v10;
    v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v81 = v12;
    v82 = v13;
    v83 = v7;
    v84 = v8;
    v14 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
    v80 = v6;
    v79 = BYTE1(v6) & 0x3F;
    sub_242C0E04C(&v89, &v96);
    sub_242C0A620(a2, a3, v14, &v80, &v79, v88);
    goto LABEL_5;
  }

  if (*a1 > 0x8005u)
  {
    if (*a1 > 0x8008u)
    {
      if (v6 == 32777)
      {
        v57 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v101 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v58 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v100 = v57;
        v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v59 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v97 = v59;
        v98 = v58;
        v34 = *(&v101 + 1);
        if (!*(&v101 + 1))
        {
          return 0;
        }
      }

      else if (v6 == 32778)
      {
        v43 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v44 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v101 = v43;
        v45 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v97 = v45;
        v98 = v44;
        v34 = v102;
        if (!v102)
        {
          return 0;
        }
      }

      else
      {
        v71 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v72 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v101 = v71;
        v73 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v97 = v73;
        v98 = v72;
        v34 = *(&v102 + 1);
        if (!*(&v102 + 1))
        {
          return 0;
        }
      }
    }

    else if (v6 == 32774)
    {
      v50 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v51 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v52 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v101 = v50;
      v99 = v51;
      v96 = v52;
      v34 = v100;
    }

    else if (v6 == 32775)
    {
      v31 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v32 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v33 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v101 = v31;
      v99 = v32;
      v96 = v33;
      v34 = *(&v100 + 1);
    }

    else
    {
      v64 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v101 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v65 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v100 = v64;
      v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v66 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v97 = v66;
      v98 = v65;
      v34 = v101;
      if (!v101)
      {
        return 0;
      }
    }
  }

  else if (*a1 > 0x8002u)
  {
    if (v6 == 32771)
    {
      v53 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v54 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v55 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v56 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v101 = v55;
      v100 = v56;
      v99 = v54;
      v96 = v53;
      v34 = v97;
    }

    else
    {
      if (v6 == 32772)
      {
        v35 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v36 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v37 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v38 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v39 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v40 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v41 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v90 = v39;
        v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v85 = v37;
        v86 = v38;
        v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v81 = v40;
        v82 = v41;
        v83 = v35;
        v84 = v36;
        v42 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
        sub_242C0E04C(&v89, &v96);
        sub_242C0AD94(a2, a3, v42, v88);
LABEL_5:
        v99 = v84;
        v100 = v85;
        v101 = v86;
        v102 = v87;
        v96 = v81;
        v97 = v82;
        v98 = v83;
        sub_242C0E084(&v96);
        if (v88[2])
        {
          return v88[1];
        }

        else
        {
          return 0;
        }
      }

      v67 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v98 = v67;
      v68 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v69 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v70 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v101 = v69;
      v100 = v70;
      v96 = v68;
      v34 = *(&v99 + 1);
    }
  }

  else if (v6 == 0x8000)
  {
    v46 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v98 = v46;
    v47 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v48 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v49 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v101 = v48;
    v100 = v49;
    v96 = v47;
    v34 = v99;
  }

  else
  {
    if (v6 == 32769)
    {
      v23 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v24 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v25 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v26 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v27 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v28 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v29 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v90 = v27;
      v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v85 = v25;
      v86 = v26;
      v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v81 = v28;
      v82 = v29;
      v83 = v23;
      v84 = v24;
      v30 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
      sub_242C0E04C(&v89, &v96);
      sub_242C0AC9C(a2, a3, v30, v88);
      goto LABEL_5;
    }

    v60 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v61 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v62 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v102 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v63 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v101 = v62;
    v100 = v63;
    v99 = v61;
    v96 = v60;
    v34 = *(&v97 + 1);
  }

  if (!*(v34 + 16))
  {
    return 0;
  }

  sub_242C0E04C(&v96, &v89);
  v74 = sub_242BFA104(a2, a3);
  if (v75)
  {
    v76 = (*(v34 + 56) + 16 * v74);
    v77 = *v76;
    v78 = v76[1];
  }

  else
  {
    v77 = 0;
  }

  sub_242C0E084(&v96);
  return v77;
}

uint64_t sub_242C182B8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_242C1A380();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = *a1;
  if (v15 == 32773)
  {
    sub_242C09D14();
    swift_allocError();
    v15 = 32773;
  }

  else
  {
    v32 = a2;
    v33 = v3;
    LOWORD(v39) = v15;
    v17 = sub_242C18A4C(&v39);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      LOWORD(v39) = v15;
      sub_242C08BD4(&v41);
      v34 = CAUVehicleTrait.rawValue.getter();
      v35 = v21;
      v36 = v19;
      v37 = v20;
      (*(v8 + 16))(v14, v4 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL, v7);

      sub_242C1A310();

      v22 = *(v8 + 8);
      v22(v14, v7);
      v23 = *(v8 + 32);
      v23(v14, v12, v7);

      sub_242C1A310();

      v22(v14, v7);
      v23(v14, v12, v7);
      swift_arrayDestroy();
      return (v23)(v32, v14, v7);
    }

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v25 = sub_242C1A3D0();
    __swift_project_value_buffer(v25, qword_2815054C8);
    v26 = sub_242C1A3B0();
    v27 = sub_242C1A540();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      v39 = 0;
      v40 = 0xE000000000000000;
      v38 = v15;
      sub_242C1A600();
      v30 = sub_242C10B80(v39, v40, &v41);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_242BF1000, v26, v27, "Failed to resolve %s variant trait is missing.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245D23AC0](v29, -1, -1);
      MEMORY[0x245D23AC0](v28, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
  }

  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = v15;
  *(v16 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_242C1869C(_WORD *a1)
{
  v1 = *a1;
  LOWORD(v22) = *a1;
  v2 = sub_242C18A4C(&v22);
  if (!v3)
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v9 = sub_242C1A3D0();
    v8 = __swift_project_value_buffer(v9, qword_2815054C8);
    v10 = sub_242C1A3B0();
    v11 = sub_242C1A540();
    if (os_log_type_enabled(v10, v11))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v8 = 136315138;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_242C1A600();
      v13 = sub_242C10B80(v22, v23, &v24);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_242BF1000, v10, v11, "Failed to resolve %s variant trait is missing.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D23AC0](v12, -1, -1);
      MEMORY[0x245D23AC0](v8, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = v1;
    *(v14 + 24) = 0;
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  LOWORD(v22) = v1;
  v6 = sub_242C17C70(&v22, v2, v3);
  if (!v7)
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v15 = sub_242C1A3D0();
    __swift_project_value_buffer(v15, qword_2815054C8);

    v8 = sub_242C1A3B0();
    v16 = sub_242C1A540();

    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315394;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_242C1A600();
      v19 = sub_242C10B80(v22, v23, &v24);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_242C10B80(v4, v5, &v24);
      _os_log_impl(&dword_242BF1000, v8, v16, "failed to resolve %s for variant=%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D23AC0](v18, -1, -1);
      MEMORY[0x245D23AC0](v17, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *v20 = v1;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = 3;
LABEL_14:
    swift_willThrow();
    return v8;
  }

  v8 = v6;

  return v8;
}

uint64_t sub_242C18A4C(unsigned __int16 *a1)
{
  v2 = *a1;
  if ((v2 & 0xC000) != 0x8000)
  {
    goto LABEL_8;
  }

  if ((v2 - 32775) < 4)
  {
    return 1702060386;
  }

  if (v2 == 32779)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants);
    if (*(v4 + 16))
    {
      v5 = sub_242BFA038(1);
      if (v6)
      {
        v7 = *(v4 + 56);
LABEL_11:
        v10 = (v7 + 16 * v5);
        v12 = *v10;
        v11 = v10[1];

        return v12;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants);
    v14 = *a1;
    sub_242C08BD4(&v13);
    if (*(v8 + 16))
    {
      v5 = sub_242BFA038(v13);
      if (v9)
      {
        v7 = *(v8 + 56);
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t sub_242C18B2C()
{
  v1 = OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL;
  v2 = sub_242C1A380();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 8);
  v4 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
  v5 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 24);
  v6 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
  v7 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 40);
  v8 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
  v9 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 56);
  v11 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
  v10 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 72);
  v12 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
  v17 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 88);
  v18 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
  v19 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
  v20 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 104);

  v13 = *(v0 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants);

  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v14, v15);
}

uint64_t type metadata accessor for CAUAssetsResolver()
{
  result = qword_27ECDEBC0;
  if (!qword_27ECDEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C18CF4()
{
  result = sub_242C1A380();
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

uint64_t CAUFeatureConfiguration.climate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_242C18DD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);

    return v1;
  }

  result = sub_242C18EE0(&unk_2855709C0, v0);
  v4 = result;
  v1 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v5 = *(result + 16);
  if (!v5)
  {
LABEL_8:

    *(v0 + 24) = v1;
    return v1;
  }

  v6 = 0;
  while (v6 < *(v4 + 16))
  {
    v7 = v6 + 1;
    v8 = *(v4 + 32 + 8 * v6);

    result = sub_242C199D4(v9);
    v6 = v7;
    if (v5 == v7)
    {
      v1 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C18EE0(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    if (!*(v5 + v3++))
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        v10 = *(a2 + 8);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_242C09AC8(0, v6[2] + 1, 1, v6);
          v6 = result;
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          result = sub_242C09AC8((v11 > 1), v12 + 1, 1, v6);
          v6 = result;
        }

        v6[2] = v12 + 1;
        v6[v12 + 4] = v9;
        v3 = v7;
      }
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void CAUFeatureConfiguration.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t CAUFeatureConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEBD0, &qword_242C20620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1929C();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_242C192F0();
  sub_242C1A670();
  v13 = v20;
  v12 = v21;
  v14 = v21 != 1;
  if (v21 == 1)
  {
    v12 = 0;
  }

  v19 = v12;
  v23 = 1;
  sub_242C19344();
  sub_242C1A670();
  v22 = v14;
  v18 = v13;
  v15 = v20;
  v23 = 2;
  sub_242C19398();
  sub_242C1A670();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  v17 = v20;
  *a2 = v22 & v18;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15 & 1;
  *(a2 + 17) = v17 & 1;
  *(a2 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C1929C()
{
  result = qword_27ECDEBD8;
  if (!qword_27ECDEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBD8);
  }

  return result;
}

unint64_t sub_242C192F0()
{
  result = qword_27ECDEBE0;
  if (!qword_27ECDEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBE0);
  }

  return result;
}

unint64_t sub_242C19344()
{
  result = qword_27ECDEBE8;
  if (!qword_27ECDEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBE8);
  }

  return result;
}

unint64_t sub_242C19398()
{
  result = qword_27ECDEBF0;
  if (!qword_27ECDEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBF0);
  }

  return result;
}

uint64_t sub_242C193EC()
{
  v1 = 0x73676E6974746573;
  if (*v0 != 1)
  {
    v1 = 0x6F69646172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574616D696C63;
  }
}

uint64_t sub_242C19444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C1A0E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C1946C(uint64_t a1)
{
  v2 = sub_242C1929C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C194A8(uint64_t a1)
{
  v2 = sub_242C1929C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEBF8, &qword_242C20628);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v18 = v1[16];
  HIDWORD(v14) = v1[17];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1929C();

  sub_242C1A8A0();
  v16 = v8;
  v17 = v9;
  v19 = 0;
  sub_242C196E8();
  v11 = v15;
  sub_242C1A710();

  if (!v11)
  {
    v12 = BYTE4(v14);
    v16 = v18;
    v19 = 1;
    sub_242C1973C();
    sub_242C1A710();
    v16 = v12;
    v19 = 2;
    sub_242C19790();
    sub_242C1A710();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C196E8()
{
  result = qword_27ECDEC00;
  if (!qword_27ECDEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC00);
  }

  return result;
}

unint64_t sub_242C1973C()
{
  result = qword_27ECDEC08;
  if (!qword_27ECDEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC08);
  }

  return result;
}

unint64_t sub_242C19790()
{
  result = qword_27ECDEC10;
  if (!qword_27ECDEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC10);
  }

  return result;
}

uint64_t CAUFeatureConfiguration.SupportedApp.hashValue.getter()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

Swift::Bool __swiftcall CAUFeatureConfiguration.doesSupport(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_242C18DD0();
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_242C19928(sub_242C19DE8, v5, v3);

  return object & 1;
}

uint64_t sub_242C19928(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_242C199D4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_242C09850(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_242C19C90(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_242C09850((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_242C1A1FC();
  *v1 = v4;
  return result;
}

void *sub_242C19C90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_242C19DE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_242C1A740() & 1;
  }
}

unint64_t sub_242C19E44()
{
  result = qword_27ECDEC18;
  if (!qword_27ECDEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC18);
  }

  return result;
}

unint64_t sub_242C19E9C()
{
  result = qword_27ECDEC20;
  if (!qword_27ECDEC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEC28, &qword_242C206E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC20);
  }

  return result;
}

uint64_t sub_242C19F00(uint64_t a1, unsigned int a2)
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

uint64_t sub_242C19F5C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C19FE4()
{
  result = qword_27ECDEC30;
  if (!qword_27ECDEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC30);
  }

  return result;
}

unint64_t sub_242C1A03C()
{
  result = qword_27ECDEC38;
  if (!qword_27ECDEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC38);
  }

  return result;
}

unint64_t sub_242C1A094()
{
  result = qword_27ECDEC40;
  if (!qword_27ECDEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC40);
  }

  return result;
}

uint64_t sub_242C1A0E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616D696C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

uint64_t sub_242C1A204()
{
  result = sub_242C1A390();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_242C1A280();
    return sub_242C083E4(v3, v4);
  }

  return result;
}