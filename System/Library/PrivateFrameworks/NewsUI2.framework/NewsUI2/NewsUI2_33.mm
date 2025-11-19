uint64_t sub_218A6C72C(uint64_t a1)
{
  v2 = sub_218A6C828(&qword_27CC0D330, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218A6C828(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218A6C8B8()
{
  if (!qword_27CC0D2D0)
  {
    sub_218A6C984(255);
    sub_218A6C828(&qword_27CC0D2D8, sub_218A6C984);
    sub_218A6C828(&qword_27CC0D2E0, sub_218A6C984);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0D2D0);
    }
  }
}

void sub_218A6C9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218A6C828(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218A6C828(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218A6CAB8()
{
  result = qword_27CC0D2E8;
  if (!qword_27CC0D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D2E8);
  }

  return result;
}

void sub_218A6CB28(uint64_t a1)
{
  if (!qword_27CC0D2F0)
  {
    MEMORY[0x28223BE20](a1);
    sub_218A6C9A4(255);
    sub_2186CFDE4(255, &qword_280EE56E8);
    sub_219BE6DF4();
    sub_219BE72A4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0D2F0);
    }
  }
}

void sub_218A6CC5C()
{
  if (!qword_280EE3A78)
  {
    sub_218A6CCC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3A78);
    }
  }
}

void sub_218A6CCC8()
{
  if (!qword_280EE3A70)
  {
    sub_219BDC104();
    sub_218A6C828(&qword_280EE9BC0, MEMORY[0x277CC9AF8]);
    v0 = sub_219BEA5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3A70);
    }
  }
}

void sub_218A6CD5C()
{
  if (!qword_27CC0D308)
  {
    sub_218A6C9A4(255);
    sub_218A6C828(&qword_27CC0D310, sub_218A6C9A4);
    v0 = sub_219BE2074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0D308);
    }
  }
}

void sub_218A6CDF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218A6CE44(char *a1, void *a2, uint64_t a3)
{
  v52 = a3;
  v50 = a1;
  v57 = sub_219BDC104();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6CDF0(0, &unk_280EE3A60, sub_218A6CCC8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v51 = (&v46 - v12);
  sub_218A6CCC8();
  v14 = v13;
  v58 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = a2;
  v49 = &v46 - v18;
  v19 = a2[3];
  v20 = a2[4];
  v53 = __swift_project_boxed_opaque_existential_1(a2, v19);
  v54 = v20;
  v55 = v19;
  result = sub_219BE6E24();
  v22 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v24 = 0;
    v56 = (v58 + 8);
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v58 + 16))(v17, v22 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v24, v14);
      sub_219BEA5D4();
      v25 = sub_219BDC0D4();
      (*(v4 + 8))(v6, v57);
      if (!v25)
      {
        break;
      }

      ++v24;
      result = (*v56)(v17, v14);
      if (v23 == v24)
      {
        goto LABEL_6;
      }
    }

    v33 = v58;
    v34 = v58 + 32;
    v35 = *(v58 + 32);
    v36 = v49;
    v35(v49, v17, v14);
    v57 = *(sub_219BE6E24() + 16);

    sub_218A6C984(0);
    sub_218A6C828(&qword_27CC14300, sub_218A6C984);
    v37 = v52;
    sub_219BF5DF4();
    sub_219BF5E84();
    if (v57 == sub_219BF5E74())
    {
      v57 = v34;
      v51 = v35;
      v38 = sub_219BE6E24();
      MEMORY[0x28223BE20](v38);
      *(&v46 - 2) = v37;
      v39 = v47;
      sub_218D64A70(sub_218A6DC88, v38, v47);

      v40 = *(v33 + 48);
      if (v40(v39, 1, v14) == 1)
      {
        sub_218A6DCA8(v39, &unk_280EE3A60, sub_218A6CCC8);
        v41 = sub_219BE6E24();
        MEMORY[0x28223BE20](v41);
        *(&v46 - 2) = v37;
        v42 = v46;
        sub_218D64A70(sub_218A6DD04, v41, v46);

        if (v40(v42, 1, v14) == 1)
        {
          sub_218A6DCA8(v42, &unk_280EE3A60, sub_218A6CCC8);
          _s7ContextO6ErrorsOMa();
          sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
          swift_allocError();
          v44 = v43;
          v59 = 0;
          v60 = 0xE000000000000000;
          sub_219BF7314();
          MEMORY[0x21CECC330](0xD0000000000000BFLL, 0x8000000219CE3550);
          __swift_project_boxed_opaque_existential_1(v48, v48[3]);
          sub_219BF78C4();
          v45 = v60;
          *v44 = v59;
          v44[1] = v45;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*v56)(v49, v14);
        }

        else
        {
          (*v56)(v49, v14);
          v51(v50, v42, v14);
          v32 = 1;
        }
      }

      else
      {
        (*v56)(v49, v14);
        v51(v50, v39, v14);
        v32 = 0;
      }
    }

    else
    {
      v35(v50, v36, v14);
      v32 = 1;
    }
  }

  else
  {
LABEL_6:

    v26 = sub_219BE6E24();
    MEMORY[0x28223BE20](v26);
    v27 = v51;
    *(&v46 - 2) = v52;
    sub_218D64A70(sub_218A6DD24, v26, v27);

    v28 = v58;
    if ((*(v58 + 48))(v27, 1, v14) == 1)
    {
      sub_218A6DCA8(v27, &unk_280EE3A60, sub_218A6CCC8);
      _s7ContextO6ErrorsOMa();
      sub_218A6C828(&qword_27CC0D318, _s7ContextO6ErrorsOMa);
      swift_allocError();
      v30 = v29;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000091, 0x8000000219CE3610);
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      sub_219BF78C4();
      v31 = v60;
      *v30 = v59;
      v30[1] = v31;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      (*(v28 + 32))(v50, v27, v14);
      v32 = 0;
    }
  }

  return v32 & 1;
}

uint64_t sub_218A6D70C()
{
  v0 = sub_219BDC104();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6CCC8();
  sub_219BEA5E4();
  v4 = sub_219BDC0D4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 0;
  }

  sub_219BEA5D4();
  v7 = sub_219BDC0D4();
  v5(v3, v0);
  sub_218A6C984(0);
  sub_218A6C828(&qword_27CC14300, sub_218A6C984);
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (!__OFSUB__(result, 1))
  {
    return v7 == result - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_218A6D8E0(uint64_t a1)
{
  v2 = sub_219BDC104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6CCC8();
  v9[1] = a1;
  sub_219BEA5E4();
  v6 = sub_219BDC0D4();
  v9[0] = *(v3 + 8);
  (v9[0])(v5, v2);
  sub_218A6C984(0);
  sub_218A6C828(&qword_27CC14300, sub_218A6C984);
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v6 == result - 1)
  {
    sub_219BEA5D4();
    v8 = sub_219BDC0D4();
    (v9[0])(v5, v2);
    return v8 == 0;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_218A6DAC0()
{
  v0 = sub_219BDC104();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6CCC8();
  sub_219BEA5D4();
  v4 = sub_219BDC0D4();
  (*(v1 + 8))(v3, v0);
  sub_218A6C984(0);
  sub_218A6C828(&qword_27CC14300, sub_218A6C984);
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (!__OFSUB__(result, 1))
  {
    return v4 == result - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_218A6DCA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218A6CDF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218A6DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A6DDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A6DE10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218A6DE84()
{
  result = qword_27CC0D338;
  if (!qword_27CC0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D338);
  }

  return result;
}

uint64_t sub_218A6DED8(unint64_t a1)
{
  if (a1 >> 60 == 3)
  {
    v1 = *(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16);
    if (!v1)
    {
      return 0;
    }

    v2 = [objc_msgSend(v1 backingTag)];
    swift_unknownObjectRelease();
    v3 = sub_219BF5414();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_219BDB5E4();
  }

  v5 = v3;

  return v5;
}

id sub_218A6E364()
{
  result = sub_218818D4C();
  qword_27CC0D348 = result;
  return result;
}

id sub_218A6E3B8(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

void sub_218A6E454()
{
  if (!qword_280ED67B8[0])
  {
    type metadata accessor for FeedMastheadModel();
    sub_2186FE720();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED67B8);
    }
  }
}

void sub_218A6E4C8()
{
  if (!qword_280EE8B40)
  {
    sub_21875D3C8();
    sub_2186DEEA0(255, &qword_280E8F860);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE8B40);
    }
  }
}

void sub_218A6E554()
{
  if (!qword_280EDCA50[0])
  {
    type metadata accessor for AudioFeedTrack(255);
    sub_219BDD9E4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_280EDCA50);
    }
  }
}

void sub_218A6E5D0(uint64_t a1)
{
  if (!qword_27CC0D3B0)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for AudioFeedTrack(255);
    sub_219BDD9E4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0D3B0);
    }
  }
}

uint64_t sub_218A6E6F4(uint64_t a1, uint64_t a2)
{
  sub_2186DEEA0(0, &qword_280ECE5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A6E78C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218A6E854()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218A6E938()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218A6EA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_218A6EF28(0, &qword_280E91A38, sub_2186E9484);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6EF28(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  sub_218A6EF7C();
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A6EFD8();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v11;
    v18 = v34;
    v33 = a1;
    v39 = 0x4C656C6369747261;
    v40 = 0xEB00000000747369;
    v41 = 0;
    v42 = 1;
    sub_2186EE62C(&qword_280EADB00, type metadata accessor for ArticleListSavedFeedGroupKnobs);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_218A6F02C(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_2186E9484();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_218F70F9C(v21, 0, v20);
      sub_218A6F0AC(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_218A6F0AC(v22);
      }
    }

    else
    {
      sub_218A6F0AC(v23);
      sub_218A6F124(v22, v20);
    }

    sub_218A6F124(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218A6EE98(uint64_t a1)
{
  v2 = sub_218A6EFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A6EED4(uint64_t a1)
{
  v2 = sub_218A6EFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218A6EF28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218A6EF7C()
{
  if (!qword_280E8CF18)
  {
    sub_218A6EFD8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CF18);
    }
  }
}

unint64_t sub_218A6EFD8()
{
  result = qword_280ED0820;
  if (!qword_280ED0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0820);
  }

  return result;
}

uint64_t sub_218A6F02C(uint64_t a1, uint64_t a2)
{
  sub_218A6EF28(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A6F0AC(uint64_t a1)
{
  sub_218A6EF28(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A6F124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218A6F19C()
{
  result = qword_27CC0D3B8;
  if (!qword_27CC0D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3B8);
  }

  return result;
}

unint64_t sub_218A6F1F4()
{
  result = qword_280ED0810;
  if (!qword_280ED0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0810);
  }

  return result;
}

unint64_t sub_218A6F24C()
{
  result = qword_280ED0818;
  if (!qword_280ED0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0818);
  }

  return result;
}

uint64_t sub_218A6F2B0(void *a1, char a2)
{
  sub_218A6FC7C(0, &qword_27CC0D3E0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A6FBD4();
  sub_219BF7B44();
  if (a2)
  {
    v10[15] = 1;
  }

  else
  {
    v10[14] = 0;
  }

  sub_218A6FCE0();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218A6F42C()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218A6F488()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218A6F4D0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218A6F548@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218A6F5A0(uint64_t a1)
{
  v2 = sub_218A6FBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A6F5DC(uint64_t a1)
{
  v2 = sub_218A6FBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A6F618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C6269736976;
  }

  else
  {
    v3 = 0x6269736956746F6ELL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656CLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C6269736976;
  }

  else
  {
    v5 = 0x6269736956746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656CLL;
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

uint64_t sub_218A6F6C4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218A6F74C()
{
  sub_219BF5524();
}

uint64_t sub_218A6F7C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218A6F844@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_218A6F8A4(uint64_t *a1@<X8>)
{
  v2 = 0x6269736956746F6ELL;
  if (*v1)
  {
    v2 = 0x656C6269736976;
  }

  v3 = 0xEA0000000000656CLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_218A6F998@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218A6FA3C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_218A6F9E8()
{
  result = qword_27CC0D3C0;
  if (!qword_27CC0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3C0);
  }

  return result;
}

void *sub_218A6FA3C(void *a1)
{
  sub_218A6FC7C(0, &qword_27CC0D3C8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A6FBD4();
  sub_219BF7B34();
  if (!v1)
  {
    sub_218A6FC28();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[15];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_218A6FBD4()
{
  result = qword_27CC0D3D0;
  if (!qword_27CC0D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3D0);
  }

  return result;
}

unint64_t sub_218A6FC28()
{
  result = qword_27CC0D3D8;
  if (!qword_27CC0D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3D8);
  }

  return result;
}

void sub_218A6FC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A6FBD4();
    v7 = a3(a1, &type metadata for MyMagazinesMagazineFeedGroupActionVisibility.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218A6FCE0()
{
  result = qword_27CC0D3E8;
  if (!qword_27CC0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3E8);
  }

  return result;
}

unint64_t sub_218A6FD58()
{
  result = qword_27CC0D3F0;
  if (!qword_27CC0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3F0);
  }

  return result;
}

unint64_t sub_218A6FDB0()
{
  result = qword_27CC0D3F8;
  if (!qword_27CC0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D3F8);
  }

  return result;
}

unint64_t sub_218A6FE08()
{
  result = qword_27CC0D400;
  if (!qword_27CC0D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D400);
  }

  return result;
}

unint64_t sub_218A6FE60()
{
  result = qword_27CC0D408;
  if (!qword_27CC0D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D408);
  }

  return result;
}

unint64_t sub_218A6FEB4()
{
  result = qword_27CC0D410;
  if (!qword_27CC0D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D410);
  }

  return result;
}

uint64_t sub_218A6FF0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A70714(0, &qword_27CC0D438, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A7065C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218A70778(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218A706B0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A701B8(uint64_t a1)
{
  v2 = sub_218A7065C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A701F4(uint64_t a1)
{
  v2 = sub_218A7065C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A70270(void *a1)
{
  sub_218A70714(0, &qword_27CC0D448, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A7065C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218A70778(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A704D0(uint64_t a1)
{
  result = sub_218A70778(&unk_27CC1C670, type metadata accessor for SportsFavoritesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218A70528(void *a1)
{
  a1[1] = sub_218A70778(&qword_27CC0D428, type metadata accessor for SportsFavoritesTagFeedGroup);
  a1[2] = sub_218A70778(&qword_27CC1C780, type metadata accessor for SportsFavoritesTagFeedGroup);
  result = sub_218A70778(&qword_27CC0D430, type metadata accessor for SportsFavoritesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218A705D4(uint64_t a1)
{
  v2 = sub_218A70778(&qword_27CC0D428, type metadata accessor for SportsFavoritesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218A7065C()
{
  result = qword_27CC0D440;
  if (!qword_27CC0D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D440);
  }

  return result;
}

uint64_t sub_218A706B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoritesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A70714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A7065C();
    v7 = a3(a1, &type metadata for SportsFavoritesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218A70778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218A707D4()
{
  result = qword_27CC0D450;
  if (!qword_27CC0D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D450);
  }

  return result;
}

unint64_t sub_218A7082C()
{
  result = qword_27CC0D458;
  if (!qword_27CC0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D458);
  }

  return result;
}

unint64_t sub_218A70884()
{
  result = qword_27CC0D460;
  if (!qword_27CC0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D460);
  }

  return result;
}

uint64_t sub_218A708D8()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_workerFactory), *(v0 + OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_workerFactory + 24));
  v1 = sub_2194CF88C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7NewsUI233PaidBundleBackgroundWorkerManager_registeredWorkers;
    v4 = 32;
    do
    {
      v10 = *(v1 + v4);
      swift_unknownObjectRetain();
      sub_219BE2A04();
      __swift_destroy_boxed_opaque_existential_1(v11);
      swift_beginAccess();
      v5 = *(v0 + v3);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v3) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_2191F7500(0, v5[2] + 1, 1, v5);
        *(v0 + v3) = v5;
      }

      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        v5 = sub_2191F7500((v7 > 1), v8 + 1, 1, v5);
      }

      v5[2] = v8 + 1;
      *&v5[2 * v8 + 4] = v10;
      *(v0 + v3) = v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

uint64_t sub_218A70D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ContinueReadingEligibility(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = *(a3 + 8);
  if (a4 && (v16 = type metadata accessor for PuzzleViewController(), MEMORY[0x28223BE20](v16), *(&v23 - 2) = a1, *(&v23 - 1) = a2, v11 = sub_219BF6574(), (v17 = v24) != 0))
  {
    *v13 = a1;
    v13[1] = a2;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v18 = sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v23 - 4) = v5;
    *(&v23 - 3) = a1;
    *(&v23 - 2) = a2;
    sub_21873FA4C();
    sub_219BE3204();

    v19 = sub_219BE2E54();
    sub_218A714B0();
    sub_219BE2F84();

    sub_2186C6148(0, &qword_280E8E3B0);
    v20 = sub_219BF66A4();
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = v15;
    *(v21 + 32) = v5;

    sub_2189EB258(v14, v15);
    v18 = sub_219BE2F84();
  }

  return v18;
}

uint64_t sub_218A71028()
{
  sub_2199A03E4();
  v0 = sub_219BF5634();

  return v0 & 1;
}

uint64_t sub_218A71084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21874E528(0, &qword_27CC0C6D8, sub_21873FA4C, MEMORY[0x277D6CF30]);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_219BE2F54();
}

uint64_t sub_218A71170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_218A71194, 0, 0);
}

uint64_t sub_218A71194()
{
  v1 = v0[3];
  v2 = v1[30];
  v3 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2189F592C;
  v6 = v0[4];
  v5 = v0[5];

  return MEMORY[0x282192258](v6, v5, v2, v3);
}

uint64_t sub_218A71254(void **a1)
{
  v1 = *a1;
  sub_21874E528(0, &qword_27CC0C6D8, sub_21873FA4C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_219BE3014();
  sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);

  sub_219BE2F54();
  v2 = [v1 thumbnailSmallImageAssetHandle];
  if (v2)
  {
    v3 = MEMORY[0x28223BE20](v2);
    sub_21874E528(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {
    sub_21874E528(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  v4 = sub_219BE31B4();

  return v4;
}

void sub_218A714B0()
{
  if (!qword_27CC0D498)
  {
    sub_21873FA4C();
    sub_2189EB4C0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0D498);
    }
  }
}

uint64_t sub_218A71528(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_218A71548, 0, 0);
}

uint64_t sub_218A71548()
{
  v1 = *(*(v0 + 24) + 304);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_218A715FC;

  return MEMORY[0x2821930A0](ObjectType, v1);
}

uint64_t sub_218A715FC(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_218A716FC, 0, 0);
}

uint64_t sub_218A71720(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v77 = a4;
  v78 = a3;
  v76 = a2;
  v8 = sub_219BDBD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8) == 1)
  {
    type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    sub_2189EAD9C();
    v50 = swift_allocError();
    *v51 = 1;
    *v14 = v50;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    goto LABEL_13;
  }

  v71 = *(a1 + 16);
  v72 = v12;
  v74 = v14;
  v75 = v5;
  v16 = *a1;
  v17 = v15;
  __swift_project_boxed_opaque_existential_1((a5 + 320), *(a5 + 344));
  v18 = v17;
  swift_unknownObjectRetain_n();
  v73 = v18;
  v19 = sub_219B7D048();
  swift_getObjectType();
  v20 = [swift_unknownObjectRetain() identifier];
  v21 = sub_219BF5414();
  v69 = v22;
  v70 = v21;

  v23 = sub_2189DC604();
  v67 = v24;
  v68 = v23;
  v25 = sub_2189DCC20();
  v27 = v26;
  sub_219BDBD54();
  v28 = sub_219BDBD44();
  v30 = v29;
  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  v31 = v77 & 1;
  LOBYTE(v79) = v77 & 1;
  *&v84 = v70;
  *(&v84 + 1) = v69;
  *&v85 = v16;
  BYTE8(v85) = 2;
  *(&v85 + 9) = v82;
  HIDWORD(v85) = *(&v82 + 3);
  *&v86 = v68;
  *(&v86 + 1) = v67;
  *&v87 = v25;
  *(&v87 + 1) = v27;
  v32 = v78;
  *&v88 = v78;
  BYTE8(v88) = v77 & 1;
  *(&v88 + 9) = v80;
  HIDWORD(v88) = *(&v80 + 3);
  *&v89 = v28;
  *(&v89 + 1) = v30;
  *&v90 = v71;
  *(&v90 + 1) = v19;
  v91 = 0;
  sub_219BDC8D4();
  sub_2189EB258(v32, v31);
  sub_219BDC8B4();
  if (qword_280EE93F0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v82)
  {
    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v33 = sub_219BE5434();
    __swift_project_value_buffer(v33, qword_280F62700);
    swift_unknownObjectRetain();
    v34 = sub_219BE5414();
    v35 = sub_219BF6214();
    swift_unknownObjectRelease();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v74;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v78 = v16;
      v39 = v38;
      v40 = swift_slowAlloc();
      *&v82 = v40;
      *v39 = 136315138;
      v41 = [v78 identifier];
      v42 = sub_219BF5414();
      v44 = v43;

      v45 = sub_2186D1058(v42, v44, &v82);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_2186C1000, v34, v35, "Forcing eligibility for Puzzle ID: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x21CECF960](v40, -1, -1);
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    v46 = v89;
    *(v37 + 4) = v88;
    *(v37 + 5) = v46;
    *(v37 + 6) = v90;
    *(v37 + 112) = v91;
    v47 = v85;
    *v37 = v84;
    *(v37 + 1) = v47;
    v48 = v87;
    *(v37 + 2) = v86;
    *(v37 + 3) = v48;
    swift_storeEnumTagMultiPayload();
    sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_2189EB2A8(&v84, &v82);
    v49 = sub_219BE3014();

    sub_2189EB304(&v84);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1((v76 + 256), *(v76 + 280));
  v53 = [v16 identifier];
  sub_219BF5414();

  v54 = sub_219BF3414();

  if ((v54 & 1) == 0)
  {
    v78 = v16;
    v55 = [v16 isPaid];
    v56 = v74;
    if (!v55)
    {
      goto LABEL_37;
    }

    v57 = [*(v76 + 312) cachedSubscription];
    if (objc_getAssociatedObject(v57, v57 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v82 = v80;
    v83 = v81;
    if (*(&v81 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v58 = v79;
        v59 = [v79 integerValue];
        if (v59 == -1)
        {

          goto LABEL_37;
        }

        v60 = v59;
        goto LABEL_26;
      }
    }

    else
    {
      sub_218806FD0(&v82);
    }

    v58 = 0;
    v60 = 0;
LABEL_26:
    if (objc_getAssociatedObject(v57, ~v60))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v82 = v80;
    v83 = v81;
    if (*(&v81 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v61 = v79;
        v62 = [v61 integerValue];

        if ((v62 ^ v60))
        {
          goto LABEL_37;
        }

LABEL_35:
        *v56 = v78;
        type metadata accessor for ContinueReadingIneligibilityReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
        swift_allocObject();
        swift_unknownObjectRetain();
        v49 = sub_219BE3014();

        sub_2189EB304(&v84);
        goto LABEL_38;
      }
    }

    else
    {
      sub_218806FD0(&v82);
    }

    if ((v60 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_37:
    v63 = v89;
    *(v56 + 4) = v88;
    *(v56 + 5) = v63;
    *(v56 + 6) = v90;
    *(v56 + 112) = v91;
    v64 = v85;
    *v56 = v84;
    *(v56 + 1) = v64;
    v65 = v87;
    *(v56 + 2) = v86;
    *(v56 + 3) = v65;
    swift_storeEnumTagMultiPayload();
    sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_2189EB2A8(&v84, &v82);
    v49 = sub_219BE3014();

    sub_2189EB304(&v84);
    goto LABEL_38;
  }

  *v74 = v16;
  type metadata accessor for ContinueReadingIneligibilityReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_21874E528(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  v49 = sub_219BE3014();

  sub_2189EB304(&v84);
LABEL_38:
  swift_unknownObjectRelease();
  return v49;
}

uint64_t sub_218A7214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_219BED174();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = sub_219BED1D4();
  v14 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v18 = MEMORY[0x21CECD490](-1);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = sub_2189EB59C;
  v19[5] = v17;
  aBlock[4] = sub_218A72738;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);
  v21 = a5;
  swift_unknownObjectRetain();
  sub_219BED1A4();
  v23[1] = MEMORY[0x277D84F90];
  sub_218A72744();
  sub_21874E528(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v16, v13, v20);
  _Block_release(v20);

  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23[0]);
}

void sub_218A72454(void *a1, void *a2, void (*a3)(id))
{
  v6 = dispatch_group_create();
  sub_219BF60D4();

  v7 = [a1 filePath];
  if (v7)
  {
    v8 = v7;
    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_];

    a3(v19);
  }

  else
  {
    if (qword_280EE6018 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F62700);
    swift_unknownObjectRetain();
    v10 = sub_219BE5414();
    v11 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = [a2 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      v18 = sub_2186D1058(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_2186C1000, v10, v11, "Failed downloading asset handle for Puzzle ID: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    a3(0);
  }
}

uint64_t sub_218A72694(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_218A71528(a1, v1);
}

unint64_t sub_218A72744()
{
  result = qword_280E927E0;
  if (!qword_280E927E0)
  {
    sub_219BED174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E927E0);
  }

  return result;
}

uint64_t sub_218A7279C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218A71170(a1, v4, v5, v6);
}

uint64_t type metadata accessor for SharedWithYouTodayFeedGroupKnobs()
{
  result = qword_280EA4B98;
  if (!qword_280EA4B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A728C4()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218A72974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  sub_2189AE9B4(0);
  v73 = v3;
  v69 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v68 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v66 = v5;
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v70);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v55 - v13;
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v76 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v55 - v17;
  sub_218A738CC(0, &qword_280E8CA10, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A73878();
  v23 = v77;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v12;
  v62 = v20;
  v64 = 0;
  v77 = v8;
  v65 = a1;
  LOBYTE(v83) = 0;
  sub_2186DF950(&qword_280E91A28, sub_2189AE994);
  v25 = v75;
  v26 = v66;
  sub_219BF7674();
  LOBYTE(v83) = 1;
  sub_2186DF950(&qword_280E91868, sub_2189AE9B4);
  v27 = v72;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v83) = 2;
  sub_2186DF950(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v55 = v86;
  LOBYTE(v83) = 3;
  sub_219BF7674();
  v59 = v85;
  LOBYTE(v81) = 4;
  sub_219BF7674();
  v28 = v83;
  v60 = v84;
  LOBYTE(v79) = 5;
  sub_219BF7674();
  v29 = v81;
  v58 = v82;
  LOBYTE(v78) = 6;
  sub_219BF7674();
  v30 = v79;
  v57 = v80;
  v31 = v76;
  sub_2189AF794(v25, v76, sub_2189AF720);
  v32 = *(v74 + 48);
  v33 = v32(v31, 1, v26);
  v56 = v22;
  v63 = v19;
  if (v33 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v34 = v67;
    sub_219BEE974();
    v35 = v32(v76, 1, v26);
    v36 = v61;
    v37 = v74;
    if (v35 != 1)
    {
      sub_2189AF7FC(v76, sub_2189AF720);
    }
  }

  else
  {
    v37 = v74;
    v34 = v67;
    (*(v74 + 32))(v67, v76, v26);
    v36 = v61;
  }

  v38 = v77;
  (*(v37 + 32))(v77, v34, v26);
  sub_2189AF794(v27, v36, sub_2189AF700);
  v39 = v69;
  v40 = *(v69 + 48);
  v41 = v73;
  v42 = v40(v36, 1, v73);
  v43 = v68;
  if (v42 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    v44 = v40(v36, 1, v41);
    v45 = v65;
    v46 = v71;
    v47 = v39;
    if (v44 != 1)
    {
      sub_2189AF7FC(v36, sub_2189AF700);
    }
  }

  else
  {
    (*(v39 + 32))(v68, v36, v41);
    v45 = v65;
    v46 = v71;
    v47 = v39;
  }

  v48 = v70;
  (*(v47 + 32))(v38 + *(v70 + 20), v43, v41);
  v49 = v55;
  if (!v55)
  {
    v78 = 1;
    swift_allocObject();
    v49 = sub_219BEF534();
  }

  v50 = v62;
  *(v38 + v48[6]) = v49;
  v51 = v59;
  if (!v59)
  {
    v78 = 3;
    swift_allocObject();
    v51 = sub_219BEF534();
  }

  sub_2189AF7FC(v72, sub_2189AF700);
  sub_2189AF7FC(v75, sub_2189AF720);
  (*(v50 + 8))(v56, v63);
  *(v38 + v48[7]) = v51;
  v52 = 259200.0;
  if (!v60)
  {
    v52 = v28;
  }

  *(v38 + v48[8]) = v52;
  v53 = 2.0;
  if (!v58)
  {
    v53 = v29;
  }

  *(v38 + v48[9]) = v53;
  v54 = 1.0;
  if (!v57)
  {
    v54 = v30;
  }

  *(v38 + v48[10]) = v54;
  sub_218A73930(v38, v46);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_218A73348(void *a1)
{
  v3 = v1;
  sub_218A738CC(0, &qword_280E8C328, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A73878();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF950(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DF950(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2186F9548();
    sub_2186DF950(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_219BF7834();
    LOBYTE(v14) = 4;
    sub_219BF7814();
    LOBYTE(v14) = 5;
    sub_219BF7814();
    LOBYTE(v14) = 6;
    sub_219BF7814();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218A736A4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x6C6F6F706572;
    if (v1 != 1)
    {
      v4 = 0xD000000000000010;
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
    v2 = 0x5464726163736964;
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

uint64_t sub_218A73798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218A73D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218A737CC(uint64_t a1)
{
  v2 = sub_218A73878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A73808(uint64_t a1)
{
  v2 = sub_218A73878();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218A73878()
{
  result = qword_280EA4BC8[0];
  if (!qword_280EA4BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4BC8);
  }

  return result;
}

void sub_218A738CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A73878();
    v7 = a3(a1, &type metadata for SharedWithYouTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218A73930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_218A73994(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (v4 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs(), (sub_219BEEC64()) && (sub_2186F9548(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for CuratedTagFeedGroupContentTagPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CuratedTagFeedGroupContentTagPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_218A73C18()
{
  result = qword_27CC0D4A8;
  if (!qword_27CC0D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D4A8);
  }

  return result;
}

unint64_t sub_218A73C70()
{
  result = qword_280EA4BB8;
  if (!qword_280EA4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4BB8);
  }

  return result;
}

unint64_t sub_218A73CC8()
{
  result = qword_280EA4BC0;
  if (!qword_280EA4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4BC0);
  }

  return result;
}

uint64_t sub_218A73D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE4240 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5464726163736964 && a2 == 0xEE0074756F656D69 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CE4260 == a2)
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

uint64_t type metadata accessor for SavedFeedFailedBlueprintModifier()
{
  result = qword_27CC0D4B0;
  if (!qword_27CC0D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A73FE4()
{
  result = type metadata accessor for SavedFeedFailedData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218A74050(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v103 = a3;
  v104 = a2;
  v5 = sub_219BE6DF4();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v94 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7511C(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  MEMORY[0x28223BE20](v7);
  v102 = (&v74 - v9);
  sub_218A74F28();
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v99);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SavedFeedSectionDescriptor();
  MEMORY[0x28223BE20](v93);
  v81 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0644();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v74 - v17;
  v18 = type metadata accessor for SavedFeedGapLocation(0);
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A75088();
  v87 = v20;
  v98 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7511C(0, &qword_280EE3668, MEMORY[0x277D6EC60]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  sub_218A75210(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v79 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v74 - v35;
  v37 = v3;
  sub_219BEB244();
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    sub_218A75298(v29, sub_218A75210);
    sub_218A75244();
    v38 = swift_allocError();
    v39 = v101;
    v40 = v102;
    *v102 = v38;
    v41 = v100;
    (*(v39 + 104))(v40, *MEMORY[0x277D6DF68], v100);
    v104(v40);
    return (*(v39 + 8))(v40, v41);
  }

  v43 = *(v32 + 32);
  v97 = v36;
  v43(v36, v29, v31);
  v44 = a1;
  (*(v24 + 16))(v26, a1, v23);
  v45 = v37;
  v76 = *(type metadata accessor for SavedFeedFailedData() + 20);
  v46 = v37 + v76;
  v47 = v86;
  sub_218A2F228(v46, v86);
  v48 = v98;
  v49 = v87;
  v50 = (*(v98 + 48))(v47, 1, v87);
  v78 = v44;
  v85 = v23;
  v77 = v24;
  v84 = v31;
  v82 = v26;
  if (v50 == 1)
  {
    sub_218A75298(v47, type metadata accessor for SavedFeedGapLocation);
LABEL_5:
    v51 = v32;
    swift_storeEnumTagMultiPayload();
    sub_218A752F8(0, &unk_280E8BFC0, sub_218A74FF4, MEMORY[0x277D84560]);
    sub_218A74FF4();
    v53 = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C09BA0;
    sub_218A7535C();
    v56 = *(v55 + 48);
    v57 = v80;
    sub_218A2F228(v45 + v76, v80);
    if (qword_27CC07F48 != -1)
    {
      swift_once();
    }

    v58 = sub_219BF1584();
    v59 = __swift_project_value_buffer(v58, qword_27CCD8578);
    (*(*(v58 - 8) + 16))(v57 + v56, v59, v58);
    swift_storeEnumTagMultiPayload();
    sub_218A753D0(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    sub_219BE5FB4();
    v60 = sub_218A753D0(&qword_280EE5C48, sub_218A74FF4);
    v61 = sub_218A753D0(&unk_280EE5C50, sub_218A74FF4);
    MEMORY[0x21CEB9150](v54, v53, v60, v61);
    sub_218A753D0(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v62 = v79;
    sub_219BE6924();
    sub_219BEB234();
    v63 = v51;
    (*(v51 + 8))(v62, v84);
    v65 = v101;
    v64 = v102;
    goto LABEL_13;
  }

  v74 = v45;
  v75 = v32;
  (*(v48 + 32))(v90, v47, v49);
  sub_219BF0F74();
  (*(v91 + 104))(v88, *MEMORY[0x277D32EF8], v92);
  sub_218A753D0(&qword_280E90ED0, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v107 == v105 && v108 == v106)
  {
    v66 = v92;
    v67 = *(v91 + 8);
    v67(v88, v92);
    v67(v89, v66);
  }

  else
  {
    LODWORD(v86) = sub_219BF78F4();
    v68 = v92;
    v69 = *(v91 + 8);
    v69(v88, v92);
    v69(v89, v68);

    if ((v86 & 1) == 0)
    {
      (*(v98 + 8))(v90, v49);
      v45 = v74;
      v32 = v75;
      goto LABEL_5;
    }
  }

  sub_219BE6944();
  sub_219BEB214();

  (*(v98 + 8))(v90, v49);
  v65 = v101;
  v64 = v102;
  v63 = v75;
LABEL_13:
  v70 = v94;
  v71 = v95;
  v72 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277D6D868], v96);
  sub_218A753D0(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
  sub_218A753D0(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
  sub_218A753D0(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor);
  v73 = v82;
  sub_219BE85E4();
  (*(v71 + 8))(v70, v72);
  v104(v64);
  (*(v65 + 8))(v64, v100);
  (*(v77 + 8))(v73, v85);
  return (*(v63 + 8))(v97, v84);
}

uint64_t sub_218A74DE4(uint64_t a1)
{
  v2 = sub_218A753D0(&qword_27CC0D4D0, type metadata accessor for SavedFeedFailedBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218A74F28()
{
  if (!qword_280EE7520)
  {
    sub_218A74FF4();
    sub_218A753D0(&qword_280EE5C48, sub_218A74FF4);
    sub_218A753D0(&unk_280EE5C50, sub_218A74FF4);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7520);
    }
  }
}

void sub_218A74FF4()
{
  if (!qword_280EE5C40)
  {
    type metadata accessor for SavedFeedModel(255);
    sub_218A753D0(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5C40);
    }
  }
}

void sub_218A75088()
{
  if (!qword_280E90A10)
  {
    type metadata accessor for SavedFeedServiceConfig();
    sub_218A753D0(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
    v0 = sub_219BF0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90A10);
    }
  }
}

void sub_218A7511C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_218A753D0(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_218A753D0(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218A75244()
{
  result = qword_27CC0D4C8;
  if (!qword_27CC0D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D4C8);
  }

  return result;
}

uint64_t sub_218A75298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A752F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218A7535C()
{
  if (!qword_280ECD8E0)
  {
    type metadata accessor for SavedFeedGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ECD8E0);
    }
  }
}

uint64_t sub_218A753D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218A7542C()
{
  result = qword_27CC0D4D8;
  if (!qword_27CC0D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D4D8);
  }

  return result;
}

void sub_218A754A4(void *a1, uint64_t a2)
{
  [a1 setBackgroundColor_];
  [a1 setBackgroundImage_];
  [a1 setShadowColor_];
  [a1 setBackgroundEffect_];
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v4 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  v8 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D743F8];
  v12 = v9;
  v13 = [v10 systemFontOfSize:21.0 weight:v11];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 80) = v13;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21899E604();
  v14 = sub_219BF5204();

  [a1 setTitleTextAttributes_];

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 32) = v6;
  v16 = [v5 clearColor];
  *(v15 + 64) = v8;
  *(v15 + 40) = v16;
  sub_2188195F4(v15);
  swift_setDeallocating();
  sub_21899E5A8(v15 + 32);
  v17 = sub_219BF5204();

  [a1 setLargeTitleTextAttributes_];
}

void sub_218A7575C(void *a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v6 = sub_219BF53D4();

  [a1 setTitle_];

  [a1 setLargeTitleDisplayMode_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v7 configureWithTransparentBackground];
  v8 = [objc_opt_self() clearColor];
  sub_218A754A4(v7, v8);

  v9 = v7;
  [a1 setScrollEdgeAppearance_];
  [a1 setCompactAppearance_];
  [a1 setCompactScrollEdgeAppearance_];

  v10 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v10 configureWithDefaultBackground];
  sub_218A754A4(v10, a2);
  [a1 setStandardAppearance_];
}

uint64_t sub_218A75968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v10 = sub_219BEFA84();
    sub_2188537B8(a1, a2, v10);

    sub_219BDF494();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  (*(*(a4 - 8) + 8))(a3, a4);
  v12 = sub_219BDF4A4();
  v13 = *(*(v12 - 8) + 56);

  return v13(a5, v11, 1, v12);
}

uint64_t sub_218A75A7C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_218A75AE0(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = sub_219BDF7C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF224();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E53D4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_219BDB954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEC1D4();
  v17 = (*(v14 + 48))(v12, 1, v13);
  v36 = v4;
  v37 = v3;
  if (v17 == 1)
  {
    sub_218838478(v12);
LABEL_9:
    sub_219BEC1A4();
    sub_219BDF7B4();
    sub_2186E53D4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v28 = sub_219BDCD44();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x277CEAD18], v28);
    sub_218A76F7C(&qword_280EE8680, MEMORY[0x277D2DD68]);
    v32 = v37;
    sub_219BDCCC4();

    sub_219BE09F4();
    sub_218A76F7C(&qword_27CC0D4F8, MEMORY[0x277D2E9D8]);
    memset(v39, 0, sizeof(v39));
    sub_219BDCCE4();
    sub_218806FD0(v39);
    return (*(v36 + 8))(v6, v32);
  }

  v33 = v7;
  v35 = a2;
  (*(v14 + 32))(v16, v12, v13);
  v18 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
  v19 = sub_219BDB854();
  v20 = [v18 identifierForURL_];

  if (!v20)
  {
LABEL_8:
    (*(v14 + 8))(v16, v13);
    goto LABEL_9;
  }

  sub_219BF5414();

  result = sub_219BEC1B4();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v22 < 2147483650.0)
  {
    sub_219BDF214();
    sub_2186E53D4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v23 = sub_219BDCD44();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    (*(v24 + 104))(v26 + v25, *MEMORY[0x277CEAD18], v23);
    sub_218A76F7C(&qword_27CC0D4E8, MEMORY[0x277D2D998]);
    v27 = v33;
    sub_219BDCCC4();

    (*(v34 + 8))(v9, v27);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_218A761A0(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = sub_219BDF7C4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF224();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E53D4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v63 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDFF14();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BEC184();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = sub_219BDFA74();
  v61 = *(v23 - 8);
  v62 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = COERCE_DOUBLE(sub_219BEC1C4());
  if (v27)
  {
LABEL_18:
    sub_219BEC1D4();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_218838478(v9);
LABEL_26:
      sub_219BEC1A4();
      v47 = v64;
      sub_219BDF7B4();
      sub_2186E53D4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v48 = sub_219BDCD44();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_219C09BA0;
      (*(v49 + 104))(v51 + v50, *MEMORY[0x277CEAD18], v48);
      sub_218A76F7C(&qword_280EE8680, MEMORY[0x277D2DD68]);
      v52 = v66;
      sub_219BDCCC4();

      sub_219BDFF04();
      sub_218A76F7C(&qword_27CC0D4E0, MEMORY[0x277D2E200]);
      memset(v68, 0, 32);
      sub_219BDCCE4();
      sub_218806FD0(v68);
      return (*(v65 + 8))(v47, v52);
    }

    v36 = v63;
    (*(v11 + 32))(v63, v9, v10);
    v37 = [objc_allocWithZone(MEMORY[0x277D55100]) init];
    v38 = sub_219BDB854();
    v39 = [v37 identifierForURL_];

    if (!v39)
    {
LABEL_25:
      (*(v11 + 8))(v36, v10);
      goto LABEL_26;
    }

    sub_219BF5414();

    sub_219BEC1B4();
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v40 > -2147483650.0)
      {
        if (v40 < 2147483650.0)
        {
          v41 = v55;
          sub_219BDF214();
          sub_2186E53D4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
          v42 = sub_219BDCD44();
          v43 = *(v42 - 8);
          v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_219C09BA0;
          (*(v43 + 104))(v45 + v44, *MEMORY[0x277CEAD18], v42);
          sub_218A76F7C(&qword_27CC0D4E8, MEMORY[0x277D2D998]);
          v46 = v57;
          sub_219BDCCC4();

          (*(v56 + 8))(v41, v46);
          goto LABEL_25;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v54 = v11;
  v58 = a2;
  v28 = v26 * 1000.0;
  if (COERCE__INT64(fabs(v26 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_219BEC194();
  (*(v17 + 16))(v20, v22, v16);
  v29 = (*(v17 + 88))(v20, v16);
  if (v29 == *MEMORY[0x277D2D5D0])
  {
    v30 = MEMORY[0x277D2E230];
LABEL_17:
    (*(v17 + 8))(v22, v16);
    (*(v59 + 104))(v15, *v30, v60);
    sub_219BDFA64();
    sub_2186E53D4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v31 = sub_219BDCD44();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C09BA0;
    (*(v32 + 104))(v34 + v33, *MEMORY[0x277CEAD18], v31);
    sub_218A76F7C(&qword_27CC0D4F0, MEMORY[0x277D2DEF0]);
    v35 = v62;
    sub_219BDCCC4();

    (*(v61 + 8))(v25, v35);
    v11 = v54;
    goto LABEL_18;
  }

  if (v29 == *MEMORY[0x277D2D5A8])
  {
    v30 = MEMORY[0x277D2E208];
    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D2D5B0])
  {
    v30 = MEMORY[0x277D2E210];
    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D2D5C0])
  {
    v30 = MEMORY[0x277D2E220];
    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D2D5B8])
  {
    v30 = MEMORY[0x277D2E218];
    goto LABEL_17;
  }

  if (v29 == *MEMORY[0x277D2D5C8])
  {
    v30 = MEMORY[0x277D2E228];
    goto LABEL_17;
  }

LABEL_33:
  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_218A76D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v7 = sub_219BEC1E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1((*v5 + 24), *(*v5 + 48));
  result = sub_219BE0BD4();
  if (result)
  {
    (*(v8 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v12 = swift_allocObject();
    (*(v8 + 32))(v12 + v11, v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_219BDD154();
  }

  return result;
}

uint64_t sub_218A76EF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_219BEC1E4() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_218A76F7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218A77178()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE8664();
  v19 = sub_219BE7BC4();

  [v19 setContentInsetAdjustmentBehavior_];

  sub_219BE9BB4();
  v20 = v2;
  v21 = sub_219BE9BA4();
  if (!v21)
  {
LABEL_8:
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218A794E0(&qword_27CC0D588, v26, type metadata accessor for SportsFavoritesViewController);
    sub_218A794E0(&qword_27CC0D590, v27, type metadata accessor for SportsFavoritesViewController);

    sub_219BEEA54();

    v28 = [v1 traitCollection];
    sub_218A79294();

    return;
  }

  v22 = v21;
  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    [v23 addSubview_];

    v25 = *&v1[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintHorizontalShimView] = v22;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}

void sub_218A77484()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintViewController);

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 reloadData];
  }
}

uint64_t sub_218A77564(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218A79428(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_219BDC104();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_219BEA2C4();
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = sub_219BDC104();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_219BF63E4();

  return sub_218A7947C(v7, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
}

void sub_218A77790()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  sub_219BE8734();
  v14 = *&v0[OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintHorizontalShimView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
}

uint64_t sub_218A779D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_219BE3494();
}

uint64_t sub_218A77A64(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = sub_218A79028;
  v7[4] = v6;

  v8 = a1;

  sub_219BE3494();
}

uint64_t sub_218A77B2C(uint64_t a1, uint64_t (*a2)(double, double))
{
  v4 = sub_219BE8164();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = [v10 collectionViewLayout];

  [v11 collectionViewContentSize];
  v13 = v12;

  result = a2(v9, v13);
  v15 = a1 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_lastComputedSize;
  *v15 = v9;
  *(v15 + 8) = v13;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_218A77D20(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218A77D90(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_218A77E34()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218A77E7C(char a1)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v7 + v8) = a1;
  v9 = MEMORY[0x277D6E3C8];
  if ((a1 & 1) == 0)
  {
    v9 = MEMORY[0x277D6E3C0];
  }

  (*(v4 + 104))(v6, *v9, v3);
  return sub_219BE86C4();
}

void (*sub_218A77F98(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_219BE8FC4();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[5] = v8;
  v9 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin;
  v5[6] = *v1;
  v5[7] = v9;
  swift_beginAccess();
  return sub_218A7808C;
}

void sub_218A7808C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[5];
  }

  else
  {
    v4 = v3[5];
    if (*(v3[6] + v3[7]))
    {
      v5 = MEMORY[0x277D6E3C8];
    }

    else
    {
      v5 = MEMORY[0x277D6E3C0];
    }

    (*(v3[4] + 104))(v3[5], *v5, v3[3]);
    sub_219BE86C4();
  }

  free(v4);

  free(v3);
}

uint64_t sub_218A78154()
{
  sub_218A791D0(0, &qword_27CC0D568, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintLayoutProvider);
  sub_218A791B0(0);
  sub_218A794E0(&qword_27CC0D578, 255, sub_218A791B0);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_218A782C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_218A790EC(0, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_218A790CC(0);
  sub_218A794E0(&qword_27CC0D560, 255, sub_218A790CC);
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_218A78448@<D0>(uint64_t a1@<X8>)
{
  sub_219BE8714();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_218A7947C(v7, &qword_27CC0D548, sub_218A79068);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_218A78534(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);
  v11 = v5;

  v10(sub_218A7905C, v7, ObjectType, v8);
}

uint64_t sub_218A78604(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 48);
  v11 = v5;

  v10(sub_218A7901C, v7, ObjectType, v8);
}

uint64_t sub_218A786D4(uint64_t result, double a2, double a3)
{
  v3 = (result + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_lastComputedSize);
  if ((*(result + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_lastComputedSize + 16) & 1) != 0 || *v3 != a2 || v3[1] != a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_218A794E0(&qword_27CC0D580, v4, type metadata accessor for SportsFavoritesViewController);
      sub_219BE98B4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218A787D4()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

uint64_t sub_218A78840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 tabBarSplitViewFocusable];
  if (v7)
  {
    [v7 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_219BE98C4();
    v10 = v9;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_21953AFBC(a2, a4, v8, v10);
}

uint64_t sub_218A78940(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE8C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8C04();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = sub_219BE98C4();
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_21953AFBC(a2, v6, v7, v9);

  return (*(v4 + 8))(v6, v3);
}

void sub_218A78AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v10) & 1) == 0)
    {
      v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v11 + 48))(nullsub_1, 0, ObjectType, v11);
    }

    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v13 = OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v13) & 1) == 0)
    {
      v14 = *(*(v3 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler) + 40);
      v15 = swift_getObjectType();
      (*(v14 + 32))(nullsub_1, 0, v15, v14);
    }
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 == *MEMORY[0x277D6E978])
    {
      return;
    }

    if (v9 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E958])
    {
      if (v9 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v16 = sub_219BE7BC4();

        [v16 reloadData];
      }

      else
      {
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_218A78D70()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    sub_219BF6C44();
  }
}

uint64_t sub_218A78E18(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_eventHandler);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  result = (*(v5 + 40))(a2, ObjectType, v5);
  if (result)
  {
    v8 = result;
    __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
    v9 = sub_2194E3470(v8);

    return v9;
  }

  return result;
}

unint64_t sub_218A79068()
{
  result = qword_27CC0D550;
  if (!qword_27CC0D550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC0D550);
  }

  return result;
}

void sub_218A790EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesModel();
    v8[2] = sub_2189A3D68();
    v8[3] = sub_218A794E0(&qword_27CC0FAD0, 255, type metadata accessor for SportsFavoritesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A791D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesLayoutSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesLayoutModel();
    v8[2] = sub_218A26E88();
    v8[3] = sub_218A794E0(&qword_27CC0C960, 255, type metadata accessor for SportsFavoritesLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A79294()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setShowsHorizontalScrollIndicator_];
    [v6 setAlwaysBounceHorizontal_];
    [v6 layoutMargins];
    sub_219BF6024();
    [v6 setContentInset_];
    [v6 setScrollsToTop_];
  }

  else
  {
    __break(1u);
  }
}

void sub_218A79428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218A7947C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218A79428(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218A794E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for TagFeedViewerSportsEvent()
{
  result = qword_280EBFED8;
  if (!qword_280EBFED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218A795A4()
{
  result = sub_2186FAF08();
  if (v1 <= 0x3F)
  {
    result = sub_21873F92C();
    if (v2 <= 0x3F)
    {
      result = sub_219BE6424();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_218A79640@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_219BE6114();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v17 - v11);
  *a3 = a1;
  a3[1] = a2;
  sub_219BF4D64();
  swift_unknownObjectRetain_n();
  v13 = a1;
  sub_219BF4D54();
  *v12 = sub_219BF4D34();
  v14 = *MEMORY[0x277D6D4F0];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  *v10 = sub_219BF4D44();
  v15(v10, v14, v6);
  type metadata accessor for TagFeedViewerSportsEvent();
  sub_219BE63F4();

  swift_unknownObjectRelease();
}

uint64_t sub_218A797E8@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v18 = sub_219BE6114();
  MEMORY[0x28223BE20](v18 - 8);
  MEMORY[0x28223BE20](v19);
  sub_219BE63E4();
  v21 = tan(v20 * 3.14159265 / 180.0);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  if (CGRectGetHeight(v28) == 0.0 || (v29.origin.x = a2, v29.origin.y = a3, v29.size.width = a4, v29.size.height = a5, CGRectGetWidth(v29) == 0.0) || (v25 = (*&v21 >> 52) & 0x7FFLL, !(v25 | *&v21 & 0xFFFFFFFFFFFFFLL)) || (*&v21 & 0xFFFFFFFFFFFFFLL) != 0 && v25 == 2047)
  {
    v22 = sub_219BE6424();
    v23 = *(*(v22 - 8) + 16);

    return v23(a1, v9, v22);
  }

  else
  {
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetHeight(v30);
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetHeight(v31);
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetWidth(v32);
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetWidth(v33);
    sub_219BE63E4();
    sub_219BE6404();
    sub_219BE6414();
    return sub_219BE63F4();
  }
}

uint64_t sub_218A79A88(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 64))(v2, v3);
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 24))(v4, v5);
  v6 = sub_219BE2E54();
  v7 = sub_219BE2E34();

  return v7;
}

void sub_218A79B58(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  v12 = v6;

  v7 = v3;
  sub_218A7A190(v4, a2, v7, (v5 + 16), &v12);

  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  (*(v9 + 112))(v12, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v5;

  v11 = sub_219BE2E54();
  sub_219BE3024();
}

uint64_t sub_218A79CC8(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  swift_beginAccess();
  v4 = *(v3 + 80);

  v4(v5, v2, v3);

  sub_218A7A690();
  swift_allocObject();
  a1[9] = sub_219BE1FC4();

  swift_allocObject();
  a1[7] = sub_219BE1FC4();

  swift_allocObject();
  a1[8] = sub_219BE1FC4();
}

uint64_t sub_218A79DE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218A79E5C()
{

  sub_219BE1F94();
}

uint64_t sub_218A79EB0()
{

  sub_219BE1F94();
}

uint64_t sub_218A79F04()
{

  sub_219BE1F94();
}

void sub_218A79F58()
{

  v0 = sub_219BE1FA4();

  if ((v0 & 1) == 0 || (, v1 = sub_219BE1FA4(), , (v1 & 1) == 0) || (, v2 = sub_219BE1FA4(), , (v2 & 1) == 0))
  {
    sub_218A7A0C8();
    sub_219BE3204();
    v3 = sub_219BE2E54();
    sub_219BE2F94();
  }
}

void sub_218A7A0C8()
{
  if (!qword_280E8F2D0)
  {
    sub_218A7A138();
    type metadata accessor for NotificationSettings();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F2D0);
    }
  }
}

void sub_218A7A138()
{
  if (!qword_280E8F2E0)
  {
    type metadata accessor for UserNotification(255);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F2E0);
    }
  }
}

void sub_218A7A190(unint64_t a1, uint64_t a2, uint64_t a3, char **a4, void *a5)
{
  v40 = a5;
  v49 = a3;
  v50 = a4;
  v51 = a2;
  v41 = type metadata accessor for UserNotification.ArticleData(0);
  MEMORY[0x28223BE20](v41);
  v54 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v11 = 0;
    v44 = v9 + 8;
    v45 = OBJC_IVAR___TSNotificationSettings_scheduledDeliverySetting;
    v12 = a1 & 0xC000000000000001;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = v7;
    v48 = a1;
    v46 = i;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v15 = MEMORY[0x21CECE0F0](v11, a1);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_36;
        }

        v15 = *(a1 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_218A7A6E8(&v15[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) < 3)
        {
          goto LABEL_6;
        }

        v14 = type metadata accessor for UserNotification.Kind;
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v14 = type metadata accessor for UserNotification.IssueData;
        }

        else
        {
          v14 = type metadata accessor for UserNotification.Kind;
        }

LABEL_5:
        sub_218A7A7B0(v9, v14);
        goto LABEL_6;
      }

      if (!EnumCaseMultiPayload)
      {
        v19 = v54;
        sub_218A7A74C(v9, v54);
        v21 = *v19;
        v20 = v19[1];
        v52 = *v19;
        v53 = v20;

        v22 = sub_219BE1FB4();

        if (*(v49 + v45) == 2 && (v23 = (v54 + *(v41 + 36)), (v24 = v23[1]) != 0))
        {
          v52 = *v23;
          v53 = v24;

          v39 = sub_219BE1FB4();

          if (((v39 | v22) & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_27:
          v28 = *&v16[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
          v29 = *&v16[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];
          v30 = v50;
          v31 = *v50;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v30 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = sub_218840D24(0, *(v31 + 2) + 1, 1, v31);
            *v50 = v31;
          }

          v34 = *(v31 + 2);
          v33 = *(v31 + 3);
          if (v34 >= v33 >> 1)
          {
            v37 = sub_218840D24((v33 > 1), v34 + 1, 1, v31);
            *v50 = v37;
          }

          sub_218A7A7B0(v54, type metadata accessor for UserNotification.ArticleData);
          v35 = *v50;
          *(v35 + 2) = v34 + 1;
          v36 = &v35[16 * v34];
          *(v36 + 4) = v28;
          *(v36 + 5) = v29;
        }

        else
        {
          if (v22)
          {
            goto LABEL_27;
          }

LABEL_19:
          v52 = v21;
          v53 = v20;

          v25 = sub_219BE1FB4();

          if (v25)
          {
            v16 = v16;
            v26 = v40;
            MEMORY[0x21CECC690]();
            i = v46;
            v13 = v42;
            v12 = v43;
            if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
            }

            sub_219BF5A54();
            sub_218A7A7B0(v54, type metadata accessor for UserNotification.ArticleData);
            v7 = v47;
            a1 = v48;
            goto LABEL_6;
          }

          sub_218A7A7B0(v54, type metadata accessor for UserNotification.ArticleData);
        }

        v7 = v47;
        a1 = v48;
        i = v46;
        v13 = v42;
        v12 = v43;
        goto LABEL_6;
      }

      sub_2187ACC2C();

      v27 = sub_219BDB954();
      (*(*(v27 - 8) + 8))(v9, v27);
LABEL_6:

      ++v11;
      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }
}

void sub_218A7A690()
{
  if (!qword_280EE7C30)
  {
    v0 = sub_219BE1FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7C30);
    }
  }
}

uint64_t sub_218A7A6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A7A74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification.ArticleData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A7A7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A7A810()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9328 = result;
  return result;
}

uint64_t static Settings.Sharing.sharingAlwaysAllowed.getter()
{
  if (qword_280EE9320 != -1)
  {
    swift_once();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_218A7AA58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218A7AAA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218A7AAFC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v107 = a3;
  v105 = a2;
  sub_218A7B970(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = (v86 - v5);
  v112 = type metadata accessor for FollowingModel();
  v6 = MEMORY[0x28223BE20](v112);
  v92 = (v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v111 = v86 - v8;
  sub_218950B84();
  v97 = v9;
  v100 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v91 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = v86 - v13;
  MEMORY[0x28223BE20](v12);
  v110 = v86 - v14;
  sub_218A7B8DC();
  v109 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7B970(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v21 = v20;
  v101 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v106 = v86 - v22;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v86 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v86 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v86 - v38;
  sub_219BEB354();
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_218A7BC58(v25, sub_218A2D984);
    sub_218A7BAA4();
    v40 = swift_allocError();
    v42 = v102;
    v41 = v103;
    *v102 = v40;
    v43 = v104;
    (*(v41 + 104))(v42, *MEMORY[0x277D6DF68], v104);
    v105(v42);
    return (*(v41 + 8))(v42, v43);
  }

  (*(v28 + 32))(v39, v25, v27);
  v45 = *(v101 + 16);
  v90 = a1;
  v89 = v21;
  v86[1] = v101 + 16;
  v86[0] = v45;
  v45(v106, a1, v21);
  v88 = v28;
  v46 = *(v28 + 16);
  v46(v37, v39, v27);
  v93 = v34;
  v98 = v37;
  v46(v34, v37, v27);
  v87 = v39;
  v46(v31, v39, v27);
  sub_2186D55C4(&qword_280EE5768, sub_218950928);
  sub_219BF56A4();
  v47 = *(v109 + 36);
  sub_2186D55C4(&qword_280EE5760, sub_218950928);
  sub_219BF5E84();
  v48 = v27;
  v49 = v97;
  v50 = v95;
  if (*&v17[v47] == v113[0])
  {
LABEL_7:
    sub_218A7BC58(v17, sub_218A7B8DC);
    v57 = 1;
    v58 = v99;
  }

  else
  {
    v108 = (v100 + 16);
    v109 = v100 + 32;
    v51 = (v100 + 8);
    while (1)
    {
      v52 = sub_219BF5EC4();
      v53 = v110;
      (*v108)(v110);
      v52(v113, 0);
      sub_219BF5E94();
      v54 = *v109;
      (*v109)(v50, v53, v49);
      v55 = v50;
      v56 = v111;
      sub_219BE5FC4();
      LODWORD(v52) = swift_getEnumCaseMultiPayload();
      sub_218A7BC58(v56, type metadata accessor for FollowingModel);
      if (v52 == 13)
      {
        break;
      }

      (*v51)(v55, v49);
      sub_219BF5E84();
      v50 = v55;
      if (*&v17[v47] == v113[0])
      {
        goto LABEL_7;
      }
    }

    sub_218A7BC58(v17, sub_218A7B8DC);
    v58 = v99;
    v54(v99, v55, v49);
    v57 = 0;
  }

  v94 = v48;
  v59 = v100;
  (*(v100 + 56))(v58, v57, 1, v49);
  v60 = *v96;
  v61 = (*(v59 + 48))(v58, 1, v49);
  v62 = v102;
  v63 = v89;
  v64 = v106;
  if (v60)
  {
    if (v61 == 1)
    {
      __swift_project_boxed_opaque_existential_1(v96 + 1, *(v96 + 4));
      v65 = sub_219BF4784();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_219BDB5E4();
      v70 = v69;

      type metadata accessor for FollowingButtonModel();
      v71 = swift_allocObject();
      *(v71 + 16) = 0xD000000000000013;
      *(v71 + 24) = 0x8000000219CE4590;
      v64 = v106;
      *(v71 + 32) = v68;
      *(v71 + 40) = v70;
      v58 = v99;
      *(v71 + 48) = v65 & 1;
      *v92 = v71;
      swift_storeEnumTagMultiPayload();
      sub_2186D55C4(&qword_280EDC630, type metadata accessor for FollowingModel);
      v72 = v91;
      sub_219BE5FB4();
      sub_219BE6994();
      (*(v100 + 8))(v72, v97);
LABEL_14:
      sub_219BEB234();
    }
  }

  else if (v61 != 1)
  {
    sub_219BE69C4();
    goto LABEL_14;
  }

  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D55C4(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  if (sub_219BE6E54())
  {
    v73 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A7BB4C();
    v75 = *(v74 + 48);
    v76 = *(v74 + 64);
    (v86[0])(v62, v64, v63);
    sub_218718690(v113, v62 + v75);
    v77 = *MEMORY[0x277D6D868];
    v78 = sub_219BE6DF4();
    (*(*(v78 - 8) + 104))(v62 + v76, v77, v78);
    v73 = MEMORY[0x277D6DF78];
  }

  v80 = v104;
  v79 = v105;
  v81 = v103;
  v82 = v64;
  v83 = v101;
  (*(v103 + 104))(v62, *v73, v104);
  v79(v62);
  (*(v81 + 8))(v62, v80);
  v84 = *(v88 + 8);
  v85 = v94;
  v84(v93, v94);
  v84(v98, v85);
  (*(v83 + 8))(v82, v63);
  v84(v87, v85);
  sub_218A7BC58(v58, sub_218A7BA30);
  return __swift_destroy_boxed_opaque_existential_1(v113);
}

uint64_t sub_218A7B800(uint64_t a1)
{
  v2 = sub_218A7BCB8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218A7B840()
{
  result = qword_27CC0D598;
  if (!qword_27CC0D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D598);
  }

  return result;
}

void sub_218A7B8DC()
{
  if (!qword_280E8D4D0)
  {
    sub_218950928();
    sub_2186D55C4(&qword_280EE5760, sub_218950928);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D4D0);
    }
  }
}

void sub_218A7B970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D55C4(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A7BA50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218A7BAA4()
{
  result = qword_27CC0D5A0;
  if (!qword_27CC0D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D5A0);
  }

  return result;
}

unint64_t sub_218A7BAF8()
{
  result = qword_280ED1478;
  if (!qword_280ED1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1478);
  }

  return result;
}

void sub_218A7BB4C()
{
  if (!qword_280EE3780)
  {
    sub_218A7B970(255, &qword_280EE3760, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE3780);
    }
  }
}

unint64_t sub_218A7BBF4()
{
  result = qword_280EE56E8;
  if (!qword_280EE56E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE56E8);
  }

  return result;
}

uint64_t sub_218A7BC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218A7BCB8()
{
  result = qword_27CC0D5A8;
  if (!qword_27CC0D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D5A8);
  }

  return result;
}

unint64_t sub_218A7BD20()
{
  result = qword_27CC0D5B0;
  if (!qword_27CC0D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D5B0);
  }

  return result;
}

unint64_t sub_218A7BD74(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v27 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() + 20);
  LOBYTE(v35) = 24;
  sub_2189AD5C8();
  v29 = v7;
  v30 = a1;
  v34 = sub_219BEE964();
  sub_218A7F380(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v31 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = (v11 + v10);
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  sub_219BEF134();
  v13 = sub_219BEEDF4();
  v14 = *(v4 + 8);
  v26[1] = v4 + 8;
  v28 = v14;
  v14(v6, v3);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001BLL;
  v36 = 0x8000000219CE4670;
  sub_218A80DA8();
  v15 = sub_219BF5D54();
  MEMORY[0x21CECC330](v15);

  *(swift_allocObject() + 16) = v13;
  sub_218A7F1DC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v16 = *MEMORY[0x277D32308];
  v17 = *(v9 + 104);
  v26[0] = v9 + 104;
  v18 = v12;
  v19 = v12;
  v20 = v31;
  v17(v18, v16, v31);
  sub_219BEF134();
  v21 = sub_219BEEDF4();
  v28(v6, v27);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001ELL;
  v36 = 0x8000000219CE4690;
  v22 = sub_219BF5D54();
  MEMORY[0x21CECC330](v22);

  *(swift_allocObject() + 16) = v21;
  swift_allocObject();
  v23 = sub_219BEFB94();
  v24 = v33;
  *(v19 + v33) = v23;
  v17((v19 + v24), v16, v20);
  v35 = v34;
  sub_2191EDA0C(v32);
  return v35;
}

uint64_t sub_218A7C200(uint64_t a1)
{
  v3 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v22 = v1;
  v23 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter;
  sub_218A80E54(v1, v6, type metadata accessor for SportsEventArticlesTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_218A7EF80(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_218A7F380(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE2F64();

  v11 = v23;
  sub_218A80E54(v1, v6, v23);
  v12 = swift_allocObject();
  sub_218A7EF80(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v14 = v22;
  sub_218A80E54(v22, v6, v11);
  v15 = swift_allocObject();
  sub_218A7EF80(v6, v15 + v7);
  *(v15 + v8) = a1;

  v16 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218A80E54(v14, v6, v11);
  v17 = swift_allocObject();
  sub_218A7EF80(v6, v17 + v7);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_218A7C56C(uint64_t a1, _OWORD *a2)
{
  v4 = v2;
  v7 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v10 = *(v40[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v11 = [v10 backingTag];

  v12 = [v11 asSportsEvent];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = [v12 eventArticleListID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_219BF5414();
      v39[2] = v12;
      v16 = v15;
      v17 = v4;
      v19 = v18;

      v39[3] = v3;
      MEMORY[0x28223BE20](v20);
      v39[-4] = v17;
      v39[-3] = v16;
      v39[-2] = v19;
      sub_218A80AC8();
      v39[1] = sub_219BE3204();
      sub_218A80E54(v17, v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsEventArticlesTagFeedGroupEmitter);
      v21 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = v16;
      *(v23 + 24) = v19;
      sub_218A7EF80(v9, v23 + v21);
      *(v23 + v22) = a1;
      v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
      v25 = a2[3];
      v24[2] = a2[2];
      v24[3] = v25;
      v26 = a2[1];
      *v24 = *a2;
      v24[1] = v26;
      v27 = a2[7];
      v24[6] = a2[6];
      v24[7] = v27;
      v28 = a2[5];
      v24[4] = a2[4];
      v24[5] = v28;

      sub_218A80CA4(a2, v40);
      v29 = sub_219BE2E54();
      sub_218A7F380(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
      a1 = sub_219BE2F74();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      a1 = swift_allocObject();
      *(a1 + 16) = xmmword_219C09BA0;
      v32 = [v12 identifier];
      v33 = sub_219BF5414();
      v35 = v34;

      *(a1 + 56) = MEMORY[0x277D837D0];
      *(a1 + 64) = sub_2186FC3BC();
      *(a1 + 32) = v33;
      *(a1 + 40) = v35;
      sub_219BF6214();
      sub_219BE5314();

      v36 = sub_219BEEDD4();
      sub_218A80E0C(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D32428], v36);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = sub_219BEEDD4();
    sub_218A80E0C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D323E8], v30);
    swift_willThrow();
  }

  return a1;
}

size_t sub_218A7CA98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_218A7F380(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = v28 - v7;
  v28[0] = sub_219BF3C84();
  v8 = *(v28[0] - 8);
  MEMORY[0x28223BE20](v28[0]);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_219BF2034();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v30 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_218A7F380(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v15 = *(sub_219BF3E84() - 8);
  v28[1] = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09BA0;
  v39 = v14;
  if (v14 >> 62)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v35 = a2;
  v33 = v11;
  v34 = a3;
  v32 = v12;
  if (!v16)
  {
LABEL_13:
    sub_218F0B984(v17);
    sub_218F0BA7C(v17);
    sub_218F0BB90(v17);
    sub_219BF3E74();
    v25 = sub_219BEC004();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    sub_219A95188(v17);
    sub_219A95188(v17);
    sub_219A951A0(v17);
    sub_219A951B8(v17);
    sub_219A952CC(v17);
    sub_219A952E4(v17);
    sub_219A953F8(v17);
    v26 = v30;
    sub_219BF2024();
    v27 = sub_218A7CFE8(v34, v26);
    (*(v32 + 8))(v26, v33);
    return v27;
  }

  v40 = MEMORY[0x277D84F90];
  v38 = v16;
  result = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v40;
    v37 = v39 & 0xC000000000000001;
    v36 = *MEMORY[0x277D34128];
    v21 = v28[0];
    do
    {
      if (v37)
      {
        v22 = MEMORY[0x21CECE0F0](v19, v39);
      }

      else
      {
        v22 = swift_unknownObjectRetain();
      }

      *v10 = v22;
      (*(v8 + 104))(v10, v36, v21);
      v40 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C34A88(v23 > 1, v24 + 1, 1);
        v20 = v40;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v10, v21);
    }

    while (v38 != v19);
    v17 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_218A7CFE8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218A7F380(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  sub_218A7F380(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_218A7F380(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v38 = sub_219BF2AB4();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() + 24));
  v20 = v19[3];
  v35 = v19[4];
  v36 = v20;
  v34 = __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_218A7EEB4();
  sub_219BEDD14();
  v33 = *(v16 + 28);
  sub_2189AD5C8();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_219BEF0B4();
  v22 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v23 = sub_219BF35D4();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  LOBYTE(v40) = 24;
  sub_218A7F1DC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v24 = *(v40 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  v25 = v37;
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v12 + 8))(v14, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v18[v28], v30);
  return v29;
}

uint64_t sub_218A7D568(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7D6FC(a1, v7);
  sub_218A80E54(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218A7F380(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218A80EBC(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_218A7D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_218A7F380(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = v19 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED8D4();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  sub_218A7EEB4();
  v15 = sub_219BEDCB4();
  v19[1] = v16;
  v19[2] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v17 = sub_219BEE5D4();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_219BED854();
  (*(v12 + 32))(v22, v14, v20);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218A7DAA0()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_218A7DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 28)), *(a1 + *(v6 + 28) + 24));
  sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  v8 = sub_219BF27C4();

  return v8;
}

uint64_t sub_218A7DC44@<X0>(uint64_t a1@<X1>, void (*a2)(char *, unint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v66 = a5;
  v70 = a3;
  v71 = a1;
  v72 = a2;
  v62 = a6;
  v65 = sub_219BEE6E4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEFBD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &unk_27CC0D5F0);
  sub_218A7F380(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_218A80B84();
  v15 = sub_219BF5234();
  if (!*(v15 + 16) || (v16 = sub_21870F700(v71, v72), (v17 & 1) == 0))
  {

    v30 = sub_219BEEDD4();
    sub_218A80E0C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D32428], v30);
    return swift_willThrow();
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  v19 = v70;
  sub_218A7E538(a4, v18, v66);

  v61 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v19 + *(v61 + 32)), *(v19 + *(v61 + 32) + 24));
  (*(v12 + 104))(v14, *MEMORY[0x277D329C8], v11);
  v20 = sub_219BF0034();

  (*(v12 + 8))(v14, v11);
  v73 = v20;

  sub_218A7F2D8(&v73);
  if (!v6)
  {
    v66 = a4;
    v60[1] = 0;

    v21 = v73;
    v22 = *(v73 + 16);
    if (v22)
    {
      v73 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v23 = v64;
      v25 = v63 + 16;
      v24 = *(v63 + 16);
      v26 = *(v63 + 80);
      v63 = v21;
      v27 = v21 + ((v26 + 32) & ~v26);
      v71 = *(v25 + 56);
      v72 = v24;
      v28 = v65;
      do
      {
        v72(v23, v27, v28);
        sub_219BEE6D4();
        (*(v25 - 8))(v23, v28);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v27 += v71;
        --v22;
      }

      while (v22);

      v29 = v73;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v33 = v70 + *(v61 + 20);
    v34 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
    v35 = v67;
    sub_219BEF134();
    sub_219BEF524();
    v36 = v69;
    v37 = *(v68 + 8);
    v37(v35, v69);
    v72 = v73;
    v38 = *(v33 + *(v34 + 28));
    sub_219BEF134();
    v39 = v38;
    sub_219BEF524();
    v37(v35, v36);
    v41 = v73;
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v40 = v29 & 0xFFFFFFFFFFFFFF8;
      v37 = (v29 >> 62);
      if (!(v29 >> 62))
      {
        v42 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42 >= v73)
        {
          v43 = v73;
        }

        else
        {
          v43 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v73)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        if (v42 >= v44)
        {
          goto LABEL_19;
        }

        goto LABEL_54;
      }
    }

    if (v29 < 0)
    {
      v38 = v29;
    }

    else
    {
      v38 = v40;
    }

    v39 = sub_219BF7214();
    if ((sub_219BF7214() & 0x8000000000000000) == 0)
    {
      if (v39 >= v41)
      {
        v59 = v41;
      }

      else
      {
        v59 = v39;
      }

      if (v39 < 0)
      {
        v59 = v41;
      }

      if (v41)
      {
        v44 = v59;
      }

      else
      {
        v44 = 0;
      }

      if (sub_219BF7214() >= v44)
      {
LABEL_19:
        if ((v29 & 0xC000000000000001) != 0 && v44)
        {
          sub_218731D50();

          v45 = 0;
          do
          {
            v46 = v45 + 1;
            sub_219BF7334();
            v45 = v46;
          }

          while (v44 != v46);
        }

        else
        {
        }

        if (v37)
        {
          v39 = sub_219BF7564();
          v37 = v47;
          v38 = v48;
          v44 = v49;
        }

        else
        {
          v38 = 0;
          v39 = v29 & 0xFFFFFFFFFFFFFF8;
          v37 = ((v29 & 0xFFFFFFFFFFFFFF8) + 32);
          v44 = (2 * v44) | 1;
        }

        v50 = ((v44 >> 1) - v38);
        v51 = v72;
        if (!__OFSUB__(v44 >> 1, v38))
        {
          if (v50 < v72)
          {
            v52 = sub_219BEEDD4();
            sub_218A80E0C(&qword_280E917E0, MEMORY[0x277D32430]);
            swift_allocError();
            *v53 = v51;
            v53[1] = v50;
            (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D32400], v52);
            swift_willThrow();
            return swift_unknownObjectRelease();
          }

          if ((v44 & 1) == 0)
          {
            goto LABEL_32;
          }

          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v57 = swift_dynamicCastClass();
          if (!v57)
          {
            swift_unknownObjectRelease();
            v57 = MEMORY[0x277D84F90];
          }

          v58 = *(v57 + 16);

          if (v58 == v50)
          {
            v55 = swift_dynamicCastClass();
            result = swift_unknownObjectRelease_n();
            v56 = v62;
            if (v55)
            {
LABEL_39:
              *v56 = v55;
              return result;
            }

            v55 = MEMORY[0x277D84F90];
LABEL_38:
            result = swift_unknownObjectRelease();
            goto LABEL_39;
          }

LABEL_56:
          swift_unknownObjectRelease_n();
LABEL_32:
          sub_218B667DC(v39, v37, v38, v44);
          v55 = v54;
          v56 = v62;
          goto LABEL_38;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_218A7E4AC(uint64_t *a1, void *a2, id *a3, uint64_t *a4)
{
  v6 = *a4;
  result = [*a3 identifier];
  if (result)
  {
    v8 = result;
    v9 = sub_219BF5414();
    v11 = v10;

    *a1 = v9;
    a1[1] = v11;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218A7E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = sub_219BDBD34();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  v34 = v3;
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v12 = LOBYTE(v37[0]);
  sub_219BEF134();
  sub_219BEF524();
  v11(v10, v7);
  if (v12 != 1)
  {
    i = v36;

    goto LABEL_6;
  }

  v13 = v37[0];
  v14 = sub_219BDBD24();
  MEMORY[0x28223BE20](v14);
  *(&v30 - 2) = v13;
  *(&v30 - 1) = v6;
  v15 = v36;

  v16 = sub_2195EB294(sub_218A80D00, &v30 - 4, v15);
  if (v16 >> 62)
  {
    goto LABEL_10;
  }

  sub_219BF7924();
  sub_218731D50();
  for (i = v16; ; i = sub_219BF7534())
  {

    (*(v31 + 8))(v6, v32);
LABEL_6:
    sub_219BEF0B4();
    v18 = *(v37[5] + 64);
    swift_unknownObjectRetain();

    v34 = *(v34 + *(v33 + 36));
    v19 = *(v35 + 88);
    v20 = *(v19 + 16);
    if (!v20)
    {
      break;
    }

    v36 = i;
    v21 = sub_21947D1C0(v20, 0);
    v22 = sub_2194ABD64(v37, v21 + 4, v20, v19);
    v6 = v37[0];

    sub_21892DE98();
    if (v22 == v20)
    {
      break;
    }

    __break(1u);
LABEL_10:
    sub_218731D50();
  }

  v23 = objc_opt_self();
  v24 = sub_219BF5904();

  v25 = [v23 transformationWithFilterOptions:0x20002013ELL configuration:v18 context:v34 otherArticleIDs:v24];
  swift_unknownObjectRelease();

  sub_218731D50();
  v26 = sub_219BF5904();

  v27 = [v25 transformHeadlines_];

  v28 = sub_219BF5924();
  return v28;
}

uint64_t sub_218A7E98C()
{
  sub_218A80D28();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A7E9F8@<X0>(uint64_t *a1@<X8>)
{
  sub_218A7EEB4();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x5000000000000006;
  return result;
}

uint64_t sub_218A7EA78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  a2[4] = sub_218A80E0C(qword_280E9A768, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  a2[5] = sub_218A80E0C(&qword_27CC0D600, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218A80E54(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
}

uint64_t sub_218A7EB40()
{
  sub_218A7EEB4();

  return sub_219BEDCA4();
}

uint64_t sub_218A7EB6C@<X0>(uint64_t *a1@<X8>)
{
  sub_218A7F380(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218A7EEB4();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A80EBC(inited + 32, sub_2188317B0);
  sub_218A7F380(0, &qword_27CC0D608, type metadata accessor for SportsEventArticlesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218A80F1C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218A7ECDC()
{
  sub_218A80E0C(&unk_27CC0D5D0, type metadata accessor for SportsEventArticlesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t type metadata accessor for SportsEventArticlesTagFeedGroupEmitter()
{
  result = qword_280E97F30;
  if (!qword_280E97F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A7EEB4()
{
  if (!qword_280E92030)
  {
    type metadata accessor for SportsEventArticlesTagFeedGroupConfigData();
    sub_218A80E0C(&unk_280E952D0, type metadata accessor for SportsEventArticlesTagFeedGroupConfigData);
    sub_218A80E0C(&qword_280E952E0, type metadata accessor for SportsEventArticlesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92030);
    }
  }
}

uint64_t sub_218A7EF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventArticlesTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A7EFE4(_OWORD *a1)
{
  v3 = *(type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return sub_218A7C56C(v4, v10);
}

size_t sub_218A7F0AC(unint64_t *a1)
{
  v3 = *(type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218A7CA98(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218A7F1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_218A7F2D8(void **a1)
{
  v2 = *(sub_219BEE6E4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C811AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_218A7F70C(v6);
  *a1 = v3;
  return result;
}

void sub_218A7F380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A7F3E4(void *a1, uint64_t a2)
{
  v25 = a2;
  sub_218A7F380(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_219BDBD34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  if ([a1 respondsToSelector_])
  {
    v19 = [a1 globalExpirationTime];
    if (v19)
    {
      v20 = v19;
      sub_219BDBCA4();

      (*(v13 + 56))(v6, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v6, 1, 1, v12);
    }

    sub_218A5DD60(v6, v9);
    sub_218A5DD60(v9, v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v18, v11, v12);
      sub_219BDBC34();
      sub_218A80E0C(&qword_280EE9C90, MEMORY[0x277CC9578]);
      v22 = sub_219BF5334();
      v23 = *(v13 + 8);
      v23(v16, v12);
      v23(v18, v12);
      v21 = v22 ^ 1;
      return v21 & 1;
    }

    sub_2189DD39C(v11);
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_218A7F70C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BEE6E4();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BEE6E4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_218A7FAD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_218A7F838(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218A7F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BEE6E4();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_219BEE6B4();
      v28 = v27;
      sub_219BEE6B4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218A7FAD8(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_219BEE6E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_218C81048(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_218A804E8(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_218C81048(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_218C80FBC(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_219BEE6B4();
      v31 = v30;
      sub_219BEE6B4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_219BEE6B4();
        v42 = v41;
        sub_219BEE6B4();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v33 < v31)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_2191F6B60(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_2191F6B60((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_127;
        }

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_218A804E8(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_218C80FBC(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_219BEE6B4();
    v109 = v108;
    sub_219BEE6B4();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_218A804E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_219BEE6E4();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_219BEE6B4();
          v49 = v48;
          sub_219BEE6B4();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_219BEE6B4();
        v29 = v28;
        sub_219BEE6B4();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_2189F1924(&v68, &v67, &v66);
  return 1;
}

void sub_218A80AC8()
{
  if (!qword_27CC20D70)
  {
    sub_2186C6148(255, &unk_27CC0D5F0);
    sub_218A7F380(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    sub_218A80B84();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20D70);
    }
  }
}

unint64_t sub_218A80B84()
{
  result = qword_27CC20D80;
  if (!qword_27CC20D80)
  {
    sub_2186C6148(255, &unk_27CC0D5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D80);
  }

  return result;
}

uint64_t sub_218A80BEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218A7DC44(*(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

void sub_218A80D28()
{
  if (!qword_280EE6910)
  {
    sub_2189D2C8C(255, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6910);
    }
  }
}

unint64_t sub_218A80DA8()
{
  result = qword_280E90560;
  if (!qword_280E90560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90560);
  }

  return result;
}

uint64_t sub_218A80E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218A80E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A80EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218A80F1C()
{
  result = qword_27CC0D610;
  if (!qword_27CC0D610)
  {
    sub_218A7F380(255, &qword_27CC0D608, type metadata accessor for SportsEventArticlesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D610);
  }

  return result;
}

void sub_218A80FCC()
{
  sub_218A7EEB4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &unk_280E90370);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280E910C0);
          if (v4 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8E6C0);
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

uint64_t sub_218A810F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_218A8341C();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A85C7C(0, &qword_280E8C910, sub_218A857D0, &type metadata for SportsScoreSortingMatchEventFilter.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A857D0();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    sub_218A834B0();
    sub_218A85448(&unk_280E8FEB0, sub_218A834B0);
    sub_219BF7764();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v21, v15);
    sub_218A85B6C(v12, v17, type metadata accessor for SportsScoreSortingMatchEventFilter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A813F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617453746E657665 && a2 == 0xED00007365737574)
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

uint64_t sub_218A81488(uint64_t a1)
{
  v2 = sub_218A857D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A814C4(uint64_t a1)
{
  v2 = sub_218A857D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A81518(void *a1)
{
  sub_218A85C7C(0, &qword_280E8C2A8, sub_218A857D0, &type metadata for SportsScoreSortingMatchEventFilter.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A857D0();
  sub_219BF7B44();
  sub_218A834B0();
  sub_218A85448(&unk_280E8FEB0, sub_218A834B0);
  sub_219BF7854();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A816C4()
{
  sub_218A834B0();
  sub_218A85448(&unk_280E8FEB0, sub_218A834B0);
  sub_218A85740();

  return sub_219BF2694();
}

uint64_t sub_218A8175C()
{
  sub_219BF7314();

  strcpy(v4, "eventStatuses=");
  sub_218A8341C();
  sub_219BF2664();
  sub_218A8363C();
  v0 = sub_219BF5D54();
  v2 = v1;

  MEMORY[0x21CECC330](v0, v2);

  return v4[0];
}

uint64_t sub_218A81828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13[0] = a4;
  v14 = a5;
  sub_218A85C7C(0, &qword_280E8C2A0, sub_218A85A1C, &type metadata for SportsScoreSortingMatchRangeFilter.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A85A1C();
  sub_219BF7B44();
  v16 = 0;
  v11 = v13[1];
  sub_219BF77B4();
  if (!v11)
  {
    v15 = 1;
    sub_219BF77B4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_218A819D0()
{
  if (*v0)
  {
    return 0x7265707075;
  }

  else
  {
    return 0x7265776F6CLL;
  }
}

uint64_t sub_218A819FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265776F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265707075 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_218A81AD0(uint64_t a1)
{
  v2 = sub_218A85A1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A81B0C(uint64_t a1)
{
  v2 = sub_218A85A1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A81B48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_218A85824(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_218A81BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_218A81C28(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = 1701736302;
  sub_219BF7314();

  if (a2)
  {
    v7 = 0xE400000000000000;
    v8 = 1701736302;
  }

  else
  {
    v8 = sub_219BF5CA4();
    v7 = v9;
  }

  MEMORY[0x21CECC330](v8, v7);

  MEMORY[0x21CECC330](0x3D7265707075202CLL, 0xE800000000000000);
  if (a4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v6 = sub_219BF5CA4();
    v10 = v11;
  }

  MEMORY[0x21CECC330](v6, v10);

  return 0x3D7265776F6CLL;
}

uint64_t sub_218A81D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

uint64_t sub_218A81DE4(uint64_t a1)
{
  v2 = sub_218A85A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A81E20(uint64_t a1)
{
  v2 = sub_218A85A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A81E5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_218A85C7C(0, &qword_27CC0D630, sub_218A85A70, &type metadata for SportsScoreSortingMatchTodayFilter.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A85A70();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_219BF76C4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v12 & 1;
  return result;
}

uint64_t sub_218A82014(void *a1)
{
  sub_218A85C7C(0, &qword_27CC0D640, sub_218A85A70, &type metadata for SportsScoreSortingMatchTodayFilter.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A85A70();
  sub_219BF7B44();
  sub_219BF77C4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A82180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_218A821B4()
{
  if (*(v0 + 8))
  {
    v1 = 0xE400000000000000;
    v2 = 1701736302;
  }

  else
  {
    sub_218A83690();
    v2 = sub_219BF70A4();
    v1 = v3;
  }

  MEMORY[0x21CECC330](v2, v1);

  return 0x3D74657366666FLL;
}

uint64_t sub_218A82244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A85C7C(0, &qword_280E8CB80, sub_218A85AC4, &type metadata for SportsScoreSortingMatchFilter.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for SportsScoreSortingMatchFilter(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A85AC4();
  v14 = v31;
  sub_219BF7B34();
  if (!v14)
  {
    v26 = v11;
    v15 = v29;
    v16 = v30;
    v31 = v8;
    v37 = 0;
    sub_218A85B18();
    sub_219BF7734();
    if (v32 > 2u)
    {
      if (v32 != 3)
      {
        v20 = v28;
        (*(v15 + 8))(v7, v5);
        swift_storeEnumTagMultiPayload();
LABEL_12:
        sub_218A85B6C(v13, v20, type metadata accessor for SportsScoreSortingMatchFilter);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v15 + 8))(v7, v5);
    }

    else if (v32)
    {
      if (v32 != 1)
      {
        v37 = 1;
        sub_218A85BD4();
        sub_219BF76E4();
        (*(v15 + 8))(v7, v5);
        v22 = v32;
        v23 = v33;
        v24 = v34;
        if (v34)
        {
          v22 = 0;
        }

        v25 = v26;
        *v26 = v22;
        *(v25 + 8) = (v24 | v23) & 1;
        swift_storeEnumTagMultiPayload();
        sub_218A85B6C(v25, v13, type metadata accessor for SportsScoreSortingMatchFilter);
        v20 = v28;
        goto LABEL_12;
      }

      v37 = 1;
      sub_218A85C28();
      sub_219BF7734();
      (*(v15 + 8))(v7, v5);
      v17 = v33;
      v18 = v35;
      v19 = v36;
      *v13 = v32;
      v13[8] = v17;
      *(v13 + 2) = v18;
      v13[24] = v19;
    }

    else
    {
      LOBYTE(v32) = 1;
      sub_218A85448(&qword_280E9EA38, type metadata accessor for SportsScoreSortingMatchEventFilter);
      sub_219BF7734();
      (*(v15 + 8))(v7, v5);
      sub_218A85B6C(v16, v13, type metadata accessor for SportsScoreSortingMatchEventFilter);
    }

    swift_storeEnumTagMultiPayload();
    v20 = v28;
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A82794(void *a1)
{
  v2 = v1;
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched);
  v27 = &matched - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](v5);
  v7 = &matched - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A85C7C(0, &qword_280E8C3E0, sub_218A85AC4, &type metadata for SportsScoreSortingMatchFilter.CodingKeys, MEMORY[0x277D84538]);
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &matched - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A85AC4();
  sub_219BF7B44();
  sub_218A85490(v2, v7, type metadata accessor for SportsScoreSortingMatchFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v19 = 3;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = 5;
    }

    LOBYTE(v30) = v19;
    v34 = 0;
    sub_218A85CE4();
    sub_219BF7834();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v13 = v9;
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *v7;
        v15 = v7[8];
        v16 = *(v7 + 2);
        v17 = v7[24];
        LOBYTE(v30) = 1;
        v34 = 0;
        sub_218A85CE4();
        v18 = v28;
        sub_219BF7834();
        if (v18)
        {
          return (*(v29 + 8))(v11, v13);
        }

        v30 = v14;
        v31 = v15;
        v32 = v16;
        v33 = v17;
        v34 = 1;
        sub_218A85D8C();
      }

      else
      {
        v22 = *v7;
        v23 = v7[8];
        LOBYTE(v30) = 2;
        v34 = 0;
        sub_218A85CE4();
        v24 = v28;
        sub_219BF7834();
        if (v24 || (v23 & 1) != 0)
        {
          return (*(v29 + 8))(v11, v13);
        }

        v30 = v22;
        v31 = 0;
        v34 = 1;
        sub_218A85D38();
      }

      sub_219BF7834();
      return (*(v29 + 8))(v11, v13);
    }

    v20 = v27;
    sub_218A85B6C(v7, v27, type metadata accessor for SportsScoreSortingMatchEventFilter);
    LOBYTE(v30) = 0;
    v34 = 0;
    sub_218A85CE4();
    v21 = v28;
    sub_219BF7834();
    if (!v21)
    {
      LOBYTE(v30) = 1;
      sub_218A85448(&qword_280E9EA40, type metadata accessor for SportsScoreSortingMatchEventFilter);
      sub_219BF7834();
    }

    sub_218A853E8(v20, type metadata accessor for SportsScoreSortingMatchEventFilter);
  }

  return (*(v29 + 8))(v11, v9);
}

uint64_t sub_218A82C08@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218A82C68@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_218A82D7C(uint64_t a1)
{
  v2 = sub_218A85AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A82DB8(uint64_t a1)
{
  v2 = sub_218A85AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A82E08()
{
  sub_219BF5524();
}

uint64_t sub_218A82EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218A8643C();
  *a1 = result;
  return result;
}

void sub_218A82F28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xE900000000000067;
  v6 = 0x6E69776F6C6C6F66;
  v7 = 0x6465727574616566;
  if (v2 != 4)
  {
    v7 = 0x676E69726F766166;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0x65676E6172;
  if (v2 != 1)
  {
    v8 = 0x7961646F74;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_218A830C4()
{
  v1 = v0;
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A85490(v1, v7, type metadata accessor for SportsScoreSortingMatchFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x6E69776F6C6C6F66;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6465727574616566;
    }

    else
    {
      return 0x676E69726F766166;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = v7[8];
      v11 = *(v7 + 2);
      v12 = v7[24];
      v28 = 0x2865676E6172;
      v29 = 0xE600000000000000;
      LOBYTE(v27[0]) = v10;
      LOBYTE(v26) = v12;
      v13 = sub_218A81C28(v9, v10, v11, v12);
    }

    else
    {
      v20 = *v7;
      v21 = v7[8];
      v28 = 0x287961646F74;
      v29 = 0xE600000000000000;
      strcpy(v27, "offset=");
      v27[1] = 0xE700000000000000;
      if (v21)
      {
        v22 = 0xE400000000000000;
        v23 = 1701736302;
      }

      else
      {
        v26 = v20;
        sub_218A83690();
        v23 = sub_219BF70A4();
        v22 = v24;
      }

      MEMORY[0x21CECC330](v23, v22);

      v13 = v27[0];
      v14 = v27[1];
    }

    MEMORY[0x21CECC330](v13, v14);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    return v28;
  }

  else
  {
    sub_218A85B6C(v7, v4, type metadata accessor for SportsScoreSortingMatchEventFilter);
    v28 = 0x28746E657665;
    v29 = 0xE600000000000000;
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_219BF7314();

    strcpy(v27, "eventStatuses=");
    HIBYTE(v27[1]) = -18;
    sub_218A8341C();
    sub_219BF2664();
    sub_218A8363C();
    v16 = sub_219BF5D54();
    v18 = v17;

    MEMORY[0x21CECC330](v16, v18);

    MEMORY[0x21CECC330](v27[0], v27[1]);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v19 = v28;
    sub_218A853E8(v4, type metadata accessor for SportsScoreSortingMatchEventFilter);
    return v19;
  }
}

void sub_218A8341C()
{
  if (!qword_280E903F0)
  {
    sub_218A834B0();
    sub_218A85448(&unk_280E8FEB0, sub_218A834B0);
    v0 = sub_219BF26A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E903F0);
    }
  }
}

void sub_218A834B0()
{
  if (!qword_280E8FEA8)
  {
    sub_218A83540();
    sub_218A83594();
    sub_218A835E8();
    sub_218A8363C();
    v0 = sub_219BF4304();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FEA8);
    }
  }
}

unint64_t sub_218A83540()
{
  result = qword_280EAEB30;
  if (!qword_280EAEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB30);
  }

  return result;
}

unint64_t sub_218A83594()
{
  result = qword_280EAEB18;
  if (!qword_280EAEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB18);
  }

  return result;
}

unint64_t sub_218A835E8()
{
  result = qword_280EAEB40;
  if (!qword_280EAEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB40);
  }

  return result;
}

unint64_t sub_218A8363C()
{
  result = qword_280EAEB38;
  if (!qword_280EAEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB38);
  }

  return result;
}

unint64_t sub_218A83690()
{
  result = qword_280E8FC78;
  if (!qword_280E8FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC78);
  }

  return result;
}

unint64_t sub_218A83724(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_219BF3FB4();
  v6 = result;
  if (result >> 62)
  {
LABEL_25:
    result = sub_219BF7214();
    v7 = result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v8 = 0;
  v9 = *(a2 + *a3);
  v10 = v9 + 56;
  v21 = v7;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      a3 = MEMORY[0x21CECE0F0](v8, v6);
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      a3 = *(v6 + 32 + 8 * v8);
      swift_unknownObjectRetain();
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v12 = [a3 identifier];
    v13 = sub_219BF5414();
    a2 = v14;

    if (*(v9 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v15 = sub_219BF7AE4();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      if ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        break;
      }
    }

LABEL_4:

    result = swift_unknownObjectRelease();
    if (v8 == v21)
    {
      v7 = 0;
      goto LABEL_22;
    }
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(v9 + 48) + 16 * v17);
    v20 = *v19 == v13 && v19[1] == a2;
    if (v20 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  swift_unknownObjectRelease();
  v7 = 1;
LABEL_22:

  return v7;
}

uint64_t sub_218A8394C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_219BF4AC4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v40 - v13;
  v15 = *a1;
  sub_219BF3FA4();
  LOBYTE(a1) = sub_219BF4A84();
  v16 = v14;
  v17 = *(v6 + 8);
  v17(v16, v5);
  v45 = v2;
  v42 = v5;
  v43 = a2;
  v40[1] = v15;
  v41 = v9;
  v40[0] = v17;
  if (a1)
  {
    sub_218A8341C();
    sub_219BF2664();
    v18 = v44;
    if (*(v44 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v19 = sub_219BF7AE4();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        do
        {
          v23 = *(*(v18 + 48) + v21);
          if (v23 != 1 && v23 != 2)
          {
            goto LABEL_31;
          }

          v24 = sub_219BF78F4();

          if (v24)
          {
LABEL_30:
            v38 = 1;
            goto LABEL_32;
          }

          v21 = (v21 + 1) & v22;
        }

        while (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
      }
    }

    v5 = v42;
    v9 = v41;
    v17 = v40[0];
  }

  sub_219BF3FA4();
  v25 = sub_219BF4A74();
  v17(v12, v5);
  if (v25)
  {
    sub_218A8341C();
    sub_219BF2664();
    v26 = v44;
    if (*(v44 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v27 = sub_219BF7AE4();
      v28 = -1 << *(v26 + 32);
      v29 = v27 & ~v28;
      if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (!*(*(v26 + 48) + v29) || *(*(v26 + 48) + v29) == 2)
        {
          v31 = sub_219BF78F4();

          if (v31)
          {
            goto LABEL_30;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_31;
      }
    }

LABEL_18:

    v5 = v42;
    v9 = v41;
    v17 = v40[0];
  }

  sub_219BF3FA4();
  v32 = sub_219BF4A94();
  v17(v9, v5);
  if (v32)
  {
    sub_218A8341C();
    sub_219BF2664();
    v33 = v44;
    if (!*(v44 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v34 = sub_219BF7AE4(), v35 = -1 << *(v33 + 32), v36 = v34 & ~v35, ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
    {
      v38 = 0;
LABEL_32:

      return v38 & 1;
    }

    v37 = ~v35;
    while (!*(*(v33 + 48) + v36) || *(*(v33 + 48) + v36) == 1)
    {
      v38 = sub_219BF78F4();

      if ((v38 & 1) == 0)
      {
        v36 = (v36 + 1) & v37;
        if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          continue;
        }
      }

      goto LABEL_32;
    }

LABEL_31:

    v38 = 1;
    goto LABEL_32;
  }

  v38 = 0;
  return v38 & 1;
}

uint64_t sub_218A83E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF4AC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_218A853E8(v5, sub_2186DCF58);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    sub_218A85448(&qword_280EE9C90, MEMORY[0x277CC9578]);
    if (sub_219BF5334())
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_219BF5334() ^ 1;
    }

    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t sub_218A84128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v16[3] = a2;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF4AC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_218A853E8(v5, sub_2186DCF58);
    v14 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    v14 = sub_219BDBF14();
    (*(v11 + 8))(v13, v10);
  }

  return v14 & 1;
}

uint64_t sub_218A84380(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsScoreSortingMatchFilter(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v35 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  sub_218A856DC();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[*(v17 + 56)];
  sub_218A85490(a1, v19, type metadata accessor for SportsScoreSortingMatchFilter);
  sub_218A85490(a2, v20, type metadata accessor for SportsScoreSortingMatchFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = swift_getEnumCaseMultiPayload();
      v28 = type metadata accessor for SportsScoreSortingMatchFilter;
      if (v29 != 3)
      {
        goto LABEL_20;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v27 = swift_getEnumCaseMultiPayload();
      v28 = type metadata accessor for SportsScoreSortingMatchFilter;
      if (v27 != 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = swift_getEnumCaseMultiPayload();
      v28 = type metadata accessor for SportsScoreSortingMatchFilter;
      if (v32 != 5)
      {
        goto LABEL_20;
      }
    }

LABEL_27:
    v33 = 1;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218A85490(v19, v13, type metadata accessor for SportsScoreSortingMatchFilter);
      v22 = *v13;
      v23 = v13[2];
      v24 = *(v13 + 24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *(v20 + 8);
        v26 = *(v20 + 24);
        if (v13[1])
        {
          if (!*(v20 + 8))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v22 != *v20)
          {
            v25 = 1;
          }

          if (v25)
          {
            goto LABEL_32;
          }
        }

        if (v24)
        {
          goto LABEL_26;
        }

        v31 = v23 == *(v20 + 16);
LABEL_29:
        if (!v31)
        {
          v26 = 1;
        }

        v28 = type metadata accessor for SportsScoreSortingMatchFilter;
        if (v26)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_218A85490(v19, v10, type metadata accessor for SportsScoreSortingMatchFilter);
      v30 = *v10;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v26 = *(v20 + 8);
        if (v10[8])
        {
LABEL_26:
          v28 = type metadata accessor for SportsScoreSortingMatchFilter;
          if ((v26 & 1) == 0)
          {
LABEL_32:
            v33 = 0;
            v28 = type metadata accessor for SportsScoreSortingMatchFilter;
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        v31 = v30 == *v20;
        goto LABEL_29;
      }
    }
  }

  else
  {
    sub_218A85490(v19, v15, type metadata accessor for SportsScoreSortingMatchFilter);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_218A85B6C(v20, v6, type metadata accessor for SportsScoreSortingMatchEventFilter);
      sub_218A834B0();
      sub_218A85448(&unk_280E8FEB0, sub_218A834B0);
      sub_218A85740();
      v33 = sub_219BF2694();
      sub_218A853E8(v6, type metadata accessor for SportsScoreSortingMatchEventFilter);
      sub_218A853E8(v15, type metadata accessor for SportsScoreSortingMatchEventFilter);
      v28 = type metadata accessor for SportsScoreSortingMatchFilter;
      goto LABEL_33;
    }

    sub_218A853E8(v15, type metadata accessor for SportsScoreSortingMatchEventFilter);
  }

LABEL_20:
  v33 = 0;
  v28 = sub_218A856DC;
LABEL_33:
  sub_218A853E8(v19, v28);
  return v33 & 1;
}

void *sub_218A8480C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v19[0] = a5;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  if (a2)
  {
    sub_219BDBBB4();
    if ((a4 & 1) == 0)
    {
LABEL_3:
      sub_219BDBBF4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_219BDBBF4();
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_219BDBBD4();
LABEL_6:
  v14 = sub_219BDBC24();
  if (v14)
  {
    MEMORY[0x28223BE20](v14);
    v19[-2] = v13;
    v19[-1] = v11;
    v15 = v19[0];

    v16 = sub_2195EB2C4(sub_218A853C8, &v19[-4], v15);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v8 + 8);
  v17(v11, v7);
  v17(v13, v7);
  return v16;
}

void *sub_218A84A04(uint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBF74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v30 = sub_219BDBF94();
  v18 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  if (a2)
  {
    (*(v6 + 16))(v17, v29 + OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_nowDate, v5);
    (*(v6 + 56))(v17, 0, 1, v5);
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CC9968], v8);
    sub_219BDBF04();
    (*(v9 + 8))(v11, v8);
  }

  sub_218A85490(v17, v15, sub_2186DCF58);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_218A853E8(v15, sub_2186DCF58);
    sub_218A853E8(v17, sub_2186DCF58);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = v27;
    v23 = (*(v6 + 32))(v27, v15, v5);
    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v20;
    *(&v26 - 1) = v22;
    v24 = v28;

    v21 = sub_2195EB2C4(sub_218A854F8, &v26 - 4, v24);
    sub_218A853E8(v17, sub_2186DCF58);
    (*(v6 + 8))(v22, v5);
  }

  (*(v18 + 8))(v20, v30);
  return v21;
}

void *sub_218A84E44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = 0;
  matched = type metadata accessor for SportsScoreSortingMatchEventFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A85490(a1, v11, type metadata accessor for SportsScoreSortingMatchFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v13 = *v11;
        v14 = *(v11 + 2);
        v15 = v11[24];
        LOBYTE(v39) = v11[8];
        LOBYTE(v38) = v15;
        return sub_218A8480C(v13, v39, v14, v15, v37);
      }

      else
      {
        return sub_218A84A04(*v11, v11[8], v37, a3);
      }
    }

    else
    {
LABEL_20:
      v20 = sub_218A85B6C(v11, v8, type metadata accessor for SportsScoreSortingMatchEventFilter);
      MEMORY[0x28223BE20](v20);
      *(&v35 - 2) = v8;
      v21 = v37;

      v22 = sub_2195EB2C4(sub_218A853A8, &v35 - 4, v21);
      sub_218A853E8(v8, type metadata accessor for SportsScoreSortingMatchEventFilter);
      return v22;
    }
  }

  v36 = a3;
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v39 = MEMORY[0x277D84F90];
      if (v37 >> 62)
      {
        v5 = sub_219BF7214();
        if (!v5)
        {
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v5 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          return MEMORY[0x277D84F90];
        }
      }

      v17 = 0;
      v18 = v37 & 0xC000000000000001;
      v19 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v11 = MEMORY[0x21CECE0F0](v17, v37);
          a3 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
          if (v17 >= *(v19 + 16))
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            v11 = sub_219BF7214();
            if (!v11)
            {
              return MEMORY[0x277D84F90];
            }

LABEL_23:
            v23 = 0;
            v24 = v37 & 0xC000000000000001;
            v25 = v37 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v24)
              {
                v26 = MEMORY[0x21CECE0F0](v23, v37);
                v27 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
                  goto LABEL_34;
                }
              }

              else
              {
                if (v23 >= *(v25 + 16))
                {
                  goto LABEL_51;
                }

                v26 = *(v37 + 8 * v23 + 32);

                v27 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
LABEL_34:
                  __break(1u);
                  return sub_218A84A04(*v11, v11[8], v37, a3);
                }
              }

              v38 = v26;
              v28 = sub_218A83724(&v38, a3, &OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_subscribedTagIDs);
              if (v5)
              {
                break;
              }

              if (v28)
              {
                sub_219BF73D4();
                sub_219BF7414();
                a3 = v36;
                sub_219BF7424();
                sub_219BF73E4();
              }

              else
              {
              }

              ++v23;
              if (v27 == v11)
              {
                return v39;
              }
            }

            __break(1u);
            return result;
          }

          v11 = *(v37 + 8 * v17 + 32);

          a3 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_19;
          }
        }

        v8 = v11;
        if (sub_219BF3F94())
        {
          v8 = &v39;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v17;
        if (a3 == v5)
        {
          return v39;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
    if (v37 >> 62)
    {
      v29 = sub_219BF7214();
      if (!v29)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v29 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v30 = 0;
    v31 = v37 & 0xC000000000000001;
    v32 = v37 & 0xFFFFFFFFFFFFFF8;
    v35 = v37 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v31)
      {
        v33 = MEMORY[0x21CECE0F0](v30, v37);
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v30 >= *(v32 + 16))
        {
          goto LABEL_52;
        }

        v33 = *(v37 + 8 * v30 + 32);

        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_48:
          __break(1u);
          return v39;
        }
      }

      v38 = v33;
      if (sub_218A83724(&v38, a3, &OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_favoringTagIDs))
      {
        sub_219BF73D4();
        sub_219BF7414();
        a3 = v36;
        sub_219BF7424();
        sub_219BF73E4();
        v32 = v35;
      }

      else
      {
      }

      ++v30;
      if (v34 == v29)
      {
        return v39;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
  if (v37 >> 62)
  {
    goto LABEL_53;
  }

  v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218A853E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A85448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218A85490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218A85540()
{
  sub_218A8341C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_218A855AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218A855CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StreamingExpandLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SportsScoreSortingMatchTodayFilter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_218A85668()
{
  result = type metadata accessor for SportsScoreSortingMatchEventFilter(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_218A856DC()
{
  if (!qword_27CC0D618)
  {
    type metadata accessor for SportsScoreSortingMatchFilter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D618);
    }
  }
}

unint64_t sub_218A85740()
{
  result = qword_27CC0D620;
  if (!qword_27CC0D620)
  {
    sub_218A85C7C(255, &qword_27CC0D628, sub_218A8363C, &type metadata for SportsScoreSortingEventStatus, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D620);
  }

  return result;
}

unint64_t sub_218A857D0()
{
  result = qword_280E9EA58[0];
  if (!qword_280E9EA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9EA58);
  }

  return result;
}

uint64_t sub_218A85824(void *a1)
{
  sub_218A85C7C(0, &qword_280E8C908, sub_218A85A1C, &type metadata for SportsScoreSortingMatchRangeFilter.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_218A85A1C();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = sub_219BF76B4();
    v10 = v9;
    v14[30] = 1;
    sub_219BF76B4();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

unint64_t sub_218A85A1C()
{
  result = qword_280E9E9A0[0];
  if (!qword_280E9E9A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9E9A0);
  }

  return result;
}

unint64_t sub_218A85A70()
{
  result = qword_27CC0D638;
  if (!qword_27CC0D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D638);
  }

  return result;
}

unint64_t sub_218A85AC4()
{
  result = qword_280EAEB10;
  if (!qword_280EAEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB10);
  }

  return result;
}

unint64_t sub_218A85B18()
{
  result = qword_280EAEAE8;
  if (!qword_280EAEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEAE8);
  }

  return result;
}

uint64_t sub_218A85B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218A85BD4()
{
  result = qword_27CC0D648;
  if (!qword_27CC0D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D648);
  }

  return result;
}

unint64_t sub_218A85C28()
{
  result = qword_280E9E980;
  if (!qword_280E9E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E980);
  }

  return result;
}

void sub_218A85C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218A85CE4()
{
  result = qword_280EAEAF8;
  if (!qword_280EAEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEAF8);
  }

  return result;
}

unint64_t sub_218A85D38()
{
  result = qword_27CC0D650;
  if (!qword_27CC0D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D650);
  }

  return result;
}

unint64_t sub_218A85D8C()
{
  result = qword_280E9E988;
  if (!qword_280E9E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E988);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_218A85F74()
{
  result = qword_27CC0D658;
  if (!qword_27CC0D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D658);
  }

  return result;
}

unint64_t sub_218A85FCC()
{
  result = qword_27CC0D660;
  if (!qword_27CC0D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D660);
  }

  return result;
}

unint64_t sub_218A86024()
{
  result = qword_27CC0D668;
  if (!qword_27CC0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D668);
  }

  return result;
}

unint64_t sub_218A8607C()
{
  result = qword_27CC0D670;
  if (!qword_27CC0D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D670);
  }

  return result;
}

unint64_t sub_218A860D4()
{
  result = qword_27CC0D678;
  if (!qword_27CC0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D678);
  }

  return result;
}

unint64_t sub_218A8612C()
{
  result = qword_280EAEB00;
  if (!qword_280EAEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB00);
  }

  return result;
}

unint64_t sub_218A86184()
{
  result = qword_280EAEB08;
  if (!qword_280EAEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEB08);
  }

  return result;
}

unint64_t sub_218A861DC()
{
  result = qword_27CC0D680;
  if (!qword_27CC0D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D680);
  }

  return result;
}