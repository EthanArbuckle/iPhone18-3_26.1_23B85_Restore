uint64_t sub_252C04998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3EF80;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = *v0;
  *(v5 + 72) = v6;
  strcpy((v5 + 80), "intentContext");
  *(v5 + 94) = -4864;
  v7 = *(v0 + 8);
  if (v7)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v9;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0x65736E6F70736572;
  *(v5 + 136) = 0xE900000000000073;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = type metadata accessor for HomeAutomationEntityResponses();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v12;
  *(v5 + 168) = v11;
  *(v5 + 176) = 0xD000000000000011;
  *(v5 + 184) = 0x8000000252E8A660;
  v13 = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  sub_252938414(v0 + *(v13 + 28), v4, &qword_27F540298, &unk_252E3C270);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {

    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v5 + 192) = 0u;
    *(v5 + 208) = 0u;
  }

  else
  {
    *(v5 + 216) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 192));
    (*(v15 + 32))(boxed_opaque_existential_0, v4, v14);
  }

  return v5;
}

uint64_t sub_252C04C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E419D0;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v27 = *(v11 + 48);
  if (v27(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0x6552797469746E65;
  *(v9 + 88) = 0xEF7365736E6F7073;
  v13 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v14 = *(v1 + v13[5]);
  v28 = v6;
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationEntityResponses();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v16;
  *(v9 + 120) = v15;
  *(v9 + 128) = 0xD000000000000017;
  *(v9 + 136) = 0x8000000252E6FE70;
  v17 = MEMORY[0x277D839B0];
  *(v9 + 144) = *(v1 + v13[6]);
  *(v9 + 168) = v17;
  *(v9 + 176) = 0xD000000000000010;
  *(v9 + 184) = 0x8000000252E8A020;
  v18 = *(v1 + v13[7]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v20;
  *(v9 + 216) = v19;
  strcpy((v9 + 224), "intentContext");
  *(v9 + 238) = -4864;
  v21 = *(v1 + v13[8]);
  if (v21)
  {
    v22 = type metadata accessor for HomeAutomationIntentContext(0);
    v23 = v21;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
  }

  *(v9 + 240) = v23;
  *(v9 + 264) = v22;
  *(v9 + 272) = 0xD000000000000011;
  *(v9 + 280) = 0x8000000252E69800;
  *(v9 + 288) = *(v1 + v13[9]);
  *(v9 + 312) = MEMORY[0x277D839B0];
  *(v9 + 320) = 0x5074657070696E73;
  *(v9 + 328) = 0xEF74754F68636E75;
  v24 = v28;
  sub_252938414(v1 + v13[10], v28, &qword_27F540298, &unk_252E3C270);
  if (v27(v24, 1, v10) == 1)
  {

    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    *(v9 + 336) = 0u;
    *(v9 + 352) = 0u;
  }

  else
  {
    *(v9 + 360) = v10;
    v25 = __swift_allocate_boxed_opaque_existential_0((v9 + 336));
    (*(v11 + 32))(v25, v24, v10);
  }

  return v9;
}

uint64_t sub_252C05030(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0x6552797469746E65;
  *(v8 + 40) = 0xEF7365736E6F7073;
  if (a1)
  {
    v9 = type metadata accessor for HomeAutomationEntityResponses();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v11 = MEMORY[0x277D839B0];
  *(v8 + 96) = a2 & 1;
  *(v8 + 120) = v11;
  strcpy((v8 + 128), "intentContext");
  *(v8 + 142) = -4864;
  if (a3)
  {
    v12 = type metadata accessor for HomeAutomationIntentContext(0);
    v13 = a3;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v13;
  *(v8 + 168) = v12;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x8000000252E69A10;
  *(v8 + 216) = v11;
  *(v8 + 192) = a4 & 1;

  return v8;
}

uint64_t sub_252C051A4(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x8000000252E72940;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C052D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E419C0;
  *(v11 + 32) = 0x6C646E7542707061;
  *(v11 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v10, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v27 = v14;
  v28 = v5;
  if (v15 == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v10, v12);
  }

  *(v11 + 80) = 0xD000000000000017;
  *(v11 + 88) = 0x8000000252E6FE70;
  v17 = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  v18 = MEMORY[0x277D839B0];
  *(v11 + 96) = *(v0 + v17[5]);
  *(v11 + 120) = v18;
  *(v11 + 128) = 0xD000000000000010;
  *(v11 + 136) = 0x8000000252E8A020;
  v19 = *(v0 + v17[6]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationEntityResponses();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  *(v11 + 144) = v21;
  *(v11 + 168) = v20;
  *(v11 + 176) = 0xD000000000000012;
  *(v11 + 184) = 0x8000000252E8A290;
  *(v11 + 192) = *(v0 + v17[7]);
  *(v11 + 216) = v18;
  *(v11 + 224) = 0xD000000000000013;
  *(v11 + 232) = 0x8000000252E8A2B0;
  *(v11 + 240) = *(v0 + v17[8]);
  *(v11 + 264) = v18;
  strcpy((v11 + 272), "isSecureScene");
  *(v11 + 286) = -4864;
  *(v11 + 288) = *(v0 + v17[9]);
  *(v11 + 312) = v18;
  *(v11 + 320) = 0x6D614E656E656373;
  *(v11 + 328) = 0xE900000000000065;
  sub_252938414(v0 + v17[10], v8, &qword_27F540298, &unk_252E3C270);
  v22 = v27;
  if (v27(v8, 1, v12) == 1)
  {

    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v11 + 336) = 0u;
    *(v11 + 352) = 0u;
  }

  else
  {
    *(v11 + 360) = v12;
    v23 = __swift_allocate_boxed_opaque_existential_0((v11 + 336));
    (*(v13 + 32))(v23, v8, v12);
  }

  v24 = v28;
  *(v11 + 368) = 0x5074657070696E73;
  *(v11 + 376) = 0xEF74754F68636E75;
  sub_252938414(v0 + v17[11], v24, &qword_27F540298, &unk_252E3C270);
  if (v22(v24, 1, v12) == 1)
  {
    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    *(v11 + 384) = 0u;
    *(v11 + 400) = 0u;
  }

  else
  {
    *(v11 + 408) = v12;
    v25 = __swift_allocate_boxed_opaque_existential_0((v11 + 384));
    (*(v13 + 32))(v25, v24, v12);
  }

  return v11;
}

uint64_t sub_252C05740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF90;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v0 + v13[5]);
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD000000000000010;
  *(v8 + 136) = 0x8000000252E8A020;
  v15 = *(v0 + v13[6]);
  if (v15)
  {
    v16 = type metadata accessor for HomeAutomationEntityResponses();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v17;
  *(v8 + 168) = v16;
  *(v8 + 176) = 0x5074657070696E73;
  *(v8 + 184) = 0xEF74754F68636E75;
  sub_252938414(v0 + v13[7], v5, &qword_27F540298, &unk_252E3C270);
  if (v11(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v9;
    v18 = __swift_allocate_boxed_opaque_existential_0((v8 + 192));
    (*(v10 + 32))(v18, v5, v9);
  }

  *(v8 + 224) = 0xD00000000000001ALL;
  *(v8 + 232) = 0x8000000252E696C0;
  v19 = *(v0 + v13[8]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    v20 = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v19;
  *(v8 + 264) = v20;

  return v8;
}

uint64_t sub_252C05A94(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x8000000252E8A910;
  if (a1)
  {
    v5 = sub_252E360E4();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000017;
  *(v4 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v4 + 96) = a2 & 1;
  *(v4 + 120) = v7;
  *(v4 + 128) = 0x616572636E497369;
  *(v4 + 136) = 0xEA00000000006573;
  *(v4 + 168) = v7;
  *(v4 + 144) = HIBYTE(a2) & 1;

  return v4;
}

uint64_t sub_252C05BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3EF80;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = *v0;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000015;
  *(v5 + 88) = 0x8000000252E8A620;
  v7 = *(v0 + 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v5 + 96) = v7;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0xD000000000000010;
  *(v5 + 136) = 0x8000000252E8A560;
  v9 = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  sub_252938414(v0 + *(v9 + 24), v4, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {

    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 144));
    (*(v11 + 32))(boxed_opaque_existential_0, v4, v10);
  }

  strcpy((v5 + 176), "uniqueRoomName");
  *(v5 + 191) = -18;
  v13 = *(v0 + *(v9 + 28));
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationHomeLocation(0);
  }

  else
  {
    v14 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v13;
  *(v5 + 216) = v14;

  return v5;
}

uint64_t sub_252C05E4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C280;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v0 + *(v13 + 20));
  *(v8 + 120) = v14;
  *(v8 + 128) = 0x5074657070696E73;
  *(v8 + 136) = 0xEF74754F68636E75;
  sub_252938414(v0 + *(v13 + 24), v5, &qword_27F540298, &unk_252E3C270);
  if (v11(v5, 1, v9) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v9;
    v15 = __swift_allocate_boxed_opaque_existential_0((v8 + 144));
    (*(v10 + 32))(v15, v5, v9);
  }

  return v8;
}

uint64_t sub_252C0610C(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0x6C646E7542707061;
  *(v7 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = 0x8000000252E6FE70;
  v11 = a1(0);
  v12 = MEMORY[0x277D839B0];
  *(v7 + 96) = *(v1 + *(v11 + 20));
  *(v7 + 120) = v12;
  *(v7 + 128) = 0x436572756C696166;
  *(v7 + 136) = 0xEB0000000065646FLL;
  v13 = v1 + *(v11 + 24);
  if (*(v13 + 8))
  {
    v14 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v15 = 0;
  }

  else
  {
    v15 = *v13;
    v14 = MEMORY[0x277D839F8];
  }

  *(v7 + 144) = v15;
  *(v7 + 168) = v14;
  return v7;
}

uint64_t sub_252C06334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E527A0;
  *(v10 + 32) = 0xD000000000000017;
  *(v10 + 40) = 0x8000000252E6FE70;
  v11 = MEMORY[0x277D839B0];
  *(v10 + 48) = *v0;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "expectedState");
  *(v10 + 94) = -4864;
  v12 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  sub_252938414(&v0[v12[5]], v9, &qword_27F540298, &unk_252E3C270);
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
    (*(v14 + 32))(boxed_opaque_existential_0, v9, v13);
  }

  *(v10 + 128) = 0x7473657551736168;
  *(v10 + 136) = 0xEF657079546E6F69;
  *(v10 + 144) = v0[v12[6]];
  *(v10 + 168) = MEMORY[0x277D839B0];
  *(v10 + 176) = 0xD000000000000013;
  *(v10 + 184) = 0x8000000252E8A500;
  v17 = *&v0[v12[7]];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v10 + 192) = v17;
  v25 = v18;
  *(v10 + 216) = v18;
  *(v10 + 224) = 0xD000000000000010;
  *(v10 + 232) = 0x8000000252E8A520;
  sub_252938414(&v0[v12[8]], v7, &qword_27F540298, &unk_252E3C270);
  if (v15(v7, 1, v13) == 1)
  {

    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v10 + 240) = 0u;
    *(v10 + 256) = 0u;
  }

  else
  {
    *(v10 + 264) = v13;
    v19 = __swift_allocate_boxed_opaque_existential_0((v10 + 240));
    (*(v14 + 32))(v19, v7, v13);
  }

  v20 = v26;
  strcpy((v10 + 272), "shouldFollowUp");
  *(v10 + 287) = -18;
  *(v10 + 288) = v0[v12[9]];
  v21 = MEMORY[0x277D839B0];
  *(v10 + 312) = MEMORY[0x277D839B0];
  *(v10 + 320) = 0xD000000000000012;
  *(v10 + 328) = 0x8000000252E8A540;
  *(v10 + 336) = v0[v12[10]];
  *(v10 + 360) = v21;
  strcpy((v10 + 368), "shouldSayYes");
  *(v10 + 381) = 0;
  *(v10 + 382) = -5120;
  *(v10 + 384) = v0[v12[11]];
  *(v10 + 408) = v21;
  *(v10 + 416) = 0xD000000000000010;
  *(v10 + 424) = 0x8000000252E8A560;
  sub_252938414(&v0[v12[12]], v20, &qword_27F540298, &unk_252E3C270);
  if (v15(v20, 1, v13) == 1)
  {
    sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
    *(v10 + 432) = 0u;
    *(v10 + 448) = 0u;
  }

  else
  {
    *(v10 + 456) = v13;
    v22 = __swift_allocate_boxed_opaque_existential_0((v10 + 432));
    (*(v14 + 32))(v22, v20, v13);
  }

  *(v10 + 464) = 0xD000000000000015;
  *(v10 + 472) = 0x8000000252E8A580;
  v23 = *&v0[v12[13]];
  *(v10 + 504) = v25;
  *(v10 + 480) = v23;

  return v10;
}

uint64_t sub_252C06814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = *v0;
  *(v5 + 72) = v6;
  strcpy((v5 + 80), "expectedState");
  *(v5 + 94) = -4864;
  v7 = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  sub_252938414(&v0[*(v7 + 20)], v4, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    (*(v9 + 32))(boxed_opaque_existential_0, v4, v8);
  }

  *(v5 + 128) = 0x656C7069746C756DLL;
  *(v5 + 136) = 0xEF73746567726154;
  v11 = v0[*(v7 + 24)];
  *(v5 + 168) = v6;
  *(v5 + 144) = v11;
  return v5;
}

uint64_t sub_252C06A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3F1F0;
  *(v11 + 32) = 0x6C646E7542707061;
  *(v11 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v10, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v10, v12);
  }

  *(v11 + 80) = 0xD000000000000014;
  *(v11 + 88) = 0x8000000252E8A040;
  v16 = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  sub_252938414(v0 + v16[5], v8, &qword_27F540298, &unk_252E3C270);
  if (v14(v8, 1, v12) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    v17 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));
    (*(v13 + 32))(v17, v8, v12);
  }

  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x8000000252E8A060;
  sub_252938414(v0 + v16[6], v5, &qword_27F540298, &unk_252E3C270);
  if (v14(v5, 1, v12) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  else
  {
    *(v11 + 168) = v12;
    v18 = __swift_allocate_boxed_opaque_existential_0((v11 + 144));
    (*(v13 + 32))(v18, v5, v12);
  }

  *(v11 + 176) = 0x74616469646E6163;
  *(v11 + 184) = 0xEF73656D614E7365;
  v19 = *(v0 + v16[7]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v11 + 192) = v19;
  *(v11 + 216) = v20;
  *(v11 + 224) = 0xD000000000000017;
  *(v11 + 232) = 0x8000000252E6FE70;
  v21 = MEMORY[0x277D839B0];
  *(v11 + 240) = *(v0 + v16[8]);
  *(v11 + 264) = v21;
  *(v11 + 272) = 0x736D657469;
  *(v11 + 280) = 0xE500000000000000;
  v22 = *(v0 + v16[9]);
  *(v11 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F78, &qword_252E52860);
  *(v11 + 288) = v22;

  return v11;
}

uint64_t sub_252C06E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3EF90;
  *(v1 + 32) = 0x6552797469746E65;
  *(v1 + 40) = 0xEF7365736E6F7073;
  v2 = *v0;
  v15 = v2;
  v3 = 0;
  if (v2)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 48) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v1 + 96) = *(v0 + 8);
  *(v1 + 120) = v4;
  strcpy((v1 + 128), "intentContext");
  *(v1 + 142) = -4864;
  v5 = v0[2];
  v14 = v5;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  *(v1 + 144) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = 0xD00000000000001FLL;
  *(v1 + 184) = 0x8000000252E8A4A0;
  if (v0[4])
  {
    v7 = 0;
    v8 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v7 = v0[3];
    v8 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v7;
  *(v1 + 216) = v8;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000252E8A4C0;
  v9 = v0[5];
  v13 = v9;
  v10 = 0;
  if (v9)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v1 + 248) = 0;
    *(v1 + 256) = 0;
  }

  *(v1 + 240) = v9;
  *(v1 + 264) = v10;
  sub_252938414(&v15, &v12, &qword_27F541B90, &qword_252E41C08);
  sub_252938414(&v14, &v12, &qword_27F543F80, &qword_252E52920);
  sub_252938414(&v13, &v12, &qword_27F541B90, &qword_252E41C08);
  return v1;
}

uint64_t sub_252C0700C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3EF90;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0xD000000000000017;
  *(v9 + 88) = 0x8000000252E6FE70;
  v14 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v15 = MEMORY[0x277D839B0];
  *(v9 + 96) = *(v1 + v14[5]);
  *(v9 + 120) = v15;
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = 0x8000000252E851F0;
  v16 = *(v1 + v14[6]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v9 + 144) = v16;
  *(v9 + 168) = v17;
  *(v9 + 176) = 0xD000000000000010;
  *(v9 + 184) = 0x8000000252E8A020;
  v18 = *(v1 + v14[7]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v20;
  *(v9 + 216) = v19;
  *(v9 + 224) = 0x5074657070696E73;
  *(v9 + 232) = 0xEF74754F68636E75;
  sub_252938414(v1 + v14[8], v6, &qword_27F540298, &unk_252E3C270);
  if (v12(v6, 1, v10) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
  }

  else
  {
    *(v9 + 264) = v10;
    v21 = __swift_allocate_boxed_opaque_existential_0((v9 + 240));
    (*(v11 + 32))(v21, v6, v10);
  }

  return v9;
}

uint64_t sub_252C07368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3F1F0;
  *(v11 + 32) = 0x6C646E7542707061;
  *(v11 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v10, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v10, v12);
  }

  *(v11 + 80) = 0xD000000000000017;
  *(v11 + 88) = 0x8000000252E6FE70;
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v17 = found;
  v18 = MEMORY[0x277D839B0];
  *(v11 + 96) = *(v0 + found[5]);
  *(v11 + 120) = v18;
  *(v11 + 128) = 0x436572756C696166;
  *(v11 + 136) = 0xEB0000000065646FLL;
  v19 = v0 + found[6];
  if (*(v19 + 8))
  {
    v20 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = MEMORY[0x277D839F8];
  }

  *(v11 + 144) = v21;
  *(v11 + 168) = v20;
  *(v11 + 176) = 0x656D614E656D6F68;
  *(v11 + 184) = 0xE800000000000000;
  sub_252938414(v0 + found[7], v8, &qword_27F540298, &unk_252E3C270);
  if (v14(v8, 1, v12) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
  }

  else
  {
    *(v11 + 216) = v12;
    v22 = __swift_allocate_boxed_opaque_existential_0((v11 + 192));
    (*(v13 + 32))(v22, v8, v12);
  }

  *(v11 + 224) = 0x7571655256547369;
  *(v11 + 232) = 0xEB00000000747365;
  *(v11 + 240) = *(v0 + v17[8]);
  *(v11 + 264) = v18;
  *(v11 + 272) = 0xD00000000000001ELL;
  *(v11 + 280) = 0x8000000252E6DE40;
  sub_252938414(v0 + v17[9], v5, &qword_27F540298, &unk_252E3C270);
  if (v14(v5, 1, v12) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v11 + 288) = 0u;
    *(v11 + 304) = 0u;
  }

  else
  {
    *(v11 + 312) = v12;
    v23 = __swift_allocate_boxed_opaque_existential_0((v11 + 288));
    (*(v13 + 32))(v23, v5, v12);
  }

  return v11;
}

uint64_t sub_252C07778(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x8000000252E89FE0;
  if (a1)
  {
    v9 = type metadata accessor for HomeAutomationCarbonOxideResponses();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD00000000000001FLL;
  *(v8 + 88) = 0x8000000252E8A000;
  if (a2)
  {
    v11 = type metadata accessor for HomeAutomationCarbonOxideResponses();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0xD000000000000017;
  *(v8 + 136) = 0x8000000252E6FE70;
  v13 = MEMORY[0x277D839B0];
  *(v8 + 144) = a3 & 1;
  *(v8 + 168) = v13;
  strcpy((v8 + 176), "intentContext");
  *(v8 + 190) = -4864;
  if (a4)
  {
    v14 = type metadata accessor for HomeAutomationIntentContext(0);
    v15 = a4;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v15;
  *(v8 + 216) = v14;

  return v8;
}

uint64_t sub_252C078FC(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000015;
  *(v6 + 88) = 0x8000000252E8A250;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationBooleanResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000013;
  *(v6 + 136) = 0x8000000252E8A270;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationNumericEntityResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C07A24(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000013;
  *(v6 + 88) = 0x8000000252E8A8D0;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationEntityResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x8000000252E8A8F0;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationBooleanResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C07B4C(char a1, uint64_t a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3EF90;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "getResponses");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationClimateResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  strcpy((v6 + 128), "hasYesNoAnswer");
  *(v6 + 143) = -18;
  *(v6 + 144) = a3 & 1;
  *(v6 + 168) = v7;
  strcpy((v6 + 176), "isModeQuestion");
  *(v6 + 191) = -18;
  *(v6 + 192) = BYTE1(a3) & 1;
  *(v6 + 216) = v7;
  strcpy((v6 + 224), "isYesNoAnswer");
  *(v6 + 238) = -4864;
  *(v6 + 264) = v7;
  *(v6 + 240) = BYTE2(a3) & 1;

  return v6;
}

uint64_t sub_252C07CF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x8000000252E6FE70;
  v9 = MEMORY[0x277D839B0];
  *(v8 + 48) = a1;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000011;
  *(v8 + 88) = 0x8000000252E851F0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 96) = a2;
  *(v8 + 120) = v10;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 136) = 0x8000000252E85230;
  *(v8 + 144) = a3;
  *(v8 + 168) = v10;
  *(v8 + 176) = 0xD000000000000016;
  *(v8 + 216) = v10;
  *(v8 + 184) = 0x8000000252E85210;
  *(v8 + 192) = a4;

  return v8;
}

uint64_t sub_252C07E14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x8000000252E6FE70;
  v9 = MEMORY[0x277D839B0];
  *(v8 + 48) = *v0;
  *(v8 + 16) = xmmword_252E3F1F0;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000010;
  *(v8 + 88) = 0x8000000252E89B30;
  v10 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  sub_252938414(&v0[v10[5]], v7, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 96));
    (*(v12 + 32))(boxed_opaque_existential_0, v7, v11);
  }

  strcpy((v8 + 128), "missingPercent");
  *(v8 + 143) = -18;
  *(v8 + 144) = v0[v10[6]];
  *(v8 + 168) = v9;
  *(v8 + 176) = 0xD00000000000001ALL;
  *(v8 + 184) = 0x8000000252E8A810;
  *(v8 + 192) = v0[v10[7]];
  *(v8 + 216) = v9;
  *(v8 + 224) = 0xD000000000000010;
  *(v8 + 232) = 0x8000000252E764C0;
  sub_252938414(&v0[v10[8]], v5, &qword_27F540298, &unk_252E3C270);
  if (v13(v5, 1, v11) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
  }

  else
  {
    *(v8 + 264) = v11;
    v15 = __swift_allocate_boxed_opaque_existential_0((v8 + 240));
    (*(v12 + 32))(v15, v5, v11);
  }

  *(v8 + 272) = 0xD000000000000011;
  *(v8 + 280) = 0x8000000252E764A0;
  v16 = *&v0[v10[9]];
  *(v8 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 288) = v16;

  return v8;
}

uint64_t sub_252C08158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3EF90;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = *v0;
  *(v5 + 72) = v6;
  strcpy((v5 + 80), "intentContext");
  *(v5 + 94) = -4864;
  v7 = *(v0 + 8);
  if (v7)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v9;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0x6572756365537369;
  *(v5 + 136) = 0xEF74736575716552;
  *(v5 + 144) = *(v0 + 16);
  *(v5 + 168) = v6;
  *(v5 + 176) = 0xD000000000000012;
  *(v5 + 184) = 0x8000000252E728F0;
  v10 = type metadata accessor for HomeAutomationRequestSentParameters(0);
  sub_252938414(v0 + *(v10 + 28), v4, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {

    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v5 + 192) = 0u;
    *(v5 + 208) = 0u;
  }

  else
  {
    *(v5 + 216) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 192));
    (*(v12 + 32))(boxed_opaque_existential_0, v4, v11);
  }

  *(v5 + 224) = 0xD000000000000010;
  *(v5 + 232) = 0x8000000252E72940;
  v14 = *(v0 + *(v10 + 32));
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    v15 = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  *(v5 + 240) = v14;
  *(v5 + 264) = v15;

  return v5;
}

uint64_t sub_252C08400(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_252E3EF90;
  *(v15 + 32) = 0x6C646E7542707061;
  *(v15 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v14, &qword_27F540298, &unk_252E3C270);
  v16 = sub_252E36324();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
  }

  else
  {
    *(v15 + 72) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 48));
    (*(v17 + 32))(boxed_opaque_existential_0, v14, v16);
  }

  *(v15 + 80) = 0xD000000000000017;
  *(v15 + 88) = 0x8000000252E6FE70;
  v20 = a1(0);
  v21 = MEMORY[0x277D839B0];
  *(v15 + 96) = *(v1 + v20[5]);
  *(v15 + 120) = v21;
  *(v15 + 128) = 0x6D614E656E656373;
  *(v15 + 136) = 0xE900000000000065;
  sub_252938414(v1 + v20[6], v12, &qword_27F540298, &unk_252E3C270);
  if (v18(v12, 1, v16) == 1)
  {
    sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
    *(v15 + 144) = 0u;
    *(v15 + 160) = 0u;
  }

  else
  {
    *(v15 + 168) = v16;
    v22 = __swift_allocate_boxed_opaque_existential_0((v15 + 144));
    (*(v17 + 32))(v22, v12, v16);
  }

  *(v15 + 176) = 0x707954656E656373;
  *(v15 + 184) = 0xE900000000000065;
  sub_252938414(v1 + v20[7], v9, &qword_27F540298, &unk_252E3C270);
  if (v18(v9, 1, v16) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v15 + 192) = 0u;
    *(v15 + 208) = 0u;
  }

  else
  {
    *(v15 + 216) = v16;
    v23 = __swift_allocate_boxed_opaque_existential_0((v15 + 192));
    (*(v17 + 32))(v23, v9, v16);
  }

  *(v15 + 224) = 0x5074657070696E73;
  *(v15 + 232) = 0xEF74754F68636E75;
  v24 = v1 + v20[8];
  v25 = v29;
  sub_252938414(v24, v29, &qword_27F540298, &unk_252E3C270);
  if (v18(v25, 1, v16) == 1)
  {
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
    *(v15 + 240) = 0u;
    *(v15 + 256) = 0u;
  }

  else
  {
    *(v15 + 264) = v16;
    v26 = __swift_allocate_boxed_opaque_existential_0((v15 + 240));
    (*(v17 + 32))(v26, v25, v16);
  }

  return v15;
}

uint64_t sub_252C08850()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E419D0;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v24 = *(v11 + 48);
  if (v24(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0xD000000000000017;
  *(v9 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v9 + 96) = *(v1 + v13[5]);
  *(v9 + 120) = v14;
  *(v9 + 128) = 0xD000000000000010;
  *(v9 + 136) = 0x8000000252E8A020;
  v15 = *(v1 + v13[6]);
  if (v15)
  {
    v16 = type metadata accessor for HomeAutomationEntityResponses();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v17;
  *(v9 + 168) = v16;
  *(v9 + 176) = 0xD000000000000018;
  *(v9 + 184) = 0x8000000252E8A350;
  *(v9 + 192) = *(v1 + v13[7]);
  *(v9 + 216) = v14;
  *(v9 + 224) = 0x786F567369;
  *(v9 + 232) = 0xE500000000000000;
  *(v9 + 240) = *(v1 + v13[8]);
  *(v9 + 264) = v14;
  *(v9 + 272) = 0xD000000000000016;
  *(v9 + 280) = 0x8000000252E8A370;
  v18 = *(v1 + v13[9]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v9 + 296) = 0;
    *(v9 + 304) = 0;
  }

  *(v9 + 288) = v20;
  *(v9 + 312) = v19;
  *(v9 + 320) = 0x5074657070696E73;
  *(v9 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v13[10], v6, &qword_27F540298, &unk_252E3C270);
  if (v24(v6, 1, v10) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 336) = 0u;
    *(v9 + 352) = 0u;
  }

  else
  {
    *(v9 + 360) = v10;
    v21 = __swift_allocate_boxed_opaque_existential_0((v9 + 336));
    (*(v11 + 32))(v21, v6, v10);
  }

  return v9;
}

uint64_t sub_252C08C10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419C0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v30 = *(v10 + 48);
  if (v30(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0x6974616D6F747561;
  *(v8 + 88) = 0xEA00000000006E6FLL;
  v12 = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v13 = *(v1 + v12[5]);
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationAutomation();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v15;
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD000000000000017;
  *(v8 + 136) = 0x8000000252E6FE70;
  v16 = MEMORY[0x277D839B0];
  *(v8 + 144) = *(v1 + v12[6]);
  *(v8 + 168) = v16;
  strcpy((v8 + 176), "intentContext");
  *(v8 + 190) = -4864;
  v17 = *(v1 + v12[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationIntentContext(0);
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  *(v8 + 224) = 0xD00000000000001ALL;
  *(v8 + 232) = 0x8000000252E8A330;
  *(v8 + 240) = *(v1 + v12[8]);
  *(v8 + 264) = v16;
  strcpy((v8 + 272), "labelResponses");
  *(v8 + 287) = -18;
  v20 = *(v1 + v12[9]);
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationEntityResponses();
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v22;
  *(v8 + 312) = v21;
  *(v8 + 320) = 0x65736E6F70736572;
  *(v8 + 328) = 0xE900000000000073;
  v23 = *(v1 + v12[10]);
  if (v23)
  {
    v24 = type metadata accessor for HomeAutomationEntityResponses();
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v25;
  *(v8 + 360) = v24;
  *(v8 + 368) = 0x5074657070696E73;
  *(v8 + 376) = 0xEF74754F68636E75;
  v26 = v1 + v12[11];
  v27 = v31;
  sub_252938414(v26, v31, &qword_27F540298, &unk_252E3C270);
  if (v30(v27, 1, v9) == 1)
  {

    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    *(v8 + 384) = 0u;
    *(v8 + 400) = 0u;
  }

  else
  {
    *(v8 + 408) = v9;
    v28 = __swift_allocate_boxed_opaque_existential_0((v8 + 384));
    (*(v10 + 32))(v28, v27, v9);
  }

  return v8;
}

uint64_t sub_252C09084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E419C0;
  *(v14 + 32) = 0x6C646E7542707061;
  *(v14 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v13, &qword_27F540298, &unk_252E3C270);
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v37 = *(v16 + 48);
  v17 = v37(v13, 1, v15);
  v36 = v16;
  if (v17 == 1)
  {
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 48));
    (*(v16 + 32))(boxed_opaque_existential_0, v13, v15);
  }

  *(v14 + 80) = 0x6974616D6F747561;
  *(v14 + 88) = 0xEA00000000006E6FLL;
  v19 = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  v20 = *(v0 + v19[5]);
  v34 = v8;
  v35 = v5;
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationAutomation();
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  *(v14 + 96) = v22;
  *(v14 + 120) = v21;
  *(v14 + 128) = 0xD000000000000017;
  *(v14 + 136) = 0x8000000252E6FE70;
  v23 = MEMORY[0x277D839B0];
  *(v14 + 144) = *(v0 + v19[6]);
  *(v14 + 168) = v23;
  strcpy((v14 + 176), "intentContext");
  *(v14 + 190) = -4864;
  v24 = *(v0 + v19[7]);
  if (v24)
  {
    v25 = type metadata accessor for HomeAutomationIntentContext(0);
    v26 = v24;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  *(v14 + 192) = v26;
  *(v14 + 216) = v25;
  *(v14 + 224) = 0xD00000000000001ALL;
  *(v14 + 232) = 0x8000000252E8A330;
  *(v14 + 240) = *(v0 + v19[8]);
  *(v14 + 264) = v23;
  *(v14 + 272) = 0x6D614E656E656373;
  *(v14 + 280) = 0xE900000000000065;
  sub_252938414(v0 + v19[9], v11, &qword_27F540298, &unk_252E3C270);
  if (v37(v11, 1, v15) == 1)
  {

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v15;
    v27 = __swift_allocate_boxed_opaque_existential_0((v14 + 288));
    (*(v36 + 32))(v27, v11, v15);
  }

  v29 = v34;
  v28 = v35;
  *(v14 + 320) = 0x707954656E656373;
  *(v14 + 328) = 0xE900000000000065;
  sub_252938414(v0 + v19[10], v29, &qword_27F540298, &unk_252E3C270);
  if (v37(v29, 1, v15) == 1)
  {
    sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
    *(v14 + 336) = 0u;
    *(v14 + 352) = 0u;
    v30 = v36;
  }

  else
  {
    *(v14 + 360) = v15;
    v31 = __swift_allocate_boxed_opaque_existential_0((v14 + 336));
    v30 = v36;
    (*(v36 + 32))(v31, v29, v15);
  }

  *(v14 + 368) = 0x5074657070696E73;
  *(v14 + 376) = 0xEF74754F68636E75;
  sub_252938414(v0 + v19[11], v28, &qword_27F540298, &unk_252E3C270);
  if (v37(v28, 1, v15) == 1)
  {
    sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
    *(v14 + 384) = 0u;
    *(v14 + 400) = 0u;
  }

  else
  {
    *(v14 + 408) = v15;
    v32 = __swift_allocate_boxed_opaque_existential_0((v14 + 384));
    (*(v30 + 32))(v32, v28, v15);
  }

  return v14;
}

uint64_t sub_252C09648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3EF90;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0xD000000000000017;
  *(v9 + 88) = 0x8000000252E6FE70;
  v14 = type metadata accessor for HomeAutomationSetColorParameters(0);
  v15 = MEMORY[0x277D839B0];
  *(v9 + 96) = *(v1 + v14[5]);
  *(v9 + 120) = v15;
  strcpy((v9 + 128), "intentContext");
  *(v9 + 142) = -4864;
  v16 = *(v1 + v14[6]);
  if (v16)
  {
    v17 = type metadata accessor for HomeAutomationIntentContext(0);
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v18;
  *(v9 + 168) = v17;
  strcpy((v9 + 176), "labelResponses");
  *(v9 + 191) = -18;
  v19 = *(v1 + v14[7]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationEntityResponses();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v21;
  *(v9 + 216) = v20;
  *(v9 + 224) = 0x5074657070696E73;
  *(v9 + 232) = 0xEF74754F68636E75;
  sub_252938414(v1 + v14[8], v6, &qword_27F540298, &unk_252E3C270);
  if (v12(v6, 1, v10) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
  }

  else
  {
    *(v9 + 264) = v10;
    v22 = __swift_allocate_boxed_opaque_existential_0((v9 + 240));
    (*(v11 + 32))(v22, v6, v10);
  }

  return v9;
}

uint64_t sub_252C099F4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v29 = a2;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E419D0;
  *(v12 + 32) = 0x6C646E7542707061;
  *(v12 + 40) = 0xEB00000000444965;
  sub_252938414(v4, v11, &qword_27F540298, &unk_252E3C270);
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  v30 = *(v14 + 48);
  if (v30(v11, 1, v13) == 1)
  {
    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v12 + 48));
    (*(v14 + 32))(boxed_opaque_existential_0, v11, v13);
  }

  *(v12 + 80) = 0xD000000000000017;
  *(v12 + 88) = 0x8000000252E6FE70;
  v16 = a1(0);
  v17 = MEMORY[0x277D839B0];
  *(v12 + 96) = *(v4 + v16[5]);
  *(v12 + 120) = v17;
  *(v12 + 128) = 0x726F727245736168;
  *(v12 + 136) = 0xE900000000000073;
  *(v12 + 144) = *(v4 + v16[6]);
  *(v12 + 168) = v17;
  strcpy((v12 + 176), "intentContext");
  *(v12 + 190) = -4864;
  v18 = *(v4 + v16[7]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationIntentContext(0);
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  *(v12 + 192) = v20;
  *(v12 + 216) = v19;
  strcpy((v12 + 224), "labelResponses");
  *(v12 + 239) = -18;
  v21 = *(v4 + v16[8]);
  if (v21)
  {
    v22 = type metadata accessor for HomeAutomationEntityResponses();
    v23 = v21;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
  }

  *(v12 + 240) = v23;
  *(v12 + 264) = v22;
  *(v12 + 272) = 0x65736E6F70736572;
  *(v12 + 280) = 0xE900000000000073;
  v24 = *(v4 + v16[9]);
  if (v24)
  {
    v25 = v29(0);
    v26 = v24;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  *(v12 + 288) = v26;
  *(v12 + 312) = v25;
  *(v12 + 320) = 0x5074657070696E73;
  *(v12 + 328) = 0xEF74754F68636E75;
  sub_252938414(v4 + v16[10], v9, &qword_27F540298, &unk_252E3C270);
  if (v30(v9, 1, v13) == 1)
  {

    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
  }

  else
  {
    *(v12 + 360) = v13;
    v27 = __swift_allocate_boxed_opaque_existential_0((v12 + 336));
    (*(v14 + 32))(v27, v9, v13);
  }

  return v12;
}

uint64_t sub_252C09E40(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v31 = a3;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E3F1F0;
  *(v14 + 32) = 0x6C646E7542707061;
  *(v14 + 40) = 0xEB00000000444965;
  sub_252938414(v6, v13, &qword_27F540298, &unk_252E3C270);
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v32 = *(v16 + 48);
  if (v32(v13, 1, v15) == 1)
  {
    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 48));
    (*(v16 + 32))(boxed_opaque_existential_0, v13, v15);
  }

  *(v14 + 80) = 0xD000000000000017;
  *(v14 + 88) = 0x8000000252E6FE70;
  v18 = a1(0);
  v19 = MEMORY[0x277D839B0];
  *(v14 + 96) = *(v6 + v18[5]);
  *(v14 + 120) = v19;
  strcpy((v14 + 128), "intentContext");
  *(v14 + 142) = -4864;
  v20 = *(v6 + v18[6]);
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationIntentContext(0);
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  *(v14 + 144) = v22;
  *(v14 + 168) = v21;
  strcpy((v14 + 176), "labelResponses");
  *(v14 + 191) = -18;
  v23 = *(v6 + v18[7]);
  if (v23)
  {
    v24 = a2(0);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  *(v14 + 192) = v25;
  *(v14 + 216) = v24;
  *(v14 + 224) = 0x65736E6F70736572;
  *(v14 + 232) = 0xE900000000000073;
  v26 = *(v6 + v18[8]);
  if (v26)
  {
    v27 = v31(0);
    v28 = v26;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  *(v14 + 240) = v28;
  *(v14 + 264) = v27;
  *(v14 + 272) = 0x5074657070696E73;
  *(v14 + 280) = 0xEF74754F68636E75;
  sub_252938414(v6 + v18[9], v11, &qword_27F540298, &unk_252E3C270);
  if (v32(v11, 1, v15) == 1)
  {

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v15;
    v29 = __swift_allocate_boxed_opaque_existential_0((v14 + 288));
    (*(v16 + 32))(v29, v11, v15);
  }

  return v14;
}

uint64_t sub_252C0A244()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419D0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v30 = *(v10 + 48);
  if (v30(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000016;
  *(v8 + 88) = 0x8000000252E89F80;
  v12 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v13 = *(v1 + v12[5]);
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationBooleanResponses();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v15;
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD000000000000017;
  *(v8 + 136) = 0x8000000252E6FE70;
  v16 = MEMORY[0x277D839B0];
  *(v8 + 144) = *(v1 + v12[6]);
  *(v8 + 168) = v16;
  strcpy((v8 + 176), "intentContext");
  *(v8 + 190) = -4864;
  v17 = *(v1 + v12[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationIntentContext(0);
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  strcpy((v8 + 224), "labelResponses");
  *(v8 + 239) = -18;
  v20 = *(v1 + v12[8]);
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationEntityResponses();
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v22;
  *(v8 + 264) = v21;
  *(v8 + 272) = 0x65736E6F70736572;
  *(v8 + 280) = 0xE900000000000073;
  v23 = *(v1 + v12[9]);
  if (v23)
  {
    v24 = type metadata accessor for HomeAutomationEntityResponses();
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v25;
  *(v8 + 312) = v24;
  *(v8 + 320) = 0x5074657070696E73;
  *(v8 + 328) = 0xEF74754F68636E75;
  v26 = v1 + v12[10];
  v27 = v31;
  sub_252938414(v26, v31, &qword_27F540298, &unk_252E3C270);
  if (v30(v27, 1, v9) == 1)
  {

    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    *(v8 + 336) = 0u;
    *(v8 + 352) = 0u;
  }

  else
  {
    *(v8 + 360) = v9;
    v28 = __swift_allocate_boxed_opaque_existential_0((v8 + 336));
    (*(v10 + 32))(v28, v27, v9);
  }

  return v8;
}

uint64_t sub_252C0A68C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E419D0;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0xD000000000000017;
  *(v9 + 88) = 0x8000000252E6FE70;
  v14 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v15 = MEMORY[0x277D839B0];
  *(v9 + 96) = *(v1 + v14[5]);
  *(v9 + 120) = v15;
  *(v9 + 128) = 0x6165726365447369;
  *(v9 + 136) = 0xEA00000000006573;
  *(v9 + 144) = *(v1 + v14[6]);
  *(v9 + 168) = v15;
  *(v9 + 176) = 0x616572636E497369;
  *(v9 + 184) = 0xEA00000000006573;
  *(v9 + 192) = *(v1 + v14[7]);
  *(v9 + 216) = v15;
  strcpy((v9 + 224), "labelResponses");
  *(v9 + 239) = -18;
  v16 = *(v1 + v14[8]);
  if (v16)
  {
    v17 = type metadata accessor for HomeAutomationEntityResponses();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
  }

  *(v9 + 240) = v18;
  *(v9 + 264) = v17;
  strcpy((v9 + 272), "setResponses");
  *(v9 + 285) = 0;
  *(v9 + 286) = -5120;
  v19 = *(v1 + v14[9]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationClimateResponses();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v9 + 296) = 0;
    *(v9 + 304) = 0;
  }

  *(v9 + 288) = v21;
  *(v9 + 312) = v20;
  *(v9 + 320) = 0x5074657070696E73;
  *(v9 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v14[10], v6, &qword_27F540298, &unk_252E3C270);
  if (v12(v6, 1, v10) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 336) = 0u;
    *(v9 + 352) = 0u;
  }

  else
  {
    *(v9 + 360) = v10;
    v22 = __swift_allocate_boxed_opaque_existential_0((v9 + 336));
    (*(v11 + 32))(v22, v6, v10);
  }

  return v9;
}

uint64_t sub_252C0AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C3C0;
  *(v11 + 32) = 0xD000000000000017;
  *(v11 + 40) = 0x8000000252E6FE70;
  v12 = MEMORY[0x277D839B0];
  *(v11 + 48) = *v3;
  *(v11 + 72) = v12;
  *(v11 + 80) = a1;
  *(v11 + 88) = a2;
  v13 = a3(0);
  sub_252938414(&v3[*(v13 + 20)], v10, &qword_27F540298, &unk_252E3C270);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 96));
    (*(v15 + 32))(boxed_opaque_existential_0, v10, v14);
  }

  return v11;
}

uint64_t sub_252C0AC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3EF80;
  *(v5 + 32) = 0x6C646E7542707061;
  *(v5 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v4, &qword_27F540298, &unk_252E3C270);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    (*(v7 + 32))(boxed_opaque_existential_0, v4, v6);
  }

  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  v9 = type metadata accessor for HomeAutomationUnauthorizedUserParameters(0);
  v10 = MEMORY[0x277D839B0];
  *(v5 + 96) = *(v0 + v9[5]);
  *(v5 + 120) = v10;
  *(v5 + 128) = 0x436572756C696166;
  *(v5 + 136) = 0xEB0000000065646FLL;
  v11 = v0 + v9[6];
  if (*(v11 + 8))
  {
    v12 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v13 = 0;
  }

  else
  {
    v13 = *v11;
    v12 = MEMORY[0x277D839F8];
  }

  *(v5 + 144) = v13;
  *(v5 + 168) = v12;
  strcpy((v5 + 176), "intentContext");
  *(v5 + 190) = -4864;
  v14 = *(v0 + v9[7]);
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    v15 = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v14;
  *(v5 + 216) = v15;

  return v5;
}

uint64_t sub_252C0AEE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E419D0;
  *(v9 + 32) = 0x6C646E7542707061;
  *(v9 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v8, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v25 = *(v11 + 48);
  if (v25(v8, 1, v10) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v8, v10);
  }

  *(v9 + 80) = 0xD000000000000017;
  *(v9 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v9 + 96) = *(v1 + v13[5]);
  *(v9 + 120) = v14;
  *(v9 + 128) = 0xD000000000000015;
  *(v9 + 136) = 0x8000000252E696E0;
  v15 = *(v1 + v13[6]);
  if (v15)
  {
    v16 = type metadata accessor for HomeAutomationEntityResponses();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v17;
  *(v9 + 168) = v16;
  *(v9 + 176) = 0xD000000000000010;
  *(v9 + 184) = 0x8000000252E8A020;
  v18 = *(v1 + v13[7]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v9 + 200) = 0;
    *(v9 + 208) = 0;
  }

  *(v9 + 192) = v20;
  *(v9 + 216) = v19;
  *(v9 + 224) = 0xD000000000000018;
  *(v9 + 232) = 0x8000000252E8A310;
  *(v9 + 240) = *(v1 + v13[8]);
  v21 = MEMORY[0x277D839B0];
  *(v9 + 264) = MEMORY[0x277D839B0];
  strcpy((v9 + 272), "isSceneRequest");
  *(v9 + 287) = -18;
  *(v9 + 288) = *(v1 + v13[9]);
  *(v9 + 312) = v21;
  *(v9 + 320) = 0x5074657070696E73;
  *(v9 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v13[10], v6, &qword_27F540298, &unk_252E3C270);
  if (v25(v6, 1, v10) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 336) = 0u;
    *(v9 + 352) = 0u;
  }

  else
  {
    *(v9 + 360) = v10;
    v22 = __swift_allocate_boxed_opaque_existential_0((v9 + 336));
    (*(v11 + 32))(v22, v6, v10);
  }

  return v9;
}

uint64_t sub_252C0B308(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD00000000000001ALL;
  *(v6 + 88) = 0x8000000252E8A960;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v6 + 96) = a2;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD00000000000001ALL;
  *(v6 + 168) = v8;
  *(v6 + 136) = 0x8000000252E8A980;
  *(v6 + 144) = a3;

  return v6;
}

uint64_t sub_252C0B3FC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0B424, 0, 0);
}

uint64_t sub_252C0B424()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x616572636E497369;
  *(v3 + 88) = 0xEA00000000006573;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_252C0B580;
  v7 = *(v0 + 16);

  return v9(0xD00000000000002CLL, 0x8000000252E8A680, v3);
}

uint64_t sub_252C0B580(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1A190, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C0B6D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0B774, 0, 0);
}

uint64_t sub_252C0B774()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 88);
  v5 = *(*(v0 + 40) + 28);
  v6 = sub_252E36324();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *v1 = v4;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v3(v1);
  v7 = sub_252C04998();
  *(v0 + 56) = v7;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C0B8B8;
  v10 = *(v0 + 32);

  return v12(0xD000000000000019, 0x8000000252E8A640, v7);
}

uint64_t sub_252C0B8B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C0BA8C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C0BA04;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0BA04()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationAlreadyOffParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0BA8C()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationAlreadyOffParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C0BB10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 96) = a1;
  v6 = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  *(v5 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0BBAC, 0, 0);
}

uint64_t sub_252C0BBAC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 96);
  v7 = *(v2 + 24);
  v8 = sub_252E36324();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *v1 = v6;
  *(v1 + 8) = v5;
  *(v1 + *(v2 + 28)) = 0;

  v4(v1);
  v9 = sub_252C05BDC();
  *(v0 + 64) = v9;
  v10 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_252C0BD0C;
  v12 = *(v0 + 40);

  return v14(0xD00000000000001ELL, 0x8000000252E8A600, v9);
}

uint64_t sub_252C0BD0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252C0BEE0;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252C0BE58;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0BE58()
{
  sub_252C16904(v0[7], type metadata accessor for HomeAutomationBluetoothWakeUpParameters);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252C0BEE0()
{
  sub_252C16904(v0[7], type metadata accessor for HomeAutomationBluetoothWakeUpParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_252C0BF64(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 97) = a2;
  *(v4 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0BF8C, 0, 0);
}

uint64_t sub_252C0BF8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 97);
  v3 = *(v0 + 96);
  swift_beginAccess();
  v4 = *v1;
  v5 = type metadata accessor for HomeAutomationBooleanResponses();
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0x6552797469746E65;
  *(v7 + 40) = 0xEF7365736E6F7073;
  *(v7 + 48) = v6;
  *(v7 + 72) = v5;
  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = 0x8000000252E6FE70;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 96) = v3;
  *(v7 + 120) = v8;
  *(v7 + 128) = 0x726F727245736168;
  *(v7 + 136) = 0xE900000000000073;
  *(v7 + 168) = v8;
  *(v7 + 144) = v2;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_252C0C174;
  v11 = *(v0 + 40);

  return v13(0xD00000000000001ELL, 0x8000000252E8A7C0, v7);
}

uint64_t sub_252C0C174(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252C0C328;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252C0C2C0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0C2C0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_252C0C328()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_252C0C38C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0C3B0, 0, 0);
}

uint64_t sub_252C0C3B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0C560;
  v10 = *(v0 + 40);

  return v12(0xD000000000000024, 0x8000000252E8A700, v6);
}

uint64_t sub_252C0C560(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252C1A18C;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252C1A188;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0C6AC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0C6D4, 0, 0);
}

uint64_t sub_252C0C6D4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  strcpy((v3 + 80), "isLowHumidity");
  *(v3 + 94) = -4864;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_252AD7EB4;
  v7 = *(v0 + 16);

  return v9(0xD000000000000027, 0x8000000252E8A5D0, v3);
}

uint64_t sub_252C0C838(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0C85C, 0, 0);
}

uint64_t sub_252C0C85C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0C560;
  v10 = *(v0 + 40);

  return v12(0xD000000000000021, 0x8000000252E8A760, v6);
}

uint64_t sub_252C0CA0C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CA30, 0, 0);
}

uint64_t sub_252C0CA30()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0C560;
  v10 = *(v0 + 40);

  return v12(0xD000000000000023, 0x8000000252E8A790, v6);
}

uint64_t sub_252C0CBE0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CC04, 0, 0);
}

uint64_t sub_252C0CC04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x8000000252E8A830;
  v6 = 0;
  if (v3)
  {
    v6 = type metadata accessor for HomeAutomationNumericEntityResponses();
  }

  else
  {
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v0 + 64) = v3;
  *(v4 + 96) = v3;
  *(v4 + 120) = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0CDA0;
  v9 = *(v0 + 40);

  return v11(0xD00000000000001ELL, 0x8000000252E8A850, v4);
}

uint64_t sub_252C0CDA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252C0CF54;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252C0CEEC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0CEEC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_252C0CF54()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_252C0CFB8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CFDC, 0, 0);
}

uint64_t sub_252C0CFDC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0C560;
  v10 = *(v0 + 40);

  return v12(0xD000000000000026, 0x8000000252E8A730, v6);
}

uint64_t sub_252C0D18C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0D1B0, 0, 0);
}

uint64_t sub_252C0D1B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000252E89F80;
  *(v6 + 48) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = 0x8000000252E6FE70;
  *(v6 + 120) = MEMORY[0x277D839B0];
  *(v6 + 96) = v2;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0C560;
  v9 = *(v0 + 40);

  return v11(0xD000000000000023, 0x8000000252E8A0E0, v6);
}

uint64_t sub_252C0D360(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_252C0D384, 0, 0);
}

uint64_t sub_252C0D384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x8000000252E764A0;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_252C0D500;
  v7 = *(v0 + 24);

  return v9(0xD000000000000024, 0x8000000252E8A5A0, v3);
}

uint64_t sub_252C0D500(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C0D658, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C0D658()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_252C0D6BC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0D6E4, 0, 0);
}

uint64_t sub_252C0D6E4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656C62616E457369;
  *(v3 + 88) = 0xEF74736575716552;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_252C0B580;
  v7 = *(v0 + 16);

  return v9(0xD00000000000002DLL, 0x8000000252E76840, v3);
}

uint64_t HomeAutomationCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_252938414(a1, v13, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v16;
}

uint64_t HomeAutomationCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E363B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v14 - v11, &qword_27F540370, &qword_252E3C450);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_252E362A4();
  (*(v5 + 8))(a2, v4);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATPatternsExecutor.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_252C0DCF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSetColorParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0DD8C, 0, 0);
}

uint64_t sub_252C0DD8C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  sub_25296373C(v1, v4, v3);
  v8 = sub_252C09648();
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C0DF0C;
  v11 = *(v0 + 16);

  return v13(0xD000000000000017, 0x8000000252E66630, v8);
}

uint64_t sub_252C0DF0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C0E0E0;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C0E058;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0E058()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetColorParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0E0E0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetColorParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C0E164(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0E188, 0, 0);
}

uint64_t sub_252C0E188()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationBatteryResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD00000000000001FLL, 0x8000000252E8A2D0, v5);
}

uint64_t sub_252C0E320(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_252C1A198;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_252C1A194;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0E46C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0E490, 0, 0);
}

uint64_t sub_252C0E490()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationBatteryResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E628;
  v9 = *(v0 + 16);

  return v11(0xD00000000000001ELL, 0x8000000252E8A2F0, v5);
}

uint64_t sub_252C0E628(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_252C0E7DC;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_252C0E774;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0E774()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

uint64_t sub_252C0E7DC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_252C0E840(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0E8DC, 0, 0);
}

uint64_t sub_252C0E8DC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = v4;
  *(v1 + v2[7]) = 0;

  sub_252D823D0(v1, v3);
  v8 = sub_252C0700C();
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C0EA64;
  v11 = *(v0 + 24);

  return v13(0xD00000000000001ELL, 0x8000000252E8A0A0, v8);
}

uint64_t sub_252C0EA64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C0EC38;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C0EBB0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0EBB0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0EC38()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C0ECBC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C0ECE4, 0, 0);
}

uint64_t sub_252C0ECE4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0x6552797469746E65;
  *(v6 + 40) = 0xEF7365736E6F7073;
  *(v6 + 48) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 96) = v3;
  *(v6 + 120) = v7;
  strcpy((v6 + 128), "intentContext");
  *(v6 + 142) = -4864;
  *(v6 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 144) = v1;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C0EECC;
  v10 = *(v0 + 16);

  return v12(0xD000000000000016, 0x8000000252E8A080, v6);
}

uint64_t sub_252C0EECC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C0F088;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C0F018;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0F018()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_252C0F088()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_252C0F114(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  v4 = type metadata accessor for HomeAutomationSetSecuritySystemStateParameters(0);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0F1AC, 0, 0);
}

uint64_t sub_252C0F1AC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[9], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCCC3C(v1, v3);
  v7 = sub_252C09E40(type metadata accessor for HomeAutomationSetSecuritySystemStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 48) = v7;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C0F368;
  v10 = *(v0 + 16);

  return v12(0xD000000000000025, 0x8000000252E86E20, v7);
}

uint64_t sub_252C0F368(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C0F53C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C0F4B4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0F4B4()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSetSecuritySystemStateParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C0F53C()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSetSecuritySystemStateParameters);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_252C0F5C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0F65C, 0, 0);
}

uint64_t sub_252C0F65C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCFC58(v1, v4, v3);
  v8 = sub_252C09E40(type metadata accessor for HomeAutomationSetPolledStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C0F820;
  v11 = *(v0 + 16);

  return v13(0xD00000000000001DLL, 0x8000000252E8A6B0, v8);
}

uint64_t sub_252C0F820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A140;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A13C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0F96C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0FA08, 0, 0);
}

uint64_t sub_252C0FA08()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252BCFC58(v1, v4, v3);
  v8 = sub_252C09E40(type metadata accessor for HomeAutomationSetPolledStateParameters, type metadata accessor for HomeAutomationPolledEntityResponses, type metadata accessor for HomeAutomationPolledEntityResponses);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C0FBCC;
  v11 = *(v0 + 16);

  return v13(0xD00000000000001DLL, 0x8000000252E8A6B0, v8);
}

uint64_t sub_252C0FBCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C0FDA0;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C0FD18;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C0FD18()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetPolledStateParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0FDA0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSetPolledStateParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C0FE24(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C0FE48, 0, 0);
}

uint64_t sub_252C0FE48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD000000000000020, 0x8000000252E8A7E0, v5);
}

uint64_t sub_252C0FFE0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C10004, 0, 0);
}

uint64_t sub_252C10004()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000019;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0x8000000252E775C0;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD000000000000021, 0x8000000252E77590, v5);
}

uint64_t sub_252C10198(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C101BC, 0, 0);
}

uint64_t sub_252C101BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD000000000000022, 0x8000000252E8A870, v5);
}

uint64_t sub_252C10354(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C10378, 0, 0);
}

uint64_t sub_252C10378()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD000000000000022, 0x8000000252E666F0, v5);
}

uint64_t sub_252C10510(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C10538, 0, 0);
}

uint64_t sub_252C10538()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_252D5A410(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = sub_252C078FC(v3, v4, v5);
  *(v0 + 80) = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_252C10634;
  v9 = *(v0 + 40);

  return v11(0xD00000000000001DLL, 0x8000000252E8A230, v6);
}

uint64_t sub_252C10634(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_252C107F0;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_252C10780;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C10780()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3(v4);
}

uint64_t sub_252C107F0()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_252C1085C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C10884, 0, 0);
}

uint64_t sub_252C10884()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_2529C5358(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = sub_252C07A24(v3, v4, v5);
  *(v0 + 80) = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_252C10980;
  v9 = *(v0 + 40);

  return v11(0xD000000000000022, 0x8000000252E8A8A0, v6);
}

uint64_t sub_252C10980(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_252C1A130;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_252C1A12C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C10ACC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 104) = a1;
  return MEMORY[0x2822009F8](sub_252C10AF0, 0, 0);
}

uint64_t sub_252C10AF0()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_2529C4E24(v0 + 16, v1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = sub_252C07A24(v2, v3, v4);
  *(v0 + 72) = v5;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_252C10BEC;
  v8 = *(v0 + 40);

  return v10(0xD000000000000022, 0x8000000252E8A8A0, v5);
}

uint64_t sub_252C10BEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v8 = sub_252C10DA8;
  }

  else
  {
    *(v4 + 96) = a1;
    v8 = sub_252C10D38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C10D38()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3(v4);
}

uint64_t sub_252C10DA8()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_252C10E14(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C10E3C, 0, 0);
}

uint64_t sub_252C10E3C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationClimateResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  v8 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 96) = v1;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x65736E6F70736572;
  *(v6 + 168) = v4;
  *(v6 + 136) = 0xE900000000000073;
  *(v6 + 144) = v5;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_252C11018;
  v11 = *(v0 + 16);

  return v13(0xD000000000000022, 0x8000000252E8A110, v6);
}

uint64_t sub_252C11018(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C111D4;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C11164;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C11164()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_252C111D4()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_252C11240(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11264, 0, 0);
}

uint64_t sub_252C11264()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationAmbientLightLevelResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000013;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0x8000000252E8A170;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD000000000000023, 0x8000000252E8A140, v5);
}

uint64_t sub_252C113F8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C1141C, 0, 0);
}

uint64_t sub_252C1141C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationHumidityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000017;
  *(v5 + 40) = 0x8000000252E6FE70;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x65736E6F70736572;
  *(v5 + 120) = v3;
  *(v5 + 88) = 0xE900000000000073;
  *(v5 + 96) = v4;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C0E320;
  v9 = *(v0 + 16);

  return v11(0xD00000000000001FLL, 0x8000000252E8A190, v5);
}

uint64_t sub_252C115B4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C115D8, 0, 0);
}

uint64_t sub_252C115D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationAirQualityEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0xD000000000000019;
  *(v5 + 40) = 0x8000000252E8A1E0;
  *(v5 + 48) = v4;
  *(v5 + 72) = v3;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;
  v8 = *(v0 + 16);

  return v10(0xD000000000000021, 0x8000000252E8A1B0, v5);
}

uint64_t sub_252C11770(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return MEMORY[0x2822009F8](sub_252C11798, 0, 0);
}

uint64_t sub_252C11798()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for HomeAutomationNumericEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  v8 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 96) = v1;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x6552726F736E6573;
  *(v6 + 168) = v4;
  *(v6 + 136) = 0xEF7365736E6F7073;
  *(v6 + 144) = v5;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();

  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_252C1197C;
  v11 = *(v0 + 16);

  return v13(0xD00000000000002FLL, 0x8000000252E8A200, v6);
}

uint64_t sub_252C1197C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C1A184;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C1A180;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C11B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11B70, 0, 0);
}

uint64_t sub_252C11B70()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "getResponses");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  v6 = type metadata accessor for HomeAutomationClimateResponses();
  *(v4 + 96) = v2;
  *(v4 + 120) = v6;
  strcpy((v4 + 128), "setResponses");
  *(v4 + 168) = v6;
  *(v4 + 141) = 0;
  *(v4 + 142) = -5120;
  *(v4 + 144) = v1;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  swift_retain_n();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_252C11D08;
  v9 = *(v0 + 16);

  return v11(0xD000000000000028, 0x8000000252E666C0, v4);
}

uint64_t sub_252C11D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_252C11EC4;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_252C11E54;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C11E54()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3(v4);
}

uint64_t sub_252C11EC4()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_252C11F30(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  return MEMORY[0x2822009F8](sub_252C11F54, 0, 0);
}

uint64_t sub_252C11F54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for HomeAutomationDiscoveryEntityResponses();
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_252E3C3C0;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  *(v5 + 48) = v4;
  *(v5 + 88) = 0x8000000252E6FE70;
  *(v5 + 120) = MEMORY[0x277D839B0];
  *(v5 + 96) = v2;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v5 + 72) = v3;
  *(v5 + 80) = 0xD000000000000017;

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_252C0E320;
  v8 = *(v0 + 16);

  return v10(0xD000000000000021, 0x8000000252E8A930, v5);
}

uint64_t sub_252C120F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C12194, 0, 0);
}

uint64_t sub_252C12194()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA2D7C(v1);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C12358;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E8A390, v8);
}

uint64_t sub_252C12358(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1252C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C124A4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C124A4()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C1252C()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C125B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1264C, 0, 0);
}

uint64_t sub_252C1264C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C14(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C12810;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E8A3C0, v8);
}

uint64_t sub_252C12810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A148;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A144;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C1295C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C129F8, 0, 0);
}

uint64_t sub_252C129F8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C6C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C12BBC;
  v11 = *(v0 + 16);

  return v13(0xD000000000000024, 0x8000000252E8A3F0, v8);
}

uint64_t sub_252C12BBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A150;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A14C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C12D08(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C12DA4, 0, 0);
}

uint64_t sub_252C12DA4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3CC4(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C12F68;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E8A420, v8);
}

uint64_t sub_252C12F68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A158;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A154;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C130B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C13150, 0, 0);
}

uint64_t sub_252C13150()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3D1C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C13314;
  v11 = *(v0 + 16);

  return v13(0xD000000000000027, 0x8000000252E8A450, v8);
}

uint64_t sub_252C13314(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A160;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A15C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C13460(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  v4 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C134F8, 0, 0);
}

uint64_t sub_252C134F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[6], 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v6(v1 + v2[8], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  sub_252BA3510(v1, v3);
  v7 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);
  *(v0 + 48) = v7;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C136B4;
  v10 = *(v0 + 16);

  return v12(0xD000000000000026, 0x8000000252E8A390, v7);
}

uint64_t sub_252C136B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C13888;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C13800;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C13800()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C13888()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_252C1390C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C139A8, 0, 0);
}

uint64_t sub_252C139A8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C14(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C13B6C;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E8A3C0, v8);
}

uint64_t sub_252C13B6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C13D40;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C13CB8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C13CB8()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C13D40()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C13DC4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C13E60, 0, 0);
}

uint64_t sub_252C13E60()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3C6C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C14024;
  v11 = *(v0 + 16);

  return v13(0xD000000000000024, 0x8000000252E8A3F0, v8);
}

uint64_t sub_252C14024(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C141F8;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C14170;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C14170()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C141F8()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C1427C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C14318, 0, 0);
}

uint64_t sub_252C14318()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3CC4(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C144DC;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E8A420, v8);
}

uint64_t sub_252C144DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C146B0;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C14628;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C14628()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C146B0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C14734(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C147D0, 0, 0);
}

uint64_t sub_252C147D0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA3D1C(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C14994;
  v11 = *(v0 + 16);

  return v13(0xD000000000000027, 0x8000000252E8A450, v8);
}

uint64_t sub_252C14994(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C14B68;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C14AE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C14AE0()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C14B68()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_252C14BEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C14C88, 0, 0);
}

uint64_t sub_252C14C88()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252BA30C0(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C14E4C;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E665B0, v8);
}

uint64_t sub_252C14E4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C1A168;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C1A164;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C14F98(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 112) = a1;
  return MEMORY[0x2822009F8](sub_252C14FC0, 0, 0);
}

uint64_t sub_252C14FC0()
{
  *(v0 + 16) = *(v0 + 112);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_252BAAEC0(v0 + 16, v1, v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 72) = v6;
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  if (v4)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = v4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x65736E6F70736572;
  *(v6 + 136) = 0xE900000000000073;
  v10 = 0;
  if (v5)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v0 + 80) = v5;
  *(v6 + 144) = v5;
  *(v6 + 168) = v10;
  v11 = *(MEMORY[0x277D55BE8] + 4);
  v15 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_252C151BC;
  v13 = *(v0 + 40);

  return v15(0xD000000000000025, 0x8000000252E8A6D0, v6);
}

uint64_t sub_252C151BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_252C1537C;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_252C15308;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C15308()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3(v4);
}

uint64_t sub_252C1537C()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_252C153EC(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 80) = a1;
  v4 = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C15484, 0, 0);
}

uint64_t sub_252C15484()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252CAEE38(v1, v3);
  v7 = sub_252C05740();
  *(v0 + 48) = v7;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_252C155FC;
  v10 = *(v0 + 16);

  return v12(0xD00000000000002ELL, 0x8000000252E69820, v7);
}

uint64_t sub_252C155FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C157D0;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C15748;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C15748()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C157D0()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_252C15854(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1040) = a4;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1088) = a1;
  return MEMORY[0x2822009F8](sub_252C15880, 0, 0);
}

uint64_t sub_252C15880()
{
  v14 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1088);
  memcpy((v0 + 16), (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v4 = sub_252953488(0, __dst, 0);
  *(v0 + 1048) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 1056) = v5;
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v3;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "intentContext");
  *(v5 + 142) = -4864;
  *(v5 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v5 + 144) = v4;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 1064) = v9;
  *v9 = v0;
  v9[1] = sub_252C15AA4;
  v10 = *(v0 + 1024);

  return v12(0xD00000000000001CLL, 0x8000000252E8A480, v5);
}

uint64_t sub_252C15AA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *(*v2 + 1056);
  v7 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v8 = sub_252C15C64;
  }

  else
  {
    *(v4 + 1080) = a1;
    v8 = sub_252C15BF0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C15BF0()
{
  v1 = v0[131];
  v2 = v0[129];

  v3 = v0[1];
  v4 = v0[135];

  return v3(v4);
}

uint64_t sub_252C15C64()
{
  v1 = v0[131];
  v2 = v0[129];

  v3 = v0[1];
  v4 = v0[134];

  return v3();
}

uint64_t sub_252C15CD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1040) = a4;
  *(v4 + 1032) = a3;
  *(v4 + 1024) = a2;
  *(v4 + 1088) = a1;
  return MEMORY[0x2822009F8](sub_252C15D00, 0, 0);
}

uint64_t sub_252C15D00()
{
  v14 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1088);
  memcpy((v0 + 16), (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v4 = sub_252953488(0, __dst, 0);
  *(v0 + 1048) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v0 + 1056) = v5;
  *(v5 + 16) = xmmword_252E3C280;
  *(v5 + 32) = 0x6552797469746E65;
  *(v5 + 40) = 0xEF7365736E6F7073;
  v6 = type metadata accessor for HomeAutomationEntityResponses();
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000017;
  *(v5 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v5 + 96) = v3;
  *(v5 + 120) = v7;
  strcpy((v5 + 128), "intentContext");
  *(v5 + 142) = -4864;
  *(v5 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v5 + 144) = v4;
  v8 = *(MEMORY[0x277D55BE8] + 4);
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 1064) = v9;
  *v9 = v0;
  v9[1] = sub_252C15F24;
  v10 = *(v0 + 1024);

  return v12(0xD00000000000001FLL, 0x8000000252E8A4E0, v5);
}

uint64_t sub_252C15F24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *(*v2 + 1056);
  v7 = *v2;
  *(*v2 + 1072) = v1;

  if (v1)
  {
    v8 = sub_252C1A138;
  }

  else
  {
    *(v4 + 1080) = a1;
    v8 = sub_252C1A134;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C16070(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 81) = a2;
  *(v4 + 80) = a1;
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  *(v4 + 32) = found;
  v6 = *(*(found - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1610C, 0, 0);
}

uint64_t sub_252C1610C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 81);
  v5 = *(v0 + 80);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  v8 = v1 + v2[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v1 + v2[8]) = v4;
  sub_252CB7D14(v1);
  v9 = sub_252C07368();
  *(v0 + 48) = v9;
  v10 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_252C162BC;
  v12 = *(v0 + 16);

  return v14(0xD000000000000026, 0x8000000252E6DE60, v9);
}

uint64_t sub_252C162BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_252C16490;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_252C16408;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C16408()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252C16490()
{
  sub_252C16904(v0[5], type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_252C16514(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_252C16538, 0, 0);
}

uint64_t sub_252C16538()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000019;
  *(v3 + 88) = 0x8000000252E775C0;
  *(v3 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v3 + 96) = v1;
  v5 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_252C166AC;
  v7 = *(v0 + 16);

  return v9(0xD000000000000021, 0x8000000252E77590, v3);
}

uint64_t sub_252C166AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v8 = sub_252C16860;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = sub_252C167F8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C167F8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_252C16860()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_252C16904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252C16B84(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  v5 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C16C20, 0, 0);
}

uint64_t sub_252C16C20()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[6], 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  sub_252C229CC(v1, v4, v3);
  v8 = sub_252C08400(type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);
  *(v0 + 56) = v8;
  v9 = *(MEMORY[0x277D55BE8] + 4);
  v13 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_252C16DE4;
  v11 = *(v0 + 16);

  return v13(0xD000000000000026, 0x8000000252E665B0, v8);
}

uint64_t sub_252C16DE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252C16FB8;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252C16F30;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C16F30()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C16FB8()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

void sub_252C17224()
{
  if (!qword_27F543F98)
  {
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543F98);
    }
  }
}

void sub_252C1729C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C173CC()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FE0, type metadata accessor for HomeAutomationNumericEntityResponses, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C1757C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C1769C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C17224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C177D0()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544040, type metadata accessor for HomeAutomationClimateResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C1795C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544058, type metadata accessor for HomeAutomationPolledEntityResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C17AC4()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544080, type metadata accessor for HomeAutomationBooleanResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C17C74()
{
  sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C17E00()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C17F3C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_460Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_461Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_252C181B0()
{
  sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C18314()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C1848C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_361Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_362Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_252C18720()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252C187F4()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18914()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544178, type metadata accessor for HomeAutomationAutomation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C18A88()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F544178, type metadata accessor for HomeAutomationAutomation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C18C90()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C17224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18D84()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C18EB0()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C19070()
{
  sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544210, type metadata accessor for HomeAutomationHomeLocation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C191D4()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252C19334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v9 <= 0x3F)
  {
    sub_252C19908(319, a4, a5, a6);
    if (v10 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_370Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_371Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_252C19624()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_252C19908(319, &qword_27F544248, type metadata accessor for HomeAutomationAirPurifierResponses, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252C197CC()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FF8, MEMORY[0x277D55C48], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F544260, type metadata accessor for HomeAutomationTappableCommand, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252C19908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_451Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_452Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_252C19B2C()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C19908(319, &qword_27F543FC8, type metadata accessor for HomeAutomationEntityResponses, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_379Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_380Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_252C19E64()
{
  sub_252C19908(319, &qword_27F540500, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252C17224();
    if (v1 <= 0x3F)
    {
      sub_252C19908(319, &qword_27F543FC0, type metadata accessor for HomeAutomationIntentContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

BOOL sub_252C1A19C()
{
  v0 = sub_252C1A454();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_24:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_23;
      }

      v6 = *(v1 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v8 = sub_252E36164();
    v10 = v9;

    ++v4;
    if ((v10 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7D44(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_2529F7D44((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[8 * v12 + 32] = v8;
      v4 = v7;
    }
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544C58);

  v14 = sub_252E36AC4();
  v15 = sub_252E374C4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x2530AD730](v5, MEMORY[0x277D839F8]);
    v20 = sub_252BE2CE0(v18, v19, &v24);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_252917000, v14, v15, "Temperature threshold values: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2530AED00](v17, -1, -1);
    MEMORY[0x2530AED00](v16, -1, -1);
  }

  v21 = sub_252DF8A60(v5);

  v22 = *(v21 + 2);

  return v22 == 1;
}

unint64_t sub_252C1A454()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_17:
    if (sub_252E378C4() == 1)
    {
      v19 = MEMORY[0x277D84F90];
      v2 = sub_252E378C4();
LABEL_4:
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v2 != v3)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v3, v1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v1 + 8 * v3 + 32);

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        v7 = sub_25296E640();

        ++v3;
        if (v7)
        {
          MEMORY[0x2530AD700](v8);
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v9 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v4 = v19;
          v3 = v6;
        }
      }

      return v4;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    v2 = 1;
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252E360E4();
  sub_252936E8C(&qword_27F5442F0, &qword_27F5442C8, &qword_252E533F8);
  v4 = sub_252E371C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
  sub_252936E8C(&qword_27F5442F8, &qword_27F5442E8, &qword_252E53408);
  v10 = sub_252E371C4();
  v11 = COERCE_DOUBLE(sub_252987D34(v10));
  if ((v12 & 1) != 0 || (v13 = *(v10 + 16)) == 0)
  {
LABEL_24:

    return v4;
  }

  v14 = -v13;
  v15 = 4;
  while (*(v10 + 8 * v15) != v11)
  {
    ++v15;
    if (v14 + v15 == 4)
    {
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C130;
  result = v15 - 4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](result, v4);
    goto LABEL_29;
  }

  if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v4 + 8 * v15);

LABEL_29:

    *(v17 + 32) = v18;
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C1A790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_252E36324();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = *(v0 + 24);
  if (v11 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v13 = 0;
    v36 = v11 & 0xFFFFFFFFFFFFFF8;
    v37 = v11 & 0xC000000000000001;
    v14 = (v34 + 48);
    v35 = (v34 + 32);
    v15 = MEMORY[0x277D84F90];
    v32 = i;
    v33 = v10;
    while (v37)
    {
      v16 = MEMORY[0x2530ADF00](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v16 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v4);

      if ((*v14)(v4, 1, v5) == 1)
      {
        sub_252938BBC(v4);
      }

      else
      {
        v18 = v5;
        v19 = v11;
        v20 = *v35;
        v21 = v18;
        (*v35)(v10, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2529F7F74(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = sub_2529F7F74(v22 > 1, v23 + 1, 1, v15);
        }

        v15[2] = v23 + 1;
        v24 = v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23;
        v10 = v33;
        (v20)(v24, v33, v21);
        v11 = v19;
        v5 = v21;
        i = v32;
      }

      ++v13;
      if (v17 == i)
      {
        goto LABEL_21;
      }
    }

    if (v13 >= *(v36 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v11 + 8 * v13 + 32);

    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_21:
  v25 = sub_252DF8B58(v15);

  if (*(v25 + 2) == 1)
  {
    v26 = v34;
    v27 = v31;
    (*(v34 + 16))(v31, &v25[(*(v26 + 80) + 32) & ~*(v26 + 80)], v5);

    v28 = sub_252E36304();
    (*(v26 + 8))(v27, v5);
    return v28;
  }

  else
  {

    return 0;
  }
}

BOOL sub_252C1AB40()
{
  v0 = sub_252C1B27C(sub_252C1C7AC, sub_252C1C5E8, sub_25292AB4C, sub_252C1C7AC);
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_40:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_37;
      }

      v5 = *(v1 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    v7 = sub_252E36164();
    v9 = v8;

    ++v4;
    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2529F7D44(0, *(v28 + 2) + 1, 1, v28);
      }

      v11 = *(v28 + 2);
      v10 = *(v28 + 3);
      if (v11 >= v10 >> 1)
      {
        v28 = sub_2529F7D44((v10 > 1), v11 + 1, 1, v28);
      }

      *(v28 + 2) = v11 + 1;
      *&v28[8 * v11 + 32] = v7;
      v4 = v6;
    }
  }

  v12 = sub_252C1B27C(sub_252C1C7C4, sub_252C1C614, sub_25292AB4C, sub_252C1C7C4);
  v13 = v12;
  v2 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v1 = MEMORY[0x277D84F90];
  while (v14 != v15)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v15, v13);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v15 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v16 = *(v13 + 8 * v15 + 32);

      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }
    }

    v18 = sub_252E36164();
    v20 = v19;

    ++v15;
    if ((v20 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2529F7D44(0, *(v1 + 16) + 1, 1, v1);
      }

      v22 = *(v1 + 16);
      v21 = *(v1 + 24);
      if (v22 >= v21 >> 1)
      {
        v1 = sub_2529F7D44((v21 > 1), v22 + 1, 1, v1);
      }

      *(v1 + 16) = v22 + 1;
      *(v1 + 8 * v22 + 32) = v18;
      v15 = v17;
    }
  }

  v23 = sub_252DF8A60(v28);

  v24 = *(v23 + 2);

  if (v24 == 1)
  {
    v25 = sub_252DF8A60(v1);

    v26 = *(v25 + 2);

    return v26 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_252C1AEEC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-v14];
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, &v34[-v14]);
  sub_252956C1C(v15, v13);
  v16 = sub_252E36324();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v13, 1, v16) == 1)
  {
    sub_252938BBC(v13);
  }

  else
  {
    v35 = a3;
    v36 = a2;
    sub_252E36304();
    (*(v17 + 8))(v13, v16);
    v19 = sub_252E36FA4();
    v21 = v20;

    if (v19 == 0x737569736C6563 && v21 == 0xE700000000000000)
    {
      LOBYTE(a3) = v35;
LABEL_21:

      if (a3)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    v23 = sub_252E37DB4();

    LOBYTE(a3) = v35;
    if (v23)
    {
LABEL_18:
      if (a3)
      {
        goto LABEL_19;
      }

LABEL_22:
      v30 = sub_252E360C4();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_252E360B4();
      sub_252E36194();

      sub_252E36184();

      v29 = sub_252E36174();

      goto LABEL_23;
    }
  }

  sub_252956C1C(v15, v10);
  if (v18(v10, 1, v16) == 1)
  {
    sub_252938BBC(v10);
    goto LABEL_5;
  }

  sub_252E36304();
  (*(v17 + 8))(v10, v16);
  v24 = sub_252E36FA4();
  v26 = v25;

  if (v24 == 99 && v26 == 0xE100000000000000)
  {
    goto LABEL_21;
  }

  v28 = sub_252E37DB4();

  if (v28)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v29 = 0;
LABEL_23:
  sub_252938BBC(v15);
  return v29;
}

unint64_t sub_252C1B27C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v6 = *(v4 + 24);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v9 = *(v4 + 24);
    }

    v10 = a1;
    v11 = sub_252E378C4();
    a1 = v10;
    if (v11 == 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_3:
    v24 = &v26;
    v7 = MEMORY[0x28223BE20](a1);

    v8 = sub_252CB0BB0(v7, v23, v6);

    return v8;
  }

  MEMORY[0x28223BE20](a1);
  v24 = &v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252E360E4();
  sub_252936E8C(&qword_27F5442F0, &qword_27F5442C8, &qword_252E533F8);
  v8 = sub_252E371C4();

  v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
  sub_252936E8C(&qword_27F5442F8, &qword_27F5442E8, &qword_252E53408);
  v12 = sub_252E371C4();
  v13 = *(sub_252C75AFC(v12) + 16);

  if (v13 == 1)
  {

    MEMORY[0x28223BE20](v14);
    v24 = &v26;

    v8 = sub_252CB0BB0(a4, v23, v6);

    return v8;
  }

  v15 = COERCE_DOUBLE(sub_252987D34(v12));
  if ((v16 & 1) != 0 || (v17 = *(v12 + 16)) == 0)
  {
LABEL_14:

    return v8;
  }

  v18 = -v17;
  v19 = 4;
  while (*(v12 + 8 * v19) != v15)
  {
    ++v19;
    if (v18 + v19 == 4)
    {
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252E3C130;
  result = v19 - 4;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x2530ADF00](result, v8);
    goto LABEL_19;
  }

  if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v8 + 8 * v19);

LABEL_19:

    *(v21 + 32) = v22;
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C1B5C4(void *a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v5, v3);
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return result;
        }

        v8 = *(result + *a1);
        swift_unknownObjectRelease();
        if ((v8 & 1) == 0)
        {
          return 0;
        }

LABEL_9:
        if (v5 == v4)
        {
          return 1;
        }
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v4 = sub_252E378C4();
      if (!v4)
      {
        return 1;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if (*(*(v3 + 32 + 8 * v5) + *a1) != 1)
    {
      return 0;
    }

    ++v5;
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_252C1B6B0()
{
  v1 = sub_252C1A790();
  if (!v2)
  {
    return 0;
  }

  if (v1 != 0x65676E6172 || v2 != 0xE500000000000000)
  {
    v3 = sub_252E37DB4();

    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v4 = *(v0 + 24);
  v5 = (v4 >> 62);
  if (v4 >> 62)
  {
LABEL_38:
    v6 = sub_252E378C4();
    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 1;
    }
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v9 = v4 + 32;
  while (!v8)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    if (*(*(v9 + 8 * v7) + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) != 1)
    {
LABEL_18:
      if (v5)
      {
        v13 = sub_252E378C4();
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          return 1;
        }
      }

      v14 = 0;
      v5 = &OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold;
      while (1)
      {
        if (v8)
        {
          v15 = MEMORY[0x2530ADF00](v14, v4);
          v11 = __OFADD__(v14++, 1);
          if (v11)
          {
            goto LABEL_35;
          }

          v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold);
          swift_unknownObjectRelease();
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          if (*(*(v9 + 8 * v14) + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) != 1)
          {
            return 0;
          }

          ++v14;
        }

        if (v14 == v13)
        {
          return 1;
        }
      }
    }

    ++v7;
LABEL_14:
    if (v7 == v6)
    {
      return 1;
    }
  }

  result = MEMORY[0x2530ADF00](v7, v4);
  v11 = __OFADD__(v7++, 1);
  if (!v11)
  {
    v12 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold);
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_252C1B894@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0xD000000000000014 && 0x8000000252E68110 == a2;
  if (v7 || (sub_252E37DB4() & 1) != 0)
  {
    v8 = *(v3 + 24);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
    *a3 = v8;

    return result;
  }

  if ((a1 != 0x746E756F63 || a2 != 0xE500000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0xD000000000000012 && 0x8000000252E8AA70 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v12 = sub_252C1A19C();
      goto LABEL_19;
    }

    if (a1 == 0x7571696E55736168 && a2 == 0xEE0065676E615265 || (sub_252E37DB4() & 1) != 0)
    {
      v12 = sub_252C1AB40();
      goto LABEL_19;
    }

    if (a1 == 0xD000000000000015 && 0x8000000252E8AA90 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v13 = sub_252C1A454();
    }

    else
    {
      if (a1 == 0xD00000000000001FLL && 0x8000000252E8AAB0 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        v14 = sub_252C1C7AC;
        v15 = sub_252C1C5E8;
        v16 = sub_252C1C7AC;
      }

      else
      {
        if ((a1 != 0xD00000000000001FLL || 0x8000000252E8AAD0 != a2) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0xD000000000000021 && 0x8000000252E8AAF0 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold);
          }

          else if (a1 == 0xD000000000000021 && 0x8000000252E8AB20 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold);
          }

          else if (a1 == 0xD000000000000017 && 0x8000000252E8AB50 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold);
          }

          else if (a1 == 0xD000000000000017 && 0x8000000252E8AB70 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            v12 = sub_252C1B5C4(&OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold);
          }

          else
          {
            if ((a1 != 0xD000000000000015 || 0x8000000252E8AB90 != a2) && (sub_252E37DB4() & 1) == 0)
            {
              result = 0.0;
              *a3 = 0u;
              *(a3 + 16) = 0u;
              return result;
            }

            v12 = sub_252C1B6B0();
          }

LABEL_19:
          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = v12 & 1;
          return result;
        }

        v14 = sub_252C1C7C4;
        v15 = sub_252C1C614;
        v16 = sub_252C1C7C4;
      }

      v13 = sub_252C1B27C(v14, v15, sub_25292AB4C, v16);
    }

    v17 = v13;
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442E8, &qword_252E53408);
    *a3 = v17;
    return result;
  }

  v10 = *(v3 + 24);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v18 = *(v3 + 24);
    }

    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v11;
  *(a3 + 24) = MEMORY[0x277D839F8];
  *a3 = v11;
  return result;
}

uint64_t sub_252C1BD5C()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C1BDD0()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C1BE24@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252C1BEB4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252C1BF0C(uint64_t a1)
{
  v2 = sub_252C1C4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252C1BF48(uint64_t a1)
{
  v2 = sub_252C1C4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252C1BFA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442D8, &qword_252E53400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C1C4AC();
  sub_252E37F84();
  v11[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
  sub_252C1C500(&qword_27F5442E0, &qword_27F540E18);
  sub_252E37D54();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_252C1C164(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442B8, &qword_252E533F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252C1C4AC();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAbstractMeasurements();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5442C8, &qword_252E533F8);
    sub_252C1C500(&qword_27F5442D0, &qword_27F540E00);
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252C1C3A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAbstractMeasurements();
  v5 = swift_allocObject();
  result = sub_252C1C164(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252C1C4AC()
{
  result = qword_27F5442C0;
  if (!qword_27F5442C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5442C0);
  }

  return result;
}

uint64_t sub_252C1C500(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5442C8, &qword_252E533F8);
    sub_252C1C5A0(a2, 255, type metadata accessor for HomeAutomationAbstractMeasurement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252C1C5A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252C1C640@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a2();
  result = sub_252C1AEEC(v4, v5, v6 & 1);
  *a3 = result;
  return result;
}

unint64_t sub_252C1C6A8()
{
  result = qword_27F544300;
  if (!qword_27F544300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544300);
  }

  return result;
}

unint64_t sub_252C1C700()
{
  result = qword_27F544308;
  if (!qword_27F544308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544308);
  }

  return result;
}

unint64_t sub_252C1C758()
{
  result = qword_27F544310;
  if (!qword_27F544310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544310);
  }

  return result;
}

uint64_t sub_252C1C7DC@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v52);

  __swift_project_boxed_opaque_existential_1(v52, v53);
  v9 = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(v52);
  if (v9)
  {
    v10 = [a1 entityResponses];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for HomeEntityResponse();
      v12 = sub_252E37264();

      if (v12 >> 62)
      {
LABEL_38:
        v13 = sub_252E378C4();
        if (v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_5:
          v14 = 0;
          v48 = v12 & 0xFFFFFFFFFFFFFF8;
          v49 = v12 & 0xC000000000000001;
          v46 = a2;
          v47 = v12 + 32;
          v44 = a1;
          v45 = v5;
          v42 = v13;
          v43 = v12;
          do
          {
            if (v49)
            {
              v22 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *(v48 + 16))
              {
                goto LABEL_37;
              }

              v22 = *(v47 + 8 * v14);
            }

            v23 = v22;
            v24 = __OFADD__(v14, 1);
            v25 = v14 + 1;
            if (v24)
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v50 = v25;
            v26 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v51 = v23;
            v27 = sub_252E36F04();
            v28 = [v26 initWithIdentifier:0 displayString:v27];

            v20 = v51;
            v21 = v28;
            [v21 setBoolValue_];
            [v21 setType_];

            v29 = [v51 taskResponses];
            if (v29)
            {
              v30 = v29;
              type metadata accessor for HomeUserTaskResponse();
              v31 = sub_252E37264();

              if (v31 >> 62)
              {
                v32 = sub_252E378C4();
                a1 = v4;
                if (v32)
                {
LABEL_17:
                  v12 = 0;
                  v54 = v31 & 0xC000000000000001;
                  v5 = (v31 & 0xFFFFFFFFFFFFFF8);
                  v33 = v32;
                  while (1)
                  {
                    if (v54)
                    {
                      v34 = MEMORY[0x2530ADF00](v12, v31);
                    }

                    else
                    {
                      if (v12 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_35;
                      }

                      v34 = *(v31 + 8 * v12 + 32);
                    }

                    v35 = v34;
                    a2 = v12 + 1;
                    if (__OFADD__(v12, 1))
                    {
                      __break(1u);
LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

                    v52[0] = v34;
                    v4 = v21;
                    v36 = sub_252DA5D40(v52, 27, v21, 0, 1);

                    if (v36)
                    {
                      break;
                    }

                    ++v12;
                    v21 = v4;
                    if (a2 == v33)
                    {
                      goto LABEL_8;
                    }
                  }

                  if (sub_252C2DF04(41))
                  {
                    v39 = v45[12];
                    v40 = v45[13];
                    __swift_project_boxed_opaque_existential_1(v45 + 9, v39);
                    v37 = v39;
                    v38 = v40;
                    return sub_252944924(v37, v38);
                  }

                  v5 = v45;
LABEL_41:
                  v17 = v5[12];
                  v18 = v5[13];
                  __swift_project_boxed_opaque_existential_1(v5 + 9, v17);
                  v19 = *(v18 + 72);
                  return v19(v17, v18);
                }
              }

              else
              {
                v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a1 = v4;
                if (v32)
                {
                  goto LABEL_17;
                }
              }

LABEL_8:
              v4 = a1;

              v20 = v21;
              v5 = v45;
              a2 = v46;
              v12 = v43;
              a1 = v44;
              v13 = v42;
              v21 = v51;
            }

            v14 = v50;
          }

          while (v50 != v13);
        }
      }
    }

    sub_252C2DF04(41);
    goto LABEL_41;
  }

  v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v15 + 16), v52);

  __swift_project_boxed_opaque_existential_1(v52, v53);
  v16 = sub_252E338E4();
  __swift_destroy_boxed_opaque_existential_1(v52);
  v17 = v5[12];
  v18 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v17);
  if (v16)
  {
    v19 = *(v18 + 72);
    return v19(v17, v18);
  }

  v37 = v17;
  v38 = v18;
  return sub_252944924(v37, v38);
}

uint64_t sub_252C1CC4C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a2;
  *(v7 + 40) = a5;
  *(v7 + 161) = a4;
  *(v7 + 160) = a3;
  *(v7 + 24) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v9 = type metadata accessor for HomeAutomationSuccessfulActionParameters(0);
  *(v7 + 72) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252C1CD54, 0, 0);
}

uint64_t sub_252C1CD54()
{
  v14 = *MEMORY[0x277D85DE8];
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_252E36AD4();
  *(v0 + 88) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8AE60, 0xD00000000000008FLL, 0x8000000252E6B430);
  if (v1)
  {
    v3 = *(v0 + 24);

    if ((sub_252B2FB08() & 1) != 0 || *(v0 + 160) & 1 | (*(v0 + 32) != 1) && (*(v0 + 48) == 0) | *(v0 + 161) & 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_252C1CFBC;
      v5 = *(v0 + 56);
      v6 = *MEMORY[0x277D85DE8];

      return sub_252C1D9CC(v3);
    }
  }

  v8 = *(v0 + 48);
  v9 = *__swift_project_boxed_opaque_existential_1((*(v0 + 56) + 24), *(*(v0 + 56) + 48));

  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_252C1D81C;
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *MEMORY[0x277D85DE8];

  return sub_252C14BEC(0, v9, v11, v12);
}

uint64_t sub_252C1CFBC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 96);
  v9 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_252C1D488;
  }

  else
  {
    v5 = sub_252C1D0FC;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C1D0FC()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 24);

    v3 = *(v0 + 80);
    v4 = *(v0 + 64);

    v5 = *(v0 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5(v1);
  }

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  sub_252CC3D90(0xD000000000000040, 0x8000000252E8AE80, 0xD00000000000008FLL, 0x8000000252E6B430);
  v12 = *__swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  v13 = *(v10 + 20);
  v14 = sub_252E36324();
  v15 = *(*(v14 - 8) + 56);
  v15(&v9[v13], 1, 1, v14);
  *v9 = 0;
  v16 = sub_25294833C(1u, 0, 0);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 dictionary];
  if (!v18)
  {

LABEL_11:
    v15(*(v0 + 64), 1, 1, v14);
    goto LABEL_12;
  }

  v19 = v18;
  v36 = v13;
  v20 = objc_opt_self();
  *(v0 + 16) = 0;
  v21 = [v20 dataWithPropertyList:v19 format:200 options:0 error:v0 + 16];
  v22 = *(v0 + 16);
  if (!v21)
  {
    v26 = v22;
    v27 = sub_252E32C54();

    swift_willThrow();
    v13 = v36;
    goto LABEL_11;
  }

  v35 = *(v0 + 64);
  v23 = sub_252E32D34();
  v25 = v24;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v23, v25);
  v15(v35, 0, 1, v14);
  v13 = v36;
LABEL_12:
  v28 = *(v0 + 80);
  sub_252956C98(*(v0 + 64), &v9[v13]);
  v29 = sub_252C0AA58();
  *(v0 + 120) = v29;
  v30 = MEMORY[0x277D55BE8];
  v31 = *(MEMORY[0x277D55BE8] + 4);
  v32 = *MEMORY[0x277D55BE8];
  v33 = swift_task_alloc();
  *(v0 + 128) = v33;
  *v33 = v0;
  v33[1] = sub_252C1D534;
  v34 = *MEMORY[0x277D85DE8];

  return ((v32 + v30))(0xD00000000000001FLL, 0x8000000252E8AD70, v29);
}

uint64_t sub_252C1D488()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[3];

  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_252C1D534(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];

  if (v1)
  {
    v8 = sub_252C1D764;
  }

  else
  {
    v4[18] = a1;
    v8 = sub_252C1D6A4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252C1D6A4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  sub_252C242F8(v0[10]);

  v2 = v0[18];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5(v2);
}

uint64_t sub_252C1D764()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  sub_252C242F8(v0[10]);

  v2 = v0[17];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_252C1D81C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 152);
  v14 = *v2;

  v6 = v4[6];

  v7 = v4[10];
  v8 = v4[8];

  v10 = *(v14 + 8);
  v11 = *MEMORY[0x277D85DE8];
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_252C1D9CC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_252C1D9EC, 0, 0);
}

uint64_t sub_252C1D9EC()
{
  v1 = (v0[5] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v3 = *v1;
  v2 = v1[1];
  v0[7] = v2;
  v4 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v5 = v0[5];
    v6 = v0[6];
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v3, v2);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E8AF40, 0xD00000000000008FLL, 0x8000000252E6B430);

    v8 = *__swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_252C1DF98;
    v10 = v0[5];

    return sub_252C13460(0, v8, v10);
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D18);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E8AED0);
  MEMORY[0x2530AD570](v3, v2);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008FLL, 0x8000000252E6B430);

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v17 = sub_252C14734;

      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v15 = sub_252C1E504;
      goto LABEL_21;
    }

    if (v4 == 5)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v17 = sub_252C13DC4;

      v14 = swift_task_alloc();
      v0[10] = v14;
      *v14 = v0;
      v15 = sub_252C1E24C;
      goto LABEL_21;
    }
  }

  else
  {
    if (v4 == 2)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v17 = sub_252C1390C;

      v14 = swift_task_alloc();
      v0[9] = v14;
      *v14 = v0;
      v15 = sub_252C1E0F0;
      goto LABEL_21;
    }

    if (v4 == 3)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v0[6] + 24), *(v0[6] + 48));
      v17 = sub_252C1427C;

      v14 = swift_task_alloc();
      v0[11] = v14;
      *v14 = v0;
      v15 = sub_252C1E3A8;
LABEL_21:
      v14[1] = v15;

      return v17(0, v13, v3, v2);
    }
  }

  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[4] = v4;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000025, 0x8000000252E8AF10, 661);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_252C1DF98(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_252C1E0F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  v7 = *(v4 + 56);

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_252C1E24C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  v7 = *(v4 + 56);

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_252C1E3A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  v7 = *(v4 + 56);

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_252C1E504(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  v7 = *(v4 + 56);

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_252C1E660(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5;
  *(v7 + 153) = a4;
  *(v7 + 152) = a3;
  *(v7 + 16) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C1E70C, 0, 0);
}

uint64_t sub_252C1E70C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_252E36AD4();
  *(v0 + 64) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8AD10, 0xD00000000000008FLL, 0x8000000252E6B430);
  if (v1)
  {
    v3 = *(v0 + 16);

    if (sub_252B2FB08())
    {
      goto LABEL_5;
    }

    if ((*(v0 + 152) & 1) != 0 || *(v0 + 24) != 1)
    {
      if (!*(v0 + 40) || (*(v0 + 153) & 1) != 0)
      {
LABEL_5:
        v4 = swift_task_alloc();
        *(v0 + 72) = v4;
        *v4 = v0;
        v4[1] = sub_252C1E9C0;
        v5 = *(v0 + 48);

        return sub_252C1F0D0(v3);
      }

      v15 = *(v0 + 48);

      v7 = *(v15 + 64);
      v16 = *(v0 + 40);
      goto LABEL_12;
    }
  }

  v7 = *(*(v0 + 48) + 64);
  if (!*(v0 + 40))
  {
    v11 = *(v0 + 56);
    v12 = sub_252E36324();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    goto LABEL_14;
  }

LABEL_12:
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);

  sub_252E37024();
  v10 = sub_252E36324();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
LABEL_14:
  *(v0 + 128) = v7;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_252C1EEC8;
  v14 = *(v0 + 56);

  return sub_252D28F48(v14);
}

uint64_t sub_252C1E9C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_252C1EC40;
  }

  else
  {
    v5 = sub_252C1EAD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C1EAD4()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[2];

    v3 = v0[7];

    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[6];
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E8AD30, 0xD00000000000008FLL, 0x8000000252E6B430);
    v0[12] = *(v7 + 64);
    v8 = *(MEMORY[0x277D55C70] + 4);
    v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_252C1ECAC;
    v10 = MEMORY[0x277D84F90];

    return v11(0xD00000000000001FLL, 0x8000000252E8AD70, v10);
  }
}

uint64_t sub_252C1EC40()
{
  v1 = v0[2];

  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252C1ECAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_252C1EE50;
  }

  else
  {
    v8 = *(v4 + 96);

    *(v4 + 120) = a1;
    v7 = sub_252C1EDDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C1EDDC()
{
  v1 = v0[2];

  v2 = v0[15];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_252C1EE50()
{
  v1 = v0[12];
  v2 = v0[2];

  v3 = v0[14];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252C1EEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[17];
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[16];
  sub_25293847C(v4[7], &qword_27F540298, &unk_252E3C270);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1F06C, 0, 0);
  }

  else
  {
    v8 = v4[7];

    v9 = v6[1];

    return v9(a1);
  }
}

uint64_t sub_252C1F06C()
{
  v1 = v0[18];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1F0D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_252C1F0F0, 0, 0);
}

uint64_t sub_252C1F0F0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_252B2F098();
  if (sub_252B2FB08())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v5 = v0[6];
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D18);
    sub_252E379F4();

    MEMORY[0x2530AD570](v2, v3);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E8AE30, 0xD00000000000008FLL, 0x8000000252E6B430);

    v0[7] = *(v5 + 64);
    v7 = "secureFailureResponses";
    v8 = *(MEMORY[0x277D55C70] + 4);
    v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v10 = sub_252C1F688;
    goto LABEL_5;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v2, v3);
  sub_252CC3D90(0xD000000000000030, 0x8000000252E8AD90, 0xD00000000000008FLL, 0x8000000252E6B430);

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v0[19] = *(v0[6] + 64);
      v21 = *(MEMORY[0x277D55C70] + 4);
      v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v22 = swift_task_alloc();
      v0[20] = v22;
      *v22 = v0;
      v22[1] = sub_252C1FC4C;
      v11 = MEMORY[0x277D84F90];
      v13 = 0xD000000000000027;
      v12 = 0x8000000252E8A450;
      goto LABEL_6;
    }

    if (v4 == 5)
    {
      v0[13] = *(v0[6] + 64);
      v17 = *(MEMORY[0x277D55C70] + 4);
      v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v18 = swift_task_alloc();
      v0[14] = v18;
      *v18 = v0;
      v18[1] = sub_252C1F99C;
      v11 = MEMORY[0x277D84F90];
      v12 = 0x8000000252E8A3F0;
      v13 = 0xD000000000000024;
      goto LABEL_6;
    }
  }

  else
  {
    if (v4 == 2)
    {
      v0[10] = *(v0[6] + 64);
      v7 = "ceneEnabledSecureScene";
      v20 = *(MEMORY[0x277D55C70] + 4);
      v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v9 = swift_task_alloc();
      v0[11] = v9;
      *v9 = v0;
      v10 = sub_252C1F844;
      goto LABEL_5;
    }

    if (v4 == 3)
    {
      v0[16] = *(v0[6] + 64);
      v7 = "ceneEnabledGoodNight";
      v16 = *(MEMORY[0x277D55C70] + 4);
      v23 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v10 = sub_252C1FAF4;
LABEL_5:
      v9[1] = v10;
      v11 = MEMORY[0x277D84F90];
      v12 = v7 | 0x8000000000000000;
      v13 = 0xD000000000000026;
LABEL_6:

      return v23(v13, v12, v11);
    }
  }

  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E8ADD0);
  v0[4] = v4;
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000024, 0x8000000252E8AE00, 686);

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_252C1F688(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1F7E0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 56);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C1F7E0()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C1F844(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FDA4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 80);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C1F99C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FE08, 0, 0);
  }

  else
  {
    v7 = *(v4 + 104);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252C1FAF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1FE6C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 128);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}