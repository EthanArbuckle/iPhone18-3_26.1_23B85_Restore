uint64_t sub_2195FA5DC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v48 = MEMORY[0x277D84F90];
    sub_218C35030(0, v7 & ~(v7 >> 63), 0);
    v43 = v48;
    if (v42)
    {
      result = sub_219BF71B4();
    }

    else
    {
      result = sub_219BF7174();
      v9 = *(a1 + 36);
    }

    v45 = result;
    v46 = v9;
    v47 = v42 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35 = v2;
      v36 = a1 + 64;
      v39 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v45;
        v15 = v46;
        v16 = v47;
        v17 = a1;
        sub_218C8A4F8(v45, v46, v47, a1);
        v19 = v18;
        sub_2195EFE8C(v18, v6);

        v20 = v43;
        v48 = v43;
        v21 = v6;
        v23 = *(v43 + 16);
        v22 = *(v43 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_218C35030(v22 > 1, v23 + 1, 1);
          v20 = v48;
        }

        *(v20 + 16) = v23 + 1;
        v24 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v43 = v20;
        result = sub_2190704B8(v21, v20 + v24 + *(v40 + 72) * v23, type metadata accessor for MyMagazinesIssue);
        v6 = v21;
        if (v42)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_219BF71D4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_2195FB074();
          v12 = sub_219BF5D74();
          sub_219BF7264();
          result = v12(v44, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_2187BC250(v45, v46, v47);
            return v43;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_2187BC250(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_2187BC250(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v45 = v25;
          v46 = v34;
          v47 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_2195FA9C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218726800(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2195FAA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218726800(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2195FAAB8()
{
  if (!qword_280E8F7C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F7C8);
    }
  }
}

uint64_t sub_2195FAB18(uint64_t a1)
{
  v2 = type metadata accessor for MyMagazinesIssue(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v28 - v7);
  sub_2195FA9C8(a1, v28 - v7, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2195FAA48(v8, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = *v8;
    sub_2195FAE60(v8, type metadata accessor for MyMagazinesIssue);
    v12 = [v11 identifier];

    v9 = sub_219BF5414();
    v10 = v13;
  }

  v14 = type metadata accessor for MyMagazinesState(0);
  v15 = *(a1 + *(v14 + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    v28[1] = v14;
    v28[2] = v10;
    v29 = v9;
    v30 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v16, 0);
    v17 = v31;
    v18 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = *(v3 + 72);
    do
    {
      sub_2195E5B7C(v18, v5, type metadata accessor for MyMagazinesIssue);
      v20 = [*v5 identifier];
      v21 = sub_219BF5414();
      v23 = v22;

      sub_2195FAE60(v5, type metadata accessor for MyMagazinesIssue);
      v31 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v31;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += v19;
      --v16;
    }

    while (v16);
    v9 = v29;
    a1 = v30;
  }

  sub_2195FAE60(a1, type metadata accessor for MyMagazinesState);
  return v9;
}

uint64_t sub_2195FAE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2195FAEC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_218726800(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2195FAF38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2195FAEC0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2195FAF94()
{
  if (!qword_280ED8420)
  {
    sub_218726800(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED8420);
    }
  }
}

uint64_t sub_2195FB02C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2195FB074()
{
  if (!qword_27CC1CDE8)
  {
    sub_2186C6148(255, &qword_280E8DAB0);
    sub_21879FA10(&qword_280E8DAA0, &qword_280E8DAB0);
    v0 = sub_219BF5D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CDE8);
    }
  }
}

unint64_t sub_2195FB19C()
{
  result = qword_280ED8278;
  if (!qword_280ED8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED8278);
  }

  return result;
}

uint64_t sub_2195FB328()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueManager + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_2195FB440()
{
  v0 = sub_218C3E18C(&unk_282A28518);
  v1 = sub_2195EEEBC(v0);

  return v1;
}

void sub_2195FB518()
{
  if (!qword_280E8FB70)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB70);
    }
  }
}

uint64_t sub_2195FB5BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000219CEBBD0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7349746E65636572 && a2 == 0xEE00734449657573 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657573734977656ELL && a2 == 0xED0000746E756F43)
  {

    return 2;
  }

  else
  {
    v5 = sub_219BF78F4();

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

uint64_t sub_2195FB6F0(void *a1)
{
  sub_2195FB9FC(0, &qword_280E8CCF0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FB9A8();
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_219BF7694();
    sub_2195FC568(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v12 = 1;
    sub_218753394(&qword_280E8EDD0);
    sub_219BF7734();
    v11 = 2;
    v10 = 0;
    sub_219BF7724();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2195FB9A8()
{
  result = qword_280EBAC68[0];
  if (!qword_280EBAC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBAC68);
  }

  return result;
}

void sub_2195FB9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195FB9A8();
    v7 = a3(a1, &type metadata for PersistentMyMagazinesState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2195FBA60(uint64_t a1)
{
  v24 = a1;
  v25 = sub_219BED174();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2194B2E44(&unk_282A28540);
  v29 = v1;
  sub_219BE3204();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2195FC778;
  *(v13 + 24) = v12;
  v14 = v1;
  v15 = sub_219BE2E54();
  sub_219BE2F64();

  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v8 + 104))(v10, *MEMORY[0x277D851D0], v7);
  v16 = sub_219BF66E4();
  (*(v8 + 8))(v10, v7);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  aBlock[4] = sub_2195FC4B0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_139_0;
  v20 = _Block_copy(aBlock);

  sub_219BED1A4();
  v30 = MEMORY[0x277D84F90];
  sub_2195FB02C(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_218726800(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  v21 = v25;
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v6, v3, v20);
  _Block_release(v20);

  (*(v28 + 8))(v3, v21);
  (*(v26 + 8))(v6, v27);
}

void sub_2195FBF18(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FA0];
  if (a1)
  {
    sub_219ADC118(a1);
    if (v4)
    {
      v3 = v4;
    }
  }

  v5 = MEMORY[0x277D84FA0];
  if (a2)
  {
    sub_219ADC118(a2);
    if (v6)
    {
      v5 = v6;
    }
  }

  v39 = v5;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &qword_280E8DB50);
    sub_21879FA10(&qword_280E8DB40, &qword_280E8DB50);
    sub_219BF5D94();
    v8 = v41;
    v7 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v45;
  }

  else
  {
    v12 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v3 + 56);

    v10 = 0;
    v8 = v3;
  }

  v15 = (v9 + 64) >> 6;
  while (v8 < 0)
  {
    v19 = sub_219BF7244();
    if (!v19)
    {
      goto LABEL_25;
    }

    v40 = v19;
    sub_2186C6148(0, &qword_280E8DB50);
    swift_dynamicCast();
    v18 = v46;
    if (!v46)
    {
      goto LABEL_25;
    }

LABEL_23:
    v20 = [v18 tagType];

    if (v20 == 2)
    {

      sub_21892DE98();
LABEL_42:

      v33 = sub_2194B2E44(&unk_282A28568);
      MEMORY[0x28223BE20](v33);
      sub_219BE3204();
      v34 = swift_allocObject();
      *(v34 + 16) = v38;
      *(v34 + 24) = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_2195FC778;
      *(v35 + 24) = v34;
      v36 = v38;
      v37 = sub_219BE2E54();
      sub_219BE2F64();

      return;
    }
  }

  v16 = v10;
  v17 = v11;
  if (v11)
  {
LABEL_19:
    v11 = (v17 - 1) & v17;
    v18 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v10 >= v15)
    {
      break;
    }

    v17 = *(v7 + 8 * v10);
    ++v16;
    if (v17)
    {
      goto LABEL_19;
    }
  }

LABEL_25:
  sub_21892DE98();

  v21 = v39;
  if ((v39 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &qword_280E8DB50);
    sub_21879FA10(&qword_280E8DB40, &qword_280E8DB50);
    sub_219BF5D94();
    v21 = v46;
    v22 = v47;
    v24 = v48;
    v23 = v49;
    v25 = v50;
  }

  else
  {
    v26 = -1 << *(v39 + 32);
    v22 = v39 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v39 + 56);

    v23 = 0;
  }

  while (2)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      if (!sub_219BF7244() || (sub_2186C6148(0, &qword_280E8DB50), swift_dynamicCast(), (v31 = v40) == 0))
      {
LABEL_43:
        sub_21892DE98();

        return;
      }

      goto LABEL_40;
    }

    v29 = v23;
    v30 = v25;
    if (v25)
    {
LABEL_36:
      v25 = (v30 - 1) & v30;
      v31 = *(*(v21 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v30)))));
      if (!v31)
      {
        goto LABEL_43;
      }

LABEL_40:
      v32 = [v31 tagType];

      if (v32 == 2)
      {
        sub_21892DE98();
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= ((v24 + 64) >> 6))
    {
      goto LABEL_43;
    }

    v30 = *(v22 + 8 * v23);
    ++v29;
    if (v30)
    {
      goto LABEL_36;
    }
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_2195FC470()
{
  result = MEMORY[0x21CEB8FB0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2195FC4EC()
{
  result = qword_27CC1CDF8;
  if (!qword_27CC1CDF8)
  {
    sub_2195FC568(255, &qword_27CC1CE00, &type metadata for MyMagazinesDataSource, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CDF8);
  }

  return result;
}

void sub_2195FC568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2195FC5BC()
{
  result = qword_27CC1CE08;
  if (!qword_27CC1CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE08);
  }

  return result;
}

unint64_t sub_2195FC614()
{
  result = qword_27CC1CE10;
  if (!qword_27CC1CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE10);
  }

  return result;
}

unint64_t sub_2195FC66C()
{
  result = qword_280EBAC58;
  if (!qword_280EBAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAC58);
  }

  return result;
}

unint64_t sub_2195FC6C4()
{
  result = qword_280EBAC60;
  if (!qword_280EBAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAC60);
  }

  return result;
}

unint64_t sub_2195FC71C()
{
  result = qword_280ECA7A8;
  if (!qword_280ECA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA7A8);
  }

  return result;
}

uint64_t type metadata accessor for SportsEventArticlesTagFeedGroupKnobs()
{
  result = qword_280E9A750;
  if (!qword_280E9A750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195FC828()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218BE9934();
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        sub_2186F95C4();
        if (v3 <= 0x3F)
        {
          sub_2186ECA28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2195FC8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v14);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v32 = a8;
    sub_21877CC60(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a8 = v32;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189ADEC8(v14);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a8, v19, v16);
  v22 = v33;
  v21 = v34;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v24 = sub_219BF1F54();
    sub_218C3DB88(v24);

    sub_218BE9934();
    swift_allocObject();
    v23 = sub_219BEEE04();
  }

  v25 = v35;
  v26 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  *(a8 + v26[5]) = v23;
  v27 = v36;
  if (v36)
  {

    v28 = v27;
  }

  else
  {
    sub_218BE9934();
    swift_allocObject();

    v28 = sub_219BEEE04();
  }

  *(a8 + v26[6]) = v28;
  if (v25)
  {

    v29 = v25;
  }

  else
  {
    v37 = 5;
    sub_2186F9548();
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(a8 + v26[7]) = v29;
  if (v21)
  {

    v30 = v21;
  }

  else
  {
    v37 = 1;
    sub_2186F9548();
    swift_allocObject();

    v30 = sub_219BEF534();
  }

  *(a8 + v26[8]) = v30;
  if (v22)
  {
  }

  else
  {
    LOBYTE(v37) = 1;
    sub_2186F95C4();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a8 + v26[9]) = v22;
  if (!a7)
  {
    v37 = 0;
    sub_2186ECA28();
    swift_allocObject();
    a7 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a8 + v26[10]) = a7;
  return result;
}

uint64_t sub_2195FCD7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  sub_2189AD5C8();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v64 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = v46 - v12;
  sub_2195FDCEC(0, &qword_27CC1CE18, MEMORY[0x277D844C8]);
  v63 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v46 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FDC34();
  v17 = v65;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v5;
  v53 = 0;
  v54 = v14;
  v55 = v6;
  v56 = v8;
  v57 = a1;
  LOBYTE(v72) = 0;
  sub_21877CC60(&qword_280E91A88, sub_2189AD5C8);
  v19 = v62;
  v20 = v60;
  sub_219BF7674();
  sub_218BE9934();
  LOBYTE(v71) = 1;
  sub_21877CC60(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v48 = v72;
  LOBYTE(v70) = 2;
  sub_219BF7674();
  v51 = v71;
  sub_2186F9548();
  v22 = v21;
  LOBYTE(v69) = 3;
  sub_21877CC60(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v50 = v70;
  LOBYTE(v68) = 4;
  v46[3] = v22;
  sub_219BF7674();
  v65 = v69;
  sub_2186F95C4();
  v24 = v23;
  LOBYTE(v67) = 5;
  sub_21877CC60(&qword_280E913F8, sub_2186F95C4);
  v46[1] = v24;
  sub_219BF7674();
  v58 = v68;
  sub_2186ECA28();
  v26 = v25;
  LOBYTE(v66) = 6;
  sub_21877CC60(&qword_280E913D8, sub_2186ECA28);
  v46[2] = v26;
  sub_219BF7674();
  v47 = v67;
  v27 = v64;
  sub_2189ADE64(v19, v64);
  v28 = v59;
  v29 = *(v59 + 48);
  v30 = v29(v27, 1, v20);
  v52 = v16;
  if (v30 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CC60(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v31 = v49;
    sub_219BEE974();
    if (v29(v64, 1, v20) != 1)
    {
      sub_2189ADEC8(v64);
    }
  }

  else
  {
    v31 = v49;
    (*(v28 + 32))(v49, v64, v20);
  }

  v32 = v56;
  (*(v28 + 32))(v56, v31, v20);
  v33 = v54;
  v34 = v47;
  if (v48)
  {
    v35 = v48;
  }

  else
  {
    v36 = sub_219BF1F54();
    sub_218C3DB88(v36);

    swift_allocObject();
    v35 = sub_219BEEE04();
  }

  v37 = v61;
  v38 = v55;
  *(v32 + v55[5]) = v35;
  v39 = v51;
  v40 = v65;
  if (v51)
  {

    v41 = v39;
  }

  else
  {
    swift_allocObject();

    v41 = sub_219BEEE04();
    v40 = v65;
  }

  *(v32 + v38[6]) = v41;
  v42 = v50;
  if (v50)
  {

    v43 = v42;
  }

  else
  {
    v66 = 5;
    swift_allocObject();

    v43 = sub_219BEF534();
    v40 = v65;
  }

  *(v32 + v38[7]) = v43;
  if (v40)
  {

    v44 = v40;
  }

  else
  {
    v66 = 1;
    swift_allocObject();

    v44 = sub_219BEF534();
  }

  *(v32 + v38[8]) = v44;
  if (v58)
  {

    v45 = v58;
  }

  else
  {
    LOBYTE(v66) = 1;
    swift_allocObject();

    v45 = sub_219BEF534();
  }

  *(v32 + v38[9]) = v45;
  if (!v34)
  {
    v66 = 0;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  sub_2189ADEC8(v62);
  (*(v33 + 8))(v52, v63);
  *(v32 + v38[10]) = v34;
  sub_2195FDC88(v32, v37);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_2195FD640(void *a1)
{
  v3 = v1;
  sub_2195FDCEC(0, &qword_27CC1CE28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FDC34();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CC60(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218BE9934();
    sub_21877CC60(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F9548();
    sub_21877CC60(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186F95C4();
    sub_21877CC60(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_2186ECA28();
    sub_21877CC60(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2195FDA58()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000015;
    if (v1 == 1)
    {
      v4 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x73656C7572;
    }
  }

  else
  {
    v2 = 0x6F43657269707865;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
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

uint64_t sub_2195FDB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2195FDE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2195FDB80(uint64_t a1)
{
  v2 = sub_2195FDC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195FDBBC(uint64_t a1)
{
  v2 = sub_2195FDC34();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2195FDC34()
{
  result = qword_27CC1CE20;
  if (!qword_27CC1CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE20);
  }

  return result;
}

uint64_t sub_2195FDC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195FDCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195FDC34();
    v7 = a3(a1, &type metadata for SportsEventArticlesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195FDD64()
{
  result = qword_27CC1CE30;
  if (!qword_27CC1CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE30);
  }

  return result;
}

unint64_t sub_2195FDDBC()
{
  result = qword_27CC1CE38;
  if (!qword_27CC1CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE38);
  }

  return result;
}

unint64_t sub_2195FDE14()
{
  result = qword_27CC1CE40;
  if (!qword_27CC1CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE40);
  }

  return result;
}

uint64_t sub_2195FDE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2195FE0BC(void *a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  v16 = a4;
  v15[0] = a3;
  sub_2195FF8AC(0, &qword_280E8C550, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FF804();
  sub_219BF7B44();
  v20 = a2;
  v19 = 0;
  sub_2195FF910();
  sub_219BF7834();
  if (!v5)
  {
    v18 = 1;
    sub_219BF77C4();
    v15[1] = a5;
    v17 = 2;
    sub_218C42690();
    sub_219BF7834();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2195FE29C()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x7265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7942726564726FLL;
  }
}

uint64_t sub_2195FE2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2195FF4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2195FE318(uint64_t a1)
{
  v2 = sub_2195FF804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195FE354(uint64_t a1)
{
  v2 = sub_2195FF804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195FE390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2195FF5E4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_2195FE3FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_21908A6A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_21965ACC4(v4, v7);
}

uint64_t sub_2195FE494(unsigned __int8 a1, uint64_t a2, char a3, unint64_t a4)
{
  if (a3)
  {
    sub_219BF7314();

    if (a1 > 3u)
    {
      v18 = 0x8000000219CD75C0;
      v19 = 0xD000000000000024;
      if (a1 == 6)
      {
        v19 = 0xD00000000000001DLL;
      }

      else
      {
        v18 = 0x8000000219CD75E0;
      }

      v20 = 0x8000000219CD7580;
      v21 = 0xD000000000000016;
      if (a1 != 4)
      {
        v21 = 0xD00000000000001DLL;
        v20 = 0x8000000219CD75A0;
      }

      if (a1 <= 5u)
      {
        v10 = v21;
      }

      else
      {
        v10 = v19;
      }

      if (a1 <= 5u)
      {
        v11 = v20;
      }

      else
      {
        v11 = v18;
      }
    }

    else
    {
      v6 = 0x8000000219CD7530;
      v7 = 0xD00000000000001CLL;
      if (a1 != 2)
      {
        v7 = 0xD000000000000023;
        v6 = 0x8000000219CD7550;
      }

      v8 = 0x8000000219CD7330;
      v9 = 0xD000000000000014;
      if (!a1)
      {
        v9 = 0x6F6C6F6E6F726863;
        v8 = 0xED00006C61636967;
      }

      if (a1 <= 1u)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      if (a1 <= 1u)
      {
        v11 = v8;
      }

      else
      {
        v11 = v6;
      }
    }

    v22 = v11;
  }

  else
  {
    sub_219BF7314();

    if (a1 > 3u)
    {
      v23 = 0x8000000219CD75C0;
      v24 = 0xD000000000000024;
      if (a1 == 6)
      {
        v24 = 0xD00000000000001DLL;
      }

      else
      {
        v23 = 0x8000000219CD75E0;
      }

      v25 = 0x8000000219CD7580;
      v26 = 0xD000000000000016;
      if (a1 != 4)
      {
        v26 = 0xD00000000000001DLL;
        v25 = 0x8000000219CD75A0;
      }

      if (a1 <= 5u)
      {
        v16 = v26;
      }

      else
      {
        v16 = v24;
      }

      if (a1 <= 5u)
      {
        v17 = v25;
      }

      else
      {
        v17 = v23;
      }
    }

    else
    {
      v12 = 0x8000000219CD7530;
      v13 = 0xD00000000000001CLL;
      if (a1 != 2)
      {
        v13 = 0xD000000000000023;
        v12 = 0x8000000219CD7550;
      }

      v14 = 0x8000000219CD7330;
      v15 = 0xD000000000000014;
      if (!a1)
      {
        v15 = 0x6F6C6F6E6F726863;
        v14 = 0xED00006C61636967;
      }

      if (a1 <= 1u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v13;
      }

      if (a1 <= 1u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v12;
      }
    }

    MEMORY[0x21CECC330](v16, v17);

    MEMORY[0x21CECC330](0x3D746E756F63202CLL, 0xE800000000000000);
    v10 = sub_219BF7894();
  }

  MEMORY[0x21CECC330](v10, v22);

  MEMORY[0x21CECC330](0x7265746C6966202CLL, 0xE90000000000003DLL);
  v27 = sub_21965BADC(a4);
  MEMORY[0x21CECC330](v27);

  return 0x3D7942726564726FLL;
}

void sub_2195FE808(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_218BDE618(v6, *(a3 + OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_subscribedTagIDs));
  *a4 = v8;
  *(a4 + 8) = v7;
}

uint64_t sub_2195FE874(char *a1, char a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_149;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v104 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F98];
  v99 = v2 & 0xFFFFFFFFFFFFFF8;
  v101 = v2;
  v102 = v3;
  while (1)
  {
    if (v104)
    {
      v7 = MEMORY[0x21CECE0F0](v4, v2);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v4 >= *(v99 + 16))
      {
        goto LABEL_145;
      }

      v7 = *&v2[8 * v4 + 32];

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
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
        v3 = sub_219BF7214();
        if (!v3)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_3;
      }
    }

    v109 = v8;
    v9 = sub_219BF4034();
    if (v9)
    {
      break;
    }

    v11 = 0;
    v13 = 0xE000000000000000;
    if (v6[2])
    {
      goto LABEL_17;
    }

LABEL_24:
    v108 = v4;
    v2 = v5;
    sub_218725F94();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C146A0;
    *(v26 + 32) = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v11;
    v30 = sub_21870F700(v11, v13);
    v31 = v6[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_141;
    }

    v34 = v29;
    if (v6[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_219492774();
      }
    }

    else
    {
      sub_219481864(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_21870F700(v28, v13);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_153;
      }

      v30 = v35;
    }

    if (v34)
    {
      *(v6[7] + 8 * v30) = v26;
    }

    else
    {
      v6[(v30 >> 6) + 8] |= 1 << v30;
      v37 = (v6[6] + 16 * v30);
      *v37 = v28;
      v37[1] = v13;
      *(v6[7] + 8 * v30) = v26;
      v38 = v6[2];
      v22 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v22)
      {
        goto LABEL_146;
      }

      v6[2] = v39;
    }

    v40 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v40 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v2;
    if (v40)
    {
      v2 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
      }

      v3 = v102;
      v42 = *(v5 + 2);
      v41 = *(v5 + 3);
      if (v42 >= v41 >> 1)
      {
        v5 = sub_218840D24((v41 > 1), v42 + 1, 1, v5);
      }

      *(v5 + 2) = v42 + 1;
      v43 = &v5[16 * v42];
      *(v43 + 4) = v28;
      *(v43 + 5) = v13;
    }

    else
    {

      v2 = v101;
      v3 = v102;
    }

    v4 = v108;
LABEL_6:
    ++v4;
    if (v109 == v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_218840D24(0, *(v5 + 2) + 1, 1, v5);
      }

      v48 = MEMORY[0x277D84F90];
      v50 = *(v5 + 2);
      v49 = *(v5 + 3);
      if (v50 >= v49 >> 1)
      {
        v5 = sub_218840D24((v49 > 1), v50 + 1, 1, v5);
      }

      *(v5 + 2) = v50 + 1;
      v51 = v5 + 32;
      v52 = &v5[16 * v50 + 32];
      *v52 = 0;
      *(v52 + 1) = 0xE000000000000000;
      v113 = v48;
      if (v6[2])
      {
        v105 = MEMORY[0x277D84F90];
        v107 = v5;
        v103 = v5 + 32;
        while (1)
        {
          v110 = *(v5 + 2);
          if (v110)
          {
            break;
          }

LABEL_130:
          if (a2)
          {

            v6 = MEMORY[0x277D84F98];
          }

          if (!v6[2])
          {

            v97 = v105;
            goto LABEL_134;
          }
        }

        v2 = 0;
        while (1)
        {
          if (v2 >= *(v5 + 2))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          v53 = &v51[16 * v2];
          v55 = *v53;
          v54 = v53[1];
          v56 = v6[2];

          if (!v56 || (v57 = sub_21870F700(v55, v54), (v58 & 1) == 0))
          {
LABEL_111:
            v81 = sub_21870F700(v55, v54);
            v83 = v82;

            if (v83)
            {
              if (!swift_isUniquelyReferenced_nonNull_native())
              {
                sub_219492774();
              }

              sub_2194B7E5C(v81, v6);
            }

            goto LABEL_60;
          }

          v59 = *(v6[7] + 8 * v57);
          v60 = v59 >> 62;
          if (v59 >> 62)
          {
            v61 = sub_219BF7214();
            if (!v61)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v61)
            {
              goto LABEL_111;
            }
          }

          if ((v59 & 0xC000000000000001) != 0)
          {

            MEMORY[0x21CECE0F0](0, v59);
          }

          else
          {
            if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_136;
            }
          }

          MEMORY[0x21CECC690](v62);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          if (v61 < 0)
          {
            __break(1u);
            goto LABEL_153;
          }

          if (v60)
          {
            if (sub_219BF7214() < 1)
            {
              goto LABEL_137;
            }

            v63 = sub_219BF7214();
          }

          else
          {
            v63 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v63)
            {
              goto LABEL_137;
            }
          }

          if (v63 < v61)
          {
            goto LABEL_138;
          }

          if ((v59 & 0xC000000000000001) == 0 || v61 == 1)
          {
          }

          else
          {
            sub_219BF4044();

            v64 = 1;
            do
            {
              v65 = v64 + 1;
              sub_219BF7334();
              v64 = v65;
            }

            while (v61 != v65);
          }

          v105 = v113;

          if (v60)
          {
            sub_219BF7564();
            v67 = v68;
            v66 = v69;
          }

          else
          {
            v66 = (2 * v61) | 1;
            v67 = 1;
          }

          v70 = v66 >> 1;
          if (v67 != v66 >> 1)
          {
            break;
          }

          v71 = sub_21870F700(v55, v54);
          v73 = v72;

          if (v73)
          {
            v5 = v107;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_219492774();
            }

            sub_2194B7E5C(v71, v6);

            swift_unknownObjectRelease();
            goto LABEL_59;
          }

          swift_unknownObjectRelease();
LABEL_58:
          v5 = v107;
LABEL_59:
          v51 = v103;
LABEL_60:
          if (++v2 == v110)
          {
            goto LABEL_130;
          }
        }

        if (v66)
        {
          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v79 = swift_dynamicCastClass();
          if (!v79)
          {
            swift_unknownObjectRelease();
            v79 = MEMORY[0x277D84F90];
          }

          v80 = *(v79 + 16);
          swift_unknownObjectRelease_n();

          v22 = __OFSUB__(v70, v67);
          v74 = v70 - v67;
          if (v22)
          {
            goto LABEL_143;
          }

          if (v80 == v74)
          {
            v76 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v76)
            {
              goto LABEL_120;
            }

            goto LABEL_118;
          }

          if (v74)
          {
LABEL_98:
            if (v74 < 1)
            {
              v76 = MEMORY[0x277D84F90];
            }

            else
            {
              sub_218725F94();
              v76 = swift_allocObject();
              v77 = _swift_stdlib_malloc_size_0(v76);
              v78 = v77 - 32;
              if (v77 < 32)
              {
                v78 = v77 - 25;
              }

              v76[2] = v74;
              v76[3] = (2 * (v78 >> 3)) | 1;
            }

            swift_unknownObjectRelease();
            sub_219BF4044();
            swift_arrayInitWithCopy();
            goto LABEL_119;
          }
        }

        else
        {
          v22 = __OFSUB__(v70, v67);
          v74 = v70 - v67;
          v75 = v22;
          swift_unknownObjectRetain_n();
          if (v75)
          {
            goto LABEL_142;
          }

          if (v74)
          {
            goto LABEL_98;
          }
        }

        swift_unknownObjectRelease();
LABEL_118:
        v76 = MEMORY[0x277D84F90];
LABEL_119:
        swift_unknownObjectRelease();
LABEL_120:
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v85 = sub_21870F700(v55, v54);
        v87 = v6[2];
        v88 = (v86 & 1) == 0;
        v22 = __OFADD__(v87, v88);
        v89 = v87 + v88;
        if (v22)
        {
          goto LABEL_140;
        }

        v90 = v86;
        if (v6[3] >= v89)
        {
          if ((v84 & 1) == 0)
          {
            v93 = v85;
            sub_219492774();
            v85 = v93;
            if ((v90 & 1) == 0)
            {
LABEL_128:
              v6[(v85 >> 6) + 8] |= 1 << v85;
              v94 = (v6[6] + 16 * v85);
              *v94 = v55;
              v94[1] = v54;
              *(v6[7] + 8 * v85) = v76;

              swift_unknownObjectRelease();
              v95 = v6[2];
              v22 = __OFADD__(v95, 1);
              v96 = v95 + 1;
              if (v22)
              {
                goto LABEL_144;
              }

              v6[2] = v96;
              goto LABEL_58;
            }

            goto LABEL_126;
          }
        }

        else
        {
          sub_219481864(v89, v84);
          v85 = sub_21870F700(v55, v54);
          if ((v90 & 1) != (v91 & 1))
          {
            goto LABEL_153;
          }
        }

        if ((v90 & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_126:
        v92 = v85;

        *(v6[7] + 8 * v92) = v76;

        swift_unknownObjectRelease();

        goto LABEL_58;
      }

      v97 = MEMORY[0x277D84F90];
LABEL_134:

      return v97;
    }
  }

  v10 = [v9 identifier];
  swift_unknownObjectRelease();
  v11 = sub_219BF5414();
  v13 = v12;

  if (!v6[2])
  {
    goto LABEL_24;
  }

LABEL_17:
  v14 = sub_21870F700(v11, v13);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v106 = v5;
  v112 = *(v6[7] + 8 * v14);

  MEMORY[0x21CECC690](v16);
  if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v111 = v6;
  v18 = sub_21870F700(v11, v13);
  v20 = v6[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    goto LABEL_147;
  }

  v24 = v19;
  if (v6[3] >= v23)
  {
    if ((v17 & 1) == 0)
    {
      v47 = v18;
      sub_219492774();
      v18 = v47;
    }

LABEL_44:
    v5 = v106;
    v6 = v111;
    if (v24)
    {
      *(v111[7] + 8 * v18) = v112;
    }

    else
    {
      v111[(v18 >> 6) + 8] |= 1 << v18;
      v44 = (v111[6] + 16 * v18);
      *v44 = v11;
      v44[1] = v13;
      *(v111[7] + 8 * v18) = v112;
      v45 = v111[2];
      v22 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v22)
      {
        goto LABEL_148;
      }

      v111[2] = v46;
    }

    goto LABEL_6;
  }

  sub_219481864(v23, v17);
  v18 = sub_21870F700(v11, v13);
  if ((v24 & 1) == (v25 & 1))
  {
    goto LABEL_44;
  }

LABEL_153:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2195FF43C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[32])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2195FF480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_2195FF4D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7942726564726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2195FF5E4(void *a1)
{
  sub_2195FF8AC(0, &qword_280E8CD88, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2195FF804();
  sub_219BF7B34();
  if (!v1)
  {
    v10[30] = 0;
    sub_2195FF858();
    sub_219BF7734();
    v8 = v10[31];
    v10[29] = 1;
    sub_219BF76C4();
    v10[28] = 2;
    sub_218C4263C();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2195FF804()
{
  result = qword_280EC01F0;
  if (!qword_280EC01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01F0);
  }

  return result;
}

unint64_t sub_2195FF858()
{
  result = qword_280EA7DB8;
  if (!qword_280EA7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7DB8);
  }

  return result;
}

void sub_2195FF8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195FF804();
    v7 = a3(a1, &type metadata for SportsScoreSortingSelect.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195FF910()
{
  result = qword_280EA7DC8[0];
  if (!qword_280EA7DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7DC8);
  }

  return result;
}

unint64_t sub_2195FF978()
{
  result = qword_27CC1CE48;
  if (!qword_27CC1CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE48);
  }

  return result;
}

unint64_t sub_2195FF9D0()
{
  result = qword_280EC01E0;
  if (!qword_280EC01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01E0);
  }

  return result;
}

unint64_t sub_2195FFA28()
{
  result = qword_280EC01E8;
  if (!qword_280EC01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC01E8);
  }

  return result;
}

uint64_t sub_2195FFA94(void *a1, uint64_t a2)
{
  sub_219605494(0, &qword_27CC1D008, sub_219605258, &type metadata for ChannelPickerConfigs.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219605258();
  sub_219BF7B44();
  v10[1] = a2;
  sub_2196052AC(0, &qword_27CC1CFC0, &type metadata for ChannelPickerConfig, MEMORY[0x277D83940]);
  sub_2196054FC();
  sub_219BF77E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2195FFC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736769666E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2195FFCD8(uint64_t a1)
{
  v2 = sub_219605258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195FFD14(uint64_t a1)
{
  v2 = sub_219605258();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2195FFD50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_219602D98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2195FFD98(void *a1)
{
  v2 = v1;
  sub_219605494(0, &qword_27CC1D000, sub_219605440, &type metadata for ChannelPickerConfig.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219605440();
  sub_219BF7B44();
  LOBYTE(v22) = 0;
  v9 = v35;
  sub_219BF7794();
  if (!v9)
  {
    v10 = *(v2 + 64);
    v11 = *(v2 + 96);
    v32 = *(v2 + 80);
    v33 = v11;
    v12 = *(v2 + 32);
    v29[0] = *(v2 + 16);
    v29[1] = v12;
    v13 = *(v2 + 64);
    v15 = *(v2 + 16);
    v14 = *(v2 + 32);
    v30 = *(v2 + 48);
    v31 = v13;
    v25 = v10;
    v26 = v32;
    v27 = *(v2 + 96);
    v22 = v15;
    v34 = *(v2 + 112);
    v28 = *(v2 + 112);
    v23 = v14;
    v24 = v30;
    v21 = 1;
    sub_218D906DC(v29, v19);
    sub_21960473C();
    sub_219BF77E4();
    v19[4] = v26;
    v19[5] = v27;
    v20 = v28;
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    v19[3] = v25;
    sub_219604790(v19);
    v18 = 2;
    sub_219BF7794();
    v18 = 3;
    sub_219BF7794();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21960004C()
{
  v1 = 1701869940;
  v2 = 0x6554686372616573;
  if (*v0 != 2)
  {
    v2 = 0x65546E6F74747562;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_2196000CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2196032C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2196000F4(uint64_t a1)
{
  v2 = sub_219605440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219600130(uint64_t a1)
{
  v2 = sub_219605440();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21960016C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_219602F80(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_2196001F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_219605494(0, &qword_27CC1CFE8, sub_2196053EC, &type metadata for ColorPair.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196053EC();
  sub_219BF7B44();
  v15 = 0;
  v11 = v13[3];
  sub_219BF7794();
  if (!v11)
  {
    v14 = 1;
    sub_219BF7794();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_219600394(uint64_t a1)
{
  v2 = sub_2196053EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196003D0(uint64_t a1)
{
  v2 = sub_2196053EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21960040C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219603440(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_21960045C(void *a1)
{
  v3 = v1;
  sub_219605494(0, &qword_27CC1CF48, sub_219604810, &type metadata for ChannelPickerModule.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219604810();
  sub_219BF7B44();
  LOBYTE(v12[0]) = 0;
  sub_219BF7794();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_219BF7794();
    LOBYTE(v12[0]) = 2;
    sub_219BF7794();
    LOBYTE(v12[0]) = 3;
    sub_219BF7794();
    v11 = *(v3 + 80);
    v12[0] = *(v3 + 64);
    v12[1] = v11;
    v13 = 4;
    sub_2196049F0();
    sub_219BF77E4();
    *&v12[0] = *(v3 + 96);
    v13 = 5;
    sub_2196052AC(0, &qword_27CC1CF30, &type metadata for ChannelPickerSection, MEMORY[0x277D83940]);
    sub_219604A44();
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2196006DC()
{
  v1 = *v0;
  v2 = 0x695472656B636970;
  v3 = 0xD000000000000015;
  if (v1 != 4)
  {
    v3 = 0x736E6F6974636573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v4 = 0x614E72656B636970;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2196007A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219603A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2196007CC(uint64_t a1)
{
  v2 = sub_219604810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219600808(uint64_t a1)
{
  v2 = sub_219604810();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_219600844@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21960364C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

NewsUI2::ChannelPickerSection::DataType_optional __swiftcall ChannelPickerSection.DataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ChannelPickerSection.DataType.rawValue.getter()
{
  v1 = 0x6574616C75706F70;
  v2 = 0x74496769666E6F63;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_2196009B8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219600A94()
{
  sub_219BF5524();
}

uint64_t sub_219600B5C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_219600C40(unint64_t *a1@<X8>)
{
  v2 = 0xEE00736D65744964;
  v3 = 0x6574616C75706F70;
  v4 = 0x8000000219CD8430;
  v5 = 0x74496769666E6F63;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEB00000000736D65;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000219CD8400;
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

uint64_t sub_219600D88(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684632167;
  }

  else
  {
    v2 = 1953720684;
  }

  if (*a2)
  {
    v3 = 1684632167;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_219600E00()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219600E68()
{
  sub_219BF5524();
}

uint64_t sub_219600EB4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_219600F24(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 1684632167;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t ChannelPickerSection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_219605494(0, &qword_27CC1CE50, sub_219601704, &type metadata for ChannelPickerSection.CodingKeys, MEMORY[0x277D844C8]);
  v51 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219601704();
  sub_219BF7B34();
  if (!v2)
  {
    v9 = v6;
    LOBYTE(v53) = 0;
    v10 = sub_219BF7694();
    v12 = v11;
    LOBYTE(v53) = 1;
    v49 = sub_219BF7694();
    v50 = v13;
    LOBYTE(v53) = 2;
    sub_219601758();
    sub_219BF76E4();
    v48 = v59;
    LOBYTE(v53) = 3;
    sub_2196017AC();
    sub_219BF76E4();
    v47 = v58;
    LOBYTE(v53) = 4;
    v45 = sub_219BF7694();
    v46 = v15;
    sub_2196052AC(0, &qword_27CC1CE70, &type metadata for ChannelPickerSectionItem, MEMORY[0x277D83940]);
    LOBYTE(v52) = 5;
    sub_219601800();
    sub_219BF76E4();
    v44 = v53;
    sub_2196052AC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v57 = 6;
    sub_218753418(&qword_280E8EDD0);
    sub_219BF76E4();
    v16 = v52;
    v57 = 7;
    v17 = sub_219BF76C4();
    v40 = v18;
    v42 = v17;
    v43 = v16;
    v57 = 8;
    v41 = sub_219BF76C4();
    v39 = v19;
    v57 = 10;
    v38 = sub_219BF7694();
    v21 = v20;
    v57 = 11;
    v37 = sub_219BF76C4();
    v36 = v22;
    v57 = 12;
    v34 = sub_219BF7694();
    v35 = v23;
    v57 = 13;
    v24 = sub_219BF7694();
    v33 = v25;
    v26 = v24;
    (*(v9 + 8))(v8, v51);
    v27 = v40 & 1;
    v56 = v40 & 1;
    v28 = v39 & 1;
    v55 = v39 & 1;
    v29 = v36 & 1;
    v54 = v36 & 1;
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v49;
    *(a2 + 24) = v50;
    *(a2 + 32) = v48;
    *(a2 + 33) = v47;
    *(a2 + 40) = v45;
    *(a2 + 48) = v46;
    *(a2 + 56) = v44;
    *(a2 + 64) = v43;
    *(a2 + 72) = v42;
    *(a2 + 80) = v27;
    *(a2 + 88) = v41;
    *(a2 + 96) = v28;
    *(a2 + 104) = 3;
    v30 = v37;
    *(a2 + 112) = v38;
    *(a2 + 120) = v21;
    *(a2 + 128) = v30;
    *(a2 + 136) = v29;
    v31 = v35;
    *(a2 + 144) = v34;
    *(a2 + 152) = v31;
    v32 = v33;
    *(a2 + 160) = v26;
    *(a2 + 168) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_219601704()
{
  result = qword_27CC1CE58;
  if (!qword_27CC1CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE58);
  }

  return result;
}

unint64_t sub_219601758()
{
  result = qword_27CC1CE60;
  if (!qword_27CC1CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE60);
  }

  return result;
}

unint64_t sub_2196017AC()
{
  result = qword_27CC1CE68;
  if (!qword_27CC1CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE68);
  }

  return result;
}

unint64_t sub_219601800()
{
  result = qword_27CC1CE78;
  if (!qword_27CC1CE78)
  {
    sub_2196052AC(255, &qword_27CC1CE70, &type metadata for ChannelPickerSectionItem, MEMORY[0x277D83940]);
    sub_21960189C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE78);
  }

  return result;
}

unint64_t sub_21960189C()
{
  result = qword_27CC1CE80;
  if (!qword_27CC1CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE80);
  }

  return result;
}

unint64_t sub_2196018F0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x74756F79616CLL;
      break;
    case 3:
      result = 0x617461446D657469;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0x496E6F6974636573;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x526C616974696E69;
      break;
    case 8:
      result = 0x73776F5278616DLL;
      break;
    case 9:
      result = 0x726550736D657469;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6E6E61684378616DLL;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x5465726F4D656573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219601AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219603C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219601AD4(uint64_t a1)
{
  v2 = sub_219601704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219601B10(uint64_t a1)
{
  v2 = sub_219601704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelPickerSection.encode(to:)(void *a1)
{
  sub_219605494(0, &qword_27CC1CE88, sub_219601704, &type metadata for ChannelPickerSection.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = *(v1 + 16);
  v36 = *(v1 + 24);
  v37 = v6;
  v40 = *(v1 + 32);
  v35 = *(v1 + 33);
  v7 = *(v1 + 40);
  v33 = *(v1 + 48);
  v34 = v7;
  v8 = *(v1 + 56);
  v31 = *(v1 + 64);
  v32 = v8;
  v29 = *(v1 + 72);
  v30 = *(v1 + 80);
  v9 = *(v1 + 88);
  v28 = *(v1 + 96);
  v10 = *(v1 + 112);
  v26 = *(v1 + 104);
  v27 = v9;
  v24 = v10;
  v11 = *(v1 + 128);
  v25 = *(v1 + 120);
  v23 = *(v1 + 136);
  v12 = *(v1 + 144);
  v22[2] = *(v1 + 152);
  v22[3] = v11;
  v13 = *(v1 + 168);
  v22[0] = *(v1 + 160);
  v22[1] = v12;
  v14 = a1[3];
  v15 = a1;
  v17 = v22 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_219601704();
  sub_219BF7B44();
  LOBYTE(v39) = 0;
  v18 = v38;
  sub_219BF7794();
  if (v18)
  {
    return (*(v5 + 8))(v17, v4);
  }

  v19 = v40;
  v20 = v35;
  v38 = v13;
  LOBYTE(v39) = 1;
  sub_219BF7794();
  LOBYTE(v39) = v19;
  v41 = 2;
  sub_219602070();
  sub_219BF77E4();
  LOBYTE(v39) = v20;
  v41 = 3;
  sub_2196020C4();
  sub_219BF77E4();
  LOBYTE(v39) = 4;
  sub_219BF7794();
  v39 = v32;
  v41 = 5;
  sub_2196052AC(0, &qword_27CC1CE70, &type metadata for ChannelPickerSectionItem, MEMORY[0x277D83940]);
  sub_219602118();
  sub_219BF77E4();
  v39 = v31;
  v41 = 6;
  sub_2196052AC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_218753418(&unk_280E8EE00);
  sub_219BF77E4();
  LOBYTE(v39) = 7;
  sub_219BF77C4();
  LOBYTE(v39) = 8;
  sub_219BF77C4();
  LOBYTE(v39) = 9;
  sub_219BF7824();
  LOBYTE(v39) = 10;
  sub_219BF7794();
  LOBYTE(v39) = 11;
  sub_219BF77C4();
  LOBYTE(v39) = 12;
  sub_219BF7794();
  LOBYTE(v39) = 13;
  sub_219BF7794();
  return (*(v5 + 8))(v17, 0);
}

unint64_t sub_219602070()
{
  result = qword_27CC1CE90;
  if (!qword_27CC1CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE90);
  }

  return result;
}

unint64_t sub_2196020C4()
{
  result = qword_27CC1CE98;
  if (!qword_27CC1CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CE98);
  }

  return result;
}

unint64_t sub_219602118()
{
  result = qword_27CC1CEA0;
  if (!qword_27CC1CEA0)
  {
    sub_2196052AC(255, &qword_27CC1CE70, &type metadata for ChannelPickerSectionItem, MEMORY[0x277D83940]);
    sub_2196021B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEA0);
  }

  return result;
}

unint64_t sub_2196021B4()
{
  result = qword_27CC1CEA8;
  if (!qword_27CC1CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEA8);
  }

  return result;
}

unint64_t sub_21960220C()
{
  result = qword_27CC1CEB0;
  if (!qword_27CC1CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEB0);
  }

  return result;
}

uint64_t sub_2196022B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21960230C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_219602388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2196023E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_219602498()
{
  result = qword_27CC1CEB8;
  if (!qword_27CC1CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEB8);
  }

  return result;
}

unint64_t sub_2196024F0()
{
  result = qword_27CC1CEC0;
  if (!qword_27CC1CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEC0);
  }

  return result;
}

uint64_t sub_219602544(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79726F6765746163;
  }

  else
  {
    v3 = 1835365481;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x79726F6765746163;
  }

  else
  {
    v5 = 1835365481;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2196025E4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219602660()
{
  sub_219BF5524();
}

uint64_t sub_2196026C8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21960274C(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (*v1)
  {
    v2 = 0x79726F6765746163;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_219602834(void *a1)
{
  v2 = v1;
  sub_219605494(0, &qword_27CC1CF00, sub_2196045EC, &type metadata for ChannelPickerSectionItem.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196045EC();
  sub_219BF7B44();
  LOBYTE(v20) = 0;
  v9 = v17[1];
  sub_219BF7794();
  if (!v9)
  {
    LOBYTE(v20) = 1;
    sub_219BF7794();
    LOBYTE(v20) = 2;
    sub_219BF7794();
    LOBYTE(v20) = 3;
    sub_219BF7794();
    LOBYTE(v20) = *(v2 + 64);
    LOBYTE(v18[0]) = 4;
    sub_2196046E8();
    sub_219BF77E4();
    v11 = *(v2 + 120);
    v12 = *(v2 + 152);
    v27[4] = *(v2 + 136);
    v27[5] = v12;
    v28 = *(v2 + 168);
    v13 = *(v2 + 88);
    v27[0] = *(v2 + 72);
    v27[1] = v13;
    v27[2] = *(v2 + 104);
    v27[3] = v11;
    v14 = *(v2 + 120);
    v15 = *(v2 + 152);
    v24 = *(v2 + 136);
    v25 = v15;
    v26 = *(v2 + 168);
    v16 = *(v2 + 88);
    v20 = *(v2 + 72);
    v21 = v16;
    v22 = *(v2 + 104);
    v23 = v14;
    v29 = 5;
    sub_218D906DC(v27, v18);
    sub_21960473C();
    sub_219BF77E4();
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    sub_219604790(v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_219602B1C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x657079546D657469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_219602BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219605008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219602BF4(uint64_t a1)
{
  v2 = sub_2196045EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219602C30(uint64_t a1)
{
  v2 = sub_2196045EC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_219602C6C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21960415C(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_219602CEC()
{
  result = qword_27CC1CEC8;
  if (!qword_27CC1CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEC8);
  }

  return result;
}

unint64_t sub_219602D44()
{
  result = qword_27CC1CED0;
  if (!qword_27CC1CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CED0);
  }

  return result;
}

void *sub_219602D98(void *a1)
{
  sub_219605494(0, &qword_27CC1CFB0, sub_219605258, &type metadata for ChannelPickerConfigs.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219605258();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    sub_2196052AC(0, &qword_27CC1CFC0, &type metadata for ChannelPickerConfig, MEMORY[0x277D83940]);
    sub_2196052FC();
    sub_219BF76E4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_219602F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_219605494(0, &qword_27CC1CFF0, sub_219605440, &type metadata for ChannelPickerConfig.CodingKeys, MEMORY[0x277D844C8]);
  v53 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219605440();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v29;
  LOBYTE(v46) = 0;
  v10 = sub_219BF7694();
  v12 = v11;
  v28 = v10;
  v45 = 1;
  sub_219604694();
  sub_219BF76E4();
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  LOBYTE(v30) = 2;
  v13 = sub_219BF7694();
  v15 = v14;
  v27 = v13;
  v37 = 3;
  v16 = sub_219BF7694();
  v17 = v7;
  v19 = v18;
  (*(v8 + 8))(v17, v53);
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v28;
  *(v9 + 8) = v12;
  v21 = v35;
  *(v9 + 80) = v34;
  *(v9 + 96) = v21;
  v22 = v36;
  v23 = v31;
  *(v9 + 16) = v30;
  *(v9 + 32) = v23;
  v24 = v33;
  *(v9 + 48) = v32;
  *(v9 + 64) = v24;
  v25 = v27;
  *(v9 + 112) = v22;
  *(v9 + 120) = v25;
  *(v9 + 128) = v15;
  *(v9 + 136) = v16;
  *(v9 + 144) = v19;
  return result;
}

uint64_t sub_2196032C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219D29C90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546E6F74747562 && a2 == 0xEA00000000007478)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219603440(void *a1)
{
  sub_219605494(0, &qword_27CC1CFD8, sub_2196053EC, &type metadata for ColorPair.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196053EC();
  sub_219BF7B34();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_219BF7694();
    v11 = 1;
    sub_219BF7694();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_21960364C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219605494(0, &qword_27CC1CF18, sub_219604810, &type metadata for ChannelPickerModule.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_219604810();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v11 = v7;
  LOBYTE(v41) = 0;
  v12 = v6;
  v13 = sub_219BF7694();
  v15 = v14;
  LOBYTE(v41) = 1;
  v16 = sub_219BF7694();
  v18 = v17;
  v19 = v16;
  LOBYTE(v41) = 2;
  v36 = sub_219BF7694();
  v37 = v19;
  v38 = v20;
  LOBYTE(v41) = 3;
  v34 = sub_219BF7694();
  v35 = v21;
  LOBYTE(v45) = 4;
  sub_219604864();
  sub_219BF76E4();
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  sub_2196052AC(0, &qword_27CC1CF30, &type metadata for ChannelPickerSection, MEMORY[0x277D83940]);
  v40 = 5;
  sub_2196048B8();
  sub_219BF76E4();
  (*(v11 + 8))(v9, v12);
  v22 = v45;
  result = __swift_destroy_boxed_opaque_existential_1(v39);
  *a2 = v13;
  a2[1] = v15;
  v24 = v36;
  a2[2] = v37;
  a2[3] = v18;
  v25 = v38;
  a2[4] = v24;
  a2[5] = v25;
  v26 = v35;
  a2[6] = v34;
  a2[7] = v26;
  v27 = v31;
  a2[8] = v30;
  a2[9] = v27;
  v28 = v33;
  a2[10] = v32;
  a2[11] = v28;
  a2[12] = v22;
  return result;
}

uint64_t sub_219603A70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x695472656B636970 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E72656B636970 && a2 == 0xEA0000000000656DLL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D29C30 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219D29C50 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D29C70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219603C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461446D657469 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xEC000000736D6574 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219D29B90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x526C616974696E69 && a2 == 0xEB0000000073776FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73776F5278616DLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726550736D657469 && a2 == 0xEB00000000776F52 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D29BB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6E61684378616DLL && a2 == 0xEB00000000736C65 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D29BD0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5465726F4D656573 && a2 == 0xEB00000000747865)
  {

    return 13;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_219604108()
{
  result = qword_27CC1CED8;
  if (!qword_27CC1CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CED8);
  }

  return result;
}

uint64_t sub_21960415C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_219605494(0, &qword_27CC1CEE0, sub_2196045EC, &type metadata for ChannelPickerSectionItem.CodingKeys, MEMORY[0x277D844C8]);
  v31 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196045EC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v33) = 0;
  v10 = sub_219BF7694();
  v12 = v11;
  LOBYTE(v33) = 1;
  v13 = sub_219BF7694();
  v15 = v14;
  v16 = v13;
  LOBYTE(v33) = 2;
  v28 = sub_219BF7694();
  v29 = v16;
  v30 = v17;
  LOBYTE(v33) = 3;
  v26 = sub_219BF7694();
  v27 = v18;
  LOBYTE(v33) = 4;
  sub_219604640();
  sub_219BF76E4();
  v40 = v42;
  v41 = 5;
  sub_219604694();
  sub_219BF76E4();
  (*(v9 + 8))(v8, v31);
  *&v32[55] = v36;
  *&v32[71] = v37;
  *&v32[87] = v38;
  *&v32[103] = v39;
  *&v32[7] = v33;
  *&v32[23] = v34;
  *&v32[39] = v35;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = *&v32[64];
  v21 = *&v32[32];
  *(a2 + 113) = *&v32[48];
  v22 = *&v32[80];
  *(a2 + 129) = v20;
  *(a2 + 145) = v22;
  *(a2 + 160) = *&v32[95];
  v23 = *&v32[16];
  *(a2 + 65) = *v32;
  *(a2 + 81) = v23;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v29;
  *(a2 + 24) = v15;
  v24 = v30;
  *(a2 + 32) = v28;
  *(a2 + 40) = v24;
  v25 = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v25;
  *(a2 + 64) = v40;
  *(a2 + 97) = v21;
  return result;
}

unint64_t sub_2196045EC()
{
  result = qword_27CC1CEE8;
  if (!qword_27CC1CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEE8);
  }

  return result;
}

unint64_t sub_219604640()
{
  result = qword_27CC1CEF0;
  if (!qword_27CC1CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEF0);
  }

  return result;
}

unint64_t sub_219604694()
{
  result = qword_27CC1CEF8;
  if (!qword_27CC1CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CEF8);
  }

  return result;
}

unint64_t sub_2196046E8()
{
  result = qword_27CC1CF08;
  if (!qword_27CC1CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF08);
  }

  return result;
}

unint64_t sub_21960473C()
{
  result = qword_27CC1CF10;
  if (!qword_27CC1CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF10);
  }

  return result;
}

uint64_t sub_219604790(uint64_t a1)
{
  sub_2196052AC(0, &qword_27CC115D8, &type metadata for ChannelPickerModule, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219604810()
{
  result = qword_27CC1CF20;
  if (!qword_27CC1CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF20);
  }

  return result;
}

unint64_t sub_219604864()
{
  result = qword_27CC1CF28;
  if (!qword_27CC1CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF28);
  }

  return result;
}

unint64_t sub_2196048B8()
{
  result = qword_27CC1CF38;
  if (!qword_27CC1CF38)
  {
    sub_2196052AC(255, &qword_27CC1CF30, &type metadata for ChannelPickerSection, MEMORY[0x277D83940]);
    sub_219604954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF38);
  }

  return result;
}

unint64_t sub_219604954()
{
  result = qword_27CC1CF40;
  if (!qword_27CC1CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF40);
  }

  return result;
}

uint64_t sub_2196049A8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2196049F0()
{
  result = qword_27CC1CF50;
  if (!qword_27CC1CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF50);
  }

  return result;
}

unint64_t sub_219604A44()
{
  result = qword_27CC1CF58;
  if (!qword_27CC1CF58)
  {
    sub_2196052AC(255, &qword_27CC1CF30, &type metadata for ChannelPickerSection, MEMORY[0x277D83940]);
    sub_219604AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF58);
  }

  return result;
}

unint64_t sub_219604AE0()
{
  result = qword_27CC1CF60;
  if (!qword_27CC1CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF60);
  }

  return result;
}

unint64_t sub_219604B34()
{
  result = qword_27CC1CF68;
  if (!qword_27CC1CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF68);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_219604BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219604C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_219604CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219604D2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_219604DA4()
{
  result = qword_27CC1CF70;
  if (!qword_27CC1CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF70);
  }

  return result;
}

unint64_t sub_219604DFC()
{
  result = qword_27CC1CF78;
  if (!qword_27CC1CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF78);
  }

  return result;
}

unint64_t sub_219604E54()
{
  result = qword_27CC1CF80;
  if (!qword_27CC1CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF80);
  }

  return result;
}

unint64_t sub_219604EAC()
{
  result = qword_27CC1CF88;
  if (!qword_27CC1CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF88);
  }

  return result;
}

unint64_t sub_219604F04()
{
  result = qword_27CC1CF90;
  if (!qword_27CC1CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF90);
  }

  return result;
}

unint64_t sub_219604F5C()
{
  result = qword_27CC1CF98;
  if (!qword_27CC1CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CF98);
  }

  return result;
}

unint64_t sub_219604FB4()
{
  result = qword_27CC1CFA0;
  if (!qword_27CC1CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFA0);
  }

  return result;
}

uint64_t sub_219605008(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D29BF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657079546D657469 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D29C10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

unint64_t sub_219605204()
{
  result = qword_27CC1CFA8;
  if (!qword_27CC1CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFA8);
  }

  return result;
}

unint64_t sub_219605258()
{
  result = qword_27CC1CFB8;
  if (!qword_27CC1CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFB8);
  }

  return result;
}

void sub_2196052AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2196052FC()
{
  result = qword_27CC1CFC8;
  if (!qword_27CC1CFC8)
  {
    sub_2196052AC(255, &qword_27CC1CFC0, &type metadata for ChannelPickerConfig, MEMORY[0x277D83940]);
    sub_219605398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFC8);
  }

  return result;
}

unint64_t sub_219605398()
{
  result = qword_27CC1CFD0;
  if (!qword_27CC1CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFD0);
  }

  return result;
}

unint64_t sub_2196053EC()
{
  result = qword_27CC1CFE0;
  if (!qword_27CC1CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFE0);
  }

  return result;
}

unint64_t sub_219605440()
{
  result = qword_27CC1CFF8;
  if (!qword_27CC1CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CFF8);
  }

  return result;
}

void sub_219605494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2196054FC()
{
  result = qword_27CC1D010;
  if (!qword_27CC1D010)
  {
    sub_2196052AC(255, &qword_27CC1CFC0, &type metadata for ChannelPickerConfig, MEMORY[0x277D83940]);
    sub_219605598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D010);
  }

  return result;
}

unint64_t sub_219605598()
{
  result = qword_27CC1D018;
  if (!qword_27CC1D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D018);
  }

  return result;
}

unint64_t sub_219605620()
{
  result = qword_27CC1D020;
  if (!qword_27CC1D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D020);
  }

  return result;
}

unint64_t sub_219605678()
{
  result = qword_27CC1D028;
  if (!qword_27CC1D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D028);
  }

  return result;
}

unint64_t sub_2196056D0()
{
  result = qword_27CC1D030;
  if (!qword_27CC1D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D030);
  }

  return result;
}

unint64_t sub_219605728()
{
  result = qword_27CC1D038;
  if (!qword_27CC1D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D038);
  }

  return result;
}

unint64_t sub_219605780()
{
  result = qword_27CC1D040;
  if (!qword_27CC1D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D040);
  }

  return result;
}

unint64_t sub_2196057D8()
{
  result = qword_27CC1D048;
  if (!qword_27CC1D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D048);
  }

  return result;
}

unint64_t sub_219605830()
{
  result = qword_27CC1D050;
  if (!qword_27CC1D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D050);
  }

  return result;
}

unint64_t sub_219605888()
{
  result = qword_27CC1D058;
  if (!qword_27CC1D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D058);
  }

  return result;
}

unint64_t sub_2196058E0()
{
  result = qword_27CC1D060;
  if (!qword_27CC1D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D060);
  }

  return result;
}

id sub_219605968(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = *(a4 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesGroupTitleView_titleLabel);
  [v4 setFrame_];
  type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  sub_219BF0CD4();
  v7 = sub_2186C6148(0, &qword_280E8DB00);
  v8 = v6;
  v9 = sub_219BF6BD4();
  v10 = sub_219BF6BE4();

  v11 = sub_219BF0CB4();
  *(inited + 40) = v11;
  v12 = *MEMORY[0x277D740C0];
  *(inited + 64) = v7;
  *(inited + 72) = v12;
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  v16 = [v13 whiteColor];
  v17 = [v13 ts:v15 dynamicColor:v16 withDarkStyleVariant:?];

  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v17;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v20 = sub_219BF5204();

  v21 = [v18 initWithString:v19 attributes:v20];

  [v4 setAttributedText_];
  v22 = [v4 accessibilityTraits];
  v23 = v22;
  v24 = *MEMORY[0x277D76558];
  if (v22)
  {
    if ((v24 & ~v22) == 0)
    {
      return [v4 setAccessibilityTraits_];
    }
  }

  else if (!v24)
  {
    v23 = 0;
    return [v4 setAccessibilityTraits_];
  }

  v23 = v24 | v22;
  return [v4 setAccessibilityTraits_];
}

char *sub_219605C88(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_subtitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_button;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_onButtonTap;
  sub_218803FE0();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_onButtonTap];
  v17 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_button;
  v18 = *&v15[OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_button];
  v19 = v15;
  v20 = v16;
  v21 = v18;
  sub_219BEA854();

  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];

  return v19;
}

void sub_219606008()
{
  sub_219606094(&qword_27CC18278);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219606094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingNotificationsDisabledView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2196060D4()
{
  v1 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_button;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_onButtonTap;
  sub_218803FE0();
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  sub_219BF7514();
  __break(1u);
}

void sub_2196061EC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_notificationController);
  if ((a1 & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_notificationController) setNewIssueNotificationsEnabled_];
    v19 = sub_219606474();
    v20 = *(v19 + 2);
    if (v20)
    {
      v21 = v19 + 40;
      do
      {

        v22 = sub_219BF53D4();

        [v2 registerNotificationsForChannelID:v22 isPaid:1];

        v21 += 16;
        --v20;
      }

      while (v20);
    }

    goto LABEL_21;
  }

  [*(v1 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_notificationController) setNewIssueNotificationsEnabled_];
  v3 = sub_219606474();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
LABEL_21:

    return;
  }

  v6 = 0;
  v23 = v3 + 32;
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_purchaseProvider);
  while (v6 < *(v4 + 2))
  {
    v8 = &v23[16 * v6];
    v10 = *v8;
    v9 = *(v8 + 1);
    swift_bridgeObjectRetain_n();
    v11 = [v24 purchasedTagIDs];
    v12 = sub_219BF5D44();

    if (*(v12 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v13 = sub_219BF7AE4(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v10 && v17[1] == v9;
        if (v18 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_4:

      v7 = sub_219BF53D4();

      [v2 registerNotificationsForChannelID:v7 isPaid:0];
    }

    if (++v6 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

char *sub_219606474()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_configurationManager) appConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v34 = sub_219BF5414();
    v35 = v2;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v3 = sub_218E946F8();
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_34:

    v8 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_33:
  v5 = sub_219BF7214();
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_6:
  v36 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v36;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = [*(v9 + 16) identifier];
      v11 = sub_219BF5414();
      v13 = v12;

      v15 = *(v36 + 16);
      v14 = *(v36 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v36 + 16) = v15 + 1;
      v16 = v36 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v5 != v7);

    v17 = *(v36 + 16);
    if (v17)
    {
LABEL_15:
      v18 = 0;
      v32 = OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_bundleSubscriptionManager;
      v30 = v17 - 1;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v31 = v19;
        v20 = (v8 + 40 + 16 * v18);
        v21 = v18;
        while (1)
        {
          if (v21 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v22 = *(v20 - 1);
          v4 = *v20;
          v18 = v21 + 1;
          v23 = *(v33 + v32);

          v24 = [v23 cachedSubscription];
          v25 = sub_219BF53D4();
          v26 = [v24 containsTagID_];

          if (v26)
          {
            break;
          }

          if (v35)
          {
            if (v22 == v34 && v35 == v4)
            {
              v22 = v34;
              break;
            }

            if (sub_219BF78F4())
            {
              break;
            }
          }

          v20 += 2;
          ++v21;
          if (v17 == v18)
          {
            v19 = v31;
            goto LABEL_36;
          }
        }

        v19 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v31 + 16) + 1, 1);
          v19 = v31;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21870B65C((v27 > 1), v28 + 1, 1);
          v19 = v31;
        }

        *(v19 + 16) = v28 + 1;
        v29 = v19 + 16 * v28;
        *(v29 + 32) = v22;
        *(v29 + 40) = v4;
      }

      while (v30 != v21);
      goto LABEL_36;
    }

LABEL_35:
    v19 = MEMORY[0x277D84F90];
LABEL_36:

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_219606968()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI236PaidBundleChangeNotificationModifier_notificationController);
  [v1 setNewIssueNotificationsEnabled_];
  v2 = sub_219606474();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      v5 = sub_219BF53D4();

      [v1 registerNotificationsForChannelID:v5 isPaid:1];

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t type metadata accessor for RecipeFilterTagCapsuleView()
{
  result = qword_27CC1D0B8;
  if (!qword_27CC1D0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219606AA4()
{
  type metadata accessor for RecipeFilterTagCapsuleViewModel();
  if (v0 <= 0x3F)
  {
    sub_219607BB8(319, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219606B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = sub_219BEC6E4();
  v86 = *(v82 - 8);
  v3 = MEMORY[0x28223BE20](v82);
  v81 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v80 = v74 - v5;
  v6 = sub_219BECC84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219332760();
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v88 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v74 - v14;
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_219BEC924();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = sub_2196073E4();
  v19 = *(v11 + 60);
  v83 = v15;
  *&v15[v19] = v18;
  *&v15[*(v11 + 64)] = 256;
  v85 = a1;
  sub_21960766C(v99);
  v79 = v102;
  v87 = v103;
  v78 = __swift_project_boxed_opaque_existential_1(v99, v102);
  v20 = *(*a1 + 40);
  *&v89 = *(*a1 + 32);
  *(&v89 + 1) = v20;
  sub_2187F3BD4();

  v21 = sub_219BECDA4();
  v23 = v22;
  LOBYTE(a1) = v24;
  sub_219BECCB4();
  sub_219BECC24();
  sub_219BECC74();

  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  sub_219BECC94();

  (*(v7 + 8))(v9, v6);
  v25 = sub_219BECD74();
  v27 = v26;
  LOBYTE(v9) = v28;

  sub_2189A0BC8(v21, v23, a1 & 1);

  v29 = sub_219BECD54();
  v77 = v30;
  v78 = v29;
  LOBYTE(v20) = v31;
  v79 = v32;
  sub_2189A0BC8(v25, v27, v9 & 1);

  *(&v76 + 1) = *(v85 + 16);
  *&v76 = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_219BED0E4();
  sub_219BEC684();
  LODWORD(v87) = v20 & 1;
  v126 = v20 & 1;
  v124 = 0;
  *&v123[7] = v132;
  *&v123[23] = v133;
  *&v123[39] = v134;
  v75 = sub_219BECB94();
  v74[1] = *(type metadata accessor for RecipeFilterTagCapsuleView() + 32);
  v33 = v80;
  sub_2189A07FC(v80);
  v34 = *MEMORY[0x277CDFA10];
  v35 = v86;
  v74[0] = *(v86 + 104);
  v36 = v81;
  v37 = v82;
  (v74[0])(v81, v34, v82);
  sub_219607C1C(&qword_27CC0BB50, MEMORY[0x277CDFA28]);
  sub_219BF5334();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v33, v37);
  sub_219BEC5A4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v127 = 0;
  LODWORD(v86) = sub_219BECBD4();
  sub_2189A07FC(v33);
  (v74[0])(v36, v34, v37);
  sub_219BF5334();
  v38(v36, v37);
  v38(v33, v37);
  sub_219BEC5A4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v129 = 0;
  v55 = v83;
  v56 = v88;
  sub_219607C64(v83, v88, sub_219332760);
  v57 = v84;
  sub_219607C64(v56, v84, sub_219332760);
  sub_2196079DC();
  v59 = v57 + *(v58 + 48);
  v61 = v77;
  v60 = v78;
  *&v89 = v78;
  *(&v89 + 1) = v77;
  LOBYTE(v90) = v87;
  *(&v90 + 1) = *v125;
  DWORD1(v90) = *&v125[3];
  v62 = v79;
  v63 = v76;
  *(&v90 + 1) = v79;
  v91 = v76;
  LOBYTE(v92[0]) = 0;
  *(v92 + 1) = *v123;
  *(&v92[1] + 1) = *&v123[16];
  *(&v92[2] + 1) = *&v123[32];
  *&v92[3] = *&v123[47];
  LOBYTE(v36) = v75;
  BYTE8(v92[3]) = v75;
  *(&v92[3] + 9) = *v128;
  HIDWORD(v92[3]) = *&v128[3];
  *&v93 = v40;
  *(&v93 + 1) = v42;
  *&v94 = v44;
  *(&v94 + 1) = v46;
  LOBYTE(v95) = 0;
  *(&v95 + 1) = *v131;
  DWORD1(v95) = *&v131[3];
  BYTE8(v95) = v86;
  HIDWORD(v95) = *&v130[3];
  *(&v95 + 9) = *v130;
  *&v96 = v48;
  *(&v96 + 1) = v50;
  *&v97 = v52;
  *(&v97 + 1) = v54;
  v98 = 0;
  v64 = v96;
  v65 = v97;
  *(v59 + 192) = 0;
  *(v59 + 160) = v64;
  *(v59 + 176) = v65;
  v66 = v89;
  v67 = v90;
  v68 = v92[0];
  *(v59 + 32) = v91;
  *(v59 + 48) = v68;
  *v59 = v66;
  *(v59 + 16) = v67;
  v69 = v92[1];
  v70 = v92[2];
  v71 = v95;
  *(v59 + 128) = v94;
  *(v59 + 144) = v71;
  v72 = v93;
  *(v59 + 96) = v92[3];
  *(v59 + 112) = v72;
  *(v59 + 64) = v69;
  *(v59 + 80) = v70;
  sub_219607C64(&v89, v99, sub_219607A4C);
  sub_219607CCC(v55, sub_219332760);
  v105 = *v123;
  v99[0] = v60;
  v99[1] = v61;
  v100 = v87;
  *v101 = *v125;
  *&v101[3] = *&v125[3];
  v102 = v62;
  v103 = v63;
  v104 = 0;
  v106 = *&v123[16];
  *v107 = *&v123[32];
  *&v107[15] = *&v123[47];
  v108 = v36;
  *&v109[3] = *&v128[3];
  *v109 = *v128;
  v110 = v40;
  v111 = v42;
  v112 = v44;
  v113 = v46;
  v114 = 0;
  *v115 = *v131;
  *&v115[3] = *&v131[3];
  v116 = v86;
  *&v117[3] = *&v130[3];
  *v117 = *v130;
  v118 = v48;
  v119 = v50;
  v120 = v52;
  v121 = v54;
  v122 = 0;
  sub_219607CCC(v99, sub_219607A4C);
  return sub_219607CCC(v88, sub_219332760);
}

uint64_t sub_2196073E4()
{
  v1 = *v0;
  swift_getKeyPath();
  v16 = v1;
  sub_219607C1C(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  sub_219BDC204();

  v2 = *(v1 + 48);
  v3 = objc_opt_self();
  v4 = v3;
  if (v2 == 1)
  {
    v5 = [v3 systemBlackColor];
    v6 = [v4 systemWhiteColor];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = objc_allocWithZone(MEMORY[0x277D75348]);
    v20 = sub_219472030;
    v21 = v7;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v9 = &block_descriptor_19_2;
  }

  else
  {
    v5 = [v3 systemWhiteColor];
    v6 = [v4 tertiarySystemBackgroundColor];
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    v8 = objc_allocWithZone(MEMORY[0x277D75348]);
    v20 = sub_219472030;
    v21 = v10;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v9 = &block_descriptor_12_5;
  }

  v18 = sub_218FEA284;
  v19 = v9;
  v11 = _Block_copy(&v16);
  v12 = v5;
  v13 = v6;
  [v8 initWithDynamicProvider_];
  _Block_release(v11);

  v14 = sub_219BECF04();

  return v14;
}

void sub_21960766C(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  v21[0] = v3;
  sub_219607C1C(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  sub_219BDC204();

  v4 = *(v3 + 48);
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  if (v4 == 1)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 traitCollectionWithUserInterfaceStyle_];
    v10 = [v7 resolvedColorWithTraitCollection_];

    v11 = [v5 labelColor];
    v12 = [v8 traitCollectionWithUserInterfaceStyle_];
    v13 = [v11 resolvedColorWithTraitCollection_];

    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    v15 = objc_allocWithZone(MEMORY[0x277D75348]);
    v21[4] = sub_219471C60;
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_218FEA284;
    v21[3] = &block_descriptor_146;
    v16 = _Block_copy(v21);
    v17 = v10;
    v18 = v13;
    [v15 initWithDynamicProvider_];
    _Block_release(v16);

    v19 = sub_219BECF04();
  }

  else
  {
    v19 = sub_219BECF04();
  }

  v20 = MEMORY[0x277CE0F60];
  a1[3] = MEMORY[0x277CE0F78];
  a1[4] = v20;
  *a1 = v19;
}

uint64_t sub_219607904@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_219BED0E4();
  a1[1] = v3;
  sub_219607944();
  return sub_219606B90(v1, a1 + *(v4 + 44));
}

void sub_219607944()
{
  if (!qword_27CC1D0C8)
  {
    sub_219607BB8(255, &qword_27CC1D0D0, sub_2196079DC, MEMORY[0x277CE14B8]);
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1D0C8);
    }
  }
}

void sub_2196079DC()
{
  if (!qword_27CC1D0D8)
  {
    sub_219332760();
    sub_219607A4C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D0D8);
    }
  }
}

void sub_219607AC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BEC724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_219607B28()
{
  if (!qword_27CC1D0F8)
  {
    sub_219607BB8(255, &qword_27CC1D100, sub_218CFD684, MEMORY[0x277CE0860]);
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1D0F8);
    }
  }
}

void sub_219607BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219607C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219607C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219607CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219607D2C()
{
  if (!qword_27CC1D110)
  {
    sub_219607BB8(255, &qword_27CC1D0D0, sub_2196079DC, MEMORY[0x277CE14B8]);
    sub_219607DC0();
    v0 = sub_219BED044();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1D110);
    }
  }
}

unint64_t sub_219607DC0()
{
  result = qword_27CC1D118;
  if (!qword_27CC1D118)
  {
    sub_219607BB8(255, &qword_27CC1D0D0, sub_2196079DC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D118);
  }

  return result;
}

uint64_t sub_219608044(uint64_t a1, char a2)
{
  v5 = sub_219BE5C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6D338])
  {
    result = [v2 isOn];
    if (result)
    {
      return result;
    }

    [v2 setOn:1 animated:a2 & 1];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    goto LABEL_7;
  }

  if (v9 != *MEMORY[0x277D6D340])
  {
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  result = [v2 isOn];
  if (result)
  {
    [v2 setOn:0 animated:a2 & 1];
    type metadata accessor for Localized();
    v13 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
LABEL_7:
    sub_219BDB5E4();
  }

  return result;
}

uint64_t type metadata accessor for NotificationSwitch()
{
  result = qword_27CC1D128;
  if (!qword_27CC1D128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219608418()
{
  result = sub_219BE5C64();
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

uint64_t sub_2196084B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_toggleState;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_219608540(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_toggleState;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_21960876C()
{
  v0 = sub_219BEA814();
}

void sub_2196087AC()
{
  sub_219608A3C(&qword_27CC1D140);

  JUMPOUT(0x21CEC1E40);
}

char *sub_219608868()
{
  v0 = sub_219BE5C64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED0C4();
  if (v4)
  {
    v5 = 68.0;
  }

  else
  {
    v5 = 51.0;
  }

  if (v4)
  {
    v6 = 30.0;
  }

  else
  {
    v6 = 31.0;
  }

  v7 = [objc_allocWithZone(type metadata accessor for NotificationSwitch()) initWithFrame_];
  (*(v1 + 104))(v3, *MEMORY[0x277D6D340], v0);
  sub_219608A3C(&qword_27CC11C08);
  sub_219BE68E4();
  (*(v1 + 8))(v3, v0);
  v8 = *&v7[OBJC_IVAR____TtC7NewsUI218NotificationSwitch_onValueChanged];
  sub_219BEA854();

  [v7 setPreferredStyle_];
  [v7 setIsAccessibilityElement_];
  return v7;
}

uint64_t sub_219608A3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationSwitch();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData()
{
  result = qword_280E941B8;
  if (!qword_280E941B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219608AF4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219609024(0, &qword_280E8C6D8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219608FD0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 37;
    v13 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219608D5C(void *a1)
{
  v3 = v1;
  sub_219609024(0, &qword_27CC1D148, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219608FD0();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleContinuePlayingTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219608F28(uint64_t a1)
{
  v2 = sub_219608FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219608F64(uint64_t a1)
{
  v2 = sub_219608FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219608FD0()
{
  result = qword_280E941F8[0];
  if (!qword_280E941F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E941F8);
  }

  return result;
}

void sub_219609024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219608FD0();
    v7 = a3(a1, &type metadata for PuzzleContinuePlayingTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21960909C()
{
  result = qword_27CC1D150;
  if (!qword_27CC1D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D150);
  }

  return result;
}

unint64_t sub_2196090F4()
{
  result = qword_280E941E8;
  if (!qword_280E941E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E941E8);
  }

  return result;
}

unint64_t sub_21960914C()
{
  result = qword_280E941F0;
  if (!qword_280E941F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E941F0);
  }

  return result;
}

uint64_t sub_2196091B4(uint64_t a1)
{
  v2 = sub_219224F90();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2196091F4()
{
  result = qword_27CC1D158;
  if (!qword_27CC1D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D158);
  }

  return result;
}

uint64_t sub_2196092D8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  v110 = sub_219BDBD64();
  v117 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SavedFeedModel(0);
  v7 = MEMORY[0x28223BE20](v112);
  v107 = (v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = v80 - v9;
  sub_218A74FF4();
  v12 = v11;
  v111 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = v80 - v15;
  sub_218A74F28();
  MEMORY[0x28223BE20](v16 - 8);
  v93 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SavedFeedSectionDescriptor();
  v19 = MEMORY[0x28223BE20](v18);
  v98 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v80 - v21;
  sub_218953D48();
  v24 = v23;
  v100 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v116 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = v80 - v27;
  v28 = sub_219BE6DF4();
  v87 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v86 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21960A268(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v85 = v30;
  v84 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v83 = v80 - v31;
  sub_218C249EC();
  MEMORY[0x28223BE20](v32 - 8);
  v80[1] = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34();
  v35 = v34;
  v82 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v81 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2186E8B94(&qword_280EE3670, sub_218953E34);
  v38 = sub_219BF5E44();
  v94 = v35;
  if (!v38)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_27:
    v74 = sub_2186E8B94(&qword_280EE57A0, sub_218953D48);
    v75 = sub_2186E8B94(&unk_280EE57B0, sub_218953D48);
    MEMORY[0x21CEB9170](v73, v24, v74, v75);
    sub_2186E8B94(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    sub_2186E8B94(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v76 = v81;
    sub_219BEB2D4();
    v77 = v87;
    v78 = v86;
    (*(v87 + 104))(v86, *MEMORY[0x277D6D868], v28);
    sub_2186E8B94(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor);
    v79 = v83;
    sub_219BE85E4();
    (*(v77 + 8))(v78, v28);
    v89(v79);
    (*(v84 + 8))(v79, v85);
    return (*(v82 + 8))(v76, v94);
  }

  v122 = MEMORY[0x277D84F90];
  v99 = v38;
  sub_218C350E0(0, v38 & ~(v38 >> 63), 0);
  v104 = v122;
  result = sub_219BF5DF4();
  if (v99 < 0)
  {
    goto LABEL_30;
  }

  v80[0] = v28;
  v40 = 0;
  v97 = (v100 + 16);
  v101 = (v100 + 32);
  v41 = v111;
  v114 = (v111 + 16);
  v106 = (v117 + 1);
  v105 = (v111 + 8);
  v117 = (v111 + 32);
  v90 = (v100 + 8);
  v115 = v24;
  v96 = v22;
  v92 = a1;
  v91 = v18;
  v95 = v37;
  while (1)
  {
    v42 = __OFADD__(v40, 1);
    v43 = v40 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_29;
    }

    v102 = v43;
    v44 = sub_219BF5EC4();
    v45 = v116;
    (*v97)(v116);
    v44(v121, 0);
    sub_219BE6934();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    (*v101)(v103, v45, v24);
    sub_21882F73C(v22, type metadata accessor for SavedFeedSectionDescriptor);
LABEL_22:
    v69 = v104;
    v122 = v104;
    v71 = *(v104 + 16);
    v70 = *(v104 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_218C350E0(v70 > 1, v71 + 1, 1);
      v69 = v122;
    }

    *(v69 + 16) = v71 + 1;
    v72 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v104 = v69;
    (*(v100 + 32))(v69 + v72 + *(v100 + 72) * v71, v103, v24);
    result = sub_219BF5E94();
    v40 = v102;
    v22 = v96;
    if (v102 == v99)
    {
      v28 = v80[0];
      v73 = v104;
      goto LABEL_27;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_2186E8B94(&qword_280EE5798, sub_218953D48);
  v46 = sub_219BF5E44();
  if (!v46)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_21:
    v67 = sub_2186E8B94(&qword_280EE5C48, sub_218A74FF4);
    v68 = sub_2186E8B94(&unk_280EE5C50, sub_218A74FF4);
    MEMORY[0x21CEB9170](v48, v12, v67, v68);
    sub_2186E8B94(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    sub_2186E8B94(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    sub_219BE6924();
    (*v90)(v116, v24);
    goto LABEL_22;
  }

  v47 = v46;
  v120 = MEMORY[0x277D84F90];
  sub_218C35330(0, v46 & ~(v46 >> 63), 0);
  v48 = v120;
  result = sub_219BF5DF4();
  if ((v47 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v49 = sub_219BF5EC4();
      (*v114)(v119);
      v49(v121, 0);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_16;
      }

      sub_218A7535C();
      v113 = *(v54 + 48);
      v55 = v108;
      sub_218A2F28C(v10, v108);
      sub_218E32330();
      v57 = *(v56 + 48);
      v58 = v109;
      sub_219BDBD54();
      v59 = v10;
      v60 = sub_219BDBD44();
      v62 = v61;
      (*v106)(v58, v110);
      v63 = v107;
      *v107 = v60;
      v63[1] = v62;
      v10 = v59;
      v41 = v111;
      sub_218A2F228(v55, v63 + v57);
      swift_storeEnumTagMultiPayload();
      sub_2186E8B94(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
      sub_219BE5FB4();
      sub_21882F73C(v55, type metadata accessor for SavedFeedGapLocation);
      (*v105)(v119, v12);
      v64 = sub_219BF1584();
      (*(*(v64 - 8) + 8))(&v10[v113], v64);
LABEL_18:
      v120 = v48;
      v66 = *(v48 + 16);
      v65 = *(v48 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_218C35330(v65 > 1, v66 + 1, 1);
        v48 = v120;
      }

      *(v48 + 16) = v66 + 1;
      (*(v41 + 32))(v48 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v66, v118, v12);
      v24 = v115;
      sub_219BF5E94();
      if (!--v47)
      {
        goto LABEL_21;
      }
    }

    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v52 = type metadata accessor for SavedFeedGapLocation;
      v53 = &v10[*(v51 + 48)];
    }

    else
    {
LABEL_16:
      v52 = type metadata accessor for SavedFeedModel;
      v53 = v10;
    }

    sub_21882F73C(v53, v52);
    (*v117)(v118, v119, v12);
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_21960A268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2186E8B94(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_2186E8B94(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t PuzzleModel.init(puzzle:launchAction:feedItemIdentifier:pluginIdentifier:fullScreenModalDelegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v17;
  v18 = type metadata accessor for PuzzleModel();
  result = sub_21960A418(a2, a9 + v18[5]);
  v20 = (a9 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v18[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a9 + v18[8]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t sub_21960A418(uint64_t a1, uint64_t a2)
{
  sub_2187603DC(0, &qword_280E90470, MEMORY[0x277D338C0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleModel.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_219BF5414();

    sub_218B083E8(v1, v2, 1);
    return v4;
  }

  else
  {
  }

  return v1;
}

uint64_t PuzzleModel.puzzle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_218CC4CD0(v2, v3, v4);
}

uint64_t PuzzleModel.launchAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleModel() + 20);

  return sub_21960A584(v3, a1);
}

uint64_t sub_21960A584(uint64_t a1, uint64_t a2)
{
  sub_2187603DC(0, &qword_280E90470, MEMORY[0x277D338C0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleModel.feedItemIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleModel() + 24));

  return v1;
}

uint64_t PuzzleModel.pluginIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleModel() + 28));

  return v1;
}

uint64_t PuzzleModel.transitionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE94F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21960A728()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_219BF5414();

    sub_218B083E8(v1, v2, 1);
    return v4;
  }

  else
  {
  }

  return v1;
}

unint64_t PuzzleModel.description.getter()
{
  sub_219BF7314();

  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = [swift_unknownObjectRetain() identifier];
    v4 = sub_219BF5414();
    v6 = v5;

    sub_218B083E8(v2, v1, 1);
    v2 = v4;
    v1 = v6;
  }

  else
  {
  }

  MEMORY[0x21CECC330](v2, v1);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_21960A8D8()
{
  v1 = v0;
  v110 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v2 = MEMORY[0x28223BE20](v110);
  v100 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v99 = &v85 - v4;
  sub_2186DE858();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BF1934();
  v114 = *(v109 - 8);
  v10 = MEMORY[0x28223BE20](v109);
  v98 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v85 - v12;
  v108 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v13 = MEMORY[0x28223BE20](v108);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v85 - v15;
  sub_2186DE644();
  v107 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v106 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v94);
  v93 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC();
  v105 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v104 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TodayFeedGroupConfig();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84FA0];
  v118 = MEMORY[0x277D84FA0];
  v28 = v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  result = type metadata accessor for TodayFeedConfig();
  v30 = *(v28 + *(result + 20));
  v116 = *(v30 + 16);
  if (!v116)
  {
    return v27;
  }

  v31 = v7;
  v32 = 0;
  v33 = v30 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v92 = (v21 + 32);
  v91 = (v21 + 8);
  v90 = (v31 + 32);
  v89 = (v31 + 8);
  v88 = (v17 + 32);
  v102 = (v114 + 8);
  v103 = (v114 + 16);
  v87 = (v17 + 8);
  v101 = v6;
  v114 = v33;
  v115 = v9;
  v111 = v23;
  v112 = v30;
  v113 = v24;
  v34 = v116;
  while (v32 < *(v30 + 16))
  {
    v35 = v32++;
    sub_218853630(v33 + *(v24 + 72) * v35, v26, type metadata accessor for TodayFeedGroupConfig);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        (*v90)(v9, v26, v6);
        v62 = v99;
        sub_219BEDD14();
        v63 = *(v62 + *(v110 + 28));

        sub_21960EB38(v62, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v64 = v6;
        v65 = *(v63 + 16);
        if (v65)
        {
          v117 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v65, 0);
          v66 = v117;
          v86 = v63;
          v67 = (v63 + 40);
          do
          {
            v68 = *(v67 - 1);
            v69 = *v67;
            v117 = v66;
            v70 = *(v66 + 16);
            v71 = *(v66 + 24);

            if (v70 >= v71 >> 1)
            {
              sub_21870B65C((v71 > 1), v70 + 1, 1);
              v66 = v117;
            }

            *(v66 + 16) = v70 + 1;
            v72 = v66 + 16 * v70;
            *(v72 + 32) = v68;
            *(v72 + 40) = v69;
            v67 += 2;
            --v65;
          }

          while (v65);

          v73 = v101;
          v9 = v115;
          v34 = v116;
          v33 = v114;
        }

        else
        {

          v66 = MEMORY[0x277D84F90];
          v73 = v64;
        }

        sub_218DDBE70(v66);

        v74 = v100;
        sub_219BEDD14();
        v75 = *(v74 + *(v110 + 32));

        sub_21960EB38(v74, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v76 = v73;
        v77 = *(v75 + 16);
        if (v77)
        {
          v117 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v77, 0);
          v78 = v117;
          v86 = v75;
          v79 = (v75 + 40);
          do
          {
            v80 = *(v79 - 1);
            v81 = *v79;
            v117 = v78;
            v82 = *(v78 + 16);
            v83 = *(v78 + 24);

            if (v82 >= v83 >> 1)
            {
              sub_21870B65C((v83 > 1), v82 + 1, 1);
              v78 = v117;
            }

            *(v78 + 16) = v82 + 1;
            v84 = v78 + 16 * v82;
            *(v84 + 32) = v80;
            *(v84 + 40) = v81;
            v79 += 2;
            --v77;
          }

          while (v77);

          v6 = v101;
          v9 = v115;
          v34 = v116;
          v33 = v114;
        }

        else
        {

          v78 = MEMORY[0x277D84F90];
          v6 = v76;
        }

        sub_218DDBE70(v78);

        result = (*v89)(v9, v6);
        v30 = v112;
        v24 = v113;
        break;
      case 2u:
        v51 = v6;
        (*v92)(v104, v26, v105);
        v52 = v93;
        sub_219BEDD14();
        v53 = *(v52 + *(v94 + 28));

        sub_21960EB38(v52, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
        v54 = *(v53 + 16);
        if (v54)
        {
          v117 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v54, 0);
          v55 = v117;
          v86 = v53;
          v56 = (v53 + 40);
          do
          {
            v57 = *(v56 - 1);
            v58 = *v56;
            v117 = v55;
            v59 = *(v55 + 16);
            v60 = *(v55 + 24);

            if (v59 >= v60 >> 1)
            {
              sub_21870B65C((v60 > 1), v59 + 1, 1);
              v55 = v117;
            }

            *(v55 + 16) = v59 + 1;
            v61 = v55 + 16 * v59;
            *(v61 + 32) = v57;
            *(v61 + 40) = v58;
            v56 += 2;
            --v54;
          }

          while (v54);

          v6 = v101;
          v9 = v115;
          v34 = v116;
        }

        else
        {

          v55 = MEMORY[0x277D84F90];
          v6 = v51;
          v9 = v115;
        }

        sub_218DDBE70(v55);

        result = (*v91)(v104, v105);
        v30 = v112;
        v24 = v113;
        v33 = v114;
        break;
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
        result = sub_21960EB38(v26, type metadata accessor for TodayFeedGroupConfig);
        break;
      default:
        v36 = v6;
        (*v88)(v106, v26, v107);
        v37 = v95;
        sub_219BEDD14();
        v38 = v109;
        v39 = *v103;
        v40 = v97;
        (*v103)(v97, v37 + *(v108 + 20), v109);
        sub_21960EB38(v37, type metadata accessor for CuratedTodayFeedGroupConfigData);
        v41 = sub_219BF1784();
        v43 = v42;
        v44 = *v102;
        (*v102)(v40, v38);
        if (v43)
        {
          sub_219497B60(&v117, v41, v43);
        }

        v45 = v96;
        v46 = v106;
        v47 = v107;
        sub_219BEDD14();
        v48 = v109;
        v49 = v98;
        v39(v98, v45 + *(v108 + 20), v109);
        sub_21960EB38(v45, type metadata accessor for CuratedTodayFeedGroupConfigData);
        v50 = sub_219BF1754();
        v44(v49, v48);
        sub_218DDBE70(v50);

        result = (*v87)(v46, v47);
        v30 = v112;
        v24 = v113;
        v33 = v114;
        v6 = v36;
        v9 = v115;
        v34 = v116;
        break;
    }

    if (v32 == v34)
    {
      return v118;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21960B408@<X0>(uint64_t a1@<X8>)
{
  v22 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayFeedGroup();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186EF5DC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  result = sub_219BEF3B4();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v21 = a1;
    v14 = 0;
    v15 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v14 < *(v12 + 16))
    {
      sub_218853630(v15 + *(v5 + 72) * v14, v10, type metadata accessor for TodayFeedGroup);
      sub_218853630(v10, v8, type metadata accessor for TodayFeedGroup);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = type metadata accessor for TodayFeedGroup;
        v17 = v8;
      }

      else
      {
        sub_21960EB98(v8, v3, type metadata accessor for CuratedTodayFeedGroup);
        v18 = &v3[*(v22 + 20)];
        v19 = *v18 == 0x69726F7453706F74 && *(v18 + 1) == 0xEA00000000007365;
        if (v19 || (sub_219BF78F4() & 1) != 0)
        {

          sub_21960EB38(v3, type metadata accessor for CuratedTodayFeedGroup);
          a1 = v21;
          sub_21960EB98(v10, v21, type metadata accessor for TodayFeedGroup);
          v20 = 0;
          return (*(v5 + 56))(a1, v20, 1, v4);
        }

        v16 = type metadata accessor for CuratedTodayFeedGroup;
        v17 = v3;
      }

      sub_21960EB38(v17, v16);
      ++v14;
      result = sub_21960EB38(v10, type metadata accessor for TodayFeedGroup);
      if (v13 == v14)
      {

        v20 = 1;
        a1 = v21;
        return (*(v5 + 56))(a1, v20, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {

    v20 = 1;
    return (*(v5 + 56))(a1, v20, 1, v4);
  }

  return result;
}

uint64_t sub_21960B75C()
{
  v1 = v0;
  v2 = sub_219BF1934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v5 = MEMORY[0x28223BE20](v32);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - v7);
  v36 = type metadata accessor for TodayFeedGroupConfig();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  v37 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  result = type metadata accessor for TodayFeedConfig();
  v18 = *(v16 + *(result + 20));
  v19 = *(v18 + 16);
  if (!v19)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  v20 = 0;
  v21 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v22 = (v13 + 32);
  v35 = (v13 + 8);
  while (v20 < *(v18 + 16))
  {
    sub_218853630(v21 + *(v9 + 72) * v20, v11, type metadata accessor for TodayFeedGroupConfig);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_21960EB38(v11, type metadata accessor for TodayFeedGroupConfig);
    }

    else
    {
      (*v22)(v15, v11, v37);
      sub_219BEDD14();
      if (*v8 == 0x69726F7453706F74 && v8[1] == 0xEA00000000007365)
      {
        sub_21960EB38(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
LABEL_13:
        v24 = v33;
        v25 = v37;
        sub_219BEDD14();
        v26 = v31;
        v27 = v30;
        v28 = v34;
        (*(v30 + 16))(v34, v24 + *(v32 + 20), v31);
        sub_21960EB38(v24, type metadata accessor for CuratedTodayFeedGroupConfigData);
        v29 = sub_219BF1704();
        (*(v27 + 8))(v28, v26);
        (*v35)(v15, v25);
        return v29;
      }

      v23 = sub_219BF78F4();
      sub_21960EB38(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
      if (v23)
      {
        goto LABEL_13;
      }

      result = (*v35)(v15, v37);
    }

    if (v19 == ++v20)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21960BBD8(uint64_t a1)
{
  sub_2186DDF34(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v35 - v4;
  v5 = sub_219BEEA84();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v8;
  v9 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v14;
  v40 = type metadata accessor for TodayFeedServiceContext;
  sub_218853630(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v14, type metadata accessor for TodayFeedServiceContext);
  v41 = v11;
  sub_218853630(a1, v11, type metadata accessor for TodayConfig);
  v15 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v37 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig);
  v38 = v15;
  v16 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  v17 = *(v6 + 16);
  v18 = v42;
  v17(v8, v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v42);
  v19 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  v44 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);
  v20 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache) = 0;
  sub_218853630(v14, v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v40);
  sub_218853630(v11, v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);
  v22 = v37;
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) = v38;
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig) = v22;
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) = v16;
  v23 = v36;
  v17((v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy), v36, v18);
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) = v19;

  v24 = v22;
  v25 = v19;
  v26 = v20;
  swift_unknownObjectRetain();
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval) = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  v27 = v39;
  v47 = sub_21936076C();
  v48 = v28;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v29 = v41;
  sub_2187D96F4(v41, v45);
  v30 = sub_219BF5484();
  MEMORY[0x21CECC330](v30);

  v31 = v47;
  v32 = v48;
  (*(v43 + 8))(v23, v18);
  sub_21960EB38(v29, type metadata accessor for TodayConfig);
  sub_21960EB38(v27, type metadata accessor for TodayFeedServiceContext);
  v33 = (v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);
  *v33 = v31;
  v33[1] = v32;
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState) = v44;
  *(v21 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) = v26;
  return v21;
}

uint64_t sub_21960C054()
{
  v1 = v0;
  sub_2186DDF34(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v33 - v3;
  v38 = sub_219BEEA84();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayFeedServiceContext();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v40 = &v33 - v14;
  sub_219360004(&v33 - v14);
  v35 = type metadata accessor for TodayFeedServiceContext;
  sub_218853630(v15, v13, type metadata accessor for TodayFeedServiceContext);
  v36 = v9;
  sub_218853630(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v9, type metadata accessor for TodayConfig);
  v16 = *(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v33 = *(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig);
  v34 = v16;
  v17 = *(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  v18 = *MEMORY[0x277D32220];
  v37 = v4;
  v19 = v38;
  (*(v4 + 104))(v6, v18, v38);
  v20 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  v39 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);
  v21 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache) = 0;
  sub_218853630(v13, v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v35);
  sub_218853630(v9, v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);
  v23 = v33;
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) = v34;
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig) = v23;
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) = v17;
  (*(v4 + 16))(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v6, v19);
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) = v20;

  v24 = v23;
  v25 = v20;
  swift_unknownObjectRetain();
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval) = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  v43 = sub_21936076C();
  v44 = v26;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v27 = v36;
  sub_2187D96F4(v36, v41);
  v28 = sub_219BF5484();
  MEMORY[0x21CECC330](v28);

  v29 = v43;
  v30 = v44;
  (*(v37 + 8))(v6, v19);
  sub_21960EB38(v27, type metadata accessor for TodayConfig);
  sub_21960EB38(v13, type metadata accessor for TodayFeedServiceContext);
  sub_21960EB38(v40, type metadata accessor for TodayFeedServiceContext);
  v31 = (v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);
  *v31 = v29;
  v31[1] = v30;
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState) = v39;
  *(v22 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) = v21;
  return v22;
}

id sub_21960C520(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a2;
  v79 = a3;
  v70 = *v4;
  sub_2186DDF34(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v64 - v7;
  v76 = sub_219BEEA84();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BDBD34();
  v66 = *(v68 - 8);
  v11 = MEMORY[0x28223BE20](v68);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = sub_219BDB184();
  MEMORY[0x28223BE20](v16 - 8);
  v64 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEE754();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TodayFeedServiceContext();
  v23 = MEMORY[0x28223BE20](v22);
  v69 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v77 = &v64 - v29;
  v30 = v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
  if (a1)
  {
    v31 = 4;
  }

  else
  {
    v31 = 3;
  }

  v32 = *(v30 + 1);
  v33 = *(v19 + 16);
  v34 = &v30[*(v28 + 36)];
  v65 = v21;
  v67 = v18;
  v33(v21, v34, v18);
  *v27 = v31;
  *(v27 + 1) = v32;
  result = [v32 startDate];
  if (result)
  {
    v36 = result;
    sub_2186C6148(0, &qword_280E8E860);
    sub_219BDBCA4();

    sub_219BDBD24();
    sub_219BDB104();
    v37 = *(v66 + 8);
    v38 = v13;
    v39 = v68;
    v37(v38, v68);
    v37(v15, v39);
    v40 = sub_219BF5F04();
    v42 = v78;
    v41 = v79;
    *(v27 + 2) = v40;
    *(v27 + 3) = v42;
    *(v27 + 4) = v41;
    (*(v19 + 32))(&v27[*(v22 + 36)], v65, v67);
    v43 = v77;
    sub_21960EB98(v27, v77, type metadata accessor for TodayFeedServiceContext);
    v44 = v69;
    sub_218853630(v43, v69, type metadata accessor for TodayFeedServiceContext);
    v45 = v71;
    sub_218853630(v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v71, type metadata accessor for TodayConfig);
    v46 = *(v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
    v65 = *(v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig);
    v66 = v46;
    v47 = *(v4 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    v48 = v74;
    v49 = v72;
    v50 = v4;
    v51 = v76;
    (*(v74 + 104))(v72, *MEMORY[0x277D32220]);
    v52 = *(v50 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
    v53 = *(v50 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);
    v67 = *(v50 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
    v68 = v53;
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache) = 0;
    sub_218853630(v44, v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, type metadata accessor for TodayFeedServiceContext);
    sub_218853630(v45, v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);
    v55 = v65;
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) = v66;
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig) = v55;
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) = v47;
    (*(v48 + 16))(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v49, v51);
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) = v52;

    v56 = v55;
    v57 = v52;
    v58 = v67;
    swift_unknownObjectRetain();
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval) = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
    v80 = sub_21936076C();
    v81 = v59;
    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_2187D96F4(v45, v73);
    v60 = sub_219BF5484();
    MEMORY[0x21CECC330](v60);

    v61 = v80;
    v62 = v81;
    (*(v48 + 8))(v49, v51);
    sub_21960EB38(v45, type metadata accessor for TodayConfig);
    sub_21960EB38(v44, type metadata accessor for TodayFeedServiceContext);
    sub_21960EB38(v77, type metadata accessor for TodayFeedServiceContext);
    v63 = (v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);
    *v63 = v61;
    v63[1] = v62;
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState) = v68;
    *(v54 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) = v58;
    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21960CCC8(uint64_t a1)
{
  v2 = v1;
  sub_2186DDF34(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v36 - v5;
  v42 = sub_219BEEA84();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v47 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v10;
  v11 = type metadata accessor for TodayFeedServiceContext();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v44 = &v36 - v15;
  sub_2193604A4(&v36 - v15);
  v39 = v14;
  sub_218853630(v16, v14, type metadata accessor for TodayFeedServiceContext);
  sub_218853630(a1, v10, type metadata accessor for TodayConfig);
  v17 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v36 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig);
  v37 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  v19 = *MEMORY[0x277D32220];
  v41 = v6;
  v20 = v47;
  v21 = v42;
  (*(v6 + 104))(v47, v19, v42);
  v22 = *(v2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  v43 = *(v2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);
  v40 = *(v2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache) = 0;
  sub_218853630(v14, v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, type metadata accessor for TodayFeedServiceContext);
  v24 = v38;
  sub_218853630(v38, v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);
  v25 = v36;
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) = v37;
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig) = v25;
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) = v18;
  (*(v6 + 16))(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v20, v21);
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) = v22;

  v26 = v25;
  v27 = v22;
  v28 = v40;
  swift_unknownObjectRetain();
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval) = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  v29 = v39;
  v48 = sub_21936076C();
  v49 = v30;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_2187D96F4(v24, v45);
  v31 = sub_219BF5484();
  MEMORY[0x21CECC330](v31);

  v32 = v48;
  v33 = v49;
  (*(v41 + 8))(v47, v21);
  sub_21960EB38(v24, type metadata accessor for TodayConfig);
  sub_21960EB38(v29, type metadata accessor for TodayFeedServiceContext);
  sub_21960EB38(v44, type metadata accessor for TodayFeedServiceContext);
  v34 = (v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);
  *v34 = v32;
  v34[1] = v33;
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState) = v43;
  *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) = v28;
  return v23;
}

id sub_21960D19C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_219BDBD34();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v65 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = v64 - v6;
  sub_2186DDF34(0, &qword_27CC10BE0, MEMORY[0x277D32548], MEMORY[0x277D84560]);
  v7 = *(sub_219BEF2B4() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0EE30;
  v66 = v9;
  v10 = v9 + v8;
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D83838];
  v77 = MEMORY[0x277D837D0];
  v78 = MEMORY[0x277D83838];
  v74 = v13;
  v75 = v12;

  sub_219BEF2C4();
  v16 = 0x74694B64756F6C63;
  if (*(v11 + 32))
  {
    v16 = 0x656764457377656ELL;
  }

  v72 = v16;
  v73 = 0xE800000000000000;
  sub_2187F3BD4();
  v17 = sub_219BF6FF4();
  v19 = v18;
  v77 = v14;
  v78 = v15;

  v74 = v17;
  v75 = v19;
  sub_219BEF2C4();
  v20 = (v2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context);
  v21 = *v20;
  v22 = 0xE900000000000064;
  v23 = 0x656546664F706F74;
  v24 = 0xE600000000000000;
  v25 = 0x646568636163;
  v26 = 0xEC0000006C6F6F70;
  v27 = 0x6552646568636163;
  if (v21 != 4)
  {
    v27 = 0xD000000000000011;
    v26 = 0x8000000219CD7F50;
  }

  if (v21 != 3)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xE700000000000000;
  v29 = 0x68736572666572;
  if (v21 != 1)
  {
    v29 = 0x646E61707865;
    v28 = 0xE600000000000000;
  }

  if (*v20)
  {
    v23 = v29;
    v22 = v28;
  }

  if (*v20 <= 2u)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  if (*v20 <= 2u)
  {
    v31 = v22;
  }

  else
  {
    v31 = v24;
  }

  v72 = v30;
  v73 = v31;
  v32 = MEMORY[0x277D837D0];
  v33 = sub_219BF6FF4();
  v35 = v34;
  v77 = v32;
  v78 = MEMORY[0x277D83838];

  v74 = v33;
  v75 = v35;
  sub_219BEF2C4();
  v36 = *(*(v20 + 3) + 16);
  v77 = MEMORY[0x277D83B88];
  v78 = MEMORY[0x277D83BF8];
  v74 = v36;
  sub_219BEF2C4();
  sub_219BEED34();
  v37 = sub_219BEED14();
  v68 = *(v20 + 1);
  result = [v68 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v39 = result;
  v64[1] = v10;
  v40 = v69;
  sub_219BDBCA4();

  v41 = sub_219BDBC04();
  v42 = v71;
  v43 = *(v70 + 8);
  v43(v40, v71);
  v44 = [v37 stringFromDate_];

  v45 = sub_219BF5414();
  v47 = v46;

  v77 = MEMORY[0x277D837D0];
  v78 = MEMORY[0x277D83838];
  v74 = v45;
  v75 = v47;
  sub_219BEF2C4();
  v48 = sub_219BEED14();
  v49 = v68;
  result = [v68 endDate];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v50 = result;
  v51 = v65;
  sub_219BDBCA4();

  v52 = sub_219BDBC04();
  v43(v51, v42);
  v53 = [v48 stringFromDate_];

  v54 = sub_219BF5414();
  v56 = v55;

  v77 = MEMORY[0x277D837D0];
  v78 = MEMORY[0x277D83838];
  v74 = v54;
  v75 = v56;
  sub_219BEF2C4();
  v57 = sub_219BEED24();
  [v49 absoluteTimeInterval];
  v58 = [v57 stringFromTimeInterval_];

  if (v58)
  {
    v59 = sub_219BF5414();
    v61 = v60;

    v62 = MEMORY[0x277D83838];
    v63 = MEMORY[0x277D837D0];
  }

  else
  {
    v59 = 0;
    v61 = 0;
    v63 = 0;
    v62 = 0;
    v76 = 0;
  }

  v74 = v59;
  v75 = v61;
  v77 = v63;
  v78 = v62;
  sub_219BEF2C4();
  return sub_219BEE414();
}

uint64_t sub_21960D848()
{
  sub_21960EB38(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, type metadata accessor for TodayFeedServiceContext);
  sub_21960EB38(v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy;
  v2 = sub_219BEEA84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21960D954()
{
  sub_21960D848();

  return swift_deallocClassInstance();
}

uint64_t sub_21960DA34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy;
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21960DAB0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);

  return v1;
}

uint64_t sub_21960DB08@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32E98];
  v3 = sub_219BF0634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21960DB7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21960BBD8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21960DBA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21960C054();
  *a1 = result;
  return result;
}

id sub_21960DBD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_21960C520(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_21960DC00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21960CCC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21960DC50(void *a1)
{
  v47 = sub_219BE1EF4();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21960F9C8(0, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
  v48 = v3;
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - v4;
  sub_21960F9C8(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - v6;
  sub_21960F9C8(0, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
  v57 = v7;
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  sub_21960F9C8(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
  v11 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  sub_21960FA78(0, &qword_280E8C5A8, MEMORY[0x277D84538]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21960FA24();
  sub_219BF7B44();
  LOBYTE(v61) = 0;
  type metadata accessor for TodayFeedServiceContext();
  sub_2186EF5DC(&unk_280EC2DA0, type metadata accessor for TodayFeedServiceContext);
  v19 = v58;
  sub_219BF7834();
  if (v19)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v43 = v13;
  v44 = v11;
  v42 = v9;
  v21 = v57;
  v45 = v16;
  v22 = v15;
  v58 = v18;
  LOBYTE(v61) = 1;
  type metadata accessor for TodayConfig();
  sub_2186EF5DC(&qword_280EDF368, type metadata accessor for TodayConfig);
  v23 = v59;
  sub_219BF7834();
  v61 = *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v60 = 2;
  type metadata accessor for TodayConfigData();
  sub_2186EF5DC(&unk_280ED9380, type metadata accessor for TodayConfigData);
  sub_219BF7834();
  v24 = *(v23 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig);
  sub_2186C6148(0, &qword_280E8DDC0);
  v25 = v24;
  v26 = v43;
  sub_219BE3454();
  LOBYTE(v61) = 3;
  sub_218CBC604();
  v27 = v44;
  sub_219BF7834();
  (*(v56 + 8))(v26, v27);
  sub_2186D6710(0, &qword_280E8E080);
  swift_unknownObjectRetain();
  v28 = v42;
  sub_219BE3424();
  LOBYTE(v61) = 4;
  sub_218CBC688();
  sub_219BF7834();
  (*(v55 + 8))(v28, v21);
  LOBYTE(v61) = 5;
  sub_219BEEA84();
  sub_2186EF5DC(&qword_280E91988, MEMORY[0x277D32228]);
  sub_219BF7834();
  v29 = v45;
  v30 = *(v59 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  sub_2186C6148(0, &qword_280E8DE40);
  v31 = v30;
  v32 = v52;
  sub_219BE3444();
  LOBYTE(v61) = 6;
  sub_218CBC70C();
  v33 = v54;
  sub_219BF7834();
  (*(v53 + 8))(v32, v33);
  v34 = v59;
  LOBYTE(v61) = 7;
  sub_219BF77F4();
  v61 = *(v34 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);
  v60 = 8;
  type metadata accessor for FCSportsOnboardingState(0);
  sub_2186EF5DC(&unk_280E8DF10, type metadata accessor for FCSportsOnboardingState);
  sub_219BF7834();
  v61 = *(v34 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability);
  v35 = qword_280EE7C40;
  swift_unknownObjectRetain();
  if (v35 != -1)
  {
    swift_once();
  }

  v36 = v47;
  v37 = __swift_project_value_buffer(v47, qword_280EE7C48);
  (*(v49 + 16))(v50, v37, v36);
  sub_2186D6710(0, &qword_280EC5430);
  v38 = v46;
  sub_219BE3364();
  LOBYTE(v61) = 9;
  sub_218CBC790();
  v39 = v48;
  v40 = v58;
  sub_219BF7834();
  (*(v51 + 8))(v38, v39);
  return (*(v29 + 8))(v40, v22);
}

unint64_t sub_21960E6C4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79654B6568636163;
    v6 = 0xD000000000000015;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C6F506568636163;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x747865746E6F63;
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x69666E6F43707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x43746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21960E830(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21960E6C4(*a1);
  v5 = v4;
  if (v3 == sub_21960E6C4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21960E8B8()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21960E6C4(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21960E91C()
{
  sub_21960E6C4(*v0);
  sub_219BF5524();
}

uint64_t sub_21960E970()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21960E6C4(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21960E9D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21960FBF4();
  *a1 = result;
  return result;
}

unint64_t sub_21960EA00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21960E6C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21960EA48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21960FBF4();
  *a1 = result;
  return result;
}

uint64_t sub_21960EA70(uint64_t a1)
{
  v2 = sub_21960FA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21960EAAC(uint64_t a1)
{
  v2 = sub_21960FA24();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_21960EAE8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_21960EC00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21960EB38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21960EB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_21960EC00(void *a1)
{
  sub_2186DDF34(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - v3;
  sub_21960F9C8(0, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
  v58 = v4;
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v53 - v5;
  sub_21960F9C8(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
  v62 = v6;
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v53 - v7;
  v64 = sub_219BEEA84();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21960F9C8(0, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
  v68 = v9;
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v53 - v10;
  sub_21960F9C8(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
  v70 = v11;
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v53 - v12;
  v13 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21960FA78(0, &qword_280E8CE20, MEMORY[0x277D844C8]);
  v71 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v23 = a1;
  v24 = a1[3];
  v74 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_21960FA24();
  v72 = v22;
  v25 = v73;
  sub_219BF7B34();
  if (!v25)
  {
    v73 = v15;
    LOBYTE(v75) = 0;
    sub_2186EF5DC(&unk_280EC2D90, type metadata accessor for TodayFeedServiceContext);
    sub_219BF7734();
    LOBYTE(v75) = 1;
    sub_2186EF5DC(&unk_280EDF358, type metadata accessor for TodayConfig);
    sub_219BF7734();
    type metadata accessor for TodayConfigData();
    LOBYTE(v75) = 2;
    sub_2186EF5DC(&unk_280ED9370, type metadata accessor for TodayConfigData);
    sub_219BF7734();
    v53 = v20;
    v27 = v82;
    LOBYTE(v75) = 3;
    sub_218CBC1E0();
    v29 = v69;
    v28 = v70;
    sub_219BF7734();
    sub_219BE3384();
    (*(v66 + 8))(v29, v28);
    v70 = v81;
    LOBYTE(v75) = 4;
    sub_218CBC264();
    v30 = v67;
    v31 = v68;
    sub_219BF7734();
    v66 = v27;
    v69 = v18;
    sub_219BE3384();
    (*(v63 + 8))(v30, v31);
    v32 = v80;
    LOBYTE(v75) = 5;
    sub_2186EF5DC(&qword_280E91980, MEMORY[0x277D32228]);
    sub_219BF7734();
    LOBYTE(v75) = 6;
    sub_218CBC2E8();
    v33 = v61;
    v34 = v62;
    sub_219BF7734();
    sub_219BE3384();
    (*(v59 + 8))(v33, v34);
    v35 = v79;
    type metadata accessor for FCSportsOnboardingState(0);
    LOBYTE(v75) = 8;
    sub_2186EF5DC(&qword_280E8DEF8, type metadata accessor for FCSportsOnboardingState);
    sub_219BF7734();
    v68 = v78;
    LOBYTE(v75) = 9;
    sub_218CBC36C();
    v36 = v57;
    v37 = v58;
    sub_219BF7734();
    v38 = v70;
    sub_219BE3384();
    (*(v54 + 8))(v36, v37);
    v67 = v77;
    type metadata accessor for TodayFeedServiceConfig();
    v15 = swift_allocObject();
    v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache] = 0;
    v39 = v69;
    sub_218853630(v69, &v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context], type metadata accessor for TodayFeedServiceContext);
    v40 = v35;
    v41 = v73;
    sub_218853630(v73, &v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig], type metadata accessor for TodayConfig);
    v42 = v65;
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData] = v66;
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig] = v38;
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig] = v32;
    v43 = v60;
    v44 = v32;
    v45 = v64;
    (*(v60 + 16))(&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy], v42, v64);
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController] = v40;
    v46 = [v44 autoRefreshMinimumInterval];
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval] = v46;
    v75 = sub_21936076C();
    v76 = v47;
    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_2187D96F4(v41, v55);
    v48 = sub_219BF5484();
    MEMORY[0x21CECC330](v48);

    v49 = v75;
    v50 = v76;
    (*(v43 + 8))(v42, v45);
    sub_21960EB38(v41, type metadata accessor for TodayConfig);
    sub_21960EB38(v39, type metadata accessor for TodayFeedServiceContext);
    (*(v53 + 8))(v72, v71);
    v51 = &v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey];
    *v51 = v49;
    *(v51 + 1) = v50;
    v52 = v67;
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState] = v68;
    *&v15[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability] = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v15;
}

void sub_21960F9C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BE3474();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21960FA24()
{
  result = qword_280EC65B8;
  if (!qword_280EC65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC65B8);
  }

  return result;
}

void sub_21960FA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21960FA24();
    v7 = a3(a1, &type metadata for TodayFeedServiceConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21960FAF0()
{
  result = qword_27CC1D168;
  if (!qword_27CC1D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D168);
  }

  return result;
}

unint64_t sub_21960FB48()
{
  result = qword_280EC65A0;
  if (!qword_280EC65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC65A0);
  }

  return result;
}

unint64_t sub_21960FBA0()
{
  result = qword_280EC65A8;
  if (!qword_280EC65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC65A8);
  }

  return result;
}

uint64_t sub_21960FBF4()
{
  v0 = sub_219BF7614();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21960FC40(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2186E4BD4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[16] = swift_task_alloc();
  sub_219BEF554();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_21960FDDC;

  return sub_21961041C((v3 + 2), a2);
}

uint64_t sub_21960FDDC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 40);
    *(v2 + 96) = *(v2 + 56);
    *(v2 + 64) = v6;
    *(v2 + 80) = v7;
    v8 = swift_task_alloc();
    *(v2 + 184) = v8;
    *v8 = v3;
    v8[1] = sub_21960FF90;
    v9 = *(v2 + 112);

    return sub_219617924(v9, (v2 + 64));
  }
}

uint64_t sub_21960FF90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_219610380;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_2196100B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2196100B8()
{
  v1 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v2 = v0[13];
  sub_2186E0170();
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  sub_2196146F0(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  sub_219618910((v0 + 8));
  (*(v1 + 32))(v2, v5, v6);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_2196146F0(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_219610380()
{

  sub_219618910(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21961041C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_219BEDC04();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196104E0, 0, 0);
}

uint64_t sub_2196104E0()
{
  sub_219BEF164();
  v0[20] = v0[8];
  sub_219BE2CF4();
  v0[21] = v0[9];
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_2196105FC;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_2196105FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219611BFC;
  }

  else
  {

    v2 = sub_219610718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

size_t sub_219610718()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 192) = v2;
  *(v0 + 200) = v1;
  v47 = v1;
  v3 = *(v0 + 40);
  *(v0 + 208) = *(v0 + 32);
  *(v0 + 216) = v3;
  v53 = MEMORY[0x277D84F90];
  v4 = v2 >> 62;
  v45 = *(v0 + 56);
  v46 = *(v0 + 48);
  *(v0 + 224) = v46;
  *(v0 + 232) = v45;
  if (v2 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v52 = *(v0 + 160) + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v43 = v4;
    v44 = v2;
    v7 = 0;
    v49 = v2 & 0xFFFFFFFFFFFFFF8;
    v50 = v2 & 0xC000000000000001;
    v8 = v2 + 32;
    while (1)
    {
      if (v50)
      {
        v9 = MEMORY[0x21CECE0F0](v7, v44);
      }

      else
      {
        if (v7 >= *(v49 + 16))
        {
          goto LABEL_55;
        }

        v9 = *(v8 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v2 = *(v52 + 16);
      v12 = [v9 identifier];
      v13 = sub_219BF5414();
      v4 = v14;

      if (*(v2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v15 = sub_219BF7AE4(), v16 = -1 << *(v2 + 32), v0 = v15 & ~v16, ((*(v2 + 56 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) != 0))
      {
        v17 = ~v16;
        while (1)
        {
          v18 = (*(v2 + 48) + 16 * v0);
          v19 = *v18 == v13 && v18[1] == v4;
          if (v19 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v0 = (v0 + 1) & v17;
          if (((*(v2 + 56 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v7 == i)
        {
LABEL_23:
          v6 = v53;
          v0 = v48;
          v2 = v44;
          v4 = v43;
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        v4 = *(v53 + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v7 == i)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_24:
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  *(v0 + 240) = qword_280F616D8;
  sub_2186F20D4();
  *(v0 + 248) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09EC0;
  if (v4)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D83B88];
  v24 = MEMORY[0x277D83C10];
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = v24;
  *(v21 + 32) = v22;
  v25 = v6 < 0 || (v6 & 0x4000000000000000) != 0;
  v51 = v6;
  if (v25)
  {
    v26 = sub_219BF7214();
  }

  else
  {
    v26 = *(v6 + 16);
  }

  *(v21 + 96) = v23;
  *(v21 + 104) = v24;
  *(v21 + 72) = v26;
  sub_219BF6214();
  sub_219BE5314();

  if (v25)
  {
    if (!sub_219BF7214())
    {
LABEL_36:

      v27 = sub_219BEEDD4();
      sub_219618B1C(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D323A8], v27);
      swift_willThrow();

      sub_218B007F8(v46);

      v29 = *(v0 + 8);

      return v29();
    }
  }

  else if (!*(v51 + 16))
  {
    goto LABEL_36;
  }

  if (v26)
  {
    v54 = MEMORY[0x277D84F90];
    result = sub_218C34908(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = 0;
    v32 = *(v0 + 144);
    v33 = v54;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x21CECE0F0](v31, v51);
      }

      else
      {
        v34 = *(v51 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = [v47 objectForKey_];
      sub_219BEDBD4();

      v38 = *(v54 + 16);
      v37 = *(v54 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_218C34908(v37 > 1, v38 + 1, 1);
      }

      v39 = *(v48 + 152);
      v40 = *(v48 + 136);
      ++v31;
      *(v54 + 16) = v38 + 1;
      (*(v32 + 32))(v54 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v38, v39, v40);
    }

    while (v26 != v31);

    v0 = v48;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  *(v0 + 256) = v33;
  sub_219BEF864();

  *(v0 + 264) = sub_219BEF824();
  v41 = swift_task_alloc();
  *(v0 + 272) = v41;
  *v41 = v0;
  v41[1] = sub_219610DD4;
  v42 = *(v0 + 120);

  return sub_219614770(v33, v42, v47, v46, v45);
}

uint64_t sub_219610DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[35] = a1;
  v6[36] = a2;
  v6[37] = a3;
  v6[38] = a4;
  v6[39] = v4;

  if (v4)
  {
    v7 = sub_2196113E8;
  }

  else
  {
    v7 = sub_219610EF0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_219610EF0()
{
  v1 = v0[35];
  if (v1)
  {
    v0[10] = v1;
    v2 = v0[32];
    sub_2186E4BD4(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
    sub_218E5B3A8();
    v3 = sub_219BF5784();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09EC0;
    v5 = *(v2 + 16);

    v6 = MEMORY[0x277D83B88];
    v7 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v7;
    *(v4 + 32) = v5;
    if (v3 >> 62)
    {
      v8 = sub_219BF7214();
    }

    else
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 96) = v6;
    *(v4 + 104) = v7;
    *(v4 + 72) = v8;
    sub_219BF6214();
    sub_219BE5314();

    if (v3 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_6;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      __swift_project_boxed_opaque_existential_1((v0[16] + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_headlineService), *(v0[16] + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_headlineService + 24));
      v0[12] = v1;
      v9 = sub_219BF5764();

      sub_219BEF0B4();
      swift_unknownObjectRetain();

      v0[40] = sub_219BF27A4();

      swift_unknownObjectRelease();
      v10 = swift_task_alloc();
      v0[41] = v10;
      *v10 = v0;
      v10[1] = sub_2196114B4;

      return MEMORY[0x2821D23D8](v0 + 11);
    }

    v16 = v0[37];
    v17 = v0[36];
    v23 = v0[28];
    v18 = v0[25];

    v19 = sub_219BEEDD4();
    sub_219618B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D323A8], v19);
    swift_willThrow();
    sub_219083AE0(v17, v16);

    v15 = v23;
  }

  else
  {
    v11 = v0[28];
    v12 = v0[25];

    v13 = sub_219BEEDD4();
    sub_219618B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D323A8], v13);
    swift_willThrow();

    v15 = v11;
  }

  sub_218B007F8(v15);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2196113E8()
{
  v1 = v0[28];
  v2 = v0[25];

  sub_218B007F8(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2196114B4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_219611C70;
  }

  else
  {

    v2 = sub_2196115D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196115D0()
{
  v1 = v0[11];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[16];
  v4 = v3 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs;
  v5 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  v6 = *(v4 + *(v5 + 24));
  if (v2 >= v6)
  {
    v11 = v5;
    v12 = sub_219611D64(v3);
    if (!v12)
    {
      v28 = v0[37];
      v29 = v0[36];
      v58 = v0[28];
      v30 = v0[25];

      v31 = sub_219BEEDD4();
      sub_219618B1C(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D323A8], v31);
      swift_willThrow();
      sub_219083AE0(v29, v28);

      goto LABEL_15;
    }

    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C0D560;
    v15 = MEMORY[0x277D83B88];
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = v16;
    *(v14 + 32) = v2;
    v17 = v13;
    v18 = v13 >> 62;
    v59 = v17;
    if (v18)
    {
      v19 = sub_219BF7214();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v19;
    v20 = *(v4 + *(v11 + 40));
    v21 = MEMORY[0x277D839F0];
    *(v14 + 136) = MEMORY[0x277D839B0];
    *(v14 + 144) = v21;
    *(v14 + 112) = v20;
    if (v1 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v1 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CECE0F0](0, v1);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v23 = *(v1 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 identifier];
        swift_unknownObjectRelease();
        v25 = sub_219BF5414();
        v27 = v26;

LABEL_18:
        v34 = MEMORY[0x277D837D0];
        *(v14 + 176) = MEMORY[0x277D837D0];
        v35 = sub_2186FC3BC();
        *(v14 + 184) = v35;
        if (v27)
        {
          v36 = v25;
        }

        else
        {
          v36 = 0;
        }

        v37 = 0xE000000000000000;
        if (v27)
        {
          v37 = v27;
        }

        *(v14 + 152) = v36;
        *(v14 + 160) = v37;
        if (v18)
        {
          v38 = v59;
          result = sub_219BF7214();
          if (result)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v38 = v59;
          result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_25:
            if ((v38 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x21CECE0F0](0, v38);
LABEL_28:
              v40 = [v39 identifier];
              swift_unknownObjectRelease();
              v41 = sub_219BF5414();
              v43 = v42;

              v44 = (v14 + 192);
              *(v14 + 216) = v34;
              *(v14 + 224) = v35;
              if (v43)
              {
                *v44 = v41;
LABEL_33:
                v45 = v0[37];
                v46 = v0[28];
                v47 = v0[25];
                *(v14 + 200) = v43;
                v48 = v45;
                sub_219BF6214();
                sub_219BE5314();

                sub_218B007F8(v46);

                if (v48)
                {
                  v49 = v0[37];
                  v50 = v0[36];

                  swift_unknownObjectRetain();
                  sub_219083AE0(v50, v49);
                  v51 = v0[38];
                  v52 = v0[36];
                }

                else
                {
                  v52 = 0;
                  v51 = 0;
                }

                v53 = v48 != 0;
                v54 = v0[37];
                v55 = v0[33];
                v56 = v0[14];

                *v56 = v55;
                *(v56 + 8) = v59;
                *(v56 + 16) = v52;
                *(v56 + 24) = v54;
                *(v56 + 32) = v51;
                *(v56 + 40) = v53;
                v33 = v0[1];
                goto LABEL_37;
              }

LABEL_32:
              *v44 = 0;
              v43 = 0xE000000000000000;
              goto LABEL_33;
            }

            if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v39 = *(v38 + 32);
              swift_unknownObjectRetain();
              goto LABEL_28;
            }

LABEL_45:
            __break(1u);
            return result;
          }
        }

        v44 = (v14 + 192);
        *(v14 + 216) = v34;
        *(v14 + 224) = v35;
        goto LABEL_32;
      }
    }

    v25 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  v7 = v0[37];
  v8 = v0[36];
  v58 = v0[28];
  v57 = v0[25];

  v9 = sub_219BEEDD4();
  sub_219618B1C(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  *v10 = v6;
  v10[1] = v2;
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D32400], v9);
  swift_willThrow();
  sub_219083AE0(v8, v7);

LABEL_15:

  sub_218B007F8(v58);

  v33 = v0[1];
LABEL_37:

  return v33();
}

uint64_t sub_219611BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219611C70()
{
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[28];
  v4 = v0[25];

  sub_219083AE0(v2, v1);

  sub_218B007F8(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_219611D64(uint64_t a1)
{
  sub_2186E4BD4(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = a1 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs;
  v9 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  v10 = *(v9 + 52);
  if (*(v8 + *(v9 + 40)) == 1)
  {
    sub_219618A9C(v8 + v10, v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v11 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
    sub_218745B2C(v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);

    sub_219319AB8(v13);
    sub_218731D50();
    v14 = sub_219BF5904();

    if (v12 == 1)
    {
      v15 = FCPromoteAccessibleHeadline();
    }

    else
    {
      v15 = FCPromoteAccessibleHeadlineIgnoringProminence();
    }
  }

  else
  {
    sub_219618A9C(v8 + v10, v5, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v16 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
    v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
    sub_218745B2C(v5, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);

    sub_219319AB8(v18);
    sub_218731D50();
    v14 = sub_219BF5904();

    if (v17 == 1)
    {
      v15 = FCPromoteOneHeadline();
    }

    else
    {
      v15 = FCPromoteOneHeadlineIgnoringProminence();
    }
  }

  v19 = v15;

  if (!v19)
  {
    return 0;
  }

  v20 = sub_219BF5924();

  return v20;
}

uint64_t sub_219612090@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D83D88];
  sub_2186E4BD4(0, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = sub_219BF0204();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4BD4(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs;
  v18 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  sub_219618A9C(v17 + *(v18 + 52), v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_219618A34(v12, v16, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_219BEF0B4();
    v21 = *&v69[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig];
    swift_unknownObjectRetain();

    if ([v21 respondsToSelector_])
    {
      v22 = [v21 todayFeedGroupClusteringKnobOverrides];
      swift_unknownObjectRelease();
      if (v22)
      {
        v62 = v16;
        sub_219BF5214();

        v23 = objc_opt_self();
        v24 = sub_219BF5204();

        v69 = 0;
        v25 = [v23 dataWithJSONObject:v24 options:0 error:&v69];

        v26 = v69;
        if (v25)
        {
          v27 = sub_219BDBA04();
          v29 = v28;

          sub_219BDAFF4();
          swift_allocObject();
          sub_219BDAFE4();
          sub_219618B1C(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
          v30 = v66;
          sub_219BDAFC4();
          v60 = v27;

          sub_219618A9C(v30 + *(v8 + 24), v5, &qword_280E90FF0, MEMORY[0x277D32BE0]);
          v41 = v64;
          v42 = v65;
          v43 = (*(v64 + 48))(v5, 1, v65);
          v44 = v62;
          v61 = v29;
          if (v43 != 1)
          {
            v48 = v63;
            (*(v41 + 32))(v63, v5, v42);
            if (qword_280E8D7A0 != -1)
            {
              swift_once();
            }

            v59 = qword_280F616D8;
            sub_2186F20D4();
            v49 = swift_allocObject();
            *(v49 + 16) = xmmword_219C09EC0;
            v69 = 0;
            v70 = 0xE000000000000000;
            sub_219BF7484();
            v51 = v69;
            v50 = v70;
            v52 = MEMORY[0x277D837D0];
            *(v49 + 56) = MEMORY[0x277D837D0];
            v53 = sub_2186FC3BC();
            *(v49 + 64) = v53;
            *(v49 + 32) = v51;
            *(v49 + 40) = v50;
            v69 = 0;
            v70 = 0xE000000000000000;
            v54 = v62;
            sub_219BF7484();
            v55 = v69;
            v56 = v70;
            *(v49 + 96) = v52;
            *(v49 + 104) = v53;
            *(v49 + 72) = v55;
            *(v49 + 80) = v56;
            sub_219BF6214();
            sub_219BE5314();

            v20 = v67;
            sub_219BEF7D4();
            sub_2186C6190(v60, v61);
            (*(v64 + 8))(v48, v65);
            sub_219618B64(v30, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
            v57 = *(v13 + 20);
            v58 = sub_219BEFF54();
            (*(*(v58 - 8) + 16))(v20 + v57, v54 + v57, v58);
            sub_219618B64(v54, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
            goto LABEL_15;
          }

          sub_218745B2C(v5, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88], sub_2186E4BD4);
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          sub_2186F20D4();
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_219C09BA0;
          v69 = 0;
          v70 = 0xE000000000000000;
          sub_219BF7484();
          v46 = v69;
          v47 = v70;
          *(v45 + 56) = MEMORY[0x277D837D0];
          *(v45 + 64) = sub_2186FC3BC();
          *(v45 + 32) = v46;
          *(v45 + 40) = v47;
          sub_219BF6214();
          sub_219BE5314();
          sub_2186C6190(v60, v61);

          sub_219618B64(v30, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
          v34 = v44;
        }

        else
        {
          v35 = v26;
          v36 = sub_219BDB724();

          swift_willThrow();
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          sub_219BF61F4();
          sub_2186F20D4();
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_219C09BA0;
          v69 = 0;
          v70 = 0xE000000000000000;
          v68 = v36;
          sub_2186CFDE4(0, &qword_280E8B580);
          sub_219BF7484();
          v38 = v69;
          v39 = v70;
          *(v37 + 56) = MEMORY[0x277D837D0];
          *(v37 + 64) = sub_2186FC3BC();
          *(v37 + 32) = v38;
          *(v37 + 40) = v39;
          sub_219BE5314();

          v34 = v62;
        }

LABEL_14:
        v20 = v67;
        sub_219618A34(v34, v67, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_15:
        v19 = 0;
        return (*(v14 + 56))(v20, v19, 1, v13);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_219BF7484();
    v32 = v69;
    v33 = v70;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_2186FC3BC();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    sub_219BF6214();
    sub_219BE5314();

    v34 = v16;
    goto LABEL_14;
  }

  sub_218745B2C(v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
  v19 = 1;
  v20 = v67;
  return (*(v14 + 56))(v20, v19, 1, v13);
}

char *sub_219612B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v88);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v84);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196146F0(0, &qword_280E924A0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31E28]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v85 = a1;
  v16 = sub_219BEF0A4();
  v17 = v16;
  v87 = *(v16 + 16);
  if (!v87)
  {
LABEL_13:

    return MEMORY[0x277D84FA0];
  }

  v81 = v7;
  v82 = v5;
  v83 = v4;
  v80 = a2;
  v18 = 0;
  v19 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20 = v13 + 8;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    (*(v13 + 16))(v15, v19 + *(v13 + 72) * v18, v12);
    sub_219BEDC54();
    (*(v13 + 8))(v15, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    v21 = type metadata accessor for TodayFeedGroup;
    v22 = v9;
LABEL_4:
    sub_219618B64(v22, v21);
    if (v87 == ++v18)
    {
      goto LABEL_13;
    }
  }

  v23 = v86;
  sub_219618A34(v9, v86, type metadata accessor for CuratedTodayFeedGroup);
  v24 = (v23 + *(v84 + 20));
  v25 = *v24 == 0x69726F7453706F74 && v24[1] == 0xEA00000000007365;
  if (!v25 && (sub_219BF78F4() & 1) == 0)
  {
    v21 = type metadata accessor for CuratedTodayFeedGroup;
    v22 = v86;
    goto LABEL_4;
  }

  v27 = v81;
  sub_219BED874();
  v20 = sub_219BF18D4();
  (*(v82 + 8))(v27, v83);
  v89 = MEMORY[0x277D84F90];
  if (!(v20 >> 62))
  {
    v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_34:
    v40 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

LABEL_33:
  v28 = sub_219BF7214();
  if (!v28)
  {
    goto LABEL_34;
  }

LABEL_16:
  v29 = 0;
  v88 = v20 & 0xC000000000000001;
  while (2)
  {
    if (v88)
    {
      v30 = MEMORY[0x21CECE0F0](v29, v20);
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_29;
      }

LABEL_23:
      sub_219BEF0B4();
      v32 = *(v91 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

      v33 = *(v32 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

      v34 = [v30 identifier];
      v35 = sub_219BF5414();
      v37 = v36;

      if (*(v33 + 16))
      {
        sub_21870F700(v35, v37);
        v39 = v38;

        if (v39)
        {
          swift_unknownObjectRelease();

LABEL_19:
          ++v29;
          if (v31 == v28)
          {
            goto LABEL_30;
          }

          continue;
        }
      }

      else
      {
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      goto LABEL_19;
    }

    break;
  }

  if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v30 = *(v20 + 8 * v29 + 32);
  swift_unknownObjectRetain();
  v31 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v40 = v89;
LABEL_35:

  v41 = (v40 >> 62) & 1;
  if (v40 < 0)
  {
    LODWORD(v41) = 1;
  }

  LODWORD(v88) = v41;
  if (v41 == 1)
  {
LABEL_74:
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *(v40 + 16);
  }

  v43 = v40 & 0xC000000000000001;
  v44 = MEMORY[0x277D84F90];
  if (v42)
  {
    v45 = 0;
    do
    {
      v46 = v45;
      while (1)
      {
        if (v43)
        {
          v47 = MEMORY[0x21CECE0F0](v46, v40);
          v45 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v46 >= *(v40 + 16))
          {
            goto LABEL_73;
          }

          v47 = *(v40 + 8 * v46 + 32);
          swift_unknownObjectRetain();
          v45 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        v48 = [v47 clusterID];
        if (v48)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v46;
        if (v45 == v42)
        {
          goto LABEL_56;
        }
      }

      v49 = v48;
      v50 = sub_219BF5414();
      v52 = v51;

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_218840D24(0, *(v44 + 2) + 1, 1, v44);
      }

      v54 = *(v44 + 2);
      v53 = *(v44 + 3);
      if (v54 >= v53 >> 1)
      {
        v44 = sub_218840D24((v53 > 1), v54 + 1, 1, v44);
      }

      *(v44 + 2) = v54 + 1;
      v55 = &v44[16 * v54];
      *(v55 + 4) = v50;
      *(v55 + 5) = v52;
    }

    while (v45 != v42);
  }

LABEL_56:
  v56 = sub_218845F78(v44);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v57 = qword_280F616D8;
  sub_2186F20D4();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_219C09EC0;
  v89 = 0;
  v90 = 0xE000000000000000;
  if (v88)
  {
    v59 = sub_219BF7214();
    if (v59)
    {
      goto LABEL_60;
    }

LABEL_70:

    v61 = MEMORY[0x277D84F90];
LABEL_71:
    v69 = MEMORY[0x277D837D0];
    v70 = MEMORY[0x21CECC6D0](v61, MEMORY[0x277D837D0]);
    v72 = v71;

    MEMORY[0x21CECC330](v70, v72);

    v73 = v89;
    v74 = v90;
    *(v58 + 56) = v69;
    v75 = sub_2186FC3BC();
    *(v58 + 64) = v75;
    *(v58 + 32) = v73;
    *(v58 + 40) = v74;
    v76 = sub_219BF5D54();
    *(v58 + 96) = v69;
    *(v58 + 104) = v75;
    *(v58 + 72) = v76;
    *(v58 + 80) = v77;
    sub_219BF6214();
    sub_219BE5314();

    v79 = sub_2194796A0(v78, v56);
    sub_219618B64(v86, type metadata accessor for CuratedTodayFeedGroup);
    return v79;
  }

  else
  {
    v59 = *(v40 + 16);
    if (!v59)
    {
      goto LABEL_70;
    }

LABEL_60:
    v87 = v57;
    v88 = v56;
    v91 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v59 & ~(v59 >> 63), 0);
    if ((v59 & 0x8000000000000000) == 0)
    {
      v60 = 0;
      v61 = v91;
      do
      {
        if (v43)
        {
          MEMORY[0x21CECE0F0](v60, v40);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v62 = [swift_unknownObjectRetain() identifier];
        v63 = sub_219BF5414();
        v65 = v64;
        swift_unknownObjectRelease_n();

        v91 = v61;
        v67 = *(v61 + 16);
        v66 = *(v61 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_21870B65C((v66 > 1), v67 + 1, 1);
          v61 = v91;
        }

        ++v60;
        *(v61 + 16) = v67 + 1;
        v68 = v61 + 16 * v67;
        *(v68 + 32) = v63;
        *(v68 + 40) = v65;
      }

      while (v59 != v60);

      v56 = v88;
      goto LABEL_71;
    }

    __break(1u);
  }

  return result;
}