void ResponseOutput.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v33 = v3;
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v34 = sub_1DD710A9C(&qword_1ECD0FF30, &qword_1DD881720);
  sub_1DD6DDEAC(v34);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E17C8();
  v36 = type metadata accessor for ResponseOutput(0);
  v13 = sub_1DD6DE1C4(v36);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE4A8();
  v18 = v17 - v16;
  v20 = v2[3];
  v19 = v2[4];
  v35 = v2;
  sub_1DD6DEA7C(v2, v20);
  sub_1DD77B414();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v35);
  }

  else
  {
    v32 = v9;
    sub_1DD710A9C(&qword_1ECD0FED8, &qword_1DD881708);
    sub_1DD77B5F4(&unk_1ECD0FF38);
    sub_1DD6F9A7C();
    sub_1DD8758D0();
    *v18 = v37;
    sub_1DD77B674();
    sub_1DD6E5DBC();
    sub_1DD875860();
    v21 = v38;
    *(v18 + 8) = v37;
    *(v18 + 24) = v21;
    sub_1DD6E5DBC();
    sub_1DD875860();
    v22 = v38;
    *(v18 + 32) = v37;
    *(v18 + 48) = v22;
    type metadata accessor for ResponseOutput.VisualOutput(0);
    LOBYTE(v37) = 3;
    sub_1DD6DDFF4();
    sub_1DD7718BC(v23);
    v24 = v32;
    sub_1DD6FF7B4();
    sub_1DD875860();
    v25 = v36;
    sub_1DD77B390(v24, v18 + v36[7]);
    sub_1DD6E70D8();
    sub_1DD77B6C8();
    sub_1DD6E5DBC();
    sub_1DD8758D0();
    *(v18 + v25[8]) = v37;
    sub_1DD6E41B0();
    sub_1DD77B71C();
    sub_1DD6E5DBC();
    sub_1DD8758D0();
    *(v18 + v25[9]) = v37;
    sub_1DD710A9C(&qword_1ECD0FF08, &qword_1DD881710);
    sub_1DD77B770(&unk_1ECD0FF60);
    sub_1DD6F9A7C();
    sub_1DD6FF7B4();
    sub_1DD8758D0();
    *(v18 + v25[10]) = v37;
    LOBYTE(v37) = 7;
    v26 = sub_1DD875820();
    v27 = (v18 + v25[11]);
    *v27 = v26;
    v27[1] = v28;
    sub_1DD710A9C(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD77B564(&unk_1ECD0FF68);
    sub_1DD6F9A7C();
    sub_1DD6FF7B4();
    sub_1DD8758D0();
    v29 = sub_1DD6DEAAC();
    v30(v29);
    *(v18 + v25[12]) = v37;
    sub_1DD77A8DC(v18, v33);
    sub_1DD6E1EC8(v35);
    sub_1DD77A934(v18, type metadata accessor for ResponseOutput);
  }

  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.build(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD710A9C(&qword_1ECD0FF78, &qword_1DD881728);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  v7 = type metadata accessor for RGPluginModel(0);
  v8 = sub_1DD6DE1C4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  v14 = sub_1DD8745E0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1DD8745D0();
  sub_1DD6E0ABC();
  sub_1DD7718BC(v17);
  sub_1DD8745C0();

  sub_1DD6E5E68(v1, 0, 1, v7);
  sub_1DD771B18(v1, v13);
  sub_1DD771B18(v13, a1);
  v18 = type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6DDEFC();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(a1, 0, 1, v18);
}

unint64_t sub_1DD77A7C0()
{
  result = qword_1ECD0FC60;
  if (!qword_1ECD0FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC60);
  }

  return result;
}

unint64_t sub_1DD77A814()
{
  result = qword_1ECD0FC68;
  if (!qword_1ECD0FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC68);
  }

  return result;
}

unint64_t sub_1DD77A868()
{
  result = qword_1ECD0FC78;
  if (!qword_1ECD0FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC78);
  }

  return result;
}

uint64_t sub_1DD77A8DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v5 = v4(v3);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

uint64_t sub_1DD77A934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD77A98C()
{
  result = qword_1ECD0FCB8;
  if (!qword_1ECD0FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCB8);
  }

  return result;
}

unint64_t sub_1DD77A9E0()
{
  result = qword_1ECD0FCC0;
  if (!qword_1ECD0FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCC0);
  }

  return result;
}

unint64_t sub_1DD77AA34()
{
  result = qword_1ECD0FCC8;
  if (!qword_1ECD0FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCC8);
  }

  return result;
}

unint64_t sub_1DD77AA88()
{
  result = qword_1ECD0FCD0;
  if (!qword_1ECD0FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCD0);
  }

  return result;
}

unint64_t sub_1DD77AADC()
{
  result = qword_1ECD0FCD8;
  if (!qword_1ECD0FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCD8);
  }

  return result;
}

unint64_t sub_1DD77AB30()
{
  result = qword_1ECD0FCE0;
  if (!qword_1ECD0FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCE0);
  }

  return result;
}

unint64_t sub_1DD77AB84()
{
  result = qword_1ECD0FCF0;
  if (!qword_1ECD0FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCF0);
  }

  return result;
}

unint64_t sub_1DD77ABD8()
{
  result = qword_1ECD0FCF8;
  if (!qword_1ECD0FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCF8);
  }

  return result;
}

unint64_t sub_1DD77AC2C()
{
  result = qword_1ECD0FD00;
  if (!qword_1ECD0FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD00);
  }

  return result;
}

unint64_t sub_1DD77AC80()
{
  result = qword_1ECD0FD08;
  if (!qword_1ECD0FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD08);
  }

  return result;
}

unint64_t sub_1DD77ACD4()
{
  result = qword_1ECD0FD40;
  if (!qword_1ECD0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD40);
  }

  return result;
}

unint64_t sub_1DD77AD28()
{
  result = qword_1ECD0FD48;
  if (!qword_1ECD0FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD48);
  }

  return result;
}

unint64_t sub_1DD77AD7C()
{
  result = qword_1ECD0FD58;
  if (!qword_1ECD0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD58);
  }

  return result;
}

unint64_t sub_1DD77ADD0()
{
  result = qword_1ECD0FD60;
  if (!qword_1ECD0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD60);
  }

  return result;
}

unint64_t sub_1DD77AE24()
{
  result = qword_1ECD0FD70;
  if (!qword_1ECD0FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD70);
  }

  return result;
}

uint64_t sub_1DD77AE78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1DD77AE90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_1DD77AEA8()
{
  result = qword_1ECD0FDB8;
  if (!qword_1ECD0FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDB8);
  }

  return result;
}

unint64_t sub_1DD77AEFC()
{
  result = qword_1ECD0FDC0;
  if (!qword_1ECD0FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDC0);
  }

  return result;
}

unint64_t sub_1DD77AF50()
{
  result = qword_1ECD0FDC8;
  if (!qword_1ECD0FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDC8);
  }

  return result;
}

unint64_t sub_1DD77AFA4()
{
  result = qword_1ECD0FDD0;
  if (!qword_1ECD0FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDD0);
  }

  return result;
}

unint64_t sub_1DD77AFF8()
{
  result = qword_1ECD0FDD8;
  if (!qword_1ECD0FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDD8);
  }

  return result;
}

unint64_t sub_1DD77B04C()
{
  result = qword_1ECD0FDE0;
  if (!qword_1ECD0FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDE0);
  }

  return result;
}

unint64_t sub_1DD77B0A0()
{
  result = qword_1ECD0FDE8;
  if (!qword_1ECD0FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDE8);
  }

  return result;
}

unint64_t sub_1DD77B0F4()
{
  result = qword_1ECD0FE58;
  if (!qword_1ECD0FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE58);
  }

  return result;
}

unint64_t sub_1DD77B148()
{
  result = qword_1ECD0FE60;
  if (!qword_1ECD0FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE60);
  }

  return result;
}

unint64_t sub_1DD77B19C()
{
  result = qword_1ECD0FE68;
  if (!qword_1ECD0FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE68);
  }

  return result;
}

unint64_t sub_1DD77B1F0()
{
  result = qword_1ECD0FE70;
  if (!qword_1ECD0FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE70);
  }

  return result;
}

unint64_t sub_1DD77B244()
{
  result = qword_1ECD0FE78;
  if (!qword_1ECD0FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE78);
  }

  return result;
}

unint64_t sub_1DD77B298()
{
  result = qword_1ECD0FE80;
  if (!qword_1ECD0FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE80);
  }

  return result;
}

uint64_t sub_1DD77B2EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DD77AE78(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DD77B320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD77B390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD77B400(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DD77AE90(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1DD77B414()
{
  result = qword_1ECD0FED0;
  if (!qword_1ECD0FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FED0);
  }

  return result;
}

unint64_t sub_1DD77B468()
{
  result = qword_1ECD0FEF0;
  if (!qword_1ECD0FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FEF0);
  }

  return result;
}

unint64_t sub_1DD77B4BC()
{
  result = qword_1ECD0FEF8;
  if (!qword_1ECD0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FEF8);
  }

  return result;
}

unint64_t sub_1DD77B510()
{
  result = qword_1ECD0FF00;
  if (!qword_1ECD0FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF00);
  }

  return result;
}

unint64_t sub_1DD77B564(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD7718BC(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B5F4(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FED8, &qword_1DD881708);
    sub_1DD6DDFF4();
    sub_1DD7718BC(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B674()
{
  result = qword_1ECD0FF48;
  if (!qword_1ECD0FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF48);
  }

  return result;
}

unint64_t sub_1DD77B6C8()
{
  result = qword_1ECD0FF50;
  if (!qword_1ECD0FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF50);
  }

  return result;
}

unint64_t sub_1DD77B71C()
{
  result = qword_1ECD0FF58;
  if (!qword_1ECD0FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF58);
  }

  return result;
}

unint64_t sub_1DD77B770(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FF08, &qword_1DD881710);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B7E0()
{
  result = qword_1ECD0FF80;
  if (!qword_1ECD0FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF80);
  }

  return result;
}

void sub_1DD77B85C()
{
  sub_1DD77BA54(319, &qword_1EE018D18, type metadata accessor for ResponseOutput.VisualOutput, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DD77BAB8(319, qword_1EE019668, &type metadata for ResponseOutput.DialogType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD77BA54(319, qword_1EE0196E0, type metadata accessor for ResponseOutput.VisualOutput, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DD77BAB8(319, &qword_1EE018D20, &type metadata for StatementID, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1DD77BAB8(319, &qword_1EE018D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1DD77BA54(319, &qword_1EE018CF8, MEMORY[0x1E69DAC90], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DD77BA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD77BAB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DD77BB08()
{
  result = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD77BBD8()
{
  result = type metadata accessor for RGPluginModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD77BC54(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1DD77BC88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 17))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3F9)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD77BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1DD77BD24(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    v2 = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0x2000000000000000;
    v2 = 1;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutputOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD77BE44(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1DD77BE60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD77BEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DD77BEE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.DialogType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD77C22C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutput.PluginSnippetOutputPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD77C5B0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD77C660()
{
  result = qword_1ECD0FF88;
  if (!qword_1ECD0FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF88);
  }

  return result;
}

unint64_t sub_1DD77C6B8()
{
  result = qword_1ECD0FF90;
  if (!qword_1ECD0FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF90);
  }

  return result;
}

unint64_t sub_1DD77C710()
{
  result = qword_1ECD0FF98;
  if (!qword_1ECD0FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF98);
  }

  return result;
}

unint64_t sub_1DD77C768()
{
  result = qword_1ECD0FFA0;
  if (!qword_1ECD0FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFA0);
  }

  return result;
}

unint64_t sub_1DD77C7C0()
{
  result = qword_1ECD0FFA8;
  if (!qword_1ECD0FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFA8);
  }

  return result;
}

unint64_t sub_1DD77C818()
{
  result = qword_1ECD0FFB0;
  if (!qword_1ECD0FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFB0);
  }

  return result;
}

unint64_t sub_1DD77C870()
{
  result = qword_1ECD0FFB8;
  if (!qword_1ECD0FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFB8);
  }

  return result;
}

unint64_t sub_1DD77C8C8()
{
  result = qword_1ECD0FFC0;
  if (!qword_1ECD0FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFC0);
  }

  return result;
}

unint64_t sub_1DD77C920()
{
  result = qword_1ECD0FFC8;
  if (!qword_1ECD0FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFC8);
  }

  return result;
}

unint64_t sub_1DD77C978()
{
  result = qword_1ECD0FFD0;
  if (!qword_1ECD0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFD0);
  }

  return result;
}

unint64_t sub_1DD77C9D0()
{
  result = qword_1ECD0FFD8;
  if (!qword_1ECD0FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFD8);
  }

  return result;
}

unint64_t sub_1DD77CA28()
{
  result = qword_1ECD0FFE0;
  if (!qword_1ECD0FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFE0);
  }

  return result;
}

unint64_t sub_1DD77CA80()
{
  result = qword_1ECD0FFE8;
  if (!qword_1ECD0FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFE8);
  }

  return result;
}

unint64_t sub_1DD77CAD8()
{
  result = qword_1ECD0FFF0;
  if (!qword_1ECD0FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFF0);
  }

  return result;
}

unint64_t sub_1DD77CB30()
{
  result = qword_1ECD0FFF8;
  if (!qword_1ECD0FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFF8);
  }

  return result;
}

unint64_t sub_1DD77CB88()
{
  result = qword_1ECD10000;
  if (!qword_1ECD10000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10000);
  }

  return result;
}

unint64_t sub_1DD77CBE0()
{
  result = qword_1ECD10008;
  if (!qword_1ECD10008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10008);
  }

  return result;
}

unint64_t sub_1DD77CC38()
{
  result = qword_1ECD10010;
  if (!qword_1ECD10010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10010);
  }

  return result;
}

unint64_t sub_1DD77CC90()
{
  result = qword_1ECD10018;
  if (!qword_1ECD10018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10018);
  }

  return result;
}

unint64_t sub_1DD77CCE8()
{
  result = qword_1ECD10020;
  if (!qword_1ECD10020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10020);
  }

  return result;
}

unint64_t sub_1DD77CD40()
{
  result = qword_1ECD10028;
  if (!qword_1ECD10028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10028);
  }

  return result;
}

unint64_t sub_1DD77CD98()
{
  result = qword_1ECD10030;
  if (!qword_1ECD10030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10030);
  }

  return result;
}

unint64_t sub_1DD77CDF0()
{
  result = qword_1ECD10038;
  if (!qword_1ECD10038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10038);
  }

  return result;
}

unint64_t sub_1DD77CE48()
{
  result = qword_1ECD10040;
  if (!qword_1ECD10040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10040);
  }

  return result;
}

unint64_t sub_1DD77CEA0()
{
  result = qword_1ECD10048;
  if (!qword_1ECD10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10048);
  }

  return result;
}

unint64_t sub_1DD77CEF8()
{
  result = qword_1ECD10050;
  if (!qword_1ECD10050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10050);
  }

  return result;
}

unint64_t sub_1DD77CF50()
{
  result = qword_1ECD10058;
  if (!qword_1ECD10058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10058);
  }

  return result;
}

unint64_t sub_1DD77CFA8()
{
  result = qword_1ECD10060;
  if (!qword_1ECD10060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10060);
  }

  return result;
}

unint64_t sub_1DD77D000()
{
  result = qword_1ECD10068;
  if (!qword_1ECD10068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10068);
  }

  return result;
}

unint64_t sub_1DD77D058()
{
  result = qword_1ECD10070;
  if (!qword_1ECD10070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10070);
  }

  return result;
}

unint64_t sub_1DD77D0B0()
{
  result = qword_1ECD10078;
  if (!qword_1ECD10078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10078);
  }

  return result;
}

unint64_t sub_1DD77D108()
{
  result = qword_1ECD10080;
  if (!qword_1ECD10080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10080);
  }

  return result;
}

unint64_t sub_1DD77D160()
{
  result = qword_1ECD10088;
  if (!qword_1ECD10088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10088);
  }

  return result;
}

unint64_t sub_1DD77D1B8()
{
  result = qword_1ECD10090;
  if (!qword_1ECD10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10090);
  }

  return result;
}

unint64_t sub_1DD77D210()
{
  result = qword_1ECD10098;
  if (!qword_1ECD10098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10098);
  }

  return result;
}

unint64_t sub_1DD77D268()
{
  result = qword_1ECD100A0;
  if (!qword_1ECD100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100A0);
  }

  return result;
}

unint64_t sub_1DD77D2C0()
{
  result = qword_1ECD100A8;
  if (!qword_1ECD100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100A8);
  }

  return result;
}

unint64_t sub_1DD77D318()
{
  result = qword_1ECD100B0;
  if (!qword_1ECD100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100B0);
  }

  return result;
}

unint64_t sub_1DD77D370()
{
  result = qword_1ECD100B8;
  if (!qword_1ECD100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100B8);
  }

  return result;
}

unint64_t sub_1DD77D3C8()
{
  result = qword_1ECD100C0;
  if (!qword_1ECD100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100C0);
  }

  return result;
}

unint64_t sub_1DD77D420()
{
  result = qword_1ECD100C8;
  if (!qword_1ECD100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100C8);
  }

  return result;
}

unint64_t sub_1DD77D478()
{
  result = qword_1ECD100D0;
  if (!qword_1ECD100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100D0);
  }

  return result;
}

unint64_t sub_1DD77D4D0()
{
  result = qword_1ECD100D8;
  if (!qword_1ECD100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100D8);
  }

  return result;
}

unint64_t sub_1DD77D528()
{
  result = qword_1ECD100E0;
  if (!qword_1ECD100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100E0);
  }

  return result;
}

unint64_t sub_1DD77D580()
{
  result = qword_1ECD100E8;
  if (!qword_1ECD100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100E8);
  }

  return result;
}

unint64_t sub_1DD77D5D8()
{
  result = qword_1ECD100F0;
  if (!qword_1ECD100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100F0);
  }

  return result;
}

unint64_t sub_1DD77D630()
{
  result = qword_1ECD100F8;
  if (!qword_1ECD100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100F8);
  }

  return result;
}

unint64_t sub_1DD77D688()
{
  result = qword_1ECD10100;
  if (!qword_1ECD10100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10100);
  }

  return result;
}

unint64_t sub_1DD77D6E0()
{
  result = qword_1ECD10108;
  if (!qword_1ECD10108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10108);
  }

  return result;
}

unint64_t sub_1DD77D738()
{
  result = qword_1ECD10110;
  if (!qword_1ECD10110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10110);
  }

  return result;
}

unint64_t sub_1DD77D790()
{
  result = qword_1ECD10118;
  if (!qword_1ECD10118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10118);
  }

  return result;
}

unint64_t sub_1DD77D7E8()
{
  result = qword_1ECD10120;
  if (!qword_1ECD10120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10120);
  }

  return result;
}

unint64_t sub_1DD77D840()
{
  result = qword_1ECD10128;
  if (!qword_1ECD10128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10128);
  }

  return result;
}

unint64_t sub_1DD77D898()
{
  result = qword_1ECD10130;
  if (!qword_1ECD10130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10130);
  }

  return result;
}

unint64_t sub_1DD77D8F0()
{
  result = qword_1ECD10138;
  if (!qword_1ECD10138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10138);
  }

  return result;
}

unint64_t sub_1DD77D948()
{
  result = qword_1ECD10140;
  if (!qword_1ECD10140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10140);
  }

  return result;
}

unint64_t sub_1DD77D9A0()
{
  result = qword_1ECD10148;
  if (!qword_1ECD10148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10148);
  }

  return result;
}

unint64_t sub_1DD77D9F8()
{
  result = qword_1ECD10150;
  if (!qword_1ECD10150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10150);
  }

  return result;
}

unint64_t sub_1DD77DA50()
{
  result = qword_1ECD10158;
  if (!qword_1ECD10158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10158);
  }

  return result;
}

unint64_t sub_1DD77DAA8()
{
  result = qword_1ECD10160;
  if (!qword_1ECD10160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10160);
  }

  return result;
}

unint64_t sub_1DD77DB00()
{
  result = qword_1ECD10168;
  if (!qword_1ECD10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10168);
  }

  return result;
}

unint64_t sub_1DD77DB58()
{
  result = qword_1ECD10170;
  if (!qword_1ECD10170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10170);
  }

  return result;
}

unint64_t sub_1DD77DBB0()
{
  result = qword_1ECD10178;
  if (!qword_1ECD10178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10178);
  }

  return result;
}

unint64_t sub_1DD77DC08()
{
  result = qword_1ECD10180;
  if (!qword_1ECD10180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10180);
  }

  return result;
}

unint64_t sub_1DD77DC60()
{
  result = qword_1ECD10188;
  if (!qword_1ECD10188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10188);
  }

  return result;
}

unint64_t sub_1DD77DCB8()
{
  result = qword_1ECD10190;
  if (!qword_1ECD10190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10190);
  }

  return result;
}

unint64_t sub_1DD77DD10()
{
  result = qword_1ECD10198;
  if (!qword_1ECD10198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10198);
  }

  return result;
}

unint64_t sub_1DD77DD68()
{
  result = qword_1ECD101A0;
  if (!qword_1ECD101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101A0);
  }

  return result;
}

unint64_t sub_1DD77DDC0()
{
  result = qword_1ECD101A8;
  if (!qword_1ECD101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101A8);
  }

  return result;
}

unint64_t sub_1DD77DE18()
{
  result = qword_1ECD101B0;
  if (!qword_1ECD101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101B0);
  }

  return result;
}

unint64_t sub_1DD77DE70()
{
  result = qword_1ECD101B8;
  if (!qword_1ECD101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101B8);
  }

  return result;
}

unint64_t sub_1DD77DEC8()
{
  result = qword_1ECD101C0;
  if (!qword_1ECD101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101C0);
  }

  return result;
}

unint64_t sub_1DD77DF20()
{
  result = qword_1ECD101C8;
  if (!qword_1ECD101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101C8);
  }

  return result;
}

unint64_t sub_1DD77DF78()
{
  result = qword_1ECD101D0;
  if (!qword_1ECD101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101D0);
  }

  return result;
}

unint64_t sub_1DD77DFD0()
{
  result = qword_1ECD101D8;
  if (!qword_1ECD101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101D8);
  }

  return result;
}

unint64_t sub_1DD77E028()
{
  result = qword_1ECD101E0;
  if (!qword_1ECD101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101E0);
  }

  return result;
}

unint64_t sub_1DD77E080()
{
  result = qword_1ECD101E8;
  if (!qword_1ECD101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101E8);
  }

  return result;
}

unint64_t sub_1DD77E0D8()
{
  result = qword_1ECD101F0;
  if (!qword_1ECD101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101F0);
  }

  return result;
}

unint64_t sub_1DD77E130()
{
  result = qword_1ECD101F8;
  if (!qword_1ECD101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101F8);
  }

  return result;
}

unint64_t sub_1DD77E188()
{
  result = qword_1ECD10200;
  if (!qword_1ECD10200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10200);
  }

  return result;
}

unint64_t sub_1DD77E1E0()
{
  result = qword_1ECD10208;
  if (!qword_1ECD10208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10208);
  }

  return result;
}

unint64_t sub_1DD77E238()
{
  result = qword_1ECD10210;
  if (!qword_1ECD10210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10210);
  }

  return result;
}

unint64_t sub_1DD77E290()
{
  result = qword_1ECD10218;
  if (!qword_1ECD10218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10218);
  }

  return result;
}

unint64_t sub_1DD77E2E8()
{
  result = qword_1ECD10220;
  if (!qword_1ECD10220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10220);
  }

  return result;
}

unint64_t sub_1DD77E340()
{
  result = qword_1ECD10228;
  if (!qword_1ECD10228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10228);
  }

  return result;
}

unint64_t sub_1DD77E398()
{
  result = qword_1ECD10230;
  if (!qword_1ECD10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10230);
  }

  return result;
}

unint64_t sub_1DD77E3F0()
{
  result = qword_1ECD10238;
  if (!qword_1ECD10238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10238);
  }

  return result;
}

unint64_t sub_1DD77E448()
{
  result = qword_1ECD10240;
  if (!qword_1ECD10240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10240);
  }

  return result;
}

unint64_t sub_1DD77E4A0()
{
  result = qword_1ECD10248;
  if (!qword_1ECD10248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10248);
  }

  return result;
}

unint64_t sub_1DD77E4F8()
{
  result = qword_1ECD10250;
  if (!qword_1ECD10250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10250);
  }

  return result;
}

unint64_t sub_1DD77E550()
{
  result = qword_1ECD10258;
  if (!qword_1ECD10258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10258);
  }

  return result;
}

unint64_t sub_1DD77E5A8()
{
  result = qword_1ECD10260;
  if (!qword_1ECD10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10260);
  }

  return result;
}

unint64_t sub_1DD77E600()
{
  result = qword_1ECD10268;
  if (!qword_1ECD10268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10268);
  }

  return result;
}

unint64_t sub_1DD77E658()
{
  result = qword_1ECD10270;
  if (!qword_1ECD10270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10270);
  }

  return result;
}

uint64_t ResponseOverrideMatcher.__allocating_init(locale:)(uint64_t a1)
{
  sub_1DD785E80();
  v2 = swift_allocObject();
  ResponseOverrideMatcher.init(locale:)(a1);
  return v2;
}

uint64_t ResponseOverrideMatcher.init(locale:)(uint64_t a1)
{
  v4 = type metadata accessor for SearchOverrides_SearchOverrides(0);
  v5 = sub_1DD6DEA10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  *(v1 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD77E904(0xD000000000000010, 0x80000001DD8B5DF0, v9 - v8);
  v10 = sub_1DD874890();
  sub_1DD6DE1C4(v10);
  (*(v11 + 8))(a1);
  if (v2)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache);

    type metadata accessor for ResponseOverrideMatcher();
    v13 = *(*v1 + 48);
    v14 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6E0AE4();
    sub_1DD785B64();
  }

  return v1;
}

uint64_t sub_1DD77E904@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v83 = a3;
  v90 = a1;
  v91 = a2;
  v6 = sub_1DD874890();
  v7 = sub_1DD6DDEAC(v6);
  v85 = v8;
  v86 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v84 = v12 - v11;
  sub_1DD6E9A9C();
  v13 = sub_1DD874ED0();
  v14 = sub_1DD6DDEAC(v13);
  v88 = v15;
  v89 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  v87 = v19 - v18;
  v20 = sub_1DD710A9C(&qword_1ECD10340, &qword_1DD884D80);
  v21 = sub_1DD6DEA10(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE21C();
  v82 = v24 - v25;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEBEC();
  v27 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v28 = sub_1DD6DEA10(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DE21C();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v81 - v35;
  v37 = sub_1DD874740();
  v38 = sub_1DD6DDEAC(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DFF40();
  sub_1DD7831C8();
  if (sub_1DD6E5ED0(v36, 1, v37) == 1)
  {
    sub_1DD6FC560(v36, &qword_1ECD16C10, &qword_1DD878230);
  }

  else
  {
    v44 = *(v40 + 32);
    v45 = sub_1DD6E60FC();
    v46(v45);
    sub_1DD783364();
    (*(v40 + 8))(v4, v37);
    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v47 = sub_1DD6DF154();
    if (sub_1DD6E5ED0(v47, v48, v49) != 1)
    {
      goto LABEL_11;
    }

    sub_1DD6FC560(v5, &qword_1ECD10340, &qword_1DD884D80);
  }

  sub_1DD78427C();
  if (sub_1DD6E5ED0(v33, 1, v37) != 1)
  {
    (*(v40 + 32))(v3, v33, v37);
    v53 = v82;
    sub_1DD783364();
    (*(v40 + 8))(v3, v37);
    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v54 = sub_1DD6DF154();
    if (sub_1DD6E5ED0(v54, v55, v56) == 1)
    {
      v50 = &qword_1ECD10340;
      v51 = &qword_1DD884D80;
      v52 = v53;
      goto LABEL_9;
    }

LABEL_11:
    sub_1DD6E0AE4();
    return sub_1DD785B64();
  }

  v50 = &qword_1ECD16C10;
  v51 = &qword_1DD878230;
  v52 = v33;
LABEL_9:
  sub_1DD6FC560(v52, v50, v51);
  v57 = v87;
  sub_1DD874BE0();
  v58 = v84;
  v59 = v85;
  v60 = *(v85 + 16);
  v61 = sub_1DD6E60FC();
  v62 = v86;
  v63(v61);
  v64 = sub_1DD874EC0();
  v65 = sub_1DD8754E0();
  if (os_log_type_enabled(v64, v65))
  {
    sub_1DD6ED18C();
    v66 = swift_slowAlloc();
    sub_1DD6E0FA4();
    v67 = swift_slowAlloc();
    v92 = v67;
    *v66 = 136315138;
    v68 = sub_1DD874830();
    v69 = v58;
    v71 = v70;
    (*(v59 + 8))(v69, v62);
    v72 = sub_1DD6FD650(v68, v71, &v92);

    *(v66 + 4) = v72;
    sub_1DD6E112C();
    _os_log_impl(v73, v74, v75, v76, v77, v78);
    sub_1DD6E1EC8(v67);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    v79 = sub_1DD6E4978();
    MEMORY[0x1E12B5DE0](v79);
  }

  else
  {

    (*(v59 + 8))(v58, v62);
  }

  (*(v88 + 8))(v57, v89);
  sub_1DD785C6C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t type metadata accessor for ResponseOverrideMatcher()
{
  result = qword_1ECD102B0;
  if (!qword_1ECD102B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResponseOverrideMatcher.__allocating_init(jsonString:)()
{
  sub_1DD785E80();
  v0 = swift_allocObject();
  sub_1DD6E0F70();
  ResponseOverrideMatcher.init(jsonString:)();
  return v0;
}

uint64_t ResponseOverrideMatcher.init(jsonString:)()
{
  v2 = type metadata accessor for SearchOverrides_SearchOverrides(0);
  v3 = sub_1DD6DEA10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E60FC();
  sub_1DD77F014();

  if (v1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache);

    type metadata accessor for ResponseOverrideMatcher();
    v7 = *(*v0 + 48);
    v8 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6E0AE4();
    sub_1DD785B64();
  }

  return v0;
}

uint64_t sub_1DD77F014()
{
  sub_1DD6E87B8();
  v2 = sub_1DD874940();
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBEC();
  sub_1DD874930();
  sub_1DD874920();
  type metadata accessor for SearchOverrides_SearchOverrides(0);
  (*(v5 + 16))(v1, v0, v2);
  sub_1DD785C14();
  sub_1DD785ECC();

  sub_1DD6DDEDC();
  sub_1DD874A30();
  return (*(v5 + 8))(v0, v2);
}

uint64_t ResponseOverrideMatcher.__allocating_init(overrides:)()
{
  sub_1DD785E80();
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E0AE4();
  sub_1DD785B64();
  return v0;
}

uint64_t ResponseOverrideMatcher.init(overrides:)()
{
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E0AE4();
  sub_1DD785B64();
  return v0;
}

void sub_1DD77F1F8()
{
  sub_1DD6DEB38();
  v237 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v8 = sub_1DD6DEA1C(v7);
  v238 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE21C();
  v223 = v12 - v13;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6F1780();
  v224 = v15;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F1780();
  v226 = v17;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6F1780();
  v225 = v19;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6F1780();
  v228 = v21;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6F1780();
  v227 = v23;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6F1780();
  v235 = v25;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6F1780();
  v229 = v27;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6F1780();
  v236 = v29;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6F1780();
  v230 = v31;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F1780();
  v222 = v33;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v34);
  v220 = &v216 - v35;
  sub_1DD6E9A9C();
  v36 = sub_1DD874ED0();
  v37 = sub_1DD6DDEAC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DE21C();
  v217 = (v42 - v43);
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v216 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v216 - v50;
  memcpy(v245, v4, 0x68uLL);
  sub_1DD874BE0();
  sub_1DD785330(v245, v244);
  v52 = sub_1DD874EC0();
  v53 = sub_1DD8754C0();
  sub_1DD785368(v245);
  v54 = os_log_type_enabled(v52, v53);
  v221 = v6;
  v218 = v1;
  if (v54)
  {
    v55 = swift_slowAlloc();
    LODWORD(v233) = v53;
    v56 = v55;
    v234 = swift_slowAlloc();
    v244[0] = v234;
    *v56 = 136382211;
    *(v56 + 4) = sub_1DD6FD650(v245[0], v245[1], v244);
    v232 = v52;
    *(v56 + 12) = 2085;
    if (v245[3])
    {
      v57 = v245[2];
    }

    else
    {
      v57 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v56 + 14) = v57;
    *(v56 + 22) = 2085;
    if (v245[5])
    {
      v58 = v245[4];
    }

    else
    {
      v58 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v56 + 24) = v58;
    *(v56 + 32) = 2080;
    *(v56 + 34) = sub_1DD6FD650(v245[6], v245[7], v244);
    *(v56 + 42) = 2080;
    *(v56 + 44) = sub_1DD6FD650(v245[8], v245[9], v244);
    *(v56 + 52) = 2085;
    v59 = MEMORY[0x1E12B4D20](v245[10], MEMORY[0x1E69E6158]);
    v61 = sub_1DD6FD650(v59, v60, v244);

    *(v56 + 54) = v61;
    *(v56 + 62) = 2085;
    if (v245[12])
    {
      v62 = v245[11];
    }

    else
    {
      v62 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v56 + 64) = v62;
    v63 = v232;
    _os_log_impl(&dword_1DD6DC000, v232, v233, "Searching override matches for input:\nutterance: %{private}s\nresponse: %{sensitive}s\nanswer: %{sensitive}s\ninterfaceIdiom: %s\ndeviceType: %s\ncustomEntityDescriptions: %{sensitive}s\nonScreenText: %{sensitive}s", v56, 0x48u);
    swift_arrayDestroy();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  else
  {
  }

  isa = v39[1].isa;
  isa(v51, v36);
  v219 = v2;
  v232 = v39;
  v233 = v36;
  v64 = v237;
  v65 = *(v237 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);
  v66 = *(v65 + 16);
  v234 = v65;
  if (v66)
  {
    v216 = v48;
    v244[0] = MEMORY[0x1E69E7CC0];

    sub_1DD76C4A4(0, v66, 0);
    v67 = v244[0];
    sub_1DD6E0DE8();
    v70 = v65 + (v69 & ~v68);
    v72 = *(v71 + 72);
    v73 = v220;
    do
    {
      v74 = sub_1DD6E87AC();
      sub_1DD785398(v74, v75);
      v77 = *v73;
      v76 = v73[1];

      sub_1DD6E5304();
      sub_1DD785BBC(v73, v78);
      v244[0] = v67;
      v80 = *(v67 + 16);
      v79 = *(v67 + 24);
      if (v80 >= v79 >> 1)
      {
        v82 = sub_1DD6F0A3C(v79);
        sub_1DD76C4A4(v82, v80 + 1, 1);
        v73 = v220;
        v67 = v244[0];
      }

      *(v67 + 16) = v80 + 1;
      v81 = v67 + 16 * v80;
      *(v81 + 32) = v77;
      *(v81 + 40) = v76;
      v70 += v72;
      --v66;
    }

    while (v66);
    v64 = v237;
    v65 = v234;
    v48 = v216;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD874BE0();

  v83 = sub_1DD874EC0();
  v84 = sub_1DD8754D0();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = sub_1DD6DDF08();
    sub_1DD6E0FA4();
    v237 = swift_slowAlloc();
    v244[0] = v237;
    *v85 = 134218242;
    *(v85 + 4) = *(v65 + 16);
    *(v85 + 12) = 2080;
    v243[0] = v67;
    LODWORD(v220) = v84;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6EE25C();
    sub_1DD6DF59C(v86, v87, &qword_1DD8AEFF0);
    v88 = sub_1DD8750E0();
    v90 = v89;

    v91 = sub_1DD6FD650(v88, v90, v244);

    *(v85 + 14) = v91;
    _os_log_impl(&dword_1DD6DC000, v83, v220, "%ld overrides loaded: %s", v85, 0x16u);
    sub_1DD6E1EC8(v237);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  else
  {
  }

  isa(v48, v233);
  v92 = v235;
  v93 = v222;
  v237 = *(v65 + 16);

  v94 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  while (v237 != v94)
  {
    if (v94 >= *(v65 + 16))
    {
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

      sub_1DD6E5304();
      sub_1DD785BBC(v64, v215);

      __break(1u);
      return;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v65 + (v97 & ~v96) + *(v98 + 72) * v94, v93);
    sub_1DD7811FC();
    if (v99)
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244[0] = v95;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = *(v95 + 16);
        sub_1DD76C4C4();
        v93 = v222;
        v95 = v244[0];
      }

      v104 = *(v95 + 16);
      v103 = *(v95 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1DD6F0A3C(v103);
        sub_1DD76C4C4();
        v93 = v222;
        v95 = v244[0];
      }

      ++v94;
      *(v95 + 16) = v104 + 1;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v65 = v234;
      v92 = v235;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v93, v100);
      ++v94;
    }
  }

  v105 = v64;

  v64 = 0;
  v237 = *(v95 + 16);
  v106 = MEMORY[0x1E69E7CC0];
  while (v237 != v64)
  {
    if (v64 >= *(v95 + 16))
    {
      goto LABEL_122;
    }

    sub_1DD6E0DE8();
    v110 = v105;
    v111 = v236;
    sub_1DD785398(v95 + (v108 & ~v107) + *(v109 + 72) * v64, v236);
    sub_1DD6E1C3C();
    sub_1DD7817A4();
    if (v112)
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v114 = swift_isUniquelyReferenced_nonNull_native();
      v243[0] = v106;
      if ((v114 & 1) == 0)
      {
        v115 = *(v106 + 16);
        sub_1DD6FBE30();
        v106 = v243[0];
      }

      v105 = v110;
      v117 = *(v106 + 16);
      v116 = *(v106 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_1DD6FAB0C(v116);
        sub_1DD76C4C4();
        v106 = v243[0];
      }

      ++v64;
      *(v106 + 16) = v117 + 1;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v92 = v235;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v111, v113);
      ++v64;
      v105 = v110;
    }
  }

  v118 = 0;
  v119 = *(v106 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  while (v119 != v118)
  {
    if (v118 >= *(v106 + 16))
    {
      goto LABEL_123;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v106 + (v121 & ~v120) + *(v122 + 72) * v118, v92);
    sub_1DD6E1C3C();
    if (sub_1DD781A64())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v243[0] = v64;
      if ((v124 & 1) == 0)
      {
        v125 = *(v64 + 16);
        sub_1DD6FBE30();
        v64 = v243[0];
      }

      v127 = *(v64 + 16);
      v126 = *(v64 + 24);
      v128 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        sub_1DD6FAB0C(v126);
        v130 = v129;
        sub_1DD76C4C4();
        v128 = v130;
        v64 = v243[0];
      }

      ++v118;
      *(v64 + 16) = v128;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v92 = v235;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v92, v123);
      ++v118;
    }
  }

  v131 = 0;
  v132 = *(v64 + 16);
  v92 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v133 = v228;
  while (v132 != v131)
  {
    if (v131 >= *(v64 + 16))
    {
      goto LABEL_124;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v64 + (v135 & ~v134) + *(v136 + 72) * v131, v133);
    sub_1DD6E1C3C();
    if (sub_1DD781B94())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v243[0] = v92;
      if ((v138 & 1) == 0)
      {
        v139 = v92[2];
        sub_1DD6FBE30();
        v92 = v243[0];
      }

      v141 = v92[2];
      v140 = v92[3];
      v142 = v141 + 1;
      if (v141 >= v140 >> 1)
      {
        sub_1DD6FAB0C(v140);
        v144 = v143;
        sub_1DD76C4C4();
        v142 = v144;
        v92 = v243[0];
      }

      ++v131;
      v92[2] = v142;
      sub_1DD6E14AC();
      sub_1DD785B64();
      goto LABEL_54;
    }

    sub_1DD6E5304();
    sub_1DD785BBC(v133, v137);
    ++v131;
  }

  v145 = 0;
  v146 = v92[2];
  v237 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v64 = v226;
  while (v146 != v145)
  {
    if (v145 >= v92[2])
    {
      goto LABEL_125;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v92 + (v148 & ~v147) + *(v149 + 72) * v145, v64);
    sub_1DD6E1C3C();
    if (sub_1DD781CC4())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v151 = v237;
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v243[0] = v151;
      if ((v152 & 1) == 0)
      {
        v153 = v151[2];
        sub_1DD6FBE30();
        v151 = v243[0];
      }

      v155 = v151[2];
      v154 = v151[3];
      if (v155 >= v154 >> 1)
      {
        sub_1DD6FAB0C(v154);
        sub_1DD76C4C4();
        v151 = v243[0];
      }

      ++v145;
      v151[2] = v155 + 1;
      v237 = v151;
      sub_1DD6E14AC();
      sub_1DD785B64();
      goto LABEL_65;
    }

    sub_1DD6E5304();
    sub_1DD785BBC(v64, v150);
    ++v145;
  }

  v156 = v237;
  v157 = v237[2];

  v158 = 0;
  v92 = 0;
  v159 = MEMORY[0x1E69E7CC0];
  v64 = v224;
  while (v157 != v158)
  {
    if (v158 >= v156[2])
    {
      goto LABEL_126;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v156 + (v161 & ~v160) + *(v162 + 72) * v158, v64);
    sub_1DD6E0F70();
    sub_1DD7805C8(v163, v164);
    sub_1DD6E5304();
    sub_1DD785BBC(v64, v165);
    memcpy(v243, v244, 0x88uLL);
    if (sub_1DD7853FC(v243) == 1)
    {
      memcpy(v242, v244, sizeof(v242));
      sub_1DD6FC560(v242, &qword_1ECD10288, &unk_1DD884900);
      ++v158;
    }

    else
    {
      memcpy(v242, v244, sizeof(v242));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_1DD78476C(0, *(v159 + 2) + 1, 1, v159);
      }

      v167 = *(v159 + 2);
      v166 = *(v159 + 3);
      if (v167 >= v166 >> 1)
      {
        v168 = sub_1DD6F0A3C(v166);
        v159 = sub_1DD78476C(v168, v167 + 1, 1, v159);
      }

      ++v158;
      sub_1DD785E90();
      *(v159 + 2) = v167 + 1;
      memcpy(&v159[136 * v167 + 32], v241, 0x88uLL);
      v64 = v224;
      v156 = v237;
    }
  }

  v169 = *(v159 + 2);
  if (v169)
  {
    memcpy(v242, v159 + 32, sizeof(v242));
    memmove(v243, v159 + 32, 0x88uLL);
    nullsub_1(v243);
    sub_1DD785414(v242, v244);
    memcpy(v244, v243, sizeof(v244));
  }

  else
  {
    sub_1DD78547C(v244);
  }

  v170 = 32;
  v171 = v169;
  if (v169)
  {
    while (1)
    {
      memcpy(v242, &v159[v170], sizeof(v242));
      v64 = v242[16];
      if (v242[16])
      {
        sub_1DD785E90();
        nullsub_1(v241);
        if (*(v64 + 16))
        {
          break;
        }
      }

      v170 += 136;
      if (!--v171)
      {
        goto LABEL_92;
      }
    }

    sub_1DD785414(v242, v240);
    sub_1DD6FC560(v244, &qword_1ECD10288, &unk_1DD884900);
    v172 = v241;
  }

  else
  {
LABEL_92:
    v172 = v244;
  }

  memcpy(v243, v172, 0x88uLL);
  v173 = 0;
  v174 = 32;
  while (v169 != v173)
  {
    if (v173 >= *(v159 + 2))
    {
      goto LABEL_127;
    }

    memcpy(v242, &v159[v174], sizeof(v242));
    v175 = v242[16];
    if (v242[16])
    {
      v176 = v242[15];
      if (v242[15])
      {
        sub_1DD785414(v242, v241);
        sub_1DD6FC560(v243, &qword_1ECD10288, &unk_1DD884900);
LABEL_106:
        v184 = v242[1];
        memcpy(v240, &v242[2], 0x61uLL);
        v185 = v233;
        v238 = v242[0];
        memcpy(&v242[2], v240, 0x61uLL);
        v242[15] = v176;
        v242[16] = v175;
        v186 = *(v159 + 2);
        if (v186 < 2)
        {

          v194 = v219;
        }

        else
        {
          v236 = v242[1];
          v241[0] = MEMORY[0x1E69E7CC0];
          sub_1DD76C4A4(0, v186, 0);
          v187 = v241[0];
          v188 = (v159 + 40);
          do
          {
            v190 = *(v188 - 1);
            v189 = *v188;
            v241[0] = v187;
            v192 = *(v187 + 16);
            v191 = *(v187 + 24);

            if (v192 >= v191 >> 1)
            {
              sub_1DD76C4A4(v191 > 1, v192 + 1, 1);
              v187 = v241[0];
            }

            *(v187 + 16) = v192 + 1;
            v193 = v187 + 16 * v192;
            *(v193 + 32) = v190;
            *(v193 + 40) = v189;
            v188 += 17;
            --v186;
          }

          while (v186);
          v195 = v218;
          sub_1DD874BE0();

          v196 = sub_1DD874EC0();
          v197 = sub_1DD8754D0();

          if (os_log_type_enabled(v196, v197))
          {
            v199 = sub_1DD6DDF08();
            sub_1DD6E0FA4();
            v200 = swift_slowAlloc();
            v241[0] = v200;
            *v199 = 134218242;
            v201 = *(v159 + 2);

            *(v199 + 4) = v201;

            *(v199 + 12) = 2080;
            v239 = v187;
            sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
            sub_1DD6EE25C();
            sub_1DD6DF59C(v202, v203, &qword_1DD8AEFF0);
            v204 = sub_1DD8750E0();
            v206 = v205;

            v207 = sub_1DD6FD650(v204, v206, v241);

            *(v199 + 14) = v207;
            _os_log_impl(&dword_1DD6DC000, v196, v197, "%ld overrides matched: %s", v199, 0x16u);
            sub_1DD6E1EC8(v200);
            sub_1DD6ED27C();
            MEMORY[0x1E12B5DE0]();
            sub_1DD6ED27C();
            MEMORY[0x1E12B5DE0]();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v208 = v195;
          v185 = v233;
          isa(v208, v233);
          v194 = v219;
          v184 = v236;
        }

        sub_1DD874BE0();
        sub_1DD785414(v242, v241);
        v209 = sub_1DD874EC0();
        v210 = sub_1DD8754D0();
        sub_1DD78544C(v242);
        if (os_log_type_enabled(v209, v210))
        {
          sub_1DD6ED18C();
          v211 = swift_slowAlloc();
          sub_1DD6E0FA4();
          v212 = swift_slowAlloc();
          v241[0] = v212;
          *v211 = 136315138;

          v213 = sub_1DD6FD650(v238, v184, v241);

          *(v211 + 4) = v213;
          _os_log_impl(&dword_1DD6DC000, v209, v210, "Returning matched override with identifier: %s", v211, 0xCu);
          sub_1DD6E1EC8(v212);
          sub_1DD6ED27C();
          MEMORY[0x1E12B5DE0]();
          sub_1DD6ED27C();
          MEMORY[0x1E12B5DE0]();
        }

        isa(v194, v185);

        v214 = v221;
        sub_1DD785E90();
        nullsub_1(v241);
        v183 = v214;
        goto LABEL_120;
      }
    }

    v174 += 136;
    ++v173;
  }

  memcpy(v242, v243, sizeof(v242));
  if (sub_1DD7853FC(v242) != 1)
  {
    v176 = v242[15];
    v175 = v242[16];
    goto LABEL_106;
  }

  v177 = v217;
  sub_1DD874BE0();
  v178 = sub_1DD874EC0();
  v179 = sub_1DD8754D0();
  v180 = os_log_type_enabled(v178, v179);
  v181 = v233;
  if (v180)
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_1DD6DC000, v178, v179, "No overrides to match", v182, 2u);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  isa(v177, v181);

  sub_1DD78547C(v241);
  v183 = v221;
LABEL_120:
  memcpy(v183, v241, 0x88uLL);
  sub_1DD6DFED0();
}

void *sub_1DD7805C8@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1DD874ED0();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DD710A9C(&qword_1ECD10338, &qword_1DD884D68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v43 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v42 - v20);
  v22 = *(a1 + 80);
  sub_1DD781DF4();
  v23 = sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
  if (sub_1DD6E5ED0(v15, 1, v23) == 1)
  {
    sub_1DD6FC560(v15, &qword_1ECD10338, &qword_1DD884D68);
    sub_1DD78547C(__dst);
    v24 = v47;
  }

  else
  {
    v25 = *&v15[*(v23 + 48)];
    sub_1DD785B64();
    v27 = *v21;
    v26 = v21[1];
    v28 = *(v16 + 32);
    sub_1DD719110();

    sub_1DD780AF4();
    v29 = v51[96];
    v30 = *(v16 + 52);
    sub_1DD719110();
    sub_1DD780F6C(v9, v25, &v49);
    if (v29 != 255 || v50)
    {
      memcpy(&v48[2], v51, 0x60uLL);
      v48[0] = v27;
      v48[1] = v26;
      LOBYTE(v48[14]) = v29;
      v48[15] = v49;
      v48[16] = v50;
      nullsub_1(v48);
      v40 = v21;
    }

    else
    {

      sub_1DD78547C(v48);
      v31 = v46;
      sub_1DD874BE0();
      v32 = v43;
      sub_1DD785398(v21, v43);
      v33 = sub_1DD874EC0();
      v34 = sub_1DD8754D0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        __dst[0] = v36;
        *v35 = 136315138;
        v37 = *v32;
        v38 = v32[1];

        sub_1DD785BBC(v32, type metadata accessor for SearchOverrides_SearchOverride);
        v39 = sub_1DD6FD650(v37, v38, __dst);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1DD6DC000, v33, v34, "Malformed override: %s", v35, 0xCu);
        sub_1DD6E1EC8(v36);
        MEMORY[0x1E12B5DE0](v36, -1, -1);
        MEMORY[0x1E12B5DE0](v35, -1, -1);

        (*(v44 + 8))(v46, v45);
      }

      else
      {

        sub_1DD785BBC(v32, type metadata accessor for SearchOverrides_SearchOverride);
        (*(v44 + 8))(v31, v45);
      }

      v40 = v21;
    }

    sub_1DD785BBC(v40, type metadata accessor for SearchOverrides_SearchOverride);
    memcpy(__dst, v48, 0x88uLL);
    v24 = v47;
  }

  return memcpy(v24, __dst, 0x88uLL);
}

void sub_1DD780AF4()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  v7 = sub_1DD6DEA10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  v10 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  v11 = sub_1DD6DEA10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v58 = (v15 - v14);
  v16 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v17 = sub_1DD6DEA10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE21C();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  sub_1DD6DEA10(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E7258();
  v30 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  v31 = sub_1DD6DE1C4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DE4A8();
  sub_1DD719110();
  v34 = sub_1DD6DF154();
  sub_1DD6DE1FC(v34, v35, v30);
  if (v42)
  {
    v36 = sub_1DD6E87AC();
    sub_1DD6FC560(v36, v37, &qword_1DD884D60);
    v38 = v1;
    v39 = &qword_1ECD0EE10;
    v40 = &qword_1DD884D60;
LABEL_7:
    sub_1DD6FC560(v38, v39, v40);
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    v43 = -1;
    goto LABEL_8;
  }

  sub_1DD6E6384();
  sub_1DD785B64();
  sub_1DD719110();
  v41 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  sub_1DD6DE1FC(v25, 1, v41);
  if (v42)
  {
    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    v39 = &qword_1ECD0EA08;
    v40 = &unk_1DD884D70;
    v38 = v25;
    goto LABEL_7;
  }

  sub_1DD719110();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DD6E60FC();
      sub_1DD785B64();
      v46 = *v0;
      v45 = v0[1];
      v47 = v0[2];
      v48 = v0[3];
      v49 = v0[5];
      v57 = v0[4];
      v58 = v47;
      v50 = v0[7];
      v56 = v0[6];

      sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
      sub_1DD785BBC(v0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
      sub_1DD6DE59C();
      sub_1DD6FC560(v25, &qword_1ECD0EA08, &unk_1DD884D70);
      *v5 = v46;
      *(v5 + 8) = v45;
      v51 = v57;
      *(v5 + 16) = v58;
      *(v5 + 24) = v48;
      *(v5 + 32) = v51;
      *(v5 + 40) = v49;
      *(v5 + 48) = v56;
      *(v5 + 56) = v50;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      goto LABEL_9;
    }

    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    v52 = v58;
    sub_1DD785B64();
    v54 = *v52;
    v53 = v52[1];

    sub_1DD785BBC(v52, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
    sub_1DD6FC560(v25, &qword_1ECD0EA08, &unk_1DD884D70);
    *v5 = v54;
    *(v5 + 8) = v53;
    v43 = 1;
  }

  else
  {
    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    sub_1DD785BBC(v22, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    sub_1DD6FC560(v25, &qword_1ECD0EA08, &unk_1DD884D70);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    v43 = 2;
  }

LABEL_8:
  *(v5 + 96) = v43;
LABEL_9:
  sub_1DD6DFED0();
}

uint64_t sub_1DD780F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for SearchOverrides_OverrideBehavior(0);
  v14 = sub_1DD6DE1C4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  sub_1DD719110();
  sub_1DD6DE1FC(v12, 1, v13);
  if (v17)
  {
    sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);

    v18 = sub_1DD6E0F70();
    result = sub_1DD6FC560(v18, v19, &qword_1DD87EF30);
  }

  else
  {
    sub_1DD6E0F70();
    sub_1DD785B64();
    if (*v3)
    {
      if (*v3 == 1)
      {

        sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
        result = sub_1DD6DE00C();
        a2 = MEMORY[0x1E69E7CC0];
        v21 = 1;
LABEL_10:
        *a3 = v21;
        a3[1] = a2;
        return result;
      }

      sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
      result = sub_1DD6DE00C();
      if (*(a2 + 16))
      {
        v21 = 0;
        goto LABEL_10;
      }
    }

    else
    {

      sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
      result = sub_1DD6DE00C();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void *ResponseOverride.init(identifier:dialog:behavior:)@<X0>(unsigned __int8 *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = __src[96];
  v8 = a4[1];
  if (v7 == 255 && v8 == 0)
  {

    sub_1DD78547C(__srca);
  }

  else
  {
    v11 = *a4;
    memcpy(&__srca[2], __src, 0x60uLL);
    __srca[0] = a2;
    __srca[1] = a3;
    LOBYTE(__srca[14]) = v7;
    __srca[15] = v11;
    __srca[16] = v8;
    nullsub_1(__srca);
  }

  return memcpy(a5, __srca, 0x88uLL);
}

void sub_1DD7811FC()
{
  sub_1DD6DEB38();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v11 = sub_1DD6DEA10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE21C();
  v54 = v14 - v15;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DFF40();
  v17 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v28 = v27[7];
  sub_1DD719110();
  v29 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E656C(v26);
  if (v30)
  {
    sub_1DD6FC560(v26, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  else
  {
    v31 = *&v26[*(v29 + 20) + 8];

    sub_1DD6ED660();
    sub_1DD785BBC(v26, v32);
    if (v31)
    {
      goto LABEL_13;
    }
  }

  sub_1DD719110();
  sub_1DD6E656C(v23);
  if (v30)
  {
    sub_1DD6FC560(v23, &qword_1ECD0EE20, &unk_1DD87DF20);
    type metadata accessor for OverridesCommon_StringPredicate(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v33, v34, v35, v36);
  }

  else
  {
    sub_1DD719110();
    sub_1DD6ED660();
    sub_1DD785BBC(v23, v37);
  }

  v38 = sub_1DD781610();
  sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
  if (!v38)
  {
    goto LABEL_21;
  }

  sub_1DD719110();
  sub_1DD6E656C(v0);
  if (v30)
  {
    sub_1DD6FC560(v0, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  else
  {
    v39 = *(v0 + *(v29 + 24) + 8);

    sub_1DD6ED660();
    sub_1DD785BBC(v0, v40);
    if (v39)
    {
LABEL_13:

LABEL_21:
      *(v3 + 16);
      goto LABEL_22;
    }
  }

  v41 = v27[11];
  if (!sub_1DD781610())
  {
    goto LABEL_21;
  }

  v42 = v27[12];
  sub_1DD719110();
  v43 = type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  sub_1DD6DE1FC(v9, 1, v43);
  if (v30)
  {
    sub_1DD6FC560(v9, &qword_1ECD0F378, &unk_1DD884D00);
    type metadata accessor for OverridesCommon_StringPredicate(0);
    v48 = v54;
    sub_1DD6E0C90();
    sub_1DD6E5E68(v44, v45, v46, v47);
  }

  else
  {
    v48 = v54;
    sub_1DD719110();
    sub_1DD6E5DD0();
    sub_1DD785BBC(v9, v49);
  }

  v50 = sub_1DD781610();
  sub_1DD6FC560(v48, &qword_1ECD0E9E0, &unk_1DD87B550);
  if (!v50)
  {
    goto LABEL_21;
  }

  v51 = v27[14];
  if (!sub_1DD781610())
  {
    goto LABEL_21;
  }

  v52 = v27[15];
  sub_1DD781610();
  *(v3 + 16);
LABEL_22:
  sub_1DD6DFED0();
}

BOOL sub_1DD781610()
{
  v1 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD700C0C();
  v5 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v6 = sub_1DD6DE1C4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v11 = (v10 - v9);
  sub_1DD6ED118();
  sub_1DD719110();
  sub_1DD6DE1FC(v0, 1, v5);
  if (v12)
  {
    sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
    return 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6DDEFC();
    sub_1DD785B64();
    v13 = *v11;
    sub_1DD6DF3E4();
    sub_1DD785BBC(v11, v14);
    return v13 == 0;
  }
}

uint64_t sub_1DD781730()
{
  if (!sub_1DD781610())
  {
    return sub_1DD719110();
  }

  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD785ED8();
  sub_1DD6E0C90();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

void sub_1DD7817A4()
{
  sub_1DD6DEB38();
  v46 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - v9;
  v11 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6DEA10(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6E7258();
  v22 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v23 = sub_1DD6DE1C4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v26 = *v4;
  v45[0] = v4[1];
  v45[1] = v26;
  v27 = v4[6];
  v48 = v4[7];
  v49 = v27;
  v28 = v4[8];
  v29 = v4[9];
  v47 = v28;
  v30 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 28);
  sub_1DD719110();
  v31 = sub_1DD6DF154();
  sub_1DD6DE1FC(v31, v32, v22);
  if (!v33)
  {
    sub_1DD785B64();
    sub_1DD781730();
    sub_1DD6DE1FC(v10, 1, v11);
    if (v33)
    {
      sub_1DD6FC560(v10, &qword_1ECD0E9E0, &unk_1DD87B550);
    }

    else
    {
      sub_1DD6E05BC();
      sub_1DD785B64();
      sub_1DD78216C();
      v35 = v34;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v17, v36);
      if ((v35 & 1) == 0)
      {
LABEL_22:
        sub_1DD6ED660();
        sub_1DD785BBC(v0, v44);
        goto LABEL_23;
      }
    }

    v37 = (v0 + *(v22 + 24));
    v38 = v37[1];
    if (!v38 || (*v37 == v49 ? (v39 = v38 == v48) : (v39 = 0), v39 || (sub_1DD875A30() & 1) != 0))
    {
      v40 = (v0 + *(v22 + 20));
      v41 = v40[1];
      if (!v41 || (*v40 == v47 ? (v42 = v41 == v29) : (v42 = 0), v42 || (sub_1DD875A30() & 1) != 0))
      {
        sub_1DD6ED660();
        sub_1DD785BBC(v0, v43);
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  sub_1DD6FC560(v2, &qword_1ECD0EE20, &unk_1DD87DF20);
LABEL_23:
  sub_1DD6DFED0();
}

uint64_t sub_1DD781A64()
{
  sub_1DD6E87B8();
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD6DEABC();
  v9 = type metadata accessor for OverridesCommon_StringPredicate(v8);
  v10 = sub_1DD6DE1C4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = v3 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 44);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v16)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v17 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v14)
    {
      sub_1DD6FA720();
      v17 = v18;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v19);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v20);
      v17 = 0;
    }
  }

  return v17 & 1;
}

uint64_t sub_1DD781B94()
{
  sub_1DD6E87B8();
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD6DEABC();
  v9 = type metadata accessor for OverridesCommon_StringPredicate(v8);
  v10 = sub_1DD6DE1C4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v13 = *(v2 + 88);
  v14 = *(v2 + 96);
  v15 = v3 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 56);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v16)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v17 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v14)
    {
      sub_1DD6FA720();
      v17 = v18;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v19);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v20);
      v17 = 0;
    }
  }

  return v17 & 1;
}

uint64_t sub_1DD781CC4()
{
  sub_1DD6E87B8();
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DD6DEABC();
  v9 = type metadata accessor for OverridesCommon_StringPredicate(v8);
  v10 = sub_1DD6DE1C4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = v3 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 60);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v16)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v17 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v14)
    {
      sub_1DD6FA720();
      v17 = v18;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v19);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v20);
      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1DD781DF4()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v7 = &unk_1DD884D00;
  v8 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E7258();
  v12 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DFF40();
  v20 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  v24 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 48);
  sub_1DD719110();
  type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  v25 = sub_1DD6DF154();
  sub_1DD6DE1FC(v25, v26, v27);
  if (v28)
  {
    sub_1DD6FC560(v2, &qword_1ECD0F378, &unk_1DD884D00);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v29, v30, v31, v20);
  }

  else
  {
    sub_1DD6E6384();
    sub_1DD719110();
    sub_1DD6E5DD0();
    sub_1DD785BBC(v2, v32);
  }

  sub_1DD781730();
  sub_1DD6FC560(v18, &qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DE1FC(v1, 1, v20);
  if (v28)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v33 = sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
    sub_1DD6F9BB8(v33);
    *(&unk_1DD884D00 + v6) = MEMORY[0x1E69E7CC0];
    sub_1DD70327C();
    sub_1DD6E5E68(v34, v35, v36, v37);
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6E60FC();
    sub_1DD785B64();
    v38 = 0;
    v39 = *(v4 + 16);
    v40 = v4 + 40;
    v41 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v42 = (v40 + 16 * v38);
    while (v39 != v38)
    {
      if (v38 >= v39)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v43 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_23;
      }

      v44 = *(v42 - 1);
      v7 = *v42;

      sub_1DD78216C();
      LOBYTE(v44) = v45;

      ++v38;
      v42 += 2;
      if (v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1DD784884(0, *(v41 + 2) + 1, 1, v41);
        }

        v47 = *(v41 + 2);
        v46 = *(v41 + 3);
        v7 = (v47 + 1);
        if (v47 >= v46 >> 1)
        {
          v48 = sub_1DD6F0A3C(v46);
          v41 = sub_1DD784884(v48, v47 + 1, 1, v41);
        }

        *(v41 + 2) = v7;
        *&v41[8 * v47 + 32] = v38 - 1;
        v38 = v43;
        goto LABEL_7;
      }
    }

    if (*(v41 + 2))
    {
      v49 = sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
      sub_1DD6F9BB8(v49);
      *(v42 + v7) = v41;
      sub_1DD70327C();
    }

    else
    {

      sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
      sub_1DD6E0C90();
    }

    sub_1DD6E5E68(v50, v51, v52, v53);
    sub_1DD6DF3E4();
    sub_1DD785BBC(v0, v54);
  }

  sub_1DD6DFED0();
}

void sub_1DD78216C()
{
  sub_1DD6DEB38();
  v64 = v0;
  v5 = v4;
  v7 = v6;
  sub_1DD6EE78C();
  v8 = sub_1DD874ED0();
  v9 = sub_1DD6DDEAC(v8);
  v63 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v58 - v14;
  v15 = sub_1DD710A9C(&qword_1ECD102D8, &unk_1DD884CF0);
  v16 = sub_1DD6DEA10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE21C();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBEC();
  v23 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
  v24 = sub_1DD6DDEAC(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DFF40();
  if (!*v1)
  {
    goto LABEL_18;
  }

  if (*v1 != 1)
  {
    v58 = v7;
    v59 = v5;
    v60 = v8;
    v61 = v28;
    v32 = *(v1 + 8);
    v31 = *(v1 + 16);
    v33 = OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache;
    v34 = v64;
    swift_beginAccess();
    v35 = *(v34 + v33);

    sub_1DD71A93C(v32, v31, v35, v3);

    v36 = sub_1DD6DF154();
    sub_1DD6DE1FC(v36, v37, v23);
    if (v29)
    {
      sub_1DD6FC560(v3, &qword_1ECD102D8, &unk_1DD884CF0);

      sub_1DD8748E0();
      v38 = v32;
      v39 = v61;
      v40 = *(v61 + 32);
      v41 = sub_1DD6E60FC();
      v42(v41);
      (*(v39 + 16))(v21, v2, v23);
      sub_1DD6E5E68(v21, 0, 1, v23);
      swift_beginAccess();

      sub_1DD84F984(v21, v32, v31);
      swift_endAccess();
    }

    else
    {
      (*(v61 + 32))(v2, v3, v23);
      v38 = v32;
    }

    v65[0] = v58;
    v65[1] = v59;
    sub_1DD8748D0();
    sub_1DD785B10();
    sub_1DD6DF59C(&qword_1ECD102E8, &qword_1ECD0E350, &qword_1DD8AF8B0);
    v43 = *(sub_1DD8750D0() + 16);

    if (v43 < 2)
    {
      v55 = *(v61 + 8);
      v56 = sub_1DD6DDEDC();
      v57(v56);
    }

    else
    {
      sub_1DD874BE0();

      v44 = sub_1DD874EC0();
      v45 = sub_1DD8754E0();

      if (os_log_type_enabled(v44, v45))
      {
        sub_1DD6ED18C();
        v46 = swift_slowAlloc();
        sub_1DD6E0FA4();
        v47 = swift_slowAlloc();
        v65[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_1DD6FD650(v38, v31, v65);
        _os_log_impl(&dword_1DD6DC000, v44, v45, "Regex matched the input more than once for regex: %s", v46, 0xCu);
        sub_1DD6E1EC8(v47);
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
      }

      v48 = *(v63 + 8);
      v49 = sub_1DD6E6384();
      v50(v49);
      v51 = *(v61 + 8);
      v52 = sub_1DD6DDEDC();
      v54(v52, v53);
    }

    goto LABEL_18;
  }

  v29 = *(v1 + 8) == v7 && *(v1 + 16) == v5;
  if (v29)
  {
LABEL_18:
    sub_1DD6DFED0();
    return;
  }

  sub_1DD6DFED0();

  sub_1DD875A30();
}

uint64_t ResponseOverrideMatcher.deinit()
{
  sub_1DD785E48(OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);
  v1 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache);

  return v0;
}

uint64_t ResponseOverrideMatcher.__deallocating_deinit()
{
  sub_1DD785E48(OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);
  v1 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void __swiftcall ResponseOverrideInput.init(utterance:response:interfaceIdiom:deviceType:customEntityDescriptions:)(IntelligenceFlow::ResponseOverrideInput *__return_ptr retstr, Swift::String utterance, Swift::String_optional response, Swift::String interfaceIdiom, Swift::String deviceType, Swift::OpaquePointer customEntityDescriptions)
{
  retstr->utterance = utterance;
  retstr->response = response;
  retstr->answer.value._countAndFlagsBits = 0;
  retstr->answer.value._object = 0;
  retstr->interfaceIdiom = interfaceIdiom;
  retstr->deviceType = deviceType;
  retstr->onScreenText.value._countAndFlagsBits = 0;
  retstr->onScreenText.value._object = 0;
  retstr->customEntityDescriptions = customEntityDescriptions;
}

uint64_t sub_1DD782850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6361667265746E69 && a2 == 0xEE006D6F69644965;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7954656369766564 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001DD8B5E60 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
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
  }
}

unint64_t sub_1DD782AA0(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x65736E6F70736572;
      break;
    case 2:
      result = 0x726577736E61;
      break;
    case 3:
      result = 0x6361667265746E69;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6E65657263536E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD782B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD782850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD782BB8(uint64_t a1)
{
  v2 = sub_1DD785484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD782BF4(uint64_t a1)
{
  v2 = sub_1DD785484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOverrideInput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD10298, &qword_1DD884910);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD785484();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  LOBYTE(v41[0]) = 0;
  v14 = sub_1DD875870();
  v16 = v15;
  sub_1DD6F3134(1);
  v36 = sub_1DD875820();
  v39 = v17;
  sub_1DD6F3134(2);
  v33 = sub_1DD875820();
  v34 = v14;
  v38 = v18;
  sub_1DD6F3134(3);
  v19 = sub_1DD875870();
  v35 = v20;
  v32 = v19;
  sub_1DD6F3134(4);
  v31 = sub_1DD875870();
  v37 = v21;
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  LOBYTE(__src[0]) = 5;
  sub_1DD7854D8();
  sub_1DD8758D0();
  v30 = v41[0];
  v42 = 6;
  v22 = sub_1DD875820();
  v24 = v23;
  (*(v7 + 8))(v12, v5);
  __src[0] = v34;
  __src[1] = v16;
  __src[2] = v36;
  __src[3] = v39;
  __src[4] = v33;
  v25 = v38;
  __src[5] = v38;
  __src[6] = v32;
  v26 = v35;
  __src[7] = v35;
  __src[8] = v31;
  v27 = v37;
  __src[9] = v37;
  __src[10] = v30;
  __src[11] = v22;
  __src[12] = v24;
  memcpy(a2, __src, 0x68uLL);
  sub_1DD785330(__src, v41);
  sub_1DD6E1EC8(a1);
  v41[0] = v34;
  v41[1] = v16;
  v41[2] = v36;
  v41[3] = v39;
  v41[4] = v33;
  v41[5] = v25;
  v41[6] = v32;
  v41[7] = v26;
  v41[8] = v31;
  v41[9] = v27;
  v41[10] = v30;
  v41[11] = v22;
  v41[12] = v24;
  return sub_1DD785368(v41);
}

uint64_t ResponseOverride.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseOverride.dialog.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(a1, (v1 + 16), 0x61uLL);
  return sub_1DD719110();
}

uint64_t ResponseOverride.behavior.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;
}

uint64_t sub_1DD7831C8()
{
  v1 = sub_1DD874860();
  v2 = sub_1DD6DDEAC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  (*(v4 + 104))(v0, *MEMORY[0x1E6969638], v1);
  sub_1DD874830();
  v7 = sub_1DD874840();
  v9 = v8;

  (*(v4 + 8))(v0, v1);
  MEMORY[0x1E12B4C10](v7, v9);

  MEMORY[0x1E12B4C10](1668246574, 0xE400000000000000);

  sub_1DD8746D0();

  sub_1DD874740();
  v10 = sub_1DD785ED8();
  return sub_1DD6E5E68(v10, 0, 1, v11);
}

void sub_1DD783364()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v176 = v9;
  v180 = 0;
  v10 = sub_1DD875170();
  v11 = sub_1DD6DEA10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v166 = v15 - v14;
  sub_1DD6E9A9C();
  v16 = sub_1DD874960();
  v17 = sub_1DD6DEA10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  v162 = v21 - v20;
  sub_1DD6E9A9C();
  v22 = sub_1DD874ED0();
  v182 = sub_1DD6DDEAC(v22);
  v183 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v182);
  sub_1DD6DE21C();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEBEC();
  v33 = sub_1DD874740();
  v34 = sub_1DD6DDEAC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v160 - v46;
  *&v173 = v6;
  *(&v173 + 1) = v4;
  sub_1DD8746E0();
  v181 = v47;
  v48 = v0;
  sub_1DD8746F0();
  v172 = objc_opt_self();
  v49 = [v172 defaultManager];
  sub_1DD874720();
  v50 = sub_1DD875110();

  LODWORD(v4) = [v49 fileExistsAtPath_];

  v175 = v36;
  v177 = v28;
  v174 = v48;
  v171 = v8;
  if (!v4)
  {
    v62 = v182;
    goto LABEL_13;
  }

  sub_1DD874BE0();
  v51 = *(v36 + 2);
  v160[1] = v36 + 16;
  v160[0] = v51;
  v51(v2, v48, v33);
  v52 = sub_1DD874EC0();
  v53 = sub_1DD8754C0();
  if (os_log_type_enabled(v52, v53))
  {
    sub_1DD6ED18C();
    v54 = swift_slowAlloc();
    sub_1DD6E0FA4();
    v55 = swift_slowAlloc();
    sub_1DD6E40E4(v55);
    *v54 = 136315138;
    v56 = sub_1DD874720();
    v57 = v48;
    v59 = v58;
    v161 = *(v36 + 1);
    v161(v2, v163);
    v60 = sub_1DD6FD650(v56, v59, v184);
    v48 = v57;

    *(v54 + 4) = v60;
    _os_log_impl(&dword_1DD6DC000, v52, v53, "Loading overrides from: %s", v54, 0xCu);
    sub_1DD6E1EC8(v33);
    v33 = v163;
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    v61 = sub_1DD6E4978();
    MEMORY[0x1E12B5DE0](v61);
  }

  else
  {

    v161 = *(v36 + 1);
    v161(v2, v33);
  }

  v8 = *(v183 + 8);
  v63 = v182;
  v8(v1);
  v64 = v180;
  v65 = sub_1DD8748C0();
  v67 = v64;
  if (v64)
  {
    v180 = 0;
    v28 = v168;
    sub_1DD874BE0();
    v72 = v164;
    (v160[0])(v164, v48, v33);
    v73 = v67;
    v74 = v33;
    v75 = sub_1DD874EC0();
    v76 = sub_1DD8754E0();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_1DD6DDF08();
      *&v184[0] = swift_slowAlloc();
      *v77 = 136315394;
      v78 = sub_1DD874720();
      v163 = v8;
      v8 = v79;
      v28 = v175;
      v161(v72, v74);
      v80 = sub_1DD6FD650(v78, v8, v184);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2080;
      swift_getErrorValue();
      v81 = sub_1DD875AB0();
      v83 = sub_1DD6FD650(v81, v82, v184);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_1DD6DC000, v75, v76, "Cannot load overrides from file: %s. %s", v77, 0x16u);
      swift_arrayDestroy();
      v84 = sub_1DD6E4978();
      MEMORY[0x1E12B5DE0](v84);
      v62 = v182;
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();

      (v163)(v168, v62);
      v33 = v74;
      v36 = v28;
    }

    else
    {

      v85 = v175;
      v86 = sub_1DD6E0F70();
      (v161)(v86);
      v62 = v63;
      (v8)(v28, v63);
      v33 = v74;
      v36 = v85;
    }

    sub_1DD785EAC();
LABEL_13:
    v87 = v178;
    v184[0] = v173;

    MEMORY[0x1E12B4C10](0x6E6F736A2ELL, 0xE500000000000000);
    v88 = v179;
    sub_1DD8746E0();

    v89 = [v172 defaultManager];
    sub_1DD874720();
    v90 = sub_1DD875110();

    v91 = [v89 fileExistsAtPath_];

    if (v91)
    {
      v92 = v62;
      v93 = v170;
      sub_1DD874BE0();
      v8 = (v36 + 16);
      v94 = v165;
      *&v173 = *(v36 + 2);
      (v173)(v165, v88, v33);
      v95 = sub_1DD874EC0();
      v96 = sub_1DD8754C0();
      if (os_log_type_enabled(v95, v96))
      {
        sub_1DD6ED18C();
        v97 = v94;
        v98 = swift_slowAlloc();
        sub_1DD6E0FA4();
        v99 = v33;
        v100 = swift_slowAlloc();
        *&v184[0] = v100;
        *v98 = 136315138;
        v101 = sub_1DD874720();
        v103 = v102;
        v104 = *(v36 + 1);
        v104(v97, v99);
        v105 = sub_1DD6FD650(v101, v103, v184);
        v88 = v179;

        *(v98 + 4) = v105;
        sub_1DD6E112C();
        _os_log_impl(v106, v107, v108, v109, v110, v111);
        sub_1DD6E1EC8(v100);
        v33 = v99;
        v112 = v182;
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        v113 = sub_1DD6E4978();
        MEMORY[0x1E12B5DE0](v113);

        v114 = *(v183 + 8);
        v115 = v170;
        v116 = v112;
      }

      else
      {

        v104 = *(v36 + 1);
        v104(v94, v33);
        v114 = *(v183 + 8);
        v115 = v93;
        v116 = v92;
      }

      *(&v173 + 1) = v114;
      v114(v115, v116);
      v117 = v169;
      v118 = v167;
      sub_1DD875160();
      v28 = v180;
      sub_1DD875100();
      if (!v28)
      {
        v119 = v176;
        sub_1DD77F014();

        v158 = sub_1DD6E6384();
        (v104)(v158);
        v159 = sub_1DD785EC0();
        v104(v159, v33);
        v104(v181, v33);
        v157 = type metadata accessor for SearchOverrides_SearchOverrides(0);
        v154 = v119;
        v155 = 0;
LABEL_27:
        v156 = 1;
        goto LABEL_28;
      }

      sub_1DD874BE0();
      (v173)(v118, v88, v33);
      v120 = v28;
      v121 = sub_1DD874EC0();
      v122 = sub_1DD8754E0();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = sub_1DD6DDF08();
        v124 = swift_slowAlloc();
        v125 = v118;
        sub_1DD6E40E4(v124);
        *v123 = 136315394;
        v126 = sub_1DD874720();
        v128 = v127;
        v8 = v175;
        v104(v125, v163);
        v36 = v8;
        v129 = sub_1DD6FD650(v126, v128, v184);

        *(v123 + 4) = v129;
        *(v123 + 12) = 2080;
        swift_getErrorValue();
        v130 = sub_1DD875AB0();
        v132 = sub_1DD6FD650(v130, v131, v184);

        *(v123 + 14) = v132;
        v88 = v179;
        _os_log_impl(&dword_1DD6DC000, v121, v122, "Cannot load overrides from file: %s. %s", v123, 0x16u);
        swift_arrayDestroy();
        v33 = v163;
        v62 = v182;
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        v133 = sub_1DD6E4978();
        MEMORY[0x1E12B5DE0](v133);

        v134 = v169;
      }

      else
      {

        v135 = v175;
        v104(v118, v33);
        v36 = v135;
        v62 = v182;
        v134 = v117;
      }

      (*(&v173 + 1))(v134, v62);
      sub_1DD785EAC();
      v87 = v178;
    }

    sub_1DD874BE0();
    (*(v36 + 2))(v87, v8, v33);
    v136 = sub_1DD874EC0();
    v137 = sub_1DD8754C0();
    if (os_log_type_enabled(v136, v137))
    {
      sub_1DD6ED18C();
      v138 = swift_slowAlloc();
      sub_1DD6E0FA4();
      v139 = swift_slowAlloc();
      *&v184[0] = v139;
      *v138 = 136315138;
      v140 = sub_1DD874720();
      v141 = v88;
      v142 = v33;
      v144 = v143;
      v145 = *(v36 + 1);
      v145(v87, v142);
      v146 = sub_1DD6FD650(v140, v144, v184);

      *(v138 + 4) = v146;
      _os_log_impl(&dword_1DD6DC000, v136, v137, "No overrides found in: %s", v138, 0xCu);
      sub_1DD6E1EC8(v139);
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();

      (*(v183 + 8))(v177, v182);
      v145(v141, v142);
      v147 = sub_1DD785EC0();
      v145(v147, v142);
      v145(v181, v142);
    }

    else
    {

      v148 = *(v36 + 1);
      v148(v87, v33);
      (*(v183 + 8))(v28, v62);
      v149 = sub_1DD6E6384();
      (v148)(v149);
      v150 = sub_1DD785EC0();
      v148(v150, v33);
      v148(v181, v33);
    }

    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v154 = sub_1DD785ED8();
    v155 = 1;
    goto LABEL_27;
  }

  v68 = v65;
  v69 = v66;
  type metadata accessor for SearchOverrides_SearchOverrides(0);
  v186 = v68;
  v187 = v69;
  v185 = 0;
  memset(v184, 0, sizeof(v184));
  v70 = sub_1DD6DDEDC();
  sub_1DD710E74(v70, v71);
  sub_1DD874950();
  sub_1DD785C14();
  sub_1DD874A50();
  v151 = sub_1DD6DDEDC();
  sub_1DD6E6658(v151, v152);
  v153 = v161;
  v161(v48, v33);
  v153(v181, v33);
  sub_1DD70327C();
LABEL_28:
  sub_1DD6E5E68(v154, v155, v156, v157);
  sub_1DD6DFED0();
}

void sub_1DD78427C()
{
  sub_1DD6DEB38();
  v1 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  sub_1DD6DEA10(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEABC();
  v5 = sub_1DD874860();
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  (*(v8 + 104))(v12 - v11, *MEMORY[0x1E6969638], v5);
  sub_1DD874830();
  v14 = sub_1DD874840();
  v16 = v15;

  (*(v8 + 8))(v13, v5);
  sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD8782E0;
  *(inited + 32) = 0x75676E616C2E6772;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = v14;
  *(inited + 56) = v16;

  v18 = sub_1DD875080();
  v19 = [objc_opt_self() sharedManager];
  v20 = sub_1DD875110();
  v21 = sub_1DD785CC0(v20, v18, v19);

  if (!v21)
  {

LABEL_7:
    sub_1DD874740();
    sub_1DD785ED8();
    sub_1DD6E0C90();
    sub_1DD6E5E68(v29, v30, v31, v32);
    goto LABEL_10;
  }

  v22 = v21;
  v23 = sub_1DD6E0F70();
  MEMORY[0x1E12B4C10](v23);

  v24 = sub_1DD875110();

  v25 = [v22 assetNamed_];

  if (!v25)
  {

    goto LABEL_7;
  }

  v26 = [v25 location];
  if (v26)
  {
    v27 = v26;
    sub_1DD874700();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v33 = sub_1DD874740();
  sub_1DD6E5E68(v0, v28, 1, v33);
  v34 = sub_1DD6ED118();
  sub_1DD6FB7B4(v34, v35);
LABEL_10:
  sub_1DD6DFED0();
}

void sub_1DD7845A4()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10358, &unk_1DD884D90, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
  v7 = sub_1DD6EE78C();
  v8 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(v7);
  sub_1DD6E0A68(v8);
  v10 = *(v9 + 80);
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(type metadata accessor for SessionServerDebuggerEvent.InjectionRequest, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

void sub_1DD784688()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10350, &qword_1DD884D88, type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady);
  v7 = sub_1DD6EE78C();
  v8 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(v7);
  sub_1DD6E0A68(v8);
  v10 = *(v9 + 80);
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

char *sub_1DD78476C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD10330, &unk_1DD884D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[136 * v8] <= v12)
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD784884(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD102F8, &qword_1DD884D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1DD784984()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10328, &qword_1DD884D48, type metadata accessor for RGDisplayRepresentation);
  v7 = sub_1DD6EE78C();
  v8 = type metadata accessor for RGDisplayRepresentation(v7);
  sub_1DD6E0A68(v8);
  v10 = *(v9 + 80);
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(type metadata accessor for RGDisplayRepresentation, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

void sub_1DD784A8C()
{
  sub_1DD6E72DC();
  if (v3)
  {
    sub_1DD6E1FA0();
    if (v5 != v6)
    {
      sub_1DD6FF9A0();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1DD710A9C(&qword_1ECD10318, &qword_1DD884D38);
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1DD784B74()
{
  sub_1DD6E72DC();
  if (v5)
  {
    sub_1DD6E1FA0();
    if (v7 != v8)
    {
      sub_1DD6FF9A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1DD6E9604(v6);
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1DD784C48()
{
  sub_1DD6E72DC();
  if (v5)
  {
    sub_1DD6E1FA0();
    if (v7 != v8)
    {
      sub_1DD6FF9A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1DD6E9604(v6);
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v2] <= v11)
    {
      memmove(v11, v12, 8 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD784D54(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_1DD6E1FA0();
    if (v9 != v10)
    {
      sub_1DD6FF9A0();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  v12 = sub_1DD784F60(v11, v8, a5, a6);
  v13 = sub_1DD6E87AC();
  v15 = sub_1DD710A9C(v13, v14);
  sub_1DD6E0A68(v15);
  v17 = *(v16 + 80);
  sub_1DD6E17FC();
  if (a1)
  {
    sub_1DD785268(a4 + v18, v11, v12 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1DD784E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD710A9C(a3, a4);
  v8 = sub_1DD6EE78C();
  v9 = a5(v8);
  sub_1DD6DEA1C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size_0(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1DD784F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD710A9C(a3, a4);
  v6 = sub_1DD6E87AC();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA1C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DD785054(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785074(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785098(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785114(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[88 * a2] <= __dst)
  {
    return memmove(__dst, __src, 88 * a2);
  }

  return __src;
}

char *sub_1DD785144(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

uint64_t sub_1DD785184(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1DD6E1F34();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_1DD6DE1C4(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_1DD6ED494();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_1DD6ED494();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DD785268(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DD6E1F34();
  if (v7 < v6 || (v8 = sub_1DD6E0F70(), v10 = sub_1DD710A9C(v8, v9), result = sub_1DD6DE1C4(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = sub_1DD6E0F70();
    sub_1DD710A9C(v13, v14);
    sub_1DD6ED494();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_1DD6ED494();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DD785398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchOverrides_SearchOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7853FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DD785484()
{
  result = qword_1ECD102A0;
  if (!qword_1ECD102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102A0);
  }

  return result;
}

unint64_t sub_1DD7854D8()
{
  result = qword_1EE015DB8;
  if (!qword_1EE015DB8)
  {
    sub_1DD717E88(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015DB8);
  }

  return result;
}

uint64_t sub_1DD78555C()
{
  result = type metadata accessor for SearchOverrides_SearchOverrides(319);
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

uint64_t sub_1DD7856A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD7856E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD785748(uint64_t a1)
{
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

uint64_t sub_1DD785764(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD785780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD7857C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD785838(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 97))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 96);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD785878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD7858D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
    *(result + 88) = 0;
  }

  *(result + 96) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOverrideInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD785A0C()
{
  result = qword_1ECD102C0;
  if (!qword_1ECD102C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102C0);
  }

  return result;
}

unint64_t sub_1DD785A64()
{
  result = qword_1ECD102C8;
  if (!qword_1ECD102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102C8);
  }

  return result;
}

unint64_t sub_1DD785ABC()
{
  result = qword_1ECD102D0;
  if (!qword_1ECD102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102D0);
  }

  return result;
}

unint64_t sub_1DD785B10()
{
  result = qword_1ECD102E0;
  if (!qword_1ECD102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102E0);
  }

  return result;
}

uint64_t sub_1DD785B64()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t sub_1DD785BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD785C14()
{
  result = qword_1ECD0F3B0;
  if (!qword_1ECD0F3B0)
  {
    type metadata accessor for SearchOverrides_SearchOverrides(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F3B0);
  }

  return result;
}

unint64_t sub_1DD785C6C()
{
  result = qword_1ECD10348;
  if (!qword_1ECD10348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10348);
  }

  return result;
}

id sub_1DD785CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD875060();

  v6 = [a3 retrieveAssetSet:a1 usages:v5];

  return v6;
}

_BYTE *storeEnumTagSinglePayload for SearchOverridesLoader.OverrideLoadingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD785DF4()
{
  result = qword_1ECD10360;
  if (!qword_1ECD10360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10360);
  }

  return result;
}

uint64_t sub_1DD785E48@<X0>(uint64_t a1@<X8>)
{

  return sub_1DD785BBC(v1 + a1, type metadata accessor for SearchOverrides_SearchOverrides);
}

uint64_t sub_1DD785E80()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

void *sub_1DD785E90()
{

  return memcpy((v0 + 328), (v0 + 464), 0x88uLL);
}

uint64_t sub_1DD785F10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2(0);
  v6 = v5;
  if (v4)
  {
    v7 = *(*(v5 - 8) + 80);
    sub_1DD78FC8C();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_1DD6E5E68(a3, v8, 1, v6);
}

uint64_t sub_1DD785FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001DD8B5F40 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001DD8B5F60 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001DD8B5F80 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001DD8B5FA0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1685217635 && a2 == 0xE400000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6465766968637261 && a2 == 0xEC00000077656956;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5653445369726973 && a2 == 0xEB00000000776569;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x80000001DD8B5FC0 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x4D73736563637573 && a2 == 0xEC0000006C65646FLL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1DD875A30();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1DD786304(char a1)
{
  result = 1685217635;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6465766968637261;
      break;
    case 6:
      result = 0x5653445369726973;
      break;
    case 7:
      result = 0x6C6F72746E6F63;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x4D73736563637573;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1DD786440(uint64_t a1)
{
  v2 = sub_1DD787DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78647C(uint64_t a1)
{
  v2 = sub_1DD787DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7864B8(uint64_t a1)
{
  v2 = sub_1DD787C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7864F4(uint64_t a1)
{
  v2 = sub_1DD787C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786530(uint64_t a1)
{
  v2 = sub_1DD787CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78656C(uint64_t a1)
{
  v2 = sub_1DD787CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7865B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD785FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7865D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7862FC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD786600(uint64_t a1)
{
  v2 = sub_1DD7878EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78663C(uint64_t a1)
{
  v2 = sub_1DD7878EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786678(uint64_t a1)
{
  v2 = sub_1DD787A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7866B4(uint64_t a1)
{
  v2 = sub_1DD787A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7866F0(uint64_t a1)
{
  v2 = sub_1DD787E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78672C(uint64_t a1)
{
  v2 = sub_1DD787E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786768(uint64_t a1)
{
  v2 = sub_1DD787D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7867A4(uint64_t a1)
{
  v2 = sub_1DD787D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7867E0(uint64_t a1)
{
  v2 = sub_1DD787994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78681C(uint64_t a1)
{
  v2 = sub_1DD787994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786858(uint64_t a1)
{
  v2 = sub_1DD787B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD786894(uint64_t a1)
{
  v2 = sub_1DD787B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7868D0(uint64_t a1)
{
  v2 = sub_1DD787940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78690C(uint64_t a1)
{
  v2 = sub_1DD787940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786948(uint64_t a1)
{
  v2 = sub_1DD787D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD786984(uint64_t a1)
{
  v2 = sub_1DD787D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGPluginModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v25;
  a20 = v26;
  v185 = v21;
  v182 = v20;
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD10368, &qword_1DD884E80);
  sub_1DD6DF3FC(v29, &a18);
  v180 = v30;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v34);
  v177 = type metadata accessor for RGSuccessModel(0);
  v35 = sub_1DD6DE1C4(v177);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v38);
  v39 = sub_1DD710A9C(&qword_1ECD10370, &qword_1DD884E88);
  sub_1DD6DF3FC(v39, &a13);
  v175 = v40;
  v42 = *(v41 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v44);
  v45 = sub_1DD710A9C(&qword_1ECD10378, &qword_1DD884E90);
  sub_1DD6DF3FC(v45, &a11);
  v47 = *(v46 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v49);
  v173 = type metadata accessor for RGControlModel(0);
  v50 = sub_1DD6DE1C4(v173);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v53);
  v54 = sub_1DD710A9C(&qword_1ECD10380, &qword_1DD884E98);
  sub_1DD6DF3FC(v54, &v193 + 8);
  v56 = *(v55 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v58);
  v59 = sub_1DD710A9C(&qword_1ECD10388, &qword_1DD884EA0);
  sub_1DD6DF3FC(v59, &v191 + 8);
  v61 = *(v60 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v63);
  v64 = sub_1DD710A9C(&qword_1ECD10390, &qword_1DD884EA8);
  sub_1DD6DF3FC(v64, &v190);
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v68);
  v69 = sub_1DD710A9C(&qword_1ECD10398, &qword_1DD884EB0);
  sub_1DD6DF3FC(v69, &v189);
  v71 = *(v70 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v73);
  v170 = type metadata accessor for RGToolDisambiguationModel(0);
  v74 = sub_1DD6DE1C4(v170);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v77);
  v78 = sub_1DD710A9C(&qword_1ECD103A0, &qword_1DD884EB8);
  sub_1DD6DF3FC(v78, &v186);
  v80 = *(v79 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v82);
  v169 = type metadata accessor for RGParameterConfirmationModel(0);
  v83 = sub_1DD6DE1C4(v169);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v86);
  v87 = sub_1DD710A9C(&qword_1ECD103A8, &qword_1DD884EC0);
  sub_1DD6DF3FC(v87, &v181);
  v89 = *(v88 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v91);
  v168 = type metadata accessor for RGActionConfirmationModel(0);
  v92 = sub_1DD6DE1C4(v168);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v95);
  v96 = sub_1DD710A9C(&qword_1ECD103B0, &qword_1DD884EC8);
  sub_1DD6DF3FC(v96, &v176);
  v98 = *(v97 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v99);
  v100 = sub_1DD6E0CB8();
  v101 = type metadata accessor for RGDisambiguationModel(v100);
  v102 = sub_1DD6DE1C4(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  v105 = type metadata accessor for RGPluginModel(0);
  v106 = sub_1DD6DE1C4(v105);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  sub_1DD6DE4A8();
  v111 = (v110 - v109);
  a10 = sub_1DD710A9C(&qword_1ECD103B8, &qword_1DD884ED0);
  sub_1DD6DDEAC(a10);
  v184 = v112;
  v114 = *(v113 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1DD6F0A58();
  v116 = *(v28 + 24);
  v117 = *(v28 + 32);
  v118 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v118, v119);
  sub_1DD7878EC();
  v183 = v24;
  sub_1DD875BB0();
  sub_1DD78FC8C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD792AB0(&v178);
      LOBYTE(v190) = 1;
      sub_1DD787DAC();
      sub_1DD6E2778(&v179);
      sub_1DD700C18();
      sub_1DD787A94(v143, v144);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v181);
      sub_1DD6FEB1C(&v177);
      v145 = sub_1DD6E5DE8(&v180);
      v146(v145, v101);
      goto LABEL_9;
    case 2u:
      sub_1DD792AB0(&v183);
      LOBYTE(v190) = 2;
      sub_1DD787D58();
      sub_1DD6E2778(&v184);
      sub_1DD6FF7E4();
      sub_1DD787A94(v131, v132);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v186);
      sub_1DD6FEB1C(&v182);
      v133 = sub_1DD6E5DE8(&v185);
      v134(v133, v101);
      goto LABEL_9;
    case 3u:
      sub_1DD792AB0(&v187);
      LOBYTE(v190) = 3;
      sub_1DD787D04();
      sub_1DD6E2778(&v187 + 8);
      sub_1DD7927DC();
      sub_1DD787A94(v135, v136);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v189);
      sub_1DD6FEB1C(&v186 + 8);
      v137 = sub_1DD6E5DE8(&v188);
      v138(v137, v101);
      goto LABEL_9;
    case 4u:
      v123 = *v111;
      v124 = *(v111 + 1);
      LOBYTE(v190) = 4;
      sub_1DD787CB0();
      sub_1DD6F8C48();
      *&v190 = v123;
      *(&v190 + 1) = v124;
      sub_1DD712070();
      sub_1DD700DA8(&v190);
      sub_1DD6DEDD4(&v189 + 8);
      v125(v171, v22);
      sub_1DD792A1C();
      v126(v105, v101);
      sub_1DD6E6658(v123, v124);
      goto LABEL_11;
    case 5u:
      v150 = *v111;
      v151 = *(v111 + 1);
      v153 = *(v111 + 2);
      v152 = *(v111 + 3);
      v155 = *(v111 + 4);
      v154 = *(v111 + 5);
      LOBYTE(v190) = 5;
      sub_1DD787C08();
      v156 = v183;
      sub_1DD875910();
      v181 = v150;
      *&v190 = v150;
      *(&v190 + 1) = v151;
      *&v191 = v153;
      *(&v191 + 1) = v152;
      v182 = v152;
      *&v192 = v155;
      *(&v192 + 1) = v154;
      sub_1DD787C5C();
      sub_1DD700DA8(&v191 + 8);
      sub_1DD6DEDD4(&v191);
      v157(v172, v153);
      sub_1DD792A1C();
      v158(v156, a10);
      sub_1DD6E6658(v181, v151);

      goto LABEL_11;
    case 6u:
      v159 = v111[1];
      v190 = *v111;
      v191 = v159;
      v160 = v111[3];
      v192 = v111[2];
      v193 = v160;
      LOBYTE(v186) = 6;
      sub_1DD787B30();
      sub_1DD6E2778(&v192);
      v186 = v190;
      v187 = v191;
      v188 = v192;
      v189 = v193;
      sub_1DD787B84();
      sub_1DD6E374C(&v193 + 8);
      sub_1DD8759D0();
      v161 = sub_1DD6E5DE8(&v192 + 8);
      v162(v161, v101);
      sub_1DD792A1C();
      v163(v117, v116);
      sub_1DD787BD8(&v190);
      goto LABEL_11;
    case 7u:
      sub_1DD792AB0(&v194);
      LOBYTE(v190) = 7;
      sub_1DD787A40();
      sub_1DD6E2778(&v195);
      sub_1DD6F382C();
      sub_1DD787A94(v139, v140);
      sub_1DD6FAD44();
      sub_1DD6E374C(&a11);
      sub_1DD6FEB1C(&v193);
      v141 = sub_1DD6E5DE8(&a9);
      v142(v141, v101);
      goto LABEL_9;
    case 8u:
      v165 = *v111;
      v164 = *(v111 + 1);
      LOBYTE(v190) = 8;
      sub_1DD787994();
      sub_1DD6F8C48();
      v166 = v176;
      sub_1DD875970();

      sub_1DD6DEDD4(&a12);
      v167(v174, v166);
      sub_1DD792A1C();
      v148 = v105;
      v149 = v101;
      goto LABEL_10;
    case 9u:
      sub_1DD792AB0(&a15);
      LOBYTE(v190) = 9;
      sub_1DD787940();
      sub_1DD6E2778(&a16);
      sub_1DD7927F4();
      sub_1DD787A94(v127, v128);
      sub_1DD6FAD44();
      sub_1DD6E374C(&a18);
      sub_1DD6FEB1C(&a14);
      v129 = sub_1DD6E5DE8(&a17);
      v130(v129, v101);
      goto LABEL_9;
    default:
      sub_1DD7879E8();
      LOBYTE(v190) = 0;
      sub_1DD787E00();
      v116 = a10;
      v117 = v183;
      sub_1DD875910();
      sub_1DD7927AC();
      sub_1DD787A94(v120, v121);
      sub_1DD6FAD44();
      sub_1DD8759D0();
      sub_1DD6DEDD4(&v175);
      v122(v23);
LABEL_9:
      sub_1DD787ADC();
      sub_1DD792A1C();
      v148 = v117;
      v149 = v116;
LABEL_10:
      v147(v148, v149);
LABEL_11:
      sub_1DD6E0C78();
      return;
  }
}

unint64_t sub_1DD7878EC()
{
  result = qword_1ECD103C0;
  if (!qword_1ECD103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103C0);
  }

  return result;
}

unint64_t sub_1DD787940()
{
  result = qword_1ECD103C8;
  if (!qword_1ECD103C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103C8);
  }

  return result;
}

unint64_t sub_1DD787994()
{
  result = qword_1ECD103D8;
  if (!qword_1ECD103D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103D8);
  }

  return result;
}

uint64_t sub_1DD7879E8()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

unint64_t sub_1DD787A40()
{
  result = qword_1ECD103E0;
  if (!qword_1ECD103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103E0);
  }

  return result;
}

uint64_t sub_1DD787A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD787ADC()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1DD787B30()
{
  result = qword_1ECD103F0;
  if (!qword_1ECD103F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103F0);
  }

  return result;
}

unint64_t sub_1DD787B84()
{
  result = qword_1ECD103F8;
  if (!qword_1ECD103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103F8);
  }

  return result;
}

unint64_t sub_1DD787C08()
{
  result = qword_1ECD10400;
  if (!qword_1ECD10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10400);
  }

  return result;
}

unint64_t sub_1DD787C5C()
{
  result = qword_1ECD10408;
  if (!qword_1ECD10408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10408);
  }

  return result;
}

unint64_t sub_1DD787CB0()
{
  result = qword_1ECD10410;
  if (!qword_1ECD10410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10410);
  }

  return result;
}

unint64_t sub_1DD787D04()
{
  result = qword_1ECD10418;
  if (!qword_1ECD10418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10418);
  }

  return result;
}

unint64_t sub_1DD787D58()
{
  result = qword_1ECD10428;
  if (!qword_1ECD10428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10428);
  }

  return result;
}

unint64_t sub_1DD787DAC()
{
  result = qword_1ECD10438;
  if (!qword_1ECD10438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10438);
  }

  return result;
}

unint64_t sub_1DD787E00()
{
  result = qword_1ECD10448;
  if (!qword_1ECD10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10448);
  }

  return result;
}

void RGPluginModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  a10 = v20;
  v26 = v25;
  v221 = v27;
  v28 = sub_1DD710A9C(&qword_1ECD10458, &qword_1DD884ED8);
  v29 = sub_1DD6DDEAC(v28);
  v223 = v30;
  v224 = v29;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E0C6C();
  v222 = v34;
  v35 = sub_1DD710A9C(&qword_1ECD10460, &qword_1DD884EE0);
  sub_1DD6DF3FC(v35, &v234 + 8);
  v218 = v36;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  v220 = v40;
  v41 = sub_1DD710A9C(&qword_1ECD10468, &qword_1DD884EE8);
  sub_1DD6DF3FC(v41, &v234);
  v217 = v42;
  v44 = *(v43 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v46);
  v47 = sub_1DD710A9C(&qword_1ECD10470, &qword_1DD884EF0);
  sub_1DD6DF3FC(v47, &v233 + 8);
  v208 = v48;
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v52);
  v53 = sub_1DD710A9C(&qword_1ECD10478, &qword_1DD884EF8);
  sub_1DD6DF3FC(v53, &v233);
  v216 = v54;
  v56 = *(v55 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD6E0C6C();
  v229 = v58;
  v59 = sub_1DD710A9C(&qword_1ECD10480, &qword_1DD884F00);
  sub_1DD6DF3FC(v59, &v232);
  v215 = v60;
  v62 = *(v61 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v64);
  v65 = sub_1DD710A9C(&qword_1ECD10488, &qword_1DD884F08);
  sub_1DD6DF3FC(v65, &v231);
  v214 = v66;
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD6E0C6C();
  v228 = v70;
  v71 = sub_1DD710A9C(&qword_1ECD10490, &qword_1DD884F10);
  sub_1DD6DF3FC(v71, &v230);
  v213 = v72;
  v74 = *(v73 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v76);
  v77 = sub_1DD710A9C(&qword_1ECD10498, &qword_1DD884F18);
  sub_1DD6DF3FC(v77, &v229);
  v212 = v78;
  v80 = *(v79 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v82);
  v83 = sub_1DD710A9C(&qword_1ECD104A0, &qword_1DD884F20);
  sub_1DD6DF3FC(v83, &v228);
  v211 = v84;
  v86 = *(v85 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v88);
  v230 = sub_1DD710A9C(&qword_1ECD104A8, &unk_1DD884F28);
  sub_1DD6DDEAC(v230);
  v226 = v89;
  v91 = *(v90 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v92);
  v93 = sub_1DD792B18();
  v225 = type metadata accessor for RGPluginModel(v93);
  v94 = sub_1DD6DE1C4(v225);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v97);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v98);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v102);
  v104 = v203 - v103;
  MEMORY[0x1EEE9AC00](v105);
  v107 = v203 - v106;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v203 - v109;
  MEMORY[0x1EEE9AC00](v111);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v112);
  v114 = v203 - v113;
  v116 = v26[3];
  v115 = v26[4];
  v231 = v26;
  sub_1DD6DEA7C(v26, v116);
  sub_1DD7878EC();
  v227 = v21;
  v117 = a10;
  sub_1DD875B90();
  if (v117)
  {
    goto LABEL_10;
  }

  v203[2] = v22;
  v203[3] = v110;
  v203[4] = v107;
  v203[5] = v104;
  v118 = v229;
  a10 = v114;
  v119 = v227;
  v120 = sub_1DD875900();
  sub_1DD6ED750(v120, 0);
  if (v122 == v123 >> 1)
  {
    v124 = v225;
LABEL_9:
    v135 = sub_1DD875740();
    swift_allocError();
    v137 = v136;
    v138 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v137 = v124;
    v139 = v230;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v135 - 8) + 104))(v137, *MEMORY[0x1E69E6AF8], v135);
    swift_willThrow();
    swift_unknownObjectRelease();
    v140 = sub_1DD6ED4A8();
    v141(v140, v139);
LABEL_10:
    v142 = v231;
LABEL_11:
    sub_1DD6E1EC8(v142);
    sub_1DD792AF8();
    sub_1DD6E0C78();
    return;
  }

  v203[0] = 0;
  if (v122 < (v123 >> 1))
  {
    v125 = *(v121 + v122);
    v126 = sub_1DD6ED830(v122 + 1);
    v128 = v127;
    v130 = v129;
    swift_unknownObjectRelease();
    v203[1] = v126;
    v132 = v223;
    v131 = v224;
    if (v128 == v130 >> 1)
    {
      v133 = v222;
      switch(v125)
      {
        case 1:
          LOBYTE(v232) = 1;
          sub_1DD787DAC();
          sub_1DD6EFF94(&a14);
          sub_1DD6E65AC();
          type metadata accessor for RGActionConfirmationModel(0);
          sub_1DD700C18();
          sub_1DD787A94(v153, v154);
          v155 = v207;
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v180 = sub_1DD6E5DE8(&v235 + 8);
          v181(v180, v155);
          v182 = sub_1DD6E0DF8();
          v183(v182);
          sub_1DD792998();
          goto LABEL_21;
        case 2:
          LOBYTE(v232) = 2;
          sub_1DD787D58();
          sub_1DD6EFF94(&a15);
          sub_1DD6E65AC();
          type metadata accessor for RGParameterConfirmationModel(0);
          sub_1DD6FF7E4();
          sub_1DD787A94(v147, v148);
          sub_1DD6F4500(&v220);
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v168 = sub_1DD6E5DE8(&v236);
          v169(v168, v133);
          v170 = sub_1DD6E0DF8();
          v171(v170);
          sub_1DD792998();
          goto LABEL_21;
        case 3:
          LOBYTE(v232) = 3;
          sub_1DD787D04();
          sub_1DD6E65AC();
          type metadata accessor for RGToolDisambiguationModel(0);
          sub_1DD7927DC();
          sub_1DD787A94(v149, v150);
          sub_1DD6F4500(&v221);
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v172 = sub_1DD6E5DE8(&v237);
          v173(v172, v133);
          v174 = sub_1DD6E0DF8();
          v175(v174);
          sub_1DD792998();
          goto LABEL_21;
        case 4:
          LOBYTE(v232) = 4;
          sub_1DD787CB0();
          v143 = v230;
          sub_1DD6E9614();
          sub_1DD717D38();
          sub_1DD6F3128();
          sub_1DD8758D0();
          v144 = v226;
          sub_1DD79280C();
          swift_unknownObjectRelease();
          v164 = sub_1DD6E6CB0(&a9);
          v165(v164);
          (*(v144 + 8))(v119, v143);
          *v203[6] = v232;
          goto LABEL_21;
        case 5:
          LOBYTE(v232) = 5;
          sub_1DD787C08();
          sub_1DD6E9614();
          sub_1DD78FBC4();
          sub_1DD6F3128();
          sub_1DD8758D0();
          v161 = v226;
          sub_1DD79280C();
          swift_unknownObjectRelease();
          v188 = sub_1DD6E6CB0(&a10);
          v189(v188);
          (*(v161 + 8))(v119, v230);
          v190 = v233;
          v191 = v204;
          *v204 = v232;
          v191[1] = v190;
          v191[2] = v234;
          goto LABEL_21;
        case 6:
          LOBYTE(v232) = 6;
          sub_1DD787B30();
          sub_1DD6EFF94(&a17);
          sub_1DD6E65AC();
          sub_1DD78FB70();
          v156 = v209;
          sub_1DD6F3128();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          v157 = (v208 + 8);
          v158 = (v226 + 8);
          sub_1DD79280C();
          swift_unknownObjectRelease();
          (*v157)(v131, v156);
          (*v158)(v119, v118);
          v192 = v233;
          v193 = v206;
          *v206 = v232;
          v193[1] = v192;
          v194 = v235;
          v193[2] = v234;
          v193[3] = v194;
          goto LABEL_21;
        case 7:
          LOBYTE(v232) = 7;
          sub_1DD787A40();
          sub_1DD6EFF94(&a18);
          sub_1DD6E65AC();
          type metadata accessor for RGControlModel(0);
          sub_1DD6F382C();
          sub_1DD787A94(v151, v152);
          sub_1DD6F4500(&v226);
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v176 = sub_1DD6E5DE8(&a11);
          v177(v176, v133);
          v178 = sub_1DD6E0DF8();
          v179(v178);
          sub_1DD792998();
          goto LABEL_21;
        case 8:
          LOBYTE(v232) = 8;
          sub_1DD787994();
          sub_1DD6E65AC();
          v162 = v210;
          sub_1DD6FAC28();
          v163 = sub_1DD875870();
          sub_1DD6F0A48();
          v196 = v195;
          swift_unknownObjectRelease();
          v197 = sub_1DD6E5DE8(&a12);
          v198(v197, v162);
          v199 = sub_1DD6E0DF8();
          v200(v199);
          v201 = v205;
          *v205 = v163;
          v201[1] = v196;
          swift_storeEnumTagMultiPayload();
          sub_1DD6E6AA4();
          goto LABEL_22;
        case 9:
          LOBYTE(v232) = 9;
          sub_1DD787940();
          sub_1DD6E65AC();
          type metadata accessor for RGSuccessModel(0);
          sub_1DD7927F4();
          sub_1DD787A94(v145, v146);
          sub_1DD6F4500(&v227);
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          (*(v132 + 8))(v133, v131);
          v166 = sub_1DD6E0DF8();
          v167(v166);
          sub_1DD792998();
          goto LABEL_21;
        default:
          LOBYTE(v232) = 0;
          sub_1DD787E00();
          v134 = v230;
          sub_1DD6E9614();
          type metadata accessor for RGDisambiguationModel(0);
          sub_1DD7927AC();
          sub_1DD787A94(v159, v160);
          sub_1DD6F4500(&v219);
          sub_1DD6E72E8();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v184 = sub_1DD6E6CB0(&v235);
          v185(v184);
          v186 = sub_1DD6ED4A8();
          v187(v186, v134);
          sub_1DD792998();
LABEL_21:
          swift_storeEnumTagMultiPayload();
          sub_1DD6E6AA4();
LABEL_22:
          sub_1DD7879E8();
          v202 = v231;
          sub_1DD6E6AA4();
          sub_1DD7879E8();
          v142 = v202;
          break;
      }

      goto LABEL_11;
    }

    v124 = v225;
    goto LABEL_9;
  }

  __break(1u);
}

double RGDisplayRepresentation.init(title:subtitle:image:bundleIdentifier:snippetPluginModelData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = sub_1DD8746A0();
  sub_1DD6DE1C4(v12);
  (*(v13 + 32))(a6, a1);
  v14 = type metadata accessor for RGDisplayRepresentation(0);
  v15 = v14[5];
  sub_1DD78FE34();
  v16 = v14[6];
  sub_1DD78FE34();
  v17 = (a6 + v14[7]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a6 + v14[8]);
  *v18 = a4;
  v18[1] = a5;
  result = 0.0;
  *(a6 + v14[9]) = xmmword_1DD878A20;
  return result;
}

double RGDisplayRepresentation.init(cardData:)()
{
  sub_1DD6E1F34();
  v3 = v2;
  sub_1DD874690();
  v4 = type metadata accessor for RGDisplayRepresentation(0);
  v5 = v4[5];
  sub_1DD8746A0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  v10 = v4[6];
  sub_1DD875030();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v11, v12, v13, v14);
  v15 = (v3 + v4[7]);
  *v15 = 0;
  v15[1] = 0;
  result = 0.0;
  *(v3 + v4[8]) = xmmword_1DD878A20;
  v17 = (v3 + v4[9]);
  *v17 = v1;
  v17[1] = v0;
  return result;
}

uint64_t RGDisplayRepresentation.subtitle.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for RGDisplayRepresentation(v0) + 20);
  return sub_1DD792B58();
}

uint64_t RGDisplayRepresentation.image.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for RGDisplayRepresentation(v0) + 24);
  return sub_1DD792B58();
}

uint64_t RGDisplayRepresentation.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for RGDisplayRepresentation(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t RGDisplayRepresentation.snippetPluginModelData.getter()
{
  v1 = (v0 + *(type metadata accessor for RGDisplayRepresentation(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v4, v5);
  return sub_1DD6DDEFC();
}

uint64_t RGDisplayRepresentation.cardData.getter()
{
  v1 = (v0 + *(type metadata accessor for RGDisplayRepresentation(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v4, v5);
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD789364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B6000 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD789550(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6174614464726163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD789364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD789634(uint64_t a1)
{
  v2 = sub_1DD78FC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD789670(uint64_t a1)
{
  v2 = sub_1DD78FC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGDisplayRepresentation.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = sub_1DD710A9C(&qword_1ECD10500, &qword_1DD884F48);
  sub_1DD6DDEAC(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD78FC38();
  sub_1DD6E1808();
  sub_1DD8746A0();
  sub_1DD6E531C();
  sub_1DD787A94(v5, v6);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for RGDisplayRepresentation(0);
    v8 = v7[5];
    sub_1DD6E5FDC();
    sub_1DD875960();
    v9 = v7[6];
    sub_1DD875030();
    sub_1DD6EE798();
    sub_1DD787A94(v10, v11);
    sub_1DD6E1FB0();
    sub_1DD875960();
    sub_1DD6F8CE0(v7[7]);
    sub_1DD6FAC6C(3);
    sub_1DD6DE334();
    sub_1DD875920();
    v18 = sub_1DD6F8CE0(v7[8]);
    v20 = v12;
    sub_1DD76D0F4(v18, v12);
    sub_1DD712070();
    sub_1DD792A28();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD70104C(v18, v20);
    v19 = sub_1DD6F8CE0(v7[9]);
    v21 = v13;
    sub_1DD6E41B0();
    sub_1DD76D0F4(v14, v15);
    sub_1DD792A28();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD70104C(v19, v21);
  }

  v16 = sub_1DD6E0FB0();
  v17(v16);
  sub_1DD6E0C78();
}

void RGDisplayRepresentation.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD104F8, &qword_1DD884F40);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  v7 = sub_1DD710A9C(&qword_1ECD104F0, &qword_1DD884F38);
  sub_1DD6DEA10(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD792B18();
  v11 = sub_1DD8746A0();
  v12 = sub_1DD6DDEAC(v11);
  v41 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE4A8();
  v18 = v17 - v16;
  v39 = sub_1DD710A9C(&qword_1ECD10520, &qword_1DD884F50);
  sub_1DD6DDEAC(v39);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6F4428();
  v40 = type metadata accessor for RGDisplayRepresentation(0);
  v22 = sub_1DD6DE1C4(v40);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DDEE8();
  v26 = v25;
  v27 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD78FC38();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E531C();
    sub_1DD787A94(v28, v29);
    sub_1DD702E78();
    sub_1DD8758D0();
    (*(v41 + 32))(v26, v18, v11);
    sub_1DD702E78();
    sub_1DD875860();
    v30 = v40[5];
    sub_1DD78FE34();
    sub_1DD875030();
    LOBYTE(v42) = 2;
    sub_1DD6EE798();
    sub_1DD787A94(v31, v32);
    sub_1DD702E78();
    sub_1DD875860();
    v33 = v40[6];
    sub_1DD78FE34();
    sub_1DD7929B4(3);
    sub_1DD702E78();
    v34 = sub_1DD875820();
    v35 = (v26 + v40[7]);
    *v35 = v34;
    v35[1] = v36;
    sub_1DD717D38();
    sub_1DD702E78();
    sub_1DD875860();
    *(v26 + v40[8]) = v42;
    sub_1DD6E41B0();
    sub_1DD702E78();
    sub_1DD875860();
    v37 = sub_1DD792928();
    v38(v37, v39);
    *(v26 + v40[9]) = v42;
    sub_1DD78FC8C();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t RGDisambiguationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGDisambiguationModel(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t RGDisambiguationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGDisambiguationModel(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t RGDisambiguationModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGDisambiguationModel(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78A0A0(uint64_t a1)
{
  v2 = sub_1DD78FCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78A0DC(uint64_t a1)
{
  v2 = sub_1DD78FCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGDisambiguationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v1 = sub_1DD710A9C(&qword_1ECD10538, &qword_1DD884F58);
  sub_1DD6DDEAC(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD78FCE4();
  sub_1DD6E1808();
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v5, v6);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = type metadata accessor for RGDisambiguationModel(0);
    sub_1DD6E88D8(v7);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v8, v9);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v10 = sub_1DD6E0FB0();
  v11(v10);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGDisambiguationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = sub_1DD792908(v3);
  v5 = sub_1DD6DDEAC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F9BD8(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  v35 = sub_1DD710A9C(&qword_1ECD10560, &unk_1DD884F68);
  sub_1DD6DDEAC(v35);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  v20 = type metadata accessor for RGDisambiguationModel(0);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  v24 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD78FCE4();
  sub_1DD6E113C();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    sub_1DD787A94(v25, v26);
    sub_1DD6DEBFC();
    v27 = sub_1DD6FBE50();
    v28(v27);
    sub_1DD6E5DF8();
    v29 = sub_1DD6ED198();
    v1(v29);
    sub_1DD6EFF88();
    sub_1DD705D68();
    sub_1DD6E6130();
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    sub_1DD78FD38(v30, v31);
    sub_1DD6EED74();
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD78A6AC()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 20);
  v3 = sub_1DD874820();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD78A730()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 20);
  v5 = sub_1DD874820();
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t RGActionConfirmationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGActionConfirmationModel(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78A7FC()
{
  v2 = sub_1DD6FC430();
  v4 = v1 + *(v3(v2) + 24);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *v0 = *v4;
  *(v0 + 8) = v6;
  *(v0 + 16) = v5;
}

uint64_t sub_1DD78A864(int *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = v2 + *(a2(0) + 24);
  v7 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return result;
}

uint64_t RGActionConfirmationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGActionConfirmationModel(v0) + 24);
  return sub_1DD6DDF9C();
}

void RGActionConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:actionDisplayRepresentations:isDestructive:)()
{
  sub_1DD6DEB38();
  v47 = v0;
  v42 = v1;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0C6C();
  v46 = v17;
  v18 = *v6;
  v20 = *(v6 + 1);
  v19 = *(v6 + 2);
  v21 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v22, v23, v24, v21);
  v45 = v10;
  sub_1DD78FDC4(v10, v12);
  v25 = type metadata accessor for RGActionConfirmationModel(0);
  v26 = *(v21 - 8);
  v44 = v8;
  (*(v26 + 16))(v12 + v25[5], v8, v21);
  v27 = v12 + v25[6];
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v19;
  v28 = v25[7];
  v29 = sub_1DD8746A0();
  sub_1DD6E0A68(v29);
  v31 = v30;
  v32 = *(v30 + 16);
  v32(v12 + v28, v42, v29);
  v32(v12 + v25[8], v4, v29);
  *(v12 + v25[9]) = v43;
  if (v43)
  {
    sub_1DD7927C4();
    sub_1DD785F10(v33, v34, v46);
    v35 = *(v31 + 8);
    v35(v4, v29);
    v35(v42, v29);
    (*(v26 + 8))(v44, v21);
    sub_1DD6FC560(v45, &qword_1ECD0E540, &qword_1DD878B10);
  }

  else
  {
    v36 = *(v31 + 8);
    v36(v4, v29);
    v36(v42, v29);
    (*(v26 + 8))(v44, v21);
    sub_1DD6FC560(v45, &qword_1ECD0E540, &qword_1DD878B10);
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v37, v38, v39, v40);
  }

  v41 = v25[11];
  sub_1DD78FE34();
  *(v12 + v25[10]) = v47 & 1;
  sub_1DD6DFED0();
}

void RGActionConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:actionDisplayRepresentation:)()
{
  sub_1DD6DEB38();
  v60 = v4;
  v61 = v3;
  v62 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DD6E0A5C();
  v56 = type metadata accessor for RGDisplayRepresentation(v12);
  v13 = sub_1DD6DDEAC(v56);
  v54 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDEE8();
  v17 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE21C();
  v55 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v31 = sub_1DD792934(v23, v24, v25, v26, v27, v28, v29, v30, v53);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v32, v33, v34, v31);
  v59 = v11;
  sub_1DD78FDC4(v11, v0);
  v35 = type metadata accessor for RGActionConfirmationModel(0);
  v57 = *(v31 - 8);
  v58 = v31;
  (*(v57 + 16))(v0 + v35[5], v9, v31);
  v36 = v0 + v35[6];
  *v36 = v2;
  *(v36 + 8) = v1;
  *(v36 + 16) = v7;
  v37 = v35[7];
  v38 = sub_1DD8746A0();
  sub_1DD6E0A68(v38);
  v40 = v39;
  v41 = *(v39 + 16);
  v41(v0 + v37, v62, v38);
  v41(v0 + v35[8], v61, v38);
  v42 = v35[11];
  sub_1DD719110();
  sub_1DD710A9C(&qword_1ECD10580, &qword_1DD884F80);
  v43 = *(v18 + 72);
  v44 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_1DD8782E0;
  sub_1DD719110();
  sub_1DD719110();
  sub_1DD78FE34();
  if (sub_1DD6E5ED0(v55, 1, v56) == 1)
  {
    sub_1DD6FC560(v55, &qword_1ECD10578, &qword_1DD884F78);
    v45 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v46 = v38;
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v45 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD705584();
      v45 = v51;
    }

    v47 = *(v45 + 16);
    if (v47 >= *(v45 + 24) >> 1)
    {
      sub_1DD792A70();
      v45 = v52;
    }

    *(v45 + 16) = v47 + 1;
    v48 = v45 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v49 = *(v54 + 72);
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v38 = v46;
  }

  swift_setDeallocating();
  sub_1DD78FAEC();
  sub_1DD6FC560(v60, &qword_1ECD10578, &qword_1DD884F78);
  v50 = *(v40 + 8);
  v50(v61, v38);
  v50(v62, v38);
  (*(v57 + 8))(v9, v58);
  sub_1DD6FC560(v59, &qword_1ECD0E540, &qword_1DD878B10);
  *(v0 + v35[9]) = v45;
  *(v0 + v35[10]) = 0;
  sub_1DD6DFED0();
}

uint64_t RGActionConfirmationModel.actionDisplayRepresentation.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for RGActionConfirmationModel(v0) + 44);
  return sub_1DD792B58();
}

uint64_t sub_1DD78B0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000444974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD8B6060 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7572747365447369 && a2 == 0xED00006576697463;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6080 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD78B370(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x74616D7269666661;
      break;
    case 4:
      result = 0x657669746167656ELL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x7572747365447369;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78B0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78B4C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD78B368();
  *a1 = result;
  return result;
}

uint64_t sub_1DD78B4E8(uint64_t a1)
{
  v2 = sub_1DD78FE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78B524(uint64_t a1)
{
  v2 = sub_1DD78FE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGActionConfirmationModel.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v0;
  v4 = sub_1DD710A9C(&qword_1ECD10588, &qword_1DD884F88);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD78FE8C();
  sub_1DD6E1808();
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v8, v9);
  sub_1DD792A40();
  sub_1DD6E5FDC();
  sub_1DD875960();
  if (!v1)
  {
    v10 = type metadata accessor for RGActionConfirmationModel(0);
    sub_1DD6E88D8(v10);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    v11 = (v0 + v2[6]);
    v12 = *(v11 + 2);
    v24 = *v11;
    v26 = *(v11 + 1);
    sub_1DD6EFF88();
    sub_1DD70396C();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD792B38();
    sub_1DD6E531C();
    sub_1DD787A94(v13, v14);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    v15 = v2[8];
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    v25 = *(v3 + v2[9]);
    sub_1DD6E41B0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v16, v17);
    sub_1DD6F314C();
    sub_1DD875960();
    v18 = *(v3 + v2[10]);
    sub_1DD6E9570();
    sub_1DD6DE334();
    sub_1DD875980();
    v19 = v2[11];
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E08E8();
    sub_1DD787A94(v20, v21);
    sub_1DD6E1FB0();
    sub_1DD875960();
  }

  v22 = sub_1DD6E0FB0();
  v23(v22);
  sub_1DD6E0C78();
}

void RGActionConfirmationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v9 = sub_1DD8746A0();
  v10 = sub_1DD6DDEAC(v9);
  v68 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE21C();
  sub_1DD792B04();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD7038AC();
  v16 = sub_1DD6DDEAC(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  v21 = (v20 - v19);
  v22 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F0A58();
  v26 = sub_1DD710A9C(&qword_1ECD10598, &qword_1DD884F90);
  sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1DD6E0CB8();
  v67 = type metadata accessor for RGActionConfirmationModel(v30);
  v31 = sub_1DD6DE1C4(v67);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DE4A8();
  v36 = v35 - v34;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v37, v38, v39, v15);
  v40 = v4[3];
  v41 = v4[4];
  v42 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v42, v43);
  sub_1DD78FE8C();
  sub_1DD7929F4();
  if (v0)
  {
    sub_1DD6F1798();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC560(v36, &qword_1ECD0E540, &qword_1DD878B10);
    if (v21)
    {
      v46 = *(v68 + 8);
      v47 = sub_1DD792A34(v67[7]);
      v48(v47);
      if (!v4)
      {
LABEL_5:
        if (!v40)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v4)
    {
      goto LABEL_5;
    }

    v49 = *(v68 + 8);
    v50 = sub_1DD792A34(v67[8]);
    v51(v50);
    if (!v40)
    {
      goto LABEL_10;
    }

LABEL_9:
    v52 = *(v36 + v67[9]);

    goto LABEL_10;
  }

  sub_1DD6E14C4();
  sub_1DD787A94(v44, v45);
  sub_1DD6DF160();
  sub_1DD875860();
  sub_1DD7223B8(v1, v36);
  LOBYTE(v69) = 1;
  sub_1DD6DF160();
  sub_1DD8758D0();
  v53 = sub_1DD7928AC();
  v54(v53);
  sub_1DD6EFF88();
  sub_1DD705D68();
  sub_1DD6E40F8();
  sub_1DD6F3128();
  sub_1DD8758D0();
  sub_1DD6E7284();
  sub_1DD6E531C();
  sub_1DD787A94(v55, v56);
  sub_1DD79283C();
  v57 = v2;
  v58 = *(v68 + 32);
  v58(v36 + v21[7], v57, v21);
  sub_1DD792874();
  v59 = sub_1DD792A34(v21[8]);
  (v58)(v59);
  sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
  sub_1DD6E41B0();
  sub_1DD6ED678();
  sub_1DD78FD38(v60, v61);
  sub_1DD6E40F8();
  sub_1DD6F9C04();
  *(v36 + v21[9]) = v69;
  sub_1DD6E9570();
  *(v36 + v21[10]) = sub_1DD875880() & 1;
  type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6E08E8();
  sub_1DD787A94(v62, v63);
  sub_1DD7928D8();
  v64 = sub_1DD792818();
  v65(v64);
  v66 = v21[11];
  sub_1DD78FE34();
  sub_1DD78FC8C();
  sub_1DD6E1EC8(v4);
  sub_1DD787ADC();
LABEL_10:
  sub_1DD6E0C78();
}

uint64_t RGParameterConfirmationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGParameterConfirmationModel(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t RGParameterConfirmationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for RGParameterConfirmationModel(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78C020()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 28);
  v3 = sub_1DD8746A0();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD78C0A4()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 32);
  v3 = sub_1DD8746A0();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD78C128(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 36));
}

void RGParameterConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:parameterDisplayRepresentations:)()
{
  sub_1DD6DEB38();
  v43 = v0;
  v44 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v47 = v16;
  v17 = *v5;
  v19 = *(v5 + 1);
  v18 = *(v5 + 2);
  v20 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v21, v22, v23, v20);
  v46 = v9;
  v24 = sub_1DD6E21D0();
  sub_1DD78FDC4(v24, v25);
  v26 = type metadata accessor for RGParameterConfirmationModel(0);
  v27 = *(v20 - 8);
  v45 = v7;
  (*(v27 + 16))(v11 + v26[5], v7, v20);
  v28 = v11 + v26[6];
  *v28 = v17;
  *(v28 + 8) = v19;
  *(v28 + 16) = v18;
  v29 = v26[7];
  v30 = sub_1DD8746A0();
  sub_1DD6E0A68(v30);
  v32 = v31;
  v33 = *(v31 + 16);
  v33(v11 + v29, v43, v30);
  v33(v11 + v26[8], v3, v30);
  *(v11 + v26[9]) = v44;
  if (v44)
  {
    sub_1DD7927C4();
    sub_1DD785F10(v34, v35, v47);
    v36 = *(v32 + 8);
    v36(v3, v30);
    v36(v43, v30);
    (*(v27 + 8))(v45, v20);
    sub_1DD6FC560(v46, &qword_1ECD0E540, &qword_1DD878B10);
  }

  else
  {
    v37 = *(v32 + 8);
    v37(v3, v30);
    v37(v43, v30);
    (*(v27 + 8))(v45, v20);
    sub_1DD6FC560(v46, &qword_1ECD0E540, &qword_1DD878B10);
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v38, v39, v40, v41);
  }

  v42 = v26[10];
  sub_1DD78FE34();
  sub_1DD6DFED0();
}

void RGParameterConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:parameterDisplayRepresentation:)()
{
  sub_1DD6DEB38();
  v54 = v2;
  v60 = v4;
  v61 = v3;
  v6 = v5;
  v62 = v7;
  v9 = v8;
  v11 = v10;
  v55 = type metadata accessor for RGDisplayRepresentation(0);
  v12 = sub_1DD6DDEAC(v55);
  v53 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v16 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE21C();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v31 = sub_1DD792934(v23, v24, v25, v26, v27, v28, v29, v30, v52);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v32, v33, v34, v31);
  v59 = v9;
  sub_1DD78FDC4(v9, v11);
  v35 = type metadata accessor for RGParameterConfirmationModel(0);
  v56 = *(v31 - 8);
  v58 = v31;
  (*(v56 + 16))(v11 + v35[5], v62, v31);
  v36 = v11 + v35[6];
  *v36 = v1;
  *(v36 + 8) = v0;
  *(v36 + 16) = v6;
  v37 = v35[7];
  v38 = sub_1DD8746A0();
  sub_1DD6E0A68(v38);
  v40 = v39;
  v41 = *(v39 + 16);
  v41(v11 + v37, v61, v38);
  v41(v11 + v35[8], v60, v38);
  v57 = v35;
  v42 = v35[10];
  sub_1DD719110();
  sub_1DD710A9C(&qword_1ECD10580, &qword_1DD884F80);
  v43 = *(v17 + 72);
  v44 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1DD8782E0;
  sub_1DD719110();
  sub_1DD719110();
  sub_1DD78FE34();
  if (sub_1DD6E5ED0(v21, 1, v55) == 1)
  {
    sub_1DD6FC560(v21, &qword_1ECD10578, &qword_1DD884F78);
    v45 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v45 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD705584();
      v45 = v50;
    }

    v46 = *(v45 + 16);
    if (v46 >= *(v45 + 24) >> 1)
    {
      sub_1DD792A70();
      v45 = v51;
    }

    *(v45 + 16) = v46 + 1;
    v47 = v45 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v48 = *(v53 + 72);
    sub_1DD6DE5C4();
    sub_1DD7879E8();
  }

  swift_setDeallocating();
  sub_1DD78FAEC();
  sub_1DD6FC560(v54, &qword_1ECD10578, &qword_1DD884F78);
  v49 = *(v40 + 8);
  v49(v60, v38);
  v49(v61, v38);
  (*(v56 + 8))(v62, v58);
  sub_1DD6FC560(v59, &qword_1ECD0E540, &qword_1DD878B10);
  *(v11 + v57[9]) = v45;
  sub_1DD6DFED0();
}

uint64_t RGParameterConfirmationModel.parameterDisplayRepresentation.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for RGParameterConfirmationModel(v0) + 40);
  return sub_1DD792B58();
}

uint64_t sub_1DD78C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000444974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x80000001DD8B60A0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ELL && 0x80000001DD8B60C0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
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
  }
}

unint64_t sub_1DD78CB00(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x74616D7269666661;
      break;
    case 4:
      result = 0x657669746167656ELL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78CC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78CC30(uint64_t a1)
{
  v2 = sub_1DD78FEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78CC6C(uint64_t a1)
{
  v2 = sub_1DD78FEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGParameterConfirmationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD105A0, &qword_1DD884F98);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD78FEE0();
  sub_1DD6E1808();
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v7, v8);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD875960();
  if (!v0)
  {
    v9 = type metadata accessor for RGParameterConfirmationModel(0);
    sub_1DD6E88D8(v9);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD792B38();
    sub_1DD6E531C();
    sub_1DD787A94(v10, v11);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    v12 = v2[8];
    sub_1DD6E21DC();
    sub_1DD8759D0();
    v20 = *(v1 + v2[9]);
    sub_1DD6E41B0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v13, v14);
    sub_1DD6F314C();
    sub_1DD875960();
    v15 = v2[10];
    sub_1DD6E9570();
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E08E8();
    sub_1DD787A94(v16, v17);
    sub_1DD6E1FB0();
    sub_1DD875960();
  }

  v18 = sub_1DD6E0FB0();
  v19(v18);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGParameterConfirmationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v9 = sub_1DD8746A0();
  v10 = sub_1DD6DDEAC(v9);
  v68 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE21C();
  sub_1DD792B04();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1DD7038AC();
  v16 = sub_1DD6DDEAC(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE4A8();
  v21 = (v20 - v19);
  v22 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F0A58();
  v26 = sub_1DD710A9C(&qword_1ECD105B0, &qword_1DD884FA0);
  sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1DD6E0CB8();
  v67 = type metadata accessor for RGParameterConfirmationModel(v30);
  v31 = sub_1DD6DE1C4(v67);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DE4A8();
  v36 = v35 - v34;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v37, v38, v39, v15);
  v40 = v4[3];
  v41 = v4[4];
  v42 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v42, v43);
  sub_1DD78FEE0();
  sub_1DD7929F4();
  if (v0)
  {
    sub_1DD6F1798();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC560(v36, &qword_1ECD0E540, &qword_1DD878B10);
    if (v21)
    {
      v46 = *(v68 + 8);
      v47 = sub_1DD792A34(v67[7]);
      v48(v47);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (!v40)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v49 = *(v68 + 8);
    v50 = sub_1DD792A34(v67[8]);
    v51(v50);
    if (!v40)
    {
      goto LABEL_10;
    }

LABEL_9:
    v52 = *(v36 + v67[9]);

    goto LABEL_10;
  }

  sub_1DD6E14C4();
  sub_1DD787A94(v44, v45);
  sub_1DD6DF160();
  sub_1DD875860();
  sub_1DD7223B8(v1, v36);
  LOBYTE(v69) = 1;
  sub_1DD6DF160();
  sub_1DD8758D0();
  v53 = sub_1DD7928AC();
  v54(v53);
  sub_1DD6EFF88();
  sub_1DD705D68();
  sub_1DD6E40F8();
  sub_1DD6F3128();
  sub_1DD8758D0();
  sub_1DD6E7284();
  sub_1DD6E531C();
  sub_1DD787A94(v55, v56);
  sub_1DD79283C();
  v57 = v2;
  v58 = v36;
  v59 = *(v68 + 32);
  v59(v58 + v21[7], v57, v21);
  sub_1DD792874();
  v59(v58 + v21[8], v21, v21);
  sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
  sub_1DD6E41B0();
  sub_1DD6ED678();
  sub_1DD78FD38(v60, v61);
  sub_1DD6E40F8();
  sub_1DD6F9C04();
  *(v58 + v21[9]) = v69;
  type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6E9570();
  sub_1DD6E08E8();
  sub_1DD787A94(v62, v63);
  sub_1DD7928D8();
  v64 = sub_1DD792818();
  v65(v64);
  v66 = v21[10];
  sub_1DD78FE34();
  sub_1DD78FC8C();
  sub_1DD6E1EC8(v4);
  sub_1DD787ADC();
LABEL_10:
  sub_1DD6E0C78();
}