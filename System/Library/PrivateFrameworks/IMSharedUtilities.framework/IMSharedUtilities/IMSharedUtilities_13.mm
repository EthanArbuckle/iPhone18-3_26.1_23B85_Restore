uint64_t sub_1A87C8688(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A87C86B0, 0, 0);
}

uint64_t sub_1A87C86B0()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_1A870C278(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1A87C959C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1A87C8808()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_1A870C278(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1A87C893C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1A87C893C(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_1A87C8A40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1A87C8A6C, 0, 0);
}

uint64_t sub_1A87C8A6C()
{
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  sub_1A870C278(v1 + 2, v2);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A87C9598;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v6, v7, v5, v2, v3);
}

uint64_t IntentClientRequestAdapter.generateSafeRenderFile(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A87C8BCC, 0, 0);
}

uint64_t sub_1A87C8BCC()
{
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  sub_1A870C278(v1 + 2, v2);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A87C8D04;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v6, v7, v5, v2, v3);
}

uint64_t sub_1A87C8D04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of IntentFileSafeRenderProviding.generateSafeRenderFiles(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A87C8F78;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A87C95A0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1A87C8F78(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t dispatch thunk of IntentFileSafeRenderProviding.generateSafeRenderFile(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A8716570;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ChatContactsProviding.generateHandlesToContactMap(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A8716570;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ChatContactsProviding.generateHandlesToContactMap(for:chat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A8714B6C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t type metadata accessor for RemoteIntentChat()
{
  result = qword_1EB305E10;
  if (!qword_1EB305E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A87C9618()
{
  sub_1A87C98B8();
  if (v0 <= 0x3F)
  {
    sub_1A87C9C58(319, &qword_1EB305E78, &qword_1EB305E80, &unk_1A88EB968, type metadata accessor for _RemoteIntentKVEncodedData);
    if (v1 <= 0x3F)
    {
      sub_1A87C9CBC(319, &qword_1EB303528);
      if (v2 <= 0x3F)
      {
        sub_1A87C9CBC(319, &qword_1EB305E88);
        if (v3 <= 0x3F)
        {
          sub_1A87C9CBC(319, &qword_1EB305E90);
          if (v4 <= 0x3F)
          {
            sub_1A87C9C58(319, &qword_1EB305E98, &qword_1EB303100, &unk_1A88E2A90, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A87C9CBC(319, &qword_1EB305EA0);
              if (v6 <= 0x3F)
              {
                sub_1A87C9CBC(319, &qword_1EB305EA8);
                if (v7 <= 0x3F)
                {
                  sub_1A87C9CBC(319, &qword_1EB305EB0);
                  if (v8 <= 0x3F)
                  {
                    sub_1A87C9CBC(319, &qword_1EB305EB8);
                    if (v9 <= 0x3F)
                    {
                      sub_1A87C9CBC(319, &qword_1EB305EC0);
                      if (v10 <= 0x3F)
                      {
                        sub_1A87C9D08();
                        if (v11 <= 0x3F)
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

void sub_1A87C98B8()
{
  if (!qword_1EB305E20)
  {
    sub_1A870CD28(&qword_1EB305E28);
    sub_1A87C9A58(&qword_1EB305E30, sub_1A87C99DC);
    sub_1A87C9A58(&qword_1EB305E48, sub_1A87C9AD0);
    sub_1A87C9A58(&qword_1EB305E60, sub_1A87C9B58);
    v0 = type metadata accessor for RemoteIntentSerializeCollectionAs();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB305E20);
    }
  }
}

unint64_t sub_1A87C99DC()
{
  result = qword_1EB305E38;
  if (!qword_1EB305E38)
  {
    sub_1A870CD28(&qword_1EB305E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305E38);
  }

  return result;
}

uint64_t sub_1A87C9A58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB305E28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87C9B04()
{
  result = qword_1EB305E58;
  if (!qword_1EB305E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305E58);
  }

  return result;
}

uint64_t sub_1A87C9B8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB305E40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87C9C04()
{
  result = qword_1EB305E70;
  if (!qword_1EB305E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305E70);
  }

  return result;
}

void sub_1A87C9C58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A87C9CBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A88C8BE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A87C9D08()
{
  if (!qword_1EB305EC8)
  {
    type metadata accessor for RemoteIntentMessageItem(255);
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB305EC8);
    }
  }
}

unint64_t sub_1A87C9E54()
{
  result = qword_1EB305ED0;
  if (!qword_1EB305ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305ED0);
  }

  return result;
}

unint64_t sub_1A87C9F5C()
{
  result = qword_1EB305ED8;
  if (!qword_1EB305ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305ED8);
  }

  return result;
}

unint64_t sub_1A87C9FB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87CF780(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A87CA090()
{
  result = qword_1EB305EE0;
  if (!qword_1EB305EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305EE0);
  }

  return result;
}

uint64_t sub_1A87CA0E4(void *a1, char a2)
{
  sub_1A870C278(a1, a1[3]);
  sub_1A88C95B8();
  v3 = a2;
  v4 = sub_1A88C8248();

  if ((v4 & 0x100) != 0)
  {
    v5 = sub_1A88C8EA8();
    swift_allocError();
    v7 = v6;
    v8 = qword_1A88EBF68[v3];
    sub_1A870CCE0(&qword_1EB305F58);
    v7[3] = MEMORY[0x1E69E5EE0];
    *v7 = v8;
    v7[1] = 0xE100000000000000;
    sub_1A870C278(v10, v11);
    sub_1A88C93E8();
    sub_1A88C8E78();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6B30], v5);
    swift_willThrow();
  }

  else
  {
    sub_1A8606088(v10, v11);
    sub_1A88C9408();
  }

  return sub_1A85F1084(v10);
}

uint64_t sub_1A87CA290(char *a1, char *a2)
{
  if (qword_1A88EBF68[*a1] == qword_1A88EBF68[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A88C9398();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1A87CA2F8()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87CA354()
{
  sub_1A88C8268();
}

uint64_t sub_1A87CA394()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87CA3EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87CF214(*a1, a1[1]);
  *a2 = result;
  return result;
}

char *sub_1A87CA438@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87CF790(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1A87CA484()
{
  result = qword_1EB305EE8;
  if (!qword_1EB305EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305EE8);
  }

  return result;
}

unint64_t sub_1A87CA4D8(char a1)
{
  result = 0x7069636974726170;
  switch(a1)
  {
    case 1:
      result = 0x69747265706F7270;
      break;
    case 2:
      result = 0x6E65644974616863;
      break;
    case 3:
      result = 0x444970756F7267;
      break;
    case 4:
      result = 0x4E65636976726573;
      break;
    case 5:
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x4E79616C70736964;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 1684632935;
      break;
    case 13:
      result = 0x7265746C69467369;
      break;
    case 14:
      result = 0x65766F6365527369;
      break;
    case 16:
      result = 0x746174536E696F6ALL;
      break;
    case 17:
      result = 0x656D614E6D6F6F72;
      break;
    case 18:
      result = 0x49746E756F636361;
      break;
    case 19:
      result = 0x6C79745374616863;
      break;
    case 20:
      result = 0x6C616E696769726FLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0x6F43646165726E75;
      break;
    case 24:
      result = 0x686B63616C427369;
      break;
    case 25:
      result = 0xD00000000000001ELL;
      break;
    case 26:
      result = 0x4449776F72;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 28:
      result = 0x65436E6F73726570;
      break;
    case 29:
      result = 0xD000000000000024;
      break;
    case 30:
      result = 0x7373654D7473616CLL;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A87CA87C(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB305F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87CF384();
  sub_1A88C95C8();
  v9 = *v3;
  v14 = 0;
  if (v9)
  {
    v13 = v9;

    sub_1A870CCE0(&qword_1EB304670);
    sub_1A85FB520(&qword_1EB304698, &qword_1EB304670);
    sub_1A88C9228();
    if (v2)
    {
LABEL_6:
      (*(v6 + 8))(v8, v5);
    }
  }

  v10 = v3[1];
  v14 = 1;
  if (v10)
  {
    v13 = v10;

    sub_1A870CCE0(&qword_1EB304660);
    sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
    sub_1A88C9228();
    if (v2)
    {
      goto LABEL_6;
    }
  }

  LOBYTE(v13) = 2;
  sub_1A88C91C8();
  if (!v2)
  {
    LOBYTE(v13) = 3;
    sub_1A88C91C8();
    LOBYTE(v13) = 4;
    sub_1A88C91C8();
    LOBYTE(v13) = *(v3 + 64);
    v14 = 5;
    sub_1A87CF5EC();
    sub_1A88C9228();
    LOBYTE(v13) = 6;
    sub_1A88C91C8();
    LOBYTE(v13) = 7;
    sub_1A88C91C8();
    LOBYTE(v13) = *(v3 + 104);
    v14 = 8;
    sub_1A87CF640();
    sub_1A88C9228();
    v13 = v3[14];
    v14 = 9;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C9228();
    LOBYTE(v13) = 10;
    sub_1A88C9248();
    LOBYTE(v13) = 11;
    sub_1A88C9248();
    LOBYTE(v13) = 12;
    sub_1A88C91C8();
    LOBYTE(v13) = 13;
    sub_1A88C9248();
    LOBYTE(v13) = 14;
    sub_1A88C91D8();
    LOBYTE(v13) = 15;
    sub_1A88C91D8();
    LOBYTE(v13) = *(v3 + 179);
    v14 = 16;
    sub_1A87CF694();
    sub_1A88C9228();
    LOBYTE(v13) = 17;
    sub_1A88C91C8();
    LOBYTE(v13) = 18;
    sub_1A88C91C8();
    LOBYTE(v13) = *(v3 + 216);
    v14 = 19;
    sub_1A87CF6E8();
    sub_1A88C9228();
    LOBYTE(v13) = 20;
    sub_1A88C91C8();
    LOBYTE(v13) = 21;
    sub_1A88C91C8();
    LOBYTE(v13) = 22;
    sub_1A88C91C8();
    LOBYTE(v13) = 23;
    sub_1A88C9218();
    LOBYTE(v13) = 24;
    sub_1A88C91D8();
    LOBYTE(v13) = 25;
    sub_1A88C91D8();
    LOBYTE(v13) = 26;
    sub_1A88C9248();
    LOBYTE(v13) = 27;
    sub_1A88C91D8();
    LOBYTE(v13) = 28;
    sub_1A88C91C8();
    LOBYTE(v13) = 29;
    sub_1A88C9218();
    v12 = type metadata accessor for RemoteIntentChat();
    LOBYTE(v13) = 30;
    type metadata accessor for RemoteIntentMessageItem(0);
    sub_1A87CF73C(&qword_1EB305F50);
    sub_1A88C9228();
    v13 = *(v3 + *(v12 + 140));
    v14 = 31;
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A87CB0BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305E08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v35 - v6;
  v39 = sub_1A870CCE0(&qword_1EB305EF0);
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = v35 - v9;
  v40 = type metadata accessor for RemoteIntentChat();
  MEMORY[0x1EEE9AC00](v40);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v41 = a1;
  sub_1A870C278(a1, v13);
  sub_1A87CF384();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(v41);
  }

  else
  {
    v36 = v7;
    v37 = a2;
    v38 = v8;
    sub_1A870CCE0(&qword_1EB304670);
    v43 = 0;
    sub_1A85FB520(&qword_1EB304678, &qword_1EB304670);
    sub_1A88C90B8();
    v15 = v42;
    if (v42 == 1)
    {
      v15 = 0;
    }

    v35[2] = v15;
    *v12 = v15;
    sub_1A870CCE0(&qword_1EB304660);
    v43 = 1;
    sub_1A85FB520(&qword_1EB304668, &qword_1EB304660);
    sub_1A88C90B8();
    v16 = v42;
    if (v42 == 1)
    {
      v16 = 0;
    }

    v35[1] = v16;
    *(v12 + 1) = v16;
    LOBYTE(v42) = 2;
    *(v12 + 2) = sub_1A88C9058();
    *(v12 + 3) = v17;
    LOBYTE(v42) = 3;
    *(v12 + 4) = sub_1A88C9058();
    *(v12 + 5) = v18;
    LOBYTE(v42) = 4;
    *(v12 + 6) = sub_1A88C9058();
    *(v12 + 7) = v19;
    v43 = 5;
    sub_1A87CF3D8();
    sub_1A88C90B8();
    v12[64] = v42;
    LOBYTE(v42) = 6;
    *(v12 + 9) = sub_1A88C9058();
    *(v12 + 10) = v20;
    LOBYTE(v42) = 7;
    *(v12 + 11) = sub_1A88C9058();
    *(v12 + 12) = v21;
    v43 = 8;
    sub_1A87CF42C();
    sub_1A88C90B8();
    v12[104] = v42;
    sub_1A870CCE0(&qword_1EB303100);
    v43 = 9;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C90B8();
    *(v12 + 14) = v42;
    LOBYTE(v42) = 10;
    *(v12 + 15) = sub_1A88C90D8();
    v12[128] = v22 & 1;
    LOBYTE(v42) = 11;
    *(v12 + 17) = sub_1A88C90D8();
    v12[144] = v23 & 1;
    LOBYTE(v42) = 12;
    *(v12 + 19) = sub_1A88C9058();
    *(v12 + 20) = v24;
    LOBYTE(v42) = 13;
    *(v12 + 21) = sub_1A88C90D8();
    v12[176] = v25 & 1;
    LOBYTE(v42) = 14;
    v12[177] = sub_1A88C9068();
    LOBYTE(v42) = 15;
    v12[178] = sub_1A88C9068();
    v43 = 16;
    sub_1A87CF480();
    sub_1A88C90B8();
    v12[179] = v42;
    LOBYTE(v42) = 17;
    *(v12 + 23) = sub_1A88C9058();
    *(v12 + 24) = v26;
    LOBYTE(v42) = 18;
    *(v12 + 25) = sub_1A88C9058();
    *(v12 + 26) = v27;
    v43 = 19;
    sub_1A87CF4D4();
    sub_1A88C90B8();
    v12[216] = v42;
    LOBYTE(v42) = 20;
    *(v12 + 28) = sub_1A88C9058();
    *(v12 + 29) = v28;
    LOBYTE(v42) = 21;
    *(v12 + 30) = sub_1A88C9058();
    *(v12 + 31) = v29;
    LOBYTE(v42) = 22;
    *(v12 + 32) = sub_1A88C9058();
    *(v12 + 33) = v30;
    LOBYTE(v42) = 23;
    *(v12 + 34) = sub_1A88C90A8();
    v12[280] = v31 & 1;
    LOBYTE(v42) = 24;
    v12[281] = sub_1A88C9068();
    LOBYTE(v42) = 25;
    v12[282] = sub_1A88C9068();
    LOBYTE(v42) = 26;
    *(v12 + 36) = sub_1A88C90D8();
    v12[296] = v32 & 1;
    LOBYTE(v42) = 27;
    v12[297] = sub_1A88C9068();
    LOBYTE(v42) = 28;
    *(v12 + 38) = sub_1A88C9058();
    *(v12 + 39) = v33;
    LOBYTE(v42) = 29;
    *(v12 + 40) = sub_1A88C90A8();
    v12[328] = v34 & 1;
    type metadata accessor for RemoteIntentMessageItem(0);
    LOBYTE(v42) = 30;
    sub_1A87CF73C(&qword_1EB305F20);
    sub_1A88C90B8();
    sub_1A87CF1A4(v36, &v12[*(v40 + 136)]);
    v43 = 31;
    sub_1A88C90B8();
    (*(v38 + 8))(v10, v39);
    *&v12[*(v40 + 140)] = v42;
    sub_1A87CF528(v12, v37);
    sub_1A85F1084(v41);
    return sub_1A87CF58C(v12, type metadata accessor for RemoteIntentChat);
  }
}

uint64_t sub_1A87CBD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A87CFC60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87CBDBC(uint64_t a1)
{
  v2 = sub_1A87CF384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87CBDF8(uint64_t a1)
{
  v2 = sub_1A87CF384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87CBE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A870CCE0(&qword_1EB305E08);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v219 = &v177[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v177[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v177[-v10];
  v12 = type metadata accessor for RemoteIntentMessageItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v220 = sub_1A88C82E8();
  v221 = v14;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v15 = sub_1A8602F10(v222), (v16 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v15, &v223);
    sub_1A8717360(v222);
    sub_1A870CCE0(&qword_1EB303320);
    if (swift_dynamicCast())
    {
      sub_1A883FFC0(v220, v9);
      sub_1A85EF638(v11, &qword_1EB305E08);
      v13(v9, 0, 1, v12);
      sub_1A87CF1A4(v9, v11);
    }
  }

  else
  {
    sub_1A8717360(v222);
  }

  v220 = sub_1A88C82E8();
  v221 = v17;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v18 = sub_1A8602F10(v222), (v19 & 1) == 0))
  {
    sub_1A8717360(v222);
    goto LABEL_11;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v18, &v223);
  sub_1A8717360(v222);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v218 = 3;
    goto LABEL_12;
  }

  v218 = sub_1A87CF30C();
LABEL_12:
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v20;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v21 = sub_1A8602F10(v222), (v22 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v21, &v223);
    sub_1A8717360(v222);
    sub_1A870CCE0(&qword_1EB3051D0);
    v23 = swift_dynamicCast();
    v24 = v220;
    if (!v23)
    {
      v24 = 0;
    }

    v217 = v24;
  }

  else
  {
    sub_1A8717360(v222);
    v217 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v25;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v26 = sub_1A8602F10(v222), (v27 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v26, &v223);
    sub_1A8717360(v222);
    sub_1A870CCE0(&qword_1EB303320);
    v28 = swift_dynamicCast();
    v29 = v220;
    if (!v28)
    {
      v29 = 0;
    }

    v216 = v29;
  }

  else
  {
    sub_1A8717360(v222);
    v216 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v30;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v31 = sub_1A8602F10(v222), (v32 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v31, &v223);
    sub_1A8717360(v222);
    v33 = swift_dynamicCast();
    if (v33)
    {
      v34 = v220;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = v221;
    }

    else
    {
      v35 = 0;
    }

    v214 = v35;
    v215 = v34;
  }

  else
  {
    sub_1A8717360(v222);
    v214 = 0;
    v215 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v36;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v37 = sub_1A8602F10(v222), (v38 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v37, &v223);
    sub_1A8717360(v222);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v220;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v221;
    }

    else
    {
      v41 = 0;
    }

    v212 = v41;
    v213 = v40;
  }

  else
  {
    sub_1A8717360(v222);
    v212 = 0;
    v213 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v42;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v43 = sub_1A8602F10(v222), (v44 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v43, &v223);
    sub_1A8717360(v222);
    v45 = swift_dynamicCast();
    if (v45)
    {
      v46 = v220;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = v221;
    }

    else
    {
      v47 = 0;
    }

    v210 = v47;
    v211 = v46;
  }

  else
  {
    sub_1A8717360(v222);
    v210 = 0;
    v211 = 0;
  }

  v220 = sub_1A88C82E8();
  v221 = v48;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v49 = sub_1A8602F10(v222), (v50 & 1) == 0))
  {
    sub_1A8717360(v222);
    goto LABEL_61;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v49, &v223);
  sub_1A8717360(v222);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v51 = 3;
    goto LABEL_62;
  }

  v51 = v220;
  if (v220 >= 3)
  {
    v51 = 3;
  }

LABEL_62:
  v209 = v51;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v52;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v53 = sub_1A8602F10(v222), (v54 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v53, &v223);
    sub_1A8717360(v222);
    v55 = swift_dynamicCast();
    v56 = v220;
    if (!v55)
    {
      v56 = 0;
    }

    v208 = v56;
    if (v55)
    {
      v57 = v221;
    }

    else
    {
      v57 = 0;
    }

    v207 = v57;
  }

  else
  {
    sub_1A8717360(v222);
    v208 = 0;
    v207 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v58;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v59 = sub_1A8602F10(v222), (v60 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v59, &v223);
    sub_1A8717360(v222);
    v61 = swift_dynamicCast();
    v62 = v220;
    if (!v61)
    {
      v62 = 0;
    }

    v206 = v62;
    if (v61)
    {
      v63 = v221;
    }

    else
    {
      v63 = 0;
    }

    v205 = v63;
  }

  else
  {
    sub_1A8717360(v222);
    v206 = 0;
    v205 = 0;
  }

  v220 = sub_1A88C82E8();
  v221 = v64;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v65 = sub_1A8602F10(v222), (v66 & 1) == 0))
  {
    sub_1A8717360(v222);
    goto LABEL_87;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v65, &v223);
  sub_1A8717360(v222);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_87:
    v67 = 3;
    goto LABEL_88;
  }

  v67 = v220;
  if (v220 >= 3)
  {
    v67 = 3;
  }

LABEL_88:
  v204 = v67;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v68;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v69 = sub_1A8602F10(v222), (v70 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v69, &v223);
    sub_1A8717360(v222);
    sub_1A870CCE0(&qword_1EB303100);
    v71 = swift_dynamicCast();
    v72 = v220;
    if (!v71)
    {
      v72 = 0;
    }

    v203 = v72;
  }

  else
  {
    sub_1A8717360(v222);
    v203 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v73;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v74 = sub_1A8602F10(v222), (v75 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v74, &v223);
    sub_1A8717360(v222);
    v76 = swift_dynamicCast();
    v77 = v220;
    if (!v76)
    {
      v77 = 0;
    }

    v202 = v77;
    v78 = v76 ^ 1;
  }

  else
  {
    sub_1A8717360(v222);
    v202 = 0;
    v78 = 1;
  }

  v201 = v78;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v79;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v80 = sub_1A8602F10(v222), (v81 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v80, &v223);
    sub_1A8717360(v222);
    v82 = swift_dynamicCast();
    v83 = v220;
    if (!v82)
    {
      v83 = 0;
    }

    v200 = v83;
    v84 = v82 ^ 1;
  }

  else
  {
    sub_1A8717360(v222);
    v200 = 0;
    v84 = 1;
  }

  v199 = v84;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v85;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v86 = sub_1A8602F10(v222), (v87 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v86, &v223);
    sub_1A8717360(v222);
    v88 = swift_dynamicCast();
    v89 = v220;
    if (!v88)
    {
      v89 = 0;
    }

    v198 = v89;
    if (v88)
    {
      v90 = v221;
    }

    else
    {
      v90 = 0;
    }

    v197 = v90;
  }

  else
  {
    sub_1A8717360(v222);
    v198 = 0;
    v197 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v91;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v92 = sub_1A8602F10(v222), (v93 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v92, &v223);
    sub_1A8717360(v222);
    v94 = swift_dynamicCast();
    v95 = v220;
    if (!v94)
    {
      v95 = 0;
    }

    v196 = v95;
    v96 = v94 ^ 1;
  }

  else
  {
    sub_1A8717360(v222);
    v196 = 0;
    v96 = 1;
  }

  v195 = v96;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v97;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v98 = sub_1A8602F10(v222), (v99 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v98, &v223);
    sub_1A8717360(v222);
    v100 = swift_dynamicCast();
    v101 = v220;
    if (!v100)
    {
      v101 = 2;
    }
  }

  else
  {
    sub_1A8717360(v222);
    v101 = 2;
  }

  v194 = v101;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v102;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v103 = sub_1A8602F10(v222), (v104 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v103, &v223);
    sub_1A8717360(v222);
    v105 = swift_dynamicCast();
    v106 = v220;
    if (!v105)
    {
      v106 = 2;
    }
  }

  else
  {
    sub_1A8717360(v222);
    v106 = 2;
  }

  v193 = v106;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v107;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v108 = sub_1A8602F10(v222), (v109 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v108, &v223);
    sub_1A8717360(v222);
    v110 = swift_dynamicCast();
    if (v110)
    {
      v111 = v220;
    }

    else
    {
      v111 = 0;
    }

    v112 = v110 ^ 1;
  }

  else
  {
    sub_1A8717360(v222);
    v111 = 0;
    v112 = 1;
  }

  v192 = sub_1A8824E94(v111, v112);
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v113;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v114 = sub_1A8602F10(v222), (v115 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v114, &v223);
    sub_1A8717360(v222);
    v116 = swift_dynamicCast();
    v117 = v220;
    if (!v116)
    {
      v117 = 0;
    }

    v191 = v117;
    if (v116)
    {
      v118 = v221;
    }

    else
    {
      v118 = 0;
    }

    v190 = v118;
  }

  else
  {
    sub_1A8717360(v222);
    v191 = 0;
    v190 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v119;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v120 = swift_dynamicCast();
    v121 = v220;
    if (!v120)
    {
      v121 = 0;
    }

    v189 = v121;
    if (v120)
    {
      v122 = v221;
    }

    else
    {
      v122 = 0;
    }

    v188 = v122;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v189 = 0;
    v188 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v123;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v124 = swift_dynamicCast();
    v125 = v220;
    if (!v124)
    {
      v125 = 0;
    }

    v187 = v125;
    if (v124)
    {
      v126 = v221;
    }

    else
    {
      v126 = 0;
    }

    v186 = v126;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v187 = 0;
    v186 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v127;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v128 = swift_dynamicCast();
    v129 = v220;
    if (!v128)
    {
      v129 = 0;
    }

    v185 = v129;
    if (v128)
    {
      v130 = v221;
    }

    else
    {
      v130 = 0;
    }

    v184 = v130;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v185 = 0;
    v184 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v131;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v132 = swift_dynamicCast();
    v133 = v220;
    if (!v132)
    {
      v133 = 0;
    }

    v183 = v133;
    if (v132)
    {
      v134 = v221;
    }

    else
    {
      v134 = 0;
    }

    v182 = v134;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v183 = 0;
    v182 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v135;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v136 = swift_dynamicCast();
    v137 = v220;
    if (!v136)
    {
      v137 = 0;
    }

    v181 = v137;
    v138 = v136 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v181 = 0;
    v138 = 1;
  }

  v180 = v138;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v139;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v140 = swift_dynamicCast();
    v141 = v220;
    if (!v140)
    {
      v141 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v141 = 2;
  }

  v179 = v141;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v142;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v143 = swift_dynamicCast();
    v144 = v220;
    if (!v143)
    {
      v144 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v144 = 2;
  }

  v178 = v144;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v145;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v146 = swift_dynamicCast();
    if (v146)
    {
      v147 = v220;
    }

    else
    {
      v147 = 0;
    }

    v148 = v146 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v147 = 0;
    v148 = 1;
  }

  v149 = v11;
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v150;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    if (swift_dynamicCast())
    {
      v151 = v220;
    }

    else
    {
      v151 = 2;
    }
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v151 = 2;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v152;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v153 = swift_dynamicCast();
    if (v153)
    {
      v154 = v220;
    }

    else
    {
      v154 = 0;
    }

    if (v153)
    {
      v155 = v221;
    }

    else
    {
      v155 = 0;
    }
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v154 = 0;
    v155 = 0;
  }

  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v156;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);
  sub_1A8717360(v222);
  if (v224)
  {
    v157 = swift_dynamicCast();
    if (v157)
    {
      v158 = v220;
    }

    else
    {
      v158 = 0;
    }

    v159 = v157 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v158 = 0;
    v159 = 1;
  }

  sub_1A87CF134(v149, v219);
  *&v223 = sub_1A88C82E8();
  *(&v223 + 1) = v160;
  sub_1A88C8D88();
  sub_1A880E9FC(v222, a1, &v223);

  sub_1A8717360(v222);
  sub_1A85EF638(v149, &qword_1EB305E08);
  if (v224)
  {
    sub_1A870CCE0(&qword_1EB303100);
    if (swift_dynamicCast())
    {
      v161 = v220;
    }

    else
    {
      v161 = 0;
    }
  }

  else
  {
    sub_1A85EF638(&v223, &qword_1EB3057B0);
    v161 = 0;
  }

  v162 = v216;
  *a2 = v217;
  *(a2 + 8) = v162;
  v163 = v214;
  *(a2 + 16) = v215;
  *(a2 + 24) = v163;
  v164 = v212;
  *(a2 + 32) = v213;
  *(a2 + 40) = v164;
  v165 = v210;
  *(a2 + 48) = v211;
  *(a2 + 56) = v165;
  *(a2 + 64) = v209;
  v166 = v207;
  *(a2 + 72) = v208;
  *(a2 + 80) = v166;
  v167 = v205;
  *(a2 + 88) = v206;
  *(a2 + 96) = v167;
  *(a2 + 104) = v204;
  v168 = v202;
  *(a2 + 112) = v203;
  *(a2 + 120) = v168;
  *(a2 + 128) = v201;
  *(a2 + 136) = v200;
  *(a2 + 144) = v199;
  v169 = v197;
  *(a2 + 152) = v198;
  *(a2 + 160) = v169;
  *(a2 + 168) = v196;
  *(a2 + 176) = v195;
  *(a2 + 177) = v194;
  *(a2 + 178) = v193;
  *(a2 + 179) = v192;
  v170 = v190;
  *(a2 + 184) = v191;
  *(a2 + 192) = v170;
  v171 = v188;
  *(a2 + 200) = v189;
  *(a2 + 208) = v171;
  *(a2 + 216) = v218;
  v172 = v186;
  *(a2 + 224) = v187;
  *(a2 + 232) = v172;
  v173 = v184;
  *(a2 + 240) = v185;
  *(a2 + 248) = v173;
  v174 = v182;
  *(a2 + 256) = v183;
  *(a2 + 264) = v174;
  *(a2 + 272) = v181;
  *(a2 + 280) = v180;
  *(a2 + 281) = v179;
  *(a2 + 282) = v178;
  *(a2 + 288) = v147;
  *(a2 + 296) = v148;
  *(a2 + 297) = v151;
  *(a2 + 304) = v154;
  *(a2 + 312) = v155;
  *(a2 + 320) = v158;
  *(a2 + 328) = v159;
  v175 = type metadata accessor for RemoteIntentChat();
  result = sub_1A87CF1A4(v219, a2 + *(v175 + 136));
  *(a2 + *(v175 + 140)) = v161;
  return result;
}

uint64_t sub_1A87CD7E0()
{
  v1 = v0;
  v2 = sub_1A870CCE0(&qword_1EB305E08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v121 - v3;
  v127 = MEMORY[0x1E69E7CC8];
  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v5;
  sub_1A88C8D88();
  v6 = *v0;
  if (v6)
  {
    v125 = sub_1A870CCE0(&qword_1EB3051D0);
    *&v124 = v6;
    sub_1A85E99B0(&v124, v123);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v8;
  sub_1A88C8D88();
  v9 = v1[1];
  if (v9)
  {
    v125 = sub_1A870CCE0(&qword_1EB303320);
    *&v124 = v9;
    sub_1A85E99B0(&v124, v123);

    v10 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v10);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v11;
  v12 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v13 = v1[3];
  if (v13)
  {
    v14 = v1[2];
    v125 = v12;
    *&v124 = v14;
    *(&v124 + 1) = v13;
    sub_1A85E99B0(&v124, v123);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v15);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v16;
  sub_1A88C8D88();
  v17 = v1[5];
  if (v17)
  {
    v18 = v1[4];
    v125 = v12;
    *&v124 = v18;
    *(&v124 + 1) = v17;
    sub_1A85E99B0(&v124, v123);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v19);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v20;
  sub_1A88C8D88();
  v21 = v1[7];
  if (v21)
  {
    v22 = v1[6];
    v125 = v12;
    *&v124 = v22;
    *(&v124 + 1) = v21;
    sub_1A85E99B0(&v124, v123);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v23);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v24;
  sub_1A88C8D88();
  v25 = *(v1 + 64);
  v26 = MEMORY[0x1E69E6530];
  if (v25 == 3)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = MEMORY[0x1E69E6530];
    *&v124 = v25;
    sub_1A85E99B0(&v124, v123);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v27);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v28;
  sub_1A88C8D88();
  v29 = v1[10];
  if (v29)
  {
    v30 = v1[9];
    v125 = v12;
    *&v124 = v30;
    *(&v124 + 1) = v29;
    sub_1A85E99B0(&v124, v123);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v31);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v32;
  sub_1A88C8D88();
  v33 = v1[12];
  if (v33)
  {
    v34 = v1[11];
    v125 = v12;
    *&v124 = v34;
    *(&v124 + 1) = v33;
    sub_1A85E99B0(&v124, v123);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v35);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v36;
  sub_1A88C8D88();
  v37 = *(v1 + 104);
  if (v37 == 3)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v26;
    *&v124 = v37;
    sub_1A85E99B0(&v124, v123);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v38);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v39;
  sub_1A88C8D88();
  v40 = v1[14];
  if (v40)
  {
    v125 = sub_1A870CCE0(&qword_1EB303100);
    *&v124 = v40;
    sub_1A85E99B0(&v124, v123);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v41);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v42;
  sub_1A88C8D88();
  v43 = MEMORY[0x1E69E7360];
  if (v1[16])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v44 = v1[15];
    v125 = MEMORY[0x1E69E7360];
    *&v124 = v44;
    sub_1A85E99B0(&v124, v123);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v45);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v46;
  sub_1A88C8D88();
  if (v1[18])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v47 = v1[17];
    v125 = v43;
    *&v124 = v47;
    sub_1A85E99B0(&v124, v123);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v48);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v49;
  sub_1A88C8D88();
  v50 = v1[20];
  if (v50)
  {
    v51 = v1[19];
    v125 = v12;
    *&v124 = v51;
    *(&v124 + 1) = v50;
    sub_1A85E99B0(&v124, v123);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v52);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v53;
  sub_1A88C8D88();
  if (v1[22])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v54 = v1[21];
    v125 = v43;
    *&v124 = v54;
    sub_1A85E99B0(&v124, v123);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v55);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v56;
  sub_1A88C8D88();
  v57 = *(v1 + 177);
  v58 = MEMORY[0x1E69E6370];
  if (v57 == 2)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = MEMORY[0x1E69E6370];
    LOBYTE(v124) = v57 & 1;
    sub_1A85E99B0(&v124, v123);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v59);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v60;
  sub_1A88C8D88();
  v61 = *(v1 + 178);
  if (v61 == 2)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v58;
    LOBYTE(v124) = v61 & 1;
    sub_1A85E99B0(&v124, v123);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v62);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v63;
  sub_1A88C8D88();
  v64 = *(v1 + 179);
  if (v64 == 5)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v26;
    *&v124 = v64;
    sub_1A85E99B0(&v124, v123);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v65);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v66;
  sub_1A88C8D88();
  v67 = v1[24];
  if (v67)
  {
    v68 = v1[23];
    v125 = v12;
    *&v124 = v68;
    *(&v124 + 1) = v67;
    sub_1A85E99B0(&v124, v123);

    v69 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v69);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v70;
  sub_1A88C8D88();
  v71 = v1[26];
  if (v71)
  {
    v72 = v1[25];
    v125 = v12;
    *&v124 = v72;
    *(&v124 + 1) = v71;
    sub_1A85E99B0(&v124, v123);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v73);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v74;
  sub_1A88C8D88();
  if (*(v1 + 216) > 2u || (v75 = sub_1A88C8248(), , (v75 & 0x100) != 0))
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = MEMORY[0x1E69E7508];
    LOBYTE(v124) = v75;
    sub_1A85E99B0(&v124, v123);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v76);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v77;
  sub_1A88C8D88();
  v78 = v1[29];
  if (v78)
  {
    v79 = v1[28];
    v125 = v12;
    *&v124 = v79;
    *(&v124 + 1) = v78;
    sub_1A85E99B0(&v124, v123);

    v80 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v80);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v81;
  sub_1A88C8D88();
  v82 = v1[31];
  if (v82)
  {
    v83 = v1[30];
    v125 = v12;
    *&v124 = v83;
    *(&v124 + 1) = v82;
    sub_1A85E99B0(&v124, v123);

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v84);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v85;
  sub_1A88C8D88();
  v86 = v1[33];
  if (v86)
  {
    v87 = v1[32];
    v125 = v12;
    *&v124 = v87;
    *(&v124 + 1) = v86;
    sub_1A85E99B0(&v124, v123);

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v88);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v89;
  sub_1A88C8D88();
  v90 = MEMORY[0x1E69E6810];
  if (v1[35])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v91 = v1[34];
    v125 = MEMORY[0x1E69E6810];
    *&v124 = v91;
    sub_1A85E99B0(&v124, v123);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v92);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v93;
  sub_1A88C8D88();
  v94 = *(v1 + 281);
  if (v94 == 2)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v58;
    LOBYTE(v124) = v94 & 1;
    sub_1A85E99B0(&v124, v123);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v95);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v96;
  sub_1A88C8D88();
  v97 = *(v1 + 282);
  if (v97 == 2)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v58;
    LOBYTE(v124) = v97 & 1;
    sub_1A85E99B0(&v124, v123);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v98);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v99;
  sub_1A88C8D88();
  if (v1[37])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v100 = v1[36];
    v125 = v43;
    *&v124 = v100;
    sub_1A85E99B0(&v124, v123);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v101);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v102;
  sub_1A88C8D88();
  v103 = *(v1 + 297);
  if (v103 == 2)
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v125 = v58;
    LOBYTE(v124) = v103 & 1;
    sub_1A85E99B0(&v124, v123);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v104);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v105;
  sub_1A88C8D88();
  v106 = v1[39];
  if (v106)
  {
    v107 = v1[38];
    v125 = v12;
    *&v124 = v107;
    *(&v124 + 1) = v106;
    sub_1A85E99B0(&v124, v123);

    v108 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v108);
    sub_1A8717360(v126);
    v127 = v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v109;
  sub_1A88C8D88();
  if (v1[41])
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v110 = v1[40];
    v125 = v90;
    *&v124 = v110;
    sub_1A85E99B0(&v124, v123);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v111);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v112;
  sub_1A88C8D88();
  v113 = type metadata accessor for RemoteIntentChat();
  sub_1A87CF134(v1 + *(v113 + 136), v4);
  v114 = type metadata accessor for RemoteIntentMessageItem(0);
  if ((*(*(v114 - 8) + 48))(v4, 1, v114) == 1)
  {
    sub_1A85EF638(v4, &qword_1EB305E08);
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
  }

  else
  {
    v115 = sub_1A88401B8();
    v125 = sub_1A870CCE0(&qword_1EB303320);
    *&v124 = v115;
    sub_1A87CF58C(v4, type metadata accessor for RemoteIntentMessageItem);
    sub_1A85E99B0(&v124, v123);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v116);
    sub_1A8717360(v126);
    v127 = v122;
  }

  *&v124 = sub_1A88C82E8();
  *(&v124 + 1) = v117;
  sub_1A88C8D88();
  v118 = *(v1 + *(v113 + 140));
  if (v118)
  {
    v125 = sub_1A870CCE0(&qword_1EB303100);
    *&v124 = v118;
    sub_1A85E99B0(&v124, v123);

    v119 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v127;
    sub_1A87AC424(v123, v126, v119);
    sub_1A8717360(v126);
    return v122;
  }

  else
  {
    sub_1A88BEFF8(v126, &v124);
    sub_1A85EF638(&v124, &qword_1EB3057B0);
    sub_1A8717360(v126);
    return v127;
  }
}

uint64_t sub_1A87CF134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87CF1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305E08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87CF214(uint64_t a1, uint64_t a2)
{
  if (a1 == 45 && a2 == 0xE100000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 43 && a2 == 0xE100000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 35 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A88C9398();

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

unint64_t sub_1A87CF384()
{
  result = qword_1EB305EF8;
  if (!qword_1EB305EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305EF8);
  }

  return result;
}

unint64_t sub_1A87CF3D8()
{
  result = qword_1EB305F00;
  if (!qword_1EB305F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F00);
  }

  return result;
}

unint64_t sub_1A87CF42C()
{
  result = qword_1EB305F08;
  if (!qword_1EB305F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F08);
  }

  return result;
}

unint64_t sub_1A87CF480()
{
  result = qword_1EB305F10;
  if (!qword_1EB305F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F10);
  }

  return result;
}

unint64_t sub_1A87CF4D4()
{
  result = qword_1EB305F18;
  if (!qword_1EB305F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F18);
  }

  return result;
}

uint64_t sub_1A87CF528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentChat();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87CF58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A87CF5EC()
{
  result = qword_1EB305F30;
  if (!qword_1EB305F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F30);
  }

  return result;
}

unint64_t sub_1A87CF640()
{
  result = qword_1EB305F38;
  if (!qword_1EB305F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F38);
  }

  return result;
}

unint64_t sub_1A87CF694()
{
  result = qword_1EB305F40;
  if (!qword_1EB305F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F40);
  }

  return result;
}

unint64_t sub_1A87CF6E8()
{
  result = qword_1EB305F48;
  if (!qword_1EB305F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F48);
  }

  return result;
}

uint64_t sub_1A87CF73C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteIntentMessageItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87CF780(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

char *sub_1A87CF790(void *a1)
{
  v3 = sub_1A870C278(a1, a1[3]);
  sub_1A88C9598();
  if (!v1)
  {
    sub_1A870C278(v10, v10[3]);
    v4 = sub_1A88C93C8();
    if ((v4 & 0x80u) == 0)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = (((v4 & 0x3F) << 8) | (v4 >> 6)) + 33217;
    }

    v10[6] = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v5) >> 3))));
    v6 = sub_1A88C8378();
    v8 = sub_1A87CF214(v6, v7);
    if (v8 != 3)
    {
      v3 = v8;
      sub_1A85F1084(v10);
      sub_1A85F1084(a1);
      return v3;
    }

    v3 = "lientRequestAdapter";
    sub_1A88C8E88();
    swift_allocError();
    sub_1A88C8E68();
    swift_willThrow();
    sub_1A85F1084(v10);
  }

  sub_1A85F1084(a1);
  return v3;
}

unint64_t sub_1A87CF90C()
{
  result = qword_1EB305F60;
  if (!qword_1EB305F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F60);
  }

  return result;
}

unint64_t sub_1A87CF960()
{
  result = qword_1EB305F68;
  if (!qword_1EB305F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F68);
  }

  return result;
}

unint64_t sub_1A87CF9B4()
{
  result = qword_1EB305F70;
  if (!qword_1EB305F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentChat.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentChat.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A87CFB5C()
{
  result = qword_1EB305F78;
  if (!qword_1EB305F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F78);
  }

  return result;
}

unint64_t sub_1A87CFBB4()
{
  result = qword_1EB305F80;
  if (!qword_1EB305F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F80);
  }

  return result;
}

unint64_t sub_1A87CFC0C()
{
  result = qword_1EB305F88;
  if (!qword_1EB305F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305F88);
  }

  return result;
}

uint64_t sub_1A87CFC60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891B630 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A891B650 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891B670 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A891B690 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A89173C0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891B6B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7265746C69467369 && a2 == 0xEA00000000006465 || (sub_1A88C9398() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65766F6365527369 && a2 == 0xEB00000000646572 || (sub_1A88C9398() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891B6D0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746174536E696F6ALL && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A88C9398() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEF444970756F7247 || (sub_1A88C9398() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891B6F0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A891B710 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6F43646165726E75 && a2 == 0xEB00000000746E75 || (sub_1A88C9398() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x686B63616C427369 && a2 == 0xEC00000064656C6FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A891B730 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x4449776F72 && a2 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A891B750 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A891B770 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x7373654D7473616CLL && a2 == 0xEB00000000656761 || (sub_1A88C9398() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891B7A0 == a2)
  {

    return 31;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 31;
    }

    else
    {
      return 32;
    }
  }
}

uint64_t sub_1A87D0654()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305F90);
  sub_1A85EF0E4(v0, qword_1EB305F90);
  return sub_1A88C7E48();
}

uint64_t sub_1A87D06D4(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306038);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A87D1D38();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A87D0878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726566736E617274 && a2 == 0xED00007344495547)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87D0908(uint64_t a1)
{
  v2 = sub_1A87D1D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87D0944(uint64_t a1)
{
  v2 = sub_1A87D1D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87D0980()
{
  v0 = qword_1EB305FA8;

  return v0;
}

uint64_t sub_1A87D09B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v6 = *v3;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1A87D0A70;

  return (sub_1A87D12B4)(a3, v6);
}

uint64_t sub_1A87D0A70(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void *sub_1A87D0B80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A87D18B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1A87D0BF4(uint64_t a1)
{
  result = sub_1A87D0C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D0C1C()
{
  result = qword_1EB305FB8;
  if (!qword_1EB305FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FB8);
  }

  return result;
}

unint64_t sub_1A87D0C74()
{
  result = qword_1EB305FC0;
  if (!qword_1EB305FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FC0);
  }

  return result;
}

unint64_t sub_1A87D0CC8(uint64_t a1)
{
  result = sub_1A87A8974();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D0CF0(uint64_t a1)
{
  result = sub_1A87D0D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D0D18()
{
  result = qword_1EB305FC8;
  if (!qword_1EB305FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FC8);
  }

  return result;
}

uint64_t sub_1A87D0D6C(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306018);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A87D1C18();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB306008);
  sub_1A87D1C6C(&qword_1EB306020, &qword_1EB3077C0);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A87D0F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7272694D656C6966 && a2 == 0xEB0000000073726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87D0FAC(uint64_t a1)
{
  v2 = sub_1A87D1C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87D0FE8(uint64_t a1)
{
  v2 = sub_1A87D1C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A87D1024(uint64_t a1)
{
  result = sub_1A87D104C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D104C()
{
  result = qword_1EB305FD0;
  if (!qword_1EB305FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FD0);
  }

  return result;
}

unint64_t sub_1A87D10A0(uint64_t a1)
{
  result = sub_1A87D10C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D10C8()
{
  result = qword_1EB305FD8;
  if (!qword_1EB305FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FD8);
  }

  return result;
}

uint64_t sub_1A87D1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void *sub_1A87D1184@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A87D1A5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1A87D11D0()
{
  result = qword_1EB305FE0;
  if (!qword_1EB305FE0)
  {
    sub_1A870CD28(&qword_1EB305FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FE0);
  }

  return result;
}

unint64_t sub_1A87D1238(uint64_t a1)
{
  result = sub_1A87D1260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87D1260()
{
  result = qword_1EB305FF0;
  if (!qword_1EB305FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305FF0);
  }

  return result;
}

uint64_t sub_1A87D12B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A87D12D4, 0, 0);
}

uint64_t sub_1A87D12D4()
{
  if (*(v0[3] + 16))
  {
    v1 = v0[2];
    v2 = v1[3];
    v3 = v1[4];
    sub_1A870C278(v1, v2);
    v13 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1A87D1504;
    v5 = v0[3];

    return v13(v5, 1, v2, v3);
  }

  else
  {
    if (qword_1EB302220 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB305F90);
    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A85E5000, v8, v9, "TransferFilesWithGUIDsRequest Didn't generate files because there were no transfer guids on the request.", v10, 2u);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    v11 = v0[1];
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1A87D1504(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A87D1608, 0, 0);
}

uint64_t sub_1A87D1608()
{
  v1 = *(v0 + 40);
  v2 = qword_1EB302220;
  if (*(v0 + 48))
  {
    if (qword_1EB302220 != -1)
    {
      swift_once();
    }

    v3 = sub_1A88C7E58();
    sub_1A85EF0E4(v3, qword_1EB305F90);
    v4 = v1;
    v5 = sub_1A88C7E38();
    v6 = sub_1A88C89C8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 40);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_1A85E5000, v5, v6, "TransferFilesWithGUIDsRequest Failed to generate file transfer mirrors. No files will be transfered for this request. Error: %@", v9, 0xCu);
      sub_1A8755CB4(v10);
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    else
    {

      sub_1A87D18A8(v8, 1);
    }

    sub_1A87D18A8(v8, 1);
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    if (v2 != -1)
    {
      swift_once();
    }

    v12 = sub_1A88C7E58();
    sub_1A85EF0E4(v12, qword_1EB305F90);

    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89D8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 40);
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v1[2];
      sub_1A87D18A8(v16, 0);
      _os_log_impl(&dword_1A85E5000, v13, v14, "TransferFilesWithGUIDsRequest Generated %ld file mirrors.", v17, 0xCu);
      MEMORY[0x1AC571F20](v17, -1, -1);
    }

    else
    {
      sub_1A87D18A8(*(v0 + 40), 0);
    }

    sub_1A87D18A8(v16, 0);
  }

  v18 = *(v0 + 8);

  return v18(v1);
}

void sub_1A87D18A8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_1A87D18B4(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB306028);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A87D1D38();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

void *sub_1A87D1A5C(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB305FF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A87D1C18();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB306008);
    sub_1A87D1C6C(&qword_1EB306010, &qword_1EB3077B0);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

unint64_t sub_1A87D1C18()
{
  result = qword_1EB306000;
  if (!qword_1EB306000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306000);
  }

  return result;
}

uint64_t sub_1A87D1C6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB306008);
    sub_1A87D1CF4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A87D1CF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteIntentMirrorFile(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87D1D38()
{
  result = qword_1EB306030;
  if (!qword_1EB306030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306030);
  }

  return result;
}

unint64_t sub_1A87D1DC0()
{
  result = qword_1EB306040;
  if (!qword_1EB306040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306040);
  }

  return result;
}

unint64_t sub_1A87D1E18()
{
  result = qword_1EB306048;
  if (!qword_1EB306048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306048);
  }

  return result;
}

unint64_t sub_1A87D1E70()
{
  result = qword_1EB306050;
  if (!qword_1EB306050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306050);
  }

  return result;
}

unint64_t sub_1A87D1EC8()
{
  result = qword_1EB306058;
  if (!qword_1EB306058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306058);
  }

  return result;
}

unint64_t sub_1A87D1F20()
{
  result = qword_1EB306060;
  if (!qword_1EB306060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306060);
  }

  return result;
}

unint64_t sub_1A87D1F78()
{
  result = qword_1EB306068;
  if (!qword_1EB306068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306068);
  }

  return result;
}

uint64_t sub_1A87D1FD8()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87D20EC()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87D21DC()
{
  sub_1A88C8268();
}

uint64_t sub_1A87D2374()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87D2484()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A87D2594()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A88C6FB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C6FA8();
  sub_1A88C6F78();
  MEMORY[0x1AC56D810](7824750, 0xE300000000000000);
  sub_1A87D28D0();
  sub_1A88C6F28();
  v6 = sub_1A870CCE0(&unk_1EB309060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1A88C6F38();
  v9 = sub_1A88C72E8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A85EF638(v8, &unk_1EB309060);
    sub_1A87D526C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return (*(v10 + 32))(a1, v8, v9);
  }
}

char *sub_1A87D28D0()
{
  v275 = MEMORY[0x1E69E7CC0];
  v1 = sub_1A88C6F18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = *(v0 + 24);
  v269 = v0;
  v5 = sub_1A870CCE0(&qword_1EB3062D0);
  v267 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v259 - v6;
  v270 = v2;
  v262 = v1;
  if (!v4)
  {
    v264 = *(v2 + 56);
    v264(v7, 1, 1, v1);
    goto LABEL_7;
  }

  sub_1A88C6EE8();
  v264 = *(v2 + 56);
  v264(v7, 0, 1, v1);

  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
LABEL_7:
    v16 = sub_1A85EF638(v7, &qword_1EB3062D0);
    goto LABEL_8;
  }

  v8 = *(v2 + 32);
  v9 = v8(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v1);
  v268 = &v259;
  MEMORY[0x1EEE9AC00](v9);
  (*(v2 + 16))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v10 = sub_1A8735AB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1A8735AB0(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = v270;
  v14 = v270 + 8;
  v15 = v262;
  (*(v270 + 8))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v262);
  *(v10 + 2) = v12 + 1;
  v16 = v8(&v10[((*(v14 + 72) + 32) & ~*(v14 + 72)) + *(v14 + 64) * v12], &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v2 = v13;
  v275 = v10;
LABEL_8:
  v17 = v269;
  v18 = *(v269 + 48);
  if (v18)
  {
    v20 = *(v269 + 56);
    v19 = *(v269 + 64);
    v271 = *(v269 + 32);
    v272 = v18;
    v273 = v20;
    v274 = v19;
    v21 = sub_1A87D65AC();
    v16 = sub_1A8734B5C(v21);
  }

  v268 = &v259;
  v22 = MEMORY[0x1EEE9AC00](v16);
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v259 - v23;
  v25 = *(v17 + 88);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v259 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A87D7F78(v25, v27);

  v28 = v262;
  v265 = *(v2 + 48);
  v266 = v2 + 48;
  if (v265(v27, 1, v262) == 1)
  {
    v29 = sub_1A85EF638(v27, &qword_1EB3062D0);
  }

  else
  {
    v263 = *(v2 + 32);
    v30 = v263(&v259 - v23, v27, v28);
    MEMORY[0x1EEE9AC00](v30);
    v31 = &v259 - v23;
    (*(v2 + 16))(&v259 - v23, &v259 - v23, v28);
    v32 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1A8735AB0(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_1A8735AB0(v33 > 1, v34 + 1, 1, v32);
    }

    (*(v2 + 8))(v24, v28);
    *(v32 + 2) = v34 + 1;
    v29 = v263(&v32[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34], v31, v28);
    v275 = v32;
  }

  v35 = MEMORY[0x1EEE9AC00](v29);
  v36 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v259 - v36;
  v38 = *(v269 + 112);
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v259 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A87D816C(v38, v40);

  if (v265(v40, 1, v28) == 1)
  {
    v41 = sub_1A85EF638(v40, &qword_1EB3062D0);
  }

  else
  {
    v268 = &v259;
    v42 = v270;
    v263 = *(v270 + 32);
    v43 = v263(&v259 - v36, v40, v28);
    MEMORY[0x1EEE9AC00](v43);
    v44 = &v259 - v36;
    (*(v42 + 16))(&v259 - v36, &v259 - v36, v28);
    v45 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1A8735AB0(0, *(v45 + 2) + 1, 1, v45);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1A8735AB0(v46 > 1, v47 + 1, 1, v45);
    }

    (*(v42 + 8))(v37, v28);
    *(v45 + 2) = v47 + 1;
    v41 = v263(&v45[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v47], v44, v28);
    v275 = v45;
  }

  v48 = MEMORY[0x1EEE9AC00](v41);
  v49 = *(v269 + 144);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v259 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v49)
  {
    v264(&v259 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v28);
    goto LABEL_32;
  }

  sub_1A88C6EE8();
  v264(v51, 0, 1, v28);

  if (v265(v51, 1, v28) == 1)
  {
LABEL_32:
    v58 = sub_1A85EF638(v51, &qword_1EB3062D0);
    goto LABEL_33;
  }

  v268 = &v259;
  v52 = v270;
  v263 = *(v270 + 32);
  v53 = v263(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v28);
  MEMORY[0x1EEE9AC00](v53);
  (*(v52 + 16))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v54 = v275;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1A8735AB0(0, *(v54 + 2) + 1, 1, v54);
  }

  v56 = *(v54 + 2);
  v55 = *(v54 + 3);
  if (v56 >= v55 >> 1)
  {
    v54 = sub_1A8735AB0(v55 > 1, v56 + 1, 1, v54);
  }

  v57 = v270 + 8;
  (*(v270 + 8))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  *(v54 + 2) = v56 + 1;
  v58 = v263(&v54[((*(v57 + 72) + 32) & ~*(v57 + 72)) + *(v57 + 64) * v56], &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v275 = v54;
LABEL_33:
  v59 = MEMORY[0x1EEE9AC00](v58);
  v60 = *(v269 + 176);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v259 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v60)
  {
    v264(&v259 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v28);
    goto LABEL_41;
  }

  sub_1A88C6EE8();
  v264(v62, 0, 1, v28);

  if (v265(v62, 1, v28) == 1)
  {
LABEL_41:
    v69 = sub_1A85EF638(v62, &qword_1EB3062D0);
    goto LABEL_42;
  }

  v268 = &v259;
  v63 = v270;
  v263 = *(v270 + 32);
  v64 = v263(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v28);
  MEMORY[0x1EEE9AC00](v64);
  (*(v63 + 16))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v65 = v275;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1A8735AB0(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_1A8735AB0(v66 > 1, v67 + 1, 1, v65);
  }

  v68 = v270 + 8;
  (*(v270 + 8))(&v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  *(v65 + 2) = v67 + 1;
  v69 = v263(&v65[((*(v68 + 72) + 32) & ~*(v68 + 72)) + *(v68 + 64) * v67], &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v275 = v65;
LABEL_42:
  v268 = &v259;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v259 - v71;
  MEMORY[0x1EEE9AC00](v70);

  sub_1A87D8A90(v73);
  if (v74)
  {
    sub_1A88C6EE8();

    v75 = v270;
    v263 = *(v270 + 32);
    v76 = v263(&v259 - v71, &v259 - v71, v28);
    MEMORY[0x1EEE9AC00](v76);
    v77 = &v259 - v71;
    (*(v75 + 16))(&v259 - v71, &v259 - v71, v28);
    v78 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1A8735AB0(0, *(v78 + 2) + 1, 1, v78);
    }

    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_1A8735AB0(v79 > 1, v80 + 1, 1, v78);
    }

    v81 = v270 + 8;
    (*(v270 + 8))(v72, v28);
    *(v78 + 2) = v80 + 1;
    v82 = v263(&v78[((*(v81 + 72) + 32) & ~*(v81 + 72)) + *(v81 + 64) * v80], v77, v28);
    v275 = v78;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v82);
  v83 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = &v259 - v83;
  v268 = type metadata accessor for TapToRadarDraft();
  MEMORY[0x1EEE9AC00](v268);
  v86 = &v259 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A87D82C4(v86);
  if (v265(v86, 1, v28) == 1)
  {
    v87 = sub_1A85EF638(v86, &qword_1EB3062D0);
  }

  else
  {
    v263 = &v259;
    v88 = v270;
    v261 = *(v270 + 32);
    v89 = v261(&v259 - v83, v86, v28);
    MEMORY[0x1EEE9AC00](v89);
    v90 = &v259 - v83;
    (*(v88 + 16))(&v259 - v83, &v259 - v83, v28);
    v91 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_1A8735AB0(0, *(v91 + 2) + 1, 1, v91);
    }

    v93 = *(v91 + 2);
    v92 = *(v91 + 3);
    if (v93 >= v92 >> 1)
    {
      v91 = sub_1A8735AB0(v92 > 1, v93 + 1, 1, v91);
    }

    (*(v88 + 8))(v84, v28);
    *(v91 + 2) = v93 + 1;
    v87 = v261(&v91[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v93], v90, v28);
    v275 = v91;
  }

  v263 = &v259;
  v94 = MEMORY[0x1EEE9AC00](v87);
  v95 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v259 - v95;
  MEMORY[0x1EEE9AC00](v94);

  sub_1A87D8870(v97);
  if (v98)
  {
    sub_1A88C6EE8();

    v99 = v270;
    v261 = *(v270 + 32);
    v100 = v261(&v259 - v95, &v259 - v95, v28);
    MEMORY[0x1EEE9AC00](v100);
    v101 = &v259 - v95;
    (*(v99 + 16))(&v259 - v95, &v259 - v95, v28);
    v102 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1A8735AB0(0, *(v102 + 2) + 1, 1, v102);
    }

    v104 = *(v102 + 2);
    v103 = *(v102 + 3);
    if (v104 >= v103 >> 1)
    {
      v102 = sub_1A8735AB0(v103 > 1, v104 + 1, 1, v102);
    }

    v105 = v270 + 8;
    (*(v270 + 8))(v96, v28);
    *(v102 + 2) = v104 + 1;
    v106 = v261(&v102[((*(v105 + 72) + 32) & ~*(v105 + 72)) + *(v105 + 64) * v104], v101, v28);
    v275 = v102;
  }

  else
  {
  }

  v263 = &v259;
  v107 = MEMORY[0x1EEE9AC00](v106);
  v108 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = &v259 - v108;
  MEMORY[0x1EEE9AC00](v107);

  sub_1A87D8870(v110);
  if (v111)
  {
    sub_1A88C6EE8();

    v112 = v270;
    v261 = *(v270 + 32);
    v113 = v261(&v259 - v108, &v259 - v108, v28);
    MEMORY[0x1EEE9AC00](v113);
    v114 = &v259 - v108;
    (*(v112 + 16))(&v259 - v108, &v259 - v108, v28);
    v115 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = sub_1A8735AB0(0, *(v115 + 2) + 1, 1, v115);
    }

    v117 = *(v115 + 2);
    v116 = *(v115 + 3);
    if (v117 >= v116 >> 1)
    {
      v115 = sub_1A8735AB0(v116 > 1, v117 + 1, 1, v115);
    }

    v118 = v270 + 8;
    (*(v270 + 8))(v109, v28);
    *(v115 + 2) = v117 + 1;
    v119 = v261(&v115[((*(v118 + 72) + 32) & ~*(v118 + 72)) + *(v118 + 64) * v117], v114, v28);
    v275 = v115;
  }

  else
  {
  }

  v263 = &v259;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v121 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = &v259 - v121;
  MEMORY[0x1EEE9AC00](v120);

  sub_1A87D8740(v123);
  v261 = v3;
  if (v124)
  {
    sub_1A88C6EE8();

    v125 = v270;
    v260 = *(v270 + 32);
    v126 = v260(&v259 - v121, &v259 - v121, v28);
    MEMORY[0x1EEE9AC00](v126);
    v127 = &v259 - v121;
    (*(v125 + 16))(&v259 - v121, &v259 - v121, v28);
    v128 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_1A8735AB0(0, *(v128 + 2) + 1, 1, v128);
    }

    v130 = *(v128 + 2);
    v129 = *(v128 + 3);
    if (v130 >= v129 >> 1)
    {
      v128 = sub_1A8735AB0(v129 > 1, v130 + 1, 1, v128);
    }

    v131 = v270;
    v132 = v270 + 8;
    v28 = v262;
    (*(v270 + 8))(v122, v262);
    *(v128 + 2) = v130 + 1;
    v133 = v260(&v128[((*(v132 + 72) + 32) & ~*(v132 + 72)) + *(v132 + 64) * v130], v127, v28);
    v275 = v128;
  }

  else
  {

    v131 = v270;
  }

  v260 = &v259;
  v134 = v261;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v137 = &v259 - v136;
  MEMORY[0x1EEE9AC00](v135);
  v139 = &v259 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A88C6EE8();

  v263 = (v131 + 56);
  v264(v139, 0, 1, v28);

  if (v265(v139, 1, v28) == 1)
  {
    v140 = sub_1A85EF638(v139, &qword_1EB3062D0);
  }

  else
  {
    v259 = *(v131 + 32);
    v141 = v259(&v259 - v136, v139, v28);
    MEMORY[0x1EEE9AC00](v141);
    v142 = &v259 - v136;
    (*(v131 + 16))(&v259 - v136, &v259 - v136, v28);
    v143 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_1A8735AB0(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_1A8735AB0(v144 > 1, v145 + 1, 1, v143);
    }

    v28 = v262;
    (*(v131 + 8))(v137, v262);
    *(v143 + 2) = v145 + 1;
    v140 = v259(&v143[((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v145], v142, v28);
    v275 = v143;
  }

  v146 = v261;
  v260 = &v259;
  v147 = MEMORY[0x1EEE9AC00](v140);
  v148 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v259 - v148;
  MEMORY[0x1EEE9AC00](v147);

  sub_1A87D8740(v150);
  if (v151)
  {
    sub_1A88C6EE8();

    v152 = v270;
    v259 = *(v270 + 32);
    v153 = v259(&v259 - v148, &v259 - v148, v28);
    MEMORY[0x1EEE9AC00](v153);
    v154 = &v259 - v148;
    (*(v152 + 16))(&v259 - v148, &v259 - v148, v28);
    v155 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_1A8735AB0(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_1A8735AB0(v156 > 1, v157 + 1, 1, v155);
    }

    v158 = v270 + 8;
    (*(v270 + 8))(v149, v28);
    *(v155 + 2) = v157 + 1;
    v159 = v259(&v155[((*(v158 + 72) + 32) & ~*(v158 + 72)) + *(v158 + 64) * v157], v154, v28);
    v275 = v155;
  }

  else
  {
  }

  v260 = &v259;
  v160 = MEMORY[0x1EEE9AC00](v159);
  v161 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v259 - v161;
  MEMORY[0x1EEE9AC00](v160);

  sub_1A87D8580(v163);
  if (v164)
  {
    sub_1A88C6EE8();

    v165 = v270;
    v259 = *(v270 + 32);
    v166 = v259(&v259 - v161, &v259 - v161, v28);
    MEMORY[0x1EEE9AC00](v166);
    v167 = &v259 - v161;
    (*(v165 + 16))(&v259 - v161, &v259 - v161, v28);
    v168 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_1A8735AB0(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_1A8735AB0(v169 > 1, v170 + 1, 1, v168);
    }

    v171 = v270 + 8;
    (*(v270 + 8))(v162, v28);
    *(v168 + 2) = v170 + 1;
    v172 = v259(&v168[((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v170], v167, v28);
    v275 = v168;
  }

  else
  {
  }

  v260 = &v259;
  v173 = MEMORY[0x1EEE9AC00](v172);
  v174 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v175 = &v259 - v174;
  MEMORY[0x1EEE9AC00](v173);

  sub_1A87D8740(v176);
  if (v177)
  {
    sub_1A88C6EE8();

    v178 = v270;
    v259 = *(v270 + 32);
    v179 = v259(&v259 - v174, &v259 - v174, v28);
    MEMORY[0x1EEE9AC00](v179);
    v180 = &v259 - v174;
    (*(v178 + 16))(&v259 - v174, &v259 - v174, v28);
    v181 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = sub_1A8735AB0(0, *(v181 + 2) + 1, 1, v181);
    }

    v183 = *(v181 + 2);
    v182 = *(v181 + 3);
    if (v183 >= v182 >> 1)
    {
      v181 = sub_1A8735AB0(v182 > 1, v183 + 1, 1, v181);
    }

    v184 = v270 + 8;
    (*(v270 + 8))(v175, v28);
    *(v181 + 2) = v183 + 1;
    v185 = v259(&v181[((*(v184 + 72) + 32) & ~*(v184 + 72)) + *(v184 + 64) * v183], v180, v28);
    v275 = v181;
  }

  else
  {
  }

  v186 = MEMORY[0x1EEE9AC00](v185);
  v187 = (v269 + v268[19]);
  v189 = *v187;
  v188 = v187[1];
  MEMORY[0x1EEE9AC00](v186);
  v191 = &v259 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v271 = v189;
  *(&v271 + 1) = v188;
  v272 = v192;

  sub_1A87D7600();
  if (v193)
  {
    sub_1A88C6EE8();

    v194 = 0;
  }

  else
  {

    v194 = 1;
  }

  v264(v191, v194, 1, v28);
  if (v265(v191, 1, v28) == 1)
  {
    v195 = sub_1A85EF638(v191, &qword_1EB3062D0);
  }

  else
  {
    v260 = &v259;
    v196 = v270;
    v259 = *(v270 + 32);
    v197 = v259(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v191, v28);
    MEMORY[0x1EEE9AC00](v197);
    (*(v196 + 16))(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v198 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_1A8735AB0(0, *(v198 + 2) + 1, 1, v198);
    }

    v200 = *(v198 + 2);
    v199 = *(v198 + 3);
    if (v200 >= v199 >> 1)
    {
      v198 = sub_1A8735AB0(v199 > 1, v200 + 1, 1, v198);
    }

    v201 = v270 + 8;
    (*(v270 + 8))(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    *(v198 + 2) = v200 + 1;
    v195 = v259(&v198[((*(v201 + 72) + 32) & ~*(v201 + 72)) + *(v201 + 64) * v200], &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v275 = v198;
  }

  v202 = MEMORY[0x1EEE9AC00](v195);
  v203 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v204 = &v259 - v203;
  MEMORY[0x1EEE9AC00](v202);
  v206 = &v259 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A88C6EE8();

  v264(v206, 0, 1, v28);

  if (v265(v206, 1, v28) == 1)
  {
    v207 = sub_1A85EF638(v206, &qword_1EB3062D0);
  }

  else
  {
    v260 = &v259;
    v208 = v270;
    v259 = *(v270 + 32);
    v209 = v259(&v259 - v203, v206, v28);
    MEMORY[0x1EEE9AC00](v209);
    v210 = &v259 - v203;
    (*(v208 + 16))(&v259 - v203, &v259 - v203, v28);
    v211 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v211 = sub_1A8735AB0(0, *(v211 + 2) + 1, 1, v211);
    }

    v213 = *(v211 + 2);
    v212 = *(v211 + 3);
    if (v213 >= v212 >> 1)
    {
      v211 = sub_1A8735AB0(v212 > 1, v213 + 1, 1, v211);
    }

    (*(v208 + 8))(v204, v28);
    *(v211 + 2) = v213 + 1;
    v207 = v259(&v211[((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v213], v210, v28);
    v275 = v211;
  }

  v214 = MEMORY[0x1EEE9AC00](v207);
  v215 = (v269 + v268[21]);
  v217 = *v215;
  v216 = v215[1];
  MEMORY[0x1EEE9AC00](v214);
  v219 = &v259 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v271 = v217;
  *(&v271 + 1) = v216;
  LOBYTE(v272) = v220;

  sub_1A87D792C();
  if (v221)
  {
    sub_1A88C6EE8();

    v222 = 0;
  }

  else
  {

    v222 = 1;
  }

  v264(v219, v222, 1, v28);
  if (v265(v219, 1, v28) == 1)
  {
    v223 = sub_1A85EF638(v219, &qword_1EB3062D0);
  }

  else
  {
    v260 = &v259;
    v224 = v270;
    v259 = *(v270 + 32);
    v225 = v259(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v219, v28);
    MEMORY[0x1EEE9AC00](v225);
    (*(v224 + 16))(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v226 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v226 = sub_1A8735AB0(0, *(v226 + 2) + 1, 1, v226);
    }

    v228 = *(v226 + 2);
    v227 = *(v226 + 3);
    if (v228 >= v227 >> 1)
    {
      v226 = sub_1A8735AB0(v227 > 1, v228 + 1, 1, v226);
    }

    v229 = v270 + 8;
    (*(v270 + 8))(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    *(v226 + 2) = v228 + 1;
    v223 = v259(&v226[((*(v229 + 72) + 32) & ~*(v229 + 72)) + *(v229 + 64) * v228], &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v275 = v226;
  }

  v260 = &v259;
  v230 = MEMORY[0x1EEE9AC00](v223);
  v231 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v232 = &v259 - v231;
  MEMORY[0x1EEE9AC00](v230);

  sub_1A87D8740(v233);
  if (v234)
  {
    sub_1A88C6EE8();

    v235 = v270;
    v259 = *(v270 + 32);
    v236 = v259(&v259 - v231, &v259 - v231, v28);
    MEMORY[0x1EEE9AC00](v236);
    v237 = &v259 - v231;
    (*(v235 + 16))(&v259 - v231, &v259 - v231, v28);
    v238 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_1A8735AB0(0, *(v238 + 2) + 1, 1, v238);
    }

    v240 = *(v238 + 2);
    v239 = *(v238 + 3);
    if (v240 >= v239 >> 1)
    {
      v238 = sub_1A8735AB0(v239 > 1, v240 + 1, 1, v238);
    }

    v241 = v270 + 8;
    (*(v270 + 8))(v232, v28);
    *(v238 + 2) = v240 + 1;
    v242 = v259(&v238[((*(v241 + 72) + 32) & ~*(v241 + 72)) + *(v241 + 64) * v240], v237, v28);
    v275 = v238;
  }

  else
  {
  }

  v243 = MEMORY[0x1EEE9AC00](v242);
  v244 = &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = *(v269 + v268[23] + 24);
  MEMORY[0x1EEE9AC00](v243);
  v247 = &v259 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v245)
  {
    v264(&v259 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v28);
    goto LABEL_147;
  }

  sub_1A88C6EE8();
  v264(v247, 0, 1, v28);

  if (v265(v247, 1, v28) == 1)
  {
LABEL_147:
    sub_1A85EF638(v247, &qword_1EB3062D0);
    return v275;
  }

  v248 = *(v270 + 32);
  v249 = v248(&v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0), v247, v28);
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v259 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v251 + 16))(v250, v244, v28);
  v252 = v275;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v252 = sub_1A8735AB0(0, *(v252 + 2) + 1, 1, v252);
  }

  v254 = *(v252 + 2);
  v253 = *(v252 + 3);
  if (v254 >= v253 >> 1)
  {
    v252 = sub_1A8735AB0(v253 > 1, v254 + 1, 1, v252);
  }

  v255 = v270 + 8;
  v256 = v244;
  v257 = v262;
  (*(v270 + 8))(v256, v262);
  *(v252 + 2) = v254 + 1;
  v248(&v252[((*(v255 + 72) + 32) & ~*(v255 + 72)) + *(v255 + 64) * v254], v250, v257);
  return v252;
}

unint64_t sub_1A87D526C()
{
  result = qword_1EB306110;
  if (!qword_1EB306110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306110);
  }

  return result;
}

uint64_t sub_1A87D52E0()
{
  v1 = sub_1A88C72E8();
  v0[20] = v1;
  v2 = *(v1 - 8);
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  TapToRadarDraft.url.getter(v3);
  v5 = [objc_opt_self() defaultWorkspace];
  v0[23] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A88C7238();
    v0[24] = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A87D55F4;
    v8 = swift_continuation_init();
    v0[17] = sub_1A870CCE0(&qword_1EB306118);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A87D5854;
    v0[13] = &unk_1F1BB05A8;
    v0[14] = v8;
    [v6 openURL:v7 configuration:0 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EB302248 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB338E20);
    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A85E5000, v10, v11, "No default LSApplicationWorkspace, could not open Tap-to-Radar!", v12, 2u);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    (*(v2 + 8))(v3, v1);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1A87D55F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1A87D57A8;
  }

  else
  {
    v2 = sub_1A87D5704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A87D5704()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A87D57A8()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  swift_willThrow();

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A87D5854(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A870CCE0(&unk_1EB3037B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1A88C81A8();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t TapToRadarDraft.postUserNotification(identifier:bundleIdentifier:title:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[25] = a8;
  v9[26] = v8;
  v9[23] = a6;
  v9[24] = a7;
  v9[21] = a4;
  v9[22] = a5;
  v9[19] = a2;
  v9[20] = a3;
  v9[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A87D5980, 0, 0);
}

uint64_t sub_1A87D5980()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v0[27] = v1;
  v2 = sub_1A88C82A8();
  [v1 setTitle_];

  v3 = sub_1A88C82A8();
  [v1 setBody_];

  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  TapToRadarDraft.url.getter(v6);
  v7 = sub_1A88C7238();
  (*(v5 + 8))(v6, v4);

  [v1 setDefaultActionURL_];

  [v1 setShouldSuppressScreenLightUp_];
  v8 = sub_1A88C7478();
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = swift_task_alloc();
  sub_1A88C7458();
  sub_1A88C73F8();
  v12 = *(v9 + 8);
  v12(v11, v8);

  v13 = sub_1A88C73D8();
  v12(v10, v8);

  [v1 setExpirationDate_];

  v14 = v1;
  v15 = sub_1A88C82A8();
  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0];
  v0[28] = v16;

  v17 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v18 = sub_1A88C82A8();
  v19 = [v17 initWithBundleIdentifier_];
  v0[29] = v19;

  v0[2] = v0;
  v0[3] = sub_1A87D5DC4;
  v20 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB304C48);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A876D87C;
  v0[13] = &unk_1F1BB05D0;
  v0[14] = v20;
  [v19 addNotificationRequest:v16 withCompletionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A87D5DC4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1A87D5F44;
  }

  else
  {
    v2 = sub_1A87D5ED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A87D5ED4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A87D5F44()
{
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t static TapToRadarDraft.Component.messagesAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302228 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EB306080;
  v2 = qword_1EB306088;
  v3 = qword_1EB306090;
  *a1 = xmmword_1EB306070;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t static TapToRadarDraft.submitTapToRadar(title:problemDescription:attachments:deviceClasses:component:classification:reproducibility:extensionIdentifiers:autoDiagnostics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11, unsigned __int8 *a12)
{
  v66 = a5;
  v67 = a6;
  v62 = a3;
  v63 = a4;
  v65 = a11;
  v13 = a7[1];
  v60 = *a7;
  v61 = a1;
  v58 = a2;
  v59 = v13;
  v14 = a7[3];
  v54 = a7[2];
  v57 = v14;
  v15 = a7[4];
  LODWORD(v14) = *a8;
  v55 = *a10;
  v56 = v14;
  v64 = *a12;
  v16 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - v17;

  v53 = v18;
  sub_1A88C7468();
  v19 = sub_1A88C7478();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  *a9 = 0x4449656C646E7542;
  *(a9 + 8) = 0xE800000000000000;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 88) = 10;
  *(a9 + 64) = 0;
  strcpy((a9 + 72), "Classification");
  *(a9 + 87) = -18;
  *(a9 + 112) = 6;
  *(a9 + 96) = 0x6375646F72706552;
  *(a9 + 104) = 0xEF7974696C696269;
  *(a9 + 120) = 0x656C746954;
  *(a9 + 128) = 0xE500000000000000;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0x7470697263736544;
  *(a9 + 160) = 0xEB000000006E6F69;
  *(a9 + 168) = 0;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0x7364726F7779654BLL;
  *(a9 + 192) = 0xE800000000000000;
  v21 = MEMORY[0x1E69E7CC0];
  *(a9 + 200) = MEMORY[0x1E69E7CC0];
  v22 = type metadata accessor for TapToRadarDraft();
  v23 = (a9 + v22[11]);
  v52 = *(sub_1A870CCE0(&qword_1EB306120) + 36);
  v20(&v23[v52], 1, 1, v19);
  *v23 = 0x7349664F656D6954;
  *(v23 + 1) = 0xEB00000000657573;
  v24 = (a9 + v22[12]);
  v50 = v24;
  v51 = v23;
  *v24 = 0x656D686361747441;
  v24[1] = 0xEB0000000073746ELL;
  v25 = v21;
  v24[2] = v21;
  v26 = (a9 + v22[13]);
  v49 = v26;
  *v26 = 0xD000000000000011;
  v26[1] = 0x80000001A891B830;
  v26[2] = v21;
  v27 = (a9 + v22[14]);
  v48 = v27;
  *v27 = 0xD000000000000014;
  v27[1] = 0x80000001A891B850;
  v27[2] = v21;
  v28 = (a9 + v22[15]);
  v47 = v28;
  strcpy(v28, "DeleteOnAttach");
  v28[15] = -18;
  v28[16] = 0;
  v29 = (a9 + v22[16]);
  v46 = v29;
  *v29 = 0x4449656369766544;
  v29[1] = 0xE900000000000073;
  v29[2] = v21;
  v30 = a9 + v22[17];
  strcpy(v30, "DeviceClasses");
  *(v30 + 14) = -4864;
  *(v30 + 16) = v21;
  v31 = a9 + v22[18];
  strcpy(v31, "DeviceModels");
  *(v31 + 13) = 0;
  *(v31 + 14) = -5120;
  *(v31 + 16) = v21;
  v32 = (a9 + v22[19]);
  v32[1] = 0x80000001A88EC440;
  v32[2] = 0;
  *v32 = 0xD000000000000016;
  v33 = a9 + v22[20];
  *v33 = 0xD00000000000001ALL;
  *(v33 + 8) = 0x80000001A891B870;
  *(v33 + 16) = 0;
  v34 = a9 + v22[21];
  *(v34 + 16) = 0;
  *v34 = 0x676169446F747541;
  *(v34 + 8) = 0xEF73636974736F6ELL;
  v35 = (a9 + v22[22]);
  *v35 = 0xD00000000000001BLL;
  v35[1] = 0x80000001A891B890;
  v35[2] = v25;
  v36 = (a9 + v22[23]);
  *v36 = 0xD000000000000018;
  v36[1] = 0x80000001A891B8B0;
  v36[2] = 0;
  v36[3] = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  sub_1A87D8CB8(*(a9 + 32), *(a9 + 40), *(a9 + 48));
  v37 = v59;
  *(a9 + 32) = v60;
  *(a9 + 40) = v37;
  v39 = v57;
  v38 = v58;
  *(a9 + 48) = v54;
  *(a9 + 56) = v39;
  *(a9 + 64) = v15;
  LOBYTE(v39) = v55;
  *(a9 + 88) = v56;
  *(a9 + 112) = v39;
  v40 = v62;
  *(a9 + 136) = v61;
  *(a9 + 144) = v38;
  v41 = v63;
  *(a9 + 168) = v40;
  *(a9 + 176) = v41;
  *(a9 + 200) = v25;

  sub_1A87D8CFC(v53, &v51[v52]);
  v42 = v65;
  v43 = v49;
  v50[2] = v66;
  v43[2] = v25;
  v44 = v47;
  v48[2] = v42;
  v44[16] = 0;
  v46[2] = v25;
  *(v30 + 16) = v67;
  *(v31 + 16) = v25;
  v32[2] = 0;
  *(v33 + 16) = 1;
  *(v34 + 16) = v64;
  v35[2] = v25;
  v36[2] = 0;
  v36[3] = 0;
}

uint64_t sub_1A87D65AC()
{
  sub_1A870CCE0(&qword_1EB303E10);
  sub_1A88C6F18();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E4F70;
  sub_1A88C9348();
  sub_1A88C6EE8();

  sub_1A88C6EE8();
  sub_1A88C6EE8();
  return v0;
}

double sub_1A87D673C()
{
  *&result = 450305;
  xmmword_1EB306070 = xmmword_1A88EC3F0;
  qword_1EB306080 = 0xE800000000000000;
  qword_1EB306088 = 7105633;
  qword_1EB306090 = 0xE300000000000000;
  return result;
}

double sub_1A87D676C()
{
  *&result = 137610;
  xmmword_1EB306098 = xmmword_1A88EC400;
  qword_1EB3060A8 = 0xE800000000000000;
  unk_1EB3060B0 = 0x6775422077654E28;
  qword_1EB3060B8 = 0xEA00000000002973;
  return result;
}

uint64_t static TapToRadarDraft.Component.messagesNewBugs.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302230 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EB3060A8;
  v2 = unk_1EB3060B0;
  v3 = qword_1EB3060B8;
  *a1 = xmmword_1EB306098;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_1A87D6834()
{
  *&result = 988691;
  xmmword_1EB3060C0 = xmmword_1A88EC410;
  qword_1EB3060D0 = 0xEA00000000007365;
  unk_1EB3060D8 = 825242446;
  qword_1EB3060E0 = 0xE400000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.mrmessages.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302238 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EB3060D0;
  v2 = unk_1EB3060D8;
  v3 = qword_1EB3060E0;
  *a1 = xmmword_1EB3060C0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_1A87D68F4()
{
  *&result = 230851;
  xmmword_1EB3060E8 = xmmword_1A88EC420;
  qword_1EB3060F8 = 0xE900000000000079;
  unk_1EB306100 = 5459817;
  qword_1EB306108 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.telephony.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB302240 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EB3060F8;
  v2 = unk_1EB306100;
  v3 = qword_1EB306108;
  *a1 = xmmword_1EB3060E8;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1A88C9398() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1A88C9398();
}

uint64_t TapToRadarDraft.Component.hash(into:)()
{
  MEMORY[0x1AC56FE00](*v0);
  sub_1A88C8268();

  return sub_1A88C8268();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  sub_1A88C8268();
  sub_1A88C8268();
  return sub_1A88C9578();
}

uint64_t sub_1A87D6B58()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  sub_1A88C8268();
  sub_1A88C8268();
  return sub_1A88C9578();
}

uint64_t sub_1A87D6BD8()
{
  MEMORY[0x1AC56FE00](*v0);
  sub_1A88C8268();

  return sub_1A88C8268();
}

uint64_t sub_1A87D6C48()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  sub_1A88C8268();
  sub_1A88C8268();
  return sub_1A88C9578();
}

uint64_t sub_1A87D6CC4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1A88C9398() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1A88C9398();
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

IMSharedUtilities::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A88C9028();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A87D6F44()
{
  sub_1A88C9528();
  sub_1A87D21DC();
  return sub_1A88C9578();
}

uint64_t sub_1A87D6F94()
{
  sub_1A88C9528();
  sub_1A87D21DC();
  return sub_1A88C9578();
}

unint64_t sub_1A87D6FE4@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
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

IMSharedUtilities::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A88C9028();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A87D7144()
{
  sub_1A88C8268();
}

void sub_1A87D7254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
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

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x5654656C707041;
  v4 = 0x646F50656D6F48;
  if (v1 != 4)
  {
    v4 = 6512973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
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

IMSharedUtilities::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A88C9028();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A87D7434()
{
  sub_1A88C8268();
}

void sub_1A87D7520(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
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

uint64_t sub_1A87D7600()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1A85F1B30(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1A85F1B30((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x79616C50726941;
      *(v6 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1A85F1B30(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1A85F1B30((v10 > 1), v11 + 1, 1, v2);
          }

          *(v2 + 2) = v11 + 1;
          v12 = &v2[16 * v11];
          strcpy(v12 + 32, "MediaSystems");
          v12[45] = 0;
          *(v12 + 23) = -5120;
          if ((v1 & 8) == 0)
          {
LABEL_16:
            if ((v1 & 0x10) == 0)
            {
LABEL_33:
              sub_1A870CCE0(&qword_1EB303100);
              sub_1A871CE90();
              v3 = sub_1A88C8278();

              return v3;
            }

LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1A85F1B30(0, *(v2 + 2) + 1, 1, v2);
            }

            v17 = *(v2 + 2);
            v16 = *(v2 + 3);
            if (v17 >= v16 >> 1)
            {
              v2 = sub_1A85F1B30((v16 > 1), v17 + 1, 1, v2);
            }

            *(v2 + 2) = v17 + 1;
            v18 = &v2[16 * v17];
            *(v18 + 4) = 0x79627261654ELL;
            *(v18 + 5) = 0xE600000000000000;
            goto LABEL_33;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1A85F1B30(0, *(v2 + 2) + 1, 1, v2);
        }

        v14 = *(v2 + 2);
        v13 = *(v2 + 3);
        if (v14 >= v13 >> 1)
        {
          v2 = sub_1A85F1B30((v13 > 1), v14 + 1, 1, v2);
        }

        *(v2 + 2) = v14 + 1;
        v15 = &v2[16 * v14];
        *(v15 + 4) = 0x616C506572616853;
        *(v15 + 5) = 0xE900000000000079;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A85F1B30(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1A85F1B30((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x4874694B656D6F48;
    *(v9 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1A87D792C()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_1A88C9398();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

IMSharedUtilities::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A88C9028();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A87D7C18()
{
  sub_1A88C8268();
}

void sub_1A87D7D28(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001A8916DF0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001A8916E10;
    }

    v5 = 0x80000001A8916DB0;
    if (v2 != 3)
    {
      v5 = 0x80000001A8916DD0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

unint64_t sub_1A87D7ED8()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1A87D7F78@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_1A88C6EE8();

    v3 = 0;
  }

  v4 = sub_1A88C6F18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1A87D816C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_1A88C6EE8();

    v3 = 0;
  }

  v4 = sub_1A88C6F18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1A87D82C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(sub_1A870CCE0(&qword_1EB306120) + 36);
  v5 = sub_1A88C7478();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1A8721348(v2 + v4, &v19 - v10);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1A85EF638(v11, &unk_1EB3052E0);
    v12 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = sub_1A88C82A8();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_1A88C73D8();
    v16 = [v13 stringFromDate_];

    sub_1A88C82E8();
    (*(v6 + 8))(v8, v5);
    sub_1A88C6EE8();

    v12 = 0;
  }

  v17 = sub_1A88C6F18();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_1A87D8580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A85F1B30(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1A85F1B30((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A871CE90();
  v16 = sub_1A88C8278();

  return v16;
}

uint64_t sub_1A87D8740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A85F1B30(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1A85F1B30((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A871CE90();
  v9 = sub_1A88C8278();

  return v9;
}

uint64_t sub_1A87D8870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = sub_1A88C72E8();
  v19[1] = v19;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v6 += 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v20 = *(v6 + 56);
  v21 = v7;
  v22 = v6;
  v9 = (v6 - 8);
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v21(v5, v8, v3);
    v11 = sub_1A88C7298();
    v13 = v12;
    (*v9)(v5, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A85F1B30(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1A85F1B30((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    v16 = &v10[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
    v8 += v20;
    --v1;
  }

  while (v1);
  v23 = v10;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A871CE90();
  v17 = sub_1A88C8278();

  return v17;
}

uint64_t sub_1A87D8A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 += 8;
    v4 = sub_1A88C9348();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A85F1B30(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1A85F1B30((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A871CE90();
  v10 = sub_1A88C8278();

  return v10;
}

uint64_t sub_1A87D8BE8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB338E20);
  sub_1A85EF0E4(v0, qword_1EB338E20);
  return sub_1A88C7E48();
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_1EB306178;
  if (!qword_1EB306178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A87D8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A87D8CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3052E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A87D8D70()
{
  result = qword_1EB306128;
  if (!qword_1EB306128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306128);
  }

  return result;
}

unint64_t sub_1A87D8DC8()
{
  result = qword_1EB306130;
  if (!qword_1EB306130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306130);
  }

  return result;
}

unint64_t sub_1A87D8E20()
{
  result = qword_1EB306138;
  if (!qword_1EB306138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306138);
  }

  return result;
}

unint64_t sub_1A87D8E78()
{
  result = qword_1EB306140;
  if (!qword_1EB306140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306140);
  }

  return result;
}

unint64_t sub_1A87D8ED0()
{
  result = qword_1EB306148;
  if (!qword_1EB306148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306148);
  }

  return result;
}

unint64_t sub_1A87D8F28()
{
  result = qword_1EB306150;
  if (!qword_1EB306150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306150);
  }

  return result;
}

unint64_t sub_1A87D8F7C()
{
  result = qword_1EB306158;
  if (!qword_1EB306158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306158);
  }

  return result;
}

unint64_t sub_1A87D8FD4()
{
  result = qword_1EB306160;
  if (!qword_1EB306160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306160);
  }

  return result;
}

unint64_t sub_1A87D902C()
{
  result = qword_1EB306168;
  if (!qword_1EB306168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306168);
  }

  return result;
}

unint64_t sub_1A87D9084()
{
  result = qword_1EB306170;
  if (!qword_1EB306170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306170);
  }

  return result;
}

void sub_1A87D9104()
{
  sub_1A87D9544(319, &qword_1EB306188, &qword_1EB304068, &unk_1A88E59F0, sub_1A87D9460);
  if (v0 <= 0x3F)
  {
    sub_1A87D94F4();
    if (v1 <= 0x3F)
    {
      sub_1A87D9544(319, &qword_1EB3061A0, &qword_1EB3061A8, &unk_1A88ECB40, sub_1A87D95B4);
      if (v2 <= 0x3F)
      {
        sub_1A87D9544(319, &qword_1EB3061B8, &qword_1EB3061C0, &unk_1A88ECB48, sub_1A87D9630);
        if (v3 <= 0x3F)
        {
          sub_1A87D9544(319, &qword_1EB3061D0, &qword_1EB3061D8, &unk_1A88ECB50, sub_1A87D96AC);
          if (v4 <= 0x3F)
          {
            sub_1A87D9544(319, &qword_1EB3061E8, &unk_1EB3052E0, &unk_1A88EDCD0, sub_1A87D9728);
            if (v5 <= 0x3F)
            {
              sub_1A87D9544(319, &qword_1EB3061F8, &qword_1EB306200, &unk_1A88ECB58, sub_1A87D97A4);
              if (v6 <= 0x3F)
              {
                sub_1A87D9544(319, &qword_1EB306210, &qword_1EB303100, &unk_1A88E2A90, sub_1A87D9820);
                if (v7 <= 0x3F)
                {
                  sub_1A87D9918(319, &qword_1EB306220);
                  if (v8 <= 0x3F)
                  {
                    sub_1A87D9544(319, &qword_1EB306228, &qword_1EB306230, &unk_1A88ECB68, sub_1A87D989C);
                    if (v9 <= 0x3F)
                    {
                      sub_1A87D9918(319, &qword_1EB306240);
                      if (v10 <= 0x3F)
                      {
                        sub_1A87D9918(319, qword_1EB306248);
                        if (v11 <= 0x3F)
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

unint64_t sub_1A87D9460()
{
  result = qword_1EB306190;
  if (!qword_1EB306190)
  {
    sub_1A870CD28(&qword_1EB304068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306190);
  }

  return result;
}

void sub_1A87D94F4()
{
  if (!qword_1EB306198)
  {
    v0 = sub_1A88C8BE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB306198);
    }
  }
}

void sub_1A87D9544(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A870CD28(a3);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A87D95B4()
{
  result = qword_1EB3061B0;
  if (!qword_1EB3061B0)
  {
    sub_1A870CD28(&qword_1EB3061A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3061B0);
  }

  return result;
}

unint64_t sub_1A87D9630()
{
  result = qword_1EB3061C8;
  if (!qword_1EB3061C8)
  {
    sub_1A870CD28(&qword_1EB3061C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3061C8);
  }

  return result;
}

unint64_t sub_1A87D96AC()
{
  result = qword_1EB3061E0;
  if (!qword_1EB3061E0)
  {
    sub_1A870CD28(&qword_1EB3061D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3061E0);
  }

  return result;
}

unint64_t sub_1A87D9728()
{
  result = qword_1EB3061F0;
  if (!qword_1EB3061F0)
  {
    sub_1A870CD28(&unk_1EB3052E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3061F0);
  }

  return result;
}

unint64_t sub_1A87D97A4()
{
  result = qword_1EB306208;
  if (!qword_1EB306208)
  {
    sub_1A870CD28(&qword_1EB306200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306208);
  }

  return result;
}

unint64_t sub_1A87D9820()
{
  result = qword_1EB306218;
  if (!qword_1EB306218)
  {
    sub_1A870CD28(&qword_1EB303100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306218);
  }

  return result;
}

unint64_t sub_1A87D989C()
{
  result = qword_1EB306238;
  if (!qword_1EB306238)
  {
    sub_1A870CD28(&qword_1EB306230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306238);
  }

  return result;
}

void sub_1A87D9918(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A87D9B20()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A87D9BA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A87D9D24(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1A87D9F88()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3003A8);
  sub_1A85EF0E4(v0, qword_1EB3003A8);
  return sub_1A88C7E48();
}

id sub_1A87DA008()
{
  v0 = sub_1A88C82A8();
  v1 = sub_1A88C8358();
  v2 = MEMORY[0x1AC570AB0](v1 + 32, v0);

  if (v2)
  {
    v3 = *v2;
    sub_1A88C82E8();
  }

  v4 = sub_1A88C82A8();

  return v4;
}

uint64_t sub_1A87DA0F0(void *a1)
{
  v1 = a1;
  v2 = sub_1A87DA124();

  return v2 & 1;
}

uint64_t sub_1A87DA124()
{
  sub_1A870CCE0(&unk_1EB306530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  v2 = objc_opt_self();
  v3 = [v2 __im_livePhotoExtension];
  v4 = sub_1A88C82E8();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = [v2 __im_livePhotoExtension];
  sub_1A88C82E8();

  v8 = sub_1A88C8348();
  v10 = v9;

  *(inited + 48) = v8;
  *(inited + 56) = v10;
  v11 = [v0 pathExtension];
  v12 = sub_1A88C82E8();
  v14 = v13;

  v17[0] = v12;
  v17[1] = v14;
  v16[2] = v17;
  LOBYTE(v11) = sub_1A85EF698(sub_1A87C49BC, v16, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  return v11 & 1;
}

id sub_1A87DA2A0(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByDeletingLastPathComponent];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 __im_isLivePhotoBundlePath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1A87DA30C(void *a1)
{
  v2 = v1;
  result = [v2 stringByDeletingLastPathComponent];
  if (result)
  {
    v5 = result;
    v6 = [result im_lastPathComponent];
    if (v6)
    {
      v7 = v6;
      v8 = a1;
      if (!a1)
      {
        v8 = v6;
      }

      v9 = a1;
      v10 = [v5 __im_stringBySafelyAppendingPathComponent_];

      if (v10)
      {
        v11 = objc_opt_self();
        v12 = [v11 __im_livePhotoExtension];
        if (!v12)
        {
          sub_1A88C82E8();
          v12 = sub_1A88C82A8();
        }

        v13 = [v10 stringByAppendingPathExtension_];

        if (v13)
        {
          v14 = sub_1A88C82E8();
          v34 = objc_opt_self();
          v15 = [v34 defaultManager];
          v16 = [v15 fileExistsAtPath_];

          if (v16)
          {

            return v14;
          }

          v17 = [v11 __im_livePhotoExtension];
          sub_1A88C82E8();

          sub_1A88C8348();

          v18 = sub_1A88C82A8();

          v19 = [v10 stringByAppendingPathComponent_];

          v20 = v19;
          if (!v19)
          {
            sub_1A88C82E8();
            v20 = sub_1A88C82A8();
          }

          v33 = sub_1A88C82E8();
          if (qword_1EB3003A0 != -1)
          {
            swift_once();
          }

          v21 = sub_1A88C7E58();
          sub_1A85EF0E4(v21, qword_1EB3003A8);
          v22 = v2;
          v23 = sub_1A88C7E38();
          v24 = sub_1A88C89D8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            *(v25 + 4) = v22;
            *v26 = v22;
            v27 = v22;
            _os_log_impl(&dword_1A85E5000, v23, v24, "Second try: Trying to check existence of live photo bundle at path %@", v25, 0xCu);
            sub_1A8755CB4(v26);
            MEMORY[0x1AC571F20](v26, -1, -1);
            MEMORY[0x1AC571F20](v25, -1, -1);
          }

          v28 = [v34 defaultManager];
          v29 = [v28 fileExistsAtPath_];

          if (v29)
          {

            return v33;
          }

          v30 = sub_1A88C7E38();
          v31 = sub_1A88C89D8();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_1A85E5000, v30, v31, "Failed to find live photo bundle for transfer", v32, 2u);
            MEMORY[0x1AC571F20](v32, -1, -1);
          }

          goto LABEL_24;
        }
      }

      else
      {
      }

      return 0;
    }

LABEL_24:

    return 0;
  }

  return result;
}

uint64_t sub_1A87DA758(uint64_t a1, uint64_t a2)
{
  v4 = [v2 im_livePhotoBundlePath];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A88C82E8();
LABEL_9:
    v11 = v6;

    return v11;
  }

  if (qword_1EB3003A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1EB3003A8);
  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A85E5000, v8, v9, "Could not find live photo bundle from path alone, checking with the guid instead.", v10, 2u);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  if (a2)
  {
    v5 = sub_1A88C82A8();
    v6 = sub_1A87DA30C(v5);
    goto LABEL_9;
  }

  v13 = sub_1A88C7E38();
  v14 = sub_1A88C89A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A85E5000, v13, v14, "Cannot find live photo bundle because guid is nil.", v15, 2u);
    MEMORY[0x1AC571F20](v15, -1, -1);
  }

  return 0;
}

id sub_1A87DA91C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1A88C82E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_1A87DA758(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1A88C82A8();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1A87DA9C8()
{
  result = [objc_allocWithZone(type metadata accessor for TipsNextEventReporter()) init];
  qword_1ED8C8830 = result;
  return result;
}

id TipsNextEventReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TipsNextEventReporter.shared.getter()
{
  if (qword_1ED8C8828 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8C8830;

  return v1;
}

uint64_t sub_1A87DAB08()
{
  v1 = *(v0 + 16);
  sub_1A88C77B8();
  v2 = v1 + OBJC_IVAR___TipsNextEventReporter_appBundleId;
  v3 = *(v1 + OBJC_IVAR___TipsNextEventReporter_appBundleId);
  v4 = *(v2 + 8);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1A87DABE4;

  return MEMORY[0x1EEE49A88](0xD000000000000027, 0x80000001A891BC60, v3, v4, 0);
}

uint64_t sub_1A87DABE4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A87DAD18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A87DAD18()
{
  v10 = v0;
  v1 = sub_1A88C7E38();
  v2 = sub_1A88C89C8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000027, 0x80000001A891BC60, &v9);
    _os_log_impl(&dword_1A85E5000, v1, v2, "Failed to donate event with identifier: %s", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A87DAE68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 73) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A87DAE8C, 0, 0);
}

uint64_t sub_1A87DAE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 73);
  sub_1A88C77F8();
  *(v0 + 72) = v2;
  v3 = MessagesTip.identifier.getter();
  v5 = v4;
  *(v0 + 24) = v4;
  v6 = v1 + OBJC_IVAR___TipsNextEventReporter_appBundleId;
  v7 = *(v1 + OBJC_IVAR___TipsNextEventReporter_appBundleId);
  v8 = *(v6 + 8);
  v9 = sub_1A88C77E8();
  *(v0 + 32) = v9;
  *(v0 + 40) = *(v9 - 8);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  sub_1A88C77D8();
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_1A87DAFE8;

  return MEMORY[0x1EEE49A98](v3, v5, v7, v8, v10);
}

uint64_t sub_1A87DAFE8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A87DB1C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A87DB1C0()
{
  v15 = v0;

  v1 = sub_1A88C7E38();
  v2 = sub_1A88C89C8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 64);
  if (v3)
  {
    v5 = *(v0 + 73);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v14 = v5;
    v8 = MessagesTip.identifier.getter();
    v10 = sub_1A85F0394(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1A85E5000, v1, v2, "Failed to invalidate tip with identifier: %s", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t MessagesTip.identifier.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  if (v2 > 5)
  {
    v5 = 0xD00000000000002ALL;
    v6 = 0xD00000000000001CLL;
    if (v2 != 10)
    {
      v6 = 0xD000000000000021;
    }

    if (v2 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000027;
    if (v2 != 7)
    {
      v7 = 0xD000000000000029;
    }

    if (v2 != 6)
    {
      v1 = v7;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0xD00000000000001BLL;
    if (v2 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (v2 == 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2 != 1)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000025;
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
}

uint64_t sub_1A87DB470()
{
  v1 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A88C87A8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1A885A178(0, 0, v3, &unk_1A88ECCE0, v5);
}

uint64_t sub_1A87DB574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A87DAAE8(a1, v4, v5, v6);
}

uint64_t sub_1A87DB730()
{
  v1 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A88C87A8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = v0;
  v6 = v0;
  sub_1A885A178(0, 0, v3, &unk_1A88ECCF0, v5);
}

uint64_t sub_1A87DB838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A87DAE68(a1, v4, v5, v7, v6);
}

uint64_t sub_1A87DBA74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8714B6C;

  return sub_1A87DAE68(a1, v4, v5, v7, v6);
}

uint64_t sub_1A87DBB80(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1A88C87A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a2;
  *(v10 + 40) = v3;
  v11 = v3;
  sub_1A885A178(0, 0, v8, a3, v10);
}

uint64_t sub_1A87DBCAC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1A88C87A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  v13 = a1;
  sub_1A885A178(0, 0, v10, a5, v12);
}

id TipsNextEventReporter.init()()
{
  v1 = &v0[OBJC_IVAR___TipsNextEventReporter_appBundleId];
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x80000001A8916B50;
  sub_1A88C7E48();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TipsNextEventReporter();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t type metadata accessor for TipsNextEventReporter()
{
  result = qword_1ED8C8818;
  if (!qword_1ED8C8818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id TipsNextEventReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsNextEventReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MessagesTip.hashValue.getter()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t MessagesTipEvents.hashValue.getter()
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](0);
  return sub_1A88C9578();
}

unint64_t sub_1A87DC100()
{
  result = qword_1EB3062E0;
  if (!qword_1EB3062E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3062E0);
  }

  return result;
}

unint64_t sub_1A87DC158()
{
  result = qword_1EB3062E8;
  if (!qword_1EB3062E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3062E8);
  }

  return result;
}

uint64_t sub_1A87DC1B4()
{
  result = sub_1A88C7E58();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesTip(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagesTip(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A87DC4CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A87DC50C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v42 = v1;

  v8 = 0;
  v39 = MEMORY[0x1E69E7CC8];
  while (v6)
  {
    v9 = v6;
LABEL_10:
    v6 = (v9 - 1) & v9;
    if (*(v2 + 16))
    {
      v11 = (v8 << 10) | (16 * __clz(__rbit64(v9)));
      v12 = (*(v42 + 48) + v11);
      v13 = (*(v42 + 56) + v11);
      v15 = *v12;
      v14 = v12[1];
      v17 = *v13;
      v16 = v13[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v18 = v2;
      v19 = sub_1A85F5F40(v17, v16);
      LOBYTE(v17) = v20;

      if (v17)
      {
        v38 = *(*(v18 + 56) + 8 * v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v39;
        v22 = sub_1A85F5F40(v15, v14);
        v24 = v39[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_25;
        }

        if (v39[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }

          v41 = v22;
          v33 = v23;
          sub_1A87B0D74();
          v22 = v41;
          v2 = v18;
          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v30 = v22;

          v39 = v43;
          v31 = v43[7];
          v32 = *(v31 + 8 * v30);
          *(v31 + 8 * v30) = v38;
        }

        else
        {
          v40 = v23;
          sub_1A88786C0(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_1A85F5F40(v15, v14);
          v29 = v28 & 1;
          v23 = v40;
          if ((v40 & 1) != v29)
          {
            goto LABEL_27;
          }

LABEL_18:
          v2 = v18;
          if (v23)
          {
            goto LABEL_19;
          }

LABEL_21:
          v43[(v22 >> 6) + 8] |= 1 << v22;
          v34 = (v43[6] + 16 * v22);
          *v34 = v15;
          v34[1] = v14;
          *(v43[7] + 8 * v22) = v38;

          v35 = v43[2];
          v26 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v26)
          {
            goto LABEL_26;
          }

          v39 = v43;
          v43[2] = v36;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v2 = v18;
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

    if (v10 >= v7)
    {

      return v39;
    }

    v9 = *(v3 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

IMSharedUtilities::RemoteIntentContactSetupInfo __swiftcall RemoteIntentContactSetupInfo.init(handlesToContactIDs:contactIDsToContacts:)(Swift::OpaquePointer handlesToContactIDs, Swift::OpaquePointer contactIDsToContacts)
{
  v2->_rawValue = handlesToContactIDs._rawValue;
  v2[1]._rawValue = contactIDsToContacts._rawValue;
  result.contactIDsToContacts = contactIDsToContacts;
  result.handlesToContactIDs = handlesToContactIDs;
  return result;
}

uint64_t sub_1A87DC7E8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3062F0);
  sub_1A85EF0E4(v0, qword_1EB3062F0);
  return sub_1A88C7E48();
}

unint64_t sub_1A87DC868()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A87DC8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A891BC90 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891BCB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A88C9398();

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

uint64_t sub_1A87DC984(uint64_t a1)
{
  v2 = sub_1A87DCF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87DC9C0(uint64_t a1)
{
  v2 = sub_1A87DCF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87DC9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_1A870CCE0(&qword_1EB303CB8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A88EA810;
  *(v8 + 32) = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(v8 + 40) = sub_1A85E9718(0, &qword_1ED8C94D8);
  *(v8 + 48) = sub_1A85E9718(0, &unk_1ED8C9440);
  *(v8 + 56) = sub_1A85E9718(0, &qword_1ED8C9450);
  *(v8 + 64) = sub_1A85E9718(0, &unk_1ED8C9388);
  *(v8 + 72) = sub_1A85E9718(0, &qword_1EB305AD8);
  sub_1A85E9718(0, &qword_1EB305AB8);
  sub_1A88C89F8();

  if (!v5)
  {
    sub_1A87303E8(v17, &v15);
    sub_1A870CCE0(&qword_1EB3057B0);
    sub_1A870CCE0(a3);
    if (swift_dynamicCast())
    {
      sub_1A85EF638(v17, &qword_1EB3057B0);
      return v14;
    }

    else
    {
      v10 = sub_1A88C8E88();
      swift_allocError();
      v12 = v11;
      sub_1A870CCE0(&qword_1EB306340);
      *v12 = MEMORY[0x1E69E6158];
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1A88C8E08();

      v15 = 0x6465746365707845;
      v16 = 0xE900000000000020;
      sub_1A870CCE0(a5);
      v13 = sub_1A88C8338();
      MEMORY[0x1AC56ECB0](v13);

      MEMORY[0x1AC56ECB0](0x6F6720747562202CLL, 0xEA00000000002074);
      MEMORY[0x1AC56ECB0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
      sub_1A88C8E78();
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
      swift_willThrow();
      return sub_1A85EF638(v17, &qword_1EB3057B0);
    }
  }

  return result;
}

uint64_t RemoteIntentContactSetupInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306308);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87DCF98();
  sub_1A88C95A8();
  if (!v2)
  {
    v19 = a2;
    v22 = 0;
    sub_1A871C858();
    sub_1A88C9158();
    v9 = v20;
    v10 = v21;
    v22 = 1;
    sub_1A88C9158();
    v11 = v20;
    v12 = v21;
    v18 = sub_1A87DD3A4(v9, v10);
    v17 = sub_1A87DD53C(v11, v12);
    sub_1A871CD60(v11, v12);
    sub_1A871CD60(v9, v10);
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = v17;
    *v19 = v18;
    v13[1] = v14;
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A87DCF98()
{
  result = qword_1EB306310;
  if (!qword_1EB306310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306310);
  }

  return result;
}

uint64_t RemoteIntentContactSetupInfo.encode(to:)(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = sub_1A870CCE0(&qword_1EB306318);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87DCF98();
  sub_1A88C95C8();
  v6 = objc_opt_self();
  v7 = sub_1A88C8188();
  v31 = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v31];

  v9 = v31;
  if (v8)
  {
    v28 = v2;
    v10 = sub_1A88C7358();
    v12 = v11;

    sub_1A85E9718(0, &qword_1EB305AD8);
    v13 = sub_1A88C8188();
    v31 = 0;
    v14 = [v6 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v31];

    v15 = v31;
    if (v14)
    {
      v16 = sub_1A88C7358();
      v18 = v17;

      v31 = v10;
      v32 = v12;
      v27 = v12;
      v30 = 0;
      sub_1A871CE08();
      v20 = v28;
      v19 = v29;
      sub_1A88C92C8();
      if (v19)
      {
        (*(v3 + 8))(v5, v20);
        sub_1A871CD60(v16, v18);
        v21 = v10;
        v22 = v27;
      }

      else
      {
        v31 = v16;
        v32 = v18;
        v30 = 1;
        sub_1A88C92C8();
        (*(v3 + 8))(v5, v20);
        sub_1A871CD60(v10, v27);
        v21 = v16;
        v22 = v18;
      }

      return sub_1A871CD60(v21, v22);
    }

    else
    {
      v25 = v15;
      sub_1A88C7168();

      swift_willThrow();
      sub_1A871CD60(v10, v12);
      return (*(v3 + 8))(v5, v28);
    }
  }

  else
  {
    v23 = v9;
    sub_1A88C7168();

    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1A87DD6D4(uint64_t a1)
{
  *(a1 + 8) = sub_1A874BB6C();
  result = sub_1A874BC68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A87DD728()
{
  result = qword_1EB306320;
  if (!qword_1EB306320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306320);
  }

  return result;
}

unint64_t sub_1A87DD780()
{
  result = qword_1EB306328;
  if (!qword_1EB306328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306328);
  }

  return result;
}

unint64_t sub_1A87DD7D8()
{
  result = qword_1EB306330;
  if (!qword_1EB306330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentKeyTransparencySetupInfo(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1A87DD908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574704F666C6573 && a2 == 0xEB000000006E4964)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87DD994(uint64_t a1)
{
  v2 = sub_1A87DDDB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87DD9D0(uint64_t a1)
{
  v2 = sub_1A87DDDB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87DDA0C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB306368);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87DDDB8();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9068();
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1A87DDB6C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB306358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87DDDB8();
  sub_1A88C95C8();
  sub_1A88C91D8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A87DDCA4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
  *&v8 = sub_1A88C82E8();
  *(&v8 + 1) = v4;
  sub_1A88C8D88();
  if (v2 == 2)
  {
    sub_1A88BEFF8(v10, &v8);
    sub_1A860169C(&v8);
    sub_1A8717360(v10);
    return v11;
  }

  else
  {
    v9 = MEMORY[0x1E69E6370];
    LOBYTE(v8) = a1 & 1;
    sub_1A85E99B0(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v7, v10, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v10);
    return v3;
  }
}

uint64_t sub_1A87DDD90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A87DDE0C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A87DDDB8()
{
  result = qword_1EB306360;
  if (!qword_1EB306360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306360);
  }

  return result;
}

uint64_t sub_1A87DDE0C(uint64_t a1)
{
  v8[0] = sub_1A88C82E8();
  v8[1] = v2;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v3 = sub_1A8602F10(v7), (v4 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v3, v8);
    sub_1A8717360(v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {

    sub_1A8717360(v7);
  }

  return 0;
}

unint64_t sub_1A87DDEF0()
{
  result = qword_1EB306370;
  if (!qword_1EB306370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306370);
  }

  return result;
}

unint64_t sub_1A87DDF48()
{
  result = qword_1EB306378;
  if (!qword_1EB306378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306378);
  }

  return result;
}

unint64_t sub_1A87DDFA0()
{
  result = qword_1EB306380;
  if (!qword_1EB306380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306380);
  }

  return result;
}

uint64_t sub_1A87DDFF4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB306388);
  sub_1A85EF0E4(v0, qword_1EB306388);
  return sub_1A88C7E48();
}

uint64_t sub_1A87DE074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v10;
  v8[25] = v11;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A87DE0A8, 0, 0);
}

uint64_t sub_1A87DE0A8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  v0[26] = v1;
  v2 = sub_1A88C82A8();
  [v1 setTitle_];

  v3 = sub_1A88C82A8();
  [v1 setBody_];

  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  TapToRadarDraft.url.getter(v6);
  v7 = sub_1A88C7238();
  (*(v5 + 8))(v6, v4);

  [v1 setDefaultActionURL_];

  [v1 setShouldSuppressScreenLightUp_];
  v8 = sub_1A88C7478();
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = swift_task_alloc();
  sub_1A88C7458();
  sub_1A88C73F8();
  v12 = *(v9 + 8);
  v12(v11, v8);

  v13 = sub_1A88C73D8();
  v12(v10, v8);

  [v1 setExpirationDate_];

  v14 = v1;
  v15 = sub_1A88C82A8();
  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v14 trigger:0];
  v0[27] = v16;

  v17 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v18 = sub_1A88C82A8();
  v19 = [v17 initWithBundleIdentifier_];
  v0[28] = v19;

  v0[2] = v0;
  v0[3] = sub_1A87DE50C;
  v20 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB304C48);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A876D87C;
  v0[13] = &unk_1F1BB1008;
  v0[14] = v20;
  [v19 addNotificationRequest:v16 withCompletionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A87DE50C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1A87DE690;
  }

  else
  {
    v2 = sub_1A87DE61C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A87DE61C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  **(v0 + 144) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A87DE690()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  swift_willThrow();

  **(v0 + 144) = 1;
  v5 = *(v0 + 8);

  return v5();
}

IMTapToRadarDraft __swiftcall IMTapToRadarDraft.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMTapToRadarDraft()
{
  result = qword_1EB3063A0;
  if (!qword_1EB3063A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3063A0);
  }

  return result;
}

void sub_1A87DE998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12, uint64_t a13, NSObject *a14, uint64_t a15, char **a16)
{
  v109 = a7;
  v110 = a8;
  v117 = a4;
  v118 = a6;
  v114 = a3;
  v115 = a5;
  v116 = a2;
  v113 = a1;
  v119 = a15;
  v120 = a16;
  v122 = a13;
  v123 = a14;
  v105 = a9;
  v106 = a10;
  v121 = a11;
  v16 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = &v92 - v17;
  v104 = type metadata accessor for TapToRadarDraft();
  v108 = *(v104 - 8);
  v18 = MEMORY[0x1EEE9AC00](v104);
  v111 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v92 - v20;
  v22 = 0;
  v23 = *(a12 + 16);
  v24 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v25 = a12 + 40 + 16 * v22;
  while (v23 != v22)
  {
    if (v22 >= v23)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      swift_once();
LABEL_19:
      v38 = sub_1A88C7E58();
      sub_1A85EF0E4(v38, qword_1EB306388);

      v123 = sub_1A88C7E38();
      v39 = sub_1A88C89C8();

      if (os_log_type_enabled(v123, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v124 = v41;
        *v40 = 136315138;
        v42 = MEMORY[0x1AC56EED0](v24, &type metadata for TapToRadarDraft.DeviceClass);
        v44 = v43;

        v45 = sub_1A85F0394(v42, v44, &v124);

        *(v40 + 4) = v45;
        v46 = "Could not map any device class strings %s to their enum values";
LABEL_26:
        _os_log_impl(&dword_1A85E5000, v123, v39, v46, v40, 0xCu);
        sub_1A85F1084(v41);
        MEMORY[0x1AC571F20](v41, -1, -1);
        MEMORY[0x1AC571F20](v40, -1, -1);

        return;
      }

      goto LABEL_28;
    }

    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_37;
    }

    v27 = sub_1A88C9028();

    ++v22;
    v25 += 16;
    if (v27 < 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1A8735ACC(0, *(v24 + 2) + 1, 1, v24);
      }

      v29 = *(v24 + 2);
      v28 = *(v24 + 3);
      if (v29 >= v28 >> 1)
      {
        v24 = sub_1A8735ACC((v28 > 1), v29 + 1, 1, v24);
      }

      *(v24 + 2) = v29 + 1;
      v24[v29 + 32] = v27;
      v22 = v26;
      goto LABEL_2;
    }
  }

  if (!*(v24 + 2))
  {
    if (qword_1EB302258 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v30 = v123;

  v31 = v122;
  v32._countAndFlagsBits = v122;
  v32._object = v30;
  TapToRadarDraft.Classification.init(rawValue:)(v32);
  v33 = v124;
  if (v124 == 10)
  {

    if (qword_1EB302258 != -1)
    {
      swift_once();
    }

    v34 = sub_1A88C7E58();
    sub_1A85EF0E4(v34, qword_1EB306388);

    v121 = sub_1A88C7E38();
    v35 = sub_1A88C89C8();

    if (os_log_type_enabled(v121, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v124 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1A85F0394(v31, v30, &v124);
      _os_log_impl(&dword_1A85E5000, v121, v35, "Could not map classification string %s to an enum value", v36, 0xCu);
      sub_1A85F1084(v37);
      MEMORY[0x1AC571F20](v37, -1, -1);
      MEMORY[0x1AC571F20](v36, -1, -1);

      return;
    }

    v51 = v121;
    goto LABEL_30;
  }

  v47 = v120;

  v48 = v119;
  v49._countAndFlagsBits = v119;
  v49._object = v47;
  TapToRadarDraft.Reproducibility.init(rawValue:)(v49);
  if (v124 == 6)
  {

    if (qword_1EB302258 != -1)
    {
      swift_once();
    }

    v50 = sub_1A88C7E58();
    sub_1A85EF0E4(v50, qword_1EB306388);

    v123 = sub_1A88C7E38();
    v39 = sub_1A88C89C8();

    if (os_log_type_enabled(v123, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v124 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1A85F0394(v48, v47, &v124);
      v46 = "Could not map reproducibility string %s to an enum value";
      goto LABEL_26;
    }

LABEL_28:
    v51 = v123;
LABEL_30:

    return;
  }

  LODWORD(v122) = v124;
  LODWORD(v123) = v33;
  if (qword_1EB302228 != -1)
  {
    swift_once();
  }

  v103 = *(&xmmword_1EB306070 + 1);
  v119 = xmmword_1EB306070;
  v101 = qword_1EB306080;
  v102 = qword_1EB306088;
  v100 = qword_1EB306090;
  v52 = sub_1A870CCE0(&unk_1EB3052E0);
  v120 = &v92;
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v92 - v53;

  v99 = v54;
  sub_1A88C7468();
  v55 = sub_1A88C7478();
  v56 = *(*(v55 - 8) + 56);
  v56(v54, 0, 1, v55);
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  v21[88] = 10;
  *(v21 + 8) = 0;
  strcpy(v21 + 72, "Classification");
  v21[87] = -18;
  v21[112] = 6;
  *(v21 + 12) = 0x6375646F72706552;
  *(v21 + 13) = 0xEF7974696C696269;
  *(v21 + 15) = 0x656C746954;
  *(v21 + 16) = 0xE500000000000000;
  *(v21 + 17) = 0;
  *(v21 + 18) = 0;
  *(v21 + 19) = 0x7470697263736544;
  *(v21 + 20) = 0xEB000000006E6F69;
  *(v21 + 21) = 0;
  *(v21 + 22) = 0;
  *(v21 + 23) = 0x7364726F7779654BLL;
  *(v21 + 24) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E7CC0];
  *(v21 + 25) = MEMORY[0x1E69E7CC0];
  v58 = v104;
  v59 = &v21[*(v104 + 44)];
  *v21 = 0x4449656C646E7542;
  *(v21 + 1) = 0xE800000000000000;
  v98 = *(sub_1A870CCE0(&qword_1EB306120) + 36);
  v56(&v59[v98], 1, 1, v55);
  v97 = v59;
  *v59 = 0x7349664F656D6954;
  *(v59 + 1) = 0xEB00000000657573;
  v60 = &v21[v58[12]];
  v96 = v60;
  *v60 = 0x656D686361747441;
  *(v60 + 1) = 0xEB0000000073746ELL;
  *(v60 + 2) = v57;
  v61 = &v21[v58[13]];
  v95 = v61;
  *v61 = 0xD000000000000011;
  *(v61 + 1) = 0x80000001A891B830;
  *(v61 + 2) = v57;
  v62 = &v21[v58[14]];
  v94 = v62;
  *v62 = 0xD000000000000014;
  *(v62 + 1) = 0x80000001A891B850;
  *(v62 + 2) = v57;
  v63 = &v21[v58[15]];
  v93 = v63;
  strcpy(v63, "DeleteOnAttach");
  v63[15] = -18;
  v63[16] = 0;
  v64 = &v21[v58[16]];
  v92 = v64;
  *v64 = 0x4449656369766544;
  *(v64 + 1) = 0xE900000000000073;
  *(v64 + 2) = v57;
  v65 = &v21[v58[17]];
  strcpy(v65, "DeviceClasses");
  *(v65 + 7) = -4864;
  *(v65 + 2) = v57;
  v66 = &v21[v58[18]];
  strcpy(v66, "DeviceModels");
  v66[13] = 0;
  *(v66 + 7) = -5120;
  *(v66 + 2) = v57;
  v67 = v57;
  v68 = &v21[v58[19]];
  *(v68 + 1) = 0x80000001A891BD20;
  *(v68 + 2) = 0;
  *v68 = 0xD000000000000016;
  v69 = &v21[v58[20]];
  *v69 = 0xD00000000000001ALL;
  *(v69 + 1) = 0x80000001A891B870;
  v69[16] = 0;
  v70 = &v21[v58[21]];
  v70[16] = 0;
  *v70 = 0x676169446F747541;
  *(v70 + 1) = 0xEF73636974736F6ELL;
  v71 = &v21[v58[22]];
  *v71 = 0xD00000000000001BLL;
  *(v71 + 1) = 0x80000001A891B890;
  *(v71 + 2) = v67;
  v72 = &v21[v58[23]];
  *v72 = 0xD000000000000018;
  *(v72 + 1) = 0x80000001A891B8B0;
  *(v72 + 2) = 0;
  *(v72 + 3) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  sub_1A87D8CB8(*(v21 + 4), *(v21 + 5), *(v21 + 6));
  v73 = v103;
  *(v21 + 4) = v119;
  *(v21 + 5) = v73;
  v74 = v102;
  *(v21 + 6) = v101;
  *(v21 + 7) = v74;
  *(v21 + 8) = v100;
  v21[88] = v123;
  v21[112] = v122;
  v75 = v110;
  *(v21 + 17) = v109;
  *(v21 + 18) = v75;
  v76 = v106;
  *(v21 + 21) = v105;
  *(v21 + 22) = v76;
  *(v21 + 25) = MEMORY[0x1E69E7CC0];

  sub_1A87D8CFC(v99, &v97[v98]);
  *(v96 + 2) = v121;
  v77 = MEMORY[0x1E69E7CC0];
  *(v95 + 2) = MEMORY[0x1E69E7CC0];
  *(v94 + 2) = v77;
  v93[16] = 0;
  *(v92 + 2) = v77;
  *(v65 + 2) = v24;
  *(v66 + 2) = v77;
  *(v68 + 2) = 0;
  v69[16] = 1;
  v70[16] = 0;
  *(v71 + 2) = v77;
  *(v72 + 2) = 0;
  *(v72 + 3) = 0;
  v78 = sub_1A88C87A8();
  v79 = v112;
  (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
  v80 = v111;
  sub_1A87DF688(v21, v111);
  v81 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v82 = (v107 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  sub_1A87DF6EC(v80, v84 + v81);
  v85 = (v84 + v82);
  v86 = v114;
  v88 = v116;
  v87 = v117;
  *v85 = v113;
  v85[1] = v88;
  v89 = (v84 + v83);
  *v89 = v86;
  v89[1] = v87;
  v90 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
  v91 = v118;
  *v90 = v115;
  v90[1] = v91;

  sub_1A885A468(0, 0, v79, &unk_1A88ED2C0, v84);

  sub_1A87DF8BC(v21);
}

uint64_t sub_1A87DF688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87DF6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87DF750(uint64_t a1)
{
  v3 = *(type metadata accessor for TapToRadarDraft() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1A8714B6C;

  return sub_1A87DE074(a1, v15, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1A87DF8BC(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static IMNetworkMonitor.isOnCellular()()
{
  v0 = sub_1A88C7E58();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  v7 = [objc_opt_self() createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:0];
  if (v7)
  {
    v8 = v7;
    if ([v7 isReachableFromPath])
    {
      v9 = [v8 isCellular];

      return v9;
    }

    sub_1A88C7E48();
    v14 = sub_1A88C7E38();
    v15 = sub_1A88C89C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A85E5000, v14, v15, "Download requested but network is not satisfied.", v16, 2u);
      MEMORY[0x1AC571F20](v16, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    sub_1A88C7E48();
    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A85E5000, v11, v12, "NetworkMonitor could not be created. Not expected.", v13, 2u);
      MEMORY[0x1AC571F20](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

uint64_t sub_1A87DFBCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v14 = *v2;
  v15[0] = v5;
  v6 = *(v2 + 25);
  v16 = v14;
  v17 = v5;
  *(v15 + 9) = v6;
  v18 = *(&v15[0] + 1);
  v7 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, a1);
  sub_1A8728D80(&v16, v13, &qword_1EB303100);
  sub_1A8728D80(&v17, v13, &qword_1EB303100);
  sub_1A8728D80(&v18, v13, &qword_1EB303A50);
  return sub_1A87E0EE4(&v14, v9, a2);
}

double RemoteIntentRequest<>.intentRepresentation(contextID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  v12 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  return RemoteIntentRequestFileRepresentation.init(request:contextID:)(v9, v14, a2, a3, a4);
}

uint64_t sub_1A87DFEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v6 + 16) = *v5;
  v9 = *(v5 + 40);
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = *(v5 + 24);
  *(v6 + 56) = v9;
  v12 = (*(a5 + 64) + **(a5 + 64));
  v10 = swift_task_alloc();
  *(v6 + 64) = v10;
  *v10 = v6;
  v10[1] = sub_1A87E0004;

  return v12();
}

uint64_t sub_1A87E0004()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t RemoteIntentRequest.perform(using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 64) + **(a5 + 64));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A8716570;

  return v12(a1, a2, a4, a5);
}

uint64_t sub_1A87E0238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v14 = *(v2 + 32);
  v15 = *&v13[0];
  v17 = *(&v5 + 1);
  v16 = v5;
  v6 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, a1);
  sub_1A8728D80(&v15, v12, &qword_1EB303100);
  sub_1A8728D80(&v16, v12, &qword_1EB303100);
  sub_1A8728D80(&v17, v12, &qword_1EB303A50);
  return sub_1A87E1D60(v13, v8, &type metadata for MarkMessageReadRequest, sub_1A87A85E4, &unk_1F1BB12E0, a2);
}

uint64_t sub_1A87E03B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v6 + 16) = *v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = *(v5 + 24);
  v11 = (*(a5 + 64) + **(a5 + 64));
  v9 = swift_task_alloc();
  *(v6 + 56) = v9;
  *v9 = v6;
  v9[1] = sub_1A87E8760;

  return v11();
}

uint64_t sub_1A87E0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 8);
  *(v6 + 16) = *v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v5 + 16);
  v10 = (*(a5 + 64) + **(a5 + 64));
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_1A87C9598;

  return v10();
}

uint64_t sub_1A87E0704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v21 = a4;
  v20 = a3;
  v9 = *v5;
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = *(v5 + 8);
  v13 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);

  v17 = v10;
  return sub_1A87E13A8(v9, v12, v11, v17, v15, a2, v20, v21, a5);
}

uint64_t sub_1A87E083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 8);
  *(v6 + 16) = *v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v5 + 16);
  v10 = (*(a5 + 64) + **(a5 + 64));
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_1A87C8D04;

  return v10();
}

uint64_t sub_1A87E0984@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);

  return sub_1A87E1888(v5, v6, v8, v7, v11, &type metadata for CancelScheduledMessageRequest, sub_1A87A8A1C, &unk_1F1BB13F8, a2);
}

uint64_t sub_1A87E0AB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A8716570;

  return sub_1A8730570(a2, v5, v6, v8, v7);
}