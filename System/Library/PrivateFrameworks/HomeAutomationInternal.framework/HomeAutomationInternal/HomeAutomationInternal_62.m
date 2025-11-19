uint64_t sub_252DC1134(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1208);
  v5 = *(*v2 + 1192);
  v6 = *(*v2 + 1184);
  v7 = *v2;
  v3[152] = a1;
  v3[153] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252DC1420, 0, 0);
  }

  else
  {
    v8 = v3[142];
    v9 = swift_task_alloc();
    v3[154] = v9;
    *v9 = v7;
    v9[1] = sub_252DC1308;
    v10 = v3[143];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252DC1308(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1232);
  v7 = *v2;
  *(v3 + 1240) = a1;
  *(v3 + 1248) = v1;

  if (v1)
  {
    v5 = sub_252DC1780;
  }

  else
  {
    v5 = sub_252DC1624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DC1420()
{
  v1 = v0[150];
  v2 = v0[142];

  v3 = v0[153];
  v4 = v0[149];
  v5 = v0[147];
  v6 = v0[146];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252DC14B4()
{
  v2 = *(*v1 + 1256);
  v3 = *(*v1 + 1176);
  v4 = *(*v1 + 1160);
  v5 = *(*v1 + 1152);
  v8 = *v1;
  *(*v1 + 1264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252DC1CEC;
  }

  else
  {
    v6 = sub_252DC1BB8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252DC1624()
{
  v1 = v0 + 139;
  v2 = v0[155];
  v3 = v0[152];
  v0[139] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[146];
  v9 = v0[143];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[159] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[160] = v12;
  *v12 = v0;
  v12[1] = sub_252DC1820;
  v13 = v0[146];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252DC1780()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1136);

  v3 = *(v0 + 1248);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252DC1820()
{
  v2 = *v1;
  v3 = *(*v1 + 1280);
  v4 = *(*v1 + 1168);
  v5 = *(*v1 + 1160);
  v6 = *(*v1 + 1152);
  v10 = *v1;
  *(*v1 + 1288) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252DC1AFC;
  }

  else
  {
    v8 = *(v2 + 1272);

    v7 = sub_252DC19A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252DC19A0()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1240);
  v9 = *(v0 + 1216);
  v10 = *(v0 + 1200);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 1120);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v13 = *(v0 + 1192);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252DC1AFC()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1136);

  v5 = *(v0 + 1288);
  v6 = *(v0 + 1192);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252DC1BB8()
{
  v1 = v0[143];
  v2 = v0[141];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[150];
  v9 = v0[140];
  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v10 = v0[149];
  v11 = v0[147];
  v12 = v0[146];

  v13 = v0[1];

  return v13();
}

uint64_t sub_252DC1CEC()
{
  v1 = v0[150];

  v2 = v0[158];
  v3 = v0[149];
  v4 = v0[147];
  v5 = v0[146];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252DC1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252DC1D9C, 0, 0);
}

uint64_t sub_252DC1D9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252BCD050;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C0ECBC(0, v3, v5, v6);
}

uint64_t sub_252DC1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252DC0BF0(a1, a2, a3);
}

void *sub_252DC1F5C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252DC1FC0(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  if ([v4 taskType] == 4)
  {
  }

  else
  {
    v6 = [v5 taskType];

    if (v6 != 5)
    {
      return 0;
    }
  }

  v7 = [a1 userTask];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 attribute];

    if (v9 == 20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v10 = [a1 userTask];
  if (!v10)
  {
    sub_252C515AC();
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 attribute];

  if (v12 != 47)
  {
LABEL_13:
    v13 = [a1 userTask];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 attribute];

      if (v15 == 21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v19 = [a1 userTask];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 attribute];

      result = 0;
      if (v21 != 67 || !a2)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_24:
    sub_252C515AC();
    return 0;
  }

LABEL_15:
  if (!a2)
  {
    return 0;
  }

LABEL_16:
  v16 = sub_252C31A30();
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v17 != 0;
}

uint64_t sub_252DC2194()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252DC1D78(v2, v3, v4);
}

uint64_t sub_252DC223C(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x61746C6564;
  if (a2 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a2 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a1 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {

    v10 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();

    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252DC2380(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x6E776F6E6B6E75;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a1 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a1)
  {
    v3 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC24E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0xEB00000000656D6FLL;
  v4 = 0x685F657669727261;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (a2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a1 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a1)
  {
    v4 = 0x6F685F657661656CLL;
    v3 = 0xEA0000000000656DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
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
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2644(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x746E6563726570;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (a2)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a1 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a1)
  {
    v3 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC27D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E6563726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a2 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
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
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2C14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x61746C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a1 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {

    v10 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();

    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252DC2D54(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0xEB00000000656D6FLL;
  v4 = 0x685F657669727261;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (a2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a1 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a1)
  {
    v4 = 0x6F685F657661656CLL;
    v3 = 0xEA0000000000656DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC2EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x746E6563726570;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (a2)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a1 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a1)
  {
    v3 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC3018(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x6E776F6E6B6E75;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a1 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a1)
  {
    v3 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC3168(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x61746C6564;
  if (a2 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a2 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a1 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t LimitSemantic.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65756C615678616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x65756C61566E696DLL;
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

HomeAutomationInternal::LimitSemantic_optional __swiftcall LimitSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DC3390()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DC3458()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252DC350C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252DC35DC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65756C615678616DLL;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xEA0000000000796CLL;
  }

  if (*v1)
  {
    v3 = 0x65756C61566E696DLL;
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

uint64_t sub_252DC3748(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DC3A84();
  v5 = sub_252DC3AD8();
  v6 = sub_252DC3B2C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal13LimitSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (*a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (*a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252DC3908()
{
  result = qword_27F545F58;
  if (!qword_27F545F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F58);
  }

  return result;
}

unint64_t sub_252DC3960()
{
  result = qword_27F545F60;
  if (!qword_27F545F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F60);
  }

  return result;
}

unint64_t sub_252DC39B8()
{
  result = qword_27F545F68;
  if (!qword_27F545F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545F70, &qword_252E609C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F68);
  }

  return result;
}

unint64_t sub_252DC3A20()
{
  result = qword_27F545F78;
  if (!qword_27F545F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F78);
  }

  return result;
}

unint64_t sub_252DC3A84()
{
  result = qword_27F545F80;
  if (!qword_27F545F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F80);
  }

  return result;
}

unint64_t sub_252DC3AD8()
{
  result = qword_27F545F88;
  if (!qword_27F545F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F88);
  }

  return result;
}

unint64_t sub_252DC3B2C()
{
  result = qword_27F545F90;
  if (!qword_27F545F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F90);
  }

  return result;
}

uint64_t sub_252DC3B94()
{
  result = sub_252C759A0(&unk_2864A75E0);
  qword_27F575C78 = result;
  return result;
}

uint64_t sub_252DC3BC0(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252DC4B00(a1);
}

uint64_t sub_252DC3C68(unint64_t a1, __int128 *a2)
{
  v106 = a2[6];
  v107 = a2[7];
  v102 = a2[2];
  v103 = a2[3];
  v104 = a2[4];
  v105 = a2[5];
  v100 = *a2;
  v101 = a2[1];
  v3 = *(a2 + 17);
  v4 = *(a2 + 18);
  v5 = *(a2 + 21);
  v109 = a2[11];
  v110 = a2[12];
  LODWORD(v6) = *(a2 + 208);
  v108 = *(a2 + 16);
  v97 = *(a2 + 152);
  memcpy(v111, a2 + 209, sizeof(v111));
  v7 = sub_252A10F24();
  v8 = sub_252DF9098(v7);

  if (qword_27F53F520 != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E08);
    sub_252E379F4();

    v10 = sub_252C65520(v8);
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E77910, 0xD00000000000008FLL, 0x8000000252E9C1E0);

    v96 = a1;
    if (v6 == 9 || (sub_252A0D524(v6, 0) & 1) == 0)
    {
      goto LABEL_35;
    }

    if (*(v97 + 16) <= 1uLL && *(v5 + 16) <= 1uLL && *(v4 + 16) <= 1uLL && *(v3 + 16) < 2uLL)
    {
      if (a1 >> 62)
      {
        goto LABEL_151;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v76 = 0;
        v77 = a1 & 0xC000000000000001;
        v78 = a1 & 0xFFFFFFFFFFFFFF8;
        v79 = a1 + 32;
        v99 = a1 + 32;
        while (1)
        {
          if (v77)
          {
            MEMORY[0x2530ADF00](v76, a1);
            v14 = __OFADD__(v76++, 1);
            if (v14)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v76 >= *(v78 + 16))
            {
              goto LABEL_150;
            }

            v80 = *(v79 + 8 * v76);

            v14 = __OFADD__(v76++, 1);
            if (v14)
            {
LABEL_134:
              __break(1u);
LABEL_135:

              goto LABEL_144;
            }
          }

          v81 = *(v8 + 16);
          if (v81)
          {
            break;
          }

LABEL_130:

          a1 = v96;
          v79 = v99;
          if (v76 == i)
          {
            goto LABEL_71;
          }
        }

        a1 = 0;
        while (a1 < *(v8 + 16))
        {
          v82 = *(v8 + 32 + 8 * a1);
          v83 = sub_252CD9C58();
          v84 = *(v83 + 16);
          v85 = 32;
          if (v82 == 5)
          {
            do
            {
              if (!v84)
              {
                goto LABEL_115;
              }

              v86 = *(v83 + v85);
              v85 += 8;
              --v84;
            }

            while (v86 != 3);

            v87 = sub_252CD9C58();
            v88 = *(v87 + 16);
            v89 = 32;
            do
            {
              if (!v88)
              {
                goto LABEL_115;
              }

              v90 = *(v87 + v89);
              v89 += 8;
              --v88;
            }

            while (v90 != 4);

            v91 = sub_252CD9C58();
            v92 = *(v91 + 16);
            v93 = 32;
            while (v92)
            {
              v94 = *(v91 + v93);
              v93 += 8;
              --v92;
              if (v94 == 2)
              {
                goto LABEL_135;
              }
            }
          }

          else
          {
            while (v84)
            {
              v95 = *(v83 + v85);
              v85 += 8;
              --v84;
              if (v95 == v82)
              {
                goto LABEL_135;
              }
            }
          }

LABEL_115:
          ++a1;

          if (a1 == v81)
          {
            goto LABEL_130;
          }
        }

        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        ;
      }

      goto LABEL_71;
    }

    if (a1 >> 62)
    {
      v6 = sub_252E378C4();
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    v11 = 0;
    *&v97 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = a1 + 32;
    a1 = v8 + 32;
LABEL_11:
    if (v97)
    {
      break;
    }

    if (v11 >= *(v5 + 16))
    {
      goto LABEL_139;
    }

    v13 = *(v12 + 8 * v11);

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_34;
    }

LABEL_14:
    v4 = *(v8 + 16);
    if (!v4)
    {
LABEL_72:

      return 1;
    }

    v15 = 0;
    while (v15 < *(v8 + 16))
    {
      v3 = *(a1 + 8 * v15);
      v16 = sub_252CD9C58();
      v17 = *(v16 + 16);
      v18 = 32;
      if (v3 == 5)
      {
        while (v17)
        {
          v19 = *(v16 + v18);
          v18 += 8;
          --v17;
          if (v19 == 3)
          {

            v20 = sub_252CD9C58();
            v21 = *(v20 + 16);
            v22 = 32;
            while (v21)
            {
              v23 = *(v20 + v22);
              v22 += 8;
              --v21;
              if (v23 == 4)
              {

                v24 = sub_252CD9C58();
                v25 = *(v24 + 16);
                v26 = 32;
                while (v25)
                {
                  v27 = *(v24 + v26);
                  v26 += 8;
                  --v25;
                  if (v27 == 2)
                  {
                    goto LABEL_30;
                  }
                }

                goto LABEL_16;
              }
            }

            break;
          }
        }
      }

      else
      {
        while (v17)
        {
          v28 = *(v16 + v18);
          v18 += 8;
          --v17;
          if (v28 == v3)
          {
LABEL_30:

            if (v11 != v6)
            {
              goto LABEL_11;
            }

            goto LABEL_144;
          }
        }
      }

LABEL_16:
      ++v15;

      if (v15 == v4)
      {
        goto LABEL_72;
      }
    }

LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    swift_once();
  }

  MEMORY[0x2530ADF00](v11, v96);
  v14 = __OFADD__(v11++, 1);
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  if (*(v97 + 16) > 1uLL || *(v5 + 16) > 1uLL || *(v4 + 16) > 1uLL || *(v3 + 16) >= 2uLL)
  {
    if (a1 >> 62)
    {
      v6 = sub_252E378C4();
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    v29 = 0;
    *&v97 = v96 & 0xC000000000000001;
    v5 = v96 & 0xFFFFFFFFFFFFFF8;
    a1 = v8 + 32;
    while (1)
    {
      if (v97)
      {
        MEMORY[0x2530ADF00](v29, v96);
        v14 = __OFADD__(v29++, 1);
        if (v14)
        {
LABEL_69:
          __break(1u);
LABEL_70:

          goto LABEL_71;
        }
      }

      else
      {
        if (v29 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v30 = *(v96 + 32 + 8 * v29);

        v14 = __OFADD__(v29++, 1);
        if (v14)
        {
          goto LABEL_69;
        }
      }

      v31 = *(v8 + 16);
      if (!v31)
      {
        goto LABEL_70;
      }

      v4 = 0;
      while (1)
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_137;
        }

        v3 = *(a1 + 8 * v4);
        v32 = sub_252CD95D8();
        v33 = *(v32 + 16);
        v34 = 32;
        if (v3 != 5)
        {
          break;
        }

        while (v33)
        {
          v35 = *(v32 + v34);
          v34 += 8;
          --v33;
          if (v35 == 3)
          {

            v36 = sub_252CD95D8();
            v37 = *(v36 + 16);
            v38 = 32;
            while (v37)
            {
              v39 = *(v36 + v38);
              v38 += 8;
              --v37;
              if (v39 == 4)
              {

                v40 = sub_252CD95D8();
                v41 = *(v40 + 16);
                v42 = 32;
                while (v41)
                {
                  v43 = *(v40 + v42);
                  v42 += 8;
                  --v41;
                  if (v43 == 2)
                  {
                    goto LABEL_42;
                  }
                }

                goto LABEL_48;
              }
            }

            break;
          }
        }

LABEL_48:
        ++v4;

        if (v4 == v31)
        {
          goto LABEL_70;
        }
      }

      do
      {
        if (!v33)
        {

          v45 = sub_252CD995C();
          v46 = *(v45 + 16);
          v47 = 32;
          while (v46)
          {
            v48 = *(v45 + v47);
            v47 += 8;
            --v46;
            if (v48 == v3)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_48;
        }

        v44 = *(v32 + v34);
        v34 += 8;
        --v33;
      }

      while (v44 != v3);
LABEL_42:

      if (v29 == v6)
      {
        goto LABEL_144;
      }
    }
  }

  if (!(a1 >> 62))
  {
    v50 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_76;
    }

LABEL_71:

    return 1;
  }

  while (2)
  {
    v50 = sub_252E378C4();
    if (!v50)
    {
      goto LABEL_71;
    }

LABEL_76:
    v51 = 0;
    v52 = a1 & 0xC000000000000001;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 + 32;
    v98 = a1 + 32;
LABEL_77:
    if (v52)
    {
      MEMORY[0x2530ADF00](v51, a1);
      v14 = __OFADD__(v51++, 1);
      if (v14)
      {
        break;
      }

      goto LABEL_80;
    }

    if (v51 >= *(v53 + 16))
    {
      goto LABEL_146;
    }

    v55 = *(v54 + 8 * v51);

    v14 = __OFADD__(v51++, 1);
    if (!v14)
    {
LABEL_80:
      a1 = *(v8 + 16);
      if (a1)
      {
        v56 = 0;
        while (v56 < *(v8 + 16))
        {
          v57 = *(v8 + 32 + 8 * v56);
          v58 = sub_252CD95D8();
          v59 = *(v58 + 16);
          v60 = 32;
          if (v57 == 5)
          {
            while (v59)
            {
              v61 = *(v58 + v60);
              v60 += 8;
              --v59;
              if (v61 == 3)
              {

                v62 = sub_252CD95D8();
                v63 = *(v62 + 16);
                v64 = 32;
                while (v63)
                {
                  v65 = *(v62 + v64);
                  v64 += 8;
                  --v63;
                  if (v65 == 4)
                  {

                    v66 = sub_252CD95D8();
                    v67 = *(v66 + 16);
                    v68 = 32;
                    while (v67)
                    {
                      v69 = *(v66 + v68);
                      v68 += 8;
                      --v67;
                      if (v69 == 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    goto LABEL_82;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v59)
            {
              v70 = *(v58 + v60);
              v60 += 8;
              --v59;
              if (v70 == v57)
              {
                goto LABEL_106;
              }
            }

            v71 = sub_252CD995C();
            v72 = *(v71 + 16);
            v73 = 32;
            while (v72)
            {
              v74 = *(v71 + v73);
              v73 += 8;
              --v72;
              if (v74 == v57)
              {
                goto LABEL_106;
              }
            }
          }

LABEL_82:
          ++v56;

          if (v56 == a1)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_146:
        __break(1u);
        continue;
      }

LABEL_101:

      a1 = v96;
      v54 = v98;
      if (v51 == v50)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    break;
  }

  __break(1u);
LABEL_106:

LABEL_144:

  return 0;
}

uint64_t sub_252DC4538(uint64_t a1)
{
  v2 = *(a1 + 112);
  v78 = *(a1 + 96);
  v79 = v2;
  v3 = *(a1 + 136);
  v80 = *(a1 + 128);
  v4 = *(a1 + 48);
  v74 = *(a1 + 32);
  v75 = v4;
  v5 = *(a1 + 80);
  v76 = *(a1 + 64);
  v77 = v5;
  v6 = *(a1 + 16);
  v72 = *a1;
  v73 = v6;
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  memcpy(__dst, (a1 + 160), sizeof(__dst));
  v9 = *(a1 + 112);
  v64 = *(a1 + 96);
  v65 = v9;
  v10 = *(a1 + 128);
  v11 = *(a1 + 48);
  v60 = *(a1 + 32);
  v61 = v11;
  v12 = *(a1 + 80);
  v62 = *(a1 + 64);
  v63 = v12;
  v13 = *(a1 + 16);
  v58 = *a1;
  v59 = v13;
  v66 = v10;
  v67 = v3;
  v68 = v7;
  v69 = v8;
  memcpy(v70, (a1 + 160), sizeof(v70));
  v14 = *(sub_252A10F24() + 2);

  if (!v14)
  {
    return v14 & 1;
  }

  LOBYTE(v14) = 0;
  v15 = *(v3 + 16);
  if (!(*(v8 + 16) | v15) || v15 > 1)
  {
    return v14 & 1;
  }

  v16 = *(a1 + 112);
  v64 = *(a1 + 96);
  v65 = v16;
  v17 = *(a1 + 128);
  v18 = *(a1 + 48);
  v60 = *(a1 + 32);
  v61 = v18;
  v19 = *(a1 + 80);
  v62 = *(a1 + 64);
  v63 = v19;
  v20 = *(a1 + 16);
  v58 = *a1;
  v59 = v20;
  v66 = v17;
  v67 = v3;
  v55 = v7;
  v68 = v7;
  v69 = v8;
  memcpy(v70, (a1 + 160), sizeof(v70));
  v21 = sub_252BAC7E4();
  type metadata accessor for HomeStore();
  v22 = static HomeStore.shared.getter();
  v23 = HomeStore.services(matching:supporting:)(v21, 0);
  LOBYTE(v25) = v24;

  if (v25)
  {
    goto LABEL_50;
  }

  v26 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_49;
  }

  v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_50:
    sub_252929F10(v23, v25 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v54 = sub_252E36AD4();
    __swift_project_value_buffer(v54, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9C2A0, 0xD00000000000008FLL, 0x8000000252E9C1E0);
    goto LABEL_53;
  }

LABEL_7:
  v28 = 0;
  v56 = v27;
  v57 = v23 & 0xC000000000000001;
  do
  {
    if (v57)
    {
      v31 = MEMORY[0x2530ADF00](v28, v23);
      v32 = __OFADD__(v28++, 1);
      if (v32)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v28 >= *(v26 + 16))
      {
        goto LABEL_48;
      }

      v31 = *(v23 + 32 + 8 * v28);

      v32 = __OFADD__(v28++, 1);
      if (v32)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v27 = sub_252E378C4();
        if (!v27)
        {
          goto LABEL_50;
        }

        goto LABEL_7;
      }
    }

    v33 = v26;
    if (qword_27F53F758 != -1)
    {
      swift_once();
    }

    v34 = qword_27F575C78;
    v35 = [*(v31 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v36 = sub_252E36F34();
    v38 = v37;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v25 = off_27F546230;
    if (*(off_27F546230 + 2) && (v39 = sub_252A44A10(v36, v38), (v40 & 1) != 0))
    {
      v41 = *(*(v25 + 7) + 8 * v39);
    }

    else
    {
      v41 = 0;
    }

    if (*(v34 + 16))
    {
      v42 = *(v34 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v41);
      v25 = &v58;
      v43 = sub_252E37F14();
      v44 = -1 << *(v34 + 32);
      v45 = v43 & ~v44;
      if ((*(v34 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (*(*(v34 + 48) + 8 * v45) != v41)
        {
          v45 = (v45 + 1) & v46;
          if (((*(v34 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_30:
        sub_252929F10(v23, 0);
LABEL_53:
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

LABEL_8:

    v30 = v56;
    v26 = v33;
  }

  while (v28 != v56);
  v47 = 0;
  while (1)
  {
    if (v30 == v47)
    {
      v64 = v78;
      v65 = v79;
      v60 = v74;
      v61 = v75;
      v62 = v76;
      v63 = v77;
      v58 = v72;
      v59 = v73;
      v66 = v80;
      v67 = v3;
      v68 = v55;
      v69 = v8;
      memcpy(v70, __dst, sizeof(v70));
      LOBYTE(v14) = sub_252DC3C68(v23, &v58);
      sub_252929F10(v23, 0);
      return v14 & 1;
    }

    if (!v57)
    {
      break;
    }

    result = MEMORY[0x2530ADF00](v47, v23);
    v48 = result;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_55;
    }

LABEL_36:
    v14 = [*(v48 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
    if (!v14)
    {
      sub_252929F10(v23, 0);

      return v14 & 1;
    }

    v49 = type metadata accessor for Accessory();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = *(sub_252D4CE7C(v14) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

    if (v52 >> 62)
    {
      v53 = sub_252E378C4();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v47;
    v30 = v56;
    if (v53 <= 1)
    {
      goto LABEL_30;
    }
  }

  if (v47 >= *(v26 + 16))
  {
    goto LABEL_56;
  }

  v48 = *(v23 + 8 * v47 + 32);

  if (!__OFADD__(v47, 1))
  {
    goto LABEL_36;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_252DC4B00(void *__src)
{
  *(v1 + 520) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252DC4B74, 0, 0);
}

char *sub_252DC4B74()
{
  v51 = v0;
  memcpy(__dst, *(v0 + 520), 0x1F8uLL);
  v1 = sub_252BAC7E4();
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = HomeStore.accessories(matching:supporting:)(v1, 0);
  LOBYTE(v5) = v4;

  if (v5)
  {
    goto LABEL_36;
  }

  if (v3 >> 62)
  {
LABEL_35:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_36:
    sub_252929F10(v3, v5 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9C1C0, 0xD00000000000008FLL, 0x8000000252E9C1E0);
    v17 = MEMORY[0x277D84F90];
LABEL_39:
    v46 = *(v0 + 8);

    return v46(v17);
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_36;
  }

LABEL_4:
  v49 = v0;
  v7 = 0;
  __dst[0] = MEMORY[0x277D84F90];
  v8 = v3 & 0xC000000000000001;
  v9 = (v3 + 32);
  while (!v8)
  {
    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(v3 + 8 * v7 + 32);

    v0 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    v11 = (*(*v10 + 272))();

    v5 = __dst;
    sub_25297AEDC(v11);
    ++v7;
    if (v0 == v6)
    {
      goto LABEL_13;
    }
  }

  v10 = MEMORY[0x2530ADF00](v7, v3);
  v0 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v12 = sub_252C759A0(__dst[0]);

  if (*(v12 + 16) == 1)
  {
    sub_252929F10(v3, 0);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000029;
    __dst[1] = 0x8000000252E9C270;
    sub_25292A344();
    v14 = sub_252E373B4();
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008FLL, 0x8000000252E9C1E0);

    v17 = MEMORY[0x277D84F90];
    v0 = v49;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_252E3C290;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  memcpy(__dst, (v49 + 16), 0x1F8uLL);
  v18 = sub_252E1EBE8(__dst);

  if (!(v3 >> 62))
  {
    v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_27:
    sub_252929F10(v3, 0);
    v21 = MEMORY[0x277D84F90];
LABEL_33:
    v37 = v18[23];
    v18[23] = v21;

    v38 = v18[21];
    v39 = MEMORY[0x277D84F90];
    v18[21] = MEMORY[0x277D84F90];

    v40 = v18[19];
    v18[19] = v39;

    v41 = v18[20];
    v18[20] = v39;

    v42 = v18[40];
    v18[40] = v39;

    v43 = v18[38];
    v18[38] = v39;

    v44 = v18[41];
    v18[41] = v39;

    sub_252E1E4F8(v48 + 32);

    v17 = v48;
    v0 = v49;
    goto LABEL_39;
  }

  v19 = sub_252E378C4();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_19:
  __dst[0] = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v47 = v18;
    v21 = __dst[0];
    if (v8)
    {
      v22 = 0;
      do
      {
        v23 = MEMORY[0x2530ADF00](v22, v3);
        v25 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v24 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        __dst[0] = v21;
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2529AA3A0((v26 > 1), v27 + 1, 1);
          v21 = __dst[0];
        }

        ++v22;
        *(v21 + 16) = v27 + 1;
        v28 = v21 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
      }

      while (v19 != v22);
    }

    else
    {
      v29 = *(__dst[0] + 16);
      v30 = 16 * v29;
      do
      {
        v31 = (*v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v32 = *v31;
        v33 = v31[1];
        __dst[0] = v21;
        v34 = *(v21 + 24);
        v35 = v29 + 1;

        if (v29 >= v34 >> 1)
        {
          sub_2529AA3A0((v34 > 1), v35, 1);
          v21 = __dst[0];
        }

        *(v21 + 16) = v35;
        v36 = v21 + v30;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        v30 += 16;
        ++v9;
        ++v29;
        --v19;
      }

      while (v19);
    }

    sub_252929F10(v3, 0);
    v18 = v47;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DC51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E9C2C0, 0xD000000000000074, 0x8000000252E6D740);
  v11 = *(a5 + 8);

  return v11(a1, a2, a3, a4, a5);
}

uint64_t sub_252DC52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  v10 = *(a5 + 8);

  return v10(a1, a2, a3, a4, a5);
}

BOOL sub_252DC534C()
{
  type metadata accessor for AsyncDefaultHandleDelegate();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for AsyncPollingHandleDelegate();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for AsyncScenesHandleDelegate();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_252DC53B0()
{
  result = sub_2529FC1F0(&unk_2864A1A48);
  qword_27F575C80 = result;
  return result;
}

uint64_t static FeatureFlagProvider.isFeatureEnabled(feature:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = v1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

const char *FeatureFlagProvider.SiriHomeFeatures.feature.getter()
{
  result = "remembers";
  switch(*v0)
  {
    case 1:
      result = "trial";
      break;
    case 2:
      result = "conversationalAreaButtonRFUseCases";
      break;
    case 3:
      result = "heaterCoolerForShowersAndSinks";
      break;
    case 4:
      result = "intentSelectionCache";
      break;
    case 5:
      result = "siriHelp";
      break;
    case 6:
      result = "conversationalContinuers";
      break;
    case 7:
      result = "asyncScenes";
      break;
    case 8:
      result = "asyncOutletSwitch";
      break;
    case 9:
      result = "asyncLights";
      break;
    case 0xA:
      result = "usoEntitySpan";
      break;
    case 0xB:
      result = "flashlightReformation";
      break;
    case 0xC:
      result = "flashlightReformationi18n";
      break;
    case 0xD:
      result = "appIntents";
      break;
    case 0xE:
      result = "rf2Snippets";
      break;
    case 0xF:
      result = "serverFlowByPass";
      break;
    case 0x10:
      result = "robotVacuumCleaners";
      break;
    case 0x11:
      result = "srrv2";
      break;
    case 0x12:
      result = "correction";
      break;
    case 0x13:
      result = "restrictedGuest";
      break;
    case 0x14:
      result = "protectedApps";
      break;
    case 0x15:
      result = "snippetSupression";
      break;
    case 0x16:
      result = "eagerSnippets";
      break;
    case 0x17:
      result = "rvcDisabledOnHomePod";
      break;
    case 0x18:
      result = "rvcDisabledOnWatch";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeatureFlagProvider.isSiriSuggestionsEnabled.getter()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 5;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 6;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_252DC56E0(char a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (sub_252E338F4())
  {
    v5[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v5[4] = sub_252D46D38();
    LOBYTE(v5[0]) = a1;
    v3 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

uint64_t FeatureFlagProvider.isRobotVacuumCleanersEnabled.getter()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 13;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 16;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_252DC58B4(char a1)
{
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = a1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t FeatureFlagProvider.SiriHomeFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252DC59F8()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 5;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 6;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_252DC5B24()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 13;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 16;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_252DC5C0C(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v6[4] = sub_252D46D38();
  LOBYTE(v6[0]) = a3;
  v4 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t sub_252DC5C68(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = v1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

BOOL _s22HomeAutomationInternal19FeatureFlagProviderV02isD7Enabled11featureName6domainSbSS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() shared];
  v9 = sub_252E36F04();
  v10 = sub_252E36F04();
  v11 = [v8 stateForFeature:v9 domain:v10];

  if (v11)
  {
    v12 = [v11 value];
    v13 = v12 == 1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);

    v15 = sub_252E36AC4();
    v16 = sub_252E374C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_252BE2CE0(a3, a4, &v25);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_252BE2CE0(a1, a2, &v25);
      *(v17 + 22) = 2080;
      if (v12 == 1)
      {
        v19 = 0x64656C62616E65;
      }

      else
      {
        v19 = 0x64656C6261736964;
      }

      if (v12 == 1)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = sub_252BE2CE0(v19, v20, &v25);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_252917000, v15, v16, "Feature flag %s/%s : %s", v17, 0x20u);
      swift_arrayDestroy();
      v22 = v18;
      v13 = v12 == 1;
      MEMORY[0x2530AED00](v22, -1, -1);
      MEMORY[0x2530AED00](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    MEMORY[0x2530AD570](a3, a4);
    MEMORY[0x2530AD570](47, 0xE100000000000000);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x6173696420736920, 0xEC00000064656C62);
    sub_252CC3D90(0x3A65727574616546, 0xE900000000000020, 0xD00000000000007ALL, 0x8000000252E9C4F0);

    return 0;
  }

  return v13;
}

unint64_t sub_252DC6064()
{
  result = qword_27F545F98;
  if (!qword_27F545F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlagProvider.SiriHomeFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlagProvider.SiriHomeFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DeltaQuantifierSemantic.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6777186;
  }
}

HomeAutomationInternal::DeltaQuantifierSemantic_optional __swiftcall DeltaQuantifierSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DC62D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC63BC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DC6450()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252DC64D0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252DC656C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x6C6C616D73;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6777186;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252DC65C0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC66C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC67C0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (*a2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC696C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DC6C48();
  v5 = sub_252DC6C9C();
  v6 = sub_252DC6CF0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal23DeltaQuantifierSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252DC6ACC()
{
  result = qword_27F545FA0;
  if (!qword_27F545FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FA0);
  }

  return result;
}

unint64_t sub_252DC6B24()
{
  result = qword_27F545FA8;
  if (!qword_27F545FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FA8);
  }

  return result;
}

unint64_t sub_252DC6B7C()
{
  result = qword_27F545FB0;
  if (!qword_27F545FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545FB8, &qword_252E60D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FB0);
  }

  return result;
}

unint64_t sub_252DC6BE4()
{
  result = qword_27F545FC0;
  if (!qword_27F545FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FC0);
  }

  return result;
}

unint64_t sub_252DC6C48()
{
  result = qword_27F545FC8;
  if (!qword_27F545FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FC8);
  }

  return result;
}

unint64_t sub_252DC6C9C()
{
  result = qword_27F545FD0;
  if (!qword_27F545FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FD0);
  }

  return result;
}

unint64_t sub_252DC6CF0()
{
  result = qword_27F545FD8;
  if (!qword_27F545FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545FD8);
  }

  return result;
}

BOOL sub_252DC6D60(void *a1, void *a2, uint64_t (*a3)(void *))
{
  v209 = a3;
  v208 = sub_252E32E84();
  v5 = *(v208 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_252E32A64();
  v8 = *(v220 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v220);
  v219 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v11 + 288), &v226);

  v12 = *(&v227 + 1);
  v13 = v228;
  __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
  v14 = (*(v13 + 184))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v226);
  result = 0;
  if ((v14 & 1) == 0 || !a2)
  {
    return result;
  }

  v204 = v5;
  v16 = [a2 entityResponses];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HomeEntityResponse();
    v213 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D60);
    *&v226 = 0;
    *(&v226 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v226 = 0xD00000000000002FLL;
    *(&v226 + 1) = 0x8000000252E69700;
    v19 = a2;
    v20 = [v19 description];
    v21 = sub_252E36F34();
    v23 = v22;

    MEMORY[0x2530AD570](v21, v23);

    sub_252CC3D90(v226, *(&v226 + 1), 0xD000000000000098, 0x8000000252E69730);

    v213 = MEMORY[0x277D84F90];
  }

  v221 = v8;
  v205 = a1;
  sub_252B680FC();
  v24 = sub_252B63B0C();

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (v24 + 32);
    v217 = v25 - 1;
    v28 = MEMORY[0x277D84F90];
    v218 = (v24 + 32);
    while (1)
    {
      v210 = v28;
      v29 = &v27[152 * v26];
      v30 = v26;
      while (1)
      {
        if (v30 >= *(v24 + 16))
        {
          goto LABEL_96;
        }

        v31 = *(v29 + 1);
        v226 = *v29;
        v227 = v31;
        v32 = *(v29 + 2);
        v33 = *(v29 + 3);
        v34 = *(v29 + 5);
        v230 = *(v29 + 4);
        v231 = v34;
        v228 = v32;
        v229 = v33;
        v35 = *(v29 + 6);
        v36 = *(v29 + 7);
        v37 = *(v29 + 8);
        v235 = *(v29 + 72);
        v233 = v36;
        v234 = v37;
        v232 = v35;
        if (v235)
        {
          v38 = sub_252E37DB4();
          sub_25297DE08(&v226, v225);

          if ((v38 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_25297DE08(&v226, v225);
        }

        if (*(&v234 + 1) > 0.07)
        {
          break;
        }

LABEL_13:
        sub_2529AEC80(&v226);
        ++v30;
        v29 += 152;
        if (v25 == v30)
        {
          v28 = v210;
          goto LABEL_26;
        }
      }

      v28 = v210;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA580(0, *(v28 + 16) + 1, 1);
        v28 = v224;
      }

      v41 = *(v28 + 16);
      v40 = *(v28 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2529AA580((v40 > 1), v41 + 1, 1);
        v28 = v224;
      }

      v26 = v30 + 1;
      *(v28 + 16) = v41 + 1;
      v42 = v28 + 152 * v41;
      v43 = v227;
      *(v42 + 32) = v226;
      *(v42 + 48) = v43;
      v44 = v228;
      v45 = v229;
      v46 = v231;
      *(v42 + 96) = v230;
      *(v42 + 112) = v46;
      *(v42 + 64) = v44;
      *(v42 + 80) = v45;
      v47 = v232;
      v48 = v233;
      v49 = v234;
      *(v42 + 176) = v235;
      *(v42 + 144) = v48;
      *(v42 + 160) = v49;
      *(v42 + 128) = v47;
      v27 = v218;
      if (v217 == v30)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_26:

  v50 = *(v28 + 16);
  v210 = v28;
  v206 = v50;
  if (v50)
  {
    v51 = 0;
    v52 = v28 + 32;
    v53 = v50 - 1;
    v54 = MEMORY[0x277D84F90];
    v25 = 152;
    do
    {
      v55 = (v52 + 152 * v51);
      v56 = v51;
      while (1)
      {
        if (v56 >= *(v28 + 16))
        {
          goto LABEL_97;
        }

        v57 = v55[1];
        v226 = *v55;
        v227 = v57;
        v58 = v55[2];
        v59 = v55[3];
        v60 = v55[5];
        v230 = v55[4];
        v231 = v60;
        v228 = v58;
        v229 = v59;
        v61 = v55[6];
        v62 = v55[7];
        v63 = v55[8];
        v235 = *(v55 + 72);
        v233 = v62;
        v234 = v63;
        v232 = v61;
        v51 = v56 + 1;
        if (*(&v230 + 1))
        {
          break;
        }

        v55 = (v55 + 152);
        ++v56;
        if (v50 == v51)
        {
          goto LABEL_40;
        }
      }

      sub_25297DE08(&v226, v225);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v54;
      if ((v64 & 1) == 0)
      {
        sub_2529AA580(0, *(v54 + 16) + 1, 1);
        v54 = v224;
      }

      v65 = v54;
      v66 = *(v54 + 16);
      v67 = *(v65 + 24);
      if (v66 >= v67 >> 1)
      {
        sub_2529AA580((v67 > 1), v66 + 1, 1);
        v65 = v224;
      }

      *(v65 + 16) = v66 + 1;
      v68 = v65 + 152 * v66;
      v69 = v227;
      *(v68 + 32) = v226;
      *(v68 + 48) = v69;
      v70 = v228;
      v71 = v229;
      v72 = v231;
      *(v68 + 96) = v230;
      *(v68 + 112) = v72;
      *(v68 + 64) = v70;
      *(v68 + 80) = v71;
      v73 = v232;
      v74 = v233;
      v75 = v234;
      *(v68 + 176) = v235;
      *(v68 + 144) = v74;
      *(v68 + 160) = v75;
      *(v68 + 128) = v73;
      v28 = v210;
      v50 = v206;
      v54 = v65;
    }

    while (v53 != v56);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

LABEL_40:
  v25 = MEMORY[0x277D84F90];
  v215 = *(v54 + 16);
  if (!v215)
  {
    v77 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

  v76 = 0;
  v214 = (v54 + 32);
  v218 = v221 + 8;
  v77 = MEMORY[0x277D84F90];
  v212 = v54;
  do
  {
    if (v76 >= *(v54 + 16))
    {
      goto LABEL_98;
    }

    v217 = v76;
    v78 = &v214[19 * v76];
    v79 = *(v78 + 1);
    v226 = *v78;
    v227 = v79;
    v80 = *(v78 + 2);
    v81 = *(v78 + 3);
    v82 = *(v78 + 5);
    v230 = *(v78 + 4);
    v231 = v82;
    v228 = v80;
    v229 = v81;
    v83 = *(v78 + 6);
    v84 = *(v78 + 7);
    v85 = *(v78 + 8);
    v235 = *(v78 + 72);
    v233 = v84;
    v234 = v85;
    v232 = v83;
    if (!*(&v226 + 1))
    {
      v88 = v25;
      goto LABEL_54;
    }

    v216 = v77;
    v224 = v226;
    v222 = 0x6965636976726573;
    v223 = 0xEA00000000003A64;
    sub_25297DE08(&v226, v225);
    v221 = sub_252947DBC();
    v86 = sub_252E37794();
    v25 = *(v86 + 16);
    v87 = v25 != 0;
    if (v25 < 2)
    {

      sub_2529AEC80(&v226);
      v25 = MEMORY[0x277D84F90];
      v88 = MEMORY[0x277D84F90];
      v54 = v212;
      v77 = v216;
      goto LABEL_54;
    }

    v89 = v86;
    *&v224 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, (v25 - v87) & ~((v25 - v87) >> 63), 0);
    if (((v25 - v87) & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    v88 = v224;
    v211 = v89;
    v90 = (v89 + 16 * v87 + 40);
    do
    {
      if (v87 >= v25)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v91 = *v90;
      v225[0] = *(v90 - 1);
      v225[1] = v91;

      v92 = v219;
      sub_252E32A44();
      v93 = sub_252E377A4();
      v95 = v94;
      (*v218)(v92, v220);

      *&v224 = v88;
      v97 = *(v88 + 16);
      v96 = *(v88 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_2529AA3A0((v96 > 1), v97 + 1, 1);
        v88 = v224;
      }

      *(v88 + 16) = v97 + 1;
      v98 = v88 + 16 * v97;
      *(v98 + 32) = v93;
      *(v98 + 40) = v95;
      ++v87;
      v90 += 2;
    }

    while (v25 != v87);

    sub_2529AEC80(&v226);
    v54 = v212;
    v77 = v216;
    v25 = MEMORY[0x277D84F90];
LABEL_54:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_2529F8300(0, v77[2] + 1, 1, v77);
    }

    v100 = v77[2];
    v99 = v77[3];
    v101 = v217;
    if (v100 >= v99 >> 1)
    {
      v102 = sub_2529F8300((v99 > 1), v100 + 1, 1, v77);
      v101 = v217;
      v77 = v102;
    }

    v76 = v101 + 1;
    v77[2] = v100 + 1;
    v77[v100 + 4] = v88;
  }

  while (v76 != v215);
LABEL_61:

  v25 = v77[2];
  v103 = MEMORY[0x277D84F90];
  if (v25)
  {
    v104 = 0;
    v105 = v77;
    v106 = v77 + 4;
    do
    {
      if (v104 >= v105[2])
      {
        goto LABEL_99;
      }

      v107 = v106[v104];
      v108 = *(v107 + 16);
      v109 = *(v103 + 2);
      v110 = v109 + v108;
      if (__OFADD__(v109, v108))
      {
        goto LABEL_100;
      }

      v111 = v106[v104];

      v112 = swift_isUniquelyReferenced_nonNull_native();
      if (v112 && v110 <= *(v103 + 3) >> 1)
      {
        if (!*(v107 + 16))
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v109 <= v110)
        {
          v113 = v109 + v108;
        }

        else
        {
          v113 = v109;
        }

        v103 = sub_2529F7A80(v112, v113, 1, v103);
        if (!*(v107 + 16))
        {
LABEL_63:

          if (v108)
          {
            goto LABEL_101;
          }

          goto LABEL_64;
        }
      }

      if ((*(v103 + 3) >> 1) - *(v103 + 2) < v108)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      if (v108)
      {
        v114 = *(v103 + 2);
        v115 = __OFADD__(v114, v108);
        v116 = v114 + v108;
        if (v115)
        {
          goto LABEL_105;
        }

        *(v103 + 2) = v116;
      }

LABEL_64:
      ++v104;
    }

    while (v25 != v104);
  }

  v219 = v103;

  *&v226 = MEMORY[0x277D84F90];
  v25 = v213;
  if (v213 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v118 = 0;
    v119 = v25 & 0xC000000000000001;
    v120 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v119)
      {
        v121 = MEMORY[0x2530ADF00](v118, v25);
      }

      else
      {
        if (v118 >= *(v120 + 16))
        {
          goto LABEL_103;
        }

        v121 = *(v25 + 8 * v118 + 32);
      }

      v122 = v121;
      v123 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      v124 = [v121 entity];
      if (v124)
      {
        v125 = v124;
        v126 = [v124 type];

        if (v126 == 7)
        {
          sub_252E37A94();
          v127 = *(v226 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v25 = v213;
      }

      else
      {
      }

      ++v118;
      if (v123 == i)
      {
        v128 = v226;
        goto LABEL_109;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    ;
  }

  v128 = MEMORY[0x277D84F90];
LABEL_109:

  if ((v128 & 0x8000000000000000) == 0 && (v128 & 0x4000000000000000) == 0)
  {
    v129 = *(v128 + 16);
    if (v129)
    {
      goto LABEL_112;
    }

LABEL_132:
    v221 = MEMORY[0x277D84F90];
    goto LABEL_133;
  }

LABEL_131:
  v129 = sub_252E378C4();
  if (!v129)
  {
    goto LABEL_132;
  }

LABEL_112:
  v130 = 0;
  v221 = MEMORY[0x277D84F90];
  do
  {
    v131 = v130;
    while (1)
    {
      if ((v128 & 0xC000000000000001) != 0)
      {
        v132 = MEMORY[0x2530ADF00](v131, v128);
      }

      else
      {
        if (v131 >= *(v128 + 16))
        {
          goto LABEL_130;
        }

        v132 = *(v128 + 8 * v131 + 32);
      }

      v133 = v132;
      v130 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v134 = [v132 entity];
      if (v134)
      {
        v135 = v134;
        v136 = [v134 entityIdentifier];

        if (v136)
        {
          break;
        }
      }

      ++v131;
      if (v130 == v129)
      {
        goto LABEL_133;
      }
    }

    v137 = sub_252E36F34();
    v139 = v138;

    v140 = swift_isUniquelyReferenced_nonNull_native();
    if ((v140 & 1) == 0)
    {
      v221 = sub_2529F7A80(0, *(v221 + 2) + 1, 1, v221);
    }

    v142 = *(v221 + 2);
    v141 = *(v221 + 3);
    if (v142 >= v141 >> 1)
    {
      v221 = sub_2529F7A80((v141 > 1), v142 + 1, 1, v221);
    }

    v143 = v221;
    *(v221 + 2) = v142 + 1;
    v144 = &v143[16 * v142];
    *(v144 + 4) = v137;
    *(v144 + 5) = v139;
  }

  while (v130 != v129);
LABEL_133:

  v145 = sub_252DF88E4(v221);

  type metadata accessor for HomeStore();
  v146 = static HomeStore.shared.getter();
  v147 = v146[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v147 != 2 && (v147 & 1) == 0 || (v148 = v205, (v149 = [v205 filters]) == 0))
  {

    goto LABEL_139;
  }

  v150 = v149;
  type metadata accessor for HomeFilter();
  v151 = sub_252E37264();

  v152 = [v148 userTask];
  v153 = HomeStore.services(matching:supporting:)(v151, v152);
  v155 = v154;

  if (v155)
  {
    sub_252929F10(v153, 1);

LABEL_139:

    v153 = 0xD00000000000008FLL;
    if (qword_27F53F4D0 != -1)
    {
LABEL_213:
      swift_once();
    }

    v156 = sub_252E36AD4();
    __swift_project_value_buffer(v156, qword_27F544D18);
    sub_252CC3D90(v153 - 98, 0x8000000252E7A8A0, 0xD00000000000008FLL, 0x8000000252E6B430);
    return 0;
  }

  v157 = *(v145 + 16);
  if (v153 >= 0)
  {
    v158 = v153 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v158 = v153;
  }

  v218 = *(v145 + 16);
  if (v157)
  {
    v212 = v158;
    v159 = 0;
    v217 = v145 + 32;
    v214 = (v204 + 16);
    v160 = MEMORY[0x277D84F90];
    v213 = v204 + 8;
    v215 = v145;
    v216 = (v153 >> 62);
    do
    {
      v220 = v160;
      while (1)
      {
        if (v159 >= *(v145 + 16))
        {
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        v161 = (v217 + 16 * v159);
        v162 = *v161;
        v163 = v161[1];
        if (v216)
        {
          v170 = v159;
          v171 = sub_252E378C4();
          v159 = v170;
          v164 = v171;
        }

        else
        {
          v164 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v221 = v159 + 1;

        if (v164)
        {
          break;
        }

LABEL_147:

        v160 = v220;
        v159 = v221;
        v145 = v215;
        if (v221 == v218)
        {
          goto LABEL_175;
        }
      }

      v165 = 0;
      while (1)
      {
        if ((v153 & 0xC000000000000001) != 0)
        {
          v166 = MEMORY[0x2530ADF00](v165, v153);
          v167 = v165 + 1;
          if (__OFADD__(v165, 1))
          {
            goto LABEL_208;
          }
        }

        else
        {
          if (v165 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_209;
          }

          v166 = *(v153 + 8 * v165 + 32);

          v167 = v165 + 1;
          if (__OFADD__(v165, 1))
          {
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
            goto LABEL_210;
          }
        }

        v168 = *(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
        if (v168)
        {
          v169 = *(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v162 && v168 == v163;
          if (v169 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }

        ++v165;
        if (v167 == v164)
        {
          goto LABEL_147;
        }
      }

      v173 = v207;
      v172 = v208;
      (*v214)(v207, v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v208);

      v174 = sub_252E32E24();
      v176 = v175;

      (*v213)(v173, v172);
      v160 = v220;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_2529F7A80(0, *(v160 + 2) + 1, 1, v160);
      }

      v145 = v215;
      v178 = *(v160 + 2);
      v177 = *(v160 + 3);
      v159 = v221;
      if (v178 >= v177 >> 1)
      {
        v180 = sub_2529F7A80((v177 > 1), v178 + 1, 1, v160);
        v159 = v221;
        v160 = v180;
      }

      *(v160 + 2) = v178 + 1;
      v179 = &v160[16 * v178];
      *(v179 + 4) = v174;
      *(v179 + 5) = v176;
    }

    while (v159 != v218);
  }

  else
  {
    v160 = MEMORY[0x277D84F90];
  }

LABEL_175:
  sub_252929F10(v153, 0);

  v182 = *(v160 + 2);
  if (v182)
  {
    v153 = 0;
    v183 = (v160 + 40);
    v184 = -v182;
    v185 = -1;
    do
    {
      v186 = v184 + v185 == -1;
      if (v184 + v185 == -1)
      {
        break;
      }

      if (++v185 >= *(v160 + 2))
      {
        goto LABEL_212;
      }

      v187 = v160;
      v188 = v183 + 2;
      v189 = *v183;
      *&v226 = *(v183 - 1);
      *(&v226 + 1) = v189;
      MEMORY[0x28223BE20](v181);
      *(&v204 - 2) = &v226;

      v190 = sub_2529ED970(v209, (&v204 - 4), v219);

      v183 = v188;
      v160 = v187;
    }

    while ((v190 & 1) != 0);
  }

  else
  {
    v186 = 0;
  }

  v191 = -1;
  v192 = 160;
  do
  {
    v193 = v191 - v206;
    if (v191 - v206 == -1)
    {
      break;
    }

    if (++v191 >= *(v210 + 16))
    {
      goto LABEL_211;
    }

    v194 = *(v210 + v192);
    v192 += 152;
  }

  while (!v194);

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v195 = sub_252E36AD4();
  v221 = __swift_project_value_buffer(v195, qword_27F544D18);
  *&v226 = 0;
  *(&v226 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E9C6B0);
  v196 = v219;
  v197 = MEMORY[0x2530AD730](v219, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v197);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E9C6D0);
  if (v193 == -1)
  {
    v198 = 0x65736C6166;
  }

  else
  {
    v198 = 1702195828;
  }

  if (v193 == -1)
  {
    v199 = 0xE500000000000000;
  }

  else
  {
    v199 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v198, v199);

  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E9C6F0);
  if (v186)
  {
    v200 = 1702195828;
  }

  else
  {
    v200 = 0x65736C6166;
  }

  if (v186)
  {
    v201 = 0xE400000000000000;
  }

  else
  {
    v201 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v200, v201);

  sub_252CC3D90(v226, *(&v226 + 1), 0xD00000000000008FLL, 0x8000000252E6B430);

  if (*(v196 + 16))
  {
    v202 = v186;
  }

  else
  {
    v202 = 0;
  }

  v203 = v193 != -1 && v202;

  return v203;
}

uint64_t sub_252DC810C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DC8208, 0, 0);
}

uint64_t sub_252DC8208()
{
  v1 = v0[2];
  v2 = sub_252C2A5D8();
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);
    v50 = v0[10];
    v49 = v0[11];
    v52 = v0[8];
    v51 = v0[9];
    v54 = v0[6];
    v53 = v0[7];

    v55 = v0[1];

    return v55(0);
  }

  while (1)
  {
    v4 = v0[2];
    v5 = sub_252C2E2D8();
    v6 = v5;
    v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &off_279711000;
    v95 = v0;
    if (!v7)
    {
      break;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v96 = v6 & 0xFFFFFFFFFFFFFF8;
    v87 = v0[5];
    v93 = (v87 + 32);
    v98 = MEMORY[0x277D84F90];
    v90 = v6;
    v84 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v96 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 v8[221]];
      if (v14 && (v15 = v14, v16 = [v14 homeEntityName], v15, v16))
      {
        v17 = v0;
        v18 = v7;
        v20 = v17[10];
        v19 = v17[11];
        v21 = v17[4];
        sub_252E36F34();

        sub_252E37024();

        v22 = *v93;
        (*v93)(v19, v20, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2529F7F74(0, v98[2] + 1, 1, v98);
        }

        v24 = v98[2];
        v23 = v98[3];
        v8 = &off_279711000;
        v7 = v18;
        v10 = v84;
        if (v24 >= v23 >> 1)
        {
          v98 = sub_2529F7F74(v23 > 1, v24 + 1, 1, v98);
        }

        v0 = v95;
        v25 = v95[11];
        v26 = v95[4];
        v98[2] = v24 + 1;
        v22(v98 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v24, v25, v26);
        v6 = v90;
      }

      else
      {
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v47 = sub_252E378C4();

    if (!v47)
    {
      goto LABEL_44;
    }
  }

  v98 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v98;
  v27 = v0[2];

  v28 = sub_252C2E2FC();
  v29 = v28;
  if (!(v28 >> 62))
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v30 = sub_252E378C4();
  if (v30)
  {
LABEL_24:
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    v85 = v0[5];
    v91 = (v85 + 32);
    v97 = MEMORY[0x277D84F90];
    v88 = v30;
    while (1)
    {
      if (v32)
      {
        v33 = MEMORY[0x2530ADF00](v31, v29);
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_41;
      }

      v36 = [v33 v8[221]];
      if (v36 && (v37 = v36, v38 = [v36 homeEntityName], v37, v38))
      {
        v40 = v0[8];
        v39 = v0[9];
        v41 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v42 = *v91;
        (*v91)(v39, v40, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2529F7F74(0, v97[2] + 1, 1, v97);
        }

        v44 = v97[2];
        v43 = v97[3];
        v30 = v88;
        v32 = v29 & 0xC000000000000001;
        if (v44 >= v43 >> 1)
        {
          v97 = sub_2529F7F74(v43 > 1, v44 + 1, 1, v97);
        }

        v0 = v95;
        v45 = v95[9];
        v46 = v95[4];
        v97[2] = v44 + 1;
        v42(v97 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v44, v45, v46);
        v8 = &off_279711000;
      }

      else
      {
      }

      ++v31;
      if (v35 == v30)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v97 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v97;
  v57 = v0[2];

  v58 = sub_252C2E688();
  v59 = v58;
  if (v58 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v61 = 0;
    v92 = v59 & 0xFFFFFFFFFFFFFF8;
    v94 = v59 & 0xC000000000000001;
    v82 = v0[5];
    v89 = (v82 + 32);
    v62 = MEMORY[0x277D84F90];
    v83 = i;
    v86 = v59;
    while (1)
    {
      if (v94)
      {
        v63 = MEMORY[0x2530ADF00](v61, v59);
      }

      else
      {
        if (v61 >= *(v92 + 16))
        {
          goto LABEL_70;
        }

        v63 = *(v59 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v66 = [v63 v8[221]];
      if (v66 && (v67 = v66, v68 = [v66 homeEntityName], v67, v68))
      {
        v69 = v0;
        v71 = v0[6];
        v70 = v0[7];
        v72 = v62;
        v73 = v69[4];
        sub_252E36F34();

        sub_252E37024();

        v74 = *v89;
        v75 = v73;
        v62 = v72;
        (*v89)(v70, v71, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_2529F7F74(0, v72[2] + 1, 1, v72);
        }

        v77 = v62[2];
        v76 = v62[3];
        v8 = &off_279711000;
        v59 = v86;
        if (v77 >= v76 >> 1)
        {
          v62 = sub_2529F7F74(v76 > 1, v77 + 1, 1, v62);
        }

        v0 = v95;
        v78 = v95[7];
        v79 = v95[4];
        v62[2] = v77 + 1;
        v74(v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v77, v78, v79);
        i = v83;
      }

      else
      {
      }

      ++v61;
      if (v65 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v62;
  v80 = v0[3];

  v0[15] = *(v80 + 64);

  v81 = swift_task_alloc();
  v0[16] = v81;
  *v81 = v0;
  v81[1] = sub_252DCD3C8;

  return sub_252D288D4(v98, v97, v62);
}

uint64_t sub_252DC8A98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_252E36324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DC8B94, 0, 0);
}

uint64_t sub_252DC8B94()
{
  v1 = v0[2];
  v2 = sub_252C2A5D8();
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
LABEL_44:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544D18);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E9C660, 0xD00000000000008FLL, 0x8000000252E6B430);
    v50 = v0[10];
    v49 = v0[11];
    v52 = v0[8];
    v51 = v0[9];
    v54 = v0[6];
    v53 = v0[7];

    v55 = v0[1];

    return v55(0);
  }

  while (1)
  {
    v4 = v0[2];
    v5 = sub_252C2E2D8();
    v6 = v5;
    v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = &off_279711000;
    v95 = v0;
    if (!v7)
    {
      break;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v96 = v6 & 0xFFFFFFFFFFFFFF8;
    v87 = v0[5];
    v93 = (v87 + 32);
    v98 = MEMORY[0x277D84F90];
    v90 = v6;
    v84 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v96 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 v8[221]];
      if (v14 && (v15 = v14, v16 = [v14 homeEntityName], v15, v16))
      {
        v17 = v0;
        v18 = v7;
        v20 = v17[10];
        v19 = v17[11];
        v21 = v17[4];
        sub_252E36F34();

        sub_252E37024();

        v22 = *v93;
        (*v93)(v19, v20, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2529F7F74(0, v98[2] + 1, 1, v98);
        }

        v24 = v98[2];
        v23 = v98[3];
        v8 = &off_279711000;
        v7 = v18;
        v10 = v84;
        if (v24 >= v23 >> 1)
        {
          v98 = sub_2529F7F74(v23 > 1, v24 + 1, 1, v98);
        }

        v0 = v95;
        v25 = v95[11];
        v26 = v95[4];
        v98[2] = v24 + 1;
        v22(v98 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v24, v25, v26);
        v6 = v90;
      }

      else
      {
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v47 = sub_252E378C4();

    if (!v47)
    {
      goto LABEL_44;
    }
  }

  v98 = MEMORY[0x277D84F90];
LABEL_22:
  v0[12] = v98;
  v27 = v0[2];

  v28 = sub_252C2E2FC();
  v29 = v28;
  if (!(v28 >> 62))
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_24;
  }

  v30 = sub_252E378C4();
  if (v30)
  {
LABEL_24:
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    v85 = v0[5];
    v91 = (v85 + 32);
    v97 = MEMORY[0x277D84F90];
    v88 = v30;
    while (1)
    {
      if (v32)
      {
        v33 = MEMORY[0x2530ADF00](v31, v29);
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_41;
      }

      v36 = [v33 v8[221]];
      if (v36 && (v37 = v36, v38 = [v36 homeEntityName], v37, v38))
      {
        v40 = v0[8];
        v39 = v0[9];
        v41 = v0[4];
        sub_252E36F34();

        sub_252E37024();

        v42 = *v91;
        (*v91)(v39, v40, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2529F7F74(0, v97[2] + 1, 1, v97);
        }

        v44 = v97[2];
        v43 = v97[3];
        v30 = v88;
        v32 = v29 & 0xC000000000000001;
        if (v44 >= v43 >> 1)
        {
          v97 = sub_2529F7F74(v43 > 1, v44 + 1, 1, v97);
        }

        v0 = v95;
        v45 = v95[9];
        v46 = v95[4];
        v97[2] = v44 + 1;
        v42(v97 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v44, v45, v46);
        v8 = &off_279711000;
      }

      else
      {
      }

      ++v31;
      if (v35 == v30)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v97 = MEMORY[0x277D84F90];
LABEL_52:
  v0[13] = v97;
  v57 = v0[2];

  v58 = sub_252C2E688();
  v59 = v58;
  if (v58 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v61 = 0;
    v92 = v59 & 0xFFFFFFFFFFFFFF8;
    v94 = v59 & 0xC000000000000001;
    v82 = v0[5];
    v89 = (v82 + 32);
    v62 = MEMORY[0x277D84F90];
    v83 = i;
    v86 = v59;
    while (1)
    {
      if (v94)
      {
        v63 = MEMORY[0x2530ADF00](v61, v59);
      }

      else
      {
        if (v61 >= *(v92 + 16))
        {
          goto LABEL_70;
        }

        v63 = *(v59 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v66 = [v63 v8[221]];
      if (v66 && (v67 = v66, v68 = [v66 homeEntityName], v67, v68))
      {
        v69 = v0;
        v71 = v0[6];
        v70 = v0[7];
        v72 = v62;
        v73 = v69[4];
        sub_252E36F34();

        sub_252E37024();

        v74 = *v89;
        v75 = v73;
        v62 = v72;
        (*v89)(v70, v71, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_2529F7F74(0, v72[2] + 1, 1, v72);
        }

        v77 = v62[2];
        v76 = v62[3];
        v8 = &off_279711000;
        v59 = v86;
        if (v77 >= v76 >> 1)
        {
          v62 = sub_2529F7F74(v76 > 1, v77 + 1, 1, v62);
        }

        v0 = v95;
        v78 = v95[7];
        v79 = v95[4];
        v62[2] = v77 + 1;
        v74(v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v77, v78, v79);
        i = v83;
      }

      else
      {
      }

      ++v61;
      if (v65 == i)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_73:
  v0[14] = v62;
  v80 = v0[3];

  v0[15] = *(v80 + 64);

  v81 = swift_task_alloc();
  v0[16] = v81;
  *v81 = v0;
  v81[1] = sub_252DC9424;

  return sub_252D288D4(v98, v97, v62);
}

uint64_t sub_252DC9424(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 128);
  v7 = *v2;

  v8 = v4[15];
  v9 = v4[14];
  v10 = v4[13];
  v11 = v4[12];
  if (v1)
  {
    v13 = v5[10];
    v12 = v5[11];
    v14 = v5[8];
    v15 = v5[9];
    v17 = v5 + 6;
    v16 = v5[6];
    v29 = v17[1];

    v18 = *(v7 + 8);

    return v18();
  }

  else
  {
    v20 = v4[14];

    v22 = v5[10];
    v21 = v5[11];
    v24 = v5[8];
    v23 = v5[9];
    v27 = v5 + 6;
    v25 = v5[6];
    v26 = v27[1];

    v28 = *(v7 + 8);

    return v28(a1);
  }
}

uint64_t sub_252DC969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[347] = v3;
  v4[346] = a3;
  v4[345] = a2;
  v4[344] = a1;
  v5 = type metadata accessor for HomeAutomationSetAirPurifierPowerParameters(0);
  v4[348] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[349] = swift_task_alloc();
  v7 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[350] = swift_task_alloc();
  v8 = sub_252E34014();
  v4[351] = v8;
  v9 = *(v8 - 8);
  v4[352] = v9;
  v10 = *(v9 + 64) + 15;
  v4[353] = swift_task_alloc();
  v4[354] = swift_task_alloc();
  v4[355] = swift_task_alloc();
  v11 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v4[356] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DC9808, 0, 0);
}

uint64_t sub_252DC9808()
{
  v52 = v0;
  v2 = MEMORY[0x277D84F90];
  v55 = *(v0 + 2768);
  if (v55)
  {
    v3 = sub_252C285F0();
    v4 = v3;
    __dst[0] = v2;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 == v7)
      {

        v2 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v1 = sub_252DA124C(0);

      ++v7;
      if (v1)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v8 = __dst[0];
        v7 = v11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 2856) = v8;
  v5 = *(v0 + 2776);
  v13 = *(v0 + 2760);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v2;
  v6 = type metadata accessor for HomeAutomationAirPurifierResponses();
  v4 = swift_allocObject();
  *(v0 + 2864) = v4;
  *(v4 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v4 + 24) = v8;
  memcpy((v0 + 520), (v5 + 112), 0x1F8uLL);
  memcpy(__dst, (v5 + 112), 0x1F8uLL);

  sub_2529D291C(v0 + 520, v0 + 1024);
  v14 = v13;
  v1 = sub_252953488(v13, __dst, 0);
  *(v0 + 2872) = v1;

  if (qword_27F53F4D0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D18);
  __dst[0] = 0x203A746E65746E49;
  __dst[1] = 0xE800000000000000;
  memcpy((v0 + 16), (v5 + 112), 0x1F8uLL);
  memcpy((v0 + 1528), (v5 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 16, v0 + 2032);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009ALL, 0x8000000252E9C5C0);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  *(v0 + 2736) = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009ALL, 0x8000000252E9C5C0);

  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v18 + 288), v0 + 2536);

  v19 = *(v0 + 2560);
  v20 = *(v0 + 2568);
  __swift_project_boxed_opaque_existential_1((v0 + 2536), v19);
  LOBYTE(v19) = (*(v20 + 120))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2536));
  v21 = *(v0 + 2776);
  if (v19)
  {

    *(v0 + 2880) = *(v21 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v22 = swift_allocObject();
    *(v22 + 32) = 0x65736E6F70736572;
    *(v22 + 40) = 0xE900000000000073;
    *(v22 + 72) = v6;
    v23 = *(MEMORY[0x277D55C70] + 4);
    v55 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
    *(v0 + 2888) = v22;
    *(v22 + 16) = xmmword_252E3C290;
    *(v22 + 48) = v4;

    v24 = swift_task_alloc();
    *(v0 + 2896) = v24;
    *v24 = v0;
    v24[1] = sub_252DCA04C;
    v25 = v22;
LABEL_22:
    v43 = v55;

    return v43(0xD000000000000022, 0x8000000252E665E0, v25);
  }

  v26 = *(v0 + 2768);
  v27 = *(v0 + 2760);
  v28 = swift_allocObject();
  *(v0 + 3056) = v28;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v27;

  v29 = v27;

  *(v0 + 3161) = sub_252DC6D60(v29, v26, sub_25296A69C);
  if (v55)
  {
    v30 = *(v0 + 2792);
    v31 = *(v0 + 2784);
    v32 = *(v0 + 2776);
    v33 = *(v0 + 2760);
    v34 = *(v32 + 48);
    v35 = *(v0 + 2768);
    v36 = *__swift_project_boxed_opaque_existential_1((v32 + 24), v34);
    v37 = sub_252E36324();
    v38 = *(*(v37 - 8) + 56);

    v39 = v33;

    v38(v30, 1, 1, v37);
    v38(v30 + v31[9], 1, 1, v37);
    *(v30 + v31[5]) = 0;
    *(v30 + v31[6]) = 0;
    *(v30 + v31[7]) = 0;
    *(v30 + v31[8]) = 0;
    sub_252DCC68C(v30, v8, v39, v32);
    v40 = sub_252C095DC();
    *(v0 + 3064) = v40;
    v41 = *(MEMORY[0x277D55BE8] + 4);
    v55 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v42 = swift_task_alloc();
    *(v0 + 3072) = v42;
    *v42 = v0;
    v42[1] = sub_252DCB280;
    v25 = v40;
    goto LABEL_22;
  }

  v45 = *(v0 + 2832);
  v46 = *(v0 + 2776);

  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
  v48 = v46[12];
  v47 = v46[13];
  __swift_project_boxed_opaque_existential_1(v46 + 9, v48);
  sub_252AD7CC4();
  v49 = swift_task_alloc();
  *(v0 + 3120) = v49;
  *v49 = v0;
  v49[1] = sub_252DCB6C8;
  v50 = *(v0 + 2832);
  v54 = v47;

  return sub_252BDB88C(v0 + 2576, &unk_252E60F60, v28, v50, 0, 0, 0, v48);
}

uint64_t sub_252DCA04C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2896);
  v10 = *v2;
  v3[363] = a1;
  v3[364] = v1;

  if (v1)
  {
    v5 = sub_252DCA504;
  }

  else
  {
    v6 = v3[361];
    v7 = v3[360];
    v8 = v3[358];

    v5 = sub_252DCA184;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DCA184()
{
  v1 = *(v0 + 2872);
  v2 = *(v0 + 2768);
  v3 = *(v0 + 2760);
  v4 = swift_allocObject();
  *(v0 + 2920) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v2;
  v6 = v3;

  LODWORD(v1) = *(sub_252B680FC() + 129);

  if (v1 == 1)
  {
    sub_252929E74(*(v0 + 2776) + 72, v0 + 2696);
    v7 = *(v0 + 2720);
    *(v0 + 2928) = v7;
    *(v0 + 2944) = __swift_project_boxed_opaque_existential_1((v0 + 2696), v7);
    v8 = swift_task_alloc();
    *(v0 + 2952) = v8;
    *v8 = v0;
    v8[1] = sub_252DCA5E4;
    v9 = *(v0 + 2872);
    v10 = *(v0 + 2848);
    v11 = *(v0 + 2768);
    v12 = *(v0 + 2760);

    return sub_252A293A0(v10, v12, v11, v9);
  }

  else
  {
    v14 = *(v0 + 2904);
    v15 = *(v0 + 2840);
    v16 = *(v0 + 2800);
    v17 = *(v0 + 2768);
    v18 = *(v0 + 2760);
    v19 = swift_task_alloc();
    *(v0 + 2984) = v19;
    *(v19 + 16) = &unk_252E60F70;
    *(v19 + 24) = v4;
    *(v0 + 3160) = sub_252DC6D60(v18, v17, sub_25296A69C);
    sub_252E33924();
    sub_252E33F54();
    v20 = v14;
    if (v17)
    {
      v21 = v5;
      v22 = swift_task_alloc();
      *(v0 + 2992) = v22;
      *v22 = v0;
      v22[1] = sub_252DCAA68;
      v23 = *(v0 + 2776);

      return sub_252DC810C(v21);
    }

    else
    {
      v24 = *(v0 + 2904);
      *(v0 + 3016) = v24;
      v25 = *(v0 + 2984);
      v26 = *(v0 + 2776);
      v27 = v26[13];
      __swift_project_boxed_opaque_existential_1(v26 + 9, v26[12]);
      v28 = swift_task_alloc();
      *(v0 + 3024) = v28;
      *(v28 + 16) = v24;
      v29 = swift_task_alloc();
      *(v0 + 3032) = v29;
      *(v29 + 16) = &unk_252E60F80;
      *(v29 + 24) = v25;
      v30 = v24;
      v31 = swift_task_alloc();
      *(v0 + 3040) = v31;
      *v31 = v0;
      v31[1] = sub_252DCAB80;
      v32 = *(v0 + 2840);
      v34 = *(v0 + 3160);

      return sub_252A199A8(v0 + 2656, &unk_252E400A0, v28, &unk_252E3D1A0, v29, v32, 0, 0);
    }
  }
}

uint64_t sub_252DCA504()
{
  v1 = v0[361];
  v2 = v0[360];
  v3 = v0[359];
  v4 = v0[358];

  v5 = v0[364];
  v6 = v0[356];
  v7 = v0[355];
  v8 = v0[354];
  v9 = v0[353];
  v10 = v0[350];
  v11 = v0[349];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252DCA5E4()
{
  v2 = *(*v1 + 2952);
  v3 = *v1;
  v3[370] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252DCA8A8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[371] = v4;
    *v4 = v3;
    v4[1] = sub_252DCA764;
    v5 = v3[368];
    v6 = v3[367];
    v7 = v3[366];
    v8 = v3[356];
    v9 = v3[344];

    return sub_252A1D73C(v9, v8, v7, v6);
  }
}

uint64_t sub_252DCA764()
{
  v2 = *(*v1 + 2968);
  v3 = *(*v1 + 2848);
  v6 = *v1;
  *(*v1 + 2976) = v0;

  sub_252DCD368(v3, type metadata accessor for CompletionSnippetModel);
  if (v0)
  {
    v4 = sub_252DCC0BC;
  }

  else
  {
    v4 = sub_252DCA988;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DCA8A8()
{
  v1 = v0[365];
  v2 = v0[363];
  v3 = v0[359];
  v4 = v0[358];

  __swift_destroy_boxed_opaque_existential_1(v0 + 337);
  v5 = v0[370];
  v6 = v0[356];
  v7 = v0[355];
  v8 = v0[354];
  v9 = v0[353];
  v10 = v0[350];
  v11 = v0[349];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252DCA988()
{
  v1 = v0[365];
  v2 = v0[363];
  v3 = v0[359];
  v4 = v0[358];

  __swift_destroy_boxed_opaque_existential_1(v0 + 337);
  v5 = v0[356];
  v6 = v0[355];
  v7 = v0[354];
  v8 = v0[353];
  v9 = v0[350];
  v10 = v0[349];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252DCAA68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2992);
  v7 = *v2;
  *(v3 + 3000) = a1;
  *(v3 + 3008) = v1;

  if (v1)
  {
    v5 = sub_252DCB168;
  }

  else
  {
    v5 = sub_252DCAFD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DCAB80()
{
  v2 = *v1;
  v3 = *(*v1 + 3040);
  v4 = *v1;
  *(v2 + 3048) = v0;

  v5 = *(v2 + 3032);
  v6 = *(v2 + 3024);
  if (v0)
  {

    v7 = sub_252DCAEC0;
  }

  else
  {

    v7 = sub_252DCACF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252DCACF4()
{
  v1 = v0[347];
  v2 = v0[345];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[377];
  v9 = v0[373];
  v22 = v0[365];
  v23 = v0[363];
  v24 = v0[359];
  v25 = v0[358];
  v10 = v0[355];
  v11 = v0[352];
  v12 = v0[351];
  v13 = v0[344];
  (*(v4 + 112))(v7, v0 + 332, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 332);
  (*(v11 + 8))(v10, v12);

  v14 = v0[356];
  v15 = v0[355];
  v16 = v0[354];
  v17 = v0[353];
  v18 = v0[350];
  v19 = v0[349];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252DCAEC0()
{
  v1 = v0[377];
  v2 = v0[355];
  v3 = v0[352];
  v4 = v0[351];

  (*(v3 + 8))(v2, v4);
  v5 = v0[381];
  v6 = v0[373];
  v7 = v0[365];
  v8 = v0[363];
  v9 = v0[359];
  v10 = v0[358];

  v11 = v0[356];
  v12 = v0[355];
  v13 = v0[354];
  v14 = v0[353];
  v15 = v0[350];
  v16 = v0[349];

  v17 = v0[1];

  return v17();
}

uint64_t sub_252DCAFD4()
{
  v1 = *(v0 + 3000);
  v2 = *(v0 + 2904);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 3000));

    v2 = v3;
  }

  *(v0 + 3016) = v2;
  v4 = *(v0 + 2984);
  v5 = *(v0 + 2776);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 3024) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 3032) = v8;
  *(v8 + 16) = &unk_252E60F80;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 3040) = v10;
  *v10 = v0;
  v10[1] = sub_252DCAB80;
  v11 = *(v0 + 2840);
  v14 = *(v0 + 3160);

  return sub_252A199A8(v0 + 2656, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_252DCB168()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2816);
  v3 = *(v0 + 2808);
  v4 = *(v0 + 2768);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 3008);
  v6 = *(v0 + 2984);
  v7 = *(v0 + 2920);
  v8 = *(v0 + 2904);
  v9 = *(v0 + 2872);
  v10 = *(v0 + 2864);

  v11 = *(v0 + 2848);
  v12 = *(v0 + 2840);
  v13 = *(v0 + 2832);
  v14 = *(v0 + 2824);
  v15 = *(v0 + 2800);
  v16 = *(v0 + 2792);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252DCB280(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3072);
  v5 = *(*v2 + 3064);
  v8 = *v2;
  *(v3 + 3080) = a1;
  *(v3 + 3088) = v1;

  if (v1)
  {
    v6 = sub_252DCB5B0;
  }

  else
  {
    v6 = sub_252DCB3B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252DCB3B8()
{
  v1 = v0[357];
  v2 = v0[347];
  v3 = v0[346];
  v4 = v0[345];
  sub_252DCD368(v0[349], type metadata accessor for HomeAutomationSetAirPurifierPowerParameters);

  swift_bridgeObjectRelease_n();
  v5 = swift_task_alloc();
  v0[387] = v5;
  *v5 = v0;
  v5[1] = sub_252DCB498;
  v6 = v0[347];

  return sub_252E174F4(v3);
}

uint64_t sub_252DCB498(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3096);
  v7 = *v2;
  *(v3 + 3104) = a1;
  *(v3 + 3112) = v1;

  if (v1)
  {
    v5 = sub_252DCB994;
  }

  else
  {
    v5 = sub_252DCB838;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DCB5B0()
{
  v1 = v0[382];
  v2 = v0[357];
  v3 = v0[347];
  v4 = v0[346];
  v5 = v0[345];
  sub_252DCD368(v0[349], type metadata accessor for HomeAutomationSetAirPurifierPowerParameters);

  swift_bridgeObjectRelease_n();

  v6 = v0[386];
  v7 = v0[359];
  v8 = v0[358];

  v9 = v0[356];
  v10 = v0[355];
  v11 = v0[354];
  v12 = v0[353];
  v13 = v0[350];
  v14 = v0[349];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252DCB6C8()
{
  v2 = *(*v1 + 3120);
  v3 = *(*v1 + 2832);
  v4 = *(*v1 + 2816);
  v5 = *(*v1 + 2808);
  v8 = *v1;
  *(*v1 + 3128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252DCBFF0;
  }

  else
  {
    v6 = sub_252DCBE84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252DCB838()
{
  v1 = (v0 + 2744);
  v2 = *(v0 + 3104);
  v3 = *(v0 + 3080);
  *(v0 + 2744) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 2824);
  v9 = *(v0 + 2776);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 3136) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 3144) = v12;
  *v12 = v0;
  v12[1] = sub_252DCBA74;
  v13 = *(v0 + 3161);
  v14 = *(v0 + 2824);

  return sub_252BDB88C(v0 + 2616, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_252DCB994()
{
  v1 = *(v0 + 3056);
  v2 = *(v0 + 2768);

  v3 = *(v0 + 3112);
  v4 = *(v0 + 2872);
  v5 = *(v0 + 2864);

  v6 = *(v0 + 2848);
  v7 = *(v0 + 2840);
  v8 = *(v0 + 2832);
  v9 = *(v0 + 2824);
  v10 = *(v0 + 2800);
  v11 = *(v0 + 2792);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252DCBA74()
{
  v2 = *v1;
  v3 = *(*v1 + 3144);
  v4 = *(*v1 + 2824);
  v5 = *(*v1 + 2816);
  v6 = *(*v1 + 2808);
  v10 = *v1;
  *(*v1 + 3152) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252DCBD88;
  }

  else
  {
    v8 = *(v2 + 3136);

    v7 = sub_252DCBBF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252DCBBF4()
{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2760);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 3104);
  v9 = *(v0 + 3080);
  v10 = *(v0 + 3056);
  v11 = *(v0 + 2768);
  v12 = *(v0 + 2752);
  (*(v4 + 112))(v7, v0 + 2616, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));

  v13 = *(v0 + 2872);
  v14 = *(v0 + 2864);

  v15 = *(v0 + 2848);
  v16 = *(v0 + 2840);
  v17 = *(v0 + 2832);
  v18 = *(v0 + 2824);
  v19 = *(v0 + 2800);
  v20 = *(v0 + 2792);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_252DCBD88()
{
  v1 = *(v0 + 3136);
  v2 = *(v0 + 3104);
  v3 = *(v0 + 3056);
  v4 = *(v0 + 2768);

  v5 = *(v0 + 3152);
  v6 = *(v0 + 2872);
  v7 = *(v0 + 2864);

  v8 = *(v0 + 2848);
  v9 = *(v0 + 2840);
  v10 = *(v0 + 2832);
  v11 = *(v0 + 2824);
  v12 = *(v0 + 2800);
  v13 = *(v0 + 2792);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252DCBE84()
{
  v1 = v0[347];
  v2 = v0[345];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[382];
  v9 = v0[344];
  (*(v4 + 112))(v7, v0 + 322, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 322);

  v10 = v0[359];
  v11 = v0[358];

  v12 = v0[356];
  v13 = v0[355];
  v14 = v0[354];
  v15 = v0[353];
  v16 = v0[350];
  v17 = v0[349];

  v18 = v0[1];

  return v18();
}

uint64_t sub_252DCBFF0()
{
  v1 = v0[382];

  v2 = v0[391];
  v3 = v0[359];
  v4 = v0[358];

  v5 = v0[356];
  v6 = v0[355];
  v7 = v0[354];
  v8 = v0[353];
  v9 = v0[350];
  v10 = v0[349];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252DCC0BC()
{
  v1 = v0[365];
  v2 = v0[363];
  v3 = v0[359];
  v4 = v0[358];

  __swift_destroy_boxed_opaque_existential_1(v0 + 337);
  v5 = v0[372];
  v6 = v0[356];
  v7 = v0[355];
  v8 = v0[354];
  v9 = v0[353];
  v10 = v0[350];
  v11 = v0[349];

  v12 = v0[1];

  return v12();
}

uint64_t sub_252DCC19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for HomeAutomationSetAirPurifierPowerParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DCC234, 0, 0);
}

uint64_t sub_252DCC234()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = *__swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v7 = sub_252E36324();
  v8 = *(*(v7 - 8) + 56);

  v9 = v4;

  v8(v1, 1, 1, v7);
  v8(v1 + v2[9], 1, 1, v7);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  sub_252DCC68C(v1, v3, v9, v5);
  v10 = sub_252C095DC();
  v0[7] = v10;
  v11 = *(MEMORY[0x277D55BE8] + 4);
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_252DCC3EC;

  return v14(0xD000000000000022, 0x8000000252E665E0, v10);
}

uint64_t sub_252DCC3EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252DCC5E4;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252DCC538;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252DCC538()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_252DCD368(v0[6], type metadata accessor for HomeAutomationSetAirPurifierPowerParameters);

  v4 = v0[1];
  v5 = v0[10];

  return v4(v5);
}

uint64_t sub_252DCC5E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_252DCD368(v0[6], type metadata accessor for HomeAutomationSetAirPurifierPowerParameters);

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_252DCC68C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a3;
  v46[63] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  v41[1] = type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationAirPurifierResponses();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v14 + 24) = a2;
  v15 = type metadata accessor for HomeAutomationSetAirPurifierPowerParameters(0);
  v16 = v15[8];
  v17 = *(a1 + v16);
  v42 = a2;

  *(a1 + v16) = v14;
  v18 = sub_25294833C(1u, 0, 0);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [v18 dictionary];
  if (!v20)
  {

LABEL_7:
    v28 = sub_252E36324();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    goto LABEL_8;
  }

  v21 = v20;
  v41[0] = a4;
  v22 = objc_opt_self();
  v46[0] = 0;
  v23 = [v22 dataWithPropertyList:v21 format:200 options:0 error:v46];
  v24 = v46[0];
  if (!v23)
  {
    v29 = v24;
    v30 = sub_252E32C54();

    swift_willThrow();
    a4 = v41[0];
    goto LABEL_7;
  }

  v25 = sub_252E32D34();
  v27 = v26;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v25, v27);
  v28 = sub_252E36324();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  a4 = v41[0];
LABEL_8:
  sub_252956C98(v13, a1 + v15[9]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  sub_252956C98(v11, a1);
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v31 + 24) = v42;
  v32 = v15[7];
  v33 = *(a1 + v32);

  *(a1 + v32) = v31;
  memcpy(v46, (a4 + 112), 0x1F8uLL);
  memcpy(v45, (a4 + 112), sizeof(v45));
  sub_2529D291C(v46, &v44);
  v34 = v43;
  v35 = v43;
  v36 = sub_252953488(v34, v45, 0);

  v37 = v15[6];
  v38 = *(a1 + v37);

  *(a1 + v37) = v36;
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252DCCB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252DC969C(a1, a2, a3);
}

void *sub_252DCCBC4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetAirPurifierPowerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252DCCC28(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_21:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 27)
  {
    result = [a1 filters];
    if (!result)
    {
      return result;
    }

    v9 = result;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();

    KeyPath = swift_getKeyPath();
    v12 = sub_2529304DC(KeyPath, v10);

    if ((v12 & 1) != 0 || (v13 = swift_getKeyPath(), v14 = sub_252BAF91C(v13, v10), , v14))
    {
      type metadata accessor for HomeStore();
      v15 = static HomeStore.shared.getter();
      v16 = HomeStore.accessories(matching:supporting:)(v10, 0);
      LOBYTE(v18) = v17;

      if ((v18 & 1) == 0)
      {
        if (v16 >> 62)
        {
LABEL_51:
          v19 = sub_252E378C4();
          if (v19)
          {
LABEL_11:
            v20 = 0;
            while (v19 != v20)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v18 = MEMORY[0x2530ADF00](v20, v16);
                if (__OFADD__(v20, 1))
                {
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }
              }

              else
              {
                if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_51;
                }

                v18 = *(v16 + 8 * v20 + 32);

                if (__OFADD__(v20, 1))
                {
                  goto LABEL_20;
                }
              }

              v21 = (*(*v18 + 256))();

              ++v20;
              if (v21 != 39)
              {
                goto LABEL_48;
              }
            }

LABEL_46:
            sub_252929F10(v16, 0);
            return 1;
          }
        }

        else
        {
          v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_11;
          }
        }
      }

      sub_252929F10(v16, v18 & 1);
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v43 = sub_252E36AD4();
      __swift_project_value_buffer(v43, qword_27F544E08);
      v44 = sub_252E36AC4();
      v45 = sub_252E374C4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_252917000, v44, v45, "Couldn't get targetedAccessories. Invalidating candidate", v46, 2u);
        MEMORY[0x2530AED00](v46, -1, -1);
      }

      return 0;
    }

    type metadata accessor for HomeStore();
    v22 = static HomeStore.shared.getter();
    v23 = v22[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v23 == 2 || (v23 & 1) != 0)
    {
      v24 = [a1 filters];
      if (v24)
      {
        v25 = v24;
        v26 = sub_252E37264();

        v27 = [a1 userTask];
        v16 = HomeStore.services(matching:supporting:)(v26, v27);
        v29 = v28;

        if (v29)
        {
          v30 = v16;
          v31 = 1;
LABEL_49:
          sub_252929F10(v30, v31);
          return 0;
        }

        if (v16 >> 62)
        {
LABEL_59:
          v32 = sub_252E378C4();
          if (v32)
          {
LABEL_32:
            v33 = 0;
            while (v32 != v33)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x2530ADF00](v33, v16);
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_57;
                }
              }

              else
              {
                if (v33 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_58;
                }

                v34 = *(v16 + 8 * v33 + 32);

                if (__OFADD__(v33, 1))
                {
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }
              }

              v35 = [*(v34 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
              v36 = sub_252E36F34();
              v38 = v37;

              if (qword_27F53F8B8 != -1)
              {
                swift_once();
              }

              v39 = off_27F546230;
              if (!*(off_27F546230 + 2) || (v40 = sub_252A44A10(v36, v38), (v41 & 1) == 0))
              {

                goto LABEL_48;
              }

              v42 = *(v39[7] + 8 * v40);

              ++v33;
              if (v42 != 39)
              {
                goto LABEL_48;
              }
            }

            goto LABEL_46;
          }
        }

        else
        {
          v32 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_32;
          }
        }

LABEL_48:
        v30 = v16;
        v31 = 0;
        goto LABEL_49;
      }
    }
  }

  return 0;
}

uint64_t sub_252DCD160()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252DCC19C(v2, v3, v4);
}

uint64_t sub_252DCD208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252B6C5F4(a1, v4, v5, v6);
}

uint64_t sub_252DCD2BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25294B954;

  return sub_252B6C6AC(a1, v5);
}

uint64_t sub_252DCD368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252DCD3CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_252E37174() != a1 || v9 != a2)
  {
    v10 = sub_252E37DB4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_252E37064();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t HomeAutomationNLV3Intent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for HomeAutomationNLV3Intent() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545FE0, &qword_252E60FE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E60FD0;
  if (qword_27F53F768 != -1)
  {
    swift_once();
  }

  v6 = qword_27F575C88;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545FE8, &qword_252E60FE8);
  *(v5 + 64) = sub_2529E6488(&qword_27F545FF0, &qword_27F545FE8, &qword_252E60FE8);
  *(v5 + 32) = v6;
  v7 = qword_27F53F770;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27F575C90;
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545FF8, &qword_252E60FF0);
  *(v5 + 104) = sub_2529E6488(&qword_27F546000, &qword_27F545FF8, &qword_252E60FF0);
  *(v5 + 72) = v8;
  v9 = qword_27F53F778;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27F575C98;
  *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546008, &qword_252E60FF8);
  *(v5 + 144) = sub_2529E6488(&qword_27F546010, &qword_27F546008, &qword_252E60FF8);
  *(v5 + 112) = v10;
  v11 = qword_27F53F780;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27F575CA0;
  *(v5 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546018, &qword_252E61000);
  *(v5 + 184) = sub_2529E6488(&qword_27F546020, &qword_27F546018, &qword_252E61000);
  *(v5 + 152) = v12;
  v13 = qword_27F53F788;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27F575CA8;
  *(v5 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546028, &qword_252E61008);
  *(v5 + 224) = sub_2529E6488(&qword_27F546030, &qword_27F546028, &qword_252E61008);
  *(v5 + 192) = v14;
  v15 = qword_27F53F790;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27F575CB0;
  *(v5 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546038, &qword_252E61010);
  *(v5 + 264) = sub_2529E6488(&qword_27F546040, &qword_27F546038, &qword_252E61010);
  *(v5 + 232) = v16;
  v17 = qword_27F53F798;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_27F575CB8;
  *(v5 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546048, &qword_252E61018);
  *(v5 + 304) = sub_2529E6488(&qword_27F546050, &qword_27F546048, &qword_252E61018);
  *(v5 + 272) = v18;
  v19 = qword_27F53F7A0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27F575CC0;
  *(v5 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546058, &qword_252E61020);
  *(v5 + 344) = sub_2529E6488(&qword_27F546060, &qword_27F546058, &qword_252E61020);
  *(v5 + 312) = v20;
  v21 = qword_27F53F7A8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_27F575CC8;
  *(v5 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546068, &qword_252E61028);
  *(v5 + 384) = sub_2529E6488(&qword_27F546070, &qword_27F546068, &qword_252E61028);
  *(v5 + 352) = v22;
  v23 = qword_27F53F7B0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F575CD0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  *(v5 + 416) = v25;
  v26 = sub_2529E6488(&qword_27F546080, &qword_27F546078, &qword_252E61030);
  *(v5 + 424) = v26;
  *(v5 + 392) = v24;
  v27 = qword_27F53F7B8;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_27F575CD8;
  *(v5 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546088, &qword_252E61038);
  *(v5 + 464) = sub_2529E6488(&qword_27F546090, &qword_27F546088, &qword_252E61038);
  *(v5 + 432) = v28;
  v29 = qword_27F53F7C0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27F575CE0;
  *(v5 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546098, &qword_252E61040);
  *(v5 + 504) = sub_2529E6488(&qword_27F5460A0, &qword_27F546098, &qword_252E61040);
  *(v5 + 472) = v30;
  v31 = qword_27F53F7C8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_27F575CE8;
  *(v5 + 536) = v25;
  *(v5 + 544) = v26;
  *(v5 + 512) = v32;
  v33 = qword_27F53F7D0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_27F575CF0;
  *(v5 + 576) = v25;
  *(v5 + 584) = v26;
  *(v5 + 552) = v34;
  v35 = qword_27F53F7D8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_27F575CF8;
  *(v5 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460A8, &qword_252E61048);
  *(v5 + 624) = sub_2529E6488(&qword_27F5460B0, &qword_27F5460A8, &qword_252E61048);
  *(v5 + 592) = v36;
  v37 = qword_27F53F7E0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_27F575D00;
  *(v5 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460B8, &qword_252E61050);
  *(v5 + 664) = sub_2529E6488(&qword_27F5460C0, &qword_27F5460B8, &qword_252E61050);
  *(v5 + 632) = v38;
  v39 = qword_27F53F7E8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_27F575D08;
  *(v5 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460C8, &qword_252E61058);
  *(v5 + 704) = sub_2529E6488(&qword_27F5460D0, &qword_27F5460C8, &qword_252E61058);
  *(v5 + 672) = v40;
  v41 = qword_27F53F7F0;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_27F575D10;
  *(v5 + 736) = v25;
  *(v5 + 744) = v26;
  *(v5 + 712) = v42;
  v43 = qword_27F53F7F8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_27F575D18;
  *(v5 + 776) = v25;
  *(v5 + 784) = v26;
  *(v5 + 752) = v44;
  v45 = qword_27F53F800;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_27F575D20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460D8, &qword_252E61060);
  *(v5 + 816) = v47;
  v48 = sub_2529E6488(&qword_27F5460E0, &qword_27F5460D8, &qword_252E61060);
  *(v5 + 824) = v48;
  *(v5 + 792) = v46;
  v49 = qword_27F53F808;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_27F575D28;
  *(v5 + 856) = v47;
  *(v5 + 864) = v48;
  *(v5 + 832) = v50;
  v51 = qword_27F53F810;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = qword_27F575D30;
  *(v5 + 896) = v47;
  *(v5 + 904) = v48;
  *(v5 + 872) = v52;
  v53 = qword_27F53F818;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_27F575D38;
  *(v5 + 936) = v25;
  *(v5 + 944) = v26;
  *(v5 + 912) = v54;
  v55 = qword_27F53F820;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_27F575D40;
  *(v5 + 976) = v25;
  *(v5 + 984) = v26;
  *(v5 + 952) = v56;
  v57 = qword_27F53F828;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = qword_27F575D48;
  *(v5 + 1016) = v25;
  *(v5 + 1024) = v26;
  *(v5 + 992) = v58;
  v59 = qword_27F53F830;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = qword_27F575D50;
  *(v5 + 1056) = v25;
  *(v5 + 1064) = v26;
  *(v5 + 1032) = v60;
  v61 = qword_27F53F838;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = qword_27F575D58;
  *(v5 + 1096) = v25;
  *(v5 + 1104) = v26;
  *(v5 + 1072) = v62;
  v63 = qword_27F53F840;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = qword_27F575D60;
  *(v5 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460E8, &qword_252E61068);
  *(v5 + 1144) = sub_2529E6488(&qword_27F5460F0, &qword_27F5460E8, &qword_252E61068);
  *(v5 + 1112) = v64;
  v65 = qword_27F53F848;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = qword_27F575D68;
  *(v5 + 1176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460F8, &qword_252E61070);
  *(v5 + 1184) = sub_2529E6488(&qword_27F546100, &qword_27F5460F8, &qword_252E61070);
  *(v5 + 1152) = v66;
  v67 = qword_27F53F850;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = qword_27F575D70;
  *(v5 + 1216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546108, &qword_252E61078);
  *(v5 + 1224) = sub_2529E6488(&qword_27F546110, &qword_27F546108, &qword_252E61078);
  *(v5 + 1192) = v68;
  v69 = qword_27F53F858;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = qword_27F575D78;
  *(v5 + 1256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546118, &qword_252E61080);
  *(v5 + 1264) = sub_2529E6488(&qword_27F546120, &qword_27F546118, &qword_252E61080);
  *(v5 + 1232) = v70;
  v71 = qword_27F53F860;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = qword_27F575D80;
  *(v5 + 1296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546128, &qword_252E61088);
  *(v5 + 1304) = sub_2529E6488(&qword_27F546130, &qword_27F546128, &qword_252E61088);
  *(v5 + 1272) = v72;
  v73 = qword_27F53F868;

  if (v73 != -1)
  {
    swift_once();
  }

  v74 = qword_27F575D88;
  *(v5 + 1336) = v25;
  *(v5 + 1344) = v26;
  *(v5 + 1312) = v74;
  v75 = qword_27F53F870;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = qword_27F575D90;
  *(v5 + 1376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546138, &qword_252E61090);
  *(v5 + 1384) = sub_2529E6488(&qword_27F546140, &qword_27F546138, &qword_252E61090);
  *(v5 + 1352) = v76;
  v77 = qword_27F53F878;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = qword_27F575D98;
  *(v5 + 1416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546148, &qword_252E61098);
  *(v5 + 1424) = sub_2529E6488(&qword_27F546150, &qword_27F546148, &qword_252E61098);
  *(v5 + 1392) = v78;
  v79 = sub_252E345E4();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();

  *(a2 + v4) = sub_252E345D4();
  v82 = sub_252E358D4();
  v83 = *(*(v82 - 8) + 32);

  return v83(a2, a1, v82);
}

uint64_t type metadata accessor for HomeAutomationNLV3Intent()
{
  result = qword_27F546178;
  if (!qword_27F546178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252DCE6E8(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  type metadata accessor for HomeAutomationNLV3Intent();
  sub_252DD1880(&qword_27F540470);

  return sub_252E34BF4();
}

uint64_t sub_252DCE7E4(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  type metadata accessor for HomeAutomationNLV3Intent();
  sub_252DD1880(&qword_27F540470);
  sub_252E34BE4();
  return v5;
}

uint64_t sub_252DCE908(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  type metadata accessor for HomeAutomationNLV3Intent();
  sub_252DD1880(&qword_27F540470);

  return sub_252E34BE4();
}

uint64_t HomeAutomationNLV3Intent.date.getter()
{
  if (qword_27F53F778 != -1)
  {
    swift_once();
  }

  type metadata accessor for HomeAutomationNLV3Intent();
  sub_252DD1880(&qword_27F540470);

  return sub_252E34BE4();
}

uint64_t sub_252DCEBB4()
{
  v0 = sub_252E349A4();
  v47 = *(v0 - 8);
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546160, &qword_252E610A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_252E34AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546168, &qword_252E610A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  sub_252E35864();
  v16 = sub_252E34C44();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_25293847C(v15, &qword_27F546168, &qword_252E610A8);
    return MEMORY[0x277D84F90];
  }

  v18 = sub_252E34C24();
  result = (*(v17 + 8))(v15, v16);
  v20 = *(v18 + 16);
  if (!v20)
  {

    return MEMORY[0x277D84F90];
  }

  v55 = (v9 + 56);
  v56 = v18 + 32;
  v51 = (v9 + 32);
  v58 = (v47 + 8);
  v59 = v47 + 16;
  v48 = (v9 + 8);
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v46 = v7;
  v45 = v8;
  v50 = v18;
  v49 = v20;
  while (v21 < *(v18 + 16))
  {
    sub_252929E74(v56 + 40 * v21, v62);
    sub_252929E74(v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
    if (swift_dynamicCast())
    {
      v54 = v21;
      (*v55)(v7, 0, 1, v8);
      (*v51)(v57, v7, v8);
      v23 = sub_252E34AA4();
      v24 = *(v23 + 16);
      if (v24)
      {
        v53 = v22;
        v25 = *(v47 + 80);
        v52 = v23;
        v26 = v23 + ((v25 + 32) & ~v25);
        v60 = *(v47 + 72);
        v27 = *(v47 + 16);
        v28 = MEMORY[0x277D84F90];
        while (1)
        {
          v29 = v0;
          v27(v3, v26, v0);
          v30 = v3;
          result = sub_252E348E4();
          v31 = *(result + 16);
          v32 = *(v28 + 16);
          v33 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          v34 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v33 > *(v28 + 24) >> 1)
          {
            if (v32 <= v33)
            {
              v35 = v32 + v31;
            }

            else
            {
              v35 = v32;
            }

            result = sub_2529F7A80(result, v35, 1, v28);
            v28 = result;
          }

          v0 = v29;
          v3 = v30;
          if (*(v34 + 16))
          {
            if ((*(v28 + 24) >> 1) - *(v28 + 16) < v31)
            {
              goto LABEL_41;
            }

            swift_arrayInitWithCopy();
            (*v58)(v30, v29);

            if (v31)
            {
              v36 = *(v28 + 16);
              v37 = __OFADD__(v36, v31);
              v38 = v36 + v31;
              if (v37)
              {
                goto LABEL_42;
              }

              *(v28 + 16) = v38;
            }
          }

          else
          {
            (*v58)(v30, v29);

            if (v31)
            {
              goto LABEL_40;
            }
          }

          v26 += v60;
          if (!--v24)
          {

            v7 = v46;
            v8 = v45;
            v22 = v53;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v28 = MEMORY[0x277D84F90];
LABEL_27:
      v20 = v49;
      if (*(v28 + 16))
      {

        v40 = sub_252C75848(v39);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2529F8278(0, v22[2] + 1, 1, v22);
        }

        v42 = v22[2];
        v41 = v22[3];
        v43 = v22;
        if (v42 >= v41 >> 1)
        {
          v43 = sub_2529F8278((v41 > 1), v42 + 1, 1, v22);
        }

        (*v48)(v57, v8);
        __swift_destroy_boxed_opaque_existential_1(v62);
        v43[2] = v42 + 1;
        v22 = v43;
        v43[v42 + 4] = v40;
      }

      else
      {
        (*v48)(v57, v8);
        __swift_destroy_boxed_opaque_existential_1(v62);
      }

      v18 = v50;
      v21 = v54;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v62);
      (*v55)(v7, 1, 1, v8);
      result = sub_25293847C(v7, &qword_27F546160, &qword_252E610A0);
    }

    if (++v21 == v20)
    {

      return v22;
    }
  }

  __break(1u);
  return result;
}

unint64_t HomeAutomationNLV3Intent.fallbackWebSearchQuery.getter()
{
  type metadata accessor for HomeAutomationNLV3Intent();
  sub_252DD1880(&qword_27F546158);
  sub_252E34894();
  v0 = sub_252DD11CC(0xD00000000000001CLL, 0x8000000252E9C720);

  if (!*(v0 + 2) || (v2 = *(v0 + 4), v1 = *(v0 + 5), , , sub_252DCD3CC(40, 0xE100000000000000, v2, v1), (v3 & 1) != 0) || (sub_252DCD3CC(41, 0xE100000000000000, v2, v1), (v4 & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = sub_252E37064();
    result = sub_252E37074();
    if (result >> 14 < v6 >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_252E37064();
      v7 = sub_252E37194();
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = MEMORY[0x2530AD4C0](v7, v9, v11, v13);

      return v14;
    }
  }

  return result;
}

uint64_t HomeAutomationNLV3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252E358D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeAutomationNLV3Intent.intent.setter(uint64_t a1)
{
  v3 = sub_252E358D4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeAutomationNLV3Intent() + 20));
}

uint64_t HomeAutomationNLV3Intent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomeAutomationNLV3Intent() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_252DCF72C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545FE8, &qword_252E60FE8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575C88 = result;
  return result;
}

uint64_t sub_252DCF794()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545FF8, &qword_252E60FF0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575C90 = result;
  return result;
}

uint64_t sub_252DCF7FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546008, &qword_252E60FF8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575C98 = result;
  return result;
}

uint64_t sub_252DCF864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546018, &qword_252E61000);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CA0 = result;
  return result;
}

uint64_t sub_252DCF8CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546028, &qword_252E61008);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CA8 = result;
  return result;
}

uint64_t sub_252DCF934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546038, &qword_252E61010);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CB0 = result;
  return result;
}

uint64_t sub_252DCF99C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546048, &qword_252E61018);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CB8 = result;
  return result;
}

uint64_t sub_252DCFA04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546058, &qword_252E61020);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CC0 = result;
  return result;
}

uint64_t sub_252DCFA6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546068, &qword_252E61028);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CC8 = result;
  return result;
}

uint64_t sub_252DCFAD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CD0 = result;
  return result;
}

uint64_t sub_252DCFB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546088, &qword_252E61038);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CD8 = result;
  return result;
}

uint64_t sub_252DCFBA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546098, &qword_252E61040);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CE0 = result;
  return result;
}

uint64_t sub_252DCFC0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CE8 = result;
  return result;
}

uint64_t sub_252DCFC74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CF0 = result;
  return result;
}

uint64_t sub_252DCFCDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460A8, &qword_252E61048);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575CF8 = result;
  return result;
}

uint64_t sub_252DCFD44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460B8, &qword_252E61050);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D00 = result;
  return result;
}

uint64_t sub_252DCFDAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460C8, &qword_252E61058);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D08 = result;
  return result;
}

uint64_t sub_252DCFE14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D10 = result;
  return result;
}

uint64_t sub_252DCFE7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D18 = result;
  return result;
}

uint64_t sub_252DCFEE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460D8, &qword_252E61060);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D20 = result;
  return result;
}

uint64_t sub_252DCFF4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460D8, &qword_252E61060);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D28 = result;
  return result;
}

uint64_t sub_252DCFFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460D8, &qword_252E61060);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D30 = result;
  return result;
}

uint64_t sub_252DD001C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D38 = result;
  return result;
}

uint64_t sub_252DD0084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D40 = result;
  return result;
}

uint64_t sub_252DD00EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D48 = result;
  return result;
}

uint64_t sub_252DD0154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D50 = result;
  return result;
}

uint64_t sub_252DD01BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D58 = result;
  return result;
}

uint64_t sub_252DD0224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460E8, &qword_252E61068);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D60 = result;
  return result;
}

uint64_t sub_252DD028C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5460F8, &qword_252E61070);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D68 = result;
  return result;
}

uint64_t sub_252DD02F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546108, &qword_252E61078);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D70 = result;
  return result;
}

uint64_t sub_252DD035C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546118, &qword_252E61080);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D78 = result;
  return result;
}

uint64_t sub_252DD03C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546128, &qword_252E61088);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D80 = result;
  return result;
}

uint64_t sub_252DD042C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546078, &qword_252E61030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D88 = result;
  return result;
}

uint64_t sub_252DD0494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546138, &qword_252E61090);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D90 = result;
  return result;
}

uint64_t sub_252DD04FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546148, &qword_252E61098);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_252E345F4();
  qword_27F575D98 = result;
  return result;
}

uint64_t HomeAutomationNLV3Intent.date(pickOriginalValue:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_252E34904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v76 - v10;
  v11 = sub_252E34944();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v83 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5406E0, &qword_252E3D778);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v94 = &v76 - v19;
  v89 = sub_252E349A4();
  v93 = *(v89 - 8);
  v20 = *(v93 + 64);
  v21 = MEMORY[0x28223BE20](v89);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v85 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v87 = &v76 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546160, &qword_252E610A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v76 - v29;
  v31 = sub_252E34AB4();
  v91 = *(v31 - 8);
  v92 = v31;
  v32 = *(v91 + 64);
  MEMORY[0x28223BE20](v31);
  v90 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546168, &qword_252E610A8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v76 - v36;
  if (a1)
  {
    v80 = v12;
    v81 = v11;
    v88 = v5;
    sub_252E35864();
    v38 = sub_252E34C44();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_25293847C(v37, &qword_27F546168, &qword_252E610A8);
      return (*(v88 + 56))(a2, 1, 1, v4);
    }

    else
    {
      v77 = v23;
      v78 = v4;
      v79 = a2;
      v41 = sub_252E34C24();
      (*(v39 + 8))(v37, v38);
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = 0;
        v44 = v41 + 32;
        while (1)
        {
          if (v43 >= *(v41 + 16))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          sub_252929E74(v44, &v95);
          __swift_project_boxed_opaque_existential_1(&v95, v96);
          if (sub_252E34624() == 0xD000000000000012 && 0x8000000252E9C740 == v45)
          {
            break;
          }

          v47 = sub_252E37DB4();

          if (v47)
          {
            goto LABEL_19;
          }

          ++v43;
          __swift_destroy_boxed_opaque_existential_1(&v95);
          v44 += 40;
          if (v42 == v43)
          {
            goto LABEL_17;
          }
        }

LABEL_19:

        sub_252927BEC(&v95, &v97);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
        v49 = v92;
        v50 = swift_dynamicCast();
        v51 = v91;
        (*(v91 + 56))(v30, v50 ^ 1u, 1, v49);
        v52 = (*(v51 + 48))(v30, 1, v49);
        v48 = v88;
        v53 = v77;
        if (v52 == 1)
        {
          goto LABEL_20;
        }

        (*(v51 + 32))(v90, v30, v49);
        v54 = sub_252E34AA4();
        v55 = *(v54 + 16);
        v56 = v89;
        if (v55)
        {
          v57 = 0;
          v58 = (v93 + 8);
          while (v57 < *(v54 + 16))
          {
            (*(v93 + 16))(v53, v54 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v57, v56);
            sub_252E34934();
            v59 = v94;
            v60 = sub_252E34914();
            if ((*(*(v60 - 8) + 48))(v59, 1, v60) != 1)
            {

              sub_25293847C(v59, &qword_27F5406E0, &qword_252E3D778);
              v63 = *(v93 + 32);
              v64 = v85;
              v63(v85, v53, v56);
              v65 = v87;
              v63(v87, v64, v56);
              v66 = v86;
              sub_252E34964();
              v67 = v80;
              v68 = v81;
              v69 = (*(v80 + 48))(v66, 1, v81);
              v61 = v79;
              v62 = v78;
              if (v69 == 1)
              {
                (*v58)(v65, v56);
                (*(v91 + 8))(v90, v92);
                sub_25293847C(v66, &qword_27F540460, &qword_252E5E960);
                return (*(v88 + 56))(v61, 1, 1, v62);
              }

              v70 = v84;
              (*(v67 + 32))(v84, v66, v68);
              v71 = v83;
              (*(v67 + 16))(v83, v70, v68);
              if ((*(v67 + 88))(v71, v68) != *MEMORY[0x277D5E5D0])
              {
                v75 = *(v67 + 8);
                v75(v70, v68);
                (*v58)(v65, v89);
                (*(v91 + 8))(v90, v92);
                v75(v71, v68);
                return (*(v88 + 56))(v61, 1, 1, v62);
              }

              (*(v67 + 96))(v71, v68);
              v72 = v88;
              (*(v88 + 32))(v61, v71, v62);
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v73 = sub_252E36AD4();
              v94 = __swift_project_value_buffer(v73, qword_27F544D60);
              v97 = 0;
              v98 = 0xE000000000000000;
              sub_252E379F4();

              v97 = 0xD00000000000001ALL;
              v98 = 0x8000000252E9C760;
              (*(v72 + 16))(v82, v61, v62);
              v74 = sub_252E36F94();
              MEMORY[0x2530AD570](v74);

              sub_252CC3D90(v97, v98, 0xD000000000000076, 0x8000000252E9C780);

              (*(v67 + 8))(v70, v68);
              (*v58)(v87, v89);
              (*(v91 + 8))(v90, v92);
              return (*(v72 + 56))(v61, 0, 1, v62);
            }

            ++v57;
            sub_25293847C(v59, &qword_27F5406E0, &qword_252E3D778);
            (*v58)(v53, v56);
            if (v55 == v57)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_36;
        }

LABEL_26:

        (*(v91 + 8))(v90, v92);
        v61 = v79;
        v62 = v78;
        return (*(v88 + 56))(v61, 1, 1, v62);
      }

      else
      {
LABEL_17:

        (*(v91 + 56))(v30, 1, 1, v92);
        v48 = v88;
LABEL_20:
        sub_25293847C(v30, &qword_27F546160, &qword_252E610A0);
        return (*(v48 + 56))(v79, 1, 1, v78);
      }
    }
  }

  else
  {
    if (qword_27F53F778 != -1)
    {
LABEL_37:
      swift_once();
    }

    type metadata accessor for HomeAutomationNLV3Intent();
    sub_252DD1880(&qword_27F540470);

    return sub_252E34BE4();
  }
}

char *sub_252DD11CC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  v5 = sub_252DD173C(a1, a2, 0);
  v6 = sub_252E36F04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546188, &qword_252E61198);
  sub_2529E6488(&qword_27F546190, &qword_27F546188, &qword_252E61198);
  sub_252947DBC();
  v7 = sub_252E376C4();
  v9 = [v5 matchesInString:v6 options:0 range:{v7, v8}];

  sub_252DD1970();
  v10 = sub_252E37264();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v5;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v11 = sub_252E378C4();
  v31 = v5;
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_3:
  v12 = 0;
  v5 = (v10 & 0xC000000000000001);
  v13 = MEMORY[0x277D84F90];
  do
  {
    v32 = v13;
    v14 = v12;
    while (1)
    {
      if (v5)
      {
        v15 = MEMORY[0x2530ADF00](v14, v10);
      }

      else
      {
        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      [v15 range];
      sub_252E37424();
      if ((v17 & 1) == 0)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        v13 = v32;
        goto LABEL_23;
      }
    }

    v18 = sub_252E37194();
    v19 = MEMORY[0x2530AD4C0](v18);
    v29 = v20;
    v30 = v19;

    v21 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2529F7A80(0, *(v32 + 2) + 1, 1, v32);
    }

    v22 = v21;
    v23 = *(v21 + 2);
    v24 = v22;
    v25 = *(v22 + 3);
    if (v23 >= v25 >> 1)
    {
      v24 = sub_2529F7A80((v25 > 1), v23 + 1, 1, v24);
    }

    *(v24 + 2) = v23 + 1;
    v26 = &v24[16 * v23];
    v13 = v24;
    *(v26 + 4) = v30;
    *(v26 + 5) = v29;
  }

  while (v12 != v11);
LABEL_23:
  v27 = v13;

  return v27;
}

uint64_t sub_252DD15B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252E358D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_252DD1624(uint64_t a1)
{
  v2 = sub_252DD1880(&qword_27F546158);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_252DD168C(uint64_t a1)
{
  v2 = sub_252DD1880(&qword_27F546158);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_252DD16E4()
{
  sub_252DD1880(&qword_27F546158);

  return sub_252E34894();
}

id sub_252DD173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_252E36F04();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_252E32C54();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_252DD1880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAutomationNLV3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252DD18EC()
{
  result = sub_252E358D4();
  if (v1 <= 0x3F)
  {
    result = sub_252E345E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_252DD1970()
{
  result = qword_27F546198;
  if (!qword_27F546198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F546198);
  }

  return result;
}

uint64_t sub_252DD1A00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetAirQualityHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

BOOL sub_252DD1A34(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_5:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 28;
    }

    goto LABEL_5;
  }

  return 0;
}

id sub_252DD1AD8(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  v33 = v6;
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v7[3] = 27;
  }

  v8 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  result = [a1 filters];
  if (result)
  {
    v10 = result;
    type metadata accessor for HomeFilter();
    v11 = sub_252E37264();

    v8 = sub_25297CCF8(v11);
  }

  if (v8 >> 62)
  {
    result = sub_252E378C4();
    v12 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return result;
  }

  v30 = v3;
  v31 = v2;
  v32 = a1;
  for (i = 0; i != v12; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2530ADF00](i, v8);
    }

    else
    {
      v14 = *(v8 + 8 * i + 32);
    }

    v15 = v14;
    type metadata accessor for HomeFilter.Builder();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 7;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 175) = 0;
    v17 = sub_252B72040(v15);

    v18 = (*(*v17 + 624))(39);

    (*(*v18 + 760))(v19);

    MEMORY[0x2530AD700](v20);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v2 = v31;
  a1 = v32;
  v3 = v30;
LABEL_17:

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, qword_27F544DA8);
  v22 = v33;
  (*(v3 + 16))(v33, v21, v2);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E9CA70);
  if (v7)
  {
    v23 = v7[3];
  }

  else
  {
    v23 = 0;
  }

  v34 = v23;
  v35 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  sub_252CC3D90(v36, v37, 0xD00000000000008DLL, 0x8000000252E9CAC0);

  (*(v3 + 8))(v22, v2);
  if (v7)
  {

    v25 = sub_252D6CB58();
  }

  else
  {
    v25 = 0;
  }

  v26 = [a1 time];
  v27 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v27 setUserTask_];
  type metadata accessor for HomeFilter();
  v28 = sub_252E37254();

  [v27 setFilters_];

  [v27 setTime_];

  return v27;
}

uint64_t IconInfo.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v12 = *(v0 + 33);
  v7 = v0[6];
  v13 = v0[5];
  v14 = v0[7];
  v16 = 0x6F666E496E6F6349;
  v17 = 0xEA00000000000A3ALL;

  sub_252E379F4();

  MEMORY[0x2530AD570](v2, v3);
  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E9CB50);

  sub_252E379F4();

  MEMORY[0x2530AD570](v4, v5);
  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9CB70);

  sub_252E379F4();
  MEMORY[0x2530AD570](0x746174536E6F2020, 0xEF203A65646F4D65);
  sub_252E37AE4();
  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](0, 0xE000000000000000);

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9CB90);
  sub_252E37AE4();
  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](0, 0xE000000000000000);

  sub_252E379F4();

  v15[0] = 0xD000000000000011;
  v15[1] = 0x8000000252E9CBB0;
  if (v7)
  {
    v8 = v13;
  }

  else
  {
    v8 = 7104878;
  }

  v9 = 0xE300000000000000;
  if (!v7)
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v8, v7);

  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](v15[0], v15[1]);

  strcpy(v15, "  rgbColor: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  if (v14)
  {
    v1 = sub_252E36E54();
    v9 = v10;
  }

  MEMORY[0x2530AD570](v1, v9);

  MEMORY[0x2530AD570](10, 0xE100000000000000);
  MEMORY[0x2530AD570](v15[0], v15[1]);

  return v16;
}

uint64_t IconInfo.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v9 = v1[6];
  v12 = v1[5];
  v10 = v1[7];
  sub_252E37044();
  sub_252E37044();
  sub_252E37044();

  sub_252E37044();

  if (!v9)
  {
    sub_252E37EE4();
    if (v10)
    {
      goto LABEL_3;
    }

    return sub_252E37EE4();
  }

  sub_252E37EE4();
  sub_252E37044();
  if (!v10)
  {
    return sub_252E37EE4();
  }

LABEL_3:
  sub_252E37EE4();

  return sub_252DD5520(a1, v10);
}

uint64_t IconInfo.hashValue.getter()
{
  sub_252E37EC4();
  IconInfo.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252DD260C()
{
  sub_252E37EC4();
  IconInfo.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252DD2650()
{
  sub_252E37EC4();
  IconInfo.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252DD2690@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a1;
  v3 = sub_252E36AB4();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v82 = sub_252E36AD4();
  __swift_project_value_buffer(v82, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E9CBD0, 0xD000000000000078, 0x8000000252E9CBF0);
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544FD0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 16), v86);

  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  v9 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v86);
  if ((v9 & 1) == 0)
  {
    v80 = v7;
    v81 = v6;
    sub_252CC3D90(0xD000000000000025, 0x8000000252E9CC70, 0xD000000000000078, 0x8000000252E9CBF0);
    v10 = v83;
    if (!v83)
    {
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      sub_252E375C4();
      v6 = v81;
      goto LABEL_12;
    }

    v62 = a2;
    v11 = *&v83[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate];
    v12 = sub_252E35A74();
    v77 = &v62;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A0, &qword_252E611D0);
    v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v17 - 8);
    v20 = &v62 - v19;
    v21 = [v11 associatedServiceType];
    v76 = v12;
    if (v21)
    {
      v22 = v21;
      sub_252E36F34();

      v10 = v83;
      sub_252E36FE4();

      if ((*(v13 + 48))(v20, 1, v12) != 1)
      {
        (*(v13 + 32))(v16, v20, v12);
        goto LABEL_16;
      }
    }

    else
    {
      (*(v13 + 56))(v20, 1, 1, v12);
    }

    sub_252E376E4();
    if ((*(v13 + 48))(v20, 1, v12) != 1)
    {
      sub_25293847C(v20, &qword_27F5461A0, &qword_252E611D0);
    }

LABEL_16:
    v75 = v13;
    v23 = sub_252DD31F4(v10);
    v25 = v24;
    v27 = v26;
    v79 = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461A8, &qword_252E611D8);
    v73 = &v62;
    v30 = *(*(v29 - 8) + 64);
    v31 = MEMORY[0x28223BE20](v29);
    v83 = v32;
    v33 = (&v62 - v32);
    v78 = v31;
    sub_252DD3424(&v62 - v32, &v62 - v32 + *(v31 + 48));
    v74 = v16;
    v34 = sub_252E35A34();
    v35 = v62;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v82, qword_27F544D18);
    v86[0] = 0;
    v86[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v86, "Fetched icon");
    BYTE5(v86[1]) = 0;
    HIWORD(v86[1]) = -5120;
    v71 = v27;
    MEMORY[0x2530AD570](v27, v79);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v82 = v23;
    v72 = v25;
    MEMORY[0x2530AD570](v23, v25);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v69 = v34;
    v36 = sub_252E36C54();
    MEMORY[0x2530AD570](v36);

    sub_252CC3D90(v86[0], v86[1], 0xD000000000000078, 0x8000000252E9CBF0);

    v68 = &v62;
    v38 = v30;
    MEMORY[0x28223BE20](v37);
    v39 = (&v62 - v83);
    sub_252938414(v33, &v62 - v83, &qword_27F5461A8, &qword_252E611D8);
    v40 = sub_252E35A94();
    v70 = &v62;
    v41 = *(v40 - 8);
    v42 = v41[8];
    MEMORY[0x28223BE20](v40);
    v43 = v41[2];
    v83 = v39;
    v64 = v43;
    v43(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v40);
    v63 = v41[11];
    v44 = v63(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
    v45 = v33;
    if (MEMORY[0x277D16590] && v44 == *MEMORY[0x277D16590])
    {
      v66 = 0;
      v46 = v38;
LABEL_32:
      v48 = v41[1];
      v49 = v48(v83, v40);
      v67 = &v62;
      MEMORY[0x28223BE20](v49);
      v50 = &v62 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = v45;
      v51 = sub_252938414(v45, v50, &qword_27F5461A8, &qword_252E611D8);
      v65 = &v62;
      v52 = *(v78 + 48);
      MEMORY[0x28223BE20](v51);
      v64(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), &v50[v52], v40);
      v53 = v63(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      if (MEMORY[0x277D16590] && v53 == *MEMORY[0x277D16590])
      {
        v54 = 0;
      }

      else
      {
        if (!MEMORY[0x277D16580] || v53 != *MEMORY[0x277D16580])
        {
          if (!MEMORY[0x277D16570] || v53 != *MEMORY[0x277D16570])
          {
            if (MEMORY[0x277D16598] && v53 == *MEMORY[0x277D16598])
            {
              v54 = 3;
              goto LABEL_45;
            }

            v48(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
          }

          v54 = 2;
          goto LABEL_45;
        }

        v54 = 1;
      }

LABEL_45:
      v55 = *(v78 + 48);
      v48(&v50[v52], v40);
      v56 = sub_252E36C54();
      v58 = v57;

      sub_25293847C(v70, &qword_27F5461A8, &qword_252E611D8);
      (*(v75 + 8))(v74, v76);
      v48(v50, v40);
      v48(&v83[v55], v40);
      v59 = v79;
      *v35 = v71;
      *(v35 + 1) = v59;
      v60 = v72;
      *(v35 + 2) = v82;
      *(v35 + 3) = v60;
      *(v35 + 32) = v66;
      *(v35 + 33) = v54;
      *(v35 + 5) = v56;
      *(v35 + 6) = v58;
      *(v35 + 7) = 0;
      sub_252E375C4();
      v6 = v81;
      sub_252E36A74();
      return (*(v84 + 8))(v6, v85);
    }

    v46 = v38;
    if (MEMORY[0x277D16580] && v44 == *MEMORY[0x277D16580])
    {
      v47 = 1;
LABEL_31:
      v66 = v47;
      goto LABEL_32;
    }

    if (!MEMORY[0x277D16570] || v44 != *MEMORY[0x277D16570])
    {
      if (MEMORY[0x277D16598] && v44 == *MEMORY[0x277D16598])
      {
        v47 = 3;
        goto LABEL_31;
      }

      (v41[1])(&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
    }

    v47 = 2;
    goto LABEL_31;
  }

  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  sub_252E375C4();
LABEL_12:
  sub_252E36A74();
  return (*(v84 + 8))(v6, v85);
}

uint64_t sub_252DD31F4(uint64_t a1)
{
  if (a1 && sub_252CD941C() == 36)
  {
    return 30324;
  }

  sub_252E376F4();
  if (v2)
  {
    v3 = sub_252E35AF4();
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461C0, &qword_252E61308);
    v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v8 - 8);
    v11 = &v13 - v10;
    sub_252E35AE4();
    if ((*(v4 + 48))(v11, 1, v3) != 1)
    {
      (*(v4 + 32))(v7, v11, v3);
      v1 = sub_252E35AA4();
      sub_252E35AB4();
      (*(v4 + 8))(v7, v3);
      return v1;
    }

    sub_25293847C(v11, &qword_27F5461C0, &qword_252E61308);
  }

  v1 = sub_252E35A54();
  sub_252E35A64();
  return v1;
}

uint64_t sub_252DD3424(uint64_t a1, uint64_t a2)
{
  sub_252E376F4();
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_252E35AF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5461C0, &qword_252E61308);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  sub_252E35AE4();
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_25293847C(v13, &qword_27F5461C0, &qword_252E61308);
LABEL_4:
    v14 = *MEMORY[0x277D16570];
    v15 = sub_252E35A94();
    v16 = *(*(v15 - 8) + 104);
    v16(a1, v14, v15);
    return (v16)(a2, v14, v15);
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_252E35AC4();
  sub_252E35AD4();
  return (*(v6 + 8))(v9, v5);
}