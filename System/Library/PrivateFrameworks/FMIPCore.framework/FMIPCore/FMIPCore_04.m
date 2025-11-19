uint64_t sub_24A6D127C(uint64_t a1)
{
  v2 = sub_24A6D2474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPProductType.encode(to:)(void *a1)
{
  v2 = v1;
  v26 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FMIPProductType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5D368, &qword_24A8323E0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D2474();
  sub_24A82DD84();
  sub_24A6CFA08(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v10 + 3);
      v36 = *(v10 + 2);
      v37 = v17;
      v38 = *(v10 + 8);
      v18 = *(v10 + 1);
      v34 = *v10;
      v35 = v18;
      LOBYTE(v29) = 1;
      v39 = 0;
      sub_24A6D24C8();
      v19 = v27;
      sub_24A82DB44();
      if (!v19)
      {
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v29 = v34;
        v30 = v35;
        v39 = 1;
        sub_24A6D25D0();
        sub_24A82DB44();
      }

      (*(v28 + 8))(v14, v11);
      return sub_24A6D23CC(&v34);
    }

    else
    {
      sub_24A6CFA6C(v10, v6);
      LOBYTE(v34) = 2;
      LOBYTE(v29) = 0;
      sub_24A6D24C8();
      v24 = v27;
      sub_24A82DB44();
      if (!v24)
      {
        LOBYTE(v34) = 1;
        sub_24A6D251C();
        sub_24A82DB44();
      }

      sub_24A67F378(v6, &qword_27EF5D360, &unk_24A836200);
      return (*(v28 + 8))(v14, v11);
    }
  }

  else
  {
    v21 = *(v10 + 3);
    v36 = *(v10 + 2);
    v37 = v21;
    v38 = *(v10 + 8);
    v22 = *(v10 + 1);
    v34 = *v10;
    v35 = v22;
    LOBYTE(v29) = 0;
    v39 = 0;
    sub_24A6D24C8();
    v23 = v27;
    sub_24A82DB44();
    if (!v23)
    {
      v31 = v36;
      v32 = v37;
      v33 = v38;
      v29 = v34;
      v30 = v35;
      v39 = 1;
      sub_24A6BBA94(&qword_27EF5D398, &qword_24A8323E8);
      sub_24A6D2624();
      sub_24A82DB44();
    }

    (*(v28 + 8))(v14, v11);
    return sub_24A67F378(&v34, &qword_27EF5D398, &qword_24A8323E8);
  }
}

uint64_t FMIPProductType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_24A6BBA94(&qword_27EF5D3B0, &qword_24A8323F0);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v33 - v4;
  v6 = type metadata accessor for FMIPProductType();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v41 = a1;
  sub_24A67DF6C(a1, v19);
  sub_24A6D2474();
  v21 = v40;
  sub_24A82DD64();
  if (!v21)
  {
    v34 = v16;
    v35 = v13;
    v40 = v6;
    v36 = v18;
    v22 = v37;
    v23 = v38;
    v47 = 0;
    sub_24A6D26FC();
    v24 = v39;
    sub_24A82DA84();
    if (v42)
    {
      if (v42 != 1)
      {
        type metadata accessor for FMIPHawkeyeProductInformation();
        LOBYTE(v42) = 1;
        sub_24A6D28A8(&qword_27EF5D3C0, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DA34();
        (*(v22 + 8))(v5, v24);
        swift_storeEnumTagMultiPayload();
        v31 = v10;
        goto LABEL_10;
      }

      v47 = 1;
      sub_24A6D27B8();
      sub_24A82DA84();
      (*(v22 + 8))(v5, v24);
      v26 = v45;
      v27 = v35;
      *(v35 + 2) = v44;
      *(v27 + 48) = v26;
      *(v27 + 64) = v46;
      v28 = v43;
      *v27 = v42;
      *(v27 + 16) = v28;
    }

    else
    {
      v47 = 1;
      sub_24A6D280C();
      sub_24A82DA34();
      (*(v22 + 8))(v5, v24);
      v29 = v45;
      v27 = v34;
      *(v34 + 2) = v44;
      *(v27 + 48) = v29;
      *(v27 + 64) = v46;
      v30 = v43;
      *v27 = v42;
      *(v27 + 16) = v30;
    }

    swift_storeEnumTagMultiPayload();
    v31 = v27;
LABEL_10:
    v32 = v36;
    sub_24A6D2750(v31, v36, type metadata accessor for FMIPProductType);
    sub_24A6D2750(v32, v23, type metadata accessor for FMIPProductType);
  }

  return sub_24A6876E8(v41);
}

BOOL _s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v70 - v9;
  v10 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - v12;
  v14 = type metadata accessor for FMIPProductType();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = sub_24A6BBA94(&qword_27EF5D430, &qword_24A832728);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v70 + *(v26 + 56) - v27;
  v29 = a1;
  v30 = &v70 - v27;
  sub_24A6CFA08(v29, &v70 - v27);
  sub_24A6CFA08(a2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24A6CFA08(v30, v23);
    v41 = *(v23 + 3);
    v111 = *(v23 + 2);
    v112 = v41;
    v113 = *(v23 + 8);
    v42 = *(v23 + 1);
    v109 = *v23;
    v110 = v42;
    if (!swift_getEnumCaseMultiPayload())
    {
      v92 = *v28;
      v52 = *(v28 + 3);
      v93 = *(v28 + 2);
      v53 = *(v28 + 3);
      v89 = *(v28 + 2);
      v90 = v53;
      v91 = *(v28 + 8);
      v97 = *v23;
      v98 = *(v23 + 2);
      v54 = *(&v110 + 1);
      v55 = *(v23 + 3);
      v94 = *(v23 + 2);
      v95 = v55;
      v96 = *(v23 + 8);
      if (*(&v110 + 1))
      {
        v56 = *(v23 + 2);
        v78 = *v23;
        *&v79 = v56;
        *(&v79 + 1) = *(&v110 + 1);
        v57 = *(v23 + 3);
        v80 = *(v23 + 2);
        v81 = v57;
        v82 = *(v23 + 8);
        v108 = v82;
        v106 = v80;
        v107 = v57;
        v104 = v78;
        v105 = v79;
        if (v52)
        {
          v99 = *v28;
          v58 = *(v28 + 2);
          v59 = *(v28 + 3);
          v101 = *(v28 + 2);
          v102 = v59;
          v103 = *(v28 + 8);
          *&v100 = v58;
          *(&v100 + 1) = v52;
          v60 = _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(&v104, &v99);
          v74[2] = v101;
          v74[3] = v102;
          v75 = v103;
          v74[0] = v99;
          v74[1] = v100;
          sub_24A67E964(&v78, v76, &qword_27EF5D398, &qword_24A8323E8);
          sub_24A6D2420(v74);
          v76[2] = v106;
          v76[3] = v107;
          v77 = v108;
          v76[0] = v104;
          v76[1] = v105;
          sub_24A6D2420(v76);
          v99 = v97;
          *&v100 = v98;
          *(&v100 + 1) = v54;
          v101 = v94;
          v102 = v95;
          v103 = v96;
          sub_24A67F378(&v99, &qword_27EF5D398, &qword_24A8323E8);
          if (v60)
          {
LABEL_26:
            sub_24A6D236C(v30, type metadata accessor for FMIPProductType);
            return 1;
          }

          goto LABEL_30;
        }

        v101 = v80;
        v102 = v81;
        v103 = v82;
        v99 = v78;
        v100 = v79;
        sub_24A67E964(&v78, v76, &qword_27EF5D398, &qword_24A8323E8);
        sub_24A6D2420(&v99);
      }

      else if (!v52)
      {
        v78 = *v23;
        v79 = *(v23 + 2);
        v65 = *(v23 + 3);
        v80 = *(v23 + 2);
        v81 = v65;
        v82 = *(v23 + 8);
        v49 = &qword_27EF5D398;
        v50 = &qword_24A8323E8;
        v51 = &v78;
        goto LABEL_24;
      }

      v78 = v97;
      *&v79 = v98;
      *(&v79 + 1) = v54;
      v80 = v94;
      v81 = v95;
      v83 = v92;
      v82 = v96;
      v84 = v93;
      v85 = v52;
      v88 = v91;
      v87 = v90;
      v86 = v89;
      v62 = &unk_27EF5D438;
      v63 = &unk_24A832730;
      v64 = &v78;
      goto LABEL_29;
    }

    v43 = &qword_27EF5D398;
    v44 = &qword_24A8323E8;
    v45 = &v109;
LABEL_13:
    sub_24A67F378(v45, v43, v44);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24A6CFA08(v30, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = *(v10 + 48);
      sub_24A6CFA6C(v18, v13);
      sub_24A6CFA6C(v28, &v13[v46]);
      v47 = v73;
      v48 = *(v72 + 48);
      if (v48(v13, 1, v73) == 1)
      {
        if (v48(&v13[v46], 1, v47) == 1)
        {
          v49 = &qword_27EF5D360;
          v50 = &unk_24A836200;
          v51 = v13;
LABEL_24:
          sub_24A67F378(v51, v49, v50);
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v61 = v71;
      sub_24A67E964(v13, v71, &qword_27EF5D360, &unk_24A836200);
      if (v48(&v13[v46], 1, v47) == 1)
      {
        sub_24A6D236C(v61, type metadata accessor for FMIPHawkeyeProductInformation);
LABEL_21:
        v62 = &qword_27EF5D428;
        v63 = &qword_24A832720;
        v64 = v13;
LABEL_29:
        sub_24A67F378(v64, v62, v63);
        goto LABEL_30;
      }

      v66 = &v13[v46];
      v67 = v70;
      sub_24A6D2750(v66, v70, type metadata accessor for FMIPHawkeyeProductInformation);
      v68 = _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(v61, v67);
      sub_24A6D236C(v67, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A6D236C(v61, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A67F378(v13, &qword_27EF5D360, &unk_24A836200);
      if (v68)
      {
        goto LABEL_26;
      }

LABEL_30:
      sub_24A6D236C(v30, type metadata accessor for FMIPProductType);
      return 0;
    }

    v43 = &qword_27EF5D360;
    v44 = &unk_24A836200;
    v45 = v18;
    goto LABEL_13;
  }

  sub_24A6CFA08(v30, v21);
  v32 = *(v21 + 3);
  v80 = *(v21 + 2);
  v81 = v32;
  v82 = *(v21 + 8);
  v33 = *(v21 + 1);
  v78 = *v21;
  v79 = v33;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24A6D23CC(&v78);
LABEL_14:
    sub_24A67F378(v30, &qword_27EF5D430, &qword_24A832728);
    return 0;
  }

  v34 = *(v28 + 1);
  v35 = *(v28 + 3);
  v111 = *(v28 + 2);
  v112 = v35;
  v36 = *(v28 + 1);
  v109 = *v28;
  v110 = v36;
  v37 = *(v21 + 3);
  v106 = *(v21 + 2);
  v107 = v37;
  v38 = *(v21 + 1);
  v104 = *v21;
  v105 = v38;
  v39 = *(v28 + 3);
  v101 = v111;
  v102 = v39;
  v113 = *(v28 + 8);
  v108 = *(v21 + 8);
  v103 = *(v28 + 8);
  v99 = v109;
  v100 = v34;
  v40 = _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(&v104, &v99);
  sub_24A6D23CC(&v109);
  sub_24A6D23CC(&v78);
  sub_24A6D236C(v30, type metadata accessor for FMIPProductType);
  return v40;
}

uint64_t sub_24A6D236C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A6D2474()
{
  result = qword_27EF5D370;
  if (!qword_27EF5D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D370);
  }

  return result;
}

unint64_t sub_24A6D24C8()
{
  result = qword_27EF5D378;
  if (!qword_27EF5D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D378);
  }

  return result;
}

unint64_t sub_24A6D251C()
{
  result = qword_27EF5D380;
  if (!qword_27EF5D380)
  {
    sub_24A6CCDC0(&qword_27EF5D360, &unk_24A836200);
    sub_24A6D28A8(&qword_27EF5D388, type metadata accessor for FMIPHawkeyeProductInformation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D380);
  }

  return result;
}

unint64_t sub_24A6D25D0()
{
  result = qword_27EF5D390;
  if (!qword_27EF5D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D390);
  }

  return result;
}

unint64_t sub_24A6D2624()
{
  result = qword_27EF5D3A0;
  if (!qword_27EF5D3A0)
  {
    sub_24A6CCDC0(&qword_27EF5D398, &qword_24A8323E8);
    sub_24A6D26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3A0);
  }

  return result;
}

unint64_t sub_24A6D26A8()
{
  result = qword_27EF5D3A8;
  if (!qword_27EF5D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3A8);
  }

  return result;
}

unint64_t sub_24A6D26FC()
{
  result = qword_27EF5D3B8;
  if (!qword_27EF5D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3B8);
  }

  return result;
}

uint64_t sub_24A6D2750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A6D27B8()
{
  result = qword_27EF5D3C8;
  if (!qword_27EF5D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3C8);
  }

  return result;
}

unint64_t sub_24A6D280C()
{
  result = qword_27EF5D3D0;
  if (!qword_27EF5D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3D0);
  }

  return result;
}

uint64_t sub_24A6D28A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A6D2964()
{
  result = qword_27EF5D400;
  if (!qword_27EF5D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D400);
  }

  return result;
}

unint64_t sub_24A6D29BC()
{
  result = qword_27EF5D408;
  if (!qword_27EF5D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D408);
  }

  return result;
}

unint64_t sub_24A6D2A14()
{
  result = qword_27EF5D410;
  if (!qword_27EF5D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D410);
  }

  return result;
}

unint64_t sub_24A6D2A6C()
{
  result = qword_27EF5D418;
  if (!qword_27EF5D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D418);
  }

  return result;
}

unint64_t sub_24A6D2AC0()
{
  result = qword_27EF5D420;
  if (!qword_27EF5D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D420);
  }

  return result;
}

uint64_t sub_24A6D2B14()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6D2B64()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_27EF78BE8);
  sub_24A6797D0(v0, qword_27EF78BE8);
  return sub_24A82CDA4();
}

void sub_24A6D2CC8(char a1)
{
  v3 = sub_24A82CF94();
  [v1 willChangeValueForKey_];

  *(v1 + OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished) = a1;
  v4 = sub_24A82CF94();
  [v1 didChangeValueForKey_];
}

id FMIPDeviceImageCacheOperation.__allocating_init(request:completion:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v8 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id FMIPDeviceImageCacheOperation.init(request:completion:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v4 = &v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  v6 = a1[3];
  v4[2] = a1[2];
  v4[3] = v6;
  v7 = &v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v7 = a2;
  v7[1] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FMIPDeviceImageCacheOperation();
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_24A6D2E7C()
{
  if ([v0 isCancelled])
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMIPDeviceImageCreationOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

id sub_24A6D2FD0()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v6 = sub_24A82C8B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = type metadata accessor for FMIPDeviceImageCacheOperation();
  v65.receiver = v0;
  v65.super_class = v16;
  objc_msgSendSuper2(&v65, sel_start);
  v17 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 16];
  aBlock = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v62 = v17;
  v18 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 48];
  v63 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 32];
  v64 = v18;
  sub_24A821D24(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A6D3E54(v5);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D4E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPDeviceImageDownloadOperation: operation cannot start without URL", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    return [v1 setFinished_];
  }

  else
  {
    v59 = *(v7 + 32);
    v60 = v7 + 32;
    v59(v15, v5, v6);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A82CDC4();
    sub_24A6797D0(v24, qword_281518F88);
    v55 = *(v7 + 16);
    v56 = v7 + 16;
    v55(v13, v15, v6);
    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v54 = v0;
      v28 = v27;
      v29 = swift_slowAlloc();
      v53 = v15;
      v30 = v29;
      *&aBlock = v29;
      *v28 = 136315138;
      v31 = sub_24A82C814();
      v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v32;
      v34 = *(v7 + 8);
      v57 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = v34;
      v34(v13, v6);
      v35 = sub_24A68761C(v31, v33, &aBlock);
      v10 = v52;

      *(v28 + 4) = v35;
      _os_log_impl(&dword_24A675000, v25, v26, "FMIPDeviceImageDownloadOperation: started for URL: %s", v28, 0xCu);
      sub_24A6876E8(v30);
      v36 = v30;
      v15 = v53;
      MEMORY[0x24C21E1D0](v36, -1, -1);
      v37 = v28;
      v1 = v54;
      MEMORY[0x24C21E1D0](v37, -1, -1);
    }

    else
    {

      v38 = *(v7 + 8);
      v57 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = v38;
      v38(v13, v6);
    }

    v39 = [objc_opt_self() defaultSessionConfiguration];
    [v39 setHTTPShouldUsePipelining_];
    v40 = [objc_opt_self() sessionWithConfiguration_];
    v41 = sub_24A82C844();
    v55(v10, v15, v6);
    v42 = *(v7 + 80);
    v43 = v10;
    v44 = (v42 + 16) & ~v42;
    v45 = (v8 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = v15;
    v47 = swift_allocObject();
    v59((v47 + v44), v43, v6);
    *(v47 + v45) = v1;
    *&v63 = sub_24A6D3EBC;
    *(&v63 + 1) = v47;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v62 = sub_24A6D3B78;
    *(&v62 + 1) = &unk_285DC1E30;
    v48 = _Block_copy(&aBlock);
    v49 = v1;

    v50 = [v40 dataTaskWithURL:v41 completionHandler:v48];
    _Block_release(v48);

    [v50 resume];
    return v58(v46, v6);
  }
}

id sub_24A6D35D4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  if (a2 >> 60 == 15 || a4)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v31 = sub_24A82CDC4();
    sub_24A6797D0(v31, qword_281518F88);
    (*(v12 + 16))(v16, a5, v11);
    v32 = a4;
    v33 = sub_24A82CD94();
    v34 = sub_24A82D504();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = a6;
      v37 = v36;
      v59 = v36;
      *v35 = 136315394;
      v38 = sub_24A82C814();
      v40 = v39;
      (*(v12 + 8))(v16, v11);
      v41 = sub_24A68761C(v38, v40, &v59);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      v58 = a4;
      v42 = a4;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v43 = sub_24A82D024();
      v45 = sub_24A68761C(v43, v44, &v59);

      *(v35 + 14) = v45;
      _os_log_impl(&dword_24A675000, v33, v34, "FMDeviceImageDownloadOperation: error received for URL: %s, error: %s", v35, 0x16u);
      swift_arrayDestroy();
      v46 = v37;
      a6 = v57;
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    v47 = *&a6[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
    v48 = *&a6[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion + 8];
    v49 = a4;
    if (!a4)
    {
      sub_24A6D3FAC();
      v49 = swift_allocError();
      *v50 = 0;
    }

    v51 = a4;
    v47(v49, 0, 1);

    return [a6 setFinished_];
  }

  else
  {
    v57 = a6;
    sub_24A681458(a1, a2);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    (*(v12 + 16))(v18, a5, v11);
    sub_24A681458(a1, a2);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    sub_24A67E8E8(a1, a2);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v59 = v56;
      *v22 = 136315394;
      v23 = sub_24A82C814();
      v25 = v24;
      (*(v12 + 8))(v18, v11);
      v26 = sub_24A68761C(v23, v25, &v59);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_24A82C8D4();
      v29 = sub_24A68761C(v27, v28, &v59);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_24A675000, v20, v21, "FMDeviceImageDownloadOperation: response received for URL: %s, data: %s", v22, 0x16u);
      v30 = v56;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v30, -1, -1);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    v53 = v57;
    v54 = *&v57[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
    v55 = *&v57[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion + 8];
    sub_24A681458(a1, a2);
    v54(a1, a2, 0);
    sub_24A67E8E8(a1, a2);
    [v53 setFinished_];
    return sub_24A67E8E8(a1, a2);
  }
}

uint64_t sub_24A6D3B78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_24A82C904();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_24A67E8E8(v6, v11);
}

id FMIPDeviceImageCacheOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPDeviceImageCacheOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPDeviceImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A6D3DC4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDeviceImageCacheOperation();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v8 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v7;
  v13.super_class = v6;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_24A6D3E54(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24A6D3EBC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_24A82C8B4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A6D35D4(a1, a2, a3, a4, v4 + v10, v11);
}

unint64_t sub_24A6D3FAC()
{
  result = qword_27EF5D460;
  if (!qword_27EF5D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D460);
  }

  return result;
}

void sub_24A6D4000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6D40D8;
    v7[3] = &unk_285DC1E68;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 authenticateWithContext:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_24A6D40D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
    v4 = sub_24A82CEF4();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_24A6D4194(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = a2;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v60 = v12;
      *v11 = 136315138;
      v61 = a2;
      v13 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v14 = sub_24A82D024();
      v16 = sub_24A68761C(v14, v15, &v60);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPAuthKitAuthenticationController: failed to authenticate %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    (a3)(0, 0, 0, 0, a2);
    return;
  }

  if (a1)
  {
    v19 = *MEMORY[0x277CEFFC8];
    v20 = sub_24A82CFC4();
    if (*(a1 + 16))
    {
      v22 = sub_24A6A2D48(v20, v21);
      v24 = v23;

      if (v24)
      {
        v61 = *(*(a1 + 56) + 8 * v22);
        swift_unknownObjectRetain();
        sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
        if (swift_dynamicCast())
        {
          v25 = *MEMORY[0x277CEFF88];
          v26 = sub_24A82CFC4();
          if (*(a1 + 16))
          {
            v28 = sub_24A6A2D48(v26, v27);
            v30 = v29;

            if (v30)
            {
              v60 = *(*(a1 + 56) + 8 * v28);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v31 = v61;
                if (qword_281515DC8 != -1)
                {
                  swift_once();
                }

                v32 = sub_24A82CDC4();
                sub_24A6797D0(v32, qword_281518F88);

                v33 = sub_24A82CD94();
                v34 = sub_24A82D504();

                if (os_log_type_enabled(v33, v34))
                {
                  v59 = v61;
                  v35 = swift_slowAlloc();
                  v36 = swift_slowAlloc();
                  *v35 = 138412290;
                  v37 = sub_24A82CED4();
                  *(v35 + 4) = v37;
                  *v36 = v37;
                  _os_log_impl(&dword_24A675000, v33, v34, "FMIPAuthKitAuthenticationController: authentication results %@", v35, 0xCu);
                  sub_24A67CDA4(v36);
                  MEMORY[0x24C21E1D0](v36, -1, -1);
                  v38 = v35;
                  v31 = v59;
                  MEMORY[0x24C21E1D0](v38, -1, -1);
                }

                v39 = sub_24A6D4900(a1);
                v40 = *(a5 + OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationResults);
                *(a5 + OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationResults) = v39;

                v60 = v31;
                v41 = sub_24A82DB84();
                a3(v41);

                return;
              }
            }
          }

          else
          {
          }

          if (qword_281515DC8 != -1)
          {
            swift_once();
          }

          v55 = sub_24A82CDC4();
          sub_24A6797D0(v55, qword_281518F88);
          v56 = sub_24A82CD94();
          v57 = sub_24A82D504();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_24A675000, v56, v57, "FMIPAuthKitAuthenticationController: empty dsid", v58, 2u);
            MEMORY[0x24C21E1D0](v58, -1, -1);
          }

          sub_24A6D4CF8();
          v53 = swift_allocError();
          v54 = 1;
LABEL_32:
          *v52 = v54;
          (a3)(0, 0, 0, 0, v53);

          return;
        }
      }
    }

    else
    {
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v48 = sub_24A82CDC4();
    sub_24A6797D0(v48, qword_281518F88);
    v49 = sub_24A82CD94();
    v50 = sub_24A82D504();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_24A675000, v49, v50, "FMIPAuthKitAuthenticationController: empty password", v51, 2u);
      MEMORY[0x24C21E1D0](v51, -1, -1);
    }

    sub_24A6D4CF8();
    v53 = swift_allocError();
    v54 = 2;
    goto LABEL_32;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v42 = sub_24A82CDC4();
  sub_24A6797D0(v42, qword_281518F88);
  v43 = sub_24A82CD94();
  v44 = sub_24A82D504();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_24A675000, v43, v44, "FMIPAuthKitAuthenticationController: empty authentication result", v45, 2u);
    MEMORY[0x24C21E1D0](v45, -1, -1);
  }

  sub_24A6D4CF8();
  v46 = swift_allocError();
  *v47 = 0;
  (a3)(0, 0, 0, 0, v46);
}

unint64_t sub_24A6D4900(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
    v2 = sub_24A82D974();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
        swift_dynamicCast();
        sub_24A6A50DC(&v25, v27);
        sub_24A6A50DC(v27, v28);
        sub_24A6A50DC(v28, &v26);
        result = sub_24A6A2D48(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_24A6876E8(v12);
          result = sub_24A6A50DC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_24A6A50DC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id FMIPEphemeralAuthenticationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPEphemeralAuthenticationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPEphemeralAuthenticationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A6D4CF8()
{
  result = qword_27EF5D4A8;
  if (!qword_27EF5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4A8);
  }

  return result;
}

uint64_t sub_24A6D4D4C()
{
  type metadata accessor for FMIPLostModeAction(0);
  if (swift_dynamicCastClass() || (type metadata accessor for FMIPLockAction(), swift_dynamicCastClass()))
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for FMIPEraseAction();
    swift_dynamicCastClass();
    type metadata accessor for FMLocalize();
    v2 = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
  }

  v3 = sub_24A82C6F4();

  return v3;
}

void *sub_24A6D4F1C(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setIsEphemeral_];
  [a1 setShouldPromptForPasswordOnly_];
  v6 = sub_24A82CF94();
  [a1 setUsername_];

  [a1 setIsUsernameEditable_];
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A8327A0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A6B243C();
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  sub_24A82CFF4();

  v10 = sub_24A82CF94();

  [a1 setReason_];

  sub_24A6D4D4C();
  v11 = sub_24A82CF94();

  [a1 setDefaultButtonString_];

  v12 = objc_opt_self();
  v13 = sub_24A82CF94();
  v14 = sub_24A82CF94();
  LOBYTE(v12) = [v12 BOOLForKey:v13 inDomain:v14];

  if ((v12 & 1) == 0)
  {
    [a1 setAuthenticationType_];
  }

  return a1;
}

unint64_t sub_24A6D51CC()
{
  result = qword_27EF5D4C8;
  if (!qword_27EF5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4C8);
  }

  return result;
}

uint64_t type metadata accessor for FMIPCancelEraseRequest()
{
  result = qword_27EF5D4D0;
  if (!qword_27EF5D4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6D52BC()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78C18) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v13 = MEMORY[0x277D837D0];
  *&v12 = v4;
  *(&v12 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v11, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_24A6D53F4()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78C18);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6D5470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656B6F5468747561;
  }

  else
  {
    v4 = 0x7263734570696D66;
  }

  if (v3)
  {
    v5 = 0xEE0044495555776FLL;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v6 = 0x656B6F5468747561;
  }

  else
  {
    v6 = 0x7263734570696D66;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006ELL;
  }

  else
  {
    v7 = 0xEE0044495555776FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6D5528()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D55BC()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6D563C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D56CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

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

void sub_24A6D572C(uint64_t *a1@<X8>)
{
  v2 = 0x7263734570696D66;
  if (*v1)
  {
    v2 = 0x656B6F5468747561;
  }

  v3 = 0xEE0044495555776FLL;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6D577C()
{
  if (*v0)
  {
    result = 0x656B6F5468747561;
  }

  else
  {
    result = 0x7263734570696D66;
  }

  *v0;
  return result;
}

uint64_t sub_24A6D57C8@<X0>(char *a1@<X8>)
{
  v2 = sub_24A82D9C4();

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

uint64_t sub_24A6D582C(uint64_t a1)
{
  v2 = sub_24A6D5F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D5868(uint64_t a1)
{
  v2 = sub_24A6D5F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A6D58F0(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D4E0, &qword_24A8329E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D5F30();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPValidatePasswordResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v33[0]) = 1;
    v11 = sub_24A82DA44();
    v13 = v12;
    LOBYTE(v33[0]) = 0;
    v14 = sub_24A82DA44();
    v1[9] = v11;
    v1[10] = v13;
    v1[7] = v14;
    v1[8] = v15;
    sub_24A698230(a1, v33);
    v3 = sub_24A814C20(v33);
    v16 = qword_281515DC8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v20;
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315138;
      v32 = v18;
      v33[0] = v21;
      v22 = sub_24A6D5C40();
      v24 = sub_24A68761C(v22, v23, v33);

      v25 = v31;
      *(v31 + 1) = v24;
      v26 = v19;
      v27 = v32;
      _os_log_impl(&dword_24A675000, v32, v26, "FMIPValidatePasswordResponse: initialized with coder %s", v25, 0xCu);
      v28 = v34;
      sub_24A6876E8(v34);
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6D5C40()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v4 = v0[8];
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0x6B6F546874756120, 0xEB000000003A6E65);
  v7 = v0[10];
  if (v7)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x5555776F72637365, 0xEB000000003A4449);

  return 60;
}

uint64_t sub_24A6D5E40()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
}

uint64_t sub_24A6D5E70()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[8];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

unint64_t sub_24A6D5F30()
{
  result = qword_27EF5D4E8;
  if (!qword_27EF5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4E8);
  }

  return result;
}

unint64_t sub_24A6D5F98()
{
  result = qword_27EF5D4F0;
  if (!qword_27EF5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4F0);
  }

  return result;
}

unint64_t sub_24A6D5FF0()
{
  result = qword_27EF5D4F8;
  if (!qword_27EF5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4F8);
  }

  return result;
}

unint64_t sub_24A6D6048()
{
  result = qword_27EF5D500;
  if (!qword_27EF5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D500);
  }

  return result;
}

uint64_t sub_24A6D60A4()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6D6118()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6D616C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_24A6D61FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24A82D9C4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24A6D6254(uint64_t a1)
{
  v2 = sub_24A6D6434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D6290(uint64_t a1)
{
  v2 = sub_24A6D6434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPRangingParameters.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D508, &qword_24A832B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD64();
  if (!v2)
  {
    sub_24A82DA64();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6D6434()
{
  result = qword_27EF5D510;
  if (!qword_27EF5D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D510);
  }

  return result;
}

uint64_t FMIPRangingParameters.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D518, &qword_24A832B58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD84();
  sub_24A82DB24();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24A6D65EC(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D518, &qword_24A832B58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD84();
  sub_24A82DB24();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for FMIPRangingParameters.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FMIPRangingParameters.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24A6D682C()
{
  result = qword_27EF5D520;
  if (!qword_27EF5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D520);
  }

  return result;
}

unint64_t sub_24A6D6884()
{
  result = qword_27EF5D528;
  if (!qword_27EF5D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D528);
  }

  return result;
}

unint64_t sub_24A6D68DC()
{
  result = qword_27EF5D530;
  if (!qword_27EF5D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D530);
  }

  return result;
}

FMIPCore::FMIPSeparationEvent __swiftcall FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)(Swift::Int itemOrDeviceCount, Swift::Bool addSafeLocationTapped, Swift::Bool addToAllTapped, Swift::Bool homeRemoved)
{
  *v4 = itemOrDeviceCount;
  *(v4 + 8) = addSafeLocationTapped;
  *(v4 + 9) = addToAllTapped;
  *(v4 + 10) = homeRemoved;
  result.itemOrDeviceCount = itemOrDeviceCount;
  result.addSafeLocationTapped = addSafeLocationTapped;
  return result;
}

Swift::Void __swiftcall FMIPManager.enqueue(separationEvent:)(FMIPCore::FMIPSeparationEvent separationEvent)
{
  v1 = *(separationEvent.itemOrDeviceCount + 8);
  v2 = *(separationEvent.itemOrDeviceCount + 9);
  v3 = *(separationEvent.itemOrDeviceCount + 10);
  v4 = *separationEvent.itemOrDeviceCount;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  sub_24A6D6A48(&v4);
}

void sub_24A6D6A48(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v6, 0xD000000000000011, 0x800000024A844D60, isUniquelyReferenced_nonNull_native);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v8, 0xD000000000000015, 0x800000024A844D80, v9);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v10, 0x6C6C416F54646461, 0xEE00646570706154, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v12, 0xD000000000000010, 0x800000024A844DA0, v13);
  v14 = sub_24A82CF94();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  v17[4] = sub_24A6AEBB4;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24A6AEADC;
  v17[3] = &unk_285DC2170;
  v16 = _Block_copy(v17);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t initializeBufferWithCopyOfBuffer for FMIPSeparationEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPSeparationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPSeparationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t FMIPB389ProductInformation.init(beacon:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_24A67DF6C(a1, v4);
  v6 = (*(v5 + 136))(v4, v5);
  v7 = a1[3];
  v8 = a1[4];
  sub_24A67DF6C(a1, v7);
  v9 = (*(v8 + 144))(v7, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A67DF6C(a1, v10);
  v12 = (*(v11 + 128))(v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 modelName];

    v15 = sub_24A82CFC4();
    v17 = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_24A67DF6C(a1, v18);
    v15 = (*(v19 + 56))(v18, v19);
    v17 = v20;
  }

  *a2 = v6;
  a2[1] = v9;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = 0x656C707041;
  a2[5] = 0xE500000000000000;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0x4010000000000000;

  return sub_24A6876E8(a1);
}

uint64_t FMIPB389ProductInformation.modelName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPB389ProductInformation.manufacturerName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPB389ProductInformation.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_24A6D6FA0()
{
  v1 = *v0;
  v2 = 0x6D614E6C65646F6DLL;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x50616E6E65746E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24A6D7070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6D7E0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6D7098(uint64_t a1)
{
  v2 = sub_24A6D7AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D70D4(uint64_t a1)
{
  v2 = sub_24A6D7AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPB389ProductInformation.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D538, &qword_24A832DE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22[5] = v1[2];
  v22[6] = v9;
  v12 = v1[5];
  v22[3] = v1[4];
  v22[4] = v11;
  v13 = v1[6];
  v14 = v1[7];
  v22[1] = v12;
  v22[2] = v13;
  v15 = v1[8];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  sub_24A67DF6C(v18, v16);
  sub_24A6D7AB8();
  sub_24A82DD84();
  v28 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v22[0] = v14;
    v27 = 1;
    sub_24A82DB34();
    v26 = 2;
    sub_24A82DB04();
    v25 = 3;
    sub_24A82DB04();
    v24 = 4;
    sub_24A82DAD4();
    v23 = 5;
    sub_24A82DB24();
  }

  return (*(v5 + 8))(v8, v20);
}

uint64_t FMIPB389ProductInformation.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  MEMORY[0x24C21D5E0](*v0);
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v7)
  {
    sub_24A82D094();
  }

  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  return MEMORY[0x24C21D610](*&v9);
}

uint64_t FMIPB389ProductInformation.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t FMIPB389ProductInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D548, &qword_24A832DE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D7AB8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_24A82DA74();
  LOBYTE(v35[0]) = 1;
  v29 = sub_24A82DA74();
  LOBYTE(v35[0]) = 2;
  v12 = sub_24A82DA44();
  *(&v28 + 1) = v13;
  *&v28 = v12;
  LOBYTE(v35[0]) = 3;
  *&v27 = sub_24A82DA44();
  *(&v27 + 1) = v14;
  LOBYTE(v35[0]) = 4;
  v26 = sub_24A82DA04();
  v16 = v15;
  v36 = 5;
  sub_24A82DA64();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v20 = *(&v28 + 1);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v28;
  v31 = v28;
  v22 = *(&v27 + 1);
  v32 = v27;
  *&v33 = v26;
  *(&v33 + 1) = v16;
  v34 = v18;
  v23 = v33;
  *(a2 + 32) = v27;
  *(a2 + 48) = v23;
  *(a2 + 64) = v34;
  v24 = v31;
  *a2 = v30;
  *(a2 + 16) = v24;
  sub_24A6D7B0C(&v30, v35);
  sub_24A6876E8(a1);
  v35[0] = v11;
  v35[1] = v19;
  v35[2] = v21;
  v35[3] = v20;
  v35[4] = v27;
  v35[5] = v22;
  v35[6] = v26;
  v35[7] = v16;
  v35[8] = v18;
  return sub_24A6D2420(v35);
}

__n128 sub_24A6D77F0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  FMIPB389ProductInformation.init(beacon:)(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24A6D7850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A6D7880()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_24A6D78B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_24A6D7918()
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A6D795C()
{
  sub_24A82DCC4();
  FMIPB389ProductInformation.hash(into:)();
  return sub_24A82DD24();
}

BOOL _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v12 = *(a2 + 48);
    v11 = *(a2 + 56);
    v13 = *(a2 + 64);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v14 = *(a1 + 24), (sub_24A82DC04() & 1) != 0))
    {
      if (v4 == v9 && v5 == v10 || (sub_24A82DC04() & 1) != 0)
      {
        if (v7)
        {
          if (v11 && (v6 == v12 && v7 == v11 || (sub_24A82DC04() & 1) != 0))
          {
            return v8 == v13;
          }
        }

        else if (!v11)
        {
          return v8 == v13;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_24A6D7AB8()
{
  result = qword_27EF5D540;
  if (!qword_27EF5D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D540);
  }

  return result;
}

unint64_t sub_24A6D7B44(void *a1)
{
  a1[2] = sub_24A6D280C();
  a1[3] = sub_24A6D26A8();
  result = sub_24A6D7B7C();
  a1[4] = result;
  return result;
}

unint64_t sub_24A6D7B7C()
{
  result = qword_27EF5D550;
  if (!qword_27EF5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D550);
  }

  return result;
}

unint64_t sub_24A6D7BD4()
{
  result = qword_27EF5D558;
  if (!qword_27EF5D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D558);
  }

  return result;
}

__n128 sub_24A6D7C28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A6D7C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24A6D7C94(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_24A6D7D08()
{
  result = qword_27EF5D560;
  if (!qword_27EF5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D560);
  }

  return result;
}

unint64_t sub_24A6D7D60()
{
  result = qword_27EF5D568;
  if (!qword_27EF5D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D568);
  }

  return result;
}

unint64_t sub_24A6D7DB8()
{
  result = qword_27EF5D570;
  if (!qword_27EF5D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D570);
  }

  return result;
}

uint64_t sub_24A6D7E0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024A844E10 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024A843C40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A843550 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A844E30 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50616E6E65746E61 && a2 == 0xEC0000007265776FLL)
  {

    return 5;
  }

  else
  {
    v5 = sub_24A82DC04();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FMIPCore::FMIPActionStatus_optional sub_24A6D8020@<W0>(_BYTE *a1@<X8>)
{
  result.value = FMIPActionStatus.init(rawValue:)(*(v1 + 48)).value;
  v4 = v5;
  if (v5 == 18)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A6D80B0(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPRemoveResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A6D8274()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

FMIPCore::FMIPAuthEventResponse_optional __swiftcall FMIPAuthEventResponse.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPAuthEventResponse.rawValue.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465746E617267;
  }
}

uint64_t sub_24A6D8398(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465696E6564;
  if (v2 != 1)
  {
    v3 = 0x776F4E746F6ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6465746E617267;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6465696E6564;
  if (*a2 != 1)
  {
    v6 = 0x776F4E746F6ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6465746E617267;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A6D848C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D8528()
{
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6D85B0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A6D8654(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6465696E6564;
  if (v2 != 1)
  {
    v4 = 0x776F4E746F6ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465746E617267;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void _s8FMIPCore13FMIPAnalyticsV31sendNotificationAuthPromptEvent5eventyAA016FMIPNotificationefG0V_tFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_24A82CF94();

  v5 = [v3 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v5, 0xD000000000000011, 0x800000024A844EF0, isUniquelyReferenced_nonNull_native);
  v7 = v2;
  v8 = sub_24A82CF94();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v11[4] = sub_24A6D89D4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A6AEADC;
  v11[3] = &unk_285DC2528;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t sub_24A6D8958()
{
  result = qword_27EF5D578;
  if (!qword_27EF5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D578);
  }

  return result;
}

uint64_t FMIPShowContactDetailsAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);

  return v1;
}

uint64_t FMIPShowContactDetailsAction.__allocating_init(device:phoneNumber:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  FMIPShowContactDetailsAction.init(device:phoneNumber:enabled:)(a1, a2, a3, a4);
  return v11;
}

uint64_t FMIPShowContactDetailsAction.init(device:phoneNumber:enabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = (v4 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);
  *v5 = a2;
  v5[1] = a3;
  *(v4 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) = a4;
  *(v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v6 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v4 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v4;
}

uint64_t sub_24A6D8B68()
{
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    result = 0x64656C62616E65;
  }

  else
  {
    result = 0x64656C6261736964;
  }

  *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled);
  return result;
}

uint64_t static FMIPShowContactDetailsAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t FMIPShowContactDetailsAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);

  return v0;
}

uint64_t FMIPShowContactDetailsAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A6D8CDC(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for FMIPShowContactDetailsAction()
{
  result = qword_27EF5D580;
  if (!qword_27EF5D580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPEraseMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPEraseMetadata() + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPEraseMetadata.phoneNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPEraseMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPEraseMetadata.message.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPEraseMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_24A6D8F5C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D9048()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A6D9120()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D9208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A6DA3D0();
  *a2 = result;
  return result;
}

void sub_24A6D9238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xEF706D617473656DLL;
  v6 = 0x6954657461657263;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 3)
  {
    v8 = 0x7478655472657375;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72624E72656E776FLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A6D92E0()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x6954657461657263;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 0x7478655472657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72624E72656E776FLL;
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

uint64_t sub_24A6D9384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A6DA3D0();
  *a1 = result;
  return result;
}

uint64_t sub_24A6D93B8(uint64_t a1)
{
  v2 = sub_24A6896EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D93F4(uint64_t a1)
{
  v2 = sub_24A6896EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t FMIPEraseMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = &v0[*(type metadata accessor for FMIPEraseMetadata() + 20)];
  v4 = sub_24A82C994();
  v5 = [v2 localizedStringFromDate:v4 dateStyle:1 timeStyle:4];

  v6 = sub_24A82CFC4();
  v8 = v7;

  sub_24A82D854();

  v11 = *v1;
  v9 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v6, v8);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

void FMIPEraseMetadata.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D598, &qword_24A833298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for FMIPEraseMetadata();
  v9 = v8[5];
  v23 = v1;
  v10 = sub_24A82C994();
  v11 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6896EC();
  v12 = v10;
  sub_24A82DD84();
  [v10 fm_epoch];
  v30 = 2;
  v13 = v24;
  sub_24A82DB54();
  if (!v13)
  {
    v14 = v23;
    v25 = qword_24A8334F0[*v23];
    sub_24A82DB84();
    v29 = 3;
    sub_24A82DB04();

    v15 = &v14[v8[7]];
    v16 = *v15;
    v17 = *(v15 + 1);
    v28 = 0;
    sub_24A82DB04();
    v18 = &v14[v8[6]];
    v19 = *v18;
    v20 = *(v18 + 1);
    v27 = 1;
    sub_24A82DB04();
    v21 = v14[v8[8]];
    v26 = 4;
    sub_24A82DB14();
  }

  (*(v4 + 8))(v7, v3);
}

unsigned __int8 *sub_24A6D9830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A82D194();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A6D9E20();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24A82D8B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24A6D9DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPEraseMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6D9E20()
{
  v0 = sub_24A82D1A4();
  v4 = sub_24A6D9EA0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24A6D9EA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24A82D084();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24A82D644();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24A67F0E4(v9, 0);
  v12 = sub_24A6D9FF8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24A82D084();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24A82D8B4();
LABEL_4:

  return sub_24A82D084();
}

unint64_t sub_24A6D9FF8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24A6DA218(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A82D124();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24A82D8B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24A6DA218(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24A82D104();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24A6DA218(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A82D144();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C21CA20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s8FMIPCore17FMIPEraseMetadataV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v4 = type metadata accessor for FMIPEraseMetadata();
  v5 = v4[5];
  if ((sub_24A82C9E4() & 1) == 0 || qword_24A8334F0[*a1] != qword_24A8334F0[*a2])
  {
    goto LABEL_14;
  }

  v6 = v4[7];
  v7 = *&a1[v6];
  v8 = *&a1[v6 + 8];
  v9 = &a2[v6];
  v10 = v7 == *v9 && v8 == *(v9 + 1);
  if (v10 || (sub_24A82DC04()) && ((v11 = v4[6], v12 = *&a1[v11], v13 = *&a1[v11 + 8], v14 = &a2[v11], v12 == *v14) ? (v15 = v13 == *(v14 + 1)) : (v15 = 0), v15 || (sub_24A82DC04()))
  {
    v16 = a1[v4[8]] ^ a2[v4[8]] ^ 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_24A6DA37C()
{
  result = qword_27EF5D5A0;
  if (!qword_27EF5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5A0);
  }

  return result;
}

uint64_t sub_24A6DA3D0()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A6DA4AC()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A8339D0[v1]);
  return sub_24A82DD24();
}

uint64_t sub_24A6DA534()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A8339D0[v1]);
  return sub_24A82DD24();
}

unint64_t sub_24A6DA5A4()
{
  result = qword_27EF5D5B0;
  if (!qword_27EF5D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D5B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPActionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPActionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24A6DA74C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D496A0]) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_24A6DA7B8()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v23);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceActionsController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = *(v1 + 24);

  sub_24A6876E8((v1 + 48));
  sub_24A67F378(v1 + 88, &qword_27EF5D608, &qword_24A837E90);
  sub_24A67F378(v1 + 128, &qword_27EF5D610, &qword_24A8339A0);
  v21 = *(v1 + 168);

  return v1;
}

uint64_t sub_24A6DA9CC()
{
  sub_24A6DA7B8();

  return swift_deallocClassInstance();
}

void sub_24A6DAA00(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t **, uint64_t, void *, uint64_t), char *a5)
{
  v67 = a4;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281514478 != -1)
  {
    v11 = swift_once();
  }

  v13 = *(a1 + 48);
  v69 = a2;
  v70 = a3;
  v68 = a5;
  if (byte_281514481 != 1)
  {
    goto LABEL_6;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    if ((v13 & 0xF00000000000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v21 = 0;
    v19 = 0;
    v16 = 0;
    v27 = 0xEE006D6F632E656CLL;
    v28 = 0uLL;
    v15 = 0x707061406F6D6564;
    v18 = 1;
    v22 = 0xE000000000000000;
    v20 = 0xE000000000000000;
    v17 = 1;
    v66 = 1;
    v25 = 0x707061406F6D6564;
    v26 = 0xEE006D6F632E656CLL;
    goto LABEL_7;
  }

  if ((*(a1 + 40) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v63 = *(a1 + 72);
  v14 = *(a1 + 56);
  v64 = *(a1 + 64);
  v65 = v14;
  v15 = *(a1 + 40);
  v66 = *(a1 + 35);
  v16 = *(a1 + 34);
  v17 = *(a1 + 33);
  v18 = *(a1 + 32);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = a1;
  v24 = v13;
  v11 = sub_24A6EF948(v23, &v77);
  v26 = v64;
  v25 = v65;
  v27 = v24;
  v28 = v63;
LABEL_7:
  *&v72 = v21;
  *(&v72 + 1) = v22;
  *&v73 = v19;
  *(&v73 + 1) = v20;
  LOBYTE(v74) = v18;
  BYTE1(v74) = v17;
  BYTE2(v74) = v16;
  v29 = v66;
  BYTE3(v74) = v66;
  *(&v74 + 1) = v15;
  *&v75 = v27;
  *(&v75 + 1) = v25;
  *v76 = v26;
  *&v76[8] = v28;
  v77 = v72;
  v78 = v73;
  v82 = *(&v28 + 1);
  v80 = v75;
  v81 = *v76;
  v79 = v74;
  v30 = MEMORY[0x24C21D990](v11);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v67;
  *(v31 + 24) = v32;
  v33 = v69;
  v34 = v70;
  *(v31 + 32) = v70;
  *(v31 + 40) = v33;
  v35 = v80;
  *(v31 + 80) = v79;
  *(v31 + 96) = v35;
  *(v31 + 112) = v81;
  *(v31 + 128) = v82;
  v36 = v78;
  *(v31 + 48) = v77;
  *(v31 + 64) = v36;
  v37 = *(*v34 + 200);

  sub_24A6EF948(&v72, v71);

  v38 = sub_24A6EF948(&v72, v71);
  if ((v37(v38) & 1) != 0 && v29)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v67 = v30;
    v39 = sub_24A82CDC4();
    sub_24A6797D0(v39, qword_27EF78C40);
    v40 = sub_24A82CD94();
    v41 = sub_24A82D504();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24A675000, v40, v41, "FMIPDeviceActionsController: verifying trusted state", v42, 2u);
      v43 = v42;
      v34 = v70;
      MEMORY[0x24C21E1D0](v43, -1, -1);
    }

    v44 = v62;
    sub_24A68FD9C(v34 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v62, type metadata accessor for FMIPDevice);
    v45 = type metadata accessor for FMIPVerifyTrustedStateRequest();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    sub_24A68FD9C(v44, v48 + qword_27EF78DA8, type metadata accessor for FMIPDevice);
    v49 = sub_24A6A183C(0xD000000000000013, 0x800000024A845490, 0, 0, 1);
    sub_24A68FFEC(v44, type metadata accessor for FMIPDevice);
    v50 = v33[9];
    v51 = v33[10];
    sub_24A67DF6C(v33 + 6, v50);
    v52 = swift_allocObject();
    v52[2] = sub_24A6EF9A4;
    v52[3] = v31;
    v52[4] = v70;
    v53 = *(v51 + 56);
    v54 = type metadata accessor for FMIPVerifyTrustedStateResponse();

    v53(v49, sub_24A6EFA08, v52, v54, v50, v51);

    v30 = v67;
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v55 = sub_24A82CDC4();
    sub_24A6797D0(v55, qword_27EF78C40);
    v56 = sub_24A82CD94();
    v57 = sub_24A82D504();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v30;
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_24A675000, v56, v57, "FMIPDeviceActionsController: no need to verify trusted state", v59, 2u);
      v60 = v59;
      v30 = v58;
      MEMORY[0x24C21E1D0](v60, -1, -1);
    }

    sub_24A6DB008(v34, 0, v67, v32, v34, v33, &v77);
  }

  sub_24A6EF9B4(&v72);

  sub_24A6EF9B4(&v72);
  objc_autoreleasePoolPop(v30);
}

id sub_24A6DB008(uint64_t a1, void *a2, void (*a3)(uint64_t **, uint64_t, void *, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_27EF78C40);
    v12 = a2;
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v60[0] = v16;
      *v15 = 136315138;
      *&v57 = a2;
      v17 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v18 = sub_24A82D024();
      v20 = sub_24A68761C(v18, v19, v60);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_24A675000, v13, v14, "FMIPDeviceActionsController: error verifing trusted status action:\n%s", v15, 0xCu);
      sub_24A6876E8(v16);
      MEMORY[0x24C21E1D0](v16, -1, -1);
      MEMORY[0x24C21E1D0](v15, -1, -1);
    }

    LOBYTE(v60[0]) = 0;
    return (a3)(v60, 0, a2, a5);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a6;
    v26 = *(*a1 + 144);

    if (v26(v27))
    {
      v28 = a7;
      v29 = *(a7 + 40);
      v30 = *(v28 + 48);
      v31 = *(*a1 + 152);

      v33 = v31(v32);
      sub_24A67E964(a6 + 128, v60, &qword_27EF5D610, &qword_24A8339A0);
      v53 = type metadata accessor for FMIPEphemeralAuthenticationController();
      v34 = objc_allocWithZone(v53);
      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationResults] = 0;
      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_action] = a1;
      v35 = &v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_username];
      *v35 = v29;
      v35[1] = v30;
      if (v33)
      {
        swift_retain_n();

        v36 = v33;
      }

      else
      {
        v37 = objc_allocWithZone(MEMORY[0x277CF0170]);
        swift_retain_n();

        v36 = [v37 init];
        v33 = 0;
      }

      v38 = v33;
      v39 = sub_24A6D4F1C(v36, v29, v30);

      *&v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationContext] = v39;
      sub_24A67E964(v60, &v55, &qword_27EF5D610, &qword_24A8339A0);
      if (v56)
      {
        sub_24A696E80(&v55, &v57);
      }

      else
      {
        result = [objc_allocWithZone(MEMORY[0x277CF0178]) &selRef_initiatePairingWith_completion_];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v40 = result;
        v58 = sub_24A6EFA2C();
        v59 = &off_285DC1E58;
        *&v57 = v40;
        if (v56)
        {
          sub_24A67F378(&v55, &qword_27EF5D610, &qword_24A8339A0);
        }
      }

      sub_24A696E80(&v57, &v34[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController]);
      v54.receiver = v34;
      v54.super_class = v53;
      v41 = objc_msgSendSuper2(&v54, &selRef_initiatePairingWith_completion_);
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v42 = sub_24A82CDC4();
      sub_24A6797D0(v42, qword_281518F88);
      v43 = sub_24A82CD94();
      v44 = sub_24A82D504();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_24A675000, v43, v44, "FMIPAuthKitAuthenticationController: initialized", v45, 2u);
        MEMORY[0x24C21E1D0](v45, -1, -1);
      }

      sub_24A67F378(v60, &qword_27EF5D610, &qword_24A8339A0);
      v46 = swift_allocObject();
      v46[2] = sub_24A6EFA20;
      v46[3] = v25;
      v46[4] = a1;
      v46[5] = a6;
      v47 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController + 24];
      v48 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController + 32];
      sub_24A67DF6C(&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationController], v47);
      v49 = *&v41[OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationContext];
      v50 = swift_allocObject();
      v50[2] = sub_24A6EFAD0;
      v50[3] = v46;
      v50[4] = v41;
      v52 = *(v48 + 8);

      v51 = v41;
      v52(v49, sub_24A6EFAFC, v50, v47, v48);
    }

    else
    {
      sub_24A6DB668(a1, 0, a3, a4, a5, a6);
    }
  }
}

void sub_24A6DB668(uint64_t a1, void *a2, void (*a3)(uint64_t **, uint64_t, void *, uint64_t), char *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_27EF78C40);
    v11 = a2;
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v77 = v15;
      *v14 = 136315138;
      v16 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v17 = sub_24A82D024();
      v19 = sub_24A68761C(v17, v18, &v77);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_24A675000, v12, v13, "FMIPDeviceActionsController: error authenticating action: %s", v14, 0xCu);
      sub_24A6876E8(v15);
      MEMORY[0x24C21E1D0](v15, -1, -1);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    LOBYTE(v77) = 0;
    a3(&v77, 0, a2, a5);
    return;
  }

  type metadata accessor for FMIPShowContactDetailsAction();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;

    sub_24A6E78E0(v22, a3, a4);
LABEL_13:

    return;
  }

  type metadata accessor for FMIPPlaySoundDeviceAction(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;

    sub_24A6DBEBC(v24, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPLostModeAction(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;

    sub_24A6E6AB4(v26, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPLockAction();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = type metadata accessor for FMIPLockRequest();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    *(swift_allocObject() + qword_27EF78E88) = v28;
    if ((*(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v32 = 0xD00000000000001CLL;
    }

    else
    {
      v32 = 0x4D646E416B636F6CLL;
    }

    if ((*(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v33 = 0x800000024A845510;
    }

    else
    {
      v33 = 0xEE00656761737365;
    }

    v34 = *(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v35 = *(v28 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v36 = sub_24A6A183C(v32, v33, v34, v35, 1);
    v37 = a6;
    v38 = *(a6 + 72);
    v39 = *(v37 + 80);
    sub_24A67DF6C((v37 + 48), v38);
    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = a4;
    v40[4] = v28;
    v41 = *(v39 + 56);
    v42 = type metadata accessor for FMIPLockResponse();

    v43 = sub_24A6EFB6C;
LABEL_40:
    v41(v36, v43, v40, v42, v38, v39);

    goto LABEL_13;
  }

  type metadata accessor for FMIPEraseAction();
  v44 = swift_dynamicCastClass();
  if (v44)
  {
    v45 = v44;
    v46 = type metadata accessor for FMIPEraseRequest();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    *(swift_allocObject() + qword_27EF78D38) = v45;
    v49 = *(v45 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216);
    if ((v49 & 0x80) != 0)
    {
      v50 = 0xD000000000000018;
    }

    else
    {
      v50 = 0xD000000000000016;
    }

    if ((v49 & 0x80) != 0)
    {
      v51 = "remoteWipeWithUserAuth";
    }

    else
    {
      v51 = "cancelWipeWithFamilyAuth";
    }

    v52 = *(v45 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v53 = *(v45 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v36 = sub_24A6A183C(v50, v51 | 0x8000000000000000, v52, v53, 1);
    v54 = a6;
    v38 = *(a6 + 72);
    v39 = *(v54 + 80);
    sub_24A67DF6C((v54 + 48), v38);
    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = a4;
    v40[4] = v45;
    v41 = *(v39 + 56);
    v42 = type metadata accessor for FMIPEraseResponse();

    v43 = sub_24A6EFB20;
    goto LABEL_40;
  }

  type metadata accessor for FMIPCancelEraseAction();
  v55 = swift_dynamicCastClass();
  if (v55)
  {
    v56 = v55;
    v57 = type metadata accessor for FMIPCancelEraseRequest();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    *(swift_allocObject() + qword_27EF78C18) = v56;
    if ((*(v56 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v60 = 0xD000000000000018;
    }

    else
    {
      v60 = 0x69576C65636E6163;
    }

    if ((*(v56 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) != 0)
    {
      v61 = 0x800000024A8454B0;
    }

    else
    {
      v61 = 0xEA00000000006570;
    }

    v62 = *(v56 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v63 = *(v56 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    swift_retain_n();
    v36 = sub_24A6A183C(v60, v61, v62, v63, 1);
    v64 = a6;
    v38 = *(a6 + 72);
    v39 = *(v64 + 80);
    sub_24A67DF6C((v64 + 48), v38);
    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = a4;
    v40[4] = v56;
    v41 = *(v39 + 56);
    v42 = type metadata accessor for FMIPCancelEraseResponse();

    v43 = sub_24A6EFB14;
    goto LABEL_40;
  }

  type metadata accessor for FMIPNotifyAction(0);
  v65 = swift_dynamicCastClass();
  if (v65)
  {
    v66 = v65;

    sub_24A6E8294(v66, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPRemoveDeviceAction(0);
  v67 = swift_dynamicCastClass();
  if (v67)
  {
    v68 = v67;

    sub_24A6EBFAC(v68, a3, a4);
    goto LABEL_13;
  }

  type metadata accessor for FMIPRepairDeviceAction();
  v69 = swift_dynamicCastClass();
  if (v69)
  {
    v70 = v69;

    sub_24A6ECEC8(v70, a3, a4);
    goto LABEL_13;
  }

  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v71 = sub_24A82CDC4();
  sub_24A6797D0(v71, qword_27EF78C40);
  v72 = sub_24A82CD94();
  v73 = sub_24A82D504();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_24A675000, v72, v73, "FMIPDeviceActionsController: cannot map action to request", v74, 2u);
    MEMORY[0x24C21E1D0](v74, -1, -1);
  }

  LOBYTE(v77) = 0;
  sub_24A6EE8A0();
  v75 = swift_allocError();
  *v76 = 0;
  a3(&v77, 0, v75, a5);
}

uint64_t sub_24A6DBEBC(uint64_t a1, void (*a2)(uint64_t **, uint64_t, void *, uint64_t), uint64_t a3)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_27EF78C40);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446979;

    v11 = sub_24A6FAE80();
    v13 = v12;

    v14 = sub_24A68761C(v11, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    *(v9 + 24) = sub_24A68761C(*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device), *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8), &v30);
    *(v9 + 32) = 2082;
    v15 = MEMORY[0x24C21CB60](*(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels), &type metadata for FMIPPlaySoundChannels);
    v17 = sub_24A68761C(v15, v16, &v30);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPDeviceActionsController: perform %{public}s for %{private,mask.hash}s. Channels: %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod);
  if (v18 >= 2)
  {
    if (v18 == 2)
    {
      v23 = sub_24A82CD94();
      v24 = sub_24A82D504();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_24A675000, v23, v24, "FMIPDeviceActionsController: ble sound method", v25, 2u);
        MEMORY[0x24C21E1D0](v25, -1, -1);
      }

      return sub_24A6DC2E8(a1, a2, a3);
    }

    else
    {
      v26 = sub_24A82CD94();
      v27 = sub_24A82D504();
      if (os_log_type_enabled(v26, v27))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24A675000, v26, v27, "FMIPDeviceActionsController: siri sound method", v29, 2u);
        MEMORY[0x24C21E1D0](v29, -1, -1);
      }

      return sub_24A6E605C(a1, a2, a3);
    }
  }

  else
  {
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceActionsController: classic sound method", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    return sub_24A6E2B9C(a1, a2, a3);
  }
}

uint64_t sub_24A6DC2E8(uint64_t a1, void (*a2)(uint64_t **, uint64_t, void *, uint64_t), uint64_t a3)
{
  v713 = a2;
  v714 = a3;
  v703 = type metadata accessor for FMIPItem();
  v720 = *(v703 - 8);
  v4 = v720[8];
  v5 = MEMORY[0x28223BE20](v703);
  v719 = v629 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v629 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v629 - v10;
  v12 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v694 = v629 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v698 = v629 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v693 = (v629 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v697 = v629 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v695 = (v629 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v702 = v629 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v701 = v629 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v700 = v629 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v699 = v629 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v705 = v629 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v715 = v629 - v35;
  MEMORY[0x28223BE20](v34);
  v712 = v629 - v36;
  v37 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v640 = v629 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v644 = v629 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v645 = v629 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v650 = v629 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v657 = v629 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v670 = v629 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v660 = v629 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v682 = v629 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v674 = v629 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v688 = v629 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v680 = v629 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v709 = v629 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v707 = v629 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v708 = v629 - v66;
  MEMORY[0x28223BE20](v65);
  v706 = v629 - v67;
  v68 = sub_24A82CAA4();
  v69 = *(v68 - 8);
  v716 = v68;
  v717 = v69;
  v70 = *(v69 + 64);
  v71 = MEMORY[0x28223BE20](v68);
  v649 = v629 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v647 = v629 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v648 = v629 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v646 = v629 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v632 = v629 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v631 = v629 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v633 = v629 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v635 = v629 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v634 = v629 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v636 = v629 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v638 = v629 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v637 = v629 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v639 = v629 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v642 = v629 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v641 = v629 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v643 = v629 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v664 = v629 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v663 = v629 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v652 = v629 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v651 = v629 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v658 = v629 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v662 = v629 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v661 = v629 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v671 = v629 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v655 = v629 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v656 = v629 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v654 = v629 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v653 = v629 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v659 = v629 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v681 = v629 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v678 = v629 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v669 = v629 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v668 = v629 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v683 = v629 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v679 = v629 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v676 = v629 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v666 = v629 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v665 = v629 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v667 = v629 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v686 = v629 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v685 = v629 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v687 = v629 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v675 = v629 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v690 = v629 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v689 = v629 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v684 = v629 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v673 = v629 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v672 = v629 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v677 = v629 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v692 = v629 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v691 = v629 - v172;
  MEMORY[0x28223BE20](v171);
  v710 = v629 - v173;
  v174 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v175 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174 - 8);
  v177 = v629 - v176;
  v178 = type metadata accessor for FMIPItemGroup();
  v179 = *(v178 - 8);
  v180 = *(v179 + 64);
  MEMORY[0x28223BE20](v178);
  v182 = v629 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v718 = a1;
  v183 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v184 = type metadata accessor for FMIPDevice();
  v185 = *(v184 + 128);
  v711 = v183;
  sub_24A67E964(v183 + v185, v177, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v179 + 48))(v177, 1, v178) != 1)
  {
    sub_24A6EF274(v177, v182, type metadata accessor for FMIPItemGroup);
    v202 = *(v182 + 1);
    v203 = *(v182 + 2);
    v204 = v706;
    sub_24A82CA44();
    v206 = v716;
    v205 = v717;
    v207 = v717 + 48;
    v208 = *(v717 + 48);
    v209 = v208(v204, 1, v716);
    v210 = 0x27EF5C000;
    v704 = v182;
    if (v209 == 1)
    {
      sub_24A67F378(v204, &qword_27EF5D020, &qword_24A830E40);
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v211 = sub_24A82CDC4();
      sub_24A6797D0(v211, qword_27EF78C40);
      v212 = v718;

      v213 = sub_24A82CD94();
      v214 = sub_24A82D4E4();

      v215 = os_log_type_enabled(v213, v214);
      v216 = v704;
      if (v215)
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v721 = v218;
        *v217 = 136446210;

        v219 = sub_24A6FAE80();
        v221 = v220;

        v222 = sub_24A68761C(v219, v221, &v721);

        *(v217 + 4) = v222;
        _os_log_impl(&dword_24A675000, v213, v214, "FMIPDeviceActionsController: cannot perform %{public}s for item with an invalid group identifier.", v217, 0xCu);
        sub_24A6876E8(v218);
        MEMORY[0x24C21E1D0](v218, -1, -1);
        MEMORY[0x24C21E1D0](v217, -1, -1);
      }

      LOBYTE(v721) = 0;
      sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
      v223 = *(*(v184 - 8) + 72);
      v224 = (*(*(v184 - 8) + 80) + 32) & ~*(*(v184 - 8) + 80);
      v225 = swift_allocObject();
      *(v225 + 16) = xmmword_24A8327A0;
      sub_24A68FD9C(v711, v225 + v224, type metadata accessor for FMIPDevice);
      sub_24A6EE8A0();
      v226 = swift_allocError();
      *v227 = 6;
      v713(&v721, v225, v226, v212);

      v228 = v216;
      return sub_24A68FFEC(v228, type metadata accessor for FMIPItemGroup);
    }

    v630 = v208;
    v229 = *(v205 + 32);
    v629[1] = v205 + 32;
    v629[0] = v229;
    v229(v710, v204, v206);
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v706 = sub_24A82CDC4();
    sub_24A6797D0(v706, qword_27EF78C40);

    v230 = sub_24A82CD94();
    v231 = sub_24A82D504();

    v232 = os_log_type_enabled(v230, v231);
    v629[2] = v207;
    if (v232)
    {
      v233 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v721 = v210;
      *v233 = 136446210;

      v234 = sub_24A6FAE80();
      v236 = v235;

      v237 = sub_24A68761C(v234, v236, &v721);

      *(v233 + 4) = v237;
      _os_log_impl(&dword_24A675000, v230, v231, "FMIPDeviceActionsController: performing offline %{public}s.", v233, 0xCu);
      sub_24A6876E8(v210);
      MEMORY[0x24C21E1D0](v210, -1, -1);
      MEMORY[0x24C21E1D0](v233, -1, -1);
    }

    v238 = v703;
    v239 = *(v704 + 5);
    v240 = v239[2];
    if (!v240)
    {
LABEL_36:
      v247 = 1;
      v248 = v712;
      goto LABEL_39;
    }

    v241 = 0;
    v242 = v239 + ((*(v720 + 80) + 32) & ~*(v720 + 80));
    while (1)
    {
      if (v241 >= v239[2])
      {
        __break(1u);
LABEL_266:
        __break(1u);
        goto LABEL_267;
      }

      sub_24A68FD9C(v242 + v720[9] * v241, v11, type metadata accessor for FMIPItem);
      v243 = &v11[*(v238 + 64)];
      if (!*(v243 + 1))
      {
        break;
      }

      v244 = v243[32];
      if (v244 <= 1)
      {
        if (v244)
        {
          goto LABEL_32;
        }

LABEL_30:
        v210 = 0xEA0000000000656ELL;
        goto LABEL_34;
      }

      if (v244 == 2)
      {
        v210 = 0xE700000000000000;
        goto LABEL_34;
      }

      if (v244 != 4)
      {

LABEL_38:
        v249 = v712;
        sub_24A6EF274(v11, v712, type metadata accessor for FMIPItem);
        v248 = v249;
        v247 = 0;
LABEL_39:
        v210 = v720;
        v231 = v720[7];
        (v231)(v248, v247, 1, v238);
        v711 = v231;
        if (v240)
        {
          v242 = 0;
          v250 = v239 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
          while (1)
          {
            if (v242 >= v239[2])
            {
              goto LABEL_266;
            }

            v251 = v720[9];
            sub_24A68FD9C(v250 + v251 * v242, v9, type metadata accessor for FMIPItem);
            v252 = &v9[*(v238 + 64)];
            if (!*(v252 + 1))
            {
              break;
            }

            v253 = v252[32];
            if (v253 <= 1)
            {
              if (v253)
              {
                goto LABEL_54;
              }

LABEL_52:
              v210 = 0xEA0000000000656ELL;
              goto LABEL_56;
            }

            if (v253 == 3)
            {
              v210 = 0xE800000000000000;
            }

            else
            {
              if (v253 != 4)
              {

LABEL_61:
                v257 = v715;
                sub_24A6EF274(v9, v715, type metadata accessor for FMIPItem);
                v256 = 0;
LABEL_62:
                (v711)(v257, v256, 1, v238);
                v242 = 0;
                v258 = v719;
                while (v242 < v239[2])
                {
                  sub_24A68FD9C(v250, v258, type metadata accessor for FMIPItem);
                  v259 = v258 + *(v238 + 64);
                  if (*(v259 + 8))
                  {
                    v260 = *(v259 + 32);
                    if (v260 <= 2 && v260 && v260 != 2)
                    {
                      goto LABEL_77;
                    }
                  }

                  else
                  {
                    v261 = (v258 + *(v238 + 56));
                    v262 = *v261 == 1702060355 && v261[1] == 0xE400000000000000;
                    if (v262 || (sub_24A82DC04() & 1) != 0)
                    {
LABEL_77:

LABEL_78:
                      v264 = v705;
                      sub_24A6EF274(v258, v705, type metadata accessor for FMIPItem);
                      v265 = v264;
                      v266 = 0;
                      goto LABEL_79;
                    }
                  }

                  v263 = sub_24A82DC04();

                  v258 = v719;
                  if (v263)
                  {
                    goto LABEL_78;
                  }

                  ++v242;
                  sub_24A68FFEC(v719, type metadata accessor for FMIPItem);
                  v250 += v251;
                  if (v240 == v242)
                  {
                    goto LABEL_76;
                  }
                }

                __break(1u);
                goto LABEL_279;
              }

              v210 = 0xE700000000000000;
            }

LABEL_56:
            v231 = sub_24A82DC04();

            if (v231)
            {
              goto LABEL_61;
            }

            ++v242;
            sub_24A68FFEC(v9, type metadata accessor for FMIPItem);
            if (v240 == v242)
            {
              v256 = 1;
              v257 = v715;
              goto LABEL_62;
            }
          }

          v254 = &v9[*(v238 + 56)];
          v255 = *v254 == 1702060355 && *(v254 + 1) == 0xE400000000000000;
          if (v255 || (sub_24A82DC04() & 1) != 0)
          {
LABEL_54:
            v210 = 0xE400000000000000;
            goto LABEL_56;
          }

          goto LABEL_52;
        }

        (v231)(v715, 1, 1, v238);
LABEL_76:
        v264 = v705;
        v265 = v705;
        v266 = 1;
LABEL_79:
        (v711)(v265, v266, 1, v238);
        v267 = v712;
        v268 = v699;
        sub_24A67E964(v712, v699, &qword_27EF5D018, &qword_24A830E38);
        v269 = v720[6];
        v239 = v720 + 6;
        v270 = v269(v268, 1, v238);
        v271 = v715;
        v272 = v701;
        v273 = v700;
        if (v270 == 1)
        {
          sub_24A67F378(v268, &qword_27EF5D018, &qword_24A830E38);
          v274 = 1;
          goto LABEL_83;
        }

        v274 = *(v268 + *(v238 + 76));
        sub_24A68FFEC(v268, type metadata accessor for FMIPItem);
        if ((v274 & 6) != 0)
        {
          v275 = 1;
        }

        else
        {
LABEL_83:
          v275 = (v274 >> 11) & 1;
        }

        v719 = v275;
        sub_24A67E964(v271, v273, &qword_27EF5D018, &qword_24A830E38);
        if (v269(v273, 1, v238) == 1)
        {
          sub_24A67F378(v273, &qword_27EF5D018, &qword_24A830E38);
          v276 = 1;
          goto LABEL_88;
        }

        v276 = *(v273 + *(v238 + 76));
        sub_24A68FFEC(v273, type metadata accessor for FMIPItem);
        if ((v276 & 6) != 0)
        {
          v277 = 1;
        }

        else
        {
LABEL_88:
          v277 = (v276 >> 11) & 1;
        }

        v711 = v277;
        sub_24A67E964(v264, v272, &qword_27EF5D018, &qword_24A830E38);
        if (v269(v272, 1, v238) == 1)
        {
          sub_24A67F378(v272, &qword_27EF5D018, &qword_24A830E38);
          v278 = 1;
          goto LABEL_93;
        }

        v278 = *(v272 + *(v238 + 76));
        sub_24A68FFEC(v272, type metadata accessor for FMIPItem);
        if ((v278 & 6) != 0)
        {
          v279 = v264;
          v280 = 1;
        }

        else
        {
LABEL_93:
          v279 = v264;
          v280 = (v278 >> 11) & 1;
        }

        v720 = v280;
        v281 = v702;
        sub_24A67E964(v267, v702, &qword_27EF5D018, &qword_24A830E38);
        v282 = v269(v281, 1, v238);
        sub_24A67F378(v281, &qword_27EF5D018, &qword_24A830E38);
        if (v282 == 1)
        {
          (*(v717 + 56))(v708, 1, 1, v716);
          goto LABEL_98;
        }

        v283 = v695;
        sub_24A67E964(v267, v695, &qword_27EF5D018, &qword_24A830E38);
        if (v269(v283, 1, v238) == 1)
        {
          __break(1u);
        }

        else
        {
          v284 = v283[44];
          v285 = v283[45];

          sub_24A68FFEC(v283, type metadata accessor for FMIPItem);
          sub_24A82CA44();

LABEL_98:
          v281 = v279;
          v286 = v715;
          v287 = v697;
          sub_24A67E964(v715, v697, &qword_27EF5D018, &qword_24A830E38);
          v288 = v269(v287, 1, v238);
          sub_24A67F378(v287, &qword_27EF5D018, &qword_24A830E38);
          if (v288 == 1)
          {
            (*(v717 + 56))(v707, 1, 1, v716);
            goto LABEL_102;
          }

          v283 = v693;
          sub_24A67E964(v286, v693, &qword_27EF5D018, &qword_24A830E38);
          if (v269(v283, 1, v238) != 1)
          {
            v289 = v283[44];
            v290 = v283[45];

            sub_24A68FFEC(v283, type metadata accessor for FMIPItem);
            sub_24A82CA44();

LABEL_102:
            v291 = v718;
            v292 = v698;
            sub_24A67E964(v281, v698, &qword_27EF5D018, &qword_24A830E38);
            v283 = v269(v292, 1, v238);
            sub_24A67F378(v292, &qword_27EF5D018, &qword_24A830E38);
            if (v283 == 1)
            {
              (*(v717 + 56))(v709, 1, 1, v716);
LABEL_106:
              v296 = *(v291 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);
              v297 = *(v296 + 16);
              v298 = (v296 + 32);
              v299 = (v296 + 32);
              do
              {
                v301 = v297;
                if (!v297)
                {
                  break;
                }

                v302 = *v299;
                if (v302 >= 4)
                {

                  break;
                }

                v300 = sub_24A82DC04();

                ++v299;
                v297 = v301 - 1;
              }

              while ((v300 & 1) == 0);
              v303 = *(v296 + 16);
              if (v303)
              {
                v304 = MEMORY[0x277D84F90];
                do
                {
                  v306 = *v298++;
                  v305 = v306;
                  if (v306 <= 1 || v305 == 2 || v305 == 3)
                  {
                    v307 = sub_24A82DC04();

                    if ((v307 & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v721 = v304;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_24A6FC9DC(0, *(v304 + 16) + 1, 1);
                        v304 = v721;
                      }

                      v310 = *(v304 + 16);
                      v309 = *(v304 + 24);
                      if (v310 >= v309 >> 1)
                      {
                        sub_24A6FC9DC((v309 > 1), v310 + 1, 1);
                        v304 = v721;
                      }

                      *(v304 + 16) = v310 + 1;
                      *(v304 + v310 + 32) = v305;
                    }
                  }

                  else
                  {
                  }

                  --v303;
                }

                while (v303);
              }

              else
              {
                v304 = MEMORY[0x277D84F90];
              }

              v311 = sub_24A713EB4(v304);

              v312 = sub_24A713EB4(&unk_285DBDAE0);
              v313 = sub_24A7B4B08(v312, v311);

              if (v313)
              {

                v242 = v704;
                v314 = v716;
                v315 = v710;
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v316 = v717;
                v317 = *(v717 + 16);
                v318 = v691;
                v317(v691, v315, v314);
                v319 = v692;
                v317(v692, v318, v314);
                v320 = *(v316 + 8);
                v320(v318, v314);
                v321 = sub_24A82CD94();
                v322 = sub_24A82D504();
                v323 = os_log_type_enabled(v321, v322);
                v324 = v712;
                if (v323)
                {
                  v325 = swift_slowAlloc();
                  v326 = swift_slowAlloc();
                  v721 = v326;
                  *v325 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v327 = sub_24A82DB84();
                  v329 = v328;
                  v320(v319, v314);
                  v330 = sub_24A68761C(v327, v329, &v721);
                  v242 = v704;

                  *(v325 + 4) = v330;
                  _os_log_impl(&dword_24A675000, v321, v322, "Playing groupID offline for %{public}s.", v325, 0xCu);
                  sub_24A6876E8(v326);
                  v331 = v326;
                  v315 = v710;
                  MEMORY[0x24C21E1D0](v331, -1, -1);
                  v332 = v325;
                  v324 = v712;
                  MEMORY[0x24C21E1D0](v332, -1, -1);
                }

                else
                {

                  v320(v319, v314);
                }

                sub_24A6E21F8(v315, 1, v718, v696, v713, v714);
                sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v324, &qword_27EF5D018, &qword_24A830E38);
                v351 = v315;
                v352 = v314;
                goto LABEL_140;
              }

              v333 = sub_24A713EB4(&unk_285DBDB08);
              v334 = sub_24A7B4B08(v333, v311);

              v242 = v704;
              v239 = v716;
              v240 = v710;
              v9 = v718;
              if (v334)
              {

                v335 = v717;
                v336 = v689;
                if (v720)
                {
                  goto LABEL_134;
                }

                v337 = v680;
                sub_24A67E964(v709, v680, &qword_27EF5D020, &qword_24A830E40);
                if (v630(v337, 1, v239) == 1)
                {
                  sub_24A67F378(v337, &qword_27EF5D020, &qword_24A830E40);
LABEL_134:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v338 = *(v335 + 16);
                  v339 = v684;
                  v338(v684, v240, v239);
                  v338(v336, v339, v239);
                  v340 = *(v335 + 8);
                  v340(v339, v239);
                  v341 = sub_24A82CD94();
                  v342 = sub_24A82D504();
                  if (os_log_type_enabled(v341, v342))
                  {
                    v343 = swift_slowAlloc();
                    v344 = swift_slowAlloc();
                    v721 = v344;
                    *v343 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v345 = sub_24A82DB84();
                    v346 = v336;
                    v348 = v347;
                    v340(v346, v239);
                    v349 = sub_24A68761C(v345, v348, &v721);

                    *(v343 + 4) = v349;
                    _os_log_impl(&dword_24A675000, v341, v342, "Error playing case sound %{public}s.", v343, 0xCu);
                    sub_24A6876E8(v344);
                    v350 = v344;
                    v240 = v710;
                    MEMORY[0x24C21E1D0](v350, -1, -1);
                    MEMORY[0x24C21E1D0](v343, -1, -1);
                  }

                  else
                  {

                    v340(v336, v239);
                  }

                  v379 = v630;
                  v380 = v688;
                  v381 = v690;
                  v382 = v687;
                  if (v719)
                  {
LABEL_180:
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v706, qword_27EF78C58);
                    v432 = v685;
                    v338(v685, v240, v239);
                    v433 = v686;
                    v338(v686, v432, v239);
                    v340(v432, v239);
                    v434 = sub_24A82CD94();
                    v435 = sub_24A82D504();
                    if (os_log_type_enabled(v434, v435))
                    {
                      v436 = swift_slowAlloc();
                      v437 = v240;
                      v438 = swift_slowAlloc();
                      v721 = v438;
                      *v436 = 136446210;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                      v439 = sub_24A82DB84();
                      v440 = v433;
                      v442 = v441;
                      v340(v440, v239);
                      v443 = sub_24A68761C(v439, v442, &v721);

                      *(v436 + 4) = v443;
                      _os_log_impl(&dword_24A675000, v434, v435, "Error playing right sound %{public}s.", v436, 0xCu);
                      sub_24A6876E8(v438);
                      MEMORY[0x24C21E1D0](v438, -1, -1);
                      MEMORY[0x24C21E1D0](v436, -1, -1);

                      sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                      v444 = v437;
                    }

                    else
                    {

                      v340(v433, v239);
                      sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                      sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                      sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                      v444 = v240;
                    }

                    v340(v444, v239);
                    goto LABEL_215;
                  }
                }

                else
                {
                  v383 = v677;
                  (v629[0])(v677, v337, v239);
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v338 = *(v335 + 16);
                  v384 = v672;
                  v338(v672, v383, v239);
                  v385 = v673;
                  v338(v673, v384, v239);
                  v340 = *(v335 + 8);
                  v340(v384, v239);
                  v386 = sub_24A82CD94();
                  v387 = sub_24A82D504();
                  if (os_log_type_enabled(v386, v387))
                  {
                    v388 = swift_slowAlloc();
                    v389 = swift_slowAlloc();
                    v721 = v389;
                    *v388 = 141558275;
                    *(v388 + 4) = 1752392040;
                    *(v388 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v390 = sub_24A82DB84();
                    v391 = v385;
                    v393 = v392;
                    v340(v391, v239);
                    v394 = sub_24A68761C(v390, v393, &v721);

                    *(v388 + 14) = v394;
                    _os_log_impl(&dword_24A675000, v386, v387, "Playing case offline for %{private,mask.hash}s.", v388, 0x16u);
                    sub_24A6876E8(v389);
                    v395 = v389;
                    v240 = v710;
                    MEMORY[0x24C21E1D0](v395, -1, -1);
                    v396 = v388;
                    v383 = v677;
                    MEMORY[0x24C21E1D0](v396, -1, -1);
                  }

                  else
                  {

                    v340(v385, v239);
                  }

                  v380 = v688;
                  v381 = v690;
                  v382 = v687;
                  sub_24A6E21F8(v383, 1, v718, v696, v713, v714);
                  v340(v383, v239);
                  v379 = v630;
                  if (v719)
                  {
                    goto LABEL_180;
                  }
                }

                sub_24A67E964(v708, v380, &qword_27EF5D020, &qword_24A830E40);
                if (v379(v380, 1, v239) == 1)
                {
                  sub_24A67F378(v380, &qword_27EF5D020, &qword_24A830E40);
                  goto LABEL_180;
                }

                (v629[0])(v381, v380, v239);
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v445 = v675;
                v338(v675, v381, v239);
                v338(v382, v445, v239);
                v340(v445, v239);
                v446 = sub_24A82CD94();
                v447 = v382;
                v448 = sub_24A82D504();
                if (os_log_type_enabled(v446, v448))
                {
                  v449 = swift_slowAlloc();
                  v450 = swift_slowAlloc();
                  v721 = v450;
                  *v449 = 141558275;
                  *(v449 + 4) = 1752392040;
                  *(v449 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v451 = sub_24A82DB84();
                  v453 = v452;
                  v340(v447, v239);
                  v454 = sub_24A68761C(v451, v453, &v721);
                  v381 = v690;

                  *(v449 + 14) = v454;
                  _os_log_impl(&dword_24A675000, v446, v448, "Playing right offline for %{private,mask.hash}s.", v449, 0x16u);
                  sub_24A6876E8(v450);
                  v455 = v450;
                  v456 = v710;
                  MEMORY[0x24C21E1D0](v455, -1, -1);
                  MEMORY[0x24C21E1D0](v449, -1, -1);

                  v457 = v704;
                  v458 = v707;
                }

                else
                {

                  v340(v447, v239);
                  v457 = v704;
                  v458 = v707;
                  v456 = v710;
                }

                sub_24A6E21F8(v381, 1, v718, v696, v713, v714);
                v340(v381, v239);
                sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v458, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                v340(v456, v239);
LABEL_231:
                v228 = v457;
                return sub_24A68FFEC(v228, type metadata accessor for FMIPItemGroup);
              }

              v353 = sub_24A713EB4(&unk_285DBDB30);
              v354 = sub_24A7B4B08(v353, v311);

              if (v354)
              {

                v355 = v717;
                v356 = v679;
                if (v720)
                {
                  goto LABEL_146;
                }

                v357 = v674;
                sub_24A67E964(v709, v674, &qword_27EF5D020, &qword_24A830E40);
                if (v630(v357, 1, v239) == 1)
                {
                  sub_24A67F378(v357, &qword_27EF5D020, &qword_24A830E40);
LABEL_146:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v358 = *(v355 + 16);
                  v359 = v676;
                  v358(v676, v240, v239);
                  v358(v356, v359, v239);
                  v360 = *(v355 + 8);
                  (v360)(v359, v239);
                  v361 = sub_24A82CD94();
                  v362 = sub_24A82D504();
                  v363 = os_log_type_enabled(v361, v362);
                  v720 = v360;
                  if (v363)
                  {
                    v364 = swift_slowAlloc();
                    v719 = v358;
                    v365 = v360;
                    v366 = v364;
                    v367 = swift_slowAlloc();
                    v721 = v367;
                    *v366 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v368 = sub_24A82DB84();
                    v370 = v369;
                    (v365)(v356, v239);
                    v358 = v719;
                    v371 = sub_24A68761C(v368, v370, &v721);

                    *(v366 + 4) = v371;
                    _os_log_impl(&dword_24A675000, v361, v362, "Error playing case sound %{public}s.", v366, 0xCu);
                    sub_24A6876E8(v367);
                    v372 = v367;
                    v240 = v710;
                    MEMORY[0x24C21E1D0](v372, -1, -1);
                    MEMORY[0x24C21E1D0](v366, -1, -1);
                  }

                  else
                  {

                    (v360)(v356, v239);
                  }

                  v412 = v707;
                  v413 = v630;
                  v414 = v682;
                  v415 = v683;
                }

                else
                {
                  v416 = v667;
                  (v629[0])(v667, v357, v239);
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v358 = *(v355 + 16);
                  v417 = v665;
                  v358(v665, v416, v239);
                  v418 = v666;
                  v358(v666, v417, v239);
                  v419 = *(v355 + 8);
                  (v419)(v417, v239);
                  v420 = sub_24A82CD94();
                  v421 = sub_24A82D504();
                  v422 = os_log_type_enabled(v420, v421);
                  v720 = v419;
                  if (v422)
                  {
                    v423 = swift_slowAlloc();
                    v424 = swift_slowAlloc();
                    v721 = v424;
                    *v423 = 141558275;
                    *(v423 + 4) = 1752392040;
                    *(v423 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v425 = sub_24A82DB84();
                    v426 = v418;
                    v428 = v427;
                    (v720)(v426, v239);
                    v429 = sub_24A68761C(v425, v428, &v721);

                    *(v423 + 14) = v429;
                    _os_log_impl(&dword_24A675000, v420, v421, "Playing case offline for %{private,mask.hash}s.", v423, 0x16u);
                    sub_24A6876E8(v424);
                    v430 = v424;
                    v240 = v710;
                    MEMORY[0x24C21E1D0](v430, -1, -1);
                    v431 = v423;
                    v419 = v720;
                    MEMORY[0x24C21E1D0](v431, -1, -1);
                  }

                  else
                  {

                    (v419)(v418, v239);
                  }

                  v412 = v707;
                  v414 = v682;
                  v415 = v683;
                  sub_24A6E21F8(v416, 1, v718, v696, v713, v714);
                  (v419)(v416, v239);
                  v413 = v630;
                }

                v491 = v681;
                if ((v711 & 1) == 0)
                {
                  sub_24A67E964(v412, v414, &qword_27EF5D020, &qword_24A830E40);
                  if (v413(v414, 1, v239) != 1)
                  {
                    (v629[0])(v415, v414, v239);
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v706, qword_27EF78C58);
                    v503 = v668;
                    v358(v668, v415, v239);
                    v504 = v669;
                    v358(v669, v503, v239);
                    v505 = v720;
                    (v720)(v503, v239);
                    v506 = sub_24A82CD94();
                    v507 = sub_24A82D504();
                    if (os_log_type_enabled(v506, v507))
                    {
                      v508 = swift_slowAlloc();
                      v509 = swift_slowAlloc();
                      v721 = v509;
                      *v508 = 141558275;
                      *(v508 + 4) = 1752392040;
                      *(v508 + 12) = 2081;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                      v510 = sub_24A82DB84();
                      v512 = v511;
                      (v505)(v504, v239);
                      v513 = sub_24A68761C(v510, v512, &v721);
                      v412 = v707;

                      *(v508 + 14) = v513;
                      _os_log_impl(&dword_24A675000, v506, v507, "Playing left offline for %{private,mask.hash}s.", v508, 0x16u);
                      sub_24A6876E8(v509);
                      v514 = v710;
                      MEMORY[0x24C21E1D0](v509, -1, -1);
                      MEMORY[0x24C21E1D0](v508, -1, -1);

                      v457 = v704;
                    }

                    else
                    {

                      (v505)(v504, v239);
                      v457 = v704;
                      v514 = v710;
                    }

                    v527 = v683;
                    sub_24A6E21F8(v683, 1, v718, v696, v713, v714);
                    (v505)(v527, v239);
                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v412, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    (v505)(v514, v239);
                    goto LABEL_231;
                  }

                  sub_24A67F378(v414, &qword_27EF5D020, &qword_24A830E40);
                }

                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v492 = v678;
                v358(v678, v240, v239);
                v358(v491, v492, v239);
                v493 = v720;
                (v720)(v492, v239);
                v494 = sub_24A82CD94();
                v495 = sub_24A82D504();
                if (os_log_type_enabled(v494, v495))
                {
                  v496 = swift_slowAlloc();
                  v497 = swift_slowAlloc();
                  v721 = v497;
                  *v496 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v498 = sub_24A82DB84();
                  v500 = v499;
                  (v493)(v491, v239);
                  v501 = sub_24A68761C(v498, v500, &v721);

                  *(v496 + 4) = v501;
                  _os_log_impl(&dword_24A675000, v494, v495, "Error playing left sound %{public}s.", v496, 0xCu);
                  sub_24A6876E8(v497);
                  MEMORY[0x24C21E1D0](v497, -1, -1);
                  MEMORY[0x24C21E1D0](v496, -1, -1);

                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  v502 = v710;
                }

                else
                {

                  (v493)(v491, v239);
                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v412, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  v502 = v240;
                }

                (v493)(v502, v239);
LABEL_215:
                v228 = v704;
                return sub_24A68FFEC(v228, type metadata accessor for FMIPItemGroup);
              }

              v373 = sub_24A713EB4(&unk_285DBDB58);
              v374 = sub_24A7B4B08(v373, v311);

              if (v374)
              {

                if (v301)
                {
                  v375 = v717;
                  v376 = v670;
                  v377 = v671;
                  if ((v711 & 1) == 0)
                  {
                    v378 = v660;
                    sub_24A67E964(v707, v660, &qword_27EF5D020, &qword_24A830E40);
                    if (v630(v378, 1, v239) == 1)
                    {
                      sub_24A67F378(v378, &qword_27EF5D020, &qword_24A830E40);
                    }

                    else
                    {
                      v530 = v659;
                      (v629[0])(v659, v378, v239);
                      if (qword_27EF5CBA0 != -1)
                      {
                        swift_once();
                      }

                      sub_24A6797D0(v706, qword_27EF78C58);
                      v531 = *(v375 + 16);
                      v532 = v653;
                      v531(v653, v530, v239);
                      v533 = v654;
                      v531(v654, v532, v239);
                      v534 = *(v375 + 8);
                      (v534)(v532, v239);
                      v535 = sub_24A82CD94();
                      v536 = sub_24A82D504();
                      if (os_log_type_enabled(v535, v536))
                      {
                        v537 = swift_slowAlloc();
                        v720 = v534;
                        v538 = v537;
                        v539 = swift_slowAlloc();
                        v721 = v539;
                        *v538 = 141558275;
                        *(v538 + 4) = 1752392040;
                        *(v538 + 12) = 2081;
                        sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                        v540 = sub_24A82DB84();
                        v542 = v541;
                        (v720)(v533, v239);
                        v543 = sub_24A68761C(v540, v542, &v721);
                        v242 = v704;

                        *(v538 + 14) = v543;
                        _os_log_impl(&dword_24A675000, v535, v536, "Playing left offline for %{private,mask.hash}s.", v538, 0x16u);
                        sub_24A6876E8(v539);
                        v544 = v539;
                        v240 = v710;
                        MEMORY[0x24C21E1D0](v544, -1, -1);
                        v545 = v538;
                        v534 = v720;
                        MEMORY[0x24C21E1D0](v545, -1, -1);
                      }

                      else
                      {

                        (v534)(v533, v239);
                        v242 = v704;
                      }

                      v575 = v659;
                      sub_24A6E21F8(v659, 1, v718, v696, v713, v714);
                      (v534)(v575, v239);
                      v375 = v717;
                      v377 = v671;
                    }
                  }

                  if (v719)
                  {
                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    (*(v375 + 8))(v240, v239);
LABEL_141:
                    v228 = v242;
                    return sub_24A68FFEC(v228, type metadata accessor for FMIPItemGroup);
                  }

                  v576 = v708;
                  sub_24A67E964(v708, v376, &qword_27EF5D020, &qword_24A830E40);
                  if (v630(v376, 1, v239) != 1)
                  {
                    v578 = v656;
                    (v629[0])(v656, v376, v239);
                    if (qword_27EF5CBA0 != -1)
                    {
                      swift_once();
                    }

                    sub_24A6797D0(v706, qword_27EF78C58);
                    v579 = *(v375 + 16);
                    v580 = v655;
                    v579(v655, v578, v239);
                    v579(v377, v580, v239);
                    v581 = *(v375 + 8);
                    (v581)(v580, v239);
                    v582 = sub_24A82CD94();
                    v583 = sub_24A82D504();
                    if (os_log_type_enabled(v582, v583))
                    {
                      v584 = swift_slowAlloc();
                      v720 = v581;
                      v585 = v584;
                      v586 = swift_slowAlloc();
                      v721 = v586;
                      *v585 = 141558275;
                      *(v585 + 4) = 1752392040;
                      *(v585 + 12) = 2081;
                      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                      v587 = sub_24A82DB84();
                      v589 = v588;
                      (v720)(v377, v239);
                      v590 = sub_24A68761C(v587, v589, &v721);
                      v242 = v704;

                      *(v585 + 14) = v590;
                      _os_log_impl(&dword_24A675000, v582, v583, "Playing right offline for %{private,mask.hash}s.", v585, 0x16u);
                      sub_24A6876E8(v586);
                      v591 = v586;
                      v240 = v710;
                      MEMORY[0x24C21E1D0](v591, -1, -1);
                      v592 = v585;
                      v581 = v720;
                      MEMORY[0x24C21E1D0](v592, -1, -1);
                    }

                    else
                    {

                      (v581)(v377, v239);
                    }

                    sub_24A6E21F8(v578, 1, v718, v696, v713, v714);
                    (v581)(v578, v239);
                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    (v581)(v240, v239);
                    goto LABEL_141;
                  }

                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v576, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  (*(v375 + 8))(v240, v239);
                  sub_24A68FFEC(v242, type metadata accessor for FMIPItemGroup);
                  v577 = v376;
                  return sub_24A67F378(v577, &qword_27EF5D020, &qword_24A830E40);
                }

                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v478 = v717;
                v479 = *(v717 + 16);
                v480 = v661;
                v479(v661, v240, v239);
                v481 = v662;
                v479(v662, v480, v239);
                v469 = *(v478 + 8);
                v469(v480, v239);
                v482 = sub_24A82CD94();
                v483 = sub_24A82D504();
                if (os_log_type_enabled(v482, v483))
                {
                  v484 = swift_slowAlloc();
                  v485 = swift_slowAlloc();
                  v721 = v485;
                  *v484 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v486 = sub_24A82DB84();
                  v488 = v487;
                  v469(v481, v239);
                  v489 = sub_24A68761C(v486, v488, &v721);
                  v242 = v704;

                  *(v484 + 4) = v489;
                  _os_log_impl(&dword_24A675000, v482, v483, "Playing groupID offline for %{public}s.", v484, 0xCu);
                  sub_24A6876E8(v485);
                  v490 = v485;
                  v240 = v710;
                  MEMORY[0x24C21E1D0](v490, -1, -1);
                  MEMORY[0x24C21E1D0](v484, -1, -1);
                }

                else
                {

                  v469(v481, v239);
                }

                v528 = v240;
                v529 = 1;
LABEL_276:
                sub_24A6E21F8(v528, v529, v718, v696, v713, v714);
LABEL_277:
                sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                v469(v240, v239);
                goto LABEL_141;
              }

              v397 = sub_24A713EB4(&unk_285DBDB80);
              v398 = sub_24A7B4B08(v397, v311);

              if (v398)
              {

                v399 = v717;
                if (v720)
                {
                  goto LABEL_166;
                }

                v400 = v657;
                sub_24A67E964(v709, v657, &qword_27EF5D020, &qword_24A830E40);
                if (v630(v400, 1, v239) == 1)
                {
                  sub_24A67F378(v400, &qword_27EF5D020, &qword_24A830E40);
LABEL_166:
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v401 = *(v399 + 16);
                  v402 = v663;
                  v401(v663, v240, v239);
                  v403 = v664;
                  v401(v664, v402, v239);
                  v320 = *(v399 + 8);
                  v320(v402, v239);
                  v404 = sub_24A82CD94();
                  v405 = sub_24A82D504();
                  if (os_log_type_enabled(v404, v405))
                  {
                    v406 = swift_slowAlloc();
                    v407 = swift_slowAlloc();
                    v721 = v407;
                    *v406 = 136446210;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v408 = sub_24A82DB84();
                    v410 = v409;
                    v320(v403, v239);
                    v411 = sub_24A68761C(v408, v410, &v721);
                    v242 = v704;

                    *(v406 + 4) = v411;
                    _os_log_impl(&dword_24A675000, v404, v405, "Error playing case sound %{public}s.", v406, 0xCu);
                    sub_24A6876E8(v407);
                    MEMORY[0x24C21E1D0](v407, -1, -1);
                    MEMORY[0x24C21E1D0](v406, -1, -1);

                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    v351 = v710;
                  }

                  else
                  {

                    v320(v403, v239);
                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    v351 = v240;
                  }

                  v352 = v239;
LABEL_140:
                  v320(v351, v352);
                  goto LABEL_141;
                }

                v546 = v658;
                (v629[0])(v658, v400, v239);
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v547 = *(v399 + 16);
                v548 = v651;
                v547(v651, v546, v239);
                v231 = v652;
                v547(v652, v548, v239);
                v210 = *(v399 + 8);
                (v210)(v548, v239);
                v238 = sub_24A82CD94();
                v549 = sub_24A82D504();
                if (os_log_type_enabled(v238, v549))
                {
                  v550 = swift_slowAlloc();
                  v720 = v210;
                  v551 = v550;
                  v552 = swift_slowAlloc();
                  v721 = v552;
                  *v551 = 141558275;
                  *(v551 + 4) = 1752392040;
                  *(v551 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v553 = sub_24A82DB84();
                  v555 = v554;
                  (v720)(v231, v239);
                  v556 = sub_24A68761C(v553, v555, &v721);
                  v242 = v704;

                  *(v551 + 14) = v556;
                  _os_log_impl(&dword_24A675000, v238, v549, "Playing case offline for %{private,mask.hash}s.", v551, 0x16u);
                  sub_24A6876E8(v552);
                  v557 = v552;
                  v240 = v710;
                  MEMORY[0x24C21E1D0](v557, -1, -1);
                  v558 = v551;
                  v210 = v720;
                  MEMORY[0x24C21E1D0](v558, -1, -1);

LABEL_268:
                  v593 = v658;
                  sub_24A6E21F8(v658, 1, v9, v696, v713, v714);
                  (v210)(v593, v239);
                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  (v210)(v240, v239);
                  goto LABEL_141;
                }

LABEL_267:

                (v210)(v231, v239);
                goto LABEL_268;
              }

              v459 = sub_24A713EB4(&unk_285DBDBA8);
              v460 = sub_24A7B4B08(v459, v311);

              if (v460)
              {

                if (v301)
                {
                  if (v711)
                  {
                    v461 = v707;
                    v462 = v650;
                    sub_24A67E964(v707, v650, &qword_27EF5D020, &qword_24A830E40);
                    if (v630(v462, 1, v239) != 1)
                    {
                      v463 = v643;
                      (v629[0])(v643, v462, v239);
                      v464 = v717;
                      if (qword_27EF5CBA0 != -1)
                      {
                        swift_once();
                      }

                      sub_24A6797D0(v706, qword_27EF78C58);
                      v465 = *(v464 + 16);
                      v466 = v641;
                      v465(v641, v463, v239);
                      v467 = v642;
                      v465(v642, v466, v239);
                      v468 = v466;
                      v469 = *(v464 + 8);
                      v469(v468, v239);
                      v470 = sub_24A82CD94();
                      v471 = sub_24A82D504();
                      if (os_log_type_enabled(v470, v471))
                      {
                        v472 = swift_slowAlloc();
                        v720 = swift_slowAlloc();
                        v721 = v720;
                        *v472 = 141558275;
                        *(v472 + 4) = 1752392040;
                        *(v472 + 12) = 2081;
                        sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                        v473 = sub_24A82DB84();
                        v475 = v474;
                        v469(v467, v239);
                        v476 = sub_24A68761C(v473, v475, &v721);
                        v242 = v704;

                        *(v472 + 14) = v476;
                        v477 = "Muting left offline for %{private,mask.hash}s.";
                        goto LABEL_228;
                      }

LABEL_281:

                      v469(v467, v239);
                      goto LABEL_282;
                    }

LABEL_288:
                    sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v461, &qword_27EF5D020, &qword_24A830E40);
                    v574 = v708;
LABEL_289:
                    sub_24A67F378(v574, &qword_27EF5D020, &qword_24A830E40);
                    sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                    sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                    (*(v717 + 8))(v240, v239);
                    sub_24A68FFEC(v242, type metadata accessor for FMIPItemGroup);
                    v577 = v462;
                    return sub_24A67F378(v577, &qword_27EF5D020, &qword_24A830E40);
                  }

LABEL_280:
                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  (*(v717 + 8))(v240, v239);
                  goto LABEL_141;
                }

                if (v719)
                {
                  goto LABEL_280;
                }

                v517 = v708;
                v462 = v645;
                sub_24A67E964(v708, v645, &qword_27EF5D020, &qword_24A830E40);
                if (v630(v462, 1, v239) == 1)
                {
LABEL_252:
                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  v574 = v517;
                  goto LABEL_289;
                }

                v463 = v639;
                (v629[0])(v639, v462, v239);
                v603 = v717;
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v604 = *(v603 + 16);
                v605 = v637;
                v604(v637, v463, v239);
                v606 = v638;
                v604(v638, v605, v239);
                v607 = v605;
                v469 = *(v603 + 8);
                v469(v607, v239);
                v608 = sub_24A82CD94();
                v609 = sub_24A82D504();
                if (os_log_type_enabled(v608, v609))
                {
                  v610 = swift_slowAlloc();
                  v720 = swift_slowAlloc();
                  v721 = v720;
                  *v610 = 141558275;
                  *(v610 + 4) = 1752392040;
                  *(v610 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v611 = sub_24A82DB84();
                  v613 = v612;
                  v469(v606, v239);
                  v614 = sub_24A68761C(v611, v613, &v721);
                  v242 = v704;

                  *(v610 + 14) = v614;
                  _os_log_impl(&dword_24A675000, v608, v609, "Playing right offline for %{private,mask.hash}s.", v610, 0x16u);
                  v615 = v720;
                  sub_24A6876E8(v720);
                  v240 = v710;
                  MEMORY[0x24C21E1D0](v615, -1, -1);
                  MEMORY[0x24C21E1D0](v610, -1, -1);
                }

                else
                {

                  v469(v606, v239);
                }

                v601 = v463;
                v602 = 1;
LABEL_293:
                sub_24A6E21F8(v601, v602, v718, v696, v713, v714);
                v469(v463, v239);
                goto LABEL_277;
              }

              v515 = sub_24A713EB4(&unk_285DBDBD0);
              v516 = sub_24A7B4B08(v515, v311);

              if (v516)
              {

                if (v301)
                {
                  if (!v719)
                  {
                    goto LABEL_280;
                  }

                  v517 = v708;
                  v462 = v644;
                  sub_24A67E964(v708, v644, &qword_27EF5D020, &qword_24A830E40);
                  if (v630(v462, 1, v239) == 1)
                  {
                    goto LABEL_252;
                  }

                  v463 = v636;
                  (v629[0])(v636, v462, v239);
                  v518 = v717;
                  if (qword_27EF5CBA0 != -1)
                  {
                    swift_once();
                  }

                  sub_24A6797D0(v706, qword_27EF78C58);
                  v519 = *(v518 + 16);
                  v520 = v634;
                  v519(v634, v463, v239);
                  v467 = v635;
                  v519(v635, v520, v239);
                  v521 = v520;
                  v469 = *(v518 + 8);
                  v469(v521, v239);
                  v470 = sub_24A82CD94();
                  v471 = sub_24A82D504();
                  if (!os_log_type_enabled(v470, v471))
                  {
                    goto LABEL_281;
                  }

                  v472 = swift_slowAlloc();
                  v720 = swift_slowAlloc();
                  v721 = v720;
                  *v472 = 141558275;
                  *(v472 + 4) = 1752392040;
                  *(v472 + 12) = 2081;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v522 = sub_24A82DB84();
                  v524 = v523;
                  v469(v467, v239);
                  v525 = sub_24A68761C(v522, v524, &v721);
                  v242 = v704;

                  *(v472 + 14) = v525;
                  v477 = "Muting right offline for %{private,mask.hash}s.";
LABEL_228:
                  _os_log_impl(&dword_24A675000, v470, v471, v477, v472, 0x16u);
                  v526 = v720;
                  sub_24A6876E8(v720);
                  v240 = v710;
                  MEMORY[0x24C21E1D0](v526, -1, -1);
                  MEMORY[0x24C21E1D0](v472, -1, -1);

LABEL_282:
                  v601 = v463;
                  v602 = 0;
                  goto LABEL_293;
                }

LABEL_279:
                if (v711)
                {
                  goto LABEL_280;
                }

                v461 = v707;
                v462 = v640;
                sub_24A67E964(v707, v640, &qword_27EF5D020, &qword_24A830E40);
                if (v630(v462, 1, v239) == 1)
                {
                  goto LABEL_288;
                }

                v281 = v633;
                (v629[0])(v633, v462, v239);
                v283 = v717;
                if (qword_27EF5CBA0 == -1)
                {
LABEL_295:
                  sub_24A6797D0(v706, qword_27EF78C58);
                  v616 = v283[2];
                  v617 = v631;
                  v616(v631, v281, v239);
                  v618 = v632;
                  v616(v632, v617, v239);
                  v619 = v283[1];
                  v619(v617, v239);
                  v620 = sub_24A82CD94();
                  v621 = sub_24A82D504();
                  if (os_log_type_enabled(v620, v621))
                  {
                    v622 = swift_slowAlloc();
                    v623 = swift_slowAlloc();
                    v721 = v623;
                    *v622 = 141558275;
                    *(v622 + 4) = 1752392040;
                    *(v622 + 12) = 2081;
                    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                    v624 = sub_24A82DB84();
                    v625 = v618;
                    v627 = v626;
                    v619(v625, v239);
                    v628 = sub_24A68761C(v624, v627, &v721);

                    *(v622 + 14) = v628;
                    _os_log_impl(&dword_24A675000, v620, v621, "Playing left offline for %{private,mask.hash}s.", v622, 0x16u);
                    sub_24A6876E8(v623);
                    MEMORY[0x24C21E1D0](v623, -1, -1);
                    MEMORY[0x24C21E1D0](v622, -1, -1);
                  }

                  else
                  {

                    v619(v618, v239);
                  }

                  sub_24A6E21F8(v281, 1, v718, v696, v713, v714);
                  v619(v281, v239);
                  sub_24A67F378(v709, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v707, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v708, &qword_27EF5D020, &qword_24A830E40);
                  sub_24A67F378(v705, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v715, &qword_27EF5D018, &qword_24A830E38);
                  sub_24A67F378(v712, &qword_27EF5D018, &qword_24A830E38);
                  v619(v710, v239);
                  v228 = v704;
                  return sub_24A68FFEC(v228, type metadata accessor for FMIPItemGroup);
                }

LABEL_302:
                swift_once();
                goto LABEL_295;
              }

              v559 = sub_24A713EB4(MEMORY[0x277D84F90]);
              v560 = sub_24A7B4B08(v559, v311);

              v561 = v717;
              if (v560)
              {
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v562 = *(v561 + 16);
                v563 = v646;
                v562(v646, v240, v239);
                v564 = v648;
                v562(v648, v563, v239);
                v469 = *(v561 + 8);
                v469(v563, v239);
                v565 = sub_24A82CD94();
                v566 = sub_24A82D504();
                if (os_log_type_enabled(v565, v566))
                {
                  v567 = swift_slowAlloc();
                  v568 = swift_slowAlloc();
                  v721 = v568;
                  *v567 = 136446210;
                  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                  v569 = sub_24A82DB84();
                  v571 = v570;
                  v469(v564, v239);
                  v572 = sub_24A68761C(v569, v571, &v721);
                  v242 = v704;

                  *(v567 + 4) = v572;
                  v573 = "Stopping groupID offline for %{public}s.";
                  goto LABEL_273;
                }

LABEL_274:

                v469(v564, v239);
              }

              else
              {
                if (qword_27EF5CBA0 != -1)
                {
                  swift_once();
                }

                sub_24A6797D0(v706, qword_27EF78C58);
                v594 = *(v561 + 16);
                v595 = v647;
                v594(v647, v240, v239);
                v564 = v649;
                v594(v649, v595, v239);
                v469 = *(v561 + 8);
                v469(v595, v239);
                v565 = sub_24A82CD94();
                v566 = sub_24A82D4E4();
                if (!os_log_type_enabled(v565, v566))
                {
                  goto LABEL_274;
                }

                v567 = swift_slowAlloc();
                v568 = swift_slowAlloc();
                v721 = v568;
                *v567 = 136446210;
                sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
                v596 = sub_24A82DB84();
                v598 = v597;
                v469(v564, v239);
                v599 = sub_24A68761C(v596, v598, &v721);
                v242 = v704;

                *(v567 + 4) = v599;
                v573 = "Error: Unhandled case - Stopping groupID offline for %{public}s.";
LABEL_273:
                _os_log_impl(&dword_24A675000, v565, v566, v573, v567, 0xCu);
                sub_24A6876E8(v568);
                v600 = v568;
                v240 = v710;
                MEMORY[0x24C21E1D0](v600, -1, -1);
                MEMORY[0x24C21E1D0](v567, -1, -1);
              }

              v528 = v240;
              v529 = 0;
              goto LABEL_276;
            }

            v293 = v694;
            sub_24A67E964(v281, v694, &qword_27EF5D018, &qword_24A830E38);
            if (v269(v293, 1, v238) != 1)
            {
              v294 = *(v293 + 352);
              v295 = *(v293 + 360);

              sub_24A68FFEC(v293, type metadata accessor for FMIPItem);
              sub_24A82CA44();

              goto LABEL_106;
            }

LABEL_301:
            __break(1u);
            goto LABEL_302;
          }
        }

        __break(1u);
        goto LABEL_301;
      }

      v210 = 0xE700000000000000;
LABEL_34:
      v231 = sub_24A82DC04();

      if (v231)
      {
        goto LABEL_38;
      }

      ++v241;
      sub_24A68FFEC(v11, type metadata accessor for FMIPItem);
      if (v240 == v241)
      {
        goto LABEL_36;
      }
    }

    v245 = &v11[*(v238 + 56)];
    v246 = *v245 == 1702060355 && *(v245 + 1) == 0xE400000000000000;
    if (v246 || (sub_24A82DC04() & 1) != 0)
    {
LABEL_32:
      v210 = 0xE400000000000000;
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_24A67F378(v177, &unk_27EF5E0B0, &qword_24A8338B0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v186 = sub_24A82CDC4();
  sub_24A6797D0(v186, qword_27EF78C40);
  v187 = v718;

  v188 = sub_24A82CD94();
  v189 = sub_24A82D4E4();

  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v721 = v191;
    *v190 = 136446210;

    v192 = sub_24A6FAE80();
    v194 = v193;

    v195 = sub_24A68761C(v192, v194, &v721);

    *(v190 + 4) = v195;
    _os_log_impl(&dword_24A675000, v188, v189, "Unable to perform %{public}s offline for device with no item group.", v190, 0xCu);
    sub_24A6876E8(v191);
    MEMORY[0x24C21E1D0](v191, -1, -1);
    MEMORY[0x24C21E1D0](v190, -1, -1);
  }

  LOBYTE(v721) = 0;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v196 = *(*(v184 - 8) + 72);
  v197 = (*(*(v184 - 8) + 80) + 32) & ~*(*(v184 - 8) + 80);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(v711, v198 + v197, type metadata accessor for FMIPDevice);
  sub_24A6EE8A0();
  v199 = swift_allocError();
  *v200 = 7;
  v713(&v721, v198, v199, v187);
}

uint64_t sub_24A6E21F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v43 = a4;
  v42 = a2;
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v34[-v12];
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_27EF78C40);
  v38 = *(v9 + 16);
  v38(v13, a1, v8);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v17 = 136446723;

    v35 = v16;
    v18 = sub_24A6FAE80();
    v37 = a1;
    v20 = v19;

    v21 = sub_24A68761C(v18, v20, &v44);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v22 = sub_24A82DB84();
    v24 = v23;
    (*(v9 + 8))(v13, v8);
    v25 = sub_24A68761C(v22, v24, &v44);
    a1 = v37;

    *(v17 + 24) = v25;
    _os_log_impl(&dword_24A675000, v15, v35, "performOffline %{public}s for %{private,mask.hash}s.", v17, 0x20u);
    v26 = v36;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v27 = *(a3 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed);
  v28 = v39;
  v38(v39, a1, v8);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  (*(v9 + 32))(v30 + v29, v28, v8);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;

  sub_24A6E4768(a1, v42 & 1, v27, sub_24A6EF85C, v30);
}

uint64_t sub_24A6E2604(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  v46 = a1;
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_27EF78C40);
  (*(v10 + 16))(v13, a3, v9);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (!os_log_type_enabled(v15, v16))
  {

    (*(v10 + 8))(v13, v9);
    v29 = v46;
    if (v46)
    {
      goto LABEL_5;
    }

LABEL_10:
    LOBYTE(v48) = 4;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v33 = *(type metadata accessor for FMIPDevice() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v36 + v35, type metadata accessor for FMIPDevice);
    v37 = v36;
    v38 = 0;
    goto LABEL_13;
  }

  v17 = swift_slowAlloc();
  v45 = a4;
  v18 = v17;
  v19 = swift_slowAlloc();
  v48 = v19;
  *v18 = 136446723;

  v20 = sub_24A6FAE80();
  v44[1] = a5;
  v22 = v21;

  v23 = sub_24A68761C(v20, v22, &v48);

  *(v18 + 4) = v23;
  *(v18 + 12) = 2160;
  *(v18 + 14) = 1752392040;
  *(v18 + 22) = 2081;
  sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
  v24 = sub_24A82DB84();
  v26 = v25;
  (*(v10 + 8))(v13, v9);
  v27 = sub_24A68761C(v24, v26, &v48);

  *(v18 + 24) = v27;
  _os_log_impl(&dword_24A675000, v15, v16, "FMIPDeviceActionsController: %{public}s sound performed for %{private,mask.hash}s.", v18, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C21E1D0](v19, -1, -1);
  v28 = v18;
  a4 = v45;
  MEMORY[0x24C21E1D0](v28, -1, -1);

  v29 = v46;
  if (!v46)
  {
    goto LABEL_10;
  }

LABEL_5:
  v48 = v29;
  v30 = v29;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if (swift_dynamicCast())
  {
    v31 = v47;
    v48 = v47;
    sub_24A6EF900(&unk_27EF5D150, type metadata accessor for CommandError);
    sub_24A82C7A4();

    if ((v47 - 5) >= 6)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0xA0008070703uLL >> (8 * (v47 - 5));
    }
  }

  else
  {
    v32 = 0;
  }

  LOBYTE(v48) = v32;
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v39 = *(type metadata accessor for FMIPDevice() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_24A8327A0;
  sub_24A68FD9C(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v42 + v41, type metadata accessor for FMIPDevice);
  v37 = v42;
  v38 = v29;
LABEL_13:
  a4(&v48, v37, v38, a2);
}

uint64_t sub_24A6E2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_27EF78C40);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446210;

    v16 = sub_24A6FAE80();
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v35);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPDeviceActionsController: performing online %{public}s sound.", v14, 0xCu);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  sub_24A68FD9C(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, v10, type metadata accessor for FMIPDevice);
  v20 = *(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels);
  v21 = *(a1 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed);
  v22 = type metadata accessor for FMIPPlaySoundRequest();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + qword_27EF78F08) = v20;
  sub_24A68FD9C(v10, v25 + qword_27EF78F00, type metadata accessor for FMIPDevice);
  *(v25 + qword_27EF78F10) = v21;

  v33 = sub_24A6A183C(0x6E756F5379616C70, 0xE900000000000064, 0, 0, 1);
  sub_24A68FFEC(v10, type metadata accessor for FMIPDevice);
  v26 = v4[9];
  v27 = v4[10];
  sub_24A67DF6C(v4 + 6, v26);
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = v34;
  v28[5] = v4;
  v29 = *(v27 + 56);
  v30 = type metadata accessor for FMIPPlaySoundResponse();

  v29(v33, sub_24A6EF7FC, v28, v30, v26, v27);
}

uint64_t sub_24A6E2F10(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, void *, uint64_t), uint64_t a5, void *a6)
{
  v89 = a6;
  v92 = a4;
  v93 = a5;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v88 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v88 - v14;
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_27EF78C40);

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  v19 = os_log_type_enabled(v17, v18);
  v91 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v95 = v21;
    *v20 = 136446466;

    v22 = sub_24A6FAE80();
    v24 = v23;

    v25 = sub_24A68761C(v22, v24, &v95);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v94 = a1;
    sub_24A6BBA94(&qword_27EF5D600, &unk_24A833990);
    v26 = sub_24A82D624();
    v28 = sub_24A68761C(v26, v27, &v95);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPDeviceActionsController: %{public}s sound action response received: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  v29 = 7104878;

  v30 = sub_24A82CD94();
  v31 = sub_24A82D504();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v95 = v33;
    *v32 = 136446466;

    v34 = sub_24A6FAE80();
    v36 = v35;

    v37 = sub_24A68761C(v34, v36, &v95);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    if (a1)
    {
      v38 = a1[7];
      if (v38)
      {
        if (*(v38 + 16))
        {
          v39 = type metadata accessor for FMIPDevice();
          sub_24A67E964(v38 + *(v39 + 112) + ((*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80)), v15, &qword_27EF5D5F8, &qword_24A83DE60);
          v40 = type metadata accessor for FMIPPlaySoundMetadata();
          if ((*(*(v40 - 8) + 48))(v15, 1, v40) != 1)
          {
            v42 = FMIPPlaySoundMetadata.debugDescription.getter();
            v41 = v87;
            sub_24A68FFEC(v15, type metadata accessor for FMIPPlaySoundMetadata);
            goto LABEL_12;
          }

          sub_24A67F378(v15, &qword_27EF5D5F8, &qword_24A83DE60);
        }
      }
    }

    v41 = 0xE300000000000000;
    v42 = 7104878;
LABEL_12:
    v43 = sub_24A68761C(v42, v41, &v95);

    *(v32 + 14) = v43;
    _os_log_impl(&dword_24A675000, v30, v31, "FMIPDeviceActionsController: %{public}s sound metadata:\n%s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v33, -1, -1);
    MEMORY[0x24C21E1D0](v32, -1, -1);

    v29 = 7104878;
    goto LABEL_14;
  }

LABEL_14:

  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v95 = v47;
    *v46 = 136446466;

    v48 = sub_24A6FAE80();
    v50 = v49;

    v51 = sub_24A68761C(v48, v50, &v95);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    if (a1 && (v52 = a1[7]) != 0 && *(v52 + 16))
    {
      v53 = *(type metadata accessor for FMIPDevice() - 8);
      v54 = *(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + 232);

      v29 = MEMORY[0x24C21CB90](v55, &type metadata for FMIPAudioChannel);
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
    }

    v58 = sub_24A68761C(v29, v57, &v95);

    *(v46 + 14) = v58;
    _os_log_impl(&dword_24A675000, v44, v45, "FMIPDeviceActionsController: %{public}s sound channels:\n%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v47, -1, -1);
    MEMORY[0x24C21E1D0](v46, -1, -1);
  }

  v59 = v91;
  if (v91 || !a1)
  {

    v65 = v59;
    v66 = sub_24A82CD94();
    v67 = sub_24A82D504();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v95 = v69;
      *v68 = 136446466;

      v70 = sub_24A6FAE80();
      v72 = v71;

      v73 = sub_24A68761C(v70, v72, &v95);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2082;
      v94 = v59;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v74 = sub_24A82D624();
      v76 = sub_24A68761C(v74, v75, &v95);

      *(v68 + 14) = v76;
      _os_log_impl(&dword_24A675000, v66, v67, "FMIPDeviceActionsController: error received for %{public}s sound request: %{public}s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v69, -1, -1);
      MEMORY[0x24C21E1D0](v68, -1, -1);
    }

    LOBYTE(v95) = 0;
    return v92(&v95, 0, v59, a3);
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
    {
      v60 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
      v61 = type metadata accessor for FMIPDevice();
      v62 = v90;
      sub_24A67E964(a3 + *(v61 + 128) + v60, v90, &unk_27EF5E0B0, &qword_24A8338B0);
      v63 = type metadata accessor for FMIPItemGroup();
      v64 = (*(*(v63 - 8) + 48))(v62, 1, v63) == 1;

      sub_24A67F378(v62, &unk_27EF5E0B0, &qword_24A8338B0);
    }

    else
    {

      v64 = 0;
    }

    sub_24A78F16C(&v95);
    if (((1 << v95) & 0x1FFB) == 0 || v64)
    {
      sub_24A78F16C(&v95);
      v86 = a1[7];

      v92(&v95, v86, 0, a3);
    }

    else
    {
      v78 = v89[9];
      v79 = v89[10];
      v91 = sub_24A67DF6C(v89 + 6, v78);
      v80 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = swift_allocObject();
      v83 = v92;
      v84 = v93;
      v82[2] = v81;
      v82[3] = v83;
      v82[4] = v84;
      v82[5] = a3;
      v85 = *(v79 + 72);

      v85(a3 + v80, sub_24A6EF850, v82, v78, v79);
    }
  }
}

void sub_24A6E395C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v10 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v132 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v121 - v14;
  v131 = type metadata accessor for FMIPDevice();
  v15 = *(v131 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v131);
  v128 = (&v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v121 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v129 = (&v121 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v130 = (&v121 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = (&v121 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v121 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v121 - v31);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v122 = a6;
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v35 = sub_24A82CDC4();
    v36 = sub_24A6797D0(v35, qword_27EF78C40);
    sub_24A68FD9C(a1, v32, type metadata accessor for FMIPDevice);
    v134 = v36;
    v37 = sub_24A82CD94();
    v38 = sub_24A82D504();
    v39 = os_log_type_enabled(v37, v38);
    v126 = v34;
    v123 = a5;
    v124 = a4;
    v121 = v21;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v136 = v41;
      *v40 = 136315138;
      v42 = v15;
      v43 = a1;
      v45 = *v32;
      v44 = v32[1];

      sub_24A68FFEC(v32, type metadata accessor for FMIPDevice);
      v46 = v45;
      a1 = v43;
      v15 = v42;
      v47 = sub_24A68761C(v46, v44, &v136);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_24A675000, v37, v38, "FMIPDeviceActionsController: received callback for monitored device: %s", v40, 0xCu);
      sub_24A6876E8(v41);
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v32, type metadata accessor for FMIPDevice);
    }

    v125 = a1;
    sub_24A68FD9C(a1, v30, type metadata accessor for FMIPDevice);
    v48 = sub_24A82CD94();
    v49 = sub_24A82D504();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v131;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v136 = v53;
      *v52 = 136315138;
      v54 = v127;
      sub_24A67E964(&v30[*(v51 + 112)], v127, &qword_27EF5D5F8, &qword_24A83DE60);
      v55 = type metadata accessor for FMIPPlaySoundMetadata();
      if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
      {
        sub_24A67F378(v54, &qword_27EF5D5F8, &qword_24A83DE60);
        v56 = 0xE300000000000000;
        v57 = 7104878;
      }

      else
      {
        v57 = FMIPPlaySoundMetadata.debugDescription.getter();
        v56 = v58;
        sub_24A68FFEC(v54, type metadata accessor for FMIPPlaySoundMetadata);
      }

      sub_24A68FFEC(v30, type metadata accessor for FMIPDevice);
      v59 = sub_24A68761C(v57, v56, &v136);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_24A675000, v48, v49, "FMIPDeviceActionsController: sound metadata %s", v52, 0xCu);
      sub_24A6876E8(v53);
      MEMORY[0x24C21E1D0](v53, -1, -1);
      MEMORY[0x24C21E1D0](v52, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v30, type metadata accessor for FMIPDevice);
    }

    v60 = v132;
    v61 = v125;
    sub_24A67E964(v125 + *(v51 + 112), v132, &qword_27EF5D5F8, &qword_24A83DE60);
    v62 = type metadata accessor for FMIPPlaySoundMetadata();
    v63 = (*(*(v62 - 8) + 48))(v60, 1, v62);
    v64 = v133;
    if (v63 == 1)
    {
      sub_24A67F378(v60, &qword_27EF5D5F8, &qword_24A83DE60);
      v65 = v128;
      sub_24A68FD9C(v61, v128, type metadata accessor for FMIPDevice);
      v66 = sub_24A82CD94();
      v67 = sub_24A82D504();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v136 = v69;
        *v68 = 136315138;
        v70 = *v65;
        v71 = v65[1];

        sub_24A68FFEC(v65, type metadata accessor for FMIPDevice);
        v72 = sub_24A68761C(v70, v71, &v136);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_24A675000, v66, v67, "FMIPDeviceActionsController: keeping monitored device alive: %s", v68, 0xCu);
        sub_24A6876E8(v69);
        MEMORY[0x24C21E1D0](v69, -1, -1);
        v73 = v68;
LABEL_27:
        MEMORY[0x24C21E1D0](v73, -1, -1);

        return;
      }

LABEL_28:

      sub_24A68FFEC(v65, type metadata accessor for FMIPDevice);
      return;
    }

    v74 = *v60;
    sub_24A68FFEC(v60, type metadata accessor for FMIPPlaySoundMetadata);
    sub_24A68FD9C(v61, v64, type metadata accessor for FMIPDevice);
    v75 = sub_24A82CD94();
    v76 = sub_24A82D504();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v136 = v78;
      *v77 = 136315394;
      v135 = v74;
      v79 = FMIPActionStatus.description.getter();
      v81 = sub_24A68761C(v79, v80, &v136);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = *v64;
      v83 = v64[1];

      sub_24A68FFEC(v64, type metadata accessor for FMIPDevice);
      v84 = sub_24A68761C(v82, v83, &v136);

      *(v77 + 14) = v84;
      _os_log_impl(&dword_24A675000, v75, v76, "FMIPDeviceActionsController: evaluating status: %s\ndevice: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v78, -1, -1);
      MEMORY[0x24C21E1D0](v77, -1, -1);
    }

    else
    {

      sub_24A68FFEC(v64, type metadata accessor for FMIPDevice);
    }

    v85 = v129;
    v86 = v130;
    if (((1 << v74) & 0xBE8) != 0)
    {
      sub_24A68FD9C(v61, v130, type metadata accessor for FMIPDevice);
      v95 = sub_24A82CD94();
      v96 = sub_24A82D504();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v136 = v98;
        *v97 = 136315394;
        v135 = v74;
        v99 = FMIPActionStatus.description.getter();
        v101 = sub_24A68761C(v99, v100, &v136);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v102 = *v86;
        v103 = v86[1];

        sub_24A68FFEC(v86, type metadata accessor for FMIPDevice);
        v104 = sub_24A68761C(v102, v103, &v136);

        *(v97 + 14) = v104;
        _os_log_impl(&dword_24A675000, v95, v96, "FMIPDeviceActionsController: monitoring condition met for status:\n%s device: %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v98, -1, -1);
        MEMORY[0x24C21E1D0](v97, -1, -1);
      }

      else
      {

        sub_24A68FFEC(v86, type metadata accessor for FMIPDevice);
      }

      v114 = v122;
      v115 = v126;
    }

    else
    {
      if (((1 << v74) & 0x3E004) == 0)
      {
        v65 = v121;
        sub_24A68FD9C(v61, v121, type metadata accessor for FMIPDevice);
        v66 = sub_24A82CD94();
        v105 = sub_24A82D504();
        if (os_log_type_enabled(v66, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v136 = v107;
          *v106 = 136446466;
          v135 = v74;
          v108 = FMIPActionStatus.description.getter();
          v110 = sub_24A68761C(v108, v109, &v136);

          *(v106 + 4) = v110;
          *(v106 + 12) = 2080;
          v111 = *v65;
          v112 = v65[1];

          sub_24A68FFEC(v65, type metadata accessor for FMIPDevice);
          v113 = sub_24A68761C(v111, v112, &v136);

          *(v106 + 14) = v113;
          _os_log_impl(&dword_24A675000, v66, v105, "FMIPDeviceActionsController: keeping monitored device status is not met %{public}s for:\n%s", v106, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v107, -1, -1);
          v73 = v106;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      sub_24A68FD9C(v61, v129, type metadata accessor for FMIPDevice);
      v87 = sub_24A82CD94();
      v88 = sub_24A82D504();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v136 = v90;
        *v89 = 136315138;
        v91 = v85;
        v92 = *v85;
        v93 = *(v91 + 8);

        sub_24A68FFEC(v91, type metadata accessor for FMIPDevice);
        v94 = sub_24A68761C(v92, v93, &v136);

        *(v89 + 4) = v94;
        _os_log_impl(&dword_24A675000, v87, v88, "FMIPDeviceActionsController: monitoring complete, action successful for device:\n%s", v89, 0xCu);
        sub_24A6876E8(v90);
        MEMORY[0x24C21E1D0](v90, -1, -1);
        MEMORY[0x24C21E1D0](v89, -1, -1);
      }

      else
      {

        sub_24A68FFEC(v85, type metadata accessor for FMIPDevice);
      }

      v115 = v126;
      v114 = v122;
    }

    v116 = v115[9];
    v117 = v115[10];
    sub_24A67DF6C(v115 + 6, v116);
    (*(v117 + 80))(v61, v116, v117);
    LOBYTE(v136) = v74;
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v118 = *(v15 + 72);
    v119 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_24A8327A0;
    sub_24A68FD9C(v61, v120 + v119, type metadata accessor for FMIPDevice);
    v124(&v136, v120, 0, v114);
  }
}

uint64_t sub_24A6E4768(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v82 = a4;
  v83 = a5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v73 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v77 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v80 = v22;
  MEMORY[0x28223BE20](v19);
  v24 = &v73 - v23;
  v81 = a1;
  if (a2)
  {
    v76 = v6;
    LODWORD(v75) = a3;
    if (a3)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_opt_self();
    v27 = a1;
    v28 = sub_24A82CA64();
    v29 = [v26 playSoundWithBeaconUUID:v28 withContext:v25];

    v30 = qword_27EF5CB98;
    v31 = v29;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = sub_24A82CDC4();
    sub_24A6797D0(v32, qword_27EF78C40);
    v33 = *(v15 + 16);
    v78 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v79 = v33;
    v33(v24, v27, v14);
    v34 = sub_24A82CD94();
    v35 = sub_24A82D504();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v84 = v74;
      *v36 = 141558787;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
      v37 = sub_24A82DB84();
      v38 = v13;
      v40 = v39;
      (*(v15 + 8))(v24, v14);
      v41 = sub_24A68761C(v37, v40, &v84);
      v13 = v38;

      *(v36 + 14) = v41;
      *(v36 + 22) = 1024;
      *(v36 + 24) = v75 & 1;
      *(v36 + 28) = 2112;
      *(v36 + 30) = v31;
      v42 = v73;
      *v73 = v31;
      v31 = v31;
      _os_log_impl(&dword_24A675000, v34, v35, "FMIPDeviceActionsController: Offline play sound %{private,mask.hash}s queueConfirmed: %{BOOL}d command %@.", v36, 0x26u);
      sub_24A67F378(v42, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v42, -1, -1);
      v43 = v74;
      sub_24A6876E8(v74);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v36, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v24, v14);
    }

    v6 = v76;
  }

  else
  {
    v75 = v13;
    v44 = objc_opt_self();
    v45 = a1;
    v46 = sub_24A82CA64();
    v47 = [v44 stopSoundWithBeaconUUID_];

    v48 = qword_27EF5CB98;
    v31 = v47;
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_24A82CDC4();
    sub_24A6797D0(v49, qword_27EF78C40);
    v50 = *(v15 + 16);
    v78 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v79 = v50;
    v50(v21, v45, v14);
    v51 = sub_24A82CD94();
    v52 = sub_24A82D504();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v76 = v6;
      v54 = v53;
      v74 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84 = v55;
      *v54 = 141558531;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
      v56 = sub_24A82DB84();
      v58 = v57;
      (*(v15 + 8))(v21, v14);
      v59 = sub_24A68761C(v56, v58, &v84);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2112;
      *(v54 + 24) = v31;
      v60 = v74;
      *v74 = v31;
      v31 = v31;
      _os_log_impl(&dword_24A675000, v51, v52, "FMIPDeviceActionsController: Offline stop sound %{private,mask.hash}s command %@.", v54, 0x20u);
      sub_24A67F378(v60, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v60, -1, -1);
      sub_24A6876E8(v55);
      MEMORY[0x24C21E1D0](v55, -1, -1);
      v61 = v54;
      v6 = v76;
      MEMORY[0x24C21E1D0](v61, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    v13 = v75;
  }

  v62 = *(v6 + 168);
  v63 = sub_24A82D354();
  (*(*(v63 - 8) + 56))(v13, 1, 1, v63);
  v64 = *(v6 + 32);
  v65 = v77;
  v79(v77, v81, v14);
  v66 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v67 = (v80 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 2) = 0;
  *(v68 + 3) = 0;
  *(v68 + 4) = v64;
  *(v68 + 5) = v31;
  *(v68 + 6) = v62;
  (*(v15 + 32))(&v68[v66], v65, v14);
  v69 = &v68[v67];
  v70 = v83;
  *v69 = v82;
  *(v69 + 1) = v70;
  v71 = v64;

  sub_24A6E5984(0, 0, v13, &unk_24A833958, v68);

  return sub_24A67F378(v13, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v13;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v9 = sub_24A82CAA4();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v8[25] = *(v10 + 64);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A6E501C, 0, 0);
}

uint64_t sub_24A6E501C()
{
  v1 = *(v0 + 152);
  *(v0 + 216) = [*(v0 + 136) executeCommand_];

  return MEMORY[0x2822009F8](sub_24A6E509C, v1, 0);
}

uint64_t sub_24A6E509C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  swift_beginAccess();
  MEMORY[0x24C21CB10](v1);
  if (*((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v2 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  v3 = *(v0 + 216);
  sub_24A82D2C4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24A6E517C, 0, 0);
}

uint64_t sub_24A6E517C()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v30 = v0[22];
  v31 = v0[27];
  v5 = v0[21];
  v35 = v0[20];
  v6 = v0[18];
  v28 = v0[19];
  v29 = v6;
  v34 = *(v3 + 16);
  v34(v1);
  v7 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v33 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v32 = *(v3 + 32);
  v32(v10 + v8, v1, v4);
  v11 = (v10 + v33);
  *v11 = v5;
  v11[1] = v30;
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v10 + v9) = v28;
  *(v10 + v12) = v31;
  v0[6] = sub_24A6EF430;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24A720114;
  v0[5] = &unk_285DC2D18;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];
  v15 = v29;
  v16 = v31;
  v17 = v15;

  v18 = [v16 addFailureBlock_];
  _Block_release(v13);

  v19 = v4;
  (v34)(v1, v35, v4);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v32(v20 + v8, v1, v19);
  v21 = (v20 + v33);
  *v21 = v5;
  v21[1] = v30;
  *(v20 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
  *(v20 + v12) = v16;
  v0[12] = sub_24A6EF54C;
  v0[13] = v20;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24A72011C;
  v0[11] = &unk_285DC2D68;
  v22 = _Block_copy(v0 + 8);
  v23 = v0[13];
  v24 = v16;

  v25 = [v24 addSuccessBlock_];
  _Block_release(v22);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24A6E54E8(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7)
{
  v46 = a4;
  v47 = a6;
  v45 = a5;
  v11 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - v13;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_27EF78C40);
  (*(v15 + 16))(v18, a3, v14);
  v20 = a2;
  v21 = a1;
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = a7;
    v25 = v24;
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = a1;
    v50 = v43;
    *v25 = 138413059;
    *(v25 + 4) = v20;
    *v26 = v20;
    *(v25 + 12) = 2082;
    v27 = v20;
    v28 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v29 = sub_24A82D024();
    v31 = sub_24A68761C(v29, v30, &v50);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v32 = sub_24A82DB84();
    v34 = v33;
    (*(v15 + 8))(v18, v14);
    v35 = sub_24A68761C(v32, v34, &v50);

    *(v25 + 34) = v35;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: Offline sound command %@ failed %{public}s %{private,mask.hash}s.", v25, 0x2Au);
    sub_24A67F378(v26, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v26, -1, -1);
    v36 = v43;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v36, -1, -1);
    v37 = v25;
    a7 = v44;
    MEMORY[0x24C21E1D0](v37, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v46(a1);
  v38 = sub_24A82D354();
  v39 = v48;
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v47;
  v40[5] = a7;

  v41 = a7;
  sub_24A6E5984(0, 0, v39, &unk_24A833980, v40);

  return sub_24A67F378(v39, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_24A6EFBA4, a4, 0);
}

uint64_t sub_24A6E5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24A67E964(a3, v27 - v11, &qword_27EF5CF08, &qword_24A830D80);
  v13 = sub_24A82D354();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24A67F378(v12, &qword_27EF5CF08, &qword_24A830D80);
  }

  else
  {
    sub_24A82D344();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24A82D324();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24A82D044() + 32;
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

uint64_t sub_24A6E5C44(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7)
{
  v44 = a4;
  v45 = a6;
  v43 = a5;
  v10 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_27EF78C40);
  (*(v15 + 16))(v18, a3, v14);
  v20 = a2;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v13;
    v24 = v23;
    v25 = swift_slowAlloc();
    v40 = v25;
    v41 = swift_slowAlloc();
    v46 = v41;
    *v24 = 138412803;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    sub_24A6EF900(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
    v26 = a7;
    v27 = v20;
    v28 = sub_24A82DB84();
    v30 = v29;
    (*(v15 + 8))(v18, v14);
    v31 = sub_24A68761C(v28, v30, &v46);
    a7 = v26;

    *(v24 + 24) = v31;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPDeviceActionsController: Offline sound command %@ succeeded for %{private,mask.hash}s", v24, 0x20u);
    v32 = v40;
    sub_24A67F378(v40, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v32, -1, -1);
    v33 = v41;
    sub_24A6876E8(v41);
    MEMORY[0x24C21E1D0](v33, -1, -1);
    v34 = v24;
    v13 = v42;
    MEMORY[0x24C21E1D0](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v44(0);
  v35 = sub_24A82D354();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v45;
  v36[5] = a7;

  v37 = a7;
  sub_24A6E5984(0, 0, v13, &unk_24A833970, v36);

  return sub_24A67F378(v13, &qword_27EF5CF08, &qword_24A830D80);
}

uint64_t sub_24A6E605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v76 = a2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v74 = &v73 - v15;
  v16 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v73 - v21;
  v78 = a1;
  v23 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v24 = *(v5 + 136);
  v75 = v23;
  sub_24A67E964(v23 + v24, &v73 - v21, &unk_27EF5E0B0, &qword_24A8338B0);
  v25 = type metadata accessor for FMIPItemGroup();
  v26 = *(*(v25 - 8) + 48);
  if (v26(v22, 1, v25) == 1)
  {
    sub_24A67F378(v22, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v27 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A68FFEC(v22, type metadata accessor for FMIPItemGroup);
    if (v27)
    {
      if (qword_27EF5CB98 != -1)
      {
        swift_once();
      }

      v28 = sub_24A82CDC4();
      sub_24A6797D0(v28, qword_27EF78C40);
      v29 = sub_24A82CD94();
      v30 = sub_24A82D504();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v77;
      v33 = v76;
      if (v31)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24A675000, v29, v30, "FMIPDeviceActionsController: Perform Siri play sound-- classic sound on buds", v34, 2u);
        MEMORY[0x24C21E1D0](v34, -1, -1);
      }

      v35 = v78;
      v36 = v33;
      v37 = v32;
      return sub_24A6E2B9C(v35, v36, v37);
    }
  }

  sub_24A67E964(v75 + v24, v20, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v26(v20, 1, v25) == 1)
  {
    sub_24A67F378(v20, &unk_27EF5E0B0, &qword_24A8338B0);
    v38 = v74;
    (*(v9 + 56))(v74, 1, 1, v8);
    v24 = v77;
    v39 = v76;
    goto LABEL_42;
  }

  v40 = *(v20 + 5);

  sub_24A68FFEC(v20, type metadata accessor for FMIPItemGroup);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = 0;
    v39 = 1702060355;
    v79 = v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    while (v42 < *(v40 + 16))
    {
      sub_24A68FD9C(v79 + *(v9 + 72) * v42, v12, type metadata accessor for FMIPItem);
      v24 = &v12[*(v8 + 64)];
      if (*(v24 + 8))
      {
        v43 = *(v24 + 32);
        if (v43 <= 2 && *(v24 + 32) && v43 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v44 = &v12[*(v8 + 56)];
        v45 = *v44 == 1702060355 && *(v44 + 1) == 0xE400000000000000;
        if (v45 || (sub_24A82DC04() & 1) != 0)
        {
LABEL_39:

LABEL_40:

          v38 = v74;
          sub_24A6EF274(v12, v74, type metadata accessor for FMIPItem);
          v51 = 0;
          v24 = v77;
          v39 = v76;
          goto LABEL_41;
        }
      }

      v46 = sub_24A82DC04();

      if (v46)
      {
        goto LABEL_40;
      }

      if (*(v24 + 8))
      {
        v47 = *(v24 + 32);
        if (v47 <= 2 && v47 != 1 && v47 != 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v48 = &v12[*(v8 + 56)];
        v49 = *v48 == 1702060355 && *(v48 + 1) == 0xE400000000000000;
        if (!v49 && (sub_24A82DC04() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v50 = sub_24A82DC04();

      if (v50)
      {
        goto LABEL_40;
      }

      ++v42;
      sub_24A68FFEC(v12, type metadata accessor for FMIPItem);
      if (v41 == v42)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_37:

  v51 = 1;
  v24 = v77;
  v39 = v76;
  v38 = v74;
LABEL_41:
  (*(v9 + 56))(v38, v51, 1, v8);
  if ((*(v9 + 48))(v38, 1, v8) == 1)
  {
LABEL_42:
    sub_24A67F378(v38, &qword_27EF5D018, &qword_24A830E38);
    if (qword_27EF5CB98 == -1)
    {
LABEL_43:
      v52 = sub_24A82CDC4();
      sub_24A6797D0(v52, qword_27EF78C40);
      v53 = sub_24A82CD94();
      v54 = sub_24A82D504();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_24A675000, v53, v54, "FMIPDeviceActionsController: Perform Siri play sound no primary part-- play classic sound on buds", v55, 2u);
        MEMORY[0x24C21E1D0](v55, -1, -1);
      }

      v35 = v78;
      v36 = v39;
      v37 = v24;
      return sub_24A6E2B9C(v35, v36, v37);
    }

LABEL_53:
    swift_once();
    goto LABEL_43;
  }

  sub_24A67F378(v38, &qword_27EF5D018, &qword_24A830E38);
  v57 = v73;
  sub_24A68FD9C(v75, v73, type metadata accessor for FMIPDevice);
  v58 = *(v78 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed);
  v59 = *(v78 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed);
  v60 = type metadata accessor for FMIPPlaySoundDeviceAction(0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  sub_24A82CA24();
  *(v63 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels) = &unk_285DBDBF8;
  *(v63 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed) = v58;
  *(v63 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed) = v59;
  *(v63 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod) = 2;
  *(v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v64 = (v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v65 = 0;
  v65[1] = 0;
  v66 = (v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v66 = 0;
  v66[1] = 0;
  v67 = (v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v68 = 0;
  v68[1] = 0;
  *(v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6EF274(v57, v63 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v69 = sub_24A82CDC4();
  sub_24A6797D0(v69, qword_27EF78C40);
  v70 = sub_24A82CD94();
  v71 = sub_24A82D504();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_24A675000, v70, v71, "FMIPDeviceActionsController: Perform Siri play sound-- ble sound method to primary part", v72, 2u);
    MEMORY[0x24C21E1D0](v72, -1, -1);
  }

  sub_24A6DC2E8(v63, v39, v24);
}

uint64_t sub_24A6E6AB4(uint64_t a1, void (*a2)(char *, uint64_t, void *, uint64_t), uint64_t a3)
{
  v7 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v8 = sub_24A6EF084(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  if (v9)
  {
    sub_24A6E9CEC(a1, v8, v9, a2, a3);
  }

  else
  {
    v11 = type metadata accessor for FMIPLostModeRequest();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    *(swift_allocObject() + qword_27EF78EE0) = a1;
    v14 = (*(v7 + 216) & 0x80) == 0;
    if ((*(v7 + 216) & 0x80) != 0)
    {
      v15 = 0xD000000000000018;
    }

    else
    {
      v15 = 0x6976654474736F6CLL;
    }

    if (v14)
    {
      v16 = 0xEA00000000006563;
    }

    else
    {
      v16 = 0x800000024A845470;
    }

    v17 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
    v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken + 8);

    v19 = sub_24A6A183C(v15, v16, v17, v18, 1);
    v20 = v3[9];
    v21 = v3[10];
    sub_24A67DF6C(v3 + 6, v20);
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = a1;
    v23 = *(v21 + 56);
    v24 = type metadata accessor for FMIPLostModeResponse();

    v23(v19, sub_24A6EF268, v22, v24, v20, v21);
  }
}

uint64_t sub_24A6E6CC0(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D5F0, &unk_24A833940);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: lost mode response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for lost mode request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7CE44C(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E6FC8(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D628, &qword_24A8339B0);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: lock response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for lock request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7F3FD0(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E72D0(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D630, &qword_24A8339B8);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: erase response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for erase request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A77ACC4(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

uint64_t sub_24A6E75D8(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_27EF78C40);

  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    sub_24A6BBA94(&qword_27EF5D638, &unk_24A8339C0);
    v14 = sub_24A82D624();
    v16 = a5;
    v17 = sub_24A68761C(v14, v15, &v31);

    *(v12 + 4) = v17;
    a5 = v16;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPDeviceActionsController: cancel erase response received: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    v18 = v12;
    a3 = v30;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  if (a2 || !a1)
  {
    v21 = a2;
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v26 = sub_24A82D624();
      v28 = a5;
      v29 = sub_24A68761C(v26, v27, &v31);

      *(v24 + 4) = v29;
      a5 = v28;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDeviceActionsController: error received for cancel erase request: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    LOBYTE(v31) = 0;
    return a3(&v31, 0, a2, a5);
  }

  else
  {

    sub_24A7ACCFC(&v31);
    v19 = *(a1 + 56);

    a3(&v31, v19, 0, a5);
  }
}

void sub_24A6E78E0(uint64_t a1, void (*a2)(uint64_t *, void, void, uint64_t), uint64_t a3)
{
  v7 = (a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v8 = *(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 56);
  if (v8)
  {
    v9 = v7[6];
    if (*(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled) == 1)
    {
      v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);
      v11 = *(a1 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);
    }

    else
    {
      v11 = 0;
    }

    v17 = objc_opt_self();

    v18 = [v17 sharedInstance];
    if (v11)
    {
      v19 = sub_24A82CF94();
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_24A82CF94();
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = a1;
    v21[5] = v3;
    v21[6] = v9;
    v21[7] = v8;
    v23[4] = sub_24A6EEFF0;
    v23[5] = v21;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_24A7386AC;
    v23[3] = &unk_285DC2C00;
    v22 = _Block_copy(v23);

    [v18 setPhoneNumber:v19 toAccessoryWithDiscoveryId:v20 completion:v22];
    _Block_release(v22);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_27EF78C40);

    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24A68761C(v7[8], v7[9], v23);
      _os_log_impl(&dword_24A675000, v13, v14, "unable to get discover id for device %s", v15, 0xCu);
      sub_24A6876E8(v16);
      MEMORY[0x24C21E1D0](v16, -1, -1);
      MEMORY[0x24C21E1D0](v15, -1, -1);
    }

    LOBYTE(v23[0]) = 0;
    a2(v23, 0, 0, a1);
  }
}

uint64_t sub_24A6E7BF8(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v11 = sub_24A82CDC4();
    sub_24A6797D0(v11, qword_27EF78C40);
    v12 = sub_24A82CD94();
    v13 = sub_24A82D504();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24A675000, v12, v13, "unable to set contact details in accessory", v14, 2u);
      MEMORY[0x24C21E1D0](v14, -1, -1);
    }

    v33 = 0;
    return a2(&v33, 0, a1, a4);
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_27EF78C40);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "added contact detlail to accessory", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v23 = swift_allocObject();
    v23[2] = a4;
    v23[3] = a6;
    v23[4] = a7;
    v23[5] = a2;
    v23[6] = a3;
    v24 = type metadata accessor for FMIPSavePreferencesRequest();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    *(swift_allocObject() + qword_27EF78D80) = a4;
    swift_retain_n();

    v27 = sub_24A6A183C(0x6665725065766173, 0xE800000000000000, 0, 0, 1);
    v28 = a5[9];
    v29 = a5[10];
    sub_24A67DF6C(a5 + 6, v28);
    v30 = swift_allocObject();
    v30[2] = sub_24A6EF020;
    v30[3] = v23;
    v30[4] = a4;
    v31 = *(v29 + 56);
    v32 = type metadata accessor for FMIPSavePreferencesResponse();

    v31(v27, sub_24A6EF050, v30, v32, v28, v29);
  }
}

uint64_t sub_24A6E7F4C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if (v10 != 2)
  {
    v19 = a2;
    v11 = a3;
    if (*(a5 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled))
    {
      v12 = 0;
    }

    else
    {
      v13 = *(a5 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber);
      v12 = *(a5 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_phoneNumber + 8);
    }

    v14 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v15 = sub_24A82CF94();
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_24A82CF94();
    aBlock[4] = sub_24A6E80FC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A7386AC;
    aBlock[3] = &unk_285DC2C78;
    v17 = _Block_copy(aBlock);
    [v14 setPhoneNumber:v15 toAccessoryWithDiscoveryId:v16 completion:v17];
    _Block_release(v17);

    a3 = v11;
    a2 = v19;
  }

  LOBYTE(aBlock[0]) = v10;
  return a8(aBlock, a2, a3, a5);
}

void sub_24A6E80FC(void *a1)
{
  if (qword_27EF5CB98 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_27EF78C40);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v7 = sub_24A82D624();
    v9 = sub_24A68761C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, oslog, v4, "reset device completed with error %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}