uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed()
{
  result = qword_1EDCE4A10;
  if (!qword_1EDCE4A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagFollowed.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  sub_1C6D78A40();
  sub_1C6C7B0BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C7A8D8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D85E0);
  __swift_project_value_buffer(v0, qword_1EC1D85E0);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagFollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D85E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  sub_1C6C7B0BC(&qword_1EC1D85F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7ACAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7B0BC(&qword_1EC1D8610, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7AD28@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D85E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7ADD0(uint64_t a1)
{
  v2 = sub_1C6C7B0BC(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7AE3C()
{
  sub_1C6C7B0BC(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C7AFD8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6C7B0BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C7B0BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C7B104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v107 = a3;
  v111 = a2;
  v99 = sub_1C6D76950();
  v97 = *(v99 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1C6D768B0();
  v108 = *(v104 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D775C0();
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v93 - v15;
  v105 = sub_1C6D77C10();
  v113 = *(v105 - 8);
  v16 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - v19;
  v112 = sub_1C6D77880();
  v102 = *(v112 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA1AC0();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C6D77290();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  (*(v33 + 16))(&v93 - v32, a1, v29, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = sub_1C6D76F90();
    (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
    return;
  }

  v96 = a4;
  (*(v25 + 8))(v28, v24);
  v34 = sub_1C6D77270();
  v35 = sub_1C6D77330();
  v37 = v36;

  if (!v4)
  {
    sub_1C6BA1B54(&qword_1EC1D6A30, MEMORY[0x1E69B47B0]);
    v38 = v112;
    sub_1C6D75AF0();
    v111 = 0;
    v94 = v35;
    sub_1C6D77840();
    sub_1C6D77BF0();
    v40 = *(v113 + 8);
    v41 = v105;
    v113 += 8;
    v95 = v40;
    v40(v20, v105);
    v43 = v100;
    v42 = v101;
    (*(v100 + 104))(v109, *MEMORY[0x1E69B4640], v101);
    sub_1C6BA1B54(&qword_1EC1D71C8, MEMORY[0x1E69B4648]);
    sub_1C6D796F0();
    sub_1C6D796F0();
    if (v116 == v114 && v117 == v115)
    {
      v44 = *(v43 + 8);
      v44(v109, v42);
      v44(v110, v42);

      v45 = v106;
    }

    else
    {
      v46 = sub_1C6D7A130();
      v47 = *(v43 + 8);
      v47(v109, v42);
      v47(v110, v42);

      v48 = v96;
      v45 = v106;
      if ((v46 & 1) == 0)
      {
        (*(v102 + 8))(v118, v38);
        sub_1C6B1C9F0(v94, v37);
        v86 = sub_1C6D76F90();
        (*(*(v86 - 8) + 56))(v48, 1, 1, v86);
        return;
      }
    }

    v110 = v37;
    v49 = v118;
    sub_1C6D77840();
    v50 = sub_1C6D77C00();
    v95(v45, v41);
    v51 = v103;
    sub_1C6D76A00();
    v52 = sub_1C6D768A0();
    v53 = v51;
    v54 = *(v108 + 8);
    v108 += 8;
    v54(v53, v104);
    if (v52 >= v50)
    {
      if (qword_1EDCE03B8 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1C6D7EB10;
      v74 = v106;
      sub_1C6D77840();
      v75 = sub_1C6D77C00();
      v95(v74, v41);
      v116 = v75;
      v76 = sub_1C6D7A0E0();
      v78 = v77;
      v79 = MEMORY[0x1E69E6158];
      *(v73 + 56) = MEMORY[0x1E69E6158];
      v80 = sub_1C6B2064C();
      *(v73 + 64) = v80;
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      v81 = v103;
      sub_1C6D76A00();
      v82 = sub_1C6D768A0();
      v54(v81, v104);
      v116 = v82;
      v83 = sub_1C6D7A0E0();
      *(v73 + 96) = v79;
      *(v73 + 104) = v80;
      *(v73 + 72) = v83;
      *(v73 + 80) = v84;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6B1C9F0(v94, v110);

      (*(v102 + 8))(v49, v112);
      goto LABEL_17;
    }

    sub_1C6D77840();
    v55 = sub_1C6D77C00();
    v56 = v95;
    v95(v45, v41);
    v57 = v98;
    sub_1C6D76A20();
    v58 = sub_1C6D768A0();
    v59 = *(v97 + 8);
    v59(v57, v99);
    if (v55 < v58)
    {
      v60 = v110;
      if (qword_1EDCE03B8 != -1)
      {
        swift_once();
      }

      v109 = qword_1EDCE03C0;
      sub_1C6B1D314();
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1C6D7EB10;
      v62 = v106;
      sub_1C6D77840();
      v63 = sub_1C6D77C00();
      v56(v62, v105);
      v116 = v63;
      v64 = sub_1C6D7A0E0();
      v66 = v65;
      v67 = MEMORY[0x1E69E6158];
      *(v61 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1C6B2064C();
      *(v61 + 64) = v68;
      *(v61 + 32) = v64;
      *(v61 + 40) = v66;
      v69 = v98;
      sub_1C6D76A20();
      v70 = sub_1C6D768A0();
      v59(v69, v99);
      v116 = v70;
      v71 = sub_1C6D7A0E0();
      *(v61 + 96) = v67;
      *(v61 + 104) = v68;
      *(v61 + 72) = v71;
      *(v61 + 80) = v72;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6B1C9F0(v94, v60);

      (*(v102 + 8))(v49, v112);
LABEL_17:
      v85 = sub_1C6D76F90();
      (*(*(v85 - 8) + 56))(v96, 1, 1, v85);
      return;
    }

    v87 = v96;
    v96[3] = v38;
    v88 = MEMORY[0x1E69B47B0];
    v87[4] = sub_1C6BA1B54(&qword_1EC1D71D0, MEMORY[0x1E69B47B0]);
    v87[5] = sub_1C6BA1B54(&qword_1EC1D71D8, v88);
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v87);
    (*(v102 + 32))(boxed_opaque_existential_2, v49, v38);
    sub_1C6B1C9F0(v94, v110);
    v90 = *MEMORY[0x1E69E3620];
    v91 = sub_1C6D76F90();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v87, v90, v91);
    (*(v92 + 56))(v87, 0, 1, v91);
  }
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.encodingName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.encodingName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6C7C034(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6C150B4(v6, a1);
  }

  *a1 = xmmword_1C6D7F510;
  v10 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C7C0C8(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding()
{
  result = qword_1EC1D8650;
  if (!qword_1EC1D8650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C7C034(uint64_t a1, uint64_t a2)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C7C0C8(uint64_t a1)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C7C154@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6C7C034(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6C150B4(v7, a2);
  }

  *a2 = xmmword_1C6D7F510;
  v11 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C7C0C8(v7);
  }

  return result;
}

uint64_t sub_1C6C7C2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7C754(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  sub_1C6C7C0C8(a2 + v9);
  sub_1C6C150B4(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  sub_1C6C7C0C8(v1 + v3);
  sub_1C6C150B4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.float16List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  *(v5 + 12) = v16;
  sub_1C6C7C034(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    v18 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C7C0C8(v9);
    }
  }

  else
  {
    sub_1C6C150B4(v9, v15);
  }

  return sub_1C6C7C648;
}

void sub_1C6C7C648(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6C7C754((*a1)[5], v4);
    sub_1C6C7C0C8(v9 + v3);
    sub_1C6C150B4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C7C7B8(v5, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    sub_1C6C7C0C8(v9 + v3);
    sub_1C6C150B4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6C7C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C7C7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.hasFloat16List.getter()
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6C7C034(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C7C0C8(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.clearFloat16List()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  sub_1C6C7C0C8(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6C7CB78()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8618);
  __swift_project_value_buffer(v0, qword_1EC1D8618);
  sub_1C6C7DC1C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "encoding_name";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "float16_list";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6C7CE90();
    }
  }

  return result;
}

uint64_t sub_1C6C7CE90()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6C7DBD4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6C7CFF0(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C7CFF0(uint64_t a1)
{
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6C7C034(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6C7C0C8(v5);
  }

  sub_1C6C150B4(v5, v10);
  sub_1C6C7DBD4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6C7C7B8(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6C7DBD4(&qword_1EC1D8630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7D284@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6C7D358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7DBD4(&qword_1EC1D8660, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7D3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7D47C(uint64_t a1)
{
  v2 = sub_1C6C7DBD4(&qword_1EC1D8640, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7D4E8()
{
  sub_1C6C7DBD4(&qword_1EC1D8640, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_A41_Algorithms_Proto_Encoder_Float16EncodingV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  sub_1C6C7DB40();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6C7C034(a1 + v19, v17);
  sub_1C6C7C034(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1C6C7C034(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      sub_1C6C150B4(&v17[v20], v8);
      if (sub_1C6B5E090(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        v25 = *(v4 + 20);
        sub_1C6D78A40();
        sub_1C6C7DBD4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        v26 = sub_1C6D79560();
        sub_1C6C7C7B8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C0C8(v17);
        if (v26)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1C6C7C7B8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C7C0C8(v17);
      }

LABEL_11:
      v23 = 0;
      return v23 & 1;
    }

    sub_1C6C7C7B8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_10:
    sub_1C6C7C7B8(v17, sub_1C6C7DB40);
    goto LABEL_11;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1C6C7C0C8(v17);
LABEL_7:
  v22 = *(v18 + 20);
  sub_1C6D78A40();
  sub_1C6C7DBD4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v23 = sub_1C6D79560();
  return v23 & 1;
}

void sub_1C6C7DA7C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6C7DC1C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C7DB40()
{
  if (!qword_1EC1D6BA8)
  {
    sub_1C6C7DC1C(255, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6BA8);
    }
  }
}

uint64_t sub_1C6C7DBD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C7DC1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen()
{
  result = qword_1EDCE33B0;
  if (!qword_1EDCE33B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t sub_1C6C7DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6C7E060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C7E72C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8668);
  __swift_project_value_buffer(v0, qword_1EC1D8668);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C7EA4C();
    }
  }

  return result;
}

uint64_t sub_1C6C7EA4C()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  sub_1C6D78A00();
  sub_1C6C7F54C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C7EB9C(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C7EB9C(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D78A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  sub_1C6B764C8(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B7655C(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6C7F54C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  sub_1C6C7F54C(&qword_1EC1D8680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C7EE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C7F54C(&qword_1EC1D8698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C7EF08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C7EFB0(uint64_t a1)
{
  v2 = sub_1C6C7F54C(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7F01C()
{
  sub_1C6C7F54C(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B77F8C();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_11:
      v25 = *(v27 + 20);
      sub_1C6D78A40();
      sub_1C6C7F54C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B78020(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C7F54C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B7655C(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C7F54C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C7F5E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t NewsAppConfigurationManager.configuration.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform);
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform + 8);
  v3 = [*(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager) possiblyUnfetchedAppConfiguration];
  v2();

  return swift_unknownObjectRelease();
}

uint64_t NewsAppConfigurationManager.fetchConfigurationIfNeeded(cachedOnly:)()
{
  sub_1C6C7F778();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_1C6D78210();
  v3 = sub_1C6D782B0();

  return v3;
}

unint64_t sub_1C6C7F778()
{
  result = qword_1EDCE6560;
  if (!qword_1EDCE6560)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6560);
  }

  return result;
}

uint64_t FCNewsAppConfigurationManager.fetchAppConfigurationIfNeeded(cachedOnly:)()
{
  sub_1C6C80140(0, &qword_1EDCE7A80, sub_1C6C7F778, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t NewsAppConfigurationManager.onChangeOfConfiguration(perform:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock);
  sub_1C6D77F60();

  sub_1C6D781D0();
}

id NewsAppConfigurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsAppConfigurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6C7FA54()
{
  v1 = *v0;
  sub_1C6C7F778();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  v3 = sub_1C6D78210();
  v4 = sub_1C6D782B0();

  return v4;
}

void sub_1C6C7FBAC(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = [a5 respondsToSelector_];

  if ((v13 & 1) != 0 && (v14 = [a5 fetchedAppConfiguration]) != 0)
  {
    v15 = v14;

    v19[0] = v15;
    a1(v19);
    swift_unknownObjectRelease();
  }

  else if (a6)
  {

    v19[0] = [a5 possiblyUnfetchedAppConfiguration];
    a1(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    FCCurrentQoS();
    v16 = FCDispatchQueueForQualityOfService();
    v17 = swift_allocObject();
    v17[2] = sub_1C6C1EB50;
    v17[3] = v12;
    v17[4] = a3;
    v17[5] = a4;
    v19[4] = sub_1C6C80128;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C6C1C9F4;
    v19[3] = &block_descriptor_8;
    v18 = _Block_copy(v19);

    [a5 fetchAppConfigurationIfNeededWithCompletionQueue:v16 completion:v18];
    _Block_release(v18);
  }
}

void sub_1C6C7FDC0(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)())
{
  swift_unknownObjectRetain();
  v8 = a2;
  sub_1C6C7F778();
  sub_1C6D78260();
  if (v10)
  {
    a5();
  }

  else
  {
    a3();
  }

  sub_1C6C80134(v9, v10);
}

uint64_t sub_1C6C7FE6C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform);
  v3 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform + 8);
  v2(v14);
  *&v11[0] = *(v1 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_lock);
  sub_1C6D77F60();
  sub_1C6C80140(0, &qword_1EDCDF958, sub_1C6B1DDB8, MEMORY[0x1E69E62F8]);

  sub_1C6D781D0();

  v5 = v13;
  v6 = *(v13 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v13 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v10 = *(v8 - 1);
      v9 = *v8;
      v11[4] = v14[4];
      v11[5] = v14[5];
      v12[0] = *v15;
      *(v12 + 14) = *&v15[14];
      v11[0] = v14[0];
      v11[1] = v14[1];
      v11[2] = v14[2];
      v11[3] = v14[3];

      v10(v11);

      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return sub_1C6B11190(v14);
  }

  return result;
}

uint64_t sub_1C6C80030()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_appConfigurationManager);
  swift_getObjectType();
  return FCNewsAppConfigurationManager.fetchAppConfigurationIfNeeded(cachedOnly:)();
}

uint64_t sub_1C6C80088(void *a1)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_transform;
  v3 = *(v2 + 8);
  return (*v2)(*a1);
}

uint64_t sub_1C6C800CC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC19NewsPersonalization27NewsAppConfigurationManager_onChangeBlocks;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

void sub_1C6C80134(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C6C80140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Com_Apple_News_Personalization_Session.compress()(uint64_t a1@<X8>)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6C89B98(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6D78C30();
  if (!v1)
  {
    Com_Apple_News_PersonalizationStorage_CompressedSession.validate()();
    if (v3)
    {
      sub_1C6C88CF8(a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }
  }
}

uint64_t sub_1C6C802B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6C89BE0(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-v10];
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1C6C89B98(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D78C30();
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  return sub_1C6C89AE8(v11, a1, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
}

uint64_t sub_1C6C80440(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6C88C70(a2, v14, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6C89C34(v14, v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v15 = *&v10[*(v7 + 28)];
  v16 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v17 = *(v16 + 8);
  *a1 = *v16;
  *(a1 + 8) = v17;
  v18 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v19 = *(v18 + 8);
  *(a1 + 16) = *v18;
  *(a1 + 24) = v19;
  v20 = v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v21 = *(v20 + 8);
  *(a1 + 32) = *v20;
  *(a1 + 40) = v21;
  v22 = (v15 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v23 = v22[1];
  if (!v23)
  {
    return sub_1C6C88CF8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v24 = *v22;
  v25 = v22[1];

  v26 = a3(v24, v23);

  sub_1C6C88CF8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v28 = a1 + *(result + 32);
  *v28 = v26;
  *(v28 + 4) = 0;
  return result;
}

uint64_t sub_1C6C8069C()
{
  v2 = v1;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  v36 = v12;
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  v32 = (v12 + 16);
  v14 = swift_allocObject();
  v37 = v14;
  *(v14 + 16) = v13;
  v31 = (v14 + 16);
  result = swift_allocObject();
  v38 = result;
  *(result + 16) = 0;
  v16 = *(v0 + 16);
  v33 = *(v16 + 16);
  if (v33)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v16 + 16))
    {
      v19 = sub_1C6C88C70(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      MEMORY[0x1EEE9AC00](v19);
      v20 = v37;
      *(&v30 - 4) = v11;
      *(&v30 - 3) = v20;
      v21 = v36;
      *(&v30 - 2) = v38;
      *(&v30 - 1) = v21;
      sub_1C6C89B98(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      sub_1C6D78C30();
      if (v1)
      {
        sub_1C6C88CF8(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1C6B66E28(0, v18[2] + 1, 1, v18);
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        v18 = sub_1C6B66E28(v22 > 1, v23 + 1, 1, v18);
      }

      ++v17;
      v18[2] = v23 + 1;
      sub_1C6C89C34(v6, v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      result = sub_1C6C88CF8(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (v33 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v24 = v32;
    swift_beginAccess();
    v25 = *v24;
    v26 = v31;
    swift_beginAccess();
    v27 = *v26;

    v28 = sub_1C6C88D58(v25, v18, v27);
    if (v2)
    {
LABEL_15:
    }

    else
    {
      v29 = v28;

      return v29;
    }
  }

  return result;
}

uint64_t sub_1C6C80AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (*(v8 + 16))
  {
    v9 = sub_1C6B5DEA8(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 4 * v9);
      swift_endAccess();
      return v11;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v11 = *(a4 + 16);
  swift_beginAccess();
  v12 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_1C6BC5730(v11, a1, a2, isUniquelyReferenced_nonNull_native);
  *(a3 + 16) = v18;
  swift_endAccess();
  result = swift_beginAccess();
  v15 = *(a4 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(a4 + 16) = v17;
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C80C14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v158 = *(v163 - 8);
  v8 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v144 = (&v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v147 = (&v140 - v11);
  sub_1C6C89BE0(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v140 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v140 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v145 = &v140 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v151 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v140 - v24;
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v155 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v140 - v30;
  v153 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v32 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v140 - v35;
  sub_1C6C89BE0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v161 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v140 - v40;
  v157 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  v42 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v149 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v156 = &v140 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v146 = &v140 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v162 = &v140 - v49;
  v50 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v167 = *(v50 - 8);
  v168 = v50;
  v51 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v160 = &v140 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v164 = &v140 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v150 = &v140 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v140 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v140 - v61;
  sub_1C6C89BE0(0, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v165 = &v140 - v65;
  v166 = a1;
  v66 = sub_1C6C80AEC(*a1, a1[1], a2, a3);
  v67 = swift_beginAccess();
  v169 = a4;
  v68 = *(a4 + 16);
  if (!*(v68 + 16) || (v67 = sub_1C6B64DD0(v66), (v69 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v67);
    *(&v140 - 8) = v66;
    *(&v140 - 3) = v166;
    *(&v140 - 2) = a2;
    *(&v140 - 1) = a3;
    sub_1C6C89B98(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v74 = v165;
    v75 = v168;
    sub_1C6D78C30();
    (*(v167 + 56))(v74, 0, 1, v75);
    swift_beginAccess();
    sub_1C6BC2244(v74, v66);
    swift_endAccess();
    return v66;
  }

  v142 = v66;
  v70 = sub_1C6B64DD0(v66);
  if (v71)
  {
    sub_1C6C88C70(*(v68 + 56) + *(v167 + 72) * v70, v59, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C89C34(v59, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C893C4(&v62[*(v168 + 20)], v41, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v72 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v41, 1, v72) == 1)
    {
      sub_1C6C88CF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6C88C14(v41, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      goto LABEL_20;
    }

    v76 = v162;
    sub_1C6C89C34(v41, v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v77 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    sub_1C6C893C4(v166 + *(v77 + 20), v31, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v78 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    if ((*(*(v78 - 8) + 48))(v31, 1, v78) == 1)
    {
      sub_1C6C88CF8(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6C88C14(v31, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      goto LABEL_20;
    }

    sub_1C6C89C34(v31, v159, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6C893C4(v76 + *(v157 + 44), v25, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v141 = *(v158 + 48);
    v79 = v76;
    v80 = v141(v25, 1, v163);
    sub_1C6C88C14(v25, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v80 == 1)
    {
      v81 = *(v159 + *(v153 + 20));
      v82 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v83 = v151;
      sub_1C6C893C4(v81 + v82, v151, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      LODWORD(v82) = v141(v83, 1, v163);
      sub_1C6C88C14(v83, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v82 != 1)
      {
        v87 = v146;
        sub_1C6C88C70(v162, v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v88 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
        swift_beginAccess();
        v89 = v81 + v88;
        v90 = v145;
        sub_1C6C893C4(v89, v145, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v91 = v163;
        if (v141(v90, 1, v163) == 1)
        {
          v92 = v147;
          *v147 = xmmword_1C6D7F510;
          v93 = v92 + *(v91 + 20);
          sub_1C6D78A30();
          if (v141(v90, 1, v91) != 1)
          {
            sub_1C6C88C14(v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v92 = v147;
          sub_1C6C89C34(v90, v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v94 = *(v157 + 40);
        sub_1C6C88C14(v87 + v94, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v92, v87 + v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v158 + 56))(v87 + v94, 0, 1, v91);
        v95 = v150;
        sub_1C6C88C70(v62, v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v96 = v168;
        v97 = *(v168 + 20);
        sub_1C6C88C14(v95 + v97, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        sub_1C6C88C70(v87, v95 + v97, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        (*(v73 + 56))(v95 + v97, 0, 1, v72);
        v98 = v165;
        sub_1C6C88C70(v95, v165, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        (*(v167 + 56))(v98, 0, 1, v96);
        swift_beginAccess();
        sub_1C6BC2244(v98, v142);
        swift_endAccess();
        sub_1C6C88CF8(v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        sub_1C6C88CF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        sub_1C6C88CF8(v87, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        sub_1C6C88CF8(v159, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        v86 = v95;
        v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle;
        goto LABEL_19;
      }

      v84 = v162;
    }

    else
    {
      v84 = v79;
    }

    sub_1C6C88CF8(v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v85 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata;
    v86 = v159;
LABEL_19:
    sub_1C6C88CF8(v86, v85);
  }

LABEL_20:
  v99 = v169;
  swift_beginAccess();
  v100 = *(v99 + 16);
  v66 = v142;
  if (*(v100 + 16) && (v101 = sub_1C6B64DD0(v142), (v102 & 1) != 0))
  {
    v103 = v160;
    sub_1C6C88C70(*(v100 + 56) + *(v167 + 72) * v101, v160, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v104 = v164;
    sub_1C6C89C34(v103, v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    swift_endAccess();
    v105 = v161;
    sub_1C6C893C4(v104 + *(v168 + 20), v161, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v106 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    v107 = *(v106 - 8);
    if ((*(v107 + 48))(v105, 1, v106) == 1)
    {
      sub_1C6C88CF8(v104, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v108 = &qword_1EDCE3C40;
      v109 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata;
      v110 = v105;
LABEL_27:
      sub_1C6C88C14(v110, v108, v109);
      return v66;
    }

    v111 = v156;
    sub_1C6C89C34(v105, v156, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v112 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    v113 = v155;
    sub_1C6C893C4(v166 + *(v112 + 20), v155, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v114 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    if ((*(*(v114 - 8) + 48))(v113, 1, v114) == 1)
    {
      sub_1C6C88CF8(v111, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v104, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v108 = &qword_1EDCE5398;
      v109 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata;
      v110 = v113;
      goto LABEL_27;
    }

    v116 = v154;
    sub_1C6C89C34(v113, v154, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v117 = v152;
    sub_1C6C893C4(v111 + *(v157 + 44), v152, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v166 = *(v158 + 48);
    v118 = (v166)(v117, 1, v163);
    sub_1C6C88C14(v117, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v118 != 1)
    {
      sub_1C6C88CF8(v111, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v124 = v116;
      goto LABEL_33;
    }

    v119 = *(v116 + *(v153 + 20));
    v120 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    v121 = v148;
    sub_1C6C893C4(v119 + v120, v148, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v122 = v166;
    v123 = (v166)(v121, 1, v163);
    sub_1C6C88C14(v121, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v123 == 1)
    {
      sub_1C6C88CF8(v156, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
      sub_1C6C88CF8(v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v124 = v154;
LABEL_33:
      sub_1C6C88CF8(v124, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return v142;
    }

    sub_1C6C88C70(v156, v149, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v125 = v119 + v120;
    v126 = v143;
    sub_1C6C893C4(v125, v143, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if ((v122)(v126, 1, v163) == 1)
    {
      v127 = v144;
      *v144 = xmmword_1C6D7F510;
      v128 = v163;
      v129 = v127 + *(v163 + 20);
      sub_1C6D78A30();
      v130 = (v122)(v126, 1, v128);
      v131 = v154;
      if (v130 != 1)
      {
        sub_1C6C88C14(v126, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v127 = v144;
      sub_1C6C89C34(v126, v144, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v131 = v154;
    }

    v132 = *(v157 + 44);
    v133 = v149;
    sub_1C6C88C14(v149 + v132, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6C89C34(v127, v133 + v132, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v158 + 56))(v133 + v132, 0, 1, v163);
    v134 = v164;
    v135 = v150;
    sub_1C6C88C70(v164, v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v136 = v168;
    v137 = *(v168 + 20);
    sub_1C6C88C14(v135 + v137, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6C88C70(v133, v135 + v137, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    (*(v107 + 56))(v135 + v137, 0, 1, v106);
    v138 = v165;
    sub_1C6C88C70(v135, v165, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    (*(v167 + 56))(v138, 0, 1, v136);
    swift_beginAccess();
    v139 = v138;
    v66 = v142;
    sub_1C6BC2244(v139, v142);
    swift_endAccess();
    sub_1C6C88CF8(v156, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v134, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6C88CF8(v133, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6C88CF8(v131, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6C88CF8(v135, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  }

  else
  {
    swift_endAccess();
  }

  return v66;
}

uint64_t sub_1C6C82250(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v33 = a4;
  v34 = a5;
  v36 = a2;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v33 - v19;
  sub_1C6C89BE0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v33 - v23;
  v38 = a1;
  *a1 = v36;
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C893C4(v37 + *(v25 + 20), v20, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if ((*(v10 + 48))(v20, 1, v9) == 1)
  {
    v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  }

  else
  {
    sub_1C6C89C34(v20, v16, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88C70(v16, v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v27 = v35;
    sub_1C6C89C34(v13, v35, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
    MEMORY[0x1EEE9AC00](v28);
    v29 = v34;
    *(&v33 - 4) = v33;
    *(&v33 - 3) = v29;
    *(&v33 - 2) = v27;
    sub_1C6C89B98(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6D78C30();
    sub_1C6C88CF8(v16, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
    sub_1C6C88CF8(v27, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v31 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  return sub_1C6C89AE8(v24, v38 + *(v31 + 20), &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
}

uint64_t sub_1C6C8269C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v155 = *(v8 - 8);
  v156 = v8;
  v9 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v149 = (&v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v147 = (&v143 - v12);
  sub_1C6C89BE0(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v148 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v143 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v143 - v21;
  v22 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v154 = *(v22 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v145 = (&v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6C89BE0(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v144 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v143 - v29;
  v30 = *(a4 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v32 = v30[3];
  v31 = v30[4];

  v168 = a2;
  LODWORD(a2) = sub_1C6C80AEC(v32, v31, a2, a3);

  *(a1 + 2) = a2;
  swift_beginAccess();
  v33 = v30[2];
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  v157 = a1;
  v158 = v30;
  v161 = a3;
  v153 = v22;
  if (!v34)
  {
LABEL_24:
    v68 = *a1;

    *a1 = v35;
    v69 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    v70 = *(v30 + v69);
    v71 = *(v70 + 16);
    v72 = MEMORY[0x1E69E7CC0];
    if (!v71)
    {
LABEL_46:
      v103 = a1[2];

      a1[2] = v72;
      v104 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
      swift_beginAccess();
      v105 = v150;
      sub_1C6C893C4(v158 + v104, v150, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v106 = *(v154 + 48);
      v107 = v106(v105, 1, v22);
      v108 = v105;
      v110 = v157;
      v109 = v158;
      sub_1C6C88C14(v108, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v111 = v107 == 1;
      v112 = v156;
      if (!v111)
      {
        v113 = v109 + v104;
        v114 = v144;
        sub_1C6C893C4(v113, v144, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        if (v106(v114, 1, v22) == 1)
        {
          v115 = v145;
          *(v145 + 3) = 0;
          *v115 = 0;
          v116 = v115 + *(v22 + 44);
          sub_1C6D78A30();
          v117 = v115;
          if (v106(v114, 1, v22) != 1)
          {
            sub_1C6C88C14(v114, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
          }
        }

        else
        {
          v117 = v145;
          sub_1C6C89C34(v114, v145, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        }

        v118 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 36);
        sub_1C6C88C14(v110 + v118, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        sub_1C6C89C34(v117, v110 + v118, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        (*(v154 + 56))(v110 + v118, 0, 1, v22);
      }

      v119 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
      swift_beginAccess();
      *(v110 + 3) = *(v109 + v119);
      v120 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      v121 = v109;
      v122 = v151;
      sub_1C6C893C4(v109 + v120, v151, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v123 = *(v155 + 48);
      v124 = v123(v122, 1, v112);
      sub_1C6C88C14(v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v111 = v124 == 1;
      v125 = v156;
      if (!v111)
      {
        v126 = v109 + v120;
        v127 = v146;
        sub_1C6C893C4(v126, v146, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if (v123(v127, 1, v125) == 1)
        {
          v128 = v147;
          *v147 = xmmword_1C6D7F510;
          v129 = v128 + *(v125 + 20);
          sub_1C6D78A30();
          if (v123(v127, 1, v125) != 1)
          {
            sub_1C6C88C14(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v128 = v147;
          sub_1C6C89C34(v127, v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v130 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 40);
        v131 = v157;
        sub_1C6C88C14(v157 + v130, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v128, v131 + v130, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v155 + 56))(v131 + v130, 0, 1, v125);
        v121 = v158;
      }

      v132 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v133 = v152;
      sub_1C6C893C4(v121 + v132, v152, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v134 = v125;
      v135 = v123(v133, 1, v125);
      result = sub_1C6C88C14(v133, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v135 != 1)
      {
        v137 = v148;
        sub_1C6C893C4(v121 + v132, v148, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if (v123(v137, 1, v134) == 1)
        {
          v138 = v149;
          *v149 = xmmword_1C6D7F510;
          v139 = v138 + *(v134 + 20);
          sub_1C6D78A30();
          v140 = v123(v137, 1, v134);
          v141 = v157;
          if (v140 != 1)
          {
            sub_1C6C88C14(v137, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          v138 = v149;
          sub_1C6C89C34(v137, v149, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v141 = v157;
        }

        v142 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata() + 44);
        sub_1C6C88C14(v141 + v142, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6C89C34(v138, v141 + v142, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        return (*(v155 + 56))(v141 + v142, 0, 1, v134);
      }

      return result;
    }

    v165 = MEMORY[0x1E69E7CC0];

    sub_1C6B392F0(0, v71, 0);
    v72 = v165;
    swift_beginAccess();
    swift_beginAccess();
    v73 = 0;
    v74 = (v70 + 40);
    v162 = v70;
    v160 = v71;
    while (1)
    {
      if (v73 >= *(v70 + 16))
      {
        goto LABEL_66;
      }

      v163 = v72;
      v76 = *(v74 - 1);
      v75 = *v74;
      v77 = v168;
      swift_beginAccess();
      v78 = *(v77 + 16);
      v79 = *(v78 + 16);

      if (!v79)
      {
        break;
      }

      v80 = sub_1C6B5DEA8(v76, v75);
      if ((v81 & 1) == 0)
      {
        break;
      }

      v82 = *(*(v78 + 56) + 4 * v80);
      swift_endAccess();
      v72 = v163;
LABEL_42:

      v165 = v72;
      v101 = *(v72 + 16);
      v100 = *(v72 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_1C6B392F0((v100 > 1), v101 + 1, 1);
        v72 = v165;
      }

      ++v73;
      *(v72 + 16) = v101 + 1;
      *(v72 + 4 * v101 + 32) = v82;
      v74 += 2;
      v70 = v162;
      if (v160 == v73)
      {

        a1 = v157;
        v22 = v153;
        goto LABEL_46;
      }
    }

    swift_endAccess();
    v82 = *(a3 + 16);
    v83 = v168;
    swift_beginAccess();
    v84 = *(v83 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = *(v83 + 16);
    v86 = v164;
    *(v83 + 16) = 0x8000000000000000;
    v87 = sub_1C6B5DEA8(v76, v75);
    v89 = v86[2];
    v90 = (v88 & 1) == 0;
    v62 = __OFADD__(v89, v90);
    v91 = v89 + v90;
    if (v62)
    {
      goto LABEL_69;
    }

    v92 = v88;
    if (v86[3] >= v91)
    {
      v72 = v163;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = v87;
        sub_1C6B74918();
        v72 = v163;
        v87 = v102;
      }

      a3 = v161;
      v94 = v164;
      if ((v92 & 1) == 0)
      {
LABEL_34:
        v94[(v87 >> 6) + 8] |= 1 << v87;
        v95 = (v94[6] + 16 * v87);
        *v95 = v76;
        v95[1] = v75;
        *(v94[7] + 4 * v87) = v82;
        v96 = v94[2];
        v62 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v62)
        {
          goto LABEL_72;
        }

        v94[2] = v97;

        goto LABEL_40;
      }
    }

    else
    {
      sub_1C6B71A0C(v91, isUniquelyReferenced_nonNull_native);
      v87 = sub_1C6B5DEA8(v76, v75);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_73;
      }

      a3 = v161;
      v72 = v163;
      v94 = v164;
      if ((v92 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    *(v94[7] + 4 * v87) = v82;
LABEL_40:
    *(v168 + 16) = v94;
    swift_endAccess();
    v98 = *(a3 + 16);
    v62 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v62)
    {
      goto LABEL_70;
    }

    *(a3 + 16) = v99;
    goto LABEL_42;
  }

  v167 = MEMORY[0x1E69E7CC0];

  sub_1C6B392F0(0, v34, 0);
  v35 = v167;
  swift_beginAccess();
  swift_beginAccess();
  v36 = 0;
  v37 = (v33 + 40);
  v159 = v33;
  v160 = v34;
  while (v36 < *(v33 + 16))
  {
    v162 = v35;
    v38 = *(v37 - 1);
    v39 = *v37;
    v40 = v168;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = *(v41 + 16);

    if (!v42 || (v43 = sub_1C6B5DEA8(v38, v39), (v44 & 1) == 0))
    {
      swift_endAccess();
      LODWORD(v163) = *(a3 + 16);
      v45 = v38;
      v46 = v168;
      swift_beginAccess();
      v47 = *(v46 + 16);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v46 + 16);
      v49 = v166;
      *(v46 + 16) = 0x8000000000000000;
      v50 = v45;
      v52 = sub_1C6B5DEA8(v45, v39);
      v53 = v49[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_67;
      }

      v56 = v51;
      if (v49[3] >= v55)
      {
        v35 = v162;
        if ((v48 & 1) == 0)
        {
          sub_1C6B74918();
          goto LABEL_11;
        }
      }

      else
      {
        sub_1C6B71A0C(v55, v48);
        v57 = sub_1C6B5DEA8(v50, v39);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_73;
        }

        v52 = v57;
LABEL_11:
        v35 = v162;
      }

      v59 = v166;
      v34 = v160;
      if (v56)
      {
        *(v166[7] + 4 * v52) = v163;
      }

      else
      {
        v166[(v52 >> 6) + 8] |= 1 << v52;
        v60 = (v59[6] + 16 * v52);
        *v60 = v50;
        v60[1] = v39;
        *(v59[7] + 4 * v52) = v163;
        v61 = v59[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_71;
        }

        v59[2] = v63;
      }

      *(v168 + 16) = v59;
      swift_endAccess();
      a3 = v161;
      v64 = *(v161 + 16);
      v62 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      v33 = v159;
      if (v62)
      {
        goto LABEL_68;
      }

      *(v161 + 16) = v65;
      goto LABEL_19;
    }

    LODWORD(v163) = *(*(v41 + 56) + 4 * v43);
    swift_endAccess();
    v35 = v162;
LABEL_19:

    v167 = v35;
    v67 = *(v35 + 16);
    v66 = *(v35 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1C6B392F0((v66 > 1), v67 + 1, 1);
      v35 = v167;
    }

    ++v36;
    *(v35 + 16) = v67 + 1;
    *(v35 + 4 * v67 + 32) = v163;
    v37 += 2;
    if (v34 == v36)
    {

      a1 = v157;
      v30 = v158;
      v22 = v153;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C83560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v158 = a3;
  v155 = a4;
  v156 = a1;
  v157 = a2;
  v160 = a5;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v153 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v152 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v150 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v149 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v148 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v147 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v146 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v145 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v144 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v143 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v142 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v141 = &v140 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = &v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = &v140 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v140 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v66 = &v140 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v70 = &v140 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v140 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v140 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C88C70(v156, v78, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6C89C34(v78, v70, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v113 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
      MEMORY[0x1EEE9AC00](v113);
      v114 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v114;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v70;
      sub_1C6C89B98(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v115 = v159;
      sub_1C6D78C30();
      if (!v115)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      v83 = v70;
      return sub_1C6C88CF8(v83, v82);
    case 2u:
      sub_1C6C89C34(v78, v66, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v102 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
      MEMORY[0x1EEE9AC00](v102);
      v103 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v103;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v66;
      sub_1C6C89B98(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v104 = v159;
      sub_1C6D78C30();
      if (!v104)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      v83 = v66;
      return sub_1C6C88CF8(v83, v82);
    case 3u:
      sub_1C6C89C34(v78, v62, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v108 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
      MEMORY[0x1EEE9AC00](v108);
      v109 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v109;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v62;
      sub_1C6C89B98(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v110 = v159;
      sub_1C6D78C30();
      if (!v110)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
      v83 = v62;
      return sub_1C6C88CF8(v83, v82);
    case 4u:
      sub_1C6C89C34(v78, v58, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v94 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
      MEMORY[0x1EEE9AC00](v94);
      v95 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v95;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v58;
      sub_1C6C89B98(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v96 = v159;
      sub_1C6D78C30();
      if (!v96)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
      v83 = v58;
      return sub_1C6C88CF8(v83, v82);
    case 5u:
      sub_1C6C89C34(v78, v50, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v122 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
      MEMORY[0x1EEE9AC00](v122);
      v123 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v123;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v50;
      sub_1C6C89B98(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v124 = v159;
      sub_1C6D78C30();
      if (!v124)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      v83 = v50;
      return sub_1C6C88CF8(v83, v82);
    case 6u:
      v84 = v142;
      sub_1C6C89C34(v78, v142, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v128 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
      MEMORY[0x1EEE9AC00](v128);
      v129 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v129;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v130 = v159;
      sub_1C6D78C30();
      if (!v130)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_51;
    case 7u:
      v84 = v145;
      sub_1C6C89C34(v78, v145, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v111 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
      MEMORY[0x1EEE9AC00](v111);
      v112 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v112;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      goto LABEL_51;
    case 8u:
      v84 = v146;
      sub_1C6C89C34(v78, v146, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v135 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
      MEMORY[0x1EEE9AC00](v135);
      v136 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v136;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      goto LABEL_51;
    case 9u:
      v84 = v147;
      sub_1C6C89C34(v78, v147, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v100 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
      MEMORY[0x1EEE9AC00](v100);
      v101 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v101;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
      goto LABEL_51;
    case 0xAu:
      v84 = v149;
      sub_1C6C89C34(v78, v149, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v133 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
      MEMORY[0x1EEE9AC00](v133);
      v134 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v134;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
      goto LABEL_51;
    case 0xBu:
      v84 = v150;
      sub_1C6C89C34(v78, v150, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v92 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
      MEMORY[0x1EEE9AC00](v92);
      v93 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v93;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
      goto LABEL_51;
    case 0xCu:
      v84 = v151;
      sub_1C6C89C34(v78, v151, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v97 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
      MEMORY[0x1EEE9AC00](v97);
      v98 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v98;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v99 = v159;
      sub_1C6D78C30();
      if (!v99)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_51;
    case 0xDu:
      v84 = v152;
      sub_1C6C89C34(v78, v152, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v125 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
      MEMORY[0x1EEE9AC00](v125);
      v126 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v126;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v127 = v159;
      sub_1C6D78C30();
      if (!v127)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_51;
    case 0xEu:
      v84 = v153;
      sub_1C6C89C34(v78, v153, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
      MEMORY[0x1EEE9AC00](v89);
      v90 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v90;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v91 = v159;
      sub_1C6D78C30();
      if (!v91)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_51;
    case 0xFu:
      sub_1C6C89C34(v78, v54, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v105 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
      MEMORY[0x1EEE9AC00](v105);
      v106 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v106;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v54;
      sub_1C6C89B98(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v107 = v159;
      sub_1C6D78C30();
      if (!v107)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
      v83 = v54;
      return sub_1C6C88CF8(v83, v82);
    case 0x10u:
      v84 = v141;
      sub_1C6C89C34(v78, v141, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
      MEMORY[0x1EEE9AC00](v85);
      v86 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v86;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v87 = v159;
      sub_1C6D78C30();
      if (!v87)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_51;
    case 0x11u:
      v84 = v143;
      sub_1C6C89C34(v78, v143, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
      MEMORY[0x1EEE9AC00](v116);
      v117 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v117;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v118 = v159;
      sub_1C6D78C30();
      if (!v118)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_51;
    case 0x12u:
      v84 = v144;
      sub_1C6C89C34(v78, v144, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
      MEMORY[0x1EEE9AC00](v131);
      v132 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v132;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
      goto LABEL_51;
    case 0x13u:
      v84 = v148;
      sub_1C6C89C34(v78, v148, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v137 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
      MEMORY[0x1EEE9AC00](v137);
      v138 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v138;
      *(&v140 - 2) = v84;
      sub_1C6C89B98(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      sub_1C6D78C30();
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      swift_storeEnumTagMultiPayload();
      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
      goto LABEL_51;
    case 0x14u:
      v84 = v154;
      sub_1C6C89C34(v78, v154, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v119 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
      MEMORY[0x1EEE9AC00](v119);
      v120 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v120;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v84;
      sub_1C6C89B98(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v121 = v159;
      sub_1C6D78C30();
      if (!v121)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v88 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_51:
      v82 = v88;
      v83 = v84;
      break;
    default:
      sub_1C6C89C34(v78, v74, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v79 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
      MEMORY[0x1EEE9AC00](v79);
      v80 = v158;
      *(&v140 - 4) = v157;
      *(&v140 - 3) = v80;
      *(&v140 - 2) = v155;
      *(&v140 - 1) = v74;
      sub_1C6C89B98(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v81 = v159;
      sub_1C6D78C30();
      if (!v81)
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      v83 = v74;
      break;
  }

  return sub_1C6C88CF8(v83, v82);
}

uint64_t sub_1C6C8510C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double), uint64_t (*a7)(void), uint64_t a8)
{
  v88 = a8;
  v102 = a7;
  v107 = a4;
  v109 = a3;
  v108 = a2;
  v104 = a1;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v105 = *(v10 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v84 - v17;
  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C6D78A00();
  v103 = *(v96 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v86 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v85 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v84 - v27;
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v84 - v32;
  v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v95 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = (&v84 - v40);
  v42 = a6(0, v39);
  v43 = *(v42 + 20);
  v98 = a5;
  v93 = v43;
  sub_1C6C893C4(a5 + v43, v33, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v44 = *(v35 + 48);
  v45 = v44(v33, 1, v34);
  v100 = v10;
  v94 = v44;
  if (v45 == 1)
  {
    *v41 = 0;
    v41[1] = 0xE000000000000000;
    (*(v105 + 56))(v41 + *(v34 + 20), 1, 1, v10);
    v46 = v41 + *(v34 + 24);
    sub_1C6D78A30();
    if (v44(v33, 1, v34) != 1)
    {
      sub_1C6C88C14(v33, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v33, v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v47 = v106;
  v48 = sub_1C6C80C14(v41, v108, v109, v107);
  result = sub_1C6C88CF8(v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v47)
  {
    v107 = 0;
    *v104 = v48;
    v50 = *(v42 + 24);
    v51 = MEMORY[0x1E69AAB70];
    v52 = v98;
    v53 = v92;
    sub_1C6C893C4(v98 + v50, v92, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v54 = v96;
    v106 = *(v103 + 48);
    v55 = v106(v53, 1, v96);
    sub_1C6C88C14(v53, &qword_1EDCDFD00, v51);
    if (v55 != 1)
    {
      v56 = v52 + v50;
      v57 = v85;
      sub_1C6C893C4(v56, v85, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v58 = v106;
      v59 = v54;
      if (v106(v57, 1, v54) == 1)
      {
        v60 = v86;
        sub_1C6D789F0();
        v61 = v58(v57, 1, v54);
        v62 = v104;
        if (v61 != 1)
        {
          sub_1C6C88C14(v57, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        v60 = v86;
        (*(v103 + 32))(v86, v57, v54);
        v62 = v104;
      }

      v63 = *(v102(0) + 28);
      sub_1C6C88C14(&v62[v63], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v64 = v103;
      (*(v103 + 32))(&v62[v63], v60, v59);
      (*(v64 + 56))(&v62[v63], 0, 1, v59);
    }

    v65 = v97;
    sub_1C6C893C4(v52 + v93, v97, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v66 = v94;
    if (v94(v65, 1, v34) == 1)
    {
      v67 = v95;
      *v95 = 0;
      *(v67 + 1) = 0xE000000000000000;
      v68 = v105;
      v69 = v100;
      (*(v105 + 56))(&v67[*(v34 + 20)], 1, 1, v100);
      v70 = &v67[*(v34 + 24)];
      sub_1C6D78A30();
      if (v66(v65, 1, v34) != 1)
      {
        sub_1C6C88C14(v65, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v67 = v95;
      sub_1C6C89C34(v65, v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v69 = v100;
      v68 = v105;
    }

    v71 = &v67[*(v34 + 20)];
    v72 = v101;
    sub_1C6C893C4(v71, v101, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v67, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v73 = swift_allocError();
    *v74 = 1;
    MEMORY[0x1EEE9AC00](v73);
    v75 = v109;
    *(&v84 - 2) = v108;
    *(&v84 - 1) = v75;
    v76 = v99;
    sub_1C6C893C4(v72, v99, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v68 + 48))(v76, 1, v69) == 1)
    {
      swift_willThrow();
      return sub_1C6C88C14(v72, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v77 = v89;
      v78 = sub_1C6C89C34(v76, v89, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v78);
      v79 = v88;
      *(&v84 - 4) = v77;
      *(&v84 - 3) = v79;
      *(&v84 - 2) = (&v84 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v80 = v87;
      v81 = v91;
      sub_1C6D78C30();
      sub_1C6C88C14(v72, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v77, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v82 = *(v102(0) + 24);
      v83 = v104;
      sub_1C6C88C14(&v104[v82], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v80, &v83[v82], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      return (*(v90 + 56))(&v83[v82], 0, 1, v81);
    }
  }

  return result;
}

uint64_t sub_1C6C85C0C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v99 = a4;
  v102 = a3;
  v101 = a2;
  v98 = a1;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v81 - v13;
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1C6D78A00();
  v94 = *(v90 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v82 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v91 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v81 - v29;
  v31 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v89 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v81 - v36);
  v38 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v39 = *(v38 + 24);
  v95 = a5;
  v88 = v39;
  sub_1C6C893C4(a5 + v39, v30, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v40 = *(v32 + 48);
  if (v40(v30, 1, v31) == 1)
  {
    *v37 = 0;
    v37[1] = 0xE000000000000000;
    (*(v96 + 56))(v37 + *(v31 + 20), 1, 1, v97);
    v41 = v37 + *(v31 + 24);
    sub_1C6D78A30();
    if (v40(v30, 1, v31) != 1)
    {
      sub_1C6C88C14(v30, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v30, v37, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v42 = v100;
  v43 = sub_1C6C80C14(v37, v101, v102, v99);
  result = sub_1C6C88CF8(v37, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v42)
  {
    v99 = 0;
    v100 = v40;
    *v98 = v43;
    v45 = *(v38 + 28);
    v46 = MEMORY[0x1E69AAB70];
    v47 = v95;
    sub_1C6C893C4(v95 + v45, v24, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v48 = v90;
    v81 = *(v94 + 48);
    v49 = v81(v24, 1, v90);
    sub_1C6C88C14(v24, &qword_1EDCDFD00, v46);
    v50 = v96;
    if (v49 != 1)
    {
      v51 = v47 + v45;
      v52 = v82;
      sub_1C6C893C4(v51, v82, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v53 = v81;
      v54 = v48;
      if (v81(v52, 1, v48) == 1)
      {
        v55 = v83;
        sub_1C6D789F0();
        v56 = v53(v52, 1, v48);
        v57 = v98;
        if (v56 != 1)
        {
          sub_1C6C88C14(v52, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        v55 = v83;
        (*(v94 + 32))(v83, v52, v48);
        v57 = v98;
      }

      v58 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
      sub_1C6C88C14(&v57[v58], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      v59 = v94;
      (*(v94 + 32))(&v57[v58], v55, v54);
      (*(v59 + 56))(&v57[v58], 0, 1, v54);
      v47 = v95;
    }

    v60 = v91;
    sub_1C6C893C4(v47 + v88, v91, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v61 = v100;
    if ((v100)(v60, 1, v31) == 1)
    {
      v62 = v89;
      *v89 = 0;
      *(v62 + 1) = 0xE000000000000000;
      v63 = v50;
      v64 = v97;
      (*(v50 + 56))(&v62[*(v31 + 20)], 1, 1, v97);
      v65 = &v62[*(v31 + 24)];
      sub_1C6D78A30();
      v66 = v61(v60, 1, v31);
      v67 = v98;
      v68 = v93;
      if (v66 != 1)
      {
        sub_1C6C88C14(v60, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v63 = v50;
      v62 = v89;
      sub_1C6C89C34(v60, v89, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v64 = v97;
      v67 = v98;
      v68 = v93;
    }

    sub_1C6C893C4(&v62[*(v31 + 20)], v68, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v62, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v69 = swift_allocError();
    v100 = &v81;
    *v70 = 1;
    MEMORY[0x1EEE9AC00](v69);
    v71 = v102;
    *(&v81 - 2) = v101;
    *(&v81 - 1) = v71;
    v72 = v92;
    sub_1C6C893C4(v68, v92, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v63 + 48))(v72, 1, v64) == 1)
    {
      swift_willThrow();
      return sub_1C6C88C14(v68, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v73 = v72;
      v74 = v85;
      v75 = sub_1C6C89C34(v73, v85, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v75);
      *(&v81 - 4) = v74;
      *(&v81 - 3) = sub_1C6C89D04;
      *(&v81 - 2) = (&v81 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v76 = v84;
      v77 = v87;
      sub_1C6D78C30();
      sub_1C6C88C14(v68, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v74, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v78 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
      sub_1C6C88C14(&v67[v78], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v76, &v67[v78], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      (*(v86 + 56))(&v67[v78], 0, 1, v77);
      v79 = *v95;
      v80 = *(v67 + 1);

      *(v67 + 1) = v79;
    }
  }

  return result;
}

uint64_t sub_1C6C86708(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v73 = a3;
  v72 = a2;
  v68 = a1;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v57 - v13;
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v57 - v28);
  v30 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  v64 = a5;
  sub_1C6C893C4(a5 + v30, v22, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v31 = *(v24 + 48);
  v32 = v31(v22, 1, v23);
  v66 = v6;
  if (v32 == 1)
  {
    *v29 = 0;
    v29[1] = 0xE000000000000000;
    (*(v71 + 56))(v29 + *(v23 + 20), 1, 1, v6);
    v33 = v29 + *(v23 + 24);
    sub_1C6D78A30();
    if (v31(v22, 1, v23) != 1)
    {
      sub_1C6C88C14(v22, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v22, v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v34 = v70;
  v35 = sub_1C6C80C14(v29, v72, v73, v69);
  result = sub_1C6C88CF8(v29, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v34)
  {
    v37 = v68;
    *v68 = v35;
    v39 = v63;
    v38 = v64;
    v40 = *(v64 + 8);
    *(v37 + 1) = *v64;
    *(v37 + 16) = v40;
    sub_1C6C893C4(v38 + v30, v39, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v31(v39, 1, v23) == 1)
    {
      v41 = v62;
      *v62 = 0;
      *(v41 + 1) = 0xE000000000000000;
      v42 = v66;
      (*(v71 + 56))(&v41[*(v23 + 20)], 1, 1, v66);
      v43 = &v41[*(v23 + 24)];
      sub_1C6D78A30();
      if (v31(v39, 1, v23) != 1)
      {
        sub_1C6C88C14(v39, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v41 = v62;
      sub_1C6C89C34(v39, v62, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v42 = v66;
    }

    v44 = &v41[*(v23 + 20)];
    v45 = v67;
    sub_1C6C893C4(v44, v67, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v41, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v46 = swift_allocError();
    *v47 = 1;
    MEMORY[0x1EEE9AC00](v46);
    v48 = v73;
    *(&v57 - 2) = v72;
    *(&v57 - 1) = v48;
    v49 = v65;
    sub_1C6C893C4(v45, v65, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v71 + 48))(v49, 1, v42) == 1)
    {
      swift_willThrow();
      return sub_1C6C88C14(v45, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v50 = v49;
      v51 = v59;
      v52 = sub_1C6C89C34(v50, v59, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v52);
      *(&v57 - 4) = v51;
      *(&v57 - 3) = sub_1C6C89D04;
      *(&v57 - 2) = (&v57 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v53 = v58;
      v54 = v61;
      sub_1C6D78C30();
      sub_1C6C88C14(v67, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v51, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v55 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
      v56 = v68;
      sub_1C6C88C14(v68 + v55, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v53, &v56[v55], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      return (*(v60 + 56))(&v56[v55], 0, 1, v54);
    }
  }

  return result;
}

uint64_t sub_1C6C86F10(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = MEMORY[0x1E69AAB70];
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1C6D78A00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_1C6C80AEC(*a4, a4[1], a2, a3);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6C893C4(a4 + *(v18 + 24), v12, &qword_1EDCDFD00, v8);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1C6D789F0();
    if (v19(v12, 1, v13) != 1)
    {
      sub_1C6C88C14(v12, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v20 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen() + 24);
  sub_1C6C88C14(&a1[v20], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v14 + 32))(&a1[v20], v17, v13);
  return (*(v14 + 56))(&a1[v20], 0, 1, v13);
}

uint64_t sub_1C6C87180(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69AAB70];
  sub_1C6C89BE0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = sub_1C6C80AEC(*a4, a4[1], a2, a3);
  v32 = a1;
  *a1 = v19;
  v20 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  sub_1C6C893C4(a4 + v20, v18, &qword_1EDCDFD00, v12);
  v31 = v9;
  v21 = *(v9 + 48);
  LODWORD(a2) = v21(v18, 1, v8);
  result = sub_1C6C88C14(v18, &qword_1EDCDFD00, v12);
  if (a2 != 1)
  {
    v23 = v29;
    sub_1C6C893C4(a4 + v20, v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v21(v23, 1, v8) == 1)
    {
      v24 = v30;
      sub_1C6D789F0();
      v25 = v21(v23, 1, v8);
      v26 = v31;
      if (v25 != 1)
      {
        sub_1C6C88C14(v23, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      v24 = v30;
      v26 = v31;
      (*(v31 + 32))(v30, v23, v8);
    }

    v27 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
    v28 = v32;
    sub_1C6C88C14(&v32[v27], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v26 + 32))(&v28[v27], v24, v8);
    return (*(v26 + 56))(&v28[v27], 0, 1, v8);
  }

  return result;
}

uint64_t sub_1C6C87494(char *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double), uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{
  v66 = a8;
  v62 = a7;
  v74 = a4;
  v78 = a3;
  v77 = a2;
  v73 = a1;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v60 - v18;
  v19 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v64 = *(v19 - 8);
  v65 = v19;
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v68 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v67 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v60 - v34);
  v36 = *(a6(0, v33) + 20);
  v69 = a5;
  sub_1C6C893C4(a5 + v36, v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v37 = *(v29 + 48);
  v38 = v37(v27, 1, v28);
  v71 = v11;
  if (v38 == 1)
  {
    *v35 = 0;
    v35[1] = 0xE000000000000000;
    (*(v76 + 56))(v35 + *(v28 + 20), 1, 1, v11);
    v39 = v35 + *(v28 + 24);
    sub_1C6D78A30();
    if (v37(v27, 1, v28) != 1)
    {
      sub_1C6C88C14(v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v27, v35, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v40 = v75;
  v41 = sub_1C6C80C14(v35, v77, v78, v74);
  result = sub_1C6C88CF8(v35, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (!v40)
  {
    *v73 = v41;
    v43 = v68;
    sub_1C6C893C4(v69 + v36, v68, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if (v37(v43, 1, v28) == 1)
    {
      v44 = v67;
      *v67 = 0;
      *(v44 + 1) = 0xE000000000000000;
      v45 = v71;
      (*(v76 + 56))(&v44[*(v28 + 20)], 1, 1, v71);
      v46 = &v44[*(v28 + 24)];
      sub_1C6D78A30();
      v47 = v37(v43, 1, v28);
      v48 = v72;
      if (v47 != 1)
      {
        sub_1C6C88C14(v43, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v44 = v67;
      sub_1C6C89C34(v43, v67, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v45 = v71;
      v48 = v72;
    }

    sub_1C6C893C4(&v44[*(v28 + 20)], v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C88CF8(v44, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6C89430();
    v49 = swift_allocError();
    *v50 = 1;
    MEMORY[0x1EEE9AC00](v49);
    v51 = v78;
    *(&v60 - 2) = v77;
    *(&v60 - 1) = v51;
    v52 = v70;
    sub_1C6C893C4(v48, v70, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    if ((*(v76 + 48))(v52, 1, v45) == 1)
    {
      swift_willThrow();
      return sub_1C6C88C14(v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    }

    else
    {
      v78 = a9;
      v53 = v63;
      v54 = sub_1C6C89C34(v52, v63, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      MEMORY[0x1EEE9AC00](v54);
      v55 = v62;
      *(&v60 - 4) = v53;
      *(&v60 - 3) = v55;
      *(&v60 - 2) = (&v60 - 4);
      sub_1C6C89B98(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v56 = v61;
      v57 = v65;
      sub_1C6D78C30();
      sub_1C6C88C14(v48, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6C88CF8(v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);

      v58 = *(v78(0) + 24);
      v59 = v73;
      sub_1C6C88C14(&v73[v58], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6C89C34(v56, &v59[v58], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      return (*(v64 + 56))(&v59[v58], 0, 1, v57);
    }
  }

  return result;
}

uint64_t sub_1C6C87C90(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v44 = sub_1C6D789A0();
  v38 = *(v44 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C89BE0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v22 = *(v21 + 24);
  v36 = a5;
  sub_1C6C893C4(a5 + v22, v15, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v24 = *(v16 + 20);
    v25 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v25 - 8) + 56))(v20 + v24, 1, 1, v25);
    v26 = v20 + *(v16 + 24);
    sub_1C6D78A30();
    if (v23(v15, 1, v16) != 1)
    {
      sub_1C6C88C14(v15, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6C89C34(v15, v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v27 = v43;
  v28 = sub_1C6C80C14(v20, v40, v41, v42);
  result = sub_1C6C88CF8(v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v44;
  if (!v27)
  {
    v31 = v39;
    *v39 = v28;
    sub_1C6C893C4(v36 + *(v21 + 20), v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v32 = v38;
    v33 = *(v38 + 48);
    if (v33(v9, 1, v30) == 1)
    {
      v34 = v37;
      sub_1C6D78990();
      if (v33(v9, 1, v30) != 1)
      {
        sub_1C6C88C14(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v34 = v37;
      (*(v32 + 32))(v37, v9, v30);
    }

    v35 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
    sub_1C6C88C14(&v31[v35], &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v32 + 32))(&v31[v35], v34, v30);
    return (*(v32 + 56))(&v31[v35], 0, 1, v30);
  }

  return result;
}

uint64_t sub_1C6C88130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a3;
  v38 = a4;
  v44 = a1;
  sub_1C6C89BE0(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v36 - v8;
  sub_1C6C89BE0(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69AA900];
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = sub_1C6D789A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  v43 = a2;
  sub_1C6C893C4(a2 + v26, v20, &qword_1EDCE66F0, v16);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    sub_1C6D78990();
    if (v27(v20, 1, v21) != 1)
    {
      sub_1C6C88C14(v20, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
  }

  v28 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  v29 = v44;
  sub_1C6C88C14(v44 + v28, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v22 + 32))(v29 + v28, v25, v21);
  (*(v22 + 56))(v29 + v28, 0, 1, v21);
  sub_1C6C893C4(v43, v12, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if ((*(v13 + 48))(v12, 1, v42) == 1)
  {
    sub_1C6C88C14(v12, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C89430();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  else
  {
    v32 = v36;
    sub_1C6C89C34(v12, v36, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v34 = v40;
    v33 = v41;
    sub_1C6C83560(v32, v37, v38, v39, v41);
    result = sub_1C6C88CF8(v32, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    if (!v34)
    {
      v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
      (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
      return sub_1C6C89AE8(v33, v29, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }
  }

  return result;
}

uint64_t sub_1C6C88634(uint64_t a1, void *a2)
{
  v63 = sub_1C6D789A0();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v59 - v8;
  v9 = MEMORY[0x1E69AA900];
  sub_1C6C89BE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = *a2;
  v21 = a2[1];
  v22 = *(a1 + 8);

  *a1 = v20;
  *(a1 + 8) = v21;
  v64 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v23 = *(v64 + 36);
  sub_1C6C893C4(a2 + v23, v19, &qword_1EDCE66F0, v9);
  v67 = v4;
  v25 = v4 + 48;
  v24 = *(v4 + 48);
  v26 = v63;
  LODWORD(v4) = v24(v19, 1, v63);
  v27 = v9;
  v28 = v24;
  v29 = a2;
  sub_1C6C88C14(v19, &qword_1EDCE66F0, v27);
  if (v4 != 1)
  {
    v30 = a2 + v23;
    v31 = v59;
    sub_1C6C893C4(v30, v59, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v28(v31, 1, v26) == 1)
    {
      v32 = v60;
      sub_1C6D78990();
      if (v28(v31, 1, v26) != 1)
      {
        sub_1C6C88C14(v31, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v32 = v60;
      (*(v67 + 32))(v60, v31, v26);
    }

    v33 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
    sub_1C6C88C14(a1 + v33, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v34 = v67;
    (*(v67 + 32))(a1 + v33, v32, v26);
    (*(v34 + 56))(a1 + v33, 0, 1, v26);
  }

  v35 = v65;
  v36 = *(v64 + 40);
  v37 = MEMORY[0x1E69AA900];
  sub_1C6C893C4(v29 + v36, v65, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v38 = v28(v35, 1, v26);
  v64 = v25;
  v39 = v28;
  v40 = v38;
  sub_1C6C88C14(v35, &qword_1EDCE66F0, v37);
  if (v40 != 1)
  {
    v41 = v61;
    sub_1C6C893C4(v29 + v36, v61, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v39(v41, 1, v26) == 1)
    {
      v42 = v62;
      sub_1C6D78990();
      if (v39(v41, 1, v26) != 1)
      {
        sub_1C6C88C14(v41, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v42 = v62;
      (*(v67 + 32))(v62, v41, v26);
    }

    v43 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
    sub_1C6C88C14(a1 + v43, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v44 = v67;
    (*(v67 + 32))(a1 + v43, v42, v26);
    (*(v44 + 56))(a1 + v43, 0, 1, v26);
  }

  v46 = v29[3];
  v45 = v29[4];
  v47 = *(a1 + 48);

  *(a1 + 40) = v46;
  *(a1 + 48) = v45;
  v48 = *(v29 + 48);
  *(a1 + 56) = v29[5];
  *(a1 + 64) = v48;
  v49 = v66;
  result = sub_1C6C8069C();
  if (!v49)
  {
    v53 = v51;
    v54 = v52;
    v55 = *(a1 + 24);
    v56 = result;

    *(a1 + 24) = v56;
    v57 = *(a1 + 16);

    *(a1 + 16) = v53;
    v58 = *(a1 + 32);

    *(a1 + 32) = v54;
  }

  return result;
}

uint64_t sub_1C6C88C14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6C89BE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C88C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C88CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C88D58(char *a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v70 = a2;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v76 = *(v5 - 8);
  v6 = *(v76 + 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = sub_1C6B673E8(*(a1 + 2), 0);
    v73 = sub_1C6B69160(v75, v10 + 32, v9, a1);
    v71 = v75[4];
    swift_bridgeObjectRetain_n();
    sub_1C6B688C4();
    if (v73 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v75[0] = v10;
  sub_1C6B64C58(v75);
  if (!v3)
  {
    v71 = 0;

    v11 = v75[0];
    v12 = *(v75[0] + 2);
    if (v12)
    {
      v75[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39864(0, v12, 0);
      v13 = 32;
      v14 = v75[0];
      v74 = a1;
      while (*(a1 + 2))
      {
        v15 = sub_1C6B64DD0(*&v11[v13]);
        if ((v16 & 1) == 0)
        {
          goto LABEL_49;
        }

        v17 = v76;
        v18 = *(v76 + 9);
        sub_1C6C88C70(*(a1 + 7) + v18 * v15, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v19 = v14;
        v75[0] = v14;
        v20 = v8;
        v22 = *(v14 + 2);
        v21 = *(v14 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_1C6B39864(v21 > 1, v22 + 1, 1);
          v17 = v76;
          v19 = v75[0];
        }

        *(v19 + 2) = v22 + 1;
        v14 = v19;
        sub_1C6C89C34(v20, &v19[((v17[80] + 32) & ~v17[80]) + v22 * v18], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v13 += 4;
        --v12;
        v8 = v20;
        a1 = v74;
        if (!v12)
        {

          goto LABEL_15;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
LABEL_15:
      v23 = v72;
      v3 = v72 + 64;
      v24 = 1 << *(v72 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v72 + 64);
      v27 = (v24 + 63) >> 6;

      v28 = 0;
      v29 = MEMORY[0x1E69E7CC8];
      v73 = v27;
      v74 = v3;
      while (v26)
      {
        v32 = v28;
LABEL_25:
        v33 = __clz(__rbit64(v26)) | (v32 << 6);
        v34 = *(v23 + 56);
        v35 = (*(v23 + 48) + 16 * v33);
        v36 = v35[1];
        v76 = *v35;
        v37 = *(v34 + 4 * v33);
        swift_bridgeObjectRetain_n();
        v38 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v38;
        v40 = sub_1C6B64DD0(v37);
        v42 = *(v38 + 2);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_52;
        }

        v46 = v41;
        if (*(v38 + 3) >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v51 = v14;
            v52 = v40;
            sub_1C6B7479C();
            v40 = v52;
            v14 = v51;
            v23 = v72;
          }
        }

        else
        {
          sub_1C6B71770(v45, isUniquelyReferenced_nonNull_native);
          v40 = sub_1C6B64DD0(v37);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_55;
          }
        }

        v26 &= v26 - 1;
        v29 = v75[0];
        if (v46)
        {
          v30 = (*(v75[0] + 7) + 16 * v40);
          v31 = v30[1];
          *v30 = v76;
          v30[1] = v36;
        }

        else
        {
          *&v75[0][8 * (v40 >> 6) + 64] |= 1 << v40;
          *(*(v29 + 6) + 4 * v40) = v37;
          v48 = (*(v29 + 7) + 16 * v40);
          *v48 = v76;
          v48[1] = v36;

          v49 = *(v29 + 2);
          v44 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v44)
          {
            goto LABEL_53;
          }

          *(v29 + 2) = v50;
        }

        v28 = v32;
        v27 = v73;
        v3 = v74;
      }

      while (1)
      {
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v32 >= v27)
        {
          break;
        }

        v26 = *(v3 + 8 * v32);
        ++v28;
        if (v26)
        {
          goto LABEL_25;
        }
      }

      v53 = *(v29 + 2);
      v76 = v29;
      if (v53)
      {
        v54 = sub_1C6B673E8(v53, 0);
        v55 = sub_1C6B69160(v75, v54 + 32, v53, v29);
        swift_bridgeObjectRetain_n();
        sub_1C6B688C4();
        if (v55 != v53)
        {
          goto LABEL_54;
        }

        v29 = v76;
      }

      else
      {

        v54 = MEMORY[0x1E69E7CC0];
      }

      v75[0] = v54;
      v3 = v71;
      sub_1C6B64C58(v75);
      if (v3)
      {
        v69 = v3;
        goto LABEL_58;
      }

      v56 = v75[0];
      v57 = *(v75[0] + 2);
      if (!v57)
      {
LABEL_46:

        return v14;
      }

      v73 = 0;
      v75[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39280(0, v57, 0);
      v58 = 32;
      v59 = v75[0];
      v74 = v56;
      while (*(v29 + 2))
      {
        v60 = sub_1C6B64DD0(*&v56[v58]);
        if ((v61 & 1) == 0)
        {
          goto LABEL_51;
        }

        v62 = v14;
        v63 = (*(v29 + 7) + 16 * v60);
        v64 = *v63;
        v65 = v63[1];
        v75[0] = v59;
        v66 = *(v59 + 2);
        v3 = *(v59 + 3);

        if (v66 >= v3 >> 1)
        {
          sub_1C6B39280((v3 > 1), v66 + 1, 1);
          v59 = v75[0];
        }

        *(v59 + 2) = v66 + 1;
        v67 = &v59[16 * v66];
        *(v67 + 4) = v64;
        *(v67 + 5) = v65;
        v58 += 4;
        --v57;
        v14 = v62;
        v29 = v76;
        v56 = v74;
        if (!v57)
        {
          goto LABEL_46;
        }
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_1C6D7A1C0();
    __break(1u);
  }

  v69 = v3;
LABEL_58:

  __break(1u);
  return result;
}

uint64_t sub_1C6C893C4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6C89BE0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C6C89430()
{
  result = qword_1EDCE2AF0[0];
  if (!qword_1EDCE2AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE2AF0);
  }

  return result;
}

uint64_t sub_1C6C89644(_DWORD *a1)
{
  result = sub_1C6C80AEC(**(v1 + 32), *(*(v1 + 32) + 8), *(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1C6C89AE8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6C89BE0(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C89B98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C89BE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C89C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6C89CB0()
{
  result = qword_1EC1D86C0;
  if (!qword_1EC1D86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D86C0);
  }

  return result;
}

uint64_t HeadlineExposureEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t HeadlineExposureEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C8AE90(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t HeadlineExposureEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C8AE90(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t HeadlineExposureEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D20();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = HeadlineExposureEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C8A4A0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C8A5AC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77D10();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t HeadlineExposureEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D77E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77E60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D30();
  sub_1C6D77E50();
  (*(v8 + 8))(v11, v7);
  sub_1C6C1EF1C(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t HeadlineExposureEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C8AA7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6C8AAD4(v9);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

void sub_1C6C8AA7C()
{
  if (!qword_1EDCE5E30)
  {
    sub_1C6D77EF0();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5E30);
    }
  }
}

uint64_t sub_1C6C8AAD4(uint64_t a1)
{
  sub_1C6C8AA7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HeadlineExposureEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E3540];
  v3 = sub_1C6D76B90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6C8AC04(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77D10();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t HeadlineExposureEvent.Model.groupBackingTagID.getter()
{
  sub_1C6C8AA7C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6C8AAD4(v3);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C8AE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C8AF30()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D10();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C8B030()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D20();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = HeadlineExposureEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C8B180(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77D10();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C8B2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C8B3A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77D10();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C8B48C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D77E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77E60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D30();
  sub_1C6D77E50();
  (*(v8 + 8))(v11, v7);
  sub_1C6C1EF1C(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6C8B608@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E3540];
  v3 = sub_1C6D76B90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C6C8B67C()
{
  sub_1C6C8AA7C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77D40();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6C8AAD4(v3);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

void sub_1C6C8B798(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[1] = a2;
  v6 = sub_1C6D77AD0();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C8BBF0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v31 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6C8BC84(&qword_1EC1D81E8, MEMORY[0x1E69B4910]);
      v24 = v32;
      sub_1C6D75AF0();
      a3[3] = v6;
      v26 = MEMORY[0x1E69B4910];
      a3[4] = sub_1C6C8BC84(&qword_1EC1D86C8, MEMORY[0x1E69B4910]);
      a3[5] = sub_1C6C8BC84(&qword_1EC1D86D0, v26);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v31[0] + 32))(boxed_opaque_existential_2, v24, v6);
      sub_1C6B1C9F0(v21, v23);
      v28 = *MEMORY[0x1E69E3660];
      v29 = sub_1C6D76F90();
      v30 = *(v29 - 8);
      (*(v30 + 104))(a3, v28, v29);
      (*(v30 + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v25 = sub_1C6D76F90();
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }
}

void sub_1C6C8BBF0()
{
  if (!qword_1EDCE6060)
  {
    sub_1C6D77AE0();
    sub_1C6C8BC84(&unk_1EDCE5EE0, MEMORY[0x1E69B4928]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6060);
    }
  }
}

uint64_t sub_1C6C8BC84(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1C6C8BCCC()
{
  v1 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider();
  v2 = *(v0 + *(v1 + 36));
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v15 = *(v0 + *(v1 + 36));
    }

    v3 = sub_1C6D79E90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA56240](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = [swift_unknownObjectRetain() itemID];
      v9 = sub_1C6D795A0();
      v11 = v10;
      swift_unknownObjectRelease_n();

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C6B39280((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v6);
    return v4;
  }

  __break(1u);
  return result;
}

__n128 sub_1C6C8BE38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider();
  v9 = [objc_msgSend(*(a2 + *(v8 + 28)) bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  [v9 containsItem_];

  LODWORD(a2) = *(a2 + *(v8 + 24));
  v10 = [a3 fullBodyEmbeddingDimension];
  v11 = [a3 maxTopicIds];
  v12 = [a3 titleEmbeddingDimension];
  swift_getObjectType();
  sub_1C6C35740();
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRetain();
  sub_1C6C33510(v10, v11, v12, v14, v16 & 1, *&a2, v24);
  v17 = v24[13];
  *(a4 + 192) = v24[12];
  *(a4 + 208) = v17;
  *(a4 + 224) = v25;
  v18 = v24[9];
  *(a4 + 128) = v24[8];
  *(a4 + 144) = v18;
  v19 = v24[11];
  *(a4 + 160) = v24[10];
  *(a4 + 176) = v19;
  v20 = v24[5];
  *(a4 + 64) = v24[4];
  *(a4 + 80) = v20;
  v21 = v24[7];
  *(a4 + 96) = v24[6];
  *(a4 + 112) = v21;
  v22 = v24[1];
  *a4 = v24[0];
  *(a4 + 16) = v22;
  result = v24[3];
  *(a4 + 32) = v24[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1C6C8BFE4(void *a1)
{
  v3 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider();
  v4 = *(v1 + *(v3 + 32));
  v5 = v1 + *(v3 + 20);
  v6 = sub_1C6D79110() - 1;
  if (v4 == 1)
  {
    if (v6 >= 0x26)
    {
      v8 = &selRef_shadowDefaultHeadlineScoringOutputName;
      goto LABEL_9;
    }

    v7 = off_1E8297550;
  }

  else
  {
    if (v6 >= 0x28)
    {
      v8 = &selRef_defaultHeadlineScoringOutputName;
      goto LABEL_9;
    }

    v7 = off_1E8297680;
  }

  v8 = v7[v6];
LABEL_9:
  v9 = [a1 *v8];
  v10 = sub_1C6D795A0();

  return v10;
}

uint64_t sub_1C6C8C0B8(void *a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 36));
  v9[3] = a1;
  v5 = sub_1C6D03ACC(sub_1C6C8CBF0, v9, v4);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 16))(v5, [a1 fullBodyEmbeddingDimension], objc_msgSend(a1, sel_titleEmbeddingDimension), v6, v7);
}

uint64_t sub_1C6C8C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v72 = a8;
  LODWORD(v74) = a6;
  LODWORD(v73) = a4;
  v62 = a9;
  v76 = a11;
  v16 = sub_1C6D78810();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C6D787B0();
  v68 = *(v70 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v62 - v24;
  sub_1C6C2EF1C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v64 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v62 - v34;
  v36 = type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider();
  v37 = *(*(v36 - 1) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 24);
  sub_1C6B16F28(a2, v39);
  v41 = v36[5];
  v42 = sub_1C6D79170();
  (*(*(v42 - 8) + 16))(&v39[v41], a3, v42);
  v75[0] = a7;
  sub_1C6B186F8();
  sub_1C6C8C940();
  v43 = v71;
  v44 = sub_1C6D79680();
  sub_1C6B16F28(v72, &v39[v36[10]]);
  v39[v36[6]] = v73;
  *&v39[v36[7]] = a5;
  v39[v36[8]] = v74;
  *&v39[v36[9]] = v44;
  swift_unknownObjectRetain();
  v45 = [v40 feedPersonalizationConfiguration];
  v75[3] = v36;
  v75[4] = &off_1F4676720;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v75);
  sub_1C6C8C9FC(v39, boxed_opaque_existential_2, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);
  ArticleScoringWork.requestContext(with:dataProvider:)(v45, v75, v35);
  if (v43)
  {
    sub_1C6C8CA64(v39, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);

    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v72 = 0;
  v49 = v67;
  v48 = v68;

  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = type metadata accessor for ArticleScoringWork.Context(0);
  v51 = *(v50 - 8);
  (*(v51 + 56))(v35, 0, 1, v50);
  sub_1C6C8C998(v35, a10);
  v76 = a10;
  sub_1C6C8C9FC(a10, v32, sub_1C6C2EF1C);
  v74 = *(v51 + 48);
  result = v74(v32, 1, v50);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v52 = v70;
  v71 = *(v48 + 16);
  v71(v49, v32, v70);
  sub_1C6C8CA64(v32, type metadata accessor for ArticleScoringWork.Context);
  sub_1C6D787A0();
  v73 = *(v48 + 8);
  v73(v49, v52);
  v53 = v66;
  sub_1C6C8C9FC(v76, v66, sub_1C6C2EF1C);
  result = v74(v53, 1, v50);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v54 = v63;
  v55 = v52;
  v56 = v71;
  v71(v63, v53, v55);
  sub_1C6C8CA64(v53, type metadata accessor for ArticleScoringWork.Context);
  v57 = sub_1C6D78780();
  v58 = v70;
  v67 = v59;
  v68 = v57;
  v73(v54, v70);
  v60 = v64;
  sub_1C6C8C9FC(v76, v64, sub_1C6C2EF1C);
  result = v74(v60, 1, v50);
  v61 = v65;
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v56(v65, v60, v58);
  sub_1C6C8CA64(v60, type metadata accessor for ArticleScoringWork.Context);
  sub_1C6D78770();
  v73(v61, v58);
  sub_1C6D78790();
  return sub_1C6C8CA64(v39, type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider);
}

uint64_t type metadata accessor for NewsArticleScoringService.ArticleScoringWorkDataProvider()
{
  result = qword_1EDCE78F8;
  if (!qword_1EDCE78F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C8C8D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 itemID];
  v4 = sub_1C6D795A0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1C6C8C940()
{
  result = qword_1EDCE6608;
  if (!qword_1EDCE6608)
  {
    sub_1C6B186F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6608);
  }

  return result;
}

uint64_t sub_1C6C8C998(uint64_t a1, uint64_t a2)
{
  sub_1C6C2EF1C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C8C9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C8CA64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6C8CAEC()
{
  sub_1C6B10A98(319, qword_1EDCE6F00);
  if (v0 <= 0x3F)
  {
    sub_1C6D79170();
    if (v1 <= 0x3F)
    {
      sub_1C6B0F7A8(319, &unk_1EDCE6550, &protocolRef_FCPaidAccessCheckerType);
      if (v2 <= 0x3F)
      {
        sub_1C6B186F8();
        if (v3 <= 0x3F)
        {
          sub_1C6B10A98(319, qword_1EDCE9100);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t Com_Apple_News_Personalization_GroupType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x52;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6C8CC6C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C8CC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FB94();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1C6C8CCE0(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v2 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  return v2 == Com_Apple_News_Personalization_GroupType.rawValue.getter();
}

uint64_t sub_1C6C8CD40()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5768);
  __swift_project_value_buffer(v0, qword_1EDCE5768);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1C6D8A1F0;
  v5 = v168 + v4;
  v6 = v168 + v4 + *(v2 + 56);
  *(v168 + v4) = 0;
  *v6 = "GROUP_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v168 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "GROUP_TYPE_CURATED";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v168 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "GROUP_TYPE_NEWSPAPER";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v168 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "GROUP_TYPE_LOCAL_NEWS";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v168 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "GROUP_TYPE_SHARED_WITH_YOU";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v168 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "GROUP_TYPE_TRENDING";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v168 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GROUP_TYPE_MY_MAGAZINES";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v168 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "GROUP_TYPE_FEATURED_ISSUE";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v9();
  v23 = v168 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "GROUP_TYPE_ISSUES";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v168 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "GROUP_TYPE_TOPIC";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v9();
  v26 = (v168 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "GROUP_TYPE_FEATURED_ARTICLE";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v9();
  v28 = (v168 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "GROUP_TYPE_FEATURED_ISSUE_ARTICLE";
  *(v29 + 1) = 33;
  v29[16] = 2;
  v9();
  v30 = (v168 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "GROUP_TYPE_RECOMMENDED_ISSUES";
  *(v31 + 1) = 29;
  v31[16] = 2;
  v9();
  v32 = (v168 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "GROUP_TYPE_NEW_ISSUE";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v168 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "GROUP_TYPE_SPOTLIGHT";
  *(v35 + 1) = 20;
  v35[16] = 2;
  v9();
  v36 = (v168 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "GROUP_TYPE_BREAKING_NEWS";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v9();
  v38 = v168 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "GROUP_TYPE_SPECIAL_EVENTS";
  *(v38 + 8) = 25;
  *(v38 + 16) = 2;
  v9();
  v39 = (v168 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "GROUP_TYPE_ARTICLE_LIST";
  *(v40 + 1) = 23;
  v40[16] = 2;
  v9();
  v41 = (v168 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "GROUP_TYPE_ORDERED_ARTICLE_LIST";
  *(v42 + 1) = 31;
  v42[16] = 2;
  v9();
  v43 = (v168 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "GROUP_TYPE_BEST_OF_BUNDLE";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v9();
  v45 = (v168 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "GROUP_TYPE_MAGAZINE_TRENDING";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v9();
  v47 = (v168 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "GROUP_TYPE_CHANNEL";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  v49 = (v168 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "GROUP_TYPE_TOP_STORIES";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v9();
  v51 = (v168 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "GROUP_TYPE_MORE_FROM";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v9();
  v53 = (v168 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "GROUP_TYPE_RELATED";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v9();
  v55 = (v168 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "GROUP_TYPE_FOR_YOU";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v9();
  v57 = (v168 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "GROUP_TYPE_PAID_SUBSCRIPTION";
  *(v58 + 1) = 28;
  v58[16] = 2;
  v9();
  v59 = (v168 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "GROUP_TYPE_AUTO_FAVORITE";
  *(v60 + 1) = 24;
  v60[16] = 2;
  v9();
  v61 = (v168 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "GROUP_TYPE_DAILY_BRIEFINGS";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v9();
  v63 = (v168 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "GROUP_TYPE_AUDIO_DAILY_BRIEFING";
  *(v64 + 1) = 31;
  v64[16] = 2;
  v9();
  v65 = (v168 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "GROUP_TYPE_AUDIO_UP_NEXT";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v9();
  v67 = (v168 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "GROUP_TYPE_AUDIO_FOR_YOU";
  *(v68 + 1) = 24;
  v68[16] = 2;
  v9();
  v69 = v168 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "GROUP_TYPE_AUDIO_RECENTLY_PLAYED";
  *(v69 + 8) = 32;
  *(v69 + 16) = 2;
  v9();
  v70 = (v168 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "GROUP_TYPE_MORE_FOR_YOU";
  *(v71 + 1) = 23;
  v71[16] = 2;
  v9();
  v72 = (v168 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "GROUP_TYPE_NEW_FOLLOW";
  *(v73 + 1) = 21;
  v73[16] = 2;
  v9();
  v74 = (v168 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "GROUP_TYPE_LATEST_STORIES";
  *(v75 + 1) = 25;
  v75[16] = 2;
  v9();
  v76 = (v168 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "GROUP_TYPE_AD";
  *(v77 + 1) = 13;
  v77[16] = 2;
  v9();
  v78 = (v168 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "GROUP_TYPE_SEEN_CONTENT_MARK";
  *(v79 + 1) = 28;
  v79[16] = 2;
  v9();
  v80 = (v168 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "GROUP_TYPE_MISSED_STORIES";
  *(v81 + 1) = 25;
  v81[16] = 2;
  v9();
  v82 = (v168 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "GROUP_TYPE_RECOMMENDED_READS";
  *(v83 + 1) = 28;
  v83[16] = 2;
  v9();
  v84 = (v168 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "GROUP_TYPE_END_OF_ARTICLE_UNKNOWN";
  *(v85 + 1) = 33;
  v85[16] = 2;
  v9();
  v86 = (v168 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "GROUP_TYPE_PAYWALL";
  *(v87 + 1) = 18;
  v87[16] = 2;
  v9();
  v88 = (v168 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "GROUP_TYPE_HIGHLIGHTS";
  *(v89 + 1) = 21;
  v89[16] = 2;
  v9();
  v90 = (v168 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "GROUP_TYPE_MY_SPORTS";
  *(v91 + 1) = 20;
  v91[16] = 2;
  v9();
  v92 = (v168 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "GROUP_TYPE_WEATHER";
  *(v93 + 1) = 18;
  v93[16] = 2;
  v9();
  v94 = (v168 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "GROUP_TYPE_SPORTS_RECORD";
  *(v95 + 1) = 24;
  v95[16] = 2;
  v9();
  v96 = (v168 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "GROUP_TYPE_SPORTS_NAVIGATION";
  *(v97 + 1) = 28;
  v97[16] = 2;
  v9();
  v98 = (v168 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "GROUP_TYPE_SPORTS_TOPIC";
  *(v99 + 1) = 23;
  v99[16] = 2;
  v9();
  v100 = (v168 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "GROUP_TYPE_MY_SPORTS_TOPIC";
  *(v101 + 1) = 26;
  v101[16] = 2;
  v9();
  v102 = (v168 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "GROUP_TYPE_CHANNEL_SECTION";
  *(v103 + 1) = 26;
  v103[16] = 2;
  v9();
  v104 = (v168 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "GROUP_TYPE_CHANNEL_SECTION_DIRECTORY";
  *(v105 + 1) = 36;
  v105[16] = 2;
  v9();
  v106 = (v168 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "GROUP_TYPE_INTRO_TO_SPORTS";
  *(v107 + 1) = 26;
  v107[16] = 2;
  v9();
  v108 = (v168 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "GROUP_TYPE_SPORTS_SCORES";
  *(v109 + 1) = 24;
  v109[16] = 2;
  v9();
  v110 = (v168 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "GROUP_TYPE_SPORTS_SCHEDULE";
  *(v111 + 1) = 26;
  v111[16] = 2;
  v9();
  v112 = (v168 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "GROUP_TYPE_SPORTS_STANDINGS";
  *(v113 + 1) = 27;
  v113[16] = 2;
  v9();
  v114 = (v168 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "GROUP_TYPE_SPORTS_BRACKET";
  *(v115 + 1) = 25;
  v115[16] = 2;
  v9();
  v116 = (v168 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "GROUP_TYPE_SPORTS_TOP_STORIES";
  *(v117 + 1) = 29;
  v117[16] = 2;
  v9();
  v118 = (v168 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "GROUP_TYPE_SPORTS_EVENT_INFO";
  *(v119 + 1) = 28;
  v119[16] = 2;
  v9();
  v120 = (v168 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "GROUP_TYPE_SPORTS_BOX_SCORES";
  *(v121 + 1) = 28;
  v121[16] = 2;
  v9();
  v122 = (v168 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "GROUP_TYPE_SPORTS_KEY_PLAYERS";
  *(v123 + 1) = 29;
  v123[16] = 2;
  v9();
  v124 = (v168 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "GROUP_TYPE_SPORTS_EVENT_ARTICLE_LIST";
  *(v125 + 1) = 36;
  v125[16] = 2;
  v9();
  v126 = (v168 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "GROUP_TYPE_SPORTS_INJURY_REPORTS";
  *(v127 + 1) = 32;
  v127[16] = 2;
  v9();
  v128 = (v168 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "GROUP_TYPE_SHORTCUTS";
  *(v129 + 1) = 20;
  v129[16] = 2;
  v9();
  v130 = (v168 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "GROUP_TYPE_SPORTS_ONBOARDING";
  *(v131 + 1) = 28;
  v131[16] = 2;
  v9();
  v132 = v168 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "GROUP_TYPE_PUZZLE_LIST";
  *(v132 + 8) = 22;
  *(v132 + 16) = 2;
  v9();
  v133 = (v168 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "GROUP_TYPE_PUZZLE_ARCHIVE";
  *(v134 + 1) = 25;
  v134[16] = 2;
  v9();
  v135 = (v168 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "GROUP_TYPE_PUZZLE_CONTINUE_PLAYING";
  *(v136 + 1) = 34;
  v136[16] = 2;
  v9();
  v137 = (v168 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "GROUP_TYPE_PUZZLE_FEATURED";
  *(v138 + 1) = 26;
  v138[16] = 2;
  v9();
  v139 = (v168 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "GROUP_TYPE_TAG_FEED_FOR_YOU";
  *(v140 + 1) = 27;
  v140[16] = 2;
  v9();
  v141 = (v168 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "GROUP_TYPE_TAG_RECENT_STORIES";
  *(v142 + 1) = 29;
  v142[16] = 2;
  v9();
  v143 = (v168 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "GROUP_TYPE_TAG_DATE_RANGE";
  *(v144 + 1) = 25;
  v144[16] = 2;
  v9();
  v145 = (v168 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "GROUP_TYPE_MORE_IN_TOPIC";
  *(v146 + 1) = 24;
  v146[16] = 2;
  v9();
  v147 = (v168 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "GROUP_TYPE_SPORTS_LINKS";
  *(v148 + 1) = 23;
  v148[16] = 2;
  v9();
  v149 = (v168 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "GROUP_TYPE_SPORTS_MASTHEAD";
  *(v150 + 1) = 26;
  v150[16] = 2;
  v9();
  v151 = (v168 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "GROUP_TYPE_SPORTS_EVENT_TOPIC";
  *(v152 + 1) = 29;
  v152[16] = 2;
  v9();
  v153 = (v168 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "GROUP_TYPE_LATEST_RECIPES";
  *(v154 + 1) = 25;
  v154[16] = 2;
  v9();
  v155 = (v168 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "GROUP_TYPE_SAVED_RECIPES";
  *(v156 + 1) = 24;
  v156[16] = 2;
  v9();
  v157 = (v168 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "GROUP_TYPE_CHANNEL_RECIPES";
  *(v158 + 1) = 26;
  v158[16] = 2;
  v9();
  v159 = (v168 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "GROUP_TYPE_RECENTLY_VIEWED_RECIPES";
  *(v160 + 1) = 34;
  v160[16] = 2;
  v9();
  v161 = (v168 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "GROUP_TYPE_TRENDING_RECIPES";
  *(v162 + 1) = 27;
  v162[16] = 2;
  v9();
  v163 = (v168 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "GROUP_TYPE_RELATED_RECIPES";
  *(v164 + 1) = 26;
  v164[16] = 2;
  v9();
  v165 = (v168 + v4 + 81 * v3);
  v166 = v165 + *(v2 + 56);
  *v165 = 81;
  *v166 = "GROUP_TYPE_RECIPE_TOPICS";
  *(v166 + 1) = 24;
  v166[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_GroupType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5760 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6C8E24C()
{
  result = qword_1EDCE5750;
  if (!qword_1EDCE5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5750);
  }

  return result;
}

unint64_t sub_1C6C8E2A4()
{
  result = qword_1EDCE5740;
  if (!qword_1EDCE5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5740);
  }

  return result;
}

unint64_t sub_1C6C8E2FC()
{
  result = qword_1EC1D86D8;
  if (!qword_1EC1D86D8)
  {
    sub_1C6C8E354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D86D8);
  }

  return result;
}

void sub_1C6C8E354()
{
  if (!qword_1EC1D86E0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D86E0);
    }
  }
}

unint64_t sub_1C6C8E3A8()
{
  result = qword_1EDCE5748;
  if (!qword_1EDCE5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5748);
  }

  return result;
}

uint64_t sub_1C6C8E3FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5760 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ClusteringJournalEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClusteringJournalEntry() + 20);
  v4 = sub_1C6D75F50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C6C8E56C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v5 = sub_1C6D75F80();
  v17 = *(v5 - 8);
  v18 = v5;
  v6 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v23 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  v21 = a2;
  sub_1C6D790C0();
  sub_1C6D79820();
  sub_1C6C8EAA4(0, &qword_1EDCDF9C0, sub_1C6B68AA4, MEMORY[0x1E69E62F8]);
  swift_getWitnessTable();
  sub_1C6D796A0();
  v9 = v24;
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = (*(v11 + 8))(v9, v8, v10, v11);

  v24 = v16;
  v19 = a2;
  v20 = v12;
  v13 = sub_1C6D796C0();

  (*(v17 + 8))(v8, v18);
  return v13;
}

uint64_t sub_1C6C8E7A4(void **a1)
{
  sub_1C6D790C0();
  v2 = sub_1C6D790B0();
  sub_1C6D79090();
  v4 = v3;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6B66E5C(0, v5[2] + 1, 1, v5);
    v5 = result;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    result = sub_1C6B66E5C((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = v2;
  v9[5] = v4;
  *a1 = v5;
  return result;
}

double sub_1C6C8E880(uint64_t a1)
{
  sub_1C6D790C0();
  v2 = sub_1C6D79070();
  if (*(a1 + 16))
  {
    v4 = sub_1C6B5DEA8(v2, v3);
    v6 = v5;

    if (v6)
    {
      return *(*(a1 + 56) + 8 * v4);
    }
  }

  else
  {
  }

  if (qword_1EDCE18F0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6C8EAA4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  v9 = sub_1C6D79070();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1C6D78D30();

  return 0.0;
}

BOOL sub_1C6C8EA3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1C6C8E880(v1);
  return sub_1C6C8E880(v1) < v3;
}

void sub_1C6C8EAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen()
{
  result = qword_1EDCE46E0;
  if (!qword_1EDCE46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6C8EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6C8EF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventSportsTagSeen.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

BOOL Com_Apple_News_Personalization_SessionEventSportsTagSeen.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventSportsTagSeen.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C8F620()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D86E8);
  __swift_project_value_buffer(v0, qword_1EC1D86E8);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventSportsTagSeen._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D86E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6C8F940();
    }
  }

  return result;
}

uint64_t sub_1C6C8F940()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
  sub_1C6D78A00();
  sub_1C6C90464(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6C8FAA0(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C8FAA0(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D78A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6B764C8(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B7655C(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6C90464(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_Personalization_SessionEventSportsTagSeen.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  sub_1C6C90464(&qword_1EC1D8700, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C8FD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C90464(&qword_1EC1D8718, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C8FE0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D86E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C8FEB4(uint64_t a1)
{
  v2 = sub_1C6C90464(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C8FF20()
{
  sub_1C6C90464(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B77F8C();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_12:
      v24 = *(v27 + 20);
      sub_1C6D78A40();
      sub_1C6C90464(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1C6B78020(v17);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C90464(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v22 = sub_1C6D79560();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1C6B7655C(v17);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C90464(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C6C904AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  sub_1C6D78D30();
  result = [*(v2 + 16) bundleSubscriptionManager];
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_1C6C913B4;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C6B20B90;
    v9[3] = &block_descriptor_9;
    v8 = _Block_copy(v9);

    [v6 prepareForUseWithCompletion_];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C90620(uint64_t (*a1)(uint64_t))
{
  if (qword_1EDCEA6A0 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();
  v2 = sub_1C6D78D30();
  return a1(v2);
}

uint64_t sub_1C6C906BC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C906FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v7 = type metadata accessor for AppUserContext();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = a1;
  v12 = v6;
  swift_unknownObjectRetain();
  sub_1C6C907B0(v12, v5, a1);
  a2[3] = v7;
  result = sub_1C6C913BC();
  a2[4] = result;
  *a2 = v10;
  return result;
}

void sub_1C6C907B0(void *a1, void *a2, void *a3)
{
  v7 = sub_1C6D76330();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C04D28(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v16 = a3;
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = [v17 bundleSubscriptionManager];
  if (!v18)
  {
    __break(1u);
    goto LABEL_28;
  }

  v82 = v16;
  v83 = v11;
  v19 = [v18 bundleSubscription];
  swift_unknownObjectRelease();
  v20 = [v17 subscriptionController];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  v22 = [v20 subscribedTagIDs];

  if (!v22)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_1C6D79780();

  v24 = sub_1C6B1E610(v23);

  v3[5] = v24;
  v25 = [v17 subscriptionController];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = v25;
  v27 = [v25 autoFavoriteTagIDs];

  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = sub_1C6D79780();

  v29 = sub_1C6B1E610(v28);

  v3[6] = v29;
  v30 = [v17 subscriptionController];
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = v30;
  v32 = [v30 mutedTagIDs];

  if (!v32)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = sub_1C6D79780();

  v34 = sub_1C6B1E610(v33);

  v3[7] = v34;
  v35 = [v17 subscriptionController];
  if (!v35)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = v35;
  v37 = [v35 ignoredTagIDs];

  if (!v37)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = sub_1C6D79780();

  v39 = sub_1C6B1E610(v38);

  v3[8] = v39;
  v40 = [v17 subscriptionController];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v40 groupableTagIDs];

  if (!v42)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v81 = v7;
  v43 = sub_1C6D79780();

  v44 = sub_1C6B1E610(v43);

  v3[9] = v44;
  v80 = v19;
  v45 = [v19 bundleChannelIDs];
  v46 = [v45 set];

  v47 = sub_1C6D79960();
  v48 = sub_1C6C03FB4(v47);

  v49 = MEMORY[0x1E69E7CD0];
  if (v48)
  {
    v49 = v48;
  }

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_bundled) = v49;
  v50 = [v17 purchaseController];
  if (!v50)
  {
    goto LABEL_38;
  }

  v51 = v50;
  v52 = [v50 purchasedTagIDs];

  v53 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_purchased) = v53;
  v54 = [v17 readingHistory];
  v55 = [v54 allReadArticleIDs];

  v56 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_read) = v56;
  v57 = [v17 readingHistory];
  v58 = [v57 sortedListenedArticleIDs];

  v59 = sub_1C6D79780();
  v60 = sub_1C6B1E610(v59);

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_listened) = v60;
  v61 = [v17 readingHistory];
  v62 = [v61 allSeenArticleIDs];

  v63 = sub_1C6D79960();
  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_seen) = v63;
  v64 = [a2 mostFrequentLocation];
  if (v64)
  {
    v65 = v64;
    [v64 coordinate];
    [v65 coordinate];
    sub_1C6D770B0();

    v66 = sub_1C6D770E0();
    (*(*(v66 - 8) + 56))(v15, 0, 1, v66);
  }

  else
  {
    v67 = sub_1C6D770E0();
    (*(*(v67 - 8) + 56))(v15, 1, 1, v67);
  }

  v69 = v82;
  v68 = v83;
  sub_1C6C052BC(v15, v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_location);
  v70 = [v17 subscriptionController];
  if (!v70)
  {
    goto LABEL_39;
  }

  v71 = v70;
  v72 = [v70 newlySubscribedTagIDsInDateRange_];

  if (v72)
  {
    v73 = sub_1C6D79780();
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = sub_1C6B1E610(v73);

  *(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_newlySubscribed) = v74;
  v75 = v80;
  v76 = [v80 unprotectedSubscriptionState];

  swift_unknownObjectRelease();
  v77 = MEMORY[0x1E69E32A8];
  v78 = MEMORY[0x1E69E32B0];
  if (v76)
  {
    v78 = MEMORY[0x1E69E32A0];
  }

  if (v76 != 1)
  {
    v77 = v78;
  }

  v79 = v81;
  (*(v8 + 104))(v68, *v77, v81);
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState, v68, v79);
}

uint64_t sub_1C6C90F9C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState;
  v8 = sub_1C6D76330();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_bundled);

  v10 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_purchased);

  v11 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_read);

  v12 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_listened);

  v13 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_seen);

  sub_1C6C91478(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_location);
  v14 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_newlySubscribed);

  return v0;
}

uint64_t sub_1C6C910AC()
{
  sub_1C6C90F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppUserContext()
{
  result = qword_1EDCE7710;
  if (!qword_1EDCE7710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C91158()
{
  v0 = sub_1C6D76330();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C6C04D28(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C6C912A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19NewsPersonalization14AppUserContext_subscriptionState;
  v5 = sub_1C6D76330();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_1C6C913BC()
{
  result = qword_1EDCE7720;
  if (!qword_1EDCE7720)
  {
    type metadata accessor for AppUserContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7720);
  }

  return result;
}

uint64_t sub_1C6C91414(uint64_t a1, uint64_t a2)
{
  sub_1C6C04D28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C91478(uint64_t a1)
{
  sub_1C6C04D28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C914D4()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C915D0()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C916A0()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C9176C()
{
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C6C9189C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007265;
  v3 = *a1;
  v4 = 0x696669746E656469;
  v5 = 0xE500000000000000;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0x7370657473;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F69747265737361;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000736ELL;
  }

  v8 = 0x696669746E656469;
  if (*a2 != 1)
  {
    v8 = 0x7370657473;
    v2 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69747265737361;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C91994()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C91A38()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C91AC8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C91B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6CAA200();
  *a2 = result;
  return result;
}

void sub_1C6C91B98(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  v3 = 0xE500000000000000;
  if (*v1 == 1)
  {
    v3 = 0xEA00000000007265;
  }

  else
  {
    v2 = 0x7370657473;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6F69747265737361;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEA0000000000736ELL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1C6C91BF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x7370657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69747265737361;
  }
}

uint64_t sub_1C6C91C54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6CAA200();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C91C7C(uint64_t a1)
{
  v2 = sub_1C6C91FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C91CB8(uint64_t a1)
{
  v2 = sub_1C6C91FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.init(assertions:identifier:steps:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PersonalizationScript.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8720, sub_1C6C91FBC, &type metadata for PersonalizationScript.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C91FBC();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v21;
    sub_1C6B6052C(0, &qword_1EC1D8730);
    LOBYTE(v23) = 0;
    sub_1C6C92010();
    sub_1C6D79F90();
    v13 = v24;
    LOBYTE(v23) = 1;
    v14 = sub_1C6D79FA0();
    v16 = v15;
    v20 = v14;
    sub_1C6B6052C(0, &qword_1EC1D8748);
    v22 = 2;
    sub_1C6C920EC();
    sub_1C6D79FF0();
    (*(v11 + 8))(v9, v5);
    v18 = v23;
    v19 = v20;
    *v12 = v13;
    v12[1] = v19;
    v12[2] = v16;
    v12[3] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C91FBC()
{
  result = qword_1EC1D8728;
  if (!qword_1EC1D8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8728);
  }

  return result;
}

unint64_t sub_1C6C92010()
{
  result = qword_1EC1D8738;
  if (!qword_1EC1D8738)
  {
    sub_1C6B6052C(255, &qword_1EC1D8730);
    sub_1C6C92098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8738);
  }

  return result;
}

unint64_t sub_1C6C92098()
{
  result = qword_1EC1D8740;
  if (!qword_1EC1D8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8740);
  }

  return result;
}

unint64_t sub_1C6C920EC()
{
  result = qword_1EC1D8750;
  if (!qword_1EC1D8750)
  {
    sub_1C6B6052C(255, &qword_1EC1D8748);
    sub_1C6C92174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8750);
  }

  return result;
}

unint64_t sub_1C6C92174()
{
  result = qword_1EC1D8758;
  if (!qword_1EC1D8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8758);
  }

  return result;
}

uint64_t PersonalizationScript.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8760, sub_1C6C91FBC, &type metadata for PersonalizationScript.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C91FBC();

  sub_1C6D7A300();
  v22 = v10;
  v21 = 0;
  sub_1C6B6052C(0, &qword_1EC1D8730);
  sub_1C6C92414();
  v13 = v20;
  sub_1C6D7A030();
  if (v13)
  {
  }

  else
  {
    v14 = v17;

    LOBYTE(v22) = 1;
    sub_1C6D7A040();
    v22 = v14;
    v21 = 2;
    sub_1C6B6052C(0, &qword_1EC1D8748);
    sub_1C6C924F0();
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C6C92414()
{
  result = qword_1EC1D8768;
  if (!qword_1EC1D8768)
  {
    sub_1C6B6052C(255, &qword_1EC1D8730);
    sub_1C6C9249C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8768);
  }

  return result;
}

unint64_t sub_1C6C9249C()
{
  result = qword_1EC1D8770;
  if (!qword_1EC1D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8770);
  }

  return result;
}

unint64_t sub_1C6C924F0()
{
  result = qword_1EC1D8778;
  if (!qword_1EC1D8778)
  {
    sub_1C6B6052C(255, &qword_1EC1D8748);
    sub_1C6C92578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8778);
  }

  return result;
}

unint64_t sub_1C6C92578()
{
  result = qword_1EC1D8780;
  if (!qword_1EC1D8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8780);
  }

  return result;
}

uint64_t PersonalizationScript.Aggregate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v9);
  PersonalizationScript.Tag.init(from:)(v9, v10);
  if (v2)
  {

    sub_1C6B16F28(a1, v9);
    sub_1C6CA5070();
    sub_1C6CA50C4();
    sub_1C6D79740();
    v5 = 0;
    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t PersonalizationScript.Tag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87A0, sub_1C6CA516C, &type metadata for PersonalizationScript.Tag.TagID.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-1] - v8;
  sub_1C6B16F28(a1, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C6CA516C();
  sub_1C6D7A2D0();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1C6B16F28(a1, v17);
    sub_1C6CA51C0();
    sub_1C6CA5214();
    sub_1C6D79740();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v11 = 0;
    v12 = v18;
    v13 = 1;
  }

  else
  {
    v12 = sub_1C6D79FA0();
    v11 = v14;
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = 0;
  }

  v15 = v16;
  *v16 = v12;
  v15[1] = v11;
  *(v15 + 16) = v13;
  return result;
}

uint64_t PersonalizationScript.Aggregate.Baseline.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t PersonalizationScript.Assertion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v19);
  PersonalizationScript.Assertion.NumericAssertion.init(from:)(v19, &v20);
  if (v2)
  {

    sub_1C6B16F28(a1, v19);
    PersonalizationScript.Assertion.ExistenceAssertion.init(from:)(v19, &v20);
    v8 = 0;
    v9 = 0;
    v17 = v22;
    v18 = v20;
    v33 = v23;
    v11 = 256;
    if (!BYTE1(v21))
    {
      v11 = 0;
    }

    v7 = v11 | v21;
    v10 = 64;
  }

  else
  {
    v7 = v21;
    v17 = v22;
    v18 = v20;
    v33 = v23;
    v15 = v26;
    v16 = v24;
    v14 = v27;
    v3 = v30;
    v13 = v29;
    v8 = v25 & 0x83;
    v9 = v28 & 0x83;
    v10 = v32 & 0x83;
    v4 = v31;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v18;
  *(a2 + 16) = v7;
  *(a2 + 24) = v17;
  *(a2 + 40) = v33;
  *(a2 + 48) = v16;
  *(a2 + 56) = v8;
  *(a2 + 64) = v15;
  *(a2 + 72) = v14;
  *(a2 + 80) = v9;
  *(a2 + 88) = v13;
  *(a2 + 96) = v3;
  *(a2 + 104) = v4;
  *(a2 + 112) = v10;
  return result;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D87F0, sub_1C6CA5460, &type metadata for PersonalizationScript.Assertion.NumericAssertion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5460();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v28;
    LOBYTE(v33) = 0;
    sub_1C6CA54B4();
    v13 = v5;
    sub_1C6D79FF0();
    v14 = v42;
    LOBYTE(v29) = 1;
    sub_1C6CA5508();
    sub_1C6D79FF0();
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v40 = v39;
    v41 = 2;
    sub_1C6D79FF0();
    (*(v11 + 8))(v9, v13);
    v16 = v32;
    *v12 = v14;
    v18 = v23;
    v17 = v24;
    *(v12 + 8) = v22;
    *(v12 + 16) = v18;
    *(v12 + 24) = v17;
    v19 = v26;
    *(v12 + 32) = v25;
    *(v12 + 40) = v19;
    *(v12 + 48) = v27;
    *(v12 + 56) = v40;
    v20 = v30;
    *(v12 + 64) = v29;
    *(v12 + 80) = v20;
    *(v12 + 96) = v31;
    *(v12 + 112) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8810, sub_1C6CA5580, &type metadata for PersonalizationScript.Assertion.ExistenceAssertion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5580();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    LOBYTE(v25) = 0;
    sub_1C6CA55D4();
    sub_1C6D79FF0();
    v12 = v27;
    v13 = v28;
    v14 = v29;
    LOBYTE(v25) = 1;
    HIDWORD(v21) = sub_1C6D79FB0();
    v22 = v12;
    v23 = v13;
    v30 = v14;
    v31 = 2;
    sub_1C6CA5628();
    sub_1C6D79F90();
    (*(v11 + 8))(v9, v5);
    v16 = v26;
    v17 = BYTE4(v21) & 1;
    v18 = v25;
    v19 = v24;
    v20 = v23;
    *v24 = v22;
    v19[1] = v20;
    *(v19 + 16) = v30;
    *(v19 + 17) = v17;
    *(v19 + 3) = v18;
    v19[5] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.Assertion.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v10 = *(v1 + 11);
  v6 = *(v1 + 18);
  v16 = *(v1 + 3);
  v17 = *(v1 + 5);
  v15 = *(v1 + 9);
  v11 = *(v1 + 7);
  v13 = v1[12];
  v14 = v1[11];
  v12 = v1[13];
  v7 = *(v1 + 112);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
  if ((v7 & 0x40) != 0)
  {
    sub_1C6CA567C();
  }

  else
  {
    sub_1C6CA56D0();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void PersonalizationScript.Assertion.NumericAssertion.value1.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 56);
  *(a1 + 48) = v8;
  sub_1C6CA5724(v2, v3, v4, v5, v6, v7, v8, sub_1C6CAA560, sub_1C6CA5798);
}

void PersonalizationScript.Assertion.NumericAssertion.value2.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 112);
  *(a1 + 48) = v8;
  sub_1C6CA5724(v2, v3, v4, v5, v6, v7, v8, sub_1C6CAA560, sub_1C6CA5798);
}

uint64_t sub_1C6C93628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x3165756C6176;
  if (v2 != 1)
  {
    v3 = 0x3265756C6176;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 28783;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 0x3165756C6176;
  if (*a2 != 1)
  {
    v6 = 0x3265756C6176;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 28783;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C93714()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C937A4()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C93820()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C938AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6CAA24C();
  *a2 = result;
  return result;
}

void sub_1C6C938DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x3165756C6176;
  if (v2 != 1)
  {
    v4 = 0x3265756C6176;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 28783;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1C6C93928()
{
  v1 = 0x3165756C6176;
  if (*v0 != 1)
  {
    v1 = 0x3265756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28783;
  }
}

uint64_t sub_1C6C93970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6CAA24C();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C93998(uint64_t a1)
{
  v2 = sub_1C6CA5460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C939D4(uint64_t a1)
{
  v2 = sub_1C6CA5460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Assertion.NumericAssertion.init(op:value1:value2:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(a3 + 48);
  *a4 = *a1;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = *(a2 + 32);
  *(a4 + 56) = v4;
  v7 = *(a3 + 16);
  *(a4 + 64) = *a3;
  *(a4 + 80) = v7;
  result = *(a3 + 32);
  *(a4 + 96) = result;
  *(a4 + 112) = v5;
  return result;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8840, sub_1C6CA5460, &type metadata for PersonalizationScript.Assertion.NumericAssertion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v23 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v34 = *(v1 + 2);
  v35 = v10;
  v11 = *(v1 + 3);
  v32 = *(v1 + 4);
  v33 = v11;
  v12 = *(v1 + 5);
  v30 = *(v1 + 6);
  v31 = v12;
  v44 = v1[56];
  v13 = *(v1 + 8);
  v28 = *(v1 + 9);
  v29 = v13;
  v14 = *(v1 + 10);
  v26 = *(v1 + 11);
  v27 = v14;
  v15 = *(v1 + 12);
  v24 = *(v1 + 13);
  v25 = v15;
  HIDWORD(v23) = v1[112];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5460();
  sub_1C6D7A300();
  LOBYTE(v37) = v9;
  v45 = 0;
  sub_1C6CA57BC();
  v17 = v8;
  v18 = v36;
  sub_1C6D7A090();
  if (v18)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v21 = v27;
  v20 = v28;
  v22 = v29;
  v37 = v35;
  v38 = v34;
  v39 = v33;
  v40 = v32;
  v41 = v31;
  v42 = v30;
  v43 = v44;
  v45 = 1;
  sub_1C6CA5724(v35, v34, v33, v32, v31, v30, v44, sub_1C6CAA560, sub_1C6CA5798);
  sub_1C6CA5810();
  sub_1C6D7A090();
  sub_1C6CA5724(v37, v38, v39, v40, v41, v42, v43, sub_1C6CAA564, sub_1C6CA555C);
  v37 = v22;
  v38 = v20;
  v39 = v21;
  v40 = v26;
  v41 = v25;
  v42 = v24;
  v43 = BYTE4(v23);
  v45 = 2;
  sub_1C6CA5724(v22, v20, v21, v26, v25, v24, SBYTE4(v23), sub_1C6CAA560, sub_1C6CA5798);
  sub_1C6D7A090();
  sub_1C6CA5724(v37, v38, v39, v40, v41, v42, v43, sub_1C6CAA564, sub_1C6CA555C);
  return (*(v5 + 8))(v17, v4);
}

BOOL static PersonalizationScript.NumericValue.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 48);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return *&v4 == *&v6;
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 5);
  v11 = *(a2 + 2);
  v12 = *(a2 + 24);
  v13 = *(a2 + 5);
  v14 = *(a1 + 2);
  v20 = v4;
  v21 = v14;
  v22 = v9;
  v23 = v10;
  v24 = v5 & 0x7F;
  v15 = v6;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v7 & 0x7F;
  return _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v20, &v15) & 1;
}

uint64_t PersonalizationScript.Assertion.NumericAssertion.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 88);
  v14 = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v0 + 104);
  v8 = *(v0 + 112);
  *v0;
  *v0;
  sub_1C6D79610();

  if (v6 < 0)
  {
    MEMORY[0x1CCA56740](1);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)();
    }

    if (v3 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v3 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    sub_1C6D79610();

    if ((v8 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1CCA56770](v9);
    if ((v8 & 0x80) == 0)
    {
LABEL_6:
      MEMORY[0x1CCA56740](0);
      if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0;
      }

      return MEMORY[0x1CCA56770](v10);
    }
  }

  MEMORY[0x1CCA56740](1);
  if ((v16 & 0x80) != 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  if (v17 >> 1 == 0xFFFFFFFF)
  {
    sub_1C6D7A280();
  }

  else
  {
    sub_1C6D7A280();
    if ((v17 & 0x8000000000000000) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();

      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      sub_1C6D79610();
    }
  }

  sub_1C6D79610();
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.aggregate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C6B35FD4(v2, v3, v4);
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.moment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C6CA5798(v2);
}

uint64_t sub_1C6C94420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x737473697865;
  if (v2 != 1)
  {
    v3 = 0x746E656D6F6DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7461676572676761;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x737473697865;
  if (*a2 != 1)
  {
    v6 = 0x746E656D6F6DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7461676572676761;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6C94514()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C945B4()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C94640()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C946DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6CAA298();
  *a2 = result;
  return result;
}

void sub_1C6C9470C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x737473697865;
  if (v2 != 1)
  {
    v4 = 0x746E656D6F6DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461676572676761;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1C6C94768()
{
  v1 = 0x737473697865;
  if (*v0 != 1)
  {
    v1 = 0x746E656D6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t sub_1C6C947C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6CAA298();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C947E8(uint64_t a1)
{
  v2 = sub_1C6CA5580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C94824(uint64_t a1)
{
  v2 = sub_1C6CA5580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 PersonalizationScript.Assertion.ExistenceAssertion.init(aggregate:exists:moment:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a3[1].n128_u64[0];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 17) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  return result;
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8858, sub_1C6CA5580, &type metadata for PersonalizationScript.Assertion.ExistenceAssertion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v22 = *(v3 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v27 = *(v1 + 17);
  v10 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v10;
  v19 = *(v1 + 40);
  v11 = a1[4];
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B35FD4(v8, v9, v12);
  sub_1C6CA5580();
  sub_1C6D7A300();
  v24 = v8;
  v25 = v9;
  LOBYTE(v26) = v12;
  v28 = 0;
  sub_1C6CA5864();
  v13 = v23;
  sub_1C6D7A090();
  if (v13)
  {
    sub_1C6B360B4(v24, v25, v26);
    return (*(v22 + 8))(v7, v4);
  }

  else
  {
    v16 = v19;
    v15 = v20;
    v18 = v21;
    v17 = v22;
    sub_1C6B360B4(v24, v25, v26);
    LOBYTE(v24) = 1;
    sub_1C6D7A050();
    v24 = v18;
    v25 = v15;
    v26 = v16;
    v28 = 2;
    sub_1C6CA5798(v18);
    sub_1C6CA58B8();
    sub_1C6D7A030();
    sub_1C6CA555C(v24);
    return (*(v17 + 8))(v7, v4);
  }
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)()
{
  v1 = *(v0 + 17);
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[2] < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    v6 = *v0;
    v5 = v0[1];
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  sub_1C6D7A280();
  if (v3 >> 1 == 0xFFFFFFFF)
  {
    return sub_1C6D7A280();
  }

  sub_1C6D7A280();
  if ((v3 & 0x8000000000000000) != 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();

    return sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();
  }
}

uint64_t PersonalizationScript.Assertion.ExistenceAssertion.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 5);
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C94D7C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 5);
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C94DEC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 5);
  sub_1C6D7A260();
  PersonalizationScript.Assertion.ExistenceAssertion.hash(into:)();
  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Assertion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 112);
  if ((v6 & 0x40) == 0)
  {
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[5];
    v19 = v0[11];
    v20 = v0[8];
    v15 = v0[12];
    v13 = v0[6];
    v14 = v0[13];
    v7 = *(v0 + 56);
    v8 = v3 | (*(v0 + 17) << 8) | (*(v0 + 18) << 16) | (*(v0 + 11) << 48);
    MEMORY[0x1CCA56740](0);
    sub_1C6D79610();

    if (v7 < 0)
    {
      MEMORY[0x1CCA56740](1);
      if ((v4 & 0x80) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        PersonalizationScript.Tag.hash(into:)();
      }

      if (v5 >> 1 == 0xFFFFFFFF)
      {
        sub_1C6D7A280();
      }

      else
      {
        sub_1C6D7A280();
        if ((v5 & 0x8000000000000000) != 0)
        {
          MEMORY[0x1CCA56740](1);
          sub_1C6D79610();

          sub_1C6D79610();
        }

        else
        {
          MEMORY[0x1CCA56740](0);
          sub_1C6D79610();
        }
      }

      sub_1C6D79610();

      if ((v6 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1CCA56770](v9);
      if ((v6 & 0x80) == 0)
      {
LABEL_7:
        MEMORY[0x1CCA56740](0);
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v20;
        }

        else
        {
          v10 = 0;
        }

        return MEMORY[0x1CCA56770](v10);
      }
    }

    MEMORY[0x1CCA56740](1);
    if ((v17 & 0x80) != 0)
    {
      MEMORY[0x1CCA56740](1);
      sub_1C6D79610();
    }

    else
    {
      MEMORY[0x1CCA56740](0);
      PersonalizationScript.Tag.hash(into:)();
    }

    if (v19 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6D7A280();
    }

    else
    {
      sub_1C6D7A280();
      if ((v19 & 0x8000000000000000) != 0)
      {
        MEMORY[0x1CCA56740](1);
        sub_1C6D79610();

        sub_1C6D79610();
      }

      else
      {
        MEMORY[0x1CCA56740](0);
        sub_1C6D79610();
      }
    }

    goto LABEL_38;
  }

  v12 = v3;
  MEMORY[0x1CCA56740](1);
  if (v12 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  sub_1C6D7A280();
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    return sub_1C6D7A280();
  }

  sub_1C6D7A280();
  if ((v4 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1CCA56740](0);
LABEL_38:
    sub_1C6D79610();
  }

  MEMORY[0x1CCA56740](1);
  sub_1C6D79610();

  return sub_1C6D79610();
}

uint64_t sub_1C6C95510(void (*a1)(_BYTE *))
{
  sub_1C6D7A260();
  a1(v3);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C955A4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1C6D7A260();
  a3(v5);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95608(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C6D7A260();
  a4(v6);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C956C8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C95720(uint64_t a1)
{
  v2 = sub_1C6CA590C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C9575C(uint64_t a1)
{
  v2 = sub_1C6CA590C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.BrowseInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D8870, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA590C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v14;
    sub_1C6B6052C(0, &qword_1EC1D8880);
    sub_1C6CA5960();
    sub_1C6D79FF0();
    (*(v6 + 8))(v9, v5);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.BrowseInteraction.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D8898, sub_1C6CA590C, &type metadata for PersonalizationScript.BrowseInteraction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA590C();

  sub_1C6D7A300();
  v12[3] = v9;
  sub_1C6B6052C(0, &qword_1EC1D8880);
  sub_1C6CA5A3C();
  sub_1C6D7A090();

  return (*(v5 + 8))(v8, v4);
}

uint64_t PersonalizationScript.BrowseInteraction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = MEMORY[0x1CCA56740](v4);
  if (v4)
  {
    v6 = (v3 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;

      sub_1C6CA2980(a1, v8);
      MEMORY[0x1CCA56740](v7);
      sub_1C6D79610();

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t PersonalizationScript.BrowseInteraction.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6CA2840(v3, v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95CF8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6CA2840(v3, v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95D48()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6CA2840(v3, v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95DA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746E756F63;
  if (v2 != 1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000736ELL;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746E756F63;
  if (*a2 != 1)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

uint64_t sub_1C6C95E94()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C95F30()
{
  *v0;
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6C95FB8()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C96050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6CAA2E4();
  *a2 = result;
  return result;
}

void sub_1C6C96080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736ELL;
  v4 = 0xE500000000000000;
  v5 = 0x746E756F63;
  if (v2 != 1)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F697469646E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C6C960D8()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1C6C9612C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6CAA2E4();
  *a1 = result;
  return result;
}

uint64_t sub_1C6C96154(uint64_t a1)
{
  v2 = sub_1C6CA5B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C96190(uint64_t a1)
{
  v2 = sub_1C6CA5B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationScript.BrowseRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1C6CA6FEC(0, &qword_1EC1D88B0, sub_1C6CA5B18, &type metadata for PersonalizationScript.BrowseRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5B18();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v11 = v6;
    v12 = v18;
    sub_1C6B6052C(0, &qword_1EC1D88C0);
    v22 = 0;
    sub_1C6CA5B6C();
    sub_1C6D79FF0();
    v13 = v23;
    v21 = 1;
    v14 = v11;
    v15 = sub_1C6D79FE0();
    v19 = 2;
    sub_1C6CA5C48();
    sub_1C6D79FF0();
    (*(v14 + 8))(v9, v5);
    v17 = v20;
    *v12 = v13;
    *(v12 + 8) = v15;
    *(v12 + 16) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationScript.BrowseRequirement.encode(to:)(void *a1)
{
  sub_1C6CA6FEC(0, &qword_1EC1D88E0, sub_1C6CA5B18, &type metadata for PersonalizationScript.BrowseRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  HIDWORD(v14) = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CA5B18();

  sub_1C6D7A300();
  v21 = v9;
  v20 = 0;
  sub_1C6B6052C(0, &qword_1EC1D88C0);
  sub_1C6CA5C9C();
  v11 = v16;
  sub_1C6D7A090();
  if (v11)
  {
  }

  else
  {
    v12 = BYTE4(v14);

    v19 = 1;
    sub_1C6D7A080();
    v18 = v12;
    v17 = 2;
    sub_1C6CA5D78();
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t static PersonalizationScript.BrowseRequirement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1C6B56EAC(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_1C6B62A9C(v3, v5);
}

NewsPersonalization::PersonalizationScript::BrowseRequirement::RequirementType_optional __swiftcall PersonalizationScript.BrowseRequirement.RequirementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationScript.BrowseRequirement.RequirementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E6573657270;
  v3 = 0x6569724264616572;
  v4 = 0x676E6F4C64616572;
  if (v1 != 4)
  {
    v4 = 1702257011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701538156;
  if (v1 != 1)
  {
    v5 = 0x656B696C736964;
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

uint64_t sub_1C6C9681C()
{
  *v0;
  *v0;
  *v0;
  sub_1C6D79610();
}

void sub_1C6C96914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6573657270;
  v5 = 0xE900000000000066;
  v6 = 0x6569724264616572;
  v7 = 0xE800000000000000;
  v8 = 0x676E6F4C64616572;
  if (v2 != 4)
  {
    v8 = 1702257011;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701538156;
  if (v2 != 1)
  {
    v10 = 0x656B696C736964;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PersonalizationScript.BrowseRequirement.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1C6CA2980(a1, *v1);
  MEMORY[0x1CCA56740](v2);
  sub_1C6D79610();
}

uint64_t PersonalizationScript.BrowseRequirement.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  sub_1C6CA2980(v5, v1);
  MEMORY[0x1CCA56740](v2);
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C96CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1C6B56EAC(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_1C6B62A9C(v3, v5);
}

uint64_t sub_1C6C96D4C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  sub_1C6CA2980(v5, v1);
  MEMORY[0x1CCA56740](v2);
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t PersonalizationScript.Destination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B16F28(a1, v9);
  PersonalizationScript.Tag.init(from:)(v9, v10);
  if (v2)
  {

    sub_1C6B16F28(a1, v9);
    sub_1C6CA5DCC();
    sub_1C6CA5E20();
    sub_1C6D79740();
    v5 = 0;
    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    v5 = v10[0];
    v6 = v10[1];
    v7 = v11;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1C6C96FC4(void *a1, void (*a2)(void))
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2E0();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  if (v6 < 0)
  {
    a2();
  }

  else
  {
    sub_1C6CA53B8();
  }

  sub_1C6D7A110();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t PersonalizationScript.Destination.TodayFeed.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6C97270()
{
  if (v0[2] < 0)
  {
    MEMORY[0x1CCA56740](1);

    return sub_1C6D79610();
  }

  else
  {
    v2 = *v0;
    v1 = v0[1];
    MEMORY[0x1CCA56740](0);
    return PersonalizationScript.Tag.hash(into:)();
  }
}

uint64_t sub_1C6C97330()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C6D7A260();
  if (v3 < 0)
  {
    MEMORY[0x1CCA56740](1);
    sub_1C6D79610();
  }

  else
  {
    MEMORY[0x1CCA56740](0);
    PersonalizationScript.Tag.hash(into:)();
  }

  return sub_1C6D7A2B0();
}