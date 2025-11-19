uint64_t sub_10003220C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v47 = a3;
  v48 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = _s11DeviceModelVMa();
  v9 = sub_10008767C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  v11 = __chkstk_darwin(v9);
  v44 = &v40 - v12;
  v13 = *(v8 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v17 = sub_10008672C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for Feature;
  v50[4] = sub_10000DF68();
  v22 = sub_1000860AC();
  sub_100001FF8(v50);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v40 = v16;
  v41 = a1;
  v42 = v13;
  v43 = v8;
  v23 = v18[13];
  v23(v21, enum case for BetaEnrollment.State.notEnrolled(_:), v17);
  sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v24 = v18[1];
  v24(v21, v17);
  if (v50[0] == v49)
  {
    return 0;
  }

  v23(v21, enum case for BetaEnrollment.State.multiple(_:), v17);
  sub_10008729C();
  sub_10008729C();
  v24(v21, v17);
  if (v50[0] == v49)
  {
    return 0;
  }

  v25 = v47;
  if (v47)
  {
    v50[0] = v47;
    type metadata accessor for BetaSettingsRowViewModel();
    sub_10008739C();
    swift_getWitnessTable();
    v26 = sub_1000875DC();
    if ((v26 & 1) == 0)
    {
      v50[0] = v25;
      __chkstk_darwin(v26);
      *(&v40 - 2) = a4;
      *(&v40 - 1) = a5;
      swift_getKeyPath();
      swift_getWitnessTable();
      v38 = sub_10008722C();

      if ((sub_100012298(v38, v38) & 1) != 0 && *(v38 + 16))
      {
        v39 = *(v38 + 32);

        return v39;
      }

      return 0;
    }
  }

  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 16))(v44, v41, v46);
  v31 = v42;
  v30 = v43;
  if ((*(v42 + 48))(v28, 1, v43) == 1)
  {
    (*(v27 + 8))(v28, v29);
    return 0;
  }

  v32 = v40;
  (*(v31 + 32))(v40, v28, v30);
  v33 = &v32[*(v30 + 48)];
  if (v33[8] != 1)
  {
    v34 = *v33;
    goto LABEL_24;
  }

  v34 = *&v32[*(v30 + 52)];
  if (!v34)
  {
LABEL_24:
    (*(v31 + 8))(v32, v30);
    return v34;
  }

  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_23:
    v34 = 0;
    goto LABEL_24;
  }

  result = sub_10008793C();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_10008781C();
    goto LABEL_15;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_15:
    v37 = v36;
    v34 = sub_10008648C();

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void *sub_1000327E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v82 = a5;
  v78 = a4;
  v84 = a2;
  v85 = a3;
  v79 = a1;
  v7 = *v5;
  v75 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  v83 = *(v75 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v75);
  v74 = v65 - v9;
  v10 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v72 = v65 - v12;
  v86 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v71 = *(v86 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v86);
  v70 = v65 - v14;
  v77 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v77);
  v69 = v65 - v16;
  v68 = sub_10008672C();
  v67 = *(v68 - 8);
  v17 = *(v67 + 64);
  __chkstk_darwin(v68);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  __chkstk_darwin(v20);
  v23 = v65 - v22;
  v24 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v65 - v27;
  v29 = sub_1000864CC();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 40) = 2;
  v33 = qword_1000AE7E8;
  (*(v34 + 104))(v32, enum case for BetaEnrollment.Availability.unavailable(_:));
  v66 = *(v7 + 80);
  v35 = *(v7 + 88);
  sub_100028F20(v32, v36, v37, &type metadata accessor for BetaEnrollment.Availability);
  v65[0] = v25;
  v38 = *(v25 + 32);
  v65[1] = v24;
  v38(v6 + v33, v28, v24);
  v39 = qword_1000AE7F0;
  v89 = 0;
  v90 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  v40 = *(v73 + 32);
  v65[2] = v20;
  v40(v6 + v39, v23, v20);
  v41 = qword_1000AE7F8;
  v42 = v67;
  v43 = v68;
  (*(v67 + 104))(v19, enum case for BetaEnrollment.State.notEnrolled(_:), v68);
  v44 = v69;
  sub_100028F20(v19, v45, v46, &type metadata accessor for BetaEnrollment.State);
  v47 = v66;
  (*(v76 + 32))(v6 + v41, v44, v77);
  v48 = qword_1000AE800;
  v89 = 0;
  v90 = 0xE000000000000000;
  v49 = v70;
  sub_1000867AC();
  v50 = v71;
  (*(v71 + 32))(v6 + v48, v49, v86);
  v51 = qword_1000AE808;
  v89 = 0;
  sub_100001EEC(&qword_1000AE8C8, &unk_10008A5A0);
  v52 = v72;
  sub_1000867AC();
  (*(v80 + 32))(v6 + v51, v52, v81);
  v53 = qword_1000AE810;
  v89 = 0;
  LOBYTE(v90) = 1;
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  v54 = v74;
  sub_1000867AC();
  (*(v83 + 32))(v6 + v53, v54);
  (*(v42 + 56))(v6 + *(*v6 + 192), 1, 1, v43);
  v55 = v78;
  v89 = v78;
  v87 = v47;
  v88 = v35;
  type metadata accessor for BetaSettingsRowViewModel();
  sub_10008739C();
  swift_getWitnessTable();
  v56 = sub_10008722C();
  LOBYTE(v54) = v79 & 1;
  *(v6 + 40) = v79 & 1;
  v6[2] = v55;
  *(v6 + qword_1000AE818) = v82;
  v58 = v84;
  v57 = v85;
  v6[3] = v84;
  v6[4] = v57;
  swift_unknownObjectRetain();

  v59 = sub_100028918(v56, v54);
  v61 = v60;

  v6[6] = v59;
  v6[7] = v61;
  swift_beginAccess();
  (*(v50 + 8))(v6 + v48, v86);
  v91 = v58;
  v92 = v57;
  sub_1000867AC();
  swift_endAccess();
  v62 = *(*v6 + 184);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v63 = _s11DeviceModelVMa();
  (*(*(v63 - 8) + 56))(v6 + v62, 1, 1, v63);
  sub_100029FA4();
  return v6;
}

void *sub_100033270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = type metadata accessor for BetaSettingsRowViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  return sub_1000327E4(a1 & 1, a2, a3, a4, a5);
}

double sub_1000332E4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000332FC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100033314(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  sub_100030578(*a1);
  return sub_100029B08(v2);
}

uint64_t sub_100033360(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000333A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100033444@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100029904(a1, a2);
}

void *sub_100033460(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v90 = a1;
  v79 = *v2;
  v3 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  __chkstk_darwin(v3);
  v87 = &v72 - v5;
  v6 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  __chkstk_darwin(v6);
  v84 = &v72 - v8;
  v9 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  __chkstk_darwin(v9);
  v80 = &v72 - v11;
  v12 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v76 = &v72 - v14;
  v15 = sub_10008672C();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  __chkstk_darwin(v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v24 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v72 - v27;
  v29 = sub_1000864CC();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 2;
  v33 = qword_1000AE7E8;
  (*(v34 + 104))(v32, enum case for BetaEnrollment.Availability.unavailable(_:));
  v75 = *(v79 + 80);
  v79 = *(v79 + 88);
  sub_100028F20(v32, v35, v36, &type metadata accessor for BetaEnrollment.Availability);
  v37 = v28;
  v38 = v81;
  (*(v25 + 32))(v2 + v33, v37, v24);
  v39 = qword_1000AE7F0;
  v91 = 0;
  v92 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  (*(v20 + 32))(v2 + v39, v23, v19);
  v40 = qword_1000AE7F8;
  v42 = v73;
  v41 = v74;
  (*(v73 + 104))(v18, enum case for BetaEnrollment.State.notEnrolled(_:), v74);
  v43 = v76;
  sub_100028F20(v18, v44, v45, &type metadata accessor for BetaEnrollment.State);
  (*(v77 + 32))(v2 + v40, v43, v78);
  v46 = qword_1000AE800;
  v91 = 0;
  v92 = 0xE000000000000000;
  v47 = v80;
  sub_1000867AC();
  (*(v82 + 32))(v2 + v46, v47, v83);
  v48 = qword_1000AE808;
  v91 = 0;
  sub_100001EEC(&qword_1000AE8C8, &unk_10008A5A0);
  v49 = v84;
  sub_1000867AC();
  (*(v85 + 32))(v2 + v48, v49, v86);
  v50 = qword_1000AE810;
  v91 = 0;
  LOBYTE(v92) = 1;
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  v51 = v87;
  sub_1000867AC();
  (*(v88 + 32))(v2 + v50, v51, v89);
  (*(v42 + 56))(v2 + *(*v2 + 192), 1, 1, v41);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v52 = _s11DeviceModelVMa();
  v53 = v90;
  v54 = (v90 + *(v52 + 40));
  v55 = v54[6];
  v56 = v54[7];

  v57 = sub_1000676B0(v55, v56);
  type metadata accessor for BetaSettingsRowViewModel();
  v2[2] = sub_10008732C();
  *(v2 + qword_1000AE818) = v38;
  v58 = *(*v2 + 184);
  v59 = *(v52 - 8);
  (*(v59 + 16))(v2 + v58, v53, v52);
  (*(v59 + 56))(v2 + v58, 0, 1, v52);
  v60 = v54[5];
  v2[3] = v54[4];
  v2[4] = v60;
  if (v57 <= 0xFDu)
  {
    if ((v57 & 0x80u) == 0)
    {
      v63 = 17;
    }

    else
    {
      v63 = 18;
    }

    if ((v57 & 0x80u) == 0)
    {
      v64 = 15;
    }

    else
    {
      v64 = 16;
    }

    if (v57)
    {
      v65 = v64;
    }

    else
    {
      v65 = v63;
    }

    swift_unknownObjectRetain();

    v61 = &off_1000A62A8;
    v62 = v65;
  }

  else
  {
    swift_unknownObjectRetain();

    v61 = &off_1000A66E8;
    v62 = 15;
  }

  v2[6] = sub_10000F8C4(v61, v62);
  v2[7] = v66;
  if (v54[1])
  {
    v67 = 2;
    v68 = 3;
LABEL_17:
    v69 = v54[v68];
    v70 = v54[v67];
    goto LABEL_18;
  }

  if (v54[9])
  {
    v67 = 10;
    v68 = 11;
    goto LABEL_17;
  }

LABEL_18:

  sub_1000293BC();
  sub_100029FA4();
  return v2;
}

void *sub_100033D18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for BetaSettingsRowViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_100033460(a1, a2);
}

uint64_t sub_100033D6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100033DA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_100033DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_10002E7B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100033EB4(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = sub_10002968C() != v2;
  return (v5 | v4) & 1;
}

__n128 sub_100033F6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100033F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_10002968C();
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = result;
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100034048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_10002968C();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_10003407C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100029744();
}

uint64_t sub_1000340D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000294C8();
  v5 = _swiftEmptyArrayStorage;
  if (result)
  {
    v5 = result;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100034124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100028D98();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100034150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100028E4C();
}

uint64_t sub_10003419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003420C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000294C8();
  *a2 = result;
  return result;
}

uint64_t sub_100034238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10002957C();
}

uint64_t sub_100034270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100029308();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003429C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000293BC();
}

uint64_t getEnumTagSinglePayload for Entitlement(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Entitlement(_WORD *result, int a2, int a3)
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

unint64_t sub_100034424()
{
  result = qword_1000AE9E8;
  if (!qword_1000AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E8);
  }

  return result;
}

Swift::Int sub_100034480()
{
  sub_100087ADC();
  sub_100087AEC(0);
  return sub_100087AFC();
}

Swift::Int sub_1000344EC()
{
  sub_100087ADC();
  sub_100087AEC(0);
  return sub_100087AFC();
}

void *sub_1000345C4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(sub_100001EEC(a3, a4) - 8);
  v10 = sub_100036C10(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1, a3, a4);
  sub_100023AA8();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1000346B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v14 - v9 + 16;
  v11 = *(v3 + 112);
  v16 = a1;

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14[8] = 0;
  swift_beginAccess();
  sub_10006C118(v14, v15);
  swift_endAccess();
}

uint64_t sub_100034868()
{
  *(v0 + 24) = *(*(v0 + 16) + 112);

  return _swift_task_switch(sub_1000348DC, 0, 0);
}

uint64_t sub_1000348DC()
{
  v1 = *(v0 + 24);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    v2 = *(v0 + 24);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100034954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v14 - v9 + 16;
  v11 = *(v3 + 112);
  v15 = a1;

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  swift_beginAccess();
  sub_10006C438(v14, v16);
  sub_100036E90(v14);
  sub_10000649C(v16, &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();
}

uint64_t sub_100034AF4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_10008609C();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100034C44, v2, 0);
}

uint64_t sub_100034C70(unint64_t a1)
{
  v3 = *(v1 + 160) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 168) = v6;
  *v6 = v1;
  v6[1] = sub_100034D58;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100034D58()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[18];
    v5 = v2[19];
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {
    v12 = v2[10];

    return _swift_task_switch(sub_100034ED0, v12, 0);
  }
}

unint64_t sub_100034ED0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v47 = v0[11];
    v48 = v0[12];
    v56 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = (v3 + 8);
    v49 = v5;
    v55 = (v3 + 8);
    while (1)
    {
      v7 = v0[10];
      v56(v0[19], v4, v0[16]);
      v8 = *(v7 + 112);
      swift_beginAccess();
      v9 = *(v8 + 24);
      if (!*(v9 + 16))
      {
        goto LABEL_4;
      }

      v10 = v0[19];

      v11 = sub_10006E66C(v10);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v0[15];
      v52 = v0[16];
      v53 = v0[19];
      v14 = v0[14];
      v54 = v0[13];
      v15 = v0[10];
      v16 = v0[8];
      v50 = *(v48 + 72);
      v51 = v0[18];
      sub_10000E4A4(*(v9 + 56) + v50 * v11, v14, &qword_1000AEA58, qword_10008D310);

      sub_100036EF8(v14, v13, &qword_1000AEA58, qword_10008D310);
      v17 = *(v47 + 36);
      v18 = sub_10008672C();
      (*(*(v18 - 8) + 24))(v13 + v17, v16, v18);
      v19 = *(v15 + 112);
      v56(v51, v53, v52);
      swift_beginAccess();
      sub_10000E4A4(v13, v54, &qword_1000AEA58, qword_10008D310);

      v20 = *(v19 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v19 + 24);
      *(v19 + 24) = 0x8000000000000000;
      result = sub_10006E66C(v51);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v29 = v24;
      if (v22[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = result;
          sub_100073944();
          result = v43;
        }
      }

      else
      {
        v30 = v0[18];
        sub_100070D14(v28, isUniquelyReferenced_nonNull_native);
        result = sub_10006E66C(v30);
        if ((v29 & 1) != (v31 & 1))
        {
          v46 = v0[16];

          return sub_100087A5C();
        }
      }

      v32 = v0[18];
      v33 = v0[16];
      v34 = v0[13];
      if (v29)
      {
        sub_100036B8C(v34, v22[7] + result * v50);
        v35 = *v55;
        (*v55)(v32, v33);
      }

      else
      {
        v22[(result >> 6) + 8] |= 1 << result;
        v36 = result;
        v56(v22[6] + result * v49, v32, v33);
        sub_100036EF8(v34, v22[7] + v36 * v50, &qword_1000AEA58, qword_10008D310);
        v35 = *v55;
        result = (*v55)(v32, v33);
        v37 = v22[2];
        v27 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v27)
        {
          goto LABEL_26;
        }

        v22[2] = v38;
      }

      v39 = v0[19];
      v41 = v0[15];
      v40 = v0[16];
      v42 = *(v19 + 24);
      *(v19 + 24) = v22;

      swift_endAccess();

      v35(v39, v40);
      sub_10000649C(v41, &qword_1000AEA58, qword_10008D310);
      v5 = v49;
      v6 = v55;
LABEL_5:
      v4 += v5;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    (*v6)(v0[19], v0[16]);
    goto LABEL_5;
  }

LABEL_19:
  v44 = swift_task_alloc();
  v0[22] = v44;
  *v44 = v0;
  v44[1] = sub_100037330;
  v45 = v0[10];

  return sub_100035360();
}

uint64_t sub_100035360()
{
  v1[10] = v0;
  v2 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003542C, v0, 0);
}

void *sub_10003542C()
{
  v27 = v0;
  v1 = *(*(v0 + 80) + 112);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 96);
    v5 = sub_10006F300(*(v2 + 16), 0);
    v6 = sub_100036C10(&v26, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2, &qword_1000AEA58, qword_10008D310);

    result = sub_100023AA8();
    if (v6 != v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  *(v0 + 112) = v5;
  v8 = *(v0 + 80);
  result = sub_100036550();
  *(v0 + 120) = result;
  v9 = result[2];
  *(v0 + 128) = v9;
  if (v9)
  {
    v10 = *(v0 + 96);
    v11 = v5[2];
    *(v0 + 136) = v11;
    *(v0 + 144) = 0;
    if (result[2])
    {
      *(v0 + 152) = result[4];
      v25 = result[5];
      if (v11)
      {
        v12 = *(v0 + 112);
        *(v0 + 72) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v11, 0);
        v13 = 0;
        v14 = *(v0 + 72);
        v15 = v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v16 = *(v10 + 72);
        do
        {
          v17 = *(v0 + 88);
          sub_10000E4A4(v15, *(v0 + 104), &qword_1000AEA58, qword_10008D310);
          swift_dynamicCast();
          *(v0 + 72) = v14;
          v19 = v14[2];
          v18 = v14[3];
          if (v19 >= v18 >> 1)
          {
            sub_10006F7AC((v18 > 1), v19 + 1, 1);
            v14 = *(v0 + 72);
          }

          v20 = *(v0 + 136);
          ++v13;
          v14[2] = v19 + 1;
          sub_100036E80((v0 + 16), &v14[4 * v19 + 4]);
          v15 += v16;
        }

        while (v13 != v20);
      }

      else
      {
        swift_unknownObjectRetain();
        v14 = _swiftEmptyArrayStorage;
      }

      *(v0 + 160) = v14;
      ObjectType = swift_getObjectType();
      v24 = swift_task_alloc();
      *(v0 + 168) = v24;
      *v24 = v0;
      v24[1] = sub_100035750;

      return sub_100057AD8(v14, ObjectType, v25);
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100035750()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_10003587C, v3, 0);
}

uint64_t sub_10003587C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  result = swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);

    v7 = *(v0 + 104);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v9 = *(v0 + 144) + 1;
    *(v0 + 144) = v9;
    v10 = *(v0 + 120);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 136);
      v12 = v10 + 16 * v9;
      *(v0 + 152) = *(v12 + 32);
      v25 = *(v12 + 40);
      if (v11)
      {
        v13 = *(v0 + 112);
        v14 = *(v0 + 96);
        *(v0 + 72) = _swiftEmptyArrayStorage;
        swift_unknownObjectRetain();
        sub_10006F7AC(0, v11, 0);
        v15 = 0;
        v16 = *(v0 + 72);
        v17 = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v18 = *(v14 + 72);
        do
        {
          v19 = *(v0 + 88);
          sub_10000E4A4(v17, *(v0 + 104), &qword_1000AEA58, qword_10008D310);
          swift_dynamicCast();
          *(v0 + 72) = v16;
          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            sub_10006F7AC((v20 > 1), v21 + 1, 1);
            v16 = *(v0 + 72);
          }

          v22 = *(v0 + 136);
          ++v15;
          v16[2] = v21 + 1;
          sub_100036E80((v0 + 16), &v16[4 * v21 + 4]);
          v17 += v18;
        }

        while (v15 != v22);
      }

      else
      {
        swift_unknownObjectRetain();
        v16 = _swiftEmptyArrayStorage;
      }

      *(v0 + 160) = v16;
      ObjectType = swift_getObjectType();
      v24 = swift_task_alloc();
      *(v0 + 168) = v24;
      *v24 = v0;
      v24[1] = sub_100035750;

      return sub_100057AD8(v16, ObjectType, v25);
    }
  }

  return result;
}

uint64_t sub_100035AF4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_10008609C();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100035C44, v2, 0);
}

uint64_t sub_100035C70(unint64_t a1)
{
  v3 = *(v1 + 160) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 168) = v6;
  *v6 = v1;
  v6[1] = sub_100035D58;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100035D58()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[18];
    v5 = v2[19];
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {
    v12 = v2[10];

    return _swift_task_switch(sub_100035ED0, v12, 0);
  }
}

unint64_t sub_100035ED0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v51 = v0[11];
    v52 = v0[12];
    v4 = *(v3 + 16);
    v3 += 16;
    v60 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *(v3 + 56);
    v50 = enum case for BetaEnrollment.State.enrolled(_:);
    v7 = (v3 - 8);
    v53 = v6;
    v59 = (v3 - 8);
    while (1)
    {
      v8 = v0[10];
      v60(v0[19], v5, v0[16]);
      v9 = *(v8 + 112);
      swift_beginAccess();
      v10 = *(v9 + 24);
      if (!*(v10 + 16))
      {
        goto LABEL_4;
      }

      v11 = v0[19];

      v12 = sub_10006E66C(v11);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v0[18];
      v15 = v0[15];
      v56 = v0[16];
      v57 = v0[19];
      v16 = v0[14];
      v58 = v0[13];
      v17 = v0[8];
      v54 = *(v52 + 72);
      v55 = v0[10];
      sub_10000E4A4(*(v10 + 56) + v54 * v12, v16, &qword_1000AEA58, qword_10008D310);

      sub_100036EF8(v16, v15, &qword_1000AEA58, qword_10008D310);
      v18 = *(v51 + 36);
      v19 = sub_10008672C();
      v20 = *(v19 - 8);
      (*(v20 + 8))(v15 + v18, v19);
      (*(v20 + 104))(v15 + v18, v50, v19);
      v21 = v15 + *(v51 + 48);
      *v21 = v17;
      *(v21 + 8) = 0;
      v22 = *(v55 + 112);
      v60(v14, v57, v56);
      swift_beginAccess();
      sub_10000E4A4(v15, v58, &qword_1000AEA58, qword_10008D310);

      v23 = *(v22 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v22 + 24);
      *(v22 + 24) = 0x8000000000000000;
      result = sub_10006E66C(v14);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v32 = v27;
      if (v25[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = result;
          sub_100073944();
          result = v46;
        }
      }

      else
      {
        v33 = v0[18];
        sub_100070D14(v31, isUniquelyReferenced_nonNull_native);
        result = sub_10006E66C(v33);
        if ((v32 & 1) != (v34 & 1))
        {
          v49 = v0[16];

          return sub_100087A5C();
        }
      }

      v35 = v0[18];
      v36 = v0[16];
      v37 = v0[13];
      if (v32)
      {
        sub_100036B8C(v37, v25[7] + result * v54);
        v38 = *v59;
        (*v59)(v35, v36);
      }

      else
      {
        v25[(result >> 6) + 8] |= 1 << result;
        v39 = result;
        v60(v25[6] + result * v53, v35, v36);
        sub_100036EF8(v37, v25[7] + v39 * v54, &qword_1000AEA58, qword_10008D310);
        v38 = *v59;
        result = (*v59)(v35, v36);
        v40 = v25[2];
        v30 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v30)
        {
          goto LABEL_26;
        }

        v25[2] = v41;
      }

      v42 = v0[19];
      v44 = v0[15];
      v43 = v0[16];
      v45 = *(v22 + 24);
      *(v22 + 24) = v25;

      swift_endAccess();

      v38(v42, v43);
      sub_10000649C(v44, &qword_1000AEA58, qword_10008D310);
      v6 = v53;
      v7 = v59;
LABEL_5:
      v5 += v6;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    (*v7)(v0[19], v0[16]);
    goto LABEL_5;
  }

LABEL_19:
  v47 = swift_task_alloc();
  v0[22] = v47;
  *v47 = v0;
  v47[1] = sub_1000363BC;
  v48 = v0[10];

  return sub_100035360();
}

uint64_t sub_1000363BC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 104);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100036550()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_10000E4A4(*(v2 + 56) + ((v8 << 9) | (8 * v11)), v20, &qword_1000AEA60, &qword_10008C930);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10000649C(v20, &qword_1000AEA60, &qword_10008C930);
    if (Strong)
    {
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v19 = v13;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006F100(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v15 = v9[2];
        v14 = v9[3];
        v16 = v15 + 1;
        v17 = v19;
        if (v15 >= v14 >> 1)
        {
          result = sub_10006F100((v14 > 1), v15 + 1, 1, v9);
          v16 = v15 + 1;
          v17 = v19;
          v9 = result;
        }

        v9[2] = v16;
        v18 = &v9[2 * v15];
        v18[4] = Strong;
        v18[5] = v17;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100036740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100036764, v3, 0);
}

uint64_t sub_100036764()
{
  v1 = v0[5];
  sub_1000346B0(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000367E8()
{
  v1 = *(*(v0 + 40) + 112);
  swift_beginAccess();
  v2 = *(v1 + 24);

  v4 = sub_1000345C4(v3, sub_10006F300, &qword_1000AEA58, qword_10008D310);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100036890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_100034848();
}

uint64_t sub_10003691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100036940, v3, 0);
}

uint64_t sub_100036940()
{
  v1 = v0[5];
  sub_100034954(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000369A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_100034AF4(a1, a2);
}

uint64_t sub_100036A48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_100035AF4(a1, a2);
}

uint64_t sub_100036AEC(uint64_t a1)
{
  result = sub_100036B44(&qword_1000AEA50, type metadata accessor for NetworkManagerMock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100036B44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100036B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v43 = a5;
  v44 = a6;
  v10 = sub_100001EEC(a5, a6);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v42 = &v38 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v25 = 0;
    a3 = 0;
LABEL_26:
    *a1 = a4;
    *(a1 + 8) = v16;
    *(a1 + 16) = ~v17;
    *(a1 + 24) = v25;
    *(a1 + 32) = v19;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = a1;
    v41 = a3;
    result = 0;
    v20 = 0;
    v39 = v17;
    v21 = (63 - v17) >> 6;
    a1 = 1;
    while (v19)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v20;
      v26 = a4;
      v27 = *(a4 + 56);
      v28 = v45;
      v29 = *(v46 + 72);
      v30 = v43;
      v31 = v44;
      sub_10000E4A4(v27 + v29 * (v24 | (v20 << 6)), v45, v43, v44);
      v32 = v28;
      v33 = v42;
      sub_100036EF8(v32, v42, v30, v31);
      v34 = v33;
      v35 = v47;
      sub_100036EF8(v34, v47, v30, v31);
      if (a1 == v41)
      {
        a1 = v40;
        a3 = v41;
        a4 = v26;
        goto LABEL_24;
      }

      a2 = v35 + v29;
      result = a1;
      v36 = __OFADD__(a1++, 1);
      a4 = v26;
      v20 = v25;
      if (v36)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v20;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v23 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v47 = a2;
        v20 = v23;
        goto LABEL_15;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v37 = v20 + 1;
    }

    else
    {
      v37 = v21;
    }

    v25 = v37 - 1;
    a3 = result;
    a1 = v40;
LABEL_24:
    v17 = v39;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

_OWORD *sub_100036E80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100036EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100036F60(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1000876EC();
  sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_1000372CC();
  result = sub_10008753C();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_10008775C())
      {
        goto LABEL_30;
      }

      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_100037174(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

unint64_t sub_1000372CC()
{
  result = qword_1000AE5C0;
  if (!qword_1000AE5C0)
  {
    sub_100003200(&qword_1000AE5B8, &unk_10008DD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE5C0);
  }

  return result;
}

uint64_t sub_100037334(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v6 = a1;
  swift_errorRetain();
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v4, v7);
    sub_100001FB4(v7, v7[3]);
    v2 = sub_1000879CC();

    sub_100001FF8(v7);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_10000649C(v4, &qword_1000AEE00, &qword_100088748);
    v7[0] = a1;
    return sub_10008716C();
  }
}

uint64_t sub_100037450(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  return sub_10008690C();
}

uint64_t sub_10003746C()
{
  sub_100001EEC(qword_1000AEA80, &qword_10008AB98);
  sub_100086E7C();
  return v1;
}

uint64_t sub_1000374F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1000ADB68 != -1)
  {
    swift_once();
  }

  sub_100086CBC();
  v4 = *(v2 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(v5 + 96);
  swift_unknownObjectRetain();
  v7(v6, v5);
  swift_unknownObjectRelease();
  v9 = sub_100086CBC();
  __chkstk_darwin(v9);
  sub_100001EEC(&qword_1000AEBE8, &qword_10008AE98);
  sub_100006454(&qword_1000AEBF0, &qword_1000AEBE8, &qword_10008AE98);
  return sub_100086FDC();
}

uint64_t sub_100037728@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v7 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v73 = v69 - v9;
  v80 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  v11 = __chkstk_darwin(v80);
  v77 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = v69 - v13;
  v76 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v75 = *(v76 - 8);
  v14 = *(v75 + 64);
  v15 = __chkstk_darwin(v76);
  v81 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = v69 - v17;
  v18 = sub_100001EEC(&qword_1000AEBF8, &qword_10008AEA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v85 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v69 - v22;
  v24 = sub_100001EEC(&qword_1000AEC00, &qword_10008AEA8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v84 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v69 - v28;
  *v29 = sub_100086A9C();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = *(sub_100001EEC(&qword_1000AEC08, &qword_10008AEB0) + 44);
  v82 = v29;
  sub_100038188(a1, a3, &v29[v30]);
  *v23 = sub_100086A9C();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v31 = *(sub_100001EEC(&qword_1000AEC10, &qword_10008AEB8) + 44);
  v83 = v23;
  sub_100038560(a1, a3, &v23[v31]);
  if (qword_1000ADB78 != -1)
  {
    swift_once();
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  v33 = *(a1 + 144);
  *(v32 + 160) = *(a1 + 128);
  *(v32 + 176) = v33;
  *(v32 + 192) = *(a1 + 160);
  v34 = *(a1 + 80);
  *(v32 + 96) = *(a1 + 64);
  *(v32 + 112) = v34;
  v35 = *(a1 + 112);
  *(v32 + 128) = *(a1 + 96);
  *(v32 + 144) = v35;
  v36 = *(a1 + 16);
  *(v32 + 32) = *a1;
  *(v32 + 48) = v36;
  v37 = *(a1 + 48);
  *(v32 + 64) = *(a1 + 32);
  *(v32 + 80) = v37;

  v38 = type metadata accessor for CarrySettingsDetailView();
  v39 = *(v38 - 8);
  v74 = a3;
  v40 = *(v39 + 16);
  v40(&v89, a1, v38);
  sub_100086EEC();
  if (qword_1000ADBC0 != -1)
  {
    swift_once();
  }

  v71 = qword_1000B3AF8;

  v41 = v73;
  sub_10008683C();
  v42 = sub_10008685C();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = swift_allocObject();
  *(v43 + 16) = a2;
  v72 = a2;
  *(v43 + 24) = v74;
  v44 = *(a1 + 144);
  *(v43 + 160) = *(a1 + 128);
  *(v43 + 176) = v44;
  *(v43 + 192) = *(a1 + 160);
  v45 = *(a1 + 80);
  *(v43 + 96) = *(a1 + 64);
  *(v43 + 112) = v45;
  v46 = *(a1 + 112);
  *(v43 + 128) = *(a1 + 96);
  *(v43 + 144) = v46;
  v47 = *(a1 + 16);
  *(v43 + 32) = *a1;
  *(v43 + 48) = v47;
  v48 = *(a1 + 48);
  *(v43 + 64) = *(a1 + 32);
  *(v43 + 80) = v48;
  v40(&v89, a1, v38);
  v49 = v81;
  sub_100086EDC();
  v73 = sub_100086AFC();
  LODWORD(v71) = v50;
  v88 = *(a1 + 32);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v51 = sub_100086EAC();
  v70 = v69;
  v69[3] = v90;
  v52 = __chkstk_darwin(v51);
  v53 = v49;
  __chkstk_darwin(v52);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  v54 = v76;
  sub_100086DBC();

  v55 = v75;
  v56 = *(v75 + 8);
  v73 = (v75 + 8);
  v74 = v56;
  v57 = v53;
  v56(v53, v54);
  v58 = v84;
  sub_10000E4A4(v82, v84, &qword_1000AEC00, &qword_10008AEA8);
  v59 = v85;
  sub_10000E4A4(v83, v85, &qword_1000AEBF8, &qword_10008AEA0);
  v75 = *(v55 + 16);
  (v75)(v53, v86, v54);
  v60 = v78;
  v72 = *(v78 + 16);
  v61 = v77;
  v62 = v80;
  v72(v77, v87, v80);
  v63 = v58;
  v64 = v79;
  sub_10000E4A4(v63, v79, &qword_1000AEC00, &qword_10008AEA8);
  v65 = sub_100001EEC(&qword_1000AEC18, &qword_10008AEC0);
  sub_10000E4A4(v59, v64 + v65[12], &qword_1000AEBF8, &qword_10008AEA0);
  (v75)(v64 + v65[16], v57, v54);
  v72((v64 + v65[20]), v61, v62);
  v66 = *(v60 + 8);
  v66(v87, v62);
  v67 = v74;
  v74(v86, v54);
  sub_10000649C(v83, &qword_1000AEBF8, &qword_10008AEA0);
  sub_10000649C(v82, &qword_1000AEC00, &qword_10008AEA8);
  v66(v61, v62);
  v67(v81, v54);
  sub_10000649C(v85, &qword_1000AEBF8, &qword_10008AEA0);
  return sub_10000649C(v84, &qword_1000AEC00, &qword_10008AEA8);
}

uint64_t sub_100038188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v41 = sub_100001EEC(&qword_1000AEC38, &qword_10008AF98);
  v6 = *(*(v41 - 8) + 64);
  v7 = __chkstk_darwin(v41);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  if (qword_1000ADAE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100086CBC();
  v37 = v12;
  v38 = v11;
  v39 = v13;
  v40 = v14;
  sub_100086AFC();
  v15 = type metadata accessor for CarrySettingsDetailView();
  v17 = *a1;
  v16 = a1[1];
  v18 = *(v15 + 16);
  v19 = *(*(v15 + 24) + 8);
  v20 = sub_10008690C();
  __chkstk_darwin(v20);
  swift_getKeyPath();
  v21 = *(a2 + 8);
  sub_10008691C();

  swift_unknownObjectRelease();
  sub_10008704C();
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(sub_100001EEC(&qword_1000AEC40, &qword_10008AFD8) + 36)];
  *v23 = KeyPath;
  v23[8] = 2;
  v24 = sub_100086E2C();
  v25 = swift_getKeyPath();
  v26 = &v10[*(sub_100001EEC(&qword_1000AEC48, &qword_10008AFE0) + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  v29 = v42;
  v30 = &v10[*(v41 + 36)];
  *v30 = v27;
  v30[1] = sub_10003E750;
  v30[2] = v28;
  sub_10000E4A4(v10, v29, &qword_1000AEC38, &qword_10008AF98);
  v32 = v37;
  v31 = v38;
  *a3 = v38;
  *(a3 + 8) = v32;
  v33 = v39 & 1;
  *(a3 + 16) = v39 & 1;
  *(a3 + 24) = v40;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v34 = sub_100001EEC(&qword_1000AEC50, &qword_10008AFE8);
  sub_10000E4A4(v29, a3 + *(v34 + 64), &qword_1000AEC38, &qword_10008AF98);
  sub_100006568(v31, v32, v33);

  sub_10000649C(v10, &qword_1000AEC38, &qword_10008AF98);
  sub_10000649C(v29, &qword_1000AEC38, &qword_10008AF98);
  sub_100006550(v31, v32, v33);
}

uint64_t sub_100038560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = sub_100001EEC(&qword_1000AEC20, &qword_10008AEE8);
  v6 = *(*(v38 - 8) + 64);
  v7 = __chkstk_darwin(v38);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  if (qword_1000ADAF8 != -1)
  {
    swift_once();
  }

  v11 = sub_100086CBC();
  v34 = v12;
  v35 = v11;
  v36 = v13;
  v37 = v14;
  sub_100086AFC();
  v15 = type metadata accessor for CarrySettingsDetailView();
  v17 = *a1;
  v16 = a1[1];
  v18 = *(v15 + 16);
  v19 = *(*(v15 + 24) + 8);
  v20 = sub_10008690C();
  __chkstk_darwin(v20);
  swift_getKeyPath();
  v21 = *(a2 + 8);
  sub_10008691C();

  swift_unknownObjectRelease();
  sub_10008687C();
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(sub_100001EEC(&qword_1000AEC28, &qword_10008AF58) + 36)];
  *v23 = KeyPath;
  v23[8] = 2;
  v24 = sub_100086E2C();
  v25 = swift_getKeyPath();
  v26 = v39;
  v27 = &v10[*(v38 + 36)];
  *v27 = v25;
  v27[1] = v24;
  sub_10000E4A4(v10, v26, &qword_1000AEC20, &qword_10008AEE8);
  v29 = v34;
  v28 = v35;
  *a3 = v35;
  *(a3 + 8) = v29;
  v30 = v36 & 1;
  *(a3 + 16) = v36 & 1;
  *(a3 + 24) = v37;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v31 = sub_100001EEC(&qword_1000AEC30, &qword_10008AF90);
  sub_10000E4A4(v26, a3 + *(v31 + 64), &qword_1000AEC20, &qword_10008AEE8);
  sub_100006568(v28, v29, v30);

  sub_10000649C(v10, &qword_1000AEC20, &qword_10008AEE8);
  sub_10000649C(v26, &qword_1000AEC20, &qword_10008AEE8);
  sub_100006550(v28, v29, v30);
}

uint64_t sub_1000388C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1000873FC();
  v6[10] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[11] = v8;
  v6[12] = v7;

  return _swift_task_switch(sub_10003895C, v8, v7);
}

uint64_t sub_10003895C()
{
  v1 = v0[9];
  v0[13] = *(v0[7] + 8);
  v2 = *(v1 + 232);
  swift_unknownObjectRetain();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100038A84;
  v6 = v0[8];
  v5 = v0[9];

  return v8(v6, v5);
}

uint64_t sub_100038A84()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_100038C00;
  }

  else
  {
    v7 = v2[13];
    swift_unknownObjectRelease();
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_100038BA0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100038BA0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100038C00()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  swift_unknownObjectRelease();
  *(v0 + 16) = *(v4 + 32);
  *(v0 + 128) = 1;
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 32) = *(v4 + 16);
  *(v0 + 48) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100038CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100038D84, v8, v7);
}

uint64_t sub_100038D84()
{
  v1 = v0[4];
  v0[8] = *(v0[2] + 8);
  v2 = *(v1 + 248);
  swift_unknownObjectRetain();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100038EAC;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_100038EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v5, v4);
}

uint64_t sub_100038FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100086AEC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100086ADC();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100086ACC(v12);
  v11 = *(a1 + 16);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v13._countAndFlagsBits = sub_100037334(v10);
  sub_100086ABC(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_100086ACC(v14);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10003911C(uint64_t a1)
{
  if (qword_1000ADAE8 != -1)
  {
    swift_once();
  }

  v4 = sub_100086CBC();
  __chkstk_darwin(v4);
  v3 = *(a1 + 16);
  sub_100001EEC(&qword_1000AEB38, &qword_10008AD18);
  sub_10003D85C();
  return sub_100086FCC();
}

uint64_t sub_100039288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v7 = sub_100001EEC(&qword_1000AEB58, &qword_10008AD28);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v119 = &v103 - v9;
  v121 = sub_100001EEC(&qword_1000AEB50, &qword_10008AD20);
  v10 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v12 = &v103 - v11;
  v13 = sub_100001EEC(&qword_1000AEB60, &qword_10008AD30);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v117 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v118 = (&v103 - v17);
  v18 = *(a1 + 8);
  v19 = *(a3 + 136);
  swift_unknownObjectRetain();
  v20 = a2;
  v21 = v19(a2, a3);
  v120 = v7;
  if (v21)
  {
    v22 = type metadata accessor for CarrySettingsDetailView();
    v111 = (*(a3 + 192))(v20, a3);
    v23 = *a1;
    v24 = *(v22 + 16);
    v115 = *(*(v22 + 24) + 8);
    *&v116 = v24;
    v25 = sub_10008690C();
    __chkstk_darwin(v25);
    swift_getKeyPath();
    v114 = *(a3 + 8);
    sub_10008691C();

    swift_unknownObjectRelease();
    v109 = v170;
    v26 = v171;
    v27 = swift_allocObject();
    *(v27 + 16) = v20;
    *(v27 + 24) = a3;
    v28 = *(a1 + 144);
    *(v27 + 160) = *(a1 + 128);
    *(v27 + 176) = v28;
    *(v27 + 192) = *(a1 + 160);
    v29 = *(a1 + 80);
    *(v27 + 96) = *(a1 + 64);
    *(v27 + 112) = v29;
    v30 = *(a1 + 112);
    *(v27 + 128) = *(a1 + 96);
    *(v27 + 144) = v30;
    v31 = *(a1 + 16);
    *(v27 + 32) = *a1;
    *(v27 + 48) = v31;
    v32 = *(a1 + 48);
    *(v27 + 64) = *(a1 + 32);
    *(v27 + 80) = v32;
    LOBYTE(v130) = 0;
    LOBYTE(v153) = 0;
    v33 = v22;
    v112 = v22;
    v34 = *(v22 - 8);
    v35 = *(v34 + 16);
    v113 = v34 + 16;
    v35(v145, a1, v33);
    v110 = v35;
    sub_100086E7C();
    LOBYTE(v146) = 0;
    *(&v146 + 1) = v145[0];
    DWORD1(v146) = *(v145 + 3);
    *(&v146 + 1) = v111;
    LOBYTE(v147) = v145[0];
    *(&v147 + 1) = v170;
    DWORD1(v147) = *(&v170 + 3);
    *(&v147 + 1) = *(&v145[0] + 1);
    v148 = v109;
    v149 = v26;
    LOBYTE(v150) = v130;
    DWORD1(v150) = *(&v153 + 3);
    *(&v150 + 1) = v153;
    *(&v150 + 1) = sub_10003D9E4;
    *&v151 = v27;
    *(&v151 + 1) = sub_10003E734;
    v152 = 0;
    v111 = v12;
    v108 = *(a3 + 144);
    *&v109 = v108(v20, a3);
    v36 = *a1;
    v37 = *(a1 + 8);
    v38 = sub_10008690C();
    __chkstk_darwin(v38);
    swift_getKeyPath();
    sub_10008691C();

    swift_unknownObjectRelease();
    v105 = v170;
    v106 = *(&v171 + 1);
    v107 = v171;
    v39 = swift_allocObject();
    v40 = v20;
    v104 = v20;
    *(v39 + 16) = v20;
    *(v39 + 24) = a3;
    v41 = *(a1 + 144);
    *(v39 + 160) = *(a1 + 128);
    *(v39 + 176) = v41;
    *(v39 + 192) = *(a1 + 160);
    v42 = *(a1 + 80);
    *(v39 + 96) = *(a1 + 64);
    *(v39 + 112) = v42;
    v43 = *(a1 + 112);
    *(v39 + 128) = *(a1 + 96);
    *(v39 + 144) = v43;
    v44 = *(a1 + 16);
    *(v39 + 32) = *a1;
    *(v39 + 48) = v44;
    v45 = *(a1 + 48);
    *(v39 + 64) = *(a1 + 32);
    *(v39 + 80) = v45;
    LOBYTE(v153) = 0;
    LOBYTE(v130) = 0;
    v35(v145, a1, v112);
    sub_100086E7C();
    v46 = v145[0];
    v47 = *(&v145[0] + 1);
    LOBYTE(v35) = v153;
    v48 = *(v108(v40, a3) + 16);

    v49 = v48 == 0;
    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    LOBYTE(v153) = 0;
    *(&v153 + 1) = v109;
    LOBYTE(v154) = v46;
    v155 = v105;
    *(&v154 + 1) = v47;
    *&v156 = v107;
    *(&v156 + 1) = v106;
    LOBYTE(v157) = v35;
    *(&v157 + 1) = sub_10003DAB8;
    *&v158 = v39;
    *(&v158 + 1) = sub_10003E734;
    *&v159 = 0;
    *(&v159 + 1) = KeyPath;
    *&v160 = sub_10003DADC;
    *(&v160 + 1) = v51;
    v52 = v104;
    v53 = (*(a3 + 104))(v104, a3);
    swift_unknownObjectRelease();
    v54 = *a1;
    v55 = *(a1 + 8);
    v56 = sub_10008690C();
    __chkstk_darwin(v56);
    swift_getKeyPath();
    sub_10008691C();

    swift_unknownObjectRelease();
    v116 = v170;
    v57 = v171;
    v58 = swift_allocObject();
    *(v58 + 16) = v52;
    *(v58 + 24) = a3;
    v59 = *(a1 + 144);
    *(v58 + 160) = *(a1 + 128);
    *(v58 + 176) = v59;
    *(v58 + 192) = *(a1 + 160);
    v60 = *(a1 + 80);
    *(v58 + 96) = *(a1 + 64);
    *(v58 + 112) = v60;
    v61 = *(a1 + 112);
    *(v58 + 128) = *(a1 + 96);
    *(v58 + 144) = v61;
    v62 = *(a1 + 16);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v62;
    v63 = *(a1 + 48);
    *(v58 + 64) = *(a1 + 32);
    *(v58 + 80) = v63;
    LOBYTE(v182[0]) = 0;
    LOBYTE(v130) = 0;
    v110(v145, a1, v112);
    sub_100086E7C();
    LOBYTE(v161) = 0;
    *(&v161 + 1) = v145[0];
    DWORD1(v161) = *(v145 + 3);
    *(&v161 + 1) = v53;
    LOBYTE(v162) = v145[0];
    *(&v162 + 1) = v170;
    DWORD1(v162) = *(&v170 + 3);
    v163 = v116;
    *(&v162 + 1) = *(&v145[0] + 1);
    v164 = v57;
    LOBYTE(v165) = v182[0];
    DWORD1(v165) = *(&v130 + 3);
    *(&v165 + 1) = v130;
    *(&v165 + 1) = sub_10003DBA8;
    *&v166 = v58;
    *(&v166 + 1) = sub_10003E734;
    v167 = 0;
    v64 = sub_100086A9C();
    v65 = v118;
    *v118 = v64;
    *(v65 + 8) = 0;
    *(v65 + 16) = 1;
    v66 = sub_100001EEC(&qword_1000AEB68, &qword_10008AE10);
    sub_10003A488(a1, v52, a3, (v65 + *(v66 + 44)));
    v142 = v150;
    v143 = v151;
    v144 = v152;
    v138 = v146;
    v139 = v147;
    v140 = v148;
    v141 = v149;
    v134 = v157;
    v135 = v158;
    v136 = v159;
    v137 = v160;
    v130 = v153;
    v131 = v154;
    v132 = v155;
    v133 = v156;
    v127 = v165;
    v128 = v166;
    v129 = v167;
    v123 = v161;
    v124 = v162;
    v125 = v163;
    v126 = v164;
    v67 = v117;
    sub_10000E4A4(v65, v117, &qword_1000AEB60, &qword_10008AD30);
    v68 = v142;
    v69 = v143;
    v168[4] = v142;
    v168[5] = v143;
    v70 = v139;
    v168[0] = v138;
    v168[1] = v139;
    v72 = v140;
    v71 = v141;
    v168[3] = v141;
    v168[2] = v140;
    v73 = v111;
    *v111 = v138;
    *(v73 + 16) = v70;
    *(v73 + 32) = v72;
    *(v73 + 48) = v71;
    *(v73 + 64) = v68;
    *(v73 + 80) = v69;
    v74 = v130;
    v75 = v131;
    v170 = v130;
    v171 = v131;
    v76 = v136;
    v77 = v137;
    v177 = v137;
    v176 = v136;
    v78 = v135;
    v175 = v135;
    v174 = v134;
    v79 = v132;
    v80 = v133;
    v172 = v132;
    v173 = v133;
    *(v73 + 168) = v134;
    *(v73 + 184) = v78;
    *(v73 + 200) = v76;
    *(v73 + 216) = v77;
    *(v73 + 104) = v74;
    *(v73 + 120) = v75;
    *(v73 + 136) = v79;
    *(v73 + 152) = v80;
    v81 = v123;
    v82 = v124;
    v178[1] = v124;
    v178[0] = v123;
    v83 = v127;
    v84 = v128;
    v178[5] = v128;
    v178[4] = v127;
    v85 = v125;
    v86 = v126;
    v178[2] = v125;
    v178[3] = v126;
    v169 = v144;
    *(v73 + 96) = v144;
    v87 = v129;
    v179 = v129;
    *(v73 + 248) = v82;
    *(v73 + 232) = v81;
    *(v73 + 328) = v87;
    *(v73 + 296) = v83;
    *(v73 + 312) = v84;
    *(v73 + 264) = v85;
    *(v73 + 280) = v86;
    v88 = sub_100001EEC(&qword_1000AEB70, &qword_10008AE18);
    sub_10000E4A4(v67, v73 + *(v88 + 80), &qword_1000AEB60, &qword_10008AD30);
    sub_10000E4A4(&v146, v145, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(&v153, v145, &qword_1000AEB80, &qword_10008AE28);
    sub_10000E4A4(&v161, v145, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(v168, v145, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(&v170, v145, &qword_1000AEB80, &qword_10008AE28);
    sub_10000E4A4(v178, v145, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(v67, &qword_1000AEB60, &qword_10008AD30);
    v180[4] = v127;
    v180[5] = v128;
    v181 = v129;
    v180[0] = v123;
    v180[1] = v124;
    v180[3] = v126;
    v180[2] = v125;
    sub_10000649C(v180, &qword_1000AEB78, &qword_10008AE20);
    v145[4] = v134;
    v145[5] = v135;
    v145[6] = v136;
    v145[7] = v137;
    v145[0] = v130;
    v145[1] = v131;
    v145[2] = v132;
    v145[3] = v133;
    sub_10000649C(v145, &qword_1000AEB80, &qword_10008AE28);
    v182[4] = v142;
    v182[5] = v143;
    v183 = v144;
    v182[0] = v138;
    v182[1] = v139;
    v182[2] = v140;
    v182[3] = v141;
    sub_10000649C(v182, &qword_1000AEB78, &qword_10008AE20);
    sub_10000E4A4(v73, v119, &qword_1000AEB50, &qword_10008AD20);
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20);
    sub_100086B8C();
    sub_10000649C(&v161, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(&v153, &qword_1000AEB80, &qword_10008AE28);
    sub_10000649C(&v146, &qword_1000AEB78, &qword_10008AE20);
    sub_10000649C(v73, &qword_1000AEB50, &qword_10008AD20);
    return sub_10000649C(v65, &qword_1000AEB60, &qword_10008AD30);
  }

  else
  {
    v90 = v119;
    swift_unknownObjectRelease();
    if (qword_1000ADB98 != -1)
    {
      swift_once();
    }

    v91 = sub_100086CBC();
    v93 = v92;
    v95 = v94;
    LODWORD(v145[0]) = sub_100086BAC();
    v96 = sub_100086C9C();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    sub_100006550(v91, v93, v95 & 1);

    *v90 = v96;
    *(v90 + 8) = v98;
    *(v90 + 16) = v100 & 1;
    *(v90 + 24) = v102;
    swift_storeEnumTagMultiPayload();
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20);
    return sub_100086B8C();
  }
}

__n128 sub_100039F98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADBC8 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  v7 = unk_1000B3B20;
  v22 = qword_1000B3B18;
  v8 = byte_1000B3B28;
  v9 = qword_1000B3B30;
  v10 = *(a1 + 8);
  v11 = *(a3 + 200);
  swift_unknownObjectRetain();

  v11(a2, a3);
  v13 = v12;
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_100086B1C();
    v18 = v17 & 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v16 = 0;
  }

  *&v24 = v22;
  *(&v24 + 1) = v7;
  v25.n128_u8[0] = v8;
  v25.n128_u64[1] = v9;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  *&v27 = v18;
  v28 = 0uLL;
  *(&v27 + 1) = v16;
  v29[0] = v22;
  v29[1] = v7;
  v30 = v8;
  v31 = v9;
  v32 = v14;
  v33 = v15;
  v34 = v18;
  v36 = 0;
  v37 = 0;
  v35 = v16;
  sub_10003DE60(&v24, v23);
  sub_10003DEBC(v29);
  v19 = v27;
  *(a4 + 32) = v26;
  *(a4 + 48) = v19;
  *(a4 + 64) = v28;
  result = v25;
  *a4 = v24;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_10003A11C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADBB0 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  v7 = unk_1000B3AC0;
  v22 = qword_1000B3AB8;
  v8 = byte_1000B3AC8;
  v9 = qword_1000B3AD0;
  v10 = *(a1 + 8);
  v11 = *(a3 + 152);
  swift_unknownObjectRetain();

  v11(a2, a3);
  v13 = v12;
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_100086B1C();
    v18 = v17 & 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v16 = 0;
  }

  *&v24 = v22;
  *(&v24 + 1) = v7;
  v25.n128_u8[0] = v8;
  v25.n128_u64[1] = v9;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  *&v27 = v18;
  v28 = 0uLL;
  *(&v27 + 1) = v16;
  v29[0] = v22;
  v29[1] = v7;
  v30 = v8;
  v31 = v9;
  v32 = v14;
  v33 = v15;
  v34 = v18;
  v36 = 0;
  v37 = 0;
  v35 = v16;
  sub_10003DE60(&v24, v23);
  sub_10003DEBC(v29);
  v19 = v27;
  *(a4 + 32) = v26;
  *(a4 + 48) = v19;
  *(a4 + 64) = v28;
  result = v25;
  *a4 = v24;
  *(a4 + 16) = result;
  return result;
}

__n128 sub_10003A29C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1000ADB80 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  v7 = unk_1000B3A00;
  v22 = qword_1000B39F8;
  v8 = byte_1000B3A08;
  v9 = qword_1000B3A10;
  v10 = *(a1 + 8);
  v11 = *(a3 + 112);
  swift_unknownObjectRetain();

  v11(a2, a3);
  v13 = v12;
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_100086B1C();
    v18 = v17 & 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v18 = 0;
    v16 = 0;
  }

  *&v24 = v22;
  *(&v24 + 1) = v7;
  v25.n128_u8[0] = v8;
  v25.n128_u64[1] = v9;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  *&v27 = v18;
  v28 = 0uLL;
  *(&v27 + 1) = v16;
  v29[0] = v22;
  v29[1] = v7;
  v30 = v8;
  v31 = v9;
  v32 = v14;
  v33 = v15;
  v34 = v18;
  v36 = 0;
  v37 = 0;
  v35 = v16;
  sub_10003DE60(&v24, v23);
  sub_10003DEBC(v29);
  v19 = v27;
  *(a4 + 32) = v26;
  *(a4 + 48) = v19;
  *(a4 + 64) = v28;
  result = v25;
  *a4 = v24;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_10003A41C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1000064FC();

  result = sub_100086CCC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10003A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v70 = a4;
  v62 = sub_100001EEC(&qword_1000AEB88, &qword_10008AE30);
  v7 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v68 = v53 - v8;
  v65 = sub_100001EEC(&qword_1000AEB90, &qword_10008AE38);
  v9 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v53[0] = v53 - v10;
  v66 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v60 = *(v66 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v66);
  v59 = v53 - v12;
  v13 = sub_100001EEC(&qword_1000AEBA0, &qword_10008AE48);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v69 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = v53 - v17;
  v58 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v57 = *(v58 - 8);
  v18 = *(v57 + 64);
  __chkstk_darwin(v58);
  v20 = v53 - v19;
  v64 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v63 = *(v64 - 8);
  v21 = *(v63 + 64);
  v22 = __chkstk_darwin(v64);
  v61 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v71 = v53 - v24;
  if (qword_1000ADB70 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = *(a1 + 144);
  *(v25 + 160) = *(a1 + 128);
  *(v25 + 176) = v26;
  *(v25 + 192) = *(a1 + 160);
  v27 = *(a1 + 80);
  *(v25 + 96) = *(a1 + 64);
  *(v25 + 112) = v27;
  v28 = *(a1 + 112);
  *(v25 + 128) = *(a1 + 96);
  *(v25 + 144) = v28;
  v29 = *(a1 + 16);
  *(v25 + 32) = *a1;
  *(v25 + 48) = v29;
  v30 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 32);
  *(v25 + 80) = v30;

  v31 = type metadata accessor for CarrySettingsDetailView();
  (*(*(v31 - 8) + 16))(&v73, a1, v31);
  sub_100086EEC();
  v55 = sub_100086AFC();
  v54 = v32;
  v72 = *(a1 + 96);
  v56 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v33 = sub_100086EAC();
  v53[1] = v53;
  v34 = __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  v35 = v58;
  sub_100086DBC();

  (*(v57 + 8))(v20, v35);
  v36 = v59;
  sub_10008688C();
  v73 = *(a1 + 128);
  sub_100086E8C();
  v37 = v60;
  v38 = *(v60 + 16);
  if (v72)
  {
    v39 = v66;
    v38(v68, v36, v66);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    v40 = v67;
    sub_100086B8C();
  }

  else
  {
    v41 = v53[0];
    v39 = v66;
    v38(v53[0], v36, v66);
    sub_10000E4A4(v41, v68, &qword_1000AEB90, &qword_10008AE38);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    v40 = v67;
    sub_100086B8C();
    sub_10000649C(v41, &qword_1000AEB90, &qword_10008AE38);
  }

  (*(v37 + 8))(v36, v39);
  v42 = v63;
  v43 = *(v63 + 16);
  v44 = v61;
  v45 = v71;
  v46 = v64;
  v43(v61, v71, v64);
  v47 = v69;
  sub_10000E4A4(v40, v69, &qword_1000AEBA0, &qword_10008AE48);
  v48 = v70;
  v43(v70, v44, v46);
  v49 = sub_100001EEC(&qword_1000AEBC8, &qword_10008AE58);
  v50 = &v48[*(v49 + 48)];
  *v50 = 0;
  v50[8] = 1;
  sub_10000E4A4(v47, &v48[*(v49 + 64)], &qword_1000AEBA0, &qword_10008AE48);
  sub_10000649C(v40, &qword_1000AEBA0, &qword_10008AE48);
  v51 = *(v42 + 8);
  v51(v45, v46);
  sub_10000649C(v47, &qword_1000AEBA0, &qword_10008AE48);
  return (v51)(v44, v46);
}

uint64_t sub_10003ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  sub_1000873FC();
  v6[20] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[21] = v8;
  v6[22] = v7;

  return _swift_task_switch(sub_10003AE78, v8, v7);
}

uint64_t sub_10003AE78()
{
  v9 = *(v0 + 152);
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v1 + 128);
  *(v0 + 32) = *(v1 + 128);
  *(v0 + 216) = 1;
  *(v0 + 112) = *(v0 + 24);
  sub_10000E4A4(v0 + 112, v0 + 120, &qword_1000AEBD8, &qword_10008AE80);
  *(v0 + 184) = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 192) = *(v1 + 8);
  v2 = *(v9 + 240);
  swift_unknownObjectRetain();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_10003B010;
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  return v8(v6, v5);
}

uint64_t sub_10003B010()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_10003B168;
  }

  else
  {
    v8 = sub_10003E6F4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10003B168()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 217) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  *(v0 + 64) = *(v4 + 96);
  *(v0 + 218) = 1;
  sub_100086E9C();
  *(v0 + 80) = *(v4 + 112);
  *(v0 + 128) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10003B264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100086AEC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100086ADC();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100086ACC(v12);
  v11 = *(a1 + 112);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v13._countAndFlagsBits = sub_100037334(v10);
  sub_100086ABC(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_100086ACC(v14);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10003B390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v28 = *(v29 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - v5;
  if (qword_1000ADBB8 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  v8 = v25;
  *(v7 + 16) = v26;
  *(v7 + 24) = v8;
  v9 = *(v2 + 144);
  *(v7 + 160) = *(v2 + 128);
  *(v7 + 176) = v9;
  *(v7 + 192) = *(v2 + 160);
  v10 = *(v2 + 80);
  *(v7 + 96) = *(v2 + 64);
  *(v7 + 112) = v10;
  v11 = *(v2 + 112);
  *(v7 + 128) = *(v2 + 96);
  *(v7 + 144) = v11;
  v12 = *(v2 + 16);
  *(v7 + 32) = *v2;
  *(v7 + 48) = v12;
  v13 = *(v2 + 48);
  *(v7 + 64) = *(v2 + 32);
  *(v7 + 80) = v13;

  v14 = *(*(a1 - 8) + 16);
  v14(&v31, v2, a1);
  sub_100086EEC();
  v30 = *(v2 + 144);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086EAC();
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 16) = v26;
  *(v15 + 24) = v16;
  v17 = *(v2 + 144);
  *(v15 + 160) = *(v2 + 128);
  *(v15 + 176) = v17;
  *(v15 + 192) = *(v2 + 160);
  v18 = *(v2 + 80);
  *(v15 + 96) = *(v2 + 64);
  *(v15 + 112) = v18;
  v19 = *(v2 + 112);
  *(v15 + 128) = *(v2 + 96);
  *(v15 + 144) = v19;
  v20 = *(v2 + 16);
  *(v15 + 32) = *v2;
  *(v15 + 48) = v20;
  v21 = *(v2 + 48);
  *(v15 + 64) = *(v2 + 32);
  *(v15 + 80) = v21;
  v14(&v31, v2, a1);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  sub_10003D7FC();
  v22 = v29;
  sub_100086DDC();

  return (*(v28 + 8))(v6, v22);
}

uint64_t sub_10003B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a3 + 176);
  swift_unknownObjectRetain();
  v10 = v9(a2, a3);
  swift_unknownObjectRelease();
  v15 = *(a1 + 144);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  result = sub_100086EAC();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  return result;
}

uint64_t sub_10003B7C0(uint64_t a1)
{
  if (qword_1000ADBD0 != -1)
  {
    swift_once();
  }

  v4 = sub_100086CBC();
  __chkstk_darwin(v4);
  v3 = *(a1 + 16);
  sub_100001EEC(&qword_1000AEB60, &qword_10008AD30);
  sub_100006454(&qword_1000AEBE0, &qword_1000AEB60, &qword_10008AD30);
  return sub_100086FCC();
}

uint64_t sub_10003B958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_100086A9C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = sub_100001EEC(&qword_1000AEB68, &qword_10008AE10);
  return sub_10003B9C8(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t sub_10003B9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v70 = a4;
  v62 = sub_100001EEC(&qword_1000AEB88, &qword_10008AE30);
  v7 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v68 = v53 - v8;
  v65 = sub_100001EEC(&qword_1000AEB90, &qword_10008AE38);
  v9 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v53[0] = v53 - v10;
  v66 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v60 = *(v66 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v66);
  v59 = v53 - v12;
  v13 = sub_100001EEC(&qword_1000AEBA0, &qword_10008AE48);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v69 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = v53 - v17;
  v58 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v57 = *(v58 - 8);
  v18 = *(v57 + 64);
  __chkstk_darwin(v58);
  v20 = v53 - v19;
  v64 = sub_100001EEC(&qword_1000AEBA8, &qword_10008AE50);
  v63 = *(v64 - 8);
  v21 = *(v63 + 64);
  v22 = __chkstk_darwin(v64);
  v61 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v71 = v53 - v24;
  if (qword_1000ADB90 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = *(a1 + 144);
  *(v25 + 160) = *(a1 + 128);
  *(v25 + 176) = v26;
  *(v25 + 192) = *(a1 + 160);
  v27 = *(a1 + 80);
  *(v25 + 96) = *(a1 + 64);
  *(v25 + 112) = v27;
  v28 = *(a1 + 112);
  *(v25 + 128) = *(a1 + 96);
  *(v25 + 144) = v28;
  v29 = *(a1 + 16);
  *(v25 + 32) = *a1;
  *(v25 + 48) = v29;
  v30 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 32);
  *(v25 + 80) = v30;

  v31 = type metadata accessor for CarrySettingsDetailView();
  (*(*(v31 - 8) + 16))(&v73, a1, v31);
  sub_100086EEC();
  v55 = sub_100086AFC();
  v54 = v32;
  v72 = *(a1 + 48);
  v56 = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  v33 = sub_100086EAC();
  v53[1] = v53;
  v34 = __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478);
  v35 = v58;
  sub_100086DBC();

  (*(v57 + 8))(v20, v35);
  v36 = v59;
  sub_10008688C();
  v73 = *(a1 + 80);
  sub_100086E8C();
  v37 = v60;
  v38 = *(v60 + 16);
  if (v72)
  {
    v39 = v66;
    v38(v68, v36, v66);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    v40 = v67;
    sub_100086B8C();
  }

  else
  {
    v41 = v53[0];
    v39 = v66;
    v38(v53[0], v36, v66);
    sub_10000E4A4(v41, v68, &qword_1000AEB90, &qword_10008AE38);
    swift_storeEnumTagMultiPayload();
    sub_10003DC38();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    v40 = v67;
    sub_100086B8C();
    sub_10000649C(v41, &qword_1000AEB90, &qword_10008AE38);
  }

  (*(v37 + 8))(v36, v39);
  v42 = v63;
  v43 = *(v63 + 16);
  v44 = v61;
  v45 = v71;
  v46 = v64;
  v43(v61, v71, v64);
  v47 = v69;
  sub_10000E4A4(v40, v69, &qword_1000AEBA0, &qword_10008AE48);
  v48 = v70;
  v43(v70, v44, v46);
  v49 = sub_100001EEC(&qword_1000AEBC8, &qword_10008AE58);
  v50 = &v48[*(v49 + 48)];
  *v50 = 0;
  v50[8] = 1;
  sub_10000E4A4(v47, &v48[*(v49 + 64)], &qword_1000AEBA0, &qword_10008AE48);
  sub_10000649C(v40, &qword_1000AEBA0, &qword_10008AE48);
  v51 = *(v42 + 8);
  v51(v45, v46);
  sub_10000649C(v47, &qword_1000AEBA0, &qword_10008AE48);
  return (v51)(v44, v46);
}

uint64_t sub_10003C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24[-v11 - 8];
  v13 = sub_10008742C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1000873FC();
  v14 = type metadata accessor for CarrySettingsDetailView();
  (*(*(v14 - 8) + 16))(v24, a1, v14);
  v15 = sub_1000873EC();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  v17 = *(a1 + 144);
  *(v16 + 176) = *(a1 + 128);
  *(v16 + 192) = v17;
  *(v16 + 208) = *(a1 + 160);
  v18 = *(a1 + 80);
  *(v16 + 112) = *(a1 + 64);
  *(v16 + 128) = v18;
  v19 = *(a1 + 112);
  *(v16 + 144) = *(a1 + 96);
  *(v16 + 160) = v19;
  v20 = *(a1 + 16);
  *(v16 + 48) = *a1;
  *(v16 + 64) = v20;
  v21 = *(a1 + 48);
  *(v16 + 80) = *(a1 + 32);
  *(v16 + 96) = v21;
  sub_100016C64(0, 0, v12, a5, v16);
}

uint64_t sub_10003C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  sub_1000873FC();
  v6[20] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[21] = v8;
  v6[22] = v7;

  return _swift_task_switch(sub_10003C558, v8, v7);
}

uint64_t sub_10003C558()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 80);
  *(v0 + 216) = 1;
  *(v0 + 112) = *(v0 + 24);
  sub_10000E4A4(v0 + 112, v0 + 120, &qword_1000AEBD8, &qword_10008AE80);
  *(v0 + 184) = sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E9C();
  *(v0 + 192) = *(v2 + 8);
  v3 = *(v1 + 256);
  swift_unknownObjectRetain();
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10003C6F4;
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);

  return v9(v7, v6);
}

uint64_t sub_10003C6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_10003C8E4;
  }

  else
  {
    v8 = sub_10003C84C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10003C84C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  *(v0 + 96) = *(v0 + 16);
  *(v0 + 219) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003C8E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 217) = 0;
  sub_100086E9C();
  sub_10000649C(v0 + 16, &qword_1000AE068, &qword_10008AD10);
  *(v0 + 64) = *(v4 + 48);
  *(v0 + 218) = 1;
  sub_100086E9C();
  *(v0 + 80) = *(v4 + 64);
  *(v0 + 128) = v1;
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E9C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10003C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a5;
  v8 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  sub_100086AFC();
  sub_10008684C();
  v12 = sub_10008685C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *(a1 + 144);
  *(v13 + 160) = *(a1 + 128);
  *(v13 + 176) = v14;
  *(v13 + 192) = *(a1 + 160);
  v15 = *(a1 + 80);
  *(v13 + 96) = *(a1 + 64);
  *(v13 + 112) = v15;
  v16 = *(a1 + 112);
  *(v13 + 128) = *(a1 + 96);
  *(v13 + 144) = v16;
  v17 = *(a1 + 16);
  *(v13 + 32) = *a1;
  *(v13 + 48) = v17;
  v18 = *(a1 + 48);
  *(v13 + 64) = *(a1 + 32);
  *(v13 + 80) = v18;
  v19 = type metadata accessor for CarrySettingsDetailView();
  (*(*(v19 - 8) + 16))(v22, a1, v19);
  return sub_100086EDC();
}

uint64_t sub_10003CBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100086AEC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100086ADC();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100086ACC(v12);
  v11 = *(a1 + 64);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  sub_100086E8C();
  v13._countAndFlagsBits = sub_100037334(v10);
  sub_100086ABC(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_100086ACC(v14);
  sub_100086B0C();
  result = sub_100086CBC();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_10003CCDC@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, char *a2@<X8>)
{
  v51 = a1;
  v53 = a2;
  v58 = sub_100001EEC(&qword_1000AEB08, &qword_10008ACE0);
  v62 = *(v58 - 8);
  v2 = v62[8];
  v3 = __chkstk_darwin(v58);
  v57 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v5;
  v52 = sub_100001EEC(&qword_1000AEB10, &qword_10008ACE8);
  v61 = *(v52 - 8);
  v6 = v61[8];
  v7 = __chkstk_darwin(v52);
  v60 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_100001EEC(&qword_1000AEB18, &qword_10008ACF0);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = v54[8];
  v13 = __chkstk_darwin(v11);
  v59 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_100001EEC(&qword_1000AEB20, &qword_10008ACF8);
  v50 = *(v17 - 8);
  v18 = v50;
  v19 = *(v50 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = type metadata accessor for CarrySettingsDetailView();
  v49 = v24;
  sub_1000374F0(v25);
  v47 = v16;
  sub_10003B7C0(v25);
  v46 = v10;
  sub_10003911C(v25);
  v26 = v56;
  sub_10003B390(v25, v56);
  v42 = *(v18 + 16);
  v48 = v22;
  v45 = v17;
  v42(v22, v24, v17);
  v51 = v54[2];
  v51(v59, v16, v55);
  v44 = v61[2];
  v27 = v52;
  v44(v60, v10, v52);
  v43 = v62[2];
  v28 = v58;
  v43(v57, v26, v58);
  v29 = v53;
  v42(v53, v22, v17);
  v30 = sub_100001EEC(&qword_1000AEB28, &unk_10008AD00);
  v31 = v55;
  v51(&v29[v30[12]], v59, v55);
  v32 = &v29[v30[16]];
  v33 = v29;
  v34 = v27;
  v44(v32, v60, v27);
  v35 = v57;
  v43(&v33[v30[20]], v57, v28);
  v36 = v62[1];
  ++v62;
  v36(v56, v28);
  v37 = v61[1];
  ++v61;
  v37(v46, v34);
  v38 = v54[1];
  v38(v47, v31);
  v39 = *(v50 + 8);
  v40 = v45;
  v39(v49, v45);
  v36(v35, v58);
  v37(v60, v34);
  v38(v59, v31);
  return (v39)(v48, v40);
}

uint64_t sub_10003D238@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = *(v2 + 20);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_10003CCD0(a1, a2);
}

uint64_t sub_10003D2D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10003D2E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v44 = a2;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v27 - v9;
  v11 = sub_10003746C();
  v45 = v12;
  v46 = v11;
  v47 = 0;
  sub_100086E7C();
  v43 = v48;
  v42 = v49;
  v47 = 0;
  sub_100086E7C();
  v41 = v48;
  v40 = v49;
  v13 = sub_10003746C();
  v38 = v14;
  v39 = v13;
  v47 = 0;
  sub_100086E7C();
  v37 = v48;
  v36 = v49;
  v47 = 0;
  sub_100086E7C();
  v35 = v48;
  v34 = v49;
  v15 = sub_10003746C();
  v32 = v16;
  v33 = v15;
  v47 = 0;
  sub_100086E7C();
  v31 = v48;
  v30 = v49;
  v47 = 0;
  sub_100086E7C();
  v29 = v48;
  v28 = v49;
  swift_unknownObjectRetain();
  v17 = sub_1000868FC();
  v19 = v18;
  sub_10008675C();
  v20 = swift_allocObject();
  v21 = v44;
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  swift_getAssociatedConformanceWitness();
  v22 = sub_10008682C();

  result = (*(v7 + 8))(v10, AssociatedTypeWitness);
  *a3 = v17;
  *(a3 + 8) = v19;
  v24 = v45;
  *(a3 + 16) = v46;
  *(a3 + 24) = v24;
  *(a3 + 32) = v43;
  *(a3 + 40) = v42;
  *(a3 + 48) = v41;
  v25 = v39;
  *(a3 + 56) = v40;
  *(a3 + 64) = v25;
  *(a3 + 72) = v38;
  *(a3 + 80) = v37;
  *(a3 + 88) = v36;
  *(a3 + 96) = v35;
  v26 = v33;
  *(a3 + 104) = v34;
  *(a3 + 112) = v26;
  *(a3 + 120) = v32;
  *(a3 + 128) = v31;
  *(a3 + 136) = v30;
  *(a3 + 144) = v29;
  *(a3 + 152) = v28;
  *(a3 + 160) = v22;
  return result;
}

uint64_t sub_10003D614()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003D650(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10003D68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10003D6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003D798()
{
  v2 = *(v0 + 176);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  return sub_100086E9C();
}

unint64_t sub_10003D7FC()
{
  result = qword_1000AEB30;
  if (!qword_1000AEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEB30);
  }

  return result;
}

unint64_t sub_10003D85C()
{
  result = qword_1000AEB40;
  if (!qword_1000AEB40)
  {
    sub_100003200(&qword_1000AEB38, &qword_10008AD18);
    sub_100006454(&qword_1000AEB48, &qword_1000AEB50, &qword_10008AD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEB40);
  }

  return result;
}

uint64_t sub_10003D914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 200))(*(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10003D95C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 208);

  return v9(v7, v6, v4, v5);
}

__n128 sub_10003D9D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10003D9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 152))(*(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10003DA38(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 160);

  return v9(v7, v6, v4, v5);
}

uint64_t sub_10003DAE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 112))(*(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10003DB2C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 120);

  return v9(v7, v6, v4, v5);
}

uint64_t sub_10003DC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10003B264(v1[4], a1);
}

unint64_t sub_10003DC38()
{
  result = qword_1000AEBB0;
  if (!qword_1000AEBB0)
  {
    sub_100003200(&qword_1000AEB90, &qword_10008AE38);
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    sub_10003DCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEBB0);
  }

  return result;
}

unint64_t sub_10003DCF0()
{
  result = qword_1000AEBC0;
  if (!qword_1000AEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEBC0);
  }

  return result;
}

uint64_t sub_10003DD44()
{
  v2 = *(v0 + 128);
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  return sub_100086E9C();
}

uint64_t sub_10003DD9C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_10003ADDC(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003DF94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10003CBA4(v1[4], a1);
}

uint64_t sub_10003DFA0()
{
  v2 = *(v0 + 96);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  return sub_100086E9C();
}

uint64_t sub_10003DFF4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002740;

  return sub_10003C4BC(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E178@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100038FF0(v1[4], a1);
}

uint64_t sub_10003E184()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[19];

  v12 = v0[21];

  v13 = v0[23];

  v14 = v0[24];

  return swift_deallocObject();
}

uint64_t sub_10003E224()
{
  v2 = *(v0 + 48);
  sub_100001EEC(&qword_1000AEBD0, &unk_10008AE60);
  return sub_100086E9C();
}

uint64_t sub_10003E278(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_100038CE8(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E33C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[23];

  v14 = v0[25];

  v15 = v0[26];

  return swift_deallocObject();
}

uint64_t sub_10003E3E4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000324C;

  return sub_1000388C0(a1, v6, v7, (v1 + 6), v4, v5);
}

uint64_t sub_10003E4A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 48))(*(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10003E4F0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 56);

  return v9(v7, v6, v4, v5);
}

uint64_t sub_10003E57C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 72))(*(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10003E5C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 80);

  return v9(v7, v6, v4, v5);
}

unint64_t sub_10003E644()
{
  result = qword_1000AEC58;
  if (!qword_1000AEC58)
  {
    sub_100003200(&qword_1000AEC60, &qword_10008AFF0);
    sub_100006454(&qword_1000AEC68, &qword_1000AEC70, qword_10008AFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC58);
  }

  return result;
}

uint64_t sub_10003E768(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10008609C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003E828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10008609C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProfileListViewModel()
{
  result = qword_1000AECD0;
  if (!qword_1000AECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003E918()
{
  sub_10003E9B4();
  if (v0 <= 0x3F)
  {
    sub_10003EA18();
    if (v1 <= 0x3F)
    {
      sub_10008609C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003E9B4()
{
  result = qword_1000AECE0;
  if (!qword_1000AECE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000AECE0);
  }

  return result;
}

void sub_10003EA18()
{
  if (!qword_1000AECE8)
  {
    type metadata accessor for ProfileViewModel();
    v0 = sub_10008739C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AECE8);
    }
  }
}

uint64_t sub_10003EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_10008609C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003EB58()
{

  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_10008609C();
  sub_100001EEC(&qword_1000AED38, &unk_10008B0F8);
  sub_100006454(&qword_1000AED40, &qword_1000AE618, &qword_10008A0B0);
  sub_100006454(&qword_1000AED30, &qword_1000AED38, &unk_10008B0F8);
  sub_10003EED8(&qword_1000AED48, type metadata accessor for ProfileListViewModel);
  return sub_100086FAC();
}

uint64_t sub_10003ECB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[3];
  sub_100001FB4(a1, v6);
  v7 = *(v5 + 8);

  v7(v6, v5);
  v8 = a1[3];
  v9 = a1[4];
  sub_100001FB4(a1, v8);
  (*(v9 + 16))(v8, v9);
  LODWORD(v8) = *(sub_100001EEC(&qword_1000AED38, &unk_10008B0F8) + 36);
  sub_1000064FC();
  result = sub_100086E6C();
  *a2 = v4;
  return result;
}

uint64_t sub_10003EDAC()
{
  v2 = *v0;
  sub_100001EEC(&qword_1000AED20, &qword_10008B0F0);
  sub_10003EE28();
  return sub_100086C6C();
}

unint64_t sub_10003EE28()
{
  result = qword_1000AED28;
  if (!qword_1000AED28)
  {
    sub_100003200(&qword_1000AED20, &qword_10008B0F0);
    sub_100006454(&qword_1000AED30, &qword_1000AED38, &unk_10008B0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AED28);
  }

  return result;
}

uint64_t sub_10003EED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003EF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_100030948(v3, v3);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = *(v3 - 8);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  swift_allocObject();
  v10 = sub_1000872EC();
  (*(v7 + 16))(v11, a1, v3);
  sub_100013630(v10);
  sub_10008739C();
  swift_getWitnessTable();
  return sub_1000874EC();
}

uint64_t sub_10003F08C(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v6 = a1;
  swift_errorRetain();
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v4, v7);
    sub_100001FB4(v7, v7[3]);
    v2 = sub_1000879CC();
    sub_100001FF8(v7);
    return v2;
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_10000649C(v4, &qword_1000AEE00, &qword_100088748);
    v7[0] = a1;
    swift_errorRetain();
    return sub_10008716C();
  }
}

uint64_t sub_10003F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10003F36C, a4, 0);
}

uint64_t sub_10003F36C()
{
  v1 = *(v0 + 16);
  sub_10003F3D4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

void sub_10003F3D4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1000877DC(56);
  v39 = 0;
  v40 = 0xE000000000000000;
  v41._countAndFlagsBits = 0x72656375646F7250;
  v41._object = 0xE900000000000020;
  sub_1000871BC(v41);
  v10 = [a1 description];
  v11 = sub_10008715C();
  v13 = v12;

  v42._countAndFlagsBits = v11;
  v42._object = v13;
  sub_1000871BC(v42);

  v43._object = 0x800000010008F330;
  v43._countAndFlagsBits = 0xD000000000000013;
  sub_1000871BC(v43);
  v14 = [a2 description];
  v15 = sub_10008715C();
  v17 = v16;

  v44._countAndFlagsBits = v15;
  v44._object = v17;
  sub_1000871BC(v44);

  v45._countAndFlagsBits = 0x7265626D656D202CLL;
  v45._object = 0xE900000000000020;
  sub_1000871BC(v45);
  v18 = [a3 description];
  v19 = sub_10008715C();
  v21 = v20;

  v46._countAndFlagsBits = v19;
  v46._object = v21;
  sub_1000871BC(v46);

  v47._countAndFlagsBits = 0x6E6F70736572202CLL;
  v47._object = 0xEB00000000206573;
  sub_1000871BC(v47);
  if (a4)
  {
    v37 = sub_100023B40(0, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v38 = sub_10004107C(&unk_1000AEE10, &qword_1000AEE08, COMessageSessionResponse_ptr);
    v36[0] = a4;
    v22 = *sub_100001FB4(v36, v37);
    v23 = a4;
    v24 = [v22 description];
    v25 = sub_10008715C();
    v27 = v26;

    sub_100001FF8(v36);
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  v48._countAndFlagsBits = v25;
  v48._object = v27;
  sub_1000871BC(v48);

  sub_10001640C(v39, v40);

  v28 = [a3 member];
  swift_beginAccess();
  v29 = *(v5 + 376);
  if ((v29 & 0xC000000000000001) == 0)
  {
    v33 = *(v5 + 376);
    v34 = a2;
    goto LABEL_11;
  }

  if (v29 < 0)
  {
    v30 = *(v5 + 376);
  }

  else
  {
    v30 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v31 = a2;
  v32 = sub_1000878FC();
  if (!__OFADD__(v32, 1))
  {
    *(v5 + 376) = sub_100070538(v30, v32 + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v5 + 376);
    sub_100073200(a2, v28, isUniquelyReferenced_nonNull_native);
    *(v5 + 376) = v39;

    swift_endAccess();
    sub_10005A31C(a4, a3);
    return;
  }

  __break(1u);
}

uint64_t sub_10003F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v13;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v10 = *(*(sub_100001EEC(&qword_1000AEDC8, &qword_10008C910) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_10003FA6C, a4, 0);
}

uint64_t sub_10003FA6C()
{
  v1 = 7104878;
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  sub_1000877DC(66);
  v40._countAndFlagsBits = 0x72656375646F7250;
  v40._object = 0xE900000000000020;
  sub_1000871BC(v40);
  v5 = [v4 description];
  v6 = sub_10008715C();
  v8 = v7;

  v41._countAndFlagsBits = v6;
  v41._object = v8;
  sub_1000871BC(v41);

  v42._object = 0x800000010008F310;
  v42._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v42);
  v9 = [v2 description];
  v10 = sub_10008715C();
  v12 = v11;

  v43._countAndFlagsBits = v10;
  v43._object = v12;
  sub_1000871BC(v43);

  v44._countAndFlagsBits = 0x616974696E69202CLL;
  v44._object = 0xEC00000020726F74;
  sub_1000871BC(v44);
  if (v3)
  {
    v13 = v0[21];
    v14 = sub_100023B40(0, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
    v0[5] = v14;
    v15 = sub_10004107C(&qword_1000AEDD8, &qword_1000AEDD0, COClusterMemberRoleSnapshot_ptr);
    v0[2] = v13;
    v0[6] = v15;
    v16 = *sub_100001FB4(v0 + 2, v14);
    v17 = v13;
    v18 = [v16 description];
    v19 = sub_10008715C();
    v21 = v20;

    sub_100001FF8(v0 + 2);
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v22 = v0[22];
  v45._countAndFlagsBits = v19;
  v45._object = v21;
  sub_1000871BC(v45);

  v46._countAndFlagsBits = 0x656369746F6E202CLL;
  v46._object = 0xE900000000000020;
  sub_1000871BC(v46);
  if (v22)
  {
    v23 = v0[22];
    v24 = sub_100023B40(0, &qword_1000AEDE0, COMessageSessionNotice_ptr);
    v0[10] = v24;
    v0[11] = sub_10004107C(&qword_1000AEDE8, &qword_1000AEDE0, COMessageSessionNotice_ptr);
    v0[7] = v23;
    v25 = *sub_100001FB4(v0 + 7, v24);
    v26 = v23;
    v27 = [v25 description];
    v1 = sub_10008715C();
    v29 = v28;

    sub_100001FF8(v0 + 7);
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v31 = v0[23];
  v30 = v0[24];
  v32 = v0[20];
  v33 = v0[18];
  v47._countAndFlagsBits = v1;
  v47._object = v29;
  sub_1000871BC(v47);

  v48._countAndFlagsBits = 0x20726F727265202CLL;
  v48._object = 0xE800000000000000;
  sub_1000871BC(v48);
  v49._countAndFlagsBits = sub_10003F08C(v31);
  sub_1000871BC(v49);

  sub_10001640C(0, 0xE000000000000000);

  v34 = [v32 member];
  v0[25] = v34;
  swift_beginAccess();
  v35 = sub_1000703EC(v34);
  swift_endAccess();

  swift_beginAccess();
  sub_100070268(v34, v30);
  sub_10000649C(v30, &qword_1000AEDC8, &qword_10008C910);
  swift_endAccess();
  v36 = swift_task_alloc();
  v0[26] = v36;
  *v36 = v0;
  v36[1] = sub_10003FEA4;
  v37 = v0[18];

  return sub_10005A8E8();
}

uint64_t sub_10003FEA4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10003FFB4, v2, 0);
}

uint64_t sub_10003FFB4()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100040168(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100040188, v2, 0);
}

uint64_t sub_100040188()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000877DC(47);

  v3 = [v2 description];
  v4 = sub_10008715C();
  v6 = v5;

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  sub_1000871BC(v15);

  v16._object = 0x800000010008F2E0;
  v16._countAndFlagsBits = 0xD000000000000022;
  sub_1000871BC(v16);
  v7 = [v1 description];
  v8 = sub_10008715C();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_1000871BC(v17);

  sub_10001640C(0x72656375646F7250, 0xE900000000000020);

  v11 = [objc_allocWithZone(sub_1000864DC()) init];
  v12 = v0[1];

  return v12(1, v11);
}

uint64_t sub_100040498(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100040570;

  return sub_100040168(v7, v8);
}

uint64_t sub_100040570(char a1, void *a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v12 = *v2;

  (v6)[2](v6, a1 & 1, a2);
  _Block_release(v6);

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_100040700()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_100040750()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002740;

  return sub_100040498(v2, v3, v5, v4);
}

uint64_t sub_100040810(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000324C;

  return v7();
}

uint64_t sub_1000408FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002740;

  return v8();
}

uint64_t sub_1000409E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_100040A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100040D10(a3, v25 - v11);
  v13 = sub_10008742C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000649C(v12, &qword_1000AEDC0, &qword_100088E40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10008741C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000873DC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_10008717C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

    return v23;
  }

LABEL_8:
  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100040D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040D80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100040DB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000324C;

  return sub_10001F74C(a1, v5);
}

uint64_t sub_100040E70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002740;

  return sub_10001F74C(a1, v5);
}

uint64_t sub_100040F28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_100040F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000324C;

  return sub_10003F9BC(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10004107C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100023B40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000410CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10004112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10003F344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100041208(void *a1, void *a2)
{
  sub_1000877DC(30);

  v4 = [a1 description];
  v5 = sub_10008715C();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_1000871BC(v14);

  v15._object = 0x800000010008F3E0;
  v15._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v15);
  v8 = [a2 description];
  v9 = sub_10008715C();
  v11 = v10;

  v16._countAndFlagsBits = v9;
  v16._object = v11;
  sub_1000871BC(v16);

  sub_10001640C(0x206C656E6E616843, 0xE800000000000000);
}

void sub_10004133C(void *a1, uint64_t a2, void *a3)
{
  sub_1000877DC(62);
  v15._countAndFlagsBits = 0x6E61684320232323;
  v15._object = 0xEC000000206C656ELL;
  sub_1000871BC(v15);
  v6 = [a1 description];
  v7 = sub_10008715C();
  v9 = v8;

  v16._countAndFlagsBits = v7;
  v16._object = v9;
  sub_1000871BC(v16);

  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x800000010008F3B0;
  sub_1000871BC(v17);
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  sub_1000871BC(v18);
  v19._countAndFlagsBits = 0x20726F727265202CLL;
  v19._object = 0xE800000000000000;
  sub_1000871BC(v19);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  type metadata accessor for BetaEnrollmentNetworkingSession();
  sub_100001EEC(&qword_1000AE538, &qword_100089C98);
  sub_10008716C();
  v10 = objc_allocWithZone(CULogHandle);
  v11 = sub_10008714C();
  v12 = sub_10008714C();

  v13 = [v10 initWithSubsystem:v11 category:v12];

  v14 = sub_10008714C();

  [v13 ulog:60 message:v14];
}

uint64_t sub_100041568(void *a1, void *a2)
{
  sub_1000877DC(62);
  v13._countAndFlagsBits = 0x72656375646F7250;
  v13._object = 0xE900000000000020;
  sub_1000871BC(v13);
  v4 = [a1 description];
  v5 = sub_10008715C();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_1000871BC(v14);

  v15._object = 0x800000010008F380;
  v15._countAndFlagsBits = 0xD000000000000027;
  sub_1000871BC(v15);
  v8 = [a2 description];
  v9 = sub_10008715C();
  v11 = v10;

  v16._countAndFlagsBits = v9;
  v16._object = v11;
  sub_1000871BC(v16);

  v17._countAndFlagsBits = 0x20726F727265202CLL;
  v17._object = 0xE800000000000000;
  sub_1000871BC(v17);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  sub_10001640C(0, 0xE000000000000000);
}

uint64_t sub_100041740(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100041764, v2, 0);
}

uint64_t sub_100041764()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000877DC(32);

  sub_10008609C();
  sub_100042D8C(&qword_1000AE420, &type metadata accessor for UUID);
  v9._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v9);

  v10._countAndFlagsBits = 0x6669746E65646920;
  v10._object = 0xED00002073726569;
  sub_1000871BC(v10);
  sub_100042D8C(&qword_1000AE428, &type metadata accessor for UUID);
  v11._countAndFlagsBits = sub_1000874CC();
  sub_1000871BC(v11);

  sub_100016588(0x20676E6974746553, 0xEF204449656D6F68);

  v0[5] = *(v2 + 112);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100041958;
  v6 = v0[2];
  v5 = v0[3];

  return sub_10005D0DC(v6, v5);
}

uint64_t sub_100041958()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_100041A94, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100041A94()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_100041AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100041B1C, 0, 0);
}

uint64_t sub_100041B1C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  sub_1000877DC(18);
  v6._object = 0x800000010008F460;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v6);
  v0[2] = v3;
  sub_1000879EC();
  sub_100016588(0, 0xE000000000000000);

  return _swift_task_switch(sub_100041BF8, v1, 0);
}

uint64_t sub_100041BF8()
{
  v0[7] = *(v0[6] + 112);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100041CA8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_10005B490(v4, v2, v3);
}

uint64_t sub_100041CA8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100041DD8()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;

  return _swift_task_switch(sub_100041E50, v1, 0);
}

uint64_t sub_100041E50()
{
  v12 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 368);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10006F2DC(*(v2 + 16), 0);
    v5 = *(sub_100001EEC(&qword_1000AEA70, &unk_10008D060) - 8);
    v6 = sub_100036BFC(&v10, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);

    sub_100023AA8();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v7 = *(v0 + 48);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1000877DC(18);

  v10 = 0xD000000000000010;
  v11 = 0x800000010008F440;
  sub_100001EEC(&qword_1000AEA70, &unk_10008D060);
  v14._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v14);

  sub_10001640C(v10, v11);

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_10004202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100042050, 0, 0);
}

uint64_t sub_100042050()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  sub_1000877DC(20);
  v6._object = 0x800000010008F420;
  v6._countAndFlagsBits = 0xD000000000000012;
  sub_1000871BC(v6);
  v0[2] = v3;
  sub_1000879EC();
  sub_100016588(0, 0xE000000000000000);

  return _swift_task_switch(sub_10004212C, v1, 0);
}

uint64_t sub_10004212C()
{
  v0[7] = *(v0[6] + 112);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100042DD4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_10005BBD4(v4, v2, v3);
}

uint64_t sub_1000421DC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100042200, v2, 0);
}

uint64_t sub_100042200()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1000877DC(40);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v9._object = 0x800000010008F400;
  v9._countAndFlagsBits = 0xD000000000000018;
  sub_1000871BC(v9);
  sub_10008672C();
  sub_1000878DC();
  v10._countAndFlagsBits = 0x67726174206E6F20;
  v10._object = 0xEC00000020737465;
  sub_1000871BC(v10);
  sub_100002238();
  v11._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v11);

  sub_100016588(v0[2], v0[3]);

  v0[7] = *(v2 + 112);

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100042384;
  v6 = v0[4];
  v5 = v0[5];

  return sub_10005BDB4(v6, v5);
}

uint64_t sub_100042384()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_1000424C0, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000424C0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100042524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100041AF8(a1, a2, a3);
}

uint64_t sub_1000425D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004265C;

  return sub_100041DB8();
}

uint64_t sub_10004265C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10004277C()
{
  v1 = v0[2];
  sub_100016588(0x6D726177657250, 0xE700000000000000);
  v0[3] = *(v1 + 112);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100042838;

  return sub_10005B860();
}

uint64_t sub_100042838()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100042974, v4, 0);
  }

  else
  {
    v5 = v3[3];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100042974()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1000429D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_10004202C(a1, a2, a3);
}

uint64_t sub_100042A84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_1000421DC(a1, a2);
}

uint64_t sub_100042B28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100042B4C, v2, 0);
}

uint64_t sub_100042B4C()
{
  v0[5] = *(v0[4] + 112);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100042BF8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10005D774(v3, v2);
}

uint64_t sub_100042BF8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_100042DD8, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100042D34(uint64_t a1)
{
  result = sub_100042D8C(&qword_1000ADCA8, type metadata accessor for NetworkManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100042D8C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100042DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100042E04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100042E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100042ED0()
{
  v0 = sub_100086E4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v0);
  v5 = sub_100086E5C();
  (*(v1 + 8))(v4, v0);
  sub_10008701C();
  sub_10008699C();
  v21 = 1;
  *&v20[54] = v25;
  *&v20[70] = v26;
  *&v20[86] = v27;
  *&v20[102] = v28;
  *&v20[6] = v22;
  *&v20[22] = v23;
  *&v20[38] = v24;
  v6 = sub_100086E2C();
  KeyPath = swift_getKeyPath();
  v15 = *&v20[64];
  v16 = *&v20[80];
  *v17 = *&v20[96];
  v11 = *v20;
  v12 = *&v20[16];
  v13 = *&v20[32];
  v9[1] = v5;
  v9[2] = 0;
  v10 = 1;
  v14 = *&v20[48];
  *&v17[14] = *&v20[110];
  v18 = KeyPath;
  v19 = v6;
  sub_100001EEC(&qword_1000AEEF0, &qword_10008B348);
  sub_100043824();
  return sub_100086F5C();
}

uint64_t sub_1000430FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000437E4(a1, v31);
  if (v32)
  {
    if (v32 != 1)
    {
      sub_100001F9C(v31, &v28);
      v5 = *&v29[8];
      sub_100001FB4(&v28, *&v29[8]);
      v4 = sub_100059858(v5);
      sub_100001FF8(&v28);
      goto LABEL_6;
    }

    sub_100086E3C();
  }

  v4 = sub_100042ED0();

LABEL_6:
  v6 = sub_100086B4C();
  v17[0] = 1;
  sub_10004335C(a1, &v28);
  v21 = *&v29[16];
  v22 = *&v29[32];
  v23 = *&v29[48];
  v24 = *&v29[64];
  v19 = v28;
  v20 = *v29;
  v25[2] = *&v29[16];
  v25[3] = *&v29[32];
  v25[4] = *&v29[48];
  v25[5] = *&v29[64];
  v25[0] = v28;
  v25[1] = *v29;
  sub_10000E4A4(&v19, &v26, &qword_1000AEEE0, &qword_10008B308);
  sub_10000649C(v25, &qword_1000AEEE0, &qword_10008B308);
  *&v18[39] = v21;
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[7] = v19;
  *&v18[23] = v20;
  v26 = v6;
  v27[0] = 1;
  v7 = *&v18[16];
  v8 = *&v18[32];
  *&v27[33] = *&v18[32];
  *&v27[17] = *&v18[16];
  v9 = *v18;
  *&v27[1] = *v18;
  *&v27[96] = *(&v24 + 1);
  v10 = *&v18[64];
  *&v27[81] = *&v18[80];
  v11 = *&v18[48];
  *&v27[65] = *&v18[64];
  *&v27[49] = *&v18[48];
  v12 = *&v27[16];
  *(a2 + 56) = *&v27[32];
  *(a2 + 40) = v12;
  v13 = v26;
  *(a2 + 24) = *v27;
  *(a2 + 8) = v13;
  v14 = *&v27[64];
  *(a2 + 104) = *&v27[80];
  v15 = *&v27[48];
  *(a2 + 88) = v14;
  *(a2 + 72) = v15;
  *&v29[33] = v8;
  *a2 = v4;
  *(a2 + 120) = *&v27[96];
  v28 = v6;
  v29[0] = 1;
  *&v29[17] = v7;
  *&v29[1] = v9;
  *&v30[15] = *&v18[95];
  *v30 = *&v18[80];
  *&v29[65] = v10;
  *&v29[49] = v11;

  sub_10000E4A4(&v26, v17, &qword_1000AEEE8, &qword_10008B310);
  sub_10000649C(&v28, &qword_1000AEEE8, &qword_10008B310);
}

uint64_t sub_10004335C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1[8];
  v42 = a1[9];
  sub_1000064FC();

  v3 = sub_100086CCC();
  v36 = v4;
  v37 = v3;
  v34 = v5;
  v38 = v6;
  KeyPath = swift_getKeyPath();
  if (a1[7])
  {
    v40 = a1[6];

    v7 = sub_100086CCC();
    v9 = v8;
    v11 = v10;
    sub_100086BAC();
    sub_100086C9C();
    sub_100006550(v7, v9, v11 & 1);
  }

  v33 = sub_100086F5C();
  if (a1[11])
  {
    v41 = a1[10];
    v43 = a1[11];

    v12 = sub_100086CCC();
    v14 = v13;
    v16 = v15;
    sub_100086C1C();
    v17 = sub_100086CAC();
    v19 = v18;
    v21 = v20;

    sub_100006550(v12, v14, v16 & 1);

    sub_100086BAC();
    v22 = v17;
    v23 = v19;
    v24 = sub_100086C9C();
    v26 = v25;
    LOBYTE(v12) = v27;
    v29 = v28;
    sub_100006550(v22, v23, v21 & 1);

    v30 = v12 & 1;
    sub_100006568(v24, v26, v12 & 1);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v30 = 0;
    v29 = 0;
  }

  sub_100006568(v37, v36, v34 & 1);

  sub_1000439F4(v24, v26, v30, v29);
  sub_100043A38(v24, v26, v30, v29);
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v33;
  *(a2 + 64) = v24;
  *(a2 + 72) = v26;
  *(a2 + 80) = v30;
  *(a2 + 88) = v29;
  sub_100043A38(v24, v26, v30, v29);

  sub_100006550(v37, v36, v34 & 1);
}

double sub_1000436B0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100086A9C();
  v21 = 1;
  sub_1000430FC(v2, &v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_10000E4A4(&v22, &v11, &qword_1000AEED8, &qword_10008B300);
  sub_10000649C(v30, &qword_1000AEED8, &qword_10008B300);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a1 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a1 + 113) = *&v20[96];
  *(a1 + 129) = v6;
  v7 = *v20;
  *(a1 + 33) = *&v20[16];
  result = *&v20[32];
  v9 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v21;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 144) = *&v20[127];
  *(a1 + 17) = v7;
  return result;
}

unint64_t sub_100043824()
{
  result = qword_1000AEEF8;
  if (!qword_1000AEEF8)
  {
    sub_100003200(&qword_1000AEEF0, &qword_10008B348);
    sub_1000438DC();
    sub_100006454(&qword_1000AEF20, &qword_1000AEF28, &qword_10008B360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEEF8);
  }

  return result;
}

unint64_t sub_1000438DC()
{
  result = qword_1000AEF00;
  if (!qword_1000AEF00)
  {
    sub_100003200(&qword_1000AEF08, &unk_10008B350);
    sub_100043968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF00);
  }

  return result;
}

unint64_t sub_100043968()
{
  result = qword_1000AEF10;
  if (!qword_1000AEF10)
  {
    sub_100003200(&qword_1000AEF18, &unk_10008BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF10);
  }

  return result;
}

uint64_t sub_1000439F4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006568(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100043A38(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006550(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_100043A7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100043A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100043ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100043B18(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100043B94()
{
  sub_10008756C();
  swift_getWitnessTable();
  sub_10008723C();
  return v1;
}

uint64_t sub_100043C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = (*(*(v2 + 24) + 8))(*(v2 + 16), *(v2 + 24));
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = result;
  }

  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *a2 = v9;
  }

  return result;
}

void sub_100043CB4(uint64_t a1)
{
  sub_100044458();
  if (v2 <= 0x3F)
  {
    sub_10008672C();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_1000444B0();
        if (v6 <= 0x3F)
        {
          sub_100044500();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100043D8C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1000864CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_10008672C() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v14 + 80);
  if (v13 <= v15)
  {
    v13 = *(v14 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v13;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v20 + v16;
  v22 = v17 + 7;
  v23 = v18 + 128;
  if (v19 < a2)
  {
    v24 = ((*(v14 + 64) + ((v23 + ((v22 + (v21 & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v19 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_31:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v19 + (v31 | v30) + 1;
      }
    }
  }

  if (v9 == v19)
  {
    if (v8 >= 2)
    {
      v35 = (*(v7 + 48))(a1, v8, v6);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = (a1 + v21) & ~v16;
  if (v12 == v19)
  {
    v34 = *(v11 + 48);

    return v34(v33);
  }

  else
  {
    v36 = (v22 + v33) & 0xFFFFFFFFFFFFFFF8;
    if ((v13 & 0x80000000) != 0)
    {
      v38 = *(v14 + 48);

      return v38((v23 + v36) & ~v18, v15);
    }

    else
    {
      v37 = *(v36 + 40);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }
  }
}

double sub_1000440BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1000864CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = *(sub_10008672C() - 8);
  v15 = v13;
  v16 = *(v13 + 84);
  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v13 + 80);
  v22 = *(v13 + 64);
  v23 = *(v19 + 80);
  if (v17 <= v20)
  {
    v24 = *(v19 + 84);
  }

  else
  {
    v24 = v17;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v10)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = *(v9 + 64) + 1;
  }

  v27 = v26 + v21;
  v28 = ((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 < a3)
  {
    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v25 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v25)
  {
    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v31 = a2 - v25;
    }

    else
    {
      v31 = 1;
    }

    if (((*(v19 + 64) + ((v23 + 128 + ((v22 + 7 + (v27 & ~v21)) & 0xFFFFFFF8)) & ~v23) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v32 = ~v25 + a2;
      bzero(a1, v28);
      *a1 = v32;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v28) = v31;
      }

      else
      {
        *(a1 + v28) = v31;
      }
    }

    else if (v12)
    {
      *(a1 + v28) = v31;
    }

    return result;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v12 == 2)
  {
    *(a1 + v28) = 0;
    goto LABEL_45;
  }

  *(a1 + v28) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_46:
  if (v11 == v25)
  {
    v33 = *(v9 + 56);
    v34 = (a2 + 1);
    v35 = a1;
    v36 = v10;
    v18 = v8;
LABEL_48:

    v33(v35, v34, v36, v18);
    return result;
  }

  v37 = (a1 + v27) & ~v21;
  if (v16 != v25)
  {
    v39 = (v22 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
    if ((v24 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *(v39 + 120) = 0;
        result = 0.0;
        *(v39 + 104) = 0u;
        *(v39 + 88) = 0u;
        *(v39 + 72) = 0u;
        *(v39 + 56) = 0u;
        *(v39 + 40) = 0u;
        *(v39 + 24) = 0u;
        *(v39 + 8) = 0u;
        *v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v39 + 40) = (a2 - 1);
      }

      return result;
    }

    v33 = *(v19 + 56);
    v35 = (v23 + 128 + v39) & ~v23;
    v34 = a2;
    v36 = v20;
    goto LABEL_48;
  }

  v38 = *(v15 + 56);

  v38(v37, a2);
  return result;
}

void sub_100044458()
{
  if (!qword_1000AEFC0)
  {
    sub_1000864CC();
    v0 = sub_10008767C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AEFC0);
    }
  }
}

void sub_1000444B0()
{
  if (!qword_1000AEFC8)
  {
    v0 = sub_10008767C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AEFC8);
    }
  }
}

void sub_100044500()
{
  if (!qword_1000AEFD0)
  {
    sub_100003200(&qword_1000ADE30, &qword_100088A48);
    v0 = sub_10008767C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AEFD0);
    }
  }
}

uint64_t sub_100044564(uint64_t a1)
{
  v2 = _s11DeviceModelVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v33 = &v26 - v7;
  __chkstk_darwin(v6);
  v30 = &v26 - v8;
  v34 = sub_10008739C();
  v9 = sub_10008708C();
  v41 = v9;
  v40 = sub_10008709C();
  if (sub_10008738C())
  {
    v26 = v4;
    v10 = 0;
    v35 = (v3 + 16);
    v31 = (v3 + 8);
    v32 = (v3 + 32);
    v11 = v30;
    v28 = a1;
    v29 = v3;
    v12 = v33;
    while (1)
    {
      v15 = sub_10008734C();
      sub_1000872FC();
      if (v15)
      {
        v16 = *(v3 + 16);
        v16(v11, (a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10), v2);
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_10008780C();
        if (v26 != 8)
        {
          __break(1u);
          return result;
        }

        v36 = result;
        v16 = *v35;
        (*v35)(v11, &v36, v2);
        swift_unknownObjectRelease();
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
          return v41;
        }
      }

      (*v32)(v12, v11, v2);
      v18 = &v12[*(v2 + 40)];
      v19 = v18[1];
      if (v19)
      {
        goto LABEL_11;
      }

      v19 = v18[9];
      if (v19)
      {
        break;
      }

      v23 = v16;
      v24 = v33;
      v23(v27, v33, v2);
      v12 = v24;
      sub_10008737C();
      (*v31)(v24, v2);
LABEL_5:
      ++v10;
      if (v17 == sub_10008738C())
      {
        return v41;
      }
    }

    v18 += 8;
LABEL_11:
    v20 = *v18;

    v36 = v20;
    v37 = v19;

    sub_1000870FC();

    if (v38)
    {
    }

    else
    {

      v38 = sub_10008709C();
      v36 = v20;
      v37 = v19;
      sub_1000870DC();
      sub_10008710C();
    }

    v38 = v20;
    v39 = v19;
    sub_1000870DC();
    v21 = sub_1000870EC();
    if (*v22)
    {
      v13 = v16;
      v14 = v33;
      v13(v27, v33, v2);
      sub_10008737C();
      v21(&v36, 0);
      a1 = v28;
      v3 = v29;
    }

    else
    {
      v21(&v36, 0);
      a1 = v28;
      v3 = v29;
      v14 = v33;
    }

    (*v31)(v14, v2);
    v11 = v30;
    v12 = v14;
    goto LABEL_5;
  }

  return v9;
}

unint64_t sub_1000449F8(int *a1)
{
  v3 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v71 - v5;
  v7 = sub_1000864CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_10006EC0C((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = 0xD000000000000019;
  *(v15 + 5) = 0x800000010008F480;
  v16 = (v1 + a1[10]);
  v17 = v16[5];
  v79 = v16[4];
  v80 = v17;
  v18 = v16[7];
  v81 = v16[6];
  v82 = v18;
  v19 = v16[1];
  v75 = *v16;
  v76 = v19;
  v20 = v16[3];
  v77 = v16[2];
  v78 = v20;
  v21 = sub_100012C94();
  v24 = *(v12 + 2);
  v23 = *(v12 + 3);
  if (v24 >= v23 >> 1)
  {
    v71 = v21;
    v68 = v12;
    v69 = v22;
    v70 = sub_10006EC0C((v23 > 1), v24 + 1, 1, v68);
    v22 = v69;
    v12 = v70;
    v21 = v71;
  }

  *(v12 + 2) = v24 + 1;
  v25 = &v12[16 * v24];
  *(v25 + 4) = v21;
  *(v25 + 5) = v22;
  sub_1000450F8(v1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100045168(v6);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1000877DC(16);
    v83._countAndFlagsBits = 0x6962616C69617641;
    v83._object = 0xEE00203A7974696CLL;
    sub_1000871BC(v83);
    sub_1000878DC();
    v26 = v73;
    v27 = v74;
    v28 = v12;
    v29 = *(v12 + 2);
    v30 = v28;
    v31 = *(v28 + 3);
    if (v29 >= v31 >> 1)
    {
      v30 = sub_10006EC0C((v31 > 1), v29 + 1, 1, v30);
    }

    (*(v8 + 8))(v11, v7);
    *(v30 + 2) = v29 + 1;
    v32 = &v30[16 * v29];
    v12 = v30;
    *(v32 + 4) = v26;
    *(v32 + 5) = v27;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  v84._countAndFlagsBits = 0x203A6574617453;
  v84._object = 0xE700000000000000;
  sub_1000871BC(v84);
  v33 = a1[9];
  sub_10008672C();
  sub_1000878DC();
  v34 = v73;
  v35 = v74;
  v37 = *(v12 + 2);
  v36 = *(v12 + 3);
  if (v37 >= v36 >> 1)
  {
    v12 = sub_10006EC0C((v36 > 1), v37 + 1, 1, v12);
  }

  *(v12 + 2) = v37 + 1;
  v38 = &v12[16 * v37];
  *(v38 + 4) = v34;
  *(v38 + 5) = v35;
  v39 = v1 + a1[12];
  if ((*(v39 + 8) & 1) == 0)
  {
    v40 = *v39;
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1000877DC(23);

    v73 = 0xD000000000000015;
    v74 = 0x800000010008F4C0;
    v72 = v40;
    v85._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v85);

    v34 = v73;
    v41 = v74;
    v43 = *(v12 + 2);
    v42 = *(v12 + 3);
    if (v43 >= v42 >> 1)
    {
      v12 = sub_10006EC0C((v42 > 1), v43 + 1, 1, v12);
    }

    *(v12 + 2) = v43 + 1;
    v44 = &v12[16 * v43];
    *(v44 + 4) = v34;
    *(v44 + 5) = v41;
  }

  v45 = *(v1 + a1[13]);
  if (v45)
  {
    if (v45 >> 62)
    {
      if (!sub_10008793C())
      {
        goto LABEL_30;
      }

      v46 = sub_10008793C();
      if (!v46)
      {
        v50 = _swiftEmptyArrayStorage;
        goto LABEL_28;
      }

LABEL_19:
      v73 = _swiftEmptyArrayStorage;
      v47 = &v73;
      sub_10006F608(0, v46 & ~(v46 >> 63), 0);
      if (v46 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v71 = v12;
      v49 = 0;
      v50 = v73;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v51 = sub_10008781C();
        }

        else
        {
          v51 = *(v45 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v51 description];
        v54 = sub_10008715C();
        v56 = v55;

        v73 = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          sub_10006F608((v57 > 1), v58 + 1, 1);
          v50 = v73;
        }

        ++v49;
        v50[2] = v58 + 1;
        v59 = &v50[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
      }

      while (v46 != v49);
      v12 = v71;
LABEL_28:
      v73 = v50;
      sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
      sub_100012FE8();
      v60 = sub_10008712C();
      v62 = v61;

      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1000877DC(24);

      v73 = 0xD000000000000015;
      v74 = 0x800000010008F4A0;
      v86._countAndFlagsBits = v60;
      v86._object = v62;
      sub_1000871BC(v86);

      v87._countAndFlagsBits = 93;
      v87._object = 0xE100000000000000;
      sub_1000871BC(v87);
      v34 = v73;
      v45 = v74;
      v46 = *(v12 + 2);
      v48 = *(v12 + 3);
      v47 = (v46 + 1);
      if (v46 < v48 >> 1)
      {
LABEL_29:
        *(v12 + 2) = v47;
        v63 = &v12[16 * v46];
        *(v63 + 4) = v34;
        *(v63 + 5) = v45;
        goto LABEL_30;
      }

LABEL_35:
      v12 = sub_10006EC0C((v48 > 1), v47, 1, v12);
      goto LABEL_29;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v73 = 60;
  v74 = 0xE100000000000000;
  v72 = v12;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100012FE8();
  v64 = sub_10008712C();
  v66 = v65;

  v88._countAndFlagsBits = v64;
  v88._object = v66;
  sub_1000871BC(v88);

  v89._countAndFlagsBits = 62;
  v89._object = 0xE100000000000000;
  sub_1000871BC(v89);
  return v73;
}

uint64_t sub_1000450F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045168(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1000451D0(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000468C8(v6, a2, a3);
  return sub_100045258;
}

void sub_100045258(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1000452A4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_10008609C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000469D4(v3, v8);
  return sub_1000453BC;
}

void sub_1000453BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_100045434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v4[11] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100045518, v3, 0);
}

uint64_t sub_100045518()
{
  v10 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(*(v0 + 80) + 120);
  *(v0 + 56) = *(v0 + 64);

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_10006C118(v0 + 40, v9);
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100045674(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1000861CC();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = *(*(sub_100001EEC(&qword_1000AF048, &qword_10008B520) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = sub_10008609C();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000457E0, v1, 0);
}

uint64_t sub_1000457E0()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_25:
    v67 = v0[27];
    v66 = v0[28];
    v69 = v0[23];
    v68 = v0[24];
    v70 = v0[22];

    v71 = v0[1];

    return v71();
  }

  v3 = v0 + 2;
  v4 = v0 + 6;
  v5 = v0[26];
  v6 = v0[21];
  v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v8 = (v5 + 8);
  v81 = (v5 + 16);
  v82 = v0[19];
  v76 = (v6 + 48);
  v77 = (v6 + 56);
  v74 = (v6 + 32);
  v72 = v6;
  v80 = *(v5 + 72);
  v75 = (v5 + 8);
  while (1)
  {
    v86 = v2;
    v11 = v0[27];
    v12 = v0[28];
    v13 = v0[25];
    sub_10008608C();
    v83 = sub_10008605C();
    v15 = v14;
    v16 = *v8;
    (*v8)(v12, v13);
    v17 = *(v82 + 120);
    v84 = v7;
    (*v81)(v11, v7, v13);

    v85 = sub_100075AD8(v3);
    v18 = sub_1000452A4(v4);
    v20 = v19;
    v21 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
    v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
    v23 = v0[25];
    if (!v22)
    {
      break;
    }

    v9 = v0[27];

    (v18)(v4, 0);
    v16(v9, v23);
    v10 = v84;
LABEL_4:
    (v85)(v3, 0);

    v7 = v10 + v80;
    v2 = v86 - 1;
    if (v86 == 1)
    {
      goto LABEL_25;
    }
  }

  v79 = v18;
  v24 = v0[28];
  v25 = v0[24];
  v26 = v0[20];

  sub_10008608C();
  sub_10008605C();
  v16(v24, v23);
  sub_1000861AC();
  v27 = *v77;
  (*v77)(v25, 0, 1, v26);
  v28 = sub_10008644C();
  v78 = sub_10008612C();
  v30 = v29;
  if ((*v76)(v25, 1, v26) == 1)
  {
    sub_10000649C(v0[24], &qword_1000AF048, &qword_10008B520);
    v31 = *v30;
    v32 = sub_10006E5B0(v83, v15);
    if (v33)
    {
      v34 = v32;
      v35 = v28;
      v36 = *v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v30;
      v87 = *v30;
      v4 = v0 + 6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000741D4();
        v38 = v87;
      }

      v39 = v0[23];
      v40 = v0[20];
      v41 = *(*(v38 + 48) + 16 * v34 + 8);

      (*(v72 + 32))(v39, *(v38 + 56) + *(v72 + 72) * v34, v40);
      sub_100072A70(v34, v38);
      v42 = 0;
      *v30 = v38;
      v28 = v35;
    }

    else
    {
      v42 = 1;
      v4 = v0 + 6;
    }

    v55 = v0[23];
    v27(v55, v42, 1, v0[20]);

    sub_10000649C(v55, &qword_1000AF048, &qword_10008B520);
    v3 = v0 + 2;
    v8 = v75;
LABEL_24:
    v10 = v84;
    v64 = v0[27];
    v65 = v0[25];
    v78();
    v28();
    v79(v4, 0);
    v16(v64, v65);
    goto LABEL_4;
  }

  v73 = v28;
  v43 = *v74;
  (*v74)(v0[22], v0[24], v0[20]);
  v44 = *v30;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v30;
  v88 = *v30;
  *v30 = 0x8000000000000000;
  v48 = sub_10006E5B0(v83, v15);
  v49 = *(v46 + 16);
  v50 = (v47 & 1) == 0;
  result = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v52 = v47;
  if (*(v46 + 24) >= result)
  {
    v8 = v75;
    if ((v45 & 1) == 0)
    {
      sub_1000741D4();
    }

    goto LABEL_19;
  }

  sub_100071A40(result, v45);
  v53 = sub_10006E5B0(v83, v15);
  v8 = v75;
  if ((v52 & 1) == (v54 & 1))
  {
    v48 = v53;
LABEL_19:
    v56 = v0[22];
    v57 = v0[20];
    if (v52)
    {

      v58 = v88;
      (*(v72 + 40))(v88[7] + *(v72 + 72) * v48, v56, v57);
    }

    else
    {
      v58 = v88;
      v88[(v48 >> 6) + 8] |= 1 << v48;
      v59 = (v88[6] + 16 * v48);
      *v59 = v83;
      v59[1] = v15;
      result = v43(v88[7] + *(v72 + 72) * v48, v56, v57);
      v60 = v88[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_32;
      }

      v88[2] = v62;
    }

    v63 = *v30;
    *v30 = v58;

    v4 = v0 + 6;
    v3 = v0 + 2;
    v28 = v73;
    goto LABEL_24;
  }

  return sub_100087A5C();
}

uint64_t sub_100045E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a2;
  v4[15] = v3;
  v4[13] = a1;
  v4[16] = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[17] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_100045F64, v3, 0);
}

uint64_t sub_100045F64()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = *(v0[15] + 120);
  v0[12] = v0[13];

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  sub_10006C438((v0 + 2), (v0 + 10));
  sub_100036E90((v0 + 2));
  sub_10000649C((v0 + 10), &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000460BC()
{
  v1[5] = v0;
  v2 = sub_100001EEC(&qword_1000AF058, &qword_10008B580);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_100001EEC(&qword_1000AF060, &qword_10008B588);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000461F0, v0, 0);
}

uint64_t sub_1000461F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(v0[5] + 120);
  swift_beginAccess();

  sub_100001EEC(&qword_1000AF068, &qword_10008B590);
  sub_1000867BC();
  swift_endAccess();
  sub_100001EEC(&qword_1000AF070, qword_10008B598);
  sub_100006454(&qword_1000AF078, &qword_1000AF058, &qword_10008B580);
  sub_10008681C();
  (*(v6 + 8))(v3, v5);
  sub_100006454(&qword_1000AF080, &qword_1000AF060, &qword_10008B588);
  v8 = sub_10008680C();

  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1000463C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100045434(a1, a2, a3);
}

uint64_t sub_100046494()
{
  v1 = *(v0[3] + 120);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867DC();

  v2 = sub_10003459C(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100046558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_100045674(a1);
}

uint64_t sub_1000465EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100045E80(a1, a2, a3);
}

uint64_t sub_1000466B4()
{
  sub_1000168F8(0xD00000000000002BLL, 0x800000010008F4E0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004672C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10004674C, v1, 0);
}

uint64_t sub_10004674C()
{
  v1 = v0[2];
  v2 = *(v0[3] + 120);

  sub_100075CE8(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000467CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  *a2 = v5;
  return result;
}

uint64_t sub_10004684C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

void (*sub_1000468C8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1000472FC(v8);
  v8[9] = sub_100046BA8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100046974;
}

void sub_100046974(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000469D4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_10008609C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_100047324(v6);
  v6[12] = sub_100046DB4(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_100046B10;
}

void sub_100046B10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100046BA8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10006E5B0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100073E14();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100071454(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10006E5B0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100046D00;
}

void sub_100046D00(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100073500(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_100047440(*(v7 + 48) + 16 * v6);
    sub_1000726E0(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

void (*sub_100046DB4(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = sub_10008609C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[4] = v11;
  v12 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  v8[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v8[6] = v13;
  v15 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v13 + 64));
    v8[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[9] = v16;
  v17 = *(*(sub_100001EEC(&qword_1000AF050, &qword_10008B528) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v8[11] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v8[12] = v18;
  v20 = *v4;
  v22 = sub_10006E66C(a2);
  *(v8 + 112) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_100073968();
      goto LABEL_21;
    }

    sub_100070D38(v25, a3 & 1);
    v28 = *v4;
    v29 = sub_10006E66C(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_100087A5C();
    __break(1u);
    return result;
  }

LABEL_21:
  v8[13] = v22;
  if (v26)
  {
    sub_1000473C8(*(*v4 + 56) + *(v14 + 72) * v22, v19);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v14 + 56))(v19, v31, 1, v12);
  return sub_1000470DC;
}

void sub_1000470DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_100047358(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1000473C8(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1000473C8(v13, v14);
        sub_100073408(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_100047358(v5, v16);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1000473C8(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1000473C8(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_10000649C(v9, &qword_1000AF050, &qword_10008B528);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_100072220(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_10000649C(v22, &qword_1000AF050, &qword_10008B528);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1000472FC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100047494;
}

uint64_t (*sub_100047324(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004734C;
}

uint64_t sub_100047358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF050, &qword_10008B528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000473C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AEA78, &qword_10008D080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000474A8(uint64_t a1)
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

uint64_t sub_1000474CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004752C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_100047588(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1000475C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000475DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000475F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100047640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000476C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001EEC(&qword_1000AF098, &qword_10008B818);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v4);
  v64 = (&v56 - v6);
  v62 = sub_100001EEC(&qword_1000AF0A0, &qword_10008B820);
  v7 = *(*(v62 - 8) + 64);
  v8 = __chkstk_darwin(v62);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  v12 = sub_100001EEC(&qword_1000AF0A8, &qword_10008B828);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v66 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v21 = a1[3];

  v22 = sub_100086CBC();
  v25 = v22;
  v26 = v23;
  v65 = v27;
  v28 = v24;
  v29 = *(a1 + 3);
  v69[0] = *(a1 + 2);
  v69[1] = v29;
  if (*(&v69[0] + 1))
  {
    v60 = v22;
    v61 = v24;
    v58 = v4;
    v59 = v23;
    v31 = a1[8];
    v30 = a1[9];
    sub_10000E4A4(v69, v68, &qword_1000AF0B8, &qword_10008B838);

    v32 = sub_100086CBC();
    v34 = v33;
    v36 = v35;
    v68[0] = sub_100086BAC();
    v56 = sub_100086C9C();
    v38 = v37;
    v40 = v39;
    v57 = v41;
    v42 = v32;
    v26 = v59;
    sub_100006550(v42, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    v44 = &v11[*(v62 + 36)];
    v45 = *(sub_100001EEC(&qword_1000AF0C0, &qword_10008B870) + 28);
    v46 = enum case for Text.TruncationMode.middle(_:);
    v47 = sub_100086C8C();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = swift_getKeyPath();
    *v11 = v56;
    *(v11 + 1) = v38;
    v48 = v40 & 1;
    v25 = v60;
    v28 = v61;
    v11[16] = v48;
    *(v11 + 3) = v57;
    *(v11 + 4) = KeyPath;
    *(v11 + 5) = 0x3FE8000000000000;
    v49 = v63;
    sub_10000E4A4(v11, v63, &qword_1000AF0A0, &qword_10008B820);
    v50 = v64;
    *v64 = 0;
    *(v50 + 8) = 1;
    v51 = sub_100001EEC(&qword_1000AF0C8, &qword_10008B8A8);
    sub_10000E4A4(v49, v50 + *(v51 + 48), &qword_1000AF0A0, &qword_10008B820);
    sub_10000649C(v11, &qword_1000AF0A0, &qword_10008B820);
    sub_10000649C(v49, &qword_1000AF0A0, &qword_10008B820);
    sub_100047EDC(v50, v17);
    (*(v67 + 56))(v17, 0, 1, v58);
  }

  else
  {
    (*(v67 + 56))(v17, 1, 1, v4);
  }

  v52 = v66;
  sub_10000E4A4(v17, v66, &qword_1000AF0A8, &qword_10008B828);
  *a2 = v25;
  *(a2 + 8) = v26;
  v53 = v65 & 1;
  *(a2 + 16) = v65 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = 257;
  v54 = sub_100001EEC(&qword_1000AF0B0, &qword_10008B830);
  sub_10000E4A4(v52, a2 + *(v54 + 48), &qword_1000AF0A8, &qword_10008B828);
  sub_100006568(v25, v26, v53);

  sub_10000649C(v17, &qword_1000AF0A8, &qword_10008B828);
  sub_10000649C(v52, &qword_1000AF0A8, &qword_10008B828);
  sub_100006550(v25, v26, v53);
}

uint64_t sub_100047C20@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v9[2] = v1[2];
  v9[3] = v3;
  v9[4] = v1[4];
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  *a1 = sub_100086A9C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_100001EEC(&qword_1000AF088, &qword_10008B7D8);
  sub_1000476C0(v9, a1 + *(v5 + 44));
  KeyPath = swift_getKeyPath();
  result = sub_100001EEC(&qword_1000AF090, &qword_10008B810);
  v8 = a1 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  return result;
}

uint64_t sub_100047CD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100086A6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100047D04@<X0>(uint64_t a1@<X8>)
{
  result = sub_100086A6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100047D38(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100086A7C();
}

uint64_t sub_100047D68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100086A7C();
}

uint64_t sub_100047D98@<X0>(void *a1@<X8>)
{
  result = sub_1000869EC();
  *a1 = v3;
  return result;
}

uint64_t sub_100047E10(uint64_t a1)
{
  v2 = sub_100086C8C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000869BC();
}

uint64_t sub_100047EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AF098, &qword_10008B818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047F50()
{
  result = qword_1000AF0D0;
  if (!qword_1000AF0D0)
  {
    sub_100003200(&qword_1000AF090, &qword_10008B810);
    sub_100006454(&qword_1000AF0D8, &qword_1000AF0E0, &qword_10008B8B0);
    sub_100006454(&qword_1000AF0E8, qword_1000AF0F0, &qword_10008B8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF0D0);
  }

  return result;
}

uint64_t sub_10004803C(uint64_t a1)
{
  result = sub_10008647C();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000480C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_10008647C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100048304(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_10008647C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1000485E8(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE630, &qword_10008A0C8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v54 - v6;
  v68 = sub_10008614C();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v54 - v15;
  __chkstk_darwin(v14);
  v72 = &v54 - v16;
  v17 = _s11DeviceModelVMa_0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v57 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v54 = v25;
  __chkstk_darwin(v22);
  v27 = &v54 - v26;
  v65 = sub_10008739C();
  v28 = sub_10008708C();
  v78 = v28;
  v77 = sub_10008709C();
  if (!sub_10008738C())
  {
    return v28;
  }

  v29 = 0;
  v71 = (v18 + 16);
  v61 = (v7 + 8);
  v62 = (v18 + 32);
  v59 = (v18 + 8);
  v58 = a1;
  v63 = v24;
  v64 = v18;
  v60 = v27;
  while (1)
  {
    v30 = sub_10008734C();
    sub_1000872FC();
    if (v30)
    {
      v31 = *(v18 + 16);
      v31(v27, (a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v29), v17);
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    result = sub_10008780C();
    if (v54 != 8)
    {
      break;
    }

    v73 = result;
    v31 = *v71;
    (*v71)(v27, &v73, v17);
    swift_unknownObjectRelease();
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
LABEL_26:
      __break(1u);
      return v78;
    }

LABEL_8:
    v70 = v31;
    (*v62)(v24, v27, v17);
    v33 = v67;
    sub_10008645C();
    v34 = v72;
    sub_10008611C();
    (*v61)(v33, v68);
    v35 = v66;
    sub_100049844(v34, v66);
    v36 = sub_10008639C();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    if (v38(v35, 1, v36) == 1)
    {
      sub_10000649C(v35, &qword_1000AE638, &qword_10008A0D0);
    }

    else
    {
      v39 = v56;
      sub_10008637C();
      (*(v37 + 8))(v35, v36);
      v40 = sub_10008617C();
      v41 = v39;
      v42 = *(v40 - 8);
      if ((*(v42 + 48))(v41, 1, v40) != 1)
      {
        v47 = sub_10008615C();
        v49 = v48;
        (*(v42 + 8))(v41, v40);
        goto LABEL_17;
      }

      sub_10000649C(v41, &qword_1000AE630, &qword_10008A0C8);
      a1 = v58;
    }

    v43 = v69;
    sub_100049844(v72, v69);
    if (v38(v43, 1, v36) != 1)
    {
      v44 = v55;
      sub_10008635C();
      (*(v37 + 8))(v69, v36);
      v45 = sub_10008617C();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45) == 1)
      {
        sub_10000649C(v44, &qword_1000AE630, &qword_10008A0C8);
        a1 = v58;
        v24 = v63;
        v18 = v64;
        goto LABEL_4;
      }

      v47 = sub_10008615C();
      v49 = v50;
      (*(v46 + 8))(v44, v45);
LABEL_17:
      v24 = v63;
      v73 = v47;
      v74 = v49;

      sub_1000870FC();

      if (v75)
      {
      }

      else
      {

        v75 = sub_10008709C();
        v73 = v47;
        v74 = v49;
        sub_1000870DC();
        sub_10008710C();
      }

      v75 = v47;
      v76 = v49;
      sub_1000870DC();
      v51 = sub_1000870EC();
      if (*v52)
      {
        v70(v57, v24, v17);
        sub_10008737C();
      }

      v51(&v73, 0);
      v18 = v64;
      v27 = v60;

      sub_10000649C(v72, &qword_1000AE638, &qword_10008A0D0);
      (*v59)(v24, v17);
      a1 = v58;
      goto LABEL_5;
    }

    sub_10000649C(v43, &qword_1000AE638, &qword_10008A0D0);
    v24 = v63;
    v18 = v64;
LABEL_4:
    v70(v57, v24, v17);
    sub_10008737C();
    sub_10000649C(v72, &qword_1000AE638, &qword_10008A0D0);
    (*v59)(v24, v17);
    v27 = v60;
LABEL_5:
    ++v29;
    if (v32 == sub_10008738C())
    {
      return v78;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100048EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = *(a2 + 16);
  v4 = sub_100087A0C();
  sub_100087AEC(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_100048F54()
{
  if ((sub_10008643C() & 1) == 0)
  {
    return 0;
  }

  v0 = *(_s11DeviceModelVMa_0() + 36);
  return sub_10008713C() & 1;
}

Swift::Int sub_100048FC4(uint64_t a1)
{
  sub_100087ADC();
  sub_100048EFC(v3, a1);
  return sub_100087AFC();
}

Swift::Int sub_100049014(uint64_t a1, uint64_t a2)
{
  sub_100087ADC();
  sub_100048EFC(v4, a2);
  return sub_100087AFC();
}

uint64_t sub_100049058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_100048F54();
}

uint64_t sub_100049064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004900C();
  *a1 = result;
  return result;
}

uint64_t sub_10004908C()
{
  v0 = sub_10008614C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_10008645C();
  sub_10008611C();
  (*(v1 + 8))(v4, v0);
  v9 = sub_10008639C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000649C(v8, &qword_1000AE638, &qword_10008A0D0);
    return 0x646F50656D6F48;
  }

  else
  {
    v12 = sub_10008633C();
    (*(v10 + 8))(v8, v9);
    return v12;
  }
}

unint64_t sub_100049268()
{
  v0 = sub_10008614C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  sub_10008645C();
  sub_10008611C();
  (*(v1 + 8))(v4, v0);
  v9 = sub_10008639C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000649C(v8, &qword_1000AE638, &qword_10008A0D0);
    return 0xD000000000000010;
  }

  v11 = sub_10008634C();
  v13 = v12;
  (*(v10 + 8))(v8, v9);
  v14 = sub_1000676B0(v11, v13);
  if (v14 > 0xFDu)
  {
    return 0xD000000000000010;
  }

  if ((v14 & 0x80u) == 0)
  {
    v16 = 17;
  }

  else
  {
    v16 = 18;
  }

  if ((v14 & 0x80u) == 0)
  {
    v17 = 15;
  }

  else
  {
    v17 = 16;
  }

  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  return sub_10000F8C4(&off_1000A62A8, v18);
}

uint64_t sub_100049490()
{
  v0 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_10008614C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10008639C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0x6563697665443CLL;
  v21 = 0xE700000000000000;
  sub_10008645C();
  sub_10008611C();
  (*(v5 + 8))(v8, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_10000649C(v3, &qword_1000AE638, &qword_10008A0D0);
    v22._object = 0x800000010008F530;
    v22._countAndFlagsBits = 0xD000000000000017;
    sub_1000871BC(v22);
  }

  else
  {
    (*(v10 + 32))(v13, v3, v9);
    v19._countAndFlagsBits = 10016;
    v19._object = 0xE200000000000000;
    v23._countAndFlagsBits = sub_10008633C();
    sub_1000871BC(v23);

    v24._countAndFlagsBits = 39;
    v24._object = 0xE100000000000000;
    sub_1000871BC(v24);
    sub_1000871BC(v19);

    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_1000877DC(26);

    v19._countAndFlagsBits = 0x3A6C65646F6D207CLL;
    v19._object = 0xE900000000000020;
    v25._countAndFlagsBits = sub_10008634C();
    sub_1000871BC(v25);

    v26._countAndFlagsBits = 0x7546646F7270207CLL;
    v26._object = 0xED0000203A646573;
    sub_1000871BC(v26);
    v14 = sub_10008638C();
    v15 = (v14 & 1) == 0;
    if (v14)
    {
      v16._countAndFlagsBits = 1702195828;
    }

    else
    {
      v16._countAndFlagsBits = 0x65736C6166;
    }

    if (v15)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v16._object = v17;
    sub_1000871BC(v16);

    sub_1000871BC(v19);

    (*(v10 + 8))(v13, v9);
  }

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_1000871BC(v27);
  return v20;
}

uint64_t sub_100049844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000498B4(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a2;
  if (!a2)
  {
    v13 = v6;
  }

  v14 = a2;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:a1];
  v15 = [a1 topAnchor];
  v16 = [v13 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a3];

  v18 = [v13 rightAnchor];
  v19 = [a1 rightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:a6];

  v21 = [v13 bottomAnchor];
  v22 = [a1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a5];

  v24 = [a1 leftAnchor];
  v25 = [v13 leftAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:a4];

  v27 = objc_opt_self();
  sub_100001EEC(qword_1000AE698, &qword_10008A118);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10008B9C0;
  *(v28 + 32) = v17;
  *(v28 + 40) = v20;
  *(v28 + 48) = v23;
  *(v28 + 56) = v26;
  sub_100049C34();
  v29 = v17;
  v30 = v20;
  v31 = v23;
  v32 = v26;
  isa = sub_1000872BC().super.isa;

  [v27 activateConstraints:isa];

  return v29;
}

unint64_t sub_100049C34()
{
  result = qword_1000AF178;
  if (!qword_1000AF178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AF178);
  }

  return result;
}

uint64_t sub_100049CD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100049D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100049DB4()
{
  sub_1000877DC(16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  sub_1000871BC(v7);

  v8._countAndFlagsBits = 2629671;
  v8._object = 0xE300000000000000;
  sub_1000871BC(v8);
  v1 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  v2 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID + 8);
  v9._countAndFlagsBits = v1;
  v9._object = v2;
  sub_1000871BC(v9);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  sub_1000871BC(v10);
  sub_100016924(0x272065766F6D6552, 0xE800000000000000);

  v3 = v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, v2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100049F1C()
{
  v1 = OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__contents;
  v2 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__organization, v2);
  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__profileDescription, v2);
  v4 = *(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID + 8);

  v3(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__profileName, v2);
  v5 = OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel__signingDetails;
  v6 = sub_100001EEC(&qword_1000AF3A0, &qword_10008BC78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10004A650(v0 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for ProfileViewModel()
{
  result = qword_1000AF1D0;
  if (!qword_1000AF1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A0F0()
{
  sub_10004A1F0(319, &qword_1000AE8B8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10004A1F0(319, &unk_1000AF1E0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A1F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000867FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10004A24C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProfileViewModel();
  result = sub_10008676C();
  *a1 = result;
  return result;
}

uint64_t sub_10004A28C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}