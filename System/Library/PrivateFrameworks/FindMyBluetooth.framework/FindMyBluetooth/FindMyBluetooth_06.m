uint64_t dispatch thunk of PeripheralProtocol.pair()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 152);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.unpair()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 160);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.set(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.discover(serviceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2A800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

double Device.init(identifier:btAddress:model:channel:rssi:bleAdvertisementTimestamp:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for Device();
  v19 = v18[5];
  v20 = sub_24ACD0090();
  (*(*(v20 - 8) + 32))(a7 + v19, a2, v20);
  v21 = (a7 + v18[6]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 8;
  v22 = (a7 + v18[7]);
  *v22 = v15;
  v22[1] = v16;
  v23 = (a7 + v18[8]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v18[9]);
  *v24 = 0;
  v24[1] = 0;
  *(a7 + v18[10]) = a5;
  *(a7 + v18[11]) = a8;
  *(a7 + v18[12]) = 4;
  v25 = (a7 + v18[14]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (a7 + v18[15]);
  *v26 = 0;
  v26[1] = 0;
  *(a7 + v18[17]) = 0;
  *(a7 + v18[18]) = 0;
  result = 0.0;
  *(a7 + v18[16]) = xmmword_24ACD39F0;
  *(a7 + v18[13]) = 0;
  return result;
}

uint64_t type metadata accessor for Device()
{
  result = qword_2814AD358;
  if (!qword_2814AD358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RSSIValue.rawValue.getter()
{
  if (v0[1])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t RSSIValue.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

uint64_t RSSIValue.description.getter()
{
  if (v0[1] == 1)
  {
    v4 = 0x6E776F6E6B6E752ELL;
  }

  else
  {
    v4 = 0x28697373722ELL;
    v3 = *v0;
  }

  v1 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v4;
}

uint64_t static RSSIValue.< infix(_:_:)(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

_BYTE *sub_24ACAA098@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result | ((*result == 0) << 8);
  *(a2 + 2) = 0;
  return result;
}

void sub_24ACAA0B4(_BYTE *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 0;
  }

  else
  {
    v2 = *v1;
  }

  *a1 = v2;
}

uint64_t sub_24ACAA0CC(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

uint64_t sub_24ACAA10C(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == 1)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  return *a2 >= *a1;
}

uint64_t sub_24ACAA154(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  return *a1 >= *a2;
}

uint64_t sub_24ACAA19C(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == 1)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  return *a2 < *a1;
}

BOOL sub_24ACAA290(char *a1, char *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (a2[1])
  {
    v2 = 0;
  }

  return v3 == v2;
}

FindMyBluetooth::ObjectBatteryState_optional __swiftcall ObjectBatteryState.init(rawValue:)(FindMyBluetooth::ObjectBatteryState_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = FindMyBluetooth_ObjectBatteryState_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_24ACAA2E0()
{
  v1 = *v0;
  sub_24ACD0D10();
  sub_24ACD0D30();
  return sub_24ACD0D50();
}

uint64_t sub_24ACAA328()
{
  v1 = *v0;
  sub_24ACD0D10();
  sub_24ACD0D30();
  return sub_24ACD0D50();
}

uint64_t Device.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Device.btAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Device() + 20);
  v4 = sub_24ACD0090();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Device.manufacturerData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Device() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_24ACAA584(v4, v5, v6);
}

uint64_t sub_24ACAA584(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_24AC46630(a2, a3);
  }

  return result;
}

uint64_t Device.rssi.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t Device.model.getter()
{
  v1 = (v0 + *(type metadata accessor for Device() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Device.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Device() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Device.batteryLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t Device.setupFont.getter()
{
  v1 = (v0 + *(type metadata accessor for Device() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Device.setupMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for Device() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Device.engravingData.getter()
{
  v1 = v0 + *(type metadata accessor for Device() + 64);
  v2 = *v1;
  sub_24AC4661C(*v1, *(v1 + 8));
  return v2;
}

void sub_24ACAA80C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v174 = (&v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v170 = &v162 - v8;
  v9 = sub_24ACD0090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v175 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v171 = &v162 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v162 - v17;
  v19 = sub_24ACD0420();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v162 - v25;
  v27 = [a1 identifier];
  if (!v27)
  {
    goto LABEL_4;
  }

  v169 = v24;
  v172 = v10;
  v173 = v9;
  v28 = v27;
  sub_24ACD0590();

  sub_24ACD03B0();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24AC212F4(v18, &qword_27EF9EC40, &qword_24ACD8620);
LABEL_4:
    sub_24AC207C0();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();

    return;
  }

  (*(v20 + 32))(v26, v18, v19);
  v30 = [a1 bleAppleManufacturerData];
  v168 = v26;
  v166 = v19;
  if (v30)
  {
    v31 = v30;
    v32 = sub_24ACD02D0();
    v34 = v33;

    sub_24ACC203C(v32, v34, &v177);
    v35 = v2;
    if (v2)
    {

      v165 = 0;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v38 = 8;
    }

    else
    {
      v36 = v178;
      v37 = v179;
      v38 = v177 | (BYTE1(v177) << 8);
      v165 = ((1 << SBYTE1(v177)) & 0xDF) == 0;
    }

    v41 = (v176 + *(type metadata accessor for Device() + 24));
    *v41 = v38;
    v41[1] = v36;
    v41[2] = v37;
  }

  else
  {
    v39 = type metadata accessor for Device();
    v165 = 0;
    v40 = (v176 + *(v39 + 24));
    v40[1] = 0;
    v40[2] = 0;
    *v40 = 8;
    v35 = v2;
  }

  v42 = v173;
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v43 = sub_24ACD0490();
  v44 = __swift_project_value_buffer(v43, qword_2814AEE10);
  v45 = a1;
  v164 = v44;
  v46 = sub_24ACD0470();
  v47 = sub_24ACD0900();

  v48 = os_log_type_enabled(v46, v47);
  v167 = v20;
  if (v48)
  {
    v163 = v35;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v180 = v50;
    *v49 = 136315138;
    v51 = [v45 bleAddressData];
    if (v51)
    {
      v52 = v51;
      v53 = v45;
      v54 = sub_24ACD02D0();
      v56 = v55;

      v177 = v54;
      v178 = v56;
      sub_24AC467AC();
      v57 = sub_24ACD0180();
      v59 = v58;
      v60 = v54;
      v45 = v53;
      v20 = v167;
      sub_24AC46698(v60, v56);
    }

    else
    {
      v57 = 0;
      v59 = 0xE000000000000000;
    }

    v61 = sub_24AC29E20(v57, v59, &v180);

    *(v49 + 4) = v61;
    _os_log_impl(&dword_24AC18000, v46, v47, "bleAddressData: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C22DC60](v50, -1, -1);
    MEMORY[0x24C22DC60](v49, -1, -1);

    v35 = v163;
    v42 = v173;
  }

  else
  {
  }

  v62 = [v45 bleAddressData];
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v62;
  v64 = sub_24ACD02D0();
  v66 = v65;

  v67 = v66 >> 62;
  if ((v66 >> 62) > 1)
  {
    if (v67 != 2)
    {
      goto LABEL_31;
    }

    v69 = *(v64 + 16);
    v68 = *(v64 + 24);
    v70 = __OFSUB__(v68, v69);
    v71 = v68 - v69;
    if (!v70)
    {
      if (v71 == 7)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (v67)
  {
    if (!__OFSUB__(HIDWORD(v64), v64))
    {
      if (HIDWORD(v64) - v64 == 7)
      {
        goto LABEL_27;
      }

LABEL_31:
      sub_24AC46698(v64, v66);
      goto LABEL_32;
    }

    goto LABEL_71;
  }

  if (BYTE6(v66) != 7)
  {
    goto LABEL_31;
  }

LABEL_27:
  sub_24ACD02F0();
  sub_24ACD02B0();
  v72 = v170;
  sub_24ACD0070();
  v73 = v172;
  if ((*(v172 + 48))(v72, 1, v42) == 1)
  {
    sub_24AC46698(v64, v66);
    sub_24AC212F4(v72, &qword_27EF9E048, &qword_24ACD5910);
LABEL_32:
    v74 = [v45 btAddressData];
    v75 = v176;
    if (!v74)
    {
LABEL_35:
      sub_24AC207C0();
      swift_allocError();
      *v82 = 3;
      swift_willThrow();

      (*(v20 + 8))(v168, v166);
      v83 = type metadata accessor for Device();
      sub_24ACAC4A4(*(v75 + *(v83 + 24)), *(v75 + *(v83 + 24) + 8), *(v75 + *(v83 + 24) + 16));
      return;
    }

    v76 = v74;
    v77 = sub_24ACD02D0();
    v79 = v78;

    sub_24AC46630(v77, v79);
    v80 = v174;
    sub_24ACD0070();
    v81 = v172;
    if ((*(v172 + 48))(v80, 1, v42) == 1)
    {
      sub_24AC46698(v77, v79);
      sub_24AC212F4(v80, &qword_27EF9E048, &qword_24ACD5910);
      v20 = v167;
      goto LABEL_35;
    }

    v84 = *(v81 + 32);
    v172 = v81 + 32;
    v84(v175, v80, v42);
    sub_24AC46630(v77, v79);
    v85 = sub_24ACD0470();
    v86 = sub_24ACD08F0();
    sub_24AC46698(v77, v79);
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v174 = v45;
      v88 = v87;
      v171 = swift_slowAlloc();
      v180 = v171;
      *v88 = 136315394;
      v177 = v77;
      v178 = v79;
      sub_24AC467AC();
      v89 = sub_24ACD0180();
      v91 = v84;
      v92 = v35;
      v93 = sub_24AC29E20(v89, v90, &v180);

      *(v88 + 4) = v93;
      *(v88 + 12) = 2080;
      v94 = sub_24ACD0010();
      v96 = sub_24AC29E20(v94, v95, &v180);

      *(v88 + 14) = v96;
      v35 = v92;
      v84 = v91;
      _os_log_impl(&dword_24AC18000, v85, v86, "Using classic/public btAddressData: %s with type: %s", v88, 0x16u);
      v97 = v171;
      swift_arrayDestroy();
      v42 = v173;
      MEMORY[0x24C22DC60](v97, -1, -1);
      v98 = v88;
      v45 = v174;
      MEMORY[0x24C22DC60](v98, -1, -1);
      sub_24AC46698(v77, v79);
    }

    else
    {

      sub_24AC46698(v77, v79);
    }

    v99 = type metadata accessor for Device();
    v100 = v176;
    v84((v176 + v99[5]), v175, v42);
    v101 = v168;
    goto LABEL_44;
  }

  v102 = *(v73 + 32);
  v172 = v73 + 32;
  v175 = v102;
  (v102)(v171, v72, v42);
  sub_24AC46630(v64, v66);
  v103 = sub_24ACD0470();
  v104 = sub_24ACD0930();
  sub_24AC46698(v64, v66);
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v174 = v45;
    v107 = v106;
    v180 = v106;
    *v105 = 136315138;
    v177 = v64;
    v178 = v66;
    sub_24AC467AC();
    v108 = sub_24ACD0180();
    v110 = v35;
    v111 = sub_24AC29E20(v108, v109, &v180);

    *(v105 + 4) = v111;
    v35 = v110;
    v42 = v173;
    _os_log_impl(&dword_24AC18000, v103, v104, "bleAddressData is available: %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    v112 = v107;
    v45 = v174;
    MEMORY[0x24C22DC60](v112, -1, -1);
    MEMORY[0x24C22DC60](v105, -1, -1);
    sub_24AC46698(v64, v66);
  }

  else
  {

    sub_24AC46698(v64, v66);
  }

  v113 = v168;
  v99 = type metadata accessor for Device();
  v100 = v176;
  (v175)(v176 + v99[5], v171, v42);
  v101 = v113;
LABEL_44:
  v114 = v166;
  (*(v167 + 16))(v169, v101, v166);
  type metadata accessor for Device();
  sub_24ACD0000();
  v115 = [v45 rssi];
  v116 = (v100 + v99[7]);
  *v116 = v115;
  v116[1] = v115 == 0;
  v117 = [v45 model];
  if (v117)
  {
    v118 = v117;
    v119 = sub_24ACD0590();
    v121 = v120;
  }

  else
  {
    v119 = 0;
    v121 = 0;
  }

  v122 = (v100 + v99[8]);
  *v122 = v119;
  v122[1] = v121;
  v123 = [v45 name];
  if (v123)
  {
    v124 = v123;
    v125 = sub_24ACD0590();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v128 = (v100 + v99[9]);
  *v128 = v125;
  v128[1] = v127;
  *(v100 + v99[10]) = [v45 bleChannel];
  [v45 bleAdvertisementTimestamp];
  *(v100 + v99[11]) = v129;
  v130 = [v45 objectSetupBatteryState];
  if (v130 >= 4)
  {
    v131 = 4;
  }

  else
  {
    v131 = v130;
  }

  *(v100 + v99[12]) = v131;
  v132 = [v45 objectSetupFontCode];
  if (v132)
  {
    v133 = v132;
    v134 = sub_24ACD0590();
    v136 = v135;
  }

  else
  {
    v134 = 0;
    v136 = 0;
  }

  v137 = (v100 + v99[14]);
  *v137 = v134;
  v137[1] = v136;
  v138 = [v45 objectSetupMessage];
  if (v138)
  {
    v139 = v138;
    v140 = sub_24ACD0590();
    v142 = v141;
  }

  else
  {
    v140 = 0;
    v142 = 0;
  }

  v143 = (v100 + v99[15]);
  *v143 = v140;
  v143[1] = v142;
  v144 = [v45 productID];
  v145 = &selRef_proximityPairingProductID;
  if (v144)
  {
    v145 = &selRef_productID;
  }

  *(v100 + v99[17]) = [v45 *v145];
  *(v100 + v99[18]) = [v45 vendorID];
  sub_24ACAC580(v45);
  v149 = v148;
  v150 = v45;
  if (v35)
  {
    v151 = sub_24ACD0470();
    v152 = sub_24ACD08F0();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138543362;
      sub_24ACAD4C4();
      swift_allocError();
      *v155 = v149;
      v156 = _swift_stdlib_bridgeErrorToNSError();
      *(v153 + 4) = v156;
      *v154 = v156;
      _os_log_impl(&dword_24AC18000, v151, v152, "No engraving data found: %{public}@", v153, 0xCu);
      sub_24AC212F4(v154, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v154, -1, -1);
      MEMORY[0x24C22DC60](v153, -1, -1);
      v157 = v150;
    }

    else
    {
      v157 = v151;
      v151 = v150;
    }

    (*(v167 + 8))(v168, v114);
    *(v100 + v99[16]) = xmmword_24ACD39F0;
    *(v100 + v99[13]) = 0;
  }

  else
  {
    v158 = v146;
    v159 = v147;
    (*(v167 + 8))(v168, v114);

    if ((v149 & 0x100000000) != 0)
    {
      v160 = 0;
    }

    else
    {
      v160 = v149;
    }

    *(v100 + v99[13]) = v160;
    v161 = (v100 + v99[16]);
    *v161 = v158;
    v161[1] = v159;
  }
}

uint64_t sub_24ACAB720@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Device.description.getter()
{
  v1 = v0;
  v2 = sub_24ACD0360();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  v33 = 0;
  *&v34 = 0xE000000000000000;
  sub_24ACD0A20();
  v35 = v33;
  v36 = v34;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v8 = type metadata accessor for Device();
  sub_24ACABB80(&qword_27EF9E8A0, type metadata accessor for Device);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  sub_24ACABEAC(&qword_27EF9E930);
  v10 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v11 = v8[5];
  sub_24ACD0090();
  sub_24ACABB80(&qword_27EF9E080, MEMORY[0x277D088D0]);
  v12 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](0x3A656D616E20, 0xE600000000000000);
  v13 = (v1 + v8[9]);
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v13[1];
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x24C22CD50](v15, v16);

  MEMORY[0x24C22CD50](0x3A6C65646F6D20, 0xE700000000000000);
  v17 = (v1 + v8[8]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v17[1];
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x24C22CD50](v19, v20);

  MEMORY[0x24C22CD50](0x3A6973737220, 0xE600000000000000);
  v21 = (v1 + v8[7]);
  v22 = *v21;
  LOBYTE(v21) = v21[1];
  LOBYTE(v33) = v22;
  BYTE1(v33) = v21;
  v23 = RSSIValue.description.getter();
  MEMORY[0x24C22CD50](v23);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA840);
  v24 = v1 + v8[6];
  if (*v24 == 8)
  {
    v25 = 0;
  }

  else
  {
    LOWORD(v33) = *v24;
    v34 = *(v24 + 8);
    v25 = BluetoothManufacturerAdvertisementData.description.getter();
    v7 = v26;
  }

  MEMORY[0x24C22CD50](v25, v7);

  MEMORY[0x24C22CD50](0x617473656D69740ALL, 0xEB000000003A706DLL);
  v27 = *(v1 + v8[11]);
  sub_24ACD0310();
  v28 = sub_24ACD0330();
  v30 = v29;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x24C22CD50](v28, v30);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v35;
}

uint64_t sub_24ACABB80(unint64_t *a1, void (*a2)(uint64_t))
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

double static Device.emptyDevice.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24ACD0360();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24ACD0420();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24ACD0410();
  v9 = type metadata accessor for Device();
  sub_24ACD0000();
  v10 = a1 + v9[5];
  sub_24ACD0020();
  sub_24ACD0340();
  sub_24ACD0320();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  v13 = (a1 + v9[6]);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 8;
  *(a1 + v9[7]) = 256;
  v14 = (a1 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[9]);
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v9[10]) = 0;
  *(a1 + v9[11]) = v12;
  *(a1 + v9[12]) = 4;
  v16 = (a1 + v9[14]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v9[15]);
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v9[17]) = 0;
  *(a1 + v9[18]) = 0;
  result = 0.0;
  *(a1 + v9[16]) = xmmword_24ACD39F0;
  *(a1 + v9[13]) = 0;
  return result;
}

unint64_t sub_24ACABDCC()
{
  result = qword_27EF9E8A8;
  if (!qword_27EF9E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8A8);
  }

  return result;
}

unint64_t sub_24ACABE24()
{
  result = qword_27EF9E8B0;
  if (!qword_27EF9E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8B0);
  }

  return result;
}

uint64_t sub_24ACABEAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E898, &qword_24ACD66C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RSSIValue(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for RSSIValue(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_24ACAC02C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24ACAC04C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectBatteryState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectBatteryState(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_24ACAC1F8()
{
  sub_24ACAC358();
  if (v0 <= 0x3F)
  {
    sub_24ACD0090();
    if (v1 <= 0x3F)
    {
      sub_24ACAC3B0(319, &qword_2814AE1E8);
      if (v2 <= 0x3F)
      {
        sub_24ACAC3B0(319, &unk_2814AD040);
        if (v3 <= 0x3F)
        {
          sub_24ACAC3B0(319, qword_2814AD368);
          if (v4 <= 0x3F)
          {
            sub_24ACAC3B0(319, &unk_2814AE208);
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

void sub_24ACAC358()
{
  if (!qword_2814AE230)
  {
    type metadata accessor for Device();
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE230);
    }
  }
}

void sub_24ACAC3B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24ACD0970();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_24ACAC3FC()
{
  result = qword_27EF9E8C0;
  if (!qword_27EF9E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8C0);
  }

  return result;
}

unint64_t sub_24ACAC450()
{
  result = qword_27EF9E8C8;
  if (!qword_27EF9E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8C8);
  }

  return result;
}

uint64_t sub_24ACAC4A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_24AC46698(a2, a3);
  }

  return result;
}

void sub_24ACAC4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_24ACAC580(void *a1)
{
  v1 = a1;
  v2 = [a1 bleAppleManufacturerData];
  if (!v2)
  {
    LOBYTE(v131) = 0;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    return;
  }

  v3 = v2;
  v4 = sub_24ACD02D0();
  v6 = v5;

  v131 = v4;
  v132 = v6;
  sub_24AC467AC();
  log = sub_24ACD0170();
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v7 = sub_24ACD0490();
  __swift_project_value_buffer(v7, qword_2814AEE10);

  v8 = sub_24ACD0470();
  v9 = sub_24ACD0900();

  if (os_log_type_enabled(v8, v9))
  {
    v128 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v131 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x24C22CE70](log, MEMORY[0x277D84B78]);
    v14 = sub_24AC29E20(v12, v13, &v131);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24AC18000, v8, v9, "advertisement.deprecated_bytes = %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    v15 = v10;
    v1 = v128;
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  isa = log[2].isa;
  if (isa < 5)
  {

    LOBYTE(v131) = 1;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
    v32 = v6;
LABEL_26:
    sub_24AC46698(v31, v32);
    return;
  }

  v129 = v6;
  v17 = BYTE4(log[4].isa);
  v18 = v1;
  v19 = sub_24ACD0470();
  v20 = sub_24ACD0900();

  if (os_log_type_enabled(v19, v20))
  {
    v124 = v4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131 = v22;
    *v21 = 136315394;
    LOWORD(v133) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v23 = sub_24ACD05A0();
    v126 = isa;
    v25 = sub_24AC29E20(v23, v24, &v131);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    LOBYTE(v133) = [v18 proximityPairingSubType];
    v26 = sub_24ACD0C20();
    v28 = sub_24AC29E20(v26, v27, &v131);

    *(v21 + 14) = v28;
    isa = v126;
    _os_log_impl(&dword_24AC18000, v19, v20, "Read subType = %s.\nCBDevice.proximityPairingSubType = %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v22, -1, -1);
    v29 = v21;
    v4 = v124;
    MEMORY[0x24C22DC60](v29, -1, -1);
  }

  if (v17 != 9 && v17 != 5)
  {

    v39 = sub_24ACD0470();
    v40 = sub_24ACD0930();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v131 = v42;
      *v41 = 136315138;
      LOWORD(v133) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
      v43 = sub_24ACD05A0();
      v45 = sub_24AC29E20(v43, v44, &v131);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_24AC18000, v39, v40, "Unsupported subtype for custom engraving reading: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C22DC60](v42, -1, -1);
      MEMORY[0x24C22DC60](v41, -1, -1);
    }

    v30 = 2;
    goto LABEL_24;
  }

  if (isa < 7)
  {

    v30 = 3;
LABEL_24:
    LOBYTE(v131) = v30;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
LABEL_25:
    v32 = v129;
    goto LABEL_26;
  }

  v127 = isa;
  if (log[2].isa < 7)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_24ACAC4C0(log, &log[4], 5, 0xFuLL);
  v34 = *(v33 + 32);

  v35 = v18;
  v36 = sub_24ACD0470();
  v37 = sub_24ACD0900();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 33554944;
    *(v38 + 4) = v34;
    *(v38 + 6) = 1024;
    *(v38 + 8) = [v35 productID];

    _os_log_impl(&dword_24AC18000, v36, v37, "Read productIDValue = %hu,\nCBDevice.productID = %u.", v38, 0xCu);
    MEMORY[0x24C22DC60](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  if (v127 == 7)
  {

    v30 = 4;
    goto LABEL_24;
  }

  v125 = v4;
  if (log[2].isa < 8)
  {
    goto LABEL_63;
  }

  isa_high = HIBYTE(log[4].isa);
  v47 = isa_high & 0x10;
  v48 = v35;
  v49 = sub_24ACD0470();
  v50 = sub_24ACD0900();

  v122 = isa_high & 0x20;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v131 = v119;
    *v51 = 136315906;
    LODWORD(v133) = isa_high;
    type metadata accessor for CBObjectSetupFlags(0);
    v52 = sub_24ACD05A0();
    v54 = sub_24AC29E20(v52, v53, &v131);

    *(v51 + 4) = v54;
    v47 = isa_high & 0x10;
    *(v51 + 12) = 1024;
    *(v51 + 14) = v47 >> 4;
    *(v51 + 18) = 1024;
    *(v51 + 20) = (isa_high & 0x20) >> 5;
    *(v51 + 24) = 2080;
    LODWORD(v133) = [v48 objectSetupFlags];
    v55 = sub_24ACD05A0();
    v57 = sub_24AC29E20(v55, v56, &v131);

    *(v51 + 26) = v57;
    _os_log_impl(&dword_24AC18000, v49, v50, "Read flags = %s, personalized = %{BOOL}d, zeus = %{BOOL}d,\nCBDevice.objectSetupFlags = %s.", v51, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v119, -1, -1);
    MEMORY[0x24C22DC60](v51, -1, -1);
  }

  if (v127 < 9)
  {

    LOBYTE(v131) = 5;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
    goto LABEL_25;
  }

  v120 = v47;
  if (log[2].isa < 9)
  {
    goto LABEL_64;
  }

  isa_low = LOBYTE(log[5].isa);
  v59 = v48;
  v60 = sub_24ACD0470();
  v61 = sub_24ACD0900();

  v118 = isa_low;
  if (os_log_type_enabled(v60, v61))
  {
    v62 = isa_low & 3;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v131 = v64;
    *v63 = 136315394;
    LOWORD(v133) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v65 = sub_24ACD05A0();
    v67 = sub_24AC29E20(v65, v66, &v131);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    LOBYTE(v133) = [v59 objectDiscoveryBatteryState];
    v68 = sub_24ACD0C20();
    v70 = sub_24AC29E20(v68, v69, &v131);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_24AC18000, v60, v61, "Read batteryState = %s,\nCBDevice.objectDiscoveryBatteryState = %s.", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v64, -1, -1);
    MEMORY[0x24C22DC60](v63, -1, -1);
  }

  v71 = v59;
  v72 = sub_24ACD0470();
  v73 = sub_24ACD0900();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v131 = v75;
    *v74 = 136315394;
    LOWORD(v133) = (v118 >> 2) & 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v76 = sub_24ACD05A0();
    v78 = sub_24AC29E20(v76, v77, &v131);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    LOBYTE(v133) = [v71 objectSetupBatteryPerformance];
    v79 = sub_24ACD0C20();
    v81 = sub_24AC29E20(v79, v80, &v131);

    *(v74 + 14) = v81;
    _os_log_impl(&dword_24AC18000, v72, v73, "Read batteryPerformance = %s,\nCBDevice.objectSetupBatteryPerformance = %s.", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v75, -1, -1);
    MEMORY[0x24C22DC60](v74, -1, -1);
  }

  if (v127 == 9)
  {

    LOBYTE(v131) = 6;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v125;
    goto LABEL_25;
  }

  if (v122)
  {
    v82 = 99;
    goto LABEL_43;
  }

  if (log[2].isa < 0xA)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v82 = BYTE1(log[5].isa);
LABEL_43:
  v83 = v71;
  v84 = sub_24ACD0470();
  v85 = sub_24ACD0900();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 67109376;
    *(v86 + 4) = v82;
    *(v86 + 8) = 256;
    *(v86 + 10) = [v83 objectSetupColorCode];

    _os_log_impl(&dword_24AC18000, v84, v85, "Read color = %u, CBDevice.objectSetupColorCode = %hhu.", v86, 0xBu);
    MEMORY[0x24C22DC60](v86, -1, -1);
  }

  else
  {

    v84 = v83;
  }

  if (v127 < 0x1C || !v120)
  {

    v104 = sub_24ACD0470();
    v105 = sub_24ACD0930();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134218240;
      *(v106 + 4) = v127 - 10;
      *(v106 + 12) = 1024;
      *(v106 + 14) = v120 >> 4;
      _os_log_impl(&dword_24AC18000, v104, v105, "No engraving data. Data size: %ld, personalized: %{BOOL}d.", v106, 0x12u);
      MEMORY[0x24C22DC60](v106, -1, -1);
    }

    sub_24AC46698(v125, v129);

    goto LABEL_61;
  }

  if (log[2].isa >= v127)
  {
    sub_24AC702C0(log, &log[4], 11, (2 * v127) | 1);
    v88 = v87;
    v90 = v89;
    v91 = v83;
    sub_24AC46630(v88, v90);
    v92 = sub_24ACD0470();
    v93 = sub_24ACD0900();
    sub_24AC46698(v88, v90);

    if (os_log_type_enabled(v92, v93))
    {
      v123 = v93;
      v94 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v133 = v121;
      *v94 = 136315650;
      sub_24AC46630(v88, v90);
      v95 = sub_24ACD0260();
      v97 = v96;
      sub_24AC46698(v88, v90);
      v98 = sub_24AC29E20(v95, v97, &v133);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      v99 = [v91 objectSetupFontCode];
      if (v99)
      {
        v100 = v99;
        v101 = sub_24ACD0590();
        v103 = v102;
      }

      else
      {
        v101 = 0;
        v103 = 0;
      }

      v131 = v101;
      v132 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8E0, &unk_24ACD6A10);
      v107 = sub_24ACD05A0();
      v109 = sub_24AC29E20(v107, v108, &v133);

      *(v94 + 14) = v109;
      *(v94 + 22) = 2080;
      v110 = [v91 objectSetupMessage];
      if (v110)
      {
        v111 = v110;
        v112 = sub_24ACD0590();
        v114 = v113;
      }

      else
      {
        v112 = 0;
        v114 = 0;
      }

      v131 = v112;
      v132 = v114;
      v115 = sub_24ACD05A0();
      v117 = sub_24AC29E20(v115, v116, &v133);

      *(v94 + 24) = v117;
      _os_log_impl(&dword_24AC18000, v92, v123, "Read engravingData = %s,\nCBDevice.objectSetupFontCode = %s, CBDevice.objectSetupMessage = %s.", v94, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v121, -1, -1);
      MEMORY[0x24C22DC60](v94, -1, -1);
      sub_24AC46698(v125, v129);
    }

    else
    {
      sub_24AC46698(v125, v129);
    }

LABEL_61:
    LOBYTE(v131) = 0;
    return;
  }

LABEL_66:
  __break(1u);
}

unint64_t sub_24ACAD4C4()
{
  result = qword_27EF9E8D0;
  if (!qword_27EF9E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8D0);
  }

  return result;
}

unint64_t sub_24ACAD52C()
{
  result = qword_27EF9E8E8;
  if (!qword_27EF9E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8E8);
  }

  return result;
}

_BYTE *CBDiscovery.Config.init(useCase:discoveryFlags:discoveryTypes:oobKeys:scanRate:rssiThreshold:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a5;
  v9 = *a6;
  v10 = *(a6 + 2);
  *a7 = *result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v8;
  *(a7 + 33) = v9;
  *(a7 + 35) = v10;
  return result;
}

uint64_t sub_24ACAD5BC()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for MockCBDiscovery();
  v1 = sub_24ACBAB14(&qword_27EF9EBE0, type metadata accessor for MockCBDiscovery);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACAD710()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for CBDiscovery(0);
  v1 = sub_24ACBAB14(&qword_2814ADD90, type metadata accessor for CBDiscovery);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACAD860()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814ADDB0);
  v1 = __swift_project_value_buffer(v0, qword_2814ADDB0);
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AEE10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CBDiscovery.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

FindMyBluetooth::ScanRate_optional sub_24ACAD9AC@<W0>(_BYTE *a1@<X8>)
{
  result.value = ScanRate.init(rawValue:)([*(v1 + 112) bleScanRate]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void *sub_24ACAD9FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for Device();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v27 - v10);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v12;
  v13 = [*(v0 + 112) discoveredDevices];
  sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
  v14 = sub_24ACD0700();

  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v25)
  {
    v17 = 0;
    v34 = v15 & 0xC000000000000001;
    v32 = v11;
    v33 = v15 & 0xFFFFFFFFFFFFFF8;
    v30 = (v29 + 48);
    v31 = (v29 + 56);
    v11 = MEMORY[0x277D84F90];
    v27 = v5;
    while (v34)
    {
      v18 = v15;
      v15 = MEMORY[0x24C22D1B0](v17);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v20 = v15;
      v21 = v32;
      sub_24ACAA80C(v20, v32);
      sub_24ACADDD0(v21, v4);
      (*v31)(v4, 0, 1, v5);

      if ((*v30)(v4, 1, v5) == 1)
      {
        sub_24AC212F4(v4, &unk_27EF9E8F0, &qword_24ACD6AE8);
      }

      else
      {
        v22 = v28;
        sub_24ACADDD0(v4, v28);
        sub_24ACADDD0(v22, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_24AC1D768(0, v11[2] + 1, 1, v11);
        }

        v24 = v11[2];
        v23 = v11[3];
        if (v24 >= v23 >> 1)
        {
          v11 = sub_24AC1D768(v23 > 1, v24 + 1, 1, v11);
        }

        v11[2] = v24 + 1;
        sub_24ACADDD0(v35, v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24);
        v5 = v27;
      }

      ++v17;
      v15 = v18;
      if (v19 == i)
      {
        goto LABEL_21;
      }
    }

    if (v17 >= *(v33 + 16))
    {
      goto LABEL_18;
    }

    v18 = v15;
    v15 = *(v15 + 8 * v17 + 32);
    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v25 = v15;
    i = sub_24ACD0B30();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:

  return v11;
}

uint64_t sub_24ACADDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CBDiscovery.devices(with:)(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24ACB9734(a1);
}

uint64_t sub_24ACADEDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24ACADF8C;

  return sub_24AC7B474(&unk_285E25A98);
}

uint64_t sub_24ACADF8C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ACAE0C0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(_BYTE *a1, _BYTE *a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC1DF38;

  return CBDiscovery.init(scanRate:rssiThreshold:)(a1, a2);
}

uint64_t CBDiscovery.init(scanRate:rssiThreshold:)(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 208) = v2;
  v6 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 232) = *a1;
  *(v3 + 233) = *a2;
  *(v3 + 234) = a2[1];

  return MEMORY[0x2822009F8](sub_24ACAE248, 0, 0);
}

uint64_t sub_24ACAE248()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_defaultActor_initialize();
  *(v2 + 112) = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold;
  v0[28] = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold;
  *(v2 + v5) = 256;
  sub_24ACD0410();
  type metadata accessor for CBDiscovery(0);
  sub_24ACD0000();

  return MEMORY[0x2822009F8](sub_24ACAE368, v2, 0);
}

uint64_t sub_24ACAE368()
{
  v56 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AC29E20(0xD00000000000001DLL, 0x800000024ACDA8B0, &v53);
    *(v5 + 12) = 2082;
    if (v4 <= 3)
    {
      v15 = 0x6E776F6E6B6E752ELL;
      v16 = 0xE900000000000063;
      v17 = 0x69646F697265702ELL;
      if (v4 != 2)
      {
        v17 = 0x6F72676B6361622ELL;
        v16 = 0xEB00000000646E75;
      }

      if (v4)
      {
        v15 = 0x746C75616665642ELL;
      }

      if (v4 <= 1)
      {
        v13 = v15;
      }

      else
      {
        v13 = v17;
      }

      if (v4 <= 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6D756964656D2ELL;
      v9 = 0xE500000000000000;
      v10 = 0x686769682ELL;
      if (v4 != 7)
      {
        v10 = 2019650862;
        v9 = 0xE400000000000000;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xE400000000000000;
      v12 = 2003790894;
      if (v4 != 4)
      {
        v12 = 0x4C6D756964656D2ELL;
        v11 = 0xEA0000000000776FLL;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v18 = *(v0 + 234);
    v19 = *(v0 + 233);
    v20 = sub_24AC29E20(v13, v14, &v53);

    *(v5 + 14) = v20;
    *(v5 + 22) = 2082;
    v54 = v19;
    v55 = v18;
    v21 = RSSIValue.description.getter();
    v23 = sub_24AC29E20(v21, v22, &v53);

    *(v5 + 24) = v23;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s scanRate:%{public}s rssiThreshold:%{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v24 = *(v0 + 234);
  v25 = *(v0 + 232);
  v26 = v0[26];
  v27 = (v26 + v0[28]);
  *v27 = *(v0 + 233);
  v27[1] = v24;
  v28 = *(v26 + 112);
  v29 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_24ACBA514;
  v0[7] = v29;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24ACAF7A4;
  v0[5] = &block_descriptor_0;
  v30 = _Block_copy(v0 + 2);
  v31 = v0[7];
  v32 = v28;

  [v32 setDeviceFoundHandler_];
  _Block_release(v30);

  v33 = *(v26 + 112);
  v34 = swift_allocObject();
  swift_weakInit();
  v0[12] = sub_24ACBA570;
  v0[13] = v34;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24ACB0134;
  v0[11] = &block_descriptor_7;
  v35 = _Block_copy(v0 + 8);
  v36 = v0[13];
  v37 = v33;

  [v37 setDevicesBufferedHandler_];
  _Block_release(v35);

  v38 = *(v26 + 112);
  v39 = swift_allocObject();
  swift_weakInit();
  v0[18] = sub_24ACBA578;
  v0[19] = v39;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24ACAF7A4;
  v0[17] = &block_descriptor_11;
  v40 = _Block_copy(v0 + 14);
  v41 = v0[19];
  v42 = v38;

  [v42 setDeviceLostHandler_];
  _Block_release(v40);

  v43 = *(v26 + 112);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v43;

  v0[24] = sub_24ACBA5BC;
  v0[25] = v44;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_24ACB1A48;
  v0[23] = &block_descriptor_15;
  v46 = _Block_copy(v0 + 20);
  v47 = v0[25];

  [v45 setFinishHandler_];
  _Block_release(v46);

  v48 = *(v26 + 112);
  v49 = v0[27];
  [v48 setBleScanRate_];

  v50 = v0[1];
  v51 = v0[26];

  return v50(v51);
}

uint64_t sub_24ACAE9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACAE9D4, a1, 0);
}

uint64_t sub_24ACAE9D4()
{
  v1 = *(v0 + 16);
  sub_24ACAEA34(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ACAEA34(void *a1)
{
  v113 = type metadata accessor for DeviceChange(0);
  v2 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = *(v114 + 64);
  MEMORY[0x28223BE20](v4);
  v111 = &v106 - v6;
  v110 = type metadata accessor for Device();
  v7 = *(*(v110 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v110);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v109 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v106 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v106 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v106 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v106 - v26;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v28 = sub_24ACD0490();
  v29 = __swift_project_value_buffer(v28, qword_2814ADDB0);
  v30 = a1;
  v116 = v29;
  v31 = sub_24ACD0470();
  v32 = sub_24ACD08F0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v106 = v24;
    v34 = v33;
    v35 = v10;
    v36 = v18;
    v37 = v27;
    v38 = v23;
    v39 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v39 = v30;
    v40 = v30;
    _os_log_impl(&dword_24AC18000, v31, v32, "discovered: %@", v34, 0xCu);
    sub_24AC212F4(v39, &qword_27EF9E6A0, &qword_24ACD5590);
    v41 = v39;
    v23 = v38;
    v27 = v37;
    v18 = v36;
    v10 = v35;
    MEMORY[0x24C22DC60](v41, -1, -1);
    v42 = v34;
    v24 = v106;
    MEMORY[0x24C22DC60](v42, -1, -1);
  }

  v43 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v44 = v117;
  swift_beginAccess();
  sub_24AC20748(v44 + v43, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_24AC212F4(v22, &unk_27EF9E900, &qword_24ACD3A28);
  }

  (*(v24 + 32))(v27, v22, v23);
  sub_24ACAA80C(v30, v18);
  if (sub_24ACD0840())
  {
    sub_24ACD0770();
    sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678]);
    v46 = swift_allocError();
    sub_24ACD04E0();
    v120[0] = v46;
    sub_24ACD08A0();
LABEL_20:
    v82 = v18;
LABEL_21:
    sub_24ACBA6AC(v82, type metadata accessor for Device);
    return (*(v24 + 8))(v27, v23);
  }

  v47 = (v44 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
  if ((*(v44 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold + 1) & 1) != 0 || !*v47)
  {
    sub_24ACBA644(v18, v10, type metadata accessor for Device);

    v65 = sub_24ACD0470();
    v66 = sub_24ACD08F0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v117 = v23;
      v68 = v67;
      v69 = v18;
      v70 = swift_slowAlloc();
      v120[0] = v70;
      *v68 = 136315394;
      v71 = v47[1];
      v118 = *v47;
      v119 = v71;
      v72 = RSSIValue.description.getter();
      v74 = sub_24AC29E20(v72, v73, v120);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v75 = Device.description.getter();
      v77 = v76;
      sub_24ACBA6AC(v10, type metadata accessor for Device);
      v78 = sub_24AC29E20(v75, v77, v120);

      *(v68 + 14) = v78;
      _os_log_impl(&dword_24AC18000, v65, v66, "No rssiThreshold %s - yield discovered device: %s", v68, 0x16u);
      swift_arrayDestroy();
      v79 = v70;
      v18 = v69;
      MEMORY[0x24C22DC60](v79, -1, -1);
      v80 = v68;
      v23 = v117;
      MEMORY[0x24C22DC60](v80, -1, -1);
    }

    else
    {

      sub_24ACBA6AC(v10, type metadata accessor for Device);
    }

    sub_24ACBA644(v18, v112, type metadata accessor for Device);
    swift_storeEnumTagMultiPayload();
    v81 = v111;
    sub_24ACD0890();
    (*(v114 + 8))(v81, v115);
    goto LABEL_20;
  }

  v48 = &v18[*(v110 + 28)];
  if ((v48[1] & 1) != 0 || (v49 = *v48) == 0)
  {
    v83 = v109;
    sub_24ACBA644(v18, v109, type metadata accessor for Device);
    v84 = sub_24ACD0470();
    v85 = sub_24ACD0900();
    if (!os_log_type_enabled(v84, v85))
    {

      sub_24ACBA6AC(v83, type metadata accessor for Device);
      v82 = v18;
      goto LABEL_21;
    }

    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = v27;
    v117 = v23;
    v89 = v87;
    v120[0] = v87;
    *v86 = 136315138;
    v90 = Device.description.getter();
    v91 = v18;
    v93 = v92;
    sub_24ACBA6AC(v83, type metadata accessor for Device);
    v94 = sub_24AC29E20(v90, v93, v120);

    *(v86 + 4) = v94;
    _os_log_impl(&dword_24AC18000, v84, v85, "Discovered device with unknown RSSI: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x24C22DC60](v89, -1, -1);
    MEMORY[0x24C22DC60](v86, -1, -1);

    sub_24ACBA6AC(v91, type metadata accessor for Device);
    return (*(v24 + 8))(v88, v117);
  }

  else
  {
    v50 = v27;
    v51 = v23;
    if (*v47 >= v49)
    {
      v95 = v108;
      sub_24ACBA644(v18, v108, type metadata accessor for Device);
      v96 = sub_24ACD0470();
      v97 = sub_24ACD0900();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v120[0] = v99;
        *v98 = 136315138;
        v100 = Device.description.getter();
        v117 = v18;
        v102 = v101;
        sub_24ACBA6AC(v95, type metadata accessor for Device);
        v103 = sub_24AC29E20(v100, v102, v120);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_24AC18000, v96, v97, "Discovered device with out of range RSSI: %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x24C22DC60](v99, -1, -1);
        MEMORY[0x24C22DC60](v98, -1, -1);

        sub_24ACBA6AC(v117, type metadata accessor for Device);
        return (*(v24 + 8))(v50, v51);
      }

      sub_24ACBA6AC(v95, type metadata accessor for Device);
      v105 = v18;
    }

    else
    {
      v52 = v107;
      sub_24ACBA644(v18, v107, type metadata accessor for Device);
      v53 = sub_24ACD0470();
      v54 = sub_24ACD08F0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v18;
        v57 = swift_slowAlloc();
        v120[0] = v57;
        *v55 = 136315138;
        v58 = Device.description.getter();
        v59 = v52;
        v60 = v24;
        v62 = v61;
        sub_24ACBA6AC(v59, type metadata accessor for Device);
        v63 = sub_24AC29E20(v58, v62, v120);
        v24 = v60;

        *(v55 + 4) = v63;
        _os_log_impl(&dword_24AC18000, v53, v54, "yield discovered device: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        v64 = v57;
        v18 = v56;
        MEMORY[0x24C22DC60](v64, -1, -1);
        MEMORY[0x24C22DC60](v55, -1, -1);
      }

      else
      {

        sub_24ACBA6AC(v52, type metadata accessor for Device);
      }

      sub_24ACBA644(v18, v112, type metadata accessor for Device);
      swift_storeEnumTagMultiPayload();
      v104 = v111;
      sub_24ACD0890();
      (*(v114 + 8))(v104, v115);
      v105 = v18;
    }

    sub_24ACBA6AC(v105, type metadata accessor for Device);
    return (*(v24 + 8))(v50, v51);
  }
}

void sub_24ACAF7A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24ACAF80C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_24ACD00C0();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;

    MEMORY[0x24C22C810]("devicesBuffered", 15, 2, &unk_24ACD7D08, v4);
  }

  return result;
}

uint64_t sub_24ACAF8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACAF900, a1, 0);
}

uint64_t sub_24ACAF900()
{
  v1 = v0[2];
  sub_24ACAF960(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24ACAF960(unint64_t a1)
{
  v67 = *v1;
  v59 = type metadata accessor for DeviceChange(0);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v52 - v12;
  v66 = type metadata accessor for Device();
  v61 = *(v66 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v65 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v64 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  if (qword_2814ADDA8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v26 = sub_24ACD0490();
    __swift_project_value_buffer(v26, qword_2814ADDB0);

    v27 = sub_24ACD0470();
    v28 = sub_24ACD08F0();

    v29 = os_log_type_enabled(v27, v28);
    v56 = v6;
    v57 = v5;
    v55 = v9;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69 = v63;
      *v30 = 136315138;
      v31 = sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
      v32 = MEMORY[0x24C22CE70](a1, v31);
      v9 = v25;
      v34 = v22;
      v35 = v21;
      v36 = sub_24AC29E20(v32, v33, &v69);

      *(v30 + 4) = v36;
      v21 = v35;
      v22 = v34;
      v25 = v9;
      _os_log_impl(&dword_24AC18000, v27, v28, "buffered: %s", v30, 0xCu);
      v37 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C22DC60](v37, -1, -1);
      MEMORY[0x24C22DC60](v30, -1, -1);
    }

    v38 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
    v39 = v62;
    swift_beginAccess();
    v40 = v39 + v38;
    v41 = v64;
    sub_24AC20748(v40, v64);
    if ((*(v22 + 48))(v41, 1, v21) == 1)
    {
      return sub_24AC212F4(v41, &unk_27EF9E900, &qword_24ACD3A28);
    }

    (*(v22 + 32))(v25, v41, v21);
    if (sub_24ACD0840())
    {
      sub_24ACD0770();
      sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678]);
      v43 = swift_allocError();
      sub_24ACD04E0();
      v68 = v43;
      sub_24ACD08A0();
      return (*(v22 + 8))(v25, v21);
    }

    v5 = a1 >> 62 ? sub_24ACD0B30() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v25;
    v53 = v22;
    v54 = v21;
    if (!v5)
    {
      break;
    }

    v44 = 0;
    v25 = 0;
    v21 = a1;
    v63 = (a1 & 0xFFFFFFFFFFFFFF8);
    v64 = a1 & 0xC000000000000001;
    v22 = v61 + 48;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v64)
      {
        v45 = MEMORY[0x24C22D1B0](v44, v21);
      }

      else
      {
        if (v44 >= v63[2])
        {
          goto LABEL_30;
        }

        v45 = *(v21 + 8 * v44 + 32);
      }

      v9 = v45;
      a1 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v68 = v45;
      sub_24ACB46A8(&v68, v39, v13);

      if ((*v22)(v13, 1, v66) == 1)
      {
        sub_24AC212F4(v13, &unk_27EF9E8F0, &qword_24ACD6AE8);
      }

      else
      {
        v46 = v60;
        sub_24ACADDD0(v13, v60);
        sub_24ACADDD0(v46, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_24AC1D768(0, v6[2] + 1, 1, v6);
        }

        v48 = v6[2];
        v47 = v6[3];
        v9 = (v48 + 1);
        if (v48 >= v47 >> 1)
        {
          v6 = sub_24AC1D768(v47 > 1, v48 + 1, 1, v6);
        }

        v6[2] = v9;
        sub_24ACADDD0(v65, v6 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v48);
        v39 = v62;
      }

      ++v44;
      if (a1 == v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_26:
  if (v6[2])
  {
    *v58 = v6;
    swift_storeEnumTagMultiPayload();
    v49 = v55;
    v50 = v54;
    v51 = v52;
    sub_24ACD0890();
    (v56[1])(v49, v57);
    return (*(v53 + 8))(v51, v50);
  }

  else
  {
    (*(v53 + 8))(v52, v54);
  }
}

uint64_t sub_24ACB0134(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
  v3 = sub_24ACD0700();

  v2(v3);
}

uint64_t sub_24ACB01B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_24ACD00C0();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;

    v13 = a1;
    MEMORY[0x24C22C810](a4, a5, 2, a6, v12);
  }

  return result;
}

uint64_t sub_24ACB028C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACB02B0, a1, 0);
}

uint64_t sub_24ACB02B0()
{
  v1 = *(v0 + 16);
  sub_24ACB0310(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_24ACB0310(void *a1)
{
  v93 = type metadata accessor for DeviceChange(0);
  v2 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = (&v85 - v14);
  v15 = sub_24ACD0420();
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = *(v97 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v85 - v27;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v29 = sub_24ACD0490();
  v30 = __swift_project_value_buffer(v29, qword_2814ADDB0);
  v31 = a1;
  v99 = v30;
  v32 = sub_24ACD0470();
  v33 = sub_24ACD08F0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v7;
    v35 = v28;
    v36 = v25;
    v37 = v24;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v31;
    *v39 = v31;
    v40 = v31;
    _os_log_impl(&dword_24AC18000, v32, v33, "lost: %@", v38, 0xCu);
    sub_24AC212F4(v39, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v39, -1, -1);
    v41 = v38;
    v24 = v37;
    v25 = v36;
    v28 = v35;
    v7 = v34;
    MEMORY[0x24C22DC60](v41, -1, -1);
  }

  v42 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v43 = v100;
  swift_beginAccess();
  sub_24AC20748(v43 + v42, v23);
  if ((*(v25 + 6))(v23, 1, v24) == 1)
  {
    sub_24AC212F4(v23, &unk_27EF9E900, &qword_24ACD3A28);
    return;
  }

  (*(v25 + 4))(v28, v23, v24);
  if (sub_24ACD0840())
  {
    sub_24ACD0770();
    sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678]);
    v44 = swift_allocError();
    sub_24ACD04E0();
    v101 = v44;
    sub_24ACD08A0();
    (*(v25 + 1))(v28, v24);
    return;
  }

  v45 = [v31 identifier];
  if (!v45)
  {
    goto LABEL_12;
  }

  v100 = v24;
  v46 = v45;
  sub_24ACD0590();

  v47 = v94;
  sub_24ACD03B0();

  v49 = v97;
  v48 = v98;
  if ((*(v97 + 48))(v47, 1, v98) == 1)
  {
    sub_24AC212F4(v47, &qword_27EF9EC40, &qword_24ACD8620);
    v24 = v100;
LABEL_12:
    v50 = v28;
    v51 = v25;
    sub_24AC207C0();
    v52 = swift_allocError();
    *v53 = 2;
    swift_willThrow();
    v54 = v52;
    v55 = v52;
    v56 = sub_24ACD0470();
    v57 = sub_24ACD0910();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = v24;
      v60 = swift_slowAlloc();
      *v58 = 138543362;
      v61 = v52;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_24AC18000, v56, v57, "Error getting CBDevice identifier: %{public}@", v58, 0xCu);
      sub_24AC212F4(v60, &qword_27EF9E6A0, &qword_24ACD5590);
      v63 = v60;
      v24 = v59;
      MEMORY[0x24C22DC60](v63, -1, -1);
      MEMORY[0x24C22DC60](v58, -1, -1);
    }

    else
    {
    }

    (*(v51 + 1))(v50, v24);

    return;
  }

  v85 = v28;
  v64 = v95;
  (*(v49 + 32))(v95, v47, v48);
  (*(v49 + 16))(v86, v64, v48);
  type metadata accessor for Device();
  v65 = v96;
  sub_24ACD0000();
  v66 = v87;
  v67 = v88;
  v94 = *(v88 + 16);
  v94(v87, v65, v7);
  v68 = sub_24ACD0470();
  v69 = sub_24ACD08F0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v86 = v25;
    v71 = v70;
    v72 = swift_slowAlloc();
    v99 = v7;
    v73 = v72;
    v101 = v72;
    *v71 = 136315138;
    sub_24AC2B6A8(&qword_27EF9E930, &qword_27EF9E898, &qword_24ACD66C0);
    v74 = sub_24ACD0C20();
    v76 = v75;
    v77 = *(v67 + 8);
    v77(v66, v99);
    v78 = sub_24AC29E20(v74, v76, &v101);

    *(v71 + 4) = v78;
    _os_log_impl(&dword_24AC18000, v68, v69, "yield lost device: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v79 = v73;
    v7 = v99;
    MEMORY[0x24C22DC60](v79, -1, -1);
    v80 = v71;
    v25 = v86;
    MEMORY[0x24C22DC60](v80, -1, -1);
  }

  else
  {

    v77 = *(v67 + 8);
    v77(v66, v7);
  }

  v81 = v96;
  v94(v92, v96, v7);
  swift_storeEnumTagMultiPayload();
  v82 = v89;
  v83 = v100;
  v84 = v85;
  sub_24ACD0890();
  (*(v90 + 8))(v82, v91);
  v77(v81, v7);
  (*(v97 + 8))(v95, v98);
  (*(v25 + 1))(v84, v83);
}

uint64_t sub_24ACB0D68(void *a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = 1;
      a1 = a2;
    }

    else if (a1)
    {
      v7 = a1;
      v6 = 0;
    }

    else
    {
      sub_24AC207C0();
      a1 = swift_allocError();
      *v8 = 0;
      v9 = a1;
      v6 = 1;
    }

    sub_24ACD00C0();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = a1;
    *(v10 + 32) = v6;
    v11 = a2;
    v12 = a2;

    MEMORY[0x24C22C810]("finishHandler", 13, 2, &unk_24ACD7CC0, v10);
    sub_24ACBCED4(a1);
  }

  return result;
}

uint64_t sub_24ACB0EAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACB0ED4, a1, 0);
}

uint64_t sub_24ACB0ED4()
{
  v1 = *(v0 + 16);
  sub_24ACB0F3C(*(v0 + 24), *(v0 + 32) & 1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ACB0F3C(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v104 = &v84[-v9];
  v10 = sub_24ACD0440();
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v84[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24ACD0DC0();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13);
  v95 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_24ACD0DA0();
  v94 = *(v96 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v91 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_24ACD0E10();
  v90 = *(v92 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v88 = &v84[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_24ACD0E20();
  v97 = *(v20 - 8);
  v98 = v20;
  v21 = *(v97 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v93 = &v84[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v108 = &v84[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v106 = &v84[-v30];
  MEMORY[0x28223BE20](v29);
  v105 = &v84[-v31];
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v32 = sub_24ACD0490();
  __swift_project_value_buffer(v32, qword_2814ADDB0);
  sub_24ACBCF88(a1);
  v33 = sub_24ACD0470();
  v34 = sub_24ACD08F0();
  sub_24ACBCED4(a1);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v107 = v6;
    v36 = v35;
    v37 = swift_slowAlloc();
    v87 = v2;
    v38 = v37;
    v109[0] = v37;
    *v36 = 136315138;
    v110 = a1;
    LOBYTE(v111) = a2 & 1;
    v39 = a1;
    sub_24ACBCF88(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC18, &qword_24ACD7CD0);
    v40 = sub_24ACD05A0();
    v42 = a2;
    v43 = v7;
    v44 = sub_24AC29E20(v40, v41, v109);

    *(v36 + 4) = v44;
    v7 = v43;
    a2 = v42;
    _os_log_impl(&dword_24AC18000, v33, v34, "finishHandler: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v45 = v38;
    v3 = v87;
    MEMORY[0x24C22DC60](v45, -1, -1);
    v46 = v36;
    v6 = v107;
    MEMORY[0x24C22DC60](v46, -1, -1);
  }

  else
  {
    v39 = a1;
  }

  if ((a2 & 1) == 0)
  {
    [v39 scanTime];
    v51 = sub_24ACD0E50();
    v53 = v52;
    v54 = sub_24ACD0470();
    v55 = sub_24ACD0930();
    v56 = v55;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v87 = v53;
      v58 = v57;
      v105 = swift_slowAlloc();
      v109[0] = v105;
      *v58 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC08, &qword_24ACD7CC8);
      v59 = sub_24ACD0DE0();
      v107 = v6;
      v60 = v59;
      v61 = *(v59 - 8);
      v86 = v51;
      v62 = v7;
      v63 = v61;
      v64 = *(v61 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_24ACD39E0;
      sub_24ACD0DD0();
      sub_24ACBC7D8(v66);
      swift_setDeallocating();
      (*(v63 + 8))(v66 + v65, v60);
      v7 = v62;
      swift_deallocClassInstance();
      v67 = v88;
      sub_24ACD0E00();
      v68 = v91;
      sub_24ACD0D90();
      v69 = v95;
      sub_24ACD0DB0();
      v85 = v56;
      v70 = v89;
      sub_24ACD0160();

      (*(v99 + 8))(v69, v100);
      (*(v94 + 8))(v68, v96);
      (*(v90 + 8))(v67, v92);
      v71 = v101;
      sub_24ACD0430();
      v72 = v93;
      sub_24ACD0DF0();
      (*(v102 + 8))(v71, v103);
      v73 = v98;
      v74 = *(v97 + 8);
      v74(v70, v98);
      sub_24ACBAB14(&qword_27EF9EC10, MEMORY[0x277CC9FF0]);
      sub_24ACD0E30();
      v74(v72, v73);
      v75 = sub_24AC29E20(v110, v111, v109);

      *(v58 + 4) = v75;
      v6 = v107;
      _os_log_impl(&dword_24AC18000, v54, v85, "Scan duration: %s", v58, 0xCu);
      v76 = v105;
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x24C22DC60](v76, -1, -1);
      MEMORY[0x24C22DC60](v58, -1, -1);
    }

    v77 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
    swift_beginAccess();
    v78 = v3 + v77;
    v79 = v106;
    sub_24AC20748(v78, v106);
    if ((*(v7 + 48))(v79, 1, v6))
    {
      v50 = v79;
      goto LABEL_13;
    }

    v80 = v104;
    (*(v7 + 16))(v104, v79, v6);
    sub_24AC212F4(v79, &unk_27EF9E900, &qword_24ACD3A28);
    v109[0] = 0;
LABEL_16:
    sub_24ACD08A0();
    (*(v7 + 8))(v80, v6);
    goto LABEL_17;
  }

  v110 = v39;
  v47 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
  swift_willThrowTypedImpl();
  v48 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  v49 = v105;
  sub_24AC20748(v3 + v48, v105);
  if (!(*(v7 + 48))(v49, 1, v6))
  {
    v80 = v104;
    (*(v7 + 16))(v104, v49, v6);
    sub_24AC212F4(v49, &unk_27EF9E900, &qword_24ACD3A28);
    v109[0] = v39;
    goto LABEL_16;
  }

  sub_24ACBCED4(v39);
  v50 = v49;
LABEL_13:
  sub_24AC212F4(v50, &unk_27EF9E900, &qword_24ACD3A28);
LABEL_17:
  v81 = v108;
  (*(v7 + 56))(v108, 1, 1, v6);
  v82 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v81, v3 + v82);
  return swift_endAccess();
}

void sub_24ACB1A48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24ACB1AD4(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  *(v3 + 184) = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  *(v3 + 192) = v5;
  v6 = *(v5 - 8);
  *(v3 + 200) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v8 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  *(v3 + 216) = v8;
  v9 = *(v8 - 8);
  *(v3 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  *(v3 + 282) = *a2;
  v13 = *(a2 + 8);
  *(v3 + 240) = v12;
  *(v3 + 248) = v13;
  *(v3 + 256) = *(a2 + 16);
  *(v3 + 283) = *(a2 + 32);
  *(v3 + 280) = *(a2 + 33);
  *(v3 + 284) = *(a2 + 35);

  return MEMORY[0x2822009F8](sub_24ACB1C8C, v2, 0);
}

uint64_t sub_24ACB1C8C()
{
  v75 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  if (v2 == 1)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = sub_24ACD0490();
    __swift_project_value_buffer(v7, qword_2814ADDB0);

    v8 = sub_24ACD0470();
    v9 = sub_24ACD0930();

    if (os_log_type_enabled(v8, v9))
    {
      v64 = *(v0 + 280);
      v65 = *(v0 + 284);
      v10 = *(v0 + 283);
      v12 = *(v0 + 256);
      v11 = *(v0 + 264);
      v13 = *(v0 + 248);
      v14 = *(v0 + 282);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v67 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_24AC29E20(0x6E6F63286E616373, 0xED0000293A676966, &v67);
      *(v15 + 12) = 2082;
      LOBYTE(v68) = v14;
      v69 = v13;
      v70 = v12;
      v71 = v11;
      v72 = v10;
      v73 = v64;
      v74 = v65;

      v17 = CBDiscovery.Config.description.getter();
      v19 = v18;

      v20 = sub_24AC29E20(v17, v19, &v67);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_24AC18000, v8, v9, "%s with config %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v16, -1, -1);
      MEMORY[0x24C22DC60](v15, -1, -1);
    }

    v21 = *(v0 + 264);
    v22 = *(*(v0 + 176) + 112);
    [v22 setDiscoveryFlags_];
    v23 = *(v21 + 16);
    v66 = v22;
    if (v23)
    {
      v24 = *(v0 + 264);
      v26 = *(v0 + 216);
      v25 = *(v0 + 224);
      v68 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v27 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v28 = *(v25 + 72);
      do
      {
        v29 = *(v0 + 232);
        sub_24ACBA644(v27, v29, type metadata accessor for CBDiscovery.OOBKeyInfo);
        v30 = [objc_allocWithZone(MEMORY[0x277CBE058]) init];
        v31 = (v29 + *(v26 + 20));
        v32 = *v31;
        v33 = v31[1];
        v34 = sub_24ACD02C0();
        [v30 setIrkData_];

        v35 = sub_24ACD0060();
        v37 = v36;
        v38 = sub_24ACD02C0();
        sub_24AC46698(v35, v37);
        [v30 setBtAddressData_];

        [v30 setAddressType_];
        sub_24ACBA6AC(v29, type metadata accessor for CBDiscovery.OOBKeyInfo);
        sub_24ACD0A90();
        v39 = *(v68 + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v27 += v28;
        --v23;
      }

      while (v23);
      v22 = v66;
    }

    sub_24AC2B8F8(0, &unk_2814ACFD8, 0x277CBE058);
    v40 = sub_24ACD06F0();

    [v22 setOobKeys_];

    ScanRate.init(rawValue:)([v22 bleScanRate]);
    v41 = *(v0 + 282);
    [v22 setBleScanRate_];
    if (v41 > 1)
    {
      if (v41 != 2)
      {
LABEL_20:
        if ((*(v0 + 284) & 1) == 0)
        {
          v49 = *(v0 + 280);
          v50 = (*(v0 + 176) + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
          *v50 = v49;
          v50[1] = HIBYTE(v49) & 1;
        }

        v51 = *(v0 + 256);
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = (v51 + 32);
          do
          {
            if (*v53++)
            {
              v55 = 29;
            }

            else
            {
              v55 = 14;
            }

            [v22 addDiscoveryType_];
            --v52;
          }

          while (v52);
        }

        v56 = *(v0 + 200);
        v57 = *(v0 + 208);
        v59 = *(v0 + 184);
        v58 = *(v0 + 192);
        v60 = *(v0 + 168);
        v61 = *(v0 + 176);
        v62 = swift_task_alloc();
        *(v62 + 16) = v61;
        *(v62 + 24) = v59;
        type metadata accessor for DeviceChange(0);
        (*(v56 + 104))(v57, *MEMORY[0x277D858A0], v58);
        sub_24ACD08D0();

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_24ACB23D4;
        v63 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E910, &unk_24ACD6B30);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_24ACB2A64;
        *(v0 + 104) = &block_descriptor_18;
        *(v0 + 112) = v63;
        [v66 activateWithCompletion_];

        return MEMORY[0x282200938](v0 + 16);
      }

      v42 = 589825;
    }

    else if (v41)
    {
      v42 = 589824;
    }

    else
    {
      v42 = 269;
    }

    [v22 setUseCase_];
    goto LABEL_20;
  }

  sub_24AC207C0();
  swift_allocError();
  *v43 = 1;
  swift_willThrow();
  v45 = *(v0 + 232);
  v44 = *(v0 + 240);
  v46 = *(v0 + 208);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_24ACB23D4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_24ACB256C;
  }

  else
  {
    v5 = sub_24ACB24F4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24ACB24F4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACB256C()
{
  v1 = v0[34];
  v2 = v0[21];
  swift_willThrow();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF18, &qword_24ACD3BF0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24ACB263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v9, a2 + v12);
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  return sub_24ACD0880();
}

uint64_t sub_24ACB27BC(uint64_t a1, uint64_t a2)
{
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_2814ADDB0);
  v4 = sub_24ACD0470();
  v5 = sub_24ACD08F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AC18000, v4, v5, "Scan termination", v6, 2u);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  sub_24ACD00C0();

  MEMORY[0x24C22C810]("CBDiscovery.onTermination", 25, 2, &unk_24ACD7CB0, a2);
}

uint64_t sub_24ACB290C()
{
  v1 = *(v0 + 16);
  sub_24ACB296C();
  v2 = *(v0 + 8);

  return v2();
}

id sub_24ACB296C()
{
  v1 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADDB0);
  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AC18000, v3, v4, "Calling CBDiscovery.finish()", v5, 2u);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v6 = *(v1 + 112);

  return [v6 finish];
}

uint64_t sub_24ACB2A64(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24ACB2B10(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 52) = *a2;
  *(v3 + 53) = a2[1];
  return MEMORY[0x2822009F8](sub_24ACB2B40, v2, 0);
}

uint64_t sub_24ACB2B40()
{
  v20 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 53);
    v5 = *(v0 + 52);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AC29E20(0xD00000000000002ELL, 0x800000024ACDA8F0, &v17);
    *(v6 + 12) = 2080;
    v18 = v5;
    v19 = v4;
    v8 = RSSIValue.description.getter();
    v10 = sub_24AC29E20(v8, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s with %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = *(v0 + 52);
  if (*(v0 + 53))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0x2000000;
  *(v0 + 32) = &unk_285E25AC0;
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 1;
  *(v0 + 49) = v12 | v11;
  *(v0 + 51) = 0;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_24ACB2D94;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);

  return sub_24ACB1AD4(v14, v0 + 16);
}

uint64_t sub_24ACB2D94()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_24ACB2EE0, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24ACB2EE0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_24ACB2F54(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_24ACB2F7C, v1, 0);
}

uint64_t sub_24ACB2F7C()
{
  v22 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AC29E20(0x526E616353746573, 0xEF293A5F28657461, &v21);
    *(v5 + 12) = 2082;
    if (v4 <= 3)
    {
      v15 = 0x6E776F6E6B6E752ELL;
      v16 = 0xE900000000000063;
      v17 = 0x69646F697265702ELL;
      if (v4 != 2)
      {
        v17 = 0x6F72676B6361622ELL;
        v16 = 0xEB00000000646E75;
      }

      if (v4)
      {
        v15 = 0x746C75616665642ELL;
      }

      if (v4 <= 1)
      {
        v13 = v15;
      }

      else
      {
        v13 = v17;
      }

      if (v4 <= 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6D756964656D2ELL;
      v9 = 0xE500000000000000;
      v10 = 0x686769682ELL;
      if (v4 != 7)
      {
        v10 = 2019650862;
        v9 = 0xE400000000000000;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xE400000000000000;
      v12 = 2003790894;
      if (v4 != 4)
      {
        v12 = 0x4C6D756964656D2ELL;
        v11 = 0xEA0000000000776FLL;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v18 = sub_24AC29E20(v13, v14, &v21);

    *(v5 + 14) = v18;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  [*(*(v0 + 16) + 112) setBleScanRate_];
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24ACB326C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24ACB328C, v1, 0);
}

uint64_t sub_24ACB328C()
{
  v12 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AC29E20(0xD00000000000001ELL, 0x800000024ACDA920, &v11);
    _os_log_impl(&dword_24AC18000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

  *(v0 + 16) = 3;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 24) = 0x80000800000;
  *(v0 + 32) = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = 1;
  *(v0 + 49) = 0;
  *(v0 + 51) = 1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_24ACB3474;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  return sub_24ACB1AD4(v8, v0 + 16);
}

uint64_t sub_24ACB3474()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_24ACB35B8, v4, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24ACB35B8()
{
  swift_bridgeObjectRelease_n();
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_24ACB3624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9EBE8, qword_24ACD7C80);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24ACD0150();
  qword_2814AEE60 = result;
  return result;
}

uint64_t static CBDiscovery.subscribeToXPCDiscoveryEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v6 = sub_24ACD0490();
  __swift_project_value_buffer(v6, qword_2814ADDB0);
  v7 = sub_24ACD0470();
  v8 = sub_24ACD0930();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_24AC29E20(0xD000000000000023, 0x800000024ACDA980, v14);
    _os_log_impl(&dword_24AC18000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v3;
  v11[5] = v3;
  v14[4] = sub_24ACBA638;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_24ACB41B8;
  v14[3] = &block_descriptor_29_0;
  v12 = _Block_copy(v14);

  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", 0, v12);
  _Block_release(v12);
  if (qword_2814ADDD0 != -1)
  {
    swift_once();
  }

  return sub_24ACD0140();
}

void sub_24ACB38C0(void *a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for DeviceChange(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Device();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v63 - v15;
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (sub_24ACD0600() == a2 && v17 == a3)
    {
    }

    else
    {
      v19 = sub_24ACD0C40();

      if ((v19 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v20 = sub_24ACD0490();
    v21 = __swift_project_value_buffer(v20, qword_2814ADDB0);
    swift_unknownObjectRetain();
    v63[1] = v21;
    v22 = sub_24ACD0470();
    v23 = sub_24ACD0930();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v63[0] = v9;
      v26 = v16;
      v27 = v25;
      v64[0] = v25;
      *v24 = 136315138;
      v63[2] = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EBF8, &unk_24ACD7C98);
      v28 = sub_24ACD05A0();
      v30 = sub_24AC29E20(v28, v29, v64);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_24AC18000, v22, v23, "Received accessory discovery %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v31 = v27;
      v16 = v26;
      v9 = v63[0];
      MEMORY[0x24C22DC60](v31, -1, -1);
      MEMORY[0x24C22DC60](v24, -1, -1);
    }

    v32 = xpc_dictionary_get_dictionary(a1, "device");
    if (v32)
    {
      v33 = v32;
      v34 = objc_allocWithZone(MEMORY[0x277CBE020]);
      v64[0] = 0;
      swift_unknownObjectRetain();
      v35 = [v34 initWithXPCEventRepresentation:v33 error:v64];
      if (v35)
      {
        v36 = v35;
        v37 = v64[0];
        swift_unknownObjectRelease();
        sub_24ACAA80C(v36, v14);
        sub_24ACADDD0(v14, v16);
        if (xpc_dictionary_get_string(a1, "eventType"))
        {
          v39 = sub_24ACD0600();
          v40 = v38;
          if (v39 == 0x6F46656369766564 && v38 == 0xEB00000000646E75 || (sub_24ACD0C40() & 1) != 0)
          {

            if (qword_2814ADDD0 != -1)
            {
              swift_once();
            }

            sub_24ACBA644(v16, v9, type metadata accessor for Device);
LABEL_22:
            swift_storeEnumTagMultiPayload();
            sub_24ACD0130();
            swift_unknownObjectRelease();
            sub_24ACBA6AC(v9, type metadata accessor for DeviceChange);
LABEL_34:
            sub_24ACBA6AC(v16, type metadata accessor for Device);
            goto LABEL_35;
          }

          if (v39 == 0x6F4C656369766564 && v40 == 0xEA00000000007473 || (sub_24ACD0C40() & 1) != 0)
          {

            if (qword_2814ADDD0 != -1)
            {
              swift_once();
            }

            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
            (*(*(v59 - 8) + 16))(v9, v16, v59);
            goto LABEL_22;
          }

          v53 = sub_24ACD0470();
          v60 = sub_24ACD0930();
          if (os_log_type_enabled(v53, v60))
          {
            v55 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v64[0] = v61;
            *v55 = 136315138;
            v62 = sub_24AC29E20(v39, v40, v64);

            *(v55 + 4) = v62;
            _os_log_impl(&dword_24AC18000, v53, v60, "Unsupported event type %s", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            v57 = v61;
            goto LABEL_31;
          }
        }

        else
        {
          v53 = sub_24ACD0470();
          v54 = sub_24ACD0910();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v64[0] = v56;
            *v55 = 136315138;
            *(v55 + 4) = sub_24AC29E20(0x707954746E657665, 0xE900000000000065, v64);
            _os_log_impl(&dword_24AC18000, v53, v54, "Unable to get event type from %s", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            v57 = v56;
LABEL_31:
            MEMORY[0x24C22DC60](v57, -1, -1);
            MEMORY[0x24C22DC60](v55, -1, -1);
            swift_unknownObjectRelease();

            goto LABEL_34;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v45 = v64[0];
      v46 = sub_24ACD0220();

      swift_willThrow();
      swift_unknownObjectRelease();
      v47 = v46;
      v41 = sub_24ACD0470();
      v48 = sub_24ACD0910();

      if (!os_log_type_enabled(v41, v48))
      {

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543362;
      v51 = v46;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_24AC18000, v41, v48, "Failed to create CBDevice %{public}@", v49, 0xCu);
      sub_24AC212F4(v50, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v50, -1, -1);
      MEMORY[0x24C22DC60](v49, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = sub_24ACD0470();
      v42 = sub_24ACD0910();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v64[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_24AC29E20(0x656369766564, 0xE600000000000000, v64);
        _os_log_impl(&dword_24AC18000, v41, v42, "Unable to get CBDevice dict from %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C22DC60](v44, -1, -1);
        MEMORY[0x24C22DC60](v43, -1, -1);
      }
    }
  }

LABEL_35:
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24ACB41B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CBDiscovery.deinit()
{
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CBDiscovery.__deallocating_deinit()
{
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACB4370(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACB9734(a1);
}

uint64_t sub_24ACB4418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24ACB1AD4(a1, a2);
}

uint64_t sub_24ACB44C0(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC20274;

  return sub_24ACB2B10(a1, a2);
}

uint64_t sub_24ACB4568(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACB2F54(a1);
}

uint64_t sub_24ACB45FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24ACB46A8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Device();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v80 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v80 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  sub_24ACAA80C(*a1, &v80 - v21);
  if (v3)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v23 = sub_24ACD0490();
    __swift_project_value_buffer(v23, qword_2814ADDB0);
    v24 = v3;
    v25 = sub_24ACD0470();
    v26 = sub_24ACD0910();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a3;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      v30 = v3;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_24AC18000, v25, v26, "Error creating buffered Device: %{public}@", v28, 0xCu);
      sub_24AC212F4(v29, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v29, -1, -1);
      v32 = v28;
      a3 = v27;
      MEMORY[0x24C22DC60](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v82 = a3;
  v33 = (a2 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
  if ((*(a2 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold + 1) & 1) != 0 || (v34 = *v33) == 0)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v46 = sub_24ACD0490();
    __swift_project_value_buffer(v46, qword_2814ADDB0);
    sub_24ACBA644(v22, v11, type metadata accessor for Device);

    v47 = sub_24ACD0470();
    v48 = sub_24ACD08F0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136315394;
      v51 = v33[1];
      v85 = *v33;
      v86 = v51;
      v52 = RSSIValue.description.getter();
      v54 = sub_24AC29E20(v52, v53, &v87);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v55 = Device.description.getter();
      v57 = v56;
      sub_24ACBA6AC(v11, type metadata accessor for Device);
      v58 = sub_24AC29E20(v55, v57, &v87);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_24AC18000, v47, v48, "No rssiThreshold %s - yield buffered device: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v50, -1, -1);
      MEMORY[0x24C22DC60](v49, -1, -1);
    }

    else
    {

      sub_24ACBA6AC(v11, type metadata accessor for Device);
    }

    v44 = v22;
    a3 = v82;
    goto LABEL_24;
  }

  v35 = &v22[*(v84 + 28)];
  if ((v35[1] & 1) == 0 && *v35)
  {
    a3 = v82;
    if (v34 < *v35)
    {
      if (qword_2814ADDA8 != -1)
      {
        swift_once();
      }

      v36 = sub_24ACD0490();
      __swift_project_value_buffer(v36, qword_2814ADDB0);
      sub_24ACBA644(v22, v20, type metadata accessor for Device);
      v37 = sub_24ACD0470();
      v38 = sub_24ACD08F0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v87 = v40;
        *v39 = 136315138;
        v81 = Device.description.getter();
        v42 = v41;
        sub_24ACBA6AC(v20, type metadata accessor for Device);
        v43 = sub_24AC29E20(v81, v42, &v87);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_24AC18000, v37, v38, "yield buffered device: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C22DC60](v40, -1, -1);
        MEMORY[0x24C22DC60](v39, -1, -1);
      }

      else
      {

        sub_24ACBA6AC(v20, type metadata accessor for Device);
      }

      v44 = v22;
LABEL_24:
      sub_24ACADDD0(v44, a3);
      v45 = 0;
      return (*(v83 + 56))(a3, v45, 1, v84);
    }

    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v72 = sub_24ACD0490();
    __swift_project_value_buffer(v72, qword_2814ADDB0);
    sub_24ACBA644(v22, v17, type metadata accessor for Device);
    v61 = sub_24ACD0470();
    v73 = sub_24ACD0900();
    if (os_log_type_enabled(v61, v73))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v87 = v64;
      *v63 = 136315138;
      v74 = Device.description.getter();
      v76 = v75;
      v80 = v74;
      v81 = type metadata accessor for Device;
      sub_24ACBA6AC(v17, type metadata accessor for Device);
      v77 = sub_24AC29E20(v80, v76, &v87);

      *(v63 + 4) = v77;
      v69 = "Buffered device with out of range RSSI: %s";
      v70 = v73;
      goto LABEL_35;
    }

    v71 = v17;
LABEL_38:
    sub_24ACBA6AC(v71, type metadata accessor for Device);
    v78 = v22;
    v79 = type metadata accessor for Device;
    goto LABEL_39;
  }

  a3 = v82;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v60 = sub_24ACD0490();
  __swift_project_value_buffer(v60, qword_2814ADDB0);
  sub_24ACBA644(v22, v14, type metadata accessor for Device);
  v61 = sub_24ACD0470();
  v62 = sub_24ACD0900();
  if (!os_log_type_enabled(v61, v62))
  {

    v71 = v14;
    goto LABEL_38;
  }

  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v87 = v64;
  *v63 = 136315138;
  v65 = Device.description.getter();
  v67 = v66;
  v80 = v65;
  v81 = type metadata accessor for Device;
  sub_24ACBA6AC(v14, type metadata accessor for Device);
  v68 = sub_24AC29E20(v80, v67, &v87);

  *(v63 + 4) = v68;
  v69 = "Buffered device with unknown RSSI: %s";
  v70 = v62;
LABEL_35:
  _os_log_impl(&dword_24AC18000, v61, v70, v69, v63, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v64);
  MEMORY[0x24C22DC60](v64, -1, -1);
  MEMORY[0x24C22DC60](v63, -1, -1);

  v78 = v22;
  v79 = v81;
LABEL_39:
  sub_24ACBA6AC(v78, v79);
LABEL_17:
  v45 = 1;
  return (*(v83 + 56))(a3, v45, 1, v84);
}

uint64_t DeviceChange.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - v4;
  v6 = type metadata accessor for Device();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceChange(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24ACBA644(v0, v13, type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24ACADDD0(v13, v9);
      strcpy(v23, ".discovered(");
      BYTE5(v23[1]) = 0;
      HIWORD(v23[1]) = -5120;
      v15 = Device.description.getter();
      MEMORY[0x24C22CD50](v15);

      v16 = v23[0];
      sub_24ACBA6AC(v9, type metadata accessor for Device);
    }

    else
    {
      (*(v2 + 32))(v5, v13, v1);
      v23[0] = 0x2874736F6C2ELL;
      v23[1] = 0xE600000000000000;
      sub_24AC2B6A8(&qword_27EF9E930, &qword_27EF9E898, &qword_24ACD66C0);
      v21 = sub_24ACD0C20();
      MEMORY[0x24C22CD50](v21);

      v16 = v23[0];
      (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    v17 = *v13;
    strcpy(v23, ".buffered(");
    BYTE3(v23[1]) = 0;
    HIDWORD(v23[1]) = -369098752;
    v18 = MEMORY[0x24C22CE70](v17, v6);
    v20 = v19;

    MEMORY[0x24C22CD50](v18, v20);

    return v23[0];
  }

  return v16;
}

uint64_t CBDiscovery.Config.description.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](0x657361436573755BLL, 0xEA0000000000203ALL);
  v5 = 0x800000024ACD9E10;
  if (v1 == 2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0;
  }

  if (v1 != 2)
  {
    v5 = 0xE000000000000000;
  }

  v7 = 0xEF686365654C7265;
  v8 = 0x66667542706F612ELL;
  if (v1)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024ACD9E30;
  }

  if (v1 <= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v1 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x24C22CD50](v9, v10);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA9B0);
  v11 = CBDiscovery.DiscoveryFlags.description.getter();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA9D0);
  v12 = MEMORY[0x24C22CE70](v2, &type metadata for CBDiscovery.DiscoveryType);
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](0x79654B626F6F203BLL, 0xEA00000000002073);
  v13 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v14 = MEMORY[0x24C22CE70](v4, v13);
  MEMORY[0x24C22CD50](v14);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 0;
}

uint64_t CBDiscovery.UseCase.description.getter()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x66667542706F612ELL;
  }
}

uint64_t sub_24ACB5590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_24ACB5604(uint64_t a1, uint64_t a2)
{
  v88[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v77 - v10;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_139:
    result = 0;
    goto LABEL_140;
  }

  if (!v11 || a1 == a2)
  {
LABEL_137:
    result = 1;
LABEL_140:
    v76 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v80 = *(v9 + 72);
  v15 = v79;
  while (1)
  {
    sub_24ACBA644(v13, v15, type metadata accessor for CBDiscovery.OOBKeyInfo);
    v81 = v13;
    sub_24ACBA644(v14, v8, type metadata accessor for CBDiscovery.OOBKeyInfo);
    if ((sub_24ACD0050() & 1) == 0)
    {
LABEL_138:
      sub_24ACBA6AC(v8, type metadata accessor for CBDiscovery.OOBKeyInfo);
      sub_24ACBA6AC(v15, type metadata accessor for CBDiscovery.OOBKeyInfo);
      goto LABEL_139;
    }

    v16 = *(v4 + 20);
    v17 = *(v15 + v16);
    v18 = *(v15 + v16 + 8);
    v19 = &v8[v16];
    v21 = *v19;
    v20 = v19[1];
    v22 = v18 >> 62;
    v23 = v20 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v17)
      {
        v24 = 0;
      }

      else
      {
        v24 = v18 == 0xC000000000000000;
      }

      if (v24 && v20 >> 62 == 3 && !v21 && v20 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_32:
      v27 = 0;
      if (v23 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_143;
      }

      if (v23 <= 1)
      {
        goto LABEL_30;
      }
    }

    else if (v22)
    {
      LODWORD(v27) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_144;
      }

      v27 = v27;
      if (v23 <= 1)
      {
LABEL_30:
        if (v23)
        {
          LODWORD(v31) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
          }

          v31 = v31;
        }

        else
        {
          v31 = BYTE6(v20);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v27 = BYTE6(v18);
      if (v23 <= 1)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    if (v23 != 2)
    {
      if (v27)
      {
        goto LABEL_138;
      }

LABEL_6:
      sub_24ACBA6AC(v8, type metadata accessor for CBDiscovery.OOBKeyInfo);
      sub_24ACBA6AC(v15, type metadata accessor for CBDiscovery.OOBKeyInfo);
      goto LABEL_7;
    }

    v33 = *(v21 + 16);
    v32 = *(v21 + 24);
    v30 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v30)
    {
      goto LABEL_142;
    }

LABEL_39:
    if (v27 != v31)
    {
      goto LABEL_138;
    }

    if (v27 < 1)
    {
      goto LABEL_6;
    }

    if (v22 <= 1)
    {
      break;
    }

    if (v22 != 2)
    {
      memset(v88, 0, 14);
      if (v23 == 2)
      {
        v65 = *(v21 + 16);
        v77 = *(v21 + 24);
        v38 = sub_24ACD01C0();
        if (v38)
        {
          v66 = sub_24ACD01F0();
          if (__OFSUB__(v65, v66))
          {
            goto LABEL_158;
          }

          v38 += v65 - v66;
        }

        v30 = __OFSUB__(v77, v65);
        v34 = v77 - v65;
        if (v30)
        {
          goto LABEL_150;
        }

        v39 = sub_24ACD01E0();
        if (!v38)
        {
          goto LABEL_168;
        }
      }

      else
      {
        if (v23 != 1)
        {
LABEL_92:
          v82 = v21;
          v83 = v20;
          v84 = BYTE2(v20);
          v85 = BYTE3(v20);
          v86 = BYTE4(v20);
          v62 = BYTE6(v20);
          v87 = BYTE5(v20);
          v63 = v88;
          v64 = &v82;
          goto LABEL_135;
        }

        v34 = (v21 >> 32) - v21;
        if (v21 >> 32 < v21)
        {
          goto LABEL_149;
        }

        v59 = sub_24ACD01C0();
        if (!v59)
        {
          goto LABEL_166;
        }

        v60 = v59;
        v61 = sub_24ACD01F0();
        if (__OFSUB__(v21, v61))
        {
          goto LABEL_153;
        }

        v38 = v21 - v61 + v60;
        v39 = sub_24ACD01E0();
        if (!v38)
        {
          goto LABEL_167;
        }
      }

      goto LABEL_114;
    }

    v78 = v20;
    v40 = v8;
    v41 = v4;
    v42 = *(v17 + 16);
    v43 = sub_24ACD01C0();
    if (v43)
    {
      v44 = sub_24ACD01F0();
      if (__OFSUB__(v42, v44))
      {
        goto LABEL_146;
      }

      v43 += v42 - v44;
    }

    v4 = v41;
    sub_24ACD01E0();
    v8 = v40;
    if (v23 == 2)
    {
      v69 = *(v21 + 16);
      v77 = *(v21 + 24);
      v48 = sub_24ACD01C0();
      if (v48)
      {
        v70 = sub_24ACD01F0();
        if (__OFSUB__(v69, v70))
        {
          goto LABEL_160;
        }

        v48 += v69 - v70;
        v15 = v79;
      }

      else
      {
        v15 = v79;
      }

      v30 = __OFSUB__(v77, v69);
      v73 = v77 - v69;
      if (v30)
      {
        goto LABEL_155;
      }

      result = sub_24ACD01E0();
      if (result >= v73)
      {
        v51 = v73;
      }

      else
      {
        v51 = result;
      }

      if (!v43)
      {
        goto LABEL_178;
      }

      if (!v48)
      {
        goto LABEL_177;
      }
    }

    else
    {
      v45 = BYTE6(v78);
      if (v23 != 1)
      {
        v15 = v79;
        v88[0] = v21;
        LODWORD(v88[1]) = v78;
        WORD2(v88[1]) = WORD2(v78);
        if (!v43)
        {
          goto LABEL_165;
        }

LABEL_108:
        v62 = v45;
        v64 = v88;
        v63 = v43;
        goto LABEL_135;
      }

      v46 = v21;
      v47 = (v21 >> 32) - v21;
      v15 = v79;
      if (v21 >> 32 < v21)
      {
        goto LABEL_152;
      }

      v48 = sub_24ACD01C0();
      if (v48)
      {
        v49 = sub_24ACD01F0();
        if (__OFSUB__(v46, v49))
        {
          goto LABEL_162;
        }

        v48 += v46 - v49;
      }

      result = sub_24ACD01E0();
      if (result >= v47)
      {
        v51 = v47;
      }

      else
      {
        v51 = result;
      }

      if (!v43)
      {
        goto LABEL_176;
      }

      if (!v48)
      {
        goto LABEL_175;
      }
    }

LABEL_133:
    if (v43 == v48)
    {
      goto LABEL_6;
    }

    v62 = v51;
    v63 = v43;
    v64 = v48;
LABEL_135:
    v75 = memcmp(v63, v64, v62);
    sub_24ACBA6AC(v8, type metadata accessor for CBDiscovery.OOBKeyInfo);
    sub_24ACBA6AC(v15, type metadata accessor for CBDiscovery.OOBKeyInfo);
    if (v75)
    {
      goto LABEL_139;
    }

LABEL_7:
    v14 += v80;
    v13 = v81 + v80;
    if (!--v11)
    {
      goto LABEL_137;
    }
  }

  if (v22)
  {
    v78 = v20;
    v52 = v8;
    v53 = v4;
    v54 = v17;
    if (v17 > v17 >> 32)
    {
      goto LABEL_145;
    }

    v43 = sub_24ACD01C0();
    if (v43)
    {
      v55 = sub_24ACD01F0();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_147;
      }

      v43 += v54 - v55;
    }

    v4 = v53;
    result = sub_24ACD01E0();
    v8 = v52;
    if (v23 == 2)
    {
      v71 = *(v21 + 16);
      v77 = *(v21 + 24);
      v48 = sub_24ACD01C0();
      if (v48)
      {
        v72 = sub_24ACD01F0();
        if (__OFSUB__(v71, v72))
        {
          goto LABEL_161;
        }

        v48 += v71 - v72;
        v15 = v79;
      }

      else
      {
        v15 = v79;
      }

      v30 = __OFSUB__(v77, v71);
      v74 = v77 - v71;
      if (v30)
      {
        goto LABEL_157;
      }

      result = sub_24ACD01E0();
      if (result >= v74)
      {
        v51 = v74;
      }

      else
      {
        v51 = result;
      }

      if (!v43)
      {
        goto LABEL_174;
      }

      if (!v48)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v45 = BYTE6(v78);
      if (v23 != 1)
      {
        v15 = v79;
        v88[0] = v21;
        LODWORD(v88[1]) = v78;
        WORD2(v88[1]) = WORD2(v78);
        if (!v43)
        {
          goto LABEL_170;
        }

        goto LABEL_108;
      }

      v56 = v21;
      v57 = (v21 >> 32) - v21;
      v15 = v79;
      if (v21 >> 32 < v21)
      {
        goto LABEL_156;
      }

      v48 = sub_24ACD01C0();
      if (v48)
      {
        v58 = sub_24ACD01F0();
        if (__OFSUB__(v56, v58))
        {
          goto LABEL_163;
        }

        v48 += v56 - v58;
      }

      result = sub_24ACD01E0();
      if (result >= v57)
      {
        v51 = v57;
      }

      else
      {
        v51 = result;
      }

      if (!v43)
      {
        goto LABEL_172;
      }

      if (!v48)
      {
        goto LABEL_171;
      }
    }

    goto LABEL_133;
  }

  v88[0] = v17;
  LOWORD(v88[1]) = v18;
  BYTE2(v88[1]) = BYTE2(v18);
  BYTE3(v88[1]) = BYTE3(v18);
  BYTE4(v88[1]) = BYTE4(v18);
  BYTE5(v88[1]) = BYTE5(v18);
  if (!v23)
  {
    goto LABEL_92;
  }

  if (v23 != 1)
  {
    v67 = *(v21 + 16);
    v77 = *(v21 + 24);
    v38 = sub_24ACD01C0();
    if (v38)
    {
      v68 = sub_24ACD01F0();
      if (__OFSUB__(v67, v68))
      {
        goto LABEL_159;
      }

      v38 += v67 - v68;
    }

    v30 = __OFSUB__(v77, v67);
    v34 = v77 - v67;
    if (v30)
    {
      goto LABEL_151;
    }

    v39 = sub_24ACD01E0();
    if (!v38)
    {
      goto LABEL_164;
    }

    goto LABEL_114;
  }

  v34 = (v21 >> 32) - v21;
  if (v21 >> 32 < v21)
  {
    goto LABEL_148;
  }

  v35 = sub_24ACD01C0();
  if (!v35)
  {
    goto LABEL_169;
  }

  v36 = v35;
  v37 = sub_24ACD01F0();
  if (__OFSUB__(v21, v37))
  {
    goto LABEL_154;
  }

  v38 = v21 - v37 + v36;
  v39 = sub_24ACD01E0();
  if (v38)
  {
LABEL_114:
    if (v39 >= v34)
    {
      v62 = v34;
    }

    else
    {
      v62 = v39;
    }

    v63 = v88;
    v64 = v38;
    goto LABEL_135;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  sub_24ACD01E0();
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  result = sub_24ACD01E0();
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
  return result;
}

uint64_t sub_24ACB5FA8()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0x7379654B626F6FLL;
  v4 = 0x657461526E616373;
  if (v1 != 4)
  {
    v4 = 0x6572685469737372;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265766F63736964;
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

uint64_t sub_24ACB6088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ACBCAF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ACB60C8(uint64_t a1)
{
  v2 = sub_24ACBA70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6104(uint64_t a1)
{
  v2 = sub_24ACBA70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.Config.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E938, &qword_24ACD6B60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v22 = *(v1 + 2);
  v23 = v10;
  v21 = *(v1 + 3);
  v25 = v1[32];
  LODWORD(v10) = *(v1 + 33);
  v19 = v1[35];
  v20 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBA70C();
  v12 = v4;
  sub_24ACD0D80();
  LOBYTE(v24) = v9;
  v26 = 0;
  sub_24ACBA760();
  sub_24ACD0BE0();
  if (!v2)
  {
    v14 = v21;
    v13 = v22;
    v15 = v25;
    v16 = v20;
    v24 = v23;
    v26 = 1;
    sub_24ACBA7B4();
    sub_24ACD0BF0();
    v24 = v13;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E958, &qword_24ACD6B68);
    sub_24ACBA9AC(&qword_27EF9E960, sub_24ACBA808);
    sub_24ACD0BF0();
    v24 = v14;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E970, &qword_24ACD6B70);
    sub_24ACBAA78(&qword_27EF9E978, &qword_27EF9E980);
    sub_24ACD0BF0();
    LOBYTE(v24) = v15;
    v26 = 4;
    sub_24ACBA85C();
    sub_24ACD0BF0();
    LOWORD(v24) = v16;
    BYTE2(v24) = v19;
    v26 = 5;
    sub_24ACBA8B0();
    sub_24ACD0BE0();
  }

  return (*(v5 + 8))(v8, v12);
}

uint64_t CBDiscovery.Config.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E998, &qword_24ACD6B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBA70C();
  sub_24ACD0D70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  sub_24ACBA904();
  sub_24ACD0BA0();
  v11 = v20;
  v21 = 1;
  sub_24ACBA958();
  sub_24ACD0BB0();
  v12 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E958, &qword_24ACD6B68);
  v21 = 2;
  sub_24ACBA9AC(&qword_27EF9E9B0, sub_24ACBAA24);
  sub_24ACD0BB0();
  v18 = v12;
  v19 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E970, &qword_24ACD6B70);
  v21 = 3;
  sub_24ACBAA78(&qword_27EF9E9C0, &qword_27EF9E9C8);
  sub_24ACD0BB0();
  v17 = v20;
  v21 = 4;
  sub_24ACBAB5C();
  sub_24ACD0BB0();
  LOBYTE(v12) = v20;
  v21 = 5;
  sub_24ACBABB0();
  sub_24ACD0BA0();
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v14 = BYTE2(v20);
  *a2 = v11;
  v15 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 33) = v13;
  *(a2 + 35) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_24ACB6910(uint64_t a1)
{
  v2 = sub_24ACBAD00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB694C(uint64_t a1)
{
  v2 = sub_24ACBAD00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6988()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6566667542706F61;
  }
}

uint64_t sub_24ACB69F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ACBCD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ACB6A2C(uint64_t a1)
{
  v2 = sub_24ACBAC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6A68(uint64_t a1)
{
  v2 = sub_24ACBAC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6AA4(uint64_t a1)
{
  v2 = sub_24ACBAC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6AE0(uint64_t a1)
{
  v2 = sub_24ACBAC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB6B1C(uint64_t a1)
{
  v2 = sub_24ACBACAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB6B58(uint64_t a1)
{
  v2 = sub_24ACBACAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.UseCase.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9E0, &qword_24ACD6B80);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9E8, &qword_24ACD6B88);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9F0, &qword_24ACD6B90);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E9F8, &qword_24ACD6B98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAC04();
  sub_24ACD0D80();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24ACBACAC();
      v12 = v26;
      sub_24ACD0BD0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24ACBAC58();
      v12 = v29;
      sub_24ACD0BD0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24ACBAD00();
    sub_24ACD0BD0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t CBDiscovery.UseCase.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA20, &qword_24ACD6BA0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA28, &qword_24ACD6BA8);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA30, &qword_24ACD6BB0);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA38, &qword_24ACD6BB8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAC04();
  v18 = v49;
  sub_24ACD0D70();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_24ACD0BC0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_24ACBACAC();
          v33 = v40;
          sub_24ACD0B80();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_24ACBAC58();
          v37 = v40;
          sub_24ACD0B80();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_24ACBAD00();
        v35 = v40;
        sub_24ACD0B80();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  v26 = sub_24ACD0A70();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA40, &unk_24ACD6BC0) + 48);
  *v28 = &type metadata for CBDiscovery.UseCase;
  sub_24ACD0B90();
  sub_24ACD0A60();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_24ACB750C()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x66667542706F612ELL;
  }
}

uint64_t CBDiscovery.DiscoveryFlags.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x80000000000) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AC1CF00(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AC1CF00((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x756269727474612ELL;
  *(v5 + 5) = 0xEB00000000736574;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AC1CF00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x697373722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((v1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24AC1CF00((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, ".objectSetup");
    v11[45] = 0;
    *(v11 + 23) = -5120;
    if ((v1 & 0x800000) == 0)
    {
LABEL_14:
      if ((v1 & 0x2000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 0x800000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_24AC1CF00((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x676E69726961702ELL;
  *(v14 + 5) = 0xE800000000000000;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_24AC1CF00((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x4F6E65657263732ELL;
    *(v17 + 5) = 0xEA00000000006666;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DC88, &qword_24ACD33A0);
  sub_24AC2B6A8(&qword_2814AD030, &unk_27EF9DC88, &qword_24ACD33A0);
  v18 = sub_24ACD0540();
  v20 = v19;

  MEMORY[0x24C22CD50](v18, v20);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 91;
}

unint64_t CBDiscovery.DiscoveryType.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t sub_24ACB7A64()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x6341794D646E6966;
  }

  *v0;
  return result;
}

uint64_t sub_24ACB7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6341794D646E6966 && a2 == 0xEF79726F73736563;
  if (v6 || (sub_24ACD0C40() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024ACDAAE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ACD0C40();

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

uint64_t sub_24ACB7B9C(uint64_t a1)
{
  v2 = sub_24ACBAD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7BD8(uint64_t a1)
{
  v2 = sub_24ACBAD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB7C14(uint64_t a1)
{
  v2 = sub_24ACBADFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7C50(uint64_t a1)
{
  v2 = sub_24ACBADFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ACB7C8C(uint64_t a1)
{
  v2 = sub_24ACBADA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB7CC8(uint64_t a1)
{
  v2 = sub_24ACBADA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.DiscoveryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA48, &qword_24ACD6BD0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA50, &qword_24ACD6BD8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA58, &qword_24ACD6BE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAD54();
  sub_24ACD0D80();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24ACBADA8();
    v18 = v22;
    sub_24ACD0BD0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24ACBADFC();
    sub_24ACD0BD0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t CBDiscovery.DiscoveryType.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t CBDiscovery.DiscoveryType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA78, &qword_24ACD6BE8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA80, &qword_24ACD6BF0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9EA88, &qword_24ACD6BF8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAD54();
  v17 = v37;
  sub_24ACD0D70();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_24ACD0BC0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_24ACD0A70();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA40, &unk_24ACD6BC0) + 48);
    *v25 = &type metadata for CBDiscovery.DiscoveryType;
    sub_24ACD0B90();
    sub_24ACD0A60();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_24ACBADA8();
    sub_24ACD0B80();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_24ACBADFC();
    sub_24ACD0B80();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

unint64_t sub_24ACB84AC()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t CBDiscovery.OOBKeyInfo.btAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CBDiscovery.OOBKeyInfo.irkData.getter()
{
  v1 = v0 + *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20);
  v2 = *v1;
  sub_24AC46630(*v1, *(v1 + 8));
  return v2;
}

uint64_t CBDiscovery.OOBKeyInfo.description.getter()
{
  sub_24ACD0A20();

  strcpy(v8, "[btAddress: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  sub_24ACD0090();
  sub_24ACBAB14(&qword_27EF9E080, MEMORY[0x277D088D0]);
  v1 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](0x7461446B7269203BLL, 0xEB00000000203A61);
  result = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v3 = (v0 + *(result + 20));
  v4 = *v3;
  v5 = v3[1] >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = v4 + 16;
    v4 = *(v4 + 16);
    if (!__OFSUB__(*(v6 + 8), v4))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_9:
    v7 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v7);

    MEMORY[0x24C22CD50](0x5D736574796220, 0xE700000000000000);
    return v8[0];
  }

  __break(1u);
  return result;
}

uint64_t CBDiscovery.OOBKeyInfo.init(btAddress:irkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ACD0090();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static CBDiscovery.OOBKeyInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24ACD0050() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_24ACB94C0(v5, v6, v8, v9);
}

uint64_t sub_24ACB8820()
{
  if (*v0)
  {
    result = 0x617461446B7269;
  }

  else
  {
    result = 0x7365726464417462;
  }

  *v0;
  return result;
}

uint64_t sub_24ACB8860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365726464417462 && a2 == 0xE900000000000073;
  if (v6 || (sub_24ACD0C40() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461446B7269 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ACD0C40();

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

uint64_t sub_24ACB8944(uint64_t a1)
{
  v2 = sub_24ACBAE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACB8980(uint64_t a1)
{
  v2 = sub_24ACBAE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CBDiscovery.OOBKeyInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EA98, &qword_24ACD6C00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAE50();
  sub_24ACD0D80();
  LOBYTE(v15) = 0;
  sub_24ACD0090();
  sub_24ACBAB14(&qword_27EF9EAA8, MEMORY[0x277D088D0]);
  sub_24ACD0BF0();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for CBDiscovery.OOBKeyInfo(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_24AC46630(v15, v12);
    sub_24ACBAEA4();
    sub_24ACD0BF0();
    sub_24AC46698(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CBDiscovery.OOBKeyInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_24ACD0090();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EAB8, &qword_24ACD6C08);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACBAE50();
  sub_24ACD0D70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_24ACBAB14(&qword_27EF9EAC0, MEMORY[0x277D088D0]);
  v19 = v31;
  v20 = v29;
  sub_24ACD0BB0();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  sub_24ACBAEF8();
  sub_24ACD0BB0();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  sub_24ACBA644(v22, v27, type metadata accessor for CBDiscovery.OOBKeyInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24ACBA6AC(v22, type metadata accessor for CBDiscovery.OOBKeyInfo);
}

uint64_t sub_24ACB8F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24ACD0050() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_24ACB94C0(v7, v8, v10, v11);
}

uint64_t sub_24ACB8FC8()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814AEE10);
  __swift_project_value_buffer(v0, qword_2814AEE10);
  return sub_24ACD0480();
}

uint64_t sub_24ACB9048@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24ACD01C0();
    if (v10)
    {
      v11 = sub_24ACD01F0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24ACD01E0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24ACD01C0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24ACD01F0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24ACD01E0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24ACB9278(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24ACB9408(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AC46698(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_24ACB9048(v14, a3, a4, &v13);
  v10 = v4;
  sub_24AC46698(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_24ACB9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24ACD01C0();
  v11 = result;
  if (result)
  {
    result = sub_24ACD01F0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24ACD01E0();
  sub_24ACB9048(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24ACB94C0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24AC46630(a3, a4);
          return sub_24ACB9278(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s15FindMyBluetooth11CBDiscoveryC6ConfigV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = *(a1 + 33);
  v9 = a1[35];
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = a2[32];
  v15 = *(a2 + 33);
  v16 = a2[35];
  if (v3 != 3)
  {
    if (v10 == 3)
    {
      return 0;
    }

    result = 0;
    if (v3 != v10)
    {
      return result;
    }

LABEL_6:
    if (v5 != v12)
    {
      return result;
    }

    if ((sub_24ACB5590(v4, v11) & 1) != 0 && (sub_24ACB5604(v6, v13) & 1) != 0 && dword_24ACD7D80[v7] == dword_24ACD7D80[v14])
    {
      if (v9)
      {
        if (v16)
        {
          return 1;
        }
      }

      else if ((v16 & 1) == 0)
      {
        if ((v8 & 0x100) != 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v8;
        }

        if ((v15 & 0x100) != 0)
        {
          if (!v18)
          {
            return 1;
          }
        }

        else if (v18 == v15)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  result = 0;
  if (v10 == 3)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_24ACB9734(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Device();
  *(v1 + 48) = v4;
  v5 = *(v4 - 8);
  *(v1 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v9 = type metadata accessor for CentralManager(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = swift_task_alloc();
  *(v1 + 96) = v12;
  *v12 = v1;
  v12[1] = sub_24ACB98DC;
  v13 = *MEMORY[0x277D85DE8];

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24ACB98DC(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24ACB9A08, 0, 0);
}

uint64_t sub_24ACB9A08()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = *(MEMORY[0x277D08920] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_24ACB9B04;
  v4 = *(v0 + 104);
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24ACB9B04()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_24ACBA21C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_24ACB9C54;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ACB9C54()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = objc_opt_self();
  v0[4] = 0;
  v3 = [v2 devicesWithDiscoveryFlags:v1 error:v0 + 4];
  v4 = v0[4];
  if (v3)
  {
    v5 = v3;
    sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
    v6 = sub_24ACD0700();
    v7 = v4;

    if (v6 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24ACD0B30())
    {
      v9 = 0;
      v10 = v0[7];
      v59 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = v6 & 0xC000000000000001;
      v58 = (v10 + 56);
      v11 = MEMORY[0x277D84F90];
      v54 = v10;
      v57 = (v10 + 48);
      v12 = v0[15];
      v53 = v6;
      v56 = i;
      while (v60)
      {
        v13 = MEMORY[0x24C22D1B0](v9, v6);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

LABEL_10:
        v15 = v0[9];
        v16 = v13;
        sub_24ACAA80C(v16, v15);
        if (v12)
        {
          if (qword_2814ADDA8 != -1)
          {
            swift_once();
          }

          v17 = sub_24ACD0490();
          __swift_project_value_buffer(v17, qword_2814ADDB0);
          v18 = v12;
          v19 = sub_24ACD0470();
          v20 = sub_24ACD0910();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v55 = v11;
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v61[0] = v23;
            *v21 = 136315394;
            *(v21 + 4) = sub_24AC29E20(0x2873656369766564, 0xEE00293A68746977, v61);
            *(v21 + 12) = 2114;
            v24 = v12;
            v25 = _swift_stdlib_bridgeErrorToNSError();
            *(v21 + 14) = v25;
            *v22 = v25;
            _os_log_impl(&dword_24AC18000, v19, v20, "%s Failed to init Device with error: %{public}@", v21, 0x16u);
            sub_24AC212F4(v22, &qword_27EF9E6A0, &qword_24ACD5590);
            v26 = v22;
            v11 = v55;
            MEMORY[0x24C22DC60](v26, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v23);
            MEMORY[0x24C22DC60](v23, -1, -1);
            v27 = v21;
            v6 = v53;
            MEMORY[0x24C22DC60](v27, -1, -1);
          }

          else
          {
          }

          v28 = 1;
          i = v56;
        }

        else
        {
          sub_24ACADDD0(v0[9], v0[5]);
          v28 = 0;
        }

        v30 = v0[5];
        v29 = v0[6];
        (*v58)(v30, v28, 1, v29);

        if ((*v57)(v30, 1, v29) == 1)
        {
          sub_24AC212F4(v0[5], &unk_27EF9E8F0, &qword_24ACD6AE8);
        }

        else
        {
          v31 = v0[10];
          v32 = v0[8];
          sub_24ACADDD0(v0[5], v31);
          sub_24ACADDD0(v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_24AC1D768(0, v11[2] + 1, 1, v11);
          }

          v34 = v11[2];
          v33 = v11[3];
          if (v34 >= v33 >> 1)
          {
            v11 = sub_24AC1D768(v33 > 1, v34 + 1, 1, v11);
          }

          v35 = v0[8];
          v11[2] = v34 + 1;
          sub_24ACADDD0(v35, v11 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v34);
        }

        v12 = 0;
        ++v9;
        if (v14 == i)
        {
          goto LABEL_34;
        }
      }

      if (v9 >= *(v59 + 16))
      {
        goto LABEL_31;
      }

      v13 = *(v6 + 8 * v9 + 32);
      v14 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_34:
    v45 = v11;
    v46 = v0[13];
    v48 = v0[9];
    v47 = v0[10];
    v49 = v0[8];
    v50 = v0[5];

    v51 = v0[1];
    v52 = *MEMORY[0x277D85DE8];

    return v51(v45);
  }

  else
  {
    v36 = v4;
    sub_24ACD0220();

    swift_willThrow();
    v37 = v0[13];
    v39 = v0[9];
    v38 = v0[10];
    v40 = v0[8];
    v41 = v0[5];

    v42 = v0[1];
    v43 = *MEMORY[0x277D85DE8];

    return v42();
  }
}

uint64_t sub_24ACBA21C()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];

  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_2814ADDB0);
  v4 = v2;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0910();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AC29E20(0x2873656369766564, 0xEE00293A68746977, v22);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AC18000, v5, v6, "%s Invalid power state. Error: %{public}@", v8, 0x16u);
    sub_24AC212F4(v9, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  v13 = v0[15];
  type metadata accessor for CentralManager.Error();
  sub_24ACBAB14(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v14 = v0[13];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v18 = v0[5];

  v19 = v0[1];
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24ACBA638(void *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_24ACB38C0(a1, v1[2], v1[3]);
}

uint64_t sub_24ACBA644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ACBA6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ACBA70C()
{
  result = qword_27EF9E940;
  if (!qword_27EF9E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E940);
  }

  return result;
}

unint64_t sub_24ACBA760()
{
  result = qword_27EF9E948;
  if (!qword_27EF9E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E948);
  }

  return result;
}

unint64_t sub_24ACBA7B4()
{
  result = qword_27EF9E950;
  if (!qword_27EF9E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E950);
  }

  return result;
}

unint64_t sub_24ACBA808()
{
  result = qword_27EF9E968;
  if (!qword_27EF9E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E968);
  }

  return result;
}

unint64_t sub_24ACBA85C()
{
  result = qword_27EF9E988;
  if (!qword_27EF9E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E988);
  }

  return result;
}

unint64_t sub_24ACBA8B0()
{
  result = qword_27EF9E990;
  if (!qword_27EF9E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E990);
  }

  return result;
}

unint64_t sub_24ACBA904()
{
  result = qword_27EF9E9A0;
  if (!qword_27EF9E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9A0);
  }

  return result;
}

unint64_t sub_24ACBA958()
{
  result = qword_27EF9E9A8;
  if (!qword_27EF9E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9A8);
  }

  return result;
}

uint64_t sub_24ACBA9AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E958, &qword_24ACD6B68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ACBAA24()
{
  result = qword_27EF9E9B8;
  if (!qword_27EF9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9B8);
  }

  return result;
}

uint64_t sub_24ACBAA78(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E970, &qword_24ACD6B70);
    sub_24ACBAB14(a2, type metadata accessor for CBDiscovery.OOBKeyInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ACBAB14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ACBAB5C()
{
  result = qword_27EF9E9D0;
  if (!qword_27EF9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9D0);
  }

  return result;
}

unint64_t sub_24ACBABB0()
{
  result = qword_27EF9E9D8;
  if (!qword_27EF9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E9D8);
  }

  return result;
}

unint64_t sub_24ACBAC04()
{
  result = qword_27EF9EA00;
  if (!qword_27EF9EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA00);
  }

  return result;
}

unint64_t sub_24ACBAC58()
{
  result = qword_27EF9EA08;
  if (!qword_27EF9EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA08);
  }

  return result;
}

unint64_t sub_24ACBACAC()
{
  result = qword_27EF9EA10;
  if (!qword_27EF9EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA10);
  }

  return result;
}

unint64_t sub_24ACBAD00()
{
  result = qword_27EF9EA18;
  if (!qword_27EF9EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA18);
  }

  return result;
}

unint64_t sub_24ACBAD54()
{
  result = qword_27EF9EA60;
  if (!qword_27EF9EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA60);
  }

  return result;
}

unint64_t sub_24ACBADA8()
{
  result = qword_27EF9EA68;
  if (!qword_27EF9EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA68);
  }

  return result;
}

unint64_t sub_24ACBADFC()
{
  result = qword_27EF9EA70;
  if (!qword_27EF9EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EA70);
  }

  return result;
}

unint64_t sub_24ACBAE50()
{
  result = qword_27EF9EAA0;
  if (!qword_27EF9EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAA0);
  }

  return result;
}

unint64_t sub_24ACBAEA4()
{
  result = qword_27EF9EAB0;
  if (!qword_27EF9EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAB0);
  }

  return result;
}

unint64_t sub_24ACBAEF8()
{
  result = qword_27EF9EAC8;
  if (!qword_27EF9EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAC8);
  }

  return result;
}

uint64_t sub_24ACBAF4C(void *a1)
{
  a1[1] = sub_24ACBAB14(&qword_2814ADD90, type metadata accessor for CBDiscovery);
  a1[2] = sub_24ACBAB14(&qword_2814ADD98, type metadata accessor for CBDiscovery);
  result = sub_24ACBAB14(&qword_2814ADDA0, type metadata accessor for CBDiscovery);
  a1[3] = result;
  return result;
}

unint64_t sub_24ACBB040()
{
  result = qword_27EF9EAD0;
  if (!qword_27EF9EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAD0);
  }

  return result;
}

unint64_t sub_24ACBB098()
{
  result = qword_27EF9EAD8;
  if (!qword_27EF9EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAD8);
  }

  return result;
}

unint64_t sub_24ACBB134()
{
  result = qword_27EF9EAF0;
  if (!qword_27EF9EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAF0);
  }

  return result;
}

unint64_t sub_24ACBB18C()
{
  result = qword_27EF9EAF8;
  if (!qword_27EF9EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EAF8);
  }

  return result;
}

unint64_t sub_24ACBB228()
{
  result = qword_27EF9EB10;
  if (!qword_27EF9EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB10);
  }

  return result;
}

unint64_t sub_24ACBB280()
{
  result = qword_27EF9EB18;
  if (!qword_27EF9EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB18);
  }

  return result;
}

unint64_t sub_24ACBB2D8()
{
  result = qword_27EF9EB20;
  if (!qword_27EF9EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB20);
  }

  return result;
}

void sub_24ACBB334()
{
  sub_24AC210A4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24ACBBB48(319, &qword_27EF9DEF8, type metadata accessor for CBDiscovery, MEMORY[0x277D088B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC1DF38;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.scan(config:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CBDiscovery.setScanRate(_:)(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

uint64_t dispatch thunk of CBDiscovery.subscribeToAttributesChanges()(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

void sub_24ACBBA60()
{
  sub_24ACBBB48(319, &qword_2814AD038, type metadata accessor for Device, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v1 <= 0x3F)
    {
      sub_24ACBBB48(319, &qword_2814AE230, type metadata accessor for Device, MEMORY[0x277D088B0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24ACBBB48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ACBBBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_24ACBBC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ACBBCC4()
{
  result = sub_24ACD0090();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Controller.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Controller.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CBDiscovery.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CBDiscovery.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24ACBC04C()
{
  result = qword_27EF9EB30;
  if (!qword_27EF9EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB30);
  }

  return result;
}

unint64_t sub_24ACBC0A4()
{
  result = qword_27EF9EB38;
  if (!qword_27EF9EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB38);
  }

  return result;
}

unint64_t sub_24ACBC0FC()
{
  result = qword_27EF9EB40;
  if (!qword_27EF9EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB40);
  }

  return result;
}

unint64_t sub_24ACBC154()
{
  result = qword_27EF9EB48;
  if (!qword_27EF9EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB48);
  }

  return result;
}

unint64_t sub_24ACBC1AC()
{
  result = qword_27EF9EB50;
  if (!qword_27EF9EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB50);
  }

  return result;
}

unint64_t sub_24ACBC204()
{
  result = qword_27EF9EB58;
  if (!qword_27EF9EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB58);
  }

  return result;
}

unint64_t sub_24ACBC25C()
{
  result = qword_27EF9EB60;
  if (!qword_27EF9EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB60);
  }

  return result;
}

unint64_t sub_24ACBC2B4()
{
  result = qword_27EF9EB68;
  if (!qword_27EF9EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB68);
  }

  return result;
}

unint64_t sub_24ACBC30C()
{
  result = qword_27EF9EB70;
  if (!qword_27EF9EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB70);
  }

  return result;
}

unint64_t sub_24ACBC364()
{
  result = qword_27EF9EB78;
  if (!qword_27EF9EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB78);
  }

  return result;
}

unint64_t sub_24ACBC3BC()
{
  result = qword_27EF9EB80;
  if (!qword_27EF9EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB80);
  }

  return result;
}

unint64_t sub_24ACBC414()
{
  result = qword_27EF9EB88;
  if (!qword_27EF9EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB88);
  }

  return result;
}

unint64_t sub_24ACBC46C()
{
  result = qword_27EF9EB90;
  if (!qword_27EF9EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB90);
  }

  return result;
}

unint64_t sub_24ACBC4C4()
{
  result = qword_27EF9EB98;
  if (!qword_27EF9EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EB98);
  }

  return result;
}

unint64_t sub_24ACBC51C()
{
  result = qword_27EF9EBA0;
  if (!qword_27EF9EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBA0);
  }

  return result;
}

unint64_t sub_24ACBC574()
{
  result = qword_27EF9EBA8;
  if (!qword_27EF9EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBA8);
  }

  return result;
}

unint64_t sub_24ACBC5CC()
{
  result = qword_27EF9EBB0;
  if (!qword_27EF9EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBB0);
  }

  return result;
}

unint64_t sub_24ACBC624()
{
  result = qword_27EF9EBB8;
  if (!qword_27EF9EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBB8);
  }

  return result;
}

unint64_t sub_24ACBC67C()
{
  result = qword_27EF9EBC0;
  if (!qword_27EF9EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBC0);
  }

  return result;
}

unint64_t sub_24ACBC6D4()
{
  result = qword_27EF9EBC8;
  if (!qword_27EF9EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBC8);
  }

  return result;
}

unint64_t sub_24ACBC72C()
{
  result = qword_27EF9EBD0;
  if (!qword_27EF9EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBD0);
  }

  return result;
}

unint64_t sub_24ACBC784()
{
  result = qword_27EF9EBD8;
  if (!qword_27EF9EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EBD8);
  }

  return result;
}

uint64_t sub_24ACBC7D8(uint64_t a1)
{
  v2 = sub_24ACD0DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC20, &qword_24ACD7CD8);
    v10 = sub_24ACD0A00();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_24ACBAB14(&qword_27EF9EC28, MEMORY[0x277CC9FC8]);
      v18 = sub_24ACD0520();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_24ACBAB14(&unk_27EF9EC30, MEMORY[0x277CC9FC8]);
          v25 = sub_24ACD0550();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ACBCAF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE007367616C4679 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE00736570795479 || (sub_24ACD0C40() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7379654B626F6FLL && a2 == 0xE700000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657461526E616373 && a2 == 0xE800000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873)
  {

    return 5;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ACBCD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6566667542706F61 && a2 == 0xEE00686365654C72;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024ACDAAA0 == a2 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024ACDAAC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24ACBCE44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return sub_24ACB28EC(v0);
}

uint64_t sub_24ACBCEE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24ACB0EAC(v2, v3, v4);
}

uint64_t sub_24ACBCF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACB028C(v2, v3);
}

uint64_t sub_24ACBD02C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACAF8DC(v2, v3);
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACBD104()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24ACAE9B0(v2, v3);
}

uint64_t sub_24ACBD19C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24ACADEDC();
}

uint64_t type metadata accessor for CentralManager.Error()
{
  result = qword_27EF9EC48;
  if (!qword_27EF9EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACBD2E0()
{
  result = sub_24ACD0090();
  if (v1 <= 0x3F)
  {
    result = sub_24ACBD368();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ACBD368()
{
  result = qword_27EF9EC58;
  if (!qword_27EF9EC58)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27EF9EC58);
  }

  return result;
}

unint64_t sub_24ACBD398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC70, &qword_24ACD7ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ACD7E70;
  v2 = *MEMORY[0x277CBDEC0];
  *(inited + 32) = sub_24ACD0590();
  *(inited + 40) = v3;
  *(inited + 48) = sub_24ACD0040();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277CBDEB8];
  *(inited + 64) = sub_24ACD0590();
  *(inited + 72) = v6;
  v7 = (v0 + *(type metadata accessor for PeripheralPairingInfo() + 20));
  v8 = *v7;
  v9 = v7[1];
  *(inited + 80) = *v7;
  *(inited + 88) = v9;
  sub_24AC46630(v8, v9);
  v10 = sub_24AC9EE94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC78, &qword_24ACD7EE0);
  swift_arrayDestroy();
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v11 = sub_24ACD0490();
  __swift_project_value_buffer(v11, qword_2814AD280);

  v12 = sub_24ACD0470();
  v13 = sub_24ACD08F0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_24ACD0510();
    v18 = sub_24AC29E20(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24AC18000, v12, v13, "PeripheralPairingInfo.dictionaryRepresentation: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  v19 = sub_24AC829BC(v10);

  return v19;
}

uint64_t PeripheralPairingInfo.init(remoteAddress:remoteIRK:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ACD0090();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PeripheralPairingInfo();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for PeripheralPairingInfo()
{
  result = qword_27EF9EC60;
  if (!qword_27EF9EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeripheralPairingInfo.remoteAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PeripheralPairingInfo.remoteIRK.getter()
{
  v1 = v0 + *(type metadata accessor for PeripheralPairingInfo() + 20);
  v2 = *v1;
  sub_24AC46630(*v1, *(v1 + 8));
  return v2;
}

unint64_t PeripheralPairingInfo.description.getter()
{
  sub_24ACD0A20();

  sub_24ACD0090();
  sub_24ACBD85C();
  v1 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](0x203A4B524920, 0xE600000000000000);
  v4 = *(v0 + *(type metadata accessor for PeripheralPairingInfo() + 20));
  sub_24AC467AC();
  v2 = sub_24ACD0180();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_24ACBD85C()
{
  result = qword_27EF9E080;
  if (!qword_27EF9E080)
  {
    sub_24ACD0090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E080);
  }

  return result;
}

uint64_t ScanUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t ScanUseCase.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000014;
    v8 = 0x72656666696E732ELL;
    if (v1 != 10)
    {
      v8 = 0x69646E694674622ELL;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000012;
    if (v1 == 7)
    {
      v9 = 0x536E6F636165622ELL;
    }

    if (v1 == 6)
    {
      v9 = 0x656C65682ELL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6574704F746F6E2ELL;
    v3 = 0xD000000000000024;
    v4 = 0xD000000000000018;
    if (v1 != 4)
    {
      v4 = 0x696E49726573752ELL;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6E49646574706F2ELL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
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
}

unint64_t sub_24ACBDB38()
{
  result = qword_27EF9EC80;
  if (!qword_27EF9EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanUseCase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScanUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24ACBDCE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24ACBDD38()
{
  v1 = 0;
  v2 = *v0;
  v26 = *MEMORY[0x277CBDF08];
  v29 = *MEMORY[0x277CBDD88];
  v30 = *MEMORY[0x277CBDD90];
  v27 = *MEMORY[0x277CBDD80];
  v28 = *MEMORY[0x277CBDDB0];
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D839B0];
  do
  {
    v6 = *(&unk_285E259A0 + v1 + 32);
    if ((v6 & ~v2) == 0)
    {
      v7 = 0xE90000000000003ELL;
      if (v6 <= 3)
      {
        if (v6 == 1)
        {
          goto LABEL_13;
        }

        v8 = 0x4E574F4E4B4E553CLL;
        if (v6 == 2)
        {
          goto LABEL_13;
        }
      }

      else if (v6 == 4 || v6 == 8 || (v8 = 0x4E574F4E4B4E553CLL, v6 == 16))
      {
LABEL_13:
        v8 = sub_24ACD0590();
        v7 = v9;
      }

      v39 = v4;
      LOBYTE(v38) = 1;
      sub_24AC1BFB8(&v38, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v3;
      v11 = *__swift_mutable_project_boxed_opaque_existential_0(v36, v37);
      v34 = v4;
      LOBYTE(v33[0]) = v11;
      v13 = sub_24AC2AB50(v8, v7);
      v14 = v3[2];
      v15 = (v12 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        result = sub_24ACD0C80();
        __break(1u);
        return result;
      }

      v17 = v12;
      if (v3[3] < v16)
      {
        sub_24AC5C328(v16, isUniquelyReferenced_nonNull_native);
        v18 = sub_24AC2AB50(v8, v7);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_30;
        }

        v13 = v18;
        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_2:

        v3 = v35;
        v5 = (v35[7] + 32 * v13);
        __swift_destroy_boxed_opaque_existential_0(v5);
        sub_24AC1BFB8(v33, v5);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_0(v36);
        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v12)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_24AC5E670();
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_21:
      v3 = v35;
      v20 = *__swift_mutable_project_boxed_opaque_existential_0(v33, v34);
      v32 = v4;
      LOBYTE(v31) = v20;
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v3[6] + 16 * v13);
      *v21 = v8;
      v21[1] = v7;
      sub_24AC1BFB8(&v31, (v3[7] + 32 * v13));
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_29;
      }

      v3[2] = v24;
      __swift_destroy_boxed_opaque_existential_0(v33);
      goto LABEL_3;
    }

LABEL_4:
    v1 += 8;
  }

  while (v1 != 40);
  if (!v3[2])
  {

    return 0;
  }

  return v3;
}