unint64_t sub_1A7D3B7F4()
{
  result = qword_1EB2B6088;
  if (!qword_1EB2B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6088);
  }

  return result;
}

uint64_t sub_1A7D3B854(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

unint64_t sub_1A7D3B868()
{
  result = qword_1EB2B6090;
  if (!qword_1EB2B6090)
  {
    sub_1A7CC9830(&qword_1EB2B7CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6090);
  }

  return result;
}

uint64_t sub_1A7D3B8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7D3B934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7D3B99C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of LinkEngineScheduler.update()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD22FC;

  return v7(a1, a2);
}

uint64_t IDSRadioAccessTechnology.description.getter(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 4543564;
      }

      if (a1 == 6)
      {
        return 0x73756C5041505348;
      }

      return 0x414D4443534454;
    }

    if (a1 == 8)
    {
      return 21070;
    }

    if (a1 == 9)
    {
      return 0x6465726957;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C6C65436E6F4ELL;
    }

    if (a1 == 1)
    {
      return 1398033749;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 5067591;
  }

  if (a1 == 3)
  {
    return 0x30303032414D4443;
  }

  return 1480937039;
}

uint64_t IDSIPAddressFamily.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 6)
  {
    v1 = 913731689;
  }

  if (a1 == 4)
  {
    return 880177257;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A7D3BDDC()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 6)
  {
    v1 = 913731689;
  }

  if (*v0 == 4)
  {
    return 880177257;
  }

  else
  {
    return v1;
  }
}

uint64_t IDSTestableLinkKind.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x79616C6572;
  }

  if (a1 == 2)
  {
    v1 = 29302;
  }

  if (a1 == 3)
  {
    return 7352944;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A7D3BFA0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v2 = 0x79616C6572;
  }

  if (v1 == 2)
  {
    v2 = 29302;
  }

  if (v1 == 3)
  {
    return 7352944;
  }

  else
  {
    return v2;
  }
}

uint64_t IDSTestableLinkMetadata.description.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 44);
  v26 = *(v0 + 48);
  v27 = *(v0 + 49);
  v28 = *(v0 + 50);
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD00000000000001BLL, 0x80000001A7EAEEF0);
  v7 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v7);

  MEMORY[0x1AC561C90](0x6E696B202020200ALL, 0xEB00000000203A64);
  v8 = 0xE700000000000000;
  v9 = 29302;
  v10 = 0x79616C6572;
  if (v2 == 1)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v2 == 2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v9 = v10;
  }

  if (v2 == 3)
  {
    v11 = 7352944;
  }

  else
  {
    v11 = v9;
  }

  if (v2 == 3)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x1AC561C90](v11, v12);

  MEMORY[0x1AC561C90](0xD000000000000014, 0x80000001A7EAEF10);
  MEMORY[0x1AC561C90](v1, v3);
  MEMORY[0x1AC561C90](0x467069202020200ALL, 0xEF203A796C696D61);
  v13 = 0xE700000000000000;
  v14 = 913731689;
  if (v4 == 6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (v4 == 4)
  {
    v15 = 880177257;
  }

  else
  {
    v15 = v14;
  }

  if (v4 == 4)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = v13;
  }

  MEMORY[0x1AC561C90](v15, v16);

  MEMORY[0x1AC561C90](0x636F6C202020200ALL, 0xEF203A5441526C61);
  v17 = IDSRadioAccessTechnology.description.getter(v6);
  MEMORY[0x1AC561C90](v17);

  MEMORY[0x1AC561C90](0xD000000000000010, 0x80000001A7EAEF30);
  v18 = IDSRadioAccessTechnology.description.getter(v5);
  MEMORY[0x1AC561C90](v18);

  MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAEF50);
  if (v26)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v26)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v19, v20);

  MEMORY[0x1AC561C90](0xD000000000000014, 0x80000001A7EAEF70);
  if (v27)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v27)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v21, v22);

  MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAEF90);
  if (v28)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v28)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v23, v24);

  MEMORY[0x1AC561C90](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A7D3C4A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496B6E696CLL;
    v6 = 0x6361667265746E69;
    if (a1 != 2)
    {
      v6 = 0x796C696D61467069;
    }

    if (a1)
    {
      v5 = 1684957547;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736E657078457369;
    v2 = 0x7274736E6F437369;
    if (a1 != 7)
    {
      v2 = 0x6167656C65447369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x5441526C61636F6CLL;
    if (a1 != 4)
    {
      v3 = 0x415265746F6D6572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A7D3C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D3F26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D3C610(uint64_t a1)
{
  v2 = sub_1A7D3CA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D3C64C(uint64_t a1)
{
  v2 = sub_1A7D3CA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSTestableLinkMetadata.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B60A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v13 - v6;
  v8 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = v8;
  v9 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v9;
  LODWORD(v9) = *(v1 + 40);
  v14 = *(v1 + 44);
  v15 = v9;
  LODWORD(v9) = *(v1 + 48);
  v13[0] = *(v1 + 49);
  v13[1] = v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D3CA70();
  sub_1A7E23260();
  LOBYTE(v22) = 0;
  v10 = v20;
  sub_1A7E23040();
  if (v10)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = v16;
  v22 = v19;
  v21 = 1;
  type metadata accessor for IDSTestableLinkKind(0);
  sub_1A7D3F590(&qword_1EB2B60B0, 255, type metadata accessor for IDSTestableLinkKind);
  sub_1A7E23030();
  LOBYTE(v22) = 2;
  sub_1A7E22FF0();
  v22 = v11;
  v21 = 3;
  type metadata accessor for IDSIPAddressFamily(0);
  sub_1A7D3F590(&qword_1EB2B60B8, 255, type metadata accessor for IDSIPAddressFamily);
  sub_1A7E23030();
  LODWORD(v22) = v15;
  v21 = 4;
  type metadata accessor for IDSRadioAccessTechnology(0);
  sub_1A7D3F590(&qword_1EB2B60C0, 255, type metadata accessor for IDSRadioAccessTechnology);
  sub_1A7E23030();
  LODWORD(v22) = v14;
  v21 = 5;
  sub_1A7E23030();
  LOBYTE(v22) = 6;
  sub_1A7E23000();
  LOBYTE(v22) = 7;
  sub_1A7E23000();
  LOBYTE(v22) = 8;
  sub_1A7E23000();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7D3CA70()
{
  result = qword_1EB2B60A8;
  if (!qword_1EB2B60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B60A8);
  }

  return result;
}

uint64_t IDSTestableLinkMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B60C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D3CA70();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  LOBYTE(v35[0]) = 0;
  v31 = sub_1A7E22F40();
  type metadata accessor for IDSTestableLinkKind(0);
  LOBYTE(v32) = 1;
  sub_1A7D3F590(&qword_1EB2B60D0, 255, type metadata accessor for IDSTestableLinkKind);
  sub_1A7E22F30();
  v10 = v35[0];
  LOBYTE(v35[0]) = 2;
  v11 = sub_1A7E22EF0();
  v13 = v12;
  v29 = v10;
  v30 = v11;
  type metadata accessor for IDSIPAddressFamily(0);
  LOBYTE(v32) = 3;
  sub_1A7D3F590(&qword_1EB2B60D8, 255, type metadata accessor for IDSIPAddressFamily);
  sub_1A7E22F30();
  v27 = v35[0];
  v28 = v13;
  type metadata accessor for IDSRadioAccessTechnology(0);
  LOBYTE(v32) = 4;
  sub_1A7D3F590(&unk_1EB2B60E0, 255, type metadata accessor for IDSRadioAccessTechnology);
  sub_1A7E22F30();
  v26 = v35[0];
  LOBYTE(v32) = 5;
  sub_1A7E22F30();
  LODWORD(v13) = v26;
  LODWORD(v10) = v35[0];
  LOBYTE(v35[0]) = 6;
  v25 = sub_1A7E22F00();
  LOBYTE(v35[0]) = 7;
  v23 = sub_1A7E22F00();
  v24 = v10;
  v41 = 8;
  v14 = sub_1A7E22F00();
  LOBYTE(v10) = v25 & 1;
  v23 &= 1u;
  (*(v6 + 8))(v9, v5);
  v25 = v14 & 1;
  LOBYTE(v32) = v31;
  *(&v32 + 1) = *v42;
  DWORD1(v32) = *&v42[3];
  v16 = v29;
  v15 = v30;
  *(&v32 + 1) = v29;
  *&v33 = v30;
  v17 = v28;
  *(&v33 + 1) = v28;
  *v34 = v27;
  v18 = v23;
  *&v34[8] = v13;
  *&v34[12] = v24;
  v34[16] = v10;
  v34[17] = v23;
  v34[18] = v25;
  v19 = v32;
  v20 = v33;
  v21 = *v34;
  *(a2 + 47) = *&v34[15];
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *a2 = v19;
  sub_1A7CEB448(&v32, v35);
  sub_1A7B0CD6C(a1);
  LOBYTE(v35[0]) = v31;
  *(v35 + 1) = *v42;
  HIDWORD(v35[0]) = *&v42[3];
  v35[1] = v16;
  v35[2] = v15;
  v35[3] = v17;
  v35[4] = v27;
  v36 = v13;
  v37 = v24;
  v38 = v10;
  v39 = v18;
  v40 = v25;
  return sub_1A7CEB5C8(v35);
}

uint64_t IDSTestableLinkPacketStats.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000028, 0x80000001A7EAEFB0);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0xD00000000000001BLL, 0x80000001A7EAEFE0);
  v1 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v1);

  MEMORY[0x1AC561C90](0xD000000000000015, 0x80000001A7EAF000);
  v2 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v2);

  MEMORY[0x1AC561C90](0xD000000000000019, 0x80000001A7EAF020);
  v3 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v3);

  MEMORY[0x1AC561C90](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A7D3D188(uint64_t a1, uint64_t a2)
{
  sub_1A7D3F590(&qword_1EB2B29E8, a2, type metadata accessor for _IDSTestableLinkWithScheduler.Executor);
  v4 = sub_1A7E22740();

  return MEMORY[0x1EEE6DF18](a1, v4, v3);
}

uint64_t sub_1A7D3D240()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D3D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1A7D3F590(&qword_1EB2B29F0, a2, type metadata accessor for _IDSTestableLinkWithScheduler.Executor);

  return a4(a1, v6, v7);
}

uint64_t sub_1A7D3D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1A7E22670();
  v8 = *(v5 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;

  v8(a5, v9);
}

uint64_t _IDSTestableLinkWithScheduler.unownedExecutor.getter()
{
  type metadata accessor for _IDSTestableLinkWithScheduler.Executor();
  sub_1A7D3F590(&qword_1EB2B29E8, v0, type metadata accessor for _IDSTestableLinkWithScheduler.Executor);
  return sub_1A7E22740();
}

uint64_t _IDSTestableLinkWithScheduler.__allocating_init(link:addBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for _IDSTestableLinkWithScheduler.Executor();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v5 + 24) = v6;
  return v5;
}

uint64_t _IDSTestableLinkWithScheduler.init(link:addBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for _IDSTestableLinkWithScheduler.Executor();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v3 + 24) = v6;
  return v3;
}

void *_IDSTestableLinkWithScheduler.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = [Strong linkID];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v21 = [v3 kind];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4 && (v5 = [v4 interfaceName], swift_unknownObjectRelease(), v5))
  {
    v6 = sub_1A7E22290();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = [v9 ipFamily];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 4;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = [v11 localRAT];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = [v13 remoteRAT];
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = [v15 isExpensive];
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = [v17 isConstrained];
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = [result isDelegated];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 44) = v14;
  *(a1 + 48) = v16;
  *(a1 + 49) = v18;
  *(a1 + 50) = v20;
  return result;
}

void *_IDSTestableLinkWithScheduler.packetStats.getter@<X0>(void *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result totalPacketsSent];
    v5 = [v3 totalPacketsReceived];
    v6 = [v3 totalBytesSent];
    v7 = [v3 totalBytesReceived];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

id _IDSTestableLinkWithScheduler.linkTestStatsPacketOverhead.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result linkTestStatsPacketOverhead];
    swift_unknownObjectRelease();
    return v1;
  }

  return result;
}

uint64_t _IDSTestableLinkWithScheduler.addStatsPacketListener(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3DAE8, v5, v4);
}

uint64_t sub_1A7D3DAE8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addStatsPacketListener_];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _IDSTestableLinkWithScheduler.removeStatsPacketListener(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3DC64, v5, v4);
}

uint64_t sub_1A7D3DC64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong removeStatsPacketListener_];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _IDSTestableLinkWithScheduler.sendLinkTestStatsPacket(payload:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3DDC0, v5, v4);
}

uint64_t sub_1A7D3DDC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 24) >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_1A7E219F0();
    }

    [v2 sendLinkTestStatsPacket_];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t _IDSTestableLinkWithScheduler.deinit()
{
  sub_1A7D3DE98(v0 + 16);

  return v0;
}

uint64_t _IDSTestableLinkWithScheduler.__deallocating_deinit()
{
  sub_1A7D3DE98(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _IDSTestableLinkWithScheduler.hashValue.getter()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v0);
  return sub_1A7E23240();
}

uint64_t sub_1A7D3DF48()
{
  type metadata accessor for _IDSTestableLinkWithScheduler.Executor();
  sub_1A7D3F590(&qword_1EB2B29E8, v0, type metadata accessor for _IDSTestableLinkWithScheduler.Executor);
  return sub_1A7E22740();
}

uint64_t sub_1A7D3DFB0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3DAE8, v5, v4);
}

uint64_t sub_1A7D3E084(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3DC64, v5, v4);
}

uint64_t sub_1A7D3E158(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD22FC;

  return _IDSTestableLinkWithScheduler.sendLinkTestStatsPacket(payload:)(a1, a2);
}

uint64_t sub_1A7D3E1FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3E2D0, v5, v4);
}

uint64_t sub_1A7D3E2D0()
{
  _IDSTestableLinkWithScheduler.metadata.getter(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3E330(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3E404, v5, v4);
}

uint64_t sub_1A7D3E404()
{
  _IDSTestableLinkWithScheduler.packetStats.getter(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3E464(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  sub_1A7D3F590(&qword_1EB2B29E0, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  v5 = sub_1A7E225F0();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3E538, v5, v4);
}

uint64_t sub_1A7D3E538()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong linkTestStatsPacketOverhead];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A7D3E6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A7D3E75C;
  v7[3] = &unk_1F1AB1030;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_1A7D3E75C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void __swiftcall IDSTestableLinkWithScheduler.init()(IDSTestableLinkWithScheduler *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A7D3E808(uint64_t a1, uint64_t a2)
{
  result = sub_1A7D3F590(&qword_1EB2B3118, a2, type metadata accessor for _IDSTestableLinkWithScheduler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A7D3E8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_1A7D3E8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of IDSAsyncTestableLink.addStatsPacketListener(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IDSAsyncTestableLink.removeStatsPacketListener(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IDSAsyncTestableLink.sendLinkTestStatsPacket(payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD22FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IDSAsyncTestableLink.metadata.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IDSAsyncTestableLink.packetStats.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IDSAsyncTestableLink.linkTestStatsPacketOverhead.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7D017E0;

  return v7(a1, a2);
}

unint64_t type metadata accessor for IDSTestableLinkWithScheduler()
{
  result = qword_1EB2B6160;
  if (!qword_1EB2B6160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6160);
  }

  return result;
}

unint64_t sub_1A7D3F120()
{
  result = qword_1EB2B6168;
  if (!qword_1EB2B6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6168);
  }

  return result;
}

unint64_t sub_1A7D3F1C0()
{
  result = qword_1EB2B6178;
  if (!qword_1EB2B6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6178);
  }

  return result;
}

unint64_t sub_1A7D3F218()
{
  result = qword_1EB2B6180;
  if (!qword_1EB2B6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6180);
  }

  return result;
}

uint64_t sub_1A7D3F26C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496B6E696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xED0000656D614E65 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C696D61467069 && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E657078457369 && a2 == 0xEB00000000657669 || (sub_1A7E230D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274736E6F437369 && a2 == 0xED000064656E6961 || (sub_1A7E230D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6167656C65447369 && a2 == 0xEB00000000646574)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A7E230D0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A7D3F578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7D3F590(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D3F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1A7CD1F00(a3, v23 - v10, &unk_1EB2B61C0);
  v12 = sub_1A7E226D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A7CC9970(v11, &unk_1EB2B61C0);
  }

  else
  {
    sub_1A7E226C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A7E225F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A7E22300() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1A7CC9970(a3, &unk_1EB2B61C0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A7CC9970(a3, &unk_1EB2B61C0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A7D3F888()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A7D3F8E0()
{
  v1 = v0[11];
  v2 = sub_1A7CE3D94(MEMORY[0x1E69E7CC0]);
  v3 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_statsRequestStartTimesByID;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_bursts;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v0[12] = v5;
  if (v5 >> 62)
  {
    v12 = sub_1A7E22DA0();
    v0[13] = v12;
    if (v12)
    {
LABEL_3:
      v0[14] = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
      v7 = v0[12];

      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC562480](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v8, v9, v10);
        }

        v11 = *(v7 + 32);
      }

      v0[15] = v11;
      v0[16] = 1;
      v8 = sub_1A7D3FA70;
      v9 = v11;
      v10 = 0;

      return MEMORY[0x1EEE6DFA0](v8, v9, v10);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[13] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A7D3FA70()
{
  v1 = *(v0 + 120);
  *(v0 + 136) = v1[17];
  *(v0 + 144) = v1[18];
  v2 = v1[14];
  v3 = *(v2 + 16);
  *(v0 + 152) = v3;
  if (!v3)
  {
    v5 = 0.0;
    goto LABEL_10;
  }

  if (v3 <= 3)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_8:
    v8 = v3 - v4;
    v9 = (v2 + 8 * v4 + 32);
    do
    {
      v10 = *v9++;
      v5 = v5 + v10;
      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = (v2 + 48);
  v5 = 0.0;
  v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
    v6 += 4;
    v7 -= 4;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(v0 + 160) = v5;
  v11 = *(v0 + 88);
  *(v0 + 168) = v1[15];
  *(v0 + 176) = v1[16];
  return MEMORY[0x1EEE6DFA0](sub_1A7D3FB3C, v11, 0);
}

uint64_t sub_1A7D3FB3C()
{
  v1 = *(v0 + 88) + *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 88) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = *(v0 + 88) + *(v0 + 112);
    v2 = sub_1A7CCCFA0(0, *(v2 + 2) + 1, 1, v2);
    *(v21 + 88) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1A7CCCFA0((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 88);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = &v2[64 * v5];
  v13 = *(v0 + 168);
  *(v12 + 3) = *(v0 + 136);
  *(v2 + 2) = v5 + 1;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 8) = v10 / v11;
  *(v12 + 72) = v13;
  *(v12 + 44) = 0x8000;
  *(v9 + v7 + 88) = v2;
  swift_endAccess();

  if (v6 != v8)
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 96);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1AC562480](*(v0 + 128));
      v20 = v14;
    }

    else
    {
      if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v20 = *(v19 + v18 + 4);
    }

    *(v0 + 120) = v20;
    *(v0 + 128) = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      v14 = sub_1A7D3FA70;
      v19 = v20;
      v15 = 0;

      return MEMORY[0x1EEE6DFA0](v14, v19, v15);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v14, v19, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A7D3FD34(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_statsRequestStartTimesByID;
  result = swift_beginAccess();
  v10 = *(v3 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_1A7CD1248(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = v4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
      swift_beginAccess();
      v15 = *(v14 + 88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 88) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1A7CCCFA0(0, *(v15 + 2) + 1, 1, v15);
        *(v14 + 88) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1A7CCCFA0((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[64 * v18];
      *(v19 + 4) = 0;
      *(v19 + 5) = 0;
      *(v19 + 6) = v13;
      *(v19 + 7) = a3;
      *(v19 + 9) = 0;
      *(v19 + 10) = 0;
      *(v19 + 8) = 0;
      *(v19 + 44) = 0x2000;
      *(v14 + 88) = v15;
      swift_endAccess();
      swift_beginAccess();

      sub_1A7CC8F70(0, 1, a1, a2);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A7D3FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (qword_1EB2B2D48 != -1)
  {
    swift_once();
  }

  v10 = sub_1A7E22060();
  sub_1A7B0CB00(v10, qword_1EB2B2D50);
  sub_1A7D52320(v4, v5, v6, v7, v8, v9);

  v11 = sub_1A7E22040();
  v12 = sub_1A7E228F0();
  sub_1A7D52368(v4, v5, v6, v7, v8, v9);

  v31 = a3;
  if (os_log_type_enabled(v11, v12))
  {
    v27 = v12;
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v13 = 136315394;
    sub_1A7D52320(v4, v5, v6, v7, v8, v9);
    v14 = sub_1A7E222F0();
    v16 = sub_1A7B0CB38(v14, v15, &v32);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;

    v17 = sub_1A7E222F0();
    v19 = sub_1A7B0CB38(v17, v18, &v32);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1A7AD9000, v11, v27, "adding measurement %s from %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v28, -1, -1);
    MEMORY[0x1AC5654B0](v13, -1, -1);
  }

  v20 = v29 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  swift_beginAccess();
  v21 = *(v20 + 88);
  sub_1A7D52320(v4, v5, v6, v7, v8, v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 88) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1A7CCCFA0(0, *(v21 + 2) + 1, 1, v21);
    *(v20 + 88) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1A7CCCFA0((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[64 * v24];
  *(v25 + 4) = a2;
  *(v25 + 5) = v31;
  *(v25 + 6) = v4;
  *(v25 + 7) = v5;
  *(v25 + 8) = v6;
  *(v25 + 9) = v7;
  *(v25 + 10) = v8;
  *(v25 + 44) = v9;
  *(v20 + 88) = v21;
  return swift_endAccess();
}

uint64_t sub_1A7D40208()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_uniqueID;
  v2 = sub_1A7E21B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A7D402E4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D50);
  sub_1A7B0CB00(v0, qword_1EB2B2D50);
  return sub_1A7E22050();
}

id _IDSLinksQualityMeasurer.init(timeFn:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = MEMORY[0x1E69E7CC0];
  v2[14] = sub_1A7CE3E98(MEMORY[0x1E69E7CC0]);
  v2[15] = sub_1A7CE3EC0(v5);
  v2[16] = 0;
  sub_1A7E22050();
  *(v2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_packetID) = 0;
  *(v2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_report) = v5;
  v6 = v2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID;
  v7 = sub_1A7CE40A8(v5);
  *v6 = 0;
  *(v6 + 1) = v7;
  v8 = (v2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);
  *v8 = a1;
  v8[1] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for _IDSLinksQualityMeasurer(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1A7D404D4(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 33) = a2;
  *(v3 + 32) = a1;
  sub_1A7CC7FFC(&unk_1EB2B61C0);
  *(v3 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D40578, v2, 0);
}

uint64_t sub_1A7D40578()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (*(v1 + 128))
  {

    sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E226F0();

    v2 = *(v0 + 16);
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 33);
  v5 = *(v0 + 32);
  v6 = sub_1A7E226D0();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_1A7D51980(&qword_1EB2B2A80, 255, type metadata accessor for _IDSLinksQualityMeasurer);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v2;
  *(v8 + 48) = v4;
  swift_retain_n();
  *(v1 + 128) = sub_1A7D3F5DC(0, 0, v3, &unk_1A7E49500, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A7D4073C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 57) = a6;
  *(v6 + 56) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A7D40764, a5, 0);
}

uint64_t sub_1A7D40764()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = sub_1A7D51980(&qword_1EB2B2A80, 255, type metadata accessor for _IDSLinksQualityMeasurer);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1A7D408A0;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE40](v7, v8, v2, v4, &unk_1A7E49D20, v5, v9);
}

uint64_t sub_1A7D408A0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A7D409DC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A7D409DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D40A40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 41) = a5;
  *(v5 + 40) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a4;
  sub_1A7CC7FFC(&unk_1EB2B61C0);
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D40AE8, a4, 0);
}

uint64_t sub_1A7D40AE8()
{
  if (*(v0 + 40) == 1)
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = sub_1A7E226D0();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v2;

    sub_1A7DF8864(v1, &unk_1A7E49D40, v4);
    sub_1A7CC9970(v1, &unk_1EB2B61C0);
  }

  if (*(v0 + 41) == 1)
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = sub_1A7E226D0();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;

    sub_1A7DF8864(v5, &unk_1A7E49D30, v8);
    sub_1A7CC9970(v5, &unk_1EB2B61C0);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A7D40CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1A7E22D10();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7B050CC, 0, 0);
}

uint64_t sub_1A7D40D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D40E20()
{
  if (*(*(v0 + 16) + 128))
  {

    sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E226F0();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D40EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return sub_1A7D4E998(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_1A7D40FA0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD22FC;

  return (sub_1A7D4F87C)(a1, v2, ObjectType, a2);
}

uint64_t sub_1A7D4108C()
{
  v16 = v0;
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1A7CE50F8(*(v2 + 16), 0);
    v5 = sub_1A7CE50F4(&v15, v4 + 32, v3, v2);

    result = sub_1A7CC9770();
    if (v5 != v3)
    {
      __break(1u);
      goto LABEL_20;
    }

    v0[6] = v4;
    if (v4 < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v0[6] = MEMORY[0x1E69E7CC0];
    if (v4 < 0)
    {
      goto LABEL_15;
    }
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
LABEL_15:
    result = sub_1A7E22DA0();
    v0[7] = result;
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  result = *(v4 + 16);
  v0[7] = result;
  if (!result)
  {
LABEL_16:

    v14 = v0[1];

    return v14();
  }

LABEL_8:
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v0[8] = 0;
  if ((v0[6] & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1AC562480](0);
  }

  else
  {
  }

  v0[9] = v7;
  v8 = v7 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
  v9 = *(v7 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
  v0[10] = v9;
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1A7D412B4;
  v13 = v0[5];

  return sub_1A7D503E4(v9, v13, ObjectType, v10);
}

uint64_t sub_1A7D412B4()
{
  v1 = *(*v0 + 40);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1A7D413E0, v1, 0);
}

uint64_t sub_1A7D413E0()
{
  v1 = v0[8];
  v2 = v0[7];

  if (v1 + 1 == v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    ++v0[8];
    if ((v0[6] & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC562480]();
    }

    else
    {
    }

    v0[9] = v5;
    v6 = v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    v7 = *(v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    v0[10] = v7;
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_1A7D412B4;
    v11 = v0[5];

    return sub_1A7D503E4(v7, v11, ObjectType, v8);
  }
}

uint64_t sub_1A7D41538()
{
  v1 = *(*v0 + 40);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1A7D41664, v1, 0);
}

uint64_t sub_1A7D41664()
{

  v2 = *(v0 + 64);
  v3 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v3)
  {
    result = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v3;
    *(v0 + 64) = v2;
    v5 = *(*(result + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));
    *(v0 + 72) = v5;
    v6 = v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    v7 = *(v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    *(v0 + 80) = v7;
    v8 = *(v6 + 8);

    swift_unknownObjectRetain();
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_1A7D41538;

    return sub_1A7D417E0(v7, v8);
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 48);
      if (v4 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v3 = *(result + 8 * v4 + 64);
      ++v2;
      if (v3)
      {
        v2 = v4;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A7D417E0(uint64_t a1, uint64_t a2)
{
  v3[57] = a2;
  v3[58] = v2;
  v3[56] = a1;
  ObjectType = swift_getObjectType();
  v3[59] = ObjectType;
  v8 = (*(a2 + 48) + **(a2 + 48));
  v6 = swift_task_alloc();
  v3[60] = v6;
  *v6 = v3;
  v6[1] = sub_1A7D41920;

  return v8(v3 + 49, ObjectType, a2);
}

uint64_t sub_1A7D41920()
{
  v1 = *(*v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1A7D41A30, v1, 0);
}

uint64_t sub_1A7D41A30()
{
  v1 = *(v0 + 456);
  *(v0 + 488) = *(v0 + 392);
  *(v0 + 496) = *(v0 + 400);
  *(v0 + 512) = *(v0 + 416);
  v6 = (*(v1 + 40) + **(v1 + 40));
  v2 = swift_task_alloc();
  *(v0 + 520) = v2;
  *v2 = v0;
  v2[1] = sub_1A7D41B58;
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);

  return v6(v0 + 72, v3, v4);
}

uint64_t sub_1A7D41B58()
{
  v1 = *(*v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1A7D41C68, v1, 0);
}

uint64_t sub_1A7D41C68()
{
  v38 = v0;
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  if (qword_1EB2B2D48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E22060();
  sub_1A7B0CB00(v2, qword_1EB2B2D50);
  sub_1A7CEB448(v0 + 16, v0 + 128);
  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  sub_1A7CEB5C8(v0 + 16);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315394;
    v34 = *(v0 + 16);
    v35 = *(v0 + 32);
    *v36 = *(v0 + 48);
    *&v36[15] = *(v0 + 63);
    sub_1A7CEB448(v0 + 16, v0 + 240);
    v7 = IDSTestableLinkMetadata.description.getter();
    v9 = v8;
    *(v0 + 184) = v34;
    *(v0 + 200) = v35;
    *(v0 + 216) = *v36;
    *(v0 + 231) = *&v36[15];
    sub_1A7CEB5C8(v0 + 184);
    v10 = sub_1A7B0CB38(v7, v9, &v37);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = IDSTestableLinkPacketStats.description.getter();
    v13 = sub_1A7B0CB38(v11, v12, &v37);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "link stats: %s %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v14 = *(v0 + 464);
  swift_beginAccess();
  v15 = *(v14 + 112);
  if (*(v15 + 16) && (v16 = sub_1A7CD1580(*(v0 + 16)), (v17 & 1) != 0))
  {
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    v22 = *(v0 + 464);
    v23 = *(*(v15 + 56) + 8 * v16);
    *(v0 + 528) = v23;
    v24 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn;
    *(v0 + 536) = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn;
    v25 = *(v22 + v24);

    v27 = v25(v26);

    if ((v19 | v18 | v20 | v21) < 0)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 296) = v27;
      v31 = *(v0 + 504);
      *(v0 + 304) = *(v0 + 488);
      *(v0 + 320) = v31;
      *(v0 + 336) = 24576;
      v28 = sub_1A7D41FC4;
      v29 = v23;
      v30 = 0;
    }

    return MEMORY[0x1EEE6DFA0](v28, v29, v30);
  }

  else
  {
    sub_1A7CEB5C8(v0 + 16);
    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1A7D41FC4()
{
  v1 = *(v0 + 464);
  sub_1A7D3FEE0(v0 + 296, 0, 0);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4203C, v1, 0);
}

uint64_t sub_1A7D4203C()
{
  v1 = *(v0 + 528);
  v2 = *(*(v0 + 464) + *(v0 + 536));

  v4 = v2(v3);

  v5 = sub_1A7D99170(*(v0 + 56));
  v7 = v6;
  v8 = sub_1A7D99170(*(v0 + 60));
  v10 = v9;
  sub_1A7CEB5C8(v0 + 16);
  v11 = *(v0 + 64);
  if (*(v0 + 65))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  *(v0 + 360) = v7;
  *(v0 + 368) = v8;
  *(v0 + 376) = v10;
  *(v0 + 384) = v12 | v11;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4212C, v1, 0);
}

uint64_t sub_1A7D4212C()
{
  v1 = *(v0 + 464);
  sub_1A7D3FEE0(v0 + 344, 0, 0);
  sub_1A7D52368(*(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384));

  return MEMORY[0x1EEE6DFA0](sub_1A7D421B8, v1, 0);
}

uint64_t sub_1A7D421B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D42218(uint64_t a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  v11 = v1 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID;
  os_unfair_lock_lock(v11);
  sub_1A7D42450((v11 + 8), a1, v10);
  os_unfair_lock_unlock(v11);
  sub_1A7CD1F00(v10, v6, &qword_1EB2B4A50);
  v12 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_1A7CC9970(v10, &qword_1EB2B4A50);
    return sub_1A7CC9970(v6, &qword_1EB2B4A50);
  }

  else
  {
    sub_1A7E22640();
    sub_1A7D51980(&qword_1EB2B2950, 255, MEMORY[0x1E69E8550]);
    v15 = swift_allocError();
    sub_1A7E22140();
    v16[0] = v15;
    sub_1A7E22610();
    sub_1A7CC9970(v10, &qword_1EB2B4A50);
    return (*(v13 + 8))(v6, v12);
  }
}

uint64_t sub_1A7D42450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1A7CD14B8(a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a3, v14 + *(v16 + 72) * v13, v15);
    (*(v16 + 56))(a3, 0, 1, v15);
  }

  else
  {
    v17 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  v18 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  return sub_1A7CC911C(v9, a2);
}

uint64_t sub_1A7D42658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1A7E22D10();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D4271C, v3, 0);
}

uint64_t sub_1A7D4271C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A7E22D00();

  return MEMORY[0x1EEE6DFA0](sub_1A7D427A8, 0, 0);
}

uint64_t sub_1A7D427A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = &unk_1A7E49C80;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = &unk_1A7E49C88;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v4;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A7D428EC;
  v8 = MEMORY[0x1E6969080];
  v9 = MEMORY[0x1E6969080];
  v10 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DD58](v0 + 2, v8, v9, 0, 0, &unk_1A7E49C90, v6, v10);
}

uint64_t sub_1A7D428EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1A7D42B34;
  }

  else
  {

    v2 = sub_1A7D42A08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D42A08()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = sub_1A7D42AC4;
    v3 = v5;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1A7D42AC4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1A7D42B34()
{

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v2 = sub_1A7D12964;
    v3 = v5;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1A7D42BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D42C0C, 0, 0);
}

uint64_t sub_1A7D42C0C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A7D42D18;
  v6 = v0[2];
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE18](v6, &unk_1A7E49CA0, v3, sub_1A7D54190, v4, 0, 0, v7);
}

uint64_t sub_1A7D42D18()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D42E60, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7D42E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D42ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D42EF0, 0, 0);
}

uint64_t sub_1A7D42EF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1A7D42FE8;
  v5 = v0[2];
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000030, 0x80000001A7EAF780, sub_1A7D541B8, v3, v6);
}

uint64_t sub_1A7D42FE8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D43124, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A7D43124()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A7D43188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = (a2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID));
  v11 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1A7CC911C(v9, a3);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1A7D432BC()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A7D433CC, v1, 0);
}

uint64_t sub_1A7D433CC()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  sub_1A7CEB5C8(v0 + 16);
  v2 = *(v0 + 16);
  *(v0 + 68) = v2;
  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16777472;
    v5[4] = v2;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "  sending burst for %hhd...", v5, 5u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v6 = *(v0 + 152);
  v13 = *(v0 + 200);

  v7 = sub_1A7D51980(&qword_1EB2B2A80, 255, type metadata accessor for _IDSLinksQualityMeasurer);
  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v2;
  *(v8 + 32) = 100;
  *(v8 + 40) = v13;
  *(v8 + 56) = xmmword_1A7E494C0;
  *(v8 + 72) = xmmword_1A7E494D0;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_1A7D435CC;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE40](v9, v10, v6, v7, &unk_1A7E49C60, v8, v11);
}

uint64_t sub_1A7D435CC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_1A7D43A14;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1A7D436F4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A7D436F4()
{
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 68);
    v4 = swift_slowAlloc();
    *v4 = 16777472;
    v4[4] = v3;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "  sent burst for %hhd", v4, 5u);
    MEMORY[0x1AC5654B0](v4, -1, -1);
  }

  result = swift_unknownObjectRelease();
  v6 = *(v0 + 184);
  v7 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v7)
  {
    result = *(v0 + 168);
LABEL_9:
    *(v0 + 176) = v7;
    *(v0 + 184) = v6;
    v9 = *(*(result + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v7)))));
    *(v0 + 192) = v9;
    v10 = v9 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    *(v0 + 200) = *(v9 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    v11 = *(v10 + 8);
    *(v0 + 208) = v11;
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 40);

    swift_unknownObjectRetain();
    v19 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1A7D432BC;

    return v19(v0 + 72, ObjectType, v11);
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 168);
      if (v8 >= (((1 << *(v0 + 67)) + 63) >> 6))
      {
        break;
      }

      v7 = *(result + 8 * v8 + 64);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_9;
      }
    }

    v15 = sub_1A7E22040();
    v16 = sub_1A7E228F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, v16, "done sending bursts", v17, 2u);
      MEMORY[0x1AC5654B0](v17, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1A7D43A14()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D43AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v15;
  *(v8 + 240) = v14;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 137) = a4;
  *(v8 + 192) = a2;
  *(v8 + 200) = a3;
  v10 = sub_1A7E22CF0();
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v11 = sub_1A7E22D10();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B61C0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D43C38, a3, 0);
}

uint64_t sub_1A7D43C38()
{
  v1 = *(v0 + 200);
  type metadata accessor for IDSLinksQualityMeasurerBurst();
  v2 = swift_allocObject();
  *(v0 + 336) = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x1E69E7CC0];
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  v3 = swift_beginAccess();
  v6 = *(v1 + 112);
  if (*(v6 + 16))
  {
    v3 = sub_1A7CD1580(*(v0 + 137));
    if (v4)
    {
      v7 = *(*(v6 + 56) + 8 * v3);
      *(v0 + 344) = v7;

      v3 = sub_1A7D44078;
      v4 = v7;
LABEL_18:
      v5 = 0;

      return MEMORY[0x1EEE6DFA0](v3, v4, v5);
    }
  }

  v8 = *(v0 + 208);
  if (v8 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  if (v8)
  {
    v9 = *(v0 + 200);
    *(v0 + 352) = **(v0 + 192);
    *(v0 + 360) = 0;
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 320);
    v13 = *(v0 + 232);
    v30 = *(v0 + 240);
    v14 = sub_1A7E226D0();
    v15 = *(v14 - 8);
    v31 = *(v0 + 216);
    (*(v15 + 56))(v11, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = 0u;
    *(v16 + 32) = v9;
    *(v16 + 40) = v31;
    *(v16 + 56) = v13;
    *(v16 + 64) = v30;
    *(v16 + 72) = v10;
    sub_1A7CD1F00(v11, v12, &unk_1EB2B61C0);
    LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

    swift_unknownObjectRetain();
    v17 = *(v0 + 320);
    if (v11 == 1)
    {
      sub_1A7CC9970(*(v0 + 320), &unk_1EB2B61C0);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v15 + 8))(v17, v14);
      if (*(v16 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1A7E225F0();
        v19 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }
    }

    if (v19 | v18)
    {
      v23 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v18;
      *(v0 + 40) = v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v0 + 352);
    v25 = *(v0 + 328);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    *(v0 + 72) = 1;
    *(v0 + 80) = v23;
    *(v0 + 88) = v24;
    swift_task_create();

    sub_1A7CC9970(v25, &unk_1EB2B61C0);
    *(v0 + 160) = v27;
    *(v0 + 168) = v26;
    sub_1A7E22D40();
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    sub_1A7E23170();
    *(v0 + 176) = v29;
    *(v0 + 184) = v28;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 1;
    v3 = sub_1A7D44518;
    v4 = 0;
    goto LABEL_18;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A7D44078()
{
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_bursts;
  swift_beginAccess();

  MEMORY[0x1AC561DF0](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A7E22560();
  }

  v4 = *(v0 + 200);
  sub_1A7E225A0();
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1A7D44164, v4, 0);
}

uint64_t sub_1A7D44164()
{

  v4 = *(v0 + 208);
  if (v4 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  if (v4)
  {
    v5 = *(v0 + 200);
    *(v0 + 352) = **(v0 + 192);
    *(v0 + 360) = 0;
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = *(v0 + 320);
    v9 = *(v0 + 232);
    v26 = *(v0 + 240);
    v10 = sub_1A7E226D0();
    v11 = *(v10 - 8);
    v27 = *(v0 + 216);
    (*(v11 + 56))(v7, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = v5;
    *(v12 + 40) = v27;
    *(v12 + 56) = v9;
    *(v12 + 64) = v26;
    *(v12 + 72) = v6;
    sub_1A7CD1F00(v7, v8, &unk_1EB2B61C0);
    LODWORD(v7) = (*(v11 + 48))(v8, 1, v10);

    swift_unknownObjectRetain();
    v13 = *(v0 + 320);
    if (v7 == 1)
    {
      sub_1A7CC9970(*(v0 + 320), &unk_1EB2B61C0);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v11 + 8))(v13, v10);
      if (*(v12 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1A7E225F0();
        v15 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    if (v15 | v14)
    {
      v19 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v14;
      *(v0 + 40) = v15;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v0 + 352);
    v21 = *(v0 + 328);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    *(v0 + 72) = 1;
    *(v0 + 80) = v19;
    *(v0 + 88) = v20;
    swift_task_create();

    sub_1A7CC9970(v21, &unk_1EB2B61C0);
    *(v0 + 160) = v23;
    *(v0 + 168) = v22;
    sub_1A7E22D40();
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    sub_1A7E23170();
    *(v0 + 176) = v25;
    *(v0 + 184) = v24;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 1;
    v1 = sub_1A7D44518;
    v2 = 0;
    v3 = 0;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A7D44518()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = sub_1A7D51980(&qword_1EB2B2880, 255, MEMORY[0x1E69E8820]);
  sub_1A7E23150();
  sub_1A7D51980(&qword_1EB2B2888, 255, MEMORY[0x1E69E87E8]);
  sub_1A7E22D20();
  v5 = *(v2 + 8);
  v0[46] = v5;
  v0[47] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_1A7D446A4;
  v8 = v0[36];
  v7 = v0[37];

  return MEMORY[0x1EEE6DE58](v8, v0 + 15, v7, v4);
}

uint64_t sub_1A7D446A4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2 + 368))(*(v2 + 288), *(v2 + 264));
    v3 = sub_1A7D44BB4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 368);
    v7 = *(v2 + 304);
    v6 = *(v2 + 312);
    v8 = *(v2 + 288);
    v9 = *(v2 + 296);
    v10 = *(v2 + 264);
    v11 = *(v2 + 200);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_1A7D44808;
    v4 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1A7D44808()
{
  v1 = *(v0 + 360) + 1;
  if (v1 == *(v0 + 208))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 360) = v1;
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 320);
    v7 = *(v0 + 232);
    v23 = *(v0 + 240);
    v8 = *(v0 + 200);
    v9 = sub_1A7E226D0();
    v10 = *(v9 - 8);
    v24 = *(v0 + 216);
    (*(v10 + 56))(v5, 1, 1, v9);
    v11 = swift_allocObject();
    *(v11 + 16) = 0u;
    *(v11 + 32) = v8;
    *(v11 + 40) = v24;
    *(v11 + 56) = v7;
    *(v11 + 64) = v23;
    *(v11 + 72) = v4;
    sub_1A7CD1F00(v5, v6, &unk_1EB2B61C0);
    LODWORD(v6) = (*(v10 + 48))(v6, 1, v9);

    swift_unknownObjectRetain();
    v12 = *(v0 + 320);
    if (v6 == 1)
    {
      sub_1A7CC9970(*(v0 + 320), &unk_1EB2B61C0);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      sub_1A7E226C0();
      (*(v10 + 8))(v12, v9);
      if (*(v11 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1A7E225F0();
        v14 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    if (v14 | v13)
    {
      v16 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v13;
      *(v0 + 40) = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v0 + 352);
    v18 = *(v0 + 328);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    *(v0 + 72) = 1;
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    swift_task_create();

    sub_1A7CC9970(v18, &unk_1EB2B61C0);
    *(v0 + 160) = v20;
    *(v0 + 168) = v19;
    sub_1A7E22D40();
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    sub_1A7E23170();
    *(v0 + 176) = v22;
    *(v0 + 184) = v21;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1A7D44518, 0, 0);
  }
}

uint64_t sub_1A7D44BB4()
{
  v1 = v0[25];
  (*(v0[38] + 8))(v0[39], v0[37]);

  return MEMORY[0x1EEE6DFA0](sub_1A7D44C30, v1, 0);
}

uint64_t sub_1A7D44C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D44CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1A7D44DA0;

  return sub_1A7D44E98(a4, a5, a6, a7, a8);
}

uint64_t sub_1A7D44DA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7D44E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[37] = a5;
  v6[38] = v5;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D44F30, v5, 0);
}

uint64_t sub_1A7D44F30()
{
  v1 = v0[38];
  v2 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_packetID;
  v3 = *(v1 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_packetID);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  v0[39] = v5;
  if (v4)
  {
    __break(1u);
  }

  v11 = v0[34];
  *(v1 + v2) = v5;
  ObjectType = swift_getObjectType();
  v0[40] = ObjectType;
  v10 = (*(v11 + 40) + **(v11 + 40));
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_1A7D450A8;
  v8 = v0[34];

  return v10(v0 + 9, ObjectType, v8);
}

uint64_t sub_1A7D450A8()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A7D451E4, v1, 0);
}

uint64_t sub_1A7D451E4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  v3 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn;
  *(v0 + 336) = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn;
  v4 = *(v1 + v3);

  *(v0 + 344) = v4(v5);

  *(v0 + 352) = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_lburst;
  sub_1A7CEB448(v0 + 16, v0 + 128);
  v6 = sub_1A7E22040();
  v7 = sub_1A7E228F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 312);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v8;
    *(v9 + 12) = 256;
    *(v9 + 14) = *(v0 + 16);
    sub_1A7CEB5C8(v0 + 16);
    _os_log_impl(&dword_1A7AD9000, v6, v7, "    send burst packet %llu on link %hhd", v9, 0xFu);
    MEMORY[0x1AC5654B0](v9, -1, -1);
  }

  else
  {
    sub_1A7CEB5C8(v0 + 16);
  }

  v10 = *(v0 + 312);
  v19 = *(v0 + 272);

  *(v0 + 67) = 1;
  *(v0 + 240) = sub_1A7DF6EAC((v0 + 67), (v0 + 68));
  *(v0 + 248) = v11 & 0xFFFFFFFFFFFFFFLL;
  *(v0 + 256) = bswap64(v10);
  sub_1A7DF6EAC((v0 + 256), (v0 + 264));
  sub_1A7E21A30();
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v18 = (*(v19 + 32) + **(v19 + 32));
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *v14 = v0;
  v14[1] = sub_1A7D45488;
  v15 = *(v0 + 320);
  v16 = *(v0 + 272);

  return v18(v12, v13, v15, v16);
}

uint64_t sub_1A7D45488()
{
  v1 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1A7D455C4, v1, 0);
}

uint64_t sub_1A7D455C4()
{
  v1 = v0[37];
  v2 = *(v1 + 120);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  *(v1 + 120) = v4;
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_1A7D456A0;
  v6 = v0[39];
  v7 = v0[35];
  v8 = v0[36];

  return sub_1A7D42658(v6, v7, v8);
}

uint64_t sub_1A7D456A0(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 376) = v2;

  if (v2)
  {
    v7 = *(v6 + 304);
    v8 = sub_1A7D45AB8;
  }

  else
  {
    v9 = *(v6 + 304);
    sub_1A7CC7E50(a1, a2);
    sub_1A7CEB5C8(v6 + 16);
    v8 = sub_1A7D45830;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A7D45830()
{
  v1 = *(v0 + 296);
  v2 = *(*(v0 + 304) + *(v0 + 336));

  *(v0 + 384) = v2(v3);

  return MEMORY[0x1EEE6DFA0](sub_1A7D458F0, v1, 0);
}

uint64_t sub_1A7D458F0()
{
  v1 = *(v0 + 296);
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A7CCD7F8(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1A7CCD7F8((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 384) - *(v0 + 344);
  *(v2 + 2) = v5 + 1;
  *&v2[8 * v5 + 32] = v7;
  *(v1 + 112) = v2;
  v8 = *(v6 + 128);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  v11 = *(v0 + 304);
  *(v6 + 128) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A7D45A2C, v11, 0);
}

uint64_t sub_1A7D45A2C()
{
  sub_1A7CC7E50(v0[30], v0[31]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7D45AB8()
{
  sub_1A7CEB448(v0 + 16, v0 + 184);
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 376);
  if (v3)
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 256;
    sub_1A7CEB5C8(v0 + 16);
    *(v6 + 14) = *(v0 + 16);
    sub_1A7CEB5C8(v0 + 16);
    _os_log_impl(&dword_1A7AD9000, v1, v2, "    never received burst packet ack for %llu on link %hhd", v6, 0xFu);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  else
  {
    sub_1A7CEB5C8(v0 + 16);
    sub_1A7CEB5C8(v0 + 16);
  }

  sub_1A7CC7E50(*(v0 + 240), *(v0 + 248));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A7D45C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D45CBC, v3, 0);
}

uint64_t sub_1A7D45CBC()
{
  v1 = *(v0 + 168);
  v8 = *(v0 + 160);
  *(v0 + 67) = 2;
  *(v0 + 128) = sub_1A7DF6EAC((v0 + 67), (v0 + 68));
  *(v0 + 136) = v2 & 0xFFFFFFFFFFFFFFLL;
  *(v0 + 144) = bswap64(v1);
  sub_1A7DF6EAC((v0 + 144), (v0 + 152));
  sub_1A7E21A30();
  ObjectType = swift_getObjectType();
  *(v0 + 184) = ObjectType;
  v7 = (*(v8 + 40) + **(v8 + 40));
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1A7D45E68;
  v5 = *(v0 + 160);

  return v7(v0 + 72, ObjectType, v5);
}

uint64_t sub_1A7D45E68()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  v3 = *(v1 + 88);
  *(v1 + 16) = *(v1 + 72);
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v1 + 104);
  *(v1 + 63) = *(v1 + 119);
  sub_1A7CEB5C8(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A7D45FD0, v2, 0);
}

uint64_t sub_1A7D45FD0()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v0[25] = v3;
  v0[26] = v2;
  v8 = (*(v1 + 32) + **(v1 + 32));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1A7D46118;
  v5 = v0[23];
  v6 = v0[20];

  return v8(v3, v2, v5, v6);
}

uint64_t sub_1A7D46118()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1A7D46254, v1, 0);
}

uint64_t sub_1A7D46254()
{
  sub_1A7CC7E50(v0[25], v0[26]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A7D462E0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 67) = a3;
  *(v4 + 168) = a1;
  sub_1A7CC7FFC(&qword_1EB2B4A50);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D46390, v3, 0);
}

uint64_t sub_1A7D46390()
{
  *(v0 + 208) = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_lburst;
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "received stats test packet", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 184);

  swift_beginAccess();
  v5 = *(v4 + 112);
  if (*(v5 + 16) && (v6 = sub_1A7CD1580(*(v0 + 67)), (v7 & 1) != 0))
  {
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(*(v5 + 56) + 8 * v6);
    *(v0 + 216) = v10;

    v11 = sub_1A7D5149C(v9, v8);
    *(v0 + 68) = v11;
    if ((v11 & 0x100) == 0)
    {
      v12 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
      *(v0 + 224) = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
      v13 = *(v10 + v12 + 8);
      ObjectType = swift_getObjectType();
      v24 = (*(v13 + 40) + **(v13 + 40));
      v15 = swift_task_alloc();
      *(v0 + 232) = v15;
      *v15 = v0;
      v15[1] = sub_1A7D466F0;

      return v24(v0 + 72, ObjectType, v13);
    }

    v21 = sub_1A7E22040();
    v22 = sub_1A7E228F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A7AD9000, v21, v22, "no type", v23, 2u);
      MEMORY[0x1AC5654B0](v23, -1, -1);
    }
  }

  else
  {
    v17 = sub_1A7E22040();
    v18 = sub_1A7E228F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v17, v18, "no link", v19, 2u);
      MEMORY[0x1AC5654B0](v19, -1, -1);
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A7D466F0()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1A7D46800, v1, 0);
}

uint64_t sub_1A7D46800()
{
  v57 = v0;
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  sub_1A7CEB5C8(v0 + 16);
  v2 = *(v0 + 68);
  if (*(v0 + 24) == 1)
  {
    if ((v2 - 1) <= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v2 == 2)
  {
LABEL_12:
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A7AD9000, v16, v17, "is burst ack packet", v18, 2u);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

    v20 = *(v0 + 168);
    v19 = *(v0 + 176);

    v21 = sub_1A7D516A0(v20, v19);
    if (v22)
    {
      goto LABEL_33;
    }

    v32 = v21;
    v33 = *(v0 + 200);
    v34 = *(v0 + 184) + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID;
    os_unfair_lock_lock(v34);
    sub_1A7D46F8C((v34 + 8), v32, v33);
    os_unfair_lock_unlock(v34);
    goto LABEL_26;
  }

  if (v2 != 1)
  {
LABEL_16:
    sub_1A7D5164C(*(v0 + 168), *(v0 + 176));
    v23 = sub_1A7E22040();
    v24 = sub_1A7E228F0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 176);
    if (!v25)
    {
      v35 = *(v0 + 168);

      sub_1A7CC7E50(v35, v26);
      goto LABEL_34;
    }

    v27 = *(v0 + 68);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v56 = v29;
    *v28 = 16777986;
    *(v28 + 4) = v27;
    *(v28 + 5) = 2048;
    v30 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v36 = *(*(v0 + 168) + 16);
        v37 = *(*(v0 + 168) + 24);
        v38 = __OFSUB__(v37, v36);
        v31 = v37 - v36;
        if (v38)
        {
          __break(1u);
LABEL_26:
          v39 = *(v0 + 192);
          sub_1A7CD1F00(*(v0 + 200), v39, &qword_1EB2B4A50);
          v40 = sub_1A7CC7FFC(&qword_1EB2B61D0);
          v41 = *(v40 - 8);
          v42 = (*(v41 + 48))(v39, 1, v40);
          v43 = *(v0 + 192);
          v44 = *(v0 + 200);
          if (v42 == 1)
          {
            sub_1A7CC9970(*(v0 + 200), &qword_1EB2B4A50);

            sub_1A7CC9970(v43, &qword_1EB2B4A50);
          }

          else
          {
            v54 = *(v0 + 168);
            v55 = *(v0 + 176);
            *(v0 + 152) = v54;
            *(v0 + 160) = v55;
            sub_1A7D5164C(v54, v55);
            sub_1A7E22620();

            sub_1A7CC9970(v44, &qword_1EB2B4A50);
            (*(v41 + 8))(v43, v40);
          }

LABEL_34:

          v53 = *(v0 + 8);

          return v53();
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v45 = *(v0 + 168);
      v46 = *(v0 + 172);
      v38 = __OFSUB__(v46, v45);
      LODWORD(v31) = v46 - v45;
      if (v38)
      {
        __break(1u);
        goto LABEL_39;
      }

      v31 = v31;
    }

    else
    {
      v31 = *(v0 + 182);
    }

    *(v28 + 7) = v31;
    *(v28 + 15) = 2080;
    v47 = sub_1A7E219F0();
    v48 = [v47 __imHexString];

    if (v48)
    {
      sub_1A7CC7E50(*(v0 + 168), *(v0 + 176));
      v49 = sub_1A7E22290();
      v51 = v50;

      v52 = sub_1A7B0CB38(v49, v51, &v56);

      *(v28 + 17) = v52;
      _os_log_impl(&dword_1A7AD9000, v23, v24, "unrecognized burst packet type: %hhu %ld %s", v28, 0x19u);
      sub_1A7B0CD6C(v29);
      MEMORY[0x1AC5654B0](v29, -1, -1);
      MEMORY[0x1AC5654B0](v28, -1, -1);

LABEL_33:

      goto LABEL_34;
    }

LABEL_39:
    result = sub_1A7CC7E50(*(v0 + 168), *(v0 + 176));
    __break(1u);
    return result;
  }

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "is burst packet", v5, 2u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);

  v8 = sub_1A7D516A0(v7, v6);
  if (v9)
  {
    goto LABEL_33;
  }

  v10 = v8;
  v11 = (*(v0 + 216) + *(v0 + 224));
  v12 = *v11;
  *(v0 + 240) = *v11;
  v13 = v11[1];
  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v14[1] = sub_1A7D46DF0;

  return sub_1A7D45C28(v12, v13, v10);
}

uint64_t sub_1A7D46DF0()
{
  v1 = *(*v0 + 184);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1A7D46F1C, v1, 0);
}

uint64_t sub_1A7D46F1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D46F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v21 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v21 - v14;
  v16 = *a1;
  if (!*(*a1 + 16))
  {
    return (*(v11 + 56))(a3, 1, 1, v10, v13);
  }

  v17 = sub_1A7CD14B8(a2);
  if ((v18 & 1) == 0)
  {
    return (*(v11 + 56))(a3, 1, 1, v10, v13);
  }

  (*(v11 + 16))(v15, *(v16 + 56) + *(v11 + 72) * v17, v10);
  (*(v11 + 32))(a3, v15, v10);
  v19 = *(v11 + 56);
  v19(v9, 1, 1, v10);
  sub_1A7CC911C(v9, a2);
  return (v19)(a3, 0, 1, v10);
}

uint64_t sub_1A7D47310(void *a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;

  v8 = sub_1A7E21A10();
  v10 = v9;

  v4[4] = v8;
  v4[5] = v10;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1A7D473FC;

  return sub_1A7D462E0(v8, v10, a2);
}

uint64_t sub_1A7D473FC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *v0;

  sub_1A7CC7E50(v3, v2);

  if (v4)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1A7D47584(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 104) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D475AC, v3, 0);
}

uint64_t sub_1A7D475AC()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1A7CD1580(*(v0 + 104)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 80);
    v6 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 88) = v6;
    v7 = *(v5 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

    *(v0 + 96) = v7(v8);

    return MEMORY[0x1EEE6DFA0](sub_1A7D476BC, v6, 0);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A7D476BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 96) + 0.0;
  v6 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_statsRequestStartTimesByID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_1A7DC52F4(v4, v3, isUniquelyReferenced_nonNull_native, v5);
  *(v2 + v6) = v9;
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1A7D477A4, v1, 0);
}

uint64_t sub_1A7D477A4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 104);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_1A7DC561C(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v7;
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A7D47A08(int a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1A7E22290();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1A7D47AEC;

  return sub_1A7D47584(v6, v8, a2);
}

uint64_t sub_1A7D47AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  if (v2)
  {
    v4 = *(v1 + 24);
    v4[2](v4);
    _Block_release(v4);
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1A7D47C54(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 104) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D47C7C, v3, 0);
}

uint64_t sub_1A7D47C7C()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1A7CD1580(*(v0 + 104)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 80);
    v6 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 88) = v6;
    v7 = *(v5 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

    *(v0 + 96) = v7(v8);

    return MEMORY[0x1EEE6DFA0](sub_1A7D47D8C, v6, 0);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A7D47D8C()
{
  v1 = *(v0 + 80);
  sub_1A7D3FD34(*(v0 + 64), *(v0 + 72), *(v0 + 96) + 0.0);

  return MEMORY[0x1EEE6DFA0](sub_1A7D547A4, v1, 0);
}

uint64_t sub_1A7D47F98(int a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1A7E22290();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1A7D547B8;

  return sub_1A7D47C54(v6, v8, a2);
}

uint64_t sub_1A7D4809C()
{
  if (qword_1EB2B2D48 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  *(v0 + 56) = sub_1A7B0CB00(v1, qword_1EB2B2D50);
  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "generating compact report...", v4, 2u);
    MEMORY[0x1AC5654B0](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A7D481C0, v5, 0);
}

uint64_t sub_1A7D481C0()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_report;
  swift_beginAccess();
  *(v0 + 64) = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1A7D48250, 0, 0);
}

uint64_t sub_1A7D48250()
{
  v6 = v0;
  v1 = v0[7];
  v5 = v0[8];
  sub_1A7D96B84(v1, &v5, v0 + 5);

  v5 = v0[5];
  v2 = IDSLinksCompactQualityReport.asArray.getter();

  v3 = v0[1];

  return v3(v2);
}

void _IDSLinksQualityMeasurer.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void _IDSLinksQualityMeasurer.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t _IDSLinksQualityMeasurer.deinit()
{

  v1 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_lburst;
  v2 = sub_1A7E22060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A7CC9970(v0 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_continuationsByPacketID + 8, &qword_1EB2B61D8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t _IDSLinksQualityMeasurer.__deallocating_deinit()
{
  _IDSLinksQualityMeasurer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A7D48518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EAF420 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7D485AC(uint64_t a1)
{
  v2 = sub_1A7D5186C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D485E8(uint64_t a1)
{
  v2 = sub_1A7D5186C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _IDSLinksQualityMeasurerSyncToken.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A7CC7FFC(&qword_1EB2B61E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v10 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D5186C();
  sub_1A7E23260();
  v10[1] = *(v2 + OBJC_IVAR____TtC13IDSFoundation33_IDSLinksQualityMeasurerSyncToken_tokensByLinkUUID);
  sub_1A7CC7FFC(&qword_1EB2B61F8);
  sub_1A7D518C0();
  sub_1A7E23030();
  return (*(v5 + 8))(v8, v4);
}

void *_IDSLinksQualityMeasurerSyncToken.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_1A7CC7FFC(&qword_1EB2B6218);
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = sub_1A7CC9878(a1, a1[3]);
  sub_1A7D5186C();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v14;
    sub_1A7CC7FFC(&qword_1EB2B61F8);
    sub_1A7D51A1C();
    sub_1A7E22F30();
    *&v3[OBJC_IVAR____TtC13IDSFoundation33_IDSLinksQualityMeasurerSyncToken_tokensByLinkUUID] = v16;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    (*(v11 + 8))(v9, v6);
    sub_1A7B0CD6C(a1);
  }

  return v10;
}

void (*sub_1A7D48AAC(uint64_t a1, unint64_t a2))(unsigned __int8 *, void)
{
  v4 = sub_1A7E21A40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - v11;
  result = sub_1A7D4E834(a1, a2);
  if (v14 == 1)
  {
    v15 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
LABEL_17:
        v23 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16) <= v16)
        {
          v24 = v16;
        }

        else
        {
          v24 = *(MEMORY[0x1E69E7CC0] + 16);
        }

LABEL_20:
        v26 = sub_1A7D4E688(0, v24, 0, v23);
        sub_1A7E21A50();
        v42 = v5;
        (*(v5 + 32))(v8, v12, v4);
        v45 = 0;
        v46 = 0;
        v27 = 1;
        while (1)
        {
          sub_1A7D51980(&qword_1EB2B63D0, 255, MEMORY[0x1E6969050]);
          sub_1A7E22A00();
          if (v44)
          {
            goto LABEL_67;
          }

          if ((v43 & 0x80) == 0)
          {
            v31 = v43 + 1;
LABEL_46:
            v35 = *(v26 + 2);
            do
            {
              v36 = v31;
              while (1)
              {
                v37 = *(v26 + 3);
                if (v35 >= v37 >> 1)
                {
                  v26 = sub_1A7D4E688((v37 > 1), v35 + 1, 1, v26);
                }

                v31 = v36 >> 8;
                *(v26 + 2) = v35 + 1;
                v26[v35 + 32] = v36 - 1;
                if ((v27 & ((v36 - 1) < 0)) == 1)
                {
                  break;
                }

                ++v35;
                v38 = v36 >= 0x100;
                v36 >>= 8;
                if (!v38)
                {
                  goto LABEL_55;
                }
              }

              v39 = 0;
              v27 = 0;
              ++v35;
            }

            while (v36 >= 0x100);
            goto LABEL_56;
          }

          v28 = v45 & 0xFFFFFF00 | v43;
          v32 = 8;
LABEL_29:
          sub_1A7D51980(&qword_1EB2B63D0, 255, MEMORY[0x1E6969050]);
          sub_1A7E22A00();
          if (v44)
          {
            v33 = v32;
          }

          else
          {
            v28 = (v43 << v32) | ((-255 << v32) - 1) & v28;
            v33 = v32 + 8;
            if ((v32 + 8) > 0x1Fu)
            {
              goto LABEL_42;
            }

            sub_1A7E22A00();
            if ((v44 & 1) == 0)
            {
              v28 = (v43 << v33) | ((-255 << v33) - 1) & v28;
              v33 = v32 + 16;
              if ((v32 + 16) > 0x1Fu)
              {
                goto LABEL_42;
              }

              sub_1A7E22A00();
              if ((v44 & 1) == 0)
              {
                v28 = (v43 << v33) | ((-255 << v33) - 1) & v28;
                v33 = v32 + 24;
                if ((v32 + 24) > 0x1Fu)
                {
                  goto LABEL_42;
                }

                sub_1A7E22A00();
                if ((v44 & 1) == 0)
                {
                  v28 = (v43 << v33) | ((-255 << v33) - 1) & v28;
                  v33 = v32 + 32;
                  if (v32 < 0xE0u)
                  {
                    goto LABEL_42;
                  }

                  sub_1A7E22A00();
                  if ((v44 & 1) == 0)
                  {
                    v28 = (v43 << v32) | ((-255 << v32) - 1) & v28;
                    v33 = v32 + 40;
                    goto LABEL_42;
                  }
                }
              }
            }
          }

          if (!v33)
          {
LABEL_67:
            (*(v42 + 8))(v8, v4);
            v17 = sub_1A7E22330();

            return v17;
          }

LABEL_42:
          if ((v28 & 0xC0E0) == 0x80C0)
          {
            if ((v28 & 0x1E) == 0)
            {
              goto LABEL_66;
            }

            v34 = 16;
          }

          else if ((v28 & 0xC0C0F0) == 0x8080E0)
          {
            if ((v28 & 0x200F) == 0 || (v28 & 0x200F) == 0x200D)
            {
              goto LABEL_66;
            }

            v34 = 24;
          }

          else
          {
            if ((v28 & 0xC0C0C0F8) != 0x808080F0 || (v28 & 0x3007) == 0 || __rev16(v28 & 0x3007) > 0x400)
            {
LABEL_66:
              v40 = sub_1A7E23270();
              v45 = v28 >> ((8 * v40) & 0x38);
              v46 = v33 - 8 * v40;
              (*(v42 + 8))(v8, v4);

              return 0;
            }

            v34 = 32;
          }

          v45 = v28 >> v34;
          v46 = v33 - v34;
          v31 = ((1 << (v34 >> 1) << (v34 >> 1)) - 1) & (v28 + 16843009);
          if (v31)
          {
            goto LABEL_46;
          }

LABEL_55:
          while (1)
          {
            v39 = v27;
LABEL_56:
            v32 = v46;
            v27 = v39;
            if (!v46)
            {
              break;
            }

            v28 = v45;
            if ((v45 & 0x80) != 0)
            {
              goto LABEL_29;
            }

            sub_1A7D544A0();
            result = sub_1A7D2C854();
            v30 = *(v29 + 4);
            if (!v30)
            {
              goto LABEL_71;
            }

            *v29 >>= 8;
            *(v29 + 4) = v30 - 8;
            result(&v43, 0);
            v31 = (v28 + 1);
            if (v28 != 0xFF)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v20 = *(a1 + 16);
      v19 = *(a1 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (!v21)
      {
        v23 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16) <= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        v16 = BYTE6(a2);
        goto LABEL_17;
      }

      v25 = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v23 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16) <= v25)
        {
          v24 = v25;
        }

        else
        {
          v24 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = v14;
    sub_1A7CC7E50(a1, a2);
    if (!v18)
    {
      return 0;
    }

    return v17;
  }

  return result;
}

uint64_t _IDSLinksQualityMeasurerDelta.json()()
{
  swift_getObjectType();
  if (qword_1EB2B47E0 != -1)
  {
    swift_once();
  }

  sub_1A7D51980(&qword_1EB2B6240, v0, type metadata accessor for _IDSLinksQualityMeasurerDelta);
  return sub_1A7E215E0();
}

id _IDSLinksQualityMeasurerDelta.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A7D49438()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x656B6F54636E7973;
  }
}

uint64_t sub_1A7D4947C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F54636E7973 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A7EAF4C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D49568(uint64_t a1)
{
  v2 = sub_1A7D51FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D495A4(uint64_t a1)
{
  v2 = sub_1A7D51FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1A7D495E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _IDSLinksQualityMeasurerDelta.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A7CC7FFC(&qword_1EB2B6248);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D51FA8();
  sub_1A7E23260();
  v13 = *(v3 + OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken);
  HIBYTE(v12) = 0;
  type metadata accessor for _IDSLinksQualityMeasurerSyncToken();
  sub_1A7D51980(&qword_1EB2B6258, v10, type metadata accessor for _IDSLinksQualityMeasurerSyncToken);
  sub_1A7E23030();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_measurementsByLinkUUID);
    HIBYTE(v12) = 1;
    sub_1A7CC7FFC(&qword_1EB2B6268);
    sub_1A7D52020();
    sub_1A7E23030();
  }

  return (*(v6 + 8))(v9, v5);
}

id _IDSLinksQualityMeasurerDelta.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1A7CC7FFC(&qword_1EB2B6290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &ObjectType - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D51FA8();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for _IDSLinksQualityMeasurerSyncToken();
    v14 = 0;
    sub_1A7D51980(&qword_1EB2B6298, v10, type metadata accessor for _IDSLinksQualityMeasurerSyncToken);
    sub_1A7E22F30();
    *&v1[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken] = v15;
    sub_1A7CC7FFC(&qword_1EB2B6268);
    v14 = 1;
    sub_1A7D52164();
    sub_1A7E22F30();
    *&v1[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_measurementsByLinkUUID] = v15;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1A7B0CD6C(a1);
  }

  return v3;
}

uint64_t sub_1A7D49B68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _IDSLinksQualityMeasurer.delta(since:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1A7E21B60();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1A7CC7FFC(&qword_1EB2B62B8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D49CFC, v1, 0);
}

uint64_t sub_1A7D49CFC()
{
  v1 = *(v0 + 160);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1A7CE4290(MEMORY[0x1E69E7CC0]);
  v4 = sub_1A7CE4478(v2);
  swift_beginAccess();
  v5 = *(v1 + 120);
  *(v0 + 216) = v5;
  v6 = *(v5 + 32);
  *(v0 + 145) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v37 = v3;
  v38 = v4;
  *(v0 + 224) = v4;
  *(v0 + 232) = v3;

  if (v9)
  {
    v10 = 0;
LABEL_8:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = (v9 - 1) & v9;
    v18 = __clz(__rbit64(v9)) | (v10 << 6);
    (*(v15 + 16))(v14, *(v5 + 48) + *(v15 + 72) * v18, v16);
    v19 = *(*(v5 + 56) + 8 * v18);
    v20 = sub_1A7CC7FFC(&qword_1EB2B62C0);
    v21 = *(v20 + 48);
    (*(v15 + 32))(v13, v14, v16);
    *(v13 + v21) = v19;
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v8) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v5 + 72 + 8 * v11++);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v35 = *(v0 + 200);
    v36 = sub_1A7CC7FFC(&qword_1EB2B62C0);
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    v17 = 0;
  }

  *(v0 + 240) = v17;
  *(v0 + 248) = v12;
  v22 = *(v0 + 208);
  sub_1A7CE5028(*(v0 + 200), v22, &qword_1EB2B62B8);
  v23 = sub_1A7CC7FFC(&qword_1EB2B62C0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {

    v24 = type metadata accessor for _IDSLinksQualityMeasurerSyncToken();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC13IDSFoundation33_IDSLinksQualityMeasurerSyncToken_tokensByLinkUUID] = v37;
    *(v0 + 88) = v25;
    *(v0 + 96) = v24;
    v26 = objc_msgSendSuper2((v0 + 88), sel_init);
    v27 = type metadata accessor for _IDSLinksQualityMeasurerDelta();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken] = v26;
    *&v28[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_measurementsByLinkUUID] = v38;
    *(v0 + 104) = v28;
    *(v0 + 112) = v27;
    v29 = objc_msgSendSuper2((v0 + 104), sel_init);

    v30 = *(v0 + 8);

    return v30(v29);
  }

  else
  {
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(*(v0 + 208) + *(v23 + 48));
    *(v0 + 256) = v34;
    (*(v33 + 32))(v32);

    return MEMORY[0x1EEE6DFA0](sub_1A7D4A0E4, v34, 0);
  }
}

uint64_t sub_1A7D4A0E4()
{
  v1 = v0[20];
  v2 = (v0[32] + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport);
  swift_beginAccess();
  v0[33] = v2[9];
  v0[34] = v2[10];
  v0[35] = v2[11];

  return MEMORY[0x1EEE6DFA0](sub_1A7D4A18C, v1, 0);
}

uint64_t sub_1A7D4A18C()
{
  *(v0 + 64) = *(v0 + 264);
  v1 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 280);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC13IDSFoundation33_IDSLinksQualityMeasurerSyncToken_tokensByLinkUUID), *(v2 + 16)) && (v3 = sub_1A7CD14FC(*(v0 + 184)), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 168);
  *(v0 + 136) = v6;
  *(v0 + 144) = v5;
  sub_1A7DF2EE0(v0 + 136, (v0 + 120));

  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A7DC5ABC(v12, v9, isUniquelyReferenced_nonNull_native);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A7DC58F0(v13, v9, v15);

  v16 = (*(v10 + 8))(v9, v11);
  v19 = *(v0 + 240);
  v20 = *(v0 + 248);
  v50 = v7;
  v51 = v8;
  *(v0 + 224) = v8;
  *(v0 + 232) = v7;
  if (!v19)
  {
    v22 = ((1 << *(v0 + 145)) + 63) >> 6;
    if (v22 <= (v20 + 1))
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = ((1 << *(v0 + 145)) + 63) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v48 = *(v0 + 200);
        v49 = sub_1A7CC7FFC(&qword_1EB2B62C0);
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        v30 = 0;
        goto LABEL_17;
      }

      v21 = *(v0 + 216);
      v19 = *(v21 + 8 * v25 + 64);
      ++v20;
      if (v19)
      {
        v20 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  v21 = *(v0 + 216);
LABEL_16:
  v26 = *(v0 + 192);
  v27 = *(v0 + 200);
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  v30 = (v19 - 1) & v19;
  v31 = __clz(__rbit64(v19)) | (v20 << 6);
  (*(v29 + 16))(v26, *(v21 + 48) + *(v29 + 72) * v31, v28);
  v32 = *(*(v21 + 56) + 8 * v31);
  v33 = sub_1A7CC7FFC(&qword_1EB2B62C0);
  v34 = *(v33 + 48);
  (*(v29 + 32))(v27, v26, v28);
  *(v27 + v34) = v32;
  (*(*(v33 - 8) + 56))(v27, 0, 1, v33);

  v24 = v20;
LABEL_17:
  *(v0 + 240) = v30;
  *(v0 + 248) = v24;
  v35 = *(v0 + 208);
  sub_1A7CE5028(*(v0 + 200), v35, &qword_1EB2B62B8);
  v36 = sub_1A7CC7FFC(&qword_1EB2B62C0);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
  {
    v46 = *(v0 + 176);
    v45 = *(v0 + 184);
    v47 = *(*(v0 + 208) + *(v36 + 48));
    *(v0 + 256) = v47;
    (*(v46 + 32))(v45);
    v16 = sub_1A7D4A0E4;
    v17 = v47;
    v18 = 0;

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  v37 = type metadata accessor for _IDSLinksQualityMeasurerSyncToken();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC13IDSFoundation33_IDSLinksQualityMeasurerSyncToken_tokensByLinkUUID] = v50;
  *(v0 + 88) = v38;
  *(v0 + 96) = v37;
  v39 = objc_msgSendSuper2((v0 + 88), sel_init);
  v40 = type metadata accessor for _IDSLinksQualityMeasurerDelta();
  v41 = objc_allocWithZone(v40);
  *&v41[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken] = v39;
  *&v41[OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_measurementsByLinkUUID] = v51;
  *(v0 + 104) = v41;
  *(v0 + 112) = v40;
  v42 = objc_msgSendSuper2((v0 + 104), sel_init);

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t _IDSLinksQualityMeasurer.importDelta(_:sourceName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1A7E21B60();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_1A7CC7FFC(&qword_1EB2B62C8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D4A748, v3, 0);
}

uint64_t sub_1A7D4A748()
{
  v82 = v0;
  if (qword_1EB2B2D48 != -1)
  {
LABEL_38:
    swift_once();
  }

  v1 = sub_1A7E22060();
  *(v0 + 224) = sub_1A7B0CB00(v1, qword_1EB2B2D50);

  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v81 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A7B0CB38(v5, v4, &v81);
    _os_log_impl(&dword_1A7AD9000, v2, v3, "importing delta from %s...", v6, 0xCu);
    sub_1A7B0CD6C(v7);
    MEMORY[0x1AC5654B0](v7, -1, -1);
    MEMORY[0x1AC5654B0](v6, -1, -1);
  }

  v8 = *(*(v0 + 128) + OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_measurementsByLinkUUID);
  *(v0 + 232) = v8;
  v9 = *(v8 + 32);
  *(v0 + 58) = v9;
  v10 = 1 << v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);

  swift_beginAccess();
  for (i = 0; ; i = *(v0 + 248))
  {
    if (!v12)
    {
      v15 = ((1 << *(v0 + 58)) + 63) >> 6;
      if (v15 <= (i + 1))
      {
        v16 = i + 1;
      }

      else
      {
        v16 = ((1 << *(v0 + 58)) + 63) >> 6;
      }

      v17 = v16 - 1;
      while (1)
      {
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          v54 = *(v0 + 208);
          v55 = sub_1A7CC7FFC(&qword_1EB2B62D0);
          (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
          v24 = 0;
          goto LABEL_20;
        }

        v14 = *(v0 + 232);
        v12 = *(v14 + 8 * v18 + 64);
        ++i;
        if (v12)
        {
          i = v18;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    v14 = *(v0 + 232);
LABEL_19:
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v23 = __clz(__rbit64(v12));
    v24 = (v12 - 1) & v12;
    v25 = v23 | (i << 6);
    (*(v22 + 16))(v20, *(v14 + 48) + *(v22 + 72) * v25, v21);
    v26 = *(*(v14 + 56) + 8 * v25);
    v27 = sub_1A7CC7FFC(&qword_1EB2B62D0);
    v28 = *(v27 + 48);
    (*(v22 + 32))(v19, v20, v21);
    *(v19 + v28) = v26;
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);

    v17 = i;
LABEL_20:
    *(v0 + 240) = v24;
    *(v0 + 248) = v17;
    v29 = *(v0 + 216);
    sub_1A7CE5028(*(v0 + 208), v29, &qword_1EB2B62C8);
    v30 = sub_1A7CC7FFC(&qword_1EB2B62D0);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      break;
    }

    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v35 = *(*(v0 + 216) + *(v30 + 48));
    *(v0 + 256) = v35;
    (*(v33 + 32))(v31);
    v36 = *(v33 + 16);
    v36(v32, v31, v34);
    v37 = sub_1A7E22040();
    v38 = sub_1A7E228F0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 168);
    v79 = v36;
    if (v39)
    {
      v77 = v35;
      v43 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81 = v76;
      *v43 = 136315138;
      sub_1A7D51980(&qword_1EB2B62D8, 255, MEMORY[0x1E69695A8]);
      v44 = sub_1A7E23090();
      v46 = v45;
      v47 = *(v42 + 8);
      v47(v40, v41);
      v48 = sub_1A7B0CB38(v44, v46, &v81);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1A7AD9000, v37, v38, "  importing delta for link %s...", v43, 0xCu);
      sub_1A7B0CD6C(v76);
      MEMORY[0x1AC5654B0](v76, -1, -1);
      v49 = v43;
      v35 = v77;
      MEMORY[0x1AC5654B0](v49, -1, -1);
    }

    else
    {

      v47 = *(v42 + 8);
      v47(v40, v41);
    }

    *(v0 + 264) = v47;
    v50 = *(*(v0 + 152) + 120);
    if (*(v50 + 16))
    {
      v51 = *(v0 + 192);

      v52 = sub_1A7CD14FC(v51);
      if (v53)
      {
        v78 = v47;
        v58 = *(v0 + 192);
        v59 = *(v0 + 176);
        v60 = *(v0 + 160);
        v61 = *(*(v50 + 56) + 8 * v52);
        *(v0 + 272) = v61;

        v79(v59, v58, v60);

        v62 = sub_1A7E22040();
        v63 = sub_1A7E228F0();

        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 176);
        v66 = *(v0 + 160);
        if (v64)
        {
          v67 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = v80;
          *v67 = 136315394;
          sub_1A7D51980(&qword_1EB2B62D8, 255, MEMORY[0x1E69695A8]);
          v68 = v35;
          v69 = sub_1A7E23090();
          v71 = v70;
          v78(v65, v66);
          v72 = sub_1A7B0CB38(v69, v71, &v81);

          *(v67 + 4) = v72;
          *(v67 + 12) = 2080;
          v73 = MEMORY[0x1AC561E20](v68, &type metadata for IDSLinkQualityReportMeasurement);
          v75 = sub_1A7B0CB38(v73, v74, &v81);

          *(v67 + 14) = v75;
          _os_log_impl(&dword_1A7AD9000, v62, v63, "  got link for unique id %s; %s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v80, -1, -1);
          MEMORY[0x1AC5654B0](v67, -1, -1);
        }

        else
        {

          v78(v65, v66);
        }

        return MEMORY[0x1EEE6DFA0](sub_1A7D4AFE8, v61, 0);
      }
    }

    (*(v0 + 264))(*(v0 + 192), *(v0 + 160));
    v12 = *(v0 + 240);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1A7D4AFE8()
{
  v52 = v0;
  v1 = *(v0 + 256);
  v2 = *(v1 + 16);
  if (v2)
  {
    v49 = *(v0 + 272) + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
    v3 = (v1 + 72);
    do
    {
      v48 = v2;
      v5 = *(v3 - 5);
      v4 = *(v3 - 4);
      v6 = v3;
      v7 = *(v3 - 3);
      v8 = *(v3 - 2);
      v9 = *(v6 - 1);
      v46 = v6;
      v10 = *v6;
      sub_1A7D52320(v5, v4, v7, v8, v9, *v6);

      sub_1A7D52320(v5, v4, v7, v8, v9, v10);
      v11 = sub_1A7E22040();
      v12 = sub_1A7E228F0();
      v13 = v4;
      v14 = v4;
      v15 = v7;
      v16 = v7;
      v17 = v8;
      v18 = v8;
      v19 = v9;
      v47 = v10;
      sub_1A7D52368(v5, v14, v16, v18, v9, v10);

      v45 = v12;
      v20 = v11;
      v50 = v5;
      if (os_log_type_enabled(v11, v12))
      {
        v42 = *(v0 + 136);
        v43 = *(v0 + 144);
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v21 = 136315394;
        *(v0 + 16) = v5;
        *(v0 + 24) = v13;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
        v22 = v17;
        v23 = v19;
        *(v0 + 48) = v19;
        v24 = v47;
        *(v0 + 56) = v47;
        v25 = v13;
        sub_1A7D52320(v5, v13, v15, v22, v23, v47);
        v26 = sub_1A7E222F0();
        v28 = sub_1A7B0CB38(v26, v27, &v51);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2080;
        *(v0 + 112) = v42;
        *(v0 + 120) = v43;

        v29 = sub_1A7E222F0();
        v31 = sub_1A7B0CB38(v29, v30, &v51);

        *(v21 + 14) = v31;
        _os_log_impl(&dword_1A7AD9000, v20, v45, "adding measurement %s from %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v44, -1, -1);
        MEMORY[0x1AC5654B0](v21, -1, -1);

        v32 = v25;
      }

      else
      {

        v32 = v13;
        v22 = v17;
        v23 = v9;
        v24 = v47;
      }

      swift_beginAccess();
      v33 = *(v49 + 88);

      sub_1A7D52320(v50, v32, v15, v22, v23, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 88) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1A7CCCFA0(0, *(v33 + 2) + 1, 1, v33);
        *(v49 + 88) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1A7CCCFA0((v35 > 1), v36 + 1, 1, v33);
      }

      v3 = v46 + 24;
      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      *(v33 + 2) = v36 + 1;
      v39 = &v33[64 * v36];
      *(v39 + 4) = v38;
      *(v39 + 5) = v37;
      *(v39 + 6) = v50;
      *(v39 + 7) = v32;
      *(v39 + 8) = v15;
      *(v39 + 9) = v22;
      *(v39 + 10) = v23;
      *(v39 + 44) = v24;
      *(v49 + 88) = v33;
      swift_endAccess();
      sub_1A7D52368(v50, v32, v15, v22, v23, v24);
      v2 = v48 - 1;
    }

    while (v48 != 1);
  }

  v40 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4B3DC, v40, 0);
}

uint64_t sub_1A7D4B3DC()
{
  v73 = v0;

  while (1)
  {
    v1 = (*(v0 + 264))(*(v0 + 192), *(v0 + 160));
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    if (!v4)
    {
      v7 = ((1 << *(v0 + 58)) + 63) >> 6;
      if (v7 <= (v5 + 1))
      {
        v8 = v5 + 1;
      }

      else
      {
        v8 = ((1 << *(v0 + 58)) + 63) >> 6;
      }

      v9 = v8 - 1;
      while (1)
      {
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v10 >= v7)
        {
          v45 = *(v0 + 208);
          v46 = sub_1A7CC7FFC(&qword_1EB2B62D0);
          (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
          v15 = 0;
          goto LABEL_14;
        }

        v6 = *(v0 + 232);
        v4 = *(v6 + 8 * v10 + 64);
        ++v5;
        if (v4)
        {
          v5 = v10;
          goto LABEL_13;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v6 = *(v0 + 232);
LABEL_13:
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = (v4 - 1) & v4;
    v16 = __clz(__rbit64(v4)) | (v5 << 6);
    (*(v14 + 16))(v12, *(v6 + 48) + *(v14 + 72) * v16, v13);
    v17 = *(*(v6 + 56) + 8 * v16);
    v18 = sub_1A7CC7FFC(&qword_1EB2B62D0);
    v19 = *(v18 + 48);
    (*(v14 + 32))(v11, v12, v13);
    *(v11 + v19) = v17;
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);

    v9 = v5;
LABEL_14:
    *(v0 + 240) = v15;
    *(v0 + 248) = v9;
    v20 = *(v0 + 216);
    sub_1A7CE5028(*(v0 + 208), v20, &qword_1EB2B62C8);
    v21 = sub_1A7CC7FFC(&qword_1EB2B62D0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      break;
    }

    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    v26 = *(*(v0 + 216) + *(v21 + 48));
    *(v0 + 256) = v26;
    (*(v24 + 32))(v22);
    v27 = *(v24 + 16);
    v27(v23, v22, v25);
    v28 = sub_1A7E22040();
    v29 = sub_1A7E228F0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    v70 = v27;
    if (v30)
    {
      v68 = v26;
      v34 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72 = v67;
      *v34 = 136315138;
      sub_1A7D51980(&qword_1EB2B62D8, 255, MEMORY[0x1E69695A8]);
      v35 = sub_1A7E23090();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v31, v32);
      v39 = sub_1A7B0CB38(v35, v37, &v72);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1A7AD9000, v28, v29, "  importing delta for link %s...", v34, 0xCu);
      sub_1A7B0CD6C(v67);
      MEMORY[0x1AC5654B0](v67, -1, -1);
      v40 = v34;
      v26 = v68;
      MEMORY[0x1AC5654B0](v40, -1, -1);
    }

    else
    {

      v38 = *(v33 + 8);
      v38(v31, v32);
    }

    *(v0 + 264) = v38;
    v41 = *(*(v0 + 152) + 120);
    if (*(v41 + 16))
    {
      v42 = *(v0 + 192);

      v43 = sub_1A7CD14FC(v42);
      if ((v44 & 1) == 0)
      {

        goto LABEL_2;
      }

      v69 = v38;
      v49 = *(v0 + 192);
      v50 = *(v0 + 176);
      v51 = *(v0 + 160);
      v52 = *(*(v41 + 56) + 8 * v43);
      *(v0 + 272) = v52;

      v70(v50, v49, v51);

      v53 = sub_1A7E22040();
      v54 = sub_1A7E228F0();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 176);
      v57 = *(v0 + 160);
      if (v55)
      {
        v58 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = v71;
        *v58 = 136315394;
        sub_1A7D51980(&qword_1EB2B62D8, 255, MEMORY[0x1E69695A8]);
        v59 = v26;
        v60 = sub_1A7E23090();
        v62 = v61;
        v69(v56, v57);
        v63 = sub_1A7B0CB38(v60, v62, &v72);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        v64 = MEMORY[0x1AC561E20](v59, &type metadata for IDSLinkQualityReportMeasurement);
        v66 = sub_1A7B0CB38(v64, v65, &v72);

        *(v58 + 14) = v66;
        _os_log_impl(&dword_1A7AD9000, v53, v54, "  got link for unique id %s; %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v71, -1, -1);
        MEMORY[0x1AC5654B0](v58, -1, -1);
      }

      else
      {

        v69(v56, v57);
      }

      v1 = sub_1A7D4AFE8;
      v2 = v52;
      v3 = 0;

      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

LABEL_2:
  }

  v47 = *(v0 + 8);

  return v47();
}

char *IDSLinksQualityMeasurerDelta.syncToken.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta) + OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken);
  v2 = objc_allocWithZone(IDSLinksQualityMeasurerSyncToken);
  v3 = v1;
  v4 = [v2 init];
  v5 = *&v4[OBJC_IVAR___IDSLinksQualityMeasurerSyncToken_syncToken];
  *&v4[OBJC_IVAR___IDSLinksQualityMeasurerSyncToken_syncToken] = v3;

  return v4;
}

char *static IDSLinksQualityMeasurerDelta.create(withJSON:)()
{
  v0 = _s13IDSFoundation29_IDSLinksQualityMeasurerDeltaC6create4jsonACSg10Foundation4DataV_tFZ_0();
  if (v0)
  {
    v1 = [objc_allocWithZone(IDSLinksQualityMeasurerDelta) init];
    v2 = *&v1[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta];
    *&v1[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta] = v0;
    v0 = v1;
  }

  return v0;
}

uint64_t IDSLinksQualityMeasurerDelta.json()()
{
  v1 = *(v0 + OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta);
  v2 = _IDSLinksQualityMeasurerDelta.json()();

  return v2;
}

uint64_t sub_1A7D4C0C0(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = sub_1A7E21B60();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1A7E21B40();
  v9 = a1;
  v10 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4C1C8, 0, 0);
}

uint64_t sub_1A7D4C1C8()
{
  v1 = *(v0[3] + OBJC_IVAR___IDSLinksQualityMeasurer_measurer);
  v2 = *(v0[2] + OBJC_IVAR___IDSTestableLinkWithScheduler_link);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1A7D4C280;
  v4 = v0[6];

  return sub_1A7D4EA5C(v2, v4, v1);
}

uint64_t sub_1A7D4C280()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  if (v2)
  {
    v9 = *(v1 + 56);
    v9[2](v9);
    _Block_release(v9);
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1A7D4C5D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4C660, 0, 0);
}

uint64_t sub_1A7D4C660()
{
  v1 = *(v0[3] + OBJC_IVAR___IDSLinksQualityMeasurer_measurer);
  v2 = *(v0[2] + OBJC_IVAR___IDSTestableLinkWithScheduler_link);
  v0[5] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1A7D4C72C;

  return sub_1A7D4F930(v2, v1);
}

uint64_t sub_1A7D4C72C()
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

uint64_t sub_1A7D4C8D0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR___IDSLinksQualityMeasurer_measurer);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D4C8FC, v1, 0);
}

uint64_t sub_1A7D4C8FC()
{
  v16 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1A7CE50F8(*(v2 + 16), 0);
    v5 = sub_1A7CE50F4(&v15, v4 + 32, v3, v2);

    result = sub_1A7CC9770();
    if (v5 != v3)
    {
      __break(1u);
      goto LABEL_20;
    }

    v0[7] = v4;
    if (v4 < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v0[7] = MEMORY[0x1E69E7CC0];
    if (v4 < 0)
    {
      goto LABEL_15;
    }
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
LABEL_15:
    result = sub_1A7E22DA0();
    v0[8] = result;
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  result = *(v4 + 16);
  v0[8] = result;
  if (!result)
  {
LABEL_16:

    v14 = v0[1];

    return v14();
  }

LABEL_8:
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v0[9] = 0;
  if ((v0[7] & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1AC562480](0);
  }

  else
  {
  }

  v0[10] = v7;
  v8 = v7 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
  v9 = *(v7 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
  v0[11] = v9;
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1A7D4CB24;
  v13 = v0[6];

  return sub_1A7D503E4(v9, v13, ObjectType, v10);
}

uint64_t sub_1A7D4CB24()
{
  v1 = *(*v0 + 48);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1A7D4CC50, v1, 0);
}

uint64_t sub_1A7D4CC50()
{
  v1 = v0[9];
  v2 = v0[8];

  if (v1 + 1 == v2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    ++v0[9];
    if ((v0[7] & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC562480]();
    }

    else
    {
    }

    v0[10] = v5;
    v6 = v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link;
    v7 = *(v5 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
    v0[11] = v7;
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1A7D4CB24;
    v11 = v0[6];

    return sub_1A7D503E4(v7, v11, ObjectType, v8);
  }
}

uint64_t sub_1A7D4CF1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A7D4CFC4;

  return sub_1A7D4C8B0();
}

uint64_t sub_1A7D4CFC4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1A7D4D298(char a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 41) = a2;
  *(v4 + 40) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  v6 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4D31C, 0, 0);
}

uint64_t sub_1A7D4D31C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A7D547B0;
  v2 = *(v0 + 41);
  v3 = *(v0 + 40);

  return sub_1A7D404D4(v3, v2);
}

uint64_t sub_1A7D4D538(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4D5B0, 0, 0);
}

uint64_t sub_1A7D4D5B0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___IDSLinksQualityMeasurer_measurer);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D4D5DC, v1, 0);
}

uint64_t sub_1A7D4D5DC()
{
  v1 = v0[2];
  if (*(v0[4] + 128))
  {

    sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E226F0();
  }

  v2 = v0[3];
  if (v2)
  {
    v2[2](v0[3]);
    _Block_release(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A7D4D820(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4D898, 0, 0);
}

uint64_t sub_1A7D4D898()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A7D4D934;

  return sub_1A7D4807C();
}

uint64_t sub_1A7D4D934(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4DA34, 0, 0);
}

uint64_t sub_1A7D4DA34()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    sub_1A7CC7FFC(&unk_1EB2B66C0);
    v3 = sub_1A7E22520();

    (v2)[2](v2, v3);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A7D4DB00(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7D4DB20, 0, 0);
}

uint64_t sub_1A7D4DB20()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___IDSLinksQualityMeasurerSyncToken_syncToken);
    v3 = v2;
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A7D4DBE0;

  return _IDSLinksQualityMeasurer.delta(since:)(v2);
}

uint64_t sub_1A7D4DBE0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4DCFC, 0, 0);
}

uint64_t sub_1A7D4DCFC()
{
  v1 = *(v0 + 48);
  v2 = [objc_allocWithZone(IDSLinksQualityMeasurerDelta) init];
  v3 = *&v2[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta];
  *&v2[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta] = v1;

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1A7D4DF14(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A7D4DFD4;

  return sub_1A7D4DB00(a1);
}

uint64_t sub_1A7D4DFD4(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v4)
  {
    v8 = *(v3 + 32);
    (v8)[2](v8, a1);

    _Block_release(v8);
  }

  else
  {
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1A7D4E2E0(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1A7E22290();
  v4[6] = v7;
  v8 = a1;
  v9 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4E37C, 0, 0);
}

uint64_t sub_1A7D4E37C()
{
  v1 = *(v0[2] + OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta);
  v0[7] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1A7D4E444;
  v4 = v0[5];
  v5 = v0[6];

  return _IDSLinksQualityMeasurer.importDelta(_:sourceName:)(v2, v4, v5);
}

uint64_t sub_1A7D4E444()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v3)
  {
    v7 = *(v1 + 32);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void __swiftcall IDSLinksQualityMeasurer.init()(IDSLinksQualityMeasurer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *sub_1A7D4E688(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B63E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A7D4E77C(uint64_t a1, uint64_t a2)
{
  result = sub_1A7E21630();
  if (!result || (result = sub_1A7E21660(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1A7E21650();
      sub_1A7D544F4();
      return sub_1A7E22430();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D4E834(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1A7D544F4();
      return sub_1A7E22430();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1A7D4E77C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1A7D4E77C(v4, v5);
  }

  sub_1A7D544F4();
  return sub_1A7E22430();
}

uint64_t sub_1A7D4E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7D4EFF0(a1, a2, a3, a4, a5);
}

uint64_t sub_1A7D4EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  v5 = sub_1A7E21B60();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D4EB24, a3, 0);
}

uint64_t sub_1A7D4EB24()
{
  v1 = v0[37];
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (v2 = v0[36], , sub_1A7CD14FC(v2), LOBYTE(v2) = v3, , (v2 & 1) != 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    type metadata accessor for _IDSTestableLinkWithScheduler();
    sub_1A7D51980(&qword_1EB2B29E0, 255, type metadata accessor for _IDSTestableLinkWithScheduler);
    v7 = sub_1A7E225F0();

    return MEMORY[0x1EEE6DFA0](sub_1A7D4EC60, v7, v6);
  }
}

uint64_t sub_1A7D4EC60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong addStatsPacketListener_];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 296);
  _IDSTestableLinkWithScheduler.metadata.getter(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4ECFC, v2, 0);
}

uint64_t sub_1A7D4ECFC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 63) = *(v0 + 119);
  (*(v1 + 16))(v2, v5, v3);
  type metadata accessor for IDSLinksQualityMeasurerLink(0);
  v7 = swift_allocObject();
  sub_1A7CEB448(v0 + 16, v0 + 128);

  v9 = sub_1A7D510DC(v8, v0 + 16, v2, v7);
  *(v0 + 328) = v9;
  v10 = *(v4 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

  *(v0 + 336) = v10(v11);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4EE10, v9, 0);
}

uint64_t sub_1A7D4EE10()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 336) + 0.0;
  v3 = *(v0 + 328) + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4EEB0, v1, 0);
}

uint64_t sub_1A7D4EEB0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 16);
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1A7DC561C(v1, v4, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v9;
  swift_endAccess();
  sub_1A7CEB5C8(v0 + 16);
  swift_beginAccess();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  sub_1A7DC5450(v1, v2, v6);
  *(v3 + 120) = v10;
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A7D4EFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v7 = sub_1A7E21B60();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D4F0BC, a3, 0);
}

uint64_t sub_1A7D4F0BC()
{
  v1 = v0[37];
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (v2 = v0[36], , sub_1A7CD14FC(v2), LOBYTE(v2) = v3, , (v2 & 1) != 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v10 = (*(v0[39] + 16) + **(v0[39] + 16));
    v6 = swift_task_alloc();
    v0[43] = v6;
    *v6 = v0;
    v6[1] = sub_1A7D4F258;
    v7 = v0[38];
    v8 = v0[39];
    v9 = v0[37];

    return v10(v9, v7, v8);
  }
}

uint64_t sub_1A7D4F258()
{
  v1 = *v0;
  v8 = *(*v0 + 312);
  v2 = *v0;

  v7 = (*(v8 + 40) + **(v8 + 40));
  v3 = swift_task_alloc();
  v1[44] = v3;
  *v3 = v2;
  v3[1] = sub_1A7D4F444;
  v4 = v1[39];
  v5 = v1[38];

  return v7(v1 + 9, v5, v4);
}

uint64_t sub_1A7D4F444()
{
  v1 = *(*v0 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4F554, v1, 0);
}

uint64_t sub_1A7D4F554()
{
  v19 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v8;
  *(v0 + 48) = *(v0 + 104);
  v9 = *(v0 + 119);
  *(v0 + 63) = v9;
  v10 = *(v0 + 32);
  v17[0] = *(v0 + 16);
  v17[1] = v10;
  v18[0] = *(v0 + 48);
  *(v18 + 15) = v9;
  (*(v1 + 16))(v2, v7, v3);
  type metadata accessor for IDSLinksQualityMeasurerLink(0);
  v11 = swift_allocObject();
  sub_1A7CEB448(v0 + 16, v0 + 128);
  v12 = swift_unknownObjectRetain();
  v13 = sub_1A7D51258(v12, v17, v2, v11, v5, v4);
  *(v0 + 360) = v13;
  v14 = *(v6 + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

  *(v0 + 368) = v14(v15);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4F69C, v13, 0);
}

uint64_t sub_1A7D4F69C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 368) + 0.0;
  v3 = *(v0 + 360) + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4F73C, v1, 0);
}

uint64_t sub_1A7D4F73C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 16);
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1A7DC561C(v1, v4, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v9;
  swift_endAccess();
  sub_1A7CEB5C8(v0 + 16);
  swift_beginAccess();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  sub_1A7DC5450(v1, v2, v6);
  *(v3 + 120) = v10;
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A7D4F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return sub_1A7D503E4(a1, a2, a3, a4);
}

uint64_t sub_1A7D4F930(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v2[53] = a2;
  type metadata accessor for _IDSTestableLinkWithScheduler();
  sub_1A7D51980(&qword_1EB2B29E0, 255, type metadata accessor for _IDSTestableLinkWithScheduler);
  v4 = sub_1A7E225F0();
  v2[54] = v4;
  v2[55] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4F9F0, v4, v3);
}

uint64_t sub_1A7D4F9F0()
{
  v1 = *(v0 + 424);
  _IDSTestableLinkWithScheduler.metadata.getter(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4FA5C, v1, 0);
}

uint64_t sub_1A7D4FA5C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 424);
  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16) && (v4 = sub_1A7CD1580(v1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 448) = v6;
  swift_beginAccess();
  sub_1A7CC905C(0, v1);
  swift_endAccess();
  if (qword_1EB2B2D48 != -1)
  {
    swift_once();
  }

  v7 = sub_1A7E22060();
  *(v0 + 456) = sub_1A7B0CB00(v7, qword_1EB2B2D50);
  sub_1A7CEB448(v0 + 208, v0 + 264);
  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 16777472;
    sub_1A7CEB5C8(v0 + 208);
    v10[4] = v1;
    sub_1A7CEB5C8(v0 + 208);
    _os_log_impl(&dword_1A7AD9000, v8, v9, "removing link with id %hhd", v10, 5u);
    MEMORY[0x1AC5654B0](v10, -1, -1);

    if (v6)
    {
LABEL_9:
      v11 = sub_1A7E22040();
      v12 = sub_1A7E228F0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A7AD9000, v11, v12, "  finishing...", v13, 2u);
        MEMORY[0x1AC5654B0](v13, -1, -1);
      }

      v14 = swift_task_alloc();
      *(v0 + 464) = v14;
      *v14 = v0;
      v14[1] = sub_1A7D4FD24;

      return sub_1A7D3F8C0();
    }
  }

  else
  {
    sub_1A7CEB5C8(v0 + 208);
    sub_1A7CEB5C8(v0 + 208);

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1A7D4FD24()
{
  v1 = *(*v0 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4FE34, v1, 0);
}

uint64_t sub_1A7D4FE34()
{
  v1 = *(*(v0 + 424) + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

  *(v0 + 472) = v1(v2);

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "  marking end...", v5, 2u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v6 = *(v0 + 448);

  return MEMORY[0x1EEE6DFA0](sub_1A7D4FF40, v6, 0);
}

uint64_t sub_1A7D4FF40()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 472) + 0.0;
  v4 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  *(v0 + 480) = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  v5 = v1 + v4;
  swift_beginAccess();
  *(v5 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A7D4FFE4, v2, 0);
}

uint64_t sub_1A7D4FFE4()
{
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "  getting report...", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 448);

  return MEMORY[0x1EEE6DFA0](sub_1A7D500BC, v4, 0);
}

uint64_t sub_1A7D500BC()
{
  v1 = *(v0 + 424);
  v2 = (*(v0 + 448) + *(v0 + 480));
  v3 = v2[1];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v3;
  v4 = v2[5];
  v6 = v2[2];
  v5 = v2[3];
  *(v0 + 80) = v2[4];
  *(v0 + 96) = v4;
  *(v0 + 48) = v6;
  *(v0 + 64) = v5;
  sub_1A7D53B5C(v0 + 16, v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50150, v1, 0);
}

uint64_t sub_1A7D50150()
{
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "  adding report to multi-link report", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 424);

  v5 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_report;
  swift_beginAccess();
  v6 = *(v4 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A7CCDDAC(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1A7CCDDAC((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[96 * v9];
  v11 = *(v0 + 32);
  *(v10 + 2) = *(v0 + 16);
  *(v10 + 3) = v11;
  v12 = *(v0 + 48);
  v13 = *(v0 + 64);
  v14 = *(v0 + 96);
  *(v10 + 6) = *(v0 + 80);
  *(v10 + 7) = v14;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  *(v4 + v5) = v6;
  swift_endAccess();
  v15 = *(v0 + 432);
  v16 = *(v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_1A7D502E4, v15, v16);
}

uint64_t sub_1A7D502E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 424);
  if (Strong)
  {
    [Strong removeStatsPacketListener_];
    swift_unknownObjectRelease();
    v3 = sub_1A7D547B4;
  }

  else
  {
    v3 = sub_1A7D50384;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1A7D50384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D503E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  v9 = (*(a4 + 40) + **(a4 + 40));
  v7 = swift_task_alloc();
  v4[63] = v7;
  *v7 = v4;
  v7[1] = sub_1A7D50510;

  return v9(v4 + 33, a3, a4);
}

uint64_t sub_1A7D50510()
{
  v1 = *(*v0 + 480);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50620, v1, 0);
}

uint64_t sub_1A7D50620()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 280);
  *(v0 + 208) = *(v0 + 264);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 296);
  *(v0 + 255) = *(v0 + 311);
  v3 = *(v0 + 208);
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16) && (v5 = sub_1A7CD1580(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 512) = v7;
  swift_beginAccess();
  sub_1A7CC905C(0, v3);
  swift_endAccess();
  if (qword_1EB2B2D48 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  *(v0 + 520) = sub_1A7B0CB00(v8, qword_1EB2B2D50);
  sub_1A7CEB448(v0 + 208, v0 + 320);
  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 16777472;
    sub_1A7CEB5C8(v0 + 208);
    v11[4] = v3;
    sub_1A7CEB5C8(v0 + 208);
    _os_log_impl(&dword_1A7AD9000, v9, v10, "removing link with id %hhd", v11, 5u);
    MEMORY[0x1AC5654B0](v11, -1, -1);

    if (v7)
    {
LABEL_9:
      v12 = sub_1A7E22040();
      v13 = sub_1A7E228F0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1A7AD9000, v12, v13, "  finishing...", v14, 2u);
        MEMORY[0x1AC5654B0](v14, -1, -1);
      }

      v15 = swift_task_alloc();
      *(v0 + 528) = v15;
      *v15 = v0;
      v15[1] = sub_1A7D508F4;

      return sub_1A7D3F8C0();
    }
  }

  else
  {
    sub_1A7CEB5C8(v0 + 208);
    sub_1A7CEB5C8(v0 + 208);

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A7D508F4()
{
  v1 = *(*v0 + 480);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50A04, v1, 0);
}

uint64_t sub_1A7D50A04()
{
  v1 = *(*(v0 + 480) + OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_timeFn);

  *(v0 + 536) = v1(v2);

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "  marking end...", v5, 2u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v6 = *(v0 + 512);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50B10, v6, 0);
}

uint64_t sub_1A7D50B10()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 480);
  v3 = *(v0 + 536) + 0.0;
  v4 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  *(v0 + 544) = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  v5 = v1 + v4;
  swift_beginAccess();
  *(v5 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A7D50BB4, v2, 0);
}

uint64_t sub_1A7D50BB4()
{
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "  getting report...", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 512);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50C8C, v4, 0);
}

uint64_t sub_1A7D50C8C()
{
  v1 = *(v0 + 480);
  v2 = (*(v0 + 512) + *(v0 + 544));
  v3 = v2[1];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v3;
  v4 = v2[5];
  v6 = v2[2];
  v5 = v2[3];
  *(v0 + 80) = v2[4];
  *(v0 + 96) = v4;
  *(v0 + 48) = v6;
  *(v0 + 64) = v5;
  sub_1A7D53B5C(v0 + 16, v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A7D50D20, v1, 0);
}

uint64_t sub_1A7D50D20()
{
  v1 = sub_1A7E22040();
  v2 = sub_1A7E228F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A7AD9000, v1, v2, "  adding report to multi-link report", v3, 2u);
    MEMORY[0x1AC5654B0](v3, -1, -1);
  }

  v4 = *(v0 + 480);

  v5 = OBJC_IVAR____TtC13IDSFoundation24_IDSLinksQualityMeasurer_report;
  swift_beginAccess();
  v6 = *(v4 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A7CCDDAC(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1A7CCDDAC((v8 > 1), v9 + 1, 1, v6);
  }

  v21 = *(v0 + 496);
  *(v6 + 2) = v9 + 1;
  v10 = &v6[96 * v9];
  v11 = *(v0 + 32);
  *(v10 + 2) = *(v0 + 16);
  *(v10 + 3) = v11;
  v12 = *(v0 + 48);
  v13 = *(v0 + 64);
  v14 = *(v0 + 96);
  *(v10 + 6) = *(v0 + 80);
  *(v10 + 7) = v14;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  *(v4 + v5) = v6;
  swift_endAccess();
  v20 = (*(v21 + 24) + **(v21 + 24));
  v15 = swift_task_alloc();
  *(v0 + 552) = v15;
  *v15 = v0;
  v15[1] = sub_1A7D50F6C;
  v16 = *(v0 + 488);
  v17 = *(v0 + 496);
  v18 = *(v0 + 480);

  return v20(v18, v16, v17);
}

uint64_t sub_1A7D50F6C()
{
  v1 = *(*v0 + 480);

  return MEMORY[0x1EEE6DFA0](sub_1A7D5107C, v1, 0);
}

uint64_t sub_1A7D5107C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D510DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A7D51980(&qword_1EB2B3108, 255, type metadata accessor for _IDSTestableLinkWithScheduler);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_statsRequestStartTimesByID;
  v10 = MEMORY[0x1E69E7CC0];
  *(a4 + v9) = sub_1A7CE3D94(MEMORY[0x1E69E7CC0]);
  *(a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_bursts) = v10;
  v11 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_uniqueID;
  v12 = sub_1A7E21B60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 16))(a4 + v11, a3, v12);
  v15 = (a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
  *v15 = a1;
  v15[1] = v8;
  v16 = MEMORY[0x1AC561410](v14);
  v18 = v17;
  (*(v13 + 8))(a3, v12);
  v19 = a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  *v19 = v16;
  *(v19 + 8) = v18;
  v20 = *(a2 + 16);
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a2 + 32);
  *(v19 + 63) = *(a2 + 47);
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  *(v19 + 88) = v10;
  return a4;
}

uint64_t sub_1A7D51258(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *a2;
  v23 = a2[1];
  *v24 = a2[2];
  *&v24[15] = *(a2 + 47);
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_statsRequestStartTimesByID;
  v11 = MEMORY[0x1E69E7CC0];
  *(a4 + v10) = sub_1A7CE3D94(MEMORY[0x1E69E7CC0]);
  *(a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_bursts) = v11;
  v12 = OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_uniqueID;
  v13 = sub_1A7E21B60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 16))(a4 + v12, a3, v13);
  v16 = (a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_link);
  *v16 = a1;
  v16[1] = a6;
  v17 = MEMORY[0x1AC561410](v15);
  v19 = v18;
  (*(v14 + 8))(a3, v13);
  v20 = a4 + OBJC_IVAR____TtC13IDSFoundation27IDSLinksQualityMeasurerLink_currentReport;
  *v20 = v17;
  *(v20 + 8) = v19;
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *(v20 + 48) = *v24;
  *(v20 + 63) = *&v24[15];
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = v11;
  return a4;
}

uint64_t sub_1A7D513D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A7CD2A2C;

  return sub_1A7D4073C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A7D5149C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 1)
      {
        goto LABEL_8;
      }

LABEL_13:
      v12 = 0;
      v13 = 1;
      return v12 | (v13 << 8);
    }

    goto LABEL_28;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_13;
  }

LABEL_8:
  v7 = sub_1A7E21A60();
  sub_1A7DF8A54(1, v7, v8, &v23);
  v10 = v23;
  v9 = v24;
  v11 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v14 = *(v23 + 16);
    v15 = sub_1A7E21630();
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    v17 = sub_1A7E21660();
    if (!__OFSUB__(v14, v17))
    {
      v18 = (v14 - v17 + v16);
      sub_1A7E21650();
      if (v18)
      {
LABEL_23:
        v12 = *v18;
        goto LABEL_25;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (!v11)
  {
    v12 = v23;
LABEL_25:
    sub_1A7CC7E50(v10, v9);
    v13 = 0;
    return v12 | (v13 << 8);
  }

  if (v23 > v23 >> 32)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1A7E21650();
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_1A7E21630();
  if (!v19)
  {
LABEL_34:
    result = sub_1A7E21650();
    __break(1u);
    goto LABEL_35;
  }

  v20 = v19;
  v21 = sub_1A7E21660();
  if (__OFSUB__(v10, v21))
  {
    goto LABEL_31;
  }

  v18 = (v10 - v21 + v20);
  result = sub_1A7E21650();
  if (v18)
  {
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1A7D5164C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A7D516A0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 8)
      {
        goto LABEL_11;
      }

      return 0;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 8)
      {
        goto LABEL_11;
      }

      return 0;
    }

    goto LABEL_26;
  }

  if (BYTE6(a2) < 8uLL)
  {
    return 0;
  }

LABEL_11:
  v8 = sub_1A7E21A60();
  sub_1A7DF8A54(8, v8, v9, &v22);
  v11 = v22;
  v10 = v23;
  v12 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v12 != 2)
    {
      sub_1A7CC7E50(v22, v23);
      return 0;
    }

    v13 = *(v22 + 16);
    v14 = sub_1A7E21630();
    if (!v14)
    {
      goto LABEL_30;
    }

    v15 = v14;
    v16 = sub_1A7E21660();
    if (!__OFSUB__(v13, v16))
    {
      v17 = (v13 - v16 + v15);
      sub_1A7E21650();
      if (v17)
      {
LABEL_23:
        v21 = *v17;
        sub_1A7CC7E50(v11, v10);
        return bswap64(v21);
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (!v12)
  {
    sub_1A7CC7E50(v22, v23);
    return bswap64(v11);
  }

  if (v22 > v22 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_1A7E21650();
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = sub_1A7E21630();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1A7E21660();
    if (!__OFSUB__(v11, v20))
    {
      v17 = (v11 - v20 + v19);
      result = sub_1A7E21650();
      if (v17)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_32:
  result = sub_1A7E21650();
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1A7D5186C()
{
  result = qword_1EB2B61E8;
  if (!qword_1EB2B61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B61E8);
  }

  return result;
}

unint64_t sub_1A7D518C0()
{
  result = qword_1EB2B6200;
  if (!qword_1EB2B6200)
  {
    sub_1A7CC9830(&qword_1EB2B61F8);
    sub_1A7D51980(&qword_1EB2B6208, 255, MEMORY[0x1E69695A8]);
    sub_1A7D519C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6200);
  }

  return result;
}

uint64_t sub_1A7D51980(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7D519C8()
{
  result = qword_1EB2B6210;
  if (!qword_1EB2B6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6210);
  }

  return result;
}

unint64_t sub_1A7D51A1C()
{
  result = qword_1EB2B6220;
  if (!qword_1EB2B6220)
  {
    sub_1A7CC9830(&qword_1EB2B61F8);
    sub_1A7D51980(&qword_1EB2B6228, 255, MEMORY[0x1E69695A8]);
    sub_1A7D51ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6220);
  }

  return result;
}

unint64_t sub_1A7D51ADC()
{
  result = qword_1EB2B6230;
  if (!qword_1EB2B6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6230);
  }

  return result;
}

uint64_t _s13IDSFoundation29_IDSLinksQualityMeasurerDeltaC6create4jsonACSg10Foundation4DataV_tFZ_0()
{
  if (qword_1EB2B47E8 != -1)
  {
    swift_once();
  }

  type metadata accessor for _IDSLinksQualityMeasurerDelta();
  sub_1A7D51980(&qword_1EB2B63C8, v0, type metadata accessor for _IDSLinksQualityMeasurerDelta);
  sub_1A7E21590();
  return v2;
}

unint64_t sub_1A7D51FA8()
{
  result = qword_1EB2B6250;
  if (!qword_1EB2B6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6250);
  }

  return result;
}

unint64_t sub_1A7D52020()
{
  result = qword_1EB2B6270;
  if (!qword_1EB2B6270)
  {
    sub_1A7CC9830(&qword_1EB2B6268);
    sub_1A7D51980(&qword_1EB2B6208, 255, MEMORY[0x1E69695A8]);
    sub_1A7D52254(&qword_1EB2B6278, sub_1A7D52110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6270);
  }

  return result;
}

unint64_t sub_1A7D52110()
{
  result = qword_1EB2B6288;
  if (!qword_1EB2B6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6288);
  }

  return result;
}

unint64_t sub_1A7D52164()
{
  result = qword_1EB2B62A0;
  if (!qword_1EB2B62A0)
  {
    sub_1A7CC9830(&qword_1EB2B6268);
    sub_1A7D51980(&qword_1EB2B6228, 255, MEMORY[0x1E69695A8]);
    sub_1A7D52254(&qword_1EB2B62A8, sub_1A7D522CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B62A0);
  }

  return result;
}

uint64_t sub_1A7D52254(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B6280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7D522CC()
{
  result = qword_1EB2B62B0;
  if (!qword_1EB2B62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B62B0);
  }

  return result;
}

uint64_t sub_1A7D52320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0xE000) == 0)
  {
  }

  return result;
}

uint64_t sub_1A7D52368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0xE000) == 0)
  {
  }

  return result;
}

uint64_t sub_1A7D523FC()
{
  result = sub_1A7E21B60();
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

uint64_t sub_1A7D524C4()
{
  result = sub_1A7E22060();
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

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.start(captureBasicStats:sendBursts:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x138);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.stop()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x140);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return v5();
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.addLink(_:uniqueID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x148);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.removeLink(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD22FC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.removeAllLinks()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return v5();
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.recordBasicStats()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return v5();
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.didReceiveStatsTestPacket(withPayload:linkID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1F0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.didSendStatsRequest(withID:linkID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1F8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.didReceiveStatsResponse(withID:linkID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x200);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A7CD2A2C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of _IDSLinksQualityMeasurer.generateReport()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x208);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7D017E0;

  return v5();
}

unint64_t sub_1A7D5330C()
{
  result = qword_1EB2B6398;
  if (!qword_1EB2B6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6398);
  }

  return result;
}

unint64_t sub_1A7D53364()
{
  result = qword_1EB2B63A0;
  if (!qword_1EB2B63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63A0);
  }

  return result;
}

unint64_t sub_1A7D533BC()
{
  result = qword_1EB2B63A8;
  if (!qword_1EB2B63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63A8);
  }

  return result;
}

unint64_t sub_1A7D53414()
{
  result = qword_1EB2B63B0;
  if (!qword_1EB2B63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63B0);
  }

  return result;
}

unint64_t sub_1A7D5346C()
{
  result = qword_1EB2B63B8;
  if (!qword_1EB2B63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63B8);
  }

  return result;
}

unint64_t sub_1A7D534C4()
{
  result = qword_1EB2B63C0;
  if (!qword_1EB2B63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63C0);
  }

  return result;
}

uint64_t sub_1A7D53518()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D4E2E0(v2, v3, v5, v4);
}

uint64_t sub_1A7D535D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D4DF14(v2, v3, v4);
}

uint64_t sub_1A7D5368C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7DE518C(a1, v4, v5, v6);
}

uint64_t sub_1A7D53758()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A7CD2A2C;

  return sub_1A7D4D820(v2, v3);
}

uint64_t sub_1A7D53804()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A7CD2A2C;

  return sub_1A7D4D538(v2, v3);
}

uint64_t sub_1A7D538B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D4D298(v2, v3, v5, v4);
}

uint64_t sub_1A7D53974()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7D539B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A7CD2A2C;

  return sub_1A7D4CF1C(v2, v3);
}

uint64_t sub_1A7D53A60()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7D53AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D4C5D4(v2, v3, v4);
}

uint64_t sub_1A7D53BB8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7D53C08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D4C0C0(v2, v3, v5, v4);
}

uint64_t sub_1A7D53CD0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1A7CD2A2C;

  return sub_1A7D43AA8(a1, a2, v6, v11, v7, v8, v9, v10);
}

uint64_t sub_1A7D53DD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A7CD2A2C;

  return sub_1A7D44CD4(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1A7D53EA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D42BE8(a1, v5, v4);
}

uint64_t sub_1A7D53F54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7DF7300(a1, v4);
}

uint64_t sub_1A7D5400C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1A7CD2A2C;

  return sub_1A7DF73F8(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1A7D540E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A7CD22FC;

  return sub_1A7D42ECC(a1, v5, v4);
}

uint64_t sub_1A7D541C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D47F98(v2, v5, v3, v4);
}

uint64_t sub_1A7D54284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D47A08(v2, v5, v3, v4);
}

uint64_t sub_1A7D54348()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A7D54390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7D47310(v2, v5, v3, v4);
}

uint64_t sub_1A7D54454(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1A7D544A0()
{
  result = qword_1EB2B63D8;
  if (!qword_1EB2B63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63D8);
  }

  return result;
}

unint64_t sub_1A7D544F4()
{
  result = qword_1EB2B63E8;
  if (!qword_1EB2B63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B63E8);
  }

  return result;
}

uint64_t sub_1A7D54548(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A7CD2A2C;

  return sub_1A7D40A40(a1, a2, v6, v7, v8);
}

uint64_t sub_1A7D54610()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D40CDC(v2, v3, v4);
}

uint64_t sub_1A7D546B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A7D546F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D40CBC(v2, v3, v4);
}

void sub_1A7D547D4(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B63F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v40 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B63F8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v40 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B6400);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v40 - v16;
  v18 = [v2 *a1];
  if (!v18)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v19 = v18;
  v20 = sub_1A7E21A10();
  v22 = v21;

  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_14;
    }

    v25 = *(v20 + 16);
    v24 = *(v20 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (!v26)
    {
      if (v27 == 4)
      {
        goto LABEL_10;
      }

LABEL_14:
      v33 = sub_1A7E220F0();
      (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
      sub_1A7D5164C(v20, v22);
      sub_1A7E220E0();
      v34 = sub_1A7E220D0();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v8, 1, v34) == 1)
      {
        sub_1A7CC7E50(v20, v22);
        v31 = &qword_1EB2B63F0;
        v32 = v8;
        goto LABEL_16;
      }

      *(&v41 + 1) = v34;
      v42 = MEMORY[0x1E6977B30];
      v36 = sub_1A7CC98BC(&v40);
      (*(v35 + 32))(v36, v8, v34);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    if (!v23)
    {
      if (BYTE6(v22) != 4)
      {
        goto LABEL_14;
      }

LABEL_10:
      v28 = sub_1A7E220F0();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
      sub_1A7D5164C(v20, v22);
      sub_1A7E220B0();
      v29 = sub_1A7E220A0();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v17, 1, v29) == 1)
      {
        sub_1A7CC7E50(v20, v22);
        v31 = &qword_1EB2B6400;
        v32 = v17;
LABEL_16:
        sub_1A7CC9970(v32, v31);
        v40 = 0u;
        v41 = 0u;
        v42 = 0;
LABEL_20:
        v43 = v40;
        v44 = v41;
        v38 = v42;
        v45 = v42;
        v39 = v41;
        *a2 = v40;
        *(a2 + 16) = v39;
        *(a2 + 32) = v38;
        return;
      }

      *(&v41 + 1) = v29;
      v42 = MEMORY[0x1E6977B28];
      v37 = sub_1A7CC98BC(&v40);
      (*(v30 + 32))(v37, v17, v29);
LABEL_19:
      sub_1A7CC7E50(v20, v22);
      goto LABEL_20;
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      if (HIDWORD(v20) - v20 == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1A7D54BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D54C74(uint64_t a1)
{
  v2 = sub_1A7D54E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D54CB0(uint64_t a1)
{
  v2 = sub_1A7D54E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinksResponse.LinksList.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B6408);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D54E98();

  sub_1A7E23260();
  v10[1] = v8;
  sub_1A7CC7FFC(&qword_1EB2B7CB0);
  sub_1A7D550A4(&qword_1EB2B6418, &qword_1EB2B6420);
  sub_1A7E23030();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7D54E98()
{
  result = qword_1EB2B6410;
  if (!qword_1EB2B6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6410);
  }

  return result;
}

uint64_t LEToolLinksResponse.LinksList.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B6428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D54E98();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7CC7FFC(&qword_1EB2B7CB0);
    sub_1A7D550A4(&qword_1EB2B6430, &qword_1EB2B6438);
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7D550A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7CB0);
    sub_1A7D5512C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D5512C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LEToolLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D551A0(uint64_t a1)
{
  v2 = sub_1A7D554A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D551DC(uint64_t a1)
{
  v2 = sub_1A7D554A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D55218(uint64_t a1)
{
  v2 = sub_1A7D554F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D55254(uint64_t a1)
{
  v2 = sub_1A7D554F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinksResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B6440);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B6448);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  v13 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D554A0();
  sub_1A7E23260();
  sub_1A7D554F4();
  sub_1A7E22F80();
  v19 = v13;
  sub_1A7D55548();
  v14 = v17;
  sub_1A7E23030();
  (*(v18 + 8))(v7, v14);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1A7D554A0()
{
  result = qword_1EB2B6450;
  if (!qword_1EB2B6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6450);
  }

  return result;
}

unint64_t sub_1A7D554F4()
{
  result = qword_1EB2B6458;
  if (!qword_1EB2B6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6458);
  }

  return result;
}

unint64_t sub_1A7D55548()
{
  result = qword_1EB2B6460;
  if (!qword_1EB2B6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6460);
  }

  return result;
}

uint64_t LEToolLinksResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B6468);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B6470);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D554A0();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v22 = a1;
  v13 = v24;
  v12 = v25;
  v14 = sub_1A7E22F70();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  if ((sub_1A7CDB53C() & 1) != 0 || v28 != v29 >> 1)
  {
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v17 = v8;
    v19 = v18;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v19 = &type metadata for LEToolLinksResponse;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v13 + 8))(v11, v17);
    swift_unknownObjectRelease();
    a1 = v22;
LABEL_6:
    v21 = a1;
    return sub_1A7B0CD6C(v21);
  }

  sub_1A7D554F4();
  sub_1A7E22E70();
  sub_1A7D55924();
  sub_1A7E22F30();
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v21 = v22;
  *v23 = v30;
  return sub_1A7B0CD6C(v21);
}

unint64_t sub_1A7D55924()
{
  result = qword_1EB2B6478;
  if (!qword_1EB2B6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6478);
  }

  return result;
}

unint64_t sub_1A7D559FC()
{
  result = qword_1EB2B6480;
  if (!qword_1EB2B6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6480);
  }

  return result;
}

unint64_t sub_1A7D55A54()
{
  result = qword_1EB2B6488;
  if (!qword_1EB2B6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6488);
  }

  return result;
}

unint64_t sub_1A7D55AAC()
{
  result = qword_1EB2B6490;
  if (!qword_1EB2B6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6490);
  }

  return result;
}

unint64_t sub_1A7D55B04()
{
  result = qword_1EB2B6498;
  if (!qword_1EB2B6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6498);
  }

  return result;
}

unint64_t sub_1A7D55B5C()
{
  result = qword_1EB2B64A0;
  if (!qword_1EB2B64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64A0);
  }

  return result;
}

unint64_t sub_1A7D55BB4()
{
  result = qword_1EB2B64A8;
  if (!qword_1EB2B64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64A8);
  }

  return result;
}

unint64_t sub_1A7D55C0C()
{
  result = qword_1EB2B64B0;
  if (!qword_1EB2B64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64B0);
  }

  return result;
}

unint64_t sub_1A7D55C64()
{
  result = qword_1EB2B64B8;
  if (!qword_1EB2B64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64B8);
  }

  return result;
}

unint64_t sub_1A7D55CBC()
{
  result = qword_1EB2B64C0;
  if (!qword_1EB2B64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64C0);
  }

  return result;
}

void __swiftcall IDSLinksQualityReportSyncTokenObject.init(syncToken:)(IDSLinksQualityReportSyncTokenObject *__return_ptr retstr, IDSFoundation::IDSLinksQualityReportBuilder::SyncToken syncToken)
{
  v2 = *syncToken.syncTokenByLinkCycle._rawValue;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
  swift_beginAccess();
  *&v3[v4] = v2;
}

uint64_t IDSLinksQualityReportSyncTokenObject.syncToken.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t IDSLinksQualityReportSyncTokenObject.syncToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void __swiftcall IDSLinksQualityReportSyncTokenObject.init()(IDSLinksQualityReportSyncTokenObject *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSLinksQualityReportSyncTokenObject.init()()
{
  *(v0 + OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken) = 0;
  v2.super_class = IDSLinksQualityReportSyncTokenObject;
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_1A7D56218()
{
  v1 = v0;
  if (qword_1EB2B47F8 != -1)
  {
    swift_once();
  }

  sub_1A7D165B8();
  sub_1A7E21590();
  if (!v0)
  {
    v1 = [objc_allocWithZone(IDSLinksQualityReportSyncTokenObject) init];
    v2 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
    swift_beginAccess();
    *&v1[v2] = v4;
  }

  return v1;
}

unint64_t type metadata accessor for IDSLinksQualityReportSyncTokenObject()
{
  result = qword_1EB2B64E0;
  if (!qword_1EB2B64E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B64E0);
  }

  return result;
}

unint64_t sub_1A7D56358()
{
  result = qword_1EB2B64F0;
  if (!qword_1EB2B64F0)
  {
    sub_1A7CC9830(&qword_1EB2B64E8);
    sub_1A7D563DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64F0);
  }

  return result;
}

unint64_t sub_1A7D563DC()
{
  result = qword_1EB2B64F8;
  if (!qword_1EB2B64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B64F8);
  }

  return result;
}

uint64_t sub_1A7D56430(uint64_t a1)
{
  v2 = sub_1A7D56908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D5646C(uint64_t a1)
{
  v2 = sub_1A7D56908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D564A8(uint64_t a1)
{
  v2 = sub_1A7D56A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D564E4(uint64_t a1)
{
  v2 = sub_1A7D56A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D56520(uint64_t a1)
{
  v2 = sub_1A7D5695C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D5655C(uint64_t a1)
{
  v2 = sub_1A7D5695C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolResponse.Response.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B6500);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B6508);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  v28 = sub_1A7CC7FFC(&qword_1EB2B6510);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v12);
  v14 = &v21 - v13;
  v15 = v1[1];
  v27 = *v1;
  v22 = v15;
  v16 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D56908();
  sub_1A7E23260();
  if (v16)
  {
    LOBYTE(v29) = 1;
    sub_1A7D5695C();
    v17 = v28;
    sub_1A7E22F80();
    v29 = v27;
    v30 = v22;
    sub_1A7D569B0();
    v18 = v26;
    sub_1A7E23030();
    (*(v25 + 8))(v6, v18);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1A7D56A04();
    v17 = v28;
    sub_1A7E22F80();
    v29 = v27;
    sub_1A7CC7FFC(&qword_1EB2B6538);
    sub_1A7D57078(&qword_1EB2B6540, sub_1A7D56A58);
    v19 = v24;
    sub_1A7E23030();
    (*(v23 + 8))(v10, v19);
  }

  return (*(v11 + 8))(v14, v17);
}

unint64_t sub_1A7D56908()
{
  result = qword_1EB2B6518;
  if (!qword_1EB2B6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6518);
  }

  return result;
}

unint64_t sub_1A7D5695C()
{
  result = qword_1EB2B6520;
  if (!qword_1EB2B6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6520);
  }

  return result;
}

unint64_t sub_1A7D569B0()
{
  result = qword_1EB2B6528;
  if (!qword_1EB2B6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6528);
  }

  return result;
}

unint64_t sub_1A7D56A04()
{
  result = qword_1EB2B6530;
  if (!qword_1EB2B6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6530);
  }

  return result;
}

unint64_t sub_1A7D56A58()
{
  result = qword_1EB2B6548;
  if (!qword_1EB2B6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6548);
  }

  return result;
}

uint64_t IDSToolResponse.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B6550);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33[-v6];
  v8 = sub_1A7CC7FFC(&qword_1EB2B6558);
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = sub_1A7CC7FFC(&qword_1EB2B6560);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33[-v15];
  v17 = a1[3];
  v47 = a1;
  sub_1A7CC9878(a1, v17);
  sub_1A7D56908();
  v18 = v40;
  sub_1A7E23250();
  if (!v18)
  {
    v35 = v8;
    v40 = v13;
    v19 = v39;
    v20 = sub_1A7E22F70();
    v21 = (2 * *(v20 + 16)) | 1;
    v43 = v20;
    v44 = v20 + 32;
    v45 = 0;
    v46 = v21;
    v22 = sub_1A7CDB538();
    if (v22 == 2 || v45 != v46 >> 1)
    {
      v27 = sub_1A7E22BD0();
      swift_allocError();
      v29 = v28;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v29 = &type metadata for IDSToolResponse.Response;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v40 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v22;
      if (v22)
      {
        LOBYTE(v41) = 1;
        sub_1A7D5695C();
        sub_1A7E22E70();
        v23 = v19;
        sub_1A7D57024();
        v24 = v36;
        sub_1A7E22F30();
        (*(v37 + 8))(v7, v24);
        (*(v40 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v25 = v41;
        v26 = v42;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_1A7D56A04();
        sub_1A7E22E70();
        v23 = v19;
        sub_1A7CC7FFC(&qword_1EB2B6538);
        sub_1A7D57078(&qword_1EB2B6570, sub_1A7D570F0);
        v31 = v35;
        sub_1A7E22F30();
        v32 = v40;
        (*(v38 + 8))(v11, v31);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v26 = 0;
        v25 = v41;
      }

      *v23 = v25;
      *(v23 + 8) = v26;
      *(v23 + 16) = v34 & 1;
    }
  }

  return sub_1A7B0CD6C(v47);
}

unint64_t sub_1A7D57024()
{
  result = qword_1EB2B6568;
  if (!qword_1EB2B6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6568);
  }

  return result;
}

uint64_t sub_1A7D57078(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B6538);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7D570F0()
{
  result = qword_1EB2B6578;
  if (!qword_1EB2B6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6578);
  }

  return result;
}

uint64_t sub_1A7D5718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D57214(uint64_t a1)
{
  v2 = sub_1A7D57410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D57250(uint64_t a1)
{
  v2 = sub_1A7D57410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolResponse.encode(to:)(void *a1)
{
  v12[0] = sub_1A7CC7FFC(&qword_1EB2B6580);
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0], v4);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D57404();
  sub_1A7D57410();
  sub_1A7E23260();
  v12[1] = v7;
  v12[2] = v8;
  v13 = v9;
  sub_1A7D57464();
  v10 = v12[0];
  sub_1A7E23030();
  sub_1A7D3B848();
  return (*(v3 + 8))(v6, v10);
}

unint64_t sub_1A7D57410()
{
  result = qword_1EB2B6588;
  if (!qword_1EB2B6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6588);
  }

  return result;
}

unint64_t sub_1A7D57464()
{
  result = qword_1EB2B6590;
  if (!qword_1EB2B6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6590);
  }

  return result;
}

uint64_t IDSToolResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B6598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D57410();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7D57630();
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    v10 = v13;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D57630()
{
  result = qword_1EB2B65A0;
  if (!qword_1EB2B65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65A0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CLIString.Format(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A7D576E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A7D5772C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1A7D577D0()
{
  result = qword_1EB2B65A8;
  if (!qword_1EB2B65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65A8);
  }

  return result;
}

unint64_t sub_1A7D57828()
{
  result = qword_1EB2B65B0;
  if (!qword_1EB2B65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65B0);
  }

  return result;
}

unint64_t sub_1A7D57880()
{
  result = qword_1EB2B65B8;
  if (!qword_1EB2B65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65B8);
  }

  return result;
}

unint64_t sub_1A7D578D8()
{
  result = qword_1EB2B65C0;
  if (!qword_1EB2B65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65C0);
  }

  return result;
}

unint64_t sub_1A7D57930()
{
  result = qword_1EB2B65C8;
  if (!qword_1EB2B65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65C8);
  }

  return result;
}

unint64_t sub_1A7D57988()
{
  result = qword_1EB2B65D0;
  if (!qword_1EB2B65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65D0);
  }

  return result;
}

unint64_t sub_1A7D579E0()
{
  result = qword_1EB2B65D8;
  if (!qword_1EB2B65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65D8);
  }

  return result;
}

unint64_t sub_1A7D57A38()
{
  result = qword_1EB2B65E0;
  if (!qword_1EB2B65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65E0);
  }

  return result;
}

unint64_t sub_1A7D57A90()
{
  result = qword_1EB2B65E8;
  if (!qword_1EB2B65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65E8);
  }

  return result;
}

unint64_t sub_1A7D57AE8()
{
  result = qword_1EB2B65F0;
  if (!qword_1EB2B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65F0);
  }

  return result;
}

unint64_t sub_1A7D57B40()
{
  result = qword_1EB2B65F8;
  if (!qword_1EB2B65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B65F8);
  }

  return result;
}

unint64_t sub_1A7D57B98()
{
  result = qword_1EB2B6600;
  if (!qword_1EB2B6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6600);
  }

  return result;
}

id IDSToolSwiftBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = IDSToolSwiftBridge;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A7D57ED0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A7E22530();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A7D57FB4;

  return sub_1A7D5862C(v5);
}

uint64_t sub_1A7D57FB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t type metadata accessor for IDSToolSwiftBridge()
{
  result = qword_1EB2B6610;
  if (!qword_1EB2B6610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6610);
  }

  return result;
}

uint64_t sub_1A7D582C4()
{
  v0 = sub_1A7E21F80();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - v6;
  v48 = sub_1A7CE28FC(MEMORY[0x1E69E7CC0]);
  if (qword_1EB2B3010 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_1A7B0CB00(v0, qword_1EB2DC0B0);
  v7 = sub_1A7E21F60();
  v8 = v7;
  v44 = *(v7 + 16);
  if (!v44)
  {
LABEL_20:

    return v48;
  }

  v43 = v0;
  v9 = 0;
  v10 = (v1 + 8);
  v11 = v7 + 40;
  v41 = v7;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v49 = v9;
    v0 = *(v11 - 8);
    v13 = v45;
    sub_1A7E21E40();
    v14 = sub_1A7E21F50();
    v16 = v15;
    v17 = *v10;
    v1 = v43;
    (*v10)(v13, v43);
    if (v16)
    {
      break;
    }

LABEL_6:
    v9 = v49 + 1;
    v11 += 16;
    if (v44 == v49 + 1)
    {
      goto LABEL_20;
    }
  }

  v18 = v42;
  v19 = v14;
  sub_1A7E21E40();
  v46 = sub_1A7E21F70();
  v47 = v20;
  v21 = v18;
  v22 = v10;
  v17(v21, v1);
  v23 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v23;
  v26 = sub_1A7CD1248(v19, v16);
  v27 = *(v23 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    goto LABEL_22;
  }

  v0 = v25;
  v1 = v16;
  if (*(v23 + 24) >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v46;
      v32 = v47;
      if ((v25 & 1) == 0)
      {
LABEL_16:
        v34 = v50;
        v50[(v26 >> 6) + 8] |= 1 << v26;
        v35 = (v34[6] + 16 * v26);
        *v35 = v19;
        v35[1] = v16;
        v36 = (v34[7] + 16 * v26);
        *v36 = v33;
        v36[1] = v32;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v48 = v34;
        v34[2] = v39;
        goto LABEL_5;
      }
    }

    else
    {
      sub_1A7DC8600();
      v33 = v46;
      v32 = v47;
      if ((v0 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:

    v48 = v50;
    v12 = (v50[7] + 16 * v26);
    *v12 = v33;
    v12[1] = v32;

LABEL_5:
    v8 = v41;
    v10 = v22;
    goto LABEL_6;
  }

  sub_1A7DC233C(v29, isUniquelyReferenced_nonNull_native);
  v30 = sub_1A7CD1248(v19, v16);
  if ((v0 & 1) == (v31 & 1))
  {
    v26 = v30;
    v33 = v46;
    v32 = v47;
    if ((v0 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  result = sub_1A7E23140();
  __break(1u);
  return result;
}