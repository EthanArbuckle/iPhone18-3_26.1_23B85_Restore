uint64_t sub_1A8838E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88396AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8838E3C(uint64_t a1)
{
  v2 = sub_1A8839D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8838E78(uint64_t a1)
{
  v2 = sub_1A8839D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8838EB4()
{
  v0 = qword_1EB307660;

  return v0;
}

double sub_1A8838EEC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A8839914(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1A8838F80(uint64_t a1)
{
  result = sub_1A8838FA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8838FA8()
{
  result = qword_1EB307670;
  if (!qword_1EB307670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307670);
  }

  return result;
}

unint64_t sub_1A8839000()
{
  result = qword_1EB307678;
  if (!qword_1EB307678)
  {
    sub_1A870CD28(&qword_1EB307680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307678);
  }

  return result;
}

unint64_t sub_1A8839068()
{
  result = qword_1EB307688;
  if (!qword_1EB307688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307688);
  }

  return result;
}

unint64_t sub_1A88390BC(uint64_t a1)
{
  result = sub_1A88390E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88390E4()
{
  result = qword_1EB307690;
  if (!qword_1EB307690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307690);
  }

  return result;
}

uint64_t sub_1A8839154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A891E490 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A88391E8(uint64_t a1)
{
  v2 = sub_1A8839658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8839224(uint64_t a1)
{
  v2 = sub_1A8839658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A8839260(uint64_t a1)
{
  result = sub_1A8839288();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8839288()
{
  result = qword_1EB307698;
  if (!qword_1EB307698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307698);
  }

  return result;
}

unint64_t sub_1A88392DC(uint64_t a1)
{
  result = sub_1A8839304();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8839304()
{
  result = qword_1EB3076A0;
  if (!qword_1EB3076A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076A0);
  }

  return result;
}

uint64_t sub_1A8839384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A88393C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3076A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8839658();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9138();
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1A8839520(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3076B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8839658();
  sub_1A88C95C8();
  sub_1A88C92A8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A8839658()
{
  result = qword_1EB3076B0;
  if (!qword_1EB3076B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076B0);
  }

  return result;
}

uint64_t sub_1A88396AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449554774616863 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEF73726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65526F7475417369 && a2 == 0xEC00000074726F70 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891E4B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655274726F706572 && a2 == 0xEC0000006E6F7361)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1A8839914@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3076C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8839D5C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v31[0]) = 0;
  *&v26 = sub_1A88C9108();
  *(&v26 + 1) = v9;
  v25 = a2;
  sub_1A870CCE0(&qword_1EB303100);
  LOBYTE(v27) = 1;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v24 = v31[0];
  LOBYTE(v31[0]) = 2;
  v10 = sub_1A88C9188();
  LOBYTE(v27) = 3;
  sub_1A88C9158();
  v11 = v31[0];
  LOBYTE(v31[0]) = 4;
  v37 = sub_1A88C9118();
  LOBYTE(v31[0]) = 5;
  v12 = sub_1A88C9118();
  v23 = v11;
  LOBYTE(v11) = v12;
  v38 = 6;
  v22 = sub_1A88C9148();
  v37 &= 1u;
  v13 = v11 & 1;
  (*(v6 + 8))(v8, v5);
  v14 = *(&v26 + 1);
  v27 = v26;
  v16 = v23;
  v15 = v24;
  *&v28 = v24;
  BYTE8(v28) = v10;
  *&v29 = v23;
  LOBYTE(v11) = v37;
  BYTE8(v29) = v37;
  BYTE9(v29) = v13;
  v17 = v22;
  v30 = v22;
  sub_1A87E86B0(&v27, v31);
  sub_1A85F1084(a1);
  v31[0] = v26;
  v31[1] = v14;
  v31[2] = v15;
  v32 = v10;
  v33 = v16;
  v34 = v11;
  v35 = v13;
  v36 = v17;
  result = sub_1A8839DB0(v31);
  v19 = v28;
  v20 = v25;
  *v25 = v27;
  v20[1] = v19;
  v20[2] = v29;
  *(v20 + 6) = v30;
  return result;
}

unint64_t sub_1A8839D5C()
{
  result = qword_1EB3076D0;
  if (!qword_1EB3076D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076D0);
  }

  return result;
}

unint64_t sub_1A8839E14()
{
  result = qword_1EB3076E0;
  if (!qword_1EB3076E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076E0);
  }

  return result;
}

unint64_t sub_1A8839E6C()
{
  result = qword_1EB3076E8;
  if (!qword_1EB3076E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076E8);
  }

  return result;
}

unint64_t sub_1A8839EC4()
{
  result = qword_1EB3076F0;
  if (!qword_1EB3076F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076F0);
  }

  return result;
}

unint64_t sub_1A8839F1C()
{
  result = qword_1EB3076F8;
  if (!qword_1EB3076F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3076F8);
  }

  return result;
}

unint64_t sub_1A8839F74()
{
  result = qword_1EB307700;
  if (!qword_1EB307700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307700);
  }

  return result;
}

unint64_t sub_1A8839FCC()
{
  result = qword_1EB307708;
  if (!qword_1EB307708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307708);
  }

  return result;
}

uint64_t type metadata accessor for FileTransferExplicitDownloadSucceeded()
{
  result = qword_1EB307738;
  if (!qword_1EB307738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A883A094()
{
  sub_1A883A118();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A883A118()
{
  if (!qword_1EB307748)
  {
    type metadata accessor for RemoteIntentMirrorFile(255);
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB307748);
    }
  }
}

uint64_t sub_1A883A170@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A883C4A8(v12, v10, type metadata accessor for RemoteIntentMirrorFileRepresentation);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A883C448(v10, type metadata accessor for RemoteIntentMirrorFileRepresentation);
      }

      if (v14)
      {
        break;
      }

      sub_1A883C448(v10, type metadata accessor for RemoteIntentMirrorFileRepresentation);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A883C510(v10, v18, type metadata accessor for RemoteIntentMirrorFileRepresentation);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1A883A33C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307710);
  sub_1A85EF0E4(v0, qword_1EB307710);
  return sub_1A88C7E48();
}

uint64_t sub_1A883A3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  if (qword_1EB3022C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1A88C7E58();
  sub_1A85EF0E4(v13, qword_1EB307710);
  v14 = sub_1A88C7E38();
  v15 = sub_1A88C89D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = a2;
    v29 = v17;
    v18 = a1;
    v19 = v7;
    v20 = v3;
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A891E500, &v29);
    _os_log_impl(&dword_1A85E5000, v14, v15, "%s", v16, 0xCu);
    sub_1A85F1084(v21);
    v22 = v21;
    v3 = v20;
    v7 = v19;
    a1 = v18;
    a2 = v28;
    MEMORY[0x1AC571F20](v22, -1, -1);
    MEMORY[0x1AC571F20](v16, -1, -1);
  }

  v23 = sub_1A88C87A8();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_1A883C4A8(v3, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FileTransferExplicitDownloadSucceeded);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_1A883C510(v9, v26 + v24, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(v26 + v25) = a2;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;

  swift_unknownObjectRetain();
  sub_1A885A178(0, 0, v12, &unk_1A88F3E30, v26);
}

uint64_t sub_1A883A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v6[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1A883A7C0;

  return sub_1A883AC10(a5);
}

uint64_t sub_1A883A7C0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A883A98C;
  }

  else
  {
    v2 = sub_1A883A8D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A883A8D4()
{
  v1 = *(v0 + 24);
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = sub_1A88C82A8();
  [v1 fileTransfer:v2 explicitDownloadSucceededWithPath:v3 livePhotoBundlePath:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A883A98C()
{
  v22 = v0;
  if (qword_1EB3022C0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB307710);
  sub_1A883C4A8(v3, v2, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  v5 = v1;
  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[4];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    v14 = *v10;
    v15 = v10[1];

    sub_1A883C448(v10, type metadata accessor for FileTransferExplicitDownloadSucceeded);
    v16 = sub_1A85F0394(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_1A85E5000, v6, v7, "Caught error while attempting to download transfer guid: %s. Not forwarding to listener. Error: %@", v11, 0x16u);
    sub_1A85EF638(v12, &qword_1EB306540);
    MEMORY[0x1AC571F20](v12, -1, -1);
    sub_1A85F1084(v13);
    MEMORY[0x1AC571F20](v13, -1, -1);
    MEMORY[0x1AC571F20](v11, -1, -1);
  }

  else
  {

    sub_1A883C448(v10, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A883AC10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB307788);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A883AD40, 0, 0);
}

uint64_t sub_1A883AD40()
{
  v32 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = v0[3];
  *(swift_task_alloc() + 16) = v6;
  sub_1A883A170(sub_1A883C3D4, v5, v2);

  sub_1A8728D80(v2, v1, &qword_1EB307788);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[8];
  if (v7 == 1)
  {
    sub_1A85EF638(v8, &qword_1EB307788);
    if (qword_1EB3022C0 != -1)
    {
      swift_once();
    }

    v9 = v0[3];
    v10 = v0[4];
    v11 = sub_1A88C7E58();
    sub_1A85EF0E4(v11, qword_1EB307710);
    sub_1A883C4A8(v9, v10, type metadata accessor for FileTransferExplicitDownloadSucceeded);
    v12 = sub_1A88C7E38();
    v13 = sub_1A88C89C8();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[4];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31[0] = v17;
      *v16 = 136315138;
      v18 = *v15;
      v19 = v15[1];

      sub_1A883C448(v15, type metadata accessor for FileTransferExplicitDownloadSucceeded);
      v20 = sub_1A85F0394(v18, v19, v31);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1A85E5000, v12, v13, "Did not copy file to disk because we did not have a mirror file in the auxiliary output for: %s", v16, 0xCu);
      sub_1A85F1084(v17);
      MEMORY[0x1AC571F20](v17, -1, -1);
      MEMORY[0x1AC571F20](v16, -1, -1);
    }

    else
    {

      sub_1A883C448(v15, type metadata accessor for FileTransferExplicitDownloadSucceeded);
    }

    v28 = v0[9];
    sub_1A883C3F4();
    swift_allocError();
    swift_willThrow();
    sub_1A85EF638(v28, &qword_1EB307788);

    v29 = v0[1];

    return v29();
  }

  else
  {
    sub_1A883C510(v8, v0[7], type metadata accessor for RemoteIntentMirrorFileRepresentation);
    if (qword_1EB3022C0 != -1)
    {
      swift_once();
    }

    v21 = sub_1A88C7E58();
    sub_1A85EF0E4(v21, qword_1EB307710);
    v22 = sub_1A88C7E38();
    v23 = sub_1A88C89D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1A85F0394(0xD000000000000016, 0x80000001A891E520, v31);
      _os_log_impl(&dword_1A85E5000, v22, v23, "%s", v24, 0xCu);
      sub_1A85F1084(v25);
      MEMORY[0x1AC571F20](v25, -1, -1);
      MEMORY[0x1AC571F20](v24, -1, -1);
    }

    v26 = sub_1A88C72E8();
    v0[10] = v26;
    v0[11] = *(v26 - 8);
    v0[12] = swift_task_alloc();
    if (qword_1EB302380 != -1)
    {
      swift_once();
    }

    v27 = qword_1EB309050;
    v0[13] = qword_1EB309050;

    return MEMORY[0x1EEE6DFA0](sub_1A883B248, v27, 0);
  }
}

uint64_t sub_1A883B248()
{
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A883B2D8, v1, 0);
}

uint64_t sub_1A883B2D8()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1A883B378;
  v2 = v0[12];
  v3 = v0[7];

  return sub_1A88AD55C(v2, v3);
}

uint64_t sub_1A883B378()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1A883B57C;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_1A883B4A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A883B4A4()
{
  v1 = v0[9];
  sub_1A883C448(v0[7], type metadata accessor for RemoteIntentMirrorFileRepresentation);
  sub_1A85EF638(v1, &qword_1EB307788);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A883B57C()
{
  v1 = v0[9];
  sub_1A883C448(v0[7], type metadata accessor for RemoteIntentMirrorFileRepresentation);
  sub_1A85EF638(v1, &qword_1EB307788);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A883B64C(uint64_t a1, void *a2)
{
  v3 = (a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24));
  if (*v3 == *a2 && v3[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A88C9398() & 1;
  }
}

uint64_t sub_1A883B6B8(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB3077B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A870C278(a1, a1[3]);
  sub_1A883C578();
  sub_1A88C95C8();
  v8[15] = 0;
  sub_1A88C9278();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A88C9278();
    v8[13] = 2;
    sub_1A88C9278();
    type metadata accessor for FileTransferExplicitDownloadSucceeded();
    v8[12] = 3;
    type metadata accessor for RemoteIntentMirrorFile(0);
    sub_1A883C63C(&qword_1EB3077C0, type metadata accessor for RemoteIntentMirrorFile);
    sub_1A88C9228();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A883B8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1A870CCE0(&qword_1EB305128);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1A870CCE0(&qword_1EB3077A0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 36);
  v15 = type metadata accessor for RemoteIntentMirrorFile(0);
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(v13 + v14, 1, 1, v15);
  sub_1A870C278(a1, a1[3]);
  sub_1A883C578();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
    return sub_1A85EF638(v13 + v28, &qword_1EB305128);
  }

  else
  {
    v24 = v6;
    v18 = v26;
    v17 = v27;
    v32 = 0;
    *v13 = sub_1A88C9108();
    v13[1] = v19;
    v31 = 1;
    v13[2] = sub_1A88C9108();
    v13[3] = v20;
    v30 = 2;
    v23 = 0;
    v13[4] = sub_1A88C9108();
    v13[5] = v21;
    v29 = 3;
    sub_1A883C63C(&qword_1EB3077B0, type metadata accessor for RemoteIntentMirrorFile);
    sub_1A88C90B8();
    (*(v18 + 8))(v9, v17);
    sub_1A883C5CC(v24, v13 + v28);
    sub_1A883C4A8(v13, v25, type metadata accessor for FileTransferExplicitDownloadSucceeded);
    sub_1A85F1084(a1);
    return sub_1A883C448(v13, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  }
}

unint64_t sub_1A883BD00()
{
  v1 = 1684632935;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x7272694D656C6966;
  }

  if (*v0)
  {
    v1 = 1752457584;
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

uint64_t sub_1A883BD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A883C804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A883BD9C(uint64_t a1)
{
  v2 = sub_1A883C578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A883BDD8(uint64_t a1)
{
  v2 = sub_1A883C578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A883BE14(uint64_t a1)
{
  v3 = sub_1A870CCE0(&qword_1EB305128);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for RemoteIntentMirrorFile(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8728D80(v1 + *(a1 + 28), v5, &qword_1EB305128);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A85EF638(v5, &qword_1EB305128);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1A883C510(v5, v9, type metadata accessor for RemoteIntentMirrorFile);
    sub_1A870CCE0(&qword_1EB303E78);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A88E14F0;
    sub_1A883C510(v9, v12 + v11, type metadata accessor for RemoteIntentMirrorFile);
    return v12;
  }
}

ValueMetadata *sub_1A883BFF8()
{
  if (qword_1EB3022C8 != -1)
  {
    swift_once();
  }

  return &type metadata for DaemonAttachmentBroadcastEntity;
}

uint64_t sub_1A883C048()
{
  v0 = qword_1EB307728;

  return v0;
}

uint64_t sub_1A883C0B8(uint64_t a1)
{
  *(a1 + 8) = sub_1A883C63C(&unk_1EB307750, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  result = sub_1A883C63C(&qword_1EB304F18, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A883C13C(uint64_t a1)
{
  result = sub_1A883C63C(&unk_1EB307760, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A883C194(uint64_t a1)
{
  result = sub_1A883C63C(&qword_1EB303220, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A883C1F0()
{
  result = qword_1EB307770;
  if (!qword_1EB307770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307770);
  }

  return result;
}

uint64_t sub_1A883C244(uint64_t a1)
{
  result = sub_1A883C63C(&qword_1EB307780, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A883C29C(uint64_t a1)
{
  v4 = *(type metadata accessor for FileTransferExplicitDownloadSucceeded() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A8714B6C;

  return sub_1A883A6F4(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_1A883C3F4()
{
  result = qword_1EB307790;
  if (!qword_1EB307790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307790);
  }

  return result;
}

uint64_t sub_1A883C448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A883C4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A883C510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A883C578()
{
  result = qword_1EB3077A8;
  if (!qword_1EB3077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3077A8);
  }

  return result;
}

uint64_t sub_1A883C5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A883C63C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A883C6A8()
{
  result = qword_1EB3077C8;
  if (!qword_1EB3077C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3077C8);
  }

  return result;
}

unint64_t sub_1A883C700()
{
  result = qword_1EB3077D0;
  if (!qword_1EB3077D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3077D0);
  }

  return result;
}

unint64_t sub_1A883C758()
{
  result = qword_1EB3077D8;
  if (!qword_1EB3077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3077D8);
  }

  return result;
}

unint64_t sub_1A883C7B0()
{
  result = qword_1EB3077E0[0];
  if (!qword_1EB3077E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3077E0);
  }

  return result;
}

uint64_t sub_1A883C804(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E580 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7272694D656C6966 && a2 == 0xEA0000000000726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t IMLinkedHashMapInMemoryStore.firstNode.getter()
{
  sub_1A883D5AC();

  return swift_unknownObjectRetain();
}

uint64_t IMLinkedHashMapInMemoryStore.firstNode.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t IMLinkedHashMapInMemoryStore.lastNode.getter()
{
  sub_1A883D5E0();

  return swift_unknownObjectRetain();
}

uint64_t IMLinkedHashMapInMemoryStore.lastNode.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_unknownObjectRelease();
}

uint64_t IMLinkedHashMapInMemoryStore.count.getter()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v0 = sub_1A88C81D8();

  return v0;
}

uint64_t IMLinkedHashMapInMemoryStore.isEmpty.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  LOBYTE(v2) = MEMORY[0x1AC56EAB0](v5, AssociatedTypeWitness, v2, AssociatedConformanceWitness);

  return v2 & 1;
}

uint64_t IMLinkedHashMapInMemoryStore.__allocating_init()()
{
  v0 = swift_allocObject();
  IMLinkedHashMapInMemoryStore.init()();
  return v0;
}

void *IMLinkedHashMapInMemoryStore.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0[4] = sub_1A88C8168();
  return v0;
}

uint64_t IMLinkedHashMapInMemoryStore.subscript.getter()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A88C8208();
  swift_endAccess();
  return v1;
}

uint64_t sub_1A883CEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_unknownObjectRetain();
  sub_1A883D614(v4, a3);

  return swift_unknownObjectRelease();
}

uint64_t IMLinkedHashMapInMemoryStore.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1A883D614(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return swift_unknownObjectRelease();
}

void (*IMLinkedHashMapInMemoryStore.subscript.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[2] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7;
  v5[3] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[4] = v9;
  (*(v8 + 16))();
  *v5 = IMLinkedHashMapInMemoryStore.subscript.getter();
  return sub_1A883D104;
}

void sub_1A883D104(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    v7 = swift_unknownObjectRetain();
    sub_1A883D614(v7, v3);
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A883D614(v6, v3);
    (*(v4 + 8))(v3, v5);
  }

  swift_unknownObjectRelease();
  free(v3);

  free(v2);
}

uint64_t IMLinkedHashMapInMemoryStore.removeValue(forKey:)()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A88C81F8();
  sub_1A88C81C8();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t IMLinkedHashMapInMemoryStore.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t IMLinkedHashMapInMemoryStore.__deallocating_deinit()
{
  IMLinkedHashMapInMemoryStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A883D34C()
{
  sub_1A883D5AC();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_1A883D378(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IMLinkedHashMapInMemoryStore.firstNode.modify();
  return sub_1A870FAF0;
}

uint64_t sub_1A883D3E8()
{
  sub_1A883D5E0();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_1A883D414(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IMLinkedHashMapInMemoryStore.lastNode.modify();
  return sub_1A870F684;
}

uint64_t sub_1A883D490(uint64_t a1, uint64_t a2)
{
  sub_1A883D614(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1A883D524(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IMLinkedHashMapInMemoryStore.subscript.modify(v2);
  return sub_1A870FAF0;
}

uint64_t sub_1A883D614(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v6 + 16))(&v8[-v5], a2, AssociatedTypeWitness);
  v9 = a1;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1A88C81F8();
  swift_unknownObjectRetain();
  sub_1A88C8218();
  return swift_endAccess();
}

uint64_t sub_1A883D7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a2);
  return (*(a4 + 112))(v9, a3, a4);
}

uint64_t sub_1A883DA4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A883DA84()
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](*v0);
  return sub_1A88C9578();
}

uint64_t sub_1A883DAC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A883DB18()
{
  type metadata accessor for IMLowPowerModeMonitor();
  v0 = swift_allocObject();
  v1 = sub_1A883E7C8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  sub_1A870CCE0(&qword_1EB307870);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 2;
  *(result + 36) = 0;
  *(v0 + 16) = result;
  qword_1EB300578 = v0;
  return result;
}

uint64_t static IMLowPowerModeMonitor.shared.getter()
{
  if (qword_1EB300570 != -1)
  {
    swift_once();
  }
}

void sub_1A883DBFC(uint64_t a1)
{
  v2 = (a1 + 20);
  if (!*(a1 + 20))
  {
    v3 = v1;
    sub_1A85E90C8();

    v4 = sub_1A88C8A38();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A883FFB8;
    *(v5 + 24) = v3;
    v7[4] = sub_1A883FFBC;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A883DAC4;
    v7[3] = &unk_1F1BB5468;
    v6 = _Block_copy(v7);

    notify_register_dispatch("com.apple.system.lowpowermode", v2, v4, v6);

    _Block_release(v6);
  }
}

uint64_t sub_1A883DD28(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 20);
  if (!*(a1 + 20))
  {
    v4 = v1;
    sub_1A85E90C8();

    v5 = sub_1A88C8A38();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A883E774;
    *(v6 + 24) = v4;
    aBlock[4] = sub_1A883E778;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A883DAC4;
    aBlock[3] = &unk_1F1BB5418;
    v7 = _Block_copy(aBlock);

    notify_register_dispatch("com.apple.system.lowpowermode", v3, v5, v7);

    _Block_release(v7);
  }

  result = *v3;
  if (result)
  {
    aBlock[0] = 0;
    if (notify_get_state(result, aBlock))
    {
      return 0;
    }

    else
    {
      result = aBlock[0] != 0;
      *(a1 + 16) = result;
    }
  }

  return result;
}

uint64_t sub_1A883DEB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_1A883DF08(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 10);
  return v3;
}

uint64_t sub_1A883DF08@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 == 2)
  {
    result = sub_1A883DD28(result);
    v4 = result & 1;
  }

  else
  {
    v4 = v3 & 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1A883DF50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IMLowPowerModeMonitor.ListenerBox();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 16);

  os_unfair_lock_lock(v6 + 10);
  sub_1A883E050(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
  sub_1A883E72C(&qword_1EB300588, type metadata accessor for IMLowPowerModeMonitor.ListenerBox);
  return sub_1A88C8D88();
}

uint64_t sub_1A883E050(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A883DBFC(a1);
  return sub_1A883ED50(v2);
}

uint64_t sub_1A883E098(uint64_t a1)
{
  sub_1A8717304(a1, v4);
  type metadata accessor for IMLowPowerModeMonitor.ListenerBox();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + 16);
    os_unfair_lock_lock(v3 + 10);
    sub_1A883E124();
    os_unfair_lock_unlock(v3 + 10);
  }

  return result;
}

unint64_t sub_1A883E15C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (!*v1)
  {
    if (v4)
    {
      v8 = 0;
      while (*(v3 + 8 * v8) != a1)
      {
        if (v4 == ++v8)
        {
          return 0;
        }
      }

      v6 = 0;
      return sub_1A883F37C(v8, v6);
    }

    return 0;
  }

  v5 = sub_1A8872B98(a1, v3, v4, (*v1 + 16));
  if (v7)
  {
    return 0;
  }

  v8 = v5;
  return sub_1A883F37C(v8, v6);
}

uint64_t sub_1A883E1D4(char a1)
{
  v3 = sub_1A88C7EC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A88C7EF8();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  os_unfair_lock_lock((v10 + 40));
  *(v10 + 32) = a1;
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  os_unfair_lock_unlock((v10 + 40));
  v26 = *(v12 + 16);
  if (v26)
  {
    v25 = a1 & 1;
    v13 = sub_1A85E90C8();
    v23 = v29;
    v24 = v13;
    v21 = (v7 + 8);
    v22 = (v4 + 8);
    v20 = v11;

    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      v16 = *(v12 + 8 * v15++ + 32);

      v17 = sub_1A88C8A38();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v25;
      v29[2] = sub_1A883E6FC;
      v29[3] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v29[0] = sub_1A85EB8C0;
      v29[1] = &unk_1F1BB53C8;
      v19 = _Block_copy(aBlock);

      _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A883E72C(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
      sub_1A870CCE0(&unk_1EB3081F0);
      sub_1A85EB85C();
      sub_1A88C8CE8();
      MEMORY[0x1AC56F330](0, v9, v6, v19);
      _Block_release(v19);

      (*v22)(v6, v3);
      result = (*v21)(v9, v27);
      if (v26 == v15)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t IMLowPowerModeMonitor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A883E72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A883E77C(int a1)
{
  v2 = *(v1 + 16);
  state64 = 0;
  result = notify_get_state(a1, &state64);
  if (!result)
  {
    return v2(state64 != 0);
  }

  return result;
}

uint64_t sub_1A883E7C8(unint64_t a1)
{
  v5 = sub_1A87E9094();
  v6 = sub_1A883EB10(&v31, a1, 0, 1, v5);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = sub_1A88C8D38();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_1A860B438(a1);
    return v6;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1A88C8D38() < 0)
    {
      goto LABEL_52;
    }

    v10 = sub_1A88C8D38();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    type metadata accessor for IMLowPowerModeMonitor.ListenerBox();

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      sub_1A88C8E28();
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_1A88C8FD8();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  sub_1A88C9418();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = v6;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = sub_1A88C8D38();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    sub_1A879FCD8(v1, v14, i, v3);
  }

  type metadata accessor for IMLowPowerModeMonitor.ListenerBox();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    sub_1A88C8E28();
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    sub_1A88C8FD8();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_1A883FC8C(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_1A883EB10(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    v19 = a3;
    v20 = a4;
    v9 = sub_1A88C8D38();
    a4 = v20;
    a3 = v19;
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = MEMORY[0x1AC56E550](v9);
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 4)
  {
    if (v8)
    {
      if (sub_1A88C8D38() >= 2)
      {
        v15 = sub_1A883FB0C(a2);
        goto LABEL_21;
      }

      v14 = sub_1A88C8D38();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= 2)
      {
        v15 = sub_1A883EC40((a2 & 0xFFFFFFFFFFFFFF8) + 32, v14);
LABEL_21:
        v18 = v15;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v14;
    return result;
  }

  v16 = MEMORY[0x1AC56E560]();
  sub_1A883F194(&v21, a2, (v16 + 16));
  result = v16;
  v18 = v21;
LABEL_22:
  *a1 = v18;
  return result;
}

uint64_t sub_1A883EC40(uint64_t a1, uint64_t a2)
{
  v10 = sub_1A860B438(MEMORY[0x1E69E7CC0]);
  result = sub_1A88C8F08();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v7 = *(v10 + 16);
        v8 = (v10 + 32);
        while (v7)
        {
          v9 = *v8++;
          --v7;
          if (*(a1 + 8 * v5) == v9)
          {
            goto LABEL_12;
          }
        }

        swift_retain_n();
        sub_1A88C8ED8();
        sub_1A88C8F18();
        sub_1A88C8F28();
        sub_1A88C8EE8();

        ++v5;
        if (v6 == a2)
        {
          v5 = a2;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_12:

    return v5;
  }

  return result;
}

uint64_t sub_1A883ED50(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    sub_1A8872B98(a1, v3, v4, (*v1 + 16));
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_8:
      sub_1A883EDE4();
      return 1;
    }

    v6 = 0;
    while (*(v3 + 8 * v6) != a1)
    {
      if (v4 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_1A883EDE4()
{

  sub_1A88C8ED8();
  sub_1A88C8F18();
  sub_1A88C8F28();
  result = sub_1A88C8EE8();
  v2 = *v0;
  v3 = *(v0[1] + 16);
  if (*v0)
  {
    swift_beginAccess();
    if (MEMORY[0x1AC56E520](*(v2 + 16) & 0x3FLL) >= v3)
    {
      result = swift_isUniquelyReferenced_native();
      v4 = *v0;
      if ((result & 1) == 0)
      {
        if (!v4)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v5 = sub_1A88C7C78();

        *v0 = v5;
        v4 = v5;
      }

      if (v4)
      {
        return sub_1A88C7C18();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v3 < 0x10)
  {
    return result;
  }

  return sub_1A883EF1C();
}

uint64_t sub_1A883EF1C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1AC56E550](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A883EFBC(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A883EFBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1AC56E550](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1AC56E560](v8, a4);
    sub_1A883F03C(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1A883F08C(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        sub_1A88C9528();
        MEMORY[0x1AC56FE00](v7);
        result = sub_1A88C9578();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1A88C7BF8())
        {
          while (1)
          {
            sub_1A88C7C48();
          }
        }

        result = sub_1A88C7C38();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A883F194(void *a1, int64_t a2, void *a3)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v4 = sub_1A883FC10(a2, sub_1A883FF70);
  }

  else
  {
    v4 = sub_1A883F214((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v5;
  return v4 & 1;
}

uint64_t sub_1A883F214(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *(v5 + 8 * i);
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v8);
      result = sub_1A88C9578();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1A88C7BF8();
      while (1)
      {
        v9 = sub_1A88C7C28();
        if (v10)
        {
          break;
        }

        if (*(v5 + 8 * v9) == *(v5 + 8 * i))
        {
          return 0;
        }

        sub_1A88C7C48();
      }

      result = sub_1A88C7C38();
      if (v7 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A883F37C(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1A883F4B8(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1AC56E530]())
  {
LABEL_16:
    v12 = sub_1A883F4B8(a1);
    sub_1A883EF1C();
    return v12;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1A88C7C78();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {
    result = sub_1A883F544(a2, (v9 + 16), v9 + 32, v2);
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      sub_1A883F724(a1, v11, v4, (v9 + 16));
      return sub_1A883F4B8(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A883F4B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1A888724C(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_1A88C8EE8();
    return v8;
  }

  return result;
}

unint64_t sub_1A883F544(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1A88C7BF8();
  sub_1A88C7C48();
  if (v15)
  {
    v7 = sub_1A88C7C08();
    while (1)
    {
      result = sub_1A88C7C28();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v11);
      result = sub_1A88C9578();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1A88C7C28();
      v6 = a1;
      sub_1A88C7C18();
LABEL_3:
      sub_1A88C7C48();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1A88C7C18();
}

uint64_t sub_1A883F724(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1AC56E520](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < v8)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 8 * v10);
            sub_1A88C9528();
            MEMORY[0x1AC56FE00](v11);
            result = sub_1A88C9578();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1A88C7BF8())
            {
              while (1)
              {
                v12 = sub_1A88C7C28();
                if ((v13 & 1) == 0 && v12 == v10)
                {
                  break;
                }

                sub_1A88C7C48();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            result = sub_1A88C7C38();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1A88C7BF8();
      v20 = sub_1A88C7C28();
      if ((v21 & 1) != 0 || v20 >= v8)
      {
LABEL_29:
        result = sub_1A88C7C48();
LABEL_17:
        v14 = a4[1];
        if (__OFSUB__(v14 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v15 = 1 << *a4;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v18 = (v17 & (((v14 >> 6) - v5) >> 63)) + (v14 >> 6) - v5;
        if (v18 < v17)
        {
          v17 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v18 - v17) << 6);
        return result;
      }

      if (!__OFADD__(v20, v5))
      {
        sub_1A88C7C38();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1A88C7BF8();
      v22 = sub_1A88C7C28();
      if ((v23 & 1) == 0 && v22 >= v4)
      {
        v16 = __OFSUB__(v22, v5);
        result = v22 - v5;
        if (v16)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1A88C7C38();
      }

      return sub_1A88C7C48();
    }

    v4 = a2;
    v19 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x1AC56E520](*a4 & 0x3FLL);
    if (v19 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      while (1)
      {
        v24 = *(a3 + 32 + 8 * v4);
        sub_1A88C9528();
        MEMORY[0x1AC56FE00](v24);
        result = sub_1A88C9578();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1A88C7BF8())
        {
          while (1)
          {
            v25 = sub_1A88C7C28();
            if ((v26 & 1) == 0 && v25 == v4)
            {
              break;
            }

            sub_1A88C7C48();
          }
        }

        result = sub_1A88C7C38();
        if (++v4 == v9)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_1A883FB0C(int64_t a1)
{
  v1 = sub_1A883FB54(a1);
  v2 = v1[2];

  return sub_1A883EC40((v1 + 4), v2);
}

void *sub_1A883FB54(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1A879FDBC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1A883FC10(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1A883FB54(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

uint64_t sub_1A883FC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = v3;
  v6 = a2;
  v7 = result;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v8);
      result = sub_1A88C9578();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      sub_1A88C7BF8();
      result = sub_1A88C7C28();
      if ((v12 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          sub_1A88C7C48();
          result = sub_1A88C7C28();
          if (v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v14 = *(v9 + 16);
      if (v14)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    sub_1A88C8ED8();
    sub_1A88C8F18();
    sub_1A88C8F28();
    sub_1A88C8EE8();
    v15 = v5[1];
    v16 = *(v15 + 16);
    if (!v10)
    {
      if (v16 > 0xF)
      {
        v17 = 0;
LABEL_23:
        v18 = MEMORY[0x1AC56E550](v16);
        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        v20 = sub_1A883EFBC(v15, v19, 0, v17);

        *v5 = v20;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (MEMORY[0x1AC56E520](*(v10 + 16) & 0x3FLL) >= v16)
    {
      result = swift_isUniquelyReferenced_native();
      v21 = *v5;
      if ((result & 1) == 0)
      {
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = sub_1A88C7C78();

        *v5 = v22;
        v21 = v22;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      sub_1A88C7C18();
LABEL_4:

      goto LABEL_5;
    }

    v17 = *(v10 + 24) & 0x3FLL;
    if (v16 > 0xF || v17)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1A883FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A883F214(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_1A883FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A870CCE0(&qword_1EB307878);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v17 = 0xD000000000000010;
  v18 = 0x80000001A891E6A0;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v10 = sub_1A8602F10(v19), (v11 & 1) == 0))
  {
    sub_1A8717360(v19);
    goto LABEL_6;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v10, v20);
  sub_1A8717360(v19);
  sub_1A870CCE0(&qword_1EB303320);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  sub_1A88470CC(v17, v7);
  v12 = 0;
LABEL_7:
  v13 = type metadata accessor for RemoteIntentItemContent(0);
  (*(*(v13 - 8) + 56))(v7, v12, 1, v13);
  sub_1A8761C7C(v7, v9, &qword_1EB307878);
  sub_1A88470CC(a1, a2);
  v14 = type metadata accessor for RemoteIntentMessageItem(0);
  return sub_1A8761C7C(v9, a2 + *(v14 + 20), &qword_1EB307878);
}

unint64_t sub_1A88401B8()
{
  v1 = sub_1A870CCE0(&qword_1EB307878);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A884B02C();
  v16 = v4;
  *&v13 = 0xD000000000000010;
  *(&v13 + 1) = 0x80000001A891E6A0;
  sub_1A88C8D88();
  v5 = type metadata accessor for RemoteIntentMessageItem(0);
  sub_1A8728D80(v0 + *(v5 + 20), v3, &qword_1EB307878);
  v6 = type metadata accessor for RemoteIntentItemContent(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1A85EF638(v3, &qword_1EB307878);
    sub_1A88BEFF8(v15, &v13);
    sub_1A85EF638(&v13, &qword_1EB3057B0);
    sub_1A8717360(v15);
    return v16;
  }

  else
  {
    v8 = sub_1A884B02C();
    v14 = sub_1A870CCE0(&qword_1EB303320);
    *&v13 = v8;
    sub_1A88504B8(v3, type metadata accessor for RemoteIntentItemContent);
    sub_1A85E99B0(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v4;
    sub_1A87AC424(v12, v15, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v15);
    return v11;
  }
}

uint64_t sub_1A88403B4(char a1)
{
  result = 0x6E497265646E6573;
  switch(a1)
  {
    case 1:
      result = 0x74616D726F666E75;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 1684632935;
      break;
    case 4:
      result = 0x656D614E6D6F6F72;
      break;
    case 5:
      result = 0x656C646E6168;
      break;
    case 6:
      result = 0x746E756F636361;
      break;
    case 7:
      result = 0x49746E756F636361;
      break;
    case 8:
      result = 0x65636976726573;
      break;
    case 9:
      v3 = 0x67617373656DLL;
      goto LABEL_56;
    case 10:
      result = 1701869940;
      break;
    case 11:
      result = 0x426E6F6F6C6C6162;
      break;
    case 12:
      result = 1701669236;
      break;
    case 13:
    case 23:
    case 45:
    case 46:
      result = 0xD000000000000011;
      break;
    case 14:
    case 39:
    case 44:
    case 55:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 47:
    case 66:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x444974726F73;
      break;
    case 19:
      result = 0x476F54796C706572;
      break;
    case 20:
      result = 0x646F426E69616C70;
      break;
    case 21:
      result = 0x6174614479646F62;
      break;
    case 22:
      result = 0x7463656A627573;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x64616552656D6974;
      break;
    case 26:
      result = 0x696C6544656D6974;
      break;
    case 27:
      result = 0x79616C50656D6974;
      break;
    case 28:
      result = 0x7367616C66;
      break;
    case 29:
      result = 0x7453657269707865;
      break;
    case 30:
      result = 0x4464616F6C796170;
      break;
    case 31:
    case 61:
    case 62:
    case 70:
      result = 0xD000000000000015;
      break;
    case 32:
    case 34:
    case 38:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0x726F727265;
      break;
    case 35:
    case 40:
    case 43:
    case 57:
      result = 0xD000000000000012;
      break;
    case 36:
      result = 0x656C61636F6CLL;
      break;
    case 37:
      result = 0x646E617453657375;
      break;
    case 41:
      result = 0xD000000000000013;
      break;
    case 42:
      result = 0x52676E6965427369;
      break;
    case 48:
      result = 0x7469644565746164;
      break;
    case 49:
      result = 0x6F63655265746164;
      break;
    case 50:
      result = 0x6E756F4374726170;
      break;
    case 51:
      v3 = 0x63616C706572;
LABEL_56:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4965000000000000;
      break;
    case 52:
      result = 0x6B6361626C6C6166;
      break;
    case 53:
    case 54:
      result = 0x656C756465686373;
      break;
    case 56:
      result = 0x6E6148726568746FLL;
      break;
    case 58:
      result = 0x79546E6F69746361;
      break;
    case 59:
      result = 0xD000000000000013;
      break;
    case 60:
      result = 0x646F43726F727265;
      break;
    case 63:
      result = 0xD00000000000001CLL;
      break;
    case 64:
      result = 0xD00000000000001ELL;
      break;
    case 65:
    case 69:
      result = 0xD000000000000016;
      break;
    case 67:
      result = 0x74695470756F7267;
      break;
    case 68:
      result = 0xD000000000000013;
      break;
    case 71:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8840A80(void *a1)
{
  v2 = v1;
  v4 = sub_1A870CCE0(&qword_1EB3079D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A8850618();
  sub_1A88C95C8();
  v8 = *(v2 + 16);
  v9 = *(v2 + 48);
  v43 = *(v2 + 32);
  v44 = v9;
  v10 = *(v2 + 16);
  v42[0] = *v2;
  v42[1] = v10;
  v11 = *(v2 + 48);
  v39 = v43;
  v40 = v11;
  v45 = *(v2 + 64);
  v41 = *(v2 + 64);
  v37 = v42[0];
  v38 = v8;
  v36 = 0;
  sub_1A8728D80(v42, &v31, &qword_1EB307968);
  sub_1A87C9C04();
  v12 = v46;
  sub_1A88C9228();
  if (v12)
  {
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    sub_1A85EF638(&v31, &qword_1EB307968);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    sub_1A85EF638(&v31, &qword_1EB307968);
    LOBYTE(v28) = 1;
    sub_1A88C91C8();
    LOBYTE(v28) = 2;
    sub_1A88C91C8();
    LOBYTE(v28) = 3;
    sub_1A88C91C8();
    LOBYTE(v28) = 4;
    sub_1A88C91C8();
    LOBYTE(v28) = 5;
    sub_1A88C91C8();
    LOBYTE(v28) = 6;
    sub_1A88C91C8();
    LOBYTE(v28) = 7;
    sub_1A88C91C8();
    LOBYTE(v28) = 8;
    sub_1A88C91C8();
    LOBYTE(v28) = 9;
    sub_1A88C9208();
    v14 = v2;
    LOBYTE(v28) = *(v2 + 209);
    v30 = 10;
    sub_1A8850974();
    sub_1A88C9228();
    LOBYTE(v28) = 11;
    sub_1A88C91C8();
    v46 = type metadata accessor for RemoteIntentItemContent(0);
    LOBYTE(v28) = 12;
    sub_1A88C7478();
    sub_1A8720F18(&qword_1EB303500);
    sub_1A88C9228();
    LOBYTE(v28) = 13;
    sub_1A88C9208();
    LOBYTE(v28) = 14;
    sub_1A88C91C8();
    LOBYTE(v28) = 15;
    sub_1A88C91C8();
    LOBYTE(v28) = 16;
    sub_1A88C91C8();
    LOBYTE(v28) = 17;
    sub_1A88C91C8();
    LOBYTE(v28) = 18;
    sub_1A88C9208();
    LOBYTE(v28) = 19;
    sub_1A88C91C8();
    LOBYTE(v28) = 20;
    sub_1A88C91C8();
    v15 = (v2 + v46[25]);
    v16 = v15[1];
    v28 = *v15;
    v29 = v16;
    v30 = 21;
    sub_1A88359C0(v28, v16);
    v27 = sub_1A871CE08();
    sub_1A88C9228();
    sub_1A871CD4C(v28, v29);
    LOBYTE(v28) = 22;
    sub_1A88C91C8();
    v28 = *(v2 + v46[27]);
    v30 = 23;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C9228();
    v17 = (v2 + v46[28]);
    v18 = v17[1];
    v28 = *v17;
    v29 = v18;
    v30 = 24;
    sub_1A88359C0(v28, v18);
    sub_1A88C9228();
    sub_1A871CD4C(v28, v29);
    LOBYTE(v28) = 25;
    sub_1A88C9228();
    LOBYTE(v28) = 26;
    sub_1A88C9228();
    LOBYTE(v28) = 27;
    sub_1A88C9228();
    v19 = v2 + v46[32];
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v28 = v20;
    LOBYTE(v29) = v19;
    v30 = 28;
    sub_1A88509C8();
    sub_1A88C9228();
    LOBYTE(v28) = *(v2 + v46[33]);
    v30 = 29;
    sub_1A8850A1C();
    sub_1A88C9228();
    v21 = (v2 + v46[34]);
    v22 = v21[1];
    v28 = *v21;
    v29 = v22;
    v30 = 30;
    sub_1A88359C0(v28, v22);
    sub_1A88C9228();
    sub_1A871CD4C(v28, v29);
    LOBYTE(v28) = 31;
    sub_1A88C91C8();
    LOBYTE(v28) = 32;
    sub_1A88C9228();
    LOBYTE(v28) = 33;
    sub_1A88C9208();
    v23 = (v2 + v46[38]);
    v24 = v23[1];
    v28 = *v23;
    v29 = v24;
    v30 = 34;
    sub_1A88359C0(v28, v24);
    sub_1A88C9228();
    sub_1A871CD4C(v28, v29);
    v27 = v46[39];
    LOBYTE(v28) = 35;
    type metadata accessor for RemoteIntentMessageSummaryInfo();
    sub_1A88505D0(&qword_1EB3079F0, type metadata accessor for RemoteIntentMessageSummaryInfo);
    sub_1A88C9228();
    LOBYTE(v28) = 36;
    sub_1A88C91C8();
    LOBYTE(v28) = 37;
    sub_1A88C91D8();
    LOBYTE(v28) = 38;
    sub_1A88C91C8();
    LOBYTE(v28) = 39;
    sub_1A88C91D8();
    LOBYTE(v28) = 40;
    sub_1A88C91D8();
    LOBYTE(v28) = 41;
    sub_1A88C91D8();
    LOBYTE(v28) = 42;
    sub_1A88C91D8();
    LOBYTE(v28) = 43;
    sub_1A88C91C8();
    LOBYTE(v28) = 44;
    sub_1A88C91C8();
    v28 = *(v2 + v46[49]);
    v30 = 45;
    sub_1A870CCE0(&qword_1EB3078E0);
    sub_1A8850A70(&qword_1EB3079F8);
    sub_1A88C9228();
    LOBYTE(v28) = 46;
    sub_1A88C91C8();
    LOBYTE(v28) = 47;
    sub_1A88C91C8();
    LOBYTE(v28) = 48;
    sub_1A88C9228();
    LOBYTE(v28) = 49;
    sub_1A88C9228();
    LOBYTE(v28) = 50;
    sub_1A88C9208();
    LOBYTE(v28) = 51;
    sub_1A88C9248();
    LOBYTE(v28) = 52;
    sub_1A88C91C8();
    LOBYTE(v28) = *(v2 + v46[57]);
    v30 = 53;
    sub_1A8850AE0();
    sub_1A88C9228();
    LOBYTE(v28) = *(v2 + v46[58]);
    v30 = 54;
    sub_1A8850B34();
    sub_1A88C9228();
    LOBYTE(v28) = 55;
    sub_1A88C91C8();
    LOBYTE(v28) = 56;
    sub_1A88C91C8();
    LOBYTE(v28) = 57;
    sub_1A88C91C8();
    LOBYTE(v28) = 58;
    sub_1A88C9268();
    LOBYTE(v28) = 59;
    sub_1A88C91C8();
    v25 = *(v2 + v46[64] + 4);
    LOBYTE(v28) = 60;
    v30 = v25;
    sub_1A88C9238();
    LOBYTE(v28) = 61;
    sub_1A88C91C8();
    LOBYTE(v28) = 62;
    sub_1A88C9248();
    LOBYTE(v28) = 63;
    sub_1A88C9218();
    LOBYTE(v28) = 64;
    sub_1A88C9218();
    LOBYTE(v28) = 65;
    sub_1A88C91C8();
    v26 = *(v2 + v46[70]);
    v30 = 66;
    if (v26)
    {
      v28 = v26;

      sub_1A870CCE0(&qword_1EB3079A8);
      sub_1A8850C84(&qword_1EB307A28);
      sub_1A88C9228();
    }

    LOBYTE(v28) = 67;
    sub_1A88C91C8();
    LOBYTE(v28) = *(v14 + v46[72]);
    v30 = 68;
    sub_1A8850B88();
    sub_1A88C9228();
    LOBYTE(v28) = *(v14 + v46[73]);
    v30 = 69;
    sub_1A8850BDC();
    sub_1A88C9228();
    LOBYTE(v28) = *(v14 + v46[74]);
    v30 = 70;
    sub_1A8850C30();
    sub_1A88C9228();
    LOBYTE(v28) = 71;
    sub_1A88C9218();
    return (*(v5 + 8))(v7, 0);
  }
}

uint64_t sub_1A8841E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v4 = sub_1A870CCE0(&qword_1EB307898);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v148[-v5];
  v156 = sub_1A870CCE0(&qword_1EB307958);
  v7 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v9 = &v148[-v8];
  v10 = type metadata accessor for RemoteIntentItemContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v148[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v157 = a1;
  sub_1A870C278(a1, v13);
  sub_1A8850618();
  v155 = v9;
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(v157);
  }

  else
  {
    v152 = v12;
    v153 = v7;
    v151 = v10;
    v165 = 0;
    sub_1A87C9B04();
    sub_1A88C90B8();
    v15 = v162;
    v16 = v152;
    *(v152 + 2) = v161;
    *(v16 + 3) = v15;
    v16[64] = v163;
    v17 = v160;
    *v16 = v159;
    *(v16 + 1) = v17;
    LOBYTE(v158) = 1;
    *(v16 + 9) = sub_1A88C9058();
    *(v16 + 10) = v18;
    LOBYTE(v158) = 2;
    *(v16 + 11) = sub_1A88C9058();
    *(v16 + 12) = v19;
    LOBYTE(v158) = 3;
    *(v16 + 13) = sub_1A88C9058();
    *(v16 + 14) = v20;
    LOBYTE(v158) = 4;
    *(v16 + 15) = sub_1A88C9058();
    *(v16 + 16) = v21;
    LOBYTE(v158) = 5;
    *(v16 + 17) = sub_1A88C9058();
    *(v16 + 18) = v22;
    LOBYTE(v158) = 6;
    *(v16 + 19) = sub_1A88C9058();
    *(v16 + 20) = v23;
    LOBYTE(v158) = 7;
    v24 = sub_1A88C9058();
    v25 = v152;
    *(v152 + 21) = v24;
    *(v25 + 22) = v26;
    LOBYTE(v158) = 8;
    v27 = sub_1A88C9058();
    v28 = v152;
    *(v152 + 23) = v27;
    *(v28 + 24) = v29;
    LOBYTE(v158) = 9;
    v30 = sub_1A88C9098();
    v31 = v152;
    *(v152 + 25) = v30;
    v31[208] = v32 & 1;
    v164 = 10;
    sub_1A885066C();
    sub_1A88C90B8();
    v152[209] = v158;
    LOBYTE(v158) = 11;
    v33 = sub_1A88C9058();
    v34 = v152;
    *(v152 + 27) = v33;
    *(v34 + 28) = v35;
    v36 = sub_1A870CCE0(&unk_1EB3052E0);
    v37 = *(*(v36 - 8) + 64);
    MEMORY[0x1EEE9AC00](v36 - 8);
    v39 = &v148[-v38];
    sub_1A88C7478();
    LOBYTE(v158) = 12;
    sub_1A8720F18(&qword_1EB303510);
    sub_1A88C90B8();
    sub_1A8761C7C(v39, &v152[v151[16]], &unk_1EB3052E0);
    LOBYTE(v158) = 13;
    v40 = sub_1A88C9098();
    v41 = &v152[v151[17]];
    *v41 = v40;
    v41[8] = v42 & 1;
    LOBYTE(v158) = 14;
    v43 = sub_1A88C9058();
    v44 = &v152[v151[18]];
    *v44 = v43;
    v44[1] = v45;
    LOBYTE(v158) = 15;
    v46 = sub_1A88C9058();
    v47 = &v152[v151[19]];
    *v47 = v46;
    v47[1] = v48;
    LOBYTE(v158) = 16;
    v49 = sub_1A88C9058();
    v50 = &v152[v151[20]];
    *v50 = v49;
    v50[1] = v51;
    LOBYTE(v158) = 17;
    v52 = sub_1A88C9058();
    v53 = &v152[v151[21]];
    *v53 = v52;
    v53[1] = v54;
    LOBYTE(v158) = 18;
    v55 = sub_1A88C9098();
    v56 = &v152[v151[22]];
    *v56 = v55;
    v56[8] = v57 & 1;
    LOBYTE(v158) = 19;
    v58 = sub_1A88C9058();
    v59 = &v152[v151[23]];
    *v59 = v58;
    v59[1] = v60;
    LOBYTE(v158) = 20;
    v61 = sub_1A88C9058();
    v62 = &v152[v151[24]];
    *v62 = v61;
    v62[1] = v63;
    v164 = 21;
    sub_1A871C858();
    sub_1A88C90B8();
    *&v152[v151[25]] = v158;
    LOBYTE(v158) = 22;
    v64 = sub_1A88C9058();
    v65 = &v152[v151[26]];
    *v65 = v64;
    v65[1] = v66;
    sub_1A870CCE0(&qword_1EB303100);
    v164 = 23;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C90B8();
    *&v152[v151[27]] = v158;
    v164 = 24;
    v67 = sub_1A88C90B8();
    v150 = v148;
    *&v152[v151[28]] = v158;
    MEMORY[0x1EEE9AC00](v67);
    v68 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
    LOBYTE(v158) = 25;
    v149 = &v148[-v68];
    sub_1A88C90B8();
    v69 = sub_1A8761C7C(v149, &v152[v151[29]], &unk_1EB3052E0);
    v150 = v148;
    MEMORY[0x1EEE9AC00](v69);
    LOBYTE(v158) = 26;
    sub_1A88C90B8();
    v70 = sub_1A8761C7C(&v148[-v68], &v152[v151[30]], &unk_1EB3052E0);
    v150 = v148;
    MEMORY[0x1EEE9AC00](v70);
    LOBYTE(v158) = 27;
    sub_1A88C90B8();
    sub_1A8761C7C(&v148[-v68], &v152[v151[31]], &unk_1EB3052E0);
    v164 = 28;
    sub_1A88506C0();
    sub_1A88C90B8();
    v71 = BYTE8(v158);
    v72 = &v152[v151[32]];
    *v72 = v158;
    v72[8] = v71;
    v164 = 29;
    sub_1A8850714();
    sub_1A88C90B8();
    v152[v151[33]] = v158;
    v164 = 30;
    sub_1A88C90B8();
    *&v152[v151[34]] = v158;
    LOBYTE(v158) = 31;
    v73 = sub_1A88C9058();
    v150 = v148;
    v74 = &v152[v151[35]];
    *v74 = v73;
    v74[1] = v75;
    MEMORY[0x1EEE9AC00](v73);
    LOBYTE(v158) = 32;
    sub_1A88C90B8();
    sub_1A8761C7C(&v148[-v68], &v152[v151[36]], &unk_1EB3052E0);
    LOBYTE(v158) = 33;
    v76 = sub_1A88C9098();
    v77 = &v152[v151[37]];
    *v77 = v76;
    v77[8] = v78 & 1;
    v164 = 34;
    sub_1A88C90B8();
    *&v152[v151[38]] = v158;
    type metadata accessor for RemoteIntentMessageSummaryInfo();
    LOBYTE(v158) = 35;
    sub_1A88505D0(&qword_1EB307988, type metadata accessor for RemoteIntentMessageSummaryInfo);
    sub_1A88C90B8();
    sub_1A8761C7C(v6, &v152[v151[39]], &qword_1EB307898);
    LOBYTE(v158) = 36;
    v79 = sub_1A88C9058();
    v80 = &v152[v151[40]];
    *v80 = v79;
    v80[1] = v81;
    LOBYTE(v158) = 37;
    v152[v151[41]] = sub_1A88C9068();
    LOBYTE(v158) = 38;
    v82 = sub_1A88C9058();
    v83 = &v152[v151[42]];
    *v83 = v82;
    v83[1] = v84;
    LOBYTE(v158) = 39;
    v152[v151[43]] = sub_1A88C9068();
    LOBYTE(v158) = 40;
    v152[v151[44]] = sub_1A88C9068();
    LOBYTE(v158) = 41;
    v152[v151[45]] = sub_1A88C9068();
    LOBYTE(v158) = 42;
    v152[v151[46]] = sub_1A88C9068();
    LOBYTE(v158) = 43;
    v85 = sub_1A88C9058();
    v86 = &v152[v151[47]];
    *v86 = v85;
    v86[1] = v87;
    LOBYTE(v158) = 44;
    v88 = sub_1A88C9058();
    v89 = &v152[v151[48]];
    *v89 = v88;
    v89[1] = v90;
    sub_1A870CCE0(&qword_1EB3078E0);
    v164 = 45;
    sub_1A8850A70(&qword_1EB307990);
    sub_1A88C90B8();
    *&v152[v151[49]] = v158;
    LOBYTE(v158) = 46;
    v91 = sub_1A88C9058();
    v92 = &v152[v151[50]];
    *v92 = v91;
    v92[1] = v93;
    LOBYTE(v158) = 47;
    v94 = sub_1A88C9058();
    v95 = &v152[v151[51]];
    *v95 = v94;
    v95[1] = v96;
    MEMORY[0x1EEE9AC00](v94);
    LOBYTE(v158) = 48;
    sub_1A88C90B8();
    v97 = sub_1A8761C7C(&v148[-v68], &v152[v151[52]], &unk_1EB3052E0);
    MEMORY[0x1EEE9AC00](v97);
    LOBYTE(v158) = 49;
    sub_1A88C90B8();
    sub_1A8761C7C(&v148[-v68], &v152[v151[53]], &unk_1EB3052E0);
    LOBYTE(v158) = 50;
    v98 = sub_1A88C9098();
    v99 = &v152[v151[54]];
    *v99 = v98;
    v99[8] = v100 & 1;
    LOBYTE(v158) = 51;
    v101 = sub_1A88C90D8();
    v102 = &v152[v151[55]];
    *v102 = v101;
    v102[8] = v103 & 1;
    LOBYTE(v158) = 52;
    v104 = sub_1A88C9058();
    v105 = &v152[v151[56]];
    *v105 = v104;
    v105[1] = v106;
    v164 = 53;
    sub_1A8850768();
    sub_1A88C90B8();
    v152[v151[57]] = v158;
    v164 = 54;
    sub_1A88507BC();
    sub_1A88C90B8();
    v152[v151[58]] = v158;
    LOBYTE(v158) = 55;
    v107 = sub_1A88C9058();
    v108 = &v152[v151[59]];
    *v108 = v107;
    v108[1] = v109;
    LOBYTE(v158) = 56;
    v110 = sub_1A88C9058();
    v111 = &v152[v151[60]];
    *v111 = v110;
    v111[1] = v112;
    LOBYTE(v158) = 57;
    v113 = sub_1A88C9058();
    v114 = &v152[v151[61]];
    *v114 = v113;
    v114[1] = v115;
    LOBYTE(v158) = 58;
    v116 = sub_1A88C90F8();
    v117 = &v152[v151[62]];
    *v117 = v116;
    v117[8] = v118 & 1;
    LOBYTE(v158) = 59;
    v119 = sub_1A88C9058();
    v120 = &v152[v151[63]];
    *v120 = v119;
    v120[1] = v121;
    LOBYTE(v158) = 60;
    v122 = sub_1A88C90C8();
    v123 = &v152[v151[64]];
    *v123 = v122;
    v123[4] = BYTE4(v122) & 1;
    LOBYTE(v158) = 61;
    v124 = sub_1A88C9058();
    v125 = &v152[v151[65]];
    *v125 = v124;
    v125[1] = v126;
    LOBYTE(v158) = 62;
    v127 = sub_1A88C90D8();
    v128 = &v152[v151[66]];
    *v128 = v127;
    v128[8] = v129 & 1;
    LOBYTE(v158) = 63;
    v130 = sub_1A88C90A8();
    v131 = &v152[v151[67]];
    *v131 = v130;
    v131[8] = v132 & 1;
    LOBYTE(v158) = 64;
    v133 = sub_1A88C90A8();
    v134 = &v152[v151[68]];
    *v134 = v133;
    v134[8] = v135 & 1;
    LOBYTE(v158) = 65;
    v136 = sub_1A88C9058();
    v137 = &v152[v151[69]];
    *v137 = v136;
    v137[1] = v138;
    sub_1A870CCE0(&qword_1EB3079A8);
    v164 = 66;
    sub_1A8850C84(&qword_1EB3079B0);
    sub_1A88C90B8();
    if (v158 == 1)
    {
      v139 = 0;
    }

    else
    {
      v139 = v158;
    }

    *&v152[v151[70]] = v139;
    LOBYTE(v158) = 67;
    v140 = sub_1A88C9058();
    v141 = &v152[v151[71]];
    *v141 = v140;
    v141[1] = v142;
    v164 = 68;
    sub_1A8850810();
    sub_1A88C90B8();
    v152[v151[72]] = v158;
    v164 = 69;
    sub_1A8850864();
    sub_1A88C90B8();
    v152[v151[73]] = v158;
    v164 = 70;
    sub_1A88508B8();
    sub_1A88C90B8();
    v152[v151[74]] = v158;
    LOBYTE(v158) = 71;
    v143 = sub_1A88C90A8();
    v145 = v144;
    (*(v153 + 8))(v155, v156);
    v146 = v152;
    v147 = &v152[v151[75]];
    *v147 = v143;
    v147[8] = v145 & 1;
    sub_1A885090C(v146, v154, type metadata accessor for RemoteIntentItemContent);
    sub_1A85F1084(v157);
    return sub_1A88504B8(v146, type metadata accessor for RemoteIntentItemContent);
  }
}

uint64_t sub_1A8846FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8851044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8847024(uint64_t a1)
{
  v2 = sub_1A8850618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8847060(uint64_t a1)
{
  v2 = sub_1A8850618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88470CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A870CCE0(&qword_1EB307898);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v409 = &v283 - v5;
  *&v414[0] = 0x6E497265646E6573;
  *(&v414[0] + 1) = 0xEA00000000006F66;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    sub_1A870CCE0(&qword_1EB303320);
    if (swift_dynamicCast())
    {
      sub_1A88A4340(v410[0], v414);
      v403 = v414[1];
      v402 = v414[0];
      v401 = v414[3];
      v400 = v414[2];
      v404 = v415;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v404 = 0;
  v402 = xmmword_1A88EA2E0;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
LABEL_6:
  strcpy(&v412, "unformattedID");
  HIWORD(v412) = -4864;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v6 = swift_dynamicCast();
    v7 = v410[0];
    if (!v6)
    {
      v7 = 0;
    }

    v399 = v7;
    if (v6)
    {
      v8 = v410[1];
    }

    else
    {
      v8 = 0;
    }

    v398 = v8;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v399 = 0;
    v398 = 0;
  }

  strcpy(&v412, "countryCode");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v9 = swift_dynamicCast();
    v10 = v410[0];
    if (!v9)
    {
      v10 = 0;
    }

    v397 = v10;
    if (v9)
    {
      v11 = v410[1];
    }

    else
    {
      v11 = 0;
    }

    v396 = v11;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v397 = 0;
    v396 = 0;
  }

  *&v412 = 1684632935;
  *(&v412 + 1) = 0xE400000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v12 = swift_dynamicCast();
    v13 = v410[0];
    if (!v12)
    {
      v13 = 0;
    }

    v395 = v13;
    if (v12)
    {
      v14 = v410[1];
    }

    else
    {
      v14 = 0;
    }

    v394 = v14;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v395 = 0;
    v394 = 0;
  }

  strcpy(&v412, "roomName");
  BYTE9(v412) = 0;
  WORD5(v412) = 0;
  HIDWORD(v412) = -402653184;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v15 = swift_dynamicCast();
    v16 = v410[0];
    if (!v15)
    {
      v16 = 0;
    }

    v393 = v16;
    if (v15)
    {
      v17 = v410[1];
    }

    else
    {
      v17 = 0;
    }

    v392 = v17;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v393 = 0;
    v392 = 0;
  }

  *&v412 = 0x656C646E6168;
  *(&v412 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v18 = swift_dynamicCast();
    v19 = v410[0];
    if (!v18)
    {
      v19 = 0;
    }

    v391 = v19;
    if (v18)
    {
      v20 = v410[1];
    }

    else
    {
      v20 = 0;
    }

    v390 = v20;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v391 = 0;
    v390 = 0;
  }

  strcpy(&v412, "account");
  *(&v412 + 1) = 0xE700000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v21 = swift_dynamicCast();
    v22 = v410[0];
    if (!v21)
    {
      v22 = 0;
    }

    v389 = v22;
    if (v21)
    {
      v23 = v410[1];
    }

    else
    {
      v23 = 0;
    }

    v388 = v23;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v389 = 0;
    v388 = 0;
  }

  strcpy(&v412, "accountID");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v24 = swift_dynamicCast();
    v25 = v410[0];
    if (!v24)
    {
      v25 = 0;
    }

    v387 = v25;
    if (v24)
    {
      v26 = v410[1];
    }

    else
    {
      v26 = 0;
    }

    v386 = v26;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v387 = 0;
    v386 = 0;
  }

  strcpy(&v412, "service");
  *(&v412 + 1) = 0xE700000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v27 = swift_dynamicCast();
    v28 = v410[0];
    if (!v27)
    {
      v28 = 0;
    }

    v384 = v28;
    if (v27)
    {
      v29 = v410[1];
    }

    else
    {
      v29 = 0;
    }

    v383 = v29;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v384 = 0;
    v383 = 0;
  }

  strcpy(&v412, "messageID");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v30 = swift_dynamicCast();
    v31 = v410[0];
    if (!v30)
    {
      v31 = 0;
    }

    v382 = v31;
    v32 = v30 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v382 = 0;
    v32 = 1;
  }

  v381 = v32;
  v410[0] = 1701869940;
  v410[1] = 0xE400000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (!v413)
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
LABEL_80:
    v33 = 9;
    goto LABEL_81;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  v33 = sub_1A87A9740(v410[0]);
  if (v33 == 9)
  {
    goto LABEL_80;
  }

LABEL_81:
  v380 = v33;
  *&v412 = 0x426E6F6F6C6C6162;
  *(&v412 + 1) = 0xEF4449656C646E75;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v34 = swift_dynamicCast();
    v35 = v410[0];
    if (!v34)
    {
      v35 = 0;
    }

    v379 = v35;
    if (v34)
    {
      v36 = v410[1];
    }

    else
    {
      v36 = 0;
    }

    v378 = v36;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v379 = 0;
    v378 = 0;
  }

  v37 = sub_1A870CCE0(&unk_1EB3052E0);
  v385 = &v283;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v283 - v39;
  v410[0] = 1701669236;
  v410[1] = 0xE400000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v41 = 0;
      goto LABEL_94;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v41 = 1;
LABEL_94:
  v42 = sub_1A88C7478();
  v43 = *(*(v42 - 8) + 56);
  v43(v40, v41, 1, v42);
  strcpy(&v412, "ckSyncState");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v44 = swift_dynamicCast();
    v45 = v410[0];
    if (!v44)
    {
      v45 = 0;
    }

    v376 = v45;
    v46 = v44 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v376 = 0;
    v46 = 1;
  }

  v375 = v46;
  strcpy(&v412, "ckRecordID");
  BYTE11(v412) = 0;
  HIDWORD(v412) = -369098752;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v47 = swift_dynamicCast();
    v48 = v410[0];
    if (!v47)
    {
      v48 = 0;
    }

    v374 = v48;
    if (v47)
    {
      v49 = v410[1];
    }

    else
    {
      v49 = 0;
    }

    v373 = v49;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v374 = 0;
    v373 = 0;
  }

  *&v412 = 0xD000000000000017;
  *(&v412 + 1) = 0x80000001A891E6C0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  v377 = v40;
  if (v413)
  {
    v50 = swift_dynamicCast();
    v51 = v410[0];
    if (!v50)
    {
      v51 = 0;
    }

    v372 = v51;
    if (v50)
    {
      v52 = v410[1];
    }

    else
    {
      v52 = 0;
    }

    v371 = v52;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v372 = 0;
    v371 = 0;
  }

  *&v412 = 0xD000000000000011;
  *(&v412 + 1) = 0x80000001A891E6E0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v53 = swift_dynamicCast();
    v54 = v410[0];
    if (!v53)
    {
      v54 = 0;
    }

    v370 = v54;
    if (v53)
    {
      v55 = v410[1];
    }

    else
    {
      v55 = 0;
    }

    v369 = v55;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v370 = 0;
    v369 = 0;
  }

  *&v412 = 0xD000000000000013;
  *(&v412 + 1) = 0x80000001A891E700;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v56 = swift_dynamicCast();
    v57 = v410[0];
    if (!v56)
    {
      v57 = 0;
    }

    v368 = v57;
    if (v56)
    {
      v58 = v410[1];
    }

    else
    {
      v58 = 0;
    }

    v367 = v58;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v368 = 0;
    v367 = 0;
  }

  *&v412 = 0x444974726F73;
  *(&v412 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v59 = swift_dynamicCast();
    v60 = v410[0];
    if (!v59)
    {
      v60 = 0;
    }

    v366 = v60;
    v61 = v59 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v366 = 0;
    v61 = 1;
  }

  v365 = v61;
  strcpy(&v412, "replyToGUID");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v62 = swift_dynamicCast();
    v63 = v410[0];
    if (!v62)
    {
      v63 = 0;
    }

    v364 = v63;
    if (v62)
    {
      v64 = v410[1];
    }

    else
    {
      v64 = 0;
    }

    v363 = v64;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v364 = 0;
    v363 = 0;
  }

  strcpy(&v412, "plainBody");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v65 = swift_dynamicCast();
    v66 = v410[0];
    if (!v65)
    {
      v66 = 0;
    }

    v362 = v66;
    if (v65)
    {
      v67 = v410[1];
    }

    else
    {
      v67 = 0;
    }

    v361 = v67;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v362 = 0;
    v361 = 0;
  }

  strcpy(&v412, "bodyData");
  BYTE9(v412) = 0;
  WORD5(v412) = 0;
  HIDWORD(v412) = -402653184;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v68 = swift_dynamicCast();
    v69 = v410[0];
    if (!v68)
    {
      v69 = 0;
    }

    v360 = v69;
    v70 = 0xF000000000000000;
    if (v68)
    {
      v70 = v410[1];
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v360 = 0;
    v70 = 0xF000000000000000;
  }

  v359 = v70;
  strcpy(&v412, "subject");
  *(&v412 + 1) = 0xE700000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v71 = swift_dynamicCast();
    v72 = v410[0];
    if (!v71)
    {
      v72 = 0;
    }

    v357 = v72;
    if (v71)
    {
      v73 = v410[1];
    }

    else
    {
      v73 = 0;
    }

    v356 = v73;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v357 = 0;
    v356 = 0;
  }

  *&v412 = 0xD000000000000011;
  *(&v412 + 1) = 0x80000001A891E720;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    sub_1A870CCE0(&qword_1EB303100);
    v74 = swift_dynamicCast();
    v75 = v410[0];
    if (!v74)
    {
      v75 = 0;
    }

    v354 = v75;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v354 = 0;
  }

  *&v412 = 0xD000000000000013;
  *(&v412 + 1) = 0x80000001A891E740;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v76 = swift_dynamicCast();
    v77 = v410[0];
    if (!v76)
    {
      v77 = 0;
    }

    v353 = v77;
    v78 = 0xF000000000000000;
    if (v76)
    {
      v78 = v410[1];
    }
  }

  else
  {
    v76 = sub_1A85EF638(&v412, &qword_1EB3057B0);
    v353 = 0;
    v78 = 0xF000000000000000;
  }

  v352 = v78;
  v358 = &v283;
  MEMORY[0x1EEE9AC00](v76);
  v408 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v410, "timeRead");
  BYTE1(v410[1]) = 0;
  WORD1(v410[1]) = 0;
  HIDWORD(v410[1]) = -402653184;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v79 = 0;
      goto LABEL_184;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v79 = 1;
LABEL_184:
  v80 = (v43)(v408, v79, 1, v42);
  v355 = &v283;
  MEMORY[0x1EEE9AC00](v80);
  v407 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v410, "timeDelivered");
  HIWORD(v410[1]) = -4864;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v81 = 0;
      goto LABEL_189;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v81 = 1;
LABEL_189:
  v82 = (v43)(v407, v81, 1, v42);
  v351 = &v283;
  MEMORY[0x1EEE9AC00](v82);
  v406 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v410, "timePlayed");
  BYTE3(v410[1]) = 0;
  HIDWORD(v410[1]) = -369098752;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v83 = 0;
      goto LABEL_194;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v83 = 1;
LABEL_194:
  v43(v406, v83, 1, v42);
  *&v412 = 0x7367616C66;
  *(&v412 + 1) = 0xE500000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      v349 = 0;
      v350 = v410[0];
      goto LABEL_199;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v350 = 0;
  v349 = 1;
LABEL_199:
  strcpy(&v412, "expireState");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v84 = swift_dynamicCast();
    if (v84)
    {
      v85 = v410[0];
    }

    else
    {
      v85 = 0;
    }

    v86 = v84 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v85 = 0;
    v86 = 1;
  }

  v347 = sub_1A882ED30(v85, v86);
  strcpy(&v412, "payloadData");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v87 = swift_dynamicCast();
    v88 = v410[0];
    if (!v87)
    {
      v88 = 0;
    }

    v346 = v88;
    v89 = 0xF000000000000000;
    if (v87)
    {
      v89 = v410[1];
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v346 = 0;
    v89 = 0xF000000000000000;
  }

  v345 = v89;
  *&v412 = 0xD000000000000015;
  *(&v412 + 1) = 0x80000001A891E760;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v90 = swift_dynamicCast();
    v91 = v410[0];
    if (!v90)
    {
      v91 = 0;
    }

    v344 = v91;
    if (v90)
    {
      v92 = v410[1];
    }

    else
    {
      v92 = 0;
    }

    v343 = v92;
  }

  else
  {
    v90 = sub_1A85EF638(&v412, &qword_1EB3057B0);
    v344 = 0;
    v343 = 0;
  }

  v348 = &v283;
  MEMORY[0x1EEE9AC00](v90);
  v405 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410[0] = 0xD000000000000018;
  v410[1] = 0x80000001A891E780;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v93 = 0;
      goto LABEL_225;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v93 = 1;
LABEL_225:
  v43(v405, v93, 1, v42);
  *&v412 = 0x726F727265;
  *(&v412 + 1) = 0xE500000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v94 = swift_dynamicCast();
    v95 = v410[0];
    if (!v94)
    {
      v95 = 0;
    }

    v342 = v95;
    v96 = v94 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v342 = 0;
    v96 = 1;
  }

  v341 = v96;
  *&v412 = 0xD000000000000018;
  *(&v412 + 1) = 0x80000001A891E7A0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v97 = swift_dynamicCast();
    v98 = v410[0];
    if (!v97)
    {
      v98 = 0;
    }

    v340 = v98;
    v99 = 0xF000000000000000;
    if (v97)
    {
      v99 = v410[1];
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v340 = 0;
    v99 = 0xF000000000000000;
  }

  v339 = v99;
  v410[0] = 0xD000000000000012;
  v410[1] = 0x80000001A891E7C0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    sub_1A870CCE0(&qword_1EB303320);
    if (swift_dynamicCast())
    {
      sub_1A8832EB0(v410[0], v409);
      v100 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v100 = 1;
LABEL_242:
  v101 = type metadata accessor for RemoteIntentMessageSummaryInfo();
  (*(*(v101 - 8) + 56))(v409, v100, 1, v101);
  *&v412 = 0x656C61636F6CLL;
  *(&v412 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v102 = swift_dynamicCast();
    v103 = v410[0];
    if (!v102)
    {
      v103 = 0;
    }

    v338 = v103;
    if (v102)
    {
      v104 = v410[1];
    }

    else
    {
      v104 = 0;
    }

    v337 = v104;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v338 = 0;
    v337 = 0;
  }

  strcpy(&v412, "useStandalone");
  HIWORD(v412) = -4864;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v105 = swift_dynamicCast();
    v106 = LOBYTE(v410[0]);
    if (!v105)
    {
      v106 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v106 = 2;
  }

  v336 = v106;
  *&v412 = 0xD000000000000023;
  *(&v412 + 1) = 0x80000001A891E7E0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v107 = swift_dynamicCast();
    v108 = v410[0];
    if (!v107)
    {
      v108 = 0;
    }

    v335 = v108;
    if (v107)
    {
      v109 = v410[1];
    }

    else
    {
      v109 = 0;
    }

    v334 = v109;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v335 = 0;
    v334 = 0;
  }

  *&v412 = 0xD000000000000010;
  *(&v412 + 1) = 0x80000001A891E810;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v110 = swift_dynamicCast();
    v111 = LOBYTE(v410[0]);
    if (!v110)
    {
      v111 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v111 = 2;
  }

  v333 = v111;
  *&v412 = 0xD000000000000012;
  *(&v412 + 1) = 0x80000001A891E830;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v112 = swift_dynamicCast();
    v113 = LOBYTE(v410[0]);
    if (!v112)
    {
      v113 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v113 = 2;
  }

  v332 = v113;
  *&v412 = 0xD000000000000013;
  *(&v412 + 1) = 0x80000001A891E850;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v114 = swift_dynamicCast();
    v115 = LOBYTE(v410[0]);
    if (!v114)
    {
      v115 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v115 = 2;
  }

  v331 = v115;
  strcpy(&v412, "isBeingRetried");
  HIBYTE(v412) = -18;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v116 = swift_dynamicCast();
    v117 = LOBYTE(v410[0]);
    if (!v116)
    {
      v117 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v117 = 2;
  }

  v330 = v117;
  *&v412 = 0xD000000000000012;
  *(&v412 + 1) = 0x80000001A891E870;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v118 = swift_dynamicCast();
    v119 = v410[0];
    if (!v118)
    {
      v119 = 0;
    }

    v329 = v119;
    if (v118)
    {
      v120 = v410[1];
    }

    else
    {
      v120 = 0;
    }

    v328 = v120;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v329 = 0;
    v328 = 0;
  }

  *&v412 = 0xD000000000000010;
  *(&v412 + 1) = 0x80000001A891D300;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v121 = swift_dynamicCast();
    v122 = v410[0];
    if (!v121)
    {
      v122 = 0;
    }

    v327 = v122;
    if (v121)
    {
      v123 = v410[1];
    }

    else
    {
      v123 = 0;
    }

    v326 = v123;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v327 = 0;
    v326 = 0;
  }

  *&v412 = 0xD000000000000011;
  *(&v412 + 1) = 0x80000001A891E890;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    sub_1A870CCE0(&qword_1EB3078E0);
    v124 = swift_dynamicCast();
    v125 = v410[0];
    if (!v124)
    {
      v125 = 0;
    }

    v325 = v125;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v325 = 0;
  }

  *&v412 = 0xD000000000000011;
  *(&v412 + 1) = 0x80000001A891E8B0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v126 = swift_dynamicCast();
    v127 = v410[0];
    if (!v126)
    {
      v127 = 0;
    }

    v323 = v127;
    if (v126)
    {
      v128 = v410[1];
    }

    else
    {
      v128 = 0;
    }

    v322 = v128;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v323 = 0;
    v322 = 0;
  }

  *&v412 = 0xD000000000000017;
  *(&v412 + 1) = 0x80000001A891E8D0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v129 = swift_dynamicCast();
    v130 = v410[0];
    if (!v129)
    {
      v130 = 0;
    }

    v321 = v130;
    if (v129)
    {
      v131 = v410[1];
    }

    else
    {
      v131 = 0;
    }

    v320 = v131;
  }

  else
  {
    v129 = sub_1A85EF638(&v412, &qword_1EB3057B0);
    v321 = 0;
    v320 = 0;
  }

  v324 = &v283;
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v410, "dateEdited");
  BYTE3(v410[1]) = 0;
  HIDWORD(v410[1]) = -369098752;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v133 = 0;
      goto LABEL_320;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v133 = 1;
LABEL_320:
  v134 = (v43)(&v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v133, 1, v42);
  v319 = &v283;
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v283 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v410, "dateRecovered");
  HIWORD(v410[1]) = -4864;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    if (swift_dynamicCast())
    {
      sub_1A88C7388();
      v136 = 0;
      goto LABEL_325;
    }
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
  }

  v136 = 1;
LABEL_325:
  v43(v135, v136, 1, v42);
  strcpy(&v412, "partCount");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v137 = swift_dynamicCast();
    v138 = v410[0];
    if (!v137)
    {
      v138 = 0;
    }

    v316 = v138;
    v139 = v137 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v316 = 0;
    v139 = 1;
  }

  v315 = v139;
  strcpy(&v412, "replaceID");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v140 = swift_dynamicCast();
    v141 = v410[0];
    if (!v140)
    {
      v141 = 0;
    }

    v314 = v141;
    v142 = v140 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v314 = 0;
    v142 = 1;
  }

  v313 = v142;
  strcpy(&v412, "fallbackHash");
  BYTE13(v412) = 0;
  HIWORD(v412) = -5120;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  v317 = v135;
  if (v413)
  {
    v143 = swift_dynamicCast();
    v144 = v410[0];
    if (!v143)
    {
      v144 = 0;
    }

    v312 = v144;
    if (v143)
    {
      v145 = v410[1];
    }

    else
    {
      v145 = 0;
    }

    v311 = v145;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v312 = 0;
    v311 = 0;
  }

  strcpy(&v412, "scheduleType");
  BYTE13(v412) = 0;
  HIWORD(v412) = -5120;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v146 = swift_dynamicCast();
    if (v146)
    {
      v147 = v410[0];
    }

    else
    {
      v147 = 0;
    }

    v148 = v146 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v147 = 0;
    v148 = 1;
  }

  v310 = sub_1A8824E5C(v147, v148);
  strcpy(&v412, "scheduleState");
  HIWORD(v412) = -4864;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v149 = swift_dynamicCast();
    if (v149)
    {
      v150 = v410[0];
    }

    else
    {
      v150 = 0;
    }

    v151 = v149 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v150 = 0;
    v151 = 1;
  }

  v309 = sub_1A8824E78(v150, v151);
  *&v412 = 0xD000000000000010;
  *(&v412 + 1) = 0x80000001A891E8F0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v152 = swift_dynamicCast();
    v153 = v410[0];
    if (!v152)
    {
      v153 = 0;
    }

    v308 = v153;
    if (v152)
    {
      v154 = v410[1];
    }

    else
    {
      v154 = 0;
    }

    v307 = v154;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v308 = 0;
    v307 = 0;
  }

  strcpy(&v412, "otherHandle");
  HIDWORD(v412) = -352321536;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v155 = swift_dynamicCast();
    v156 = v410[0];
    if (!v155)
    {
      v156 = 0;
    }

    v306 = v156;
    if (v155)
    {
      v157 = v410[1];
    }

    else
    {
      v157 = 0;
    }

    v305 = v157;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v306 = 0;
    v305 = 0;
  }

  *&v412 = 0xD000000000000012;
  *(&v412 + 1) = 0x80000001A891E910;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v158 = swift_dynamicCast();
    v159 = v410[0];
    if (!v158)
    {
      v159 = 0;
    }

    v304 = v159;
    if (v158)
    {
      v160 = v410[1];
    }

    else
    {
      v160 = 0;
    }

    v303 = v160;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v304 = 0;
    v303 = 0;
  }

  strcpy(&v412, "actionType");
  BYTE11(v412) = 0;
  HIDWORD(v412) = -369098752;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v161 = swift_dynamicCast();
    v162 = v410[0];
    if (!v161)
    {
      v162 = 0;
    }

    v302 = v162;
    v163 = v161 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v302 = 0;
    v163 = 1;
  }

  v301 = v163;
  *&v412 = 0xD000000000000013;
  *(&v412 + 1) = 0x80000001A891E9F0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v164 = swift_dynamicCast();
    v165 = v410[0];
    if (!v164)
    {
      v165 = 0;
    }

    v300 = v165;
    if (v164)
    {
      v166 = v410[1];
    }

    else
    {
      v166 = 0;
    }

    v299 = v166;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v300 = 0;
    v299 = 0;
  }

  strcpy(&v412, "errorCode");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v167 = swift_dynamicCast();
    v168 = v410[0];
    if (!v167)
    {
      v168 = 0;
    }

    v298 = v168;
    v169 = v167 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v298 = 0;
    v169 = 1;
  }

  v297 = v169;
  *&v412 = 0xD000000000000015;
  *(&v412 + 1) = 0x80000001A891E930;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v170 = swift_dynamicCast();
    v171 = v410[0];
    if (!v170)
    {
      v171 = 0;
    }

    v296 = v171;
    if (v170)
    {
      v172 = v410[1];
    }

    else
    {
      v172 = 0;
    }

    v295 = v172;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v296 = 0;
    v295 = 0;
  }

  *&v412 = 0xD000000000000015;
  *(&v412 + 1) = 0x80000001A891E950;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v173 = swift_dynamicCast();
    v174 = v410[0];
    if (!v173)
    {
      v174 = 0;
    }

    v294 = v174;
    v175 = v173 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v294 = 0;
    v175 = 1;
  }

  v293 = v175;
  *&v412 = 0xD00000000000001CLL;
  *(&v412 + 1) = 0x80000001A891E970;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v176 = swift_dynamicCast();
    v177 = v410[0];
    if (!v176)
    {
      v177 = 0;
    }

    v292 = v177;
    v178 = v176 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v292 = 0;
    v178 = 1;
  }

  v291 = v178;
  *&v412 = 0xD00000000000001ELL;
  *(&v412 + 1) = 0x80000001A891E990;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v179 = swift_dynamicCast();
    v180 = v410[0];
    if (!v179)
    {
      v180 = 0;
    }

    v290 = v180;
    v181 = v179 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v290 = 0;
    v181 = 1;
  }

  v289 = v181;
  *&v412 = 0xD000000000000016;
  *(&v412 + 1) = 0x80000001A891D350;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v182 = swift_dynamicCast();
    v183 = v410[0];
    if (!v182)
    {
      v183 = 0;
    }

    v288 = v183;
    if (v182)
    {
      v184 = v410[1];
    }

    else
    {
      v184 = 0;
    }

    v287 = v184;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v288 = 0;
    v287 = 0;
  }

  *&v412 = 0xD000000000000017;
  *(&v412 + 1) = 0x80000001A891E9B0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  v318 = v132;
  if (v413)
  {
    sub_1A870CCE0(&qword_1EB303318);
    v185 = swift_dynamicCast();
    v186 = v410[0];
    if (!v185)
    {
      v186 = 0;
    }

    v286 = v186;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v286 = 0;
  }

  v187 = v409;
  *&v412 = 0x656C746974;
  *(&v412 + 1) = 0xE500000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v188 = swift_dynamicCast();
    v189 = v410[0];
    if (!v188)
    {
      v189 = 0;
    }

    v285 = v189;
    if (v188)
    {
      v190 = v410[1];
    }

    else
    {
      v190 = 0;
    }

    v284 = v190;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v285 = 0;
    v284 = 0;
  }

  *&v412 = 0x737574617473;
  *(&v412 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v191 = swift_dynamicCast();
    if (v191)
    {
      v192 = v410[0];
    }

    else
    {
      v192 = 0;
    }

    v193 = v191 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v192 = 0;
    v193 = 1;
  }

  v194 = sub_1A882ED34(v192, v193);
  strcpy(&v412, "direction");
  WORD5(v412) = 0;
  HIDWORD(v412) = -385875968;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v195 = swift_dynamicCast();
    if (v195)
    {
      v196 = v410[0];
    }

    else
    {
      v196 = 0;
    }

    v197 = v195 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v196 = 0;
    v197 = 1;
  }

  v198 = sub_1A882ED34(v196, v197);
  strcpy(&v412, "changeType");
  BYTE11(v412) = 0;
  HIDWORD(v412) = -369098752;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);
  sub_1A8717360(v411);
  if (v413)
  {
    v199 = swift_dynamicCast();
    if (v199)
    {
      v200 = v410[0];
    }

    else
    {
      v200 = 0;
    }

    v201 = v199 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v200 = 0;
    v201 = 1;
  }

  v202 = sub_1A882ED34(v200, v201);
  *&v412 = 0xD000000000000012;
  *(&v412 + 1) = 0x80000001A891E9D0;
  sub_1A88C8D88();
  sub_1A880E9FC(v411, a1, &v412);

  sub_1A8717360(v411);
  if (v413)
  {
    v203 = swift_dynamicCast();
    if (v203)
    {
      v204 = v410[0];
    }

    else
    {
      v204 = 0;
    }

    v205 = v203 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v412, &qword_1EB3057B0);
    v204 = 0;
    v205 = 1;
  }

  v206 = v403;
  *a2 = v402;
  *(a2 + 16) = v206;
  v207 = v401;
  *(a2 + 32) = v400;
  *(a2 + 48) = v207;
  *(a2 + 64) = v404;
  v208 = v398;
  *(a2 + 72) = v399;
  *(a2 + 80) = v208;
  v209 = v396;
  *(a2 + 88) = v397;
  *(a2 + 96) = v209;
  v210 = v394;
  *(a2 + 104) = v395;
  *(a2 + 112) = v210;
  v211 = v392;
  *(a2 + 120) = v393;
  *(a2 + 128) = v211;
  v212 = v390;
  *(a2 + 136) = v391;
  *(a2 + 144) = v212;
  v213 = v388;
  *(a2 + 152) = v389;
  *(a2 + 160) = v213;
  v214 = v386;
  *(a2 + 168) = v387;
  *(a2 + 176) = v214;
  v215 = v383;
  *(a2 + 184) = v384;
  *(a2 + 192) = v215;
  *(a2 + 200) = v382;
  *(a2 + 208) = v381;
  *(a2 + 209) = v380;
  v216 = v378;
  *(a2 + 216) = v379;
  *(a2 + 224) = v216;
  v217 = type metadata accessor for RemoteIntentItemContent(0);
  sub_1A8761C7C(v377, a2 + v217[16], &unk_1EB3052E0);
  v218 = a2 + v217[17];
  *v218 = v376;
  *(v218 + 8) = v375;
  v219 = (a2 + v217[18]);
  v220 = v373;
  *v219 = v374;
  v219[1] = v220;
  v221 = (a2 + v217[19]);
  v222 = v371;
  *v221 = v372;
  v221[1] = v222;
  v223 = (a2 + v217[20]);
  v224 = v369;
  *v223 = v370;
  v223[1] = v224;
  v225 = (a2 + v217[21]);
  v226 = v367;
  *v225 = v368;
  v225[1] = v226;
  v227 = a2 + v217[22];
  *v227 = v366;
  *(v227 + 8) = v365;
  v228 = (a2 + v217[23]);
  v229 = v363;
  *v228 = v364;
  v228[1] = v229;
  v230 = (a2 + v217[24]);
  v231 = v361;
  *v230 = v362;
  v230[1] = v231;
  v232 = (a2 + v217[25]);
  v233 = v359;
  *v232 = v360;
  v232[1] = v233;
  v234 = (a2 + v217[26]);
  v235 = v356;
  *v234 = v357;
  v234[1] = v235;
  *(a2 + v217[27]) = v354;
  v236 = (a2 + v217[28]);
  v237 = v352;
  *v236 = v353;
  v236[1] = v237;
  sub_1A8761C7C(v408, a2 + v217[29], &unk_1EB3052E0);
  sub_1A8761C7C(v407, a2 + v217[30], &unk_1EB3052E0);
  sub_1A8761C7C(v406, a2 + v217[31], &unk_1EB3052E0);
  v238 = a2 + v217[32];
  *v238 = v350;
  *(v238 + 8) = v349;
  *(a2 + v217[33]) = v347;
  v239 = (a2 + v217[34]);
  v240 = v345;
  *v239 = v346;
  v239[1] = v240;
  v241 = (a2 + v217[35]);
  v242 = v343;
  *v241 = v344;
  v241[1] = v242;
  sub_1A8761C7C(v405, a2 + v217[36], &unk_1EB3052E0);
  v243 = a2 + v217[37];
  *v243 = v342;
  *(v243 + 8) = v341;
  v244 = (a2 + v217[38]);
  v245 = v339;
  *v244 = v340;
  v244[1] = v245;
  sub_1A8761C7C(v187, a2 + v217[39], &qword_1EB307898);
  v246 = (a2 + v217[40]);
  v247 = v337;
  *v246 = v338;
  v246[1] = v247;
  *(a2 + v217[41]) = v336;
  v248 = (a2 + v217[42]);
  v249 = v334;
  *v248 = v335;
  v248[1] = v249;
  *(a2 + v217[43]) = v333;
  *(a2 + v217[44]) = v332;
  *(a2 + v217[45]) = v331;
  *(a2 + v217[46]) = v330;
  v250 = (a2 + v217[47]);
  v251 = v328;
  *v250 = v329;
  v250[1] = v251;
  v252 = (a2 + v217[48]);
  v253 = v326;
  *v252 = v327;
  v252[1] = v253;
  *(a2 + v217[49]) = v325;
  v254 = (a2 + v217[50]);
  v255 = v322;
  *v254 = v323;
  v254[1] = v255;
  v256 = (a2 + v217[51]);
  v257 = v320;
  *v256 = v321;
  v256[1] = v257;
  sub_1A8761C7C(v318, a2 + v217[52], &unk_1EB3052E0);
  result = sub_1A8761C7C(v317, a2 + v217[53], &unk_1EB3052E0);
  v259 = a2 + v217[54];
  *v259 = v316;
  *(v259 + 8) = v315;
  v260 = a2 + v217[55];
  *v260 = v314;
  *(v260 + 8) = v313;
  v261 = (a2 + v217[56]);
  v262 = v311;
  *v261 = v312;
  v261[1] = v262;
  *(a2 + v217[57]) = v310;
  *(a2 + v217[58]) = v309;
  v263 = (a2 + v217[59]);
  v264 = v307;
  *v263 = v308;
  v263[1] = v264;
  v265 = (a2 + v217[60]);
  v266 = v305;
  *v265 = v306;
  v265[1] = v266;
  v267 = (a2 + v217[61]);
  v268 = v303;
  *v267 = v304;
  v267[1] = v268;
  v269 = a2 + v217[62];
  *v269 = v302;
  *(v269 + 8) = v301;
  v270 = (a2 + v217[63]);
  v271 = v299;
  *v270 = v300;
  v270[1] = v271;
  v272 = a2 + v217[64];
  *v272 = v298;
  *(v272 + 4) = v297;
  v273 = (a2 + v217[65]);
  v274 = v295;
  *v273 = v296;
  v273[1] = v274;
  v275 = a2 + v217[66];
  *v275 = v294;
  *(v275 + 8) = v293;
  v276 = a2 + v217[67];
  *v276 = v292;
  *(v276 + 8) = v291;
  v277 = a2 + v217[68];
  *v277 = v290;
  *(v277 + 8) = v289;
  v278 = (a2 + v217[69]);
  v279 = v287;
  *v278 = v288;
  v278[1] = v279;
  *(a2 + v217[70]) = v286;
  v280 = (a2 + v217[71]);
  v281 = v284;
  *v280 = v285;
  v280[1] = v281;
  *(a2 + v217[72]) = v194;
  *(a2 + v217[73]) = v198;
  *(a2 + v217[74]) = v202;
  v282 = a2 + v217[75];
  *v282 = v204;
  *(v282 + 8) = v205;
  return result;
}

unint64_t sub_1A884B02C()
{
  v1 = v0;
  v2 = sub_1A870CCE0(&qword_1EB307898);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v263 - v3;
  v273 = MEMORY[0x1E69E7CC8];
  *&v274[0] = 0x6E497265646E6573;
  *(&v274[0] + 1) = 0xEA00000000006F66;
  sub_1A88C8D88();
  v5 = *(v0 + 8);
  if (v5 == 1)
  {
    sub_1A88BEFF8(v272, v274);
    sub_1A85EF638(v274, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    *&v274[0] = *v0;
    *(&v274[0] + 1) = v5;
    v6 = *(v0 + 32);
    v274[1] = *(v0 + 16);
    v274[2] = v6;
    v274[3] = *(v0 + 48);
    v275 = *(v0 + 64);
    v7 = sub_1A88A3A70();
    v271 = sub_1A870CCE0(&qword_1EB303320);
    *&v270 = v7;
    sub_1A85E99B0(&v270, v269);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "unformattedID");
  HIWORD(v270) = -4864;
  v9 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v10 = *(v1 + 80);
  if (v10)
  {
    v11 = *(v1 + 72);
    v271 = v9;
    *&v270 = v11;
    *(&v270 + 1) = v10;
    sub_1A85E99B0(&v270, v269);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v12);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "countryCode");
  HIDWORD(v270) = -352321536;
  sub_1A88C8D88();
  v13 = *(v1 + 96);
  if (v13)
  {
    v14 = *(v1 + 88);
    v271 = v9;
    *&v270 = v14;
    *(&v270 + 1) = v13;
    sub_1A85E99B0(&v270, v269);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v15);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 1684632935;
  *(&v270 + 1) = 0xE400000000000000;
  sub_1A88C8D88();
  v16 = *(v1 + 112);
  if (v16)
  {
    v17 = *(v1 + 104);
    v271 = v9;
    *&v270 = v17;
    *(&v270 + 1) = v16;
    sub_1A85E99B0(&v270, v269);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v18);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "roomName");
  BYTE9(v270) = 0;
  WORD5(v270) = 0;
  HIDWORD(v270) = -402653184;
  sub_1A88C8D88();
  v19 = *(v1 + 128);
  if (v19)
  {
    v20 = *(v1 + 120);
    v271 = v9;
    *&v270 = v20;
    *(&v270 + 1) = v19;
    sub_1A85E99B0(&v270, v269);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v21);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0x656C646E6168;
  *(&v270 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  v22 = *(v1 + 144);
  if (v22)
  {
    v23 = *(v1 + 136);
    v271 = v9;
    *&v270 = v23;
    *(&v270 + 1) = v22;
    sub_1A85E99B0(&v270, v269);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v24);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "account");
  *(&v270 + 1) = 0xE700000000000000;
  sub_1A88C8D88();
  v25 = *(v1 + 160);
  if (v25)
  {
    v26 = *(v1 + 152);
    v271 = v9;
    *&v270 = v26;
    *(&v270 + 1) = v25;
    sub_1A85E99B0(&v270, v269);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v27);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "accountID");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v28 = *(v1 + 176);
  if (v28)
  {
    v29 = *(v1 + 168);
    v271 = v9;
    *&v270 = v29;
    *(&v270 + 1) = v28;
    sub_1A85E99B0(&v270, v269);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v30);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "service");
  *(&v270 + 1) = 0xE700000000000000;
  sub_1A88C8D88();
  v31 = *(v1 + 192);
  if (v31)
  {
    v32 = *(v1 + 184);
    v271 = v9;
    *&v270 = v32;
    *(&v270 + 1) = v31;
    sub_1A85E99B0(&v270, v269);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v33);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "messageID");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v34 = MEMORY[0x1E69E6530];
  if (*(v1 + 208))
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v35 = *(v1 + 200);
    v271 = MEMORY[0x1E69E6530];
    *&v270 = v35;
    sub_1A85E99B0(&v270, v269);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v36);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 1701869940;
  *(&v270 + 1) = 0xE400000000000000;
  sub_1A88C8D88();
  v37 = *(v1 + 209);
  if (v37 == 9)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = MEMORY[0x1E69E7360];
    *&v270 = v37;
    sub_1A85E99B0(&v270, v269);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v38);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0x426E6F6F6C6C6162;
  *(&v270 + 1) = 0xEF4449656C646E75;
  sub_1A88C8D88();
  v39 = *(v1 + 224);
  v264 = v4;
  if (v39)
  {
    v40 = *(v1 + 216);
    v271 = v9;
    *&v270 = v40;
    *(&v270 + 1) = v39;
    sub_1A85E99B0(&v270, v269);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v41);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 1701669236;
  *(&v270 + 1) = 0xE400000000000000;
  sub_1A88C8D88();
  v42 = sub_1A870CCE0(&unk_1EB3052E0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v263 - v44;
  v46 = type metadata accessor for RemoteIntentItemContent(0);
  sub_1A8728D80(v1 + v46[16], v45, &unk_1EB3052E0);
  v47 = sub_1A88C7478();
  v48 = *(v47 - 8);
  v267 = *(v48 + 48);
  v49 = v267(v45, 1, v47);
  v50 = MEMORY[0x1E69E63B0];
  v265 = v48;
  if (v49 == 1)
  {
    sub_1A85EF638(v45, &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    sub_1A88C7398();
    v271 = v50;
    *&v270 = v51;
    (*(v48 + 8))(v45, v47);
    sub_1A85E99B0(&v270, v269);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v52);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "ckSyncState");
  HIDWORD(v270) = -352321536;
  sub_1A88C8D88();
  v53 = (v1 + v46[17]);
  if (v53[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v54 = *v53;
    v271 = v34;
    *&v270 = v54;
    sub_1A85E99B0(&v270, v269);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v55);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "ckRecordID");
  BYTE11(v270) = 0;
  HIDWORD(v270) = -369098752;
  v56 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v57 = (v1 + v46[18]);
  v58 = v57[1];
  if (v58)
  {
    v59 = *v57;
    v271 = v56;
    *&v270 = v59;
    *(&v270 + 1) = v58;
    sub_1A85E99B0(&v270, v269);

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v60);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000017;
  *(&v270 + 1) = 0x80000001A891E6C0;
  v61 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v62 = (v1 + v46[19]);
  v63 = v62[1];
  if (v63)
  {
    v64 = *v62;
    v271 = v61;
    *&v270 = v64;
    *(&v270 + 1) = v63;
    sub_1A85E99B0(&v270, v269);

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v65);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  v266 = 0xD000000000000011;
  *&v270 = 0xD000000000000011;
  *(&v270 + 1) = 0x80000001A891E6E0;
  v66 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v67 = (v1 + v46[20]);
  v68 = v67[1];
  if (v68)
  {
    v69 = *v67;
    v271 = v66;
    *&v270 = v69;
    *(&v270 + 1) = v68;
    sub_1A85E99B0(&v270, v269);

    v70 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v70);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000013;
  *(&v270 + 1) = 0x80000001A891E700;
  v71 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v72 = (v1 + v46[21]);
  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v271 = v71;
    *&v270 = v74;
    *(&v270 + 1) = v73;
    sub_1A85E99B0(&v270, v269);

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v75);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0x444974726F73;
  *(&v270 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  v76 = (v1 + v46[22]);
  if (v76[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v77 = *v76;
    v271 = MEMORY[0x1E69E6530];
    *&v270 = v77;
    sub_1A85E99B0(&v270, v269);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v78);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "replyToGUID");
  HIDWORD(v270) = -352321536;
  v79 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v80 = (v1 + v46[23]);
  v81 = v80[1];
  if (v81)
  {
    v82 = *v80;
    v271 = v79;
    *&v270 = v82;
    *(&v270 + 1) = v81;
    sub_1A85E99B0(&v270, v269);

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v83);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "plainBody");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  v84 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v85 = (v1 + v46[24]);
  v86 = v85[1];
  if (v86)
  {
    v87 = *v85;
    v271 = v84;
    *&v270 = v87;
    *(&v270 + 1) = v86;
    sub_1A85E99B0(&v270, v269);

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v88);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  v89 = v265;
  strcpy(&v270, "bodyData");
  BYTE9(v270) = 0;
  WORD5(v270) = 0;
  HIDWORD(v270) = -402653184;
  sub_1A88C8D88();
  v90 = (v1 + v46[25]);
  v91 = v90[1];
  if (v91 >> 60 == 15)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v92 = *v90;
    v271 = MEMORY[0x1E6969088];
    *&v270 = v92;
    *(&v270 + 1) = v91;
    sub_1A85E99B0(&v270, v269);
    sub_1A871DFB8(v92, v91);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v93);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "subject");
  *(&v270 + 1) = 0xE700000000000000;
  v94 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v95 = (v1 + v46[26]);
  v96 = v95[1];
  if (v96)
  {
    v97 = *v95;
    v271 = v94;
    *&v270 = v97;
    *(&v270 + 1) = v96;
    sub_1A85E99B0(&v270, v269);

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v98);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = v266;
  *(&v270 + 1) = 0x80000001A891E720;
  sub_1A88C8D88();
  v99 = *(v1 + v46[27]);
  if (v99)
  {
    v271 = sub_1A870CCE0(&qword_1EB303100);
    *&v270 = v99;
    sub_1A85E99B0(&v270, v269);

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v100);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000013;
  *(&v270 + 1) = 0x80000001A891E740;
  sub_1A88C8D88();
  v101 = (v1 + v46[28]);
  v102 = v101[1];
  if (v102 >> 60 == 15)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v103 = *v101;
    v271 = MEMORY[0x1E6969088];
    *&v270 = v103;
    *(&v270 + 1) = v102;
    sub_1A85E99B0(&v270, v269);
    sub_1A871DFB8(v103, v102);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v104);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "timeRead");
  BYTE9(v270) = 0;
  WORD5(v270) = 0;
  HIDWORD(v270) = -402653184;
  v105 = sub_1A88C8D88();
  MEMORY[0x1EEE9AC00](v105);
  sub_1A8728D80(v1 + v46[29], &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
  if (v267(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v47) == 1)
  {
    sub_1A85EF638(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    sub_1A88C7398();
    v271 = MEMORY[0x1E69E63B0];
    *&v270 = v106;
    (*(v89 + 8))(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_1A85E99B0(&v270, v269);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v107);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "timeDelivered");
  HIWORD(v270) = -4864;
  v108 = sub_1A88C8D88();
  MEMORY[0x1EEE9AC00](v108);
  sub_1A8728D80(v1 + v46[30], &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
  if (v267(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v47) == 1)
  {
    sub_1A85EF638(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    sub_1A88C7398();
    v271 = MEMORY[0x1E69E63B0];
    *&v270 = v109;
    (*(v89 + 8))(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_1A85E99B0(&v270, v269);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v110);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "timePlayed");
  BYTE11(v270) = 0;
  HIDWORD(v270) = -369098752;
  v111 = sub_1A88C8D88();
  MEMORY[0x1EEE9AC00](v111);
  sub_1A8728D80(v1 + v46[31], &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
  if (v267(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v47) == 1)
  {
    sub_1A85EF638(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
    v112 = MEMORY[0x1E69E63B0];
  }

  else
  {
    sub_1A88C7398();
    v112 = MEMORY[0x1E69E63B0];
    v271 = MEMORY[0x1E69E63B0];
    *&v270 = v113;
    (*(v89 + 8))(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_1A85E99B0(&v270, v269);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v114);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0x7367616C66;
  *(&v270 + 1) = 0xE500000000000000;
  sub_1A88C8D88();
  v115 = (v1 + v46[32]);
  if (v115[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v116 = *v115;
    v271 = MEMORY[0x1E69E76D8];
    *&v270 = v116;
    sub_1A85E99B0(&v270, v269);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v117);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "expireState");
  HIDWORD(v270) = -352321536;
  sub_1A88C8D88();
  v118 = *(v1 + v46[33]);
  if (v118 == 4)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = MEMORY[0x1E69E7360];
    *&v270 = v118;
    sub_1A85E99B0(&v270, v269);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v119);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "payloadData");
  HIDWORD(v270) = -352321536;
  sub_1A88C8D88();
  v120 = (v1 + v46[34]);
  v121 = v120[1];
  if (v121 >> 60 == 15)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v122 = *v120;
    v271 = MEMORY[0x1E6969088];
    *&v270 = v122;
    *(&v270 + 1) = v121;
    sub_1A85E99B0(&v270, v269);
    sub_1A871DFB8(v122, v121);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v123);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000015;
  *(&v270 + 1) = 0x80000001A891E760;
  v124 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v125 = (v1 + v46[35]);
  v126 = v125[1];
  if (v126)
  {
    v127 = *v125;
    v271 = v124;
    *&v270 = v127;
    *(&v270 + 1) = v126;
    sub_1A85E99B0(&v270, v269);

    v128 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v128);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000018;
  *(&v270 + 1) = 0x80000001A891E780;
  v129 = sub_1A88C8D88();
  MEMORY[0x1EEE9AC00](v129);
  sub_1A8728D80(v1 + v46[36], &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
  if (v267(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v47) == 1)
  {
    sub_1A85EF638(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    sub_1A88C7398();
    v271 = v112;
    *&v270 = v130;
    (*(v89 + 8))(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_1A85E99B0(&v270, v269);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v131);
    sub_1A8717360(v272);
    v273 = v268;
  }

  v132 = v264;
  *&v270 = 0x726F727265;
  *(&v270 + 1) = 0xE500000000000000;
  sub_1A88C8D88();
  v133 = (v1 + v46[37]);
  if (v133[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v134 = *v133;
    v271 = MEMORY[0x1E69E6530];
    *&v270 = v134;
    sub_1A85E99B0(&v270, v269);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v135);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000018;
  *(&v270 + 1) = 0x80000001A891E7A0;
  sub_1A88C8D88();
  v136 = (v1 + v46[38]);
  v137 = v136[1];
  if (v137 >> 60 == 15)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v138 = *v136;
    v271 = MEMORY[0x1E6969088];
    *&v270 = v138;
    *(&v270 + 1) = v137;
    sub_1A85E99B0(&v270, v269);
    sub_1A871DFB8(v138, v137);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v139);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000012;
  *(&v270 + 1) = 0x80000001A891E7C0;
  sub_1A88C8D88();
  sub_1A8728D80(v1 + v46[39], v132, &qword_1EB307898);
  v140 = type metadata accessor for RemoteIntentMessageSummaryInfo();
  if ((*(*(v140 - 8) + 48))(v132, 1, v140) == 1)
  {
    sub_1A85EF638(v132, &qword_1EB307898);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v141 = sub_1A88342C4();
    v271 = sub_1A870CCE0(&qword_1EB303320);
    *&v270 = v141;
    sub_1A88504B8(v132, type metadata accessor for RemoteIntentMessageSummaryInfo);
    sub_1A85E99B0(&v270, v269);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v142);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0x656C61636F6CLL;
  *(&v270 + 1) = 0xE600000000000000;
  v143 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v144 = (v1 + v46[40]);
  v145 = v144[1];
  if (v145)
  {
    v146 = *v144;
    v271 = v143;
    *&v270 = v146;
    *(&v270 + 1) = v145;
    sub_1A85E99B0(&v270, v269);

    v147 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v147);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "useStandalone");
  HIWORD(v270) = -4864;
  sub_1A88C8D88();
  v148 = *(v1 + v46[41]);
  v149 = MEMORY[0x1E69E6370];
  if (v148 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = MEMORY[0x1E69E6370];
    LOBYTE(v270) = v148 & 1;
    sub_1A85E99B0(&v270, v269);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v150);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000023;
  *(&v270 + 1) = 0x80000001A891E7E0;
  v151 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v152 = (v1 + v46[42]);
  v153 = v152[1];
  if (v153)
  {
    v154 = *v152;
    v271 = v151;
    *&v270 = v154;
    *(&v270 + 1) = v153;
    sub_1A85E99B0(&v270, v269);

    v155 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v155);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000010;
  *(&v270 + 1) = 0x80000001A891E810;
  sub_1A88C8D88();
  v156 = *(v1 + v46[43]);
  if (v156 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v149;
    LOBYTE(v270) = v156 & 1;
    sub_1A85E99B0(&v270, v269);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v157);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000012;
  *(&v270 + 1) = 0x80000001A891E830;
  sub_1A88C8D88();
  v158 = *(v1 + v46[44]);
  if (v158 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v149;
    LOBYTE(v270) = v158 & 1;
    sub_1A85E99B0(&v270, v269);
    v159 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v159);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000013;
  *(&v270 + 1) = 0x80000001A891E850;
  sub_1A88C8D88();
  v160 = *(v1 + v46[45]);
  if (v160 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v149;
    LOBYTE(v270) = v160 & 1;
    sub_1A85E99B0(&v270, v269);
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v161);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "isBeingRetried");
  HIBYTE(v270) = -18;
  sub_1A88C8D88();
  v162 = *(v1 + v46[46]);
  if (v162 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v149;
    LOBYTE(v270) = v162 & 1;
    sub_1A85E99B0(&v270, v269);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v163);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000012;
  *(&v270 + 1) = 0x80000001A891E870;
  v164 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v165 = (v1 + v46[47]);
  v166 = v165[1];
  if (v166)
  {
    v167 = *v165;
    v271 = v164;
    *&v270 = v167;
    *(&v270 + 1) = v166;
    sub_1A85E99B0(&v270, v269);

    v168 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v168);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000010;
  *(&v270 + 1) = 0x80000001A891D300;
  v169 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v170 = (v1 + v46[48]);
  v171 = v170[1];
  if (v171)
  {
    v172 = *v170;
    v271 = v169;
    *&v270 = v172;
    *(&v270 + 1) = v171;
    sub_1A85E99B0(&v270, v269);

    v173 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v173);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = v266;
  *(&v270 + 1) = 0x80000001A891E890;
  sub_1A88C8D88();
  v174 = *(v1 + v46[49]);
  if (v174)
  {
    v271 = sub_1A870CCE0(&qword_1EB3078E0);
    *&v270 = v174;
    sub_1A85E99B0(&v270, v269);

    v175 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v175);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = v266;
  *(&v270 + 1) = 0x80000001A891E8B0;
  v176 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v177 = (v1 + v46[50]);
  v178 = v177[1];
  if (v178)
  {
    v179 = *v177;
    v271 = v176;
    *&v270 = v179;
    *(&v270 + 1) = v178;
    sub_1A85E99B0(&v270, v269);

    v180 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v180);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000017;
  *(&v270 + 1) = 0x80000001A891E8D0;
  v181 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v182 = (v1 + v46[51]);
  v183 = v182[1];
  if (v183)
  {
    v184 = *v182;
    v271 = v181;
    *&v270 = v184;
    *(&v270 + 1) = v183;
    sub_1A85E99B0(&v270, v269);

    v185 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v185);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "dateEdited");
  BYTE11(v270) = 0;
  HIDWORD(v270) = -369098752;
  v186 = sub_1A88C8D88();
  MEMORY[0x1EEE9AC00](v186);
  sub_1A8728D80(v1 + v46[52], &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
  if (v267(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v47) == 1)
  {
    sub_1A85EF638(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_1EB3052E0);
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    sub_1A88C7398();
    v271 = MEMORY[0x1E69E63B0];
    *&v270 = v187;
    (*(v265 + 8))(&v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_1A85E99B0(&v270, v269);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v188);
    sub_1A8717360(v272);
    v273 = v268;
  }

  v189 = MEMORY[0x1E69E7360];
  strcpy(&v270, "partCount");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v190 = (v1 + v46[54]);
  if (v190[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v191 = *v190;
    v271 = MEMORY[0x1E69E6530];
    *&v270 = v191;
    sub_1A85E99B0(&v270, v269);
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v192);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "replaceID");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v193 = (v1 + v46[55]);
  if (v193[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v194 = *v193;
    v271 = v189;
    *&v270 = v194;
    sub_1A85E99B0(&v270, v269);
    v195 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v195);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "fallbackHash");
  BYTE13(v270) = 0;
  HIWORD(v270) = -5120;
  v196 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v197 = (v1 + v46[56]);
  v198 = v197[1];
  if (v198)
  {
    v199 = *v197;
    v271 = v196;
    *&v270 = v199;
    *(&v270 + 1) = v198;
    sub_1A85E99B0(&v270, v269);

    v200 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v200);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "scheduleType");
  BYTE13(v270) = 0;
  HIWORD(v270) = -5120;
  sub_1A88C8D88();
  v201 = *(v1 + v46[57]);
  v202 = MEMORY[0x1E69E6810];
  if (v201 == 3)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = MEMORY[0x1E69E6810];
    *&v270 = v201;
    sub_1A85E99B0(&v270, v269);
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v203);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "scheduleState");
  HIWORD(v270) = -4864;
  sub_1A88C8D88();
  v204 = *(v1 + v46[58]);
  if (v204 == 6)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v202;
    *&v270 = v204;
    sub_1A85E99B0(&v270, v269);
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v205);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000010;
  *(&v270 + 1) = 0x80000001A891E8F0;
  v206 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v207 = (v1 + v46[59]);
  v208 = v207[1];
  if (v208)
  {
    v209 = *v207;
    v271 = v206;
    *&v270 = v209;
    *(&v270 + 1) = v208;
    sub_1A85E99B0(&v270, v269);

    v210 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v210);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "otherHandle");
  HIDWORD(v270) = -352321536;
  v211 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v212 = (v1 + v46[60]);
  v213 = v212[1];
  if (v213)
  {
    v214 = *v212;
    v271 = v211;
    *&v270 = v214;
    *(&v270 + 1) = v213;
    sub_1A85E99B0(&v270, v269);

    v215 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v215);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000012;
  *(&v270 + 1) = 0x80000001A891E910;
  v216 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v217 = (v1 + v46[61]);
  v218 = v217[1];
  if (v218)
  {
    v219 = *v217;
    v271 = v216;
    *&v270 = v219;
    *(&v270 + 1) = v218;
    sub_1A85E99B0(&v270, v269);

    v220 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v220);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  strcpy(&v270, "actionType");
  BYTE11(v270) = 0;
  HIDWORD(v270) = -369098752;
  sub_1A88C8D88();
  v221 = (v1 + v46[62]);
  if (v221[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v222 = *v221;
    v271 = MEMORY[0x1E69E76D8];
    *&v270 = v222;
    sub_1A85E99B0(&v270, v269);
    v223 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v223);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "errorCode");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v224 = (v1 + v46[64]);
  if (v224[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v225 = *v224;
    v271 = MEMORY[0x1E69E72F0];
    LODWORD(v270) = v225;
    sub_1A85E99B0(&v270, v269);
    v226 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v226);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000015;
  *(&v270 + 1) = 0x80000001A891E930;
  v227 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v228 = (v1 + v46[65]);
  v229 = v228[1];
  if (v229)
  {
    v230 = *v228;
    v271 = v227;
    *&v270 = v230;
    *(&v270 + 1) = v229;
    sub_1A85E99B0(&v270, v269);

    v231 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v231);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000015;
  *(&v270 + 1) = 0x80000001A891E950;
  sub_1A88C8D88();
  v232 = (v1 + v46[66]);
  if (v232[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v233 = *v232;
    v271 = v189;
    *&v270 = v233;
    sub_1A85E99B0(&v270, v269);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v234);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD00000000000001CLL;
  *(&v270 + 1) = 0x80000001A891E970;
  sub_1A88C8D88();
  v235 = (v1 + v46[67]);
  if (v235[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v236 = *v235;
    v271 = v202;
    *&v270 = v236;
    sub_1A85E99B0(&v270, v269);
    v237 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v237);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD00000000000001ELL;
  *(&v270 + 1) = 0x80000001A891E990;
  sub_1A88C8D88();
  v238 = (v1 + v46[68]);
  if (v238[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v239 = *v238;
    v271 = v202;
    *&v270 = v239;
    sub_1A85E99B0(&v270, v269);
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v240);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000016;
  *(&v270 + 1) = 0x80000001A891D350;
  v241 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v242 = (v1 + v46[69]);
  v243 = v242[1];
  if (v243)
  {
    v244 = *v242;
    v271 = v241;
    *&v270 = v244;
    *(&v270 + 1) = v243;
    sub_1A85E99B0(&v270, v269);

    v245 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v245);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0xD000000000000017;
  *(&v270 + 1) = 0x80000001A891E9B0;
  sub_1A88C8D88();
  v246 = *(v1 + v46[70]);
  if (v246)
  {
    v271 = sub_1A870CCE0(&qword_1EB303318);
    *&v270 = v246;
    sub_1A85E99B0(&v270, v269);

    v247 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v247);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0x656C746974;
  *(&v270 + 1) = 0xE500000000000000;
  v248 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v249 = (v1 + v46[71]);
  v250 = v249[1];
  if (v250)
  {
    v251 = *v249;
    v271 = v248;
    *&v270 = v251;
    *(&v270 + 1) = v250;
    sub_1A85E99B0(&v270, v269);

    v252 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v252);
    sub_1A8717360(v272);
    v273 = v268;
  }

  else
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  *&v270 = 0x737574617473;
  *(&v270 + 1) = 0xE600000000000000;
  sub_1A88C8D88();
  v253 = *(v1 + v46[72]);
  if (v253 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v189;
    *&v270 = v253 & 1;
    sub_1A85E99B0(&v270, v269);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v254);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "direction");
  WORD5(v270) = 0;
  HIDWORD(v270) = -385875968;
  sub_1A88C8D88();
  v255 = *(v1 + v46[73]);
  if (v255 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v189;
    *&v270 = v255 & 1;
    sub_1A85E99B0(&v270, v269);
    v256 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v256);
    sub_1A8717360(v272);
    v273 = v268;
  }

  strcpy(&v270, "changeType");
  BYTE11(v270) = 0;
  HIDWORD(v270) = -369098752;
  sub_1A88C8D88();
  v257 = *(v1 + v46[74]);
  if (v257 == 2)
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v271 = v189;
    *&v270 = v257 & 1;
    sub_1A85E99B0(&v270, v269);
    v258 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v258);
    sub_1A8717360(v272);
    v273 = v268;
  }

  *&v270 = 0xD000000000000012;
  *(&v270 + 1) = 0x80000001A891E9D0;
  sub_1A88C8D88();
  v259 = (v1 + v46[75]);
  if (v259[1])
  {
    sub_1A88BEFF8(v272, &v270);
    sub_1A85EF638(&v270, &qword_1EB3057B0);
    sub_1A8717360(v272);
  }

  else
  {
    v260 = *v259;
    v271 = v202;
    *&v270 = v260;
    sub_1A85E99B0(&v270, v269);
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v268 = v273;
    v273 = 0x8000000000000000;
    sub_1A87AC424(v269, v272, v261);
    sub_1A8717360(v272);
    v273 = v268;
  }

  return v273;
}

uint64_t sub_1A884F4A0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB307948);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A870C278(a1, a1[3]);
  sub_1A8850518();
  sub_1A88C95C8();
  v8[15] = 0;
  type metadata accessor for RemoteIntentItemContent(0);
  sub_1A88505D0(&qword_1EB307950, type metadata accessor for RemoteIntentItemContent);
  sub_1A88C92C8();
  if (!v1)
  {
    type metadata accessor for RemoteIntentMessageItem(0);
    v8[14] = 1;
    sub_1A88C9228();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A884F664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1A870CCE0(&qword_1EB307878);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v22 = type metadata accessor for RemoteIntentItemContent(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A870CCE0(&qword_1EB307930);
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RemoteIntentMessageItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A870C278(a1, a1[3]);
  sub_1A8850518();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v14 = v20;
  v18 = v13;
  v25 = 0;
  sub_1A88505D0(&qword_1EB307940, type metadata accessor for RemoteIntentItemContent);
  v15 = v21;
  sub_1A88C9158();
  sub_1A885056C(v23, v18);
  v24 = 1;
  sub_1A88C90B8();
  (*(v14 + 8))(v10, v15);
  v16 = v18;
  sub_1A8761C7C(v6, &v18[*(v11 + 20)], &qword_1EB307878);
  sub_1A885090C(v16, v19, type metadata accessor for RemoteIntentMessageItem);
  sub_1A85F1084(a1);
  return sub_1A88504B8(v16, type metadata accessor for RemoteIntentMessageItem);
}

uint64_t sub_1A884F9DC()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1A884FA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891EA70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

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

uint64_t sub_1A884FB00(uint64_t a1)
{
  v2 = sub_1A8850518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A884FB3C(uint64_t a1)
{
  v2 = sub_1A8850518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A884FBAC()
{
  v0 = sub_1A88401B8();
  sub_1A870CCE0(&qword_1EB303458);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A88E14F0;
  *(v1 + 32) = v0;
  sub_1A870CCE0(&qword_1EB303320);
  v2 = sub_1A88C85E8();

  v3 = IMCreateItemsFromSerializedArray(v2);

  if (!v3)
  {
    goto LABEL_11;
  }

  sub_1A8714988();
  v4 = sub_1A88C85F8();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_1A88C8D38();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1AC56F710](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

LABEL_11:
    sub_1A882D22C();
    swift_allocError();
    *v8 = 0xD000000000000055;
    v8[1] = 0x80000001A891EA10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A884FD40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A884FBAC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1A884FD6C@<X0>(uint64_t a1@<X8>)
{
  result = [*v1 copyDictionaryRepresentation];
  if (result)
  {
    v4 = result;
    v5 = sub_1A88C81A8();

    return sub_1A883FFC0(v5, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A884FE58()
{
  type metadata accessor for RemoteIntentItemContent(319);
  if (v0 <= 0x3F)
  {
    sub_1A8850400(319, &qword_1EB307890, type metadata accessor for RemoteIntentItemContent);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A884FF20()
{
  sub_1A87C9CBC(319, &qword_1EB3078B0);
  if (v0 <= 0x3F)
  {
    sub_1A87C9CBC(319, &qword_1EB303528);
    if (v1 <= 0x3F)
    {
      sub_1A87C9CBC(319, &qword_1EB3073C8);
      if (v2 <= 0x3F)
      {
        sub_1A87C9CBC(319, &qword_1EB3078B8);
        if (v3 <= 0x3F)
        {
          sub_1A8850400(319, &qword_1ED8C9178, MEMORY[0x1EEE78858]);
          if (v4 <= 0x3F)
          {
            sub_1A88313E4();
            if (v5 <= 0x3F)
            {
              sub_1A8850454(319, &qword_1EB305E98, &qword_1EB303100, &unk_1A88E2A90, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1A87C9CBC(319, &qword_1EB3078C0);
                if (v7 <= 0x3F)
                {
                  sub_1A87C9CBC(319, &qword_1EB3078C8);
                  if (v8 <= 0x3F)
                  {
                    sub_1A8850400(319, &qword_1EB3078D0, type metadata accessor for RemoteIntentMessageSummaryInfo);
                    if (v9 <= 0x3F)
                    {
                      sub_1A87C9CBC(319, &qword_1EB305EA8);
                      if (v10 <= 0x3F)
                      {
                        sub_1A8850454(319, &qword_1EB3078D8, &qword_1EB3078E0, &unk_1A88F4290, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A87C9CBC(319, &qword_1EB305EA0);
                          if (v12 <= 0x3F)
                          {
                            sub_1A87C9CBC(319, &qword_1EB3078E8);
                            if (v13 <= 0x3F)
                            {
                              sub_1A87C9CBC(319, &qword_1EB3078F0);
                              if (v14 <= 0x3F)
                              {
                                sub_1A87C9CBC(319, &qword_1EB3078F8);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A87C9CBC(319, &qword_1EB307900);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1A87C9CBC(319, &qword_1EB305EC0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1A8850454(319, &qword_1EB307908, &qword_1EB307910, &unk_1A88F4298, type metadata accessor for _RemoteIntentKVEncodedData);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1A87C9CBC(319, &qword_1EB307918);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1A87C9CBC(319, &qword_1EB307920);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1A87C9CBC(319, &qword_1EB307928);
                                            if (v21 <= 0x3F)
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
    }
  }
}

void sub_1A8850400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A88C8BE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A8850454(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A870CD28(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A88504B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A8850518()
{
  result = qword_1EB307938;
  if (!qword_1EB307938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307938);
  }

  return result;
}

uint64_t sub_1A885056C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentItemContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A88505D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A8850618()
{
  result = qword_1EB307960;
  if (!qword_1EB307960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307960);
  }

  return result;
}

unint64_t sub_1A885066C()
{
  result = qword_1EB307970;
  if (!qword_1EB307970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307970);
  }

  return result;
}

unint64_t sub_1A88506C0()
{
  result = qword_1EB307978;
  if (!qword_1EB307978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307978);
  }

  return result;
}

unint64_t sub_1A8850714()
{
  result = qword_1EB307980;
  if (!qword_1EB307980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307980);
  }

  return result;
}

unint64_t sub_1A8850768()
{
  result = qword_1EB307998;
  if (!qword_1EB307998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307998);
  }

  return result;
}

unint64_t sub_1A88507BC()
{
  result = qword_1EB3079A0;
  if (!qword_1EB3079A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079A0);
  }

  return result;
}

unint64_t sub_1A8850810()
{
  result = qword_1EB3079B8;
  if (!qword_1EB3079B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079B8);
  }

  return result;
}

unint64_t sub_1A8850864()
{
  result = qword_1EB3079C0;
  if (!qword_1EB3079C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079C0);
  }

  return result;
}

unint64_t sub_1A88508B8()
{
  result = qword_1EB3079C8;
  if (!qword_1EB3079C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079C8);
  }

  return result;
}

uint64_t sub_1A885090C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8850974()
{
  result = qword_1EB3079D8;
  if (!qword_1EB3079D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079D8);
  }

  return result;
}

unint64_t sub_1A88509C8()
{
  result = qword_1EB3079E0;
  if (!qword_1EB3079E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079E0);
  }

  return result;
}

unint64_t sub_1A8850A1C()
{
  result = qword_1EB3079E8;
  if (!qword_1EB3079E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3079E8);
  }

  return result;
}

uint64_t sub_1A8850A70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB3078E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8850AE0()
{
  result = qword_1EB307A00;
  if (!qword_1EB307A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A00);
  }

  return result;
}

unint64_t sub_1A8850B34()
{
  result = qword_1EB307A08;
  if (!qword_1EB307A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A08);
  }

  return result;
}

unint64_t sub_1A8850B88()
{
  result = qword_1EB307A10;
  if (!qword_1EB307A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A10);
  }

  return result;
}

unint64_t sub_1A8850BDC()
{
  result = qword_1EB307A18;
  if (!qword_1EB307A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A18);
  }

  return result;
}

unint64_t sub_1A8850C30()
{
  result = qword_1EB307A20;
  if (!qword_1EB307A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A20);
  }

  return result;
}

uint64_t sub_1A8850C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB3079A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentItemContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentItemContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A8850E38()
{
  result = qword_1EB307A30;
  if (!qword_1EB307A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A30);
  }

  return result;
}

unint64_t sub_1A8850E90()
{
  result = qword_1EB307A38;
  if (!qword_1EB307A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A38);
  }

  return result;
}

unint64_t sub_1A8850EE8()
{
  result = qword_1EB307A40;
  if (!qword_1EB307A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A40);
  }

  return result;
}

unint64_t sub_1A8850F40()
{
  result = qword_1EB307A48;
  if (!qword_1EB307A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A48);
  }

  return result;
}

unint64_t sub_1A8850F98()
{
  result = qword_1EB307A50;
  if (!qword_1EB307A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A50);
  }

  return result;
}

unint64_t sub_1A8850FF0()
{
  result = qword_1EB307A58;
  if (!qword_1EB307A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307A58);
  }

  return result;
}

uint64_t sub_1A8851044(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E497265646E6573 && a2 == 0xEA00000000006F66 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F666E75 && a2 == 0xED00004449646574 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x426E6F6F6C6C6162 && a2 == 0xEF4449656C646E75 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891B630 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891EA90 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A891EAB0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891EAD0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E700 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x444974726F73 && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x476F54796C706572 && a2 == 0xEB00000000444955 || (sub_1A88C9398() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x646F426E69616C70 && a2 == 0xE900000000000079 || (sub_1A88C9398() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6174614479646F62 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891E720 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E740 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x64616552656D6974 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x696C6544656D6974 && a2 == 0xED00006465726576 || (sub_1A88C9398() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465 || (sub_1A88C9398() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x7453657269707865 && a2 == 0xEB00000000657461 || (sub_1A88C9398() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4464616F6C796170 && a2 == 0xEB00000000617461 || (sub_1A88C9398() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891E760 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891E780 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891E7A0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891E7C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x646E617453657375 && a2 == 0xED0000656E6F6C61 || (sub_1A88C9398() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891EAF0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891E810 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891E830 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E850 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x52676E6965427369 && a2 == 0xEE00646569727465 || (sub_1A88C9398() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891E870 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891D300 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891E890 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891E8B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891E8D0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x7469644565746164 && a2 == 0xEA00000000006465 || (sub_1A88C9398() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6F63655265746164 && a2 == 0xED00006465726576 || (sub_1A88C9398() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x6E756F4374726170 && a2 == 0xE900000000000074 || (sub_1A88C9398() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x496563616C706572 && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000068736148 || (sub_1A88C9398() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC00000065707954 || (sub_1A88C9398() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED00006574617453 || (sub_1A88C9398() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891E8F0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x6E6148726568746FLL && a2 == 0xEB00000000656C64 || (sub_1A88C9398() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891E910 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_1A88C9398() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891E9F0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891E930 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891E950 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A891E970 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A891E990 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891D350 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A891E9B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEA0000000000656CLL || (sub_1A88C9398() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891EB10 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891EB30 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891EB50 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891EB70 == a2)
  {

    return 71;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 71;
    }

    else
    {
      return 72;
    }
  }
}

id sub_1A8852610()
{
  result = [objc_allocWithZone(IMCTBlockList) init];
  qword_1EB307A60 = result;
  return result;
}

IMCTBlockList __swiftcall IMCTBlockList.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A8852860(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A8852934;

  return sub_1A8853888(v6);
}

uint64_t sub_1A8852934()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 32);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1A8852C1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A88543E0;

  return sub_1A8853D54(v6);
}

unint64_t type metadata accessor for IMCTBlockList()
{
  result = qword_1EB307A80;
  if (!qword_1EB307A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB307A80);
  }

  return result;
}