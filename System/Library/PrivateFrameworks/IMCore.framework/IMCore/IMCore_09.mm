uint64_t sub_1A842FC04()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 240);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12(v2);
}

uint64_t sub_1A842FCF0()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 232);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A842FDD4()
{
  v0 = sub_1A84E570C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A84E558C();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  sub_1A84E56FC();
  sub_1A84E56EC();
  (*(v1 + 8))(v4, v0);
  sub_1A84E552C();

  v12 = v11;
  v13 = v19[1];
  sub_1A8462834();
  if (v13)
  {
    (*(v5 + 8))(v11, v20);
  }

  else
  {
    v14 = [v19[0] transferName];
    sub_1A84E5DBC();

    sub_1A84E552C();

    v12 = sub_1A84E555C();
    v15 = *(v5 + 8);
    v16 = v9;
    v17 = v20;
    v15(v16, v20);
    v15(v11, v17);
  }

  return v12;
}

uint64_t sub_1A8430040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84300A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.Message.Reply.threadOriginatorMessageID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.Message.Reply.rangeInOriginatingMessagePart.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ImportExport.Message.Reply.init(threadOriginatorMessageID:rangeInOriginatingMessagePart:threadOriginatorMessagePartIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ImportExport.Message.Reply.init(threadOriginatorMessage:messagePartIndex:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0 || (v5 = a1[27], *(v5 + 16) <= a2))
  {
    sub_1A84E646C();

    v14 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v14);

    sub_1A842B9CC();
    swift_allocError();
    *v15 = 0xD00000000000001BLL;
    *(v15 + 8) = 0x80000001A8530D40;
    *(v15 + 16) = 1;
    swift_willThrow();
    return sub_1A84302EC(a1);
  }

  else
  {
    v7 = *(type metadata accessor for ImportExport.MessagePart() - 8);
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2;
    v10 = *a1;
    v9 = a1[1];
    v11 = *(v8 + 40);
    v12 = *(v8 + 48);

    result = sub_1A84302EC(a1);
    *a3 = v10;
    a3[1] = v9;
    a3[2] = v11;
    a3[3] = v12;
    a3[4] = a2;
  }

  return result;
}

uint64_t sub_1A84302EC(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.Message();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8430348()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1A84303A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8430D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84303C8(uint64_t a1)
{
  v2 = sub_1A843062C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8430404(uint64_t a1)
{
  v2 = sub_1A843062C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.Reply.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E78E8, &qword_1A8504410);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v14 = v1[4];
  v11 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843062C();
  sub_1A84E68AC();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_1A84E66CC();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    type metadata accessor for _NSRange(0);
    sub_1A84308D0(&qword_1EB2E78F8);
    sub_1A84E672C();
    LOBYTE(v18) = 2;
    sub_1A84E670C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A843062C()
{
  result = qword_1EB2E78F0;
  if (!qword_1EB2E78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78F0);
  }

  return result;
}

uint64_t ImportExport.Message.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7900, &qword_1A8504418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843062C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_1A84E660C();
  v13 = v12;
  v14 = v11;
  type metadata accessor for _NSRange(0);
  v22 = 1;
  sub_1A84308D0(&qword_1EB2E7908);
  sub_1A84E666C();
  v18 = v21;
  v19 = v20;
  LOBYTE(v20) = 2;
  v16 = sub_1A84E664C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v17 = v18;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v16;

  sub_1A8244788(a1);
}

uint64_t sub_1A84308D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ImportExport.Message.Reply.init(replyingToMessageID:replyingToMessageThreadOriginator:replyingToMessageLength:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = a3;
  a4[4] = 0;
  return result;
}

uint64_t ImportExport.Message.Reply.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x796C706552, 0xE500000000000000);
  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8530D60);
  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0xD000000000000024, 0x80000001A8530D80);
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD000000000000021, 0x80000001A8530DB0);
  v7 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](58, 0xE100000000000000);
  v8 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

__n128 sub_1A8430B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8430B4C(uint64_t a1, int a2)
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

uint64_t sub_1A8430B94(uint64_t result, int a2, int a3)
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

unint64_t sub_1A8430C00()
{
  result = qword_1EB2E7910;
  if (!qword_1EB2E7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7910);
  }

  return result;
}

unint64_t sub_1A8430C58()
{
  result = qword_1EB2E7918;
  if (!qword_1EB2E7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7918);
  }

  return result;
}

unint64_t sub_1A8430CB0()
{
  result = qword_1EB2E7920;
  if (!qword_1EB2E7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7920);
  }

  return result;
}

uint64_t sub_1A8430D04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001A8530DE0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8530E00 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A8530E20 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

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

uint64_t sub_1A8430E50()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t ImportExport.MessagePart.init(id:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:parentMessageID:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v31 = sub_1A84E5B9C();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  LOBYTE(a5) = *a5;
  v33 = *(a6 + 32);
  v54 = *a19;
  v34 = type metadata accessor for ImportExport.MessagePart();
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v35 = v34[21];
  *&v55[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a25;
  *(a9 + 48) = a26;
  v36 = (a9 + v34[19]);
  *v36 = a3;
  v36[1] = a4;
  v37 = *(a9 + 72);

  v38 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v38;
  *(a9 + 96) = v33;
  v39 = *(a9 + 120);
  v40 = *(a9 + 152);
  v55[2] = *(a9 + 136);
  v55[3] = v40;
  v55[4] = *(a9 + 168);
  v55[0] = *(a9 + 104);
  v55[1] = v39;
  sub_1A824B2D4(v55, &qword_1EB2E6F58, &qword_1A8501388);
  v41 = *a7;
  *(a9 + 120) = a7[1];
  v42 = a7[3];
  *(a9 + 136) = a7[2];
  *(a9 + 152) = v42;
  *(a9 + 168) = a7[4];
  *(a9 + 104) = v41;
  v43 = (a9 + v34[12]);
  *v43 = a8;
  v43[1] = a10;
  v44 = (a9 + v34[13]);
  *v44 = a11;
  v44[1] = a12;
  v45 = (a9 + v34[14]);
  *v45 = a13;
  v45[1] = a14;
  v46 = (a9 + v34[15]);
  *v46 = a15;
  v46[1] = a16;
  sub_1A83F5918(a11, a12);
  v47 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v47 - 8) + 8))(a9 + v35, v47);
  v56 = a17;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a11, a12);
  *(a9 + v34[16]) = a18;
  *(a9 + v34[17]) = v54;
  *(a9 + v34[18]) = a20;
  result = sub_1A8412580(a22, a9 + v34[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v34[20]) = a21;
  *(a9 + 24) = a23;
  *(a9 + 32) = a24;
  *(a9 + 56) = a27;
  return result;
}

uint64_t type metadata accessor for ImportExport.MessagePart()
{
  result = qword_1EB2E79D8;
  if (!qword_1EB2E79D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.MessagePart.update(parentMessageID:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v9 = sub_1A84E5B9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v6[1];
  v47 = *v6;
  v12 = type metadata accessor for ImportExport.MessagePart();
  v13 = (v6 + v12[19]);
  v46 = *v13;
  v37 = v13[1];
  v41 = *(v6 + 16);
  v48 = v6[12];
  v14 = *(v6 + 21);
  v15 = *(v6 + 15);
  v16 = *(v6 + 17);
  v62 = *(v6 + 19);
  v63 = v14;
  v60 = v15;
  v61 = v16;
  v59 = *(v6 + 13);
  v17 = v12[13];
  v18 = (v6 + v12[12]);
  v51 = *v18;
  v40 = v18[1];
  v53 = *(v6 + v17);
  v52 = *(v6 + v17 + 8);
  v19 = v12[15];
  v20 = (v6 + v12[14]);
  v21 = v20[1];
  v49 = *v20;
  v50 = *(v6 + v19);
  v42 = *(v6 + v19 + 8);
  v22 = v12[21];
  v39 = *(v7 + 5);
  v38 = *(v7 + 4);

  sub_1A8243D74(&v59, v64, &qword_1EB2E6F58, &qword_1A8501388);

  v23 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v43 = *(v7 + v12[16]);
  v45 = *(v7 + v12[17]);
  v44 = *(v7 + v12[18]);
  v24 = *(v7 + v12[20]);
  sub_1A8243D74(v7 + v12[11], a6 + v12[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0;
  v25 = v12[21];
  *&v64[0] = 0;

  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a6 + 16) = v41;
  *a6 = v47;
  *(a6 + 8) = v11;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  v26 = (a6 + v12[19]);
  *v26 = v46;
  v26[1] = v37;
  v27 = *(a6 + 72);

  *(a6 + 64) = v38;
  *(a6 + 80) = v39;
  *(a6 + 96) = v48;
  v28 = *(a6 + 136);
  v64[1] = *(a6 + 120);
  v64[2] = v28;
  v29 = *(a6 + 168);
  v64[3] = *(a6 + 152);
  v64[4] = v29;
  v64[0] = *(a6 + 104);
  sub_1A824B2D4(v64, &qword_1EB2E6F58, &qword_1A8501388);
  v30 = v59;
  *(a6 + 120) = v60;
  v31 = v62;
  *(a6 + 136) = v61;
  *(a6 + 152) = v31;
  *(a6 + 168) = v63;
  *(a6 + 104) = v30;
  v32 = (a6 + v12[12]);
  *v32 = v51;
  v32[1] = v40;
  v33 = (a6 + v12[13]);
  *v33 = v53;
  v33[1] = v52;
  v34 = (a6 + v12[14]);
  *v34 = v49;
  v34[1] = v21;
  v35 = (a6 + v12[15]);
  *v35 = v50;
  v35[1] = v42;
  sub_1A83F5918(v53, v52);
  (*(*(v23 - 8) + 8))(a6 + v25, v23);
  sub_1A84E5B8C();
  sub_1A84E594C();
  *(a6 + v12[16]) = v43;
  *(a6 + v12[17]) = v45;
  *(a6 + v12[18]) = v44;
  *(a6 + v12[20]) = v24;
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 56) = a5;
}

uint64_t ImportExport.MessagePart.update(attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A84E5B9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = *v2;
  v36 = v2[1];
  v7 = type metadata accessor for ImportExport.MessagePart();
  v8 = (v2 + v7[19]);
  v50 = *v8;
  v37 = v8[1];
  v45 = *(v2 + 16);
  v52 = v2[12];
  v9 = *(v2 + 21);
  v10 = *(v2 + 15);
  v11 = *(v2 + 17);
  v61 = *(v2 + 19);
  v62 = v9;
  v59 = v10;
  v60 = v11;
  v58 = *(v2 + 13);
  v12 = v7[13];
  v13 = (v2 + v7[12]);
  v55 = *v13;
  v43 = v13[1];
  v57 = *(v2 + v12);
  v56 = *(v2 + v12 + 8);
  v14 = v7[15];
  v15 = (v2 + v7[14]);
  v53 = *v15;
  v44 = v15[1];
  v54 = *(v2 + v14);
  v46 = *(v2 + v14 + 8);
  v16 = v7[21];
  v42 = *(v3 + 5);
  v41 = *(v3 + 4);

  sub_1A8243D74(&v58, v63, &qword_1EB2E6F58, &qword_1A8501388);

  v17 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v47 = *(v3 + v7[16]);
  v49 = *(v3 + v7[17]);
  v48 = *(v3 + v7[18]);
  v35 = *(v3 + v7[20]);
  v18 = v7[11];
  sub_1A84340BC(a1, a2 + v18, type metadata accessor for ImportExport.Attachment);
  v19 = type metadata accessor for ImportExport.Attachment();
  (*(*(v19 - 8) + 56))(a2 + v18, 0, 1, v19);
  v20 = v3[4];
  v40 = v3[3];
  v22 = v3[5];
  v21 = v3[6];
  v38 = v3[7];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0;
  v23 = v7[21];
  *&v63[0] = 0;

  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a2 + 16) = v45;
  *a2 = v51;
  *(a2 + 8) = v36;
  *(a2 + 40) = v22;
  *(a2 + 48) = v21;
  v24 = (a2 + v7[19]);
  *v24 = v50;
  v24[1] = v37;
  v25 = *(a2 + 72);

  *(a2 + 64) = v41;
  *(a2 + 80) = v42;
  *(a2 + 96) = v52;
  v26 = *(a2 + 136);
  v63[1] = *(a2 + 120);
  v63[2] = v26;
  v27 = *(a2 + 168);
  v63[3] = *(a2 + 152);
  v63[4] = v27;
  v63[0] = *(a2 + 104);
  sub_1A824B2D4(v63, &qword_1EB2E6F58, &qword_1A8501388);
  v28 = v58;
  *(a2 + 120) = v59;
  v29 = v61;
  *(a2 + 136) = v60;
  *(a2 + 152) = v29;
  *(a2 + 168) = v62;
  *(a2 + 104) = v28;
  v30 = (a2 + v7[12]);
  *v30 = v55;
  v30[1] = v43;
  v31 = (a2 + v7[13]);
  *v31 = v57;
  v31[1] = v56;
  v32 = (a2 + v7[14]);
  *v32 = v53;
  v32[1] = v44;
  v33 = (a2 + v7[15]);
  *v33 = v54;
  v33[1] = v46;
  sub_1A83F5918(v57, v56);
  (*(*(v17 - 8) + 8))(a2 + v23, v17);
  sub_1A84E5B8C();
  result = sub_1A84E594C();
  *(a2 + v7[16]) = v47;
  *(a2 + v7[17]) = v49;
  *(a2 + v7[18]) = v48;
  *(a2 + v7[20]) = v35;
  *(a2 + 24) = v40;
  *(a2 + 32) = v20;
  *(a2 + 56) = v38;
  return result;
}

uint64_t ImportExport.MessagePart.dataDetectorsInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.MessagePart() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t ImportExport.MessagePart.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.MessagePart.parentMessageID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.MessagePart.rangeInParent.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ImportExport.MessagePart.reply.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = *(v1 + 88);
}

__n128 ImportExport.MessagePart.reply.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 72);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v6;
  *(v1 + 96) = v3;
  return result;
}

uint64_t ImportExport.MessagePart.reaction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v9 = *(v1 + 136);
  v10 = v3;
  v11 = *(v1 + 168);
  v4 = v11;
  v8[0] = *(v1 + 104);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_1A8243D74(v8, &v7, &qword_1EB2E6F58, &qword_1A8501388);
}

__n128 ImportExport.MessagePart.reaction.setter(__int128 *a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v8[2] = *(v1 + 136);
  v8[3] = v4;
  v8[4] = *(v1 + 168);
  v8[0] = *(v1 + 104);
  v8[1] = v3;
  sub_1A824B2D4(v8, &qword_1EB2E6F58, &qword_1A8501388);
  v5 = *a1;
  *(v1 + 120) = a1[1];
  v6 = a1[3];
  *(v1 + 136) = a1[2];
  *(v1 + 152) = v6;
  result = a1[4];
  *(v1 + 168) = result;
  *(v1 + 104) = v5;
  return result;
}

BOOL ImportExport.MessagePart.hasAttachment.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ImportExport.MessagePart();
  sub_1A8243D74(v0 + *(v5 + 44), v4, &qword_1EB2E6F50, &unk_1A8502920);
  v6 = type metadata accessor for ImportExport.Attachment();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1A824B2D4(v4, &qword_1EB2E6F50, &unk_1A8502920);
  return v7;
}

uint64_t ImportExport.MessagePart.balloonBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.MessagePart() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.MessagePart.payloadData.getter()
{
  v1 = v0 + *(type metadata accessor for ImportExport.MessagePart() + 52);
  v2 = *v1;
  sub_1A83F5918(*v1, *(v1 + 8));
  return v2;
}

uint64_t ImportExport.MessagePart.expressiveSendStyleID.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.MessagePart() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.MessagePart.expressiveSendPlayedTime.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.MessagePart() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.MessagePart.timeExpressiveSendPlayed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = (v1 + *(type metadata accessor for ImportExport.MessagePart() + 60));
  if (v7[1])
  {
    v8 = *v7;
    v9 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v10 = sub_1A84E5D8C();
    v11 = [v9 dateFromString_];

    if (v11)
    {
      sub_1A84E569C();

      v12 = sub_1A84E56DC();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v16 = sub_1A84E56DC();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    }

    return sub_1A8412580(v6, a1, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  else
  {
    v13 = sub_1A84E56DC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t ImportExport.MessagePart.expireState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImportExport.MessagePart();
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t ImportExport.MessagePart.body.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.MessagePart() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.MessagePart.links.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessagePart() + 80));
}

uint64_t sub_1A84324E8@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.MessagePart() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A8432550(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.MessagePart() + 84);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.MessagePart.$dataDetectorsInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.MessagePart() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

unint64_t sub_1A8432614(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x546567617373656DLL;
      break;
    case 2:
      result = 0x654D746E65726170;
      break;
    case 3:
      result = 0x506E4965676E6172;
      break;
    case 4:
      result = 0x65636E6575716573;
      break;
    case 5:
      result = 0x796C706572;
      break;
    case 6:
      result = 0x6E6F697463616572;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    case 8:
      result = 0x426E6F6F6C6C6162;
      break;
    case 9:
      result = 0x4464616F6C796170;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x6172697078457369;
      break;
    case 13:
      result = 0x7453657269707865;
      break;
    case 14:
      result = 0x6E6F746544736177;
      break;
    case 15:
      result = 2036625250;
      break;
    case 16:
      result = 0x736B6E696CLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8432844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8435A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A843286C(uint64_t a1)
{
  v2 = sub_1A8432FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84328A8(uint64_t a1)
{
  v2 = sub_1A8432FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessagePart.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7928, &qword_1A8504618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8432FD8();
  sub_1A84E68AC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v52[0]) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    LOBYTE(v52[0]) = *(v3 + 16);
    LOBYTE(v47) = 1;
    sub_1A843302C();
    sub_1A84E672C();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v52[0]) = 2;
    sub_1A84E66CC();
    v52[0] = *(v3 + 5);
    LOBYTE(v47) = 3;
    type metadata accessor for _NSRange(0);
    sub_1A8435344(&qword_1EB2E78F8, type metadata accessor for _NSRange);
    sub_1A84E672C();
    v15 = v3[7];
    LOBYTE(v52[0]) = 4;
    sub_1A84E670C();
    v54 = v3[8];
    v16 = *(v3 + 11);
    v55 = *(v3 + 9);
    v56 = v16;
    v53 = 5;
    sub_1A8433080();

    sub_1A84E66BC();

    v17 = *(v3 + 15);
    v18 = *(v3 + 19);
    v52[2] = *(v3 + 17);
    v52[3] = v18;
    v52[4] = *(v3 + 21);
    v52[0] = *(v3 + 13);
    v52[1] = v17;
    v19 = *(v3 + 17);
    v48 = *(v3 + 15);
    v49 = v19;
    v20 = *(v3 + 21);
    v50 = *(v3 + 19);
    v51 = v20;
    v47 = *(v3 + 13);
    v46 = 6;
    sub_1A8243D74(v52, v45, &qword_1EB2E6F58, &qword_1A8501388);
    sub_1A84330D4();
    sub_1A84E66BC();
    v45[2] = v49;
    v45[3] = v50;
    v45[4] = v51;
    v45[0] = v47;
    v45[1] = v48;
    sub_1A824B2D4(v45, &qword_1EB2E6F58, &qword_1A8501388);
    v21 = type metadata accessor for ImportExport.MessagePart();
    v22 = v21[11];
    LOBYTE(v43) = 7;
    type metadata accessor for ImportExport.Attachment();
    sub_1A8435344(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment);
    sub_1A84E66BC();
    v23 = (v3 + v21[12]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v43) = 8;
    sub_1A84E66AC();
    v26 = (v3 + v21[13]);
    v27 = v26[1];
    v43 = *v26;
    v44 = v27;
    v42 = 9;
    sub_1A83F5918(v43, v27);
    sub_1A8433128();
    sub_1A84E66BC();
    sub_1A83F5980(v43, v44);
    v28 = (v3 + v21[14]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v43) = 10;
    sub_1A84E66AC();
    v31 = (v3 + v21[15]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v43) = 11;
    sub_1A84E66AC();
    v34 = *(v3 + v21[16]);
    LOBYTE(v43) = 12;
    sub_1A84E66DC();
    LOBYTE(v43) = *(v3 + v21[17]);
    v42 = 13;
    sub_1A843317C();
    sub_1A84E66BC();
    v35 = *(v3 + v21[18]);
    LOBYTE(v43) = 14;
    sub_1A84E66DC();
    v36 = (v3 + v21[19]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v43) = 15;
    sub_1A84E66CC();
    v43 = *(v3 + v21[20]);
    v42 = 16;
    sub_1A83EA2FC(&qword_1EB2E7960, &qword_1A8504620);
    sub_1A8433FD0(&qword_1EB2E7968, &qword_1EB2E7200);
    sub_1A84E66BC();
    v39 = v21[21];
    LOBYTE(v43) = 17;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A843406C(&qword_1EB2E7378);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A8432FD8()
{
  result = qword_1EB2E7930;
  if (!qword_1EB2E7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7930);
  }

  return result;
}

unint64_t sub_1A843302C()
{
  result = qword_1EB2E7938;
  if (!qword_1EB2E7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7938);
  }

  return result;
}

unint64_t sub_1A8433080()
{
  result = qword_1EB2E7940;
  if (!qword_1EB2E7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7940);
  }

  return result;
}

unint64_t sub_1A84330D4()
{
  result = qword_1EB2E7948;
  if (!qword_1EB2E7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7948);
  }

  return result;
}

unint64_t sub_1A8433128()
{
  result = qword_1EB2E7950;
  if (!qword_1EB2E7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7950);
  }

  return result;
}

unint64_t sub_1A843317C()
{
  result = qword_1EB2E7958;
  if (!qword_1EB2E7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7958);
  }

  return result;
}

uint64_t ImportExport.MessagePart.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v96 - v5;
  v7 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v96 - v9;
  v11 = sub_1A83EA2FC(&qword_1EB2E7970, &qword_1A8504628);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v96 - v13;
  v15 = sub_1A84E5B9C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = type metadata accessor for ImportExport.MessagePart();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v21 + 22) = 0;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 4) = 0u;
  v120 = v19;
  v22 = *(v19 + 84);
  *&v115 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v102 = v22;
  sub_1A84E594C();
  v24 = a1[3];
  v23 = a1[4];
  v101 = a1;
  sub_1A82471E0(a1, v24);
  sub_1A8432FD8();
  v25 = v105;
  sub_1A84E689C();
  if (v25)
  {
    v105 = v25;
    sub_1A8244788(v101);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_4;
  }

  v26 = v6;
  v27 = v99;
  v28 = v100;
  LOBYTE(v115) = 0;
  v29 = sub_1A84E660C();
  v105 = 0;
  *v21 = v29;
  *(v21 + 1) = v30;
  LOBYTE(v113[0]) = 1;
  sub_1A8433E2C();
  v48 = v105;
  sub_1A84E666C();
  if (v48)
  {
    v105 = v48;
    (*(v27 + 8))(v14, v28);
    LODWORD(v100) = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    goto LABEL_23;
  }

  v21[16] = v115;
  LOBYTE(v115) = 2;
  v49 = sub_1A84E660C();
  v105 = 0;
  *(v21 + 3) = v49;
  *(v21 + 4) = v50;
  type metadata accessor for _NSRange(0);
  LOBYTE(v113[0]) = 3;
  sub_1A8435344(&qword_1EB2E7908, type metadata accessor for _NSRange);
  v56 = v105;
  sub_1A84E666C();
  if (v56)
  {
    v105 = v56;
LABEL_30:
    (*(v27 + 8))(v14, v28);
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v100) = 1;
    goto LABEL_23;
  }

  *(v21 + 40) = v115;
  LOBYTE(v115) = 4;
  v57 = sub_1A84E664C();
  v105 = 0;
  *(v21 + 7) = v57;
  LOBYTE(v113[0]) = 5;
  sub_1A8433E80();
  v58 = v105;
  sub_1A84E65FC();
  v105 = v58;
  if (v58)
  {
    goto LABEL_30;
  }

  v59 = v117;
  v60 = *(v21 + 9);
  v96 = v116;
  v97 = v115;

  v61 = v96;
  *(v21 + 4) = v97;
  *(v21 + 5) = v61;
  *(v21 + 12) = v59;
  v114 = 6;
  sub_1A8433ED4();
  v62 = v105;
  sub_1A84E65FC();
  v105 = v62;
  if (v62)
  {
    goto LABEL_30;
  }

  v110 = v117;
  v111 = v118;
  v108 = v115;
  v109 = v116;
  v63 = *(v21 + 120);
  v64 = *(v21 + 152);
  v113[2] = *(v21 + 136);
  v113[3] = v64;
  v113[4] = *(v21 + 168);
  v65 = *(v21 + 104);
  v113[1] = v63;
  v112 = v119;
  v113[0] = v65;
  sub_1A824B2D4(v113, &qword_1EB2E6F58, &qword_1A8501388);
  v66 = v108;
  *(v21 + 120) = v109;
  v67 = v111;
  *(v21 + 136) = v110;
  *(v21 + 152) = v67;
  *(v21 + 168) = v112;
  *(v21 + 104) = v66;
  type metadata accessor for ImportExport.Attachment();
  LOBYTE(v107) = 7;
  sub_1A8435344(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment);
  v68 = v105;
  sub_1A84E65FC();
  v105 = v68;
  if (v68)
  {
    goto LABEL_30;
  }

  sub_1A8412580(v10, &v21[v120[11]], &qword_1EB2E6F50, &unk_1A8502920);
  LOBYTE(v107) = 8;
  v69 = v105;
  v70 = sub_1A84E65DC();
  v105 = v69;
  if (v69)
  {
    (*(v27 + 8))(v14, v28);
    v36 = 0;
    v35 = 0;
    v34 = 0;
    LODWORD(v100) = 1;
    v37 = 1;
    goto LABEL_23;
  }

  v72 = &v21[v120[12]];
  *v72 = v70;
  v72[1] = v71;
  v106 = 9;
  sub_1A8433F28();
  v73 = v105;
  sub_1A84E65FC();
  v105 = v73;
  if (v73)
  {
    (*(v27 + 8))(v14, v100);
    v35 = 0;
    v34 = 0;
    LODWORD(v100) = 1;
    v37 = 1;
    v36 = 1;
    goto LABEL_23;
  }

  *&v21[v120[13]] = v107;
  LOBYTE(v107) = 10;
  v74 = v105;
  v75 = sub_1A84E65DC();
  v105 = v74;
  if (v74)
  {
    (*(v27 + 8))(v14, v100);
    v34 = 0;
    LODWORD(v100) = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    goto LABEL_23;
  }

  v77 = &v21[v120[14]];
  *v77 = v75;
  v77[1] = v76;
  LOBYTE(v107) = 11;
  v78 = v105;
  v79 = sub_1A84E65DC();
  v105 = v78;
  if (v78)
  {
    (*(v27 + 8))(v14, v100);
    LODWORD(v100) = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    v34 = 1;
LABEL_23:
    sub_1A8244788(v101);
    v51 = *(v21 + 1);

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (!v100)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v81 = &v21[v120[15]];
  *v81 = v79;
  v81[1] = v80;
  LOBYTE(v107) = 12;
  v82 = v105;
  v83 = sub_1A84E661C();
  v105 = v82;
  if (v82)
  {
    goto LABEL_43;
  }

  v21[v120[16]] = v83 & 1;
  v106 = 13;
  sub_1A8433F7C();
  v84 = v105;
  sub_1A84E65FC();
  v105 = v84;
  if (v84)
  {
    goto LABEL_43;
  }

  v21[v120[17]] = v107;
  LOBYTE(v107) = 14;
  v85 = v105;
  v86 = sub_1A84E661C();
  v105 = v85;
  if (v85 || (v21[v120[18]] = v86 & 1, LOBYTE(v107) = 15, v87 = v105, v88 = sub_1A84E660C(), (v105 = v87) != 0))
  {
LABEL_43:
    (*(v27 + 8))(v14, v100);
    sub_1A8244788(v101);
    v90 = 0;
    v91 = 0;
LABEL_44:
    v92 = *(v21 + 1);

    v54 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v53 = v90;
    v52 = v91;
LABEL_24:
    v55 = *(v21 + 4);
    v32 = v53;
    v31 = v52;
    v33 = v54;

LABEL_4:
    v38 = *(v21 + 9);

    v39 = *(v21 + 120);
    v40 = *(v21 + 152);
    v117 = *(v21 + 136);
    v118 = v40;
    v119 = *(v21 + 168);
    v115 = *(v21 + 104);
    v116 = v39;
    sub_1A824B2D4(&v115, &qword_1EB2E6F58, &qword_1A8501388);
    if (v37)
    {
      sub_1A824B2D4(&v21[v120[11]], &qword_1EB2E6F50, &unk_1A8502920);
      v41 = v120;
      if (!v36)
      {
LABEL_6:
        if (!v35)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v41 = v120;
      if (!v36)
      {
        goto LABEL_6;
      }
    }

    v44 = *&v21[v41[12] + 8];

    if (!v35)
    {
LABEL_7:
      if (!v34)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    sub_1A83F5980(*&v21[v41[13]], *&v21[v41[13] + 8]);
    if (!v34)
    {
LABEL_8:
      if (!v33)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v45 = *&v21[v41[14] + 8];

    if (!v33)
    {
LABEL_9:
      if (!v32)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v46 = *&v21[v41[15] + 8];

    if (!v32)
    {
LABEL_10:
      if (!v31)
      {
        return (*(v103 + 8))(&v21[v102], v104);
      }

LABEL_11:
      v42 = *&v21[v41[20]];

      return (*(v103 + 8))(&v21[v102], v104);
    }

LABEL_18:
    v47 = *&v21[v41[19] + 8];

    if (!v31)
    {
      return (*(v103 + 8))(&v21[v102], v104);
    }

    goto LABEL_11;
  }

  v93 = &v21[v120[19]];
  *v93 = v88;
  v93[1] = v89;
  sub_1A83EA2FC(&qword_1EB2E7960, &qword_1A8504620);
  v106 = 16;
  sub_1A8433FD0(&qword_1EB2E79A0, &qword_1EB2E7218);
  v94 = v105;
  sub_1A84E65FC();
  v105 = v94;
  if (v94)
  {
    (*(v27 + 8))(v14, v100);
    sub_1A8244788(v101);
    v91 = 0;
    v90 = 1;
    goto LABEL_44;
  }

  *&v21[v120[20]] = v107;
  LOBYTE(v107) = 17;
  sub_1A843406C(&qword_1EB2E7390);
  v95 = v105;
  sub_1A84E666C();
  v105 = v95;
  if (v95)
  {
    (*(v27 + 8))(v14, v100);
    sub_1A8244788(v101);
    v90 = 1;
    v91 = 1;
    goto LABEL_44;
  }

  (*(v27 + 8))(v14, v100);
  (*(v103 + 40))(&v21[v102], v26, v104);
  sub_1A84340BC(v21, v98, type metadata accessor for ImportExport.MessagePart);
  sub_1A8244788(v101);
  return sub_1A8434124(v21);
}

unint64_t sub_1A8433E2C()
{
  result = qword_1EB2E7978;
  if (!qword_1EB2E7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7978);
  }

  return result;
}

unint64_t sub_1A8433E80()
{
  result = qword_1EB2E7980;
  if (!qword_1EB2E7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7980);
  }

  return result;
}

unint64_t sub_1A8433ED4()
{
  result = qword_1EB2E7988;
  if (!qword_1EB2E7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7988);
  }

  return result;
}

unint64_t sub_1A8433F28()
{
  result = qword_1EB2E7990;
  if (!qword_1EB2E7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7990);
  }

  return result;
}

unint64_t sub_1A8433F7C()
{
  result = qword_1EB2E7998;
  if (!qword_1EB2E7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7998);
  }

  return result;
}

uint64_t sub_1A8433FD0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7960, &qword_1A8504620);
    sub_1A8435344(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A843406C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6F60, &qword_1A8501F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84340BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8434124(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.MessagePart();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImportExport.MessagePart.description.getter()
{
  v1 = v0;
  v40 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v2 = *(*(v40 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - v5;
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1A84E646C();
  v43 = v44[0];
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x506567617373654DLL, 0xEB00000000747261);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8530E50);
  MEMORY[0x1AC56A990](v1[3], v1[4]);
  MEMORY[0x1AC56A990](0x6E6575716573202CLL, 0xEE00203A44496563);
  *&v44[0] = *(v0 + 56);
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530E70);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = sub_1A84E632C();
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A8530E90);
  v10 = *(v0 + 120);
  v11 = *(v0 + 152);
  v44[2] = *(v0 + 136);
  v44[3] = v11;
  v44[4] = *(v0 + 168);
  v44[0] = *(v0 + 104);
  v44[1] = v10;
  v12 = *(v0 + 120);
  v13 = *(v0 + 152);
  v42[2] = *(v0 + 136);
  v42[3] = v13;
  v42[4] = *(v0 + 168);
  v42[0] = *(v0 + 104);
  v42[1] = v12;
  sub_1A8243D74(v44, &v41, &qword_1EB2E6F58, &qword_1A8501388);
  sub_1A83EA2FC(&qword_1EB2E6F58, &qword_1A8501388);
  v14 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v14);

  MEMORY[0x1AC56A990](0x3A796C706572202CLL, 0xE900000000000020);
  *&v42[0] = *(v0 + 64);
  *(v42 + 8) = *(v0 + 72);
  *(&v42[1] + 8) = *(v0 + 88);

  sub_1A83EA2FC(&qword_1EB2E79A8, &qword_1A8504630);
  v15 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v15);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8530EB0);
  v16 = type metadata accessor for ImportExport.MessagePart();
  v17 = (v0 + v16[12]);
  v18 = v17[1];
  *&v42[0] = *v17;
  *(&v42[0] + 1) = v18;

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v19 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v19);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8530ED0);
  v20 = (v0 + v16[14]);
  v21 = v20[1];
  *&v42[0] = *v20;
  *(&v42[0] + 1) = v21;

  v22 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v22);

  MEMORY[0x1AC56A990](0x697078457369202CLL, 0xEF203A656C626172);
  if (*(v0 + v16[16]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v16[16]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v23, v24);

  MEMORY[0x1AC56A990](0x657269707865202CLL, 0xEF203A6574617453);
  LOBYTE(v42[0]) = *(v0 + v16[17]);
  sub_1A83EA2FC(&qword_1EB2E79B0, &qword_1A8504638);
  v25 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v25);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530EF0);
  if (*(v0 + v16[18]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v0 + v16[18]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v26, v27);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530F10);
  v28 = v16[11];
  v29 = v38;
  sub_1A8243D74(v1 + v28, v38, &qword_1EB2E6F50, &unk_1A8502920);
  v30 = type metadata accessor for ImportExport.Attachment();
  v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_1A824B2D4(v29, &qword_1EB2E6F50, &unk_1A8502920);
  if (v31 == 1)
  {
    v32 = 0x65736C6166;
  }

  else
  {
    v32 = 1702195828;
  }

  if (v31 == 1)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v32, v33);

  MEMORY[0x1AC56A990](0x3A736B6E696C202CLL, 0xE900000000000020);
  *&v42[0] = *(v1 + v16[20]);

  sub_1A83EA2FC(&qword_1EB2E79B8, &qword_1A8504640);
  v34 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v34);

  MEMORY[0x1AC56A990](0x686361747461202CLL, 0xEE00203A746E656DLL);
  sub_1A8243D74(v1 + v28, v39, &qword_1EB2E6F50, &unk_1A8502920);
  v35 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v35);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return v43;
}

uint64_t static ImportExport.MessagePart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t ImportExport.MessagePart.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A84E5E5C();
}

uint64_t ImportExport.MessagePart.hashValue.getter()
{
  sub_1A84E684C();
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t ImportExport.MessagePart.MessageType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A8434950()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A8434B08@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.MessagePart.MessageType.init(rawValue:)(a1);
}

void sub_1A8434B14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6567617373656DLL;
  v5 = 0xE600000000000000;
  v6 = 0x6E6967756C70;
  v7 = 0xEA00000000006576;
  v8 = 0x6973736572707865;
  if (v2 != 4)
  {
    v8 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x796C706572;
  if (v2 != 1)
  {
    v10 = 0x6E6F697463616572;
    v9 = 0xE800000000000000;
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

uint64_t ImportExport.MessagePart.ExpireState.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A8434C34()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8434CFC()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A8434DB0()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8434F30@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.MessagePart.ExpireState.init(rawValue:)(a1);
}

void sub_1A8434F3C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (*v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
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

uint64_t ImportExport.MessagePart.MessageType.description.getter()
{
  v1 = *v0;
  v2 = 0xE700000000000000;
  v3 = 0x6567617373656DLL;
  strcpy(v12, "MessageType: ");
  HIWORD(v12[1]) = -4864;
  v4 = 0x6E6967756C70;
  v5 = 0xEA00000000006576;
  v6 = 0x6973736572707865;
  if (v1 != 4)
  {
    v6 = 0x73654D6F69647561;
    v5 = 0xEC00000065676173;
  }

  if (v1 == 3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE500000000000000;
  v8 = 0x796C706572;
  if (v1 != 1)
  {
    v8 = 0x6E6F697463616572;
    v7 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = v8;
    v2 = v7;
  }

  if (v1 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (v1 <= 2)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x1AC56A990](v9, v10);

  return v12[0];
}

uint64_t ImportExport.MessagePart.MessageType.name.getter()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 0x6E6967756C70;
  v4 = 0x6973736572707865;
  if (v1 != 4)
  {
    v4 = 0x73654D6F69647561;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x796C706572;
  if (v1 != 1)
  {
    v5 = 0x6E6F697463616572;
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

uint64_t ImportExport.MessagePart.ExpireState.description.getter()
{
  v1 = *v0;
  v2 = 0xEB00000000676E69;
  strcpy(v9, "ExpireState: ");
  HIWORD(v9[1]) = -4864;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1AC56A990](v6, v7);

  return v9[0];
}

uint64_t ImportExport.MessagePart.ExpireState.name.getter()
{
  v1 = 0x7269707845746F6ELL;
  v2 = 0x64657269707865;
  if (*v0 != 2)
  {
    v2 = 0x6465766173;
  }

  if (*v0)
  {
    v1 = 0x676E697269707865;
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

uint64_t sub_1A8435344(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A8435390()
{
  result = qword_1EB2E79C8;
  if (!qword_1EB2E79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E79C8);
  }

  return result;
}

unint64_t sub_1A84353E8()
{
  result = qword_1EB2E79D0;
  if (!qword_1EB2E79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E79D0);
  }

  return result;
}

uint64_t sub_1A843543C()
{
  v1 = *v0;
  v2 = 0xEB00000000676E69;
  strcpy(v9, "ExpireState: ");
  HIWORD(v9[1]) = -4864;
  v3 = 0x7269707845746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v1 != 2)
  {
    v5 = 0x6465766173;
    v4 = 0xE500000000000000;
  }

  if (v1)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1AC56A990](v6, v7);

  return v9[0];
}

void sub_1A8435540()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_1A8435764(319, &qword_1EB2E79E8);
    if (v1 <= 0x3F)
    {
      sub_1A8435764(319, &qword_1EB2E79F0);
      if (v2 <= 0x3F)
      {
        sub_1A841F208();
        if (v3 <= 0x3F)
        {
          sub_1A8435764(319, &qword_1EB2E73E8);
          if (v4 <= 0x3F)
          {
            sub_1A8435764(319, &qword_1EB2E79F8);
            if (v5 <= 0x3F)
            {
              sub_1A8435764(319, &qword_1EB2E7A00);
              if (v6 <= 0x3F)
              {
                sub_1A84357B0(319, &qword_1EB2E7A08, &qword_1EB2E7960, &qword_1A8504620, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1A84357B0(319, &qword_1EB2E7400, &unk_1EB2E8780, &qword_1A8502930, MEMORY[0x1E69A66A8]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A8435764(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A84E633C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A84357B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A83EC9D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _s23AttachmentDownloadErrorV9ErrorKindOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s23AttachmentDownloadErrorV9ErrorKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A8435988()
{
  result = qword_1EB2E7A10;
  if (!qword_1EB2E7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A10);
  }

  return result;
}

unint64_t sub_1A84359E0()
{
  result = qword_1EB2E7A18;
  if (!qword_1EB2E7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A18);
  }

  return result;
}

unint64_t sub_1A8435A38()
{
  result = qword_1EB2E7A20;
  if (!qword_1EB2E7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A20);
  }

  return result;
}

uint64_t sub_1A8435A8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D746E65726170 && a2 == 0xEF44496567617373 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x506E4965676E6172 && a2 == 0xED0000746E657261 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C706572 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697463616572 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x426E6F6F6C6C6162 && a2 == 0xEF4449656C646E75 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4464616F6C796170 && a2 == 0xEB00000000617461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8530F30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8530F50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6172697078457369 && a2 == 0xEB00000000656C62 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7453657269707865 && a2 == 0xEB00000000657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F746544736177 && a2 == 0xEC00000064657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8530F70 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1A8436044()
{
  result = qword_1EB2E7A28;
  if (!qword_1EB2E7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A28);
  }

  return result;
}

unint64_t sub_1A8436098()
{
  result = qword_1EB2E7A30;
  if (!qword_1EB2E7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A30);
  }

  return result;
}

uint64_t sub_1A84360F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x616E614D74616863;
    }

    if (v2)
    {
      v4 = 0x80000001A852EAC0;
    }

    else
    {
      v4 = 0xEF656E6F5A656574;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001A852EAE0;
    v3 = 0xD000000000000015;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001A852EB00;
    }

    else
    {
      v4 = 0x80000001A852EB20;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0x616E614D74616863;
    }

    if (a2)
    {
      v6 = 0x80000001A852EAC0;
    }

    else
    {
      v6 = 0xEF656E6F5A656574;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x80000001A852EAE0;
    if (v3 != 0xD000000000000015)
    {
LABEL_37:
      v8 = sub_1A84E67AC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001A852EB00;
    }

    else
    {
      v6 = 0x80000001A852EB20;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1A8436288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "updateT2NeedingSync";
  v4 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v11 = 0xD000000000000019;
      }

      else
      {
        v11 = 0xD00000000000001ELL;
      }

      if (v4 == 5)
      {
        v12 = "writable_attachment_counts";
      }

      else
      {
        v12 = "written_attachment_counts";
      }
    }

    else
    {
      v13 = "written_message_update_counts";
      v14 = 0xD000000000000023;
      if (a1 != 8)
      {
        v14 = 0xD000000000000022;
        v13 = "able_message_counts";
      }

      if (a1 == 7)
      {
        v11 = 0xD00000000000001DLL;
      }

      else
      {
        v11 = v14;
      }

      if (v4 == 7)
      {
        v12 = "writable_message_update_counts";
      }

      else
      {
        v12 = v13;
      }
    }
  }

  else
  {
    v5 = "written_chat_counts";
    v6 = 0xD000000000000017;
    v7 = "writable_message_counts";
    v8 = 0xD000000000000016;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001ALL;
      v7 = "written_message_counts";
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "writable_chat_counts";
    if (a1)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = 0xD000000000000014;
    }

    if (!a1)
    {
      v9 = "updateT2NeedingSync";
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "writable_attachment_counts";
        v2 = 0xD000000000000019;
      }

      else
      {
        v3 = "written_attachment_counts";
        v2 = 0xD00000000000001ELL;
      }
    }

    else if (a2 == 7)
    {
      v3 = "writable_message_update_counts";
      v2 = 0xD00000000000001DLL;
    }

    else if (a2 == 8)
    {
      v3 = "written_message_update_counts";
      v2 = 0xD000000000000023;
    }

    else
    {
      v3 = "able_message_counts";
      v2 = 0xD000000000000022;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "writable_chat_counts";
    }

    else
    {
      v2 = 0xD000000000000014;
    }
  }

  else if (a2 == 2)
  {
    v3 = "written_chat_counts";
    v2 = 0xD000000000000017;
  }

  else if (a2 == 3)
  {
    v3 = "writable_message_counts";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "written_message_counts";
    v2 = 0xD00000000000001ALL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1A84E67AC();
  }

  return v15 & 1;
}

uint64_t sub_1A8436500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736567617373656DLL;
    }

    else
    {
      v5 = 0x7374616863;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0x556567617373656DLL;
    v4 = 0xEE00736574616470;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001A852EE20;
    }

    if (a1 == 2)
    {
      v5 = 0x656D686361747461;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x736567617373656DLL;
    }

    else
    {
      v11 = 0x7374616863;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x556567617373656DLL;
    v8 = 0x80000001A852EE20;
    if (a2 == 3)
    {
      v8 = 0xEE00736574616470;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x656D686361747461;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEB0000000073746ELL;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1A84E67AC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1A84366B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x74754F64656D6974;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x46676E697373696DLL;
    v5 = 0xEB00000000656C69;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x80000001A852EE70;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x74754F64656D6974;
    }

    else
    {
      v11 = 0x46676E697373696DLL;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEB00000000656C69;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x80000001A852EE70;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1A84E67AC();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1A8436808(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5456722;
  if (a1 != 6)
  {
    v5 = 0x74696C6C65746153;
    v4 = 0xEC000000534D5365;
  }

  v6 = 5459283;
  v7 = 0xE300000000000000;
  if (a1 != 4)
  {
    v6 = 0x656D695465636146;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6567617373654D69;
  if (a1 != 2)
  {
    v9 = 0x6567617373654D69;
    v8 = 0xEC0000006574694CLL;
  }

  v10 = 7958113;
  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = 0xE300000000000000;
        if (v11 != 5459283)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x656D695465636146)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 6)
    {
      v13 = 0xE300000000000000;
      if (v11 != 5456722)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x74696C6C65746153;
    v15 = 1397576549;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE300000000000000;
        if (v11 != 7958113)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6567617373654D69)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x6567617373654D69;
    v15 = 1702127948;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v14)
  {
LABEL_45:
    v16 = sub_1A84E67AC();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1A8436A6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x536E776F6E6B6E75;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v2)
    {
      v6 = 0xED00007265646E65;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x6F6D6F7250736D73;
    v4 = 0xEE006C616E6F6974;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001A852EB90;
    }

    if (a1 == 2)
    {
      v5 = 1802401130;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x536E776F6E6B6E75;
    }

    else
    {
      v11 = 1701736302;
    }

    if (a2)
    {
      v10 = 0xED00007265646E65;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6F6D6F7250736D73;
    v8 = 0x80000001A852EB90;
    if (a2 == 3)
    {
      v8 = 0xEE006C616E6F6974;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 1802401130;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1A84E67AC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1A8436C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000676E69;
  v3 = 0x7269707845746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64657269707865;
    }

    else
    {
      v5 = 0x6465766173;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E697269707865;
    }

    else
    {
      v5 = 0x7269707845746F6ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000676E69;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (a2 != 2)
  {
    v8 = 0x6465766173;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x676E697269707865;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A84E67AC();
  }

  return v11 & 1;
}

uint64_t sub_1A8436D4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6967756C70;
  v6 = 0x6973736572707865;
  v7 = 0xEA00000000006576;
  if (a1 != 4)
  {
    v6 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x796C706572;
  if (a1 != 1)
  {
    v9 = 0x6E6F697463616572;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6567617373656DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6967756C70)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x6973736572707865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000065676173;
      if (v10 != 0x73654D6F69647561)
      {
LABEL_34:
        v13 = sub_1A84E67AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x796C706572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6F697463616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6567617373656DLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v60 = *a8;
  v59 = *(a8 + 8);
  v14 = sub_1A84E5D8C();
  v15 = [v14 _stripFZIDPrefix];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = sub_1A84E5DBC();
  v18 = v17;

  if (v16 == a4 && v18 == a5)
  {
  }

  else
  {
    v20 = sub_1A84E67AC();

    if ((v20 & 1) == 0)
    {
LABEL_7:

      sub_1A84E646C();

      MEMORY[0x1AC56A990](a4, a5);

      MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8530FB0);
LABEL_36:
      sub_1A84023CC();
      swift_allocError();
      *v48 = 0xD000000000000011;
      *(v48 + 8) = 0x80000001A8530F90;
LABEL_37:
      *(v48 + 16) = 0;
      return swift_willThrow();
    }
  }

  v56 = a2;
  v57 = a7;
  v21 = *(a3 + 16);
  if (!v21)
  {
LABEL_35:

    sub_1A84E646C();

    MEMORY[0x1AC56A990](a4, a5);

    MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8530FD0);
    v45 = MEMORY[0x1AC56AB00](a3, &type metadata for ImportExport.ParticipantAddress);
    v47 = v46;

    MEMORY[0x1AC56A990](v45, v47);

    goto LABEL_36;
  }

  v22 = 0;
  v23 = 0;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    if (v24)
    {
      v25 = *(a3 + v22 + 40);
      v26 = *(a3 + v22 + 48);
      v27 = *(a3 + v22 + 56);
      v28 = *(a3 + v22 + 64);
      v29 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v29 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = v25 == a4 && v26 == a5;
        if (v30 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v31 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = v27 == a4 && v28 == a5;
        if (v32 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v23;
    v22 += 128;
    if (v21 == v23)
    {
      goto LABEL_35;
    }
  }

  v33 = *(a3 + 16);
  if (!v33)
  {
    v50 = "Invalid selected address index";
    v51 = 0xD00000000000002CLL;
LABEL_40:

    sub_1A84023CC();
    swift_allocError();
    *v48 = v51;
    *(v48 + 8) = v50 | 0x8000000000000000;
    goto LABEL_37;
  }

  v34 = v56;
  if (v23 >= v33)
  {
    v50 = " not found in addresses: ";
    v51 = 0xD00000000000001ELL;
    goto LABEL_40;
  }

  v35 = *(a3 + 72);
  v36 = *(a3 + v22 + 32);
  v37 = *(a3 + v22 + 40);
  v38 = *(a3 + v22 + 48);
  v39 = *(a3 + v22 + 56);
  v40 = *(a3 + v22 + 64);
  v41 = *(a3 + v22 + 72);
  v43 = *(a3 + v22 + 80);
  v42 = *(a3 + v22 + 88);
  if (v56)
  {
    v44 = a1;
  }

  else
  {
    v52 = *(a3 + v22 + 32);
    v53 = v39;

    v39 = v53;
    v36 = v52;
    v44 = v37;
    v34 = v38;
  }

  if (v35 > 3)
  {
    if (v35 > 5)
    {
      if (v35 == 6)
      {
        v54 = 0xE300000000000000;
        v55 = 5456722;
      }

      else
      {
        v54 = 0xEC000000534D5365;
        v55 = 0x74696C6C65746153;
      }
    }

    else if (v35 == 4)
    {
      v55 = 5459283;
      v54 = 0xE300000000000000;
    }

    else
    {
      v54 = 0xE800000000000000;
      v55 = 0x656D695465636146;
    }
  }

  else if (v35 > 1)
  {
    if (v35 == 2)
    {
      v54 = 0xE800000000000000;
    }

    else
    {
      v54 = 0xEC0000006574694CLL;
    }

    v55 = 0x6567617373654D69;
  }

  else if (v35)
  {
    v54 = 0xE300000000000000;
    v55 = 7958113;
  }

  else
  {
    v54 = 0xE700000000000000;
    v55 = 0x6E776F6E6B6E75;
  }

  *a9 = v44;
  *(a9 + 8) = v34;
  *(a9 + 16) = a3;
  *(a9 + 24) = v23;
  *(a9 + 32) = v36;
  *(a9 + 40) = v37;
  *(a9 + 48) = v38;
  *(a9 + 56) = v39;
  *(a9 + 64) = v40;
  *(a9 + 72) = v41;
  *(a9 + 80) = v43;
  *(a9 + 88) = v42;
  *(a9 + 96) = a6;
  *(a9 + 104) = v57;
  *(a9 + 112) = v60;
  *(a9 + 120) = v59;
  *(a9 + 128) = v55;
  *(a9 + 136) = v54;
}

Swift::Bool __swiftcall ImportExport.Participant.contains(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = sub_1A84E5D8C();
  v4 = [v3 _stripFZIDPrefix];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1A84E5DBC();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = *(v2 + 16)) != 0)
  {
    v10 = (v2 + 64);
    while (1)
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v15 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = v11 == v5 && v12 == v7;
        if (v16 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v17 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v17 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = v13 == v5 && v14 == v7;
        if (v18 || (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }
      }

      v10 += 16;
      if (!--v9)
      {
        goto LABEL_27;
      }
    }

    v19 = 1;
  }

  else
  {
LABEL_27:
    v19 = 0;
  }

  return v19;
}

uint64_t ImportExport.Participant.update(selectedAddress:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 96);
  v11 = *(v3 + 104);
  v12 = *(v3 + 120);
  v14 = *(v3 + 112);
  v15 = v12;

  return ImportExport.Participant.init(id:withParticipantAddresses:selectedAddress:conversationID:conversationStatus:)(v7, v8, v9, a1, a2, v10, v11, &v14, a3);
}

uint64_t ImportExport.Participant.init(id:withParticipantAddresses:selectedAddressIndex:conversationID:conversationStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a3 + 16);
  v11 = 0xD00000000000001ELL;
  if (!v10)
  {
    v33 = "Invalid selected address index";
    v11 = 0xD00000000000002CLL;
LABEL_11:

    sub_1A84023CC();
    swift_allocError();
    *v34 = v11;
    *(v34 + 8) = v33 | 0x8000000000000000;
    *(v34 + 16) = 0;
    return swift_willThrow();
  }

  if (v10 <= a4)
  {
    v33 = " not found in addresses: ";
    goto LABEL_11;
  }

  v13 = *a7;
  v14 = *(a7 + 8);
  v15 = a3 + (a4 << 7);
  v16 = *(a3 + 72);
  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  v19 = *(v15 + 48);
  v20 = *(v15 + 56);
  v21 = *(v15 + 64);
  v22 = *(v15 + 72);
  v23 = *(v15 + 80);
  v24 = *(v15 + 88);
  if (!a2)
  {
    v36 = *a7;
    v37 = a3;
    v25 = a8;
    v26 = a5;
    v27 = a4;
    v39 = *(v15 + 88);
    v40 = *(v15 + 64);
    v28 = *(v15 + 32);
    v38 = *(v15 + 40);
    v29 = *(v15 + 56);
    v41 = *(v15 + 72);
    v30 = *(v15 + 80);

    v23 = v30;
    v22 = v41;
    v20 = v29;
    v18 = v38;
    v24 = v39;
    v17 = v28;
    v13 = v36;
    a3 = v37;
    v21 = v40;
    a4 = v27;
    a5 = v26;
    a8 = v25;
    a1 = v38;
    a2 = v19;
  }

  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v31 = 0xE300000000000000;
        v32 = 5456722;
      }

      else
      {
        v31 = 0xEC000000534D5365;
        v32 = 0x74696C6C65746153;
      }
    }

    else if (v16 == 4)
    {
      v32 = 5459283;
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE800000000000000;
      v32 = 0x656D695465636146;
    }
  }

  else if (v16 > 1)
  {
    if (v16 == 2)
    {
      v31 = 0xE800000000000000;
    }

    else
    {
      v31 = 0xEC0000006574694CLL;
    }

    v32 = 0x6567617373654D69;
  }

  else if (v16)
  {
    v31 = 0xE300000000000000;
    v32 = 7958113;
  }

  else
  {
    v31 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v17;
  *(a8 + 40) = v18;
  *(a8 + 48) = v19;
  *(a8 + 56) = v20;
  *(a8 + 64) = v21;
  *(a8 + 72) = v22;
  *(a8 + 80) = v23;
  *(a8 + 88) = v24;
  *(a8 + 96) = a5;
  *(a8 + 104) = a6;
  *(a8 + 112) = v13;
  *(a8 + 120) = v14;
  *(a8 + 128) = v32;
  *(a8 + 136) = v31;
}

Swift::Bool __swiftcall ImportExport.Participant.contains(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    v3 = v1 - 1;
    while (1)
    {
      v4 = v3;
      v5 = v2[1];
      v16 = *v2;
      v17 = v5;
      v6 = v2[5];
      v20 = v2[4];
      v21 = v6;
      v7 = v2[7];
      v22 = v2[6];
      v23 = v7;
      v8 = v2[3];
      v18 = v2[2];
      v19 = v8;
      v10 = *(&v16 + 1);
      v9 = v5;
      sub_1A840243C(&v16, &v15);
      v11.value._countAndFlagsBits = v10;
      v11.value._object = v9;
      if (ImportExport.Participant.contains(_:)(v11))
      {
        break;
      }

      v12.value._countAndFlagsBits = *(&v17 + 1);
      v12.value._object = v18;
      v13 = ImportExport.Participant.contains(_:)(v12);
      sub_1A841E128(&v16);
      if (!v13)
      {
        v3 = v4 - 1;
        v2 += 8;
        if (v4)
        {
          continue;
        }
      }

      return v13;
    }

    sub_1A841E128(&v16);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ImportExport.Participant.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x7069636974726150, 0xEB00000000746E61);
  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8531040);
  sub_1A83EA2FC(&qword_1EB2E7A38, &unk_1A8504B70);
  v7 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8531060);

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v8 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v8);

  result = MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8531080);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v1 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = (v1 + 32);
  v11 = (v1 + 32 + (v2 << 7));
  v36 = v11[4];
  v38 = v11[5];
  v40 = v11[6];
  v42 = v11[7];
  v28 = *v11;
  v30 = v11[1];
  v32 = v11[2];
  v34 = v11[3];
  v12 = ImportExport.ParticipantAddress.description.getter();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](0x3A7865646E692820, 0xE900000000000020);
  v13 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](0x6572646461202C29, 0xEE00203A73657373);
  v14 = *(v1 + 16);
  if (v14)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v26;
    do
    {
      v37 = v10[4];
      v39 = v10[5];
      v41 = v10[6];
      v43 = v10[7];
      v29 = *v10;
      v31 = v10[1];
      v33 = v10[2];
      v35 = v10[3];
      v16 = ImportExport.ParticipantAddress.description.getter();
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = v16;
        v22 = v17;
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
        v17 = v22;
        v16 = v21;
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v10 += 8;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v23 = sub_1A84E5D6C();
  v25 = v24;

  MEMORY[0x1AC56A990](v23, v25);

  MEMORY[0x1AC56A990](44, 0xE100000000000000);
  return 0;
}

uint64_t static ImportExport.Participant.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t ImportExport.Participant.selectedAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v2 < *(v3 + 16))
    {
      v4 = (v3 + (v2 << 7));
      v5 = v4[2];
      v6 = v4[3];
      v7 = v4[5];
      v19[2] = v4[4];
      v19[3] = v7;
      v19[0] = v5;
      v19[1] = v6;
      v8 = v4[6];
      v9 = v4[7];
      v10 = v4[9];
      v19[6] = v4[8];
      v19[7] = v10;
      v19[4] = v8;
      v19[5] = v9;
      v11 = v4[2];
      v12 = v4[3];
      v13 = v4[5];
      a1[2] = v4[4];
      a1[3] = v13;
      *a1 = v11;
      a1[1] = v12;
      v14 = v4[6];
      v15 = v4[7];
      v16 = v4[9];
      a1[6] = v4[8];
      a1[7] = v16;
      a1[4] = v14;
      a1[5] = v15;
      return sub_1A840243C(v19, &v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.Participant.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImportExport.Participant.canonicalizedURI.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ImportExport.Participant.canonicalizedURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ImportExport.Participant.uncanonicalizedURI.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ImportExport.Participant.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ImportExport.Participant.phoneNumber.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.emailAddress.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 112);
      v5 = *(v3 + 120);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.fullName.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 128);
      v5 = *(v3 + 136);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.contactID.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 144);
      v5 = *(v3 + 152);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.conversationID.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void ImportExport.Participant.conversationStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

void ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:conversationID:conversationStatus:sequenceID:)(unsigned __int8 *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v9 = *a1;
  v23 = *a7;
  v27 = *(a7 + 8);
  v10 = sub_1A84E5D8C();
  v11 = [v10 _stripFZIDPrefix];

  if (!v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_1A84E5DBC();
  v14 = v13;

  v15 = sub_1A84E5D8C();
  v16 = [v15 _stripFZIDPrefix];

  if (!v16)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v17 = sub_1A84E5DBC();
  v19 = v18;

  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A85013E0;
  *(v20 + 32) = a8;
  *(v20 + 40) = v12;
  *(v20 + 48) = v14;
  *(v20 + 56) = v17;
  *(v20 + 64) = v19;
  *(v20 + 72) = v9;
  *(v20 + 80) = a2;
  *(v20 + 88) = a3;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 6)
      {
        v21 = 0xE300000000000000;
        v22 = 5456722;
      }

      else
      {
        v21 = 0xEC000000534D5365;
        v22 = 0x74696C6C65746153;
      }
    }

    else if (v9 == 4)
    {
      v22 = 5459283;
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE800000000000000;
      v22 = 0x656D695465636146;
    }
  }

  else if (v9 > 1)
  {
    if (v9 == 2)
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xEC0000006574694CLL;
    }

    v22 = 0x6567617373654D69;
  }

  else if (v9)
  {
    v21 = 0xE300000000000000;
    v22 = 7958113;
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

  *a5 = v12;
  *(a5 + 8) = v14;
  *(a5 + 16) = v20;
  *(a5 + 24) = 0;
  *(a5 + 32) = a8;
  *(a5 + 40) = v12;
  *(a5 + 48) = v14;
  *(a5 + 56) = v17;
  *(a5 + 64) = v19;
  *(a5 + 72) = v9;
  *(a5 + 80) = a2;
  *(a5 + 88) = a3;
  *(a5 + 96) = a4;
  *(a5 + 104) = a6;
  *(a5 + 112) = v23;
  *(a5 + 120) = v27;
  *(a5 + 128) = v22;
  *(a5 + 136) = v21;
  swift_bridgeObjectRetain_n();
}

uint64_t ImportExport.Participant.update(conversationStatusTo:forConversationID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = 0xD00000000000001ELL;
  v8 = *a1;
  v10 = *v4;
  v9 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v13 = v4[13];
  if (v13)
  {
    v14 = v4[12];
    if (v14 != a2 || v13 != a3)
    {
      v41 = v4[3];
      v16 = a4;
      v18 = v9;
      v19 = v8;
      v20 = v14;
      v21 = v10;
      v22 = sub_1A84E67AC();
      v11 = v41;
      v10 = v21;
      v23 = v20;
      v8 = v19;
      v7 = 0xD00000000000001ELL;
      v9 = v18;
      v5 = a3;
      a4 = v16;
      if ((v22 & 1) == 0)
      {
        sub_1A84E646C();

        MEMORY[0x1AC56A990](v23, v13);

        MEMORY[0x1AC56A990](544175136, 0xE400000000000000);
        MEMORY[0x1AC56A990](a2, a3);
        sub_1A84023CC();
        swift_allocError();
        *v39 = 0xD00000000000002ALL;
        *(v39 + 8) = 0x80000001A85310A0;
        *(v39 + 16) = 3;
        return swift_willThrow();
      }
    }
  }

  v24 = *(v12 + 16);
  if (!v24)
  {
    v36 = "Invalid selected address index";
    v7 = 0xD00000000000002CLL;
LABEL_15:
    v37 = v36 | 0x8000000000000000;
    sub_1A84023CC();
    swift_allocError();
    *v38 = v7;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    return swift_willThrow();
  }

  if (v11 >= v24)
  {
    v36 = " not found in addresses: ";
    goto LABEL_15;
  }

  v25 = *(v12 + 72);
  v26 = v12 + (v11 << 7);
  v27 = *(v26 + 32);
  v29 = *(v26 + 48);
  v28 = *(v26 + 56);
  v30 = *(v26 + 64);
  v31 = *(v26 + 72);
  v32 = *(v26 + 80);
  v33 = *(v26 + 88);
  if (v25 > 3)
  {
    if (*(v12 + 72) > 5u)
    {
      if (v25 == 6)
      {
        v34 = 0xE300000000000000;
        v35 = 5456722;
      }

      else
      {
        v34 = 0xEC000000534D5365;
        v35 = 0x74696C6C65746153;
      }
    }

    else if (v25 == 4)
    {
      v35 = 5459283;
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE800000000000000;
      v35 = 0x656D695465636146;
    }
  }

  else if (*(v12 + 72) > 1u)
  {
    if (v25 == 2)
    {
      v34 = 0xE800000000000000;
    }

    else
    {
      v34 = 0xEC0000006574694CLL;
    }

    v35 = 0x6567617373654D69;
  }

  else if (*(v12 + 72))
  {
    v34 = 0xE300000000000000;
    v35 = 7958113;
  }

  else
  {
    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  *(a4 + 32) = v27;
  *(a4 + 48) = v29;
  *(a4 + 56) = v28;
  *(a4 + 64) = v30;
  *(a4 + 72) = v31;
  *(a4 + 80) = v32;
  *(a4 + 88) = v33;
  *(a4 + 96) = a2;
  *(a4 + 104) = v5;
  *(a4 + 112) = v8;
  *(a4 + 120) = 0;
  *(a4 + 128) = v35;
  *(a4 + 136) = v34;
}

uint64_t ImportExport.Participant.update(selectedAddressIndex:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD00000000000001ELL;
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v20 = "Invalid selected address index";
    v3 = 0xD00000000000002CLL;
LABEL_9:
    v21 = v20 | 0x8000000000000000;
    sub_1A84023CC();
    swift_allocError();
    *v22 = v3;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    return swift_willThrow();
  }

  if (v5 <= a1)
  {
    v20 = " not found in addresses: ";
    goto LABEL_9;
  }

  v6 = *(v2 + 8);
  v7 = *(v2 + 96);
  v8 = *(v2 + 104);
  v9 = v4 + (a1 << 7);
  v10 = *(v4 + 72);
  v11 = *(v9 + 32);
  v13 = *(v9 + 48);
  v12 = *(v9 + 56);
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  v17 = *(v9 + 88);
  v24 = *(v2 + 120);
  if (v10 > 3)
  {
    if (*(v4 + 72) > 5u)
    {
      if (v10 == 6)
      {
        v18 = 0xE300000000000000;
        v19 = 5456722;
      }

      else
      {
        v18 = 0xEC000000534D5365;
        v19 = 0x74696C6C65746153;
      }
    }

    else if (v10 == 4)
    {
      v19 = 5459283;
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE800000000000000;
      v19 = 0x656D695465636146;
    }
  }

  else if (*(v4 + 72) > 1u)
  {
    if (v10 == 2)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xEC0000006574694CLL;
    }

    v19 = 0x6567617373654D69;
  }

  else if (*(v4 + 72))
  {
    v18 = 0xE300000000000000;
    v19 = 7958113;
  }

  else
  {
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
  }

  *a2 = *v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = a1;
  *(a2 + 32) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 120) = v24;
  *(a2 + 128) = v19;
  *(a2 + 136) = v18;
}

Swift::Int_optional __swiftcall ImportExport.Participant.index(of:)(Swift::String of)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = v3 == 0;
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v7 = 0;
    v8 = (v2 + 48);
    while (1)
    {
      v9 = *(v8 - 1) == countAndFlagsBits && *v8 == object;
      if (v9 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 16;
      v4 = v3 == v7;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v10 = v4;
  v11 = v7;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t ImportExport.Participant.index(of:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 32);
    v39 = *(a1 + 56);
    v40 = v2;
    v38 = *(a1 + 72);
    v36 = *(a1 + 64);
    v37 = *(a1 + 88);
    v9 = (v2 + 32);
    v10 = v3 - 1;
    v11 = *(a1 + 96);
    v33 = v11;
    v34 = *(a1 + 80);
    v35 = *(a1 + 104);
    while (1)
    {
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[1];
      *v44 = *v9;
      *&v44[16] = v14;
      *&v44[32] = v12;
      v45 = v13;
      v15 = v9[4];
      v16 = v9[5];
      v17 = v9[7];
      v48 = v9[6];
      v49 = v17;
      v46 = v15;
      v47 = v16;
      if (*&v44[8] != __PAIR128__(v6, v5))
      {
        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }

        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (*&v44[24] != __PAIR128__(v42, v7))
      {
        result = sub_1A84E67AC();
        if ((result & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (v44[40] > 3u)
      {
        if (v44[40] > 5u)
        {
          if (v44[40] == 6)
          {
            v23 = 0xE300000000000000;
            v22 = 5456722;
            if (v8 > 3)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v22 = 0x74696C6C65746153;
            v23 = 0xEC000000534D5365;
            if (v8 > 3)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (v44[40] == 4)
          {
            v22 = 5459283;
          }

          else
          {
            v22 = 0x656D695465636146;
          }

          if (v44[40] == 4)
          {
            v23 = 0xE300000000000000;
          }

          else
          {
            v23 = 0xE800000000000000;
          }

          if (v8 > 3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v19 = 0xEC0000006574694CLL;
        if (v44[40] == 2)
        {
          v19 = 0xE800000000000000;
        }

        v20 = 0x6E776F6E6B6E75;
        if (v44[40])
        {
          v20 = 7958113;
        }

        v21 = 0xE700000000000000;
        if (v44[40])
        {
          v21 = 0xE300000000000000;
        }

        if (v44[40] <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0x6567617373654D69;
        }

        if (v44[40] <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        if (v8 > 3)
        {
LABEL_35:
          v24 = 0x74696C6C65746153;
          if (v8 == 6)
          {
            v24 = 5456722;
          }

          v25 = 0xEC000000534D5365;
          if (v8 == 6)
          {
            v25 = 0xE300000000000000;
          }

          v26 = 5459283;
          if (v8 != 4)
          {
            v26 = 0x656D695465636146;
          }

          v27 = 0xE800000000000000;
          if (v8 == 4)
          {
            v27 = 0xE300000000000000;
          }

          if (v8 <= 5)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (v8 <= 5)
          {
            v29 = v27;
          }

          else
          {
            v29 = v25;
          }

          goto LABEL_58;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v29 = 0xE800000000000000;
        }

        else
        {
          v29 = 0xEC0000006574694CLL;
        }

        v28 = 0x6567617373654D69;
      }

      else if (v8)
      {
        v29 = 0xE300000000000000;
        v28 = 7958113;
      }

      else
      {
        v29 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }

LABEL_58:
      v30 = v7;
      if (v22 == v28 && v23 == v29)
      {
        sub_1A840243C(v44, v43);
      }

      else
      {
        v31 = sub_1A84E67AC();
        sub_1A840243C(v44, v43);

        if ((v31 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      if (v45 != __PAIR128__(v39, v41) && (sub_1A84E67AC() & 1) == 0)
      {
        goto LABEL_81;
      }

      if (*(&v46 + 1))
      {
        if (!v38 || v46 != __PAIR128__(v38, v36) && (sub_1A84E67AC() & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v38)
      {
        goto LABEL_81;
      }

      if (*(&v47 + 1))
      {
        if (!v37 || v47 != __PAIR128__(v37, v34) && (sub_1A84E67AC() & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v37)
      {
        goto LABEL_81;
      }

      if (!*(&v48 + 1))
      {
        result = sub_1A841E128(v44);
        v7 = v30;
        v2 = v40;
        if (!v35)
        {
          return v4;
        }

        goto LABEL_82;
      }

      if (!v35)
      {
LABEL_81:
        result = sub_1A841E128(v44);
        v7 = v30;
        v2 = v40;
        goto LABEL_82;
      }

      if (v48 == __PAIR128__(v35, v33))
      {
        sub_1A841E128(v44);
        return v4;
      }

      v32 = sub_1A84E67AC();
      result = sub_1A841E128(v44);
      v7 = v30;
      v2 = v40;
      if (v32)
      {
        return v4;
      }

LABEL_82:
      if (v10 == v4)
      {
        return 0;
      }

      ++v4;
      v9 += 8;
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t ImportExport.Participant.serviceTypeString.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

unint64_t sub_1A8438F44(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0xD000000000000010;
    if (a1 == 3)
    {
      v7 = 0x65636E6575716573;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000014;
    }

    if (a1)
    {
      v6 = 0x6573736572646461;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x61737265766E6F63;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0x5465636976726573;
    if (a1 != 6)
    {
      v4 = 0x437972746E756F63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84390D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A843C2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8439108(uint64_t a1)
{
  v2 = sub_1A843B310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8439144(uint64_t a1)
{
  v2 = sub_1A843B310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Participant.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7A40, &qword_1A8504B80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v33 = v1[3];
  v34 = v10;
  v11 = v1[4];
  v31 = v1[5];
  v32 = v11;
  v12 = v1[6];
  v13 = v1[7];
  v29 = v1[8];
  v30 = v12;
  v38 = *(v1 + 72);
  v14 = v1[10];
  v27 = v1[11];
  v28 = v13;
  v15 = v1[13];
  v24 = v1[12];
  v25 = v15;
  v26 = v14;
  v16 = v1[14];
  v23 = *(v1 + 120);
  v17 = v1[17];
  v21[0] = v1[16];
  v21[1] = v17;
  v22 = v16;
  v18 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B310();
  sub_1A84E68AC();
  LOBYTE(v36) = 0;
  v19 = v35;
  sub_1A84E66CC();
  if (!v19)
  {
    v36 = v34;
    v39 = 1;
    sub_1A83EA2FC(&qword_1EB2E7A50, &qword_1A8504B88);
    sub_1A843B40C(&qword_1EB2E7A58, sub_1A843B364);
    sub_1A84E672C();
    LOBYTE(v36) = 2;
    sub_1A84E670C();
    LOBYTE(v36) = 3;
    sub_1A84E673C();
    LOBYTE(v36) = 4;
    sub_1A84E66CC();
    LOBYTE(v36) = 5;
    sub_1A84E66CC();
    LOBYTE(v36) = v38;
    v39 = 6;
    sub_1A841E278();
    sub_1A84E672C();
    LOBYTE(v36) = 7;
    sub_1A84E66CC();
    LOBYTE(v36) = 8;
    sub_1A84E66AC();
    v36 = v22;
    v37 = v23;
    v39 = 9;
    sub_1A843B3B8();
    sub_1A84E66BC();
    LOBYTE(v36) = 10;
    sub_1A84E66CC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ImportExport.Participant.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = sub_1A83EA2FC(&qword_1EB2E7A70, &qword_1A8504B90);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B310();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v10 = v5;
  LOBYTE(v54) = 0;
  *&v43 = sub_1A84E660C();
  *(&v43 + 1) = v11;
  sub_1A83EA2FC(&qword_1EB2E7A50, &qword_1A8504B88);
  LOBYTE(v45) = 1;
  sub_1A843B40C(&qword_1EB2E7A78, sub_1A843B484);
  sub_1A84E666C();
  v41 = v54;
  LOBYTE(v54) = 2;
  v39 = sub_1A84E664C();
  LOBYTE(v54) = 3;
  v38 = sub_1A84E667C();
  LOBYTE(v54) = 4;
  v37 = sub_1A84E660C();
  v40 = v12;
  LOBYTE(v54) = 5;
  v36 = sub_1A84E660C();
  v42 = v13;
  LOBYTE(v45) = 6;
  sub_1A841E440();
  sub_1A84E666C();
  v34 = v54;
  LOBYTE(v54) = 7;
  v14 = sub_1A84E660C();
  v35 = v15;
  v32 = v14;
  LOBYTE(v54) = 8;
  v31 = sub_1A84E65DC();
  v33 = v16;
  LOBYTE(v45) = 9;
  sub_1A843B4D8();
  sub_1A84E65FC();
  v30 = v54;
  v72 = v55;
  v73 = 10;
  v17 = sub_1A84E660C();
  v19 = v18;
  (*(v10 + 8))(v8, v44);
  v20 = *(&v43 + 1);
  v45 = v43;
  v21 = v40;
  *&v46 = v41;
  *(&v46 + 1) = v39;
  *&v47 = v38;
  *(&v47 + 1) = v37;
  *&v48 = v40;
  *(&v48 + 1) = v36;
  v22 = v42;
  *&v49 = v42;
  BYTE8(v49) = v34;
  *&v50 = v32;
  *(&v50 + 1) = v35;
  *&v51 = v31;
  *(&v51 + 1) = v33;
  *&v52 = v30;
  LODWORD(v44) = v72;
  BYTE8(v52) = v72;
  *&v53 = v17;
  *(&v53 + 1) = v19;
  v23 = v46;
  *a2 = v43;
  a2[1] = v23;
  v24 = v53;
  v25 = v50;
  a2[4] = v49;
  a2[5] = v25;
  v26 = v48;
  a2[2] = v47;
  a2[3] = v26;
  v27 = v52;
  a2[6] = v51;
  a2[7] = v27;
  a2[8] = v24;
  sub_1A8400E7C(&v45, &v54);
  sub_1A8244788(a1);
  v54 = v43;
  v55 = v20;
  v56 = v41;
  v57 = v39;
  v58 = v38;
  v59 = v37;
  v60 = v21;
  v61 = v36;
  v62 = v22;
  v63 = v34;
  v64 = v32;
  v65 = v35;
  v66 = v31;
  v67 = v33;
  v68 = v30;
  v69 = v44;
  v70 = v17;
  v71 = v19;
  return sub_1A8400ED8(&v54);
}

uint64_t sub_1A8439BB0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1A8439BE0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_1A8439C1C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_1A8439C4C()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439CA0()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 112);
      v5 = *(v3 + 120);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439CF4()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 128);
      v5 = *(v3 + 136);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8439D48()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    if (v1 < *(v2 + 16))
    {
      v3 = v2 + (v1 << 7);
      v4 = *(v3 + 144);
      v5 = *(v3 + 152);

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Participant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A84E5E5C();
}

uint64_t ImportExport.Participant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A8439E24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A8439E70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.Participant.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A8439EE8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A8439F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A8439F60(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A8439FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

unint64_t sub_1A8439FD8()
{
  v1 = 0x4164696C61766E69;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A843A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A843C640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A843A094(uint64_t a1)
{
  v2 = sub_1A843B52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A0D0(uint64_t a1)
{
  v2 = sub_1A843B52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A10C(uint64_t a1)
{
  v2 = sub_1A843B5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A148(uint64_t a1)
{
  v2 = sub_1A843B5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A184(uint64_t a1)
{
  v2 = sub_1A843B580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A1C0(uint64_t a1)
{
  v2 = sub_1A843B580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A1FC(uint64_t a1)
{
  v2 = sub_1A843B67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A238(uint64_t a1)
{
  v2 = sub_1A843B67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A843A274(uint64_t a1)
{
  v2 = sub_1A843B628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843A2B0(uint64_t a1)
{
  v2 = sub_1A843B628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ParticipantError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7A90, &qword_1A8504B98);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v33 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E7A98, &qword_1A8504BA0);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v33 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7AA0, &qword_1A8504BA8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = sub_1A83EA2FC(&qword_1EB2E7AA8, &qword_1A8504BB0);
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v45 = sub_1A83EA2FC(&qword_1EB2E7AB0, &qword_1A8504BB8);
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v20 = &v33 - v19;
  v21 = v1[1];
  v43 = *v1;
  v44 = v21;
  v22 = *(v1 + 16);
  v23 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843B52C();
  sub_1A84E68AC();
  v24 = (v17 + 8);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v48 = 2;
      sub_1A843B5D4();
      v27 = v37;
      v25 = v45;
      sub_1A84E669C();
      v28 = v39;
      sub_1A84E66CC();
      v29 = v38;
    }

    else
    {
      v49 = 3;
      sub_1A843B580();
      v27 = v40;
      v25 = v45;
      sub_1A84E669C();
      v28 = v42;
      sub_1A84E66CC();
      v29 = v41;
    }

    (*(v29 + 8))(v27, v28);
  }

  else
  {
    if (v22)
    {
      v47 = 1;
      sub_1A843B628();
      v30 = v45;
      sub_1A84E669C();
      v31 = v36;
      sub_1A84E66CC();
      (*(v35 + 8))(v12, v31);
      return (*v24)(v20, v30);
    }

    v46 = 0;
    sub_1A843B67C();
    v25 = v45;
    sub_1A84E669C();
    v26 = v34;
    sub_1A84E66CC();
    (*(v33 + 8))(v16, v26);
  }

  return (*v24)(v20, v25);
}

uint64_t ImportExport.ParticipantError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_1A83EA2FC(&qword_1EB2E7AE0, &qword_1A8504BC0);
  v63 = *(v66 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - v4;
  v58 = sub_1A83EA2FC(&qword_1EB2E7AE8, &qword_1A8504BC8);
  v62 = *(v58 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v56 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E7AF0, &qword_1A8504BD0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - v10;
  v12 = sub_1A83EA2FC(&qword_1EB2E7AF8, &qword_1A8504BD8);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = sub_1A83EA2FC(&qword_1EB2E7B00, &unk_1A8504BE0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v69 = a1;
  sub_1A82471E0(a1, v22);
  sub_1A843B52C();
  v23 = v68;
  sub_1A84E689C();
  if (!v23)
  {
    v24 = v15;
    v56 = v12;
    v57 = 0;
    v25 = v11;
    v27 = v64;
    v26 = v65;
    v68 = v17;
    v29 = v66;
    v28 = v67;
    v30 = sub_1A84E668C();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_1A8400954();
    if (v32 == 4 || v72 != v73 >> 1)
    {
      v39 = sub_1A84E64BC();
      swift_allocError();
      v41 = v40;
      v42 = v20;
      v43 = *(sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20) + 48);
      *v41 = &type metadata for ImportExport.ParticipantError;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v68 + 8))(v42, v16);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_1A8244788(v69);
    }

    v74 = v32;
    if (v32 <= 1u)
    {
      if (!v32)
      {
        v75 = 0;
        sub_1A843B67C();
        v33 = v57;
        sub_1A84E65BC();
        if (!v33)
        {
          v34 = v56;
          v35 = sub_1A84E660C();
          v37 = v36;
          (*(v59 + 8))(v24, v34);
          (*(v68 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v38 = v35;
LABEL_22:
          *v28 = v38;
          *(v28 + 8) = v37;
          *(v28 + 16) = v74;
          return sub_1A8244788(v69);
        }

        goto LABEL_14;
      }

      v75 = 1;
      sub_1A843B628();
      v49 = v57;
      sub_1A84E65BC();
      if (!v49)
      {
        v50 = v60;
        v38 = sub_1A84E660C();
        v37 = v54;
        (*(v61 + 8))(v25, v50);
        v46 = v68;
        goto LABEL_21;
      }

LABEL_14:
      (*(v68 + 8))(v20, v16);
      goto LABEL_9;
    }

    if (v32 == 2)
    {
      v75 = 2;
      sub_1A843B5D4();
      v45 = v57;
      sub_1A84E65BC();
      v46 = v68;
      if (v45)
      {
        goto LABEL_14;
      }

      v47 = v58;
      v48 = sub_1A84E660C();
      v37 = v53;
      v66 = v48;
      (*(v62 + 8))(v27, v47);
      v38 = v66;
    }

    else
    {
      v75 = 3;
      sub_1A843B580();
      v51 = v26;
      v52 = v57;
      sub_1A84E65BC();
      v46 = v68;
      if (v52)
      {
        (*(v68 + 8))(v20, v16);
        swift_unknownObjectRelease();
        return sub_1A8244788(v69);
      }

      v38 = sub_1A84E660C();
      v37 = v55;
      (*(v63 + 8))(v51, v29);
    }

LABEL_21:
    (*(v46 + 8))(v20, v16);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  return sub_1A8244788(v69);
}

void ImportExport.Participant.ConversationStatus.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B70860 + 24 * v1 + 32);
  while (v1 != 9)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF594(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF594((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  sub_1A84E5D6C();
}

unint64_t sub_1A843B310()
{
  result = qword_1EB2E7A48;
  if (!qword_1EB2E7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A48);
  }

  return result;
}

unint64_t sub_1A843B364()
{
  result = qword_1EB2E7A60;
  if (!qword_1EB2E7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A60);
  }

  return result;
}

unint64_t sub_1A843B3B8()
{
  result = qword_1EB2E7A68;
  if (!qword_1EB2E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A68);
  }

  return result;
}

uint64_t sub_1A843B40C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7A50, &qword_1A8504B88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A843B484()
{
  result = qword_1EB2E7A80;
  if (!qword_1EB2E7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A80);
  }

  return result;
}

unint64_t sub_1A843B4D8()
{
  result = qword_1EB2E7A88;
  if (!qword_1EB2E7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7A88);
  }

  return result;
}

unint64_t sub_1A843B52C()
{
  result = qword_1EB2E7AB8;
  if (!qword_1EB2E7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AB8);
  }

  return result;
}

unint64_t sub_1A843B580()
{
  result = qword_1EB2E7AC0;
  if (!qword_1EB2E7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AC0);
  }

  return result;
}

unint64_t sub_1A843B5D4()
{
  result = qword_1EB2E7AC8;
  if (!qword_1EB2E7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AC8);
  }

  return result;
}

unint64_t sub_1A843B628()
{
  result = qword_1EB2E7AD0;
  if (!qword_1EB2E7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AD0);
  }

  return result;
}

unint64_t sub_1A843B67C()
{
  result = qword_1EB2E7AD8;
  if (!qword_1EB2E7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7AD8);
  }

  return result;
}

unint64_t sub_1A843B6D0(void *a1)
{
  a1[1] = sub_1A841E374();
  a1[2] = sub_1A841E224();
  result = sub_1A843B708();
  a1[3] = result;
  return result;
}

unint64_t sub_1A843B708()
{
  result = qword_1EB2E7B08;
  if (!qword_1EB2E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B08);
  }

  return result;
}

unint64_t sub_1A843B75C(uint64_t a1)
{
  result = sub_1A843B708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A843B784()
{
  result = qword_1EB2E7B10;
  if (!qword_1EB2E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B10);
  }

  return result;
}

unint64_t sub_1A843B7DC()
{
  result = qword_1EB2E7B18;
  if (!qword_1EB2E7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B18);
  }

  return result;
}

unint64_t sub_1A843B834()
{
  result = qword_1EB2E7B20;
  if (!qword_1EB2E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B20);
  }

  return result;
}

unint64_t sub_1A843B88C()
{
  result = qword_1EB2E7B28;
  if (!qword_1EB2E7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B28);
  }

  return result;
}

unint64_t sub_1A843B8E4()
{
  result = qword_1EB2E7B30;
  if (!qword_1EB2E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B30);
  }

  return result;
}

__n128 sub_1A843B938(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1A843B964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A843B9AC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A843BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A843BA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t _s11ParticipantV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ParticipantV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A843BC7C()
{
  result = qword_1EB2E7B38;
  if (!qword_1EB2E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B38);
  }

  return result;
}

unint64_t sub_1A843BCD4()
{
  result = qword_1EB2E7B40;
  if (!qword_1EB2E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B40);
  }

  return result;
}

unint64_t sub_1A843BD2C()
{
  result = qword_1EB2E7B48;
  if (!qword_1EB2E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B48);
  }

  return result;
}

unint64_t sub_1A843BD84()
{
  result = qword_1EB2E7B50;
  if (!qword_1EB2E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B50);
  }

  return result;
}

unint64_t sub_1A843BDDC()
{
  result = qword_1EB2E7B58;
  if (!qword_1EB2E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B58);
  }

  return result;
}

unint64_t sub_1A843BE34()
{
  result = qword_1EB2E7B60;
  if (!qword_1EB2E7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B60);
  }

  return result;
}

unint64_t sub_1A843BE8C()
{
  result = qword_1EB2E7B68;
  if (!qword_1EB2E7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B68);
  }

  return result;
}

unint64_t sub_1A843BEE4()
{
  result = qword_1EB2E7B70;
  if (!qword_1EB2E7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B70);
  }

  return result;
}

unint64_t sub_1A843BF3C()
{
  result = qword_1EB2E7B78;
  if (!qword_1EB2E7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B78);
  }

  return result;
}

unint64_t sub_1A843BF94()
{
  result = qword_1EB2E7B80;
  if (!qword_1EB2E7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B80);
  }

  return result;
}

unint64_t sub_1A843BFEC()
{
  result = qword_1EB2E7B88;
  if (!qword_1EB2E7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B88);
  }

  return result;
}

unint64_t sub_1A843C044()
{
  result = qword_1EB2E7B90;
  if (!qword_1EB2E7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B90);
  }

  return result;
}

unint64_t sub_1A843C09C()
{
  result = qword_1EB2E7B98;
  if (!qword_1EB2E7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7B98);
  }

  return result;
}

unint64_t sub_1A843C0F4()
{
  result = qword_1EB2E7BA0;
  if (!qword_1EB2E7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BA0);
  }

  return result;
}

unint64_t sub_1A843C14C()
{
  result = qword_1EB2E7BA8;
  if (!qword_1EB2E7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BA8);
  }

  return result;
}

unint64_t sub_1A843C1A4()
{
  result = qword_1EB2E7BB0;
  if (!qword_1EB2E7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BB0);
  }

  return result;
}

unint64_t sub_1A843C1FC()
{
  result = qword_1EB2E7BB8;
  if (!qword_1EB2E7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BB8);
  }

  return result;
}

unint64_t sub_1A843C254()
{
  result = qword_1EB2E7BC0;
  if (!qword_1EB2E7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BC0);
  }

  return result;
}

uint64_t sub_1A843C2A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A85310D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85310F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531130 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1A843C640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001A8531150 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531170 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEE00737365726464 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8531190 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t ImportExport.Message.Reaction.reactingToMessageID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ImportExport.Message.Reaction.reactionEmoji.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

double ImportExport.Message.Reaction.layoutDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 52);
  *a1 = *(v1 + 48);
  *(a1 + 4) = v2;
  *(a1 + 8) = *(v1 + 56);
  result = *(v1 + 72);
  *(a1 + 24) = result;
  return result;
}

double ImportExport.Message.Reaction.init(reactionType:reactingToMessageID:reactingToMessageLength:reactionEmoji:layoutDescriptor:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  v9 = *(a7 + 1);
  *a8 = *a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  *(a8 + 52) = v9;
  *(a8 + 56) = *(a7 + 4);
  result = *(a7 + 3);
  *(a8 + 72) = result;
  return result;
}

unint64_t sub_1A843C898()
{
  v1 = 0x6E6F697463616572;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 == 3)
  {
    v4 = 0x6E6F697463616572;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A843C944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A843E504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A843C96C(uint64_t a1)
{
  v2 = sub_1A843E0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A843C9A8(uint64_t a1)
{
  v2 = sub_1A843E0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.Reaction.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7BC8, &qword_1A8505888);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v24 = *(v1 + 16);
  v25 = v10;
  v11 = *(v1 + 24);
  v22 = *(v1 + 32);
  v23 = v11;
  v21 = *(v1 + 40);
  v32 = *(v1 + 48);
  HIDWORD(v20) = *(v1 + 49);
  v12 = *(v1 + 52);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  v16 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843E0B0();
  sub_1A84E68AC();
  v26 = v9;
  v33 = 0;
  sub_1A843E104();
  sub_1A84E672C();
  if (!v2)
  {
    v17 = BYTE4(v20);
    v18 = v32;
    v26 = 1;
    sub_1A84E66CC();
    v26 = 2;
    sub_1A84E670C();
    v26 = 3;
    sub_1A84E66AC();
    v26 = v18;
    v27 = v17;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v33 = 4;
    sub_1A843E158();
    sub_1A84E672C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ImportExport.Message.Reaction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7BE8, &qword_1A8505890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843E0B0();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v37) = 0;
  sub_1A843E1AC();
  sub_1A84E666C();
  v11 = v42[0];
  v42[0] = 1;
  v12 = sub_1A84E660C();
  v14 = v13;
  v36 = v12;
  v42[0] = 2;
  v35 = sub_1A84E664C();
  v42[0] = 3;
  v15 = sub_1A84E65DC();
  *(&v34 + 1) = v16;
  *&v34 = v15;
  v53 = 4;
  sub_1A843E200();
  sub_1A84E666C();
  (*(v6 + 8))(v9, v5);
  v33 = v54;
  v32 = HIBYTE(v54);
  v17 = v55;
  v18 = v56;
  v21 = v57;
  v20 = v21 >> 64;
  v19 = v21;
  LOBYTE(v37) = v11;
  v22 = v36;
  *(&v37 + 1) = v36;
  *&v38 = v14;
  v23 = v35;
  *(&v38 + 1) = v35;
  v24 = v34;
  v39 = v34;
  v25 = *(&v34 + 1);
  LOWORD(v40) = v54;
  DWORD1(v40) = v55;
  *(&v40 + 1) = v56;
  v41 = v57;
  v26 = v37;
  v27 = v38;
  v28 = v57;
  v29 = v34;
  a2[3] = v40;
  a2[4] = v28;
  a2[1] = v27;
  a2[2] = v29;
  *a2 = v26;
  sub_1A843E254(&v37, v42);
  sub_1A8244788(a1);
  v42[0] = v11;
  v43 = v22;
  v44 = v14;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = v33;
  v49 = v32;
  v50 = v17;
  v51 = v18;
  v52 = __PAIR128__(v20, v19);
  return sub_1A843E28C(v42);
}

BOOL sub_1A843D0E4(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x72656B63697473;
    switch(*v4)
    {
      case 1:
        v9 = 0x697453696A6F6D65;
        v10 = 1919249251;
        goto LABEL_24;
      case 2:
        v11 = 0x547472616568;
        goto LABEL_23;
      case 3:
        v9 = 0x705573626D756874;
        v8 = 0xEF6B636162706154;
        break;
      case 4:
        v9 = 0xD000000000000011;
        v8 = 0x80000001A852EC90;
        break;
      case 5:
        v9 = 0x6270615461486168;
        v8 = 0xEB000000006B6361;
        break;
      case 6:
        v9 = 0xD000000000000012;
        v8 = 0x80000001A852ECB0;
        break;
      case 7:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852ECD0;
        break;
      case 8:
        v11 = 0x54696A6F6D65;
LABEL_23:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
        v10 = 1801675106;
LABEL_24:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 9:
        v9 = 0x5472656B63697473;
        v8 = 0xEE006B6361627061;
        break;
      case 0xA:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852ED00;
        break;
      case 0xB:
        v9 = 0xD000000000000016;
        v8 = 0x80000001A852ED20;
        break;
      case 0xC:
        v9 = 0xD000000000000018;
        v8 = 0x80000001A852ED40;
        break;
      case 0xD:
        v9 = 0xD000000000000012;
        v8 = 0x80000001A852ED60;
        break;
      case 0xE:
        v9 = 0xD000000000000019;
        v8 = 0x80000001A852ED80;
        break;
      case 0xF:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000001A852EDA0;
        break;
      case 0x10:
        v9 = 0xD000000000000013;
        v8 = 0x80000001A852EDC0;
        break;
      case 0x11:
        v9 = 0xD000000000000015;
        v8 = 0x80000001A852EDE0;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x72656B63697473;
    switch(a1)
    {
      case 1:
        v14 = 0x697453696A6F6D65;
        v15 = 1919249251;
        goto LABEL_60;
      case 2:
        v16 = 0x547472616568;
        goto LABEL_59;
      case 3:
        v12 = 0xEF6B636162706154;
        if (v9 != 0x705573626D756874)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 4:
        v12 = 0x80000001A852EC90;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 5:
        v12 = 0xEB000000006B6361;
        if (v9 != 0x6270615461486168)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 6:
        v12 = 0x80000001A852ECB0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 7:
        v12 = 0x80000001A852ECD0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 8:
        v16 = 0x54696A6F6D65;
LABEL_59:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
        v15 = 1801675106;
LABEL_60:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v14)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 9:
        v12 = 0xEE006B6361627061;
        if (v9 != 0x5472656B63697473)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000001A852ED00;
        goto LABEL_55;
      case 11:
        v12 = 0x80000001A852ED20;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 12:
        v12 = 0x80000001A852ED40;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 13:
        v12 = 0x80000001A852ED60;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 14:
        v12 = 0x80000001A852ED80;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 15:
        v12 = 0x80000001A852EDA0;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 16:
        v12 = 0x80000001A852EDC0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      case 17:
        v12 = 0x80000001A852EDE0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_56;
      default:
LABEL_55:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_56:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_1A84E67AC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL ImportExport.Message.Reaction.ReactionType.isTapback.getter()
{
  v1 = *v0;
  if (sub_1A843D0E4(*v0, &unk_1F1B70418))
  {
    return 1;
  }

  return sub_1A843D0E4(v1, &unk_1F1B70440);
}

uint64_t ImportExport.Message.Reaction.ReactionType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E67BC();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A843D694()
{
  v1 = *v0;
  v2 = sub_1A84E684C();
  ImportExport.Message.Reaction.ReactionType.name.getter(v2);
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A843D6FC(uint64_t a1)
{
  v3 = *v1;
  ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  sub_1A84E5E5C();
}

uint64_t sub_1A843D760()
{
  v1 = *v0;
  v2 = sub_1A84E684C();
  ImportExport.Message.Reaction.ReactionType.name.getter(v2);
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A843D874(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  v4 = v3;
  if (v2 == ImportExport.Message.Reaction.ReactionType.name.getter(v2) && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A84E67AC();
  }

  return v7 & 1;
}

uint64_t sub_1A843D910@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.Message.Reaction.ReactionType.init(rawValue:)(a1);
}

uint64_t sub_1A843D91C@<X0>(uint64_t *a1@<X8>)
{
  result = ImportExport.Message.Reaction.ReactionType.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ImportExport.Message.Reaction.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  v15 = *(v0 + 1);
  v16 = *(v0 + 3);
  v4 = *(v0 + 5);
  v17 = *(v0 + 24);
  v5 = *(v0 + 13);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);

  sub_1A84E646C();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x6E6F697463616552, 0xE800000000000000);
  v8 = MEMORY[0x1AC56A990](8250, 0xE200000000000000);
  strcpy(v18, "ReactionType: ");
  HIBYTE(v18[1]) = -18;
  v19 = v1;
  v9 = ImportExport.Message.Reaction.ReactionType.name.getter(v8);
  if (v4)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0x3E656E6F6E3CLL;
  }

  if (!v4)
  {
    v4 = 0xE600000000000000;
  }

  v11 = *(v0 + 9);
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](v18[0], v18[1]);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85311B0);
  MEMORY[0x1AC56A990](v15, v2);
  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A85311D0);
  MEMORY[0x1AC56A990](v10, v4);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85311F0);
  v12 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8531210);
  v13 = ImportExport.Message.LayoutDescriptor.description.getter();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return v20;
}

uint64_t ImportExport.Message.Reaction.ReactionType.description.getter(uint64_t a1)
{
  v2 = *v1;
  strcpy(v5, "ReactionType: ");
  v3 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  MEMORY[0x1AC56A990](v3);

  return v5[0];
}

uint64_t sub_1A843DC28()
{
  result = 0x72656B63697473;
  switch(*v0)
  {
    case 1:
      result = 0x697453696A6F6D65;
      break;
    case 2:
      v2 = 0x547472616568;
      goto LABEL_19;
    case 3:
      result = 0x705573626D756874;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6270615461486168;
      break;
    case 6:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      v2 = 0x54696A6F6D65;
LABEL_19:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
      break;
    case 9:
      result = 0x5472656B63697473;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A843DE48(uint64_t a1)
{
  v2 = *v1;
  strcpy(v5, "ReactionType: ");
  v3 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  MEMORY[0x1AC56A990](v3);

  return v5[0];
}

BOOL _s6IMCore12ImportExportO7MessageV8ReactionV2eeoiySbAG_AGtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v32 = *(a1 + 40);
  v30 = *(a1 + 49);
  v31 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = *(a1 + 32);
  v13 = *(a2 + 5);
  v28 = a2[49];
  v29 = a2[48];
  v14 = *(a2 + 13);
  v15 = *(a2 + 7);
  v16 = *(a2 + 8);
  v17 = *(a2 + 9);
  LOBYTE(v37[0]) = *a1;
  LOBYTE(v33[0]) = v9;
  v18 = ImportExport.Message.Reaction.ReactionType.name.getter(a1);
  v20 = v19;
  if (v18 == ImportExport.Message.Reaction.ReactionType.name.getter(v18) && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1A84E67AC();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 == v10 && v3 == v11)
  {
    if (v4 != v12)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v23 = sub_1A84E67AC();
  v24 = 0;
  if ((v23 & 1) != 0 && v4 == v12)
  {
LABEL_11:
    if (v32)
    {
      if (!v13 || (v27 != v26 || v32 != v13) && (sub_1A84E67AC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (!v13)
    {
LABEL_16:
      LOBYTE(v37[0]) = v31;
      BYTE1(v37[0]) = v30;
      v37[1] = v5;
      v38 = v6;
      v39 = v7;
      v40 = v8;
      LOBYTE(v33[0]) = v29;
      BYTE1(v33[0]) = v28;
      v33[1] = v14;
      v34 = v15;
      v35 = v16;
      v36 = v17;
      return _s6IMCore12ImportExportO7MessageV16LayoutDescriptorV2eeoiySbAG_AGtFZ_0(v37, v33);
    }

    return 0;
  }

  return v24;
}

unint64_t sub_1A843E0B0()
{
  result = qword_1EB2E7BD0;
  if (!qword_1EB2E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BD0);
  }

  return result;
}

unint64_t sub_1A843E104()
{
  result = qword_1EB2E7BD8;
  if (!qword_1EB2E7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BD8);
  }

  return result;
}

unint64_t sub_1A843E158()
{
  result = qword_1EB2E7BE0;
  if (!qword_1EB2E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BE0);
  }

  return result;
}

unint64_t sub_1A843E1AC()
{
  result = qword_1EB2E7BF0;
  if (!qword_1EB2E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BF0);
  }

  return result;
}

unint64_t sub_1A843E200()
{
  result = qword_1EB2E7BF8;
  if (!qword_1EB2E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7BF8);
  }

  return result;
}

unint64_t sub_1A843E2C0()
{
  result = qword_1EB2E7C00;
  if (!qword_1EB2E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C00);
  }

  return result;
}

__n128 sub_1A843E314(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A843E330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A843E378(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1A843E400()
{
  result = qword_1EB2E7C08;
  if (!qword_1EB2E7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C08);
  }

  return result;
}

unint64_t sub_1A843E458()
{
  result = qword_1EB2E7C10;
  if (!qword_1EB2E7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C10);
  }

  return result;
}

unint64_t sub_1A843E4B0()
{
  result = qword_1EB2E7C18;
  if (!qword_1EB2E7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C18);
  }

  return result;
}

uint64_t sub_1A843E504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697463616572 && a2 == 0xEC00000065707954;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8531230 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8531250 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463616572 && a2 == 0xED0000696A6F6D45 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531270 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

unint64_t sub_1A843E6C4()
{
  result = qword_1EB2E7C20;
  if (!qword_1EB2E7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C20);
  }

  return result;
}

Swift::Void __swiftcall ImportExport.Timer.start()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_1A84E56DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v0 + v7);
  swift_endAccess();
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v0 + v8);
  swift_endAccess();
  sub_1A84E56CC();
  v6(v4, 0, 1, v5);
  swift_beginAccess();
  sub_1A843E9F0(v4, v0 + v7);
  swift_endAccess();
}

Swift::Void __swiftcall ImportExport.Timer.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_1A84E56DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v0 + v7);
  swift_endAccess();
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v4, v0 + v8);
  swift_endAccess();
}

uint64_t sub_1A843E9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ImportExport.Timer.stop()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v8, v7);
  v9 = sub_1A84E56DC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v11 == 1)
  {
    sub_1A84E653C();
    __break(1u);
  }

  else
  {
    sub_1A84E56CC();
    (*(v10 + 56))(v5, 0, 1, v9);
    v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843E9F0(v5, v0 + v12);
    swift_endAccess();
  }
}

BOOL ImportExport.Timer.didStart.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v5, v4);
  v6 = sub_1A84E56DC();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1A824B2D4(v4, &qword_1EB2E6F48, &unk_1A8501F00);
  return v7;
}

uint64_t sub_1A843ED60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ImportExport.Timer.isTiming.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9];
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v11, v10);
  v12 = sub_1A84E56DC();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v14 == 1)
  {
    return 0;
  }

  sub_1A843ED60(v0 + v11, v8);
  v15 = 1;
  v16 = v13(v8, 1, v12);
  sub_1A824B2D4(v8, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v16 != 1)
  {
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v0 + v17, v5);
    v15 = v13(v5, 1, v12) == 1;
    sub_1A824B2D4(v5, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return v15;
}

BOOL ImportExport.Timer.didStop.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v8, v7);
  v9 = sub_1A84E56DC();
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v7, 1, v9);
  sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v11 == 1)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v13, v5);
  v12 = v10(v5, 1, v9) != 1;
  sub_1A824B2D4(v5, &qword_1EB2E6F48, &unk_1A8501F00);
  return v12;
}

BOOL ImportExport.Timer.isEmpty.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9];
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v11, v10);
  v12 = sub_1A84E56DC();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v14 != 1)
  {
    return 0;
  }

  sub_1A843ED60(v0 + v11, v8);
  v15 = 1;
  v16 = v13(v8, 1, v12);
  sub_1A824B2D4(v8, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v16 != 1)
  {
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v0 + v17, v5);
    v15 = v13(v5, 1, v12) == 1;
    sub_1A824B2D4(v5, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return v15;
}

uint64_t sub_1A843F3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1A843ED60(v2 + v4, a2);
}

uint64_t sub_1A843F430(uint64_t *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_1A84E56DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  sub_1A843ED60(v1 + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A824B2D4(v6, &qword_1EB2E6F48, &unk_1A8501F00);
    return 48;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = objc_opt_self();
    v15 = sub_1A84E565C();
    v16 = [v14 localizedStringFromDate:v15 dateStyle:2 timeStyle:2];

    v17 = sub_1A84E5DBC();
    (*(v8 + 8))(v11, v7);
    return v17;
  }
}

uint64_t ImportExport.Timer.elapsedTime.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = sub_1A84E56DC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v30 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v18, v10);
  v19 = v12[6];
  if (v19(v10, 1, v11) == 1)
  {
    return sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v28 = v12[4];
  v29 = v5;
  v28(v17, v10, v11);
  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v0 + v21, v8);
  v22 = v19(v8, 1, v11);
  sub_1A824B2D4(v8, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v22 == 1)
  {
    v23 = v30;
    sub_1A84E56CC();
LABEL_7:
    sub_1A84E561C();
    sub_1A84E561C();
    v26 = v12[1];
    v26(v23, v11);
    return (v26)(v17, v11);
  }

  v24 = v0 + v21;
  v25 = v29;
  sub_1A843ED60(v24, v29);
  result = (v19)(v25, 1, v11);
  if (result != 1)
  {
    v23 = v30;
    v28(v30, v25, v11);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.Timer.elapsedTimeDescription.getter()
{
  v0 = sub_1A84E68EC();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A84E68CC();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A84E694C();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E695C();
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ImportExport.Timer.elapsedTime.getter();
  v17 = sub_1A84E697C();
  v25[1] = v18;
  v25[2] = v17;
  sub_1A83EA2FC(&qword_1EB2E7C30, &qword_1A8505C30);
  v19 = *(sub_1A84E692C() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8505C20;
  sub_1A84E690C();
  sub_1A84E691C();
  sub_1A84E68FC();
  sub_1A848FA10(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A84E693C();
  sub_1A84E68BC();
  sub_1A84E68DC();
  sub_1A84E523C();

  (*(v31 + 8))(v3, v32);
  (*(v29 + 8))(v7, v30);
  (*(v8 + 8))(v11, v28);
  sub_1A8441AEC(&qword_1EB2E7C38, MEMORY[0x1E696A218]);
  v23 = v26;
  sub_1A84E696C();
  (*(v27 + 8))(v16, v23);
  return v33;
}

uint64_t ImportExport.Timer.__allocating_init(withStartTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v9 = sub_1A84E56DC();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v10(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v9);
  swift_beginAccess();
  sub_1A843E9F0(a1, v7 + v8);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(a2, v7 + v11);
  swift_endAccess();
  return v7;
}

uint64_t ImportExport.Timer.init(withStartTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v6 = sub_1A84E56DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v7(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v6);
  swift_beginAccess();
  sub_1A843E9F0(a1, v2 + v5);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(a2, v2 + v8);
  swift_endAccess();
  return v2;
}

uint64_t sub_1A843FFA0()
{
  if (*v0)
  {
    result = 0x656D6954646E65;
  }

  else
  {
    result = 0x6D69547472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1A843FFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A84400C4(uint64_t a1)
{
  v2 = sub_1A84417A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8440100(uint64_t a1)
{
  v2 = sub_1A84417A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Timer.deinit()
{
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, &qword_1EB2E6F48, &unk_1A8501F00);
  return v0;
}

uint64_t ImportExport.Timer.__deallocating_deinit()
{
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, &qword_1EB2E6F48, &unk_1A8501F00);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Timer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = sub_1A83EA2FC(&qword_1EB2E7C40, &qword_1A8505C38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84417A8();
  sub_1A84E68AC();
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v3 + v17, v10);
  v24 = 0;
  sub_1A84E56DC();
  sub_1A8441AEC(&qword_1EB2E7C50, MEMORY[0x1E6969530]);
  sub_1A84E66BC();
  sub_1A824B2D4(v10, &qword_1EB2E6F48, &unk_1A8501F00);
  if (!v2)
  {
    v18 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    v19 = v3 + v18;
    v20 = v23;
    sub_1A843ED60(v19, v23);
    v25 = 1;
    sub_1A84E66BC();
    sub_1A824B2D4(v20, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t ImportExport.Timer.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.Timer.init(from:)(a1);
  return v5;
}

uint64_t ImportExport.Timer.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v8;
  v26 = sub_1A83EA2FC(&qword_1EB2E7C58, &qword_1A8505C40);
  v23 = *(v26 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v13 = sub_1A84E56DC();
  v14 = *(*(v13 - 8) + 56);
  v14(v2 + v12, 1, 1, v13);
  v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v14(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime, 1, 1, v13);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  sub_1A82471E0(a1, v16);
  sub_1A84417A8();
  v18 = v27;
  sub_1A84E689C();
  if (v18)
  {
  }

  else
  {
    v27 = v15;
    v20 = v23;
    v19 = v24;
    v28 = 0;
    sub_1A8441AEC(&qword_1EB2E7C60, MEMORY[0x1E6969530]);
    sub_1A84E65FC();
    swift_beginAccess();
    sub_1A843E9F0(v25, v2 + v12);
    swift_endAccess();
    v28 = 1;
    sub_1A84E65FC();
    (*(v20 + 8))(v11, v26);
    v22 = v27;
    swift_beginAccess();
    sub_1A843E9F0(v19, v2 + v22);
    swift_endAccess();
  }

  sub_1A8244788(v29);
  return v2;
}

uint64_t sub_1A84408A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ImportExport.Timer.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t ImportExport.Timer.format(report:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - v8;
  v10 = sub_1A84E56DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v58 = 0;
  v59 = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v2 + v17, v9);
  v56 = *(v11 + 48);
  if (v56(v9, 1, v10) == 1)
  {
    sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
    v18 = 0xE100000000000000;
    v19 = 48;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v20 = objc_opt_self();
    v21 = sub_1A84E565C();
    v22 = [v20 localizedStringFromDate:v21 dateStyle:2 timeStyle:2];

    v23 = sub_1A84E5DBC();
    v18 = v24;

    (*(v11 + 8))(v16, v10);
    v19 = v23;
  }

  MEMORY[0x1AC56A990](v19, v18);

  v25 = v58;
  v26 = v59;
  v27 = *(v57 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1A83EEBEC(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1A83EEBEC((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[32 * v29];
  *(v30 + 4) = 0x6D69547472617473;
  *(v30 + 5) = 0xE900000000000065;
  *(v30 + 6) = v25;
  *(v30 + 7) = v26;
  v31 = v57;
  *(v57 + 16) = v27;
  v60 = 0;
  v61 = 0xE000000000000000;
  v32 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843ED60(v2 + v32, v7);
  if (v56(v7, 1, v10) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E6F48, &unk_1A8501F00);
    v33 = 0xE100000000000000;
    v34 = 48;
  }

  else
  {
    v35 = v55;
    (*(v11 + 32))(v55, v7, v10);
    v36 = objc_opt_self();
    v37 = sub_1A84E565C();
    v38 = [v36 localizedStringFromDate:v37 dateStyle:2 timeStyle:2];

    v39 = sub_1A84E5DBC();
    v33 = v40;

    (*(v11 + 8))(v35, v10);
    v34 = v39;
  }

  MEMORY[0x1AC56A990](v34, v33);

  v41 = v60;
  v42 = v61;
  v44 = *(v27 + 2);
  v43 = *(v27 + 3);
  if (v44 >= v43 >> 1)
  {
    v27 = sub_1A83EEBEC((v43 > 1), v44 + 1, 1, v27);
  }

  *(v27 + 2) = v44 + 1;
  v45 = &v27[32 * v44];
  *(v45 + 4) = 0x656D6954646E65;
  *(v45 + 5) = 0xE700000000000000;
  *(v45 + 6) = v41;
  *(v45 + 7) = v42;
  *(v31 + 16) = v27;
  result = ImportExport.Timer.elapsedTimeDescription.getter();
  v49 = *(v27 + 2);
  v48 = *(v27 + 3);
  if (v49 >= v48 >> 1)
  {
    v51 = result;
    v52 = v47;
    v53 = sub_1A83EEBEC((v48 > 1), v49 + 1, 1, v27);
    v47 = v52;
    v27 = v53;
    result = v51;
  }

  *(v27 + 2) = v49 + 1;
  v50 = &v27[32 * v49];
  *(v50 + 4) = 0x6E6F697461727564;
  *(v50 + 5) = 0xE800000000000000;
  *(v50 + 6) = result;
  *(v50 + 7) = v47;
  *(v31 + 16) = v27;
  return result;
}

uint64_t sub_1A8440E84()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = sub_1A84E56DC();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for ImportExport.Timer();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v8((v12 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v7);
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v8((v12 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v7);
  swift_beginAccess();
  sub_1A843E9F0(v6, v12 + v13);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v4, v12 + v14);
  result = swift_endAccess();
  qword_1EB2E7C28 = v12;
  return result;
}

uint64_t static ImportExport.Timer.zero.getter()
{
  if (qword_1EB2E5968 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A84410A4@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E5968 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E7C28;
}

uint64_t _s6IMCore12ImportExportO5TimerC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A84E56DC();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7CA0, &qword_1A8505E58);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v53 = &v48 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - v23;
  v25 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  v51 = a1;
  v26 = a1 + v25;
  v27 = v56;
  sub_1A843ED60(v26, v24);
  v28 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  v52 = v7;
  v29 = *(v7 + 48);
  sub_1A843ED60(v24, v12);
  v54 = a2;
  sub_1A843ED60(a2 + v28, &v12[v29]);
  v30 = *(v27 + 48);
  if (v30(v12, 1, v4) == 1)
  {
    sub_1A824B2D4(v24, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v30(&v12[v29], 1, v4) == 1)
    {
      v49 = v17;
      sub_1A824B2D4(v12, &qword_1EB2E6F48, &unk_1A8501F00);
      goto LABEL_8;
    }

LABEL_6:
    v31 = v12;
LABEL_14:
    sub_1A824B2D4(v31, &qword_1EB2E7CA0, &qword_1A8505E58);
    goto LABEL_15;
  }

  sub_1A843ED60(v12, v22);
  if (v30(&v12[v29], 1, v4) == 1)
  {
    sub_1A824B2D4(v24, &qword_1EB2E6F48, &unk_1A8501F00);
    (*(v27 + 8))(v22, v4);
    goto LABEL_6;
  }

  v49 = v17;
  v32 = v50;
  (*(v27 + 32))(v50, &v12[v29], v4);
  sub_1A8441AEC(&qword_1EB2E7CA8, MEMORY[0x1E6969530]);
  v33 = sub_1A84E5D7C();
  v34 = *(v27 + 8);
  v34(v32, v4);
  sub_1A824B2D4(v24, &qword_1EB2E6F48, &unk_1A8501F00);
  v34(v22, v4);
  sub_1A824B2D4(v12, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v33 & 1) == 0)
  {
LABEL_15:
    v42 = 0;
    return v42 & 1;
  }

LABEL_8:
  v35 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v36 = v51;
  swift_beginAccess();
  v37 = v53;
  sub_1A843ED60(v36 + v35, v53);
  v38 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v39 = v54;
  swift_beginAccess();
  v40 = *(v52 + 48);
  v41 = v55;
  sub_1A843ED60(v37, v55);
  sub_1A843ED60(v39 + v38, v41 + v40);
  if (v30(v41, 1, v4) != 1)
  {
    v43 = v49;
    sub_1A843ED60(v41, v49);
    if (v30((v41 + v40), 1, v4) != 1)
    {
      v45 = v56;
      v46 = v50;
      (*(v56 + 32))(v50, v41 + v40, v4);
      sub_1A8441AEC(&qword_1EB2E7CA8, MEMORY[0x1E6969530]);
      v42 = sub_1A84E5D7C();
      v47 = *(v45 + 8);
      v47(v46, v4);
      sub_1A824B2D4(v37, &qword_1EB2E6F48, &unk_1A8501F00);
      v47(v43, v4);
      sub_1A824B2D4(v41, &qword_1EB2E6F48, &unk_1A8501F00);
      return v42 & 1;
    }

    sub_1A824B2D4(v37, &qword_1EB2E6F48, &unk_1A8501F00);
    (*(v56 + 8))(v43, v4);
    goto LABEL_13;
  }

  sub_1A824B2D4(v37, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v30((v41 + v40), 1, v4) != 1)
  {
LABEL_13:
    v31 = v41;
    goto LABEL_14;
  }

  sub_1A824B2D4(v41, &qword_1EB2E6F48, &unk_1A8501F00);
  v42 = 1;
  return v42 & 1;
}

unint64_t sub_1A84417A8()
{
  result = qword_1EB2E7C48;
  if (!qword_1EB2E7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C48);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.Timer()
{
  result = qword_1EB2E7C70;
  if (!qword_1EB2E7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8441898()
{
  sub_1A844197C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1A844197C()
{
  if (!qword_1EB2E7C80)
  {
    sub_1A84E56DC();
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7C80);
    }
  }
}

unint64_t sub_1A84419E8()
{
  result = qword_1EB2E7C88;
  if (!qword_1EB2E7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C88);
  }

  return result;
}

unint64_t sub_1A8441A40()
{
  result = qword_1EB2E7C90;
  if (!qword_1EB2E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C90);
  }

  return result;
}

unint64_t sub_1A8441A98()
{
  result = qword_1EB2E7C98;
  if (!qword_1EB2E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7C98);
  }

  return result;
}

uint64_t sub_1A8441AEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A8441B3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v127 = type metadata accessor for ImportExport.MessageBatch();
  v3 = *(*(v127 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v127);
  v125 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v124 = &v113 - v6;
  v7 = type metadata accessor for ImportExport.Message();
  v133 = *(v7 - 8);
  v8 = *(v133 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v128 = &v113 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v129 = &v113 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v131 = &v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v132 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v113 - v19;
  v21 = sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v113 - v23;
  v25 = type metadata accessor for ImportExport.Conversation();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v113 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v113 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v113 - v37;
  sub_1A8442B00(a1, &v113 - v37, type metadata accessor for ImportExport.Conversation);
  v138 = v38;
  v39 = v135;
  sub_1A846837C(v24);
  if (v39)
  {
LABEL_2:
    v40 = v138;
LABEL_7:
    sub_1A8442A38(v40, type metadata accessor for ImportExport.Conversation);
    return;
  }

  v122 = v33;
  v123 = a1;
  v120 = v20;
  v121 = v30;
  v135 = 0;
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1A8442A98(v24);
    v40 = v138;
  }

  else
  {
    v40 = v138;
    sub_1A8442A38(v138, type metadata accessor for ImportExport.Conversation);
    sub_1A8442B68(v24, v36, type metadata accessor for ImportExport.Conversation);
    sub_1A8442B68(v36, v40, type metadata accessor for ImportExport.Conversation);
  }

  v41 = v123;
  v43 = v134;
  v42 = v135;
  v44 = v122;
  sub_1A846A940();
  if (v42)
  {
    goto LABEL_7;
  }

  if (v45)
  {
    v46 = v45;
    sub_1A846AD4C(v45);
    v48 = [v46 guid];
    v49 = sub_1A84E5DBC();
    v51 = v50;

    v52 = sub_1A846B93C(v49, v51);

    if (v52)
    {
      v47 = v52;
    }

    else
    {
      sub_1A846BB2C();
    }

    v43 = v134;
  }

  else
  {
    sub_1A846BB2C();
  }

  v53 = v47;
  sub_1A8475A14(v53, v44);
  sub_1A8442A38(v40, type metadata accessor for ImportExport.Conversation);
  sub_1A8442B68(v44, v40, type metadata accessor for ImportExport.Conversation);
  swift_beginAccess();
  v54 = *(v43 + 24);
  v55 = *(v40 + 1);
  v56 = *(v40 + 2);

  v123 = v55;
  v122 = v56;
  LOBYTE(v56) = sub_1A84535C0(v55, v56, v54);

  v57 = 0;
  if ((v56 & 1) == 0)
  {
    swift_beginAccess();
    v58 = v122;

    sub_1A82493D0(&v136, v123, v58);
    swift_endAccess();

    v57 = 1;
  }

  sub_1A846A4E0(v53);
  v114 = v59;
  v115 = v57;
  v116 = v53;
  v60 = *(v41 + *(v127 + 20));
  v118 = *(v60 + 16);
  if (v118)
  {
    v119 = 0;
    v61 = 0;
    v62 = 0;
    v135 = MEMORY[0x1E69E7CC0];
    v117 = v60;
    while (1)
    {
      v134 = v61;
      if (v62 >= *(v60 + 16))
      {
        break;
      }

      v63 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v64 = *(v133 + 72);
      v65 = v120;
      sub_1A8442B00(v60 + v63 + v64 * v62, v120, type metadata accessor for ImportExport.Message);
      v66 = v132;
      sub_1A84C7274(v123, v122, v132);
      v67 = v131;
      sub_1A8442A38(v65, type metadata accessor for ImportExport.Message);
      sub_1A8442B00(v66, v67, type metadata accessor for ImportExport.Message);
      v68 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1A83EF168(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      if (v70 >= v69 >> 1)
      {
        v68 = sub_1A83EF168(v69 > 1, v70 + 1, 1, v68);
      }

      v68[2] = v70 + 1;
      v135 = v68;
      sub_1A8442B68(v67, v68 + v63 + v70 * v64, type metadata accessor for ImportExport.Message);
      v71 = objc_autoreleasePoolPush();
      v72 = v129;
      sub_1A8442B00(v66, v129, type metadata accessor for ImportExport.Message);
      v73 = _s17MessageImportInfoCMa();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      v76 = swift_allocObject();
      *(v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_didImportMessage) = 0;
      *(v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_importedAttachmentCount) = 0;
      v77 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_copiedAttachments;
      *(v76 + v77) = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
      sub_1A8442B00(v72, v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage, type metadata accessor for ImportExport.Message);
      v78 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message;
      sub_1A8442B68(v72, v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message, type metadata accessor for ImportExport.Message);
      v79 = v138;
      sub_1A8466930(v76, v138);
      swift_beginAccess();
      v80 = v128;
      sub_1A8442B00(v76 + v78, v128, type metadata accessor for ImportExport.Message);
      v40 = v79;
      v81 = sub_1A84C8340(v79);
      v83 = v82;
      sub_1A8442A38(v80, type metadata accessor for ImportExport.Message);
      *(v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_didImportMessage) = v81 & 1;
      *(v76 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_importedAttachmentCount) = v83;
      objc_autoreleasePoolPop(v71);
      sub_1A8442A38(v132, type metadata accessor for ImportExport.Message);

      if (v81)
      {
        v84 = __OFADD__(v119++, 1);
        v85 = v130;
        v86 = v134;
        if (v84)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v85 = v130;
        v86 = v134;
      }

      v60 = v117;
      v84 = __OFADD__(v86, v83);
      v61 = v86 + v83;
      if (v84)
      {
        goto LABEL_47;
      }

      if (v118 == ++v62)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v119 = 0;
    v61 = 0;
    v135 = MEMORY[0x1E69E7CC0];
    v85 = v130;
LABEL_34:

    v87 = v40;
    v88 = v121;
    sub_1A8442B00(v87, v121, type metadata accessor for ImportExport.Conversation);
    v89 = v135[2];
    if (!v89)
    {
LABEL_44:

      v103 = v88;
      v104 = v125;
      sub_1A8442B68(v103, v125, type metadata accessor for ImportExport.Conversation);
      v105 = v61;
      v106 = v127;
      *(v104 + *(v127 + 20)) = v135;
      *(v104 + *(v106 + 24)) = 0;
      v107 = v124;
      sub_1A8442B68(v104, v124, type metadata accessor for ImportExport.MessageBatch);
      v108 = v107;
      v109 = v126;
      sub_1A8442B68(v108, v126, type metadata accessor for ImportExport.MessageBatch);
      v110 = (v109 + *(type metadata accessor for ImportExport.ImportedMessageBatch() + 20));
      v111 = v119;
      *v110 = v115;
      v110[1] = v111;
      v112 = v114;
      v110[2] = v105;
      v110[3] = v112;
      v110[4] = 0;
      sub_1A8442A38(v138, type metadata accessor for ImportExport.Conversation);
      return;
    }

    v90 = 0;
    while (v90 < v135[2])
    {
      sub_1A8442B00(v135 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v90, v85, type metadata accessor for ImportExport.Message);
      v91 = *(v85 + 32);
      v92 = *(v85 + 40);
      v93 = v88;
      v94 = *(v88 + 8);
      v95 = *(v93 + 16);
      if (v91 != v94 || v92 != v95)
      {
        v97 = *(v85 + 32);
        v98 = *(v85 + 40);
        v99 = *(v93 + 16);
        if ((sub_1A84E67AC() & 1) == 0)
        {

          v136 = 0;
          v137 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
          MEMORY[0x1AC56A990](v91, v92);
          MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
          MEMORY[0x1AC56A990](v94, v95);
          v100 = v136;
          v101 = v137;
          sub_1A8407E40();
          swift_allocError();
          *v102 = v100;
          v102[1] = v101;
          swift_willThrow();

          sub_1A8442A38(v121, type metadata accessor for ImportExport.Conversation);
          sub_1A8442A38(v85, type metadata accessor for ImportExport.Message);
          goto LABEL_2;
        }
      }

      ++v90;
      sub_1A8442A38(v85, type metadata accessor for ImportExport.Message);
      v88 = v121;
      if (v89 == v90)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}