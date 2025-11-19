void sub_218C0FAB8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v18 = a2 + 32;
  v5 = (a1 + 32);
  v6 = v3 == 0;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_2:
  if (v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = (v18 + 32 * v2);
  *v22 = *v7;
  *&v22[9] = *(v7 + 9);
  if (__OFADD__(v2++, 1))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v10 = *&v22[8];
  v9 = *v22;
  v19 = *&v22[16];
  v20 = v22[24];
  sub_218950CAC(v22, v21);
  if (!v4)
  {
    if (!v9)
    {
      return;
    }

LABEL_20:
    v15 = v9;
    v16 = v10;
    v17 = v19;
LABEL_21:
    sub_2189E9530(v15, v16, v17);
    return;
  }

  while (1)
  {
    *v22 = *v5;
    *&v22[9] = *(v5 + 9);
    v12 = *&v22[8];
    v11 = *v22;
    v13 = *&v22[16];
    v14 = v22[24];
    sub_218950CAC(v22, v21);
    if (!v9)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    v22[0] = v12;
    v21[0] = BYTE2(v12);
    sub_2186C6148(0, &qword_280E8DA00);
    if ((sub_219BF6DD4() & 1) == 0 || v10 != v22[0] || (sub_219BF6DD4() & 1) == 0 || BYTE2(v10) != v21[0] || BYTE3(v10) != BYTE3(v12) || BYTE4(v10) != BYTE4(v12))
    {
      sub_2189E9530(v11, v12, v13);
      goto LABEL_20;
    }

    sub_2189E9530(v9, v10, v19);
    sub_2189E9530(v11, v12, v13);
    if (v20 != v14)
    {
      return;
    }

    --v4;
    v5 += 2;
    v6 = v2 >= v3;
    if (v2 != v3)
    {
      goto LABEL_2;
    }

LABEL_6:
    if (!v4)
    {
      return;
    }

    v20 = 0;
    v19 = 0;
    v10 = 0;
    v9 = 0;
    v2 = v3;
  }

  if (v11)
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    goto LABEL_21;
  }
}

uint64_t sub_218C0FD28(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v8 = 0;
      v9 = 0;
      v2 = v3;
      goto LABEL_11;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v10 = (v5 + 16 * v2);
    v9 = *v10;
    v8 = v10[1];

    if (!v4)
    {
      if (v8)
      {
        goto LABEL_20;
      }

      return 1;
    }

    ++v2;
LABEL_11:
    v12 = *(i - 1);
    v11 = *i;

    if (!v8)
    {
      if (v11)
      {
LABEL_20:

        return 0;
      }

      return 1;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    if (v9 == v12 && v8 == v11)
    {
    }

    else
    {
      v7 = sub_219BF78F4();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_218C0FE68()
{
  v0 = sub_219BE3D64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD1E8(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_219BE4864();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v3, *MEMORY[0x277D34D60], v0);
  sub_219BE3F44();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218C10540(v6, &qword_280EE6200, MEMORY[0x277D35380]);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_219BE4824();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_218C10108@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218C10A34(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_218C10138()
{
  result = qword_27CC0F110;
  if (!qword_27CC0F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F110);
  }

  return result;
}

unint64_t sub_218C10190()
{
  result = qword_27CC0F118;
  if (!qword_27CC0F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F118);
  }

  return result;
}

unint64_t sub_218C101E8()
{
  result = qword_27CC0F120;
  if (!qword_27CC0F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F120);
  }

  return result;
}

uint64_t sub_218C1023C(uint64_t a1)
{
  v2 = type metadata accessor for EngagementEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218C10298()
{
  result = qword_280EBD0D0;
  if (!qword_280EBD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBD0D0);
  }

  return result;
}

char *sub_218C102EC()
{
  if (([v0 respondsToSelector_] & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v1 = [v0 segmentSetIDs];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
LABEL_17:
    v13 = sub_218C3DB14(v2);

    return v13;
  }

  v3 = v1;
  sub_2186C6148(0, &qword_280E8DA20);
  v4 = sub_219BF5924();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_17;
  }

  v5 = sub_219BF7214();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_5:
  result = sub_218C350A0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_218C350A0((v11 > 1), v12 + 1, 1);
      }

      *(v2 + 16) = v12 + 1;
      *(v2 + 8 * v12 + 32) = v10;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t *sub_218C104A8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_218C10608(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_218C10540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186DD1E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218C1059C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186DD1E8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_218C10608(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v4 + 56) + 8 * v14);

    if ([swift_unknownObjectRetain() tagType] == 2)
    {
      v16 = [v15 identifier];
      if (!v16)
      {
        sub_219BF5414();
        v16 = sub_219BF53D4();
      }

      v17 = [a4 containsTagID_];

      swift_unknownObjectRelease();

      v4 = a3;
      if (v17)
      {
        *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_19:
          sub_218B9DE54(a1, a2, v21, v4);
          return;
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_19;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_218C107DC(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v12 = sub_218C104A8(v14, v6, a1, v15);
      MEMORY[0x21CECF960](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  sub_218C10608((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  return v12;
}

void sub_218C10988(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2186DD1E8(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218C109EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C10A34(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_218C10A64(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_218BBF5C0();
  v48 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C112E8(0, &qword_280EE4B48, MEMORY[0x277D6DF88]);
  v12 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v45 = &v35 - v13;
  sub_218C110C8();
  MEMORY[0x28223BE20](v14 - 8);
  v43 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C111F4();
  MEMORY[0x28223BE20](v16 - 8);
  v40 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C112E8(0, &qword_280EE3798, MEMORY[0x277D6EC60]);
  v44 = v18;
  v42 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v41 = &v35 - v19;
  sub_218C1136C();
  sub_218C112E8(0, &qword_280EE5808, MEMORY[0x277D6D710]);
  v39 = v20;
  v37 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  v21 = *(a4 + 16);
  v22 = MEMORY[0x277D84F90];
  v47 = v12;
  if (v21)
  {
    v35 = a3;
    v36 = a2;
    v51 = MEMORY[0x277D84F90];
    sub_218C350C0(0, v21, 0);
    v22 = v51;
    v23 = a4 + 32;
    do
    {
      sub_21896FC94(v23, v50);
      sub_21896FC94(v50, &v49);
      sub_218951108();
      sub_219BE5FB4();
      sub_218C113E0(v50);
      v51 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C350C0(v24 > 1, v25 + 1, 1);
        v22 = v51;
      }

      *(v22 + 16) = v25 + 1;
      (*(v8 + 32))(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v10, v48);
      v23 += 176;
      --v21;
    }

    while (v21);
    v26 = v36;
  }

  else
  {
    v26 = a2;
  }

  v27 = sub_218C112A4(&qword_280EE5B80);
  v28 = sub_218C112A4(&qword_280EE5B88);
  MEMORY[0x21CEB9170](v22, v48, v27, v28);
  sub_2189510B4();
  sub_218951108();
  v29 = v38;
  sub_219BE6924();
  v30 = sub_218C11194(&qword_280EE5820);
  v31 = sub_218C11194(&qword_280EE5828);
  MEMORY[0x21CEB9150](v29, v39, v30, v31);
  v32 = v41;
  sub_219BEB2D4();
  v33 = v45;
  sub_219BE85C4();
  v26(v33);
  (*(v46 + 8))(v33, v47);
  return (*(v42 + 8))(v32, v44);
}

uint64_t sub_218C11030(uint64_t a1)
{
  v2 = sub_218C11434();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218C11070()
{
  result = qword_280E94B78;
  if (!qword_280E94B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94B78);
  }

  return result;
}

void sub_218C110C8()
{
  if (!qword_280EE7498)
  {
    sub_218C112E8(255, &qword_280EE5808, MEMORY[0x277D6D710]);
    sub_218C11194(&qword_280EE5820);
    sub_218C11194(&qword_280EE5828);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7498);
    }
  }
}

uint64_t sub_218C11194(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218C112E8(255, &qword_280EE5808, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218C111F4()
{
  if (!qword_280EE74E8)
  {
    sub_218BBF5C0();
    sub_218C112A4(&qword_280EE5B80);
    sub_218C112A4(&qword_280EE5B88);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74E8);
    }
  }
}

uint64_t sub_218C112A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218BBF5C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218C112E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarSectionDescriptor;
    v8[1] = &type metadata for MagazineSectionBarModel;
    v8[2] = sub_2189510B4();
    v8[3] = sub_218951108();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218C1136C()
{
  if (!qword_280E8BF00)
  {
    sub_218C112E8(255, &qword_280EE5808, MEMORY[0x277D6D710]);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BF00);
    }
  }
}

unint64_t sub_218C11434()
{
  result = qword_280E94B80;
  if (!qword_280E94B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94B80);
  }

  return result;
}

uint64_t sub_218C114B0()
{
  v0 = sub_219BF1904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v4 = sub_219BF18D4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_218C115AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_219BED8D4();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C11EFC(0, &qword_27CC0F160, MEMORY[0x277D844C8]);
  v28 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C11DE8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = AudioFeedGroup;
  v23 = a1;
  v13 = v26;
  v12 = v27;
  v31 = 0;
  v14 = v11;
  *v11 = sub_219BF76F4();
  v11[1] = v15;
  v21[2] = v15;
  v30 = 1;
  sub_218C11F60(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  v16 = v22;
  (*(v25 + 32))(v14 + *(v22 + 20), v5, v12);
  v29 = 2;
  v21[1] = 0;
  v17 = sub_219BF7724();
  v18 = v23;
  v19 = v17;
  (*(v13 + 8))(v8, v28);
  *(v14 + *(v16 + 24)) = v19;
  sub_218C11E3C(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_218C11EA0(v14);
}

uint64_t sub_218C11990(void *a1)
{
  sub_218C11EFC(0, &qword_27CC0F170, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C11DE8();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for UpNextAudioFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_218C11F60(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
    v9[13] = 2;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218C11B88(uint64_t a1)
{
  v2 = sub_218C11F60(&qword_27CC0F128, type metadata accessor for UpNextAudioFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218C11C0C(void *a1)
{
  a1[1] = sub_218C11F60(&qword_27CC0F128, type metadata accessor for UpNextAudioFeedGroup);
  a1[2] = sub_218C11F60(&qword_27CC0F130, type metadata accessor for UpNextAudioFeedGroup);
  result = sub_218C11F60(&qword_27CC0F138, type metadata accessor for UpNextAudioFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218C11D90(uint64_t a1)
{
  result = sub_218C11F60(&qword_27CC0F158, type metadata accessor for UpNextAudioFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218C11DE8()
{
  result = qword_27CC0F168;
  if (!qword_27CC0F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F168);
  }

  return result;
}

uint64_t sub_218C11E3C(uint64_t a1, uint64_t a2)
{
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  (*(*(AudioFeedGroup - 8) + 16))(a2, a1, AudioFeedGroup);
  return a2;
}

uint64_t sub_218C11EA0(uint64_t a1)
{
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  (*(*(AudioFeedGroup - 8) + 8))(a1, AudioFeedGroup);
  return a1;
}

void sub_218C11EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C11DE8();
    v7 = a3(a1, &type metadata for UpNextAudioFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C11F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218C11FB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x724774616D726F66;
  v4 = 0xEB0000000070756FLL;
  if (v2 != 1)
  {
    v3 = 0x6F437478654E7075;
    v4 = 0xEB00000000746E75;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x724774616D726F66;
  v8 = 0xEB0000000070756FLL;
  if (*a2 != 1)
  {
    v7 = 0x6F437478654E7075;
    v8 = 0xEB00000000746E75;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218C120DC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C12194()
{
  sub_219BF5524();
}

uint64_t sub_218C12238()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C122EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218C125A8();
  *a1 = result;
  return result;
}

void sub_218C1231C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEB0000000070756FLL;
  v5 = 0x724774616D726F66;
  if (v2 != 1)
  {
    v5 = 0x6F437478654E7075;
    v4 = 0xEB00000000746E75;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218C12390()
{
  v1 = 0x724774616D726F66;
  if (*v0 != 1)
  {
    v1 = 0x6F437478654E7075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_218C12400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218C125A8();
  *a1 = result;
  return result;
}

uint64_t sub_218C12428(uint64_t a1)
{
  v2 = sub_218C11DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C12464(uint64_t a1)
{
  v2 = sub_218C11DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C124A4()
{
  result = qword_27CC0F178;
  if (!qword_27CC0F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F178);
  }

  return result;
}

unint64_t sub_218C124FC()
{
  result = qword_27CC0F180;
  if (!qword_27CC0F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F180);
  }

  return result;
}

unint64_t sub_218C12554()
{
  result = qword_27CC0F188;
  if (!qword_27CC0F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F188);
  }

  return result;
}

uint64_t sub_218C125A8()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_218C125F4(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v9, &v10);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    sub_218AAFB68();
    sub_2186C6148(0, &qword_280E8E3B0);
    v4 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v8;
    type metadata accessor for TodayViewController();
    v5 = v8;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    v7 = sub_219BE2E54();
    sub_219BE3054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218C127F0(void **a1, void *a2)
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E7DC4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [v3 description];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_219BE5314();

  v9 = sub_219BF53D4();

  [a2 setObject:v3 forKey:v9];

  MEMORY[0x28223BE20](v10);
  sub_2186E7DC4(0, &unk_27CC0F190, sub_218C1353C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_218C135AC;
  *(v12 + 24) = v11;
  v13 = v3;
  v14 = sub_219BE2E54();
  v15 = sub_219BE2F64();

  return v15;
}

uint64_t sub_218C12AF0()
{
  v0 = sub_219BE16E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C135D4();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7DC4(0, &qword_280EE7F78, MEMORY[0x277D2F870], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  sub_2187FAD00();
  sub_219BE6934();
  sub_21968BE24(v22[1], v16);

  (*(v1 + 104))(v14, *MEMORY[0x277D2F5C8], v0);
  (*(v1 + 56))(v14, 0, 1, v0);
  v17 = *(v5 + 56);
  sub_218C13668(v16, v7);
  sub_218C13668(v14, &v7[v17]);
  v18 = *(v1 + 48);
  if (v18(v7, 1, v0) != 1)
  {
    sub_218C13668(v7, v11);
    if (v18(&v7[v17], 1, v0) != 1)
    {
      (*(v1 + 32))(v3, &v7[v17], v0);
      sub_2186EF93C(&unk_280EE7F80, MEMORY[0x277D2F870]);
      v19 = sub_219BF53A4();
      v20 = *(v1 + 8);
      v20(v3, v0);
      sub_218C136FC(v14);
      sub_218C136FC(v16);
      v20(v11, v0);
      sub_218C136FC(v7);
      return v19 & 1;
    }

    sub_218C136FC(v14);
    sub_218C136FC(v16);
    (*(v1 + 8))(v11, v0);
    goto LABEL_6;
  }

  sub_218C136FC(v14);
  sub_218C136FC(v16);
  if (v18(&v7[v17], 1, v0) != 1)
  {
LABEL_6:
    sub_218C13788(v7);
    v19 = 0;
    return v19 & 1;
  }

  sub_218C136FC(v7);
  v19 = 1;
  return v19 & 1;
}

void sub_218C12EC4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v6 = [a1 application];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_218C13500;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_34;
  v8 = _Block_copy(v9);

  [v6 ts:v8 installCACommitCompletionBlock:?];
  _Block_release(v8);
}

uint64_t sub_218C13030(uint64_t (*a1)(void))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return a1(0);
}

void sub_218C130D0(uint64_t a1, void (*a2)(id))
{
  swift_getErrorValue();
  sub_219BF7A04();
  v3 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v4 = sub_219BF53D4();

  v5 = [v3 initWithMessage_];

  a2(v5);
}

void sub_218C13224(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v6 = sub_219BE5314();
  MEMORY[0x28223BE20](v6);
  type metadata accessor for TodayViewController();
  sub_219BE3204();
  v7 = sub_219BE1C44();
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_219BE2F64();

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218C134D0;
  *(v10 + 24) = v9;
  v11 = v8;

  v12 = sub_219BE2E54();
  sub_219BE2F74();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_218C1353C()
{
  if (!qword_27CC1CBC0)
  {
    sub_219BDC104();
    sub_218853400();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1CBC0);
    }
  }
}

void sub_218C135D4()
{
  if (!qword_280EE7F70)
  {
    sub_2186E7DC4(255, &qword_280EE7F78, MEMORY[0x277D2F870], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE7F70);
    }
  }
}

uint64_t sub_218C13668(uint64_t a1, uint64_t a2)
{
  sub_2186E7DC4(0, &qword_280EE7F78, MEMORY[0x277D2F870], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C136FC(uint64_t a1)
{
  sub_2186E7DC4(0, &qword_280EE7F78, MEMORY[0x277D2F870], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C13788(uint64_t a1)
{
  sub_218C135D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C13808(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a2;
  v29 = a4;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v23 - v7;
  v27 = sub_219BF1324();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1C74();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2A04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  sub_219BEAC54();
  v34 = *v29;
  (*(v13 + 104))(v15, *MEMORY[0x277D33A68], v12);
  v21 = v26;
  (*(v9 + 104))(v11, *MEMORY[0x277D33570], v23);
  (*(v24 + 104))(v25, *MEMORY[0x277D33288], v27);
  v32 = 0u;
  v33 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  (*(v18 + 16))(v21, v20, v17);
  (*(v18 + 56))(v21, 0, 1, v17);
  sub_219BE7094();

  sub_218C163C4(v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_218C13C5C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v35 = a8;
  v36 = a6;
  v32 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v30 = sub_219BF1324();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1C74();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF2A04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(v32);
  v39 = *v33;
  (*(v16 + 104))(v18, *MEMORY[0x277D33A68], v15);
  (*(v12 + 104))(v14, *MEMORY[0x277D33570], v27);
  v24 = v29;
  v37 = 0u;
  v38 = 0u;
  (*(v10 + 104))(v28, *MEMORY[0x277D33290], v30);
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  v35();
  (*(v21 + 16))(v24, v23, v20);
  (*(v21 + 56))(v24, 0, 1, v20);
  sub_219BE7094();

  sub_218C163C4(v24);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_218C14084(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v28 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v24 - v7;
  v27 = sub_219BF1324();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1C74();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  v35 = v30;
  (*(v14 + 104))(v16, *MEMORY[0x277D33A68], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D33570], v25);
  (*(v8 + 104))(v26, *MEMORY[0x277D33288], v27);
  v22 = v29;
  v33 = 0u;
  v34 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEACD4();
  (*(v19 + 16))(v22, v21, v18);
  (*(v19 + 56))(v22, 0, 1, v18);
  sub_219BE7094();

  sub_218C163C4(v22);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_218C144A0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a2;
  v29 = a4;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v23 - v7;
  v27 = sub_219BF1324();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1C74();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2A04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  sub_219BEAC54();
  v34 = *v29;
  (*(v13 + 104))(v15, *MEMORY[0x277D33A68], v12);
  v21 = v26;
  (*(v9 + 104))(v11, *MEMORY[0x277D33570], v23);
  (*(v24 + 104))(v25, *MEMORY[0x277D33288], v27);
  v32 = 0u;
  v33 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  (*(v18 + 16))(v21, v20, v17);
  (*(v18 + 56))(v21, 0, 1, v17);
  sub_219BE7094();

  sub_218C163C4(v21);
  (*(v18 + 8))(v20, v17);
  return 1;
}

uint64_t sub_218C148C0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218C14A14()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_218C14B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a7;
  v31 = a1;
  v34 = a11;
  v32 = a2;
  v33 = a10;
  v16 = type metadata accessor for AudioFeedTrack(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_219BDED94();
  v19 = a8();
  sub_218C1620C(a5, &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  sub_218C162E4(&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = (v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = a6;
  v22[1] = v23;
  v24 = objc_allocWithZone(MEMORY[0x277D75088]);

  swift_unknownObjectRetain();
  v25 = sub_219BF53D4();
  aBlock[4] = v33;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C5B6F8;
  aBlock[3] = v34;
  v26 = _Block_copy(aBlock);
  v27 = [v24 initWithName:v25 image:v19 actionHandler:v26];

  _Block_release(v26);

  return v27;
}

uint64_t sub_218C14D6C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v35 = a8;
  v36 = a6;
  v32 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - v9;
  v30 = sub_219BF1324();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1C74();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF2A04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(v32);
  v39 = *v33;
  (*(v16 + 104))(v18, *MEMORY[0x277D33A68], v15);
  (*(v12 + 104))(v14, *MEMORY[0x277D33570], v27);
  v24 = v29;
  v37 = 0u;
  v38 = 0u;
  (*(v10 + 104))(v28, *MEMORY[0x277D33290], v30);
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  v35();
  (*(v21 + 16))(v24, v23, v20);
  (*(v21 + 56))(v24, 0, 1, v20);
  sub_219BE7094();

  sub_218C163C4(v24);
  (*(v21 + 8))(v23, v20);
  return 1;
}

uint64_t sub_218C15198()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218C152B8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v28 = a2;
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = &v24 - v7;
  v27 = sub_219BF1324();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1C74();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28(0);
  v35 = v30;
  (*(v14 + 104))(v16, *MEMORY[0x277D33A68], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D33570], v25);
  (*(v8 + 104))(v26, *MEMORY[0x277D33288], v27);
  v22 = v29;
  v33 = 0u;
  v34 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEACD4();
  (*(v19 + 16))(v22, v21, v18);
  (*(v19 + 56))(v22, 0, 1, v18);
  sub_219BE7094();

  sub_218C163C4(v22);
  (*(v19 + 8))(v21, v18);
  return 1;
}

uint64_t sub_218C156D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = MEMORY[0x277D84F90];
  sub_218C15198();
  v16 = *(a1 + 24);
  v47 = a3;
  v51 = a6;
  v52 = a4;
  v49 = a1;
  v50 = a5;
  LODWORD(v48) = a2;
  v45 = v13;
  if ((v16 & 0x10) != 0)
  {
    v44 = v15;
    v46 = sub_2186C6148(0, &qword_280E8D9D0);
    sub_219BDED94();
    sub_219BDED64();
    sub_218C1620C(a1, v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v51;
    *(v22 + 16) = a5;
    *(v22 + 24) = v23;
    v24 = v22 + v20;
    v25 = v47;
    sub_218C162E4(v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v26 = (v22 + v21);
    *v26 = v25;
    v26[1] = a4;

    swift_unknownObjectRetain();
  }

  else
  {

    v17 = *a1;
    v46 = sub_218C15198();
    v44 = v18;
    sub_2186C6148(0, &qword_280E8D9D0);
    sub_219BDED94();
    sub_219BDED64();
    v19 = swift_allocObject();
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = v17;
    v19[5] = a3;
    v19[6] = a4;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  v27 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF6E14();
  MEMORY[0x21CECC690]();
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  v46 = v28;
  sub_219BF5A54();
  v43[1] = sub_218C148C0();
  sub_2186C6148(0, &qword_280E8D9D0);
  v44 = sub_219BDED94();
  sub_219BDED84();
  sub_218C1620C(v49, v27);
  v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v51;
  *(v31 + 16) = v50;
  *(v31 + 24) = v32;
  sub_218C162E4(v27, v31 + v29);
  v33 = (v31 + v30);
  v34 = v47;
  v35 = v52;
  *v33 = v47;
  v33[1] = v35;

  swift_unknownObjectRetain();
  v36 = sub_219BF6E14();
  MEMORY[0x21CECC690]();
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  sub_218C14A14();
  v48 = v36;
  sub_219BDED74();
  sub_218C1620C(v49, v27);
  v37 = swift_allocObject();
  *(v37 + 16) = v50;
  *(v37 + 24) = v32;
  sub_218C162E4(v27, v37 + v29);
  v38 = (v37 + v30);
  v39 = v52;
  *v38 = v34;
  v38[1] = v39;

  swift_unknownObjectRetain();
  v40 = sub_219BF6E14();
  MEMORY[0x21CECC690]();
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  sub_2186C6148(0, &qword_280E8DAF0);
  v41 = sub_219BF6C04();

  return v41;
}

uint64_t sub_218C15CC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x277D84F90];
  v16 = sub_218C15198();
  v17 = *(a1 + 24);
  v47 = a1;
  v46 = a2;
  if ((v17 & 0x10) != 0)
  {
    v45 = v16;
    sub_219BDED94();
    v19 = sub_219BDED64();
    sub_218C1620C(a1, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = a3;
    v26 = a4;
    v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = a5;
    *(v29 + 24) = a6;
    v30 = v29 + v27;
    a4 = v26;
    a3 = v25;
    sub_218C162E4(v15, v30);
    v31 = (v29 + v28);
    *v31 = v25;
    v31[1] = a4;
    v32 = objc_allocWithZone(MEMORY[0x277D75088]);

    swift_unknownObjectRetain();
    v22 = sub_219BF53D4();

    v52 = sub_218C16348;
    v53 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_218C5B6F8;
    v51 = &block_descriptor_6;
    v23 = _Block_copy(&aBlock);
    v24 = [v32 initWithName:v22 image:v19 actionHandler:v23];
  }

  else
  {

    v18 = *a1;
    sub_218C15198();
    sub_219BDED94();
    v19 = sub_219BDED64();
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = v18;
    v20[5] = a3;
    v20[6] = a4;
    v21 = objc_allocWithZone(MEMORY[0x277D75088]);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = sub_219BF53D4();

    v52 = sub_218C161FC;
    v53 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_218C5B6F8;
    v51 = &block_descriptor_35;
    v23 = _Block_copy(&aBlock);
    v24 = [v21 initWithName:v22 image:v19 actionHandler:v23];
  }

  v33 = v24;

  _Block_release(v23);

  v34 = v33;
  MEMORY[0x21CECC690]();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v35 = sub_218C148C0();
  v36 = v47;
  v38 = sub_218C14B4C(v35, v37, a5, a6, v47, a3, a4, MEMORY[0x277D30330], &unk_282A3CA10, sub_218C16520, &block_descriptor_18_0);

  v39 = v38;
  MEMORY[0x21CECC690]();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v40 = sub_218C14A14();
  v42 = sub_218C14B4C(v40, v41, a5, a6, v36, a3, a4, MEMORY[0x277D30328], &unk_282A3C9C0, sub_218C16450, &block_descriptor_12_0);

  v43 = v42;
  MEMORY[0x21CECC690]();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  return v54;
}

uint64_t sub_218C1620C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218C16270()
{
  if (!qword_27CC0F1A0)
  {
    sub_218788800();
    sub_219BDE3B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0F1A0);
    }
  }
}

uint64_t sub_218C162E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C16360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218C163C4(uint64_t a1)
{
  sub_218C16360(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C16468(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_218C16578(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_218C16694(uint64_t a1)
{
  v2 = sub_218C167A4(&qword_27CC0F1C0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218C167A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoriesMagazineFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218C167E8()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB1C0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup - 8);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_218C17F48(v18, v12, type metadata accessor for ForYouAudioFeedGroup);
      v20 = *v12;

      v21 = type metadata accessor for ForYouAudioFeedGroup;
      v22 = v12;
    }

    else
    {
      sub_218C17F48(v18, v15, type metadata accessor for UpNextAudioFeedGroup);
      v20 = *v15;

      v21 = type metadata accessor for UpNextAudioFeedGroup;
      v22 = v15;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v7 + 32))(v9, v18, v6);
    v20 = sub_219BEDE34();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_218C17F48(v18, v4, type metadata accessor for CuratedAudioFeedGroup);
      v20 = sub_219BED784();
      v21 = type metadata accessor for CuratedAudioFeedGroup;
      v22 = v4;
LABEL_10:
      sub_218C17EE8(v22, v21);
      return v20;
    }

    return 7364967;
  }

  return v20;
}

uint64_t sub_218C16B30@<X0>(uint64_t a1@<X8>)
{
  sub_2186FB1C0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_219BEDE54();
      (*(v5 + 8))(v7, v4);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_5:
    sub_218C17EE8(v10, type metadata accessor for AudioFeedSectionDescriptor);
  }

  return sub_2189F4148(v1, a1);
}

uint64_t sub_218C16CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v2, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v20 = type metadata accessor for ForYouAudioFeedGroup;
      sub_218C17F48(v15, v9, type metadata accessor for ForYouAudioFeedGroup);
      *(a1 + 24) = v7;
      *(a1 + 32) = sub_2186FB2A0(&qword_280ECEB40, type metadata accessor for ForYouAudioFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v18 = v9;
    }

    else
    {
      v20 = type metadata accessor for UpNextAudioFeedGroup;
      sub_218C17F48(v15, v12, type metadata accessor for UpNextAudioFeedGroup);
      *(a1 + 24) = AudioFeedGroup;
      *(a1 + 32) = sub_2186FB2A0(&qword_27CC0F140, type metadata accessor for UpNextAudioFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v18 = v12;
    }

    v19 = v20;
  }

  else
  {
    if (result == 2)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return sub_218C17EE8(v15, type metadata accessor for AudioFeedSectionDescriptor);
    }

    if (result != 3)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    sub_218C17F48(v15, v6, type metadata accessor for CuratedAudioFeedGroup);
    *(a1 + 24) = v4;
    *(a1 + 32) = sub_2186FB2A0(&qword_280ECB828, type metadata accessor for CuratedAudioFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v18 = v6;
    v19 = type metadata accessor for CuratedAudioFeedGroup;
  }

  return sub_218C17F48(v18, boxed_opaque_existential_1, v19);
}

uint64_t sub_218C1703C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v3, v5);
  if (swift_getEnumCaseMultiPayload() <= 3)
  {
    sub_218C17EE8(v5, type metadata accessor for AudioFeedSectionDescriptor);
  }

  v6 = *MEMORY[0x277D31EA0];
  v7 = sub_219BEDDC4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_218C17130@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v10 = MEMORY[0x277D33180];
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    v7 = *MEMORY[0x277D33188];
    v8 = sub_219BF10E4();
    (*(*(v8 - 8) + 104))(a1, v7, v8);
    return sub_218C17EE8(v5, type metadata accessor for AudioFeedSectionDescriptor);
  }

  sub_218C17EE8(v5, type metadata accessor for AudioFeedSectionDescriptor);
  v10 = MEMORY[0x277D33190];
LABEL_7:
  v11 = *v10;
  v12 = sub_219BF10E4();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

BOOL sub_218C172B0()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_218C17EE8(v3, type metadata accessor for AudioFeedSectionDescriptor);
  }

  return EnumCaseMultiPayload < 4;
}

BOOL sub_218C17364()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_218C17EE8(v7, type metadata accessor for AudioFeedSectionDescriptor);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_218C17F48(v7, v4, type metadata accessor for CuratedAudioFeedGroup);

    v9 = sub_219BF7614();

    sub_218C17EE8(v4, type metadata accessor for CuratedAudioFeedGroup);
    return v9 > 1;
  }

  return 0;
}

uint64_t sub_218C174FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4148(v2, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v20 = type metadata accessor for ForYouAudioFeedGroup;
      sub_218C17F48(v15, v9, type metadata accessor for ForYouAudioFeedGroup);
      *(a1 + 24) = v7;
      *(a1 + 32) = sub_2186FB2A0(&qword_280ECEB18, type metadata accessor for ForYouAudioFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v18 = v9;
    }

    else
    {
      v20 = type metadata accessor for UpNextAudioFeedGroup;
      sub_218C17F48(v15, v12, type metadata accessor for UpNextAudioFeedGroup);
      *(a1 + 24) = AudioFeedGroup;
      *(a1 + 32) = sub_2186FB2A0(&qword_27CC0F158, type metadata accessor for UpNextAudioFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v18 = v12;
    }

    v19 = v20;
    return sub_218C17F48(v18, boxed_opaque_existential_1, v19);
  }

  if (result == 2)
  {
    result = sub_218C17EE8(v15, type metadata accessor for AudioFeedSectionDescriptor);
    goto LABEL_8;
  }

  if (result != 3)
  {
LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_218C17F48(v15, v6, type metadata accessor for CuratedAudioFeedGroup);
  *(a1 + 24) = v4;
  *(a1 + 32) = sub_2186FB2A0(&qword_280ECB800, type metadata accessor for CuratedAudioFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v18 = v6;
  v19 = type metadata accessor for CuratedAudioFeedGroup;
  return sub_218C17F48(v18, boxed_opaque_existential_1, v19);
}

uint64_t sub_218C1783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v7;
  sub_2186FB1C0();
  v9 = v8;
  v58 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v53 - v12;
  v13 = type metadata accessor for ForYouAudioFeedGroup();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v53 - v17);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  v20 = MEMORY[0x28223BE20](AudioFeedGroup);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v53 - v23);
  sub_218C17E84();
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 56);
  sub_2189F4148(a1, v28);
  sub_2189F4148(a2, &v28[v29]);
  type metadata accessor for AudioFeedSectionDescriptor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (v31 == 1)
      {
        sub_218C17F48(v28, v18, type metadata accessor for ForYouAudioFeedGroup);
        sub_218C17F48(&v28[v29], v16, type metadata accessor for ForYouAudioFeedGroup);
        if (*v18 == *v16 && v18[1] == v16[1])
        {
          v38 = 1;
        }

        else
        {
          v38 = sub_219BF78F4();
        }

        v49 = type metadata accessor for ForYouAudioFeedGroup;
        sub_218C17EE8(v16, type metadata accessor for ForYouAudioFeedGroup);
        v50 = v18;
        goto LABEL_37;
      }

      v39 = type metadata accessor for ForYouAudioFeedGroup;
    }

    else
    {
      if (!v31)
      {
        sub_218C17F48(v28, v24, type metadata accessor for UpNextAudioFeedGroup);
        sub_218C17F48(&v28[v29], v22, type metadata accessor for UpNextAudioFeedGroup);
        if (*v24 == *v22 && v24[1] == v22[1] || (v38 = 0, (sub_219BF78F4() & 1) != 0))
        {
          v38 = *(v24 + *(AudioFeedGroup + 24)) == *(v22 + *(AudioFeedGroup + 24));
        }

        v49 = type metadata accessor for UpNextAudioFeedGroup;
        sub_218C17EE8(v22, type metadata accessor for UpNextAudioFeedGroup);
        v50 = v24;
        goto LABEL_37;
      }

      v39 = type metadata accessor for UpNextAudioFeedGroup;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (v31 == 3)
      {
        v32 = v56;
        sub_218C17F48(v28, v56, type metadata accessor for CuratedAudioFeedGroup);
        v33 = v57;
        sub_218C17F48(&v28[v29], v57, type metadata accessor for CuratedAudioFeedGroup);
        v34 = sub_219BED784();
        v36 = v35;
        if (v34 == sub_219BED784() && v36 == v37)
        {
          v38 = 1;
        }

        else
        {
          v38 = sub_219BF78F4();
        }

        v49 = type metadata accessor for CuratedAudioFeedGroup;
        sub_218C17EE8(v33, type metadata accessor for CuratedAudioFeedGroup);
        v50 = v32;
LABEL_37:
        sub_218C17EE8(v50, v49);
        return v38 & 1;
      }

      v39 = type metadata accessor for CuratedAudioFeedGroup;
LABEL_24:
      sub_218C17EE8(v28, v39);
      goto LABEL_25;
    }

    if (v31 == 4)
    {
      v38 = 1;
      return v38 & 1;
    }

LABEL_25:
    sub_218C17EE8(&v28[v29], type metadata accessor for AudioFeedSectionDescriptor);
    v38 = 0;
    return v38 & 1;
  }

  if (v31 != 2)
  {
    (*(v58 + 8))(v28, v9);
    goto LABEL_25;
  }

  v40 = v58;
  v41 = *(v58 + 32);
  v42 = v54;
  v41(v54, v28, v9);
  v43 = &v28[v29];
  v44 = v55;
  v41(v55, v43, v9);
  v45 = sub_219BEDE34();
  v47 = v46;
  if (v45 == sub_219BEDE34() && v47 == v48)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_219BF78F4();
  }

  v51 = *(v40 + 8);
  v51(v44, v9);
  v51(v42, v9);
  return v38 & 1;
}

void sub_218C17E84()
{
  if (!qword_280EBC3A8[0])
  {
    type metadata accessor for AudioFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EBC3A8);
    }
  }
}

uint64_t sub_218C17EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C17F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C17FB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218C18008(void *a1)
{
  sub_218C19FB4();
  v100 = v2;
  v98 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v99 = (&v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C1A010();
  v96 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v93 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v89 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v89 - v10;
  v12 = sub_219BDE294();
  v95 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UserNotification.ArticleData(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v24 = [a1 notification];
  v25 = [v24 request];

  sub_218C1A090();
  (*(*(v26 - 8) + 56))(v23, 2, 2, v26);
  v27 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v28 = sub_2196575B8(v25, v23);

  sub_218C1A108(v28 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v20, type metadata accessor for UserNotification.Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    v92 = v9;
    v34 = v95;
    v35 = v96;
    sub_218C1A170(v20, v17, type metadata accessor for UserNotification.ArticleData);
    v36 = [v97 actionIdentifier];
    sub_219BF5414();

    v37 = sub_219BF7614();

    if (v37 == 2)
    {
      type metadata accessor for FollowingNotificationsPrewarm();
      v61 = swift_allocBox();
      v63 = v62;
      v64 = sub_219BF3BD4();
      (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
      swift_storeEnumTagMultiPayload();
      v65 = v99;
      v66 = v100;
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_219BE5314();
      *v65 = v61 | 0x3000000000000004;
      (*(v98 + 104))(v65, *MEMORY[0x277D6E710], v66);
      sub_2186DD23C(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();

      v31 = sub_219BE3014();
    }

    else
    {
      if (v37 != 1)
      {
        v38 = v17;
        v90 = v17;
        v91 = v28;
        v39 = *MEMORY[0x277D2FF08];
        v40 = v34;
        if (v37)
        {
          v67 = *(v34 + 104);
          v68 = v14;
          v67(v14, v39, v12);
          v69 = v35;
          v70 = *(v35 + 48);
          v71 = v11;
          *&v11[v70] = sub_218C18D6C(v11, v94, v38, v68);
          sub_2187B2C48();
          v73 = v72;
          v74 = swift_allocBox();
          v76 = v75;
          v77 = *(v73 + 48);
          sub_2187B2DA0();
          v79 = *(v78 + 48);
          v80 = v92;
          sub_218C1A108(v71, v92, sub_218C1A010);

          sub_218C1A170(v80, v76, MEMORY[0x277D2FB40]);
          (*(v40 + 8))(v68, v12);
          *(v76 + v79) = &unk_282A22FB8;
          v81 = v93;
          sub_218C1A170(v71, v93, sub_218C1A010);
          *(v76 + v77) = *(v81 + *(v69 + 48));
          v56 = v74 | 4;
          sub_218C1A1D8(v81, MEMORY[0x277D2FB40]);
          if (qword_280E8D870 == -1)
          {
LABEL_18:
            sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_219C09BA0;
            v83 = v90;
            v85 = *v90;
            v84 = v90[1];
            *(v82 + 56) = MEMORY[0x277D837D0];
            *(v82 + 64) = sub_2186FC3BC();
            *(v82 + 32) = v85;
            *(v82 + 40) = v84;

            sub_219BF6214();
            sub_219BE5314();

            v86 = v98;
            v87 = v99;
            *v99 = v56;
            (*(v86 + 104))(v87, *MEMORY[0x277D6E710], v100);
            sub_2186DD23C(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
            swift_allocObject();

            v31 = sub_219BE3014();

            v32 = type metadata accessor for UserNotification.ArticleData;
            v33 = v83;
            goto LABEL_19;
          }
        }

        else
        {
          v41 = *(v34 + 104);
          v42 = v14;
          v41(v14, v39, v12);
          v43 = v35;
          v44 = *(v35 + 48);
          v45 = v11;
          *&v11[v44] = sub_218C18D6C(v11, v94, v38, v42);
          sub_2187B2C48();
          v47 = v46;
          v48 = swift_allocBox();
          v50 = v49;
          v51 = *(v47 + 48);
          sub_2187B2DA0();
          v53 = *(v52 + 48);
          v54 = v92;
          sub_218C1A108(v45, v92, sub_218C1A010);

          sub_218C1A170(v54, v50, MEMORY[0x277D2FB40]);
          (*(v40 + 8))(v42, v12);
          *(v50 + v53) = &unk_282A22F90;
          v55 = v93;
          sub_218C1A170(v45, v93, sub_218C1A010);
          *(v50 + v51) = *(v55 + *(v43 + 48));
          v56 = v48 | 4;
          sub_218C1A1D8(v55, MEMORY[0x277D2FB40]);
          if (qword_280E8D870 == -1)
          {
            goto LABEL_18;
          }
        }

        swift_once();
        goto LABEL_18;
      }

      v57 = v100;
      v58 = *v17;
      v59 = v17[1];

      sub_218C1990C();
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_219C09BA0;
      *(v60 + 56) = MEMORY[0x277D837D0];
      *(v60 + 64) = sub_2186FC3BC();
      *(v60 + 32) = v58;
      *(v60 + 40) = v59;
      sub_219BF6214();
      sub_219BE5314();

      (*(v98 + 104))(v99, *MEMORY[0x277D6E708], v57);
      sub_2186DD23C(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v31 = sub_219BE3014();
    }

    v32 = type metadata accessor for UserNotification.ArticleData;
    v33 = v17;
    goto LABEL_19;
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_219BE5314();
  v29 = sub_219BE8DC4();
  sub_218C1A284(&qword_27CC0F1E0, MEMORY[0x277D6E2B8]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D6E2B0], v29);
  sub_2186DD23C(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v31 = sub_219BE2FF4();

  v32 = type metadata accessor for UserNotification.Kind;
  v33 = v20;
LABEL_19:
  sub_218C1A1D8(v33, v32);
  return v31;
}

void *sub_218C18D6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v28[0] = a1;
  v28[1] = a4;
  v5 = sub_219BDD534();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD23C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_219BDEE04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_218C192A0(a3);
  if (v16)
  {
    v17 = v16;
    if (sub_218C19578(v16, a3))
    {
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_219C09BA0;
      *(v18 + 56) = sub_218C1A238();
      *(v18 + 64) = sub_218C1A284(&unk_27CC0F1F8, sub_218C1A238);
      *(v18 + 32) = v17;
      v19 = v17;
      sub_219BF6214();
      sub_219BE5314();

      v20 = v19;
      sub_219BDEDE4();
      v21 = sub_219BDB954();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      sub_219BDD904();
      sub_218710290(v11, &unk_280EE9D00, MEMORY[0x277CC9260]);
      (*(v13 + 8))(v15, v12);

      return MEMORY[0x277D84F90];
    }
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = *a3;
  v25 = a3[1];
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2186FC3BC();
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  swift_bridgeObjectRetain_n();
  sub_219BF6214();
  sub_219BE5314();

  v26 = sub_219BDB954();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 1, 1, v26);
  sub_219BDD514();
  v27(v11, 1, 1, v26);
  sub_219BDD894();
  sub_218710290(v11, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(v6 + 8))(v8, v5);
  return &unk_282A22F68;
}

id sub_218C192A0(uint64_t a1)
{
  v3 = sub_218C19C5C(a1, v1);
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = *(a1 + *(type metadata accessor for UserNotification.ArticleData(0) + 40));
  sub_2187AC8F4();
  v7 = v6;
  *(v4 + 56) = v6;
  v8 = sub_218C1A284(&qword_27CC0F208, sub_2187AC8F4);
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;

  sub_219BF6214();
  sub_219BE5314();

  v9 = *(v1 + 40);
  v10 = objc_allocWithZone(MEMORY[0x277D31170]);
  swift_unknownObjectRetain();
  v11 = v9;
  v12 = sub_219BF5204();
  v13 = [v10 initWithArticlePayload:v12 sourceChannel:v3 assetManager:v11];

  swift_unknownObjectRelease();
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_219C09BA0;
  if (v13)
  {
    *(v14 + 56) = sub_218C1A238();
    *(v15 + 64) = sub_218C1A284(&unk_27CC0F1F8, sub_218C1A238);
    *(v15 + 32) = v13;
    v16 = v13;
    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    *(v14 + 56) = v7;
    *(v14 + 64) = v8;
    *(v14 + 32) = v5;

    MEMORY[0x21CEB8D80]("Failed to create FCNotificationArticleHeadline from user info: %{public}@", 73, 2, v15);
  }

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_218C19578(void *a1, uint64_t a2)
{
  sub_2186DD23C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = [*(v2 + 48) possiblyUnfetchedAppConfiguration];
  v19 = [a1 needsRapidUpdates];
  v20 = &selRef_notificationArticleWithRapidUpdatesCacheTimeout;
  if (!v19)
  {
    v20 = &selRef_notificationArticleCacheTimeout;
  }

  [v18 *v20];
  swift_unknownObjectRelease();
  v21 = type metadata accessor for UserNotification.ArticleData(0);
  sub_2187D96F4(a2 + *(v21 + 32), v8);
  v22 = *(v12 + 48);
  if (v22(v8, 1, v11) == 1)
  {
    sub_218710290(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_219BDBBB4();
    if (v22(v10, 1, v11) != 1)
    {
      sub_218710290(v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    sub_219BDBBF4();
    (*(v12 + 8))(v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v17, v10, v11);
  }

  if ([a1 isValid])
  {
    sub_219BDBD24();
    v23 = sub_219BDBC24();
    v24 = *(v12 + 8);
    v24(v15, v11);
    v24(v17, v11);
  }

  else
  {
    (*(v12 + 8))(v17, v11);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_218C1990C()
{
  v0 = sub_219BF1414();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186DD23C(0, &qword_27CC0DB20, sub_218AD7B00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  sub_218C19E54();
  v7 = [objc_allocWithZone(MEMORY[0x277D31098]) init];
  v8 = sub_219BF53D4();
  [v7 setArticleID_];

  [v7 setRole_];
  sub_219BE6AA4();
  swift_getObjectType();
  sub_219BEAD94();
  *v3 = v7;
  (*(v1 + 104))(v3, *MEMORY[0x277D33370], v0);
  v9 = v7;
  sub_219BF2524();
  sub_218AD7B00(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_219BE7044();
  sub_218710290(v6, &qword_27CC0DB20, sub_218AD7B00);
  swift_unknownObjectRelease();
}

id sub_218C19C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a2 + 32);

    v5 = sub_219BF53D4();
    v6 = [v4 slowCachedTagForID_];

    if (v6)
    {
      v7 = [v6 asChannel];
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = v7;
        if (qword_280E8D870 != -1)
        {
          swift_once();
        }

        sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_219C09BA0;
        *(v9 + 56) = MEMORY[0x277D837D0];
        *(v9 + 64) = sub_2186FC3BC();
        *(v9 + 32) = v3;
        *(v9 + 40) = v2;
        sub_219BF6214();
        sub_219BE5314();

        return v8;
      }
    }
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return 0;
}

uint64_t sub_218C19E54()
{
  v0 = sub_219BE89F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6AD4();
  if (v7)
  {
    sub_2186CB1F0(&v6, v8);
    (*(v1 + 104))(v3, *MEMORY[0x277D6E0F0], v0);
    sub_218718690(v8, &v6);
    v9 = 0u;
    v10 = 0u;
    v11 = 1;
    sub_219BE8314();
    swift_allocObject();
    v4 = sub_219BE82F4();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2188097A4(&v6);
    return 0;
  }

  return v4;
}

void sub_218C19FB4()
{
  if (!qword_27CC0F1C8)
  {
    sub_2186CF9A8();
    v0 = sub_219BE96D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F1C8);
    }
  }
}

void sub_218C1A010()
{
  if (!qword_27CC0F1D0)
  {
    sub_219BDD944();
    sub_2187B2E78(255, &unk_280E8F3A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0F1D0);
    }
  }
}

void sub_218C1A090()
{
  if (!qword_280EE9C50)
  {
    sub_2186DD23C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9C50);
    }
  }
}

uint64_t sub_218C1A108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C1A170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C1A1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218C1A238()
{
  result = qword_27CC0F1F0;
  if (!qword_27CC0F1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0F1F0);
  }

  return result;
}

uint64_t sub_218C1A284(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_218C1A2CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BDE294();
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = sub_219BDD534();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BDD914();
  if (result)
  {
    v38 = a1;
    v18 = [result articleID];
    result = swift_unknownObjectRelease();
    if (v18)
    {
      v19 = sub_219BF5414();
      v37[1] = v20;
      v37[2] = v19;

      v21 = sub_219BDD914();
      if (v21)
      {
        v22 = [v21 routeURL];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_219BDB8B4();

          v23 = sub_219BDB954();
          (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
        }

        else
        {
          v26 = sub_219BDB954();
          (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
        }

        sub_218AB007C(v11, v13);
      }

      else
      {
        v25 = sub_219BDB954();
        (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      }

      sub_2187B2C48();
      v28 = v27;
      v29 = swift_allocBox();
      v31 = v30;
      v32 = *(v28 + 48);
      sub_2187B2DA0();
      v34 = *(v33 + 48);
      sub_219BDD514();
      v35 = sub_219BDB954();
      (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
      v36 = v40;
      (*(v40 + 104))(v4, *MEMORY[0x277D2FF08], v2);
      sub_219BDD894();
      (*(v36 + 8))(v4, v2);
      sub_218838478(v8);
      result = (*(v39 + 8))(v16, v14);
      *(v31 + v34) = &unk_282A21B50;
      *(v31 + v32) = MEMORY[0x277D84F90];
      v24 = v29 | 2;
    }

    else
    {
      v24 = 0xF000000000000007;
    }

    a1 = v38;
  }

  else
  {
    v24 = 0xF000000000000007;
  }

  *a1 = v24;
  return result;
}

uint64_t sub_218C1A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v19[0] = *a4;
  v19[1] = v8;
  v20 = *(a4 + 32);
  sub_2186D6710(0, &qword_280E8E080);
  sub_219BE3204();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = *(a4 + 16);
  *(v9 + 40) = *a4;
  *(v9 + 56) = v10;
  *(v9 + 72) = *(a4 + 32);

  sub_218C1CF68(v19, v18);
  v11 = sub_219BE2E54();
  type metadata accessor for FeedAvailability();
  sub_219BE2F84();

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;

  v13 = sub_219BE2E54();
  sub_219BE3064();

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;

  v15 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  return v16;
}

uint64_t sub_218C1AAB0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v11 = type metadata accessor for FeedAvailability();
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *a1;
  result = [*a1 respondsToSelector_];
  if (result)
  {
    v16 = [v14 deprecatedSportsTopicTagIds];
    if (v16)
    {
      v17 = v16;
      v18 = sub_219BF5924();
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = sub_218845F78(v18);

    v20 = sub_2188537B8(a3, a4, v19);

    if (v20)
    {
      *v13 = a3;
      v13[1] = a4;
      swift_storeEnumTagMultiPayload();
      sub_218C1D6DC(0, &qword_27CC0F230, type metadata accessor for FeedAvailability, MEMORY[0x277D6CF30]);
      swift_allocObject();

      return sub_219BE3014();
    }

    else
    {
      MEMORY[0x28223BE20](v21);
      *(&v28 - 6) = a2;
      *(&v28 - 5) = a3;
      v22 = v28;
      *(&v28 - 4) = a4;
      *(&v28 - 3) = v22;
      *(&v28 - 2) = v14;
      sub_219BE3204();
      v23 = sub_219BE2E54();
      sub_218C1D654();
      type metadata accessor for FeedAvailabilityService();
      sub_219BE2F84();

      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v14;
      v25 = *(a6 + 16);
      *(v24 + 32) = *a6;
      *(v24 + 48) = v25;
      *(v24 + 64) = *(a6 + 32);
      swift_unknownObjectRetain();
      sub_218C1CF68(a6, v29);
      v26 = sub_219BE2E54();
      v27 = sub_219BE2F94();

      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C1ADAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C0B8C0;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v6 + 64) = v8;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v9 = sub_219BF6A34();
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790);
  v11 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for FeedAvailability();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_218C1AF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C0B8C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v8 + 64) = v10;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;

  v11 = sub_219BF6A34();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  type metadata accessor for FeedAvailability();
  sub_219BF7484();
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790);
  v13 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  return sub_21881222C(a1, a4, type metadata accessor for FeedAvailability);
}

uint64_t sub_218C1B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2186D6710(0, &qword_280E8E680);
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  swift_unknownObjectRetain();
  v8 = sub_219BE2E54();
  type metadata accessor for FeedAvailabilityService();
  v9 = sub_219BE2F84();

  return v9;
}

uint64_t sub_218C1B1B0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_219BEC114();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - v8);
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v18 = *a1;
  v11 = v18;
  v19 = v10;
  v20 = v12;
  sub_218C1DD0C(0, &qword_280EE6D00, &type metadata for FeedAvailabilityServiceResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218C1DA94(v11, v10, v12);
  sub_219BE3014();
  swift_unknownObjectRetain();
  *v9 = v11;
  (*(v4 + 104))(v9, *MEMORY[0x277D2D568], v3);
  sub_218C1D6DC(0, &qword_280EE6FE8, sub_2186FE720, MEMORY[0x277D6CF30]);
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v4 + 32))(v14 + v13, v7, v3);

  sub_219BE2F54();
  (*(v4 + 8))(v9, v3);
  v15 = sub_219BE31C4();

  return v15;
}

uint64_t sub_218C1B444@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v59 = a5;
  v9 = *(a4 + 8);
  v61 = *a4;
  v62 = v9;
  v10 = *(a4 + 24);
  v55 = *(a4 + 16);
  v56 = v10;
  v57 = a2;
  v60 = *(a4 + 32);
  sub_218C1D654();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  sub_21881222C(a1, v14, sub_218C1D654);
  v21 = *v14;
  v20 = *(v14 + 1);
  v22 = v14[16];
  v23 = &v14[*(v12 + 56)];
  v24 = v19;
  sub_218BFB7B0(v23, v19);
  if ((v22 & 1) == 0)
  {
    sub_218C1DA94(v21, v20, 0);
    v27 = sub_218C1D740(v21, a3);
    if (v5)
    {
      sub_218C1DA48(v21, v20, 0);
      goto LABEL_6;
    }

    v32 = v27;
    v33 = v19;
    v34 = v57[2];
    if (v60 > 1)
    {
      if (v60 == 2)
      {
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }
    }

    else
    {
      sub_21897010C(v61, v62, v55, v56, v60 != 0);
    }

    sub_2186C6148(0, &unk_280E8DDB0);
    swift_getObjectType();
    sub_218C1DA94(v21, v20, 0);
    sub_2186C6148(0, &qword_280E8E6C0);
    v47 = v34;
    v48 = sub_21999B788(v47, v21, v32, v61, v62);
    sub_218C1DA48(v21, v20, 0);

    v49 = v58;
    sub_21881222C(v19, v58, sub_2186FE720);
    v50 = v48;
    sub_218BFB344(v21, v48, v49, v59);
    sub_218C1DA48(v21, v20, 0);

LABEL_24:
    v28 = v33;
    return sub_218BFB694(v28);
  }

  v25 = swift_unknownObjectRetain();
  v26 = sub_218C1D740(v25, a3);
  if (!v5)
  {
    v29 = v57[2];
    v53 = v24;
    v54 = a3;
    v52 = v26;
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        v31 = v62;

        v57 = v61;
      }

      else
      {
        v57 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = v61;
      v31 = v62;
      sub_21897010C(v61, v62, v55, v56, v60 != 0);
      v57 = v30;
    }

    v35 = sub_2186C6148(0, &unk_280E8DDB0);
    swift_getObjectType();
    sub_2186C6148(0, &qword_280E8E6C0);
    swift_unknownObjectRetain();
    v36 = v29;
    v37 = v52;
    v52 = v35;
    v57 = sub_21999B788(v36, v21, v37, v57, v31);
    swift_unknownObjectRelease();
    v39 = *a4;
    v38 = *(a4 + 8);
    v40 = *(a4 + 32);
    if (v40 > 1)
    {
      v41 = 0;
      v42 = 0;
      if (v40 != 2)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v43 = sub_21999B788(v36, v20, v54, v41, v42);

        swift_unknownObjectRelease();
        v44 = v57;
        v45 = [v57 associateAlternativeFeedDescriptor_];
        v33 = v53;
        v46 = v58;
        sub_21881222C(v53, v58, sub_2186FE720);
        sub_218BFB344(v21, v45, v46, v59);

        sub_218C1DA48(v21, v20, 1);
        goto LABEL_24;
      }
    }

    else
    {
      sub_21897010C(v61, v62, v55, v56, v60);
    }

    v41 = v39;
    v42 = v38;
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
LABEL_6:
  sub_218C1DA48(v21, v20, v22);
  v28 = v19;
  return sub_218BFB694(v28);
}

uint64_t sub_218C1B980()
{
  v0 = objc_opt_self();
  v1 = sub_219BF53D4();
  LODWORD(v0) = [v0 isSportsEventIdentifier_];

  if (v0)
  {
    if (!sub_218C1C69C())
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v2 = objc_opt_self();
  v3 = sub_219BF53D4();
  LODWORD(v2) = [v2 isPuzzleTypeIdentifier_];

  if (v2)
  {
    if (!sub_218C1C89C())
    {
LABEL_10:
      MEMORY[0x28223BE20](0);
      sub_218C1DCA4();
      swift_allocObject();
      return sub_219BE30B4();
    }

LABEL_6:
    sub_218C1DCA4();
    swift_allocObject();
    return sub_219BE3014();
  }

  return sub_218C1C26C();
}

uint64_t sub_218C1BB68(void **a1, int a2, uint64_t a3, id a4)
{
  v5 = *a1;
  sub_218C1BCA8(*a1, a4, a3);
  if (v4)
  {
    return v7;
  }

  if (!v6)
  {
    sub_218C1DD0C(0, &qword_280EE6D00, &type metadata for FeedAvailabilityServiceResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    swift_unknownObjectRetain();
    return sub_219BE3014();
  }

  sub_218C1C26C();

  *(swift_allocObject() + 16) = v5;
  swift_unknownObjectRetain();
  v9 = sub_219BE2E54();
  v10 = sub_219BE2F74();

  return v10;
}

uint64_t sub_218C1BCA8(void *a1, id a2, uint64_t a3)
{
  v4 = 0;
  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v4 = &selRef_boldSystemFontOfSize_;
      if ([a2 respondsToSelector_])
      {
        v9 = [a2 sportsStandingsTagID];
        if (v9)
        {
          goto LABEL_24;
        }
      }

      v8 = 0xD000000000000014;
      v10 = "sportsStandingsTagID";
      goto LABEL_27;
    }

    if (a3 != 5)
    {
      return v4;
    }

    v4 = a1;
    if ([a1 isMySports])
    {
      v4 = &selRef_boldSystemFontOfSize_;
      if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_mySportsScoresTagID)) == 0)
      {
        v7 = 0x8000000219CECFD0;
        v8 = 0xD000000000000013;
        goto LABEL_59;
      }

      goto LABEL_24;
    }

    v12 = [v4 asSports];
    if (v12)
    {
      v4 = [v12 sportsType];
      swift_unknownObjectRelease();
      v8 = 0;
      v7 = 4;
      if (v4 <= 2)
      {
        if (!v4)
        {
          goto LABEL_59;
        }

        if (v4 == 1)
        {
          v4 = &selRef_boldSystemFontOfSize_;
          if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportScoresTagID)) == 0)
          {
            v7 = 0x8000000219CECFB0;
            v8 = 0xD000000000000010;
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        if (v4 != 2)
        {
LABEL_61:
          v8 = 0;
          v7 = 5;
          goto LABEL_59;
        }
      }

      else if ((v4 - 5) >= 7)
      {
        if (v4 != 3)
        {
LABEL_43:
          if (v4 == 4)
          {
            goto LABEL_59;
          }

          goto LABEL_61;
        }

        v4 = &selRef_boldSystemFontOfSize_;
        if ([a2 respondsToSelector_])
        {
          v9 = [a2 sportTeamScoresTagID];
          if (v9)
          {
            goto LABEL_24;
          }
        }

        v8 = 0xD000000000000014;
        v10 = "sportTeamScoresTagID";
        goto LABEL_27;
      }

      v4 = &selRef_boldSystemFontOfSize_;
      if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportLeagueScoresTagID)) == 0)
      {
        v6 = "sportLeagueScoresTagID";
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_45:
    v8 = 0;
    v7 = 4;
    goto LABEL_59;
  }

  switch(a3)
  {
    case 6:
      v4 = a1;
      if ([a1 isMySports])
      {
        v4 = &selRef_boldSystemFontOfSize_;
        if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_mySportsHighlightsTagID)) == 0)
        {
          v7 = 0x8000000219CECF50;
          v8 = 0xD000000000000017;
          goto LABEL_59;
        }

        goto LABEL_24;
      }

      if ([v4 isSportsEvent])
      {
        v4 = &selRef_boldSystemFontOfSize_;
        if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportEventHighlightsTagID)) == 0)
        {
          v11 = "sportsEventHighlightsTagID";
LABEL_58:
          v7 = (v11 - 32) | 0x8000000000000000;
          v8 = 0xD00000000000001ALL;
          goto LABEL_59;
        }

        goto LABEL_24;
      }

      v13 = [v4 asSports];
      if (v13)
      {
        v4 = [v13 sportsType];
        swift_unknownObjectRelease();
        v8 = 0;
        v7 = 4;
        if (v4 > 2)
        {
          if ((v4 - 5) >= 7)
          {
            if (v4 == 3)
            {
              v4 = &selRef_boldSystemFontOfSize_;
              if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportTeamHighlightsTagID)) == 0)
              {
                v7 = 0x8000000219CECED0;
                v8 = 0xD000000000000018;
                goto LABEL_59;
              }

              goto LABEL_24;
            }

            goto LABEL_43;
          }

LABEL_55:
          v4 = &selRef_boldSystemFontOfSize_;
          if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportLeagueHighlightsTagID)) == 0)
          {
            v11 = "sportLeagueHighlightsTagID";
            goto LABEL_58;
          }

LABEL_24:
          v5 = v9;
LABEL_25:
          v4 = sub_219BF5414();

          return v4;
        }

        if (!v4)
        {
          goto LABEL_59;
        }

        if (v4 != 1)
        {
          if (v4 != 2)
          {
            goto LABEL_61;
          }

          goto LABEL_55;
        }

        v4 = &selRef_boldSystemFontOfSize_;
        if ([a2 respondsToSelector_])
        {
          v9 = [a2 sportHighlightsTagID];
          if (v9)
          {
            goto LABEL_24;
          }
        }

        v8 = 0xD000000000000014;
        v10 = "sportHighlightsTagID";
LABEL_27:
        v7 = (v10 - 32) | 0x8000000000000000;
        goto LABEL_59;
      }

      goto LABEL_45;
    case 7:
      v4 = &selRef_boldSystemFontOfSize_;
      if (([a2 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(a2, sel_sportsBracketTagID)) == 0)
      {
        v7 = 0x8000000219CECFF0;
        v8 = 0xD000000000000012;
        goto LABEL_59;
      }

      goto LABEL_24;
    case 11:
      if (![a1 isPuzzleType] || (v4 = objc_msgSend(a2, sel_puzzlesConfig), v5 = objc_msgSend(v4, sel_puzzleFullArchiveTagID), v4, !v5))
      {
        v6 = "puzzleFullArchiveTagID";
LABEL_8:
        v7 = (v6 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000016;
LABEL_59:
        sub_218C1DAD0();
        swift_allocError();
        *v14 = v8;
        v14[1] = v7;
        swift_willThrow();
        return v4;
      }

      goto LABEL_25;
  }

  return v4;
}

uint64_t sub_218C1C26C()
{
  v1 = *(v0 + 24);
  v2 = sub_219BF53D4();
  v3 = [v1 fastCachedTagForID_];

  if (v3 || (v4 = sub_219BF53D4(), v5 = [v1 slowCachedTagForID_], v4, v5))
  {
    sub_218C1DCA4();
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v6);
    sub_218C1DCA4();
    swift_allocObject();
    return sub_219BE30B4();
  }
}

void sub_218C1C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 24);
  sub_218C1DD0C(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;

  v17 = sub_219BF5904();

  sub_219BE1F84();
  v18 = sub_219BE1F34();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = sub_218846958;
  v19[7] = v14;
  v21[4] = sub_218C1DD5C;
  v21[5] = v19;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_218E938D4;
  v21[3] = &block_descriptor_37;
  v20 = _Block_copy(v21);

  [v15 fetchTagsForTagIDs:v17 includeParents:1 includeChildren:1 qualityOfService:25 callbackQueue:v18 completionHandler:v20];
  _Block_release(v20);
}

void sub_218C1C5A0(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2)
  {
    v8 = a2;
    v9 = a2;
    v10 = v8;
LABEL_10:
    a3(v10);

    return;
  }

  if (!a1 || !*(a1 + 16) || (sub_21870F700(a5, a6), (v12 & 1) == 0))
  {
    sub_218C1DAD0();
    v10 = swift_allocError();
    v8 = v10;
    *v14 = 0;
    v14[1] = 0;
    goto LABEL_10;
  }

  v13 = swift_unknownObjectRetain();
  a7(v13);

  swift_unknownObjectRelease();
}

id sub_218C1C69C()
{
  v1 = *(v0 + 32);
  v2 = sub_219BF53D4();
  v3 = [v1 fastCachedSportsEventForID_];

  if (!v3)
  {
    v4 = sub_219BF53D4();
    v3 = [v1 slowCachedSportsEventForID_];
  }

  return v3;
}

void sub_218C1C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 32);

  v12 = sub_219BF53D4();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_218C1DDD4;
  v13[5] = v10;
  v15[4] = sub_218C1DD84;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_218C1DDE8;
  v15[3] = &block_descriptor_37_0;
  v14 = _Block_copy(v15);

  [v11 fetchSportsEventForSportsEventID:v12 cachePolicy:0 qualityOfService:25 completionHandler:v14];
  _Block_release(v14);
}

id sub_218C1C89C()
{
  v1 = *(v0 + 40);
  v2 = sub_219BF53D4();
  v3 = [v1 cachedPuzzleTypeForID_];

  if (!v3)
  {
    v4 = sub_219BF53D4();
    v3 = [v1 cachedPuzzleTypeForID_];
  }

  return v3;
}

void sub_218C1C938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 40);

  v12 = sub_219BF53D4();
  v13 = [objc_opt_self() defaultCachePolicy];
  v14 = FCDispatchQueueForQualityOfService();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_218C1DDD4;
  v15[5] = v10;
  v17[4] = sub_218C1DDAC;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218C1DDE8;
  v17[3] = &block_descriptor_47;
  v16 = _Block_copy(v17);

  [v11 fetchPuzzleTypeForPuzzleTypeID:v12 cachePolicy:v13 qualityOfService:25 callbackQueue:v14 completionHandler:v16];
  _Block_release(v16);
}

void sub_218C1CADC(uint64_t a1, id a2, void (*a3)(uint64_t), __n128 a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v7 = a2;
    v8 = a2;
    v9 = v7;
LABEL_3:
    a3(v9);

    return;
  }

  if (!a1)
  {
    sub_218C1DAD0();
    v9 = swift_allocError();
    v7 = v9;
    *v12 = a4;
    goto LABEL_3;
  }

  v11 = swift_unknownObjectRetain();
  a6(v11);

  swift_unknownObjectRelease();
}

uint64_t sub_218C1CBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_218C1CC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_218C1CC58, 0, 0);
}

uint64_t sub_218C1CC58()
{
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_218C1CD8C;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_218C1CD8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218C1CE84()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  return swift_deallocClassInstance();
}

uint64_t sub_218C1CF68(uint64_t a1, uint64_t a2)
{
  sub_218C1DD0C(0, &qword_280ECD8F0, &type metadata for RouteReferralContext, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C1D030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xE800000000000000;
  v4 = 0x7374726F7053796DLL;
  switch(a3)
  {
    case 2:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v9 = "feedBackCatalog-";
      goto LABEL_16;
    case 3:
      return v4;
    case 4:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v7 = 0x8000000219CD6470;
      v8 = 0xD000000000000014;
      goto LABEL_17;
    case 5:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v7 = 0x8000000219CD6490;
      v8 = 0xD000000000000011;
      goto LABEL_17;
    case 6:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v7 = 0x8000000219CD64B0;
      v8 = 0xD000000000000015;
      goto LABEL_17;
    case 7:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v6 = "feedSportsBracket-";
      goto LABEL_9;
    case 8:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v9 = "feedSportsEvent-";
LABEL_16:
      v7 = (v9 - 32) | 0x8000000000000000;
      v8 = 0xD000000000000010;
      goto LABEL_17;
    case 9:
      return 0x7548656C7A7A7570;
    case 10:
      v5 = 0x7954656C7A7A7570;
      v3 = 0xEB000000002D6570;
      goto LABEL_14;
    case 11:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_219BF7314();

      v6 = "puzzleFullArchive-";
LABEL_9:
      v7 = (v6 - 32) | 0x8000000000000000;
      v8 = 0xD000000000000012;
LABEL_17:
      v11[0] = v8;
      v11[1] = v7;
      goto LABEL_18;
    case 12:
      v5 = 0x2D627548646F6F66;
      goto LABEL_14;
    case 13:
      sub_219BF7314();

      strcpy(v11, "recipeCatalog-");
      HIBYTE(v11[1]) = -18;
      goto LABEL_18;
    default:
      v5 = 0x2D64656566;
      v3 = 0xE500000000000000;
LABEL_14:
      v11[0] = v5;
      v11[1] = v3;
LABEL_18:
      MEMORY[0x21CECC330]();
      return v11[0];
  }
}

uint64_t sub_218C1D324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      if (a3 == 10)
      {
        v5 = 0x7954656C7A7A7570;
        goto LABEL_24;
      }

      if (a3 != 11)
      {
        if (a3 != 13)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (a3 == 7)
      {
        sub_219BF7314();

        v4 = 0xD000000000000014;
        goto LABEL_26;
      }

      if (a3 != 8)
      {
        return 0x7548656C7A7A7570;
      }
    }

LABEL_25:
    sub_219BF7314();

    v4 = 0xD000000000000012;
    goto LABEL_26;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      sub_219BF7314();

      v4 = 0xD000000000000016;
      goto LABEL_26;
    }

    if (a3 == 5)
    {
      sub_219BF7314();

      v4 = 0xD000000000000013;
      goto LABEL_26;
    }

LABEL_17:
    sub_219BF7314();

    v4 = 0xD000000000000017;
LABEL_26:
    v6 = v4;
    goto LABEL_27;
  }

  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return 0x7374726F7053796DLL;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_18:
  v5 = 0x2D324C64656566;
LABEL_24:
  v6 = v5;
LABEL_27:
  MEMORY[0x21CECC330]();
  return v6;
}

void sub_218C1D654()
{
  if (!qword_280EB0C70)
  {
    sub_2186FE720();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EB0C70);
    }
  }
}

void sub_218C1D6DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218C1D740(void *a1, uint64_t a2)
{
  if ([a1 isSportsEvent])
  {
    return 8;
  }

  switch(a2)
  {
    case 0:
    case 1:
    case 3:
      if ([a1 isMySports])
      {
        goto LABEL_29;
      }

      if ([a1 isPuzzleType])
      {
        goto LABEL_31;
      }

      if ([a1 isPuzzleHub])
      {
        return 9;
      }

      if ([a1 isFoodHub])
      {
        goto LABEL_39;
      }

      if ([a1 isRecipeCatalog])
      {
        return 13;
      }

      else
      {
        return a2 == 1;
      }

    case 2:
      if ([a1 isMySports])
      {
        goto LABEL_29;
      }

      result = [a1 asChannel];
      if (result)
      {
        v5 = [result currentIssueIDs];
        if (!v5)
        {
          goto LABEL_43;
        }

        swift_unknownObjectRelease();
        return 2;
      }

      return result;
    case 4:
      if ([a1 asSports])
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    case 5:
      if ([a1 isMySports])
      {
        goto LABEL_29;
      }

      if (![a1 asSports])
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    case 6:
      if ([a1 isMySports])
      {
LABEL_29:
        result = 3;
      }

      else if ([a1 asSports])
      {
LABEL_43:
        swift_unknownObjectRelease();
        result = 0;
      }

      else
      {
LABEL_36:
        v6 = 4;
LABEL_37:
        sub_218C1DAD0();
        swift_allocError();
        *v7 = 0;
        v7[1] = v6;
        result = swift_willThrow();
      }

      break;
    case 7:
      if (![a1 asSports])
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    case 8:
      if (![a1 asSportsEvent])
      {
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
      result = 8;
      break;
    case 9:
      if ([a1 isPuzzleHub])
      {
        return 9;
      }

      else
      {
        return 0;
      }

    case 10:
      if (([a1 isPuzzleType] & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_31:
      result = 10;
      break;
    case 11:
      if (([a1 isPuzzleType] & 1) == 0)
      {
        goto LABEL_36;
      }

      result = 11;
      break;
    case 12:
      if (([a1 isFoodHub] & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_39:
      result = 12;
      break;
    case 13:
      if (![a1 isRecipeCatalog])
      {
        goto LABEL_36;
      }

      result = 13;
      break;
    default:
      v6 = 5;
      goto LABEL_37;
  }

  return result;
}

uint64_t sub_218C1DA48(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectRelease();
  if (a3)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218C1DA94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    v3 = vars8;
  }

  return swift_unknownObjectRetain();
}

unint64_t sub_218C1DAD0()
{
  result = qword_27CC0F238;
  if (!qword_27CC0F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F238);
  }

  return result;
}

uint64_t sub_218C1DB24(uint64_t a1)
{
  v4 = *(sub_219BEC114() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218C1CC34(a1, v6, v1 + v5);
}

uint64_t sub_218C1DC58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

void sub_218C1DCA4()
{
  if (!qword_280EE69B8)
  {
    sub_2186D6710(255, &qword_280E8E680);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE69B8);
    }
  }
}

void sub_218C1DD0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218C1DDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD944();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218C1DE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDD944();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SharedWithYouFeedRouteModel()
{
  result = qword_27CC0F240;
  if (!qword_27CC0F240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C1DF20(uint64_t a1)
{
  result = sub_219BDD944();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218C1DFC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a8;
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v11 = MEMORY[0x277CC9260];
  v12 = MEMORY[0x277D83D88];
  sub_218747D90(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_219BDB954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747D90(0, &qword_280EE6350, MEMORY[0x277D35078], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v29 - v21;
  sub_218C24358(a10, v15, &unk_280EE9D00, v11);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_218744DAC(v15, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218747D90);
    v23 = sub_219BE4394();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  }

  else
  {
    v24 = *(v17 + 32);
    v24(v19, v15, v16);
    v24(v22, v19, v16);
    v25 = *MEMORY[0x277D35070];
    v26 = sub_219BE4394();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v22, v25, v26);
    (*(v27 + 56))(v22, 0, 1, v26);
  }

  sub_218C1E360(a1, v29, v30, v31, v32, v33, v34, v35, a9, v22);
  return sub_218744DAC(v22, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_218747D90);
}

uint64_t sub_218C1E360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v120 = a8;
  v118 = a7;
  v126 = a6;
  v113 = a5;
  v125 = a4;
  v117 = a3;
  v116 = a2;
  v115 = a1;
  v114 = a10;
  v11 = MEMORY[0x277D83D88];
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v123 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v124 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v105 - v15;
  sub_218747D90(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v127 = v105 - v18;
  sub_218747D90(0, &qword_280EE6350, MEMORY[0x277D35078], v11);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v119 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = v105 - v22;
  sub_218747D90(0, &qword_280EE8AE0, MEMORY[0x277D30210], v11);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v105 - v24;
  v26 = type metadata accessor for CampaignRouteModel();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v128 = v105 - v30;
  v31 = sub_219BDE924();
  v131 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v130 = v105 - v35;
  v122 = v10;
  v36 = [*(v10 + 64) appConfiguration];
  if ([v36 respondsToSelector_])
  {
    v37 = [v36 paidBundleConfig];
    swift_unknownObjectRelease();
    v38 = [v37 paywallConfigurationsByType];
    if (v38)
    {
      v39 = v38;
      v111 = v37;
      v112 = v31;
      v110 = v16;
      sub_2186C6148(0, &qword_280E8DA20);
      sub_2186C6148(0, &qword_280E8E030);
      sub_218C23AC0(&qword_280E8DA10);
      v40 = sub_219BF5214();

      v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      v42 = sub_218B8EBF8(v41, v40);

      if (v42)
      {
        v43 = [v42 subscriptionButtonConfig];
        if (v43)
        {
          v109 = v42;
          v108 = v43;
          v44 = [v43 shouldDismissLandingPagePostPurchase];
          v45 = *MEMORY[0x277D301F8];
          v46 = sub_219BDE914();
          v47 = *(*(v46 - 8) + 104);
          v48 = v130;
          v106 = v45;
          v47(v130, v45, v46);
          v49 = *(v131 + 104);
          v50 = MEMORY[0x277D30208];
          if (!v44)
          {
            v50 = MEMORY[0x277D30200];
          }

          v51 = *v50;
          v105[1] = v131 + 104;
          v105[0] = v49;
          v49(v48, v51, v112);
          if (v126)
          {
            sub_218747D90(0, &qword_280E8C038, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
            v52 = *(sub_219BE3D94() - 8);
            v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_219C09BA0;
            v107 = v54;
            v55 = v54 + v53;
            v56 = v126;
            *v55 = v113;
            *(v55 + 8) = v56;
            *(v55 + 32) = 0u;
            *(v55 + 48) = 0u;
            *(v55 + 16) = 0u;
            (*(v52 + 104))();
          }

          else
          {
            v107 = MEMORY[0x277D84F90];
          }

          v61 = v116;
          v62 = HIBYTE(v116) & 0xF;
          v63 = v115;
          if ((v116 & 0x2000000000000000) == 0)
          {
            v62 = v115 & 0xFFFFFFFFFFFFLL;
          }

          v64 = v131;
          if (v62)
          {
          }

          else
          {
            v63 = 0;
            v61 = 0;
          }

          v65 = v112;
          (*(v64 + 16))(v25, v130, v112);
          (*(v64 + 56))(v25, 0, 1, v65);

          v126 = sub_219BF6194();
          sub_218C24358(v114, v129, &qword_280EE6350, MEMORY[0x277D35078]);
          v66 = sub_219BDD4D4();
          (*(*(v66 - 8) + 56))(v127, 1, 1, v66);
          v67 = &v29[v26[14]];
          *(v67 + 1) = 0;
          swift_unknownObjectWeakInit();
          *v29 = v63;
          *(v29 + 1) = v61;
          v68 = *(v64 + 48);
          if (v68(v25, 1, v65) == 1)
          {
            v69 = sub_219BDE914();
            (*(*(v69 - 8) + 104))(v34, v106, v69);
            (v105[0])(v34, *MEMORY[0x277D30200], v65);
            if (v68(v25, 1, v65) != 1)
            {
              sub_218744DAC(v25, &qword_280EE8AE0, MEMORY[0x277D30210], MEMORY[0x277D83D88], sub_218747D90);
            }
          }

          else
          {
            (*(v64 + 32))(v34, v25, v65);
          }

          (*(v64 + 32))(&v29[v26[5]], v34, v65);
          v70 = &v29[v26[6]];
          v71 = v125;
          *v70 = v117;
          *(v70 + 1) = v71;
          v72 = &v29[v26[7]];
          v73 = v120;
          *v72 = v118;
          *(v72 + 1) = v73;
          *&v29[v26[8]] = v107;
          *&v29[v26[9]] = v126;
          v29[v26[11]] = 0;
          *(v67 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v74 = sub_219BE4394();
          v75 = *(v74 - 8);
          v76 = *(v75 + 48);
          v77 = v129;
          if (v76(v129, 1, v74) == 1)
          {
            v78 = *MEMORY[0x277D34D80];
            v79 = sub_219BE3D74();
            v80 = v119;
            (*(*(v79 - 8) + 104))(v119, v78, v79);
            (*(v75 + 104))(v80, *MEMORY[0x277D35068], v74);
            v81 = v76(v77, 1, v74);

            if (v81 != 1)
            {
              sub_218744DAC(v129, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_218747D90);
            }
          }

          else
          {
            v80 = v119;
            (*(v75 + 32))(v119, v77, v74);
          }

          (*(v75 + 56))(v80, 0, 1, v74);
          sub_218C2411C(v80, &v29[v26[10]], &qword_280EE6350, MEMORY[0x277D35078]);
          v29[v26[13]] = 0;
          sub_218C2411C(v127, &v29[v26[12]], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
          v82 = v29;
          v83 = v128;
          sub_21899068C(v82, v128);
          v84 = *(v122 + 56);
          v85 = swift_allocBox();
          sub_218C2419C(v83, v86, type metadata accessor for CampaignRouteModel);
          v129 = v85;
          v87 = v85 | 0x1000000000000006;
          v88 = sub_219BDFA44();
          v89 = v110;
          (*(*(v88 - 8) + 56))(v110, 1, 1, v88);
          v141 = 0;
          memset(v140, 0, sizeof(v140));
          v139 = 0;
          memset(v138, 0, sizeof(v138));
          v137 = v84;
          sub_2187B171C(v138, &v133, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v134 + 1))
          {
            sub_21875F93C(&v133, v135);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v91 = qword_280ED32D8;
            v90 = qword_280ED32E0;
            v92 = qword_280ED32E8;

            v127 = v90;
            sub_2188202A8(v90);
            __swift_destroy_boxed_opaque_existential_1(v135);
          }

          else
          {
            sub_2187B1CC0(&v133, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v91 = qword_280ED32D8;
            v93 = qword_280ED32E0;
            v92 = qword_280ED32E8;

            v127 = v93;
            sub_2188202A8(v93);
          }

          v132 = v87;
          v134 = 0u;
          v133 = 0u;
          v94 = MEMORY[0x277D2DED0];
          v95 = v124;
          sub_218C24358(v89, v124, &qword_280EE8610, MEMORY[0x277D2DED0]);
          sub_2187B171C(v140, v135, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v96 = (*(v123 + 80) + 24) & ~*(v123 + 80);
          v97 = (v121 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
          v98 = (v97 + 47) & 0xFFFFFFFFFFFFFFF8;
          v99 = swift_allocObject();
          *(v99 + 16) = 0;
          sub_218C2411C(v95, v99 + v96, &qword_280EE8610, v94);
          v100 = v99 + v97;
          v101 = v135[1];
          *v100 = v135[0];
          *(v100 + 16) = v101;
          *(v100 + 32) = v136;
          v102 = (v99 + v98);
          v103 = (v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v102 = 0;
          v102[1] = 0;
          v104 = v127;
          *v103 = v91;
          v103[1] = v104;
          v103[2] = v92;

          sub_2188202A8(v104);
          sub_2186CF94C();
          sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
          sub_219BEB464();

          sub_2187FABEC(v104);
          sub_2187B1CC0(v138, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          sub_2187B1CC0(v140, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_218744DAC(v110, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
          sub_218C242F8(v128, type metadata accessor for CampaignRouteModel);
          (*(v131 + 8))(v130, v112);
          sub_218744DAC(&v133, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_27CC08548 != -1)
  {
    swift_once();
  }

  sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v57 = swift_allocObject();
  v58 = MEMORY[0x277D83E88];
  *(v57 + 16) = xmmword_219C09BA0;
  v59 = MEMORY[0x277D83ED0];
  *(v57 + 56) = v58;
  *(v57 + 64) = v59;
  *(v57 + 32) = a9;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218C1F76C(uint64_t a1)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = *(v1 + 56);
  type metadata accessor for WebLinkViewControllerType(0);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_219BDB954();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  swift_storeEnumTagMultiPayload();
  v35 = v11;
  v15 = v11 | 0xB000000000000000;
  v16 = sub_219BDFA44();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = v10;
  sub_2187B171C(v42, &v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v38 + 1))
  {
    sub_21875F93C(&v37, v39);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v34 = v17;
    sub_2188202A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_2187B1CC0(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v20 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v34 = v20;
    sub_2188202A8(v20);
  }

  v36 = v15;
  v38 = 0u;
  v37 = 0u;
  v21 = MEMORY[0x277D2DED0];
  sub_218C24358(v9, v7, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v44, v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v9;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_218C2411C(v7, v25 + v22, &qword_280EE8610, v21);
  v26 = v25 + v23;
  v27 = v39[1];
  *v26 = v39[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v40;
  v28 = (v25 + v24);
  v29 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v28 = 0;
  v28[1] = 0;
  v30 = v34;
  *v29 = v18;
  v29[1] = v30;
  v29[2] = v19;

  sub_2188202A8(v30);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v30);
  sub_2187B1CC0(v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218C1FE40(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v45 = *(v7 - 8);
  v8 = *(v45 + 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for PreBuyFlowRouteModel();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = sub_219BE3D64();
  (*(*(v17 - 8) + 16))(&v15[v16], a2, v17);
  v18 = *(v12 + 24);
  v19 = sub_219BE3EE4();
  (*(*(v19 - 8) + 16))(&v15[v18], a3, v19);
  *v15 = a1;
  v15[*(v12 + 28)] = 1;
  v20 = *(v3 + 56);
  v21 = swift_allocBox();
  v47 = v15;
  sub_218C2419C(v15, v22, type metadata accessor for PreBuyFlowRouteModel);
  v46 = v21;
  v23 = v21 | 0xC000000000000000;
  v24 = sub_219BDFA44();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = v20;
  sub_2187B171C(v54, &v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v50 + 1))
  {
    sub_21875F93C(&v49, v51);
    v25 = qword_280ED32D0;
    v26 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    v28 = qword_280ED32D8;
    v27 = qword_280ED32E0;
    v29 = qword_280ED32E8;

    v44 = v27;
    sub_2188202A8(v27);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    v30 = a1;
    sub_2187B1CC0(&v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v28 = qword_280ED32D8;
    v31 = qword_280ED32E0;
    v29 = qword_280ED32E8;

    v44 = v31;
    sub_2188202A8(v31);
  }

  v48 = v23;
  v50 = 0u;
  v49 = 0u;
  v32 = MEMORY[0x277D2DED0];
  sub_218C24358(v11, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v56, v51, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v33 = (v45[80] + 24) & ~v45[80];
  v45 = v11;
  v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v34 + 47) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  sub_218C2411C(v35, v37 + v33, &qword_280EE8610, v32);
  v38 = v37 + v34;
  v39 = v51[1];
  *v38 = v51[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v52;
  v40 = (v37 + v36);
  v41 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = 0;
  v40[1] = 0;
  v42 = v44;
  *v41 = v28;
  v41[1] = v42;
  v41[2] = v29;

  sub_2188202A8(v42);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v42);
  sub_2187B1CC0(v54, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v56, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v45, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218C242F8(v47, type metadata accessor for PreBuyFlowRouteModel);
  sub_218744DAC(&v49, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218C20614(uint64_t a1)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *(v1 + 56);
  v11 = sub_219BE3CA4();
  v12 = swift_allocBox();
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  v34 = v12;
  v14 = v12 | 0xC000000000000004;
  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v10;
  sub_2187B171C(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v37 + 1))
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    v32 = v16;
    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187B1CC0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v19 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    v32 = v19;
    sub_2188202A8(v19);
  }

  v35 = v14;
  v37 = 0u;
  v36 = 0u;
  v20 = MEMORY[0x277D2DED0];
  sub_218C24358(v9, v7, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v43, v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v9;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_218C2411C(v7, v24 + v21, &qword_280EE8610, v20);
  v25 = v24 + v22;
  v26 = v38[1];
  *v25 = v38[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  v29 = v32;
  *v28 = v17;
  v28[1] = v29;
  v28[2] = v18;

  sub_2188202A8(v29);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v29);
  sub_2187B1CC0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

void sub_218C20CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = a2;
  v36 = sub_219BE3EE4();
  v4 = *(v36 - 8);
  v34 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  v31 = MEMORY[0x277D34D78];
  sub_218747D90(0, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v26 - v9;
  v10 = sub_219BDB954();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE4934();
  v13 = [objc_allocWithZone(MEMORY[0x277CEE6C8]) initWithBag_];
  v33 = v13;
  swift_unknownObjectRelease();
  v14 = a1;
  v15 = sub_219BDB854();
  v32 = [v13 typeForURL_];

  (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v10);
  v16 = v29;
  v17 = v31;
  sub_218C24358(v35, v29, &qword_280EE64A0, v31);
  v18 = v6;
  v19 = v36;
  (*(v4 + 16))(v18, v37, v36);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + *(v30 + 80) + v20) & ~*(v30 + 80);
  v22 = (v8 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v38;
  (*(v11 + 32))(v23 + v20, v27, v26);
  sub_218C2411C(v16, v23 + v21, &qword_280EE64A0, v17);
  (*(v4 + 32))(v23 + v22, v28, v19);
  aBlock[4] = sub_218C2394C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218846728;
  aBlock[3] = &block_descriptor_38;
  v24 = _Block_copy(aBlock);

  v25 = v32;
  [v32 addFinishBlock_];
  _Block_release(v24);
}

void sub_218C210E8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v63 = a4;
  v64 = a3;
  v8 = sub_219BE3EE4();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747D90(0, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v52 - v12;
  v13 = sub_219BED174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BED1D4();
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16);
  v65 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDB954();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1)
  {
    v59 = v14;
    v60 = v13;
    v22 = a1;
    v23 = sub_219BF5DB4();
    if (qword_27CC08548 != -1)
    {
      swift_once();
    }

    sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    *(v24 + 56) = sub_2186C6148(0, &qword_280E8DA20);
    *(v24 + 64) = sub_218C23AC0(&qword_27CC0F258);
    *(v24 + 32) = v22;
    v53 = v22;
    sub_219BF6214();
    sub_219BE5314();

    if (v23)
    {
      v26 = v59;
      v25 = v60;
      if (v23 == 2)
      {
        sub_2186C6148(0, &qword_280E8E3B0);
        v52 = sub_219BF66A4();
        (*(v19 + 16))(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v18);
        v63 = MEMORY[0x277D34D78];
        sub_218C24358(v55, v61, &qword_280EE64A0, MEMORY[0x277D34D78]);
        v33 = v57;
        v34 = v58;
        (*(v57 + 16))(v62, v56, v58);
        v35 = (*(v19 + 80) + 24) & ~*(v19 + 80);
        v36 = (v20 + *(v54 + 80) + v35) & ~*(v54 + 80);
        v37 = (v11 + *(v33 + 80) + v36) & ~*(v33 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v64;
        (*(v19 + 32))(v38 + v35, v21, v18);
        sub_218C2411C(v61, v38 + v36, &qword_280EE64A0, v63);
        (*(v33 + 32))(v38 + v37, v62, v34);
        v73 = sub_218C23D78;
        v74 = v38;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v71 = sub_218793E0C;
        v72 = &block_descriptor_18_1;
        v39 = _Block_copy(&aBlock);

        v40 = v65;
        sub_219BED1A4();
        aBlock = MEMORY[0x277D84F90];
        sub_2186F7DB0(&qword_280E927E0, MEMORY[0x277D85198]);
        sub_218747D90(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v41 = v66;
        v42 = v60;
        sub_219BF7164();
        v43 = v52;
        MEMORY[0x21CECD460](0, v40, v41, v39);
        _Block_release(v39);

        (*(v59 + 8))(v41, v42);
        (*(v67 + 8))(v40, v68);
      }

      else if (v23 == 1)
      {
        sub_2186C6148(0, &qword_280E8E3B0);
        v27 = sub_219BF66A4();
        (*(v19 + 16))(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v18);
        v28 = (*(v19 + 80) + 24) & ~*(v19 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v64;
        (*(v19 + 32))(v29 + v28, v21, v18);
        v73 = sub_218C23FB0;
        v74 = v29;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v71 = sub_218793E0C;
        v72 = &block_descriptor_30_2;
        v30 = _Block_copy(&aBlock);

        v31 = v65;
        sub_219BED1A4();
        aBlock = MEMORY[0x277D84F90];
        sub_2186F7DB0(&qword_280E927E0, MEMORY[0x277D85198]);
        sub_218747D90(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v32 = v66;
        sub_219BF7164();
        MEMORY[0x21CECD460](0, v31, v32, v30);
        _Block_release(v30);

        (*(v26 + 8))(v32, v25);
        (*(v67 + 8))(v31, v68);
      }

      else
      {
        v51 = v53;
      }
    }

    else
    {
      sub_2186C6148(0, &qword_280E8E3B0);
      v44 = sub_219BF66A4();
      (*(v19 + 16))(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v18);
      v45 = (*(v19 + 80) + 24) & ~*(v19 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v64;
      (*(v19 + 32))(v46 + v45, v21, v18);
      v73 = sub_218C23ED4;
      v74 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_218793E0C;
      v72 = &block_descriptor_24_1;
      v47 = _Block_copy(&aBlock);

      v48 = v65;
      sub_219BED1A4();
      aBlock = MEMORY[0x277D84F90];
      sub_2186F7DB0(&qword_280E927E0, MEMORY[0x277D85198]);
      sub_218747D90(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      v49 = v66;
      v50 = v60;
      sub_219BF7164();
      MEMORY[0x21CECD460](0, v48, v49, v47);
      _Block_release(v47);

      (*(v59 + 8))(v49, v50);
      (*(v67 + 8))(v48, v68);
    }
  }
}

uint64_t sub_218C21C40(uint64_t a1, uint64_t a2)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v33 = *(v4 - 8);
  v5 = *(v33 + 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = *(a1 + 56);
  v10 = sub_219BDB954();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 16))(v12, a2, v10);
  v34 = v11;
  v13 = v11 | 0xB000000000000006;
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v9;
  sub_2187B171C(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v37 + 1))
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v15 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    v32 = v15;
    sub_2188202A8(v15);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187B1CC0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    v32 = v18;
    sub_2188202A8(v18);
  }

  v35 = v13;
  v37 = 0u;
  v36 = 0u;
  v19 = MEMORY[0x277D2DED0];
  v20 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C24358(v8, v20, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v43, v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (v33[80] + 24) & ~v33[80];
  v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v8;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_218C2411C(v20, v24 + v21, &qword_280EE8610, v19);
  v25 = v24 + v22;
  v26 = v38[1];
  *v25 = v38[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  v29 = v32;
  *v28 = v16;
  v28[1] = v29;
  v28[2] = v17;

  sub_2188202A8(v29);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v29);
  sub_2187B1CC0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218C22310(uint64_t a1, uint64_t a2)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v33 = *(v4 - 8);
  v5 = *(v33 + 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = *(a1 + 56);
  v10 = sub_219BDB954();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 16))(v12, a2, v10);
  v34 = v11;
  v13 = v11 | 0xB000000000000004;
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v9;
  sub_2187B171C(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v37 + 1))
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v15 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    v32 = v15;
    sub_2188202A8(v15);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187B1CC0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    v32 = v18;
    sub_2188202A8(v18);
  }

  v35 = v13;
  v37 = 0u;
  v36 = 0u;
  v19 = MEMORY[0x277D2DED0];
  v20 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C24358(v8, v20, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v43, v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (v33[80] + 24) & ~v33[80];
  v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v8;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_218C2411C(v20, v24 + v21, &qword_280EE8610, v19);
  v25 = v24 + v22;
  v26 = v38[1];
  *v25 = v38[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  v29 = v32;
  *v28 = v16;
  v28[1] = v29;
  v28[2] = v17;

  sub_2188202A8(v29);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v29);
  sub_2187B1CC0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218C229E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v43 = *(v8 - 8);
  v9 = *(v43 + 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = *(a1 + 56);
  sub_218C24040();
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(v15 + 48);
  v20 = *(v15 + 64);
  v21 = sub_219BDB954();
  (*(*(v21 - 8) + 16))(v18, a2, v21);
  sub_218C24358(a3, v18 + v19, &qword_280EE64A0, MEMORY[0x277D34D78]);
  v22 = sub_219BE3EE4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v18 + v20, a4, v22);
  (*(v23 + 56))(v18 + v20, 0, 1, v22);
  v45 = v16;
  v24 = v16 | 0xB000000000000002;
  v25 = sub_219BDFA44();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = v13;
  sub_2187B171C(v52, &v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v48 + 1))
  {
    sub_21875F93C(&v47, v49);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v27 = qword_280ED32D8;
    v26 = qword_280ED32E0;
    v28 = qword_280ED32E8;

    v42 = v26;
    sub_2188202A8(v26);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_2187B1CC0(&v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v27 = qword_280ED32D8;
    v29 = qword_280ED32E0;
    v28 = qword_280ED32E8;

    v42 = v29;
    sub_2188202A8(v29);
  }

  v46 = v24;
  v48 = 0u;
  v47 = 0u;
  v30 = MEMORY[0x277D2DED0];
  v31 = v44;
  sub_218C24358(v12, v44, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v54, v49, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v32 = (v43[80] + 24) & ~v43[80];
  v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v12;
  v34 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  sub_218C2411C(v31, v35 + v32, &qword_280EE8610, v30);
  v36 = v35 + v33;
  v37 = v49[1];
  *v36 = v49[0];
  *(v36 + 16) = v37;
  *(v36 + 32) = v50;
  v38 = (v35 + v34);
  v39 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v38 = 0;
  v38[1] = 0;
  v40 = v42;
  *v39 = v27;
  v39[1] = v40;
  v39[2] = v28;

  sub_2188202A8(v40);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v40);
  sub_2187B1CC0(v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v54, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v43, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v47, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218C23170(uint64_t a1)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *(v1 + 56);
  v11 = sub_219BE4524();
  v12 = swift_allocBox();
  (*(*(v11 - 8) + 16))(v13, a1, v11);
  v34 = v12;
  v14 = v12 | 0x4000000000000004;
  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v10;
  sub_2187B171C(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v37 + 1))
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    v32 = v16;
    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187B1CC0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v19 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    v32 = v19;
    sub_2188202A8(v19);
  }

  v35 = v14;
  v37 = 0u;
  v36 = 0u;
  v20 = MEMORY[0x277D2DED0];
  sub_218C24358(v9, v7, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_2187B171C(v43, v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v9;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_218C2411C(v7, v24 + v21, &qword_280EE8610, v20);
  v25 = v24 + v22;
  v26 = v38[1];
  *v25 = v38[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  v29 = v32;
  *v28 = v17;
  v28[1] = v29;
  v28[2] = v18;

  sub_2188202A8(v29);
  sub_2186CF94C();
  sub_2186F7DB0(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v29);
  sub_2187B1CC0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218744DAC(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747D90);
  sub_218744DAC(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

void sub_218C2394C(void *a1, uint64_t a2)
{
  v5 = *(sub_219BDB954() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_218747D90(0, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_219BE3EE4() - 8);
  v12 = *(v2 + 16);
  v13 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  sub_218C210E8(a1, a2, v12, (v2 + v6), v2 + v9, v13);
}

uint64_t sub_218C23AC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186C6148(255, &qword_280E8DA20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_218747D90(0, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v14 = *(*(v5 - 8) + 64);
  v8 = sub_219BE3EE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v11 = sub_219BE3D64();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  (*(v9 + 8))(v0 + ((v7 + v14 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_218C23D78()
{
  v1 = *(sub_219BDB954() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_218747D90(0, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
  v5 = (v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *(sub_219BE3EE4() - 8);
  v8 = *(v0 + 16);
  v9 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_218C229E0(v8, v0 + v2, v0 + v5, v9);
}

uint64_t objectdestroy_20Tm()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218C23FC8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_219BDB954() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_218C24040()
{
  if (!qword_27CC0F260)
  {
    sub_219BDB954();
    v0 = MEMORY[0x277D83D88];
    sub_218747D90(255, &qword_280EE64A0, MEMORY[0x277D34D78], MEMORY[0x277D83D88]);
    sub_218747D90(255, &unk_280EE6490, MEMORY[0x277D34E88], v0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0F260);
    }
  }
}

uint64_t sub_218C2411C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218747D90(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_218C2419C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C24204(void *a1)
{
  sub_218747D90(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218C242F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C24358(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218747D90(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218C243FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218C24444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218C244A0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  sub_218C24AB8(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  sub_218C249EC();
  MEMORY[0x28223BE20](v7 - 8);
  sub_218C24AB8(0, &qword_280EE3668, MEMORY[0x277D6EC60]);
  v23 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v29 = v3;
  v12 = sub_218945B7C(sub_218C24BAC, v28);
  sub_218953D48();
  v14 = v13;
  v15 = sub_2186E899C(&qword_280EE57A0, sub_218953D48);
  v16 = sub_2186E899C(&unk_280EE57B0, sub_218953D48);
  MEMORY[0x21CEB9170](v12, v14, v15, v16);
  type metadata accessor for SavedFeedSectionDescriptor();
  type metadata accessor for SavedFeedModel(0);
  sub_2186E899C(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
  sub_2186E899C(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
  sub_219BEB2D4();
  v17 = sub_21937B808();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SavedFeedServiceConfig();
  sub_2186E899C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  v18 = sub_219BEEFC4();

  v19 = 0;
  if (v18)
  {
    v19 = sub_219BEDC74();
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v30 = v18;
  v33 = v19;
  v20 = v23;
  sub_219BEB2C4();
  sub_21885AB78(v17);
  sub_219BE85C4();
  v27(v6);
  (*(v24 + 8))(v6, v25);
  return (*(v9 + 8))(v11, v20);
}

uint64_t sub_218C248C8(uint64_t a1)
{
  v2 = sub_218C24C08();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218C24908()
{
  result = qword_27CC0F268;
  if (!qword_27CC0F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F268);
  }

  return result;
}

void sub_218C249EC()
{
  if (!qword_280EE7488)
  {
    sub_218953D48();
    sub_2186E899C(&qword_280EE57A0, sub_218953D48);
    sub_2186E899C(&unk_280EE57B0, sub_218953D48);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7488);
    }
  }
}

void sub_218C24AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2186E899C(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_2186E899C(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218C24BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  return sub_219B52FCC(a1, *v5, *(v5 + 8), a2);
}

unint64_t sub_218C24C08()
{
  result = qword_27CC0F270;
  if (!qword_27CC0F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F270);
  }

  return result;
}

uint64_t sub_218C24C5C()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v5 = (v4 + qword_280EDA960);
  *v5 = 0;
  v5[1] = 0;
  *(v4 + qword_280EDA968) = MEMORY[0x277D84F98];
  sub_219BDBD54();
  v6 = sub_219BDBD44();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  v9 = (v4 + qword_280EDA958);
  *v9 = v6;
  v9[1] = v8;
  return sub_219BE52E4();
}

uint64_t sub_218C24D9C(uint64_t result)
{
  if (*(v1 + qword_280EDA960))
  {
    v2 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_219BE3964())
    {
      v3 = qword_280EDA968;
      v4 = swift_beginAccess();
      v5 = *(v1 + v3);
      MEMORY[0x28223BE20](v4);
      v6[2] = v2;
      v6[3] = v1;

      sub_218793658(sub_218C25A74, v6, v5);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218C24EC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE5244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v9 + 40))(a2, ObjectType, v9);
  if (!v2)
  {
    (*(v9 + 16))(ObjectType, v9);
    sub_219BE52C4();
    (*(v6 + 8))(v8, v5);
    return;
  }

  v32 = v2;
  v11 = v2;
  sub_218A450F0();
  if (swift_dynamicCast())
  {

    if (v31 == 1)
    {
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F627F0);
      swift_unknownObjectRetain();
      v13 = sub_219BE5414();
      v14 = sub_219BF6214();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v30 = v16;
        *v15 = 136315138;
        v17 = (*(v9 + 8))(ObjectType, v9);
        v19 = sub_2186D1058(v17, v18, &v30);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2186C1000, v13, v14, "processEvent: property %s reported no changes", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x21CECF960](v16, -1, -1);
        MEMORY[0x21CECF960](v15, -1, -1);
      }
    }

    v20 = v32;
  }

  else
  {

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_280F627F0);
    v22 = v2;
    v23 = sub_219BE5414();
    v24 = sub_219BF61F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_219BF7A04();
      v29 = sub_2186D1058(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2186C1000, v23, v24, "processEvent: Unexpected error: %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CECF960](v26, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);

      return;
    }

    v20 = v2;
  }
}

uint64_t sub_218C25300(uint64_t a1, void (*a2)(uint64_t))
{
  sub_218794268();
  v5 = swift_allocBox();
  v7 = v6;
  v8 = sub_219BE52A4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = qword_280EDA968;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v12[2] = a1;
  v12[3] = v5;

  sub_218793658(sub_218C25A90, v12, v10);

  swift_beginAccess();
  a2(v7);
}

void sub_218C25420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE52A4();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218794268();
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE5244();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = *(a1 + 8);
  v58 = a3;
  v59 = swift_projectBox();
  v16 = sub_219BE5234();
  v18 = v17;
  ObjectType = swift_getObjectType();
  v20 = *(v15 + 16);
  v57 = ObjectType;
  v50 = v20;
  v51 = v15 + 16;
  v20(ObjectType, v15);
  v21 = sub_219BE5234();
  v23 = v22;
  v24 = *(v10 + 8);
  v53 = v9;
  v49 = v24;
  v24(v14, v9);
  if (v16 == v21 && v18 == v23)
  {
  }

  else
  {
    v26 = sub_219BF78F4();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  v27 = v56;
  v28 = v57;
  (*(v15 + 32))(v57, v15);
  v29 = v59;
  swift_beginAccess();
  sub_218C25AAC(v27, v29);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v30 = sub_219BE5434();
  __swift_project_value_buffer(v30, qword_280F627F0);
  swift_unknownObjectRetain();

  v31 = sub_219BE5414();
  v32 = sub_219BF6214();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    LODWORD(v58) = v32;
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v33 = 136315394;
    v34 = v52;
    v50(v28, v15);
    v35 = sub_219BE5234();
    v37 = v36;
    v49(v34, v53);
    v38 = sub_2186D1058(v35, v37, &v60);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    swift_beginAccess();
    v40 = v54;
    v39 = v55;
    if ((*(v54 + 48))(v29, 1, v55))
    {
      sub_218831A70(MEMORY[0x277D84F90]);
    }

    else
    {
      v41 = v48;
      (*(v40 + 16))(v48, v29, v39);
      sub_219BE5294();
      (*(v40 + 8))(v41, v39);
    }

    v42 = sub_219BF5224();
    v44 = v43;

    v45 = sub_2186D1058(v42, v44, &v60);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_2186C1000, v31, v58, "property for event %s donated %s", v33, 0x16u);
    v46 = v56;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v46, -1, -1);
    MEMORY[0x21CECF960](v33, -1, -1);
  }
}

uint64_t sub_218C2596C()
{
  swift_unknownObjectRelease();
}

uint64_t sub_218C259C0()
{
  sub_219BE5304();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218C25AAC(uint64_t a1, uint64_t a2)
{
  sub_218794268();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C25B10(uint64_t a1)
{
  v2 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A153EC(a1, v4);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_218C1023C(v4);
  result = 0;
  if (!a1)
  {
    sub_218831A70(MEMORY[0x277D84F90]);
    return 0x636E75614C707061;
  }

  return result;
}

char *sub_218C25BE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration] = a1;
  v4 = objc_allocWithZone(type metadata accessor for FollowingEngagementBannerView());

  v5 = [v4 initWithFrame_];
  *&v1[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView] = v5;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView;
  v8 = *&v6[OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView];
  v9 = v6;
  [v9 addSubview_];
  v10 = sub_219BF5904();
  [v9 setAccessibilityElements_];

  [*&v6[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  sub_218725F94();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C24300;
  v13 = [*&v6[v7] topAnchor];
  v14 = [v9 topAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v15;
  v16 = [*&v6[v7] leadingAnchor];
  v17 = [v9 leadingAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [*&v6[v7] trailingAnchor];
  v20 = [v9 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [*&v6[v7] bottomAnchor];
  v23 = [v9 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v12 + 56) = v24;
  sub_218C264F8();
  v25 = sub_219BF5904();

  [v11 activateConstraints_];

  return v9;
}

double sub_218C25FD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_bannerView);
  v2 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    [v4 frame];
    CGRectGetHeight(v9);
    [v4 frame];
    sub_219BF6B64();
    v6 = v5;
  }

  else
  {
    [v1 frame];
    return v7;
  }

  return v6;
}

void (*sub_218C26154(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = *(v1 + v5);
  v7 = type metadata accessor for MainTabBarEngagementViewContentConfiguration();
  v4[13] = v7;
  v4[3] = v7;
  v4[4] = sub_21898D6F4();
  *v4 = v6;

  return sub_218C261F8;
}

void sub_218C261F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_218718690(*a1, (v2 + 5));
    sub_218C26494();
    if (swift_dynamicCast())
    {
      *(v2[11] + v2[12]) = v2[10];
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_218C26494();
    if (swift_dynamicCast())
    {
      *(v2[11] + v2[12]) = v2[5];
    }
  }

  free(v2);
}

uint64_t sub_218C262BC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration);
  a1[3] = type metadata accessor for MainTabBarEngagementViewContentConfiguration();
  a1[4] = sub_21898D6F4();
  *a1 = v3;
}

uint64_t sub_218C26314()
{
  sub_218C26494();
  type metadata accessor for MainTabBarEngagementViewContentConfiguration();
  result = swift_dynamicCast();
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC7NewsUI224MainTabBarEngagementView_contentConfiguration) = v2;
  }

  return result;
}

void (*sub_218C2638C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_218C26154(v2);
  return sub_218C263FC;
}

void sub_218C263FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_218C26444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821DCBC0](a1, ObjectType, a3);
}

unint64_t sub_218C26494()
{
  result = qword_27CC1B3B0;
  if (!qword_27CC1B3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1B3B0);
  }

  return result;
}

unint64_t sub_218C264F8()
{
  result = qword_280E8E320;
  if (!qword_280E8E320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E320);
  }

  return result;
}

void sub_218C26544()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();
  v4 = v3;

  qword_27CCD8478 = v2;
  unk_27CCD8480 = v4;
}

void sub_218C26608()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:14.0];
    v3 = [v1 imageWithConfiguration_];

    qword_27CCD8488 = 0x402C000000000000;
    qword_27CCD8490 = 2;
    xmmword_27CCD8498 = xmmword_219C24370;
    qword_27CCD84A8 = v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_218C26730(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = 0.0;
  if (sub_219093144(6u, *(v1 + 16)))
  {
    v3 = sub_219BE8034();
    v4 = [v3 preferredContentSizeCategory];

    v5 = sub_219BF5414();
    v7 = v6;
    if (v5 == sub_219BF5414() && v7 == v8)
    {
      goto LABEL_16;
    }

    v10 = sub_219BF78F4();

    if (v10)
    {
LABEL_7:

LABEL_17:
      v2 = 6.0;
      goto LABEL_18;
    }

    v11 = sub_219BF5414();
    v13 = v12;
    if (v11 == sub_219BF5414() && v13 == v14)
    {
LABEL_16:

      goto LABEL_17;
    }

    v16 = sub_219BF78F4();

    if (v16)
    {
      goto LABEL_7;
    }

    v17 = sub_219BF5414();
    v19 = v18;
    if (v17 == sub_219BF5414() && v19 == v20)
    {

      v2 = 12.0;
      goto LABEL_18;
    }

    v41 = sub_219BF78F4();

    if (v41)
    {

      v2 = 12.0;
      goto LABEL_18;
    }

    v47 = sub_219BF5414();
    v49 = v48;
    if (v47 == sub_219BF5414() && v49 == v50)
    {

      v2 = 4.0;
      goto LABEL_18;
    }

    v52 = sub_219BF78F4();

    if (v52)
    {

      v2 = 4.0;
      goto LABEL_18;
    }

    v57 = sub_219BF5414();
    v59 = v58;
    if (v57 == sub_219BF5414() && v59 == v60)
    {

      v2 = 13.0;
      goto LABEL_18;
    }

    v62 = sub_219BF78F4();

    if (v62)
    {

      v2 = 13.0;
      goto LABEL_18;
    }

    v67 = sub_219BF5414();
    v69 = v68;
    if (v67 == sub_219BF5414() && v69 == v70)
    {

      v2 = 10.0;
      goto LABEL_18;
    }

    v72 = sub_219BF78F4();

    if (v72)
    {

      v2 = 10.0;
      goto LABEL_18;
    }

    v77 = sub_219BF5414();
    v79 = v78;
    if (v77 == sub_219BF5414() && v79 == v80)
    {

      v2 = 15.0;
      goto LABEL_18;
    }

    v82 = sub_219BF78F4();

    if (v82)
    {

      v2 = 15.0;
      goto LABEL_18;
    }

    v83 = sub_219BF5414();
    v85 = v84;
    if (v83 == sub_219BF5414() && v85 == v86)
    {
    }

    else
    {
      v87 = sub_219BF78F4();

      if ((v87 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v2 = 20.0;
  }

LABEL_18:
  if (sub_219093144(5u, *(v1 + 16)))
  {
    v21 = sub_219BE8034();
    v22 = [v21 preferredContentSizeCategory];

    v23 = sub_219BF5414();
    v25 = v24;
    if (v23 != sub_219BF5414() || v25 != v26)
    {
      v28 = sub_219BF78F4();

      if (v28)
      {
LABEL_24:

LABEL_35:
        v35 = 1.0;
        return v2 + v35;
      }

      v29 = sub_219BF5414();
      v31 = v30;
      if (v29 == sub_219BF5414() && v31 == v32)
      {

        v35 = 5.0;
        return v2 + v35;
      }

      v34 = sub_219BF78F4();

      if (v34)
      {

        v35 = 5.0;
        return v2 + v35;
      }

      v36 = sub_219BF5414();
      v38 = v37;
      if (v36 != sub_219BF5414() || v38 != v39)
      {
        v42 = sub_219BF78F4();

        if ((v42 & 1) == 0)
        {
          v43 = sub_219BF5414();
          v45 = v44;
          if (v43 == sub_219BF5414() && v45 == v46)
          {

            v35 = 4.0;
          }

          else
          {
            v51 = sub_219BF78F4();

            if (v51)
            {

              v35 = 4.0;
            }

            else
            {
              v53 = sub_219BF5414();
              v55 = v54;
              if (v53 == sub_219BF5414() && v55 == v56)
              {

                v35 = 2.0;
              }

              else
              {
                v61 = sub_219BF78F4();

                if (v61)
                {

                  v35 = 2.0;
                }

                else
                {
                  v63 = sub_219BF5414();
                  v65 = v64;
                  if (v63 == sub_219BF5414() && v65 == v66)
                  {

                    v35 = 8.0;
                  }

                  else
                  {
                    v71 = sub_219BF78F4();

                    if (v71)
                    {

                      v35 = 8.0;
                    }

                    else
                    {
                      v73 = sub_219BF5414();
                      v75 = v74;
                      if (v73 == sub_219BF5414() && v75 == v76)
                      {
                      }

                      else
                      {
                        v81 = sub_219BF78F4();

                        if ((v81 & 1) == 0)
                        {
                          return v2;
                        }
                      }

                      v35 = 14.0;
                    }
                  }
                }
              }
            }
          }

          return v2 + v35;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_35;
  }

  return v2;
}

CGFloat sub_218C26FDC@<D0>(uint64_t a1@<X0>, CGFloat a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v257 = a5;
  MEMORY[0x28223BE20](a1);
  v11 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v12;
  (*(v12 + 16))(v11);
  __swift_project_boxed_opaque_existential_1((*&a3 + 16), *(*&a3 + 40));
  LODWORD(v253) = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v13 = sub_219534AD0(SLOBYTE(v253));
  v14 = *(*&a3 + 40);
  v256 = a3;
  v15 = *(*__swift_project_boxed_opaque_existential_1((*&a3 + 16), v14) + 24);
  v16 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v17 = [v15 scaledFontForFont_];

  v18 = sub_219BE8034();
  v19 = [v18 preferredContentSizeCategory];

  LODWORD(v255) = sub_219BF6924();
  *&v267[0] = 0;
  *(&v267[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  v268 = v267[0];
  origin.x = a2;
  *&v20 = *(*&a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v21 = v257;
  v262 = v20;
  v22 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  *&v259 = v13;
  [v13 pointSize];
  v23 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v23);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v218 = v17;
  [v17 pointSize];
  v24 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v24);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v25 = (*(v21 + 8))(a4, v21);
  MEMORY[0x21CECC330](v25);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v26 = *(v21 + 32);
  v261 = v11;
  v26(a4, v21);
  if (v27)
  {

    v28 = 0xE500000000000000;
    v29 = 0x65736C6166;
  }

  else
  {
    v28 = 0xE400000000000000;
    v29 = 1702195828;
  }

  MEMORY[0x21CECC330](v29, v28);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  *&v267[0] = (*(v21 + 64))(a4, v21);
  *(&v267[0] + 1) = v30;
  LOWORD(v267[1]) = v31 & 0x1FF;
  sub_219BF7484();
  v32 = v268;
  v267[0] = v268;

  sub_219BE2DD4();

  memcpy(v267, v266, 0x1EAuLL);
  v33 = sub_2189D2D5C(v267);
  v260 = a4;
  if (v33 != 1)
  {

    v262 = v267[1];
    v38.y = *(v267 + 1);
    v259 = v267[0];
    v252 = *&v267[3];
    v253 = *&v267[2];
    v244 = *(&v267[3] + 1);
    v250 = *(&v267[4] + 1);
    v251 = *&v267[4];
    v242 = *&v267[5];
    v248 = *(&v267[2] + 1);
    v249 = *(&v267[5] + 1);
    v40 = *(&v267[6] + 1);
    v39 = *&v267[6];
    LODWORD(v257) = DWORD1(v267[7]);
    LODWORD(v254) = v267[7];
    v246 = *&v267[9];
    *&v247 = *&v267[8];
    v236 = *(&v267[9] + 1);
    v237 = *(&v267[8] + 1);
    v245 = *&v267[10];
    v233 = *(&v267[11] + 1);
    v243 = *&v267[11];
    v234 = *(&v267[10] + 1);
    v240 = *(&v267[7] + 1);
    v241 = *&v267[12];
    v228 = *(&v267[13] + 1);
    v229 = *(&v267[12] + 1);
    v238 = *(&v267[14] + 1);
    v239 = *&v267[13];
    v231 = *&v267[15];
    v232 = *&v267[14];
    v230 = *(&v267[16] + 1);
    v235 = *&v267[17];
    v41 = *(&v267[29] + 1);
    v42 = BYTE8(v267[30]);
    v43 = BYTE9(v267[30]);
    v226 = *&v267[18];
    v227 = *&v267[16];
    v224 = *(&v267[17] + 1);
    v225 = *(&v267[18] + 1);
    v255 = *&v267[19];
    v256 = *(&v267[15] + 1);
    v221 = *(&v267[19] + 1);
    v222 = *&v267[20];
    v223 = *&v267[21];
    v219 = v267[22];
    v220 = *(&v267[20] + 1);
    x = *(&v267[23] + 1);
    v44 = *&v267[23];
    height = *(&v267[21] + 1);
    v46 = *(&v267[24] + 1);
    v45 = *&v267[24];
    v48 = *(&v267[25] + 1);
    v47 = *&v267[25];
    v49 = *(&v267[26] + 1);
    v50 = *(&v267[27] + 1);
    v51 = *&v267[27];
    v213 = *&v267[28];
    v214 = *&v267[26];
    v211 = *&v267[29];
    width = *(&v267[28] + 1);
    v38.x = *&v267[30];
    origin = v38;
    goto LABEL_64;
  }

  if ((LOBYTE(v253) & 1) == 0)
  {
    if (LOBYTE(v255))
    {
      v34 = v21;
      v35 = *(*&origin.x + 48) + -24.0;
      v250 = 12.0;
      v37 = 4.0;
      v36 = 12.0;
      goto LABEL_13;
    }

    v34 = v21;
    v52 = *(*&origin.x + 48);
    v250 = *(*&origin.x + 56);
    v35 = v52 - (v250 + v250);
    v36 = 10.0;
    goto LABEL_12;
  }

  v34 = v21;
  v250 = *(*&origin.x + 56);
  v35 = 16.0;
  v36 = 6.0;
  v37 = 4.0;
  if ((LOBYTE(v255) & 1) == 0)
  {
LABEL_12:
    v37 = 1.0;
  }

LABEL_13:
  v254 = v37;
  v53 = *&origin.x;
  v54 = 8.0;
  v55 = *(*&origin.x + 40) + 8.0;
  v235 = *(*&origin.x + 24) + 8.0;
  v56 = v235 + v55;
  v57 = sub_218C28424(v261, v259, a4, v34);
  v225 = v58;
  v59 = 0.0;
  if (v57 == 0.0)
  {
    v54 = 0.0;
  }

  v60 = sub_218C26730(v53);
  v41 = *(v53 + 72);
  sub_218E0FF40();
  v226 = v57;
  v222 = v61;
  v62 = *&v262 - v56 - v35 - v36 - v54 - v57 - v61;
  v63 = sub_218E1008C();
  v64 = *(v41 + 16);
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = (v64 + 32);
    do
    {
      v67 = *v66++;
      if (v67 == 8)
      {
        v59 = v59 + 35.0;
      }

      --v65;
    }

    while (v65);
  }

  v68 = v62 - v63 - v59;
  v69 = v60;
  v245 = v68 - v60;
  v251 = v36 + v35 + v235;
  v70 = v34;
  v71 = (v26)(v260, v34);
  v210 = v32;
  v252 = v62;
  if (!v72)
  {
    goto LABEL_38;
  }

  v73 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v73 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73 || (*(*&origin.x + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) == 0)
  {

LABEL_38:
    v119 = 0.1;
    LODWORD(v257) = 0;
    if ((LOBYTE(v255) & 1) == 0)
    {
      v119 = 0.0;
    }

    *&v254 = v119;
    v120 = 2;
    if (LOBYTE(v255))
    {
      v120 = 3;
    }

    v209 = v120;
    (*(v34 + 16))(v260, v34);
    sub_21899E550();
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_219C09BA0;
    v122 = *MEMORY[0x277D740A8];
    *(v121 + 32) = *MEMORY[0x277D740A8];
    *(v121 + 64) = sub_218A293AC();
    v123 = v259;
    *(v121 + 40) = v259;
    v124 = v122;
    v125 = v123;
    sub_2188195F4(v121);
    swift_setDeallocating();
    sub_21899E5A8(v121 + 32);
    swift_deallocClassInstance();
    v126 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v127 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_21899E604();
    v128 = sub_219BF5204();

    v129 = [v126 initWithString:v127 attributes:v128];

    sub_219BF67A4();
    v131 = v130;

    v40 = 0;
    v132 = ceil(v131);
    if (*(*&origin.x + 48) > v250 + v250 + v132)
    {
      v116 = *(*&origin.x + 48);
    }

    else
    {
      v116 = v250 + v250 + v132;
    }

    v249 = (v116 - v132) * 0.5;
    v250 = v132;
    v241 = 0.0;
    v238 = 0.0;
    v239 = 0.0;
    v243 = 0.0;
    v246 = 0.0;
    *&v247 = 0;
    goto LABEL_46;
  }

  v257 = v71;
  v74 = v218;
  [v218 lineHeight];
  v76 = v75;
  sub_21899E550();
  v249 = v77;
  v78 = swift_allocObject();
  v247 = xmmword_219C09BA0;
  *(v78 + 16) = xmmword_219C09BA0;
  v79 = *MEMORY[0x277D740A8];
  *(v78 + 32) = *MEMORY[0x277D740A8];
  v246 = COERCE_DOUBLE(sub_218A293AC());
  *(v78 + 64) = v246;
  *(v78 + 40) = v74;
  v244 = COERCE_DOUBLE(v79);
  v80 = v74;
  sub_2188195F4(v78);
  swift_setDeallocating();
  sub_21899E5A8(v78 + 32);
  swift_deallocClassInstance();
  v81 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v82 = sub_219BF53D4();

  type metadata accessor for Key(0);
  v242 = COERCE_DOUBLE(sub_21899E604());
  v83 = sub_219BF5204();

  v84 = [v81 initWithString:v82 attributes:v83];

  v85 = 0.1;
  if (LOBYTE(v255))
  {
    v86 = 3;
  }

  else
  {
    v86 = 1;
  }

  if ((LOBYTE(v255) & 1) == 0)
  {
    v85 = 0.0;
  }

  *&v257 = v85;
  if (LOBYTE(v255))
  {
    v87 = 3;
  }

  else
  {
    v87 = 2;
  }

  [v84 boundingRectWithSize:v87 options:0 context:{v62, v76 * v86}];
  v89 = v88;
  v91 = v90;
  v248 = v55;
  v92 = v62;
  v94 = v93;
  v96 = v95;

  v269.origin.x = v89;
  v269.origin.y = v91;
  v269.size.width = v94;
  v269.size.height = v96;
  v243 = ceil(CGRectGetHeight(v269));
  v97 = v259;
  [v259 lineHeight];
  (*(v70 + 16))(v260, v70);
  v98 = swift_allocObject();
  *(v98 + 16) = v247;
  *(v98 + 32) = v244;
  *(v98 + 64) = v246;
  *(v98 + 40) = v97;
  v99 = v97;
  sub_2188195F4(v98);
  swift_setDeallocating();
  sub_21899E5A8(v98 + 32);
  swift_deallocClassInstance();
  v100 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v101 = sub_219BF53D4();

  v102 = sub_219BF5204();
  v40 = v86;

  v103 = [v100 initWithString:v101 attributes:v102];

  sub_219BF6784();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;

  v270.origin.x = v105;
  v270.origin.y = v107;
  v69 = v60;
  v270.size.width = v109;
  v270.size.height = v111;
  v112 = ceil(CGRectGetHeight(v270));
  v113 = v254;
  v114 = v243 + v254 + v112;
  v115 = v251;
  if (*(*&origin.x + 48) > v250 + v250 + v114)
  {
    v116 = *(*&origin.x + 48);
  }

  else
  {
    v116 = v250 + v250 + v114;
  }

  v271.origin.x = v251;
  v271.origin.y = v116 * 0.5 - v114 * 0.5;
  y = v271.origin.y;
  v271.size.width = v92;
  v271.size.height = v112;
  *&v247 = v113 + CGRectGetMaxY(v271);
  v272.origin.x = v115;
  v249 = y;
  v250 = v112;
  v272.origin.y = y;
  v272.size.width = v92;
  v272.size.height = v112;
  MaxY = CGRectGetMaxY(v272);
  v241 = v115;
  v238 = v245;
  v239 = v113 + MaxY;
  LODWORD(v254) = v257;
  v209 = v86;
  v246 = v92;
  v55 = v248;
LABEL_46:
  v133 = ceil((v116 - v35) * 0.5);
  v273.origin.x = v235;
  v273.origin.y = v133;
  v273.size.width = v35;
  v273.size.height = v35;
  origin.x = CGRectGetMinX(v273);
  v134 = *&v262 - v55;
  v135 = v222;
  v136 = -sub_218E1008C() - v69;
  v137 = 0.0;
  v274.origin.y = 0.0;
  v221 = v134 - v135;
  v274.origin.x = v134 - v135;
  v274.size.width = v135;
  v223 = v116;
  v274.size.height = v116;
  v275 = CGRectOffset(v274, v136, 0.0);
  x = v275.origin.x;
  height = v275.size.height;
  *&v219 = v275.size.width;
  *(&v219 + 1) = *&v275.origin.y;
  v138 = *(v41 + 16);
  v139 = *(v138 + 16);
  v140 = *(&v210 + 1);
  v141 = v210;
  if (v139)
  {
    v142 = (v138 + 32);
    v143 = 0.0;
    v43 = LOBYTE(v253);
    do
    {
      v144 = *v142++;
      if (v144 == 8)
      {
        v137 = v143 + 35.0;
        v143 = v143 + 35.0;
      }

      --v139;
    }

    while (v139);
  }

  else
  {
    v43 = LOBYTE(v253);
  }

  v145 = v223 - v225;
  v146 = 0.0;
  v276.origin.x = v251;
  v276.size.width = v252;
  v276.origin.y = v249;
  v276.size.height = v250;
  v277 = CGRectOffset(v276, v137, 0.0);
  v213 = v277.origin.y;
  v214 = v277.origin.x;
  v211 = v277.size.height;
  width = v277.size.width;
  v147 = *(v41 + 16);
  v148 = *(v147 + 16);
  v149 = 0.0;
  if (v148)
  {
    v150 = (v147 + 32);
    v151 = 0.0;
    do
    {
      v152 = *v150++;
      if (v152 == 8)
      {
        v149 = v151 + 35.0;
        v151 = v151 + 35.0;
      }

      --v148;
    }

    while (v148);
  }

  v230 = origin.x + -12.0;
  v227 = (v35 + -8.0) * 0.5 + v133;
  v224 = v134 - v226;
  v220 = v145 * 0.5;
  v277.origin.x = ceil(v223);
  origin = v277.origin;
  v153 = v241;
  v278.origin.x = v241;
  v278.size.width = v246;
  *&v278.origin.y = v247;
  v154 = v243;
  v278.size.height = v243;
  v279 = CGRectOffset(v278, v149, 0.0);
  v207 = v279.origin.y;
  v208 = v279.origin.x;
  v205 = v279.size.height;
  v206 = v279.size.width;
  v155 = *(v41 + 16);
  v156 = *(v155 + 16);
  if (v156)
  {
    v157 = (v155 + 32);
    v146 = 0.0;
    v158 = 0.0;
    do
    {
      v159 = *v157++;
      if (v159 == 8)
      {
        v146 = v158 + 35.0;
        v158 = v158 + 35.0;
      }

      --v156;
    }

    while (v156);
  }

  v160 = v235;
  v280.origin.x = v235;
  v280.origin.y = v133;
  v280.size.width = v35;
  v280.size.height = v35;
  v281 = CGRectOffset(v280, v146, 0.0);
  v203 = v281.origin.y;
  v204 = v281.origin.x;
  v201 = v281.size.height;
  v202 = v281.size.width;
  v161 = v251;
  v281.size.width = v252;
  v281.origin.x = v251;
  v163 = v249;
  v162 = v250;
  v281.origin.y = v249;
  v281.size.height = v250;
  v282 = CGRectIntegral(v281);
  v252 = v282.size.width;
  v253 = v282.origin.x;
  v248 = v282.origin.y;
  v244 = v282.size.height;
  v282.origin.x = v161;
  v282.origin.y = v163;
  v282.size.width = v245;
  v282.size.height = v162;
  v283 = CGRectIntegral(v282);
  v250 = v283.origin.y;
  v251 = v283.origin.x;
  v242 = v283.size.width;
  v249 = v283.size.height;
  v283.origin.x = v153;
  v283.size.width = v246;
  *&v283.origin.y = v247;
  v283.size.height = v154;
  v284 = CGRectIntegral(v283);
  v240 = v284.origin.x;
  v246 = v284.size.height;
  *&v247 = v284.origin.y;
  v237 = v284.size.width;
  v284.origin.x = v153;
  v284.size.width = v238;
  v284.origin.y = v239;
  v284.size.height = v154;
  v285 = CGRectIntegral(v284);
  v236 = v285.origin.x;
  v245 = v285.origin.y;
  v234 = v285.size.width;
  v243 = v285.size.height;
  v285.origin.x = v160;
  v285.origin.y = v133;
  v285.size.width = v35;
  v285.size.height = v35;
  v286 = CGRectIntegral(v285);
  v233 = v286.origin.x;
  v241 = v286.origin.y;
  v229 = v286.size.width;
  v239 = v286.size.height;
  v286.origin.x = v160;
  v286.origin.y = v133;
  v286.size.width = v35;
  v286.size.height = v35;
  v228 = CGRectGetMinX(v286) + -1.0;
  v287.origin.x = v160;
  v287.origin.y = v133;
  v287.size.width = v35;
  v287.size.height = v35;
  v232 = CGRectGetMinY(v287) + -1.0;
  v288.origin.x = v160;
  v288.origin.y = v133;
  v288.size.width = v35;
  v288.size.height = v35;
  v238 = CGRectGetWidth(v288) + 2.0;
  v289.origin.x = v160;
  v289.origin.y = v133;
  v289.size.width = v35;
  v289.size.height = v35;
  v231 = CGRectGetHeight(v289) + 2.0;
  v290.size.width = 8.0;
  v290.size.height = 8.0;
  v290.origin.x = v230;
  v290.origin.y = v227;
  v291 = CGRectIntegral(v290);
  v164 = v291.origin.x;
  v227 = v291.origin.y;
  v230 = v291.size.width;
  v235 = v291.size.height;
  v291.origin.x = v224;
  v291.size.height = v225;
  v291.origin.y = v220;
  v291.size.width = v226;
  v292 = CGRectIntegral(v291);
  v224 = v292.origin.x;
  v225 = v292.size.width;
  v226 = v292.origin.y;
  v165 = v292.size.height;
  v292.origin.y = 0.0;
  v292.origin.x = v221;
  v292.size.width = v222;
  v292.size.height = v223;
  v293 = CGRectIntegral(v292);
  v221 = v293.origin.x;
  v222 = v293.origin.y;
  v220 = v293.size.width;
  v223 = v293.size.height;
  v293.origin.x = x;
  v293.size.height = height;
  v293.origin.y = *(&v219 + 1);
  *&v293.size.width = v219;
  v294 = CGRectIntegral(v293);
  v166 = v294.origin.x;
  *&v219 = v294.origin.y;
  *(&v219 + 1) = *&v294.size.width;
  v200 = v294.size.height;
  v294.origin.y = v213;
  v294.origin.x = v214;
  v294.size.height = v211;
  v294.size.width = width;
  v295 = CGRectIntegral(v294);
  v167 = v295.origin.x;
  v198 = v295.size.width;
  v199 = v295.origin.y;
  v197 = v295.size.height;
  v295.origin.y = v207;
  v295.origin.x = v208;
  v295.size.height = v205;
  v295.size.width = v206;
  v296 = CGRectIntegral(v295);
  v168 = v296.origin.x;
  v169 = v296.origin.y;
  v49 = v296.size.width;
  v51 = v296.size.height;
  v296.origin.y = v203;
  v296.origin.x = v204;
  v296.size.height = v201;
  v296.size.width = v202;
  v297 = CGRectIntegral(v296);
  v170 = LOBYTE(v255);
  v42 = LOBYTE(v255) & 1;
  v266[0] = 0uLL;
  *&v266[1] = v262;
  *(&v266[1] + 1) = *&origin.x;
  *&v266[2] = v253;
  *(&v266[2] + 1) = v248;
  *&v266[3] = v252;
  *(&v266[3] + 1) = v244;
  *&v266[4] = v251;
  *(&v266[4] + 1) = v250;
  *&v266[5] = v242;
  *(&v266[5] + 1) = v249;
  v39 = v209;
  *&v266[6] = v209;
  *(&v266[6] + 1) = v40;
  *&v266[7] = __PAIR64__(v257, LODWORD(v254));
  *(&v266[7] + 1) = v240;
  *&v266[8] = v247;
  *(&v266[8] + 1) = v237;
  *&v266[9] = v246;
  *(&v266[9] + 1) = v236;
  *&v266[10] = v245;
  *(&v266[10] + 1) = v234;
  *&v266[11] = v243;
  *(&v266[11] + 1) = v233;
  *&v266[12] = v241;
  *(&v266[12] + 1) = v229;
  *&v266[13] = v239;
  *(&v266[13] + 1) = v228;
  *&v266[14] = v232;
  *(&v266[14] + 1) = v238;
  *&v266[15] = v231;
  v255 = v165;
  v256 = v164;
  *(&v266[15] + 1) = v164;
  *&v266[16] = v227;
  *(&v266[16] + 1) = v230;
  *&v266[17] = v235;
  *(&v266[17] + 1) = v224;
  *&v266[18] = v226;
  *(&v266[18] + 1) = v225;
  *&v266[19] = v165;
  *(&v266[19] + 1) = v221;
  *&v266[20] = v222;
  *(&v266[20] + 1) = v220;
  *&v266[21] = v223;
  x = v167;
  height = v166;
  *(&v266[21] + 1) = v166;
  v44 = v200;
  v266[22] = v219;
  *&v266[23] = v200;
  *(&v266[23] + 1) = v167;
  v48 = v168;
  v47 = v197;
  v46 = v198;
  v45 = v199;
  *&v266[24] = v199;
  *(&v266[24] + 1) = v198;
  *&v266[25] = v197;
  *(&v266[25] + 1) = v48;
  v213 = v297.origin.y;
  v214 = v169;
  *&v266[26] = v169;
  v50 = v297.origin.x;
  *(&v266[26] + 1) = v49;
  *&v266[27] = v51;
  *(&v266[27] + 1) = *&v297.origin.x;
  *&v266[28] = v297.origin.y;
  v211 = v297.size.height;
  width = v297.size.width;
  *(&v266[28] + 1) = *&v297.size.width;
  *&v266[29] = v297.size.height;
  *(&v266[29] + 1) = v41;
  *&v266[30] = origin.x;
  BYTE8(v266[30]) = v170 & 1;
  BYTE9(v266[30]) = v43;
  nullsub_1(v266);
  memcpy(v265, v266, sizeof(v265));
  v263 = v141;
  v264 = v140;
  swift_retain_n();

  sub_219BE2DE4();

  *&v171 = v262;
  *(&v171 + 1) = *&origin.x;
  v262 = v171;
  v259 = 0u;
LABEL_64:
  (*(v217 + 8))(v261, v260);
  v172 = v262;
  *a6 = v259;
  *(a6 + 16) = v172;
  v173 = v248;
  *(a6 + 32) = v253;
  *(a6 + 40) = v173;
  v174 = v244;
  *(a6 + 48) = v252;
  *(a6 + 56) = v174;
  v175 = v250;
  *(a6 + 64) = v251;
  *(a6 + 72) = v175;
  v176 = v249;
  *(a6 + 80) = v242;
  *(a6 + 88) = v176;
  LODWORD(v176) = v257;
  *(a6 + 112) = LODWORD(v254);
  *(a6 + 116) = LODWORD(v176);
  v177 = v247;
  *(a6 + 120) = v240;
  *(a6 + 128) = v177;
  v178 = v246;
  *(a6 + 136) = v237;
  *(a6 + 144) = v178;
  v179 = v245;
  *(a6 + 152) = v236;
  *(a6 + 160) = v179;
  v180 = v243;
  *(a6 + 168) = v234;
  *(a6 + 176) = v180;
  v181 = v241;
  *(a6 + 184) = v233;
  *(a6 + 192) = v181;
  v182 = v239;
  *(a6 + 200) = v229;
  *(a6 + 208) = v182;
  v183 = v232;
  *(a6 + 216) = v228;
  *(a6 + 224) = v183;
  *(a6 + 96) = v39;
  *(a6 + 104) = v40;
  v184 = v231;
  *(a6 + 232) = v238;
  *(a6 + 240) = v184;
  v185 = v227;
  *(a6 + 248) = v256;
  *(a6 + 256) = v185;
  v186 = v235;
  *(a6 + 264) = v230;
  *(a6 + 272) = v186;
  v188 = v225;
  v187 = v226;
  *(a6 + 280) = v224;
  *(a6 + 288) = v187;
  v189 = v255;
  *(a6 + 296) = v188;
  *(a6 + 304) = v189;
  v190 = v222;
  *(a6 + 312) = v221;
  *(a6 + 320) = v190;
  v191 = v223;
  *(a6 + 328) = v220;
  *(a6 + 336) = v191;
  v192 = v219;
  *(a6 + 344) = height;
  *(a6 + 352) = v192;
  *(a6 + 368) = v44;
  v193 = v214;
  *(a6 + 376) = x;
  *(a6 + 384) = v45;
  *(a6 + 392) = v46;
  *(a6 + 400) = v47;
  *(a6 + 408) = v48;
  *(a6 + 416) = v193;
  *(a6 + 424) = v49;
  *(a6 + 432) = v51;
  v194 = width;
  *&v172 = v213;
  *(a6 + 440) = v50;
  *(a6 + 448) = v172;
  v195 = v211;
  *(a6 + 456) = v194;
  *(a6 + 464) = v195;
  *(a6 + 472) = v41;
  result = origin.x;
  *(a6 + 480) = origin.x;
  *(a6 + 488) = v42;
  *(a6 + 489) = v43;
  return result;
}

double sub_218C28424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = v28;
  v10 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v11 = *(a4 + 64);
  v11(a3, a4);
  if ((v12 & 0x100) != 0)
  {
    v25 = 0.0;
  }

  else
  {
    v13 = (v11)(v9, v10);
    sub_2190D8F20(v13, v15, v14 & 0x1FF);
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v17 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_218A293AC();
    *(inited + 40) = a2;
    v18 = v17;
    v19 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_21899E5A8(inited + 32);
    v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_21899E604();
    v22 = sub_219BF5204();

    v23 = [v20 initWithString:v21 attributes:v22];

    sub_219BF6B94();
    sub_219BF6784();
    v25 = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v25;
}

uint64_t sub_218C28640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE33B0);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for SavedFeedModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for SavedFeedModule;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C28754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SavedFeedDataProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A4FD88;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C287EC()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavedFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ED0640);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ED0648);
  sub_219BE2914();
  type metadata accessor for SavedFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EBD390);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC3B50);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECD500);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC0790);
  sub_219BE2914();
  type metadata accessor for SavedFeedDataManager();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280E90370);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_2189878D4();
  sub_219BE2904();

  type metadata accessor for SavedFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EB7470);
  sub_219BE2914();

  sub_218C2F220();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218C2FAB8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218C2FD00();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218C2F30C();
  sub_219BE2904();

  sub_218C2FBF4();
  sub_219BE2904();

  sub_218C2F794();
  sub_219BE2904();

  type metadata accessor for SavedFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218C2FD94();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_218C2F448();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218C2F5C4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218C2F84C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218C2F9CC();
  sub_219BE2904();

  type metadata accessor for SavedFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SavedFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218C2FED0();
  sub_219BE2904();

  sub_218C2FF64();
  sub_219BE2904();

  sub_218C30050();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218C300E4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_218C301D0();
  sub_219BE2904();

  sub_218C30310();
  sub_219BE2904();
}

uint64_t sub_218C294C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED0640);
  result = sub_219BE1E34();
  if (!v55)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBD390);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2FD94();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = v53;
  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v43 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  v41 = v47;
  v42 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v5;
  v8 = v52;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v46[0])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v50 = v4;
    v51 = sub_2186E89E4(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v49[0] = v9;
    sub_219BE6AE4();
    swift_allocObject();
    v36 = sub_219BE6AC4();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v38 = &v35;
    MEMORY[0x28223BE20](v10);
    v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for SavedFeedStyler();
    v50 = v15;
    v51 = &off_282A5BC58;
    v49[0] = v14;
    v16 = type metadata accessor for SavedFeedViewController();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v37 = &v35;
    MEMORY[0x28223BE20](v18);
    v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v46[3] = v15;
    v46[4] = &off_282A5BC58;
    v46[0] = v22;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController____lazy_storage___clearButton] = 0;
    sub_218718690(v46, &v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_styler]);
    v23 = &v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler];
    v24 = v44;
    *v23 = v8;
    *(v23 + 1) = v24;
    v25 = v42;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_blueprintViewController] = v42;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_sharingActivityProviderFactory] = v7;
    v26 = &v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_toolbarManager];
    v27 = v43;
    *v26 = v41;
    *(v26 + 1) = v27;
    v28 = v39;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_userInfo] = v39;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_newsActivityManager] = v40;
    *&v17[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_commandContainer] = v36;
    v45.receiver = v17;
    v45.super_class = v16;
    swift_unknownObjectRetain();
    v29 = v25;

    swift_unknownObjectRetain();
    v30 = v28;

    v31 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
    *(*&v31[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler] + 24) = &off_282A6CD00;
    swift_unknownObjectWeakAssign();
    v32 = *&v31[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_blueprintViewController];
    v33 = v31;
    v34 = v32;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v33;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_218C29C00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_2186E89E4(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SavedFeedStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A5BC58;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C29E60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C30CF4(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SavedFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A81EA8;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218C29FF4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SavedFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218C2A074@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3B50);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED0648);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECD500);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_218C30AE8(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A44810;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218C2A324@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC0790);
  result = sub_219BE1E34();
  v9 = v46;
  if (!v46)
  {
    __break(1u);
    goto LABEL_14;
  }

  v37 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C30CF4(0, &unk_280E906E0, sub_2186F76CC, &type metadata for SavedFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v38 = result;
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2F220();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedBlueprintModifierFactory();
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2F794();
  result = sub_219BE1E24();
  v35 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C301D0();
  result = sub_219BE1E24();
  v34 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C30310();
  result = sub_219BE1E24();
  v33 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v31 = v4;
  v12 = v9;
  v32 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v13 = v44;
  if (!v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v43)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (result)
  {
    v16 = result;
    sub_218C3095C();
    v17 = swift_allocObject();
    v17[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8E3B0);
    v18 = v31;
    (*(v14 + 104))(v7, *MEMORY[0x277D851B8], v31);
    v19 = sub_219BF66E4();
    (*(v14 + 8))(v7, v18);
    v17[25] = v19;
    v29 = v12;
    v20 = v37;
    v21 = v38;
    v17[6] = v12;
    v17[7] = v20;
    v22 = v36;
    v17[4] = v11;
    v17[5] = v22;
    v23 = v35;
    v17[8] = v21;
    v17[9] = v23;
    v24 = v33;
    v17[10] = v34;
    v17[11] = v24;
    v28[1] = v15;
    v25 = v30;
    v17[12] = v15;
    v17[13] = v25;
    sub_218718690(v42, (v17 + 14));
    sub_218718690(v40, (v17 + 19));
    v17[24] = v16;
    sub_218718690((v17 + 14), v39);
    v37 = v39[4];
    v36 = __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v31 = sub_2186E89E4(qword_280ED0660, sub_218C3095C);
    swift_unknownObjectRetain();
    v26 = v21;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BE3A24();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v39);
    *(v29 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate + 8) = &off_282A9AE20;
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
    v27 = v32;
    *v32 = v17;
    v27[1] = &off_282A9AE38;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_218C2A9A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for SavedFeedTracker();
    v9 = swift_allocObject();
    v9[3] = v7;
    v9[4] = v6;
    v9[2] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A4B300;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218C2AB1C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FF728();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = result;
  v10 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218736D08();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  v39 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD3A0);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1DF4();
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v9;
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (v47)
  {
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36 = &v35;
    MEMORY[0x28223BE20](v13);
    v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v18 = type metadata accessor for HistoryService();
    v44 = v18;
    v45 = &off_282A6F3B0;
    v43[0] = v17;
    v19 = type metadata accessor for SavedFeedDataManager();
    v20 = objc_allocWithZone(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    v35 = &v35;
    MEMORY[0x28223BE20](v21);
    v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    v42[4] = &off_282A6F3B0;
    v42[3] = v18;
    v42[0] = v25;
    *&v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v26 = OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0);
    v27 = v39;
    (*(v10 + 104))(v7, *MEMORY[0x277D851B8], v39);
    v28 = sub_219BF66E4();
    (*(v10 + 8))(v7, v27);
    *&v20[v26] = v28;
    *&v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_feedServiceContextFactory] = v37;
    *&v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_feedServiceConfigFetcher] = v40;
    *&v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_feedService] = v11;
    *&v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList] = v12;
    sub_218718690(v50, &v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider]);
    sub_218718690(v48, &v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_headlineService]);
    sub_218718690(v42, &v20[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_historyService]);
    v41.receiver = v20;
    v41.super_class = v19;

    v29 = v12;
    v30 = objc_msgSendSuper2(&v41, sel_init, v35, v36);
    v31 = *&v30[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList];
    v32 = v30;
    [v31 addObserver_];
    v33 = __swift_project_boxed_opaque_existential_1(&v32[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_historyService], *&v32[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_historyService + 24]);
    sub_218EB8148(v32, *v33);

    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    result = __swift_destroy_boxed_opaque_existential_1(v46);
    v34 = v38;
    *v38 = v32;
    v34[1] = &off_282A325F0;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218C2B194(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2186E89E4(&qword_280ECD8E8, type metadata accessor for SavedFeedDataManager);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C2B290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (v5)
  {
    return sub_2186CB1F0(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2B318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1DF4();
  if (v5)
  {
    return sub_2186CB1F0(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2B3D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB7470);
    result = sub_219BE1E34();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x28223BE20](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x28223BE20](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for HeadlineModelFactory();
      v30[3] = v13;
      v30[4] = &off_282A8B8E8;
      v30[0] = v11;
      v14 = type metadata accessor for SavedFeedSectionFactory();
      v28 = v14;
      v29 = &off_282AA00D8;
      v27[0] = v12;
      type metadata accessor for SavedFeedBlueprintModifierFactory();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x28223BE20](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x28223BE20](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_282A8B8E8;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_282AA00D8;
      v15[7] = v25;
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2B7E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for HeadlineModelFactory();
    v21[3] = v12;
    v21[4] = &off_282A8B8E8;
    v21[0] = v11;
    v13 = type metadata accessor for SavedFeedSectionFactory();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x28223BE20](v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[10] = v12;
    v14[11] = &off_282A8B8E8;
    v14[7] = v19;
    sub_2186CB1F0(&v26, (v14 + 2));
    v14[12] = v5;
    v14[13] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v13;
    a2[4] = &off_282AA00D8;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218C2BAD4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189878D4();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218C2F30C();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218C2F220();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2BBB4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218C2FAB8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218C30870();
    swift_allocObject();
    sub_2186E89E4(&qword_280EE3B48, sub_218C2FAB8);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C2BC98(void *a1)
{
  sub_218C3081C(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2FBF4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2FD00();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218C2FAB8();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218C2BE18(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  result = sub_219BE1DE4();
  if (result)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = result;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v10, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v11 = v5;
      v12 = sub_2186E89E4(&unk_280E90FE0, MEMORY[0x277D32C00]);
      *&v10 = v7;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      v8 = sub_219BE99D4();
      swift_allocObject();
      v9 = sub_219BE99C4();
      v11 = v8;
      v12 = MEMORY[0x277D6E7D8];
      *&v10 = v9;
      sub_219BEA494();
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2BFF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2F794();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_218C2FD00();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218C2C194(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2F448();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218C2F30C();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2C2EC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218C2C330(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SavedFeedBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2C41C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189878D4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C2F448();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C30050();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186E89E4(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_218C2FD94();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218C2C720(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2186E89E4(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218C2FED0();
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_2186E89E4(&qword_280EE4870, sub_218C2FED0);
  }

  else
  {
    v8 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v10;
  v21 = v8;
  v22 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218C2FD00();
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_2186E89E4(&qword_280EE40F0, sub_218C2FD00);
  }

  else
  {
    v12 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v14;
  v21 = v12;
  v22 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_218C2F794();
    result = sub_219BE1E24();
    if (result)
    {
      v16 = result;
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v16;
      sub_219BF35C4();
      swift_allocObject();
      sub_2186E89E4(&qword_280EE4B68, sub_218C2F794);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218C2CB18()
{
  sub_218C3081C(0, &unk_27CC0F288, sub_218953E34);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  sub_218953E34();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_219BE86A4();

    v16 = v15[1];
    sub_2189878D4();
    sub_2186E89E4(&qword_280EE5480, sub_2189878D4);
    sub_219BE7B94();

    v10 = sub_21937B808();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0xF000000000000007;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_219BE86A4();

    v15[0] = v16;
    sub_2189878D4();
    sub_2186E89E4(&qword_280EE5480, sub_2189878D4);
    sub_219BE7B94();

    (*(v5 + 56))(v2, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v2, 1, 1, v4);
  }

  sub_219BE6684();
  type metadata accessor for SavedFeedSectionDescriptor();
  type metadata accessor for SavedFeedModel(0);
  sub_2186E89E4(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
  sub_2186E89E4(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
  sub_219BF44D4();
  sub_218C307A4(v2);
  type metadata accessor for SavedFeedServiceConfig();
  sub_2186E89E4(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  v13 = sub_219BE6624();

  sub_21885AB78(v10);
  return v13;
}