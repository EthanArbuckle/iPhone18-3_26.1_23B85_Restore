uint64_t sub_1C498174C(void *a1, char a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  if (a3)
  {
    a3 = sub_1C4F01138();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v6[5] = v13;
  if (a4)
  {
    a4 = sub_1C4F01138();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v6[6] = v15;
  v16 = a1;
  a6;
  v17 = swift_task_alloc();
  v6[7] = v17;
  *v17 = v6;
  v17[1] = sub_1C4981884;

  return InternalXPC.Server.resolveEntity(with:enableSessionLogging:configName:encodedConfig:)(v16, a2 & 1, a3, v13, a4, v15);
}

uint64_t sub_1C4981884(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;

  v11 = v5[6];
  v12 = v5[5];
  v13 = v5[4];

  if (v3)
  {
    v14 = sub_1C4EF9798();

    (v13)[2](v13, 0, v14);
    _Block_release(v13);
  }

  else
  {
    (v13)[2](v13, a1, 0);
    _Block_release(v13);
  }

  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_1C4981A68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C4981B40;

  return sub_1C498174C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1C4981B40()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1C4981C2C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4981C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4981CDC()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C49FE76C();
}

uint64_t sub_1C4981D60()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  v6 = sub_1C4419AE4(v4);

  return sub_1C4815630(v6);
}

uint64_t sub_1C4981DE4()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      sub_1C4404460();
      sub_1C442E068();
      sub_1C4433568();
    }

    else
    {
      sub_1C440D598();
    }

    return MEMORY[0x1EEE6DFA0](sub_1C4985D48, v10, v9);
  }

  else
  {
    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C4981F20()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  v6 = sub_1C4419AE4(v4);

  return sub_1C4B72774(v6);
}

uint64_t sub_1C4981FA4()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4419AE4(v1);

  return sub_1C4ADDF04(v3);
}

uint64_t sub_1C4982028()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C49CAE60();
}

uint64_t sub_1C49820AC()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_1C43FBE7C();
  v6 = type metadata accessor for InferredActivitySegment();
  v1[5] = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[6] = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4982154()
{
  sub_1C43FBCD4();
  if (*(v0[3] + 8))
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1C4982288;
    v3 = v0[3];
    v2 = v0[4];

    return sub_1C493541C();
  }

  else
  {
    sub_1C440BAA8(v0[4], 1, 1, v0[5]);
    sub_1C4420C3C(v0[4], &qword_1EC0BF8E0, &qword_1C4F3E000);
    v5 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v6 = v0[6];
    v7 = v0[4];
    sub_1C440BAA8(v0[2], 1, 1, v5);

    sub_1C43FBDA0();

    return v8();
  }
}

uint64_t sub_1C4982288()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C498236C()
{
  v1 = v0[4];
  v2 = v0[5];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v4 = 1;
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1C44EE5CC(v1, v5, type metadata accessor for InferredActivitySegment);
    v7 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v7);
    v9 = *(v8 + 16);
    v9(v6, v5, v7);
    v10 = *(v2 + 20);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v9(v6 + *(v3 + 28), v5 + v10, v7);
    sub_1C44EE5CC(v5, v6 + *(v3 + 32), type metadata accessor for InferredActivitySegment);
    v4 = 0;
  }

  v11 = v0[6];
  v12 = v0[4];
  sub_1C440BAA8(v0[2], v4, 1, v3);

  sub_1C43FBDA0();

  return v13();
}

uint64_t sub_1C498250C()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C47E1C48();
}

uint64_t sub_1C4982590()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4581B3C();
}

uint64_t sub_1C4982614()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A48144();
}

uint64_t sub_1C4982698()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A43460();
}

uint64_t sub_1C498271C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A00F40();
}

uint64_t sub_1C49827A0()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C46AEBAC();
}

uint64_t sub_1C4982824()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A89784();
}

uint64_t sub_1C49828A8()
{
  sub_1C43FBCD4();
  sub_1C43FC58C(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = sub_1C440AD34(v3);
  *v4 = v5;
  sub_1C4419AE4(v4);

  return sub_1C4B731A4();
}

uint64_t sub_1C498292C()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      sub_1C4404460();
      sub_1C442E068();
      sub_1C4433568();
    }

    else
    {
      sub_1C440D598();
    }

    return MEMORY[0x1EEE6DFA0](sub_1C4982A68, v10, v9);
  }

  else
  {
    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C4982A68()
{
  sub_1C43FBCD4();
  *(v0 + 16) = *(v0 + 48);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FBDA0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1C4982AF0()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4A862A4();
}

uint64_t sub_1C4982B74()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C4AB5060();
}

uint64_t sub_1C4982BF8()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C49FD16C();
}

uint64_t sub_1C4982C7C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4419AE4(v1);

  return sub_1C493541C();
}

uint64_t sub_1C4982D00()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4982D4C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7974697669746361;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = sub_1C443FD50();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4982DD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4685868();
}

uint64_t sub_1C4982DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4982D00();
  *a2 = result;
  return result;
}

uint64_t sub_1C4982E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4982D4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4982E5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4982D00();
  *a1 = result;
  return result;
}

uint64_t sub_1C4982E84(uint64_t a1)
{
  v2 = sub_1C4985A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4982EC0(uint64_t a1)
{
  v2 = sub_1C4985A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4982EFC()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C0630, &qword_1C4F3ED38);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4401780();
  v12 = v5[4];
  sub_1C4409678(v5, v5[3]);
  sub_1C4985A08();
  sub_1C4F02BF8();
  v13 = *v3;
  v14 = v3[1];
  sub_1C4F02798();
  if (!v1)
  {
    v15 = type metadata accessor for ActivityEventWithLocations(0);
    v16 = v3 + *(v15 + 24);
    v17 = *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32);
    type metadata accessor for ActivityEventContent(0);
    sub_1C4985A5C(&qword_1EC0C0640, type metadata accessor for ActivityEventContent);
    sub_1C44161A0();
    v18 = *(v15 + 28);
    type metadata accessor for SourceIdPrefix();
    sub_1C44033F8();
    sub_1C4985A5C(v19, v20);
    sub_1C44161A0();
  }

  (*(v8 + 8))(v2, v6);
  sub_1C43FBC80();
}

uint64_t sub_1C49830F4()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4983140(char a1)
{
  if (!a1)
  {
    return 0x7461447472617473;
  }

  if (a1 == 1)
  {
    return 0x65746144646E65;
  }

  return 0x746E65746E6F63;
}

uint64_t sub_1C49831D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C49830F4();
  *a2 = result;
  return result;
}

uint64_t sub_1C4983208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4983140(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C498323C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C49830F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4983270(uint64_t a1)
{
  v2 = sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49832DC(uint64_t a1)
{
  v2 = sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionDataComplying<A>.encode(to:)()
{
  sub_1C43FE96C();
  v25 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = sub_1C456902C(&qword_1EC0C04E8, &unk_1C4F3E998);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4401780();
  v17 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C4983678();
  sub_1C4985A5C(&qword_1EC0C04F8, sub_1C4983678);
  sub_1C4F02BF8();
  sub_1C4EF9E08();
  sub_1C4EF9E48();
  sub_1C441E498();
  v24 = v0;
  sub_1C4EF9B08();
  sub_1C4420C3C(v10, &unk_1EC0B7610, &unk_1C4F17610);
  v18 = v25;
  sub_1C4F02798();
  if (v18)
  {
    (*(v13 + 8))(v2, v11);
  }

  else
  {
    v25 = v13;

    v19 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
    v20 = *(v19 + 28);
    sub_1C4EF9E08();
    sub_1C441E498();
    sub_1C4EF9B08();
    sub_1C4420C3C(v10, &unk_1EC0B7610, &unk_1C4F17610);
    sub_1C442FEF4();
    sub_1C4F02798();

    v21 = *(v19 + 32);
    type metadata accessor for ActivityEventWithLocations(0);
    sub_1C4985A5C(&qword_1EC0C0500, type metadata accessor for ActivityEventWithLocations);
    sub_1C442FEF4();
    sub_1C4F027E8();
    v22 = sub_1C43FE5EC();
    v23(v22, v11);
  }

  sub_1C43FBC80();
}

void sub_1C4983678()
{
  if (!qword_1EC0C04F0)
  {
    v0 = _s10CodingKeysOMa_0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C04F0);
    }
  }
}

uint64_t sub_1C49836D8()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4983724(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = sub_1C443FD50();
      break;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0x737265626D656DLL;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C49837E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4686E60();
}

uint64_t sub_1C4983808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C49836D8();
  *a2 = result;
  return result;
}

uint64_t sub_1C4983838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4983724(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C498386C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C49836D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4983894(uint64_t a1)
{
  v2 = sub_1C4983DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49838D0(uint64_t a1)
{
  v2 = sub_1C4983DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityEventContent.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v32 = v3;
  v4 = type metadata accessor for SourceIdPrefix();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0C0508, &unk_1C4F3E9A8);
  sub_1C43FCDF8(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v33 = type metadata accessor for ActivityEventContent(0);
  v15 = sub_1C43FBCE0(v33);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  *(v20 + 24) = 0u;
  v34 = v20;
  v35 = v20 + 24;
  *(v20 + 40) = 0u;
  v21 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4983DD4();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4983E28();
    sub_1C4410EE4();
    sub_1C4F026C8();
    *v34 = v36;
    LOBYTE(v36) = 1;
    sub_1C44033F8();
    sub_1C4985A5C(v22, v23);
    sub_1C4410EE4();
    sub_1C4F026C8();
    sub_1C44EE5CC(v10, v34 + *(v33 + 32), type metadata accessor for SourceIdPrefix);
    LOBYTE(v36) = 2;
    sub_1C4410EE4();
    *(v34 + 8) = sub_1C4F02638();
    *(v34 + 16) = v24 & 1;
    sub_1C456902C(&qword_1EC0C0528, &qword_1C4F3E9B8);
    sub_1C498441C(&qword_1EC0C0530, sub_1C4983E7C);
    sub_1C4410EE4();
    sub_1C4F02658();
    v25 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v25 = v36;
    }

    *(v34 + 56) = v25;
    sub_1C4819C7C();
    sub_1C4410EE4();
    sub_1C4F02658();
    if (v37)
    {
      v38 = &type metadata for GamingActivityContent;
    }

    else
    {
      LOBYTE(v36) = 4;
      sub_1C4410EE4();
      v26 = sub_1C4F02618();
      if (!v27)
      {
        v30 = sub_1C43FEED0();
        v31(v30);
        goto LABEL_15;
      }

      v38 = MEMORY[0x1E69E6158];
      v36 = v26;
      v37 = v27;
    }

    v28 = sub_1C43FEED0();
    v29(v28);
    sub_1C4815D50(&v36, v35);
LABEL_15:
    sub_1C4983ED0(v34, v32);
    sub_1C440962C(v2);
    sub_1C49844E8(v34, type metadata accessor for ActivityEventContent);
    goto LABEL_4;
  }

  sub_1C440962C(v2);
  sub_1C4420C3C(v35, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_4:
  sub_1C43FBC80();
}

unint64_t sub_1C4983DD4()
{
  result = qword_1EC0C0510;
  if (!qword_1EC0C0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0510);
  }

  return result;
}

unint64_t sub_1C4983E28()
{
  result = qword_1EC0C0518;
  if (!qword_1EC0C0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0518);
  }

  return result;
}

unint64_t sub_1C4983E7C()
{
  result = qword_1EC0C0538;
  if (!qword_1EC0C0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0538);
  }

  return result;
}

uint64_t sub_1C4983ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityEventContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ActivityEventContent.encode(to:)()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BDBC0, &qword_1C4F3E9C0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - v10;
  v11 = type metadata accessor for GamingActivityEvent();
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&qword_1EC0C0540, &qword_1C4F3E9C8);
  sub_1C43FCDF8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4401780();
  v24 = v5[4];
  sub_1C4409678(v5, v5[3]);
  sub_1C4983DD4();
  sub_1C4F02BF8();
  LOBYTE(v39[0]) = *v3;
  v38 = 0;
  sub_1C49843C8();
  sub_1C4F027E8();
  if (!v1)
  {
    v36 = v17;
    v25 = v37;
    v26 = v11;
    v27 = *(v3 + 8);
    v28 = *(v3 + 16);
    LOBYTE(v39[0]) = 2;
    sub_1C442FEF4();
    sub_1C4F02758();
    v39[0] = *(v3 + 56);
    v38 = 3;
    sub_1C456902C(&qword_1EC0C0528, &qword_1C4F3E9B8);
    sub_1C498441C(&qword_1EC0C0550, sub_1C4984494);
    sub_1C442FEF4();
    sub_1C4F02778();
    sub_1C4460050(v3 + 24, v39, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    if (v40)
    {
      v31 = v25;
      v32 = swift_dynamicCast();
      sub_1C440BAA8(v25, v32 ^ 1u, 1, v26);
      if (sub_1C44157D4(v25, 1, v26) != 1)
      {
        v33 = v36;
        sub_1C44EE5CC(v25, v36, type metadata accessor for GamingActivityEvent);
        LOBYTE(v39[0]) = 4;
        sub_1C4985A5C(&qword_1EC0C0560, type metadata accessor for GamingActivityEvent);
        sub_1C442FEF4();
        sub_1C4F027E8();
        sub_1C49844E8(v33, type metadata accessor for GamingActivityEvent);
LABEL_5:
        v29 = sub_1C43FE5EC();
        v30(v29, v18);
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4420C3C(v39, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v31 = v25;
      sub_1C440BAA8(v25, 1, 1, v26);
    }

    sub_1C4420C3C(v31, &qword_1EC0BDBC0, &qword_1C4F3E9C0);
    sub_1C4460050(v3 + 24, v39, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    if (v40)
    {
      if (swift_dynamicCast())
      {
        LOBYTE(v39[0]) = 4;
        sub_1C442FEF4();
        sub_1C4F02798();
        v34 = sub_1C43FE5EC();
        v35(v34, v18);

        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4420C3C(v39, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    goto LABEL_5;
  }

  (*(v20 + 8))(v2, v18);
LABEL_6:
  sub_1C43FBC80();
}

unint64_t sub_1C49843C8()
{
  result = qword_1EC0C0548;
  if (!qword_1EC0C0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0548);
  }

  return result;
}

uint64_t sub_1C498441C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C0528, &qword_1C4F3E9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4984494()
{
  result = qword_1EC0C0558;
  if (!qword_1EC0C0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0558);
  }

  return result;
}

uint64_t sub_1C49844E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t InternalXPC.Server.generateActivityCentricLifeEvents(fromStart:toEnd:)()
{
  sub_1C43FBCD4();
  v0[39] = v1;
  v0[40] = v2;
  v3 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v0[41] = v3;
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v0[42] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v0[43] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[44] = v9;
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[47] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  v0[48] = sub_1C43FBE7C();
  v15 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[49] = v15;
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  v0[50] = sub_1C43FBE7C();
  v18 = sub_1C4EF9378();
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  v0[51] = sub_1C43FBE7C();
  v21 = sub_1C4F00978();
  v0[52] = v21;
  v22 = *(v21 - 8);
  v0[53] = v22;
  v23 = *(v22 + 64);
  v0[54] = sub_1C43FBE7C();
  v24 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1C498473C()
{
  v1 = v0[54];
  sub_1C4F00148();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: Life Events generateActivityCentricLifeEvents", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];

  v9 = *(v6 + 8);
  v10 = sub_1C4402B58();
  v11(v10);
  v12 = sub_1C4EF93D8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[55] = sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v15 = v0[50];
  v16 = sub_1C442B738(v0[49], qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460050(v16, v15, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v17 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v15, 1, v17);
  if (result == 1)
  {
    goto LABEL_11;
  }

  v19 = v0[50];
  v21 = v0[39];
  v20 = v0[40];
  type metadata accessor for LifeEventProvider();
  sub_1C49CA620(v19);
  v22 = sub_1C4EF9CD8();
  sub_1C4985A5C(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  result = sub_1C4F01088();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v33 = v0[48];
  v34 = v0[47];
  v23 = v0[45];
  v24 = v0[46];
  v25 = v0[44];
  v26 = v0[40];
  v27 = *(v22 - 8);
  v28 = v27[2];
  v28(v24, v0[39], v22);
  v28(v24 + *(v25 + 48), v26, v22);
  sub_1C4460050(v24, v23, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v29 = *(v25 + 48);
  v30 = v27[4];
  v30(v33, v23, v22);
  v31 = v27[1];
  v31(v23 + v29, v22);
  sub_1C44CD9E0(v24, v23, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v30(v33 + *(v34 + 36), v23 + *(v25 + 48), v22);
  v31(v23, v22);
  sub_1C49CA8D0(v33, v0 + 13);
  sub_1C4420C3C(v0[48], &qword_1EC0B84B8, &unk_1C4F0D4F0);

  memcpy(v0 + 2, v0 + 13, 0x58uLL);
  sub_1C4985564((v0 + 2), (v0 + 24));
  v0[56] = MEMORY[0x1E69E7CC0];
  v32 = swift_task_alloc();
  v0[57] = v32;
  *v32 = v0;
  sub_1C4432548(v32);

  return sub_1C49CAE60();
}

uint64_t sub_1C4984C60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 456);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 464) = v0;

  if (v0)
  {
    v7 = sub_1C4985000;
  }

  else
  {
    v7 = sub_1C4984D64;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4984D64()
{
  v1 = v0[41];
  if (sub_1C44157D4(v0[43], 1, v1) == 1)
  {
    v2 = v0[55];

    sub_1C49855C0((v0 + 24));
    sub_1C49855C0((v0 + 2));
    v3 = v0[56];
    v4 = v0[54];
    sub_1C44050C4();

    v5 = v0[1];

    return v5(v3);
  }

  v7 = v0[42];
  v8 = sub_1C4402B58();
  sub_1C44CD9E0(v8, v9, v10, v11);
  v12 = *(v1 + 32);
  v13 = v7 + *(type metadata accessor for ActivityEventWithLocations(0) + 24) + v12;
  v14 = *(v13 + *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32));
  if (v14 != 128 && sub_1C465B984(v14, &unk_1F43DA488))
  {
    v15 = v0[58];
    v16 = v0[55];
    v18 = v0[41];
    v17 = v0[42];
    sub_1C4985614();
    v19 = sub_1C4EF93B8();
    if (!v15)
    {
      v22 = v19;
      v23 = v20;
      v24 = v0[56];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v0[56];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v26 + 16);
        v30 = v0[56];
        sub_1C458E510();
        v26 = v31;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_1C458E510();
        v26 = v32;
      }

      sub_1C4420C3C(v0[42], &qword_1EC0B8D40, &unk_1C4F0F040);
      *(v26 + 16) = v27 + 1;
      v28 = v26 + 16 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      v0[56] = v26;
      goto LABEL_10;
    }
  }

  sub_1C4420C3C(v0[42], &qword_1EC0B8D40, &unk_1C4F0F040);
LABEL_10:
  v21 = swift_task_alloc();
  v0[57] = v21;
  *v21 = v0;
  sub_1C4432548();

  return sub_1C49CAE60();
}

uint64_t sub_1C4985000()
{
  sub_1C43FBCD4();
  v1 = v0[56];
  v0[38] = v0[58];
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4985090()
{
  v2 = v0[54];
  v1 = v0[55];
  sub_1C44050C4();

  sub_1C49855C0((v0 + 24));
  sub_1C49855C0((v0 + 2));

  sub_1C43FBDA0();
  v4 = v0[58];

  return v3();
}

uint64_t sub_1C49851F4(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1C4EF9CD8();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1C4EF9C78();
  sub_1C4EF9C78();
  v10 = a4;
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_1C4985348;

  return InternalXPC.Server.generateActivityCentricLifeEvents(fromStart:toEnd:)();
}

uint64_t sub_1C4985348()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  v6 = v3[8];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  v10 = v3[3];
  v11 = *(v3[4] + 8);
  v11(v3[5], v10);
  v11(v9, v10);
  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    v14 = sub_1C4F01658();

    v13 = v14;
  }

  v16 = v4[6];
  v15 = v4[7];
  v17 = v4[5];
  v18 = v15[2];
  v19 = sub_1C4402B58();
  v20(v19);

  _Block_release(v15);

  v21 = v8[1];

  return v21();
}

unint64_t sub_1C4985614()
{
  result = qword_1EC0C0578;
  if (!qword_1EC0C0578)
  {
    sub_1C4572308(&qword_1EC0B8D40, &unk_1C4F0F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0578);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C498575C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4985874()
{
  result = qword_1EC0C0608;
  if (!qword_1EC0C0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0608);
  }

  return result;
}

unint64_t sub_1C49858CC()
{
  result = qword_1EC0C0610;
  if (!qword_1EC0C0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0610);
  }

  return result;
}

unint64_t sub_1C4985924()
{
  result = qword_1EC0C0618;
  if (!qword_1EC0C0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0618);
  }

  return result;
}

unint64_t sub_1C4985A08()
{
  result = qword_1EC0C0638;
  if (!qword_1EC0C0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0638);
  }

  return result;
}

uint64_t sub_1C4985A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4985AA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C442E8C4;
  v7 = sub_1C4402B58();

  return v8(v7);
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4985C40()
{
  result = qword_1EC0C0650;
  if (!qword_1EC0C0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0650);
  }

  return result;
}

unint64_t sub_1C4985C98()
{
  result = qword_1EC0C0658;
  if (!qword_1EC0C0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0658);
  }

  return result;
}

unint64_t sub_1C4985CF0()
{
  result = qword_1EC0C0660;
  if (!qword_1EC0C0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0660);
  }

  return result;
}

uint64_t sub_1C4985D4C(void *a1)
{
  v3 = *a1;
  v35 = sub_1C456902C(&qword_1EC0C0710, &qword_1C4F3F008);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v30 - v5;
  v6 = sub_1C4EFC038();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v10 = sub_1C44FAF1C(&qword_1EC0C0718, MEMORY[0x1E69A0008]);
  v11 = sub_1C4F01BA8();
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v13 = v11;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C459D930();
  v12 = v42;
  result = sub_1C4F01B98();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v31 = v6;
    v32 = v1;
    v15 = 0;
    v34 = v13;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = v9;
      v18 = v10;
      v19 = v3;
      v20 = v18;
      v21 = sub_1C4F01BE8();
      v22 = v36;
      sub_1C446C964(v23, v36, &qword_1EC0C0710, &qword_1C4F3F008);
      v21(&v39, 0);
      v24 = v22 + *(v35 + 48);
      v25 = sub_1C4EFB248();
      v27 = v26;
      LOBYTE(v22) = v28;
      sub_1C4EFB238();
      sub_1C47781D8(v25, v27, v22);
      if (v38)
      {
        sub_1C441D670(&v37, &v39);
      }

      else
      {
        v40 = MEMORY[0x1E69E6158];
        v41 = MEMORY[0x1E69A0138];
        *&v39 = 1280070990;
        *(&v39 + 1) = 0xE400000000000000;
      }

      sub_1C4420C3C(v36, &qword_1EC0C0710, &qword_1C4F3F008);
      v42 = v12;
      v29 = *(v12 + 16);
      if (v29 >= *(v12 + 24) >> 1)
      {
        sub_1C459D930();
        v12 = v42;
      }

      *(v12 + 16) = v29 + 1;
      sub_1C441D670(&v39, v12 + 40 * v29 + 32);
      v9 = v17;
      v3 = v19;
      v10 = v20;
      result = sub_1C4F01BB8();
      ++v15;
      if (v16 == v34)
      {
        (*(v33 + 8))(v17, v31);
        return v12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49860D4()
{
  sub_1C43FEAEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v21 = *MEMORY[0x1E69E9840];
  v0[92] = swift_getObjectType();
  v0[91] = v2;
  v0[90] = v4;
  v0[89] = v6;
  v7 = _s10ViewConfigVMa(0);
  v0[93] = v7;
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v0[94] = sub_1C43FBE7C();
  v10 = sub_1C4F01188();
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v0[95] = sub_1C43FBE7C();
  v13 = sub_1C4EF9378();
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  v0[96] = sub_1C43FBE7C();
  v16 = *MEMORY[0x1E69E9840];
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C49861F0()
{
  v148 = v0;
  v147[9] = *MEMORY[0x1E69E9840];
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 728);
  v2 = 0;
  v3 = sub_1C4415590();
  v4 = *(v0 + 712);
  v5 = *(v3 + 16);
  swift_retain_n();
  v6 = sub_1C495434C(v4);
  LOWORD(v8) = v7;
  v9 = *(v0 + 768);
  v10 = *(v0 + 720);
  v137 = OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool;
  v11 = *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v12 = swift_task_alloc();
  v12[2] = sub_1C4BAEE80;
  v12[3] = 0;
  v12[4] = v5;
  v13 = sub_1C49A5758(sub_1C498DB0C, v12);

  v14 = sub_1C4EF93D8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v135 = v10;
  if (!v10 || [*(v0 + 720) integerValue] != -1)
  {
    if (qword_1EDDFF2A0 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_6;
  }

  v133 = 0;
  v19 = v13;
  while (1)
  {
    sub_1C4415864();
    v2 = 0;
    v22 = sub_1C4D1179C();
    v29 = *(v22 + 16);
    v134 = v22;
    if (!v29)
    {
      break;
    }

    v30 = 0;
    v125 = (v0 + 544);
    v126 = (v0 + 584);
    v128 = *(v0 + 720);
    v129 = (v0 + 696);
    v130 = v29 - 1;
    v131 = v0 + 688;
    v31 = (v22 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v127 = v5;
    v136 = v19;
    v124 = v8;
    v132 = v6;
    while (v30 < v29)
    {
      v33 = *(v31 - 2);
      v32 = *(v31 - 1);
      v140 = v31;
      v34 = *v31;
      v35 = *(v19 + 16);
      swift_bridgeObjectRetain_n();
      v145 = v13;
      v143 = v30;
      if (v35 && (v36 = sub_1C445FAA8(v32, v34), (v37 & 1) != 0))
      {
        v38 = (*(v19 + 56) + 16 * v36);
        v142 = *v38;
        v144 = v38[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v144 = 0xE400000000000000;
        v142 = 1701736270;
      }

      v39 = swift_task_alloc();
      v39[2] = v33;
      v39[3] = v32;
      v39[4] = v34;
      v40 = *(v5 + v137);
      v41 = swift_task_alloc();
      v41[2] = sub_1C4449808;
      v41[3] = v39;
      v41[4] = v5;
      sub_1C4449610(sub_1C4449770, v41, v42, v43, v44, v45, v46, v47);

      memcpy((v0 + 432), v147, 0x48uLL);
      *v131 = MEMORY[0x1E69E7CC8];
      v48 = swift_task_alloc();
      v48[2] = v33;
      v48[3] = v32;
      v146 = v32;
      v48[4] = v34;
      v48[5] = v131;
      v49 = *(v5 + v137);
      v50 = swift_task_alloc();
      v50[2] = sub_1C498DB2C;
      v50[3] = v48;
      v50[4] = v5;
      sub_1C446C37C(sub_1C4449770, v50);

      v51 = *v131;
      if (*(*v131 + 16))
      {
        v52 = objc_autoreleasePoolPush();
        v53 = objc_opt_self();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C456902C(&qword_1EC0C34A0, &qword_1C4F3EFE8);
        v54 = sub_1C4F00EC8();

        *v129 = 0;
        v51 = [v53 dataWithJSONObject:v54 options:3 error:v129];

        v55 = *v129;
        v19 = v136;
        if (v51)
        {
          v56 = *(v0 + 760);
          sub_1C4EF9A68();

          sub_1C4F01178();
          sub_1C4404C28();
          v57 = sub_1C4F01158();
          if (v58)
          {
            v51 = v58;
            v141 = v57;
            v59 = sub_1C4404C28();
            sub_1C4434000(v59, v60);
          }

          else
          {
            v64 = sub_1C4404C28();
            sub_1C4434000(v64, v65);
            sub_1C43FF2D0();
            v141 = v66;
          }
        }

        else
        {
          v62 = v55;
          v51 = sub_1C4EF97A8();

          swift_willThrow();
          sub_1C43FF2D0();
          v141 = v63;
        }

        objc_autoreleasePoolPop(v52);
      }

      else
      {
        sub_1C43FF2D0();
        v141 = v61;
        v19 = v136;
      }

      v67 = *(v0 + 752);
      v68 = objc_autoreleasePoolPush();
      sub_1C443A738(v146, v34, v69, v70, v71, v72, v73, v74);
      v75 = *(v0 + 752);
      v76 = *(v0 + 744);
      sub_1C44FAF1C(&qword_1EDDEAEA0, _s10ViewConfigVMa);
      sub_1C4404F74();
      sub_1C4EF93B8();
      v138 = v51;
      v77 = *(v0 + 760);
      v78 = *(v0 + 752);
      sub_1C4417450();
      sub_1C4454000(v79, v80);
      sub_1C4F01178();
      sub_1C43FBC98();
      v81 = sub_1C4F01158();
      if (v82)
      {
        v77 = v82;
        v139 = v81;
        v83 = sub_1C43FBC98();
        sub_1C4434000(v83, v84);
      }

      else
      {
        v85 = sub_1C43FBC98();
        sub_1C4434000(v85, v86);
        sub_1C43FF2D0();
        v139 = v87;
      }

      objc_autoreleasePoolPop(v68);
      if (*(v0 + 496) >> 60 == 15)
      {
        v88 = 0;
        v2 = 0;
      }

      else
      {
        v89 = *(v0 + 488);
        if (*(v0 + 481))
        {
          sub_1C44F92C4();
        }

        else
        {
          sub_1C4463B90();
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v91 = *(AssociatedTypeWitness - 8);
        v92 = *(v91 + 64);
        v93 = sub_1C43FBE7C();
        v94 = sub_1C4414C9C();
        sub_1C44344B8(v94, v95);
        sub_1C4414C9C();
        sub_1C4BA9CC8();
        v96 = *(swift_getAssociatedConformanceWitness() + 16);
        v88 = sub_1C4F00FB8();
        v2 = v97;
        (*(v91 + 8))(v93, AssociatedTypeWitness);
        v98 = sub_1C4414C9C();
        sub_1C441DFEC(v98, v99);

        v5 = v127;
        v19 = v136;
        v13 = v145;
      }

      if (!v2)
      {
        v88 = 0;
        v2 = 0xE000000000000000;
      }

      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F3B920;
      *(inited + 32) = 1701667150;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v146;
      *(inited + 56) = v34;
      v101 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 80) = 0x61486769666E6F43;
      *(inited + 88) = 0xEA00000000006873;
      *(inited + 96) = v142;
      *(inited + 104) = v144;
      *(inited + 120) = v101;
      *(inited + 128) = 0x745374736574614CLL;
      *(inited + 136) = 0xEB00000000657461;
      *(inited + 144) = v88;
      *(inited + 152) = v2;
      *(inited + 168) = v101;
      *(inited + 176) = 0x64656C62616E45;
      *(inited + 184) = 0xE700000000000000;
      *(inited + 192) = sub_1C4CC2358(*(v0 + 440));
      *(inited + 200) = v102;
      *(inited + 216) = v101;
      strcpy((inited + 224), "ErrorMessage");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      v103 = *(v0 + 456);
      if (*(v0 + 464))
      {
        v104 = *(v0 + 464);
      }

      else
      {
        v103 = 0;
        v104 = 0xE000000000000000;
      }

      *(inited + 240) = v103;
      *(inited + 248) = v104;
      *(inited + 264) = v101;
      strcpy((inited + 272), "AttemptCount");
      *(inited + 285) = 0;
      *(inited + 286) = -5120;
      *(v0 + 704) = *(v0 + 448);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      *(inited + 288) = sub_1C4F02858();
      *(inited + 296) = v105;
      *(inited + 312) = v101;
      *(inited + 320) = 0x6B72616D6B6F6F42;
      *(inited + 328) = 0xE900000000000073;
      *(inited + 336) = v141;
      *(inited + 344) = v138;
      *(inited + 360) = v101;
      *(inited + 368) = 0x6769666E6F43;
      *(inited + 408) = v101;
      *(inited + 376) = 0xE600000000000000;
      *(inited + 384) = v139;
      *(inited + 392) = v77;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4414C9C();
      v8 = sub_1C4F00F28();
      if (!v135 || (v106 = [v128 integerValue], v106 == -1))
      {

        goto LABEL_55;
      }

      if (v133)
      {
        v107 = v106;

        v2 = 0;
        sub_1C4C81AA0();

        sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
        sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
        v109 = swift_dynamicCast();
        if (v109)
        {
          if (*(v0 + 568))
          {
            v110 = *(v0 + 736);
            sub_1C441D670(v125, v0 + 504);
            v112 = sub_1C4989D48((v0 + 504), v107, 0);
            v114 = v113;

            *(v0 + 648) = MEMORY[0x1E69E6158];
            *(v0 + 624) = v112;
            *(v0 + 632) = v114;
            sub_1C44482AC((v0 + 624), (v0 + 656));
            swift_isUniquelyReferenced_nonNull_native();
            v147[0] = v8;
            sub_1C46601FC();
            v8 = v147[0];
            sub_1C440962C((v0 + 504));
            goto LABEL_55;
          }
        }

        else
        {
          *(v0 + 576) = 0;
          *v125 = 0u;
          *(v0 + 560) = 0u;
        }

        v108 = v0 + 544;
      }

      else
      {

        *(v0 + 616) = 0;
        *v126 = 0u;
        *(v0 + 600) = 0u;
        sub_1C4420C3C(v126, &unk_1EC0C06E0, &qword_1C4F3EFF0);
        v108 = v0 + 544;
        *v125 = 0u;
        *(v0 + 560) = 0u;
        *(v0 + 576) = 0;
      }

      sub_1C4420C3C(v108, &unk_1EC0C06B0, &qword_1C4F5FBA0);
LABEL_55:
      v6 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C441E4B8();
        sub_1C458E540();
        v13 = v115;
      }

      v111 = *(v13 + 16);
      if (v111 >= *(v13 + 24) >> 1)
      {
        sub_1C458E540();
        v13 = v116;
      }

      sub_1C444AF3C(v0 + 432);
      *(v13 + 16) = v111 + 1;
      *(v13 + 8 * v111 + 32) = v8;

      if (v130 == v143)
      {

        sub_1C4463890(v132, v124);
        goto LABEL_63;
      }

      v29 = *(v134 + 16);
      v31 = v140 + 3;
      v30 = v143 + 1;
    }

    __break(1u);
LABEL_67:
    sub_1C43FD998();
LABEL_6:
    v17 = *(v0 + 728);
    v18 = sub_1C44E7FAC();
    v19 = v13;
    if (v2)
    {

      v20 = sub_1C4415864();
      sub_1C4463890(v20, v21);

      v23 = *(v0 + 768);
      v24 = *(v0 + 760);
      v25 = *(v0 + 752);

      sub_1C43FBDA0();
      v27 = *MEMORY[0x1E69E9840];

      return v26();
    }

    v133 = v18;
  }

  v117 = sub_1C4415864();
  sub_1C4463890(v117, v118);
  v13 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v119 = *(v0 + 768);
  v120 = *(v0 + 760);
  v121 = *(v0 + 752);

  sub_1C43FBCF0();
  v123 = *MEMORY[0x1E69E9840];

  return v122(v13);
}

uint64_t sub_1C49871A0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{

  swift_unownedRetain();
  return sub_1C4988F50(a3, 0, a1, a2, a6, a1, a2);
}

uint64_t sub_1C4987200(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v155 = a6;
  v154 = a5;
  v156 = sub_1C4EF9CD8();
  v157 = *(v156 - 8);
  v10 = *(v157 + 64);
  v11 = MEMORY[0x1EEE9AC00](v156);
  v159 = (&v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v158 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v160 = (&v152 - v15);
  v16 = *(a1 + 8);
  sub_1C4409528(*(a1 + 8));
  v162 = a4;
  v19 = sub_1C4663244(v17, v18, *a4);

  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v20 = v19;
  }

  v163 = v20;
  v153 = sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  v21 = swift_allocObject();
  v152 = xmmword_1C4F0D480;
  *(v21 + 16) = xmmword_1C4F0D480;
  *(v21 + 32) = 0xD000000000000010;
  *(v21 + 40) = 0x80000001C4F87A00;
  v22 = *(a1 + 24);
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 48) = *(a1 + 16);
  *(v21 + 56) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = 0xD000000000000016;
  *(v21 + 88) = 0x80000001C4FAAF10;
  v24 = MEMORY[0x1E69E63B0];
  *(v21 + 96) = *(a1 + 40);
  *(v21 + 120) = v24;
  *(v21 + 128) = 0x656C756465686373;
  *(v21 + 136) = 0xE800000000000000;
  *(v21 + 144) = sub_1C4424B10(*(a3 + 32));
  *(v21 + 152) = v25;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "runByTimestamp");
  *(v21 + 191) = -18;
  v26 = a2[4];
  *(v21 + 216) = v24;
  *(v21 + 192) = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00F28();
  switch(v16)
  {
    case 1:
      v161 = v16;
      _s20KnowledgeGraphSourceCMa();
      sub_1C4CDE560(a2[5], a2[6]);
      sub_1C4EF9AC8();
      sub_1C4EF9AC8();
      sub_1C4EF9AC8();
      *&v165 = 0;
      *(&v165 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
      v30 = v156;
      v31 = sub_1C4F02858();
      MEMORY[0x1C6940010](v31);

      *(&v166 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v165, &v168);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v27;
      sub_1C46601FC();
      v32 = v167;
      *&v165 = 0;
      *(&v165 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v33 = sub_1C4F02858();
      MEMORY[0x1C6940010](v33);

      *(&v166 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v165, &v168);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v32;
      sub_1C46601FC();
      v34 = v167;
      *&v165 = 0;
      *(&v165 + 1) = 0xE000000000000000;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v35 = v159;
      v36 = sub_1C4F02858();
      MEMORY[0x1C6940010](v36);

      *(&v166 + 1) = MEMORY[0x1E69E6158];
      sub_1C44482AC(&v165, &v168);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v34;
      sub_1C46601FC();
      v27 = v167;
      v37 = *(v157 + 8);
      v37(v35, v30);
      v37(v158, v30);
      v37(v160, v30);
      goto LABEL_17;
    case 3:
      v38 = *(a1 + 32);
      v161 = v16;
      if (v38)
      {
        v39 = MEMORY[0x1E69E6158];
        if (v38 == 1)
        {

          v40 = v163;
          v41 = v164;
          goto LABEL_28;
        }

        v41 = v164;
      }

      else
      {
        v41 = v164;
        v39 = MEMORY[0x1E69E6158];
      }

      v52 = sub_1C4F02938();

      v40 = v163;
      if ((v52 & 1) == 0)
      {
        v60 = a2[5];
        v61 = a2[6];
        sub_1C444C58C(a2, &v165);
        v62 = sub_1C4440600(v60, v61);
        if (v41)
        {

          *(&v166 + 1) = v39;
          *&v165 = 1701736270;
          *(&v165 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v165, &v168);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v27;
          sub_1C46601FC();
          v63 = v167;
          *(&v166 + 1) = v39;
          *&v165 = 1701736270;
          *(&v165 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v165, &v168);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v63;
          sub_1C46601FC();
          v64 = v167;
          *(&v166 + 1) = v39;
          *&v165 = 1701736270;
          *(&v165 + 1) = 0xE400000000000000;
          sub_1C44482AC(&v165, &v168);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v64;
          sub_1C46601FC();
          goto LABEL_60;
        }

        v88 = v62;
        v164 = "sourceUpdatedTimestamp";
        *&v165 = 0;
        *(&v165 + 1) = 0xE000000000000000;
        sub_1C4F01A28();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v89 = v160;
        sub_1C4EF9AC8();
        v90 = sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
        v91 = v156;
        v158 = v90;
        v92 = sub_1C4F02858();
        MEMORY[0x1C6940010](v92);

        v93 = v157 + 8;
        v159 = *(v157 + 8);
        (v159)(v89, v91);
        *(&v166 + 1) = v39;
        sub_1C44482AC(&v165, &v168);
        swift_isUniquelyReferenced_nonNull_native();
        v167 = v27;
        sub_1C46601FC();
        v94 = v167;
        if (!v88)
        {
          *(&v166 + 1) = v39;
          *&v165 = 7104878;
          *(&v165 + 1) = 0xE300000000000000;
          sub_1C44482AC(&v165, &v168);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v94;
          sub_1C46601FC();
          goto LABEL_60;
        }

        objc_opt_self();
        v95 = swift_dynamicCastObjCClass();
        if (v95)
        {
          v96 = v95;
          v164 = 0;
          swift_unknownObjectRetain();
          if ([v96 value])
          {
            v157 = v93;
            objc_opt_self();
            v97 = swift_dynamicCastObjCClass();
            if (v97)
            {
              v98 = v97;
              swift_unknownObjectRelease();
              [v98 iterationStartTime];
              v155 = v88;
              sub_1C4EF9AC8();
              v99 = v39;
              v100 = swift_allocObject();
              *(v100 + 16) = v152;
              *(v100 + 32) = 0x64496D6165727473;
              *(v100 + 40) = 0xE800000000000000;
              v101 = [v98 streamId];
              v102 = sub_1C4F01138();
              v104 = v103;

              *(v100 + 48) = v102;
              *(v100 + 56) = v104;
              *(v100 + 72) = v99;
              *(v100 + 80) = 0x4E746E656D676573;
              *(v100 + 88) = 0xEB00000000656D61;
              v105 = [v98 segmentName];
              v106 = sub_1C4F01138();
              v108 = v107;

              *(v100 + 96) = v106;
              *(v100 + 104) = v108;
              v40 = v163;
              *(v100 + 120) = v99;
              strcpy((v100 + 128), "iterationStart");
              *(v100 + 143) = -18;
              *&v165 = 0;
              *(&v165 + 1) = 0xE000000000000000;
              [v98 iterationStartTime];
              sub_1C4F01A28();
              MEMORY[0x1C6940010](32, 0xE100000000000000);
              v109 = v156;
              v110 = sub_1C4F02858();
              MEMORY[0x1C6940010](v110);

              v111 = *(&v165 + 1);
              *(v100 + 144) = v165;
              *(v100 + 152) = v111;
              *(v100 + 168) = v99;
              *(v100 + 176) = 0x74657366666FLL;
              *(v100 + 184) = 0xE600000000000000;
              v112 = [v98 offset];
              *(v100 + 216) = MEMORY[0x1E69E6530];
              *(v100 + 192) = v112;
              v113 = sub_1C4F00F28();
              *(&v166 + 1) = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
              *&v165 = v113;
              sub_1C44482AC(&v165, &v168);
              swift_isUniquelyReferenced_nonNull_native();
              v167 = v94;
              sub_1C46601FC();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v27 = v167;
              (v159)(v160, v109);
              goto LABEL_61;
            }

            swift_unknownObjectRelease();
          }

          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v140 = swift_allocObject();
          *(v140 + 16) = xmmword_1C4F0CE60;
          *(v140 + 32) = 0x6D61657274737075;
          *(v140 + 40) = 0xE900000000000073;
          v141 = [v96 upstreams];
          v142 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
          v143 = sub_1C4F01678();

          v144 = MEMORY[0x1C6940380](v143, v142);
          v146 = v145;

          *(v140 + 48) = v144;
          *(v140 + 56) = v146;
          *(v140 + 64) = 0x65756C6176;
          *(v140 + 72) = 0xE500000000000000;
          *&v165 = [v96 value];
          sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
          *(v140 + 80) = sub_1C4F01198();
          *(v140 + 88) = v147;
          v148 = sub_1C4F00F28();
          *(&v166 + 1) = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
          *&v165 = v148;
          sub_1C44482AC(&v165, &v168);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v94;
          sub_1C46601FC();
          swift_unknownObjectRelease_n();
          goto LABEL_76;
        }

        *(&v166 + 1) = v39;
        *&v165 = 0xD000000000000020;
        *(&v165 + 1) = 0x80000001C4FAAF50;
        sub_1C44482AC(&v165, &v168);
        swift_isUniquelyReferenced_nonNull_native();
        v167 = v94;
        sub_1C46601FC();
LABEL_59:
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

LABEL_28:
      if (a2[6] >> 60 == 15)
      {
        v53 = 0;
        v54 = 0;
LABEL_32:
        v59 = 1;
LABEL_33:
        *(&v166 + 1) = v39;
        *&v165 = 7104878;
        *(&v165 + 1) = 0xE300000000000000;
        sub_1C44482AC(&v165, &v168);
        swift_isUniquelyReferenced_nonNull_native();
        v167 = v27;
        sub_1C46601FC();
        sub_1C44503F8(v59, v53, v54);
        goto LABEL_60;
      }

      v55 = a2[5];
      sub_1C444C58C(a2, &v165);
      v56 = sub_1C44633C0();
      if (v41)
      {

        v53 = 0;
        v54 = 0;
        goto LABEL_32;
      }

      v59 = v56;
      v53 = v57;
      v54 = v58;
      if (!v56)
      {
        goto LABEL_33;
      }

      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = v68;
        v159 = v53;
        v164 = 0;
        v158 = v59;
        swift_unknownObjectRetain();
        if ([v69 value])
        {
          objc_opt_self();
          v70 = swift_dynamicCastObjCClass();
          if (v70)
          {
            v71 = v70;
            [v70 iterationStartTime];
            sub_1C4EF9AC8();
            v72 = swift_allocObject();
            *(v72 + 16) = v152;
            *(v72 + 32) = 0x64496D6165727473;
            *(v72 + 40) = 0xE800000000000000;
            v73 = [v71 streamId];
            v74 = sub_1C4F01138();
            v155 = v54;
            v75 = v39;
            v76 = v74;
            v78 = v77;

            *(v72 + 48) = v76;
            *(v72 + 56) = v78;
            *(v72 + 72) = v75;
            *(v72 + 80) = 0x4E746E656D676573;
            *(v72 + 88) = 0xEB00000000656D61;
            v79 = [v71 segmentName];
            v80 = sub_1C4F01138();
            v82 = v81;

            *(v72 + 96) = v80;
            *(v72 + 104) = v82;
            *(v72 + 120) = v75;
            strcpy((v72 + 128), "iterationStart");
            *(v72 + 143) = -18;
            *&v165 = 0;
            *(&v165 + 1) = 0xE000000000000000;
            v40 = v163;
            [v71 iterationStartTime];
            sub_1C4F01A28();
            MEMORY[0x1C6940010](32, 0xE100000000000000);
            sub_1C44FAF1C(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
            v83 = v156;
            v84 = sub_1C4F02858();
            MEMORY[0x1C6940010](v84);

            v85 = *(&v165 + 1);
            *(v72 + 144) = v165;
            *(v72 + 152) = v85;
            *(v72 + 168) = v75;
            *(v72 + 176) = 0x74657366666FLL;
            *(v72 + 184) = 0xE600000000000000;
            v86 = [v71 offset];
            *(v72 + 216) = MEMORY[0x1E69E6530];
            *(v72 + 192) = v86;
            v87 = sub_1C4F00F28();
            *(&v166 + 1) = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
            *&v165 = v87;
            sub_1C44482AC(&v165, &v168);
            swift_isUniquelyReferenced_nonNull_native();
            v167 = v27;
            sub_1C46601FC();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            sub_1C441DFEC(v159, v155);
            v27 = v167;
            (*(v157 + 8))(v160, v83);
            goto LABEL_61;
          }

          swift_unknownObjectRelease();
        }

        sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_1C4F0CE60;
        *(v131 + 32) = 0x6D61657274737075;
        *(v131 + 40) = 0xE900000000000073;
        v132 = [v69 upstreams];
        v133 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
        v134 = sub_1C4F01678();

        v135 = MEMORY[0x1C6940380](v134, v133);
        v137 = v136;

        *(v131 + 48) = v135;
        *(v131 + 56) = v137;
        *(v131 + 64) = 0x65756C6176;
        *(v131 + 72) = 0xE500000000000000;
        *&v165 = [v69 value];
        sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
        *(v131 + 80) = sub_1C4F01198();
        *(v131 + 88) = v138;
        v139 = sub_1C4F00F28();
        *(&v166 + 1) = sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
        *&v165 = v139;
        sub_1C44482AC(&v165, &v168);
        swift_isUniquelyReferenced_nonNull_native();
        v167 = v27;
        sub_1C46601FC();
        swift_unknownObjectRelease();
        sub_1C441DFEC(v159, v54);
        swift_unknownObjectRelease();
LABEL_76:
        v27 = v167;
        goto LABEL_61;
      }

      *(&v166 + 1) = v39;
      *&v165 = 0xD000000000000020;
      *(&v165 + 1) = 0x80000001C4FAAF50;
      sub_1C44482AC(&v165, &v168);
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v27;
      sub_1C46601FC();
      swift_unknownObjectRelease();
      sub_1C441DFEC(v53, v54);
      goto LABEL_59;
    case 4:
      v29 = v164;
      sub_1C4BACEC4();
      if (v29)
      {
      }

      sub_1C4449828();
      v40 = v163;
      v65 = a2[6];
      v161 = v16;
      if (v65 >> 60 == 15)
      {
        goto LABEL_37;
      }

      v164 = 0;
      v114 = a2[5];
      if (v170[49])
      {
        sub_1C44F92C4();
      }

      else
      {
        sub_1C4463B90();
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v160 = &v152;
      v116 = *(AssociatedTypeWitness - 8);
      v117 = *(v116 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v119 = &v152 - v118;
      sub_1C444C58C(a2, &v165);
      v120 = v164;
      sub_1C4BA9CC8();
      if (v120)
      {

        sub_1C444053C(a2);
LABEL_55:
        v40 = v163;
        v121 = sub_1C445FAA8(0x6B72616D6B6F6F62, 0xE800000000000000);
        if (v122)
        {
          v123 = v121;
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v27;
          v124 = *(v27 + 24);
          sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
          sub_1C4F02458();
          v27 = v167;
          v125 = *(*(v167 + 48) + 16 * v123 + 8);

          sub_1C44482AC((*(v27 + 56) + 32 * v123), &v165);
          sub_1C4F02478();
        }

        else
        {
          v166 = 0u;
          v165 = 0u;
        }

        sub_1C4420C3C(&v165, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C444AF3C(v170);
        goto LABEL_61;
      }

      v129 = *(swift_getAssociatedConformanceWitness() + 16);
      v66 = sub_1C4F00FB8();
      v67 = v130;
      (*(v116 + 8))(v119, AssociatedTypeWitness);
      sub_1C444053C(a2);
      if (!v67)
      {
        goto LABEL_55;
      }

      v40 = v163;
      if (v67 == 1)
      {
LABEL_37:
        v66 = 0;
        v67 = 0xE000000000000000;
      }

      *(&v169 + 1) = MEMORY[0x1E69E6158];
      *&v168 = v66;
      *(&v168 + 1) = v67;
      sub_1C44482AC(&v168, &v165);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v27;
      sub_1C46601FC();
      sub_1C444AF3C(v170);
LABEL_60:
      v27 = v167;
LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = *(v40 + 16);
        sub_1C458E540();
        v40 = v150;
      }

      v126 = *(v40 + 16);
      if (v126 >= *(v40 + 24) >> 1)
      {
        sub_1C458E540();
        v40 = v151;
      }

      *(v40 + 16) = v126 + 1;
      *(v40 + 8 * v126 + 32) = v27;
      sub_1C4409528(v161);
      v127 = v162;
      v128 = *v162;
      swift_isUniquelyReferenced_nonNull_native();
      *&v165 = *v127;
      sub_1C46626D4();
      *v127 = v165;

    case 5:
      v161 = v16;
      _s14KeyValueSourceCMa();
      v43 = sub_1C4CDD394(a2[5], a2[6]);
      if (v44)
      {
        goto LABEL_15;
      }

      v45 = 0x756C61567473616CLL;
      v46 = 0xE900000000000065;
      goto LABEL_21;
    case 6:
      v161 = v16;
      _s26GlobalKnowledgeGraphSourceCMa();
      v43 = sub_1C4CD9044(a2[5], a2[6]);
      if (v44)
      {
LABEL_15:
        *(&v166 + 1) = MEMORY[0x1E69E6158];
        *&v165 = v43;
        *(&v165 + 1) = v44;
        sub_1C44482AC(&v165, &v168);
        swift_isUniquelyReferenced_nonNull_native();
        v167 = v27;
LABEL_16:
        sub_1C46601FC();
        v27 = v167;
LABEL_17:
        v40 = v163;
      }

      else
      {
        v45 = 0x5664497465737361;
        v46 = 0xEE006E6F69737265;
LABEL_21:
        v47 = sub_1C445FAA8(v45, v46);
        if (v48)
        {
          v49 = v47;
          swift_isUniquelyReferenced_nonNull_native();
          v167 = v27;
          v50 = *(v27 + 24);
          sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
          sub_1C4F02458();
          v27 = v167;
          v51 = *(*(v167 + 48) + 16 * v49 + 8);

          sub_1C44482AC((*(v27 + 56) + 32 * v49), &v168);
          sub_1C4F02478();
        }

        else
        {
          v168 = 0u;
          v169 = 0u;
        }

        v40 = v163;
        sub_1C4420C3C(&v168, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      }

      goto LABEL_61;
    case 7:
      v161 = v16;
      _s18NotificationSourceCMa();
      sub_1C4CE37C4(a2[5], a2[6]);
      *(&v166 + 1) = v24;
      *&v165 = v42;
      sub_1C44482AC(&v165, &v168);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v27;
      goto LABEL_16;
    default:
  }
}

uint64_t sub_1C4988F50(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v133 = a7;
  v114 = a6;
  v110 = a5;
  LODWORD(v112) = a2;
  v108 = a1;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v87 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = sub_1C4EFB768();
  v109 = *(v21 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v113 = a3;
  v25 = sub_1C4440C6C(a3);
  v26 = v7;
  if (v7)
  {
LABEL_5:

LABEL_6:

    return swift_unownedRelease();
  }

  else
  {
    v27 = v25;
    v105 = v24;
    v106 = v21;
    v102 = v20;
    v103 = v15;
    v104 = v18;

    v107 = *(v27 + 168);

    swift_unownedRetainStrong();
    v28 = v113;
    v29 = sub_1C4440C6C(v113);
    if (v112)
    {

      v30 = *(v29 + 192);

      swift_unownedRetainStrong();
      v31 = sub_1C4440C6C(v28);
      v94 = v30;

      v32 = (v31 + 184);
    }

    else
    {

      v33 = *(v29 + 200);

      swift_unownedRetainStrong();
      v35 = sub_1C4440C6C(v28);
      v94 = v33;

      v32 = (v35 + 176);
    }

    v96 = *v32;

    swift_unownedRetainStrong();
    v36 = sub_1C4440C6C(v28);
    v37 = v104;
    v38 = v109;
    v39 = v36;

    v95 = *(v39 + 256);

    v113 = (v38 + 8);
    v91 = xmmword_1C4F0CE60;
    v101 = xmmword_1C4F0D130;
    while (1)
    {
      v40 = v108;
      if (v26 == 8)
      {

        return swift_unownedRelease();
      }

      v41 = *(&unk_1F43D2FB8 + v26 + 32);
      v112 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v42 = swift_allocObject();
      *(v42 + 16) = v91;
      *(v42 + 56) = MEMORY[0x1E69E6530];
      *(v42 + 64) = MEMORY[0x1E69A0180];
      *(v42 + 32) = v40;
      *(v42 + 96) = &_s10SourceTypeON;
      *(v42 + 104) = sub_1C444323C();
      *(v42 + 72) = v41;
      v43 = v105;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v44 = v106;
      v109 = *v113;
      (v109)(v43, v106);
      v45 = v102;
      sub_1C440BAA8(v102, 1, 1, v44);
      sub_1C44458E0();
      memset(v122, 0, 40);
      v46 = sub_1C4EFB3E8();
      ++v26;
      sub_1C4420C3C(v122, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v45, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v47 = 0;
      v48 = *(v46 + 16);
      v92 = v46;
      v49 = v46 + 32;
      v88 = v48;
      v89 = v26;
      v87 = v46 + 32;
LABEL_10:
      if (v47 != v48)
      {
        break;
      }
    }

    if (v47 < *(v92 + 16))
    {
      v50 = v49 + 56 * v47;
      v51 = *v50;
      v52 = *(v50 + 16);
      v53 = *(v50 + 32);
      v132 = *(v50 + 48);
      v131[1] = v52;
      v131[2] = v53;
      v131[0] = v51;
      v54 = swift_allocObject();
      *(v54 + 16) = v101;
      v55 = *&v131[0];
      *(v54 + 56) = MEMORY[0x1E69E6530];
      *(v54 + 64) = MEMORY[0x1E69A0180];
      *(v54 + 32) = v55;
      sub_1C444808C(v131, v122);
      v56 = v105;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v57 = v106;
      (v109)(v56, v106);
      sub_1C440BAA8(v37, 1, 1, v57);
      memset(v122, 0, 40);
      v58 = sub_1C4EFB988();
      v90 = v47 + 1;
      sub_1C4420C3C(v122, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v37, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v59 = 0;
      v93 = *(v58 + 16);
      while (1)
      {
        if (v93 == v59)
        {

          result = sub_1C44636BC(v131);
          v26 = v89;
          v47 = v90;
          v49 = v87;
          v48 = v88;
          goto LABEL_10;
        }

        if (v59 >= *(v58 + 16))
        {
          break;
        }

        v60 = v58;
        v61 = *(v58 + 8 * v59 + 32);
        v62 = swift_allocObject();
        *(v62 + 16) = v101;
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = MEMORY[0x1E69A0180];
        *(v62 + 32) = v61;
        v63 = v105;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v64 = v106;
        (v109)(v63, v106);
        v65 = v103;
        sub_1C440BAA8(v103, 1, 1, v64);
        sub_1C444C538();
        memset(v119, 0, 40);
        sub_1C4EFB408();
        sub_1C4420C3C(v119, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v65, &unk_1EC0C06C0, &unk_1C4F10DB0);
        if (*&v122[3] >> 60 == 11)
        {
          sub_1C44636BC(v131);

          *&v119[0] = 0;
          *(&v119[0] + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v119[0] = 0xD00000000000002ELL;
          *(&v119[0] + 1) = 0x80000001C4FAAEC0;
          *&v116 = v61;
          v77 = sub_1C4F02858();
          MEMORY[0x1C6940010](v77);

          v78 = v119[0];
          sub_1C450B034();
          swift_allocError();
          *v79 = v78;
          v81 = v119[1];
          v80 = v119[2];
          *(v79 + 16) = v119[0];
          *(v79 + 32) = v81;
          *(v79 + 48) = v80;
          *(v79 + 64) = 5;
          swift_willThrow();

          goto LABEL_5;
        }

        v66 = *&v122[1];
        v97 = v122[0];
        v129[0] = v122[0];
        v129[1] = v122[1];
        v98 = *(&v122[2] + 1);
        v99 = *(&v122[1] + 1);
        v67 = *&v122[2];
        v129[2] = v122[2];
        v100 = *&v122[3];
        v130 = *&v122[3];
        v68 = swift_allocObject();
        *(v68 + 16) = v101;
        *(v68 + 56) = MEMORY[0x1E69E6530];
        *(v68 + 64) = MEMORY[0x1E69A0180];
        v69 = v66;
        *(v68 + 32) = v66;
        v70 = v105;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v71 = v70;
        v72 = v106;
        (v109)(v71, v106);
        v73 = v111;
        sub_1C440BAA8(v111, 1, 1, v72);
        sub_1C444C5E8();
        memset(v120, 0, sizeof(v120));
        v121 = 0;
        sub_1C4EFB408();
        sub_1C4420C3C(v120, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v73, &unk_1EC0C06C0, &unk_1C4F10DB0);
        memcpy(v119, v122, 0x48uLL);
        if (!*(&v119[1] + 1))
        {
          sub_1C44636BC(v131);

          *&v116 = 0;
          *(&v116 + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v116 = 0xD00000000000001DLL;
          *(&v116 + 1) = 0x80000001C4FAAEF0;
          v115 = 0;
          v82 = sub_1C4F02858();
          MEMORY[0x1C6940010](v82);

          v83 = v116;
          sub_1C450B034();
          swift_allocError();
          *v84 = v83;
          v86 = v117;
          v85 = v118;
          *(v84 + 16) = v116;
          *(v84 + 32) = v86;
          *(v84 + 48) = v85;
          *(v84 + 64) = 5;
          swift_willThrow();

          sub_1C44652C4(v97, *(&v97 + 1), v66, v99, v67, v98, v100);
          goto LABEL_6;
        }

        v123 = v122[0];
        v124 = *&v122[1];
        v125 = *(&v119[1] + 1);
        v126 = v122[2];
        v127 = v122[3];
        v128 = *&v122[4];
        sub_1C4987200(&v123, v129, v131, v110, v114, v133);
        v58 = v60;
        v75 = v98;
        v74 = v99;
        v76 = *(&v97 + 1);
        sub_1C4420C3C(v119, &qword_1EC0C6340, &qword_1C4F6BAA0);
        result = sub_1C44652C4(v97, v76, v69, v74, v67, v75, v100);
        ++v59;
        v37 = v104;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4989D48(void *a1, uint64_t a2, int a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = sub_1C4F01188();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewDatabaseArtifact.Property();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v17 = sub_1C4409678(a1, v16);
  v18 = *(v15 + 16);
  v80 = v17;
  v81 = v15 + 16;
  v82 = v15;
  v79 = v18;
  v18(&v88, v16, v15);
  v19 = v89;
  v20 = v90;
  sub_1C4409678(&v88, v89);
  v21 = (*(v20 + 24))(v19, v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v74 = v16;
    v75 = a3;
    v76 = a2;
    v77 = v9;
    *&v86 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v23 = v86;
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v73[1] = v21;
    v25 = v21 + v24;
    v26 = *(v11 + 72);
    do
    {
      sub_1C443CCBC(v25, v14);
      v28 = *v14;
      v27 = v14[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4454000(v14, type metadata accessor for ViewDatabaseArtifact.Property);
      *&v86 = v23;
      v29 = *(v23 + 16);
      if (v29 >= *(v23 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v23 = v86;
      }

      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v28;
      *(v30 + 40) = v27;
      v25 += v26;
      --v22;
    }

    while (v22);

    v9 = v77;
    a2 = v76;
    LOBYTE(a3) = v75;
    v16 = v74;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440962C(&v88);
  v31 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v89 = v31;
  *&v88 = v23;
  sub_1C44482AC(&v88, &v86);
  v32 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  *&v84[0] = v32;
  sub_1C46601FC();
  v33 = *&v84[0];
  v79(&v88, v16, v82);
  v34 = v89;
  v35 = v90;
  sub_1C4409678(&v88, v89);
  v36 = v78;
  v37 = (*(v35 + 40))(v34, v35);
  if (v36)
  {

    v38 = -1;
  }

  else
  {
    v38 = v37;
  }

  sub_1C440962C(&v88);
  v89 = MEMORY[0x1E69E6530];
  *&v88 = v38;
  sub_1C44482AC(&v88, &v86);
  swift_isUniquelyReferenced_nonNull_native();
  *&v84[0] = v33;
  sub_1C46601FC();
  v39 = *&v84[0];
  v79(&v86, v16, v82);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C06F8, &qword_1C4F3EFF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_1C4420C3C(v84, &unk_1EC0C0700, &qword_1C4F3F000);
    goto LABEL_32;
  }

  sub_1C441D670(v84, &v88);
  if (a3)
  {
    v40 = v89;
    v41 = v90;
    sub_1C4409678(&v88, v89);
    v42 = (*(v41 + 8))(v40, v41);
    goto LABEL_17;
  }

  if (a2 >= 1)
  {
    v43 = v89;
    v44 = v90;
    sub_1C4409678(&v88, v89);
    v42 = (*(v44 + 16))(a2, v43, v44);
LABEL_17:
    v45 = v42;
    if (sub_1C4428DA0())
    {
      v46 = sub_1C4428DA0();
      v78 = v39;
      if (v46)
      {
        v47 = v46;
        v80 = v31;
        v77 = v9;
        *&v86 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0();
        if (v47 < 0)
        {
          __break(1u);
        }

        v48 = 0;
        v49 = v86;
        v81 = v45 & 0xC000000000000001;
        v82 = v45;
        v50 = v47;
        do
        {
          if (v81)
          {
            v51 = MEMORY[0x1C6940F90](v48, v45);
          }

          else
          {
            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = sub_1C4985D4C(v51);
          v53 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          v54 = MEMORY[0x1C6940380](v52, v53);
          v56 = v55;

          *&v86 = v49;
          v57 = *(v49 + 16);
          if (v57 >= *(v49 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v49 = v86;
          }

          ++v48;
          *(v49 + 16) = v57 + 1;
          v58 = v49 + 16 * v57;
          *(v58 + 32) = v54;
          *(v58 + 40) = v56;
          v45 = v82;
        }

        while (v50 != v48);

        v31 = v80;
      }

      else
      {

        v49 = MEMORY[0x1E69E7CC0];
      }

      v87 = v31;
      *&v86 = v49;
      sub_1C44482AC(&v86, v84);
      v59 = v78;
      swift_isUniquelyReferenced_nonNull_native();
      v83 = v59;
      sub_1C46601FC();
    }

    else
    {
    }
  }

  sub_1C440962C(&v88);
LABEL_32:
  v60 = objc_autoreleasePoolPush();
  v61 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = sub_1C4F00EC8();

  *&v88 = 0;
  v63 = [v61 dataWithJSONObject:v62 options:3 error:&v88];

  v64 = v88;
  if (v63)
  {
    v65 = sub_1C4EF9A68();
    v67 = v66;

    sub_1C4F01178();
    v68 = sub_1C4F01158();
    if (v69)
    {
      v70 = v68;
      sub_1C4434000(v65, v67);
    }

    else
    {
      sub_1C4434000(v65, v67);

      v70 = 1701736270;
    }

    objc_autoreleasePoolPop(v60);
  }

  else
  {
    v70 = v64;
    sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v60);
  }

  v71 = *MEMORY[0x1E69E9840];
  return v70;
}

uint64_t sub_1C498A5A8()
{
  sub_1C43FBCD4();
  v0[108] = v1;
  v0[107] = v2;
  v0[106] = v3;
  v0[105] = v4;
  v0[104] = v5;
  v6 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  v0[109] = v6;
  v7 = *(v6 - 8);
  v0[110] = v7;
  v8 = *(v7 + 64);
  v0[111] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C498A674()
{
  v126 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 864);
  v2 = sub_1C4415590();
  *(v0 + 896) = v2;
  v3 = v2;
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v7 = *(v3 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49587E8();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (qword_1EDDF6970 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v118 = v3;
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
    sub_1C442B738(v10, qword_1EDE2CEA8);
    *(v0 + 712) = v9;
    *(v0 + 720) = v8;
    sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
    sub_1C498DA70();
    sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0);
    v119 = sub_1C4F01038();
    v11 = *(v119 + 16);
    if (v11)
    {
      v12 = *(v0 + 880);
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v119 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v120 = *(v12 + 56);
      v121 = v13;
      v122 = v12;
      v15 = (v12 - 8);
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v121(*(v0 + 888), v14, *(v0 + 872));
        swift_getKeyPath();
        sub_1C4EFCBE8();

        v17 = *(v0 + 888);
        v18 = *(v0 + 872);
        if (*(v0 + 704))
        {
          v19 = MEMORY[0x1C693FEF0](*(v0 + 680), *(v0 + 688), *(v0 + 696), *(v0 + 704));
          v21 = v20;

          (*v15)(v17, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C441E4B8();
            sub_1C443D664();
            v16 = v24;
          }

          v22 = *(v16 + 16);
          if (v22 >= *(v16 + 24) >> 1)
          {
            sub_1C443D664();
            v16 = v25;
          }

          *(v16 + 16) = v22 + 1;
          v23 = v16 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v21;
        }

        else
        {
          (*v15)(*(v0 + 888), *(v0 + 872));
        }

        v14 += v120;
        --v11;
      }

      while (v11);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4499940(v16, v26, v27, v28, v29, v30, v31, v32, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, v125);
    v34 = v33;
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v35 = sub_1C4F00978();
    sub_1C442B738(v35, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CF8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v123 = v39;
      *v38 = 136315138;
      v40 = sub_1C4F01AC8();
      v42 = sub_1C441D828(v40, v41, &v123);

      *(v38 + 4) = v42;
      sub_1C44065F4(&dword_1C43F8000, v43, v44, "Table names to replace: %s");
      sub_1C440962C(v39);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v45 = *(v0 + 864);
    *(v0 + 904) = sub_1C44E7FAC();
    v46 = *(v0 + 840);
    v47 = *(v0 + 832);
    sub_1C4C81AA0();
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v52 = *(v0 + 856);
    v53 = *(v0 + 848);
    sub_1C441D670((v0 + 400), v0 + 320);
    *(v0 + 728) = v53;
    *(v0 + 736) = v52;
    *(v0 + 744) = 0x454C42415424;
    *(v0 + 752) = 0xE600000000000000;
    v54 = *(v0 + 352);
    sub_1C4409678((v0 + 320), *(v0 + 344));
    v55 = *(v54 + 16);
    v56 = sub_1C43FD074();
    v57(v56);
    v58 = *(v0 + 472);
    sub_1C4409678((v0 + 440), *(v0 + 464));
    v59 = *(v58 + 8);
    v60 = sub_1C43FD074();
    *(v0 + 760) = v61(v60);
    *(v0 + 768) = v62;
    v115 = sub_1C4415EA8();
    v116 = v115;
    v114 = v115;
    v63 = sub_1C4404478();
    v65 = v64;

    sub_1C440962C((v0 + 440));
    *(v0 + 504) = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    *(v0 + 512) = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
    *(v0 + 480) = v34;
    v69 = sub_1C4C81ADC((v0 + 480));
    v121 = v115;
    v122 = v63;
    sub_1C440962C((v0 + 480));
    v70 = 0;
    v120 = v69;
    v71 = v69 + 64;
    v72 = -1;
    v73 = -1 << *(v69 + 32);
    if (-v73 < 64)
    {
      v72 = ~(-1 << -v73);
    }

    v3 = v72 & *(v69 + 64);
    v74 = (63 - v73) >> 6;
    while (1)
    {
      *(v0 + 912) = v65;
      if (!v3)
      {
        break;
      }

      v75 = v70;
LABEL_38:
      v76 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v77 = v76 | (v75 << 6);
      v78 = (*(v120 + 48) + 16 * v77);
      v79 = *v78;
      v80 = v78[1];
      sub_1C442E860(*(v120 + 56) + 40 * v77, v0 + 520);
      *(v0 + 216) = v79;
      *(v0 + 224) = v80;
      sub_1C441D670((v0 + 520), v0 + 232);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_39:
      v81 = *(v0 + 232);
      *(v0 + 160) = *(v0 + 216);
      *(v0 + 176) = v81;
      *(v0 + 192) = *(v0 + 248);
      *(v0 + 208) = *(v0 + 264);
      if (!*(v0 + 168))
      {
        v96 = *(v0 + 840);

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v97 = sub_1C4F00968();
        v98 = sub_1C4F01CF8();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = *(v0 + 840);
          v100 = *(v0 + 832);
          v101 = swift_slowAlloc();
          *&v123 = swift_slowAlloc();
          *v101 = 136315394;
          *(v101 + 4) = sub_1C441D828(v100, v99, &v123);
          *(v101 + 12) = 2080;
          v102 = v122;
          *(v101 + 14) = sub_1C441D828(v122, v65, &v123);
          sub_1C4402B48();
          _os_log_impl(v103, v104, v105, v106, v107, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          v102 = v122;
        }

        v108 = *(v0 + 344);
        v109 = *(v0 + 352);
        sub_1C4409678((v0 + 320), v108);
        (*(v109 + 16))(v108, v109);
        v110 = *(v0 + 584);
        v111 = *(v0 + 592);
        sub_1C4409678((v0 + 560), v110);
        v112 = swift_task_alloc();
        *(v0 + 920) = v112;
        *v112 = v0;
        v112[1] = sub_1C498B2F8;

        return sub_1C498B538(v102, v65, v110, v111);
      }

      v82 = *(v0 + 160);
      sub_1C441D670((v0 + 176), v0 + 600);
      *(v0 + 776) = v122;
      *(v0 + 784) = v65;
      *&v123 = 31524;
      *(&v123 + 1) = 0xE200000000000000;
      v83 = sub_1C4404C28();
      MEMORY[0x1C6940010](v83);

      MEMORY[0x1C6940010](125, 0xE100000000000000);
      v84 = *(&v123 + 1);
      *(v0 + 792) = v123;
      *(v0 + 800) = v84;
      v85 = *(v0 + 632);
      sub_1C4409678((v0 + 600), *(v0 + 624));
      v86 = *(v85 + 16);
      v87 = sub_1C43FD074();
      v88(v87);
      v89 = *(v0 + 672);
      sub_1C4409678((v0 + 640), *(v0 + 664));
      v90 = *(v89 + 8);
      v91 = sub_1C43FD074();
      *(v0 + 808) = v92(v91);
      *(v0 + 816) = v93;
      v115 = v121;
      v116 = v121;
      v114 = v121;
      v122 = sub_1C4404478();
      v95 = v94;

      sub_1C440962C((v0 + 640));
      sub_1C440962C((v0 + 600));
      v65 = v95;
    }

    while (1)
    {
      v75 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v75 >= v74)
      {
        v3 = 0;
        *(v0 + 264) = 0;
        *(v0 + 248) = 0u;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;
        goto LABEL_39;
      }

      v3 = *(v71 + 8 * v75);
      ++v70;
      if (v3)
      {
        v70 = v75;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  v66 = *(v0 + 840);
  v67 = *(v0 + 832);

  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  sub_1C4420C3C(v0 + 400, &unk_1EC0C06B0, &qword_1C4F5FBA0);
  sub_1C450B034();
  swift_allocError();
  *v68 = v67;
  *(v68 + 8) = v66;
  *(v68 + 16) = xmmword_1C4F3EF20;
  *(v68 + 32) = 0xD000000000000033;
  *(v68 + 40) = 0x80000001C4FAAE60;
  *(v68 + 48) = v123;
  *(v68 + 64) = 0;
  swift_willThrow();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v48 = *(v0 + 888);

  sub_1C43FBDA0();

  return v49();
}

uint64_t sub_1C498B2F8()
{
  sub_1C43FEAEC();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = v6;
  sub_1C44001F0();
  *v8 = v7;
  v10 = *(v9 + 920);
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;
  v7[116] = v0;

  if (!v0)
  {
    v13 = v7[114];

    v7[117] = v3;
    v7[118] = v5;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C498B41C()
{
  sub_1C43FBCD4();
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];

  sub_1C440962C(v0 + 70);
  sub_1C440962C(v0 + 40);

  v4 = v0[1];
  v5 = v0[118];
  v6 = v0[117];

  return v4(v5, v6);
}

uint64_t sub_1C498B4AC()
{
  sub_1C43FBCD4();
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];

  sub_1C440962C(v0 + 70);
  sub_1C440962C(v0 + 40);
  v4 = v0[116];
  v5 = v0[111];

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C498B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C498B560, 0, 0);
}

uint64_t sub_1C498B560()
{
  sub_1C43FCF70();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[4];
  v0[9] = *((*(v0[7] + 16))(v0[6]) + 16);

  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E699FE78] + 4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v8 = sub_1C44FAF1C(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  *v6 = v0;
  v6[1] = sub_1C498B6CC;
  v9 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE09680](v0 + 2, sub_1C498DAC4, v4, v7, v9, v8);
}

uint64_t sub_1C498B6CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[12] = v0;

  if (!v0)
  {
    v10 = v3[9];
    v9 = v3[10];
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C498B7F0()
{
  sub_1C43FBCD4();
  v2 = v0[9];
  v1 = v0[10];

  sub_1C43FBDA0();
  v4 = v0[12];

  return v3();
}

uint64_t sub_1C498B854(uint64_t a1)
{
  *(v1 + 128) = a1;
  sub_1C43FEAF8();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C498B880()
{
  v10 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = v0[16];
  sub_1C4415590();

  if (qword_1EDDFB828 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v0[17] = sub_1C4ABF9D8();
  v0[15] = MEMORY[0x1E69E7CC0];
  v0[18] = 0;
  v3 = sub_1C4CB06C4(byte_1F43D9F50);
  sub_1C4405DCC(v3, v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v6 = sub_1C442CCF0(v5);

  return sub_1C445E588(v6, v7, v8);
}

uint64_t sub_1C498BB0C()
{
  sub_1C43FEAEC();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v9 = *(v6 + 160);
  *v8 = *v1;

  v10 = *(v6 + 152);
  if (v0)
  {
  }

  else
  {

    *(v7 + 168) = v3;
    *(v7 + 176) = v5;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C498BC54()
{
  sub_1C43FCF70();
  *(v0 + 96) = vextq_s8(*(v0 + 168), *(v0 + 168), 8uLL);
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  sub_1C456902C(&qword_1EC0C0680, &qword_1C4F3EFA0);
  if (swift_dynamicCast())
  {
    if (*(v0 + 80))
    {
      sub_1C441D670((v0 + 56), v0 + 16);
      v1 = *(v0 + 48);
      sub_1C4409678((v0 + 16), *(v0 + 40));
      v2 = sub_1C4404F74();
      sub_1C4C0C3D4(v2, v1);
      sub_1C49D4838(v3);
      sub_1C440962C((v0 + 16));
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  sub_1C4420C3C(v0 + 56, &unk_1EC0C0670, &qword_1C4F3EF90);
LABEL_6:
  v4 = *(v0 + 144) + 1;
  if (*(v0 + 144) == 248)
  {
    v5 = *(v0 + 136);

    v6 = *(v0 + 120);
    sub_1C43FBCF0();

    return v7();
  }

  else
  {
    *(v0 + 144) = v4;
    v9 = sub_1C4CB06C4(*(&unk_1F43D9F30 + v4 + 32));
    sub_1C4405DCC(v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v12 = sub_1C442CCF0();

    return sub_1C445E588(v12, v13, v14);
  }
}

uint64_t sub_1C498BE00()
{
  sub_1C43FCF70();
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_1C4420C3C(v0 + 56, &unk_1EC0C0670, &qword_1C4F3EF90);
  v1 = *(v0 + 144) + 1;
  if (*(v0 + 144) == 248)
  {
    v2 = *(v0 + 136);

    v3 = *(v0 + 120);
    sub_1C43FBCF0();

    return v4();
  }

  else
  {
    *(v0 + 144) = v1;
    v6 = sub_1C4CB06C4(*(&unk_1F43D9F30 + v1 + 32));
    sub_1C4405DCC(v6, v7);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v9 = sub_1C442CCF0();

    return sub_1C445E588(v9, v10, v11);
  }
}

uint64_t InternalXPC.Server.viewInfo(viewQuery:rows:)()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[8] = v4;
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  v1[9] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C498BF9C()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v9 = v0[9];
  sub_1C442B738(v0[8], qword_1EDDEBB90);
  sub_1C43FC598();
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration();
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_1C498C130;
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v21 = v0[5];

    return sub_1C49860D4();
  }

  return result;
}

uint64_t sub_1C498C130()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 72);
    sub_1C4419AF4();

    sub_1C43FBCF0();

    return v15(v3);
  }
}

uint64_t sub_1C498C26C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);
  sub_1C4419AF4();

  sub_1C43FBDA0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1C498C368(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1C498C43C;

  return InternalXPC.Server.viewInfo(viewQuery:rows:)();
}

uint64_t sub_1C498C43C()
{
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[4];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_1C4EF9798();

    v14 = v13;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v15 = sub_1C4F01658();

    v14 = v15;
  }

  v16 = *(v4 + 40);
  v17 = sub_1C44033C0();
  v18(v17);

  _Block_release(v16);
  sub_1C43FBDA0();

  return v19();
}

uint64_t InternalXPC.Server.viewSql(name:statement:)()
{
  sub_1C43FBCD4();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[10] = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[11] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C498C678()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v9 = v0[11];
  sub_1C442B738(v0[10], qword_1EDDEBB90);
  sub_1C43FC598();
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration();
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_1C498C80C;
    v18 = v0[11];
    v19 = v0[7];
    v20 = v0[8];
    v22 = v0[5];
    v21 = v0[6];

    return sub_1C498A5A8();
  }

  return result;
}

uint64_t sub_1C498C80C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = v6;
  sub_1C44001F0();
  *v8 = v7;
  v10 = *(v9 + 96);
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;
  *(v7 + 104) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {
    v16 = *(v7 + 88);
    sub_1C4419AF4();

    v17 = *(v11 + 8);

    return v17(v5, v3);
  }
}

uint64_t sub_1C498C954()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  sub_1C4419AF4();

  sub_1C43FBDA0();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1C498CA50(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  sub_1C4F01138();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1C498CB4C;

  return InternalXPC.Server.viewSql(name:statement:)();
}

uint64_t sub_1C498CB4C()
{
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[5];
  v9 = v6[4];
  v10 = v6[2];
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_1C4EF9798();

    v14 = v13;
  }

  else
  {
    v15 = sub_1C4F01108();

    v14 = v15;
  }

  v16 = *(v4 + 24);
  v17 = sub_1C44033C0();
  v18(v17);

  _Block_release(v16);
  sub_1C43FBDA0();

  return v19();
}

uint64_t InternalXPC.Server.featureKeys()()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[7] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C498CD84()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v9 = v0[7];
  sub_1C442B738(v0[6], qword_1EDDEBB90);
  sub_1C43FC598();
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration();
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_1C498CF10;
    v18 = v0[7];

    return sub_1C498B854(v18);
  }

  return result;
}

uint64_t sub_1C498CF10()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 56);
    sub_1C4419AF4();

    sub_1C43FBCF0();

    return v15(v3);
  }
}

uint64_t sub_1C498D04C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C4419AF4();

  sub_1C43FBDA0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1C498D12C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C498D1D4;

  return InternalXPC.Server.featureKeys()();
}

uint64_t sub_1C498D1D4()
{
  sub_1C43FCF70();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_1C4EF9798();

    v12 = v11;
  }

  else
  {
    sub_1C45A2D54();
    v13 = sub_1C4F01658();

    v12 = v13;
  }

  v14 = *(v4 + 24);
  v15 = sub_1C44033C0();
  v16(v15);

  _Block_release(v14);
  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C498D338@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v9 = sub_1C4EFB768();
  sub_1C440BAA8(v8, 1, 1, v9);
  sub_1C4EFBE78();
  result = sub_1C4420C3C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v1)
  {
    v11 = v43;
    v40 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (!sub_1C4EFB718())
        {
          *&v41[0] = v40;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
          v34 = sub_1C4F01048();
          v36 = v35;

          *v11 = v34;
          v11[1] = v36;
          return result;
        }

        v12 = sub_1C4EFBC58();
        sub_1C440BAA8(v6, 1, 1, v9);
        v42 = 0;
        memset(v41, 0, sizeof(v41));
        v13 = sub_1C4EFBC28();
        sub_1C4420C3C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        if (v13 >> 62)
        {
          break;
        }

        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_6;
        }

LABEL_12:
        if (result == 1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1C6940F90](0, v13);
          }

          else
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v37 = *(v13 + 32);
          }

          *&v41[0] = v37;
          sub_1C44FAF1C(&unk_1EC0C06D0, MEMORY[0x1E69A0008]);
          v15 = sub_1C4F02858();
          v17 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v17;
          v39 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v40 + 16);
            sub_1C443D664();
            v40 = v32;
          }

          v19 = *(v40 + 16);
          v20 = v19 + 1;
          if (v19 >= *(v40 + 24) >> 1)
          {
            sub_1C443D664();
            v40 = v33;
          }
        }

        else
        {
          v21 = MEMORY[0x1C6940380](v13, v12);
          v38 = v22;

          v23 = swift_isUniquelyReferenced_nonNull_native();
          v39 = v21;
          if ((v23 & 1) == 0)
          {
            v28 = *(v40 + 16);
            sub_1C443D664();
            v40 = v29;
          }

          v19 = *(v40 + 16);
          v20 = v19 + 1;
          if (v19 >= *(v40 + 24) >> 1)
          {
            sub_1C443D664();
            v40 = v30;
          }
        }

        v25 = v39;
        v24 = v40;
        *(v40 + 16) = v20;
        v26 = v24 + 16 * v19;
        v27 = v38;
        *(v26 + 32) = v25;
        *(v26 + 40) = v27;
      }

      if (v13 < 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v39 = v14;
      if (sub_1C4F02128())
      {
        result = sub_1C4F02128();
        goto LABEL_12;
      }

LABEL_6:
    }
  }

  return result;
}

uint64_t sub_1C498D7E8()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442E8C4;
  v5 = sub_1C43FBC98();

  return v6(v5);
}

uint64_t sub_1C498D88C()
{
  sub_1C43FEAEC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1C4411F54(v6);

  return v8(v7);
}

uint64_t sub_1C498D92C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C498D97C()
{
  sub_1C43FEAEC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1C4411F54(v6);

  return v8(v7);
}

unint64_t sub_1C498DA70()
{
  result = qword_1EDDDBDB0;
  if (!qword_1EDDDBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDB0);
  }

  return result;
}

uint64_t sub_1C498DAC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C498D338(a1);
}

uint64_t sub_1C498DAE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4D1EC90();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C498DB0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C498DAE0(a1);
}

uint64_t sub_1C498DC1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v8 = *(*(v5 + 16) + *a3);
  v11[2] = a2;
  v11[3] = a1;

  v9 = a5(a4, v11);

  return v9;
}

void sub_1C498DC88(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C4EF9798();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1C498DCF8(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v9))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v10, v11, "InternalXPC: starting...");
    sub_1C43FFD18();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  sub_1C43FCEE8(v3, qword_1EDDEBB90);
  sub_1C440AD64();
  sub_1C4430E2C(a1, v1, v12);
  type metadata accessor for Configuration();
  v13 = sub_1C442F270();
  sub_1C440BAA8(v13, v14, v15, v16);
  swift_beginAccess();
  v17 = sub_1C4404050();
  sub_1C45A6EE0(v17, v18);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C448F160();
  v19 = sub_1C49AA56C();
  v20 = qword_1EDE2D270;
  qword_1EDE2D270 = v19;
  v21 = v19;

  if (v21)
  {
    qword_1EDE2D278 = [objc_allocWithZone(type metadata accessor for InternalXPC.Delegate()) init];
    v22 = qword_1EDE2D278;
    swift_unknownObjectRelease();
    [v21 setDelegate_];

    [v21 resume];
  }

  else
  {
    v21 = sub_1C4F00968();
    v23 = sub_1C4F01CE8();
    if (sub_1C4402B64(v23))
    {
      v24 = sub_1C43FCED0();
      sub_1C43FBD24(v24);
      sub_1C43FFFD8(&dword_1C43F8000, v25, v26, "Failed to create Internal XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C498DF3C()
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);

  return sub_1C442B738(v0, qword_1EDDEBB90);
}

uint64_t sub_1C498DF9C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDDEBB90);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  type metadata accessor for Configuration();
  sub_1C43FCF64();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t static InternalXPC.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDEBB90);
  sub_1C440D164();
  return sub_1C446C964(v5, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t static InternalXPC.configuration.setter(uint64_t a1)
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C498E14C(a1, v5);
  swift_endAccess();
  v6 = sub_1C43FBC98();
  return sub_1C4420C3C(v6, v7, &unk_1C4F0F2E0);
}

uint64_t sub_1C498E14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static InternalXPC.configuration.modify())()
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FCEE8(v0, qword_1EDDEBB90);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C498E248@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C498DF3C();
  swift_beginAccess();
  return sub_1C446C964(v2, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t sub_1C498E2A4(uint64_t a1)
{
  v2 = sub_1C498DF3C();
  swift_beginAccess();
  sub_1C498E14C(a1, v2);
  return swift_endAccess();
}

uint64_t InternalXPC.InternalXPCError.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

void sub_1C498E3A0(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DCD8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "InternalXPC: status", v6, 2u);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  sub_1C494B4E4();
  v7 = sub_1C4F01108();
  (a2)[2](a2, v7, 0);

  _Block_release(a2);
}

uint64_t InternalXPC.Server.status(completion:)()
{
  sub_1C444C2AC();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: status", v4, 2u);
    sub_1C43FFD4C();
  }

  v5 = sub_1C494B4E4();
  v0(v5);
}

uint64_t InternalXPC.Server.clearStatus()()
{
  sub_1C43FBCD4();
  v1 = type metadata accessor for Configuration();
  v0[18] = v1;
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v4 = type metadata accessor for Pipeline.StatusStore();
  v0[21] = v4;
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  v0[22] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[23] = v7;
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v10 = _s11StatusStoreVMa();
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v0[26] = sub_1C43FBE7C();
  v13 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C498E98C()
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalXPC: clearStatus");
    sub_1C43FE9D4();
  }

  v108 = v0[21];

  v7 = 0;
  while (v7 != 4)
  {
    v8 = *(&unk_1F43D9C28 + v7 + 32);
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v9 = v0[24];
    v10 = v0[18];
    sub_1C442B738(v0[23], qword_1EDDEBB90);
    sub_1C440D164();
    v11 = sub_1C4404050();
    sub_1C446C964(v11, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v13 = sub_1C440EF74();
    result = sub_1C440175C(v13, v14, v10);
    if (v16)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v17 = v7 + 1;
    v18 = v0[24];
    v19 = v0[22];
    v20 = v0[20];
    sub_1C440E3F8();
    sub_1C499967C(v21, v19, v22);
    v23 = *(v108 + 20);
    *(v19 + v23) = v8;
    sub_1C440AD64();
    sub_1C4430E2C(v19, v20, v24);
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    switch(*(v19 + v23))
    {
      case 1:
        v25 = 0xE400000000000000;
        v26 = 1819047270;
        break;
      case 2:
        v25 = 0xE500000000000000;
        v26 = 0x61746C6564;
        break;
      case 3:
        v26 = sub_1C44133C0();
        v25 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    v27 = v0[20];
    MEMORY[0x1C6940010](v26, v25);

    MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
    v28 = type metadata accessor for KeyValueStore();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1C4404050();
    KeyValueStore.init(config:domain:)(v31, v32, 0x80000001C4FAAFC0);
    v111 = v17;
    v33 = sub_1C4AD27B0();
    v34 = *(v33 + 16);
    if (v34)
    {
      v109 = v23;
      v110 = v19;
      sub_1C4461FF0();
      v35._rawValue = 0xD000000000000010;
      v36 = v33 + 32;
      do
      {
        sub_1C442E860(v36, (v0 + 2));
        v37 = v0[6];
        sub_1C4409678(v0 + 2, v0[5]);
        v38 = sub_1C44409FC();
        v40 = v39(v38);
        v42 = v41;
        sub_1C440962C(v0 + 2);
        v43 = MEMORY[0xD000000000000020];
        if (MEMORY[0xD000000000000020] >= MEMORY[0xD000000000000028] >> 1)
        {
          sub_1C43FCFE8(MEMORY[0xD000000000000028]);
          sub_1C44CD9C0();
        }

        MEMORY[0xD000000000000020] = v43 + 1;
        v44 = 16 * v43 - 0x2FFFFFFFFFFFFFF0;
        *(v44 + 32) = v40;
        *(v44 + 40) = v42;
        v36 += 40;
        --v34;
      }

      while (v34);

      v23 = v109;
      v19 = v110;
    }

    else
    {

      v35._rawValue = MEMORY[0x1E69E7CC0];
    }

    KeyValueStore.delete(keys:)(v35);
    v45 = v0[22];
    if (v46)
    {
      sub_1C445E8A0();
      sub_1C44BCA84(v45, v87);

LABEL_40:
      v89 = v0[25];
      v88 = v0[26];
      v90 = v0[24];
      v91 = v0[22];
      v93 = v0[19];
      v92 = v0[20];

      v94 = sub_1C4409E50();
      goto LABEL_41;
    }

    v47 = v0[19];

    sub_1C440AD64();
    v48 = sub_1C4410428();
    sub_1C4430E2C(v48, v49, v50);
    v51 = 0xE700000000000000;
    v52 = 0x6E776F6E6B6E75;
    switch(*(v19 + v23))
    {
      case 1:
        v51 = 0xE400000000000000;
        v52 = 1819047270;
        break;
      case 2:
        v51 = 0xE500000000000000;
        v52 = 0x61746C6564;
        break;
      case 3:
        v52 = sub_1C44133C0();
        v51 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    v53 = v0[19];
    MEMORY[0x1C6940010](v52, v51);

    MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
    v54 = *(v28 + 48);
    v55 = *(v28 + 52);
    swift_allocObject();
    sub_1C445FDE4();
    KeyValueStore.init(config:domain:)(v56, v57, v58);
    v59 = sub_1C4AD27B0();
    v60 = *(v59 + 16);
    if (v60)
    {
      sub_1C4461FF0();
      v61._rawValue = 0xD000000000000010;
      v62 = v59 + 32;
      do
      {
        sub_1C442E860(v62, (v0 + 7));
        v63 = v0[11];
        sub_1C4409678(v0 + 7, v0[10]);
        v64 = sub_1C44409FC();
        v66 = v65(v64);
        v68 = v67;
        sub_1C440962C(v0 + 7);
        v69 = MEMORY[0xD000000000000020];
        if (MEMORY[0xD000000000000020] >= MEMORY[0xD000000000000028] >> 1)
        {
          sub_1C43FCFE8(MEMORY[0xD000000000000028]);
          sub_1C44CD9C0();
        }

        MEMORY[0xD000000000000020] = v69 + 1;
        v70 = 16 * v69 - 0x2FFFFFFFFFFFFFF0;
        *(v70 + 32) = v66;
        *(v70 + 40) = v68;
        v62 += 40;
        --v60;
      }

      while (v60);
    }

    else
    {

      v61._rawValue = MEMORY[0x1E69E7CC0];
    }

    KeyValueStore.delete(keys:)(v61);
    v71 = v0[22];
    sub_1C445E8A0();
    sub_1C44BCA84(v72, v73);

    v7 = v111;
    if (v74)
    {
      goto LABEL_40;
    }
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v75 = v0[25];
  v76 = v0[18];
  sub_1C442B738(v0[23], qword_1EDDEBB90);
  sub_1C440D164();
  v77 = sub_1C4404050();
  sub_1C446C964(v77, v78, v79, v80);
  v81 = sub_1C440EF74();
  result = sub_1C440175C(v81, v82, v76);
  if (v16)
  {
    goto LABEL_48;
  }

  v83 = v0[25];
  v84 = v0[26];
  sub_1C440E3F8();
  sub_1C499967C(v85, v84, v86);
  sub_1C4C6ABF8(1);
  sub_1C4C6ABF8(0);
  v96 = sub_1C4F00968();
  v97 = sub_1C4F01CF8();
  if (sub_1C4402B64(v97))
  {
    v99 = sub_1C43FCED0();
    sub_1C43FBD24(v99);
    sub_1C43FFFD8(&dword_1C43F8000, v100, v101, "InternalXPC: clearStatus: done");
    sub_1C43FE9D4();
  }

  v103 = v0[25];
  v102 = v0[26];
  v104 = v0[24];
  v105 = v0[22];
  v107 = v0[19];
  v106 = v0[20];

  sub_1C44BCA84(v102, _s11StatusStoreVMa);

  sub_1C43FBCF0();
  v94 = 1;
LABEL_41:

  return v95(v94);
}

uint64_t sub_1C498F168(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C498F20C;

  return InternalXPC.Server.clearStatus()();
}

uint64_t sub_1C498F20C(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[4];
  v9 = v5[2];
  v10 = *v2;
  *v7 = *v2;

  v11 = v5[3];
  if (v3)
  {
    v12 = sub_1C4EF9798();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v13 = v10[1];

  return v13();
}

void sub_1C498F394(uint64_t a1, void (**a2)(void, void, void))
{
  v43[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1C4F01188();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v42 - v7;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DCD8);
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C43F8000, v10, v11, "InternalXPC: stats", v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v13 = sub_1C442B738(v5, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v13, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v14 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v8, 1, v14) == 1)
  {
    __break(1u);
  }

  sub_1C4B6AFD4();
  sub_1C44BCA84(v8, type metadata accessor for Configuration);
  v28 = objc_autoreleasePoolPush();
  v29 = objc_opt_self();
  v30 = sub_1C4F00EC8();
  v43[0] = 0;
  v31 = [v29 dataWithJSONObject:v30 options:3 error:v43];

  v32 = v43[0];
  if (v31)
  {
    v33 = sub_1C4EF9A68();
    v35 = v34;

    objc_autoreleasePoolPop(v28);
    sub_1C4F01178();
    sub_1C4F01158();
    if (v36)
    {
      v37 = sub_1C4F01108();
      (a2)[2](a2, v37, 0);

      sub_1C4434000(v33, v35);

      goto LABEL_13;
    }

    sub_1C4999628();
    v40 = swift_allocError();
    v41 = sub_1C4EF9798();
    (a2)[2](a2, 0, v41);

    sub_1C4434000(v33, v35);
    v26 = v40;
  }

  else
  {
    v38 = v32;
    v39 = sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v28);
    v15 = v39;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43[0] = v19;
      *v18 = 136315138;
      v42[1] = v39;
      v20 = v39;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v21 = sub_1C4F01198();
      v23 = sub_1C441D828(v21, v22, v43);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1C43F8000, v16, v17, "InternalXPC: stats: failed: %s", v18, 0xCu);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    v24 = v39;
    v25 = sub_1C4EF9798();
    (a2)[2](a2, 0, v25);

    v26 = v39;
  }

LABEL_13:
  _Block_release(a2);
  v27 = *MEMORY[0x1E69E9840];
}

void InternalXPC.Server.stats(completion:)()
{
  sub_1C444C2AC();
  v52[4] = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F01188();
  v2 = sub_1C43FBD18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v51 - v9;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v11 = sub_1C4F00978();
  sub_1C43FCEE8(v11, qword_1EDE2DCD8);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1C43FCED0();
    *v14 = 0;
    _os_log_impl(&dword_1C43F8000, v12, v13, "InternalXPC: stats", v14, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v15 = sub_1C442B738(v5, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C446C964(v15, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v16 = type metadata accessor for Configuration();
  sub_1C4402E68(v10, v17, v16);
  if (v18)
  {
    __break(1u);
  }

  sub_1C4B6AFD4();
  sub_1C4419B1C();
  sub_1C44BCA84(v10, v36);
  v37 = objc_autoreleasePoolPush();
  v38 = objc_opt_self();
  v39 = sub_1C4F00EC8();
  v52[0] = 0;
  v40 = [v38 dataWithJSONObject:v39 options:3 error:v52];

  v41 = v52[0];
  if (v40)
  {
    v42 = sub_1C4EF9A68();
    v44 = v43;

    objc_autoreleasePoolPop(v37);
    sub_1C4F01178();
    v45 = sub_1C4F01158();
    v46 = v45;
    if (v47)
    {
      v0(v45);
      sub_1C4434000(v42, v44);

      goto LABEL_13;
    }

    sub_1C4999628();
    v50 = swift_allocError();
    (v0)(v46, 0, v50);
    sub_1C4434000(v42, v44);
    v34 = v50;
  }

  else
  {
    v48 = v41;
    v49 = sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v37);
    v19 = v49;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_1C43FD084();
      v23 = sub_1C43FFD34();
      v52[0] = v23;
      *v22 = 136315138;
      v51[1] = v49;
      v24 = v49;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v25 = sub_1C4F01198();
      v27 = sub_1C441D828(v25, v26, v52);

      *(v22 + 4) = v27;
      sub_1C4415A90();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_1C440962C(v23);
      sub_1C43FFD18();
      sub_1C43FEA20();
    }

    v33 = v49;
    (v0)(0, 0, v49);

    v34 = v49;
  }

LABEL_13:
  v35 = *MEMORY[0x1E69E9840];
}

void sub_1C498FD90(uint64_t a1, uint64_t a2, void *a3)
{
  v326 = a1;
  v322 = type metadata accessor for GraphTriple(0);
  v314 = *(v322 - 8);
  v4 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v322);
  *&v321 = &v279 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v315 = (&v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v316 = (&v279 - v10);
  v329 = type metadata accessor for Source();
  v11 = *(*(v329 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v329);
  v298 = &v279 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v327 = (&v279 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v325 = (&v279 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v279 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v313 = (&v279 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v297 = &v279 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v323 = &v279 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v279 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v328 = &v279 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v308 = (&v279 - v32);
  v318 = type metadata accessor for EventTriple(0);
  v311 = *(v318 - 8);
  v33 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v317 = &v279 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v291 = &v279 - v37;
  v309 = sub_1C4EFDE98();
  v300 = *(v309 - 8);
  v38 = *(v300 + 64);
  v39 = MEMORY[0x1EEE9AC00](v309);
  v281 = &v279 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v284 = (&v279 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v296 = &v279 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v282 = &v279 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v286 = (&v279 - v47);
  v48 = sub_1C4EFDE88();
  v294 = *(v48 - 8);
  v295 = v48;
  v49 = *(v294 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v293 = &v279 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v292 = &v279 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v306 = &v279 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v305 = &v279 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v320 = &v279 - v58;
  v59 = sub_1C4EFDC98();
  v288 = *(v59 - 8);
  v289 = v59;
  v60 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v287 = &v279 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v283 = &v279 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v290 = (&v279 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v301 = &v279 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v285 = &v279 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  *&v303 = &v279 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v302 = &v279 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v304 = &v279 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v310 = &v279 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  p_info = (&v279 - v81);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v279 - v83;
  v319 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v85 = *(*(v319 - 1) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v87 = (&v279 - v86);
  if (qword_1EDDFA678 != -1)
  {
    goto LABEL_257;
  }

  while (1)
  {
    v88 = sub_1C4F00978();
    v89 = sub_1C442B738(v88, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v307 = v89;
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CF8();

    v92 = os_log_type_enabled(v90, v91);
    v324 = v29;
    v312 = v84;
    v299 = a3;
    if (v92)
    {
      v93 = p_info;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v337 = v95;
      *v94 = 136315138;
      v96 = sub_1C4F00EE8();
      v98 = sub_1C441D828(v96, v97, &v337);

      *(v94 + 4) = v98;
      v84 = v312;
      _os_log_impl(&dword_1C43F8000, v90, v91, "InternalXPC: triples query: %s", v94, 0xCu);
      sub_1C440962C(v95);
      v99 = v95;
      v29 = v324;
      MEMORY[0x1C6942830](v99, -1, -1);
      v100 = v94;
      p_info = v93;
      MEMORY[0x1C6942830](v100, -1, -1);
    }

    v101 = v323;
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v102 = sub_1C442B738(v319, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C446C964(v102, v87, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v103 = type metadata accessor for Configuration();
    if (sub_1C44157D4(v87, 1, v103) == 1)
    {
      break;
    }

    v104 = type metadata accessor for GraphStore();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    v107 = GraphStore.init(config:)(v87);
    v279 = p_info;
    v280 = v107;
    v108 = v309;
    sub_1C440BAA8(v84, 1, 1, v309);
    v109 = sub_1C44735D4(0x686372616573, 0xE600000000000000, v326);
    v87 = &qword_1C4F0D000;
    if (v110)
    {
      v111 = v109;
      v112 = v110;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v111;
      *(inited + 40) = v112;
      sub_1C4499940(inited, v114, v115, v116, v117, v118, v119, v120, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
      v121 = v287;
      v122 = v288;
      v123 = v289;
      (*(v288 + 104))(v287, *MEMORY[0x1E69A9500], v289);
      v124 = v279;
      sub_1C4EFDC88();

      v125 = v123;
      v87 = &qword_1C4F0D000;
      (*(v122 + 8))(v121, v125);
      v126 = v312;
      sub_1C4420C3C(v312, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C440BAA8(v124, 0, 1, v108);
      sub_1C49996D8(v124, v126);
    }

    sub_1C440BAA8(v310, 1, 1, v108);
    sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v326);
    if (v127 || (sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v326), v128 = v300, v129) || (sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v326), v130))
    {

      sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v326);
      if (v131)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v132 = swift_initStackObject();
        *(v132 + 16) = xmmword_1C4F0D130;
        v133 = sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v326);
        if (!v134)
        {
          goto LABEL_259;
        }

        *(v132 + 32) = v133;
        *(v132 + 40) = v134;
        sub_1C448DE08(v132);
        v319 = v135;
      }

      else
      {
        v319 = 0;
      }

      sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v326);
      if (v136)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v137 = swift_initStackObject();
        *(v137 + 16) = xmmword_1C4F0D130;
        v138 = sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v326);
        if (!v139)
        {
          goto LABEL_260;
        }

        *(v137 + 32) = v138;
        *(v137 + 40) = v139;
        sub_1C448DE08(v137);
        v141 = v140;
      }

      else
      {
        v141 = 0;
      }

      sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v326);
      v289 = v141;
      if (v142)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v143 = swift_initStackObject();
        *(v143 + 16) = xmmword_1C4F0D130;
        v144 = sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v326);
        if (!v145)
        {
          goto LABEL_261;
        }

        *(v143 + 32) = v144;
        *(v143 + 40) = v145;
        sub_1C448DE08(v143);
        v326 = v146;
      }

      else
      {
        v326 = 0;
      }

      v147 = v294;
      v148 = v295;
      v149 = *MEMORY[0x1E69A95C0];
      v150 = *(v294 + 104);
      v150(v320, v149, v295);
      v150(v305, v149, v148);
      v150(v306, v149, v148);
      v151 = v292;
      v150(v292, v149, v148);
      v152 = v293;
      v150(v293, v149, v148);
      v153 = v305;
      sub_1C4EFDCE8();

      v154 = *(v147 + 8);
      v87 = (v147 + 8);
      v154(v152, v148);
      v154(v151, v148);
      v154(v306, v148);
      v154(v153, v148);
      v154(v320, v148);
      v155 = v310;
      sub_1C4420C3C(v310, &qword_1EC0BE4F0, &qword_1C4F37248);
      v156 = v304;
      v108 = v309;
      sub_1C440BAA8(v304, 0, 1, v309);
      sub_1C49996D8(v156, v155);
      v101 = v323;
      v29 = v324;
      v128 = v300;
    }

    sub_1C440BAA8(v302, 1, 1, v108);
    v157 = v312;
    v158 = v303;
    sub_1C446C964(v312, v303, &qword_1EC0BE4F0, &qword_1C4F37248);
    if (sub_1C44157D4(v158, 1, v108) != 1)
    {
      v159 = *(v128 + 32);
      v87 = v286;
      v159(v286, v158, v108);
      v158 = v285;
      sub_1C446C964(v310, v285, &qword_1EC0BE4F0, &qword_1C4F37248);
      if (sub_1C44157D4(v158, 1, v108) != 1)
      {
        v165 = v159;
        v166 = v282;
        v165(v282, v158, v108);
        p_info = v279;
        sub_1C4EFDCB8();
        v167 = *(v128 + 8);
        v167(v166, v108);
        v167(v87, v108);
        v161 = v302;
        sub_1C4420C3C(v302, &qword_1EC0BE4F0, &qword_1C4F37248);
        sub_1C440BAA8(p_info, 0, 1, v108);
        sub_1C49996D8(p_info, v161);
        goto LABEL_35;
      }

      (*(v128 + 8))(v87, v108);
      v157 = v312;
    }

    sub_1C4420C3C(v158, &qword_1EC0BE4F0, &qword_1C4F37248);
    p_info = v290;
    sub_1C446C964(v157, v290, &qword_1EC0BE4F0, &qword_1C4F37248);
    v108 = v309;
    if (sub_1C44157D4(p_info, 1, v309) == 1)
    {
      sub_1C4420C3C(p_info, &qword_1EC0BE4F0, &qword_1C4F37248);
      v160 = v283;
      sub_1C446C964(v310, v283, &qword_1EC0BE4F0, &qword_1C4F37248);
      if (sub_1C44157D4(v160, 1, v108) == 1)
      {
        sub_1C4420C3C(v160, &qword_1EC0BE4F0, &qword_1C4F37248);
        v161 = v302;
        goto LABEL_35;
      }

      v168 = v302;
      sub_1C4420C3C(v302, &qword_1EC0BE4F0, &qword_1C4F37248);
      v169 = *(v300 + 32);
      v170 = v160;
      v171 = v281;
      v169(v281, v170, v309);
      v169(v168, v171, v309);
      v161 = v168;
      v108 = v309;
      v164 = v161;
    }

    else
    {
      v162 = v302;
      sub_1C4420C3C(v302, &qword_1EC0BE4F0, &qword_1C4F37248);
      v163 = *(v300 + 32);
      v87 = v284;
      v163(v284, p_info, v108);
      v163(v162, v87, v108);
      v161 = v162;
      v164 = v162;
    }

    sub_1C440BAA8(v164, 0, 1, v108);
LABEL_35:
    v172 = v301;
    sub_1C446C964(v161, v301, &qword_1EC0BE4F0, &qword_1C4F37248);
    if (sub_1C44157D4(v172, 1, v108) == 1)
    {
      sub_1C4420C3C(v172, &qword_1EC0BE4F0, &qword_1C4F37248);
      v173 = sub_1C4F00968();
      v174 = sub_1C4F01CD8();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 0;
        _os_log_impl(&dword_1C43F8000, v173, v174, "InternalXPC: triples query: failed to generate query.", v175, 2u);
        MEMORY[0x1C6942830](v175, -1, -1);
      }

      sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v176 = sub_1C4F01658();
      v177 = sub_1C4F01658();
      v178 = v299;
      v299[2](v299, v176, v177);

LABEL_248:
      sub_1C4420C3C(v302, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C4420C3C(v310, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C4420C3C(v312, &qword_1EC0BE4F0, &qword_1C4F37248);
      _Block_release(v178);
      return;
    }

    v179 = MEMORY[0x1E69E7CC0];
    v180 = v296;
    (*(v300 + 32))(v296, v172, v108);
    v181 = sub_1C4EFF8F8();
    v182 = v291;
    sub_1C440BAA8(v291, 1, 1, v181);
    v183 = sub_1C498DC1C(v180, v182, &OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C4999CC8, sub_1C4505B00);
    sub_1C4420C3C(v182, &qword_1EC0BAA00, &unk_1C4F17400);
    v184 = *(v183 + 16);
    if (!v184)
    {

      v320 = MEMORY[0x1E69E7CC0];
LABEL_144:
      v234 = v291;
      sub_1C440BAA8(v291, 1, 1, v181);
      v84 = sub_1C498DC1C(v296, v234, &OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C4999CAC, sub_1C49A52CC);
      sub_1C4420C3C(v234, &qword_1EC0BAA00, &unk_1C4F17400);
      a3 = *(v84 + 16);
      v20 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v334 = MEMORY[0x1E69E7CC0];
        sub_1C459E7C8();
        v235 = 0;
        v325 = (v84 + ((*(v311 + 80) + 32) & ~*(v311 + 80)));
        v87 = v334;
        v322 = 0x80000001C4F86600;
        v314 = 0x80000001C4F86630;
        v321 = xmmword_1C4F23100;
        v319 = v84;
        v315 = a3;
        while (v235 < *(v84 + 16))
        {
          v326 = (v235 + 1);
          v327 = v87;
          v236 = v317;
          sub_1C4430E2C(v325 + *(v311 + 72) * v235, v317, type metadata accessor for EventTriple);
          sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
          a3 = swift_allocObject();
          *(a3 + 1) = v321;
          *(a3 + 4) = 0x7463656A627573;
          *(a3 + 5) = 0xE700000000000000;
          *(a3 + 6) = sub_1C4EFF048();
          *(a3 + 7) = v237;
          v238 = MEMORY[0x1E69E6158];
          *(a3 + 9) = MEMORY[0x1E69E6158];
          *(a3 + 10) = 0x7461636964657270;
          *(a3 + 11) = 0xE900000000000065;
          p_info = v20;
          v239 = v318;
          v240 = v236 + *(v318 + 20);
          *(a3 + 12) = sub_1C4EFEB68();
          *(a3 + 13) = v241;
          *(a3 + 15) = v238;
          strcpy(a3 + 128, "relationshipId");
          *(a3 + 143) = -18;
          v242 = v236 + v239[6];
          *(a3 + 18) = sub_1C4EFF848();
          *(a3 + 19) = v243;
          *(a3 + 21) = v238;
          *(a3 + 22) = 0xD000000000000015;
          *(a3 + 23) = v322;
          v244 = v236 + v239[7];
          *(a3 + 24) = sub_1C4EFEB68();
          *(a3 + 25) = v245;
          *(a3 + 27) = v238;
          *(a3 + 28) = 0x7463656A626FLL;
          *(a3 + 29) = 0xE600000000000000;
          v246 = (v236 + v239[8]);
          v247 = v246[1];
          *(a3 + 30) = *v246;
          *(a3 + 31) = v247;
          *(a3 + 33) = v238;
          v87 = v316;
          *(a3 + 34) = 0x73656372756F73;
          *(a3 + 35) = 0xE700000000000000;
          v84 = *(v236 + v239[9]);
          v335 = p_info;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44CD9C0();
          v248 = v335;
          v20 = 1;
          while (1)
          {
            v249 = v248;
LABEL_149:
            if (qword_1EDDFA6A8 != -1)
            {
              swift_once();
            }

            if (qword_1EDE2DCF0 < v20)
            {
              break;
            }

            switch(v20)
            {
              case 1:
                if (qword_1EDDFED28 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &unk_1EDDFD088;
                goto LABEL_227;
              case 2:
                if (qword_1EDDFD0D0 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD0D8;
                goto LABEL_227;
              case 6:
                if (qword_1EDDFD0A8 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD0B0;
                goto LABEL_227;
              case 9:
                if (qword_1EDDFD150 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD158;
                goto LABEL_227;
              case 11:
                if (qword_1EDDFD068 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD070;
                goto LABEL_227;
              case 12:
                if (qword_1EDDFD110 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD118;
                goto LABEL_227;
              case 14:
                if (qword_1EDDFED38 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD0F0;
                goto LABEL_227;
              case 16:
                if (qword_1EDDFD2F0 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD2F8;
                goto LABEL_227;
              case 17:
                if (qword_1EDDFED08 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFED10;
                goto LABEL_227;
              case 18:
                if (qword_1EDDFD040 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD048;
                goto LABEL_227;
              case 19:
                if (qword_1EDDFD268 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD270;
                goto LABEL_227;
              case 21:
                if (qword_1EDDFD130 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD138;
                goto LABEL_227;
              case 22:
                if (qword_1EDDFD178 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD180;
                goto LABEL_227;
              case 23:
                if (qword_1EDDFED40 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD2A8;
                goto LABEL_227;
              case 24:
                if (qword_1EDDFD218 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD220;
                goto LABEL_227;
              case 25:
                if (qword_1EDDFD240 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD248;
                goto LABEL_227;
              case 27:
                if (qword_1EDDFD318 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD320;
                goto LABEL_227;
              case 28:
                if (qword_1EDDFD340 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD348;
                goto LABEL_227;
              case 29:
                if (qword_1EDDFD2C8 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = qword_1EDDFD2D0;
                goto LABEL_227;
              case 31:
                if (qword_1EDDFD1F0 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD1F8;
                goto LABEL_227;
              case 32:
                if (qword_1EDDFD288 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD290;
                goto LABEL_227;
              case 33:
                if (qword_1EDDFD1A0 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD1A8;
                goto LABEL_227;
              case 34:
                if (qword_1EDDFD1C8 != -1)
                {
                  swift_once();
                }

                v250 = v329;
                v251 = &qword_1EDDFD1D0;
LABEL_227:
                v256 = sub_1C442B738(v250, v251);
                sub_1C4430E2C(v256, v101, type metadata accessor for Source);
                goto LABEL_228;
              default:
                if (qword_1EDDFDCF8 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                if (!qword_1EDDFF3C8)
                {
                  sub_1C440BAA8(v87, 1, 1, v329);
LABEL_238:
                  sub_1C4420C3C(v87, &unk_1EC0C0760, &qword_1C4F170D0);
                  v216 = __OFADD__(v20++, 1);
                  v248 = v249;
                  if (v216)
                  {
                    goto LABEL_256;
                  }

                  goto LABEL_149;
                }

                v252 = (*(off_1EDDFF3D0 + 2))();
                (*(v253 + 16))(v20, v252, v253);
                if (sub_1C44157D4(v87, 1, v329) == 1)
                {
                  goto LABEL_238;
                }

                v254 = v297;
                sub_1C499967C(v87, v297, type metadata accessor for Source);
                v255 = v254;
                v29 = v324;
                sub_1C499967C(v255, v101, type metadata accessor for Source);
LABEL_228:
                sub_1C499967C(v101, v29, type metadata accessor for Source);
                sub_1C499967C(v29, v328, type metadata accessor for Source);
                v257 = v20 - 1;
                if (__OFSUB__(v20, 1))
                {
                  goto LABEL_251;
                }

                v216 = __OFADD__(v20++, 1);
                if (v216)
                {
                  goto LABEL_252;
                }

                v258 = v257 > 0x40;
                if (v257 >= 0x40)
                {
                  v259 = 0;
                }

                else
                {
                  v259 = 1 << v257;
                }

                if (v258)
                {
                  v259 = 0;
                }

                if ((v259 & v84) < 1)
                {
                  v248 = v249;
                  sub_1C44BCA84(v328, type metadata accessor for Source);
                  goto LABEL_149;
                }

                v260 = v308;
                sub_1C499967C(v328, v308, type metadata accessor for Source);
                v262 = *v260;
                v261 = v260[1];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v263 = v260;
                v248 = v249;
                sub_1C44BCA84(v263, type metadata accessor for Source);
                v335 = v249;
                v264 = *(v249 + 16);
                p_info = (v264 + 1);
                if (v264 >= *(v249 + 24) >> 1)
                {
                  sub_1C44CD9C0();
                  v248 = v335;
                }

                *(v248 + 16) = p_info;
                v265 = v248 + 16 * v264;
                *(v265 + 32) = v262;
                *(v265 + 40) = v261;
                v87 = v316;
                v101 = v323;
                v29 = v324;
                break;
            }
          }

          v266 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          *(a3 + 36) = v248;
          *(a3 + 39) = v266;
          *(a3 + 40) = 0x6E656469666E6F63;
          *(a3 + 41) = 0xEA00000000006563;
          v268 = v317;
          v267 = v318;
          *(a3 + 42) = *(v317 + *(v318 + 40));
          v269 = MEMORY[0x1E69E63B0];
          *(a3 + 45) = MEMORY[0x1E69E63B0];
          *(a3 + 46) = 0x6D617473656D6974;
          *(a3 + 47) = 0xE900000000000070;
          *(a3 + 48) = *(v268 + *(v267 + 48));
          *(a3 + 51) = v269;
          *(a3 + 52) = 0xD000000000000010;
          *(a3 + 53) = v314;
          v270 = (v268 + *(v267 + 44));
          v271 = *v270;
          v272 = v270[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v273 = objc_autoreleasePoolPush();
          v335 = v271;
          v336 = v272;
          v330 = 30;
          v331 = 0xE100000000000000;
          sub_1C4415EA8();
          v274 = sub_1C4F01FC8();

          objc_autoreleasePoolPop(v273);
          *(a3 + 57) = v266;
          *(a3 + 54) = v274;
          v275 = sub_1C4F00F28();
          sub_1C44BCA84(v268, type metadata accessor for EventTriple);
          v87 = v327;
          v334 = v327;
          v276 = v327[2];
          if (v276 >= v327[3] >> 1)
          {
            sub_1C459E7C8();
            v87 = v334;
          }

          v87[2] = v276 + 1;
          v87[v276 + 4] = v275;
          v235 = v326;
          a3 = v315;
          v29 = v324;
          v20 = MEMORY[0x1E69E7CC0];
          v84 = v319;
          if (v326 == v315)
          {
            goto LABEL_247;
          }
        }

        goto LABEL_255;
      }

LABEL_247:

      sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v277 = sub_1C4F01658();
      v278 = sub_1C4F01658();
      v178 = v299;
      v299[2](v299, v277, v278);

      (*(v300 + 8))(v296, v309);
      goto LABEL_248;
    }

    v295 = v181;
    v330 = v179;
    a3 = &unk_1C4F23000;
    v84 = "relationshipPredicate";
    v306 = v184;
    v307 = v183;
    sub_1C459E7C8();
    v185 = v307;
    v186 = 0;
    v305 = (v307 + ((*(v314 + 80) + 32) & ~*(v314 + 80)));
    v187 = v330;
    v304 = 0x80000001C4F86600;
    v301 = 0x80000001C4F86630;
    v303 = xmmword_1C4F23100;
    while (1)
    {
      if (v186 >= *(v185 + 16))
      {
        goto LABEL_253;
      }

      v319 = (v186 + 1);
      v320 = v187;
      v188 = v321;
      sub_1C4430E2C(&v305[*(v314 + 72) * v186], v321, type metadata accessor for GraphTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      a3 = swift_initStackObject();
      *(a3 + 1) = v303;
      *(a3 + 4) = 0x7463656A627573;
      *(a3 + 5) = 0xE700000000000000;
      *(a3 + 6) = sub_1C4EFF048();
      *(a3 + 7) = v189;
      v29 = MEMORY[0x1E69E6158];
      *(a3 + 9) = MEMORY[0x1E69E6158];
      *(a3 + 10) = 0x7461636964657270;
      *(a3 + 11) = 0xE900000000000065;
      v190 = v322;
      v191 = v188 + *(v322 + 20);
      *(a3 + 12) = sub_1C4EFEB68();
      *(a3 + 13) = v192;
      *(a3 + 15) = v29;
      strcpy(a3 + 128, "relationshipId");
      *(a3 + 143) = -18;
      v193 = v188 + v190[6];
      *(a3 + 18) = sub_1C4EFF848();
      *(a3 + 19) = v194;
      *(a3 + 21) = v29;
      *(a3 + 22) = 0xD000000000000015;
      *(a3 + 23) = v304;
      v195 = v188 + v190[7];
      *(a3 + 24) = sub_1C4EFEB68();
      *(a3 + 25) = v196;
      *(a3 + 27) = v29;
      *(a3 + 28) = 0x7463656A626FLL;
      *(a3 + 29) = 0xE600000000000000;
      v197 = (v188 + v190[8]);
      v198 = v197[1];
      *(a3 + 30) = *v197;
      *(a3 + 31) = v198;
      *(a3 + 33) = v29;
      *(a3 + 34) = 0x73656372756F73;
      *(a3 + 35) = 0xE700000000000000;
      v84 = *(v188 + v190[9]);
      v332 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0();
      v87 = v332;
      v199 = 1;
      v200 = v327;
LABEL_43:
      p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
      v201 = &dword_1EDE2D000;
      v326 = v87;
LABEL_44:
      if (p_info[213] != -1)
      {
        swift_once();
      }

      if (*(v201 + 414) >= v199)
      {
        break;
      }

      v225 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      *(a3 + 36) = v87;
      *(a3 + 39) = v225;
      *(a3 + 40) = 0x6E656469666E6F63;
      *(a3 + 41) = 0xEA00000000006563;
      v226 = v322;
      v227 = v321;
      *(a3 + 42) = *(v321 + *(v322 + 40));
      v228 = MEMORY[0x1E69E63B0];
      *(a3 + 45) = MEMORY[0x1E69E63B0];
      *(a3 + 46) = 0x6D617473656D6974;
      *(a3 + 47) = 0xE900000000000070;
      *(a3 + 48) = *(v227 + *(v226 + 48));
      *(a3 + 51) = v228;
      *(a3 + 52) = 0xD000000000000010;
      *(a3 + 53) = v301;
      v229 = (v227 + *(v226 + 44));
      v230 = *v229;
      v84 = v229[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v231 = objc_autoreleasePoolPush();
      v332 = v230;
      v333 = v84;
      v335 = 30;
      v336 = 0xE100000000000000;
      sub_1C4415EA8();
      v87 = MEMORY[0x1E69E6158];
      v232 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v231);
      *(a3 + 57) = v225;
      *(a3 + 54) = v232;
      a3 = sub_1C4F00F28();
      sub_1C44BCA84(v227, type metadata accessor for GraphTriple);
      v187 = v320;
      v330 = v320;
      v233 = *(v320 + 2);
      if (v233 >= *(v320 + 3) >> 1)
      {
        sub_1C459E7C8();
        v187 = v330;
      }

      *(v187 + 2) = v233 + 1;
      *&v187[8 * v233 + 32] = a3;
      v186 = v319;
      v185 = v307;
      v101 = v323;
      v29 = v324;
      if (v319 == v306)
      {
        v320 = v187;

        v181 = v295;
        goto LABEL_144;
      }
    }

    switch(v199)
    {
      case 1:
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &unk_1EDDFD088;
        goto LABEL_122;
      case 2:
        if (qword_1EDDFD0D0 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD0D8;
        goto LABEL_122;
      case 6:
        if (qword_1EDDFD0A8 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD0B0;
        goto LABEL_122;
      case 9:
        if (qword_1EDDFD150 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD158;
        goto LABEL_122;
      case 11:
        if (qword_1EDDFD068 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD070;
        goto LABEL_122;
      case 12:
        if (qword_1EDDFD110 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD118;
        goto LABEL_122;
      case 14:
        if (qword_1EDDFED38 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD0F0;
        goto LABEL_122;
      case 16:
        if (qword_1EDDFD2F0 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD2F8;
        goto LABEL_122;
      case 17:
        if (qword_1EDDFED08 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFED10;
        goto LABEL_122;
      case 18:
        if (qword_1EDDFD040 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD048;
        goto LABEL_122;
      case 19:
        if (qword_1EDDFD268 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD270;
        goto LABEL_122;
      case 21:
        if (qword_1EDDFD130 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD138;
        goto LABEL_122;
      case 22:
        if (qword_1EDDFD178 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD180;
        goto LABEL_122;
      case 23:
        if (qword_1EDDFED40 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD2A8;
        goto LABEL_122;
      case 24:
        if (qword_1EDDFD218 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD220;
        goto LABEL_122;
      case 25:
        if (qword_1EDDFD240 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD248;
        goto LABEL_122;
      case 27:
        if (qword_1EDDFD318 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD320;
        goto LABEL_122;
      case 28:
        if (qword_1EDDFD340 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD348;
        goto LABEL_122;
      case 29:
        if (qword_1EDDFD2C8 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = qword_1EDDFD2D0;
        goto LABEL_122;
      case 31:
        if (qword_1EDDFD1F0 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD1F8;
        goto LABEL_122;
      case 32:
        if (qword_1EDDFD288 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD290;
        goto LABEL_122;
      case 33:
        if (qword_1EDDFD1A0 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD1A8;
        goto LABEL_122;
      case 34:
        if (qword_1EDDFD1C8 != -1)
        {
          swift_once();
        }

        v202 = v329;
        v203 = &qword_1EDDFD1D0;
LABEL_122:
        v213 = sub_1C442B738(v202, v203);
        sub_1C4430E2C(v213, v200, type metadata accessor for Source);
        v212 = v200;
        goto LABEL_123;
      default:
        if (qword_1EDDFDCF8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!qword_1EDDFF3C8)
        {
          v209 = v315;
          sub_1C440BAA8(v315, 1, 1, v329);
          goto LABEL_133;
        }

        v204 = (*(off_1EDDFF3D0 + 2))();
        v29 = v84;
        v206 = v20;
        v207 = p_info;
        v208 = v315;
        (*(v205 + 16))(v199, v204, v205);
        v209 = v208;
        p_info = v207;
        v20 = v206;
        v84 = v29;
        if (sub_1C44157D4(v209, 1, v329) == 1)
        {
LABEL_133:
          sub_1C4420C3C(v209, &unk_1EC0C0760, &qword_1C4F170D0);
          v216 = __OFADD__(v199++, 1);
          v200 = v327;
          if (v216)
          {
            goto LABEL_254;
          }

          goto LABEL_44;
        }

        v210 = v298;
        sub_1C499967C(v209, v298, type metadata accessor for Source);
        v211 = v210;
        v201 = &dword_1EDE2D000;
        v212 = v327;
        sub_1C499967C(v211, v327, type metadata accessor for Source);
LABEL_123:
        v214 = v212;
        v87 = v325;
        sub_1C499967C(v214, v325, type metadata accessor for Source);
        sub_1C499967C(v87, v20, type metadata accessor for Source);
        v215 = v199 - 1;
        if (!__OFSUB__(v199, 1))
        {
          v216 = __OFADD__(v199++, 1);
          if (v216)
          {
            goto LABEL_250;
          }

          v217 = v215 > 0x40;
          if (v215 >= 0x40)
          {
            v218 = 0;
          }

          else
          {
            v218 = 1 << v215;
          }

          if (v217)
          {
            v218 = 0;
          }

          if ((v218 & v84) >= 1)
          {
            v219 = v313;
            sub_1C499967C(v20, v313, type metadata accessor for Source);
            v220 = *v219;
            v221 = v219[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44BCA84(v219, type metadata accessor for Source);
            v222 = v326;
            v200 = v327;
            v332 = v326;
            v223 = v326[2];
            v29 = (v223 + 1);
            if (v223 >= v326[3] >> 1)
            {
              sub_1C44CD9C0();
              v200 = v327;
              v222 = v332;
            }

            *(v222 + 16) = v29;
            v224 = v222 + 16 * v223;
            *(v224 + 32) = v220;
            *(v224 + 40) = v221;
            v87 = v222;
            goto LABEL_43;
          }

          sub_1C44BCA84(v20, type metadata accessor for Source);
          v87 = v326;
          v200 = v327;
          goto LABEL_44;
        }

        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        swift_once();
        break;
    }
  }

  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
}

uint64_t InternalXPC.Server.triplesQuery(withQuery:completion:)(unint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  v414 = a3;
  v415 = a2;
  v5 = type metadata accessor for EventTriple(0);
  v6 = sub_1C43FCDF8(v5);
  v426 = v7;
  v427 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v434 = v11 - v10;
  v12 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v429 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v433.n128_u64[0] = v18;
  sub_1C43FBE44();
  v19 = type metadata accessor for Source();
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v412 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v437 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v441 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v445 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v424 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v413 = v33;
  sub_1C43FD1D0();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v395 - v36;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v442 = v38;
  sub_1C43FD1D0();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v395 - v41;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v430 = v43;
  v44 = sub_1C43FBE44();
  v439 = type metadata accessor for GraphTriple(v44);
  v45 = sub_1C43FCDF8(v439);
  v431 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  v438 = v50 - v49;
  v51 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v51);
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  v405 = &v395 - v55;
  sub_1C43FBE44();
  v440 = sub_1C4EFDE98();
  v56 = sub_1C43FCDF8(v440);
  v416 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  v411 = v60;
  sub_1C43FD1D0();
  v62 = MEMORY[0x1EEE9AC00](v61);
  p_info = &v395 - v63;
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  v399 = v65;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  v397 = v67;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  v401 = v69;
  sub_1C43FBE44();
  v406 = sub_1C4EFDE88();
  v70 = sub_1C43FCDF8(v406);
  v409 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBFDC();
  v408 = v74;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBF38();
  v407 = v76;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBF38();
  v421 = v78;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBF38();
  v420 = v80;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FD230();
  v443 = v82;
  sub_1C43FBE44();
  v432 = sub_1C4EFDC98();
  v83 = sub_1C43FCDF8(v432);
  v403 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBCC4();
  v402 = v88 - v87;
  v89 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v90 = sub_1C43FBD18(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBFDC();
  v410 = v93;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FBF38();
  v398 = v95;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FBF38();
  v404 = v97;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FBF38();
  v400 = v99;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C43FBF38();
  v417 = v101;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v102);
  sub_1C43FBF38();
  v423 = v103;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FBF38();
  v419.n128_u64[0] = v105;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FBF38();
  v425 = v107;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBF38();
  v418 = v109;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v110);
  sub_1C43FD230();
  v428 = v111;
  v436 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v436);
  v113 = *(v112 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v395 - v115;
  if (qword_1EDDFA678 != -1)
  {
    goto LABEL_262;
  }

  while (1)
  {
    v117 = sub_1C4F00978();
    sub_1C43FCEE8(v117, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v435 = v3;
    v118 = sub_1C4F00968();
    v119 = sub_1C4F01CF8();

    v120 = os_log_type_enabled(v118, v119);
    v444 = v19;
    v422 = a1;
    if (v120)
    {
      v121 = sub_1C43FD084();
      v396 = sub_1C43FFD34();
      v451 = v396;
      *v121 = 136315138;
      v122 = sub_1C4F00EE8();
      v124 = p_info;
      v125 = v116;
      v126 = sub_1C441D828(v122, v123, &v451);

      *(v121 + 4) = v126;
      v116 = v125;
      p_info = v124;
      _os_log_impl(&dword_1C43F8000, v118, v119, "InternalXPC: triples query: %s", v121, 0xCu);
      sub_1C440962C(v396);
      sub_1C43FE9D4();
      v19 = v444;
      sub_1C43FBE2C();
    }

    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4();
    }

    sub_1C43FCEE8(v436, qword_1EDDEBB90);
    sub_1C440D164();
    sub_1C446C964(v118, v116, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v127 = type metadata accessor for Configuration();
    result = sub_1C4402E68(v116, v128, v127);
    if (v130)
    {
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
      return result;
    }

    v131 = type metadata accessor for GraphStore();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = 0;
    v135 = GraphStore.init(config:)(v116);
    v395 = p_info;
    v396 = v135;
    v136 = v428;
    sub_1C43FCF64();
    sub_1C440BAA8(v137, v138, v139, v440);
    v140 = sub_1C44735D4(0x686372616573, 0xE600000000000000, v422);
    if (v141)
    {
      v142 = v140;
      v143 = v141;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v142;
      *(inited + 40) = v143;
      sub_1C4499940(inited, v145, v146, v147, v148, v149, v150, v151, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408);
      v153 = v402;
      v152 = v403;
      v154 = v432;
      (*(v403 + 104))(v402, *MEMORY[0x1E69A9500], v432);
      v134 = v418;
      sub_1C4EFDC88();

      v155 = *(v152 + 8);
      p_info = v152 + 8;
      v155(v153, v154);
      sub_1C4420C3C(v136, &qword_1EC0BE4F0, &qword_1C4F37248);
      v156 = sub_1C442F270();
      sub_1C440BAA8(v156, v157, v158, v440);
      sub_1C49996D8(v134, v136);
    }

    sub_1C4451344();
    sub_1C44023DC();
    sub_1C43FCF64();
    sub_1C440BAA8(v159, v160, v161, v440);
    v162 = v422;
    sub_1C44735D4(v134, 0xE700000000000000, v422);
    v432 = v37;
    if (!v163)
    {
      sub_1C441B444();
      v164 = v416;
      v134 = v428;
      if (v165)
      {
        sub_1C44023DC();
        v162 = v166;
      }

      else
      {
        sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v162);
        if (!v167)
        {
          goto LABEL_27;
        }

        sub_1C44023DC();
      }
    }

    sub_1C44735D4(v134, 0xE700000000000000, v162);
    if (v168)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v169 = swift_initStackObject();
      *(v169 + 16) = xmmword_1C4F0D130;
      result = sub_1C44735D4(v134, 0xE700000000000000, v162);
      if (!v170)
      {
        goto LABEL_264;
      }

      *(v169 + 32) = result;
      *(v169 + 40) = v170;
      sub_1C448DE08(v169);
      v436 = v171;
    }

    else
    {
      v436 = 0;
    }

    sub_1C441B444();
    if (v172)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v173 = swift_initStackObject();
      *(v173 + 16) = xmmword_1C4F0D130;
      result = sub_1C441B444();
      if (!v174)
      {
        goto LABEL_265;
      }

      *(v173 + 32) = result;
      *(v173 + 40) = v174;
      sub_1C448DE08(v173);
      v176 = v175;
    }

    else
    {
      v176 = 0;
    }

    sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v162);
    v403 = v176;
    if (v177)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v178 = swift_initStackObject();
      *(v178 + 16) = xmmword_1C4F0D130;
      result = sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v162);
      if (!v179)
      {
        goto LABEL_266;
      }

      *(v178 + 32) = result;
      *(v178 + 40) = v179;
      sub_1C448DE08(v178);
      v422 = v180;
    }

    else
    {
      v422 = 0;
    }

    v181 = v409;
    v182 = *(v409 + 104);
    v183 = v406;
    (v182)(v443, *MEMORY[0x1E69A95C0], v406);
    sub_1C444AD30();
    v182();
    sub_1C444AD30();
    v182();
    v184 = v407;
    sub_1C444AD30();
    v182();
    v185 = v408;
    sub_1C444AD30();
    v182();
    v186 = v420;
    sub_1C4EFDCE8();

    v187 = *(v181 + 8);
    p_info = v181 + 8;
    v187(v185, v183);
    v187(v184, v183);
    v187(v421, v183);
    v187(v186, v183);
    v187(v443, v183);
    sub_1C4420C3C(v425, &qword_1EC0BE4F0, &qword_1C4F37248);
    v188 = sub_1C442F270();
    sub_1C440BAA8(v188, v189, v190, v440);
    v191 = sub_1C4404050();
    sub_1C49996D8(v191, v192);
    v19 = v444;
    v164 = v416;
    v134 = v428;
    sub_1C4451344();
    v37 = v432;
LABEL_27:
    v193 = sub_1C440EF74();
    v194 = v440;
    sub_1C440BAA8(v193, v195, 1, v440);
    v196 = v134;
    v197 = v417;
    sub_1C446C964(v196, v417, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440175C(v197, 1, v194);
    if (!v130)
    {
      v198 = v401;
      v199 = v440;
      v443 = *(v164 + 32);
      (v443)(v401, v197, v440);
      v200 = v400;
      sub_1C446C964(v425, v400, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C440175C(v200, 1, v199);
      if (!v130)
      {
        v216 = v397;
        (v443)(v397, v200, v440);
        sub_1C4EFDCB8();
        v217 = *(v164 + 8);
        v218 = v440;
        v217(v216, v440);
        v217(v198, v218);
        sub_1C4420C3C(v423, &qword_1EC0BE4F0, &qword_1C4F37248);
        v219 = sub_1C442F270();
        sub_1C440BAA8(v219, v220, v221, v218);
        v222 = sub_1C4404050();
        sub_1C49996D8(v222, v223);
        goto LABEL_37;
      }

      (*(v164 + 8))(v198, v440);
    }

    sub_1C445FDE4();
    sub_1C4420C3C(v201, v202, v203);
    v204 = v404;
    sub_1C446C964(v428, v404, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440175C(v204, 1, v440);
    if (v130)
    {
      sub_1C445FDE4();
      sub_1C4420C3C(v205, v206, v207);
      v208 = v398;
      sub_1C446C964(v425, v398, &qword_1EC0BE4F0, &qword_1C4F37248);
      v209 = sub_1C440EF74();
      if (sub_1C44157D4(v209, v210, v440) == 1)
      {
        sub_1C4420C3C(v208, &qword_1EC0BE4F0, &qword_1C4F37248);
        goto LABEL_37;
      }

      v211 = v423;
      sub_1C4420C3C(v423, &qword_1EC0BE4F0, &qword_1C4F37248);
      v215 = v208;
      v212 = *(v416 + 32);
      v213 = v395;
      v214 = v395;
    }

    else
    {
      v211 = v423;
      sub_1C4420C3C(v423, &qword_1EC0BE4F0, &qword_1C4F37248);
      v212 = *(v416 + 32);
      v213 = v399;
      v214 = v399;
      v215 = v204;
    }

    v224 = v440;
    v212(v214, v215, v440);
    v212(v211, v213, v224);
    sub_1C440BAA8(v211, 0, 1, v224);
LABEL_37:
    v225 = v410;
    v226 = sub_1C4410428();
    sub_1C446C964(v226, v227, v228, v229);
    sub_1C440175C(v225, 1, v440);
    if (v130)
    {
      sub_1C4420C3C(v225, &qword_1EC0BE4F0, &qword_1C4F37248);
      v230 = sub_1C4F00968();
      v231 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v231))
      {
        v232 = sub_1C43FCED0();
        *v232 = 0;
        _os_log_impl(&dword_1C43F8000, v230, v231, "InternalXPC: triples query: failed to generate query.", v232, 2u);
        sub_1C43FBE2C();
      }

      v415(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);

      goto LABEL_253;
    }

    v233 = MEMORY[0x1E69E7CC0];
    v234 = *(v416 + 32);
    v235 = sub_1C4410428();
    v236 = v440;
    v237(v235);
    sub_1C4EFF8F8();
    v238 = v405;
    sub_1C43FCF64();
    v410 = v239;
    sub_1C440BAA8(v240, v241, v242, v239);
    sub_1C447F9A8();
    v243 = sub_1C4410428();
    v248 = sub_1C498DC1C(v243, v244, v245, v246, v247);
    sub_1C4420C3C(v238, &qword_1EC0BAA00, &unk_1C4F17400);
    v249 = v236;
    v116 = "relationshipPredicate";
    v250 = *(v248 + 16);
    a1 = "sourceDuplicates";
    if (!v250)
    {
      break;
    }

    v446[0] = v233;
    v422 = v248;
    v3 = v446;
    v418 = v250;
    sub_1C459E7C8();
    sub_1C4418064();
    v421 = v253;
    v436 = v446[0];
    v420 = 0x80000001C4F86600;
    v417 = 0x80000001C4F86630;
    v419 = xmmword_1C4F23100;
    while (1)
    {
      if (v252 >= *(v251 + 16))
      {
        goto LABEL_258;
      }

      v435 = v252 + 1;
      v254 = v438;
      sub_1C4430E2C(v421 + *(v431 + 72) * v252, v438, type metadata accessor for GraphTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      v255 = swift_initStackObject();
      v256 = sub_1C4461CFC(v255, v419);
      v19 = v233;
      v256[2].n128_u64[0] = v257;
      v256[2].n128_u64[1] = 0xE700000000000000;
      v255[3].n128_u64[0] = sub_1C4EFF048();
      v255[3].n128_u64[1] = v258;
      v259 = MEMORY[0x1E69E6158];
      v255[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v255[5].n128_u64[0] = p_info;
      v255[5].n128_u64[1] = 0xE900000000000065;
      v260 = v439;
      v261 = v254 + v439[5];
      v262 = sub_1C4EFEB68();
      sub_1C44167E4(v262, v263);
      v255[7].n128_u64[1] = v259;
      v255[8].n128_u64[0] = v264;
      sub_1C442A95C();
      v265 = v254 + v260[6];
      v266 = sub_1C4EFF848();
      sub_1C4460A90(v266, v267);
      v255[10].n128_u64[1] = v259;
      v255[11].n128_u64[0] = v268;
      v255[11].n128_u64[1] = v420;
      v269 = v254 + v260[7];
      v270 = sub_1C4EFEB68();
      sub_1C446069C(v270, v271);
      v255[13].n128_u64[1] = v259;
      v255[14].n128_u64[0] = v272;
      v255[14].n128_u64[1] = 0xE600000000000000;
      sub_1C441426C((v254 + v260[8]));
      v255[16].n128_u64[1] = v259;
      v255[17].n128_u64[0] = v273;
      v255[17].n128_u64[1] = 0xE700000000000000;
      v116 = *(v254 + v260[9]);
      v447[0] = v233;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v3 = v447;
      sub_1C44CD9C0();
      a1 = v447[0];
      v274 = 1;
LABEL_46:
      p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
      v443 = a1;
LABEL_47:
      if (qword_1EDDFA6A8 != -1)
      {
        sub_1C440BE0C();
        swift_once();
      }

      if (qword_1EDE2DCF0 >= v274)
      {
        break;
      }

      v306 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v255[18].n128_u64[0] = a1;
      sub_1C443594C(v306);
      v116 = v438;
      v255[21].n128_u64[0] = *(v438 + v439[10]);
      sub_1C44602BC();
      sub_1C4440D4C(*(v116 + *(v307 + 48)));
      v255[26].n128_u64[1] = v417;
      v309 = (v116 + *(v308 + 44));
      v310 = *v309;
      v311 = v309[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v312 = objc_autoreleasePoolPush();
      v447[0] = v310;
      v447[1] = v311;
      v449 = 30;
      v450 = 0xE100000000000000;
      sub_1C4415EA8();
      v3 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v312);
      v255[28].n128_u64[1] = v306;
      v255[27].n128_u64[0] = v3;
      v313 = sub_1C4F00F28();
      sub_1C44BCA84(v116, type metadata accessor for GraphTriple);
      v314 = v436;
      v446[0] = v436;
      a1 = *(v436 + 16);
      v315 = *(v436 + 24);
      if (a1 >= v315 >> 1)
      {
        sub_1C43FCFE8(v315);
        v3 = v446;
        sub_1C459E7C8();
        v314 = v446[0];
      }

      *(v314 + 16) = a1 + 1;
      v436 = v314;
      *(v314 + 8 * a1 + 32) = v313;
      v252 = v435;
      v19 = v444;
      p_info = 0x7461636964657270;
      v233 = MEMORY[0x1E69E7CC0];
      v251 = v422;
      if (v435 == v418)
      {
        v316 = v440;

        goto LABEL_147;
      }
    }

    switch(v274)
    {
      case 1:
        if (qword_1EDDFED28 != -1)
        {
          sub_1C44133AC();
          swift_once();
        }

        v275 = v444;
        v276 = &unk_1EDDFD088;
        goto LABEL_125;
      case 2:
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD0D8;
        goto LABEL_125;
      case 6:
        if (qword_1EDDFD0A8 != -1)
        {
          sub_1C43FCE90();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD0B0;
        goto LABEL_125;
      case 9:
        if (qword_1EDDFD150 != -1)
        {
          sub_1C44050D8();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD158;
        goto LABEL_125;
      case 11:
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD070;
        goto LABEL_125;
      case 12:
        if (qword_1EDDFD110 != -1)
        {
          sub_1C4419B34();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD118;
        goto LABEL_125;
      case 14:
        if (qword_1EDDFED38 != -1)
        {
          sub_1C44044A0();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD0F0;
        goto LABEL_125;
      case 16:
        if (qword_1EDDFD2F0 != -1)
        {
          sub_1C442E080();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD2F8;
        goto LABEL_125;
      case 17:
        if (qword_1EDDFED08 != -1)
        {
          sub_1C4407298();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFED10;
        goto LABEL_125;
      case 18:
        if (qword_1EDDFD040 != -1)
        {
          sub_1C441CB5C();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD048;
        goto LABEL_125;
      case 19:
        if (qword_1EDDFD268 != -1)
        {
          sub_1C4410434();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD270;
        goto LABEL_125;
      case 21:
        if (qword_1EDDFD130 != -1)
        {
          sub_1C4409DC8();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD138;
        goto LABEL_125;
      case 22:
        if (qword_1EDDFD178 != -1)
        {
          sub_1C44251E8();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD180;
        goto LABEL_125;
      case 23:
        if (qword_1EDDFED40 != -1)
        {
          sub_1C4415A7C();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD2A8;
        goto LABEL_125;
      case 24:
        if (qword_1EDDFD218 != -1)
        {
          sub_1C4405DDC();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD220;
        goto LABEL_125;
      case 25:
        if (qword_1EDDFD240 != -1)
        {
          sub_1C442BCAC();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD248;
        goto LABEL_125;
      case 27:
        if (qword_1EDDFD318 != -1)
        {
          sub_1C4425D4C();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD320;
        goto LABEL_125;
      case 28:
        if (qword_1EDDFD340 != -1)
        {
          sub_1C442FF00();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD348;
        goto LABEL_125;
      case 29:
        if (qword_1EDDFD2C8 != -1)
        {
          sub_1C44072C0();
          swift_once();
        }

        v275 = v444;
        v276 = qword_1EDDFD2D0;
        goto LABEL_125;
      case 31:
        if (qword_1EDDFD1F0 != -1)
        {
          sub_1C441BA74();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD1F8;
        goto LABEL_125;
      case 32:
        if (qword_1EDDFD288 != -1)
        {
          sub_1C4433574();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD290;
        goto LABEL_125;
      case 33:
        if (qword_1EDDFD1A0 != -1)
        {
          sub_1C441BA88();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD1A8;
        goto LABEL_125;
      case 34:
        if (qword_1EDDFD1C8 != -1)
        {
          sub_1C44072AC();
          swift_once();
        }

        v275 = v444;
        v276 = &qword_1EDDFD1D0;
LABEL_125:
        sub_1C442B738(v275, v276);
        sub_1C440C5B0();
        sub_1C4430E2C(v289, v37, v290);
        goto LABEL_126;
      default:
        if (qword_1EDDFDCF8 != -1)
        {
          sub_1C43FC5B8();
          swift_once();
        }

        sub_1C440D164();
        if (!qword_1EDDFF3C8)
        {
          v3 = v433.n128_u64[0];
          v297 = sub_1C440EF74();
          sub_1C440BAA8(v297, v298, 1, v444);
          goto LABEL_136;
        }

        v277 = qword_1EDDFF3C8;
        v278 = (*(off_1EDDFF3D0 + 2))();
        sub_1C445BF90(v278, v279);
        v19 = v116;
        v280 = v37;
        v281 = v42;
        v282 = v433.n128_u64[0];
        v283(v274, v277);
        v3 = v282;
        v42 = v281;
        v37 = v280;
        v116 = v19;
        v284 = sub_1C440EF74();
        sub_1C440175C(v284, v285, v444);
        if (v130)
        {
LABEL_136:
          sub_1C4420C3C(v3, &unk_1EC0C0760, &qword_1C4F170D0);
          v293 = __OFADD__(v274++, 1);
          if (v293)
          {
            goto LABEL_259;
          }

          goto LABEL_47;
        }

        v286 = v3;
        v3 = type metadata accessor for Source;
        v287 = v413;
        sub_1C499967C(v286, v413, type metadata accessor for Source);
        v288 = v287;
        v37 = v432;
        sub_1C499967C(v288, v432, type metadata accessor for Source);
LABEL_126:
        sub_1C4411F78();
        a1 = v442;
        sub_1C499967C(v37, v442, v291);
        sub_1C499967C(a1, v42, v3);
        v292 = v274 - 1;
        if (!__OFSUB__(v274, 1))
        {
          v293 = __OFADD__(v274++, 1);
          if (v293)
          {
            goto LABEL_255;
          }

          v294 = v292 > 0x40;
          if (v292 >= 0x40)
          {
            v295 = 0;
          }

          else
          {
            v295 = 1 << v292;
          }

          if (v294)
          {
            v295 = 0;
          }

          if ((v295 & v116) >= 1)
          {
            sub_1C4413394();
            v3 = v430;
            sub_1C499967C(v42, v430, v299);
            v300 = *v3;
            v19 = v3[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441FD94();
            sub_1C44BCA84(v3, v301);
            v302 = v443;
            v447[0] = v443;
            v304 = *(v443 + 16);
            v303 = *(v443 + 24);
            if (v304 >= v303 >> 1)
            {
              sub_1C43FCFE8(v303);
              v3 = v447;
              sub_1C44CD9C0();
              v302 = v447[0];
            }

            *(v302 + 16) = v304 + 1;
            v305 = v302 + 16 * v304;
            *(v305 + 32) = v300;
            *(v305 + 40) = v19;
            v37 = v432;
            a1 = v302;
            goto LABEL_46;
          }

          sub_1C441FD94();
          sub_1C44BCA84(v42, v296);
          a1 = v443;
          goto LABEL_47;
        }

        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        sub_1C43FFCC0();
        break;
    }
  }

  v316 = v249;

  v436 = MEMORY[0x1E69E7CC0];
LABEL_147:
  v317 = v405;
  sub_1C43FCF64();
  sub_1C440BAA8(v318, v319, v320, v410);
  sub_1C4423C10();
  v323 = sub_1C498DC1C(v411, v317, v321, v322, sub_1C49A52CC);
  sub_1C4420C3C(v317, &qword_1EC0BAA00, &unk_1C4F17400);
  v324 = *(v323 + 16);
  v42 = v427;
  a1 = "sourceDuplicates";
  v37 = "relationshipPredicate";
  if (v324)
  {
    v448 = v233;
    v439 = v323;
    v3 = &v448;
    v432 = v324;
    sub_1C459E7C8();
    sub_1C4418064();
    v438 = v327;
    v443 = v448;
    v435 = 0x80000001C4F86600;
    v431 = 0x80000001C4F86630;
    v433 = xmmword_1C4F23100;
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    do
    {
      if (v326 >= *(v325 + 16))
      {
        goto LABEL_260;
      }

      v442 = v326 + 1;
      v328 = v434;
      sub_1C4430E2C(v438 + *(v426 + 72) * v326, v434, type metadata accessor for EventTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      v329 = swift_allocObject();
      v330 = sub_1C4461CFC(v329, v433);
      v330[2].n128_u64[0] = v331;
      v330[2].n128_u64[1] = 0xE700000000000000;
      v329[3].n128_u64[0] = sub_1C4EFF048();
      v329[3].n128_u64[1] = v332;
      v333 = MEMORY[0x1E69E6158];
      v329[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v329[5].n128_u64[0] = 0x7461636964657270;
      v329[5].n128_u64[1] = 0xE900000000000065;
      v334 = v328 + *(v42 + 5);
      v335 = sub_1C4EFEB68();
      sub_1C44167E4(v335, v336);
      v329[7].n128_u64[1] = v333;
      v329[8].n128_u64[0] = v337;
      sub_1C442A95C();
      v338 = v328 + *(v42 + 6);
      v339 = sub_1C4EFF848();
      sub_1C4460A90(v339, v340);
      v329[10].n128_u64[1] = v333;
      v329[11].n128_u64[0] = v341;
      v329[11].n128_u64[1] = v435;
      v342 = v328 + *(v42 + 7);
      v343 = sub_1C4EFEB68();
      sub_1C446069C(v343, v344);
      v329[13].n128_u64[1] = v333;
      v329[14].n128_u64[0] = v345;
      v329[14].n128_u64[1] = 0xE600000000000000;
      sub_1C441426C((v328 + *(v42 + 8)));
      v329[16].n128_u64[1] = v333;
      v329[17].n128_u64[0] = v346;
      v329[17].n128_u64[1] = 0xE700000000000000;
      v116 = 1;
      v37 = *(v328 + *(v42 + 9));
      v449 = v233;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0();
      v3 = v449;
      v347 = 1;
      while (1)
      {
        a1 = v437;
        v42 = v3;
LABEL_152:
        if (*(p_info + 1704) != -1)
        {
          sub_1C440BE0C();
          swift_once();
        }

        if (qword_1EDE2DCF0 < v347)
        {
          break;
        }

        switch(v347)
        {
          case 1:
            if (qword_1EDDFED28 != -1)
            {
              sub_1C44133AC();
              swift_once();
            }

            v348 = v19;
            v349 = &unk_1EDDFD088;
            goto LABEL_230;
          case 2:
            if (qword_1EDDFD0D0 != -1)
            {
              sub_1C4407180();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD0D8;
            goto LABEL_230;
          case 6:
            if (qword_1EDDFD0A8 != -1)
            {
              sub_1C43FCE90();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD0B0;
            goto LABEL_230;
          case 9:
            if (qword_1EDDFD150 != -1)
            {
              sub_1C44050D8();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD158;
            goto LABEL_230;
          case 11:
            if (qword_1EDDFD068 != -1)
            {
              sub_1C4419B48();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD070;
            goto LABEL_230;
          case 12:
            if (qword_1EDDFD110 != -1)
            {
              sub_1C4419B34();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD118;
            goto LABEL_230;
          case 14:
            if (qword_1EDDFED38 != -1)
            {
              sub_1C44044A0();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD0F0;
            goto LABEL_230;
          case 16:
            if (qword_1EDDFD2F0 != -1)
            {
              sub_1C442E080();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD2F8;
            goto LABEL_230;
          case 17:
            if (qword_1EDDFED08 != -1)
            {
              sub_1C4407298();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFED10;
            goto LABEL_230;
          case 18:
            if (qword_1EDDFD040 != -1)
            {
              sub_1C441CB5C();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD048;
            goto LABEL_230;
          case 19:
            if (qword_1EDDFD268 != -1)
            {
              sub_1C4410434();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD270;
            goto LABEL_230;
          case 21:
            if (qword_1EDDFD130 != -1)
            {
              sub_1C4409DC8();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD138;
            goto LABEL_230;
          case 22:
            if (qword_1EDDFD178 != -1)
            {
              sub_1C44251E8();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD180;
            goto LABEL_230;
          case 23:
            if (qword_1EDDFED40 != -1)
            {
              sub_1C4415A7C();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD2A8;
            goto LABEL_230;
          case 24:
            if (qword_1EDDFD218 != -1)
            {
              sub_1C4405DDC();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD220;
            goto LABEL_230;
          case 25:
            if (qword_1EDDFD240 != -1)
            {
              sub_1C442BCAC();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD248;
            goto LABEL_230;
          case 27:
            if (qword_1EDDFD318 != -1)
            {
              sub_1C4425D4C();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD320;
            goto LABEL_230;
          case 28:
            if (qword_1EDDFD340 != -1)
            {
              sub_1C442FF00();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD348;
            goto LABEL_230;
          case 29:
            if (qword_1EDDFD2C8 != -1)
            {
              sub_1C44072C0();
              swift_once();
            }

            v348 = v19;
            v349 = qword_1EDDFD2D0;
            goto LABEL_230;
          case 31:
            if (qword_1EDDFD1F0 != -1)
            {
              sub_1C441BA74();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD1F8;
            goto LABEL_230;
          case 32:
            if (qword_1EDDFD288 != -1)
            {
              sub_1C4433574();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD290;
            goto LABEL_230;
          case 33:
            if (qword_1EDDFD1A0 != -1)
            {
              sub_1C441BA88();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD1A8;
            goto LABEL_230;
          case 34:
            if (qword_1EDDFD1C8 != -1)
            {
              sub_1C44072AC();
              swift_once();
            }

            v348 = v19;
            v349 = &qword_1EDDFD1D0;
LABEL_230:
            sub_1C442B738(v348, v349);
            sub_1C440C5B0();
            sub_1C4430E2C(v357, a1, v358);
            goto LABEL_231;
          default:
            if (qword_1EDDFDCF8 != -1)
            {
              sub_1C43FC5B8();
              swift_once();
            }

            sub_1C440D164();
            if (!qword_1EDDFF3C8)
            {
              v352 = v429;
              sub_1C43FCF64();
              sub_1C440BAA8(v364, v365, v366, v19);
LABEL_241:
              sub_1C4420C3C(v352, &unk_1EC0C0760, &qword_1C4F170D0);
              v293 = __OFADD__(v347++, 1);
              p_info = 0x1EDDFA000;
              v3 = v42;
              if (v293)
              {
                goto LABEL_261;
              }

              goto LABEL_152;
            }

            v3 = qword_1EDDFF3C8;
            v350 = (*(off_1EDDFF3D0 + 2))();
            sub_1C445BF90(v350, v351);
            v352 = v429;
            v353(v347, v3);
            sub_1C440175C(v352, 1, v19);
            if (v130)
            {
              goto LABEL_241;
            }

            sub_1C4411F78();
            v354 = v412;
            sub_1C499967C(v352, v412, v355);
            v356 = v354;
            a1 = v437;
            sub_1C499967C(v356, v437, v3);
LABEL_231:
            sub_1C4411F78();
            p_info = v441;
            sub_1C499967C(a1, v441, v359);
            sub_1C499967C(p_info, v445, v3);
            v360 = v347 - 1;
            if (__OFSUB__(v347, 1))
            {
              goto LABEL_256;
            }

            v293 = __OFADD__(v347++, 1);
            if (v293)
            {
              goto LABEL_257;
            }

            v361 = v360 > 0x40;
            if (v360 >= 0x40)
            {
              v362 = 0;
            }

            else
            {
              v362 = 1 << v360;
            }

            if (v361)
            {
              v362 = 0;
            }

            if ((v362 & v37) < 1)
            {
              v3 = v42;
              sub_1C441FD94();
              sub_1C44BCA84(v445, v363);
              p_info = 0x1EDDFA000;
              goto LABEL_152;
            }

            sub_1C4413394();
            v367 = v424;
            sub_1C499967C(v445, v424, v368);
            v370 = *v367;
            v369 = v367[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441FD94();
            v371 = v367;
            v3 = v42;
            sub_1C44BCA84(v371, v372);
            v449 = v42;
            v373 = *(v42 + 2);
            v374 = v3[3];
            if (v373 >= v374 >> 1)
            {
              sub_1C43FCFE8(v374);
              sub_1C44CD9C0();
              v3 = v449;
            }

            v3[2] = v373 + 1;
            v375 = &v3[2 * v373];
            v375[4] = v370;
            v375[5] = v369;
            v19 = v444;
            p_info = 0x1EDDFA000;
            break;
        }
      }

      v376 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v329[18].n128_u64[0] = v3;
      sub_1C443594C(v376);
      v42 = v427;
      v37 = v434;
      v329[21].n128_u64[0] = *(v434 + *(v427 + 10));
      sub_1C44602BC();
      sub_1C4440D4C(*(v37 + *(v42 + 12)));
      v329[26].n128_u64[1] = v431;
      v377 = (v37 + *(v42 + 11));
      v378 = *v377;
      v379 = v377[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v380 = objc_autoreleasePoolPush();
      v449 = v378;
      v450 = v379;
      v446[0] = 30;
      v446[1] = 0xE100000000000000;
      sub_1C4415EA8();
      v3 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v380);
      v329[28].n128_u64[1] = v376;
      v329[27].n128_u64[0] = v3;
      v381 = sub_1C4F00F28();
      sub_1C44BCA84(v37, type metadata accessor for EventTriple);
      v382 = v443;
      v448 = v443;
      v384 = *(v443 + 16);
      v383 = *(v443 + 24);
      a1 = v384 + 1;
      if (v384 >= v383 >> 1)
      {
        sub_1C43FCFE8(v383);
        v3 = &v448;
        sub_1C459E7C8();
        v382 = v448;
      }

      *(v382 + 16) = a1;
      v443 = v382;
      *(v382 + 8 * v384 + 32) = v381;
      v326 = v442;
      v19 = v444;
      v233 = MEMORY[0x1E69E7CC0];
      p_info = 0x1EDDFA000;
      v325 = v439;
    }

    while (v442 != v432);

    v316 = v440;
    v385 = v443;
  }

  else
  {

    v385 = MEMORY[0x1E69E7CC0];
  }

  v415(v436, v385);

  (*(v416 + 8))(v411, v316);
LABEL_253:
  sub_1C445FDE4();
  sub_1C4420C3C(v386, v387, v388);
  sub_1C445FDE4();
  sub_1C4420C3C(v389, v390, v391);
  sub_1C445FDE4();
  return sub_1C4420C3C(v392, v393, v394);
}

void sub_1C49955AC(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "InternalXPC: benchmark", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v3, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v11, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v12 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v6, 1, v12) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    type metadata accessor for IntelligencePlatformBenchmark();
    v13 = sub_1C46390AC(v6);
    sub_1C44BCA84(v6, type metadata accessor for Configuration);
    if (v13)
    {
      sub_1C463ACD4();
      a2[2](a2, 1, 0);
    }

    else
    {
      a2[2](a2, 0, 0);
    }

    _Block_release(a2);
  }
}

uint64_t InternalXPC.Server.benchmark(completion:)()
{
  sub_1C444C2AC();
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v8))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v9, v10, "InternalXPC: benchmark");
    sub_1C43FFD18();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  sub_1C43FCEE8(v2, qword_1EDDEBB90);
  sub_1C440D164();
  v11 = sub_1C4410428();
  sub_1C446C964(v11, v12, v13, v14);
  v15 = type metadata accessor for Configuration();
  result = sub_1C4402E68(v1, v16, v15);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for IntelligencePlatformBenchmark();
    v19 = sub_1C46390AC(v1);
    sub_1C4419B1C();
    sub_1C44BCA84(v1, v20);
    if (v19)
    {
      sub_1C463ACD4();
      sub_1C440E490();
      v0();
    }

    else
    {
      sub_1C440E490();
      return (v0)();
    }
  }

  return result;
}

void sub_1C4995A20(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "InternalXPC: validateGraph", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v3, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v11, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v12 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v6, 1, v12) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphValidator();
    swift_allocObject();
    GraphValidator.init(config:)(v6);
    sub_1C4881260();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v13 = sub_1C4F00EC8();
    (a2)[2](a2, v13, 0);

    _Block_release(a2);
  }
}

uint64_t InternalXPC.Server.validateGraph(completion:)()
{
  sub_1C444C2AC();
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InternalXPC: validateGraph", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  sub_1C43FCEE8(v2, qword_1EDDEBB90);
  sub_1C440D164();
  v10 = sub_1C4410428();
  sub_1C446C964(v10, v11, v12, v13);
  v14 = type metadata accessor for Configuration();
  result = sub_1C4402E68(v1, v15, v14);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphValidator();
    swift_allocObject();
    GraphValidator.init(config:)(v1);
    sub_1C4881260();
    sub_1C440E490();
    v0();
  }

  return result;
}

void sub_1C4996030(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id InternalXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C49960E0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v20 = sub_1C4F00978();
    sub_1C43FCEE8(v20, qword_1EDE2DCD8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = sub_1C43FCED0();
    sub_1C43FBD24(v23);
    v24 = "InternalXPC: API disabled on customer devices.";
    goto LABEL_21;
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v9 = sub_1C442B738(v3, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C446C964(v9, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = type metadata accessor for Configuration();
  result = sub_1C440175C(v8, 1, v10);
  if (!v15)
  {
    v12 = &v8[*(v10 + 20)];
    v3 = *v12;
    v13 = v12[1];
    sub_1C4419B1C();
    sub_1C44BCA84(v8, v14);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    v15 = (xmmword_1EDDFEC90 & ~v3) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v13) == *(&xmmword_1EDDFEC90 + 1);
    if (!v15)
    {
      sub_1C448F160();
      if (sub_1C446874C())
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for InternalXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v32 = sub_1C49964D0;
        v33 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v30 = sub_1C4833DD0;
        v31 = &unk_1F43F2280;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v32 = sub_1C49964F0;
        v33 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v30 = sub_1C4833DD0;
        v31 = &unk_1F43F22A8;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }

      return 0;
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDE2DCD8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v21, v22))
    {
LABEL_22:

      return 0;
    }

    v26 = sub_1C43FCED0();
    sub_1C43FBD24(v26);
    v24 = "InternalXPC: service is in no-op mode.";
LABEL_21:
    _os_log_impl(&dword_1C43F8000, v21, v22, v24, v3, 2u);
    sub_1C43FE9D4();
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_1C4996510(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

uint64_t InternalXPC.Server.runDeltaUpdatePipeline(withSource:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[7] = v3;
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v0[8] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v0[9] = sub_1C43FBE7C();
  v9 = type metadata accessor for Source();
  v0[10] = v9;
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v0[11] = sub_1C43FBE7C();
  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4996738()
{
  v43 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  *(v0 + 96) = sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: runDeltaUpdatePipeline", v4, 2u);
    sub_1C43FEA20();
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  Source.init(rawValue:)(v8, v7, v6);
  v9 = sub_1C44157D4(v6, 1, v5);
  *(v0 + 128) = v9;
  if (v9 == 1)
  {
    v10 = *(v0 + 48);
    sub_1C4420C3C(*(v0 + 72), &unk_1EC0C0760, &qword_1C4F170D0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      v15 = sub_1C43FD084();
      v16 = sub_1C43FFD34();
      v42 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1C441D828(v14, v13, &v42);
      _os_log_impl(&dword_1C43F8000, v11, v12, "InternalXPC: runDeltaUpdatePipeline: %s doesn't exist", v15, 0xCu);
      sub_1C440962C(v16);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);

    sub_1C43FBCF0();
    v20 = sub_1C44BBE4C();

    return v21(v20);
  }

  else
  {
    v22 = *(v0 + 88);
    v23 = *(v0 + 72);
    sub_1C4413394();
    sub_1C499967C(v24, v25, v26);
    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4();
    }

    v27 = *(v0 + 64);
    sub_1C442B738(*(v0 + 56), qword_1EDDEBB90);
    sub_1C440D164();
    v28 = sub_1C43FBC98();
    sub_1C446C964(v28, v29, v30, v31);
    v32 = type metadata accessor for Configuration();
    result = sub_1C4402E68(v27, v33, v32);
    if (v35)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88();
      }

      v36 = *(v0 + 64);
      *(v0 + 104) = sub_1C4468E90();
      v37 = *(v0 + 64);
      sub_1C4419B1C();
      sub_1C44BCA84(v38, v39);
      v40 = swift_task_alloc();
      *(v0 + 112) = v40;
      *v40 = v0;
      v40[1] = sub_1C4996AD8;
      v41 = *(v0 + 88);

      return Pipeline.runDeltaUpdate(reason:source:)(1, v41);
    }
  }

  return result;
}

uint64_t sub_1C4996AD8()
{
  sub_1C43FCF70();
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);

  if (v0)
  {
    v6 = sub_1C4996CDC;
  }

  else
  {
    v6 = sub_1C4996C08;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4996C08()
{
  sub_1C43FCF70();
  v1 = v0[12];
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = sub_1C43FEB2C(v3);
  v5 = v0[11];
  if (v4)
  {
    *sub_1C43FCED0() = 0;
    sub_1C4415A90();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_1C43FEA20();
  }

  sub_1C441FD94();
  sub_1C44BCA84(v5, v11);
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[9];

  sub_1C43FBCF0();
  v15 = sub_1C44BBE4C();

  return v16(v15);
}

uint64_t sub_1C4996CDC()
{
  sub_1C43FCF70();
  v1 = v0[11];
  sub_1C441FD94();
  sub_1C44BCA84(v2, v3);
  v4 = v0[15];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  v8 = sub_1C4409E50();

  return v9(v8);
}

uint64_t sub_1C4996DE8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4996EB8;

  return InternalXPC.Server.runDeltaUpdatePipeline(withSource:)();
}

uint64_t sub_1C4996EB8(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[2];
  v11 = *v2;
  *v7 = *v2;

  v12 = v5[3];
  if (v3)
  {
    v13 = sub_1C4EF9798();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(v5[3], a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v14 = v11[1];

  return v14();
}

uint64_t InternalXPC.Server.runToMatchingPipeline()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  *(v0 + 48) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C49970E8()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  v0[7] = sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalXPC: runToMatchingPipeline");
    sub_1C43FE9D4();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v7 = v0[6];
  sub_1C442B738(v0[5], qword_1EDDEBB90);
  sub_1C440D164();
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C4402E68(v7, v13, v12);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88();
    }

    v16 = v0[6];
    v0[8] = sub_1C4468E90();
    v17 = v0[6];
    sub_1C4419B1C();
    sub_1C44BCA84(v18, v19);
    v20 = swift_task_alloc();
    v0[9] = v20;
    *v20 = v0;
    v20[1] = sub_1C49972E8;

    return sub_1C4ABF4F0(1);
  }

  return result;
}

uint64_t sub_1C49972E8()
{
  sub_1C43FBCD4();
  v3 = *(*v1 + 72);
  v2 = *v1;
  sub_1C43FBDAC();
  *v4 = v2;
  *(v2 + 80) = v0;

  if (v0)
  {
    v5 = sub_1C49974A0;
  }

  else
  {
    v6 = *(v2 + 64);

    v5 = sub_1C49973F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C49973F8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 56);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalXPC: runToMatchingPipeline: done");
    sub_1C43FE9D4();
  }

  v7 = *(v0 + 48);

  sub_1C43FBCF0();

  return v8(1);
}

uint64_t sub_1C49974A0()
{
  sub_1C43FBCD4();
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[6];

  v4 = sub_1C4409E50();

  return v5(v4);
}

uint64_t sub_1C4997524(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return InternalXPC.Server.runToMatchingPipeline()();
}

uint64_t InternalXPC.Server.stopPipeline()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  *(v0 + 48) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C499764C()
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4415A90();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v9 = *(v0 + 48);
  sub_1C442B738(*(v0 + 40), qword_1EDDEBB90);
  sub_1C440D164();
  v10 = sub_1C4404050();
  sub_1C446C964(v10, v11, v12, v13);
  v14 = type metadata accessor for Configuration();
  result = sub_1C4402E68(v9, v15, v14);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88();
    }

    v18 = *(v0 + 48);
    sub_1C4468E90();
    v19 = *(v0 + 48);
    sub_1C4419B1C();
    sub_1C44BCA84(v20, v21);
    sub_1C4ABF738();

    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CF8();
    if (sub_1C4402B64(v23))
    {
      v25 = sub_1C43FCED0();
      sub_1C43FBD24(v25);
      sub_1C43FFFD8(&dword_1C43F8000, v26, v27, "InternalXPC: stopPipeline: done");
      sub_1C43FE9D4();
    }

    v28 = *(v0 + 48);

    sub_1C43FBCF0();

    return v29(1);
  }

  return result;
}

uint64_t sub_1C4997880(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return InternalXPC.Server.stopPipeline()();
}

uint64_t sub_1C4997924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v3 = sub_1C4EFD678();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1C4EFF658();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v48 - v25;
  v27 = sub_1C4EFF8F8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_1C446C964(v55, v26, &qword_1EC0BAA00, &unk_1C4F17400);
  v34 = sub_1C44157D4(v26, 1, v33);
  v50 = v33;
  v59 = v28;
  if (v34 == 1)
  {
    sub_1C440BAA8(v22, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v26, 1, v33) != 1)
    {
      sub_1C4420C3C(v26, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v26, v33);
  }

  v35 = v61;
  sub_1C4EFF648();
  type metadata accessor for StaticKnowledgeTriple();
  v60[3] = sub_1C4EFB298();
  v60[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v60);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v60);
  sub_1C4EFF8E8();
  v36 = sub_1C44157D4(v20, 1, v3);
  v37 = v57;
  if (v36 == 1)
  {
    sub_1C4420C3C(v20, &unk_1EC0C07E0, &unk_1C4F168F0);
    v38 = v58;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    (*(v49 + 32))(v48, v20, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EDDF00D0, &qword_1EC0BDCB8, &qword_1C4F3F1C0);
    v41 = v51;
    sub_1C4EFB308();

    v42 = v39;
    v35 = v61;
    (*(v40 + 8))(v42, v3);
    v38 = v58;
    (*(v58 + 8))(v12, v37);
    (*(v38 + 32))(v12, v41, v37);
  }

  result = sub_1C4EFF8D8();
  v44 = v59;
  if (v45)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0818, &qword_1EC0BDCB8, &qword_1C4F3F1C0);
    v46 = v51;
    sub_1C4EFB608();
    (*(v38 + 8))(v12, v37);
    (*(v38 + 32))(v12, v46, v37);
LABEL_11:
    sub_1C4401CBC(&qword_1EDDFA2A0, &qword_1EC0BDCB8, &qword_1C4F3F1C0);
    sub_1C4999D1C(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple);
    v47 = sub_1C4EFAFE8();
    (*(v38 + 8))(v12, v37);
    (*(v52 + 8))(v35, v53);
    (*(v44 + 8))(v31, v50);
    return v47;
  }

  __break(1u);
  return result;
}