__n128 sub_100043CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100043D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100043E00()
{
  result = qword_1000D93B0;
  if (!qword_1000D93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93B0);
  }

  return result;
}

unint64_t sub_100043E58()
{
  result = qword_1000D93B8;
  if (!qword_1000D93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93B8);
  }

  return result;
}

unint64_t sub_100043EB0()
{
  result = qword_1000D93C0;
  if (!qword_1000D93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93C0);
  }

  return result;
}

uint64_t sub_100043F6C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_10009FA70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSSessionInvitationSchema();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009F270();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_10009F260();
  sub_10004427C();
  sub_10009F250();
  if (!v1)
  {
    v15 = &v10[v7[15]];
    v16 = *v15;
    v47 = v15[1];
    v48 = v16;
    (*(v3 + 16))(v6, v10, v2);
    v17 = *&v10[v7[5]];
    v18 = &v10[v7[6]];
    v53 = *v18;
    v54 = v17;
    v52 = v18[8];
    v19 = v7[7];
    v20 = v7[8];
    v21 = v7[9];
    v22 = v7[10];
    v23 = &v10[v7[11]];
    v51 = v10[v7[12]];
    v49 = v14;
    v50 = v6;
    v25 = *v23;
    v24 = v23[1];
    v26 = &v10[v7[13]];
    v28 = *v26;
    v27 = v26[1];
    v29 = v10[v7[14]];
    v30 = v7[17];
    v45 = v10[v7[16]];
    v46 = v29;
    v31 = v7[19];
    v39 = v10[v7[18]];
    v32 = *&v10[v30 + 8];
    v40 = *&v10[v30];
    v35[1] = v32;
    v33 = *&v10[v31 + 8];
    v38 = *&v10[v31];
    LODWORD(v31) = v10[v7[20]];
    v36 = v10[v7[21]];
    v37 = v31;
    LODWORD(v22) = v10[v22];
    v43 = v10[v21];
    v44 = v22;
    LODWORD(v20) = v10[v20];
    v41 = v10[v19];
    v42 = v20;
    sub_100005750(v48, v47);
    sub_100005750(v25, v24);
    sub_100005750(v28, v27);

    sub_10009FA80();
    sub_1000442D4(v10);
  }
}

unint64_t sub_10004427C()
{
  result = qword_1000D93D0;
  if (!qword_1000D93D0)
  {
    type metadata accessor for IDSSessionInvitationSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93D0);
  }

  return result;
}

uint64_t sub_1000442D4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSessionInvitationSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044330()
{
  v1 = sub_10009F270();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_100044440();
  sub_10009F250();
  if (!v0)
  {

    sub_10009F6F0();
  }
}

unint64_t sub_100044440()
{
  result = qword_1000D93D8;
  if (!qword_1000D93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93D8);
  }

  return result;
}

Swift::Int sub_1000445BC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C70(v1);
  return sub_1000A0C90();
}

Swift::Int sub_100044630()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A0C70(v1);
  return sub_1000A0C90();
}

unint64_t sub_100044674()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v4;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_100044718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004474C(uint64_t a1)
{
  v2 = sub_1000455CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044788(uint64_t a1)
{
  v2 = sub_1000455CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000447D0(uint64_t a1)
{
  v2 = sub_10004571C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004480C(uint64_t a1)
{
  v2 = sub_10004571C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004485C(uint64_t a1)
{
  v2 = sub_1000457C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044898(uint64_t a1)
{
  v2 = sub_1000457C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000448D4(uint64_t a1)
{
  v2 = sub_100045928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044910(uint64_t a1)
{
  v2 = sub_100045928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004494C(uint64_t a1)
{
  v2 = sub_10004586C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044988(uint64_t a1)
{
  v2 = sub_10004586C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000449C4(uint64_t a1)
{
  v2 = sub_100045A24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044A00(uint64_t a1)
{
  v2 = sub_100045A24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100044A3C(uint64_t a1)
{
  v2 = sub_100045620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044A78(uint64_t a1)
{
  v2 = sub_100045620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSDictionaryContextClientSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D93E0, &qword_1000AB130);
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  __chkstk_darwin(v2);
  v91 = &v72 - v4;
  v5 = sub_1000017BC(&qword_1000D93E8, &qword_1000AB138);
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  __chkstk_darwin(v5);
  v88 = &v72 - v7;
  v8 = sub_1000017BC(&qword_1000D93F0, &qword_1000AB140);
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  __chkstk_darwin(v8);
  v85 = &v72 - v10;
  v11 = sub_1000017BC(&qword_1000D93F8, &qword_1000AB148);
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  __chkstk_darwin(v11);
  v82 = &v72 - v13;
  v80 = type metadata accessor for IDSKCSharingInvitationSchema();
  v14 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000017BC(&qword_1000D9400, &qword_1000AB150);
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v77 = &v72 - v18;
  v75 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v19 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000017BC(&qword_1000D9408, &qword_1000AB158);
  v73 = *(v21 - 8);
  v74 = v21;
  v22 = *(v73 + 64);
  __chkstk_darwin(v21);
  v24 = &v72 - v23;
  v72 = type metadata accessor for IDSSampleInvitationSchema();
  v25 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000017BC(&qword_1000D9410, &qword_1000AB160);
  v95 = *(v96 - 8);
  v32 = *(v95 + 64);
  __chkstk_darwin(v96);
  v34 = &v72 - v33;
  v35 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000455CC();
  v94 = v34;
  sub_1000A0CE0();
  sub_100047168(v127, v31, type metadata accessor for IDSDictionaryContextClientSchema);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = *v31;
      v47 = *(v31 + 1);
      LOBYTE(v112) = 3;
      sub_1000457C4();
      v54 = v85;
      v55 = v96;
      v56 = v94;
      sub_1000A0A70();
      *&v112 = v45;
      *(&v112 + 1) = v47;
      sub_100045818();
      v57 = v87;
      sub_1000A0B80();
      (*(v86 + 8))(v54, v57);
      (*(v95 + 8))(v56, v55);
    }

    else
    {
      v44 = v96;
      if (EnumCaseMultiPayload != 4)
      {
        v62 = *(v31 + 13);
        v124 = *(v31 + 12);
        v125 = v62;
        v126 = v31[224];
        v63 = *(v31 + 9);
        v120 = *(v31 + 8);
        v121 = v63;
        v64 = *(v31 + 11);
        v122 = *(v31 + 10);
        v123 = v64;
        v65 = *(v31 + 5);
        v116 = *(v31 + 4);
        v117 = v65;
        v66 = *(v31 + 7);
        v118 = *(v31 + 6);
        v119 = v66;
        v67 = *(v31 + 1);
        v112 = *v31;
        v113 = v67;
        v68 = *(v31 + 3);
        v114 = *(v31 + 2);
        v115 = v68;
        LOBYTE(v97) = 5;
        sub_100045620();
        v69 = v91;
        v70 = v94;
        sub_1000A0A70();
        v109 = v124;
        v110 = v125;
        v111 = v126;
        v105 = v120;
        v106 = v121;
        v107 = v122;
        v108 = v123;
        v101 = v116;
        v102 = v117;
        v103 = v118;
        v104 = v119;
        v97 = v112;
        v98 = v113;
        v99 = v114;
        v100 = v115;
        sub_100045674();
        v71 = v93;
        sub_1000A0B80();
        (*(v92 + 8))(v69, v71);
        (*(v95 + 8))(v70, v44);
        return sub_1000456C8(&v112);
      }

      v46 = *v31;
      v45 = *(v31 + 1);
      v47 = *(v31 + 2);
      LOBYTE(v112) = 4;
      sub_10004571C();
      v48 = v88;
      v49 = v94;
      sub_1000A0A70();
      *&v112 = v46;
      *(&v112 + 1) = v45;
      *&v113 = v47;
      sub_100045770();
      v50 = v90;
      sub_1000A0B80();
      (*(v89 + 8))(v48, v50);
      (*(v95 + 8))(v49, v44);
    }

    return sub_100005568(v45, v47);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v31;
      v38 = v76;
      sub_1000458C0(v37, v76, type metadata accessor for IDSHomeKitInvitationSchema);
      LOBYTE(v112) = 1;
      sub_100045928();
      v39 = v77;
      v40 = v96;
      v41 = v94;
      sub_1000A0A70();
      sub_10004597C(&qword_1000D9468, type metadata accessor for IDSHomeKitInvitationSchema);
      v42 = v79;
      sub_1000A0B80();
      (*(v78 + 8))(v39, v42);
      v43 = type metadata accessor for IDSHomeKitInvitationSchema;
    }

    else
    {
      v59 = v31;
      v38 = v81;
      sub_1000458C0(v59, v81, type metadata accessor for IDSKCSharingInvitationSchema);
      LOBYTE(v112) = 2;
      sub_10004586C();
      v60 = v82;
      v40 = v96;
      v41 = v94;
      sub_1000A0A70();
      sub_10004597C(&qword_1000D9458, type metadata accessor for IDSKCSharingInvitationSchema);
      v61 = v84;
      sub_1000A0B80();
      (*(v83 + 8))(v60, v61);
      v43 = type metadata accessor for IDSKCSharingInvitationSchema;
    }

    v52 = v43;
    v53 = v38;
  }

  else
  {
    sub_1000458C0(v31, v27, type metadata accessor for IDSSampleInvitationSchema);
    LOBYTE(v112) = 0;
    sub_100045A24();
    v40 = v96;
    v41 = v94;
    sub_1000A0A70();
    sub_10004597C(&qword_1000D9248, type metadata accessor for IDSSampleInvitationSchema);
    v51 = v74;
    sub_1000A0B80();
    (*(v73 + 8))(v24, v51);
    v52 = type metadata accessor for IDSSampleInvitationSchema;
    v53 = v27;
  }

  sub_1000459C4(v53, v52);
  return (*(v95 + 8))(v41, v40);
}

unint64_t sub_1000455CC()
{
  result = qword_1000D9418;
  if (!qword_1000D9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9418);
  }

  return result;
}

unint64_t sub_100045620()
{
  result = qword_1000D9420;
  if (!qword_1000D9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9420);
  }

  return result;
}

unint64_t sub_100045674()
{
  result = qword_1000D9428;
  if (!qword_1000D9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9428);
  }

  return result;
}

unint64_t sub_10004571C()
{
  result = qword_1000D9430;
  if (!qword_1000D9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9430);
  }

  return result;
}

unint64_t sub_100045770()
{
  result = qword_1000D9438;
  if (!qword_1000D9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9438);
  }

  return result;
}

unint64_t sub_1000457C4()
{
  result = qword_1000D9440;
  if (!qword_1000D9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9440);
  }

  return result;
}

unint64_t sub_100045818()
{
  result = qword_1000D9448;
  if (!qword_1000D9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9448);
  }

  return result;
}

unint64_t sub_10004586C()
{
  result = qword_1000D9450;
  if (!qword_1000D9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9450);
  }

  return result;
}

uint64_t sub_1000458C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100045928()
{
  result = qword_1000D9460;
  if (!qword_1000D9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9460);
  }

  return result;
}

uint64_t sub_10004597C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000459C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045A24()
{
  result = qword_1000D9470;
  if (!qword_1000D9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9470);
  }

  return result;
}

uint64_t IDSDictionaryContextClientSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v101 = sub_1000017BC(&qword_1000D9478, &qword_1000AB168);
  v100 = *(v101 - 8);
  v3 = *(v100 + 64);
  __chkstk_darwin(v101);
  v102 = &v83 - v4;
  v99 = sub_1000017BC(&qword_1000D9480, &qword_1000AB170);
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v99);
  v105 = &v83 - v6;
  v97 = sub_1000017BC(&qword_1000D9488, &qword_1000AB178);
  v96 = *(v97 - 8);
  v7 = *(v96 + 64);
  __chkstk_darwin(v97);
  v110 = &v83 - v8;
  v94 = sub_1000017BC(&qword_1000D9490, &qword_1000AB180);
  v95 = *(v94 - 8);
  v9 = *(v95 + 64);
  __chkstk_darwin(v94);
  v104 = &v83 - v10;
  v93 = sub_1000017BC(&qword_1000D9498, &qword_1000AB188);
  v92 = *(v93 - 8);
  v11 = *(v92 + 64);
  __chkstk_darwin(v93);
  v103 = &v83 - v12;
  v91 = sub_1000017BC(&qword_1000D94A0, &qword_1000AB190);
  v90 = *(v91 - 8);
  v13 = *(v90 + 64);
  __chkstk_darwin(v91);
  v108 = &v83 - v14;
  v109 = sub_1000017BC(&qword_1000D94A8, &qword_1000AB198);
  v111 = *(v109 - 8);
  v15 = *(v111 + 64);
  __chkstk_darwin(v109);
  v17 = &v83 - v16;
  v107 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v18 = *(*(v107 - 8) + 64);
  v19 = __chkstk_darwin(v107);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v88 = (&v83 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v83 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v83 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v83 - v33;
  __chkstk_darwin(v32);
  v36 = &v83 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v128 = a1;
  sub_1000022C4(a1, v38);
  sub_1000455CC();
  v39 = v112;
  sub_1000A0CD0();
  if (!v39)
  {
    v85 = v34;
    v84 = v25;
    v86 = v31;
    v87 = v28;
    v40 = v108;
    v41 = v110;
    v112 = v36;
    v42 = v109;
    v43 = sub_1000A0A60();
    v44 = v43;
    if (*(v43 + 16) == 1)
    {
      v45 = *(v43 + 32);
      if (v45 != 6)
      {
        if (*(v43 + 32) <= 2u)
        {
          v46 = v111;
          if (*(v43 + 32))
          {
            if (v45 == 1)
            {
              v104 = v43;
              LOBYTE(v113) = 1;
              sub_100045928();
              v47 = v103;
              sub_1000A0900();
              type metadata accessor for IDSHomeKitInvitationSchema(0);
              sub_10004597C(&qword_1000D94D8, type metadata accessor for IDSHomeKitInvitationSchema);
              v66 = v86;
              v67 = v47;
              v68 = v93;
              sub_1000A0A20();
              (*(v92 + 8))(v67, v68);
              (*(v46 + 8))(v17, v42);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v73 = v66;
LABEL_19:
              v82 = v112;
              sub_1000458C0(v73, v112, type metadata accessor for IDSDictionaryContextClientSchema);
              v54 = v106;
              goto LABEL_20;
            }

            LOBYTE(v113) = 2;
            sub_10004586C();
            v63 = v104;
            v64 = v42;
            sub_1000A0900();
            v110 = v17;
            type metadata accessor for IDSKCSharingInvitationSchema();
            sub_10004597C(&qword_1000D94D0, type metadata accessor for IDSKCSharingInvitationSchema);
            v59 = v87;
            v69 = v94;
            sub_1000A0A20();
            (*(v95 + 8))(v63, v69);
            (*(v46 + 8))(v110, v64);
            swift_unknownObjectRelease();
          }

          else
          {
            LOBYTE(v113) = 0;
            sub_100045A24();
            sub_1000A0900();
            type metadata accessor for IDSSampleInvitationSchema();
            v104 = v44;
            sub_10004597C(&qword_1000D9240, type metadata accessor for IDSSampleInvitationSchema);
            v59 = v85;
            v60 = v40;
            v61 = v91;
            sub_1000A0A20();
            (*(v90 + 8))(v60, v61);
            (*(v46 + 8))(v17, v42);
            swift_unknownObjectRelease();
          }

          swift_storeEnumTagMultiPayload();
          v73 = v59;
          goto LABEL_19;
        }

        v104 = v43;
        v54 = v106;
        v55 = v111;
        if (v45 == 3)
        {
          LOBYTE(v113) = 3;
          sub_1000457C4();
          sub_1000A0900();
          sub_100046B00();
          v62 = v97;
          sub_1000A0A20();
          (*(v96 + 8))(v41, v62);
          (*(v55 + 8))(v17, v42);
          swift_unknownObjectRelease();
          v72 = v84;
          *v84 = v113;
        }

        else
        {
          if (v45 != 4)
          {
            LOBYTE(v113) = 5;
            sub_100045620();
            v65 = v102;
            sub_1000A0900();
            sub_100046A58();
            v70 = v101;
            sub_1000A0A20();
            (*(v100 + 8))(v65, v70);
            (*(v55 + 8))(v17, v42);
            swift_unknownObjectRelease();
            v74 = v126;
            v75 = v89;
            *(v89 + 12) = v125;
            *(v75 + 208) = v74;
            *(v75 + 224) = v127;
            v76 = v122;
            *(v75 + 128) = v121;
            *(v75 + 144) = v76;
            v77 = v124;
            *(v75 + 160) = v123;
            *(v75 + 176) = v77;
            v78 = v118;
            *(v75 + 64) = v117;
            *(v75 + 80) = v78;
            v79 = v120;
            *(v75 + 96) = v119;
            *(v75 + 112) = v79;
            v80 = v114;
            *v75 = v113;
            *(v75 + 16) = v80;
            v81 = v116;
            *(v75 + 32) = v115;
            *(v75 + 48) = v81;
            swift_storeEnumTagMultiPayload();
            v82 = v112;
            sub_1000458C0(v75, v112, type metadata accessor for IDSDictionaryContextClientSchema);
LABEL_20:
            sub_1000458C0(v82, v54, type metadata accessor for IDSDictionaryContextClientSchema);
            return sub_100002308(v128);
          }

          LOBYTE(v113) = 4;
          sub_10004571C();
          v56 = v105;
          sub_1000A0900();
          sub_100046AAC();
          v57 = v56;
          v58 = v99;
          sub_1000A0A20();
          (*(v98 + 8))(v57, v58);
          (*(v55 + 8))(v17, v42);
          swift_unknownObjectRelease();
          v71 = v114;
          v72 = v88;
          *v88 = v113;
          *(v72 + 16) = v71;
        }

        swift_storeEnumTagMultiPayload();
        v82 = v112;
        sub_1000458C0(v72, v112, type metadata accessor for IDSDictionaryContextClientSchema);
        goto LABEL_20;
      }
    }

    v48 = sub_1000A0870();
    swift_allocError();
    v50 = v49;
    v51 = v17;
    v52 = *(sub_1000017BC(&qword_1000D94B0, &qword_1000AB1A0) + 48);
    *v50 = v107;
    sub_1000A0910();
    sub_1000A0860();
    (*(*(v48 - 8) + 104))(v50, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    (*(v111 + 8))(v51, v42);
    swift_unknownObjectRelease();
  }

  return sub_100002308(v128);
}

unint64_t sub_100046A58()
{
  result = qword_1000D94B8;
  if (!qword_1000D94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94B8);
  }

  return result;
}

unint64_t sub_100046AAC()
{
  result = qword_1000D94C0;
  if (!qword_1000D94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94C0);
  }

  return result;
}

unint64_t sub_100046B00()
{
  result = qword_1000D94C8;
  if (!qword_1000D94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94C8);
  }

  return result;
}

uint64_t sub_100046BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001000A3180 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000A0BD0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100046C34(uint64_t a1)
{
  v2 = sub_100047114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046C70(uint64_t a1)
{
  v2 = sub_100047114();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100046CAC(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  sub_1000A0C60();
  sub_1000A0C70(a3);
  return sub_1000A0C90();
}

Swift::Int sub_100046CF4(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  sub_1000A0C60();
  sub_1000A0C70(a4);
  return sub_1000A0C90();
}

uint64_t sub_100046D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A0BD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100046DB8(uint64_t a1)
{
  v2 = sub_1000471D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046DF4(uint64_t a1)
{
  v2 = sub_1000471D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSDictionaryContextData.encode(to:)(void *a1)
{
  v19 = sub_1000017BC(&qword_1000D94E0, &qword_1000AB1A8);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - v4;
  v6 = type metadata accessor for IDSDictionaryContextData(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000017BC(&qword_1000D94E8, &qword_1000AB1B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100047114();
  sub_1000A0CE0();
  sub_100047168(v18, v9, type metadata accessor for IDSDictionaryContextData);
  sub_1000471D0();
  sub_1000A0A70();
  type metadata accessor for IDSDictionaryContextClientSchema(0);
  sub_10004597C(&qword_1000D9500, type metadata accessor for IDSDictionaryContextClientSchema);
  v16 = v19;
  sub_1000A0B80();
  sub_1000459C4(v9, type metadata accessor for IDSDictionaryContextClientSchema);
  (*(v2 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_100047114()
{
  result = qword_1000D94F0;
  if (!qword_1000D94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94F0);
  }

  return result;
}

uint64_t sub_100047168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000471D0()
{
  result = qword_1000D94F8;
  if (!qword_1000D94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D94F8);
  }

  return result;
}

uint64_t IDSDictionaryContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for IDSDictionaryContextData(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9508, &qword_1000AB1B8);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v31 = sub_1000017BC(&qword_1000D9510, &qword_1000AB1C0);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v31);
  v14 = v26 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_1000022C4(a1, v15);
  sub_100047114();
  v17 = v29;
  sub_1000A0CD0();
  if (!v17)
  {
    v18 = v6;
    v29 = v11;
    v19 = sub_1000A0A60();
    if (*(v19 + 16) == 1)
    {
      sub_1000471D0();
      sub_1000A0900();
      v20 = v29;
      type metadata accessor for IDSDictionaryContextClientSchema(0);
      sub_10004597C(&qword_1000D9518, type metadata accessor for IDSDictionaryContextClientSchema);
      v26[1] = v19;
      sub_1000A0A20();
      (*(v28 + 8))(v10, v7);
      (*(v20 + 8))(v14, v31);
      swift_unknownObjectRelease();
      sub_1000458C0(v18, v27, type metadata accessor for IDSDictionaryContextData);
    }

    else
    {
      v21 = sub_1000A0870();
      swift_allocError();
      v23 = v22;
      v24 = *(sub_1000017BC(&qword_1000D94B0, &qword_1000AB1A0) + 48);
      *v23 = v3;
      sub_1000A0910();
      sub_1000A0860();
      (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v29 + 8))(v14, v31);
      swift_unknownObjectRelease();
    }
  }

  return sub_100002308(v30);
}

uint64_t sub_10004764C(char *a1, char *a2)
{
  if (qword_1000AC1A8[*a1] == qword_1000AC1A8[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1000476B4()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000AC1A8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100047710()
{
  v1 = qword_1000AC1A8[*v0];
  sub_1000A05B0();
}

Swift::Int sub_100047750()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000AC1A8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000477A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A8C0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10004780C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100047834(uint64_t a1)
{
  v2 = sub_10004904C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047870(uint64_t a1)
{
  v2 = sub_10004904C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSInvitationContextSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v69 = sub_1000A0530();
  v68 = *(v69 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for IDSKCSharingInvitationSchema();
  v5 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSSampleInvitationSchema();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000017BC(&qword_1000D9520, &qword_1000AB1C8);
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v17 = type metadata accessor for IDSInvitationContextSchema(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v22 = a1[4];
  v93 = a1;
  sub_1000022C4(a1, v21);
  sub_10004904C();
  v23 = v76;
  sub_1000A0CD0();
  if (v23)
  {
    return sub_100002308(v93);
  }

  v24 = v12;
  v25 = v74;
  v76 = v17;
  v66 = v20;
  LOBYTE(v78) = 0;
  v26 = sub_1000A09D0();
  v27 = v13;
  v29 = v66;
  *v66 = v26;
  v29[1] = v30;
  LOBYTE(v78) = 1;
  v31 = v26;
  v32 = v30;
  sub_1000490A0();
  sub_1000A0A20();
  v65 = v16;
  v33 = v31;
  if (v31 == 0xD00000000000001FLL && 0x80000001000A2FE0 == v32 || (v34 = v32, (sub_1000A0BD0() & 1) != 0))
  {
    LOBYTE(v78) = 2;
    sub_10004597C(&qword_1000D9240, type metadata accessor for IDSSampleInvitationSchema);
    v35 = v65;
    sub_1000A0A20();
    (*(v75 + 8))(v35, v27);
    v38 = v66;
    sub_1000458C0(v24, v66 + *(v76 + 24), type metadata accessor for IDSSampleInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v39 = v73;
LABEL_9:
    sub_100047168(v38, v39, type metadata accessor for IDSInvitationContextSchema);
    sub_100002308(v93);
    return sub_1000459C4(v38, type metadata accessor for IDSInvitationContextSchema);
  }

  v40 = v32;
  v41 = v76;
  if (v31 == 0x7469766E692D6B68 && v40 == 0xEC00000031762D65 || (sub_1000A0BD0() & 1) != 0)
  {
    LOBYTE(v78) = 2;
    sub_10004597C(&qword_1000D94D8, type metadata accessor for IDSHomeKitInvitationSchema);
    v42 = v65;
    sub_1000A0A20();
    (*(v75 + 8))(v42, v27);
    v38 = v66;
    sub_1000458C0(v25, v66 + *(v41 + 24), type metadata accessor for IDSHomeKitInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  v43 = v75;
  if (v33 == 0xD000000000000023 && 0x80000001000A3000 == v34 || (sub_1000A0BD0() & 1) != 0)
  {
    LOBYTE(v78) = 2;
    sub_10004597C(&qword_1000D94D0, type metadata accessor for IDSKCSharingInvitationSchema);
    v44 = v70;
    v45 = v65;
    sub_1000A0A20();
    (*(v43 + 8))(v45, v27);
    v46 = v73;
    v38 = v66;
    sub_1000458C0(v44, v66 + *(v41 + 24), type metadata accessor for IDSKCSharingInvitationSchema);
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    swift_storeEnumTagMultiPayload();
    v39 = v46;
    goto LABEL_9;
  }

  if (v33 == 49 && v34 == 0xE100000000000000 || (sub_1000A0BD0() & 1) != 0)
  {
    v77 = 2;
    sub_100046B00();
    v47 = v65;
    sub_1000A0A20();
    (*(v43 + 8))(v47, v27);
    v38 = v66;
    *(v66 + *(v76 + 24)) = v78;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  if (v33 == 0xD000000000000017 && 0x80000001000A3030 == v34 || (sub_1000A0BD0() & 1) != 0)
  {
    v77 = 2;
    sub_100046AAC();
    v48 = v65;
    sub_1000A0A20();
    (*(v43 + 8))(v48, v27);
    v49 = v79;
    v38 = v66;
    v50 = v66 + *(v76 + 24);
    *v50 = v78;
    *(v50 + 2) = v49;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  if (v33 == 0xD000000000000015 && 0x80000001000A3050 == v34 || (sub_1000A0BD0() & 1) != 0)
  {
    v77 = 2;
    sub_100046A58();
    sub_1000A0A20();
    (*(v75 + 8))(v65, v27);
    v38 = v66;
    v51 = v66 + *(v76 + 24);
    v52 = v91;
    *(v51 + 12) = v90;
    *(v51 + 13) = v52;
    v51[224] = v92;
    v53 = v87;
    *(v51 + 8) = v86;
    *(v51 + 9) = v53;
    v54 = v89;
    *(v51 + 10) = v88;
    *(v51 + 11) = v54;
    v56 = v83;
    v55 = v84;
    *(v51 + 4) = v82;
    *(v51 + 5) = v56;
    v57 = v85;
    *(v51 + 6) = v55;
    *(v51 + 7) = v57;
    v58 = v79;
    *v51 = v78;
    *(v51 + 1) = v58;
    v59 = v81;
    *(v51 + 2) = v80;
    *(v51 + 3) = v59;
    type metadata accessor for IDSDictionaryContextClientSchema(0);
    goto LABEL_8;
  }

  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_1000A0850(31);

  *&v78 = 0xD00000000000001CLL;
  *(&v78 + 1) = 0x80000001000A30A0;
  v94._countAndFlagsBits = v33;
  v94._object = v34;
  sub_1000A05E0(v94);
  v95._countAndFlagsBits = 41;
  v95._object = 0xE100000000000000;
  sub_1000A05E0(v95);
  v60 = v67;
  sub_1000A0520();
  sub_10004597C(&qword_1000D83C0, &type metadata accessor for Explosion);
  v61 = v69;
  swift_allocError();
  v62 = v68;
  (*(v68 + 16))(v63, v60, v61);
  swift_willThrow();
  (*(v62 + 8))(v60, v61);
  (*(v75 + 8))(v65, v27);
  v36 = v66;
  sub_100002308(v93);
  v37 = v36[1];
}

uint64_t IDSInvitationContextSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9538, &qword_1000AB1D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10004904C();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v15[14] = 1;
    sub_1000490F4();
    sub_1000A0B80();
    v13 = *(type metadata accessor for IDSInvitationContextSchema(0) + 24);
    v15[13] = 2;
    type metadata accessor for IDSDictionaryContextData(0);
    sub_10004597C(&qword_1000D9548, type metadata accessor for IDSDictionaryContextData);
    sub_1000A0B80();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100048728()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000487C0()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100048844()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000488D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004A90C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100048908(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 99;
  v4 = 0xE100000000000000;
  v5 = 101;
  if (*v1 != 2)
  {
    v5 = 4475253;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 115;
    v2 = 0xE100000000000000;
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

uint64_t sub_10004895C()
{
  v1 = 99;
  v2 = 101;
  if (*v0 != 2)
  {
    v2 = 4475253;
  }

  if (*v0)
  {
    v1 = 115;
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

uint64_t sub_1000489AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000489D4(uint64_t a1)
{
  v2 = sub_100049148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048A10(uint64_t a1)
{
  v2 = sub_100049148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9550, &qword_1000AB1D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100049148();
  sub_1000A0CE0();
  v20[15] = 0;
  type metadata accessor for IDSInvitationContextSchema(0);
  sub_10004597C(&qword_1000D9560, type metadata accessor for IDSInvitationContextSchema);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for IDSInvitationSchema(0);
    v12 = *(v3 + v11[5]);
    v20[14] = 1;
    sub_1000A0B60();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = *(v13 + 8);
    v20[13] = 2;
    sub_1000A0AA0();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v20[12] = 3;
    sub_1000A0B30();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IDSInvitationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for IDSInvitationContextSchema(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000017BC(&qword_1000D9568, &qword_1000AB1E0);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for IDSInvitationSchema(0);
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v32 = a1;
  sub_1000022C4(a1, v16);
  sub_100049148();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v32);
  }

  v18 = v30;
  v19 = v15;
  v36 = 0;
  sub_10004597C(&qword_1000D9570, type metadata accessor for IDSInvitationContextSchema);
  v20 = v31;
  sub_1000A0A20();
  sub_1000458C0(v7, v19, type metadata accessor for IDSInvitationContextSchema);
  v35 = 1;
  *(v19 + v12[5]) = sub_1000A0A00();
  v34 = 2;
  v21 = sub_1000A0940();
  v22 = v19 + v12[6];
  *v22 = v21;
  *(v22 + 8) = v23 & 1;
  v33 = 3;
  v25 = sub_1000A09D0();
  v27 = v26;
  (*(v18 + 8))(v11, v20);
  v28 = (v19 + v12[7]);
  *v28 = v25;
  v28[1] = v27;
  sub_100047168(v19, v29, type metadata accessor for IDSInvitationSchema);
  sub_100002308(v32);
  return sub_1000459C4(v19, type metadata accessor for IDSInvitationSchema);
}

unint64_t sub_10004904C()
{
  result = qword_1000D9528;
  if (!qword_1000D9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9528);
  }

  return result;
}

unint64_t sub_1000490A0()
{
  result = qword_1000D9530;
  if (!qword_1000D9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9530);
  }

  return result;
}

unint64_t sub_1000490F4()
{
  result = qword_1000D9540;
  if (!qword_1000D9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9540);
  }

  return result;
}

unint64_t sub_100049148()
{
  result = qword_1000D9558;
  if (!qword_1000D9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9558);
  }

  return result;
}

uint64_t sub_1000491BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000491F8()
{
  result = qword_1000D9578;
  if (!qword_1000D9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9578);
  }

  return result;
}

uint64_t sub_1000492AC()
{
  result = type metadata accessor for IDSSampleInvitationSchema();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IDSHomeKitInvitationSchema(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IDSKCSharingInvitationSchema();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100049350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000493BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSDictionaryContextClientSchema(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100049438(uint64_t a1)
{
  result = type metadata accessor for IDSDictionaryContextClientSchema(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1000494F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    type metadata accessor for IDSDictionaryContextData(0);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for IDSDictionaryContextClientSchema(0);
    v10 = *(*(v9 - 8) + 48);

    return v10(a1 + v8, a2, v9);
  }
}

uint64_t sub_1000495B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for IDSDictionaryContextData(0);
    v7 = *(a4 + 24);
    v8 = type metadata accessor for IDSDictionaryContextClientSchema(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(v5 + v7, a2, a2, v8);
  }

  return result;
}

uint64_t sub_100049664()
{
  result = type metadata accessor for IDSDictionaryContextData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000496FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSInvitationContextSchema(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000497D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSInvitationContextSchema(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10004988C()
{
  type metadata accessor for IDSInvitationContextSchema(319);
  if (v0 <= 0x3F)
  {
    sub_100049920();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100049920()
{
  if (!qword_1000D97C8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D97C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for IDSDictionaryContextClientSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSDictionaryContextClientSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100049B6C()
{
  result = qword_1000D9800;
  if (!qword_1000D9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9800);
  }

  return result;
}

unint64_t sub_100049BC4()
{
  result = qword_1000D9808;
  if (!qword_1000D9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9808);
  }

  return result;
}

unint64_t sub_100049C1C()
{
  result = qword_1000D9810;
  if (!qword_1000D9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9810);
  }

  return result;
}

unint64_t sub_100049C74()
{
  result = qword_1000D9818;
  if (!qword_1000D9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9818);
  }

  return result;
}

unint64_t sub_100049CCC()
{
  result = qword_1000D9820;
  if (!qword_1000D9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9820);
  }

  return result;
}

unint64_t sub_100049D24()
{
  result = qword_1000D9828;
  if (!qword_1000D9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9828);
  }

  return result;
}

unint64_t sub_100049D7C()
{
  result = qword_1000D9830;
  if (!qword_1000D9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9830);
  }

  return result;
}

unint64_t sub_100049DD4()
{
  result = qword_1000D9838;
  if (!qword_1000D9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9838);
  }

  return result;
}

unint64_t sub_100049E2C()
{
  result = qword_1000D9840;
  if (!qword_1000D9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9840);
  }

  return result;
}

unint64_t sub_100049E84()
{
  result = qword_1000D9848;
  if (!qword_1000D9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9848);
  }

  return result;
}

unint64_t sub_100049EDC()
{
  result = qword_1000D9850;
  if (!qword_1000D9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9850);
  }

  return result;
}

unint64_t sub_100049F34()
{
  result = qword_1000D9858;
  if (!qword_1000D9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9858);
  }

  return result;
}

unint64_t sub_100049F8C()
{
  result = qword_1000D9860;
  if (!qword_1000D9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9860);
  }

  return result;
}

unint64_t sub_100049FE4()
{
  result = qword_1000D9868;
  if (!qword_1000D9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9868);
  }

  return result;
}

unint64_t sub_10004A03C()
{
  result = qword_1000D9870;
  if (!qword_1000D9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9870);
  }

  return result;
}

unint64_t sub_10004A094()
{
  result = qword_1000D9878;
  if (!qword_1000D9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9878);
  }

  return result;
}

unint64_t sub_10004A0EC()
{
  result = qword_1000D9880;
  if (!qword_1000D9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9880);
  }

  return result;
}

unint64_t sub_10004A144()
{
  result = qword_1000D9888;
  if (!qword_1000D9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9888);
  }

  return result;
}

unint64_t sub_10004A19C()
{
  result = qword_1000D9890;
  if (!qword_1000D9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9890);
  }

  return result;
}

unint64_t sub_10004A1F4()
{
  result = qword_1000D9898;
  if (!qword_1000D9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9898);
  }

  return result;
}

unint64_t sub_10004A24C()
{
  result = qword_1000D98A0;
  if (!qword_1000D98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98A0);
  }

  return result;
}

unint64_t sub_10004A2A4()
{
  result = qword_1000D98A8;
  if (!qword_1000D98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98A8);
  }

  return result;
}

unint64_t sub_10004A2FC()
{
  result = qword_1000D98B0;
  if (!qword_1000D98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98B0);
  }

  return result;
}

unint64_t sub_10004A354()
{
  result = qword_1000D98B8;
  if (!qword_1000D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98B8);
  }

  return result;
}

unint64_t sub_10004A3AC()
{
  result = qword_1000D98C0;
  if (!qword_1000D98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98C0);
  }

  return result;
}

unint64_t sub_10004A404()
{
  result = qword_1000D98C8;
  if (!qword_1000D98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98C8);
  }

  return result;
}

unint64_t sub_10004A45C()
{
  result = qword_1000D98D0;
  if (!qword_1000D98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98D0);
  }

  return result;
}

unint64_t sub_10004A4B4()
{
  result = qword_1000D98D8;
  if (!qword_1000D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98D8);
  }

  return result;
}

unint64_t sub_10004A50C()
{
  result = qword_1000D98E0;
  if (!qword_1000D98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98E0);
  }

  return result;
}

unint64_t sub_10004A564()
{
  result = qword_1000D98E8;
  if (!qword_1000D98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98E8);
  }

  return result;
}

unint64_t sub_10004A5BC()
{
  result = qword_1000D98F0;
  if (!qword_1000D98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98F0);
  }

  return result;
}

unint64_t sub_10004A614()
{
  result = qword_1000D98F8;
  if (!qword_1000D98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D98F8);
  }

  return result;
}

unint64_t sub_10004A66C()
{
  result = qword_1000D9900;
  if (!qword_1000D9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9900);
  }

  return result;
}

uint64_t sub_10004A6C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001000A30C0 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A30E0 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000A3100 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A3120 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001000A3140 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A3160 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1000A0BD0();

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

uint64_t sub_10004A8C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CC098;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004A90C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CC100;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10004A958()
{
  result = qword_1000D9908;
  if (!qword_1000D9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9908);
  }

  return result;
}

uint64_t sub_10004AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a2;
  v5 = sub_10009F9D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000A0530();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v14 = sub_10009F4A0();
  if (v15)
  {
    sub_1000A0770();
    sub_100005764();
    v16 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000A63D0;
    v30 = sub_10009FCE0();
    LOBYTE(v31) = 0;
    v18 = sub_1000A0210();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10004C7CC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_10009F380();

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1000A0850(21);

    v30 = 0xD000000000000013;
    v31 = 0x80000001000A31F0;
    v32 = sub_10009FCE0();
    v33._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v33);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    v21 = v29;
    (*(v29 + 16))(v22, v13, v10);
    swift_willThrow();
    return (*(v21 + 8))(v13, v10);
  }

  else if (v14 == 244)
  {
    *v9 = 0;
    (*(v6 + 104))(v9, enum case for IDSClientMessageType.idsNiceAppAck(_:), v5);
    return sub_10009FC10();
  }

  else
  {
    return v28(v25, v26, v14);
  }
}

uint64_t sub_10004AE5C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_10009F9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000A0530();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v11 = sub_10009F4A0();
  if (v12)
  {
    sub_1000A0770();
    sub_100005764();
    v13 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000A63D0;
    v25 = sub_10009FCE0();
    LOBYTE(v26) = 0;
    v15 = sub_1000A0210();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10004C7CC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_10009F380();

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1000A0850(21);

    v25 = 0xD000000000000013;
    v26 = 0x80000001000A31F0;
    v27 = sub_10009FCE0();
    v28._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v28);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    v18 = v24;
    (*(v24 + 16))(v19, v10, v7);
    swift_willThrow();
    return (*(v18 + 8))(v10, v7);
  }

  else if (v11 == 243)
  {
    return sub_10007FF48(v22, v23);
  }

  else if (v11 == 244)
  {
    *v6 = 0;
    (*(v3 + 104))(v6, enum case for IDSClientMessageType.idsNiceAppAck(_:), v2);
    return sub_10009FC10();
  }

  else
  {
    return sub_100080408(v22, v23);
  }
}

uint64_t sub_10004B23C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_10009F7C0();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F9D0();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v31 - v11);
  v13 = sub_1000A0530();
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v18 = sub_10009F4A0();
  if (v19)
  {
    sub_1000A0770();
    sub_100005764();
    v20 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000A63D0;
    v37 = sub_10009FCE0();
    LOBYTE(v38) = 0;
    v22 = sub_1000A0210();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10004C7CC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_10009F380();

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1000A0850(21);

    v37 = 0xD000000000000013;
    v38 = 0x80000001000A31F0;
    v39 = sub_10009FCE0();
    v40._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v40);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    v25 = v35;
    swift_allocError();
    v26 = v36;
    (*(v36 + 16))(v27, v17, v25);
    swift_willThrow();
    return (*(v26 + 8))(v17, v25);
  }

  if (v18 == 244)
  {
    *v12 = 0;
    (*(v33 + 104))(v12, enum case for IDSClientMessageType.idsNiceAppAck(_:), v6);
    return sub_10009FC10();
  }

  if (v18 == 245)
  {
    (*(v32 + 104))(v5, enum case for ClientMessageType.restricted(_:), v2);
    result = sub_10009FA60();
    if (v1)
    {
      return result;
    }

    (*(v33 + 104))(v10, enum case for IDSClientMessageType.messageTypeRestricted(_:), v6);
    return sub_10009FC10();
  }

  v29 = v18;
  sub_1000021F4();
  swift_allocError();
  *v30 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_10004B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000A0530();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v13 = sub_10009F4A0();
  if (v14)
  {
    sub_1000A0770();
    sub_100005764();
    v15 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000A63D0;
    v27 = sub_10009FCE0();
    LOBYTE(v28) = 0;
    v17 = sub_1000A0210();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10004C7CC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10009F380();

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1000A0850(21);

    v27 = 0xD000000000000013;
    v28 = 0x80000001000A31F0;
    v29 = sub_10009FCE0();
    v30._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v30);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    v20 = v26;
    (*(v26 + 16))(v21, v12, v9);
    swift_willThrow();
    return (*(v20 + 8))(v12, v9);
  }

  else if (v13 == 244)
  {
    *v8 = 0;
    (*(v5 + 104))(v8, enum case for IDSClientMessageType.idsNiceAppAck(_:), v4);
    return sub_10009FC10();
  }

  else
  {
    return v25(v23, v24);
  }
}

uint64_t sub_10004BB84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000A0530();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009FCE0();
  v13 = sub_10009F4A0();
  if (v14)
  {
    sub_1000A0770();
    sub_100005764();
    v15 = sub_1000A0790();
    sub_1000017BC(&qword_1000D9918, &unk_1000AC230);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000A63D0;
    v29 = sub_10009FCE0();
    LOBYTE(v30) = 0;
    v17 = sub_1000A0210();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10004C7CC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10009F380();

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1000A0850(21);

    v29 = 0xD000000000000013;
    v30 = 0x80000001000A31F0;
    v31 = sub_10009FCE0();
    v32._countAndFlagsBits = sub_1000A0BC0();
    sub_1000A05E0(v32);

    sub_1000A0520();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    v20 = v28;
    (*(v28 + 16))(v21, v12, v9);
    swift_willThrow();
    return (*(v20 + 8))(v12, v9);
  }

  else if (v13 == 243)
  {
    return sub_1000697E4(a1, v26, v27);
  }

  else if (v13 == 244)
  {
    *v8 = 0;
    (*(v5 + 104))(v8, enum case for IDSClientMessageType.idsNiceAppAck(_:), v4);
    return sub_10009FC10();
  }

  else
  {
    v23 = v13;
    sub_1000021F4();
    swift_allocError();
    *v24 = v23;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10004C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a2;
  v64 = a4;
  v5 = sub_10009FAC0();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009F760();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009F800();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10009F790();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10009F9D0();
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 64);
  __chkstk_darwin(v20);
  v63 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10009FA90();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v53 - v27;
  if (a3 > 234)
  {
    switch(a3)
    {
      case 235:
        v40 = v69;
        result = sub_10007FC60();
        if (!v40)
        {
          v41 = v56;
          v42 = v63;
          (*(v56 + 16))(v63, v19, v16);
          (*(v61 + 104))(v42, enum case for IDSClientMessageType.sessionCancel(_:), v62);
          sub_10009FC10();
          return (*(v41 + 8))(v19, v16);
        }

        break;
      case 237:
LABEL_11:
        v34 = sub_10009F270();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        sub_10009F260();
        sub_100038CC8();
        v37 = v69;
        sub_10009F250();
        if (v37)
        {
        }

        v47 = v67;
        v48 = v68;

        sub_100005750(v47, v48);
        sub_10009F7F0();

        sub_1000057B0(v47, v48);
        v50 = v54;
        v49 = v55;
        v51 = v63;
        v52 = v60;
        (*(v54 + 16))(v63, v60, v55);
        (*(v61 + 104))(v51, enum case for IDSClientMessageType.sessionDecline(_:), v62);
        sub_10009FC10();
        return (*(v50 + 8))(v52, v49);
      case 238:
        v29 = v69;
        result = sub_10007276C();
        if (!v29)
        {
          v32 = v58;
          v31 = v59;
          v33 = v63;
          (*(v58 + 16))(v63, v8, v59);
          (*(v61 + 104))(v33, enum case for IDSClientMessageType.sessionReinitiate(_:), v62);
          sub_10009FC10();
          return (*(v32 + 8))(v8, v31);
        }

        break;
      default:
LABEL_17:
        sub_1000021F4();
        swift_allocError();
        *v43 = a3;
        *(v43 + 8) = 0;
        *(v43 + 16) = 0;
        return swift_willThrow();
    }
  }

  else
  {
    switch(a3)
    {
      case 232:
        v38 = v69;
        result = sub_100043F6C(&v53 - v27);
        if (!v38)
        {
          v39 = v63;
          (*(v24 + 16))(v63, v28, v23);
          (*(v61 + 104))(v39, enum case for IDSClientMessageType.sessionInvitation(_:), v62);
          sub_10009FC10();
          return (*(v24 + 8))(v28, v23);
        }

        break;
      case 233:
        v44 = v69;
        result = sub_1000622B8();
        if (!v44)
        {
          v45 = v57;
          v46 = v63;
          (*(v57 + 16))(v63, v12, v9);
          (*(v61 + 104))(v46, enum case for IDSClientMessageType.sessionAccept(_:), v62);
          sub_10009FC10();
          return (*(v45 + 8))(v12, v9);
        }

        break;
      case 234:
        goto LABEL_11;
      default:
        goto LABEL_17;
    }
  }

  return result;
}

unint64_t sub_10004C750(uint64_t a1)
{
  result = sub_10004C778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004C778()
{
  result = qword_1000D9910;
  if (!qword_1000D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9910);
  }

  return result;
}

unint64_t sub_10004C7CC()
{
  result = qword_1000D9920;
  if (!qword_1000D9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9920);
  }

  return result;
}

uint64_t IDSMadridProtocolPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9928, &unk_1000AC240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v228[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10004ED60();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v233) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    LOBYTE(v233) = 1;
    sub_1000A0AB0();
    v15 = v3[3];
    v16 = *(v3 + 32);
    LOBYTE(v233) = 2;
    sub_1000A0AB0();
    v275 = *(v3 + 5);
    v233 = *(v3 + 5);
    LOBYTE(v230) = 3;
    sub_100005620(&v275, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v274 = *(v3 + 7);
    v233 = *(v3 + 7);
    LOBYTE(v230) = 4;
    sub_100005620(&v274, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v273 = *(v3 + 9);
    v233 = *(v3 + 9);
    LOBYTE(v230) = 5;
    sub_100005620(&v273, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v272 = *(v3 + 11);
    v233 = *(v3 + 11);
    LOBYTE(v230) = 6;
    sub_100005620(&v272, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v271 = *(v3 + 13);
    v233 = *(v3 + 13);
    LOBYTE(v230) = 7;
    sub_100005620(&v271, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v17 = v3[15];
    v18 = v3[16];
    LOBYTE(v233) = 8;
    sub_1000A0A80();
    v270 = *(v3 + 17);
    v233 = *(v3 + 17);
    LOBYTE(v230) = 9;
    sub_100005620(&v270, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v19 = v3[19];
    v20 = v3[20];
    LOBYTE(v233) = 10;
    sub_1000A0A80();
    v21 = *(v3 + 168);
    LOBYTE(v233) = 11;
    sub_1000A0A90();
    *&v233 = v3[22];
    WORD4(v233) = *(v3 + 92);
    LOBYTE(v231[0]) = 12;
    sub_10004EDB4();
    sub_1000A0AD0();
    v22 = v3[24];
    v23 = *(v3 + 200);
    LOBYTE(v233) = 13;
    sub_1000A0AB0();
    v269 = *(v3 + 13);
    v233 = *(v3 + 13);
    LOBYTE(v230) = 14;
    sub_100005620(&v269, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v24 = *(v3 + 224);
    LOBYTE(v233) = 15;
    sub_1000A0A90();
    v25 = *(v3 + 225);
    LOBYTE(v233) = 16;
    sub_1000A0A90();
    v268 = *(v3 + 29);
    v233 = *(v3 + 29);
    LOBYTE(v230) = 17;
    sub_100005620(&v268, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v267 = *(v3 + 31);
    v233 = *(v3 + 31);
    LOBYTE(v230) = 18;
    sub_100005620(&v267, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v26 = v3[33];
    v27 = v3[34];
    LOBYTE(v233) = 19;
    sub_1000A0A80();
    v28 = v3[35];
    v29 = v3[36];
    LOBYTE(v233) = 20;
    sub_1000A0A80();
    v30 = v3[37];
    v31 = v3[38];
    LOBYTE(v233) = 21;
    sub_1000A0A80();
    v266 = *(v3 + 39);
    v233 = *(v3 + 39);
    LOBYTE(v230) = 22;
    sub_100005620(&v266, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v32 = v3[41];
    v33 = *(v3 + 336);
    LOBYTE(v233) = 23;
    sub_1000A0AE0();
    v34 = v3[43];
    v35 = v3[44];
    LOBYTE(v233) = 24;
    sub_1000A0A80();
    v36 = v3[45];
    v37 = v3[46];
    LOBYTE(v233) = 25;
    sub_1000A0A80();
    v38 = v3[47];
    v39 = v3[48];
    LOBYTE(v233) = 26;
    sub_1000A0A80();
    *&v233 = v3[49];
    LOBYTE(v231[0]) = 27;
    v40 = sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    v41 = sub_1000612BC(&qword_1000D9948);
    v276 = v40;
    v227 = v41;
    sub_1000A0AD0();
    *&v233 = v3[50];
    LOBYTE(v231[0]) = 28;
    sub_1000A0AD0();
    v42 = v3[51];
    v43 = v3[52];
    LOBYTE(v233) = 29;
    sub_1000A0A80();
    v44 = v3[53];
    v45 = v3[54];
    LOBYTE(v233) = 30;
    sub_1000A0A80();
    v46 = v3[55];
    v47 = *(v3 + 448);
    LOBYTE(v233) = 31;
    sub_1000A0AE0();
    v48 = v3[57];
    v49 = *(v3 + 464);
    LOBYTE(v233) = 32;
    sub_1000A0AB0();
    v50 = v3[59];
    v51 = v3[60];
    LOBYTE(v233) = 33;
    sub_1000A0A80();
    v265 = *(v3 + 61);
    v233 = *(v3 + 61);
    LOBYTE(v230) = 34;
    sub_100005620(&v265, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v264 = *(v3 + 63);
    v233 = *(v3 + 63);
    LOBYTE(v230) = 35;
    sub_100005620(&v264, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v52 = v3[65];
    v53 = *(v3 + 528);
    LOBYTE(v233) = 36;
    sub_1000A0AB0();
    v263 = *(v3 + 67);
    v233 = *(v3 + 67);
    LOBYTE(v230) = 37;
    sub_100005620(&v263, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v54 = v3[69];
    v55 = v3[70];
    LOBYTE(v233) = 38;
    sub_1000A0A80();
    v56 = v3[71];
    v57 = v3[72];
    LOBYTE(v233) = 39;
    sub_1000A0A80();
    v58 = v3[73];
    v59 = v3[74];
    LOBYTE(v233) = 40;
    sub_1000A0A80();
    v60 = v3[75];
    v61 = *(v3 + 608);
    LOBYTE(v233) = 41;
    sub_1000A0AB0();
    v62 = v3[77];
    v63 = *(v3 + 624);
    LOBYTE(v233) = 42;
    sub_1000A0AE0();
    v64 = v3[79];
    v65 = *(v3 + 640);
    LOBYTE(v233) = 43;
    sub_1000A0AE0();
    v66 = v3[81];
    v67 = *(v3 + 656);
    LOBYTE(v233) = 44;
    sub_1000A0AB0();
    v262 = *(v3 + 83);
    v233 = *(v3 + 83);
    LOBYTE(v230) = 45;
    sub_100005620(&v262, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v68 = v3[85];
    v69 = v3[86];
    LOBYTE(v233) = 46;
    sub_1000A0A80();
    v70 = v3[87];
    v71 = *(v3 + 704);
    LOBYTE(v233) = 47;
    sub_1000A0AB0();
    v72 = v3[89];
    v73 = *(v3 + 720);
    LOBYTE(v233) = 48;
    sub_1000A0AB0();
    v74 = v3[91];
    v75 = v3[92];
    LOBYTE(v233) = 49;
    sub_1000A0A80();
    v76 = v3[93];
    v77 = *(v3 + 752);
    LOBYTE(v233) = 50;
    sub_1000A0AE0();
    v78 = v3[95];
    v79 = v3[96];
    LOBYTE(v233) = 51;
    sub_1000A0A80();
    v80 = v3[97];
    v81 = *(v3 + 784);
    LOBYTE(v233) = 52;
    sub_1000A0AB0();
    v82 = v3[99];
    v83 = *(v3 + 800);
    LOBYTE(v233) = 53;
    sub_1000A0AB0();
    v84 = v3[101];
    v85 = *(v3 + 816);
    LOBYTE(v233) = 54;
    sub_1000A0AB0();
    *&v233 = v3[103];
    LOBYTE(v231[0]) = 55;
    v86 = sub_1000017BC(&qword_1000D9950, &qword_1000AC258);
    v87 = sub_10004EE08();
    v276 = v86;
    v227 = v87;
    sub_1000A0AD0();
    *&v233 = v3[104];
    LOBYTE(v231[0]) = 56;
    sub_1000A0AD0();
    v88 = v3[105];
    v89 = *(v3 + 848);
    LOBYTE(v233) = 57;
    sub_1000A0AB0();
    v90 = v3[107];
    v91 = *(v3 + 864);
    LOBYTE(v233) = 58;
    sub_1000A0AE0();
    v92 = v3[109];
    v93 = *(v3 + 880);
    LOBYTE(v233) = 59;
    sub_1000A0AB0();
    v94 = *(v3 + 881);
    LOBYTE(v233) = 60;
    sub_1000A0A90();
    v95 = *(v3 + 882);
    LOBYTE(v233) = 61;
    sub_1000A0A90();
    v96 = *(v3 + 883);
    LOBYTE(v233) = 62;
    sub_1000A0A90();
    v97 = *(v3 + 884);
    LOBYTE(v233) = 63;
    sub_1000A0A90();
    v98 = v3[111];
    v99 = v3[112];
    LOBYTE(v233) = 64;
    sub_1000A0A80();
    v100 = v3[113];
    v101 = v3[114];
    LOBYTE(v233) = 65;
    sub_1000A0A80();
    v261 = *(v3 + 115);
    v233 = *(v3 + 115);
    LOBYTE(v230) = 66;
    sub_100005620(&v261, v231, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v233, *(&v233 + 1));
    v102 = v3[117];
    v103 = v3[118];
    LOBYTE(v233) = 67;
    sub_1000A0A80();
    v104 = v3[119];
    v105 = v3[120];
    LOBYTE(v233) = 68;
    sub_1000A0A80();
    v106 = v3[121];
    v107 = v3[122];
    LOBYTE(v233) = 69;
    sub_1000A0A80();
    v108 = v3[123];
    v109 = v3[124];
    LOBYTE(v233) = 70;
    sub_1000A0A80();
    v110 = v3[125];
    v111 = v3[126];
    LOBYTE(v233) = 71;
    sub_1000A0A80();
    v112 = v3[127];
    v113 = *(v3 + 1024);
    LOBYTE(v233) = 72;
    sub_1000A0AB0();
    v114 = v3[129];
    v115 = v3[130];
    LOBYTE(v233) = 73;
    sub_1000A0A80();
    v116 = v3[131];
    v117 = *(v3 + 1056);
    LOBYTE(v233) = 74;
    sub_1000A0AB0();
    v118 = v3[133];
    v119 = v3[134];
    LOBYTE(v233) = 75;
    sub_1000A0A80();
    v120 = v3[135];
    v121 = *(v3 + 1088);
    LOBYTE(v233) = 76;
    sub_1000A0AB0();
    v122 = *(v3 + 1089);
    LOBYTE(v233) = 77;
    sub_1000A0A90();
    v123 = v3[137];
    v124 = v3[138];
    LOBYTE(v233) = 78;
    sub_1000A0A80();
    v125 = v3[139];
    v126 = *(v3 + 1120);
    LOBYTE(v233) = 79;
    sub_1000A0AB0();
    v127 = v3[141];
    v128 = *(v3 + 1136);
    LOBYTE(v233) = 80;
    sub_1000A0AB0();
    v129 = v3[143];
    v130 = v3[144];
    LOBYTE(v233) = 81;
    sub_1000A0A80();
    v131 = *(v3 + 151);
    v132 = *(v3 + 147);
    v257 = *(v3 + 149);
    v258 = v131;
    v133 = *(v3 + 151);
    v134 = *(v3 + 155);
    v259 = *(v3 + 153);
    v260 = v134;
    v135 = *(v3 + 147);
    v256[0] = *(v3 + 145);
    v256[1] = v135;
    v235 = v257;
    v236 = v133;
    v136 = *(v3 + 155);
    v237 = v259;
    v238 = v136;
    v233 = v256[0];
    v234 = v132;
    v232 = 82;
    sub_100005620(v256, v231, &qword_1000D9968, &qword_1000AC260);
    sub_10004EEE0();
    sub_1000A0AD0();
    v231[2] = v235;
    v231[3] = v236;
    v231[4] = v237;
    v231[5] = v238;
    v231[0] = v233;
    v231[1] = v234;
    sub_10004EF34(v231);
    v255 = *(v3 + 157);
    v230 = *(v3 + 157);
    v229 = 83;
    sub_100005620(&v255, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v137 = v3[159];
    v138 = v3[160];
    LOBYTE(v230) = 84;
    sub_1000A0A80();
    v254 = *(v3 + 161);
    v230 = *(v3 + 161);
    v229 = 85;
    sub_100005620(&v254, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v139 = v3[163];
    v140 = *(v3 + 1312);
    LOBYTE(v230) = 86;
    sub_1000A0AB0();
    v141 = v3[165];
    v142 = v3[166];
    LOBYTE(v230) = 87;
    sub_1000A0A80();
    v143 = *(v3 + 1336);
    LOBYTE(v230) = 88;
    sub_1000A0A90();
    v144 = *(v3 + 1337);
    LOBYTE(v230) = 89;
    sub_1000A0A90();
    v145 = *(v3 + 1338);
    LOBYTE(v230) = 90;
    sub_1000A0A90();
    v146 = v3[168];
    v147 = *(v3 + 1352);
    LOBYTE(v230) = 91;
    sub_1000A0AB0();
    v148 = v3[170];
    v149 = v3[171];
    LOBYTE(v230) = 92;
    sub_1000A0A80();
    v253 = *(v3 + 86);
    v230 = *(v3 + 86);
    v229 = 93;
    sub_100005620(&v253, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v252 = *(v3 + 87);
    v230 = *(v3 + 87);
    v229 = 94;
    sub_100005620(&v252, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v150 = v3[176];
    v151 = *(v3 + 1416);
    LOBYTE(v230) = 95;
    sub_1000A0AB0();
    v152 = *(v3 + 1417);
    LOBYTE(v230) = 96;
    sub_1000A0A90();
    v153 = *(v3 + 1418);
    LOBYTE(v230) = 97;
    sub_1000A0A90();
    v154 = v3[178];
    v155 = *(v3 + 1432);
    LOBYTE(v230) = 98;
    sub_1000A0AB0();
    v156 = v3[180];
    v157 = *(v3 + 1448);
    LOBYTE(v230) = 99;
    sub_1000A0AB0();
    v158 = *(v3 + 1449);
    LOBYTE(v230) = 100;
    sub_1000A0A90();
    v159 = v3[182];
    v160 = *(v3 + 1464);
    LOBYTE(v230) = 101;
    sub_1000A0AB0();
    v161 = v3[184];
    v162 = *(v3 + 1480);
    LOBYTE(v230) = 102;
    sub_1000A0AB0();
    v163 = v3[186];
    v164 = v3[187];
    LOBYTE(v230) = 103;
    sub_1000A0A80();
    v165 = v3[188];
    v166 = *(v3 + 1512);
    LOBYTE(v230) = 104;
    sub_1000A0AB0();
    v167 = v3[190];
    v168 = *(v3 + 1528);
    LOBYTE(v230) = 105;
    sub_1000A0AB0();
    v251 = *(v3 + 96);
    v230 = *(v3 + 96);
    v229 = 106;
    sub_100005620(&v251, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v250 = *(v3 + 97);
    v230 = *(v3 + 97);
    v229 = 107;
    sub_100005620(&v250, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v169 = v3[196];
    v170 = *(v3 + 1576);
    LOBYTE(v230) = 108;
    sub_1000A0AB0();
    v249 = *(v3 + 99);
    v230 = *(v3 + 99);
    v229 = 109;
    sub_100005620(&v249, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v248 = *(v3 + 100);
    v230 = *(v3 + 100);
    v229 = 110;
    sub_100005620(&v248, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v171 = v3[202];
    v172 = *(v3 + 1624);
    LOBYTE(v230) = 111;
    sub_1000A0AB0();
    v173 = v3[204];
    v174 = *(v3 + 1640);
    LOBYTE(v230) = 112;
    sub_1000A0AB0();
    *&v230 = v3[206];
    v228[0] = 113;
    sub_1000017BC(&qword_1000D9978, &qword_1000AC268);
    sub_10004EF9C();
    sub_1000A0AD0();
    v175 = v3[207];
    v176 = v3[208];
    LOBYTE(v230) = 114;
    sub_1000A0A80();
    v177 = v3[209];
    v178 = v3[210];
    LOBYTE(v230) = 115;
    sub_1000A0A80();
    v179 = v3[211];
    v180 = *(v3 + 1696);
    LOBYTE(v230) = 116;
    sub_1000A0AB0();
    v181 = *(v3 + 1697);
    LOBYTE(v230) = 117;
    sub_1000A0A90();
    v182 = *(v3 + 1698);
    LOBYTE(v230) = 118;
    sub_1000A0A90();
    v183 = v3[213];
    v184 = *(v3 + 1712);
    LOBYTE(v230) = 119;
    sub_1000A0AB0();
    v247 = *(v3 + 215);
    v230 = *(v3 + 215);
    v229 = 120;
    sub_100005620(&v247, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v185 = v3[217];
    v186 = *(v3 + 1744);
    LOBYTE(v230) = 121;
    sub_1000A0AB0();
    v187 = *(v3 + 1745);
    LOBYTE(v230) = 122;
    sub_1000A0A90();
    v188 = v3[219];
    v189 = v3[220];
    LOBYTE(v230) = 123;
    sub_1000A0A80();
    v190 = v3[221];
    v191 = *(v3 + 1776);
    LOBYTE(v230) = 124;
    sub_1000A0AB0();
    v192 = v3[223];
    v193 = *(v3 + 1792);
    LOBYTE(v230) = 125;
    sub_1000A0AB0();
    v246 = *(v3 + 225);
    v230 = *(v3 + 225);
    v229 = 126;
    sub_100005620(&v246, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v245 = *(v3 + 227);
    v230 = *(v3 + 227);
    v229 = 127;
    sub_100005620(&v245, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v194 = v3[229];
    v195 = *(v3 + 1840);
    LOBYTE(v230) = 0x80;
    sub_1000A0AB0();
    v244 = *(v3 + 231);
    v230 = *(v3 + 231);
    v229 = -127;
    sub_100005620(&v244, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v243 = *(v3 + 233);
    v230 = *(v3 + 233);
    v229 = -126;
    sub_100005620(&v243, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v242 = *(v3 + 235);
    v230 = *(v3 + 235);
    v229 = -125;
    sub_100005620(&v242, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v196 = v3[237];
    v197 = *(v3 + 1904);
    LOBYTE(v230) = -124;
    sub_1000A0AE0();
    v241 = *(v3 + 239);
    v230 = *(v3 + 239);
    v229 = -123;
    sub_100005620(&v241, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v198 = v3[241];
    v199 = *(v3 + 1936);
    LOBYTE(v230) = -122;
    sub_1000A0B20();
    v240 = *(v3 + 243);
    v230 = *(v3 + 243);
    v229 = -121;
    sub_100005620(&v240, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v200 = v3[245];
    v201 = v3[246];
    LOBYTE(v230) = -120;
    sub_1000A0A80();
    v202 = v3[247];
    v203 = *(v3 + 1984);
    LOBYTE(v230) = -119;
    sub_1000A0AB0();
    v204 = v3[249];
    v205 = *(v3 + 2000);
    LOBYTE(v230) = -118;
    sub_1000A0AB0();
    v206 = v3[251];
    v207 = *(v3 + 2016);
    LOBYTE(v230) = -117;
    sub_1000A0AE0();
    v208 = v3[253];
    v209 = *(v3 + 2032);
    LOBYTE(v230) = -116;
    sub_1000A0AB0();
    *&v230 = v3[255];
    v228[0] = -115;
    sub_1000017BC(&qword_1000D9990, &qword_1000AC270);
    sub_10004F074();
    sub_1000A0AD0();
    *&v230 = v3[256];
    v228[0] = -114;
    sub_1000017BC(&qword_1000D99A8, &qword_1000AC278);
    sub_10004F14C();
    sub_1000A0AD0();
    v239 = *(v3 + 257);
    v230 = *(v3 + 257);
    v229 = -113;
    sub_100005620(&v239, v228, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v230, *(&v230 + 1));
    v210 = v3[259];
    v211 = *(v3 + 2080);
    LOBYTE(v230) = -112;
    sub_1000A0AB0();
    *&v230 = v3[261];
    v228[0] = -111;
    sub_1000017BC(&qword_1000D99C0, &qword_1000AC280);
    sub_10004F224();
    sub_1000A0AD0();
    v212 = v3[262];
    v213 = *(v3 + 2104);
    LOBYTE(v230) = -110;
    sub_1000A0AB0();
    v214 = v3[264];
    v215 = *(v3 + 2120);
    LOBYTE(v230) = -109;
    sub_1000A0AB0();
    v216 = *(v3 + 2121);
    LOBYTE(v230) = -108;
    sub_1000A0A90();
    v217 = *(v3 + 2122);
    LOBYTE(v230) = -107;
    sub_1000A0A90();
    v218 = v3[266];
    v219 = v3[267];
    LOBYTE(v230) = -106;
    sub_1000A0A80();
    v220 = *(v3 + 2144);
    LOBYTE(v230) = -105;
    sub_1000A0A90();
    v221 = v3[269];
    v222 = *(v3 + 2160);
    LOBYTE(v230) = -104;
    sub_1000A0AB0();
    v223 = v3[271];
    v224 = *(v3 + 2176);
    LOBYTE(v230) = -103;
    sub_1000A0AB0();
    v225 = *(v3 + 2177);
    LOBYTE(v230) = -102;
    sub_1000A0A90();
    v226 = *(v3 + 2178);
    LOBYTE(v230) = -101;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10004ED60()
{
  result = qword_1000D9930;
  if (!qword_1000D9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9930);
  }

  return result;
}

unint64_t sub_10004EDB4()
{
  result = qword_1000D9938;
  if (!qword_1000D9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9938);
  }

  return result;
}

unint64_t sub_10004EE08()
{
  result = qword_1000D9958;
  if (!qword_1000D9958)
  {
    sub_1000053DC(&qword_1000D9950, &qword_1000AC258);
    sub_10004EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9958);
  }

  return result;
}

unint64_t sub_10004EE8C()
{
  result = qword_1000D9960;
  if (!qword_1000D9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9960);
  }

  return result;
}

unint64_t sub_10004EEE0()
{
  result = qword_1000D9970;
  if (!qword_1000D9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9970);
  }

  return result;
}

uint64_t sub_10004EF34(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D9968, &qword_1000AC260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004EF9C()
{
  result = qword_1000D9980;
  if (!qword_1000D9980)
  {
    sub_1000053DC(&qword_1000D9978, &qword_1000AC268);
    sub_10004F020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9980);
  }

  return result;
}

unint64_t sub_10004F020()
{
  result = qword_1000D9988;
  if (!qword_1000D9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9988);
  }

  return result;
}

unint64_t sub_10004F074()
{
  result = qword_1000D9998;
  if (!qword_1000D9998)
  {
    sub_1000053DC(&qword_1000D9990, &qword_1000AC270);
    sub_10004F0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9998);
  }

  return result;
}

unint64_t sub_10004F0F8()
{
  result = qword_1000D99A0;
  if (!qword_1000D99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99A0);
  }

  return result;
}

unint64_t sub_10004F14C()
{
  result = qword_1000D99B0;
  if (!qword_1000D99B0)
  {
    sub_1000053DC(&qword_1000D99A8, &qword_1000AC278);
    sub_10004F1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99B0);
  }

  return result;
}

unint64_t sub_10004F1D0()
{
  result = qword_1000D99B8;
  if (!qword_1000D99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99B8);
  }

  return result;
}

unint64_t sub_10004F224()
{
  result = qword_1000D99C8;
  if (!qword_1000D99C8)
  {
    sub_1000053DC(&qword_1000D99C0, &qword_1000AC280);
    sub_10004F2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99C8);
  }

  return result;
}

unint64_t sub_10004F2A8()
{
  result = qword_1000D99D0;
  if (!qword_1000D99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99D0);
  }

  return result;
}

void *IDSMadridProtocolPayload.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000525F0(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x883uLL);
  }

  return result;
}

uint64_t sub_10004F348(char a1)
{
  result = 99;
  switch(a1)
  {
    case 1:
      return 25443;
    case 2:
      return 118;
    case 3:
      return 80;
    case 4:
      return 78;
    case 5:
      return 20582;
    case 6:
      return 20577;
    case 7:
      return 27984;
    case 8:
      return 105;
    case 9:
      return 85;
    case 10:
      return 18801;
    case 11:
      return 68;
    case 12:
      return 25412;
    case 13:
      return 7758947;
    case 14:
      return 7496803;
    case 15:
      return 29294;
    case 16:
      return 25703;
    case 17:
      return 21619;
    case 18:
      return 21608;
    case 19:
      return 20596;
    case 20:
      return 24949;
    case 21:
      return 20333;
    case 22:
      return 21357;
    case 23:
      return 19565;
    case 24:
      return 16749;
    case 25:
      return 21101;
    case 26:
      return 21869;
    case 27:
      return 7102820;
    case 28:
      return 7107940;
    case 29:
      return 21092;
    case 30:
      return 21109;
    case 31:
      return 22637;
    case 32:
      return 22115;
    case 33:
      return 18531;
    case 34:
      return 16995;
    case 35:
      return 21091;
    case 36:
      return 21613;
    case 37:
      return 116;
    case 38:
      return 20595;
    case 39:
      return 18803;
    case 40:
      return 20589;
    case 41:
      return 115;
    case 42:
      return 101;
    case 43:
      return 25967;
    case 44:
      return 21094;
    case 45:
      return 21862;
    case 46:
      return 19814;
    case 47:
      return 5457510;
    case 48:
      return 21350;
    case 49:
      return 5067366;
    case 50:
      return 4543590;
    case 51:
      return 69;
    case 52:
      return 72;
    case 53:
      return 6910576;
    case 54:
      return 7037793;
    case 55:
      return 7107684;
    case 56:
      v4 = 3081;
      v5 = 7102820;
      goto LABEL_157;
    case 57:
      return 7758707;
    case 58:
      return 22629;
    case 59:
      return 28792;
    case 60:
      return 0x6E7265746E692D78;
    case 61:
      return 0x6E6967676F6C2D78;
    case 62:
      return 0x65636172742D78;
    case 63:
      return 28007;
    case 64:
      return 21603;
    case 65:
      return 21345;
    case 66:
      return 18802;
    case 67:
      return 26994;
    case 68:
      return 0xD000000000000019;
    case 69:
      return 0x6172742D33622D78;
    case 70:
      return 26739;
    case 71:
      return 29537;
    case 72:
      return 17512;
    case 73:
      return 18792;
    case 74:
      return 25458;
    case 75:
      return 0x6F2D747365742D78;
    case 76:
      return 7234406;
    case 77:
      return 6515814;
    case 78:
      return 7107189;
    case 79:
      return 6517350;
    case 80:
      return 22135;
    case 81:
      return 117;
    case 82:
      return 104;
    case 83:
      return 98;
    case 84:
      return 30050;
    case 85:
      return 27490;
    case 86:
      return 29544;
    case 87:
      return 29288;
    case 88:
      return 27491;
    case 89:
      return 0x6D69737365702D78;
    case 90:
      return 18542;
    case 91:
      return 79;
    case 92:
      return 1769108835;
    case 93:
      return 7631731;
    case 94:
      return 18545;
    case 95:
      return 1885613432;
    case 96:
      return 3240053;
    case 97:
      return 0xD000000000000010;
    case 98:
      return 7697521;
    case 99:
      return 17253;
    case 100:
      return 25453;
    case 101:
      return 26979;
    case 102:
      return 30321;
    case 103:
      return 6906225;
    case 104:
      return 29297;
    case 105:
      return 1667592305;
    case 106:
      v3 = 1952538993;
      goto LABEL_66;
    case 107:
      v3 = 1885954417;
LABEL_66:
      result = v3 + 3840;
      break;
    case 108:
      result = 7630961;
      break;
    case 109:
      result = 1952538993;
      break;
    case 110:
      result = 1885954417;
      break;
    case 111:
      result = 0x6374617371;
      break;
    case 112:
      result = 0x7374617371;
      break;
    case 113:
      result = 1919709297;
      break;
    case 114:
      result = 1852600433;
      break;
    case 115:
      result = 1668051057;
      break;
    case 116:
      result = 1936486513;
      break;
    case 117:
      result = 1684828273;
      break;
    case 118:
      result = 7564913;
      break;
    case 119:
      result = 7627121;
      break;
    case 120:
      result = 1935960433;
      break;
    case 121:
      result = 1919971953;
      break;
    case 122:
      result = 1936945777;
      break;
    case 123:
      result = 1684629361;
      break;
    case 124:
      result = 1668114289;
      break;
    case 125:
      result = 6383985;
      break;
    case 126:
      result = 1885958769;
      break;
    case 127:
      result = 0x3670697271;
      break;
    case -128:
      result = 7369329;
      break;
    case -127:
      result = 1953722993;
      break;
    case -126:
      result = 1802728049;
      break;
    case -125:
      result = 1769173617;
      break;
    case -124:
      result = 25969;
      break;
    case -123:
      v4 = 257;
      v5 = 6910576;
LABEL_157:
      result = v5 | v4;
      break;
    case -122:
      result = 6910577;
      break;
    case -121:
      result = 1987539825;
      break;
    case -120:
      result = 1986163313;
      break;
    case -119:
      result = 0x7070687271;
      break;
    case -118:
      result = 1886415217;
      break;
    case -117:
      result = 1952543601;
      break;
    case -116:
      result = 7565937;
      break;
    case -115:
      result = 7102833;
      break;
    case -114:
      result = 0x7674617371;
      break;
    case -113:
      result = 1885696625;
      break;
    case -112:
      result = 0x7473617271;
      break;
    case -111:
      result = 1634496625;
      break;
    case -110:
      result = 6514033;
      break;
    case -109:
      result = 17263;
      break;
    case -108:
      result = 17001;
      break;
    case -107:
      result = 16759;
      break;
    case -106:
      result = 17509;
      break;
    case -105:
      result = 21093;
      break;
    case -104:
      result = 7496807;
      break;
    case -103:
      result = 28019;
      break;
    case -102:
      result = 7697512;
      break;
    case -101:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004FF08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004F348(*a1);
  v5 = v4;
  if (v3 == sub_10004F348(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10004FF90()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004F348(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10004FFF4()
{
  sub_10004F348(*v0);
  sub_1000A05B0();
}

Swift::Int sub_100050048()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004F348(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000500A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10005E1DC();
  *a2 = result;
  return result;
}

uint64_t sub_1000500D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005010C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005E1DC();
  *a1 = result;
  return result;
}

uint64_t sub_100050140(uint64_t a1)
{
  v2 = sub_10004ED60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005017C(uint64_t a1)
{
  v2 = sub_10004ED60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000501CC()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_1000502A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005E85C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000502D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 21345;
  v5 = 0xEC00000064696563;
  v6 = 0x6172742D33622D78;
  v7 = 26739;
  if (v2 != 4)
  {
    v7 = 29537;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 26994;
  if (v2 != 1)
  {
    v9 = 0xD000000000000019;
    v8 = 0x80000001000A2290;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10005036C()
{
  v1 = *v0;
  v2 = 21345;
  v3 = 0x6172742D33622D78;
  v4 = 26739;
  if (v1 != 4)
  {
    v4 = 29537;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 26994;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

uint64_t sub_100050404@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005E85C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005042C(uint64_t a1)
{
  v2 = sub_10005E188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050468(uint64_t a1)
{
  v2 = sub_10005E188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSMadridProtocolHttpHeaders.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D99D8, &qword_1000AC288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005E188();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_1000A0A80();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_1000A0A80();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_1000A0A80();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_1000A0A80();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_1000A0A80();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  sub_1000A0A80();
  return (*(v6 + 8))(v9, v5);
}

double IDSMadridProtocolHttpHeaders.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005E8A8(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

Swift::Int sub_100050708()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10005075C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_1000507A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD0F0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100050810@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD128;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100050868(uint64_t a1)
{
  v2 = sub_10005ED44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000508A4(uint64_t a1)
{
  v2 = sub_10005ED44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSMadridProtocolDeliveryContext.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D99E8, &qword_1000AC290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CE0();
  sub_1000A0AB0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t IDSMadridProtocolDeliveryContext.init(from:)(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D99F8, &qword_1000AC298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CD0();
  if (!v1)
  {
    v9 = sub_1000A0950();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v9;
}

uint64_t sub_100050B94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D99F8, &qword_1000AC298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = sub_1000A0950();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100002308(a1);
  *a2 = v11;
  *(a2 + 8) = v13 & 1;
  return result;
}

uint64_t sub_100050D18(void *a1)
{
  v3 = sub_1000017BC(&qword_1000D99E8, &qword_1000AC290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED44();
  sub_1000A0CE0();
  sub_1000A0AB0();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int sub_100050E64()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = *&aQpln_0[8 * v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100050EC0()
{
  v1 = *&aQpln_0[8 * *v0];
  sub_1000A05B0();
}

Swift::Int sub_100050F00()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = *&aQpln_0[8 * v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100050F58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005EDEC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100050FBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005EDEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100050FE4(uint64_t a1)
{
  v2 = sub_10005ED98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051020(uint64_t a1)
{
  v2 = sub_10005ED98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayPluginRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A00, &qword_1000AC2A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED98();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_1000A0A80();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  sub_1000A0A80();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v19[13] = 2;
  sub_1000A0AB0();
  v18 = *(v3 + 41);
  v19[12] = 3;
  sub_1000A0A90();
  return (*(v6 + 8))(v9, v5);
}

double IDSQuickRelayPluginRequest.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005EE38(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

Swift::Int sub_100051288()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100051320()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_1000513A4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100051438@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F114(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100051468(uint64_t *a1@<X8>)
{
  v2 = 6910577;
  v3 = 0xE100000000000000;
  v4 = 116;
  if (*v1 != 2)
  {
    v4 = 20596;
    v3 = 0xE200000000000000;
  }

  if (*v1)
  {
    v2 = 7565937;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v2 = v4;
    v5 = v3;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_1000514BC()
{
  v1 = 6910577;
  v2 = 116;
  if (*v0 != 2)
  {
    v2 = 20596;
  }

  if (*v0)
  {
    v1 = 7565937;
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

uint64_t sub_10005150C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051534(uint64_t a1)
{
  v2 = sub_10005F0C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051570(uint64_t a1)
{
  v2 = sub_10005F0C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayAllocationStatus.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A10, &qword_1000AC2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005F0C0();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v20) = 0;
  sub_1000A0B20();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    LOBYTE(v20) = 1;
    sub_1000A0AB0();
    v20 = *(v3 + 2);
    v21 = v20;
    v19[23] = 2;
    sub_100005620(&v21, v19, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v20, *(&v20 + 1));
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v20) = 3;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v9, v5);
}

double IDSQuickRelayAllocationStatus.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005F160(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10005181C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_1000518FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F470(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10005192C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1885958769;
  v5 = 1953722993;
  if (v2 != 5)
  {
    v5 = 1919971953;
  }

  v6 = 1802728049;
  if (v2 != 3)
  {
    v6 = 1769173617;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
  }

  v7 = 0xE500000000000000;
  v8 = 0x3670697271;
  if (v2 != 1)
  {
    v8 = 7369329;
    v7 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000519D4()
{
  v1 = *v0;
  v2 = 1885958769;
  v3 = 1953722993;
  if (v1 != 5)
  {
    v3 = 1919971953;
  }

  v4 = 1802728049;
  if (v1 != 3)
  {
    v4 = 1769173617;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x3670697271;
  if (v1 != 1)
  {
    v5 = 7369329;
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

uint64_t sub_100051A78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051AA0(uint64_t a1)
{
  v2 = sub_10005F41C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051ADC(uint64_t a1)
{
  v2 = sub_10005F41C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelaySelfAllocToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A20, &qword_1000AC2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005F41C();
  sub_1000A0CE0();
  v24 = *v3;
  v19 = *v3;
  v18 = 0;
  sub_100005620(&v24, v17, &qword_1000D83D8, &qword_1000A5D68);
  sub_100006804();
  sub_1000A0AD0();
  if (v2)
  {
    sub_1000057B0(v19, *(&v19 + 1));
  }

  else
  {
    sub_1000057B0(v19, *(&v19 + 1));
    v23 = v3[1];
    v19 = v3[1];
    v18 = 1;
    sub_100005620(&v23, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    v12 = *(v3 + 4);
    v13 = *(v3 + 40);
    LOBYTE(v19) = 2;
    sub_1000A0AB0();
    v22 = v3[3];
    v19 = v3[3];
    v18 = 3;
    sub_100005620(&v22, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    v21 = v3[4];
    v19 = v3[4];
    v18 = 4;
    sub_100005620(&v21, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    v19 = v3[5];
    v20 = v19;
    v18 = 5;
    sub_100005620(&v20, v17, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v19, *(&v19 + 1));
    v14 = *(v3 + 12);
    v15 = *(v3 + 104);
    LOBYTE(v19) = 6;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 IDSQuickRelaySelfAllocToken.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005F4BC(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

Swift::Int sub_100051F14()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100051FD0()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100052078()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100052130@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FBA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100052160(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852600433;
  v5 = 0xE300000000000000;
  v6 = 6910577;
  v7 = 1802728049;
  if (v2 != 3)
  {
    v7 = 1953722993;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1936486513;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000521D8()
{
  v1 = *v0;
  v2 = 1852600433;
  v3 = 6910577;
  v4 = 1802728049;
  if (v1 != 3)
  {
    v4 = 1953722993;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1936486513;
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

uint64_t sub_10005224C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005FBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100052274(uint64_t a1)
{
  v2 = sub_10005FB54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000522B0(uint64_t a1)
{
  v2 = sub_10005FB54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSQuickRelayPluginAllocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9A30, &qword_1000AC2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005FB54();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_1000A0A80();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    LOBYTE(v21) = 1;
    sub_1000A0AB0();
    v15 = v3[4];
    v16 = *(v3 + 40);
    LOBYTE(v21) = 2;
    sub_1000A0B20();
    v23 = *(v3 + 3);
    v21 = *(v3 + 3);
    v20 = 3;
    sub_100005620(&v23, v19, &qword_1000D83D8, &qword_1000A5D68);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v21, *(&v21 + 1));
    v21 = *(v3 + 4);
    v22 = v21;
    v20 = 4;
    sub_100005620(&v22, v19, &qword_1000D83D8, &qword_1000A5D68);
    sub_1000A0AD0();
    sub_1000057B0(v21, *(&v21 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 IDSQuickRelayPluginAllocation.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005FBF4(a1, v6);
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

void *sub_1000525F0(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_1000017BC(&qword_1000D9B10, &unk_1000AE818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v127 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v334 = v2;
  sub_1000022C4(v2, v10);
  sub_10004ED60();
  sub_1000A0CD0();
  if (v1)
  {
    v807 = v1;
LABEL_5:
    LODWORD(v273) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v268 = 0;
    LODWORD(v269) = 0;
    LODWORD(v272) = 0;
    v270 = 0;
    LODWORD(v271) = 0;
    LODWORD(v274) = 0;
    LODWORD(v275) = 0;
    LODWORD(v276) = 0;
    v278 = 0;
    LODWORD(v280) = 0;
    LODWORD(v277) = 0;
    LODWORD(v279) = 0;
    LODWORD(v281) = 0;
    LODWORD(v282) = 0;
    LODWORD(v284) = 0;
    LODWORD(v286) = 0;
    LODWORD(v287) = 0;
    LODWORD(v285) = 0;
    LODWORD(v283) = 0;
    LODWORD(v288) = 0;
    LODWORD(v289) = 0;
    LODWORD(v290) = 0;
    v291 = 0;
    v292 = 0;
    LODWORD(v293) = 0;
    LODWORD(v294) = 0;
    LODWORD(v295) = 0;
    LODWORD(v296) = 0;
    LODWORD(v297) = 0;
    LODWORD(v298) = 0;
    LODWORD(v299) = 0;
    LODWORD(v300) = 0;
    LODWORD(v301) = 0;
    LODWORD(v302) = 0;
    LODWORD(v303) = 0;
    LODWORD(v304) = 0;
    LODWORD(v305) = 0;
    LODWORD(v306) = 0;
    LODWORD(v307) = 0;
    LODWORD(v308) = 0;
    LODWORD(v309) = 0;
    LODWORD(v310) = 0;
    LODWORD(v311) = 0;
    LODWORD(v312) = 0;
    LODWORD(v313) = 0;
    LODWORD(v314) = 0;
    LODWORD(v315) = 0;
    LODWORD(v316) = 0;
    LODWORD(v317) = 0;
    LODWORD(v318) = 0;
    LODWORD(v319) = 0;
    LODWORD(v320) = 0;
    LODWORD(v321) = 0;
    LODWORD(v322) = 0;
    LODWORD(v323) = 0;
    LODWORD(v324) = 0;
    v325 = 0;
    LODWORD(v326) = 0;
    v327 = 0;
    LODWORD(v328) = 0;
    v329 = 0;
    LODWORD(v330) = 0;
    LODWORD(v331) = 0;
    LODWORD(v332) = 0;
    LODWORD(v333) = 0;
    goto LABEL_6;
  }

  v12 = v4;
  LOBYTE(v336) = 0;
  v13 = sub_1000A0A00();
  LOBYTE(v336) = 1;
  v23 = sub_1000A0950();
  v806 = v24 & 1;
  LOBYTE(v336) = 2;
  v25 = sub_1000A0950();
  v807 = 0;
  v333 = v25;
  v804 = v26 & 1;
  v335[0] = 3;
  v27 = sub_100005424();
  v28 = v807;
  sub_1000A0970();
  if (v28)
  {
    v807 = v28;
    (*(v6 + 8))(v9, v5);
    goto LABEL_5;
  }

  v267 = v336;
  v335[0] = 4;
  sub_1000A0970();
  v266 = v336;
  v335[0] = 5;
  sub_1000A0970();
  v265 = v336;
  v335[0] = 6;
  sub_1000A0970();
  v264 = v336;
  v335[0] = 7;
  v332 = v27;
  sub_1000A0970();
  v263 = v336;
  LOBYTE(v336) = 8;
  v331 = sub_1000A0920();
  v262 = v29;
  v807 = 0;
  v335[0] = 9;
  sub_1000A0970();
  v807 = 0;
  v261 = v336;
  LOBYTE(v336) = 10;
  v330 = sub_1000A0920();
  v260 = v30;
  v807 = 0;
  LOBYTE(v336) = 11;
  v329 = sub_1000A0930();
  v807 = 0;
  v335[0] = 12;
  sub_100061268();
  v31 = v807;
  sub_1000A0970();
  v807 = v31;
  if (v31)
  {
    (*(v6 + 8))(v9, v5);
    v21 = 0;
    v268 = 0;
    LODWORD(v269) = 0;
    LODWORD(v272) = 0;
    v270 = 0;
    LODWORD(v271) = 0;
    LODWORD(v274) = 0;
    LODWORD(v275) = 0;
    LODWORD(v276) = 0;
    v278 = 0;
    LODWORD(v280) = 0;
    LODWORD(v277) = 0;
    LODWORD(v279) = 0;
    LODWORD(v281) = 0;
    LODWORD(v282) = 0;
    LODWORD(v284) = 0;
    LODWORD(v286) = 0;
    LODWORD(v287) = 0;
    LODWORD(v285) = 0;
    LODWORD(v283) = 0;
    LODWORD(v288) = 0;
    LODWORD(v289) = 0;
    LODWORD(v290) = 0;
    v291 = 0;
    v292 = 0;
    LODWORD(v293) = 0;
    LODWORD(v294) = 0;
    LODWORD(v295) = 0;
    LODWORD(v296) = 0;
    LODWORD(v297) = 0;
    LODWORD(v298) = 0;
    LODWORD(v299) = 0;
    LODWORD(v300) = 0;
    LODWORD(v301) = 0;
    LODWORD(v302) = 0;
    LODWORD(v303) = 0;
    LODWORD(v304) = 0;
    LODWORD(v305) = 0;
    LODWORD(v306) = 0;
    LODWORD(v307) = 0;
    LODWORD(v308) = 0;
    LODWORD(v309) = 0;
    LODWORD(v310) = 0;
    LODWORD(v311) = 0;
    LODWORD(v312) = 0;
    LODWORD(v313) = 0;
    LODWORD(v314) = 0;
    LODWORD(v315) = 0;
    LODWORD(v316) = 0;
    LODWORD(v317) = 0;
    LODWORD(v318) = 0;
    LODWORD(v319) = 0;
    LODWORD(v320) = 0;
    LODWORD(v321) = 0;
    LODWORD(v322) = 0;
    LODWORD(v323) = 0;
    LODWORD(v324) = 0;
    v325 = 0;
    LODWORD(v326) = 0;
    v327 = 0;
    LODWORD(v328) = 0;
    v329 = 0;
    LODWORD(v330) = 0;
    LODWORD(v331) = 0;
    LODWORD(v332) = 0;
    LODWORD(v333) = 0;
    LODWORD(v273) = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
  }

  else
  {
    v328 = v336;
    v327 = BYTE8(v336);
    v801 = BYTE9(v336);
    LOBYTE(v336) = 13;
    v326 = sub_1000A0950();
    v807 = 0;
    v798 = v32 & 1;
    v335[0] = 14;
    sub_1000A0970();
    v807 = 0;
    v259 = v336;
    LOBYTE(v336) = 15;
    HIDWORD(v325) = sub_1000A0930();
    v807 = 0;
    LOBYTE(v336) = 16;
    LODWORD(v325) = sub_1000A0930();
    v807 = 0;
    v335[0] = 17;
    sub_1000A0970();
    v807 = 0;
    v258 = v336;
    v335[0] = 18;
    sub_1000A0970();
    v807 = 0;
    v257 = v336;
    LOBYTE(v336) = 19;
    v324 = sub_1000A0920();
    v256 = v33;
    v807 = 0;
    LOBYTE(v336) = 20;
    v323 = sub_1000A0920();
    v255 = v34;
    v807 = 0;
    LOBYTE(v336) = 21;
    v322 = sub_1000A0920();
    v254 = v35;
    v807 = 0;
    v335[0] = 22;
    sub_1000A0970();
    v807 = 0;
    v253 = v336;
    LOBYTE(v336) = 23;
    v321 = sub_1000A0980();
    v807 = 0;
    v794 = v36 & 1;
    LOBYTE(v336) = 24;
    v320 = sub_1000A0920();
    v252 = v37;
    v807 = 0;
    LOBYTE(v336) = 25;
    v319 = sub_1000A0920();
    v251 = v38;
    v807 = 0;
    LOBYTE(v336) = 26;
    v318 = sub_1000A0920();
    v250 = v39;
    v807 = 0;
    sub_1000017BC(&qword_1000D9940, &qword_1000AC250);
    v335[0] = 27;
    v317 = sub_1000612BC(&qword_1000D9B20);
    v40 = v807;
    sub_1000A0970();
    v807 = v40;
    if (v40)
    {
      (*(v6 + 8))(v9, v5);
      v278 = 0;
      LODWORD(v280) = 0;
      LODWORD(v277) = 0;
      LODWORD(v279) = 0;
      LODWORD(v281) = 0;
      LODWORD(v282) = 0;
      LODWORD(v284) = 0;
      LODWORD(v286) = 0;
      LODWORD(v287) = 0;
      LODWORD(v285) = 0;
      LODWORD(v283) = 0;
      LODWORD(v288) = 0;
      LODWORD(v289) = 0;
      LODWORD(v290) = 0;
      v291 = 0;
      v292 = 0;
      LODWORD(v293) = 0;
      LODWORD(v294) = 0;
      LODWORD(v295) = 0;
      LODWORD(v296) = 0;
      LODWORD(v297) = 0;
      LODWORD(v298) = 0;
      LODWORD(v299) = 0;
      LODWORD(v300) = 0;
      LODWORD(v301) = 0;
      LODWORD(v302) = 0;
      LODWORD(v303) = 0;
      LODWORD(v304) = 0;
      LODWORD(v305) = 0;
      LODWORD(v306) = 0;
      LODWORD(v307) = 0;
      LODWORD(v308) = 0;
      LODWORD(v309) = 0;
      LODWORD(v310) = 0;
      LODWORD(v311) = 0;
      LODWORD(v312) = 0;
      LODWORD(v313) = 0;
      LODWORD(v314) = 0;
      LODWORD(v315) = 0;
      LODWORD(v316) = 0;
      LODWORD(v317) = 0;
      LODWORD(v318) = 0;
      LODWORD(v319) = 0;
      LODWORD(v320) = 0;
      LODWORD(v321) = 0;
      LODWORD(v322) = 0;
      LODWORD(v323) = 0;
      LODWORD(v324) = 0;
      v325 = 0;
      LODWORD(v326) = 0;
      v327 = 0;
      LODWORD(v328) = 0;
      v329 = 0;
      LODWORD(v330) = 0;
      LODWORD(v331) = 0;
      LODWORD(v332) = 0;
      LODWORD(v333) = 0;
      LODWORD(v273) = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      LODWORD(v269) = 1;
      v268 = 0x100000001;
      LODWORD(v272) = 1;
      v270 = 1;
      LODWORD(v271) = 1;
      LODWORD(v274) = 1;
      LODWORD(v275) = 1;
      LODWORD(v276) = 1;
    }

    else
    {
      v249 = v336;
      v335[0] = 28;
      sub_1000A0970();
      v807 = 0;
      v248 = v336;
      LOBYTE(v336) = 29;
      v317 = sub_1000A0920();
      v247 = v41;
      v807 = 0;
      LOBYTE(v336) = 30;
      v316 = sub_1000A0920();
      v246 = v42;
      v807 = 0;
      LOBYTE(v336) = 31;
      v315 = sub_1000A0980();
      v807 = 0;
      v792 = v43 & 1;
      LOBYTE(v336) = 32;
      v314 = sub_1000A0950();
      v807 = 0;
      v790 = v44 & 1;
      LOBYTE(v336) = 33;
      v313 = sub_1000A0920();
      v245 = v45;
      v807 = 0;
      v335[0] = 34;
      sub_1000A0970();
      v807 = 0;
      v244 = v336;
      v335[0] = 35;
      sub_1000A0970();
      v807 = 0;
      v243 = v336;
      LOBYTE(v336) = 36;
      v312 = sub_1000A0950();
      v807 = 0;
      v788 = v46 & 1;
      v335[0] = 37;
      sub_1000A0970();
      v807 = 0;
      v242 = *(&v336 + 1);
      v240 = v336;
      LOBYTE(v336) = 38;
      v311 = sub_1000A0920();
      v241 = v47;
      v807 = 0;
      LOBYTE(v336) = 39;
      v310 = sub_1000A0920();
      v239 = v48;
      v807 = 0;
      LOBYTE(v336) = 40;
      v309 = sub_1000A0920();
      v238 = v49;
      v807 = 0;
      LOBYTE(v336) = 41;
      v308 = sub_1000A0950();
      v807 = 0;
      v786 = v50 & 1;
      LOBYTE(v336) = 42;
      v307 = sub_1000A0980();
      v807 = 0;
      v784 = v51 & 1;
      LOBYTE(v336) = 43;
      v306 = sub_1000A0980();
      v807 = 0;
      v782 = v52 & 1;
      LOBYTE(v336) = 44;
      v305 = sub_1000A0950();
      v807 = 0;
      v780 = v53 & 1;
      v335[0] = 45;
      sub_1000A0970();
      v807 = 0;
      v237 = *(&v336 + 1);
      v235 = v336;
      LOBYTE(v336) = 46;
      v304 = sub_1000A0920();
      v236 = v54;
      v807 = 0;
      LOBYTE(v336) = 47;
      v303 = sub_1000A0950();
      v807 = 0;
      v778 = v55 & 1;
      LOBYTE(v336) = 48;
      v302 = sub_1000A0950();
      v807 = 0;
      v776 = v56 & 1;
      LOBYTE(v336) = 49;
      v301 = sub_1000A0920();
      v234 = v57;
      v807 = 0;
      LOBYTE(v336) = 50;
      v300 = sub_1000A0980();
      v807 = 0;
      v774 = v58 & 1;
      LOBYTE(v336) = 51;
      v299 = sub_1000A0920();
      v233 = v59;
      v807 = 0;
      LOBYTE(v336) = 52;
      v298 = sub_1000A0950();
      v807 = 0;
      v772 = v60 & 1;
      LOBYTE(v336) = 53;
      v297 = sub_1000A0950();
      v807 = 0;
      v770 = v61 & 1;
      LOBYTE(v336) = 54;
      v296 = sub_1000A0950();
      v807 = 0;
      v768 = v62 & 1;
      sub_1000017BC(&qword_1000D9950, &qword_1000AC258);
      v335[0] = 55;
      v295 = sub_100061328();
      v63 = v807;
      sub_1000A0970();
      v807 = v63;
      if (v63)
      {
        (*(v6 + 8))(v9, v5);
        v292 = 0;
        LODWORD(v293) = 0;
        LODWORD(v294) = 0;
        LODWORD(v295) = 0;
        LODWORD(v296) = 0;
        LODWORD(v297) = 0;
        LODWORD(v298) = 0;
        LODWORD(v299) = 0;
        LODWORD(v300) = 0;
        LODWORD(v301) = 0;
        LODWORD(v302) = 0;
        LODWORD(v303) = 0;
        LODWORD(v304) = 0;
        LODWORD(v305) = 0;
        LODWORD(v306) = 0;
        LODWORD(v307) = 0;
        LODWORD(v308) = 0;
        LODWORD(v309) = 0;
        LODWORD(v310) = 0;
        LODWORD(v311) = 0;
        LODWORD(v312) = 0;
        LODWORD(v313) = 0;
        LODWORD(v314) = 0;
        LODWORD(v315) = 0;
        LODWORD(v316) = 0;
        LODWORD(v317) = 0;
        LODWORD(v318) = 0;
        LODWORD(v319) = 0;
        LODWORD(v320) = 0;
        LODWORD(v321) = 0;
        LODWORD(v322) = 0;
        LODWORD(v323) = 0;
        LODWORD(v324) = 0;
        v325 = 0;
        LODWORD(v326) = 0;
        v327 = 0;
        LODWORD(v328) = 0;
        v329 = 0;
        LODWORD(v330) = 0;
        LODWORD(v331) = 0;
        LODWORD(v332) = 0;
        LODWORD(v333) = 0;
        v16 = 1;
        LODWORD(v273) = 1;
        v14 = 1;
        v15 = 1;
        v17 = 1;
        v18 = 1;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        LODWORD(v269) = 1;
        v268 = 0x100000001;
        LODWORD(v272) = 1;
        v270 = 1;
        LODWORD(v271) = 1;
        LODWORD(v274) = 1;
        LODWORD(v275) = 1;
        LODWORD(v276) = 1;
        v278 = 1;
        LODWORD(v280) = 1;
        LODWORD(v277) = 1;
        LODWORD(v279) = 1;
        LODWORD(v281) = 1;
        LODWORD(v282) = 1;
        LODWORD(v284) = 1;
        LODWORD(v286) = 1;
        LODWORD(v287) = 1;
        LODWORD(v285) = 1;
        LODWORD(v283) = 1;
        LODWORD(v288) = 1;
        LODWORD(v289) = 1;
        LODWORD(v290) = 1;
        v291 = 1;
      }

      else
      {
        v228 = v336;
        v335[0] = 56;
        sub_1000A0970();
        v807 = 0;
        v226 = v336;
        LOBYTE(v336) = 57;
        v295 = sub_1000A0950();
        v807 = 0;
        v766 = v64 & 1;
        LOBYTE(v336) = 58;
        v294 = sub_1000A0980();
        v807 = 0;
        v764 = v65 & 1;
        LOBYTE(v336) = 59;
        v293 = sub_1000A0950();
        v807 = 0;
        v762 = v66 & 1;
        LOBYTE(v336) = 60;
        HIDWORD(v292) = sub_1000A0930();
        v807 = 0;
        LOBYTE(v336) = 61;
        LODWORD(v292) = sub_1000A0930();
        v807 = 0;
        LOBYTE(v336) = 62;
        HIDWORD(v291) = sub_1000A0930();
        v807 = 0;
        LOBYTE(v336) = 63;
        LODWORD(v291) = sub_1000A0930();
        v807 = 0;
        LOBYTE(v336) = 64;
        v290 = sub_1000A0920();
        v222 = v67;
        v807 = 0;
        LOBYTE(v336) = 65;
        v289 = sub_1000A0920();
        v224 = v68;
        v807 = 0;
        v335[0] = 66;
        sub_1000A0970();
        v807 = 0;
        v225 = *(&v336 + 1);
        v223 = v336;
        LOBYTE(v336) = 67;
        v288 = sub_1000A0920();
        v229 = v69;
        v807 = 0;
        LOBYTE(v336) = 68;
        v287 = sub_1000A0920();
        v230 = v70;
        v807 = 0;
        LOBYTE(v336) = 69;
        v286 = sub_1000A0920();
        v231 = v71;
        v807 = 0;
        LOBYTE(v336) = 70;
        v285 = sub_1000A0920();
        v232 = v72;
        v807 = 0;
        LOBYTE(v336) = 71;
        v284 = sub_1000A0920();
        v227 = v73;
        v807 = 0;
        LOBYTE(v336) = 72;
        v283 = sub_1000A0950();
        v807 = 0;
        v759 = v74 & 1;
        LOBYTE(v336) = 73;
        v282 = sub_1000A0920();
        v221 = v75;
        v807 = 0;
        LOBYTE(v336) = 74;
        v281 = sub_1000A0950();
        v807 = 0;
        v757 = v76 & 1;
        LOBYTE(v336) = 75;
        v280 = sub_1000A0920();
        v220 = v77;
        v807 = 0;
        LOBYTE(v336) = 76;
        v279 = sub_1000A0950();
        v807 = 0;
        v755 = v78 & 1;
        LOBYTE(v336) = 77;
        v278 = sub_1000A0930();
        v807 = 0;
        LOBYTE(v336) = 78;
        v277 = sub_1000A0920();
        v219 = v79;
        v807 = 0;
        LOBYTE(v336) = 79;
        v276 = sub_1000A0950();
        v807 = 0;
        v752 = v80 & 1;
        LOBYTE(v336) = 80;
        v275 = sub_1000A0950();
        v807 = 0;
        v750 = v81 & 1;
        LOBYTE(v336) = 81;
        v274 = sub_1000A0920();
        v218 = v82;
        v807 = 0;
        v671 = 82;
        sub_100061400();
        v83 = v807;
        sub_1000A0970();
        v807 = v83;
        if (v83)
        {
          (*(v6 + 8))(v9, v5);
          LODWORD(v304) = 0;
          LODWORD(v305) = 0;
          LODWORD(v306) = 0;
          LODWORD(v307) = 0;
          LODWORD(v308) = 0;
          LODWORD(v309) = 0;
          LODWORD(v310) = 0;
          LODWORD(v311) = 0;
          LODWORD(v312) = 0;
          LODWORD(v313) = 0;
          LODWORD(v314) = 0;
          LODWORD(v315) = 0;
          LODWORD(v316) = 0;
          LODWORD(v317) = 0;
          LODWORD(v318) = 0;
          LODWORD(v319) = 0;
          LODWORD(v320) = 0;
          LODWORD(v321) = 0;
          LODWORD(v322) = 0;
          LODWORD(v323) = 0;
          LODWORD(v324) = 0;
          v325 = 0;
          LODWORD(v326) = 0;
          v327 = 0;
          LODWORD(v328) = 0;
          v329 = 0;
          LODWORD(v330) = 0;
          LODWORD(v331) = 0;
          LODWORD(v332) = 0;
          LODWORD(v333) = 0;
          v21 = 1;
          LODWORD(v273) = 1;
          v14 = 1;
          v15 = 1;
          v16 = 1;
          v17 = 1;
          v18 = 1;
          v19 = 1;
          v20 = 1;
          LODWORD(v269) = 1;
          v268 = 0x100000001;
          LODWORD(v272) = 1;
          v270 = 1;
          LODWORD(v271) = 1;
          LODWORD(v274) = 1;
          LODWORD(v275) = 1;
          LODWORD(v276) = 1;
          v278 = 1;
          LODWORD(v280) = 1;
          LODWORD(v277) = 1;
          LODWORD(v279) = 1;
          LODWORD(v281) = 1;
          LODWORD(v282) = 1;
          LODWORD(v284) = 1;
          LODWORD(v286) = 1;
          LODWORD(v287) = 1;
          LODWORD(v285) = 1;
          LODWORD(v283) = 1;
          LODWORD(v288) = 1;
          LODWORD(v289) = 1;
          LODWORD(v290) = 1;
          v291 = 0x100000001;
          v292 = 0x100000001;
          LODWORD(v293) = 1;
          LODWORD(v294) = 1;
          LODWORD(v295) = 1;
          LODWORD(v296) = 1;
          LODWORD(v297) = 1;
          LODWORD(v298) = 1;
          LODWORD(v299) = 1;
          LODWORD(v300) = 1;
          LODWORD(v301) = 1;
          LODWORD(v302) = 1;
          LODWORD(v303) = 1;
        }

        else
        {
          v745 = v674;
          v746 = v675;
          v747 = v676;
          v748 = v677;
          v743 = v672;
          v744 = v673;
          v335[0] = 83;
          sub_1000A0970();
          v807 = 0;
          v216 = *(&v336 + 1);
          v217 = v336;
          LOBYTE(v336) = 84;
          v273 = sub_1000A0920();
          v215 = v84;
          v807 = 0;
          v335[0] = 85;
          sub_1000A0970();
          v807 = 0;
          v213 = *(&v336 + 1);
          v214 = v336;
          LOBYTE(v336) = 86;
          v272 = sub_1000A0950();
          v807 = 0;
          v742 = v85 & 1;
          LOBYTE(v336) = 87;
          v271 = sub_1000A0920();
          v211 = v86;
          v807 = 0;
          LOBYTE(v336) = 88;
          v270 = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 89;
          HIDWORD(v268) = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 90;
          LODWORD(v268) = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 91;
          v170 = sub_1000A0950();
          v807 = 0;
          v738 = v87 & 1;
          LOBYTE(v336) = 92;
          v269 = sub_1000A0920();
          v212 = v88;
          v807 = 0;
          v335[0] = 93;
          sub_1000A0970();
          v807 = 0;
          v209 = *(&v336 + 1);
          v210 = v336;
          v335[0] = 94;
          sub_1000A0970();
          v807 = 0;
          v207 = *(&v336 + 1);
          v208 = v336;
          LOBYTE(v336) = 95;
          v169 = sub_1000A0950();
          v807 = 0;
          v736 = v89 & 1;
          LOBYTE(v336) = 96;
          v168 = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 97;
          v167 = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 98;
          v166 = sub_1000A0950();
          v807 = 0;
          v733 = v90 & 1;
          LOBYTE(v336) = 99;
          v165 = sub_1000A0950();
          v807 = 0;
          v731 = v91 & 1;
          LOBYTE(v336) = 100;
          v164 = sub_1000A0930();
          v807 = 0;
          LOBYTE(v336) = 101;
          v163 = sub_1000A0950();
          v807 = 0;
          v728 = v92 & 1;
          LOBYTE(v336) = 102;
          v162 = sub_1000A0950();
          v807 = 0;
          v726 = v93 & 1;
          LOBYTE(v336) = 103;
          v161 = sub_1000A0920();
          v206 = v94;
          v807 = 0;
          LOBYTE(v336) = 104;
          v160 = sub_1000A0950();
          v807 = 0;
          v724 = v95 & 1;
          LOBYTE(v336) = 105;
          v157 = sub_1000A0950();
          v807 = 0;
          v722 = v96 & 1;
          v335[0] = 106;
          sub_1000A0970();
          v807 = 0;
          v204 = *(&v336 + 1);
          v205 = v336;
          v335[0] = 107;
          sub_1000A0970();
          v807 = 0;
          v202 = *(&v336 + 1);
          v203 = v336;
          LOBYTE(v336) = 108;
          v153 = sub_1000A0950();
          v807 = 0;
          v720 = v97 & 1;
          v335[0] = 109;
          sub_1000A0970();
          v807 = 0;
          v200 = *(&v336 + 1);
          v201 = v336;
          v335[0] = 110;
          sub_1000A0970();
          v807 = 0;
          v198 = *(&v336 + 1);
          v199 = v336;
          LOBYTE(v336) = 111;
          v152 = sub_1000A0950();
          v807 = 0;
          v718 = v98 & 1;
          LOBYTE(v336) = 112;
          v151 = sub_1000A0950();
          v807 = 0;
          v716 = v99 & 1;
          sub_1000017BC(&qword_1000D9978, &qword_1000AC268);
          v335[0] = 113;
          sub_100061454();
          v100 = v807;
          sub_1000A0970();
          v807 = v100;
          if (v100)
          {
            (*(v6 + 8))(v9, v5);
            LODWORD(v317) = 0;
            LODWORD(v318) = 0;
            LODWORD(v319) = 0;
            LODWORD(v320) = 0;
            LODWORD(v321) = 0;
            LODWORD(v322) = 0;
            LODWORD(v323) = 0;
            LODWORD(v324) = 0;
            v325 = 0;
            LODWORD(v326) = 0;
            v327 = 0;
            LODWORD(v328) = 0;
            v329 = 0;
            LODWORD(v330) = 0;
            LODWORD(v331) = 0;
            LODWORD(v332) = 0;
            LODWORD(v333) = 0;
            LODWORD(v274) = 1;
            LODWORD(v273) = 1;
            v14 = 1;
            v15 = 1;
            v16 = 1;
            v17 = 1;
            v18 = 1;
            v19 = 1;
            v20 = 1;
            v21 = 1;
            LODWORD(v269) = 1;
            v268 = 0x100000001;
            LODWORD(v272) = 1;
            v270 = 1;
            LODWORD(v271) = 1;
            LODWORD(v275) = 1;
            LODWORD(v276) = 1;
            v278 = 1;
            LODWORD(v280) = 1;
            LODWORD(v277) = 1;
            LODWORD(v279) = 1;
            LODWORD(v281) = 1;
            LODWORD(v282) = 1;
            LODWORD(v284) = 1;
            LODWORD(v286) = 1;
            LODWORD(v287) = 1;
            LODWORD(v285) = 1;
            LODWORD(v283) = 1;
            LODWORD(v288) = 1;
            LODWORD(v289) = 1;
            LODWORD(v290) = 1;
            v291 = 0x100000001;
            v292 = 0x100000001;
            LODWORD(v293) = 1;
            LODWORD(v294) = 1;
            LODWORD(v295) = 1;
            LODWORD(v296) = 1;
            LODWORD(v297) = 1;
            LODWORD(v298) = 1;
            LODWORD(v299) = 1;
            LODWORD(v300) = 1;
            LODWORD(v301) = 1;
            LODWORD(v302) = 1;
            LODWORD(v303) = 1;
            LODWORD(v304) = 1;
            LODWORD(v305) = 1;
            LODWORD(v306) = 1;
            LODWORD(v307) = 1;
            LODWORD(v308) = 1;
            LODWORD(v309) = 1;
            LODWORD(v310) = 1;
            LODWORD(v311) = 1;
            LODWORD(v312) = 1;
            LODWORD(v313) = 1;
            LODWORD(v314) = 1;
            LODWORD(v315) = 1;
            LODWORD(v316) = 1;
          }

          else
          {
            v197 = v336;
            LOBYTE(v336) = 114;
            v146 = sub_1000A0920();
            v196 = v101;
            v807 = 0;
            LOBYTE(v336) = 115;
            v144 = sub_1000A0920();
            v195 = v102;
            v807 = 0;
            LOBYTE(v336) = 116;
            v142 = sub_1000A0950();
            v807 = 0;
            v714 = v103 & 1;
            LOBYTE(v336) = 117;
            v140 = sub_1000A0930();
            v807 = 0;
            LOBYTE(v336) = 118;
            v138 = sub_1000A0930();
            v807 = 0;
            LOBYTE(v336) = 119;
            v136 = sub_1000A0950();
            v807 = 0;
            v711 = v104 & 1;
            v335[0] = 120;
            sub_1000A0970();
            v807 = 0;
            v193 = *(&v336 + 1);
            v194 = v336;
            LOBYTE(v336) = 121;
            v134 = sub_1000A0950();
            v807 = 0;
            v709 = v105 & 1;
            LOBYTE(v336) = 122;
            v133 = sub_1000A0930();
            v807 = 0;
            LOBYTE(v336) = 123;
            v132 = sub_1000A0920();
            v192 = v106;
            v807 = 0;
            LOBYTE(v336) = 124;
            v131 = sub_1000A0950();
            v807 = 0;
            v706 = v107 & 1;
            LOBYTE(v336) = 125;
            v130 = sub_1000A0950();
            v807 = 0;
            v704 = v108 & 1;
            v335[0] = 126;
            sub_1000A0970();
            v807 = 0;
            v190 = *(&v336 + 1);
            v191 = v336;
            v335[0] = 127;
            sub_1000A0970();
            v807 = 0;
            v188 = *(&v336 + 1);
            v189 = v336;
            LOBYTE(v336) = 0x80;
            v129 = sub_1000A0950();
            v807 = 0;
            v702 = v109 & 1;
            v335[0] = -127;
            sub_1000A0970();
            v807 = 0;
            v186 = *(&v336 + 1);
            v187 = v336;
            v335[0] = -126;
            sub_1000A0970();
            v807 = 0;
            v184 = *(&v336 + 1);
            v185 = v336;
            v335[0] = -125;
            sub_1000A0970();
            v807 = 0;
            v182 = *(&v336 + 1);
            v183 = v336;
            LOBYTE(v336) = -124;
            v128 = sub_1000A0980();
            v807 = 0;
            v700 = v110 & 1;
            v335[0] = -123;
            sub_1000A0970();
            v807 = 0;
            v180 = *(&v336 + 1);
            v181 = v336;
            LOBYTE(v336) = -122;
            v127 = sub_1000A09C0();
            v807 = 0;
            v698 = v111 & 1;
            v335[0] = -121;
            sub_1000A0970();
            v807 = 0;
            v179 = *(&v336 + 1);
            v177 = v336;
            LOBYTE(v336) = -120;
            v159 = sub_1000A0920();
            v178 = v112;
            v807 = 0;
            LOBYTE(v336) = -119;
            v158 = sub_1000A0950();
            v807 = 0;
            v696 = v113 & 1;
            LOBYTE(v336) = -118;
            v156 = sub_1000A0950();
            v807 = 0;
            v694 = v114 & 1;
            LOBYTE(v336) = -117;
            v155 = sub_1000A0980();
            v807 = 0;
            v692 = v115 & 1;
            LOBYTE(v336) = -116;
            v154 = sub_1000A0950();
            v807 = 0;
            v690 = v116 & 1;
            sub_1000017BC(&qword_1000D9990, &qword_1000AC270);
            v335[0] = -115;
            sub_10006152C();
            v117 = v807;
            sub_1000A0970();
            v807 = v117;
            if (v117)
            {
              (*(v6 + 8))(v9, v5);
              v329 = 0;
              LODWORD(v330) = 0;
              LODWORD(v331) = 0;
              LODWORD(v332) = 0;
              LODWORD(v333) = 0;
              LODWORD(v281) = 1;
              LODWORD(v273) = 1;
              v14 = 1;
              v15 = 1;
              v16 = 1;
              v17 = 1;
              v18 = 1;
              v19 = 1;
              v20 = 1;
              v21 = 1;
              LODWORD(v269) = 1;
              v268 = 0x100000001;
              LODWORD(v272) = 1;
              v270 = 1;
              LODWORD(v271) = 1;
              LODWORD(v274) = 1;
              LODWORD(v275) = 1;
              LODWORD(v276) = 1;
              v278 = 1;
              LODWORD(v280) = 1;
              LODWORD(v277) = 1;
              LODWORD(v279) = 1;
              LODWORD(v282) = 1;
              LODWORD(v284) = 1;
              LODWORD(v286) = 1;
              LODWORD(v287) = 1;
              LODWORD(v285) = 1;
              LODWORD(v283) = 1;
              LODWORD(v288) = 1;
              LODWORD(v289) = 1;
              LODWORD(v290) = 1;
              v291 = 0x100000001;
              v292 = 0x100000001;
              LODWORD(v293) = 1;
              LODWORD(v294) = 1;
              LODWORD(v295) = 1;
              LODWORD(v296) = 1;
              LODWORD(v297) = 1;
              LODWORD(v298) = 1;
              LODWORD(v299) = 1;
              LODWORD(v300) = 1;
              LODWORD(v301) = 1;
              LODWORD(v302) = 1;
              LODWORD(v303) = 1;
              LODWORD(v304) = 1;
              LODWORD(v305) = 1;
              LODWORD(v306) = 1;
              LODWORD(v307) = 1;
              LODWORD(v308) = 1;
              LODWORD(v309) = 1;
              LODWORD(v310) = 1;
              LODWORD(v311) = 1;
              LODWORD(v312) = 1;
              LODWORD(v313) = 1;
              LODWORD(v314) = 1;
              LODWORD(v315) = 1;
              LODWORD(v316) = 1;
              LODWORD(v317) = 1;
              LODWORD(v318) = 1;
              LODWORD(v319) = 1;
              LODWORD(v320) = 1;
              LODWORD(v321) = 1;
              LODWORD(v322) = 1;
              LODWORD(v323) = 1;
              LODWORD(v324) = 1;
              v325 = 0x100000001;
              LODWORD(v326) = 1;
              v327 = 1;
              LODWORD(v328) = 1;
            }

            else
            {
              v176 = v336;
              sub_1000017BC(&qword_1000D99A8, &qword_1000AC278);
              v335[0] = -114;
              sub_100061604();
              v118 = v807;
              sub_1000A0970();
              v807 = v118;
              if (v118)
              {
                (*(v6 + 8))(v9, v5);
                LODWORD(v330) = 0;
                LODWORD(v331) = 0;
                LODWORD(v332) = 0;
                LODWORD(v333) = 0;
                LODWORD(v282) = 1;
                LODWORD(v273) = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                v18 = 1;
                v19 = 1;
                v20 = 1;
                v21 = 1;
                LODWORD(v269) = 1;
                v268 = 0x100000001;
                LODWORD(v272) = 1;
                v270 = 1;
                LODWORD(v271) = 1;
                LODWORD(v274) = 1;
                LODWORD(v275) = 1;
                LODWORD(v276) = 1;
                v278 = 1;
                LODWORD(v280) = 1;
                LODWORD(v277) = 1;
                LODWORD(v279) = 1;
                LODWORD(v281) = 1;
                LODWORD(v284) = 1;
                LODWORD(v286) = 1;
                LODWORD(v287) = 1;
                LODWORD(v285) = 1;
                LODWORD(v283) = 1;
                LODWORD(v288) = 1;
                LODWORD(v289) = 1;
                LODWORD(v290) = 1;
                v291 = 0x100000001;
                v292 = 0x100000001;
                LODWORD(v293) = 1;
                LODWORD(v294) = 1;
                LODWORD(v295) = 1;
                LODWORD(v296) = 1;
                LODWORD(v297) = 1;
                LODWORD(v298) = 1;
                LODWORD(v299) = 1;
                LODWORD(v300) = 1;
                LODWORD(v301) = 1;
                LODWORD(v302) = 1;
                LODWORD(v303) = 1;
                LODWORD(v304) = 1;
                LODWORD(v305) = 1;
                LODWORD(v306) = 1;
                LODWORD(v307) = 1;
                LODWORD(v308) = 1;
                LODWORD(v309) = 1;
                LODWORD(v310) = 1;
                LODWORD(v311) = 1;
                LODWORD(v312) = 1;
                LODWORD(v313) = 1;
                LODWORD(v314) = 1;
                LODWORD(v315) = 1;
                LODWORD(v316) = 1;
                LODWORD(v317) = 1;
                LODWORD(v318) = 1;
                LODWORD(v319) = 1;
                LODWORD(v320) = 1;
                LODWORD(v321) = 1;
                LODWORD(v322) = 1;
                LODWORD(v323) = 1;
                LODWORD(v324) = 1;
                v325 = 0x100000001;
                LODWORD(v326) = 1;
                v327 = 1;
                LODWORD(v328) = 1;
                v329 = 1;
              }

              else
              {
                v175 = v336;
                v335[0] = -113;
                sub_1000A0970();
                v807 = 0;
                v173 = *(&v336 + 1);
                v174 = v336;
                LOBYTE(v336) = -112;
                v332 = sub_1000A0950();
                v807 = 0;
                v688 = v119 & 1;
                sub_1000017BC(&qword_1000D99C0, &qword_1000AC280);
                v335[0] = -111;
                sub_1000616DC();
                v120 = v807;
                sub_1000A0970();
                v807 = v120;
                if (!v120)
                {
                  v172 = v336;
                  LOBYTE(v336) = -110;
                  v150 = sub_1000A0950();
                  v807 = 0;
                  v686 = v121 & 1;
                  LOBYTE(v336) = -109;
                  v149 = sub_1000A0950();
                  v807 = 0;
                  v684 = v122 & 1;
                  LOBYTE(v336) = -108;
                  v148 = sub_1000A0930();
                  v807 = 0;
                  LOBYTE(v336) = -107;
                  v147 = sub_1000A0930();
                  v807 = 0;
                  LOBYTE(v336) = -106;
                  v145 = sub_1000A0920();
                  v171 = v123;
                  v807 = 0;
                  LOBYTE(v336) = -105;
                  v143 = sub_1000A0930();
                  v807 = 0;
                  LOBYTE(v336) = -104;
                  v141 = sub_1000A0950();
                  v807 = 0;
                  v680 = v124 & 1;
                  LOBYTE(v336) = -103;
                  v139 = sub_1000A0950();
                  v807 = 0;
                  v678 = v125 & 1;
                  LOBYTE(v336) = -102;
                  v137 = sub_1000A0930();
                  v807 = 0;
                  v670 = -101;
                  v135 = sub_1000A0930();
                  v807 = 0;
                  (*(v6 + 8))(v9, v5);
                  *&v335[169] = *v802;
                  *&v335[186] = v799;
                  *&v335[201] = *v797;
                  *&v335[226] = v795;
                  *&v335[337] = *v793;
                  *&v335[449] = *v791;
                  *&v335[465] = *v789;
                  *&v335[529] = *v787;
                  *&v335[609] = *v785;
                  *&v335[625] = *v783;
                  *&v335[641] = *v781;
                  *&v335[657] = *v779;
                  *&v335[705] = *v777;
                  *&v335[721] = *v775;
                  *&v335[753] = *v773;
                  *&v335[785] = *v771;
                  *&v335[801] = *v769;
                  *&v335[817] = *v767;
                  *&v335[849] = *v765;
                  *&v335[865] = *v763;
                  *&v335[885] = v760;
                  *&v335[1025] = *v758;
                  *&v335[1057] = *v756;
                  *&v335[1090] = v753;
                  *&v335[1121] = *v751;
                  *&v335[1137] = *v749;
                  *&v335[1313] = *v741;
                  *&v335[1339] = v739;
                  *&v335[1353] = *v737;
                  *&v335[1419] = v734;
                  *&v335[1433] = *v732;
                  *&v335[1450] = v729;
                  *&v335[1465] = *v727;
                  *&v335[1481] = *v725;
                  *&v335[1513] = *v723;
                  *&v335[1529] = *v721;
                  *&v335[1577] = *v719;
                  *&v335[1625] = *v717;
                  *&v335[1641] = *v715;
                  *&v335[1699] = v712;
                  *&v335[1713] = *v710;
                  *&v335[1746] = v707;
                  *&v335[1777] = *v705;
                  *&v335[1793] = *v703;
                  *&v335[1841] = *v701;
                  *&v335[1905] = *v699;
                  *&v335[1937] = *v697;
                  *&v335[1985] = *v695;
                  *&v335[2001] = *v693;
                  *&v335[2017] = *v691;
                  *&v335[2033] = *v689;
                  *&v335[2081] = *v687;
                  *&v335[2105] = *v685;
                  *&v335[2123] = v682;
                  *&v335[2145] = *v681;
                  *&v335[2161] = *v679;
                  v335[16] = v806;
                  *&v335[17] = *v805;
                  *&v335[20] = *&v805[3];
                  v335[32] = v804;
                  *&v335[33] = *v803;
                  *&v335[36] = *&v803[3];
                  *&v335[172] = *&v802[3];
                  v335[185] = v801;
                  *&v335[190] = v800;
                  v335[200] = v798;
                  *&v335[204] = *&v797[3];
                  *&v335[230] = v796;
                  v335[336] = v794;
                  *&v335[340] = *&v793[3];
                  v335[448] = v792;
                  *&v335[452] = *&v791[3];
                  v335[464] = v790;
                  *&v335[468] = *&v789[3];
                  v335[528] = v788;
                  *&v335[532] = *&v787[3];
                  v335[608] = v786;
                  *&v335[612] = *&v785[3];
                  v335[624] = v784;
                  *&v335[628] = *&v783[3];
                  v335[640] = v782;
                  *&v335[644] = *&v781[3];
                  v335[656] = v780;
                  *&v335[660] = *&v779[3];
                  v335[704] = v778;
                  *&v335[708] = *&v777[3];
                  v335[720] = v776;
                  *&v335[724] = *&v775[3];
                  v335[752] = v774;
                  *&v335[756] = *&v773[3];
                  v335[784] = v772;
                  *&v335[788] = *&v771[3];
                  v335[800] = v770;
                  *&v335[804] = *&v769[3];
                  v335[816] = v768;
                  *&v335[820] = *&v767[3];
                  v335[848] = v766;
                  *&v335[852] = *&v765[3];
                  v335[864] = v764;
                  *&v335[868] = *&v763[3];
                  v335[880] = v762;
                  v335[887] = v761;
                  v335[1024] = v759;
                  *&v335[1028] = *&v758[3];
                  v335[1056] = v757;
                  *&v335[1060] = *&v756[3];
                  v335[1088] = v755;
                  *&v335[1094] = v754;
                  v335[1120] = v752;
                  *&v335[1124] = *&v751[3];
                  v335[1136] = v750;
                  *&v335[1140] = *&v749[3];
                  *&v335[1160] = v743;
                  *&v335[1176] = v744;
                  *&v335[1224] = v747;
                  *&v335[1240] = v748;
                  *&v335[1192] = v745;
                  *&v335[1208] = v746;
                  v335[1312] = v742;
                  *&v335[1316] = *&v741[3];
                  v335[1343] = v740;
                  v335[1352] = v738;
                  *&v335[1356] = *&v737[3];
                  v335[1416] = v736;
                  v335[1423] = v735;
                  v335[1432] = v733;
                  *&v335[1436] = *&v732[3];
                  v335[1448] = v731;
                  *&v335[1454] = v730;
                  v335[1464] = v728;
                  *&v335[1468] = *&v727[3];
                  v335[1480] = v726;
                  *&v335[1484] = *&v725[3];
                  v335[1512] = v724;
                  *&v335[1516] = *&v723[3];
                  v335[1528] = v722;
                  *&v335[1532] = *&v721[3];
                  v335[1576] = v720;
                  *&v335[1580] = *&v719[3];
                  v335[1624] = v718;
                  *&v335[1628] = *&v717[3];
                  v335[1640] = v716;
                  *&v335[1644] = *&v715[3];
                  v335[1696] = v714;
                  v335[1703] = v713;
                  v335[1712] = v711;
                  *&v335[1716] = *&v710[3];
                  v335[1744] = v709;
                  *&v335[1750] = v708;
                  v335[1776] = v706;
                  *&v335[1780] = *&v705[3];
                  v335[1792] = v704;
                  *&v335[1796] = *&v703[3];
                  v335[1840] = v702;
                  *&v335[1844] = *&v701[3];
                  v335[1904] = v700;
                  *&v335[1908] = *&v699[3];
                  v335[1936] = v698;
                  *&v335[1940] = *&v697[3];
                  v335[1984] = v696;
                  *&v335[1988] = *&v695[3];
                  v335[2000] = v694;
                  *&v335[2004] = *&v693[3];
                  v335[2016] = v692;
                  *&v335[2020] = *&v691[3];
                  v335[2032] = v690;
                  *&v335[2036] = *&v689[3];
                  v335[2080] = v688;
                  *&v335[2084] = *&v687[3];
                  v335[2104] = v686;
                  *&v335[2108] = *&v685[3];
                  v335[2120] = v684;
                  v335[2127] = v683;
                  *&v335[2148] = *&v681[3];
                  v335[2160] = v680;
                  *&v335[2164] = *&v679[3];
                  v335[2176] = v678;
                  *v335 = v13;
                  *&v335[8] = v23;
                  *&v335[24] = v333;
                  *&v335[40] = v267;
                  *&v335[56] = v266;
                  *&v335[72] = v265;
                  *&v335[88] = v264;
                  *&v335[104] = v263;
                  *&v335[120] = v331;
                  *&v335[128] = v262;
                  *&v335[136] = v261;
                  *&v335[152] = v330;
                  *&v335[160] = v260;
                  v335[168] = v329;
                  *&v335[176] = v328;
                  v335[184] = v327;
                  *&v335[192] = v326;
                  *&v335[208] = v259;
                  v335[224] = BYTE4(v325);
                  v335[225] = v325;
                  *&v335[232] = v258;
                  *&v335[248] = v257;
                  *&v335[264] = v324;
                  *&v335[272] = v256;
                  *&v335[280] = v323;
                  *&v335[288] = v255;
                  *&v335[296] = v322;
                  *&v335[304] = v254;
                  *&v335[312] = v253;
                  *&v335[328] = v321;
                  *&v335[344] = v320;
                  *&v335[352] = v252;
                  *&v335[360] = v319;
                  *&v335[368] = v251;
                  *&v335[376] = v318;
                  *&v335[384] = v250;
                  *&v335[392] = v249;
                  *&v335[400] = v248;
                  *&v335[408] = v317;
                  *&v335[416] = v247;
                  *&v335[424] = v316;
                  *&v335[432] = v246;
                  *&v335[440] = v315;
                  *&v335[456] = v314;
                  *&v335[472] = v313;
                  *&v335[480] = v245;
                  *&v335[488] = v244;
                  *&v335[504] = v243;
                  *&v335[520] = v312;
                  *&v335[536] = v240;
                  *&v335[544] = v242;
                  *&v335[552] = v311;
                  *&v335[560] = v241;
                  *&v335[568] = v310;
                  *&v335[576] = v239;
                  *&v335[584] = v309;
                  *&v335[592] = v238;
                  *&v335[600] = v308;
                  *&v335[616] = v307;
                  *&v335[632] = v306;
                  *&v335[648] = v305;
                  *&v335[664] = v235;
                  *&v335[672] = v237;
                  *&v335[680] = v304;
                  *&v335[688] = v236;
                  *&v335[696] = v303;
                  *&v335[712] = v302;
                  *&v335[728] = v301;
                  *&v335[736] = v234;
                  *&v335[744] = v300;
                  *&v335[760] = v299;
                  *&v335[768] = v233;
                  *&v335[776] = v298;
                  *&v335[792] = v297;
                  *&v335[808] = v296;
                  *&v335[824] = v228;
                  *&v335[832] = v226;
                  *&v335[840] = v295;
                  *&v335[856] = v294;
                  *&v335[872] = v293;
                  v335[881] = BYTE4(v292);
                  v335[882] = v292;
                  v335[883] = BYTE4(v291);
                  v335[884] = v291;
                  *&v335[888] = v290;
                  *&v335[896] = v222;
                  *&v335[904] = v289;
                  *&v335[912] = v224;
                  *&v335[920] = v223;
                  *&v335[928] = v225;
                  *&v335[936] = v288;
                  *&v335[944] = v229;
                  *&v335[952] = v287;
                  *&v335[960] = v230;
                  *&v335[968] = v286;
                  *&v335[976] = v231;
                  *&v335[984] = v285;
                  *&v335[992] = v232;
                  *&v335[1000] = v284;
                  *&v335[1008] = v227;
                  *&v335[1016] = v283;
                  *&v335[1032] = v282;
                  *&v335[1040] = v221;
                  *&v335[1048] = v281;
                  *&v335[1064] = v280;
                  *&v335[1072] = v220;
                  *&v335[1080] = v279;
                  v335[1089] = v278;
                  *&v335[1096] = v277;
                  *&v335[1104] = v219;
                  *&v335[1112] = v276;
                  *&v335[1128] = v275;
                  *&v335[1144] = v274;
                  *&v335[1152] = v218;
                  *&v335[1256] = v217;
                  *&v335[1264] = v216;
                  *&v335[1272] = v273;
                  *&v335[1280] = v215;
                  *&v335[1288] = v214;
                  *&v335[1296] = v213;
                  *&v335[1304] = v272;
                  *&v335[1320] = v271;
                  *&v335[1328] = v211;
                  v335[1336] = v270;
                  v335[1337] = BYTE4(v268);
                  v335[1338] = v268;
                  *&v335[1344] = v170;
                  *&v335[1360] = v269;
                  *&v335[1368] = v212;
                  *&v335[1376] = v210;
                  *&v335[1384] = v209;
                  *&v335[1392] = v208;
                  *&v335[1400] = v207;
                  *&v335[1408] = v169;
                  v335[1417] = v168;
                  v335[1418] = v167;
                  *&v335[1424] = v166;
                  *&v335[1440] = v165;
                  v335[1449] = v164;
                  *&v335[1456] = v163;
                  *&v335[1472] = v162;
                  *&v335[1488] = v161;
                  *&v335[1496] = v206;
                  *&v335[1504] = v160;
                  *&v335[1520] = v157;
                  *&v335[1536] = v205;
                  *&v335[1544] = v204;
                  *&v335[1552] = v203;
                  *&v335[1560] = v202;
                  *&v335[1568] = v153;
                  *&v335[1584] = v201;
                  *&v335[1592] = v200;
                  v126 = v199;
                  *&v335[1600] = v199;
                  *&v335[1608] = v198;
                  *&v335[1616] = v152;
                  *&v335[1632] = v151;
                  *&v335[1648] = v197;
                  *&v335[1656] = v146;
                  *&v335[1664] = v196;
                  *&v335[1672] = v144;
                  *&v335[1680] = v195;
                  *&v335[1688] = v142;
                  v335[1697] = v140;
                  v335[1698] = v138;
                  *&v335[1704] = v136;
                  *&v335[1720] = v194;
                  *&v335[1728] = v193;
                  *&v335[1736] = v134;
                  v335[1745] = v133;
                  *&v335[1752] = v132;
                  *&v335[1760] = v192;
                  *&v335[1768] = v131;
                  *&v335[1784] = v130;
                  *&v335[1800] = v191;
                  *&v335[1808] = v190;
                  *&v335[1816] = v189;
                  *&v335[1824] = v188;
                  *&v335[1832] = v129;
                  *&v335[1848] = v187;
                  *&v335[1856] = v186;
                  *&v335[1864] = v185;
                  *&v335[1872] = v184;
                  *&v335[1880] = v183;
                  *&v335[1888] = v182;
                  *&v335[1896] = v128;
                  *&v335[1912] = v181;
                  *&v335[1920] = v180;
                  *&v335[1928] = v127;
                  *&v335[1944] = v177;
                  *&v335[1952] = v179;
                  *&v335[1960] = v159;
                  *&v335[1968] = v178;
                  *&v335[1976] = v158;
                  *&v335[1992] = v156;
                  *&v335[2008] = v155;
                  *&v335[2024] = v154;
                  *&v335[2040] = v176;
                  *&v335[2048] = v175;
                  *&v335[2056] = v174;
                  *&v335[2064] = v173;
                  *&v335[2072] = v332;
                  *&v335[2088] = v172;
                  *&v335[2096] = v150;
                  *&v335[2112] = v149;
                  v335[2121] = v148;
                  v335[2122] = v147;
                  *&v335[2128] = v145;
                  *&v335[2136] = v171;
                  v335[2144] = v143;
                  *&v335[2152] = v141;
                  *&v335[2168] = v139;
                  v335[2177] = v137;
                  v335[2178] = v135;
                  sub_1000617B4(v335, &v336);
                  sub_100002308(v334);
                  *&v336 = v13;
                  *(&v336 + 1) = v23;
                  *(&v337 + 1) = v333;
                  *&v338[8] = v267;
                  *&v338[24] = v266;
                  *&v338[40] = v265;
                  *&v338[56] = v264;
                  v339 = v263;
                  v340 = v331;
                  v341 = v262;
                  v342 = v261;
                  v343 = v330;
                  v344 = v260;
                  v345 = v329;
                  v347 = v328;
                  v348 = v327;
                  v352 = v326;
                  v355 = v259;
                  v356 = BYTE4(v325);
                  v357 = v325;
                  v360 = v258;
                  v361 = v257;
                  v362 = v324;
                  v363 = v256;
                  v364 = v323;
                  v365 = v255;
                  v366 = v322;
                  v367 = v254;
                  v368 = v253;
                  v369 = v321;
                  v372 = v320;
                  v373 = v252;
                  v374 = v319;
                  v375 = v251;
                  v376 = v318;
                  v377 = v250;
                  v378 = v249;
                  v379 = v248;
                  v380 = v317;
                  v381 = v247;
                  v382 = v316;
                  v383 = v246;
                  v384 = v315;
                  v387 = v314;
                  v390 = v313;
                  v391 = v245;
                  v392 = v244;
                  v393 = v243;
                  v394 = v312;
                  v397 = v240;
                  v398 = v242;
                  v399 = v311;
                  v400 = v241;
                  v401 = v310;
                  v402 = v239;
                  v403 = v309;
                  v404 = v238;
                  v405 = v308;
                  v408 = v307;
                  v411 = v306;
                  v414 = v305;
                  v417 = v235;
                  v418 = v237;
                  v419 = v304;
                  v420 = v236;
                  v421 = v303;
                  v424 = v302;
                  v427 = v301;
                  v428 = v234;
                  v429 = v300;
                  v432 = v299;
                  v433 = v233;
                  v434 = v298;
                  v437 = v297;
                  v440 = v296;
                  v443 = v228;
                  v444 = v226;
                  v445 = v295;
                  v448 = v294;
                  v451 = v293;
                  v453 = BYTE4(v292);
                  v454 = v292;
                  v455 = BYTE4(v291);
                  v456 = v291;
                  v459 = v290;
                  v460 = v222;
                  v461 = v289;
                  v462 = v224;
                  v463 = v223;
                  v464 = v225;
                  v465 = v288;
                  v466 = v229;
                  v467 = v287;
                  v468 = v230;
                  v469 = v286;
                  v470 = v231;
                  v471 = v285;
                  v472 = v232;
                  v473 = v284;
                  v474 = v227;
                  v475 = v283;
                  v478 = v282;
                  v479 = v221;
                  v480 = v281;
                  v483 = v280;
                  v484 = v220;
                  v485 = v279;
                  v487 = v278;
                  v490 = v277;
                  v491 = v219;
                  v492 = v276;
                  v495 = v275;
                  v498 = v274;
                  v499 = v218;
                  v506 = v217;
                  v507 = v216;
                  v508 = v273;
                  v509 = v215;
                  v510 = v214;
                  v511 = v213;
                  v512 = v272;
                  v515 = v271;
                  v516 = v211;
                  v517 = v270;
                  v518 = BYTE4(v268);
                  v519 = v268;
                  v522 = v170;
                  v568 = v126;
                  v569 = v198;
                  v570 = v152;
                  v573 = v151;
                  v576 = v197;
                  v566 = v201;
                  v567 = v200;
                  v577 = v146;
                  v578 = v196;
                  v579 = v144;
                  v580 = v195;
                  v559 = v205;
                  v560 = v204;
                  v561 = v203;
                  v562 = v202;
                  v563 = v153;
                  v581 = v142;
                  v556 = v157;
                  v583 = v140;
                  v584 = v138;
                  v587 = v136;
                  v590 = v194;
                  v591 = v193;
                  v551 = v161;
                  v552 = v206;
                  v553 = v160;
                  v592 = v134;
                  v594 = v133;
                  v597 = v132;
                  v548 = v162;
                  v598 = v192;
                  v599 = v131;
                  v602 = v130;
                  v605 = v191;
                  v606 = v190;
                  v545 = v163;
                  v607 = v189;
                  v608 = v188;
                  v609 = v129;
                  v612 = v187;
                  v613 = v186;
                  v540 = v165;
                  v542 = v164;
                  v614 = v185;
                  v615 = v184;
                  v616 = v183;
                  v617 = v182;
                  v534 = v167;
                  v537 = v166;
                  v618 = v128;
                  v621 = v181;
                  v622 = v180;
                  v623 = v127;
                  v528 = v209;
                  v529 = v208;
                  v530 = v207;
                  v531 = v169;
                  v533 = v168;
                  v626 = v177;
                  v525 = v269;
                  *v371 = *v793;
                  *v386 = *v791;
                  *v389 = *v789;
                  *v396 = *v787;
                  *v407 = *v785;
                  *v410 = *v783;
                  *v413 = *v781;
                  *v416 = *v779;
                  *v423 = *v777;
                  *v426 = *v775;
                  *v431 = *v773;
                  *v436 = *v771;
                  *v439 = *v769;
                  *v442 = *v767;
                  *v447 = *v765;
                  *v450 = *v763;
                  v457 = v760;
                  *v477 = *v758;
                  *v482 = *v756;
                  v488 = v753;
                  *v494 = *v751;
                  *v497 = *v749;
                  LOBYTE(v337) = v806;
                  *(&v337 + 1) = *v805;
                  DWORD1(v337) = *&v805[3];
                  v338[0] = v804;
                  *&v338[1] = *v803;
                  *&v338[4] = *&v803[3];
                  *v346 = *v802;
                  *&v346[3] = *&v802[3];
                  v349 = v801;
                  v350 = v799;
                  v351 = v800;
                  v353 = v798;
                  *v354 = *v797;
                  *&v354[3] = *&v797[3];
                  v359 = v796;
                  v358 = v795;
                  v370 = v794;
                  *&v371[3] = *&v793[3];
                  v385 = v792;
                  *&v386[3] = *&v791[3];
                  v388 = v790;
                  *&v389[3] = *&v789[3];
                  v395 = v788;
                  *&v396[3] = *&v787[3];
                  v406 = v786;
                  *&v407[3] = *&v785[3];
                  v409 = v784;
                  *&v410[3] = *&v783[3];
                  v412 = v782;
                  *&v413[3] = *&v781[3];
                  v415 = v780;
                  *&v416[3] = *&v779[3];
                  v422 = v778;
                  *&v423[3] = *&v777[3];
                  v425 = v776;
                  *&v426[3] = *&v775[3];
                  v430 = v774;
                  *&v431[3] = *&v773[3];
                  v435 = v772;
                  *&v436[3] = *&v771[3];
                  v438 = v770;
                  *&v439[3] = *&v769[3];
                  v441 = v768;
                  *&v442[3] = *&v767[3];
                  v446 = v766;
                  *&v447[3] = *&v765[3];
                  v449 = v764;
                  *&v450[3] = *&v763[3];
                  v452 = v762;
                  v458 = v761;
                  v476 = v759;
                  *&v477[3] = *&v758[3];
                  v481 = v757;
                  *&v482[3] = *&v756[3];
                  v486 = v755;
                  v489 = v754;
                  v493 = v752;
                  *&v494[3] = *&v751[3];
                  v496 = v750;
                  *&v497[3] = *&v749[3];
                  v500 = v743;
                  v501 = v744;
                  v504 = v747;
                  v505 = v748;
                  v502 = v745;
                  v503 = v746;
                  v513 = v742;
                  *v514 = *v741;
                  *&v514[3] = *&v741[3];
                  v520 = v739;
                  v521 = v740;
                  v523 = v738;
                  *v524 = *v737;
                  *&v524[3] = *&v737[3];
                  v526 = v212;
                  v527 = v210;
                  v532 = v736;
                  v535 = v734;
                  v536 = v735;
                  v538 = v733;
                  *v539 = *v732;
                  *&v539[3] = *&v732[3];
                  v541 = v731;
                  v543 = v729;
                  v544 = v730;
                  v546 = v728;
                  *v547 = *v727;
                  *&v547[3] = *&v727[3];
                  v549 = v726;
                  *v550 = *v725;
                  *&v550[3] = *&v725[3];
                  v554 = v724;
                  *v555 = *v723;
                  *&v555[3] = *&v723[3];
                  v557 = v722;
                  *v558 = *v721;
                  *&v558[3] = *&v721[3];
                  v564 = v720;
                  *v565 = *v719;
                  *&v565[3] = *&v719[3];
                  v571 = v718;
                  *v572 = *v717;
                  *&v572[3] = *&v717[3];
                  v574 = v716;
                  *v575 = *v715;
                  *&v575[3] = *&v715[3];
                  v582 = v714;
                  v585 = v712;
                  v586 = v713;
                  v588 = v711;
                  *v589 = *v710;
                  *&v589[3] = *&v710[3];
                  v593 = v709;
                  v595 = v707;
                  v596 = v708;
                  v600 = v706;
                  *v601 = *v705;
                  *&v601[3] = *&v705[3];
                  v603 = v704;
                  *v604 = *v703;
                  *&v604[3] = *&v703[3];
                  v610 = v702;
                  *v611 = *v701;
                  *&v611[3] = *&v701[3];
                  v619 = v700;
                  *v620 = *v699;
                  *&v620[3] = *&v699[3];
                  v624 = v698;
                  *v625 = *v697;
                  *&v625[3] = *&v697[3];
                  v627 = v179;
                  v628 = v159;
                  v629 = v178;
                  v630 = v158;
                  v631 = v696;
                  *v632 = *v695;
                  *&v632[3] = *&v695[3];
                  v633 = v156;
                  v634 = v694;
                  *v635 = *v693;
                  *&v635[3] = *&v693[3];
                  v636 = v155;
                  v637 = v692;
                  *v638 = *v691;
                  *&v638[3] = *&v691[3];
                  v639 = v154;
                  v640 = v690;
                  *v641 = *v689;
                  *&v641[3] = *&v689[3];
                  v642 = v176;
                  v643 = v175;
                  v644 = v174;
                  v645 = v173;
                  v646 = v332;
                  v647 = v688;
                  *v648 = *v687;
                  *&v648[3] = *&v687[3];
                  v649 = v172;
                  v650 = v150;
                  v651 = v686;
                  *v652 = *v685;
                  *&v652[3] = *&v685[3];
                  v653 = v149;
                  v654 = v684;
                  v655 = v148;
                  v656 = v147;
                  v657 = v682;
                  v658 = v683;
                  v659 = v145;
                  v660 = v171;
                  v661 = v143;
                  *v662 = *v681;
                  *&v662[3] = *&v681[3];
                  v663 = v141;
                  v664 = v680;
                  *v665 = *v679;
                  *&v665[3] = *&v679[3];
                  v666 = v139;
                  v667 = v678;
                  v668 = v137;
                  v669 = v135;
                  sub_1000617EC(&v336);
                  return memcpy(v12, v335, 0x883uLL);
                }

                (*(v6 + 8))(v9, v5);
                LODWORD(v332) = 0;
                LODWORD(v333) = 0;
                LODWORD(v284) = 1;
                LODWORD(v273) = 1;
                v14 = 1;
                v15 = 1;
                v16 = 1;
                v17 = 1;
                v18 = 1;
                v19 = 1;
                v20 = 1;
                v21 = 1;
                LODWORD(v269) = 1;
                v268 = 0x100000001;
                LODWORD(v272) = 1;
                v270 = 1;
                LODWORD(v271) = 1;
                LODWORD(v274) = 1;
                LODWORD(v275) = 1;
                LODWORD(v276) = 1;
                v278 = 1;
                LODWORD(v280) = 1;
                LODWORD(v277) = 1;
                LODWORD(v279) = 1;
                LODWORD(v281) = 1;
                LODWORD(v282) = 1;
                LODWORD(v286) = 1;
                LODWORD(v287) = 1;
                LODWORD(v285) = 1;
                LODWORD(v283) = 1;
                LODWORD(v288) = 1;
                LODWORD(v289) = 1;
                LODWORD(v290) = 1;
                v291 = 0x100000001;
                v292 = 0x100000001;
                LODWORD(v293) = 1;
                LODWORD(v294) = 1;
                LODWORD(v295) = 1;
                LODWORD(v296) = 1;
                LODWORD(v297) = 1;
                LODWORD(v298) = 1;
                LODWORD(v299) = 1;
                LODWORD(v300) = 1;
                LODWORD(v301) = 1;
                LODWORD(v302) = 1;
                LODWORD(v303) = 1;
                LODWORD(v304) = 1;
                LODWORD(v305) = 1;
                LODWORD(v306) = 1;
                LODWORD(v307) = 1;
                LODWORD(v308) = 1;
                LODWORD(v309) = 1;
                LODWORD(v310) = 1;
                LODWORD(v311) = 1;
                LODWORD(v312) = 1;
                LODWORD(v313) = 1;
                LODWORD(v314) = 1;
                LODWORD(v315) = 1;
                LODWORD(v316) = 1;
                LODWORD(v317) = 1;
                LODWORD(v318) = 1;
                LODWORD(v319) = 1;
                LODWORD(v320) = 1;
                LODWORD(v321) = 1;
                LODWORD(v322) = 1;
                LODWORD(v323) = 1;
                LODWORD(v324) = 1;
                v325 = 0x100000001;
                LODWORD(v326) = 1;
                v327 = 1;
                LODWORD(v328) = 1;
                v329 = 1;
                LODWORD(v330) = 1;
                LODWORD(v331) = 1;
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  result = sub_100002308(v334);
  if (v273)
  {
    result = sub_1000057B0(v267, *(&v267 + 1));
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else if (!v14)
  {
LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

  result = sub_1000057B0(v266, *(&v266 + 1));
  if (v15)
  {
LABEL_9:
    result = sub_1000057B0(v265, *(&v265 + 1));
    if (!v16)
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  if (!v16)
  {
LABEL_10:
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = sub_1000057B0(v264, *(&v264 + 1));
  if (v17)
  {
LABEL_11:
    result = sub_1000057B0(v263, *(&v263 + 1));
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_89:
  if (!v18)
  {
LABEL_12:
    if (v19)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_90:

  if (v19)
  {
LABEL_13:
    result = sub_1000057B0(v261, *(&v261 + 1));
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_92;
  }

LABEL_91:
  if (!v20)
  {
LABEL_14:
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_93;
  }

LABEL_92:

  if (v21)
  {
LABEL_15:
    result = sub_1000057B0(v259, *(&v259 + 1));
    if (!HIDWORD(v268))
    {
      goto LABEL_16;
    }

    goto LABEL_94;
  }

LABEL_93:
  if (!HIDWORD(v268))
  {
LABEL_16:
    if (v269)
    {
      goto LABEL_17;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = sub_1000057B0(v258, *(&v258 + 1));
  if (v269)
  {
LABEL_17:
    result = sub_1000057B0(v257, *(&v257 + 1));
    if (!v268)
    {
      goto LABEL_18;
    }

    goto LABEL_96;
  }

LABEL_95:
  if (!v268)
  {
LABEL_18:
    if (v272)
    {
      goto LABEL_19;
    }

    goto LABEL_97;
  }

LABEL_96:

  if (v272)
  {
LABEL_19:

    if (!v270)
    {
      goto LABEL_20;
    }

    goto LABEL_98;
  }

LABEL_97:
  if (!v270)
  {
LABEL_20:
    if (v271)
    {
      goto LABEL_21;
    }

    goto LABEL_99;
  }

LABEL_98:

  if (v271)
  {
LABEL_21:
    result = sub_1000057B0(v253, *(&v253 + 1));
    if (!v274)
    {
      goto LABEL_22;
    }

    goto LABEL_100;
  }

LABEL_99:
  if (!v274)
  {
LABEL_22:
    if (v275)
    {
      goto LABEL_23;
    }

    goto LABEL_101;
  }

LABEL_100:

  if (v275)
  {
LABEL_23:

    if (!v276)
    {
      goto LABEL_24;
    }

    goto LABEL_102;
  }

LABEL_101:
  if (!v276)
  {
LABEL_24:
    if (v278)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_102:

  if (v278)
  {
LABEL_25:

    if (!v280)
    {
      goto LABEL_26;
    }

    goto LABEL_104;
  }

LABEL_103:
  if (!v280)
  {
LABEL_26:
    if (v277)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_104:

  if (v277)
  {
LABEL_27:

    if (!v279)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_105:
  if (!v279)
  {
LABEL_28:
    if (v281)
    {
      goto LABEL_29;
    }

    goto LABEL_107;
  }

LABEL_106:

  if (v281)
  {
LABEL_29:

    if (!v282)
    {
      goto LABEL_30;
    }

    goto LABEL_108;
  }

LABEL_107:
  if (!v282)
  {
LABEL_30:
    if (v284)
    {
      goto LABEL_31;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = sub_1000057B0(v244, *(&v244 + 1));
  if (v284)
  {
LABEL_31:
    result = sub_1000057B0(v243, *(&v243 + 1));
    if (!v286)
    {
      goto LABEL_32;
    }

    goto LABEL_110;
  }

LABEL_109:
  if (!v286)
  {
LABEL_32:
    if (v287)
    {
      goto LABEL_33;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = sub_1000057B0(v240, v242);
  if (v287)
  {
LABEL_33:

    if (!v285)
    {
      goto LABEL_34;
    }

    goto LABEL_112;
  }

LABEL_111:
  if (!v285)
  {
LABEL_34:
    if (v283)
    {
      goto LABEL_35;
    }

    goto LABEL_113;
  }

LABEL_112:

  if (v283)
  {
LABEL_35:

    if (!v288)
    {
      goto LABEL_36;
    }

    goto LABEL_114;
  }

LABEL_113:
  if (!v288)
  {
LABEL_36:
    if (v289)
    {
      goto LABEL_37;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = sub_1000057B0(v235, v237);
  if (v289)
  {
LABEL_37:

    if (!v290)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_115:
  if (!v290)
  {
LABEL_38:
    if (v291)
    {
      goto LABEL_39;
    }

    goto LABEL_117;
  }

LABEL_116:

  if (v291)
  {
LABEL_39:

    if (!HIDWORD(v291))
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_117:
  if (!HIDWORD(v291))
  {
LABEL_40:
    if (v292)
    {
      goto LABEL_41;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v292)
  {
LABEL_41:

    if (!HIDWORD(v292))
    {
      goto LABEL_42;
    }

    goto LABEL_120;
  }

LABEL_119:
  if (!HIDWORD(v292))
  {
LABEL_42:
    if (v293)
    {
      goto LABEL_43;
    }

    goto LABEL_121;
  }

LABEL_120:

  if (v293)
  {
LABEL_43:

    if (!v294)
    {
      goto LABEL_44;
    }

    goto LABEL_122;
  }

LABEL_121:
  if (!v294)
  {
LABEL_44:
    if (v295)
    {
      goto LABEL_45;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = sub_1000057B0(v223, v225);
  if (v295)
  {
LABEL_45:

    if (!v296)
    {
      goto LABEL_46;
    }

    goto LABEL_124;
  }

LABEL_123:
  if (!v296)
  {
LABEL_46:
    if (v297)
    {
      goto LABEL_47;
    }

    goto LABEL_125;
  }

LABEL_124:

  if (v297)
  {
LABEL_47:

    if (!v298)
    {
      goto LABEL_48;
    }

    goto LABEL_126;
  }

LABEL_125:
  if (!v298)
  {
LABEL_48:
    if (v299)
    {
      goto LABEL_49;
    }

    goto LABEL_127;
  }

LABEL_126:

  if (v299)
  {
LABEL_49:

    if (!v300)
    {
      goto LABEL_50;
    }

    goto LABEL_128;
  }

LABEL_127:
  if (!v300)
  {
LABEL_50:
    if (v301)
    {
      goto LABEL_51;
    }

    goto LABEL_129;
  }

LABEL_128:

  if (v301)
  {
LABEL_51:

    if (!v302)
    {
      goto LABEL_52;
    }

    goto LABEL_130;
  }

LABEL_129:
  if (!v302)
  {
LABEL_52:
    if (v303)
    {
      goto LABEL_53;
    }

    goto LABEL_131;
  }

LABEL_130:

  if (v303)
  {
LABEL_53:

    if (!v304)
    {
      goto LABEL_54;
    }

    goto LABEL_132;
  }

LABEL_131:
  if (!v304)
  {
LABEL_54:
    if (v305)
    {
      goto LABEL_55;
    }

    goto LABEL_133;
  }

LABEL_132:
  *v338 = v745;
  *&v338[16] = v746;
  *&v338[32] = v747;
  *&v338[48] = v748;
  v336 = v743;
  v337 = v744;
  result = sub_10004EF34(&v336);
  if (v305)
  {
LABEL_55:
    result = sub_1000057B0(v217, v216);
    if (!v306)
    {
      goto LABEL_56;
    }

    goto LABEL_134;
  }

LABEL_133:
  if (!v306)
  {
LABEL_56:
    if (v307)
    {
      goto LABEL_57;
    }

    goto LABEL_135;
  }

LABEL_134:

  if (v307)
  {
LABEL_57:
    result = sub_1000057B0(v214, v213);
    if (!v308)
    {
      goto LABEL_58;
    }

    goto LABEL_136;
  }

LABEL_135:
  if (!v308)
  {
LABEL_58:
    if (v309)
    {
      goto LABEL_59;
    }

    goto LABEL_137;
  }

LABEL_136:

  if (v309)
  {
LABEL_59:

    if (!v310)
    {
      goto LABEL_60;
    }

    goto LABEL_138;
  }

LABEL_137:
  if (!v310)
  {
LABEL_60:
    if (v311)
    {
      goto LABEL_61;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = sub_1000057B0(v210, v209);
  if (v311)
  {
LABEL_61:
    result = sub_1000057B0(v208, v207);
    if (!v312)
    {
      goto LABEL_62;
    }

    goto LABEL_140;
  }

LABEL_139:
  if (!v312)
  {
LABEL_62:
    if (v313)
    {
      goto LABEL_63;
    }

    goto LABEL_141;
  }

LABEL_140:

  if (v313)
  {
LABEL_63:
    result = sub_1000057B0(v205, v204);
    if (!v314)
    {
      goto LABEL_64;
    }

    goto LABEL_142;
  }

LABEL_141:
  if (!v314)
  {
LABEL_64:
    if (v315)
    {
      goto LABEL_65;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = sub_1000057B0(v203, v202);
  if (v315)
  {
LABEL_65:
    result = sub_1000057B0(v201, v200);
    if (!v316)
    {
      goto LABEL_66;
    }

    goto LABEL_144;
  }

LABEL_143:
  if (!v316)
  {
LABEL_66:
    if (v317)
    {
      goto LABEL_67;
    }

    goto LABEL_145;
  }

LABEL_144:
  result = sub_1000057B0(v199, v198);
  if (v317)
  {
LABEL_67:

    if (!v318)
    {
      goto LABEL_68;
    }

    goto LABEL_146;
  }

LABEL_145:
  if (!v318)
  {
LABEL_68:
    if (v319)
    {
      goto LABEL_69;
    }

    goto LABEL_147;
  }

LABEL_146:

  if (v319)
  {
LABEL_69:

    if (!v320)
    {
      goto LABEL_70;
    }

    goto LABEL_148;
  }

LABEL_147:
  if (!v320)
  {
LABEL_70:
    if (v321)
    {
      goto LABEL_71;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = sub_1000057B0(v194, v193);
  if (v321)
  {
LABEL_71:

    if (!v322)
    {
      goto LABEL_72;
    }

    goto LABEL_150;
  }

LABEL_149:
  if (!v322)
  {
LABEL_72:
    if (v323)
    {
      goto LABEL_73;
    }

    goto LABEL_151;
  }

LABEL_150:
  result = sub_1000057B0(v191, v190);
  if (v323)
  {
LABEL_73:
    result = sub_1000057B0(v189, v188);
    if (!v324)
    {
      goto LABEL_74;
    }

    goto LABEL_152;
  }

LABEL_151:
  if (!v324)
  {
LABEL_74:
    if (v325)
    {
      goto LABEL_75;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = sub_1000057B0(v187, v186);
  if (v325)
  {
LABEL_75:
    result = sub_1000057B0(v185, v184);
    if (!HIDWORD(v325))
    {
      goto LABEL_76;
    }

    goto LABEL_154;
  }

LABEL_153:
  if (!HIDWORD(v325))
  {
LABEL_76:
    if (v326)
    {
      goto LABEL_77;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = sub_1000057B0(v183, v182);
  if (v326)
  {
LABEL_77:
    result = sub_1000057B0(v181, v180);
    if (!v327)
    {
      goto LABEL_78;
    }

    goto LABEL_156;
  }

LABEL_155:
  if (!v327)
  {
LABEL_78:
    if (v328)
    {
      goto LABEL_79;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = sub_1000057B0(v177, v179);
  if (v328)
  {
LABEL_79:

    if (!v329)
    {
      goto LABEL_80;
    }

    goto LABEL_158;
  }

LABEL_157:
  if (!v329)
  {
LABEL_80:
    if (v330)
    {
      goto LABEL_81;
    }

    goto LABEL_159;
  }

LABEL_158:

  if (v330)
  {
LABEL_81:

    if (!v331)
    {
      goto LABEL_82;
    }

    goto LABEL_160;
  }

LABEL_159:
  if (!v331)
  {
LABEL_82:
    if (v332)
    {
      goto LABEL_83;
    }

LABEL_161:
    if (!v333)
    {
      return result;
    }
  }

LABEL_160:
  result = sub_1000057B0(v174, v173);
  if (!v332)
  {
    goto LABEL_161;
  }

LABEL_83:

  if (!v333)
  {
    return result;
  }
}

unint64_t sub_10005E188()
{
  result = qword_1000D99E0;
  if (!qword_1000D99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99E0);
  }

  return result;
}

uint64_t sub_10005E1DC()
{
  v0 = sub_1000A0BE0();

  v1 = 0;
  result = 48;
  switch(v0)
  {
    case 0:
      goto LABEL_116;
    case 1:
      v1 = 1;
      goto LABEL_116;
    case 2:
      v1 = 2;
      goto LABEL_116;
    case 3:
      v1 = 3;
      goto LABEL_116;
    case 4:
      v1 = 4;
      goto LABEL_116;
    case 5:
      v1 = 5;
      goto LABEL_116;
    case 6:
      v1 = 6;
      goto LABEL_116;
    case 7:
      v1 = 7;
      goto LABEL_116;
    case 8:
      v1 = 8;
      goto LABEL_116;
    case 9:
      v1 = 9;
      goto LABEL_116;
    case 10:
      v1 = 10;
      goto LABEL_116;
    case 11:
      v1 = 11;
      goto LABEL_116;
    case 12:
      v1 = 12;
      goto LABEL_116;
    case 13:
      v1 = 13;
      goto LABEL_116;
    case 14:
      v1 = 14;
      goto LABEL_116;
    case 15:
      v1 = 15;
      goto LABEL_116;
    case 16:
      v1 = 16;
      goto LABEL_116;
    case 17:
      v1 = 17;
      goto LABEL_116;
    case 18:
      v1 = 18;
      goto LABEL_116;
    case 19:
      v1 = 19;
      goto LABEL_116;
    case 20:
      v1 = 20;
      goto LABEL_116;
    case 21:
      v1 = 21;
      goto LABEL_116;
    case 22:
      v1 = 22;
      goto LABEL_116;
    case 23:
      v1 = 23;
      goto LABEL_116;
    case 24:
      v1 = 24;
      goto LABEL_116;
    case 25:
      v1 = 25;
      goto LABEL_116;
    case 26:
      v1 = 26;
      goto LABEL_116;
    case 27:
      v1 = 27;
      goto LABEL_116;
    case 28:
      v1 = 28;
      goto LABEL_116;
    case 29:
      v1 = 29;
      goto LABEL_116;
    case 30:
      v1 = 30;
      goto LABEL_116;
    case 31:
      v1 = 31;
      goto LABEL_116;
    case 32:
      v1 = 32;
      goto LABEL_116;
    case 33:
      v1 = 33;
      goto LABEL_116;
    case 34:
      v1 = 34;
      goto LABEL_116;
    case 35:
      v1 = 35;
      goto LABEL_116;
    case 36:
      v1 = 36;
      goto LABEL_116;
    case 37:
      v1 = 37;
      goto LABEL_116;
    case 38:
      v1 = 38;
      goto LABEL_116;
    case 39:
      v1 = 39;
      goto LABEL_116;
    case 40:
      v1 = 40;
      goto LABEL_116;
    case 41:
      v1 = 41;
      goto LABEL_116;
    case 42:
      v1 = 42;
      goto LABEL_116;
    case 43:
      v1 = 43;
      goto LABEL_116;
    case 44:
      v1 = 44;
      goto LABEL_116;
    case 45:
      v1 = 45;
      goto LABEL_116;
    case 46:
      v1 = 46;
      goto LABEL_116;
    case 47:
      v1 = 47;
LABEL_116:
      result = v1;
      break;
    case 48:
      return result;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x1C)
      {
        result = 4294967196;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_10005E85C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD040;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005E8A8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9B08, &qword_1000AE810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005E188();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_1000A0920();
  v13 = v12;
  LOBYTE(v45[0]) = 1;
  v36 = sub_1000A0920();
  v38 = v14;
  LOBYTE(v45[0]) = 2;
  v15 = sub_1000A0920();
  v37 = v16;
  v33 = v15;
  LOBYTE(v45[0]) = 3;
  v32 = sub_1000A0920();
  v35 = v17;
  LOBYTE(v45[0]) = 4;
  v31 = sub_1000A0920();
  v34 = v18;
  v46 = 5;
  v19 = sub_1000A0920();
  v20 = *(v6 + 8);
  v21 = v19;
  v30 = v22;
  v20(v9, v5);
  *&v39 = v11;
  *(&v39 + 1) = v13;
  *&v40 = v36;
  *(&v40 + 1) = v38;
  *&v41 = v33;
  *(&v41 + 1) = v37;
  *&v42 = v32;
  v23 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  v24 = v34;
  *(&v43 + 1) = v34;
  *&v44 = v21;
  v25 = v30;
  *(&v44 + 1) = v30;
  sub_100061200(&v39, v45);
  sub_100002308(a1);
  v45[0] = v11;
  v45[1] = v13;
  v45[2] = v36;
  v45[3] = v38;
  v45[4] = v33;
  v45[5] = v37;
  v45[6] = v32;
  v45[7] = v23;
  v45[8] = v31;
  v45[9] = v24;
  v45[10] = v21;
  v45[11] = v25;
  result = sub_100061238(v45);
  v27 = v42;
  a2[2] = v41;
  a2[3] = v27;
  v28 = v44;
  a2[4] = v43;
  a2[5] = v28;
  v29 = v40;
  *a2 = v39;
  a2[1] = v29;
  return result;
}

unint64_t sub_10005ED44()
{
  result = qword_1000D99F0;
  if (!qword_1000D99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99F0);
  }

  return result;
}

unint64_t sub_10005ED98()
{
  result = qword_1000D9A08;
  if (!qword_1000D9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A08);
  }

  return result;
}

uint64_t sub_10005EDEC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD160;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005EE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9B00, &qword_1000AE808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005ED98();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v31 = 0;
  v11 = sub_1000A0920();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  v14 = sub_1000A0920();
  v26 = v15;
  v24 = v14;
  v29 = 2;
  v16 = sub_1000A0950();
  v27 = v17;
  v23 = v16;
  v28 = 3;
  v22 = sub_1000A0930();
  (*(v6 + 8))(v9, v5);
  result = sub_100002308(a1);
  v19 = v24;
  *a2 = v25;
  *(a2 + 8) = v13;
  v20 = v26;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v27 & 1;
  *(a2 + 41) = v22;
  return result;
}

unint64_t sub_10005F0C0()
{
  result = qword_1000D9A18;
  if (!qword_1000D9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A18);
  }

  return result;
}

uint64_t sub_10005F114(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD1E0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005F160@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AF8, &qword_1000AE800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005F0C0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v30) = 0;
  v11 = sub_1000A09C0();
  v37 = v12 & 1;
  LOBYTE(v30) = 1;
  v13 = sub_1000A0950();
  v36 = v14 & 1;
  LOBYTE(v26) = 2;
  sub_100005424();
  sub_1000A0970();
  v25 = v30;
  v38 = 3;
  v15 = sub_1000A0920();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  v24 = v11;
  *&v26 = v11;
  HIDWORD(v23) = v37;
  BYTE8(v26) = v37;
  *&v27 = v13;
  LOBYTE(v11) = v36;
  BYTE8(v27) = v36;
  v19 = v25;
  v28 = v25;
  *&v29 = v15;
  *(&v29 + 1) = v18;
  sub_100061198(&v26, &v30);
  sub_100002308(a1);
  *&v30 = v24;
  BYTE8(v30) = BYTE4(v23);
  v31 = v13;
  v32 = v11;
  v33 = v19;
  v34 = v15;
  v35 = v18;
  result = sub_1000611D0(&v30);
  v21 = v27;
  *a2 = v26;
  a2[1] = v21;
  v22 = v29;
  a2[2] = v28;
  a2[3] = v22;
  return result;
}

unint64_t sub_10005F41C()
{
  result = qword_1000D9A28;
  if (!qword_1000D9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A28);
  }

  return result;
}

uint64_t sub_10005F470(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD260;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005F4BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AF0, &qword_1000AE7F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005F41C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = a2;
  LOBYTE(v34) = 0;
  sub_100005424();
  sub_1000A0970();
  v33 = v40[0];
  LOBYTE(v34) = 1;
  sub_1000A0970();
  v32 = v40[0];
  LOBYTE(v40[0]) = 2;
  v12 = sub_1000A0950();
  v50 = v13 & 1;
  LOBYTE(v34) = 3;
  sub_1000A0970();
  v29 = v40[0];
  LOBYTE(v34) = 4;
  v28 = 0;
  sub_1000A0970();
  v27 = v40[0];
  LOBYTE(v34) = 5;
  sub_1000A0970();
  v14 = *(&v40[0] + 1);
  v31 = *&v40[0];
  v51 = 6;
  v30 = sub_1000A0950();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v16 &= 1u;
  v49 = v16;
  v34 = v33;
  v35 = v32;
  v26 = v12;
  *&v36 = v12;
  LODWORD(v28) = v50;
  BYTE8(v36) = v50;
  v19 = v29;
  v17 = v19 >> 64;
  v18 = v19;
  v37 = v29;
  v20 = v27;
  v38 = v27;
  *v39 = v31;
  *&v39[8] = v14;
  v21 = v30;
  *&v39[16] = v30;
  v39[24] = v16;
  sub_100061130(&v34, v40);
  sub_100002308(a1);
  v40[0] = v33;
  v40[1] = v32;
  v41 = v26;
  v42 = v28;
  v43 = __PAIR128__(v17, v18);
  v44 = __PAIR128__(*(&v27 + 1), v20);
  v45 = v31;
  v46 = v14;
  v47 = v21;
  v48 = v16;
  result = sub_100061168(v40);
  v23 = *v39;
  v11[4] = v38;
  v11[5] = v23;
  *(v11 + 89) = *&v39[9];
  v24 = v35;
  *v11 = v34;
  v11[1] = v24;
  v25 = v37;
  v11[2] = v36;
  v11[3] = v25;
  return result;
}

unint64_t sub_10005FB54()
{
  result = qword_1000D9A38;
  if (!qword_1000D9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9A38);
  }

  return result;
}

uint64_t sub_10005FBA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD328;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005FBF4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9AE8, &qword_1000AE7F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10005FB54();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v35) = 0;
  v11 = sub_1000A0920();
  v13 = v12;
  v14 = v11;
  LOBYTE(v35) = 1;
  v29 = sub_1000A0950();
  v45 = v15 & 1;
  LOBYTE(v35) = 2;
  v27 = sub_1000A09C0();
  v44 = v16 & 1;
  LOBYTE(v30) = 3;
  v28 = sub_100005424();
  sub_1000A0970();
  v26 = v35;
  v46 = 4;
  sub_1000A0970();
  (*(v6 + 8))(v9, v5);
  v24 = *(&v43 + 1);
  v28 = v43;
  v25 = v14;
  *&v30 = v14;
  *(&v30 + 1) = v13;
  *&v31 = v29;
  LOBYTE(v14) = v45;
  BYTE8(v31) = v45;
  v17 = v27;
  *&v32 = v27;
  v18 = v44;
  BYTE8(v32) = v44;
  v19 = v26;
  v33 = v26;
  v34 = v43;
  sub_1000610C8(&v30, &v35);
  sub_100002308(a1);
  *&v35 = v25;
  *(&v35 + 1) = v13;
  v36 = v29;
  v37 = v14;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v28;
  v42 = v24;
  result = sub_100061100(&v35);
  v21 = v33;
  a2[2] = v32;
  a2[3] = v21;
  a2[4] = v34;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  return result;
}

uint64_t sub_10005FFC0(uint64_t a1)
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

uint64_t sub_10005FFEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2179))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
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

uint64_t sub_100060048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 2168) = 0;
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
    *(result + 2178) = 0;
    *(result + 2176) = 0;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2179) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2179) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t sub_1000602F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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