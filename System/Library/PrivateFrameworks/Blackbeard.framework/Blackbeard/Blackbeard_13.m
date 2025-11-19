uint64_t sub_1E5FA09BC()
{
  v2 = v0[20];
  v1 = v0[21];

  sub_1E5E262E0(v2, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5FA0A68(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for RouteDestination() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1E5FA0AFC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_1E5FA0B34(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 137) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = *(type metadata accessor for RouteDestination() - 8);
  *(v4 + 32) = v6;
  *(v4 + 40) = *(v6 + 64);
  *(v4 + 48) = swift_task_alloc();
  v7 = type metadata accessor for NavigationControllerRoutingContext();
  *(v4 + 56) = v7;
  v8 = *(v7 - 8);
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 138) = *a3;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v4 + 96) = v10;
  *(v4 + 104) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA0CA0, v10, v9);
}

uint64_t sub_1E5FA0CA0()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 80);
  v15 = *(v0 + 72);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v16 = *(v0 + 137);
  v8 = *(v0 + 16);
  v9 = (v7 + *(*(v0 + 56) + 24));
  v18 = *v9;
  v19 = v9[1];
  ObjectType = swift_getObjectType();
  *(v0 + 136) = v1;
  sub_1E5E24688(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E24688(v8, v5, type metadata accessor for RouteDestination);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v15 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v0 + 112) = v12;
  sub_1E5E247DC(v2, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E247DC(v5, v12 + v11, type metadata accessor for RouteDestination);
  *(v12 + v11 + v4) = v16;
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA0E80;

  return sub_1E61261B8((v0 + 136), &unk_1E65EA8B8, v12, ObjectType, v19);
}

uint64_t sub_1E5FA0E80()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_1E5FA1030;
  }

  else
  {
    v7 = sub_1E5FA0FB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA0FB8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FA1030()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1E5FA10A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 192) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1148, v5, v4);
}

uint64_t sub_1E5FA1148()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = *(type metadata accessor for RouteDestination() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = xmmword_1E65EA670;
  sub_1E5E24688(v1, v6 + v5, type metadata accessor for RouteDestination);
  v7 = type metadata accessor for NavigationControllerRoutingContext();
  v8 = *(v7 + 20);
  v0[5] = v7;
  v0[6] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5E24688(v2, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1E5FA12E0;
  v11 = v0[7];

  return sub_1E5F9FF2C(v6, v2 + v8, (v0 + 2));
}

uint64_t sub_1E5FA12E0(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[14];
  v5 = (*v2)[13];
  v10 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v6 = v3[11];
    v7 = v3[12];
    v8 = sub_1E5FA1900;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v6 = v3[11];
    v7 = v3[12];
    v8 = sub_1E5FA1424;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E5FA1424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v14 = v3[15];
    }

    v5 = sub_1E65E67C8();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](0, v3[15]);
        v19 = v3[15];
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v5, a2, a3);
        }

        v6 = *(v3[15] + 32);
      }

      v3[17] = v6;

      v7 = qword_1EE2D7790;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = v3[9];
      v10 = v3[7];
      v11 = sub_1E65E3B68();
      v3[18] = __swift_project_value_buffer(v11, qword_1EE2EA2A0);
      sub_1E65E3B38();
      v3[19] = *v10;
      v3[20] = sub_1E65E6048();
      v12 = sub_1E65E5FC8();
      a3 = v13;
      v3[21] = v12;
      v3[22] = v13;
      v5 = sub_1E5FA1610;
      a2 = v12;

      return MEMORY[0x1EEE6DFA0](v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v15 = v3[15];
  v16 = v3[10];

  v17 = v3[1];

  return v17();
}

uint64_t sub_1E5FA1610()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 192);
  sub_1E65E3B38();
  [v1 pushViewController:v3 animated:v4];
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FA170C;
  v6 = *(v0 + 152);
  v7 = *(v0 + 192);

  return sub_1E6395954(v7);
}

uint64_t sub_1E5FA170C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA182C, v4, v3);
}

uint64_t sub_1E5FA182C()
{
  v1 = v0[20];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1890, v2, v3);
}

uint64_t sub_1E5FA1890()
{
  v1 = v0[17];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA1900()
{
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1E5FA196C(uint64_t a1, char a2)
{
  *(v2 + 104) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1A0C, v4, v3);
}

uint64_t sub_1E5FA1A0C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1E65E3B68();
  v0[7] = __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[8] = *v2;
  v0[9] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v0[10] = v5;
  v0[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1B2C, v5, v4);
}

uint64_t sub_1E5FA1B2C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 104);
  sub_1E65E3B38();

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FA1C30;
  v5 = *(v0 + 64);
  v6 = *(v0 + 104);

  return sub_1E6395954(v6);
}

uint64_t sub_1E5FA1C30()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1D50, v4, v3);
}

uint64_t sub_1E5FA1D50()
{
  v1 = v0[9];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1DB4, v2, v3);
}

uint64_t sub_1E5FA1DB4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA1E18(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 137) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  *(v4 + 32) = v6;
  v7 = *(v6 - 8);
  *(v4 + 40) = v7;
  *(v4 + 48) = *(v7 + 64);
  *(v4 + 56) = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 138) = *a3;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v4 + 96) = v10;
  *(v4 + 104) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1F90, v10, v9);
}

uint64_t sub_1E5FA1F90()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v15 = *(v0 + 48);
  v7 = *(v0 + 24);
  v16 = *(v0 + 137);
  v8 = *(v0 + 16);
  v9 = (v7 + *(*(v0 + 32) + 24));
  v18 = *v9;
  v19 = v9[1];
  ObjectType = swift_getObjectType();
  *(v0 + 136) = v1;
  sub_1E5DFD1CC(v8, v3, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E24688(v7, v4, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v2 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v0 + 112) = v12;
  sub_1E5FAB460(v3, v12 + v10, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E247DC(v4, v12 + v11, type metadata accessor for NavigationControllerRoutingContext);
  *(v12 + v11 + v15) = v16;
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA2168;

  return sub_1E61261B8((v0 + 136), &unk_1E65EA888, v12, ObjectType, v19);
}

uint64_t sub_1E5FA2168()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_1E5FA2318;
  }

  else
  {
    v7 = sub_1E5FA22A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA22A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FA2318()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1E5FA2390(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 288) = a3;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination();
  *(v3 + 128) = v5;
  v6 = *(v5 - 8);
  *(v3 + 136) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = sub_1E65E6058();
  *(v3 + 160) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  *(v3 + 168) = v9;
  *(v3 + 176) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA24C4, v9, v8);
}

uint64_t sub_1E5FA24C4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = sub_1E65E3B68();
  *(v0 + 184) = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E5DFD1CC(v4, v3, &unk_1ED072040, &qword_1E65F0860);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 112);
  if (v6 == 1)
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v10 = *(v0 + 288);

    sub_1E5DFE50C(v9, &unk_1ED072040, &qword_1E65F0860);

    v11 = *(v0 + 144);
    v12 = *(v0 + 120);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    sub_1E5E247DC(*(v0 + 120), v16, type metadata accessor for RouteDestination);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v17 = *(v15 + 72);
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v0 + 192) = v19;
    *(v19 + 16) = xmmword_1E65EA670;
    sub_1E5E24688(v16, v19 + v18, type metadata accessor for RouteDestination);
    v20 = type metadata accessor for NavigationControllerRoutingContext();
    v21 = *(v20 + 20);
    *(v0 + 88) = v20;
    *(v0 + 96) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    sub_1E5E24688(v7, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
    v23 = swift_task_alloc();
    *(v0 + 200) = v23;
    *v23 = v0;
    v23[1] = sub_1E5FA27A4;
    v24 = *(v0 + 112);

    return sub_1E5F9FF2C(v19, v7 + v21, v0 + 64);
  }
}

uint64_t sub_1E5FA27A4(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[25];
  v5 = (*v2)[24];
  v10 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v6 = v3[21];
    v7 = v3[22];
    v8 = sub_1E5FA2ED4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
    v6 = v3[21];
    v7 = v3[22];
    v8 = sub_1E5FA28E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E5FA28E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = *(v3 + 208);
    }

    v5 = sub_1E65E67C8();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = *(v3 + 208);

    v6 = 0;
    goto LABEL_11;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E694E2D0](0, *(v3 + 208));
    v23 = *(v3 + 208);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v6 = *(*(v3 + 208) + 32);
  }

LABEL_11:
  *(v3 + 224) = v6;
  v9 = **(v3 + 112);
  *(v3 + 232) = v9;
  v10 = [v9 viewControllers];
  *(v3 + 240) = sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v11 = sub_1E65E5F18();

  if (v11 >> 62)
  {
    v5 = sub_1E65E67C8();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_13:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E694E2D0](0, v11);
        goto LABEL_16;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v11 + 32);
LABEL_16:
        v13 = v12;

        goto LABEL_19;
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, a2, a3);
    }
  }

  v13 = 0;
LABEL_19:
  *(v3 + 48) = v13;
  *(v3 + 56) = v6;
  v14 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v15 = v6;
  v16 = 0;
LABEL_20:
  *(v3 + 248) = v14;
  while (v16 != 2)
  {
    v17 = *(v3 + 8 * v16++ + 48);
    if (v17)
    {
      v18 = v17;
      MEMORY[0x1E694D8F0]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E65E5F68();
      }

      sub_1E65E5FA8();
      v14 = v25;
      goto LABEL_20;
    }
  }

  v20 = *(v3 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072140, &qword_1E65EA890);
  swift_arrayDestroy();
  *(v3 + 256) = sub_1E65E6048();
  v21 = sub_1E65E5FC8();
  a3 = v22;
  *(v3 + 264) = v21;
  *(v3 + 272) = v22;
  v5 = sub_1E5FA2B8C;
  a2 = v21;

  return MEMORY[0x1EEE6DFA0](v5, a2, a3);
}

uint64_t sub_1E5FA2B8C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = *(v0 + 288);
  sub_1E65E3B38();
  v6 = sub_1E65E5EF8();

  [v3 setViewControllers:v6 animated:v5];

  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA2CB0;
  v8 = *(v0 + 232);
  v9 = *(v0 + 288);

  return sub_1E6395954(v9);
}

uint64_t sub_1E5FA2CB0()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 272);
  v4 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA2DD0, v4, v3);
}

uint64_t sub_1E5FA2DD0()
{
  v1 = v0[32];

  v2 = v0[21];
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA2E34, v2, v3);
}

uint64_t sub_1E5FA2E34()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[18];

  sub_1E5E262E0(v3, type metadata accessor for RouteDestination);
  v4 = v0[18];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5FA2ED4()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];

  sub_1E5E262E0(v2, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_1E5FA2F74(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 113) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  *(v4 + 32) = v6;
  v7 = *(v6 - 8);
  *(v4 + 40) = v7;
  *(v4 + 48) = *(v7 + 64);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 114) = *a3;
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3080, v9, v8);
}

uint64_t sub_1E5FA3080()
{
  v1 = *(v0 + 114);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 113);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = (v6 + *(*(v0 + 32) + 24));
  v9 = *v8;
  v16 = v8[1];
  ObjectType = swift_getObjectType();
  *(v0 + 112) = v1;
  sub_1E5E24688(v6, v2, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 88) = v11;
  sub_1E5E247DC(v2, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  v12 = v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = v7;
  *(v12 + 8) = v5;

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA3210;

  return sub_1E61261B8((v0 + 112), &unk_1E65EA870, v11, ObjectType, v16);
}

uint64_t sub_1E5FA3210()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1E5FA33B4;
  }

  else
  {
    v7 = sub_1E5FA3348;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA3348()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA33B4()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E5FA3420(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 176) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA34C0, v5, v4);
}

uint64_t sub_1E5FA34C0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1E65E3B68();
  v0[13] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = type metadata accessor for NavigationControllerRoutingContext();
  v4 = *(v3 + 20);
  v0[5] = v3;
  v0[6] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5E24688(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FA362C;
  v8 = v0[7];
  v7 = v0[8];

  return sub_1E5F9FF2C(v7, v1 + v4, (v0 + 2));
}

uint64_t sub_1E5FA362C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[14];
  v10 = *v2;
  (*v2)[15] = v1;

  if (v1)
  {
    v6 = v4[11];
    v7 = v4[12];
    v8 = sub_1E5FA3B08;
  }

  else
  {
    v4[16] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = v4[11];
    v7 = v4[12];
    v8 = sub_1E5FA3758;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E5FA3758()
{
  v1 = *(v0 + 72);
  *(v0 + 136) = **(v0 + 56);
  *(v0 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA37F0, v3, v2);
}

uint64_t sub_1E5FA37F0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 176);
  sub_1E65E3B38();
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v5 = sub_1E65E5EF8();

  [v1 setViewControllers:v5 animated:v4];

  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FA3920;
  v7 = *(v0 + 136);
  v8 = *(v0 + 176);

  return sub_1E6395954(v8);
}

uint64_t sub_1E5FA3920()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3A40, v4, v3);
}

uint64_t sub_1E5FA3A40()
{
  v1 = v0[18];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3AA4, v2, v3);
}

uint64_t sub_1E5FA3AA4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA3B08()
{
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1E5FA3B74(uint64_t a1, char a2)
{
  *(v2 + 112) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3C14, v4, v3);
}

uint64_t sub_1E5FA3C14()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[7] = *v2;
  v0[8] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3D30, v5, v4);
}

uint64_t sub_1E5FA3D30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  *(v0 + 88) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FA3E48;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA3E48()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3FA8, v6, v5);
}

uint64_t sub_1E5FA3FA8()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC604, v2, v3);
}

uint64_t sub_1E5FA400C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 145) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = *(type metadata accessor for RouteDestination() - 8);
  *(v5 + 32) = v8;
  *(v5 + 40) = *(v8 + 64);
  *(v5 + 48) = swift_task_alloc();
  v9 = type metadata accessor for NavigationControllerRoutingContext();
  *(v5 + 56) = v9;
  v10 = *(v9 - 8);
  *(v5 + 64) = v10;
  *(v5 + 72) = *(v10 + 64);
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  *(v5 + 146) = *(a2 + 8);
  *(v5 + 147) = *a4;
  sub_1E65E6058();
  *(v5 + 96) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v5 + 104) = v14;
  *(v5 + 112) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA4190, v14, v13);
}

uint64_t sub_1E5FA4190()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 80);
  v19 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = *(v0 + 72);
  v18 = *(v0 + 145);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v7 + *(*(v0 + 56) + 24));
  v21 = *v8;
  v22 = v8[1];
  v9 = *(v0 + 146);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v1;
  sub_1E5E24688(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E24688(v6, v4, type metadata accessor for RouteDestination);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v17 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 120) = v12;
  sub_1E5E247DC(v2, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E247DC(v4, v12 + v11, type metadata accessor for RouteDestination);
  *(v12 + v11 + v16) = v18;
  v13 = v12 + ((v11 + v16) & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = v19;
  *(v13 + 16) = v9;
  sub_1E5FA9D20(v19, v9);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FA4398;

  return sub_1E61261B8((v0 + 144), &unk_1E65EA820, v12, ObjectType, v22);
}

uint64_t sub_1E5FA4398()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1E5FA454C;
  }

  else
  {
    v7 = sub_1E5FA44D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA44D0()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FA454C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1E5FA45C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 333) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 332) = a3;
  *(v5 + 136) = a1;
  v6 = *(type metadata accessor for RouteDestination() - 8);
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 + 64);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v7 = type metadata accessor for UIViewControllerRoutingContext();
  *(v5 + 192) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v9 = type metadata accessor for AppComposer();
  *(v5 + 208) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 224) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v5 + 232) = v12;
  *(v5 + 240) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA4738, v12, v11);
}

uint64_t sub_1E5FA4738()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = type metadata accessor for NavigationControllerRoutingContext();
  v4 = (v2 + *(v3 + 20));
  v35 = v1;
  sub_1E5DFD1CC(v4 + *(v1 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  v33 = v3;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
  }

  else
  {
    v5 = *(v0 + 136);
    *(v0 + 40) = v3;
    *(v0 + 48) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E5E24688(v5, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
    if (*(v0 + 80))
    {
      sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    }
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  v30 = *(v0 + 192);
  v31 = *(v0 + 160);
  v10 = *(v0 + 136);
  v32 = *(v0 + 144);
  v11 = *v4;
  sub_1E5E24688(v4 + v7[5], v8 + v7[5], type metadata accessor for AppEnvironment);
  v12 = *(v4 + v7[6]);
  sub_1E5E24688(v4 + v7[7], v8 + v7[7], type metadata accessor for AppDataItemResolver);
  v13 = (v4 + v7[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v35 + 40);
  v36 = *(v4 + v7[8]);
  sub_1E5DF650C(v0 + 16, v8 + v16);
  *v8 = v11;
  *(v8 + v7[6]) = v12;
  *(v8 + v7[8]) = v36;
  v17 = (v8 + v7[9]);
  *v17 = v14;
  v17[1] = v15;
  v18 = *v10;
  *(v0 + 248) = *v10;
  sub_1E5E24688(v8, v9 + v30[5], type metadata accessor for AppComposer);
  v34 = *(v10 + v33[6]);
  sub_1E5DFD1CC(v10 + v33[7], v9 + v30[7], &unk_1ED072050, &unk_1E65EEAB0);
  v19 = *(v10 + v33[8]);
  *(v0 + 256) = v19;
  *v9 = v18;
  *(v9 + v30[6]) = v34;
  *(v9 + v30[8]) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v20 = *(v31 + 72);
  v21 = *(v31 + 80);
  *(v0 + 328) = v21;
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  *(v0 + 264) = v23;
  *(v23 + 16) = xmmword_1E65EA670;
  sub_1E5E24688(v32, v23 + v22, type metadata accessor for RouteDestination);
  *(v0 + 120) = v30;
  *(v0 + 128) = &off_1F5FAE3A0;
  v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_1E5E24688(v9, v24, type metadata accessor for UIViewControllerRoutingContext);

  swift_unknownObjectRetain();
  sub_1E5FA9D34(v14, v15);
  v25 = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = swift_task_alloc();
  *(v0 + 272) = v26;
  *v26 = v0;
  v26[1] = sub_1E5FA4AD4;
  v27 = *(v0 + 216);
  v28 = *(v0 + 136);

  return sub_1E5F9FF2C(v23, v27, v0 + 96);
}

uint64_t sub_1E5FA4AD4(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[34];
  v10 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  v5 = v3[33];

  if (v1)
  {
    v6 = v3[29];
    v7 = v3[30];
    v8 = sub_1E5FA53C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 12);
    v6 = v3[29];
    v7 = v3[30];
    v8 = sub_1E5FA4C00;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

id sub_1E5FA4C00()
{
  v1 = *(v0 + 280);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v27 = *(v0 + 280);
    }

    result = sub_1E65E67C8();
    if (result)
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E694E2D0](0, *(v0 + 280));
        v38 = *(v0 + 280);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v3 = *(*(v0 + 280) + 32);
      }

      *(v0 + 296) = v3;

      v4 = [v3 presentationController];
      if (v4)
      {
        v5 = v4;
        [v4 setDelegate_];
      }

      v6 = *(v0 + 328);
      v40 = *(v0 + 248);
      v7 = *(v0 + 176);
      v8 = *(v0 + 184);
      v9 = *(v0 + 168);
      v39 = *(v0 + 332);
      v10 = *(v0 + 152);
      v11 = *(v0 + 333);
      sub_1E5E24688(*(v0 + 144), v8, type metadata accessor for RouteDestination);
      sub_1E5E24688(v8, v7, type metadata accessor for RouteDestination);
      v12 = (v6 + 16) & ~v6;
      v13 = swift_allocObject();
      *(v0 + 304) = v13;
      sub_1E5E247DC(v8, v13 + v12, type metadata accessor for RouteDestination);
      v14 = v13 + ((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v14 = v3;
      *(v14 + 8) = v39;
      v15 = v13 + ((v12 + v9 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v15 = v10;
      *(v15 + 8) = v11;
      v16 = v3;
      sub_1E5FA9D20(v10, v11);
      if (![v40 isViewLoaded])
      {
LABEL_14:
        sub_1E5E262E0(*(v0 + 176), type metadata accessor for RouteDestination);
        v25 = swift_task_alloc();
        *(v0 + 320) = v25;
        *v25 = v0;
        v25[1] = sub_1E5FA52A0;
        v26 = *(v0 + 248);

        return sub_1E64C0AFC(&unk_1E65EA838, v13);
      }

      result = [*(v0 + 248) view];
      if (result)
      {
        v17 = result;
        v18 = [result window];

        if (v18)
        {
          v19 = *(v0 + 248);

          v20 = swift_task_alloc();
          *(v0 + 312) = v20;
          *v20 = v0;
          v20[1] = sub_1E5FA504C;
          v21 = *(v0 + 176);
          v22 = *(v0 + 152);
          v23 = *(v0 + 332);
          v24 = *(v0 + 333);

          return sub_1E5FA54A0(v19, v21, v16, v23, v22, v24);
        }

        goto LABEL_14;
      }

LABEL_25:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 216);
  v30 = *(v0 + 224);
  v31 = *(v0 + 200);

  sub_1E5FAA54C();
  swift_allocError();
  *v32 = 3;
  swift_willThrow();
  sub_1E5E262E0(v31, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v29, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);
  v36 = *(v0 + 176);
  v35 = *(v0 + 184);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1E5FA504C()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 176);
  v7 = *v0;

  sub_1E5E262E0(v3, type metadata accessor for RouteDestination);
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA51A4, v5, v4);
}

uint64_t sub_1E5FA51A4()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];

  sub_1E5E262E0(v5, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v4, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FA52A0()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC600, v4, v3);
}

uint64_t sub_1E5FA53C0()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];

  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v4 = v0[36];
  v5 = v0[27];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E5FA54A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 289) = a6;
  *(v6 + 288) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = type metadata accessor for RouteDestination();
  *(v6 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = sub_1E65E6058();
  *(v6 + 80) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v6 + 88) = v10;
  *(v6 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5584, v10, v9);
}

uint64_t sub_1E5FA5584()
{
  v54 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1EE2D7790;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);
    sub_1E65E3B38();
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    *(v0 + 104) = v6;
    if (v6 && v4)
    {
      v7 = *(v0 + 32);
      v8 = &v3[OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate];
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 184) = Strong;
      *(v0 + 192) = *(v8 + 1);
      v10 = v3;
      v11 = v7;
      v12 = sub_1E65E3B48();
      if (Strong)
      {
        v13 = sub_1E65E6338();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 32);
          v15 = *(v0 + 16);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412546;
          *(v16 + 4) = v14;
          *(v16 + 12) = 2112;
          *(v16 + 14) = v10;
          *v17 = v14;
          v17[1] = v15;
          v18 = v10;
          v19 = v14;
          _os_log_impl(&dword_1E5DE9000, v12, v13, "Presenting session %@ on %@", v16, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v17, -1, -1);
          MEMORY[0x1E694F1C0](v16, -1, -1);
        }

        v20 = swift_task_alloc();
        *(v0 + 200) = v20;
        *v20 = v0;
        v21 = sub_1E5FA6228;
      }

      else
      {
        v42 = sub_1E65E6328();

        if (os_log_type_enabled(v12, v42))
        {
          v43 = *(v0 + 32);
          v44 = *(v0 + 16);
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412546;
          *(v45 + 4) = v10;
          *(v45 + 12) = 2112;
          *(v45 + 14) = v43;
          *v46 = v44;
          v46[1] = v43;
          v47 = v10;
          v48 = v43;
          _os_log_impl(&dword_1E5DE9000, v12, v42, "%@ did not provide a PiP Surrogate, presenting %@ normally", v45, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v46, -1, -1);
          MEMORY[0x1E694F1C0](v45, -1, -1);
        }

        v49 = *(v0 + 72);
        v50 = *(v0 + 32);

        v51 = v50;
        *(v0 + 232) = sub_1E65E6048();
        v20 = swift_task_alloc();
        *(v0 + 240) = v20;
        *v20 = v0;
        v21 = sub_1E5FA666C;
      }
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v21 = sub_1E5FA5B94;
    }

    v20[1] = v21;
    v52 = *(v0 + 288);

    return sub_1E6394EA4(v52);
  }

  else
  {
    v22 = *(v0 + 80);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 64);
    v24 = *(v0 + 24);
    v25 = sub_1E65E3B68();
    __swift_project_value_buffer(v25, qword_1EE2EA2A0);
    sub_1E5E24688(v24, v23, type metadata accessor for RouteDestination);
    v26 = sub_1E65E3B48();
    v27 = sub_1E65E6328();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 64);
    if (v28)
    {
      v31 = *(v0 + 48);
      v30 = *(v0 + 56);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      sub_1E5E24688(v29, v30, type metadata accessor for RouteDestination);
      v34 = sub_1E65E5CE8();
      v36 = v35;
      sub_1E5E262E0(v29, type metadata accessor for RouteDestination);
      v37 = sub_1E5DFD4B0(v34, v36, &v53);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_1E5DE9000, v26, v27, "No presentation context for %{mask.hash}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E694F1C0](v33, -1, -1);
      MEMORY[0x1E694F1C0](v32, -1, -1);
    }

    else
    {

      sub_1E5E262E0(v29, type metadata accessor for RouteDestination);
    }

    v39 = *(v0 + 56);
    v38 = *(v0 + 64);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1E5FA5B94()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5CB4, v4, v3);
}

uint64_t sub_1E5FA5CB4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 289);
  *(v0 + 120) = sub_1E61AAA48(*(v0 + 32));
  *(v0 + 128) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FA5D84;
  v4 = *(v0 + 288);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E5FA5D84()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 144) = v6;
  *(v1 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5EC8, v6, v5);
}

uint64_t sub_1E5FA5EC8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 288);
  v4 = *(v0 + 16);
  *(v0 + 160) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA5FE4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA5FE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v8 = *v0;

  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6144, v6, v5);
}

uint64_t sub_1E5FA6144()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA61B0, v2, v3);
}

uint64_t sub_1E5FA61B0()
{
  v1 = v0[10];
  v2 = v0[2];

  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FA6228()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6348, v4, v3);
}

uint64_t sub_1E5FA6348()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 288);
  v4 = *(v0 + 32);
  v9 = *(v0 + 184);
  *(v0 + 208) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA6474;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA6474()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA65D4, v6, v5);
}

uint64_t sub_1E5FA65D4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);

  swift_unknownObjectRelease();

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E5FA666C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 248) = v6;
  *(v1 + 256) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA67B0, v6, v5);
}

uint64_t sub_1E5FA67B0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 288);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  *(v0 + 264) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA68CC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA68CC()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v8 = *v0;

  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6A2C, v6, v5);
}

uint64_t sub_1E5FA6A2C()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6A9C, v2, v3);
}

uint64_t sub_1E5FA6A9C()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];

  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5FA6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[1] = a6;
  v16 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  swift_getObjectType();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1E65E5198();
}

uint64_t sub_1E5FA6CA4(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 121) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = type metadata accessor for NavigationControllerRoutingContext();
  *(v5 + 32) = v8;
  v9 = *(v8 - 8);
  *(v5 + 40) = v9;
  *(v5 + 48) = *(v9 + 64);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;
  *(v5 + 122) = *(a2 + 8);
  *(v5 + 123) = *a4;
  sub_1E65E6058();
  *(v5 + 72) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v5 + 80) = v13;
  *(v5 + 88) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6DC8, v13, v12);
}

uint64_t sub_1E5FA6DC8()
{
  v1 = *(v0 + 123);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v15 = *(v0 + 121);
  v7 = *(v0 + 16);
  v8 = (v6 + *(*(v0 + 32) + 24));
  v17 = *v8;
  v18 = v8[1];
  v9 = *(v0 + 122);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v1;
  sub_1E5E24688(v6, v3, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  *(v11 + 16) = v7;
  sub_1E5E247DC(v3, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10 + v5) = v15;
  v12 = v11 + ((v10 + v5) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v2;
  *(v12 + 16) = v9;

  sub_1E5FA9D20(v2, v9);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA6F74;

  return sub_1E61261B8((v0 + 120), &unk_1E65EA720, v11, ObjectType, v18);
}

uint64_t sub_1E5FA6F74()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1E5FA711C;
  }

  else
  {
    v7 = sub_1E5FA70AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA70AC()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA711C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E5FA718C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 393) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 392) = a3;
  *(v5 + 136) = a1;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  *(v5 + 160) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v8 = type metadata accessor for AppComposer();
  *(v5 + 176) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v5 + 216) = v12;
  *(v5 + 224) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA72CC, v12, v11);
}

uint64_t sub_1E5FA72CC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = v2 - 1;
    v5 = type metadata accessor for RouteDestination();
    v6 = *(v5 - 8);
    sub_1E5E24688(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v3, type metadata accessor for RouteDestination);
    (*(v6 + 56))(v3, 0, 1, v5);
    sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    sub_1E65E3B38();
    v44 = v8;
    v45 = v7;
    v11 = (v9 + *(v8 + 20));
    sub_1E5DFD1CC(v11 + *(v7 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    if (*(v0 + 80))
    {
      sub_1E5DF599C((v0 + 56), v0 + 16);
    }

    else
    {
      v21 = *(v0 + 144);
      *(v0 + 40) = *(v0 + 160);
      *(v0 + 48) = &off_1F5FA9B10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_1E5E24688(v21, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
      if (*(v0 + 80))
      {
        sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      }
    }

    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v43 = *(v0 + 144);
    v27 = *v11;
    sub_1E5E24688(v11 + v24[5], v23 + v24[5], type metadata accessor for AppEnvironment);
    v28 = *(v11 + v24[6]);
    sub_1E5E24688(v11 + v24[7], v23 + v24[7], type metadata accessor for AppDataItemResolver);
    v29 = (v11 + v24[9]);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v45 + 40);
    v46 = *(v11 + v24[8]);
    sub_1E5DF650C(v0 + 16, v23 + v32);
    *v23 = v27;
    *(v23 + v24[6]) = v28;
    *(v23 + v24[8]) = v46;
    v33 = (v23 + v24[9]);
    *v33 = v30;
    v33[1] = v31;
    v34 = objc_allocWithZone(type metadata accessor for NavigationController());

    swift_unknownObjectRetain();
    sub_1E5FA9D34(v30, v31);
    v35 = [v34 init];
    *(v0 + 232) = v35;
    sub_1E5E24688(v23, v25 + *(v44 + 20), type metadata accessor for AppComposer);
    v47 = *(v43 + v26[6]);
    sub_1E5DFD1CC(v43 + v26[7], v25 + v26[7], &unk_1ED072050, &unk_1E65EEAB0);
    v36 = *(v43 + v26[8]);
    *(v0 + 240) = v36;
    *v25 = v35;
    *(v25 + v26[6]) = v47;
    *(v25 + v26[8]) = v36;
    *(v0 + 120) = v26;
    *(v0 + 128) = &off_1F5FA9B10;
    v37 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_1E5E24688(v25, v37, type metadata accessor for NavigationControllerRoutingContext);
    v38 = v35;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v39 = swift_task_alloc();
    *(v0 + 248) = v39;
    *v39 = v0;
    v39[1] = sub_1E5FA783C;
    v40 = *(v0 + 184);
    v41 = *(v0 + 136);
    v42 = *(v0 + 144);

    return sub_1E5F9FF2C(v41, v40, v0 + 96);
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 192);
    v14 = type metadata accessor for RouteDestination();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

    sub_1E5DFE50C(v13, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5FAA54C();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 168);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1E5FA783C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v10 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {

    v6 = *(v4 + 216);
    v7 = *(v4 + 224);
    v8 = sub_1E5FA8518;
  }

  else
  {
    *(v4 + 264) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 96));
    v6 = *(v4 + 216);
    v7 = *(v4 + 224);
    v8 = sub_1E5FA7970;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E5FA7970()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v3 = sub_1E65E5EF8();

  [v2 setViewControllers:v3 animated:0];

  v4 = [v2 presentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate_];
  }

  v6 = *(v0 + 232);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 392);
  v10 = *(v0 + 136);
  v11 = *(v0 + 393);
  v12 = swift_allocObject();
  *(v0 + 272) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  *(v12 + 32) = v7;
  *(v12 + 40) = v11;
  *(v12 + 48) = v6;
  v13 = *v8;
  *(v0 + 280) = *v8;
  v14 = v6;
  sub_1E5FA9D20(v7, v11);

  if ([v13 isViewLoaded])
  {
    v15 = [v13 view];
    if (!v15)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    v18 = v15;
    v19 = [v15 window];

    if (v19)
    {
      v20 = *(v0 + 200);

      *(v0 + 288) = sub_1E65E6048();
      v21 = sub_1E65E5FC8();
      v17 = v22;
      *(v0 + 296) = v21;
      *(v0 + 304) = v22;
      v15 = sub_1E5FA7BF0;
      v16 = v21;

      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }
  }

  v23 = swift_task_alloc();
  *(v0 + 384) = v23;
  *v23 = v0;
  v23[1] = sub_1E5FA83F8;

  return sub_1E64C0AFC(&unk_1E65EA750, v12);
}

uint64_t sub_1E5FA7BF0()
{
  v1 = *(v0 + 280);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1E5FA7C94;
  v3 = *(v0 + 280);
  v4 = *(v0 + 392);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E5FA7C94()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA7DB4, v4, v3);
}

uint64_t sub_1E5FA7DB4()
{
  v1 = *(v0 + 200);
  v6 = *(v0 + 152);
  v7 = *(v0 + 393);
  *(v0 + 320) = sub_1E61AAA48(*(v0 + 232));
  *(v0 + 328) = sub_1E65E6048();
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_1E5FA7E84;
  v3 = *(v0 + 280);
  v4 = *(v0 + 392);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E5FA7E84()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 200);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 344) = v6;
  *(v1 + 352) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA7FC8, v6, v5);
}

uint64_t sub_1E5FA7FC8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v4 = *(v0 + 392);
  *(v0 + 360) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 368) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA80E4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA80E4()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 360);
  v8 = *v0;

  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8244, v6, v5);
}

uint64_t sub_1E5FA8244()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA82B0, v2, v3);
}

uint64_t sub_1E5FA82B0()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[29];

  v4 = v0[27];
  v5 = v0[28];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8320, v4, v5);
}

uint64_t sub_1E5FA8320()
{
  v1 = v0[34];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];

  sub_1E5E262E0(v5, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v4, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5FA83F8()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC5F4, v4, v3);
}

uint64_t sub_1E5FA8518()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];

  sub_1E5E262E0(v3, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v4 = v0[32];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FA85F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 153) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = a6;
  *(v6 + 152) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = sub_1E65E6058();
  *(v6 + 56) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8698, v8, v7);
}

uint64_t sub_1E5FA8698()
{
  v19 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1E5FA88E4;
    v3 = *(v0 + 152);

    return sub_1E6394EA4(v3);
  }

  else
  {
    v5 = *(v0 + 56);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 24);
    v7 = sub_1E65E3B68();
    __swift_project_value_buffer(v7, qword_1EE2EA2A0);

    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6328();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 141558274;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2080;
      v13 = type metadata accessor for RouteDestination();
      v14 = MEMORY[0x1E694D940](v10, v13);
      v16 = sub_1E5DFD4B0(v14, v15, &v18);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "No presentation context for %{mask.hash}s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E694F1C0](v12, -1, -1);
      MEMORY[0x1E694F1C0](v11, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1E5FA88E4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8A04, v4, v3);
}

uint64_t sub_1E5FA8A04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 153);
  *(v0 + 88) = sub_1E61AAA48(*(v0 + 40));
  *(v0 + 96) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FA8AD4;
  v4 = *(v0 + 152);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E5FA8AD4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 48);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 112) = v6;
  *(v1 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8C18, v6, v5);
}

uint64_t sub_1E5FA8C18()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 152);
  v4 = *(v0 + 16);
  *(v0 + 128) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1E5FA8D34;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA8D34()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8E94, v6, v5);
}

uint64_t sub_1E5FA8E94()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8F00, v2, v3);
}

uint64_t sub_1E5FA8F00()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA8F68()
{
  v1 = [*v0 viewControllers];
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v2 = sub_1E65E5F18();

  if (v2 >> 62)
  {
    v3 = sub_1E65E67C8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

uint64_t sub_1E5FA9000(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1E5FA9064(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E5FA0B34(a1, a2, a3);
}

uint64_t sub_1E5FA9110(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA9200, v6, v5);
}

uint64_t sub_1E5FA9200()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = (v4 + *(*(v0 + 24) + 24));
  v8 = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  sub_1E5E24688(v4, v1, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  sub_1E5E247DC(v1, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10 + v2) = v5;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA935C;

  return sub_1E63387E0(&unk_1E65EA8A0, v11, ObjectType, v7);
}

uint64_t sub_1E5FA935C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = v0;

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_1E5FA9520;
  }

  else
  {
    v8 = sub_1E5FA94B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5FA94B4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA9520()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1E5FA958C(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA1E18(a1, a2, a3);
}

uint64_t sub_1E5FA9638(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA2F74(a1, a2, a3);
}

uint64_t sub_1E5FA96E4(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA97D4, v6, v5);
}

uint64_t sub_1E5FA97D4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = (v4 + *(*(v0 + 24) + 24));
  v8 = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  sub_1E5E24688(v4, v1, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  sub_1E5E247DC(v1, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10 + v2) = v5;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA9930;

  return sub_1E63387E0(&unk_1E65EA858, v11, ObjectType, v7);
}

uint64_t sub_1E5FA9930()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = v0;

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_1E5FAC5F0;
  }

  else
  {
    v8 = sub_1E5FAC5EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5FA9A88(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA400C(a1, a2, a3, a4);
}

uint64_t sub_1E5FA9B44(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA6CA4(a1, a2, a3, a4);
}

uint64_t sub_1E5FA9C00()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FA718C(v6, v0 + v3, v5, v8, v9);
}

id sub_1E5FA9D20(id result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_1E5FA9D34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1E5FA9D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA85F0(a1, v4, v5, v6, v8, v7);
}

void *sub_1E5FA9E80(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E64F6510(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5FA9FE8(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA134(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1E65E67C8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1E65E67C8();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1E5FAA5A0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA284(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA3F0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1E5FAA54C()
{
  result = qword_1ED072060;
  if (!qword_1ED072060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072060);
  }

  return result;
}

uint64_t sub_1E5FAA5A0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1E65E67C8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1E65E68D8();
  *v1 = result;
  return result;
}

uint64_t sub_1E5FAA640(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E5FAC598(&qword_1ED072078, &qword_1ED072070, &qword_1E65EA760);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072070, &qword_1E65EA760);
            v9 = sub_1E5FAA980(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5FAA7E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E5FAC598(&qword_1ED072158, &qword_1ED072150, &qword_1E65EA8C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072150, &qword_1E65EA8C0);
            v9 = sub_1E5FAAA08(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1E5FAA980(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E694E2D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E5FAAA00;
  }

  __break(1u);
  return result;
}

void (*sub_1E5FAAA08(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E694E2D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E5FAC5F8;
  }

  __break(1u);
  return result;
}

char *sub_1E5FAAA88@<X0>(uint64_t (*a1)(void)@<X0>, char **a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1(v5, v7);
  result = sub_1E625E57C(v6, 0, v9, a1, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_1E5FAAAF4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v9 = type metadata accessor for RouteDestination();
  v18 = *(v9 - 8);
  v10 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v13 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return result;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1E65E6958();
  if ((v13 & 0x8000000000000000) == 0)
  {
    for (i = 0; ; ++i)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((v22 + i) >= (a5 >> 1) || i >= v13)
      {
        goto LABEL_13;
      }

      sub_1E5E24688(v21 + *(v18 + 72) * (v22 + i), v12, type metadata accessor for RouteDestination);
      v19(&v23, v12);
      if (v6)
      {
        goto LABEL_16;
      }

      v6 = 0;
      sub_1E5E262E0(v12, type metadata accessor for RouteDestination);
      sub_1E65E6928();
      v17 = *(v24 + 16);
      sub_1E65E6968();
      sub_1E65E6978();
      sub_1E65E6938();
      if (v16 == v13)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  sub_1E5E262E0(v12, type metadata accessor for RouteDestination);

  __break(1u);
  return result;
}

uint64_t sub_1E5FAACF0(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = a1;
  v27 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072090, &qword_1E65EA778);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v28 = a5 >> 1;
  v29 = a4;
  v13 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1E601CB98(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v30 = v5;
    v15 = 0;
    v14 = v32;
    for (i = (a3 + 16 * v29 + 8); ; i += 2)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v29 + v15) >= v28 || v15 >= v13)
      {
        goto LABEL_14;
      }

      v18 = *i;
      v31[0] = *(i - 1);
      v31[1] = v18;

      v19 = v12;
      v20 = v30;
      v26(v31);
      v30 = v20;
      if (v20)
      {
        goto LABEL_17;
      }

      v32 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E601CB98(v21 > 1, v22 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22;
      v12 = v19;
      sub_1E5FAB460(v19, v23, &qword_1ED072090, &qword_1E65EA778);
      ++v15;
      if (v17 == v13)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_1E5FAAF20()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v7);
  v9 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FA45C8(v0 + v3, v0 + v6, v8, v10, v11);
}

uint64_t sub_1E5FAB098(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FA54A0(a1, v1 + v5, v8, v9, v11, v12);
}

uint64_t sub_1E5FAB1E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E65E5FF8();
}

uint64_t sub_1E5FAB254()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5FA3B74(v3, v4);
}

uint64_t sub_1E5FAB350()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA3420(v0 + v3, v5, v6);
}

uint64_t sub_1E5FAB460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5FAB4C8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FA2390(v0 + v3, v6, v7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v118 = *(*(v1 - 8) + 80);
  v116 = *(*(v1 - 8) + 64);
  v2 = (v0 + ((v118 + 16) & ~v118));

  v119 = v1;
  v117 = v2;
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3;
  v113 = v3;

  v120 = type metadata accessor for AppComposer();
  v6 = v5 + v120[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v6[v9], v115);
  v10 = v8[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v10], v112);
  v11 = v8[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v6[v11], v110);
  v12 = v8[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v6[v12], v108);
  v13 = v8[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v6[v13], v106);
  v14 = v8[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v6[v14], v104);
  v15 = v8[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v6[v15], v102);
  v16 = v8[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v6[v16], v100);
  v17 = v8[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v6[v17], v98);
  v18 = v8[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v6[v18], v96);
  v19 = v8[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v6[v19], v94);
  v20 = v8[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v6[v20], v92);
  v21 = v8[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v6[v21], v90);
  v22 = v8[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v6[v22], v88);
  v23 = v8[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v6[v23], v86);
  v24 = v8[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v6[v24], v84);
  v25 = v8[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v6[v25], v82);
  v26 = v8[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v6[v26], v80);
  v27 = v8[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v6[v27], v78);
  v28 = v8[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v6[v28], v76);
  v29 = v8[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v6[v29], v74);
  v30 = v8[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v6[v30], v67);
  v31 = v8[28];
  v65 = type metadata accessor for SessionService();
  v71 = *(v65[-1].Description + 1);
  v71(&v6[v31], v65);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v70 = *(v33[-1].Description + 1);
  v70(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v69 = *(v35[-1].Description + 1);
  v69(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v68 = *(v37[-1].Description + 1);
  v68(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(&v6[v45], v46);
  v48 = *(v113 + v120[6]);

  v49 = (v113 + v120[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v114(&v52[v8[6]], v115);
  v111(&v52[v8[7]], v112);
  v109(&v52[v8[8]], v110);
  v107(&v52[v8[9]], v108);
  v105(&v52[v8[10]], v106);
  v103(&v52[v8[11]], v104);
  v101(&v52[v8[12]], v102);
  v99(&v52[v8[13]], v100);
  v97(&v52[v8[14]], v98);
  v95(&v52[v8[15]], v96);
  v93(&v52[v8[16]], v94);
  v91(&v52[v8[17]], v92);
  v89(&v52[v8[18]], v90);
  v87(&v52[v8[19]], v88);
  v85(&v52[v8[20]], v86);
  v83(&v52[v8[21]], v84);
  v81(&v52[v8[22]], v82);
  v79(&v52[v8[23]], v80);
  v77(&v52[v8[24]], v78);
  v75(&v52[v8[25]], v76);
  v73(&v52[v8[26]], v74);
  v72(&v52[v8[27]], v67);
  v71(&v52[v8[28]], v65);
  v70(&v52[v8[29]], v33);
  v69(&v52[v8[30]], v35);
  v68(&v52[v8[31]], v37);
  v54 = &v52[v8[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v66(&v52[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v8[34]]);
  v58 = *&v52[v8[35]];

  v47(&v52[v8[36]], v46);
  v59 = *(v113 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v113 + v120[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = *(v117 + v119[6]);
  swift_unknownObjectRelease();
  v62 = (v117 + v119[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = *(v117 + v119[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5FAC350()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFA78C;

  return sub_1E5FA196C(v3, v4);
}

uint64_t sub_1E5FAC440()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FA10A8(v0 + v3, v6, v7);
}

uint64_t sub_1E5FAC598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5FAC608@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v73 = type metadata accessor for RemoteBrowsingService();
  Description = v73[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v73);
  v68 = v3;
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v63 - v6;
  v7 = type metadata accessor for SessionService();
  v8 = v7[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v87 = v10;
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  v91 = *(v67 - 8);
  v12 = *(v91 + 64);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v89 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - v15;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v18 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v19 = type metadata accessor for AppEnvironment();
  v64 = *(v19 + 100);
  v20 = *(v19 + 112);
  v84 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v82 = v8[2];
  v83 = (v8 + 2);
  v22 = v18;
  v76 = v18;
  v82(v11, v18 + v20, v7);
  v65 = v11;
  v66 = *(v8 + 80);
  v23 = v8;
  v24 = (v66 + 16) & ~v66;
  v81 = v66 | 7;
  v25 = swift_allocObject();
  v79 = v7;
  v26 = v23[4];
  v80 = v23 + 4;
  v85 = v26;
  v26(v25 + v24, v11, v7);

  sub_1E65E4E08();
  v27 = v88;
  v28 = v67;
  v88[3] = v67;
  v27[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v30 = v91 + 16;
  v31 = *(v91 + 16);
  v32 = v16;
  v63 = v16;
  v31(boxed_opaque_existential_1, v16, v28);
  v74 = v31;
  v75 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1E65EA8E0;
  v78 = sub_1E65E60A8();
  v33 = *(v78 - 8);
  v77 = *(v33 + 56);
  v72 = v33 + 56;
  v34 = v86;
  v77(v86, 1, 1, v78);
  v35 = Description;
  v36 = v69;
  v37 = v73;
  (Description[2])(v69, v22 + v64, v73);
  v31(v89, v32, v28);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = v91;
  v40 = *(v91 + 80);
  v41 = v34;
  v42 = (v68 + v40 + v38) & ~v40;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  (v35[4])(v43 + v38, v36, v37);
  v44 = *(v39 + 32);
  Description = (v39 + 32);
  v73 = v44;
  v45 = v89;
  v46 = v28;
  (v44)(v43 + v42, v89, v28);
  v47 = sub_1E6059EAC(0, 0, v41, &unk_1E65EA938, v43);
  v48 = v71;
  *(v71 + 32) = v47;
  v77(v41, 1, 1, v78);
  v49 = v65;
  v50 = v79;
  v82(v65, v76 + v84, v79);
  v51 = v45;
  v52 = v45;
  v53 = v63;
  v74(v51, v63, v46);
  v54 = (v66 + 32) & ~v66;
  v55 = (v54 + v87 + v40) & ~v40;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v85(v56 + v54, v49, v50);
  (v73)(v56 + v55, v52, v46);
  v57 = v86;
  *(v48 + 40) = sub_1E6059EAC(0, 0, v86, &unk_1E65EA948, v56);
  v77(v57, 1, 1, v78);
  v58 = v79;
  v82(v49, v76 + v84, v79);
  v74(v52, v53, v46);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v85(v59 + v54, v49, v58);
  (v73)(v59 + v55, v52, v46);
  v60 = sub_1E6059EAC(0, 0, v57, &unk_1E65EA958, v59);
  v61 = v71;
  *(v71 + 48) = v60;
  result = (*(v91 + 8))(v53, v46);
  v88[5] = v61;
  return result;
}

uint64_t sub_1E5FACE20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FACE40, 0, 0);
}

uint64_t sub_1E5FACE40()
{
  v1 = v0[3];
  v2 = SessionService.queryAudioLanguagePreference.getter();
  v0[4] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FACF3C;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1E5FACF3C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FAD050;
  }

  else
  {
    v3 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FAD050()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1E5FAD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD220, 0, 0);
}

uint64_t sub_1E5FAD220()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FAD31C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E5FAD31C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD434, 0, 0);
}

uint64_t sub_1E5FAD434()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FAD510;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E5FAD510()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD60C, 0, 0);
}

uint64_t sub_1E5FAD60C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FAD75C, v7, v6);
  }
}

uint64_t sub_1E5FAD75C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD7E0, 0, 0);
}

uint64_t sub_1E5FAD7E0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E5FAD510;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E5FAD8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A8, &qword_1E65EA980);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FADA0C, 0, 0);
}

uint64_t sub_1E5FADA0C()
{
  v1 = v0[2];
  v2 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FADB08;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E5FADB08()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FAE0A4;
  }

  else
  {
    v4 = sub_1E5FADC38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FADC38()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FADD14;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E5FADD14()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FADE10, 0, 0);
}

uint64_t sub_1E5FADE10()
{
  v1 = v0[4];
  v2 = sub_1E65D9AC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FADF60, v7, v6);
  }
}

uint64_t sub_1E5FADF60()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FADFE4, 0, 0);
}

uint64_t sub_1E5FADFE4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072198, &unk_1E660C690);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E5FADD14;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E5FAE0A4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1E5FAE120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072180, &qword_1E65EA960) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072188, &qword_1E65EA968);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072190, &qword_1E65EA970);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE28C, 0, 0);
}

uint64_t sub_1E5FAE28C()
{
  v1 = v0[2];
  v2 = SessionService.makeSessionTerminatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FAE388;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E5FAE388()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FAEF78;
  }

  else
  {
    v4 = sub_1E5FAE4B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FAE4B8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FAE594;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E5FAE594()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE690, 0, 0);
}

uint64_t sub_1E5FAE690()
{
  v1 = v0[4];
  v2 = sub_1E65DDE98();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FAE7E0, v7, v6);
  }
}

uint64_t sub_1E5FAE7E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE864, 0, 0);
}

uint64_t sub_1E5FAE864()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072180, &qword_1E65EA960);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E5FAE594;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E5FAE924(uint64_t a1)
{
  Description = type metadata accessor for SessionService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FACE20(a1, v1 + v5);
}

uint64_t sub_1E5FAEA00(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAD0B4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E5FAEB5C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for SessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAD8A0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E5FAEE1C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for SessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAE120(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E5FAEF7C()
{
  result = sub_1E5F9B388(&unk_1F5FA7FF8);
  qword_1ED096120 = result;
  return result;
}

id MarketingPurchaseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E5FAEFD8(uint64_t a1)
{
  v2[121] = v1;
  v2[115] = a1;
  v3 = type metadata accessor for RouteDestination();
  v2[127] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v5 = sub_1E65D8668();
  v2[130] = v5;
  v6 = *(v5 - 8);
  v2[131] = v6;
  v7 = *(v6 + 64) + 15;
  v2[132] = swift_task_alloc();
  v8 = sub_1E65D9658();
  v2[133] = v8;
  v9 = *(v8 - 8);
  v2[134] = v9;
  v10 = *(v9 + 64) + 15;
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v11 = sub_1E65DE1F8();
  v2[137] = v11;
  v12 = *(v11 - 8);
  v2[138] = v12;
  v13 = *(v12 + 64) + 15;
  v2[139] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SharePlaySessionDetour.State(0) - 8) + 64) + 15;
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v2[142] = v15;
  v16 = *(v15 - 8);
  v2[143] = v16;
  v17 = *(v16 + 64) + 15;
  v2[144] = swift_task_alloc();
  v18 = type metadata accessor for AppComposer();
  v2[145] = v18;
  v19 = *(v18 - 8);
  v2[146] = v19;
  v2[147] = *(v19 + 64);
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v20 = sub_1E65D8D48();
  v2[150] = v20;
  v21 = *(v20 - 8);
  v2[151] = v21;
  v2[152] = *(v21 + 64);
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAF328, 0, 0);
}

uint64_t sub_1E5FAF328()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 968);
  v3 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  swift_beginAccess();
  sub_1E5FB78B8(v2 + v3, v1, type metadata accessor for SharePlaySessionDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5FB9854(*(v0 + 1128), type metadata accessor for SharePlaySessionDetour.State);
LABEL_5:
    v23 = *(v0 + 1240);
    v24 = *(v0 + 1232);
    v25 = *(v0 + 1224);
    v26 = *(v0 + 1192);
    v27 = *(v0 + 1184);
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1128);
    v30 = *(v0 + 1120);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1088);
    v56 = *(v0 + 1080);
    v59 = *(v0 + 1056);
    v63 = *(v0 + 1032);
    v67 = *(v0 + 1024);

    v33 = *(v0 + 8);

    return v33();
  }

  v6 = *(v0 + 1192);
  v7 = *(v0 + 1144);
  v54 = *(v0 + 1136);
  v57 = *(v0 + 1152);
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);
  v61 = v9;
  v65 = *(v0 + 920);
  v10 = *(v4 + 48);
  v11 = *(v4 + 64);
  v52 = *(*(v0 + 1208) + 32);
  v52(*(v0 + 1240), v8, *(v0 + 1200));
  sub_1E5E1FA80(v8 + v10, v6);
  (*(v7 + 32))(v57, v8 + v11, v54);
  (*(v5 + 56))(v61, 1, 1, v4);
  swift_beginAccess();
  sub_1E5FB7A1C(v61, v2 + v3);
  swift_endAccess();
  if (v65)
  {
    v12 = *(v0 + 1240);
    v13 = *(v0 + 1232);
    v14 = *(v0 + 1208);
    v15 = *(v0 + 1200);
    v62 = *(v0 + 1152);
    v66 = *(v0 + 1192);
    v16 = *(v0 + 1144);
    v17 = *(v0 + 1112);
    v18 = *(v0 + 1104);
    v55 = *(v0 + 1096);
    v58 = *(v0 + 1136);
    v19 = *(v0 + 920);
    v20 = (*(v0 + 968) + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub);
    v21 = *v20;
    v53 = v20[1];
    swift_getObjectType();
    (*(v14 + 16))(v13, v12, v15);
    v22 = v19;
    sub_1E65DE1E8();
    sub_1E65DDDE8();
    (*(v18 + 8))(v17, v55);
    *(v0 + 872) = v19;
    sub_1E65E5FE8();
    (*(v16 + 8))(v62, v58);
    sub_1E5FB9854(v66, type metadata accessor for AppComposer);
    (*(v14 + 8))(v12, v15);
    goto LABEL_5;
  }

  v35 = *(v0 + 1240);
  v36 = *(v0 + 1224);
  v37 = *(v0 + 1216);
  v38 = *(v0 + 1208);
  v39 = *(v0 + 1200);
  v40 = *(v0 + 1184);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v64 = *(v0 + 1088);
  v68 = *(v0 + 1160);
  v60 = *(v0 + 1064);
  sub_1E5FB78B8(*(v0 + 1192), v40, type metadata accessor for AppComposer);
  v43 = *(v38 + 16);
  v38 += 16;
  *(v0 + 1248) = v43;
  *(v0 + 1256) = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v36, v35, v39);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v45 = (v41 + *(v38 + 64) + v44) & ~*(v38 + 64);
  v46 = swift_allocObject();
  *(v0 + 1264) = v46;
  sub_1E5E1FA80(v40, v46 + v44);
  v52(v46 + v45, v36, v39);
  swift_asyncLet_begin();
  *(v0 + 1360) = *(v68 + 20);
  *(v0 + 1364) = *(type metadata accessor for AppEnvironment() + 116);
  v47 = SharePlayService.waitForSession.getter();
  *(v0 + 1272) = v48;
  v69 = (v47 + *v47);
  v49 = v47[1];
  v50 = swift_task_alloc();
  *(v0 + 1280) = v50;
  *v50 = v0;
  v50[1] = sub_1E5FAF918;
  v51 = *(v0 + 1240);

  return v69(v51);
}

uint64_t sub_1E5FAF918()
{
  v2 = *(*v1 + 1280);
  v5 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v3 = sub_1E5FB0550;
  }

  else
  {
    v3 = sub_1E5FAFA2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FAFA2C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1364);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1192);

  v5 = SharePlayService.willBeginActivity.getter();
  *(v0 + 1296) = v6;
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 1304) = v8;
  *v8 = v0;
  v8[1] = sub_1E5FAFB48;
  v9 = *(v0 + 1240);

  return v11(v9);
}

uint64_t sub_1E5FAFB48()
{
  v2 = *(*v1 + 1304);
  v5 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_1E5FB0784;
  }

  else
  {
    v3 = sub_1E5FAFC5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FAFC5C()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1364);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1192);

  v5 = SharePlayService.joinActivity.getter();
  *(v0 + 1320) = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 1328) = v8;
  *v8 = v0;
  v8[1] = sub_1E5FAFD70;

  return v10();
}

uint64_t sub_1E5FAFD70()
{
  v2 = *(*v1 + 1328);
  v5 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = sub_1E5FB09B8;
  }

  else
  {
    v3 = sub_1E5FAFE84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FAFE84()
{
  v1 = *(v0 + 1320);

  v2 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v2, sub_1E5FAFEF0, v0 + 832);
}

uint64_t sub_1E5FAFEF0()
{
  *(v1 + 1344) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, *(v1 + 1088), sub_1E5FB0BEC, v1 + 880);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E5FAFF34, 0, 0);
  }
}

uint64_t sub_1E5FAFF34()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[131];
  v6 = v0[130];
  (*(v2 + 16))(v1, v0[136], v3);
  sub_1E65D9618();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1E65D8658();
  v9 = v8;
  LOBYTE(v3) = v10;
  (*(v5 + 8))(v4, v6);
  if (v3)
  {
    v11 = v0[157];
    v12 = v0[156];
    v13 = v0[155];
    v14 = v0[150];
    v28 = v0[142];
    v29 = v0[144];
    v15 = v0[129];
    v16 = v0[128];
    v17 = v0[127];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
    *v15 = sub_1E65D8D08();
    *(v15 + 8) = v19;
    *(v15 + 16) = sub_1E65D8D18();
    *(v15 + 24) = v20;
    *(v15 + 32) = sub_1E65D8CE8();
    *(v15 + 40) = v7;
    v21 = sub_1E65D96F8();
    (*(*(v21 - 8) + 56))(v15 + v18, 1, 1, v21);
    *(v15 + 48) = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v12(v15 + *(v17 + 20), v13, v14);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v15 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E5FB78B8(v15, v16, type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    sub_1E5FB9854(v15, type metadata accessor for RouteDestination);
    v22 = sub_1E5FB01DC;
    v23 = v0[136];
    v24 = v0 + 2;
    v25 = v0 + 122;
  }

  else
  {
    sub_1E5F87058(v7, v9, 0);
    sub_1E5FB94B0();
    v0[169] = swift_allocError();
    *v26 = 1;
    swift_willThrow();
    v22 = sub_1E5FB0388;
    v23 = v0[136];
    v24 = v0 + 2;
    v25 = v0 + 116;
  }

  return MEMORY[0x1EEE6DEB0](v24, v23, v22, v25);
}

uint64_t sub_1E5FB01F8()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  (*(v0[143] + 8))(v0[144], v0[142]);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v6 = v0[155];
  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[144];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[139];
  v15 = v0[136];
  v18 = v0[135];
  v19 = v0[132];
  v20 = v0[129];
  v21 = v0[128];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E5FB03A4()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v0[103] = v0[169];
  sub_1E65E5FE8();
  (*(v7 + 8))(v6, v8);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[144];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[129];
  v24 = v0[128];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FB0550()
{
  v1 = *(v0 + 1272);

  v2 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v2, sub_1E5FB05BC, v0 + 656);
}

uint64_t sub_1E5FB05D8()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v0[103] = v0[161];
  sub_1E65E5FE8();
  (*(v7 + 8))(v6, v8);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[144];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[129];
  v24 = v0[128];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FB0784()
{
  v1 = *(v0 + 1296);

  v2 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v2, sub_1E5FB07F0, v0 + 720);
}

uint64_t sub_1E5FB080C()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v0[103] = v0[164];
  sub_1E65E5FE8();
  (*(v7 + 8))(v6, v8);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[144];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[129];
  v24 = v0[128];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FB09B8()
{
  v1 = *(v0 + 1320);

  v2 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v2, sub_1E5FB0A24, v0 + 784);
}

uint64_t sub_1E5FB0A40()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v0[103] = v0[167];
  sub_1E65E5FE8();
  (*(v7 + 8))(v6, v8);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[144];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[129];
  v24 = v0[128];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FB0C08()
{
  v1 = v0[158];
  v2 = v0[155];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v0[103] = v0[168];
  sub_1E65E5FE8();
  (*(v7 + 8))(v6, v8);
  sub_1E5FB9854(v5, type metadata accessor for AppComposer);
  (*(v3 + 8))(v2, v4);

  v9 = v0[155];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[144];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[139];
  v18 = v0[136];
  v21 = v0[135];
  v22 = v0[132];
  v23 = v0[129];
  v24 = v0[128];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FB0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5FB0DD8, 0, 0);
}

uint64_t sub_1E5FB0DD8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[5] = v6;
  v7 = sub_1E65D8D18();
  v9 = v8;
  v0[6] = v8;
  v14 = (v5 + *v5);
  v10 = v5[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1E5FB0F24;
  v12 = v0[2];

  return v14(v12, v7, v9);
}

uint64_t sub_1E5FB0F24()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB106C, 0, 0);
  }

  else
  {
    v4 = v3[5];
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E5FB106C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E5FB10D8()
{
  v1 = sub_1E65DE1F8();
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharePlaySessionDetour.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v41 - v14;
  v50 = sub_1E65D8D48();
  v15 = *(v50 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v21 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  swift_beginAccess();
  sub_1E5FB78B8(v0 + v21, v11, type metadata accessor for SharePlaySessionDetour.State);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    return sub_1E5FB9854(v11, type metadata accessor for SharePlaySessionDetour.State);
  }

  v43 = v4;
  v44 = v1;
  v25 = *(v22 + 48);
  v26 = *(v22 + 64);
  v27 = *(v15 + 32);
  v42 = v20;
  v27(v20, v11, v50);
  v28 = v47;
  v29 = &v11[v26];
  v30 = v48;
  (*(v47 + 32))(v49, v29, v48);
  sub_1E5FB9854(&v11[v25], type metadata accessor for AppComposer);
  (*(v23 + 56))(v9, 1, 1, v22);
  swift_beginAccess();
  sub_1E5FB7A1C(v9, v0 + v21);
  swift_endAccess();
  v31 = v0 + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub;
  v33 = *(v0 + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub);
  v32 = *(v31 + 8);
  swift_getObjectType();
  v34 = v42;
  v35 = v50;
  (*(v15 + 16))(v45, v42, v50);
  v36 = v43;
  sub_1E65DE1E8();
  v37 = v44;
  sub_1E65DDDE8();
  (*(v46 + 8))(v36, v37);
  sub_1E5FB94B0();
  v38 = swift_allocError();
  *v39 = 0;
  v51 = v38;
  v40 = v49;
  sub_1E65E5FE8();
  (*(v28 + 8))(v40, v30);
  return (*(v15 + 8))(v34, v35);
}

uint64_t sub_1E5FB158C(uint64_t a1)
{
  v2[238] = v1;
  v2[237] = a1;
  v3 = sub_1E65DB7D8();
  v2[239] = v3;
  v4 = *(v3 - 8);
  v2[240] = v4;
  v5 = *(v4 + 64) + 15;
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v2[243] = swift_task_alloc();
  v7 = sub_1E65DB438();
  v2[244] = v7;
  v8 = *(v7 - 8);
  v2[245] = v8;
  v2[246] = *(v8 + 64);
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v2[249] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v2[250] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v2[251] = swift_task_alloc();
  v12 = sub_1E65D7A38();
  v2[252] = v12;
  v13 = *(v12 - 8);
  v2[253] = v13;
  v14 = *(v13 + 64) + 15;
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v16 = sub_1E65D74E8();
  v2[258] = v16;
  v17 = *(v16 - 8);
  v2[259] = v17;
  v18 = *(v17 + 64) + 15;
  v2[260] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB18B4, 0, 0);
}

uint64_t sub_1E5FB18B4()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 2056);
  sub_1E65DB5A8();
  sub_1E65D74C8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1896);
    sub_1E5DFE50C(*(v0 + 2056), &qword_1ED072340, &qword_1E65EA410);
    sub_1E5FB94B0();
    v5 = swift_allocError();
    *v6 = 2;
    *(v0 + 1848) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    sub_1E65E5FE8();
    v7 = *(v0 + 2080);
    v8 = *(v0 + 2056);
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2040);
    v11 = *(v0 + 2032);
    v12 = *(v0 + 2008);
    v13 = *(v0 + 2000);
    v14 = *(v0 + 1992);
    v15 = *(v0 + 1984);
    v16 = *(v0 + 1976);
    v50 = *(v0 + 1944);
    v52 = *(v0 + 1936);
    v54 = *(v0 + 1928);

    v17 = *(v0 + 8);

    return v17(0);
  }

  else
  {
    v19 = *(v0 + 2080);
    v20 = *(v0 + 2072);
    v21 = *(v0 + 2064);
    v22 = *(v0 + 2048);
    v23 = *(v0 + 2032);
    v24 = *(v0 + 2024);
    v46 = v23;
    v47 = *(v0 + 2016);
    v25 = *(v0 + 2008);
    v42 = *(v0 + 2000);
    v43 = *(v0 + 1992);
    v44 = *(v0 + 2040);
    v48 = *(v0 + 1984);
    v53 = *(v0 + 1976);
    v55 = *(v0 + 1968);
    v49 = *(v0 + 1960);
    v51 = *(v0 + 1952);
    v45 = *(v0 + 1944);
    v26 = *(v0 + 1904);
    (*(v20 + 32))(v19, *(v0 + 2056), v21);
    v27 = *(v26 + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dependencies);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
    sub_1E65D7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
    sub_1E65D7F18();
    *(v0 + 2088) = *(v0 + 1856);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
    sub_1E65D7F18();
    v28 = *MEMORY[0x1E69CBDD8];
    v29 = sub_1E65D8F38();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v25, v28, v29);
    (*(v30 + 56))(v25, 0, 1, v29);
    (*(v20 + 16))(v22, v19, v21);
    (*(v20 + 56))(v22, 0, 1, v21);
    v31 = sub_1E65D9908();
    (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
    v32 = sub_1E65D9F88();
    (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
    sub_1E65D7A28();
    (*(v24 + 16))(v46, v44, v47);
    sub_1E65D8CA8();
    v33 = sub_1E65D8CB8();
    (*(*(v33 - 8) + 56))(v45, 0, 1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = sub_1E65D8868();
    *(inited + 40) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1E65EA670;
    *(v36 + 32) = sub_1E65D8878();
    *(v36 + 40) = v37;
    *(v36 + 48) = 0xD000000000000014;
    *(v36 + 56) = 0x80000001E6610A70;
    v38 = sub_1E6427498(v36);
    swift_setDeallocating();
    sub_1E5DFE50C(v36 + 32, &qword_1ED072378, &qword_1E65EABA8);
    *(v0 + 1864) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E5FB9504();
    sub_1E65E6848();
    sub_1E642764C(inited);
    swift_setDeallocating();
    sub_1E5DFE50C(inited + 32, &unk_1ED072390, &qword_1E65EABB8);
    sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
    sub_1E65DB428();
    sub_1E5DF650C(v0 + 1608, v0 + 1688);
    (*(v49 + 16))(v53, v48, v51);
    v39 = (*(v49 + 80) + 56) & ~*(v49 + 80);
    v40 = swift_allocObject();
    *(v0 + 2096) = v40;
    sub_1E5DF599C((v0 + 1688), v40 + 16);
    (*(v49 + 32))(v40 + v39, v53, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735C0, &qword_1E65EABD0);
    swift_asyncLet_begin();
    sub_1E5DF650C(v0 + 1528, v0 + 1768);
    v41 = swift_allocObject();
    *(v0 + 2104) = v41;
    sub_1E5DF599C((v0 + 1768), v41 + 16);
    sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1872, sub_1E5FB205C, v0 + 1296);
  }
}

uint64_t sub_1E5FB205C()
{
  v1[264] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB29D0, 0, 0);
  }

  else
  {
    v1[265] = v1[234];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 235, sub_1E5FB210C, v1 + 206);
  }
}

uint64_t sub_1E5FB210C()
{
  *(v1 + 2128) = v0;
  if (v0)
  {
    v2 = sub_1E5FB2A60;
  }

  else
  {
    v2 = sub_1E5FB2140;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FB2140()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1912);
  v4 = *(v0 + 1880);
  *(v0 + 2136) = v4;
  *(v0 + 2176) = *MEMORY[0x1E69CD5F8];
  v5 = *(v2 + 104);
  *(v0 + 2144) = v5;
  *(v0 + 2152) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1);
  sub_1E65E6058();
  v6 = v4;
  *(v0 + 2160) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB221C, v8, v7);
}

uint64_t sub_1E5FB221C()
{
  v1 = *(v0 + 2160);
  v18 = *(v0 + 2144);
  v19 = *(v0 + 2152);
  v17 = *(v0 + 2176);
  v22 = *(v0 + 2120);
  v23 = *(v0 + 2136);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1928);
  v20 = *(v0 + 1936);
  v21 = *(v0 + 1920);
  v4 = *(v0 + 1912);
  v24 = *(v0 + 1904);

  sub_1E65DB578();
  sub_1E65E1268();
  v5 = objc_allocWithZone(MEMORY[0x1E698CCF0]);
  v6 = sub_1E65E5C48();

  v7 = sub_1E65E5C48();

  v8 = [v5 initWithServiceType:v6 placement:v7 bag:v2];

  v9 = sub_1E65E5C48();
  [v8 setOfferHints_];

  v18(v3, v17, v4);
  sub_1E5FB96FC(&qword_1ED0723A8, MEMORY[0x1E69CD608]);
  v10 = v8;
  LOBYTE(v8) = sub_1E65E5B98();
  v11 = *(v21 + 8);
  v11(v3, v4);
  [v10 setAnonymousMetrics_];
  sub_1E625B644(v22);

  v12 = sub_1E65E5AF8();

  [v10 setMetricsOverlay_];

  [v10 setAccount_];
  sub_1E65DB588();
  v13 = sub_1E65E5C48();

  [v10 setMediaClientIdentifier_];

  [v10 setDelegate_];
  v14 = [objc_opt_self() currentProcess];
  sub_1E65DB598();
  v15 = sub_1E65E6348();

  [v10 setClientInfo_];
  *(v0 + 2168) = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v11(v20, v4);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1880, sub_1E5FB25A4, v0 + 1728);
}

uint64_t sub_1E5FB25FC()
{
  v25 = v0[262];
  v27 = v0[263];
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[255];
  v6 = v0[253];
  v7 = v0[252];
  v8 = v0[248];
  v9 = v0[245];
  v10 = v0[244];
  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 201);
  __swift_destroy_boxed_opaque_existential_1(v0 + 191);
  (*(v3 + 8))(v2, v4);

  v11 = v0[260];
  v12 = v0[257];
  v13 = v0[256];
  v14 = v0[255];
  v15 = v0[254];
  v16 = v0[251];
  v17 = v0[250];
  v18 = v0[249];
  v19 = v0[248];
  v20 = v0[247];
  v23 = v0[243];
  v24 = v0[242];
  v26 = v0[241];
  v28 = v0[271];

  v21 = v0[1];

  return v21(v28);
}

uint64_t sub_1E5FB2814()
{
  v24 = v0[262];
  v26 = v0[263];
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[255];
  v6 = v0[253];
  v7 = v0[252];
  v8 = v0[248];
  v9 = v0[245];
  v10 = v0[244];
  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 201);
  __swift_destroy_boxed_opaque_existential_1(v0 + 191);
  (*(v3 + 8))(v2, v4);

  v11 = v0[260];
  v12 = v0[257];
  v13 = v0[256];
  v14 = v0[255];
  v15 = v0[254];
  v16 = v0[251];
  v17 = v0[250];
  v18 = v0[249];
  v19 = v0[248];
  v20 = v0[247];
  v23 = v0[243];
  v25 = v0[242];
  v27 = v0[241];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_1E5FB29D0()
{
  v1 = v0[237];
  v0[236] = v0[264];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  sub_1E65E5FE8();

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 235, sub_1E5FB27BC, v0 + 178);
}

uint64_t sub_1E5FB2A60()
{
  v1 = v0[265];

  v2 = v0[237];
  v0[236] = v0[266];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  sub_1E65E5FE8();

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 235, sub_1E5FB27BC, v0 + 178);
}

uint64_t sub_1E5FB2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65DB7D8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB2BBC, 0, 0);
}

uint64_t sub_1E5FB2BBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CD5F8], v3);
  v7 = *(MEMORY[0x1E69CD658] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1E5FB2CB8;
  v9 = v0[7];
  v10 = v0[4];

  return MEMORY[0x1EEE378C0](v10, v9, 0, v5, v6);
}

uint64_t sub_1E5FB2CB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[7];
  v8 = v4[6];
  v9 = v4[5];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_1E5FB2EB0;
  }

  else
  {
    v4[10] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_1E5FB2E40;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E5FB2E40()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FB2EB0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E5FB2F14(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B0, &qword_1E65EABE8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB2FE0, 0, 0);
}

uint64_t sub_1E5FB2FE0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1E65E3948();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = "Blackbeard/SharePlaySessionDetour.swift";
  *(v4 + 24) = 39;
  *(v4 + 32) = 2;
  *(v4 + 40) = 161;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
  *v6 = v0;
  v6[1] = sub_1E5FB3130;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E5FB9744, v4, v7);
}

uint64_t sub_1E5FB3130()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB32D0, 0, 0);
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];
    v11 = v2 + 2;
    v9 = v2[2];
    v10 = v11[1];

    *v10 = v9;
    (*(v7 + 8))(v6, v8);

    v12 = *(v4 + 8);

    return v12();
  }
}

uint64_t sub_1E5FB32D0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_1E5FB3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for RouteSource(0);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = sub_1E65D8D48();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB3518, 0, 0);
}

uint64_t sub_1E5FB3518()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for RouteDestination();
  sub_1E5FB78B8(v3 + *(v4 + 20), v1, type metadata accessor for RouteSource);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = *(v0 + 96);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v19 = *(v0 + 32);
    (*(*(v0 + 88) + 32))(v5, *(v0 + 72), *(v0 + 80));
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = v19;
    *(v8 + 48) = v7;
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *(v9 + 16) = v6;
    v10 = *(MEMORY[0x1E69E88F0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *v11 = v0;
    v11[1] = sub_1E5FB3734;
    v12 = *(v0 + 16);

    return MEMORY[0x1EEE6DE18](v12, &unk_1E65EAAE0, v8, sub_1E5FB79E8, v9, 0, 0, v4);
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    sub_1E5FB9854(*(v0 + 72), type metadata accessor for RouteSource);
    sub_1E5FB78B8(v14, v13, type metadata accessor for RouteDestination);
    v15 = *(v0 + 96);
    v16 = *(v0 + 72);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1E5FB3734()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1E5FB38E0;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_1E5FB3858;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FB3858()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FB38E0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t sub_1E5FB398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FB39B4, 0, 0);
}

uint64_t sub_1E5FB39B4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination();
  *v5 = v0;
  v5[1] = sub_1E5FB3ABC;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000024, 0x80000001E66103D0, sub_1E5FB7A0C, v2, v6);
}

uint64_t sub_1E5FB3ABC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5F8EAB0, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E5FB3BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a6;
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v44 = *(v9 - 8);
  v10 = v44;
  v50 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43 - v11;
  v12 = type metadata accessor for AppComposer();
  v48 = *(v12 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v43 - v16;
  v17 = type metadata accessor for SharePlaySessionDetour.State(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = sub_1E65D8D48();
  (*(*(v24 - 8) + 16))(v20, a3, v24);
  sub_1E5FB78B8(a4, &v20[v22], type metadata accessor for AppComposer);
  v25 = *(v10 + 16);
  v25(&v20[v23], a1, v9);
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v26 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  v27 = v53;
  swift_beginAccess();
  sub_1E5FB7A1C(v20, v27 + v26);
  swift_endAccess();
  v28 = sub_1E65E60A8();
  v29 = v45;
  (*(*(v28 - 8) + 56))(v45, 1, 1, v28);
  v30 = v46;
  sub_1E5FB78B8(a4, v46, type metadata accessor for AppComposer);
  v31 = v49;
  v25(v49, a1, v9);
  v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v33 = (v47 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v44;
  v35 = (*(v44 + 80) + v33 + 8) & ~*(v44 + 80);
  v36 = (v50 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  sub_1E5E1FA80(v30, v37 + v32);
  v38 = v53;
  *(v37 + v33) = v53;
  (*(v34 + 32))(v37 + v35, v31, v9);
  v39 = (v37 + v36);
  v40 = v52;
  *v39 = v51;
  v39[1] = v40;
  v41 = v38;
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v29, &unk_1E65EAAF8, v37);
}

uint64_t sub_1E5FB4044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1E65D76A8();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = sub_1E65D92D8();
  v8[10] = v12;
  v13 = *(v12 - 8);
  v8[11] = v13;
  v14 = *(v13 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4168, 0, 0);
}

uint64_t sub_1E5FB4168()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 108);
  v4 = ServiceSubscriptionService.queryServiceSubscription.getter();
  v0[13] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FB4284;
  v8 = v0[12];

  return v10(v8);
}

uint64_t sub_1E5FB4284()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E5FB4B20;
  }

  else
  {
    v3 = sub_1E5FB4398;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FB4398()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_1E65D7698();
  LOBYTE(v2) = sub_1E65D92A8();
  (*(v4 + 8))(v3, v5);
  if (v2)
  {
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1E5FB4544;
    v7 = v0[3];

    return sub_1E5FAEFD8(0);
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    sub_1E5FB7C50();
    v12 = swift_allocError();
    *v13 = 4;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v0[17] = v12;
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_1E5FB46C4;
    v16 = v0[3];
    v15 = v0[4];

    return sub_1E5FB158C(v15);
  }
}

uint64_t sub_1E5FB4544()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4640, 0, 0);
}

uint64_t sub_1E5FB4640()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FB46C4(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB47C4, 0, 0);
}

uint64_t sub_1E5FB47C4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 40);
    v16 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    v4 = swift_allocObject();
    *(v0 + 160) = v4;
    *(v4 + 16) = v1;
    v5 = *(v16 + 24);
    v6 = v1;
    v15 = (v5 + *v5);
    v7 = v5[1];
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1E5FB4988;
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);

    return v15(sub_1E5FB7C38, v4, ObjectType, v9);
  }

  else
  {

    v12 = *(v0 + 96);
    v13 = *(v0 + 72);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1E5FB4988()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4AA0, 0, 0);
}

uint64_t sub_1E5FB4AA0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FB4B20()
{
  v1 = v0[13];

  v0[17] = v0[15];
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1E5FB46C4;
  v4 = v0[3];
  v3 = v0[4];

  return sub_1E5FB158C(v3);
}

uint64_t sub_1E5FB4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FB3420(a1, a2, a3, a4, a5);
}

uint64_t sub_1E5FB4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1E65DB628();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_1E65E3B68();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4DAC, 0, 0);
}

uint64_t sub_1E5FB4DAC()
{
  v34 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[13];
    v3 = v1;
    sub_1E65DE348();
    v4 = v1;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v32 = v8;
      v13 = v0[2];
      v14 = MEMORY[0x1E694E6C0](v0[3], v0[4]);
      v16 = sub_1E5DFD4B0(v14, v15, &v33);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Purchase failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E694F1C0](v12, -1, -1);
      MEMORY[0x1E694F1C0](v11, -1, -1);

      (*(v9 + 8))(v32, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v28 = v1;
    v29 = swift_task_alloc();
    v0[14] = v29;
    *v29 = v0;
    v29[1] = sub_1E5FB50B8;
    v30 = v0[6];
    v31 = v0[7];

    return sub_1E5FAEFD8(v30);
  }

  else
  {
    v17 = *(v0[7] + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator) + OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      v21 = v0[6];
      v22 = *(v17 + 8);
      swift_getObjectType();
      v23 = v21;
      sub_1E65DB618();
      sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580]);
      sub_1E65DDDE8();
      swift_unknownObjectRelease();
      (*(v19 + 8))(v18, v20);
    }

    v24 = v0[13];
    v25 = v0[10];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1E5FB50B8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB51D0, 0, 0);
}

uint64_t sub_1E5FB51D0()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator) + OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v1 + 8);
    swift_getObjectType();
    v7 = v5;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v2, v4);
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 80);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E5FB544C(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  if (a2)
  {
    v11 = a2;
    v12 = [v11 correlationID];
    if (v12)
    {

      v13 = sub_1E65E60A8();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v3;
      v15 = v3;
      sub_1E64B80F8(0, 0, v10, &unk_1E65EAB48, v14);
    }

    else
    {
    }
  }

  v16 = *&v3[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = [a1 metricsOverlay];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1E65E5B08();
    }

    else
    {
      v21 = 0;
    }

    sub_1E5FB63A0(a2, a3, v21);
  }

  return result;
}

uint64_t sub_1E5FB5638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E5FAEFD8(0);
}

uint64_t sub_1E5FB56E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB577C, v7, v6);
}

uint64_t sub_1E5FB577C()
{
  if (*(v0 + 40) && (v1 = *(v0 + 48), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    v3 = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1E5FB5884;
    v5 = *(v0 + 40);

    return sub_1E5FAEFD8(v5);
  }

  else
  {
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E5FB5884()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FB9AF4, v5, v4);
}

uint64_t sub_1E5FB59E4(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  a3(a1, a2);
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1E65E6058();
  v17 = a2;

  v18 = sub_1E65E6048();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a2;
  v19[5] = a5;
  sub_1E64B80F8(0, 0, v15, a7, v19);
}

uint64_t sub_1E5FB5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB5BCC, v7, v6);
}

uint64_t sub_1E5FB5BCC()
{
  if (*(v0 + 40) && (v1 = *(v0 + 48), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    v3 = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1E5FB5CD4;
    v5 = *(v0 + 40);

    return sub_1E5FAEFD8(v5);
  }

  else
  {
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E5FB5CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FB5E14, v5, v4);
}

uint64_t sub_1E5FB5E14()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1E5FB6044(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

uint64_t sub_1E5FB60F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [a1 metricsOverlay];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1E65E5B08();
    }

    else
    {
      v12 = 0;
    }

    a4(a2, a3, v12);
  }

  return result;
}

id sub_1E5FB6210(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E5FB62CC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1E5FB63A0(void *a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v5 = sub_1E65E4F38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E4F68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E3B68();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = *(v73 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - v22;
  if (a2)
  {
    v24 = a2;
    sub_1E65DE348();
    v25 = a2;
    v26 = sub_1E65E3B48();
    v27 = sub_1E65E6328();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      swift_getErrorValue();
      v30 = MEMORY[0x1E694E6C0](v76, v77);
      v32 = sub_1E5DFD4B0(v30, v31, aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1E5DE9000, v26, v27, "Purchase failed with error: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E694F1C0](v29, -1, -1);
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    (*(v73 + 8))(v23, v74);
    sub_1E5FB73D8(a2);
    v33 = a2;
LABEL_5:

    return;
  }

  v68 = v14;
  v69 = v11;
  v70 = v9;
  v71 = v6;
  if (!a1)
  {
    sub_1E65DE348();
    v50 = sub_1E65E3B48();
    v51 = sub_1E65E6328();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1E5DE9000, v50, v51, "No purchase result found", v52, 2u);
      MEMORY[0x1E694F1C0](v52, -1, -1);
    }

    (*(v73 + 8))(v19, v74);
    sub_1E5FB7CAC();
    v53 = swift_allocError();
    *v54 = 1;
    sub_1E5FB73D8(v53);
    v33 = v53;
    goto LABEL_5;
  }

  v34 = v21;
  v35 = a1;
  v36 = [v35 correlationID];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1E65E5C78();
    v40 = v39;

    sub_1E65DE348();

    v41 = sub_1E65E3B48();
    v42 = sub_1E65E6338();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v10;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v38;
      v47 = v42;
      v48 = v45;
      aBlock[0] = v45;
      *v44 = 136446210;
      v49 = sub_1E5DFD4B0(v46, v40, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1E5DE9000, v41, v47, "Successful purchase with correlation ID: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1E694F1C0](v48, -1, -1);
      MEMORY[0x1E694F1C0](v44, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v34, v74);
    v57 = v69;
    v58 = v72;
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v59 = sub_1E65E63C8();
    v60 = swift_allocObject();
    v61 = v75;
    v60[2] = v75;
    v60[3] = v35;
    v60[4] = v58;
    aBlock[4] = sub_1E5FB7D70;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5E05AB0;
    aBlock[3] = &block_descriptor_67;
    v62 = _Block_copy(aBlock);

    v63 = v35;
    v64 = v61;

    v65 = v68;
    sub_1E65E4F48();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
    sub_1E5E05A4C();
    v66 = v70;
    sub_1E65E6738();
    MEMORY[0x1E694DDE0](0, v65, v66, v62);
    _Block_release(v62);

    (*(v71 + 8))(v66, v5);
    (*(v57 + 8))(v65, v67);
  }

  else
  {
    sub_1E5FB7CAC();
    v55 = swift_allocError();
    *v56 = 2;
    sub_1E5FB73D8(v55);
  }
}

void sub_1E5FB6B04(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v64 = a1;
  v6 = sub_1E65E4F38();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E4F68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E3B68();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  if (a2)
  {
    v25 = a2;
    sub_1E65DE348();
    v26 = a2;
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6328();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      swift_getErrorValue();
      v31 = MEMORY[0x1E694E6C0](v67, v68);
      v33 = sub_1E5DFD4B0(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E5DE9000, v27, v28, "Carrier link failed with error: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E694F1C0](v30, -1, -1);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    (*(v65 + 8))(v24, v66);
    sub_1E5FB73D8(a2);
    v34 = a2;
LABEL_5:

    return;
  }

  v58 = v14;
  v59 = v11;
  v60 = v9;
  v61 = v10;
  v35 = v64;
  if (!v64)
  {
    sub_1E65DE348();
    v51 = sub_1E65E3B48();
    v52 = sub_1E65E6328();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1E5DE9000, v51, v52, "No carrier link result found", v53, 2u);
      MEMORY[0x1E694F1C0](v53, -1, -1);
    }

    (*(v65 + 8))(v19, v66);
    sub_1E5FB7CAC();
    v54 = swift_allocError();
    *v55 = 4;
    sub_1E5FB73D8(v54);
    v34 = v54;
    goto LABEL_5;
  }

  v36 = v64;
  sub_1E65DE348();
  v37 = v36;
  v38 = sub_1E65E3B48();
  v39 = sub_1E65E6338();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v57 = v4;
    v41 = v40;
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v42 = v35;
    v43 = v37;
    _os_log_impl(&dword_1E5DE9000, v38, v39, "Successful carrier link with result: %@", v41, 0xCu);
    sub_1E5DFE50C(v42, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v42, -1, -1);
    v4 = v57;
    MEMORY[0x1E694F1C0](v41, -1, -1);
  }

  (*(v65 + 8))(v22, v66);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v44 = sub_1E65E63C8();
  v45 = swift_allocObject();
  v45[2] = v4;
  v45[3] = v37;
  v45[4] = v62;
  aBlock[4] = sub_1E5FB7D00;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_61;
  v46 = _Block_copy(aBlock);

  v47 = v37;
  v48 = v4;

  v49 = v58;
  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v50 = v60;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v49, v50, v46);
  _Block_release(v46);

  (*(v63 + 8))(v50, v6);
  (*(v59 + 8))(v49, v61);
}

uint64_t sub_1E5FB71C0(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_1E65DB638();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E65DB868();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20[1] = *(v17 + 8);
    v20[0] = swift_getObjectType();
    *v11 = a2;
    (*(v8 + 104))(v11, *a4, v7);

    v19 = a2;
    sub_1E65DB858();
    sub_1E5FB96FC(&qword_1EE2D6D20, MEMORY[0x1E69CD638]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_1E5FB73D8(void *a1)
{
  v3 = sub_1E65E4F38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E4F68();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v12 = sub_1E65E63C8();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1E5FB7CA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_1E5FB76A8(uint64_t a1, void *a2)
{
  v4 = sub_1E65DB628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    swift_getObjectType();
    v12 = a2;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

id MarketingPurchaseHandler.init()()
{
  *&v0[OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1E5FB78B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FB7920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5FB398C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5FB7A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlaySessionDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FB7A80(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFA78C;

  return sub_1E5FB4044(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

unint64_t sub_1E5FB7C50()
{
  result = qword_1ED072300;
  if (!qword_1ED072300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072300);
  }

  return result;
}

unint64_t sub_1E5FB7CAC()
{
  result = qword_1ED072310;
  if (!qword_1ED072310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072310);
  }

  return result;
}

uint64_t objectdestroy_57Tm_0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5FB7D98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B0, &qword_1E65EABE8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E5FB9754;
  *(v35 + 24) = v33;

  v34(sub_1E5E20BC8, v35);
}

unint64_t sub_1E5FB8174(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E694F1E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E694F1E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FB8200(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  if (v10)
  {
    return sub_1E65E5FE8();
  }

  else
  {
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E5FB8458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0723C0, &qword_1E65EABF8);
    v3 = sub_1E65E6A28();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5FB97E4(v4, &v16);
      v5 = v16;
      v6 = v17;
      result = sub_1E6215038(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1E5FB857C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = *(a2 + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_webUserInterfaceCoordinator);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_1E5FB9AD8;
  v13[3] = v10;
  v13[4] = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);

    v17 = [v16 initWithRequest:a1 presentingViewController:v15];
    v18 = [v17 performAuthentication];
    aBlock[4] = sub_1E5FB91E4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E64453F4;
    aBlock[3] = &block_descriptor_117;
    v19 = _Block_copy(aBlock);

    [v18 addFinishBlock_];

    _Block_release(v19);
  }

  else
  {
    sub_1E5FB9054();
    v20 = swift_allocError();
    _Block_copy(a3);

    v21 = sub_1E65D73A8();
    (a3)[2](a3, 0, v21);

    v22 = sub_1E65E60A8();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_1E65E6058();

    v23 = v20;
    v24 = sub_1E65E6048();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v20;
    v25[5] = v12;
    sub_1E64B80F8(0, 0, v9, &unk_1E65EAB30, v25);
  }
}

void sub_1E5FB88F8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = *(a2 + OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_webUserInterfaceCoordinator);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_1E5FB9AD8;
  v13[3] = v10;
  v13[4] = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);

    v17 = [v16 initWithRequest:a1 presentingViewController:v15];
    v18 = [v17 present];
    aBlock[4] = sub_1E5FB90A8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E64453F4;
    aBlock[3] = &block_descriptor_96;
    v19 = _Block_copy(aBlock);

    [v18 addFinishBlock_];

    _Block_release(v19);
  }

  else
  {
    sub_1E5FB9054();
    v20 = swift_allocError();
    _Block_copy(a3);

    v21 = sub_1E65D73A8();
    (a3)[2](a3, 0, v21);

    v22 = sub_1E65E60A8();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_1E65E6058();

    v23 = v20;
    v24 = sub_1E65E6048();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v20;
    v25[5] = v12;
    sub_1E64B80F8(0, 0, v9, &unk_1E65EAB18, v25);
  }
}

void sub_1E5FB8C74(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 performAuthentication];
    v14[4] = sub_1E5FB904C;
    v14[5] = v5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1E64453F4;
    v14[3] = &block_descriptor_79;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E5FB9054();
    v12 = swift_allocError();
    _Block_copy(a3);
    v13 = sub_1E65D73A8();
    (a3)[2](a3, 0, v13);
  }
}

void sub_1E5FB8E60(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v14[4] = sub_1E5FB904C;
    v14[5] = v5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1E64453F4;
    v14[3] = &block_descriptor_73;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E5FB9054();
    v12 = swift_allocError();
    _Block_copy(a3);
    v13 = sub_1E65D73A8();
    (a3)[2](a3, 0, v13);
  }
}

unint64_t sub_1E5FB9054()
{
  result = qword_1ED072318;
  if (!qword_1ED072318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072318);
  }

  return result;
}

uint64_t sub_1E5FB90E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FB5B34(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5FB9220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FB56E4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_91Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5FB9328()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5FB5638();
}

uint64_t sub_1E5FB93DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FB4C90(a1, v4, v5, v6, v7);
}

unint64_t sub_1E5FB94B0()
{
  result = qword_1ED072348;
  if (!qword_1ED072348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072348);
  }

  return result;
}

unint64_t sub_1E5FB9504()
{
  result = qword_1ED072388;
  if (!qword_1ED072388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072380, &qword_1E65EABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072388);
  }

  return result;
}

uint64_t sub_1E5FB9580(uint64_t a1)
{
  v4 = *(sub_1E65DB438() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FB2AF8(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5FB9660(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FB2F14(a1, v1 + 16);
}

uint64_t sub_1E5FB96FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5FB9754(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E5FB8200(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_1E5FB97E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072390, &qword_1E65EABB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FB9854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5FB98B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D8D48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FB0DB4(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E5FB9A14()
{
  result = qword_1ED0723D8;
  if (!qword_1ED0723D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0723D8);
  }

  return result;
}

unint64_t sub_1E5FB9A6C()
{
  result = qword_1ED0723E0;
  if (!qword_1ED0723E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0723E0);
  }

  return result;
}

uint64_t sub_1E5FB9AF8()
{
  v0 = sub_1E65DB948();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DC158();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DAE38();
  v11 = sub_1E65DAE38();
  v12 = MEMORY[0x1E699D400];
  if (v10 != v11)
  {
    v12 = MEMORY[0x1E699D408];
  }

  (*(v6 + 104))(v9, *v12, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E699D178], v0);
  return sub_1E65DB9E8();
}

uint64_t sub_1E5FB9CA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *a3 = xmmword_1E65EADE0;
        return result;
      }

      if (a2 == 4)
      {
        *a3 = xmmword_1E65EADD0;
        return result;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        return result;
      }

      if (a2 == 2)
      {
        *a3 = xmmword_1E65EADF0;
        return result;
      }

      goto LABEL_19;
    }

LABEL_8:
    *a3 = xmmword_1E65EAE00;
    return result;
  }

  if ((a2 - 7) < 4)
  {
    goto LABEL_8;
  }

  if (a2 == 6)
  {
    *a3 = xmmword_1E65EADC0;
    return result;
  }

  if (a2 == 11)
  {
    *a3 = xmmword_1E65EADB0;
    return result;
  }

LABEL_19:
  *a3 = result;
  *(a3 + 8) = a2;
}

uint64_t sub_1E5FB9D84(uint64_t a1)
{
  v2 = sub_1E5FBD4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9DC0(uint64_t a1)
{
  v2 = sub_1E5FBD4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FB9DFC()
{
  v1 = *v0;
  v2 = 0x486B726F77747261;
  v3 = 1954047348;
  if (v1 != 5)
  {
    v3 = 0x6E694C6F65646976;
  }

  v4 = 0x6546646E4177656ELL;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 1835365481;
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

uint64_t sub_1E5FB9EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5FBE0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5FB9F24(uint64_t a1)
{
  v2 = sub_1E5FBD1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9F60(uint64_t a1)
{
  v2 = sub_1E5FBD1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FB9F9C(uint64_t a1)
{
  v2 = sub_1E5FBD474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9FD8(uint64_t a1)
{
  v2 = sub_1E5FBD474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA014(uint64_t a1)
{
  v2 = sub_1E5FBD420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA050(uint64_t a1)
{
  v2 = sub_1E5FBD420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5FBA138(uint64_t a1)
{
  v2 = sub_1E5FBD378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA174(uint64_t a1)
{
  v2 = sub_1E5FBD378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA1B0(uint64_t a1)
{
  v2 = sub_1E5FBD324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA1EC(uint64_t a1)
{
  v2 = sub_1E5FBD324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA228(uint64_t a1)
{
  v2 = sub_1E5FBD2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA264(uint64_t a1)
{
  v2 = sub_1E5FBD2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5FBA320(uint64_t a1)
{
  v2 = sub_1E5FBD27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA35C(uint64_t a1)
{
  v2 = sub_1E5FBD27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowseItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723F0, &qword_1E65EAE10);
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v79 - v4;
  v5 = sub_1E65E0128();
  v100 = *(v5 - 8);
  v101 = v5;
  v6 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723F8, &qword_1E65EAE18);
  v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v79 - v9;
  v95 = sub_1E65DFC88();
  v94 = *(v95 - 8);
  v10 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072400, &qword_1E65EAE20);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v79 - v13;
  v89 = sub_1E65DFDA8();
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072408, &qword_1E65EAE28);
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v79 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072410, &qword_1E65EAE30);
  v81 = *(v82 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v112 = &v79 - v19;
  v20 = sub_1E65DF978();
  v110 = *(v20 - 8);
  v111 = v20;
  v21 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072418, &qword_1E65EAE38);
  v107 = *(v23 - 8);
  v108 = v23;
  v24 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v79 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072420, &qword_1E65EAE40);
  v80 = *(v105 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v28 = &v79 - v27;
  v29 = sub_1E65DFF38();
  v104 = *(v29 - 8);
  v30 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for BrowseItemContext();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072428, &qword_1E65EAE48);
  v114 = *(v116 - 8);
  v37 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v39 = &v79 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5FBD1C4();
  v115 = v39;
  sub_1E65E6DA8();
  sub_1E5FBD218(v113, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v49 = v32;
    v50 = v28;
    v51 = v106;
    v52 = v107;
    v53 = v105;
    v54 = v29;
    v55 = v108;
    v57 = v111;
    v56 = v112;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v58 = *v36;
        v59 = v36[1];
        v118 = 1;
        sub_1E5FBD474();
        v60 = v116;
        v61 = v115;
        sub_1E65E6B18();
        sub_1E65E6B48();

        (*(v52 + 8))(v51, v55);
        return (*(v114 + 8))(v61, v60);
      }

      v73 = v110;
      v74 = v36;
      v75 = v109;
      (*(v110 + 32))(v109, v74, v111);
      v119 = 2;
      sub_1E5FBD420();
      v76 = v56;
      v67 = v115;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072480, MEMORY[0x1E699D410]);
      v77 = v82;
      sub_1E65E6B78();
      (*(v81 + 8))(v76, v77);
      (*(v73 + 8))(v75, v57);
      v42 = v116;
    }

    else
    {
      v70 = v104;
      v71 = v49;
      v72 = v54;
      (*(v104 + 32))(v49, v36, v54);
      v117 = 0;
      sub_1E5FBD4C8();
      v67 = v115;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072498, MEMORY[0x1E699D5E0]);
      sub_1E65E6B78();
      (*(v80 + 8))(v50, v53);
      (*(v70 + 8))(v71, v72);
      v42 = v116;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v42 = v116;
    if (EnumCaseMultiPayload != 5)
    {
      v63 = v100;
      v65 = v101;
      v64 = v98;
      (*(v100 + 32))(v98, v36, v101);
      v124 = 6;
      sub_1E5FBD27C();
      v66 = v99;
      v67 = v115;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072440, MEMORY[0x1E699D660]);
      v68 = v103;
      sub_1E65E6B78();
      v78 = v102;
      goto LABEL_15;
    }

    v63 = v94;
    v64 = v92;
    v65 = v95;
    (*(v94 + 32))(v92, v36, v95);
    v123 = 5;
    sub_1E5FBD2D0();
    v66 = v93;
    v67 = v115;
    sub_1E65E6B18();
    sub_1E5FBD61C(&qword_1ED072450, MEMORY[0x1E699D548]);
    v68 = v97;
    sub_1E65E6B78();
    v69 = &v126;
LABEL_13:
    v78 = *(v69 - 32);
LABEL_15:
    (*(v78 + 8))(v66, v68);
    (*(v63 + 8))(v64, v65);
LABEL_16:
    v47 = *(v114 + 8);
    v48 = v67;
    return v47(v48, v42);
  }

  v42 = v116;
  if (EnumCaseMultiPayload != 3)
  {
    v63 = v88;
    v64 = v86;
    v65 = v89;
    (*(v88 + 32))(v86, v36, v89);
    v122 = 4;
    sub_1E5FBD324();
    v66 = v87;
    v67 = v115;
    sub_1E65E6B18();
    sub_1E5FBD61C(&qword_1ED072460, MEMORY[0x1E699D578]);
    v68 = v91;
    sub_1E65E6B78();
    v69 = &v125;
    goto LABEL_13;
  }

  v43 = *v36;
  v121 = 3;
  sub_1E5FBD378();
  v44 = v83;
  v45 = v115;
  sub_1E65E6B18();
  v120 = v43;
  sub_1E5FBD3CC();
  v46 = v85;
  sub_1E65E6B78();
  (*(v84 + 8))(v44, v46);
  v47 = *(v114 + 8);
  v48 = v45;
  return v47(v48, v42);
}

uint64_t BrowseItemContext.hash(into:)(uint64_t a1)
{
  v45 = a1;
  v1 = sub_1E65E0128();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DFC88();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DFDA8();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65DF978();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65DFF38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BrowseItemContext();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5FBD218(v44, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = *v24;
        v29 = v24[1];
        MEMORY[0x1E694E740](1);
        sub_1E65E5D78();
      }

      else
      {
        (*(v12 + 32))(v15, v24, v11);
        MEMORY[0x1E694E740](2);
        sub_1E5FBD61C(qword_1EE2D6610, MEMORY[0x1E699D410]);
        sub_1E65E5B48();
        return (*(v12 + 8))(v15, v11);
      }
    }

    else
    {
      (*(v17 + 32))(v20, v24, v16);
      MEMORY[0x1E694E740](0);
      sub_1E5FBD61C(&qword_1ED0724B0, MEMORY[0x1E699D5E0]);
      sub_1E65E5B48();
      return (*(v17 + 8))(v20, v16);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v31 = v39;
      v30 = v40;
      v32 = v37;
      (*(v39 + 32))(v37, v24, v40);
      MEMORY[0x1E694E740](5);
      v33 = &unk_1ED0724A8;
      v34 = MEMORY[0x1E699D548];
    }

    else
    {
      v32 = v41;
      v31 = v42;
      v30 = v43;
      (*(v42 + 32))(v41, v24, v43);
      MEMORY[0x1E694E740](6);
      v33 = &unk_1ED0724A0;
      v34 = MEMORY[0x1E699D660];
    }

    sub_1E5FBD61C(v33, v34);
    sub_1E65E5B48();
    return (*(v31 + 8))(v32, v30);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = *v24;
    MEMORY[0x1E694E740](3);
    return sub_1E65E03E8();
  }

  else
  {
    v35 = v38;
    (*(v38 + 32))(v10, v24, v7);
    MEMORY[0x1E694E740](4);
    sub_1E5FBD61C(&qword_1EE2D65E8, MEMORY[0x1E699D578]);
    sub_1E65E5B48();
    return (*(v35 + 8))(v10, v7);
  }
}

uint64_t BrowseItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t BrowseItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724B8, &qword_1E65EAE50);
  v4 = *(v3 - 8);
  v120 = v3;
  v121 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v123 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724C0, &qword_1E65EAE58);
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724C8, &qword_1E65EAE60);
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v100 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724D0, &qword_1E65EAE68);
  v115 = *(v112 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v131 = &v100 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724D8, &qword_1E65EAE70);
  v114 = *(v113 - 8);
  v15 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v130 = &v100 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724E0, &qword_1E65EAE78);
  v111 = *(v108 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v129 = &v100 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724E8, &qword_1E65EAE80);
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v127 = &v100 - v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724F0, &unk_1E65EAE88);
  v132 = *(v128 - 8);
  v21 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v23 = &v100 - v22;
  v126 = type metadata accessor for BrowseItemContext();
  v24 = *(*(v126 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v126);
  v107 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v106 = &v100 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v100 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v100 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v100 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v100 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v100 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v100 - v43;
  v46 = a1[3];
  v45 = a1[4];
  v133 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1E5FBD1C4();
  v47 = v134;
  sub_1E65E6D98();
  v134 = v47;
  if (v47)
  {
    goto LABEL_13;
  }

  v100 = v39;
  v102 = v42;
  v101 = v33;
  v103 = v36;
  v48 = v127;
  v50 = v129;
  v49 = v130;
  v51 = v131;
  v104 = v44;
  v52 = v128;
  v53 = sub_1E65E6AF8();
  if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 7))
  {
    v59 = sub_1E65E68F8();
    v60 = swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v62 = v126;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v59 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v59);
    v134 = v60;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v53 + 32) > 2u)
  {
    if (*(v53 + 32) > 4u)
    {
      v55 = v132;
      if (v54 != 5)
      {
        v142 = 6;
        sub_1E5FBD27C();
        v89 = v134;
        sub_1E65E6A68();
        v134 = v89;
        if (v89)
        {
          goto LABEL_36;
        }

        sub_1E65E0128();
        sub_1E5FBD61C(&qword_1ED0724F8, MEMORY[0x1E699D660]);
        v90 = v107;
        v91 = v120;
        v92 = v123;
        v93 = v134;
        sub_1E65E6AD8();
        v134 = v93;
        if (v93)
        {
          (*(v121 + 8))(v92, v91);
          goto LABEL_36;
        }

        (*(v121 + 8))(v92, v91);
        (*(v55 + 8))(v23, v52);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v99 = v90;
        goto LABEL_42;
      }

      v141 = 5;
      sub_1E5FBD2D0();
      v71 = v134;
      sub_1E65E6A68();
      v134 = v71;
      if (v71)
      {
        goto LABEL_36;
      }

      sub_1E65DFC88();
      sub_1E5FBD61C(&qword_1ED072500, MEMORY[0x1E699D548]);
      v97 = v106;
      v72 = v119;
      v73 = v125;
      v74 = v134;
      sub_1E65E6AD8();
      v134 = v74;
      if (v74)
      {
        v75 = v118;
LABEL_32:
        (*(v75 + 8))(v73, v72);
        goto LABEL_36;
      }

      (*(v118 + 8))(v73, v72);
      (*(v55 + 8))(v23, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = v132;
      if (v54 == 3)
      {
        v139 = 3;
        sub_1E5FBD378();
        v56 = v134;
        sub_1E65E6A68();
        v134 = v56;
        if (v56)
        {
LABEL_36:
          (*(v55 + 8))(v23, v52);
          goto LABEL_12;
        }

        sub_1E5FBD580();
        v57 = v112;
        v58 = v134;
        sub_1E65E6AD8();
        v134 = v58;
        if (v58)
        {
          (*(v115 + 8))(v51, v57);
          goto LABEL_36;
        }

        (*(v115 + 8))(v51, v57);
        (*(v55 + 8))(v23, v52);
        swift_unknownObjectRelease();
        v98 = v101;
        *v101 = v138;
        swift_storeEnumTagMultiPayload();
        v99 = v98;
        goto LABEL_42;
      }

      v140 = 4;
      sub_1E5FBD324();
      v87 = v134;
      sub_1E65E6A68();
      v134 = v87;
      if (v87)
      {
        goto LABEL_36;
      }

      sub_1E65DFDA8();
      sub_1E5FBD61C(&qword_1ED072508, MEMORY[0x1E699D578]);
      v97 = v105;
      v72 = v117;
      v73 = v124;
      v88 = v134;
      sub_1E65E6AD8();
      v134 = v88;
      if (v88)
      {
        v75 = v116;
        goto LABEL_32;
      }

      (*(v116 + 8))(v73, v72);
      (*(v55 + 8))(v23, v52);
      swift_unknownObjectRelease();
    }

LABEL_41:
    swift_storeEnumTagMultiPayload();
    v99 = v97;
LABEL_42:
    v81 = v104;
    sub_1E5FBD51C(v99, v104);
    v80 = v133;
    goto LABEL_43;
  }

  if (!*(v53 + 32))
  {
    v135 = 0;
    sub_1E5FBD4C8();
    v76 = v134;
    sub_1E65E6A68();
    v134 = v76;
    if (!v76)
    {
      sub_1E65DFF38();
      sub_1E5FBD61C(&qword_1ED072520, MEMORY[0x1E699D5E0]);
      v77 = v102;
      v78 = v110;
      v79 = v134;
      sub_1E65E6AD8();
      (*(v109 + 8))(v48, v78);
      (*(v132 + 8))(v23, v52);
      swift_unknownObjectRelease();
      v64 = v133;
      v134 = v79;
      if (v79)
      {
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      v80 = v133;
      swift_storeEnumTagMultiPayload();
      v81 = v104;
      sub_1E5FBD51C(v77, v104);
LABEL_43:
      sub_1E5FBD51C(v81, v122);
      v64 = v80;
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    goto LABEL_11;
  }

  if (v54 == 1)
  {
    v136 = 1;
    sub_1E5FBD474();
    v66 = v50;
    v67 = v134;
    sub_1E65E6A68();
    v134 = v67;
    if (!v67)
    {
      v68 = v108;
      v69 = sub_1E65E6AA8();
      v70 = v66;
      v134 = 0;
      v94 = v69;
      v96 = v95;
      (*(v111 + 8))(v70, v68);
      (*(v132 + 8))(v23, v52);
      swift_unknownObjectRelease();
      v97 = v100;
      *v100 = v94;
      *(v97 + 1) = v96;
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  v137 = 2;
  sub_1E5FBD420();
  v82 = v134;
  sub_1E65E6A68();
  v134 = v82;
  if (v82)
  {
LABEL_11:
    (*(v132 + 8))(v23, v52);
    goto LABEL_12;
  }

  sub_1E65DF978();
  sub_1E5FBD61C(&qword_1ED072518, MEMORY[0x1E699D410]);
  v97 = v103;
  v83 = v113;
  v84 = v134;
  sub_1E65E6AD8();
  v85 = v49;
  v86 = v132;
  v134 = v84;
  if (!v84)
  {
    (*(v114 + 8))(v85, v83);
    (*(v86 + 8))(v23, v52);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  (*(v114 + 8))(v85, v83);
  (*(v86 + 8))(v23, v52);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v64 = v133;
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1E5FBC718()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC74C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5FBC780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5FBC7AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC7E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC814()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC87C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC8E0()
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E5FBC924()
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17BrowseItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v95 = a2;
  v2 = sub_1E65E0128();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DFC88();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DFDA8();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65DF978();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DFF38();
  v91 = *(v15 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BrowseItemContext();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v89 = &v78 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v88 = &v78 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v78 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v78 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v78 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v78 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0725F0, &qword_1E65EB898);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v78 - v41;
  v43 = (&v78 + *(v40 + 56) - v41);
  sub_1E5FBD218(v94, &v78 - v41);
  sub_1E5FBD218(v95, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v94 = v18;
    v95 = v14;
    v49 = v91;
    v48 = v92;
    v50 = v15;
    v51 = v93;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1E5FBD218(v42, v35);
        v53 = *v35;
        v52 = v35[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v54 = *v43;
          v55 = v43[1];
          if (v53 == v54 && v52 == v55)
          {
          }

          else
          {
            v77 = sub_1E65E6C18();

            if ((v77 & 1) == 0)
            {
              sub_1E5FBE388(v42);
              goto LABEL_30;
            }
          }

          sub_1E5FBE388(v42);
          v47 = 1;
          return v47 & 1;
        }
      }

      else
      {
        sub_1E5FBD218(v42, v32);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v61 = v48;
          v62 = *(v48 + 32);
          v63 = v95;
          v62(v95, v43, v51);
          v47 = MEMORY[0x1E6947320](v32, v63);
          v64 = *(v61 + 8);
          v64(v63, v51);
          v64(v32, v51);
          goto LABEL_32;
        }

        (*(v48 + 8))(v32, v51);
      }
    }

    else
    {
      sub_1E5FBD218(v42, v37);
      if (!swift_getEnumCaseMultiPayload())
      {
        v74 = v94;
        (*(v49 + 32))(v94, v43, v50);
        v47 = sub_1E65DFF28();
        v75 = *(v49 + 8);
        v75(v74, v50);
        v75(v37, v50);
        goto LABEL_32;
      }

      (*(v49 + 8))(v37, v50);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v56 = v89;
      sub_1E5FBD218(v42, v89);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v58 = v84;
        v57 = v85;
        v59 = v80;
        (*(v84 + 32))(v80, v43, v85);
        v47 = MEMORY[0x1E6947680](v56, v59);
        v60 = *(v58 + 8);
        v60(v59, v57);
        v60(v56, v57);
        goto LABEL_32;
      }

      (*(v84 + 8))(v56, v85);
      goto LABEL_29;
    }

    v71 = v90;
    sub_1E5FBD218(v42, v90);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v72 = v86;
      v66 = v87;
      v73 = v81;
      (*(v86 + 32))(v81, v43, v87);
      v47 = sub_1E65E0118();
      v69 = *(v72 + 8);
      v69(v73, v66);
      v70 = v71;
      goto LABEL_23;
    }

    (*(v86 + 8))(v71, v87);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E5FBD218(v42, v29);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v45 = *v29;
        v46 = *v43;
        v47 = sub_1E65E03D8();
LABEL_32:
        sub_1E5FBE388(v42);
        return v47 & 1;
      }

      goto LABEL_29;
    }

    v65 = v88;
    sub_1E5FBD218(v42, v88);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v67 = v82;
      v66 = v83;
      v68 = v79;
      (*(v82 + 32))(v79, v43, v83);
      v47 = MEMORY[0x1E69477A0](v65, v68);
      v69 = *(v67 + 8);
      v69(v68, v66);
      v70 = v65;
LABEL_23:
      v69(v70, v66);
      goto LABEL_32;
    }

    (*(v82 + 8))(v65, v83);
  }

LABEL_29:
  sub_1E5FBE320(v42);
LABEL_30:
  v47 = 0;
  return v47 & 1;
}

unint64_t sub_1E5FBD1C4()
{
  result = qword_1ED072430;
  if (!qword_1ED072430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072430);
  }

  return result;
}

uint64_t sub_1E5FBD218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItemContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5FBD27C()
{
  result = qword_1ED072438;
  if (!qword_1ED072438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072438);
  }

  return result;
}

unint64_t sub_1E5FBD2D0()
{
  result = qword_1ED072448;
  if (!qword_1ED072448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072448);
  }

  return result;
}

unint64_t sub_1E5FBD324()
{
  result = qword_1ED072458;
  if (!qword_1ED072458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072458);
  }

  return result;
}

unint64_t sub_1E5FBD378()
{
  result = qword_1ED072468;
  if (!qword_1ED072468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072468);
  }

  return result;
}

unint64_t sub_1E5FBD3CC()
{
  result = qword_1ED072470;
  if (!qword_1ED072470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072470);
  }

  return result;
}

unint64_t sub_1E5FBD420()
{
  result = qword_1ED072478;
  if (!qword_1ED072478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072478);
  }

  return result;
}

unint64_t sub_1E5FBD474()
{
  result = qword_1ED072488;
  if (!qword_1ED072488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072488);
  }

  return result;
}

unint64_t sub_1E5FBD4C8()
{
  result = qword_1ED072490;
  if (!qword_1ED072490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072490);
  }

  return result;
}

uint64_t sub_1E5FBD51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItemContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5FBD580()
{
  result = qword_1ED072510;
  if (!qword_1ED072510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072510);
  }

  return result;
}

uint64_t sub_1E5FBD61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RouteAnnotation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RouteAnnotation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5FBD878()
{
  result = qword_1ED072530;
  if (!qword_1ED072530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072530);
  }

  return result;
}

unint64_t sub_1E5FBD8D0()
{
  result = qword_1ED072538;
  if (!qword_1ED072538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072538);
  }

  return result;
}