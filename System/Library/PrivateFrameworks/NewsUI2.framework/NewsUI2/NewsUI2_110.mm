uint64_t sub_21932AD88(uint64_t a1)
{
  v2 = sub_219BEE6E4();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v6 + 8))(v8, v5);
  v9 = v40;
  if (v40 < 1)
  {
    sub_219BEEDD4();
    sub_219327B30(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    sub_219BEEDC4();
    swift_willThrow();
    return v9;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v37 = v40;
    v40 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v11 = v2;
    v13 = v39 + 16;
    v12 = *(v39 + 16);
    v14 = a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v38 = *(v39 + 72);
    v39 = v12;
    do
    {
      (v39)(v4, v14, v11);
      sub_219BEE6D4();
      (*(v13 - 8))(v4, v11);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v14 += v38;
      --v10;
    }

    while (v10);
    v9 = v37;
  }

  v15 = sub_218731D50();
  sub_219BDBD34();
  sub_219327B30(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v16 = sub_219BF5964();

  v17 = sub_218B197A8(v16);
  v18 = v17;
  v19 = v17 >> 62;
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      v20 = v9;
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_10;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_219BF7214();
  if (result >= v9)
  {
    v36 = v9;
  }

  else
  {
    v36 = result;
  }

  if (result >= 0)
  {
    v20 = v36;
  }

  else
  {
    v20 = v9;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_219BF7214();
    if ((result & 0x8000000000000000) == 0)
    {
      if (sub_219BF7214() < v20)
      {
        __break(1u);
LABEL_47:
        swift_once();
LABEL_20:
        sub_2186F20D4();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_219C0B8C0;
        if (v19)
        {
          v28 = sub_219BF7214();
        }

        else
        {
          v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = (v20 >> 1) - v23;
        if (__OFSUB__(v20 >> 1, v23))
        {
          __break(1u);
        }

        else if (!__OFSUB__(v28, v29))
        {
          v30 = MEMORY[0x277D83B88];
          v31 = MEMORY[0x277D83C10];
          *(v27 + 56) = MEMORY[0x277D83B88];
          *(v27 + 64) = v31;
          *(v27 + 32) = v28 - v29;
          *(v27 + 96) = v30;
          *(v27 + 104) = v31;
          *(v27 + 72) = v9;
          *(v27 + 136) = v30;
          *(v27 + 144) = v31;
          *(v27 + 112) = v29;
          sub_219BF6214();
          sub_219BE5314();

          if ((v20 & 1) == 0)
          {
LABEL_26:
            sub_218B667DC(v15, v39, v23, v20);
            v9 = v32;
LABEL_32:
            swift_unknownObjectRelease();
            return v9;
          }

          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            swift_unknownObjectRelease();
            v33 = MEMORY[0x277D84F90];
          }

          v34 = *(v33 + 16);

          if (v34 == v29)
          {
            v9 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (!v9)
            {
              v9 = MEMORY[0x277D84F90];
              goto LABEL_32;
            }

            return v9;
          }

LABEL_50:
          swift_unknownObjectRelease_n();
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_50;
      }

LABEL_10:
      if ((v18 & 0xC000000000000001) != 0)
      {

        if (v20)
        {
          v21 = 0;
          do
          {
            v22 = v21 + 1;
            sub_219BF7334();
            v21 = v22;
          }

          while (v20 != v22);
        }

        if (!v19)
        {
          goto LABEL_15;
        }
      }

      else
      {

        if (!v19)
        {
LABEL_15:
          v23 = 0;
          v15 = v18 & 0xFFFFFFFFFFFFFF8;
          v39 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v20 = (2 * v20) | 1;
          goto LABEL_19;
        }
      }

      v15 = sub_219BF7564();
      v39 = v24;
      v23 = v25;
      v20 = v26;
LABEL_19:
      if (qword_280E8D7F8 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21932B3A8(unint64_t a1, uint64_t a2)
{
  sub_2186E4A44(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_21932C684(&qword_280E8EBF0, &qword_280E8EC00, sub_218731D50);
  v3 = sub_219BF56D4();
  v35 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_27:
    v21 = v3;
    v4 = sub_219BF7214();
    v3 = v21;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v30 = a1;
      v31 = v3;
      v5 = 0;
      v33 = v3 & 0xFFFFFFFFFFFFFF8;
      v34 = v3 & 0xC000000000000001;
      v6 = v3 + 32;
      while (1)
      {
        if (v34)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v31);
          v8 = __OFADD__(v5++, 1);
          if (v8)
          {
LABEL_24:
            __break(1u);
LABEL_25:
            v20 = v35;
            a1 = v30;
            goto LABEL_29;
          }
        }

        else
        {
          if (v5 >= *(v33 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v7 = *(v6 + 8 * v5);
          swift_unknownObjectRetain();
          v8 = __OFADD__(v5++, 1);
          if (v8)
          {
            goto LABEL_24;
          }
        }

        v9 = [v7 clusterID];
        if (v9)
        {
          v10 = v9;
          v11 = sub_219BF5414();
          v13 = v12;

          v14 = *(a2 + 96);
          if (*(v14 + 16))
          {
            sub_219BF7AA4();
            sub_219BF5524();
            v15 = sub_219BF7AE4();
            v16 = -1 << *(v14 + 32);
            v17 = v15 & ~v16;
            if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v16;
              while (1)
              {
                v18 = (*(v14 + 48) + 16 * v17);
                v19 = *v18 == v11 && v18[1] == v13;
                if (v19 || (sub_219BF78F4() & 1) != 0)
                {
                  break;
                }

                v17 = (v17 + 1) & a1;
                if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              swift_unknownObjectRelease();

              goto LABEL_6;
            }
          }

LABEL_4:
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v3 = sub_219BF73E4();
LABEL_6:
        if (v5 == v4)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_29:

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  result = swift_allocObject();
  *(result + 16) = xmmword_219C09EC0;
  if (a1 >> 62)
  {
    v28 = result;
    v23 = sub_219BF7214();
    result = v28;
    if (v20 < 0)
    {
LABEL_37:
      v29 = result;
      v24 = sub_219BF7214();
      result = v29;
      v25 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 < 0)
    {
      goto LABEL_37;
    }
  }

  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v24 = *(v20 + 16);
  v25 = v23 - v24;
  if (!__OFSUB__(v23, v24))
  {
LABEL_35:
    v26 = MEMORY[0x277D83B88];
    v27 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v27;
    *(result + 32) = v25;
    *(result + 96) = v26;
    *(result + 104) = v27;
    *(result + 72) = v24;
    sub_219BF6214();
    sub_219BE5314();

    return v20;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_21932B790(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 clusterID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_21932B808@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4A44(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = [*a1 publishDate];
  if (v11)
  {
    v12 = v11;
    sub_219BDBCA4();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a2, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    sub_219BDBBB4();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_21932C584(v10, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186E4A44);
    }
  }

  return result;
}

uint64_t sub_21932BA54(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21932BAB0(id *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = [*a1 publishDate];
  if (v9)
  {
    v10 = v9;
    sub_219BDBCA4();

    (*(v3 + 32))(v8, v6, v2);
    sub_219327B30(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v11 = sub_219BF5334();
    (*(v3 + 8))(v8, v2);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_21932BC50(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v31 = MEMORY[0x277D84F90];
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_25:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v26 = v3;
      v27 = v2;
      v3 = 0;
      v28 = v2 & 0xFFFFFFFFFFFFFF8;
      v29 = v2 & 0xC000000000000001;
      v2 += 32;
      while (1)
      {
        if (v29)
        {
          v5 = MEMORY[0x21CECE0F0](v3, v27);
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v18 = v31;
            v3 = v26;
            v2 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v5 = *(v2 + 8 * v3);
          swift_unknownObjectRetain();
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
            goto LABEL_22;
          }
        }

        v7 = *(a2 + 88);
        v8 = [v5 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v12 = sub_219BF7AE4(), v13 = -1 << *(v7 + 32), v14 = v12 & ~v13, ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v7 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  if (v3)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v25 = v20;
    result = sub_219BF7214();
    v22 = v25 - result;
    if (!__OFSUB__(v25, result))
    {
      goto LABEL_35;
    }
  }

  else
  {
    result = *(v18 + 16);
    v6 = __OFSUB__(v20, result);
    v22 = v20 - result;
    if (!v6)
    {
LABEL_35:
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v19 + 56) = MEMORY[0x277D83B88];
      *(v19 + 64) = v24;
      *(v19 + 32) = v22;
      *(v19 + 96) = v23;
      *(v19 + 104) = v24;
      *(v19 + 72) = result;
      sub_219BF6214();
      sub_219BE5314();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21932BF80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v51 = a2;
  v6 = sub_219BEF814();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4A44(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v40 - v9;
  v10 = sub_219BEFBD4();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0BD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  v16 = v3;
  v17 = v3 + *(v41 + 20);
  v42 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  v43 = v17;
  sub_219BEF134();
  sub_219BEF524();
  (*(v13 + 8))(v15, v12);
  v18 = v52;
  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:
    v22 = sub_219BEEDD4();
    sub_219327B30(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v24 = v26;
    v25 = MEMORY[0x277D32428];
    goto LABEL_8;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_7;
  }

LABEL_3:
  v19 = a1;
  v20 = sub_21932A020(a3, a1, v51);
  if (v20 >> 62)
  {
    v21 = sub_219BF7214();
    if (v21 < v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 < v18)
    {
LABEL_5:

      v22 = sub_219BEEDD4();
      sub_219327B30(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v24 = v23;
      *v23 = v18;
      v23[1] = v21;
      v25 = MEMORY[0x277D32400];
LABEL_8:
      (*(*(v22 - 8) + 104))(v24, *v25, v22);
      swift_willThrow();
      return v22;
    }
  }

  __swift_project_boxed_opaque_existential_1((v16 + *(v41 + 28)), *(v16 + *(v41 + 28) + 24));
  v28 = *MEMORY[0x277D32980];
  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 104);
  v41 = v16;
  v32 = v46;
  v31(v44, v28, v46);
  v33 = sub_219BF0034();

  (*(v29 + 8))(v30, v32);
  sub_219BEF864();

  sub_219BEF854();
  v22 = v47;
  sub_2195EB5F8((v43 + *(v42 + 36)), 29, v47);
  v35 = v49;
  v34 = v50;
  if ((*(v49 + 48))(v22, 1, v50) == 1)
  {
    v36 = v48;
    v22 = sub_21932AD88(v33);

    if (v36)
    {
    }
  }

  else
  {
    v37 = v40;
    (*(v35 + 32))(v40, v22, v34);
    v38 = v48;
    v39 = sub_21932A488(v33, v37, v19);
    if (v38)
    {
    }

    else
    {
      v22 = v39;
    }

    (*(v35 + 8))(v37, v34);
  }

  return v22;
}

uint64_t sub_21932C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_21932C5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21932C684(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186E4A44(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21932C704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21932C76C()
{
  result = qword_280EE7790;
  if (!qword_280EE7790)
  {
    sub_2186E4A44(255, &qword_280EE7788, type metadata accessor for RecentStoriesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7790);
  }

  return result;
}

uint64_t sub_21932C81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21932CCBC(0, &qword_280E8CAF0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21932CC68();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21932CA64(uint64_t a1)
{
  v2 = sub_21932CC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21932CAA0(uint64_t a1)
{
  v2 = sub_21932CC68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21932CAF4(void *a1)
{
  sub_21932CCBC(0, &qword_27CC18CB8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21932CC68();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21932CC68()
{
  result = qword_280EAA018[0];
  if (!qword_280EAA018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAA018);
  }

  return result;
}

void sub_21932CCBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21932CC68();
    v7 = a3(a1, &type metadata for UpNextAudioFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21932CD34()
{
  result = qword_27CC18CC0;
  if (!qword_27CC18CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18CC0);
  }

  return result;
}

unint64_t sub_21932CD8C()
{
  result = qword_280EAA008;
  if (!qword_280EAA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA008);
  }

  return result;
}

unint64_t sub_21932CDE4()
{
  result = qword_280EAA010;
  if (!qword_280EAA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA010);
  }

  return result;
}

uint64_t sub_21932CE38()
{
  v22[1] = *v0;
  sub_218DFBC54();
  v22[0] = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = type metadata accessor for ShortcutsCustomizeAffordance();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62538);
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2186C1000, v12, v13, "Creating customize affordance...", v14, 2u);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  sub_219BE2E84();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21932E7CC(v6, sub_218DFBC54);
    sub_219BE3204();
    v15 = sub_219BE2E54();
    sub_219BE3054();

    v16 = sub_219BE2E54();
    v17 = sub_219BE2F84();
  }

  else
  {
    sub_218DFC30C(v6, v10);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "Returning cached customize affordance", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    sub_21932E82C(v10, v3, type metadata accessor for ShortcutsCustomizeAffordance);
    (*(v8 + 56))(v3, 0, 1, v7);
    sub_21932E768(0, &qword_27CC18CE8, sub_218DFBC54, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v17 = sub_219BE3014();
    sub_21932E7CC(v10, type metadata accessor for ShortcutsCustomizeAffordance);
  }

  return v17;
}

uint64_t sub_21932D274()
{
  if (qword_27CC084D0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC084C8 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v0 = v15;
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F62538);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136446210;
      if (v0)
      {
        v6 = 1801675106;
      }

      else
      {
        v6 = 0x746E6F7266;
      }

      if (v0)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v8 = sub_2186D1058(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2186C1000, v2, v3, "Determining 'customize' affordance position '%{public}s' from overrides", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x21CECF960](v5, -1, -1);
      MEMORY[0x21CECF960](v4, -1, -1);
    }

    v14 = v0;
    sub_21932E894();
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_2186C61E4();
    sub_219BE3204();
    v10 = sub_219BE2E54();
    sub_219BE3084();

    v11 = sub_219BE2E54();
    v12 = sub_219BE2F84();

    return v12;
  }
}

uint64_t sub_21932D584(void *a1)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62538);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_21932E7CC(v7, sub_2189B3F3C);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  sub_21932E894();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21932D70C(unsigned __int8 *a1, uint64_t a2)
{
  v37 = a2;
  sub_218DFBC54();
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ShortcutsCustomizeAffordance();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_219BDB5E4();
  v33 = v15;
  v34 = v14;

  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  v16 = qword_280F617F8;
  v17 = *(v8 + 28);
  v18 = qword_280F617F8;
  sub_219BE7794();
  v19 = *MEMORY[0x277D6D460];
  v20 = sub_219BE6034();
  v21 = v8;
  v22 = *(v20 - 8);
  (*(v22 + 104))(&v11[v17], v19, v20);
  (*(v22 + 56))(&v11[v17], 0, 1, v20);
  v23 = v21;
  *v11 = 0xD000000000000014;
  *(v11 + 1) = 0x8000000219D17990;
  v24 = v33;
  *(v11 + 2) = v34;
  *(v11 + 3) = v24;
  *(v11 + 4) = v16;
  v11[*(v21 + 32)] = v35;
  sub_21932E82C(v11, v7, type metadata accessor for ShortcutsCustomizeAffordance);
  v25 = *(v9 + 56);
  v25(v7, 0, 1, v23);
  sub_21932E82C(v7, v36, sub_218DFBC54);

  sub_219BE2E94();

  sub_21932E7CC(v7, sub_218DFBC54);
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v26 = sub_219BE5434();
  __swift_project_value_buffer(v26, qword_280F62538);
  v27 = sub_219BE5414();
  v28 = sub_219BF6214();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2186C1000, v27, v28, "Returning new customize affordance", v29, 2u);
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  sub_21932E82C(v11, v7, type metadata accessor for ShortcutsCustomizeAffordance);
  v25(v7, 0, 1, v23);
  sub_21932E768(0, &qword_27CC18CE8, sub_218DFBC54, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v30 = sub_219BE3014();
  sub_21932E7CC(v11, type metadata accessor for ShortcutsCustomizeAffordance);
  return v30;
}

void sub_21932DC10()
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62538);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Incrementing launch count...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  if (qword_27CC08498 != -1)
  {
    swift_once();
  }

  sub_21932E700(&qword_27CC18CD0);
  sub_219BDC7D4();
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    sub_21932E700(&qword_27CC18CD8);
    sub_219BDCA54();
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v7 + 1;
      _os_log_impl(&dword_2186C1000, v4, v5, "Incrementing launch count completed, count=%ld", v6, 0xCu);
      MEMORY[0x21CECF960](v6, -1, -1);
    }
  }
}

id sub_21932DE60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62538);
  v7 = a1;
  v8 = sub_219BE5414();
  v9 = sub_219BF61F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2186C1000, v8, v9, "Failed to fetch the app config for determining customize affordance position, using cached app config, error=%{public}@", v10, 0xCu);
    sub_21932E7CC(v11, sub_2189B3F3C);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  result = [*(a2 + 16) possiblyUnfetchedAppConfiguration];
  *a3 = result;
  return result;
}

uint64_t sub_21932DFE4(id *a1, void *a2)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v4 = [v3 shortcutsCustomizeAffordanceDisplayMinLaunchCount];
    if ([v3 respondsToSelector_])
    {
      v5 = [v3 shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount];
      if (qword_27CC08498 != -1)
      {
        swift_once();
      }

      sub_21932E700(&qword_27CC18CD0);
      sub_219BDC7D4();
      v6 = a2[6];
      v7 = a2[7];
      __swift_project_boxed_opaque_existential_1(a2 + 3, v6);
      v8 = (*(v7 + 8))(v6, v7);
      if (v8 >= 2)
      {
        if (v8 != 2)
        {
          sub_21932E894();
          swift_allocObject();
          return sub_219BE3014();
        }

        if (qword_280EE5F18 != -1)
        {
          swift_once();
        }

        v20 = sub_219BE5434();
        __swift_project_value_buffer(v20, qword_280F62538);
        v10 = sub_219BE5414();
        v21 = sub_219BF6214();
        if (os_log_type_enabled(v10, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_2186C1000, v10, v21, "Determined 'customize' affordance position to be 'back' for user who is onboarded to favorites", v22, 2u);
          MEMORY[0x21CECF960](v22, -1, -1);
        }
      }

      else if (v29 >= v4)
      {
        if (v5 >= v29)
        {
          if (qword_280EE5F18 != -1)
          {
            swift_once();
          }

          v26 = sub_219BE5434();
          __swift_project_value_buffer(v26, qword_280F62538);
          v10 = sub_219BE5414();
          v27 = sub_219BF6214();
          if (os_log_type_enabled(v10, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_2186C1000, v10, v27, "Determined 'customize' affordance position to be 'front' for user who is not onboarded to favorites, due to meeting minDisplayLaunchCount threshold", v28, 2u);
            MEMORY[0x21CECF960](v28, -1, -1);
          }
        }

        else
        {
          if (qword_280EE5F18 != -1)
          {
            swift_once();
          }

          v23 = sub_219BE5434();
          __swift_project_value_buffer(v23, qword_280F62538);
          v10 = sub_219BE5414();
          v24 = sub_219BF6214();
          if (os_log_type_enabled(v10, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_2186C1000, v10, v24, "Determined 'customize' affordance position to be 'back' for user who is not onboarded to favorites, due to meeting minSendToBackLaunchCount threshold", v25, 2u);
            MEMORY[0x21CECF960](v25, -1, -1);
          }
        }
      }

      else
      {
        if (qword_280EE5F18 != -1)
        {
          swift_once();
        }

        v9 = sub_219BE5434();
        __swift_project_value_buffer(v9, qword_280F62538);
        v10 = sub_219BE5414();
        v11 = sub_219BF6214();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2186C1000, v10, v11, "Determined 'customize' affordance position to be 'back' for user who is not onboarded to favorites, due to not meeting threshold requirements", v12, 2u);
          MEMORY[0x21CECF960](v12, -1, -1);
        }
      }
    }

    else
    {
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v16 = sub_219BE5434();
      __swift_project_value_buffer(v16, qword_280F62538);
      v10 = sub_219BE5414();
      v17 = sub_219BF61F4();
      if (os_log_type_enabled(v10, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        MEMORY[0x21CECF960](v18, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F62538);
    v10 = sub_219BE5414();
    v14 = sub_219BF61F4();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      MEMORY[0x21CECF960](v15, -1, -1);
    }
  }

  sub_21932E894();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21932E700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShortcutsCustomizeAffordanceManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21932E768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21932E7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21932E82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21932E894()
{
  if (!qword_27CC18CF0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18CF0);
    }
  }
}

uint64_t sub_21932E920(void *a1)
{
  v4 = a1;

  sub_2189F05F8(&v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v4 = v1;
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC1F4();
}

uint64_t sub_21932EA40()
{
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC204();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21932EB08()
{
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC204();

  swift_beginAccess();
}

uint64_t sub_21932EBC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC204();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21932EC80()
{
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC1F4();
}

uint64_t sub_21932ED4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_21932EDB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);

  sub_219BDC204();

  v11 = v2;
  swift_getKeyPath();
  sub_219BDC224();

  swift_beginAccess();
  v6 = sub_219331CEC((v2 + 32), a1, a2);

  v8 = *(*(v11 + 32) + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_218952704(v6, v8);
    swift_endAccess();
    swift_getKeyPath();
    sub_219BDC214();

    swift_getKeyPath();
    sub_219BDC204();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(a1, a2, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21932EFA4()
{
  sub_218774F78(v0 + 16);

  v1 = OBJC_IVAR____TtC7NewsUI224SearchFilterBarViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21932F078()
{
  result = sub_219BDC244();
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

uint64_t sub_21932F168()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21932F210@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21932F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42[1] = a1;
  v53 = a2;
  v2 = sub_219BECAE4();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BECA04();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BECB14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193306CC();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219330E70();
  v44 = v15;
  v43 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219330F24(0);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219330F58(0, &qword_27CC18D60, sub_219330F24, sub_219330FE4);
  v51 = v21;
  v49 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v46 = v42 - v22;
  sub_219BECB64();
  sub_219330A14(0, &qword_27CC18D00, sub_219330768, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  sub_219330D88();
  sub_219BEC5E4();
  sub_219BECB04();
  v23 = sub_219330B60(&qword_27CC18D50, sub_2193306CC);
  sub_219BECE64();
  (*(v7 + 8))(v9, v6);
  (*(v12 + 8))(v14, v11);
  sub_219BEC904();
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_27CC12B98;
  v25 = sub_219BECD94();
  v27 = v26;
  v29 = v28;
  v56 = v11;
  v57 = v23;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_219BECE44();
  sub_2189A0BC8(v25, v27, v29 & 1);

  (*(v43 + 8))(v17, v30);
  v31 = v45;
  sub_219BEC9F4();
  v32 = sub_219BECB84();
  sub_219BECB74();
  sub_219BECB74();
  if (sub_219BECB74() != v32)
  {
    sub_219BECB74();
  }

  v33 = sub_219330FE4();
  v34 = v46;
  v35 = v50;
  sub_219BECE74();
  (*(v47 + 8))(v31, v48);
  sub_21933131C(v20, sub_219330F24);
  v36 = v52;
  sub_219BEC9F4();
  sub_2193310FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v38 = sub_219BECB84();
  *(inited + 32) = v38;
  v39 = sub_219BECB64();
  *(inited + 33) = v39;
  sub_219BECB74();
  sub_219BECB74();
  if (sub_219BECB74() != v38)
  {
    sub_219BECB74();
  }

  sub_219BECB74();
  if (sub_219BECB74() != v39)
  {
    sub_219BECB74();
  }

  v56 = v35;
  v57 = v33;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  sub_219BECE24();
  (*(v54 + 8))(v36, v55);
  return (*(v49 + 8))(v34, v40);
}

double sub_21932FA00@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_219BEC8A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_21933114C();
  swift_getKeyPath();
  sub_219330B60(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC204();

  swift_beginAccess();
  sub_2193322EC(0, &qword_280E8F250, type metadata accessor for SearchHomeFilterItem, MEMORY[0x277D83940]);
  sub_219330894(0);
  sub_219330BA8();
  sub_219330CA8();
  sub_219330B60(qword_280ECD388, type metadata accessor for SearchHomeFilterItem);

  sub_219BED064();
  v2 = sub_219BECB94();
  sub_219330A14(0, &qword_27CC18D00, sub_219330768, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v4 = a1 + *(v3 + 36);
  *v4 = v2;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_21932FC34@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v80 = a3;
  v5 = sub_219BECAC4();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHomeFilterItem(0);
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = v8;
  v77 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BECB14();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BEC894();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEC734();
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193311BC();
  v63 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  sub_219330910(0);
  v64 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193308C8(0);
  v68 = v25;
  v69 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v61 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219330894(0);
  v74 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v73 = &v59 - v31;
  sub_219332A10(a1, v24, type metadata accessor for SearchHomeFilterItem);
  v32 = &v24[*(type metadata accessor for SearchHomeFilterItemView(0) + 20)];
  *v32 = sub_2193312C0;
  v32[1] = a2;
  v85 = 0x4020000000000000;
  sub_2193312C8();
  v79 = a2;

  sub_219BEC654();
  sub_219BED154();
  sub_219BEC744();
  sub_219BEC884();
  v33 = sub_219330B60(&qword_27CC18D88, MEMORY[0x277CDFAE8]);
  v34 = sub_219330B60(&qword_27CC18D90, MEMORY[0x277CE0068]);
  v35 = v66;
  sub_219BEC5F4();
  (*(v67 + 8))(v12, v35);
  (*(v65 + 8))(v15, v13);
  v36 = v63;
  (*(v17 + 16))(v62, v21, v63);
  v85 = v13;
  v86 = v35;
  v87 = v33;
  v88 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v36;
  v38 = sub_219BEC694();
  v39 = v60;
  (*(v17 + 8))(v21, v37);
  v40 = v64;
  *&v24[*(v64 + 36)] = v38;
  v41 = v70;
  sub_219BECAF4();
  v42 = sub_219330A80();
  v43 = v61;
  sub_219BECE64();
  (*(v71 + 8))(v41, v72);
  sub_219332020(v24, sub_219330910);
  v44 = *(v39 + 24);
  v85 = *(v39 + 16);
  v86 = v44;
  v83 = v40;
  v84 = v42;
  swift_getOpaqueTypeConformance2();
  sub_2187F3BD4();
  v45 = v68;
  sub_219BECE54();
  (*(v69 + 8))(v43, v45);
  sub_219BEC904();
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v46 = qword_27CC12B98;
  v47 = sub_219BECD94();
  v49 = v48;
  v51 = v50;
  v52 = v73;
  sub_219BEC6F4();
  sub_2189A0BC8(v47, v49, v51 & 1);

  sub_21933131C(v30, sub_219330894);
  v53 = v39;
  v54 = v77;
  sub_219332A10(v53, v77, type metadata accessor for SearchHomeFilterItem);
  v55 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  sub_219332A78(v54, v56 + v55, type metadata accessor for SearchHomeFilterItem);

  v57 = v78;
  sub_219BECAB4();
  sub_219BEC704();

  (*(v81 + 8))(v57, v82);
  return sub_21933131C(v52, sub_219330894);
}

uint64_t sub_2193305CC()
{
  sub_219BED104();
  sub_219BEC6B4();
}

uint64_t sub_21933063C()
{
  sub_219BED104();
  sub_219BEC6B4();
}

void sub_2193306CC()
{
  if (!qword_27CC18CF8)
  {
    sub_219330A14(255, &qword_27CC18D00, sub_219330768, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_219330D88();
    v0 = sub_219BEC5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18CF8);
    }
  }
}

void sub_219330768()
{
  if (!qword_27CC18D08)
  {
    sub_2193307CC();
    sub_219330C30();
    v0 = sub_219BED014();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18D08);
    }
  }
}

void sub_2193307CC()
{
  if (!qword_27CC18D10)
  {
    sub_2193322EC(255, &qword_280E8F250, type metadata accessor for SearchHomeFilterItem, MEMORY[0x277D83940]);
    sub_219330894(255);
    sub_219330BA8();
    v0 = sub_219BED084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18D10);
    }
  }
}

void sub_219330944(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_219BEC724();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219330A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219330A80()
{
  result = qword_280E92808;
  if (!qword_280E92808)
  {
    sub_219330910(255);
    sub_219330B60(&qword_280EC04E0, type metadata accessor for SearchHomeFilterItemView);
    sub_219330B60(&qword_280E927F0, sub_2193309D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E92808);
  }

  return result;
}

uint64_t sub_219330B60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219330BA8()
{
  result = qword_280E8F248;
  if (!qword_280E8F248)
  {
    sub_2193322EC(255, &qword_280E8F250, type metadata accessor for SearchHomeFilterItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F248);
  }

  return result;
}

unint64_t sub_219330C30()
{
  result = qword_27CC18D28;
  if (!qword_27CC18D28)
  {
    sub_2193307CC();
    sub_219330CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18D28);
  }

  return result;
}

unint64_t sub_219330CA8()
{
  result = qword_27CC18D30;
  if (!qword_27CC18D30)
  {
    sub_219330894(255);
    sub_219330910(255);
    sub_219330A80();
    swift_getOpaqueTypeConformance2();
    sub_219330B60(&qword_27CC0BAF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18D30);
  }

  return result;
}

unint64_t sub_219330D88()
{
  result = qword_27CC18D38;
  if (!qword_27CC18D38)
  {
    sub_219330A14(255, &qword_27CC18D00, sub_219330768, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_219330B60(&qword_27CC18D40, sub_219330768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18D38);
  }

  return result;
}

void sub_219330E70()
{
  if (!qword_27CC18D48)
  {
    sub_2193306CC();
    sub_219330B60(&qword_27CC18D50, sub_2193306CC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC18D48);
    }
  }
}

void sub_219330F58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_219330FE4()
{
  result = qword_27CC18D68;
  if (!qword_27CC18D68)
  {
    sub_219330F24(255);
    sub_2193306CC();
    sub_219330B60(&qword_27CC18D50, sub_2193306CC);
    swift_getOpaqueTypeConformance2();
    sub_219330B60(&qword_27CC0BAF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18D68);
  }

  return result;
}

void sub_2193310FC()
{
  if (!qword_27CC18D70)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18D70);
    }
  }
}

void sub_21933114C()
{
  if (!qword_27CC18D78)
  {
    sub_2193307CC();
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18D78);
    }
  }
}

void sub_2193311BC()
{
  if (!qword_27CC18D80)
  {
    sub_219BEC734();
    sub_219BEC894();
    sub_219330B60(&qword_27CC18D88, MEMORY[0x277CDFAE8]);
    sub_219330B60(&qword_27CC18D90, MEMORY[0x277CE0068]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC18D80);
    }
  }
}

unint64_t sub_2193312C8()
{
  result = qword_27CC18D98;
  if (!qword_27CC18D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18D98);
  }

  return result;
}

uint64_t sub_21933131C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21933137C()
{
  type metadata accessor for SearchHomeFilterItem(0);

  return sub_21933063C();
}

void sub_219331414(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchHomeFilterItemView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_219BEC8A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_219332254();
  sub_219331784(v1, (a1 + *(v6 + 44)));
  v7 = sub_219BECB94();
  sub_219BEC5A4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_219332504(0);
  v17 = a1 + *(v16 + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  v18 = sub_219BECBD4();
  sub_219BEC5A4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_21933265C(0);
  v28 = a1 + *(v27 + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  v29 = sub_219BED0E4();
  v31 = v30;
  sub_219332698(0);
  v33 = a1 + *(v32 + 36);
  v34 = *MEMORY[0x277CE0128];
  v35 = sub_219BEC924();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  v36 = [objc_opt_self() labelColor];
  v37 = sub_219BECF04();
  sub_219332760();
  *(v33 + *(v38 + 52)) = v37;
  *(v33 + *(v38 + 56)) = 256;
  sub_2193326CC();
  v40 = (v33 + *(v39 + 36));
  *v40 = v29;
  v40[1] = v31;
  v41 = sub_219BED0F4();
  v43 = v42;
  sub_219330944(0, &qword_27CC18E28, sub_219332698, sub_219332810);
  v45 = a1 + *(v44 + 36);
  sub_219332A10(v1, v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchHomeFilterItemView);
  v46 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v47 = swift_allocObject();
  sub_219332A78(v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for SearchHomeFilterItemView);
  sub_219BECFE4();
  sub_219BED0E4();
  sub_219BEC684();
  sub_2193328AC();
  v49 = (v45 + *(v48 + 36));
  v50 = v53[1];
  *v49 = v53[0];
  v49[1] = v50;
  v49[2] = v53[2];
  sub_219332810();
  v52 = (v45 + *(v51 + 36));
  *v52 = v41;
  v52[1] = v43;
}

uint64_t sub_219331784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v41 = sub_219BECF64();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193323B8();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - v8;
  v42 = a1;
  v9 = *(a1 + 24);
  *&v45 = *(a1 + 16);
  *(&v45 + 1) = v9;
  sub_2187F3BD4();

  v10 = sub_219BECDA4();
  v12 = v11;
  v14 = v13;
  sub_219BECBE4();
  sub_219BECC34();
  sub_219BECC74();

  v15 = sub_219BECD74();
  v17 = v16;
  v19 = v18;

  sub_2189A0BC8(v10, v12, v14 & 1);

  v20 = sub_219BECD54();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2189A0BC8(v15, v17, v19 & 1);

  sub_219BECF54();
  v27 = v39;
  v28 = v41;
  (*(v39 + 104))(v4, *MEMORY[0x277CE0FE0], v41);
  v29 = sub_219BECF74();

  (*(v27 + 8))(v4, v28);
  *&v45 = v29;
  sub_219BECC24();
  v30 = v40;
  sub_219BECDD4();

  type metadata accessor for SearchHomeFilterItemView(0);
  sub_21933212C();
  sub_219BEC664();
  sub_219BEC664();
  sub_219BED0E4();
  sub_219BEC684();
  sub_219330A14(0, &qword_27CC18DC8, sub_219332484, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
  v32 = (v30 + *(v31 + 36));
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  v32[2] = v47;
  v34 = v43;
  sub_2188DA1C8(v30, v43);
  v35 = v44;
  *v44 = v20;
  v35[1] = v22;
  *(v35 + 16) = v24 & 1;
  v35[3] = v26;
  v36 = v35;
  sub_219332350();
  sub_2188DA1C8(v34, v36 + *(v37 + 48));
  sub_219332B50(v20, v22, v24 & 1);

  sub_21933131C(v30, sub_2193323B8);
  sub_21933131C(v34, sub_2193323B8);
  sub_2189A0BC8(v20, v22, v24 & 1);
}

uint64_t sub_219331BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BECF24();
  *a1 = result;
  return result;
}

uint64_t sub_219331BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for SearchHomeFilterItem(0) - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 8);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    ++v7;
    v10 = (v10 + v9);
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_219331CEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SearchHomeFilterItem(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v34 - v15);
  v17 = *a1;
  result = sub_219331BF0(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v42 = a2;
  v36 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v37 = v11;
  v38 = v14;
  v35 = a1;
  v40 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v22 = (v17 + 16);
  v21 = *(v17 + 16);
  if (v20 == v21)
  {
    return v40;
  }

  v39 = a3;
  v41 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17;
    v25 = v17 + v23;
    v26 = *(v8 + 72);
    v27 = v26 * v20;
    sub_219332A10(v25 + v26 * v20, v16, type metadata accessor for SearchHomeFilterItem);
    if (*v16 == v42 && v16[1] == a3)
    {
      result = sub_219332020(v16, type metadata accessor for SearchHomeFilterItem);
LABEL_10:
      v8 = v41;
      v17 = v24;
      goto LABEL_11;
    }

    v29 = sub_219BF78F4();
    result = sub_219332020(v16, type metadata accessor for SearchHomeFilterItem);
    if (v29)
    {
      a3 = v39;
      goto LABEL_10;
    }

    v30 = v40;
    if (v20 == v40)
    {
      a3 = v39;
      v8 = v41;
      v17 = v24;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *v22;
      if (v40 >= *v22)
      {
        goto LABEL_31;
      }

      v32 = v26 * v40;
      result = sub_219332A10(v25 + v26 * v40, v38, type metadata accessor for SearchHomeFilterItem);
      if (v20 >= v31)
      {
        goto LABEL_32;
      }

      sub_219332A10(v25 + v27, v37, type metadata accessor for SearchHomeFilterItem);
      v17 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2194ABA88(v24);
      }

      a3 = v39;
      v8 = v41;
      v33 = v17 + v23;
      result = sub_219332080(v37, v33 + v32);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_219332080(v38, v33 + v27);
      *v35 = v17;
      v30 = v40;
    }

    v40 = v30 + 1;
LABEL_11:
    ++v20;
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_219332020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219332080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21933212C()
{
  if (!qword_27CC18DA0)
  {
    sub_2193312C8();
    v0 = sub_219BEC674();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18DA0);
    }
  }
}

void sub_21933219C()
{
  type metadata accessor for SearchHomeFilterItem(319);
  if (v0 <= 0x3F)
  {
    sub_218788800();
    if (v1 <= 0x3F)
    {
      sub_21933212C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_219332254()
{
  if (!qword_27CC18DA8)
  {
    sub_2193322EC(255, &qword_27CC18DB0, sub_219332350, MEMORY[0x277CE14B8]);
    v0 = sub_219BEC6A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18DA8);
    }
  }
}

void sub_2193322EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219332350()
{
  if (!qword_27CC18DB8)
  {
    sub_2193323B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18DB8);
    }
  }
}

void sub_2193323B8()
{
  if (!qword_27CC18DC0)
  {
    sub_219330A14(255, &qword_27CC18DC8, sub_219332484, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_219332938(255, &qword_27CC18DD8, MEMORY[0x277CDF950], MEMORY[0x277CDF948], MEMORY[0x277CE0730]);
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18DC0);
    }
  }
}

void sub_219332484()
{
  if (!qword_27CC18DD0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC18DD0);
    }
  }
}

void sub_219332540()
{
  if (!qword_27CC18DE8)
  {
    sub_2193322EC(255, &qword_27CC18DB0, sub_219332350, MEMORY[0x277CE14B8]);
    sub_2193325D4();
    v0 = sub_219BED014();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18DE8);
    }
  }
}

unint64_t sub_2193325D4()
{
  result = qword_27CC18DF0;
  if (!qword_27CC18DF0)
  {
    sub_2193322EC(255, &qword_27CC18DB0, sub_219332350, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18DF0);
  }

  return result;
}

void sub_2193326CC()
{
  if (!qword_27CC18E08)
  {
    sub_219332760();
    sub_219330B60(&qword_27CC18E20, sub_219332760);
    v0 = sub_219BEC9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18E08);
    }
  }
}

void sub_219332760()
{
  if (!qword_27CC18E10)
  {
    sub_219BED054();
    sub_219330B60(&qword_27CC18E18, MEMORY[0x277CE1260]);
    v0 = sub_219BEC604();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18E10);
    }
  }
}

void sub_219332810()
{
  if (!qword_27CC18E30)
  {
    sub_2193328AC();
    sub_219332D28(&qword_27CC18E48, sub_2193328AC, sub_21933298C);
    v0 = sub_219BEC7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18E30);
    }
  }
}

void sub_2193328AC()
{
  if (!qword_27CC18E38)
  {
    sub_219332938(255, &qword_27CC18E40, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CDF020]);
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18E38);
    }
  }
}

void sub_219332938(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21933298C()
{
  result = qword_27CC18E50;
  if (!qword_27CC18E50)
  {
    sub_219332938(255, &qword_27CC18E40, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18E50);
  }

  return result;
}

uint64_t sub_219332A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219332A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219332AE0()
{
  v1 = type metadata accessor for SearchHomeFilterItemView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return (*(v2 + *(v1 + 20)))(*v2, v2[1]);
}

uint64_t sub_219332B50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_219332B60()
{
  result = qword_27CC18E58;
  if (!qword_27CC18E58)
  {
    sub_219330944(255, &qword_27CC18E28, sub_219332698, sub_219332810);
    sub_219332C40();
    sub_219330B60(&qword_27CC18E88, sub_219332810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18E58);
  }

  return result;
}

unint64_t sub_219332C40()
{
  result = qword_27CC18E60;
  if (!qword_27CC18E60)
  {
    sub_219332698(255);
    sub_219332D28(&qword_27CC18E68, sub_21933265C, sub_219332DA8);
    sub_219330B60(&qword_27CC18E80, sub_2193326CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18E60);
  }

  return result;
}

uint64_t sub_219332D28(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219332DA8()
{
  result = qword_27CC18E70;
  if (!qword_27CC18E70)
  {
    sub_219332504(255);
    sub_219330B60(&qword_27CC18E78, sub_219332540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18E70);
  }

  return result;
}

uint64_t sub_219332E7C(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SearchMoreExpandRequest();
  v3 = v2 - 8;
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = v4;
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreFeedGapLocation(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CACurrentMediaTime();
  v9 = *a1;
  v8 = a1[1];
  v10 = *(v3 + 28);
  v11 = qword_27CC08540;

  if (v11 != -1)
  {
    swift_once();
  }

  v30[1] = qword_27CCD8A08;
  sub_219BF6214();
  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v12 + 64) = v14;
  v33 = v9;
  *(v12 + 32) = v9;
  *(v12 + 40) = v8;
  v38 = 0;
  v39 = 0xE000000000000000;

  sub_219BF7484();
  v15 = v38;
  v16 = v39;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  sub_219BE5314();

  v17 = a1 + v10;
  v18 = v32;
  sub_219333ED8(v17, v32, type metadata accessor for SearchMoreFeedGapLocation);
  v19 = v36;
  sub_219333ED8(a1, v36, type metadata accessor for SearchMoreExpandRequest);
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = (v6 + *(v34 + 80) + v20) & ~*(v34 + 80);
  v22 = swift_allocObject();
  sub_219333F98(v18, v22 + v20, type metadata accessor for SearchMoreFeedGapLocation);
  sub_219333F98(v19, v22 + v21, type metadata accessor for SearchMoreExpandRequest);
  sub_2193340D0(0, &qword_27CC20A10, MEMORY[0x277D33098]);
  sub_219BE31F4();

  sub_2193340D0(0, &qword_27CC18ED0, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v23 = sub_219BF66A4();
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 2) = v33;
  *(v24 + 3) = v8;
  v24[4] = v7;

  sub_219BE2F74();

  v26 = swift_allocObject();
  v26[2] = v7;
  *(v26 + 3) = v25;
  *(v26 + 4) = v8;
  v27 = sub_219BE2E54();
  v28 = sub_219BE2FD4();

  return v28;
}

uint64_t sub_219333340()
{
  sub_219333E88();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2193333B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2193340D0(0, &qword_27CC20A10, MEMORY[0x277D33098]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-1] - v12;
  v14 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219333ED8(a2, v16, type metadata accessor for SearchMoreFeedGapLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v13, v16, v7);
    (*(v8 + 16))(v10, v13, v7);
    sub_219334168();
    swift_allocObject();
    v18 = sub_219BE3014();
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v19 = v16[1];
    v22 = *v16;
    v23[0] = v19;
    *(v23 + 9) = *(v16 + 25);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v22 - 4) = &v22;
    *(&v22 - 3) = a3;
    *(&v22 - 2) = a1;
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_219BE3204();
    v20 = sub_219BE2E54();
    v18 = sub_219BE2F64();

    sub_2193341FC(&v22);
  }

  return v18;
}

uint64_t sub_21933367C(uint64_t a1, uint64_t a2)
{
  sub_218EDA89C(a1, v7);
  v3 = (a2 + *(type metadata accessor for SearchMoreExpandRequest() + 24));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v7[6] = v4;
  v8 = v3;
  v5 = sub_219BED564();
  sub_219334250(v7);
  return v5;
}

uint64_t sub_219333704()
{
  sub_2193340D0(0, &qword_27CC20A10, MEMORY[0x277D33098]);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for SearchMoreFeedServiceConfig();
  sub_219333F40();
  sub_219BF0F44();
  sub_219334168();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21933380C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = qword_27CC08540;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = MEMORY[0x277D837D0];
  *(v9 + 96) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v9 + 104) = v13;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;

  sub_219BF7484();
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v7;
  return result;
}

uint64_t sub_2193339A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D837D0];
  *(v5 + 96) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 104) = v9;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_219333C0C()
{
  v1 = type metadata accessor for SearchMoreExpandRequest();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218EDA89C(v0 + OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_resultsStream, &v4[*(v2 + 28)]);
  type metadata accessor for SearchMoreFeedGapLocation(0);
  swift_storeEnumTagMultiPayload();
  strcpy(v4, "prewarmRequest");
  v4[15] = -18;
  v5 = &v4[*(v2 + 32)];
  *v5 = 0;
  v5[8] = 1;
  v10 = v0;
  v11 = v4;
  sub_219BE3204();
  v6 = sub_219BE2E54();
  v7 = sub_219BE2F64();

  sub_219333E2C(v4);
  return v7;
}

uint64_t sub_219333D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC7NewsUI221SearchMoreDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v3, &off_282A69F50, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219333E2C(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreExpandRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219333E88()
{
  if (!qword_27CC18EC8)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18EC8);
    }
  }
}

uint64_t sub_219333ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219333F40()
{
  result = qword_280EB71E0;
  if (!qword_280EB71E0)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB71E0);
  }

  return result;
}

uint64_t sub_219333F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219334000(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchMoreFeedGapLocation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SearchMoreExpandRequest() - 8);
  return sub_2193333B8(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

void sub_2193340D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig();
    v7 = sub_219333F40();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_219334168()
{
  if (!qword_27CC18ED8)
  {
    sub_2193340D0(255, &qword_27CC20A10, MEMORY[0x277D33098]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18ED8);
    }
  }
}

void *sub_2193342C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_218F8F074(sub_2193366AC, v4, a1);
}

uint64_t sub_21933431C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 8))(*a1, a2, a3);
  if (v4)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for AudioFeedTrack(0);
  return (*(*(v7 - 8) + 56))(a4, v6, 1, v7);
}

BOOL sub_2193343CC()
{
  v1 = [objc_msgSend(*(v0 + 56) bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218744C90(&v11, &qword_280E8B4F0);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218744C90(&v11, &qword_280E8B4F0);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -47;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 47;
  return ((v6 ^ v3) & 1) == 0;
}

void sub_2193345DC(void *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219334BEC(a1);
  sub_219334E04(a1);
  if (v3)
  {

    return;
  }

  v10 = v9;
  sub_2193366CC(a1);
  v12 = v11;
  if (sub_2193343CC())
  {
    v13 = 583;
  }

  else
  {
    v14 = [a1 isFullTrackAvailableToAll];
    v13 = 168;
    if (v14)
    {
      v13 = 583;
    }
  }

  v52 = v13;
  sub_219335314(a1, v7);
  v51 = *(v2 + 56);
  v15 = [a1 isPaid];
  v16 = [a1 respondsToSelector_];
  v54 = v10;
  if (v16)
  {
    v17 = [a1 isBundlePaid];
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 sourceChannel];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 identifier];
    swift_unknownObjectRelease();
    v50 = sub_219BF5414();
    v19 = v21;

    v53 = 0;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_17:
    if ((v17 & 1) == 0)
    {
      v27 = v8;
      v28 = v7;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v50 = 0;
  v53 = 0;
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_13:
  LODWORD(v49) = v17;
  v22 = [v51 purchaseProvider];
  if (!v19)
  {
    v25 = 0;
    swift_unknownObjectRelease();
LABEL_22:
    v19 = v25;
    if (!v49)
    {
      goto LABEL_44;
    }

LABEL_23:
    if (!v19)
    {
      goto LABEL_45;
    }

    v49 = v19;
    v30 = [objc_msgSend(v51 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v30, v30 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59 = v57;
    v60 = v58;
    if (*(&v58 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v31 = v56;
        v32 = [v56 integerValue];
        if (v32 == -1)
        {

          goto LABEL_40;
        }

LABEL_34:
        v48 = v32;
        if (objc_getAssociatedObject(v30, ~v32))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
        }

        v59 = v57;
        v60 = v58;
        if (*(&v58 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20);
          if (swift_dynamicCast())
          {
            v33 = v56;
            v34 = [v33 integerValue];

            if ((v34 ^ v48))
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }
        }

        else
        {
          sub_218744C90(&v59, &qword_280E8B4F0);
        }

        if (v48)
        {
LABEL_40:
          v35 = [objc_msgSend(v51 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v36 = [v35 bundleChannelIDs];

          v37 = sub_219BF53D4();
          v38 = [v36 containsObject_];

          if (v38)
          {
            v27 = v8;
            v28 = v7;
            goto LABEL_20;
          }

LABEL_45:
          v27 = v8;
          v28 = v7;
          v29 = 0;
          goto LABEL_46;
        }

LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      sub_218744C90(&v59, &qword_280E8B4F0);
    }

    v31 = 0;
    v32 = 0;
    goto LABEL_34;
  }

  v23 = [v22 purchasedTagIDs];
  v24 = sub_219BF5D44();

  v25 = v19;
  v26 = sub_2188537B8(v50, v19, v24);

  swift_unknownObjectRelease();
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  v27 = v8;
  v28 = v7;
LABEL_19:

LABEL_20:
  v29 = 1;
LABEL_46:
  v39 = sub_2193362B0(a1, v27);
  v40 = v54;
  v41 = v55;
  *v55 = a1;
  v41[1] = v40;
  v41[2] = v12;
  v41[3] = v52;
  v42 = type metadata accessor for AudioFeedTrack(0);
  sub_2193368C4(v28, v41 + v42[8]);
  *(v41 + v42[9]) = v29;
  *(v41 + v42[10]) = v27;
  *(v41 + v42[11]) = v39;
  v43 = v42[12];
  v44 = v39;
  swift_unknownObjectRetain();
  v45 = v40;
  v46 = v27;
  sub_2198D94D8(v45, v27, v39, (v41 + v43));

  sub_219336BC8(v28, type metadata accessor for AudioFeedTrack.Configurables);
}

id sub_219334BEC(void *a1)
{
  if (!sub_2193343CC() && ([a1 respondsToSelector_] & 1) != 0)
  {
    result = [a1 narrativeTrackPreferredUpsellVariantID];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sub_219BF5414();
    v7 = v6;

    __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
    v8 = sub_219BF3CE4();
    v9 = [v8 audioUpsellConfigurationsByID];

    if (v9)
    {
      sub_2186C6148(0, &qword_280E8E2A0);
      v10 = sub_219BF5214();

      if (*(v10 + 16))
      {
        v11 = sub_21870F700(v5, v7);
        if (v12)
        {
          v13 = v11;

          v14 = *(*(v10 + 56) + 8 * v13);

          return v14;
        }
      }
    }

    v15 = MEMORY[0x277D837D0];
    sub_2186C6148(0, &qword_280E8D790);
    v16 = sub_219BF6F74();
    sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    *(v17 + 56) = v15;
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v5;
    *(v17 + 40) = v7;
    sub_219BE5314();
  }

  return 0;
}

void sub_219334E04(void *a1)
{
  if (sub_2193343CC())
  {
    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrack))
    {
      if ([a1 respondsToSelector_])
      {
        v2 = [a1 narrativeTrackSample];
        if (v2)
        {
          v3 = v2;
          sub_2186C6148(0, &qword_280E8D790);
          v4 = sub_219BF6F74();
          sub_219BF61F4();
          sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_219C09EC0;
          sub_219BF7484();
          *(v5 + 56) = MEMORY[0x277D837D0];
          *(v5 + 64) = sub_2186FC3BC();
          *(v5 + 32) = 0;
          *(v5 + 40) = 0xE000000000000000;
          *(v5 + 96) = sub_2186C6148(0, &qword_280E8E2C0);
          *(v5 + 104) = sub_219336C7C();
          *(v5 + 72) = v3;
          v6 = v3;
          sub_219BE5314();

          sub_219336C28();
          swift_allocError();
          *v7 = 1;
LABEL_12:
          swift_willThrow();

          return;
        }
      }

LABEL_13:
      sub_2186C6148(0, &qword_280E8D790);
      v13 = sub_219BF6F74();
      sub_219BF61F4();
      sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09BA0;
      v15 = [a1 articleID];
      v16 = sub_219BF5414();
      v18 = v17;

      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_2186FC3BC();
      *(v14 + 32) = v16;
      *(v14 + 40) = v18;
      sub_219BE5314();

      sub_219336C28();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }

  else if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrackSample))
  {
    if ([a1 respondsToSelector_])
    {
      v8 = [a1 narrativeTrack];
      if (v8)
      {
        v9 = v8;
        sub_2186C6148(0, &qword_280E8D790);
        v10 = sub_219BF6F74();
        sub_219BF61F4();
        sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_219C09EC0;
        sub_219BF7484();
        *(v11 + 56) = MEMORY[0x277D837D0];
        *(v11 + 64) = sub_2186FC3BC();
        *(v11 + 32) = 0;
        *(v11 + 40) = 0xE000000000000000;
        *(v11 + 96) = sub_2186C6148(0, &qword_280E8E2C0);
        *(v11 + 104) = sub_219336C7C();
        *(v11 + 72) = v9;
        v6 = v9;
        sub_219BE5314();

        sub_219336C28();
        swift_allocError();
        *v12 = 2;
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }
}

uint64_t sub_219335314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v107 = a1;
  sub_2186EDF60(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v102 - v5;
  sub_2186EDF60(0, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v103 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = &v102 - v11;
  MEMORY[0x28223BE20](v10);
  *&v108 = &v102 - v12;
  sub_2186EDF60(0, &unk_280E901F8, MEMORY[0x277D33C60]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  *&v106 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  *&v109 = &v102 - v18;
  v19 = MEMORY[0x277CC9578];
  sub_2186EDF60(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v104 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v102 - v23;
  sub_2186EDF60(0, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v102 - v26;
  v28 = type metadata accessor for AudioFeedContentConfig();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v110 = &v102 - v33;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_219BE2184();
  sub_219336A64(v32, v24, &qword_280EE9C40, v19, sub_2186EDF60);
  v34 = sub_219BDBD34();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_219336BC8(v32, type metadata accessor for AudioFeedContentConfig);
    sub_218710808(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v36 = 1;
  }

  else
  {
    sub_218710808(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_219336A00(v32, v27);
    v36 = 0;
  }

  (*(v29 + 56))(v27, v36, 1, v28);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_218710808(v27, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
    v37 = type metadata accessor for AudioFeedTrack.Configurables(0);
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    (*(v35 + 56))(a2 + v37[7], 1, 1, v34);
    v38 = v37[9];
    v39 = sub_219BE7434();
    result = (*(*(v39 - 8) + 56))(a2 + v38, 1, 1, v39);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v41 = (a2 + v37[8]);
    *v41 = xmmword_219C14A10;
    v41[1] = 0u;
    v41[2] = 0u;
    v41[3] = 0u;
    *(v41 + 57) = 0u;
    return result;
  }

  v42 = v110;
  sub_219336A00(v27, v110);
  v43 = *(v42 + *(type metadata accessor for AudioFeedConfig() + 24));
  v44 = [v107 articleID];
  v45 = sub_219BF5414();
  v47 = v46;

  if (*(v43 + 16))
  {
    v48 = sub_21870F700(v45, v47);
    v50 = v49;

    if (v50)
    {
      v51 = *(v43 + 56);
      v52 = sub_219BF3034();
      v53 = *(v52 - 8);
      v54 = v53;
      v55 = v51 + *(v53 + 72) * v48;
      v56 = v109;
      (*(v53 + 16))(v109, v55, v52);
      (*(v54 + 56))(v56, 0, 1, v52);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v57 = sub_219BF3034();
  v56 = v109;
  (*(*(v57 - 8) + 56))(v109, 1, 1, v57);
LABEL_11:
  v58 = v106;
  sub_219336A64(v110 + *(v28 + 24), v6, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration, sub_2186EDF60);
  v59 = type metadata accessor for LegacyAudioFeedConfiguration();
  if ((*(*(v59 - 8) + 48))(v6, 1, v59) == 1)
  {
    sub_218710808(v6, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
    v60 = 1;
    v61 = v108;
  }

  else
  {
    v62 = [v107 articleID];
    v63 = sub_219BF5414();
    v65 = v64;

    *&v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v61 = v108;
    v66 = v63;
    v56 = v109;
    sub_21940743C(v66, v65, &v112, v108);

    sub_219336B40(&v112);
    sub_219336BC8(v6, type metadata accessor for LegacyAudioFeedConfiguration);
    v60 = 0;
  }

  v67 = type metadata accessor for AudioFeedTrack.Configurables(0);
  *&v107 = *(v67 - 1);
  (*(v107 + 56))(v61, v60, 1, v67);
  sub_219336A64(v56, v58, &unk_280E901F8, MEMORY[0x277D33C60], sub_2186EDF60);
  v68 = sub_219BF3034();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if (v70(v58, 1, v68) == 1)
  {
    sub_218710808(v58, &unk_280E901F8, MEMORY[0x277D33C60]);
  }

  else
  {
    sub_219BF3014();
    v72 = v71;
    (*(v69 + 8))(v58, v68);
    if (v72)
    {

      goto LABEL_23;
    }
  }

  v73 = v108;
  v74 = v105;
  sub_219336A64(v108, v105, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables, sub_2186EDF60);
  if ((*(v107 + 48))(v74, 1, v67) != 1)
  {
    v75 = (v74 + v67[8]);
    v76 = v75[3];
    v114 = v75[2];
    *v115 = v76;
    *&v115[9] = *(v75 + 57);
    v77 = v75[1];
    v112 = *v75;
    v113 = v77;
    sub_219336A64(&v112, v111, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, sub_2186DEEA0);
    sub_219336BC8(v74, type metadata accessor for AudioFeedTrack.Configurables);
    if (*(&v112 + 1) == 1)
    {
      goto LABEL_21;
    }

    sub_218744C90(&v112, &qword_280EB40F0);
LABEL_23:
    v81 = v109;
    v82 = v102;
    sub_219336A64(v109, v102, &unk_280E901F8, MEMORY[0x277D33C60], sub_2186EDF60);
    if (v70(v82, 1, v68) == 1)
    {
      v83 = MEMORY[0x277D33C60];
      sub_218710808(v81, &unk_280E901F8, MEMORY[0x277D33C60]);
      sub_218710808(v82, &unk_280E901F8, v83);
      v84 = 0;
      v85 = 0;
    }

    else
    {
      v86 = v82;
      v87 = sub_219BF3014();
      v85 = v88;
      v89 = v81;
      v84 = v87;
      sub_218710808(v89, &unk_280E901F8, MEMORY[0x277D33C60]);
      (*(v69 + 8))(v86, v68);
    }

    v90 = v103;
    v91 = v104;
    (*(v35 + 56))(v104, 1, 1, v34);
    sub_219336AD4(v108, v90, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables);
    if ((*(v107 + 48))(v90, 1, v67) == 1)
    {
      sub_218710808(v90, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables);
      v92 = 0;
      v93 = 0;
      v109 = xmmword_219C14A10;
      v108 = 0u;
      v107 = 0u;
      v106 = 0u;
    }

    else
    {
      v94 = (v90 + v67[8]);
      v95 = v94[3];
      v114 = v94[2];
      *v115 = v95;
      *&v115[9] = *(v94 + 57);
      v96 = v94[1];
      v112 = *v94;
      v113 = v96;
      sub_219336A64(&v112, v111, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, sub_2186DEEA0);
      sub_219336BC8(v90, type metadata accessor for AudioFeedTrack.Configurables);
      v108 = v113;
      v109 = v112;
      v106 = *v115;
      v107 = v114;
      v92 = *&v115[16];
      v93 = v115[24];
    }

    v97 = v67[9];
    v98 = sub_219BE7434();
    (*(*(v98 - 8) + 56))(a2 + v97, 1, 1, v98);
    *a2 = v84;
    *(a2 + 8) = v85;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    sub_219336AD4(v91, a2 + v67[7], &qword_280EE9C40, MEMORY[0x277CC9578]);
    v99 = a2 + v67[8];
    v100 = v108;
    *v99 = v109;
    *(v99 + 16) = v100;
    v101 = v106;
    *(v99 + 32) = v107;
    *(v99 + 48) = v101;
    *(v99 + 64) = v92;
    *(v99 + 72) = v93;
    return sub_219336BC8(v110, type metadata accessor for AudioFeedContentConfig);
  }

  sub_218710808(v74, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables);
LABEL_21:
  sub_218710808(v73, qword_280EDCAB0, type metadata accessor for AudioFeedTrack.Configurables);
  sub_218710808(v109, &unk_280E901F8, MEMORY[0x277D33C60]);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  (*(v35 + 56))(a2 + v67[7], 1, 1, v34);
  v78 = v67[9];
  v79 = sub_219BE7434();
  (*(*(v79 - 8) + 56))(a2 + v78, 1, 1, v79);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v80 = (a2 + v67[8]);
  *v80 = xmmword_219C14A10;
  v80[1] = 0u;
  v80[2] = 0u;
  v80[3] = 0u;
  *(v80 + 57) = 0u;
  return sub_219336BC8(v110, type metadata accessor for AudioFeedContentConfig);
}

id sub_2193362B0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_2193343CC();
  result = 0;
  if (!v16 && a2)
  {
    v18 = a2;
    v19 = [v18 URL];
    if (v19)
    {
      v38 = v18;
      v20 = v19;
      sub_219BDB8B4();

      v36 = *(v7 + 32);
      v36(v15, v13, v6);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_219BF7314();
      v21 = [a1 articleID];
      v22 = sub_219BF5414();
      v37 = v3;
      v23 = v7;
      v25 = v24;

      v41 = v22;
      v42 = v25;
      MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D17CA0);
      (*(v23 + 16))(v10, v15, v6);
      v26 = v23;
      v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v28 = swift_allocObject();
      v36((v28 + v27), v10, v6);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_219336928;
      *(v29 + 24) = v28;
      v39 = sub_2187A9144;
      v40 = v29;
      sub_21933698C();
      v30 = sub_219BF5484();
      MEMORY[0x21CECC330](v30);

      v31 = *(v37 + 104);
      v32 = sub_219BF53D4();

      v33 = sub_219BDB854();
      v34 = [v31 assetWithIdentifier:v32 remoteURL:v33 overrideMIMEType:0];

      (*(v26 + 8))(v15, v6);
      return v34;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2193365F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219336664()
{
  sub_219336CE4();
  swift_allocError();
  return swift_willThrow();
}

void sub_2193366CC(void *a1)
{
  if (([a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(a1, sel_narrativeTrack)) != 0)
  {
    v3 = v2;
    [v2 duration];
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v4 = sub_219BF6F74();
    sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    v6 = [a1 title];
    if (v6)
    {
      v7 = v6;
      sub_219BF5414();
    }

    v8 = MEMORY[0x277D837D0];
    sub_2186DEEA0(0, &qword_280E8F860);
    v9 = sub_219BF5484();
    v11 = v10;
    *(v5 + 56) = v8;
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = v9;
    *(v5 + 40) = v11;
    sub_219BE5314();

    sub_219336C28();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

uint64_t sub_2193368C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack.Configurables(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21933698C()
{
  result = qword_27CC18EE0;
  if (!qword_27CC18EE0)
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_27CC18EE0);
  }

  return result;
}

uint64_t sub_219336A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219336A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_219336AD4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186EDF60(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_219336B40(uint64_t a1)
{
  sub_2186E7BB0(0, &unk_280E90220, &qword_280E90230, MEMORY[0x277D33C58], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219336BC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219336C28()
{
  result = qword_280EDCA30;
  if (!qword_280EDCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDCA30);
  }

  return result;
}

unint64_t sub_219336C7C()
{
  result = qword_27CC18EF0;
  if (!qword_27CC18EF0)
  {
    sub_2186C6148(255, &qword_280E8E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18EF0);
  }

  return result;
}

unint64_t sub_219336CE4()
{
  result = qword_27CC18F00;
  if (!qword_27CC18F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F00);
  }

  return result;
}

unint64_t sub_219336D4C()
{
  result = qword_27CC18F08;
  if (!qword_27CC18F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F08);
  }

  return result;
}

uint64_t sub_219336DD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193375D8(0, &qword_280E8CD80, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219337520();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21933763C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219337574(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21933707C(uint64_t a1)
{
  v2 = sub_219337520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193370B8(uint64_t a1)
{
  v2 = sub_219337520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219337134(void *a1)
{
  sub_2193375D8(0, &unk_280E8C538, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219337520();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21933763C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219337394(uint64_t a1)
{
  result = sub_21933763C(&qword_280EBFFC0, type metadata accessor for SuggestionTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2193373EC(uint64_t a1)
{
  v2 = sub_21933763C(&qword_280EBFFF0, type metadata accessor for SuggestionTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219337474(void *a1)
{
  a1[1] = sub_21933763C(&qword_280EBFFF0, type metadata accessor for SuggestionTodayFeedGroup);
  a1[2] = sub_21933763C(&qword_280EBFFC8, type metadata accessor for SuggestionTodayFeedGroup);
  result = sub_21933763C(&qword_280EBFFD8, type metadata accessor for SuggestionTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_219337520()
{
  result = qword_280EC0008[0];
  if (!qword_280EC0008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC0008);
  }

  return result;
}

uint64_t sub_219337574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193375D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219337520();
    v7 = a3(a1, &type metadata for SuggestionTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21933763C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219337698()
{
  result = qword_27CC18F10;
  if (!qword_27CC18F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F10);
  }

  return result;
}

unint64_t sub_2193376F0()
{
  result = qword_280EBFFF8;
  if (!qword_280EBFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBFFF8);
  }

  return result;
}

unint64_t sub_219337748()
{
  result = qword_280EC0000;
  if (!qword_280EC0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0000);
  }

  return result;
}

uint64_t type metadata accessor for SearchMoreSectionDescriptor()
{
  result = qword_27CC18F18;
  if (!qword_27CC18F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2193377E8()
{
  sub_2193378C4(319, &qword_27CC18F28, type metadata accessor for ArticlesSearchMoreFeedGroup);
  if (v0 <= 0x3F)
  {
    sub_2193378C4(319, &qword_27CC18F30, type metadata accessor for RecipesSearchMoreFeedGroup);
    if (v1 <= 0x3F)
    {
      sub_2193378C4(319, &qword_27CC18F38, type metadata accessor for TagsSearchMoreFeedGroup);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2193378C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219337910()
{
  v1 = v0;
  v2 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SearchMoreSectionDescriptor();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193380C4(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 7364967;
    }

    sub_2189650B8(v13, v4, type metadata accessor for TagsSearchMoreFeedGroup);
    v15 = *v4;

    v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    v17 = v4;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2189650B8(v13, v7, type metadata accessor for RecipesSearchMoreFeedGroup);
    v15 = *v7;

    v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    v17 = v7;
  }

  else
  {
    sub_2189650B8(v13, v10, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v15 = *v10;

    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
    v17 = v10;
  }

  sub_2193385C0(v17, v16);
  return v15;
}

double sub_219337B80@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreSectionDescriptor();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193380C4(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2189650B8(v15, v6, type metadata accessor for TagsSearchMoreFeedGroup);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_219338128(&qword_27CC16BB8, type metadata accessor for TagsSearchMoreFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_2189650B8(v6, boxed_opaque_existential_1, type metadata accessor for TagsSearchMoreFeedGroup);
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v17 = type metadata accessor for RecipesSearchMoreFeedGroup;
      sub_2189650B8(v15, v9, type metadata accessor for RecipesSearchMoreFeedGroup);
      *(a1 + 24) = v7;
      *(a1 + 32) = sub_219338128(&qword_27CC154D0, type metadata accessor for RecipesSearchMoreFeedGroup);
      v18 = __swift_allocate_boxed_opaque_existential_1(a1);
      v19 = v9;
    }

    else
    {
      v17 = type metadata accessor for ArticlesSearchMoreFeedGroup;
      sub_2189650B8(v15, v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
      *(a1 + 24) = v10;
      *(a1 + 32) = sub_219338128(&qword_27CC0D198, type metadata accessor for ArticlesSearchMoreFeedGroup);
      v18 = __swift_allocate_boxed_opaque_existential_1(a1);
      v19 = v12;
    }

    sub_2189650B8(v19, v18, v17);
  }

  return result;
}

uint64_t sub_219337E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193380C4(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for TagsSearchMoreFeedGroup;
LABEL_6:
    sub_2193385C0(v5, v7);
  }

  v8 = *MEMORY[0x277D31EA0];
  v9 = sub_219BEDDC4();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_219337F90@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193380C4(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v8 = MEMORY[0x277D33180];
      goto LABEL_8;
    }

    v7 = type metadata accessor for TagsSearchMoreFeedGroup;
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for RecipesSearchMoreFeedGroup;
  }

  sub_2193385C0(v5, v7);
  v8 = MEMORY[0x277D33190];
LABEL_8:
  v9 = *v8;
  v10 = sub_219BF10E4();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_2193380C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219338128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219338170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsSearchMoreFeedGroup();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v34 - v8);
  v10 = type metadata accessor for RecipesSearchMoreFeedGroup();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v34 - v14);
  v16 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v34 - v20);
  sub_21933855C();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 56);
  sub_2193380C4(a1, v25);
  sub_2193380C4(a2, &v25[v26]);
  type metadata accessor for SearchMoreSectionDescriptor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = type metadata accessor for RecipesSearchMoreFeedGroup;
      if (v28 == 1)
      {
        sub_2189650B8(v25, v15, type metadata accessor for RecipesSearchMoreFeedGroup);
        sub_2189650B8(&v25[v26], v13, type metadata accessor for RecipesSearchMoreFeedGroup);
        v30 = sub_219044728(v15, v13);
        v31 = type metadata accessor for RecipesSearchMoreFeedGroup;
        sub_2193385C0(v13, type metadata accessor for RecipesSearchMoreFeedGroup);
        v32 = v15;
        goto LABEL_10;
      }
    }

    else
    {
      v29 = type metadata accessor for ArticlesSearchMoreFeedGroup;
      if (!v28)
      {
        sub_2189650B8(v25, v21, type metadata accessor for ArticlesSearchMoreFeedGroup);
        sub_2189650B8(&v25[v26], v19, type metadata accessor for ArticlesSearchMoreFeedGroup);
        v30 = sub_218A5B328(v21, v19);
        v31 = type metadata accessor for ArticlesSearchMoreFeedGroup;
        sub_2193385C0(v19, type metadata accessor for ArticlesSearchMoreFeedGroup);
        v32 = v21;
LABEL_10:
        sub_2193385C0(v32, v31);
        return v30 & 1;
      }
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (v28 == 3)
    {
      v30 = 1;
      return v30 & 1;
    }

LABEL_14:
    sub_2193385C0(&v25[v26], type metadata accessor for SearchMoreSectionDescriptor);
    v30 = 0;
    return v30 & 1;
  }

  v29 = type metadata accessor for TagsSearchMoreFeedGroup;
  if (v28 != 2)
  {
LABEL_11:
    sub_2193385C0(v25, v29);
    goto LABEL_14;
  }

  sub_2189650B8(v25, v9, type metadata accessor for TagsSearchMoreFeedGroup);
  sub_2189650B8(&v25[v26], v7, type metadata accessor for TagsSearchMoreFeedGroup);
  v30 = sub_219178B58(v9, v7);
  sub_2193385C0(v7, type metadata accessor for TagsSearchMoreFeedGroup);
  sub_2193385C0(v9, type metadata accessor for TagsSearchMoreFeedGroup);
  return v30 & 1;
}

void sub_21933855C()
{
  if (!qword_27CC18F40)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18F40);
    }
  }
}

uint64_t sub_2193385C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219338620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219338E28(0, &qword_27CC18F68, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219338D70();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219338E8C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219338DC4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2193388CC(uint64_t a1)
{
  v2 = sub_219338D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219338908(uint64_t a1)
{
  v2 = sub_219338D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219338984(void *a1)
{
  sub_219338E28(0, &qword_27CC18F78, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219338D70();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219338E8C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219338BE4(uint64_t a1)
{
  result = sub_219338E8C(&qword_27CC0B988, type metadata accessor for MySportsTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219338C3C(uint64_t a1)
{
  v2 = sub_219338E8C(&qword_27CC18F60, type metadata accessor for MySportsTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219338CC4(void *a1)
{
  a1[1] = sub_219338E8C(&qword_27CC18F60, type metadata accessor for MySportsTodayFeedGroup);
  a1[2] = sub_219338E8C(&qword_27CC0B9D0, type metadata accessor for MySportsTodayFeedGroup);
  result = sub_219338E8C(&qword_27CC0BA10, type metadata accessor for MySportsTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_219338D70()
{
  result = qword_27CC18F70;
  if (!qword_27CC18F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F70);
  }

  return result;
}

uint64_t sub_219338DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MySportsTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219338E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219338D70();
    v7 = a3(a1, &type metadata for MySportsTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219338E8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219338EE8()
{
  result = qword_27CC18F80;
  if (!qword_27CC18F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F80);
  }

  return result;
}

unint64_t sub_219338F40()
{
  result = qword_27CC18F88;
  if (!qword_27CC18F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F88);
  }

  return result;
}

unint64_t sub_219338F98()
{
  result = qword_27CC18F90;
  if (!qword_27CC18F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F90);
  }

  return result;
}

uint64_t sub_219339008(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v75 = a2;
  sub_219339D24(0, &qword_27CC18FA0, MEMORY[0x277D6DF88]);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v63 - v6;
  v79 = sub_219BF0BD4();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8A9EC();
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioHistoryFeedGroup();
  v77 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v78 = &v63 - v22;
  sub_219339E18();
  MEMORY[0x28223BE20](v23 - 8);
  sub_219339D24(0, &qword_27CC0C088, MEMORY[0x277D6EC60]);
  v81 = v24;
  v70 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v27 = sub_21872F6C0(&qword_27CC18FB0, sub_218C8A9EC);
  v28 = sub_21872F6C0(&qword_27CC18FB8, sub_218C8A9EC);
  v67 = v10;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v10, v27, v28);
  v29 = type metadata accessor for AudioHistoryFeedSectionDescriptor();
  v30 = type metadata accessor for AudioHistoryFeedModel();
  v31 = sub_21872F6C0(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
  v32 = sub_21872F6C0(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
  v68 = v31;
  v69 = v30;
  v33 = v32;
  sub_219BEB2D4();
  v34 = *(v3 + 16);
  v35 = v34 >> 61;
  if ((v34 >> 61) <= 1)
  {
    v45 = v78;
    v80 = v26;
    if (v35)
    {
      v64 = v33;
      v65 = v29;
      v53 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *(v53 + 16);
      v55 = v67;
      if (v54)
      {
        v56 = v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v57 = *(v77 + 72);
        ++v76;
        v77 = v57;
        v58 = (v66 + 8);
        do
        {
          sub_218A30324(v56, v19);
          __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
          type metadata accessor for AudioHistoryFeedServiceConfig();
          sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
          sub_219BEE7A4();
          sub_219B71118(v19, v8, v12);
          sub_219339EE4(v19);
          (*v76)(v8, v79);
          sub_219BEB1E4();
          (*v58)(v12, v55);
          v56 += v77;
          --v54;
        }

        while (v54);
      }

      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for AudioHistoryFeedServiceConfig();
      sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
      v59 = sub_219BEEFC4();

      v60 = 0;
      if (v59)
      {
        v60 = sub_219BEDC74();
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v26 = v80;
      v36 = v81;
      v82 = v59;
      v85 = v60;
      sub_219BEB2C4();
      goto LABEL_27;
    }

    sub_219339F40();
    v46 = swift_projectBox();
    sub_218A30324(v46, v45);
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);

    sub_219BEE7A4();
    sub_219B71118(v45, v8, v12);
    v76[1](v8, v79);
    sub_219BEB1E4();
    (*(v66 + 8))(v12, v67);
    sub_219BEEFF4();
    sub_219BEEFE4();
    v47 = sub_219BEEFC4();

    v48 = 0;
    if (v47)
    {
      v48 = sub_219BEDC74();
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v47;
    v85 = v48;
    v26 = v80;
    v36 = v81;
    sub_219BEB2C4();

    sub_219339EE4(v45);
  }

  else if (v35 == 2)
  {
    sub_219339F40();
    v49 = swift_projectBox();
    v50 = v80;
    sub_218A30324(v49, v80);
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    v78 = type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);

    sub_219BEE7A4();
    sub_219B71118(v50, v8, v12);
    v76[1](v8, v79);
    sub_219BEB1E4();
    (*(v66 + 8))(v12, v67);
    sub_219BEEFF4();
    sub_219BEEFE4();
    v51 = sub_219BEEFC4();

    v52 = 0;
    if (v51)
    {
      v52 = sub_219BEDC74();
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v51;
    v85 = v52;
    v36 = v81;
    sub_219BEB2C4();

    sub_219339EE4(v80);
  }

  else
  {
    v36 = v81;
    if (v35 == 3)
    {
      v64 = v33;
      v65 = v29;
      v37 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = *(v37 + 16);
      v80 = v26;
      v39 = v67;
      if (v38)
      {
        v40 = v37 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v41 = *(v77 + 72);
        ++v76;
        v77 = v41;
        v42 = (v66 + 8);
        do
        {
          sub_218A30324(v40, v16);
          __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
          type metadata accessor for AudioHistoryFeedServiceConfig();
          sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
          sub_219BEE7A4();
          sub_219B71118(v16, v8, v12);
          sub_219339EE4(v16);
          (*v76)(v8, v79);
          sub_219BEB1E4();
          (*v42)(v12, v39);
          v40 += v77;
          --v38;
        }

        while (v38);
      }

      v26 = v80;
      sub_219BEEFF4();

      sub_219BEEFE4();
      type metadata accessor for AudioHistoryFeedServiceConfig();
      sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
      v43 = sub_219BEEFC4();

      v44 = 0;
      if (v43)
      {
        v44 = sub_219BEDC74();
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v36 = v81;
      v82 = v43;
      v85 = v44;
      sub_219BEB2C4();
LABEL_27:
    }
  }

  v61 = v71;
  sub_219BE85C4();
  v75(v61);
  (*(v72 + 8))(v61, v73);
  return (*(v70 + 8))(v26, v36);
}

unint64_t sub_219339C40()
{
  result = qword_27CC18F98;
  if (!qword_27CC18F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18F98);
  }

  return result;
}

void sub_219339D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioHistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioHistoryFeedModel();
    v8[2] = sub_21872F6C0(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    v8[3] = sub_21872F6C0(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219339E18()
{
  if (!qword_27CC18FA8)
  {
    sub_218C8A9EC();
    sub_21872F6C0(&qword_27CC18FB0, sub_218C8A9EC);
    sub_21872F6C0(&qword_27CC18FB8, sub_218C8A9EC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18FA8);
    }
  }
}

uint64_t sub_219339EE4(uint64_t a1)
{
  v2 = type metadata accessor for AudioHistoryFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219339F40()
{
  if (!qword_27CC18FC0)
  {
    type metadata accessor for AudioHistoryFeedGroup();
    sub_219339FB0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18FC0);
    }
  }
}

void sub_219339FB0()
{
  if (!qword_27CC18FC8)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_21872F6C0(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18FC8);
    }
  }
}

uint64_t sub_21933A044()
{

  sub_218932F9C(*(v0 + 48));
  sub_218774F78(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);

  return v0;
}

uint64_t sub_21933A0BC()
{
  sub_21933A044();

  return swift_deallocClassInstance();
}

uint64_t sub_21933A114(char a1)
{
  if (a1 == 4)
  {

    sub_219BDC8E4();
  }

  sub_219BDC8F4();

  sub_219BDC8E4();

  v1 = CACurrentMediaTime();
  type metadata accessor for MagazineCategoryConfig(0);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE2E54();
  sub_21933C2B0();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v7;
  v3 = sub_219BE2E54();
  sub_219BE2F84();

  v4 = sub_219BE2E54();
  v5 = sub_219BE2FE4();

  return v5;
}

uint64_t sub_21933A340(void *a1)
{
  sub_2186C6148(0, &qword_280E8D790);
  v2 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  v4 = a1[2];
  v3 = a1[3];
  v5 = off_282A6EDF0[0];
  type metadata accessor for MagazineCategoryConfigService();
  return v5(v4, v3);
}

uint64_t sub_21933A420(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = type metadata accessor for MagazineCategoryConfig(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v6 + 56) = MEMORY[0x277D839F8];
  *(v6 + 64) = v7;
  *(v6 + 32) = v8;
  sub_2186C6148(0, &qword_280E8D790);
  v9 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v10 = CACurrentMediaTime();
  v25 = a1;
  v26 = a2;
  sub_21933C438(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v10;
  v11 = sub_219BE2E54();
  sub_21933C354();
  sub_219BE2F74();

  v12 = CACurrentMediaTime();
  sub_219BE3204();

  v13 = sub_219BE2E54();
  sub_2186E330C();
  sub_219BE2F64();

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;

  v15 = sub_219BE2E54();
  sub_21933C3BC();
  sub_219BE2F74();

  __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
  sub_219BF3CC4();
  v16 = sub_219BE2E54();
  sub_219BE2E44();

  sub_21933C748(v23, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagazineCategoryConfig);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_21933C60C(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MagazineCategoryConfig);
  v19 = sub_219BE2E54();
  sub_21933C2B0();
  v20 = sub_219BE2F64();

  return v20;
}

uint64_t sub_21933A874(uint64_t *a1, uint64_t a2)
{
  sub_21933C2B0();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = v5[14];
  v12 = v5[18];
  v13 = v5[22];
  sub_21933C748(a2, v7, type metadata accessor for MagazineCategoryConfig);
  *&v7[v11] = v10;
  *&v7[v12] = v8;
  *&v7[v13] = v9;
  sub_21933C438(0, &unk_27CC18FF0, sub_21933C2B0, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v14 = v10;
  return sub_219BE3014();
}

uint64_t sub_21933A9B0(uint64_t a1, uint64_t a2, int a3)
{
  v77 = a3;
  v79 = a2;
  sub_21933C438(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v75 - v5;
  v86 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MagazineCategoryConfig.Channel(0);
  v9 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21933C2B0();
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineCategoryConfig(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21933C748(a1, v15, sub_21933C2B0);
  v75 = *&v15[v13[14]];
  v20 = *&v15[v13[18]];
  v80 = *&v15[v13[22]];
  sub_21933C60C(v15, v19, type metadata accessor for MagazineCategoryConfig);
  v21 = *(v17 + 44);
  v76 = v19;
  v22 = *&v19[v21];
  v23 = *(v22 + 16);
  if (!v23)
  {

    v65 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v24 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v25 = *(v9 + 72);
  v81 = (v7 + 48);
  v97 = MEMORY[0x277D84F90];
  v84 = v6;
  v26 = v86;
  v83 = v20;
  v82 = v25;
  do
  {
    sub_21933C748(v24, v11, type metadata accessor for MagazineCategoryConfig.Channel);
    if (!*(v20 + 16) || (v27 = sub_21870F700(*v11, v11[1]), (v28 & 1) == 0))
    {
      sub_21933C674(v11, type metadata accessor for MagazineCategoryConfig.Channel);
      goto LABEL_4;
    }

    v29 = *(*(v20 + 56) + 8 * v27);
    sub_21933C4EC(v11 + *(v85 + 28), v6);
    v30 = (*v81)(v6, 1, v26);
    v104 = v29;
    if (v30 == 1)
    {

      sub_21933C580(v6);
      v31 = 0;
      v95 = 0;
    }

    else
    {
      v32 = v78;
      sub_21933C60C(v6, v78, type metadata accessor for MagazineCategoryConfig.Channel.Image);
      __swift_project_boxed_opaque_existential_1((v79 + 288), *(v79 + 312));

      v29 = v104;
      v31 = sub_219BF2FB4();
      v95 = *(v32 + *(v26 + 20));
      sub_21933C674(v32, type metadata accessor for MagazineCategoryConfig.Channel.Image);
    }

    v33 = [*(v29 + 16) asChannel];
    if (!v33)
    {
      goto LABEL_19;
    }

    v34 = [v33 currentIssueIDs];
    swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_19;
    }

    v35 = sub_219BF5924();

    if (!v35[2])
    {

LABEL_19:
      v93 = 0;
      v94 = 0;
      v92 = 0;
      v91 = 0;
      goto LABEL_20;
    }

    v36 = v35[4];
    v37 = v35[5];

    v38 = v80;
    if (*(v80 + 16) && (v39 = sub_21870F700(v36, v37), (v40 & 1) != 0))
    {
      v41 = (*(v38 + 56) + 32 * v39);
      v42 = *(v41 + 9);
      *v99 = *v41;
      *&v99[9] = v42;
      sub_218950CAC(v99, v98);

      v93 = *&v99[8];
      v94 = *v99;
      v92 = *&v99[16];
      v91 = v99[24];
    }

    else
    {

      v93 = 0;
      v94 = 0;
      v92 = 0;
      v91 = 0;
    }

    v29 = v104;
LABEL_20:
    v43 = [*(v29 + 16) asChannel];
    v96 = v31;
    if (!v43)
    {
      goto LABEL_27;
    }

    v44 = [v43 recentIssueIDs];
    swift_unknownObjectRelease();
    if (!v44)
    {
      goto LABEL_27;
    }

    v45 = sub_219BF5924();

    if (v45[2] <= 1uLL || (v46 = v45[6], v47 = v45[7], , , v48 = v80, !*(v80 + 16)) || (v49 = sub_21870F700(v46, v47), (v50 & 1) == 0))
    {

LABEL_27:
      v90 = 0;
      v89 = 0;
      v88 = 0;
      v87 = 0;
      goto LABEL_28;
    }

    v51 = (*(v48 + 56) + 32 * v49);
    v52 = *(v51 + 9);
    *v99 = *v51;
    *&v99[9] = v52;
    sub_218950CAC(v99, v98);

    v89 = *&v99[8];
    v90 = *v99;
    v88 = *&v99[16];
    v87 = v99[24];
LABEL_28:
    v54 = v11[2];
    v53 = v11[3];
    v55 = v11[4];
    v56 = v11[5];

    sub_21933C674(v11, type metadata accessor for MagazineCategoryConfig.Channel);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v57 = v97;
    }

    else
    {
      v57 = sub_2191FA8B4(0, *(v97 + 2) + 1, 1, v97);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_2191FA8B4((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v97 = v57;
    v60 = &v57[120 * v59];
    v61 = v93;
    v62 = v94;
    *(v60 + 4) = v104;
    *(v60 + 5) = v62;
    *(v60 + 6) = v61;
    *(v60 + 7) = v92;
    v60[64] = v91;
    LODWORD(v61) = *&v99[3];
    *(v60 + 65) = *v99;
    *(v60 + 17) = v61;
    v63 = v89;
    *(v60 + 9) = v90;
    *(v60 + 10) = v63;
    *(v60 + 11) = v88;
    v60[96] = v87;
    LODWORD(v63) = *v98;
    *(v60 + 25) = *&v98[3];
    *(v60 + 97) = v63;
    *(v60 + 13) = v54;
    *(v60 + 14) = v53;
    *(v60 + 15) = v55;
    *(v60 + 16) = v56;
    v64 = v95;
    *(v60 + 17) = v96;
    *(v60 + 18) = v64;
    v6 = v84;
    v26 = v86;
    v20 = v83;
    v25 = v82;
LABEL_4:
    v24 += v25;
    --v23;
  }

  while (v23);

  v65 = v97;
LABEL_36:

  v66 = v76;
  v67 = *v76;
  v68 = v76[1];
  v70 = v76[2];
  v69 = v76[3];

  v71 = v75;
  v72 = [v75 isCategoriesDownloadButtonEnabled];
  *v99 = v65;
  *&v99[8] = v67;
  *&v99[16] = v68;
  *&v99[24] = v70;
  v100 = v69;
  v101 = v72;
  v102 = &unk_282A26C70;
  v103 = v77;
  sub_21933C49C();
  swift_allocObject();
  v73 = sub_219BE3014();

  sub_21933C674(v66, type metadata accessor for MagazineCategoryConfig);
  return v73;
}

void sub_21933B284(uint64_t a1, uint64_t a2)
{
  sub_219BF61F4();
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2186FC3BC();
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790);
  v8 = sub_219BF6F44();
  sub_219BE5314();
}

uint64_t sub_21933B3C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MagazineCategoryConfig.Channel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + *(type metadata accessor for MagazineCategoryConfig(0) + 36));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v26[0] = a2;
    v26[1] = v2;
    v27 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v10, 0);
    v11 = v27;
    v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_21933C748(v12, v8, type metadata accessor for MagazineCategoryConfig.Channel);
      v14 = *v8;
      v15 = v8[1];

      sub_21933C674(v8, type metadata accessor for MagazineCategoryConfig.Channel);
      v27 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21870B65C((v16 > 1), v17 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_2186F20D4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09BA0;
  v20 = *(v11 + 16);
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v21;
  *(v19 + 32) = v20;
  sub_2186C6148(0, &qword_280E8D790);
  v22 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  v23 = off_282A4D758;
  type metadata accessor for TagService();
  v24 = v23();

  return v24;
}

void sub_21933B664(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  *(v3 + 32) = v5;
  sub_2186C6148(0, &qword_280E8D790);
  v6 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  if (v2 >> 62)
  {
LABEL_27:
    v7 = sub_219BF7214();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v30 = v2 & 0xFFFFFFFFFFFFFF8;
      v31 = v2 & 0xC000000000000001;
      v9 = MEMORY[0x277D84F98];
      v29 = v2;
      while (1)
      {
        if (v31)
        {
          v10 = MEMORY[0x21CECE0F0](v8, v2);
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v8 >= *(v30 + 16))
          {
            goto LABEL_24;
          }

          v10 = *(v2 + 8 * v8 + 32);

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v32 = v11;
        v12 = [*(v10 + 16) identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = sub_21870F700(v13, v15);
        v19 = v9[2];
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_25;
        }

        v2 = v17;
        if (v9[3] >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v17)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_219492A6C();
            if (v2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_219481C7C(v21, isUniquelyReferenced_nonNull_native);
          v22 = sub_21870F700(v13, v15);
          if ((v2 & 1) != (v23 & 1))
          {
            sub_219BF79A4();
            __break(1u);
            return;
          }

          v18 = v22;
          if (v2)
          {
LABEL_4:

            *(v9[7] + 8 * v18) = v10;

            goto LABEL_5;
          }
        }

        v9[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v9[6] + 16 * v18);
        *v24 = v13;
        v24[1] = v15;
        *(v9[7] + 8 * v18) = v10;

        v25 = v9[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_26;
        }

        v9[2] = v27;
LABEL_5:
        ++v8;
        v2 = v29;
        if (v32 == v7)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F98];
LABEL_29:
  *a2 = v9;
}

uint64_t sub_21933B97C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v48 = MEMORY[0x277D84F90];
  if (v6)
  {
    while (1)
    {
LABEL_11:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = *(*(*(v2 + 56) + ((v9 << 9) | (8 * v11))) + 16);

      v13 = [v12 asChannel];
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = [v13 currentIssueIDs];
      swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = sub_219BF5924();

      v16 = v15;
      if (*(v15 + 16))
      {
        v18 = *(v15 + 32);
        v17 = *(v16 + 40);

        result = swift_isUniquelyReferenced_nonNull_native();
        v46 = v18;
        if ((result & 1) == 0)
        {
          result = sub_218840D24(0, *(v48 + 16) + 1, 1, v48);
          v48 = result;
        }

        v20 = *(v48 + 16);
        v19 = *(v48 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_218840D24((v19 > 1), v20 + 1, 1, v48);
          v48 = result;
        }

        *(v48 + 16) = v20 + 1;
        v21 = v48 + 16 * v20;
        *(v21 + 32) = v46;
        *(v21 + 40) = v17;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:

        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v22 = 1 << *(v2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v2 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v47 = MEMORY[0x277D84F90];
  if (v24)
  {
    while (1)
    {
LABEL_30:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = *(*(*(v2 + 56) + ((v26 << 9) | (8 * v28))) + 16);

      v30 = [v29 asChannel];
      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = [v30 recentIssueIDs];
      swift_unknownObjectRelease();
      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = sub_219BF5924();

      v33 = v32;
      if (*(v32 + 16) <= 1uLL)
      {

LABEL_25:

        if (!v24)
        {
          break;
        }
      }

      else
      {
        v35 = *(v32 + 48);
        v34 = *(v33 + 56);

        result = swift_isUniquelyReferenced_nonNull_native();
        v44 = v35;
        if ((result & 1) == 0)
        {
          result = sub_218840D24(0, *(v47 + 16) + 1, 1, v47);
          v47 = result;
        }

        v37 = *(v47 + 16);
        v36 = *(v47 + 24);
        if (v37 >= v36 >> 1)
        {
          result = sub_218840D24((v36 > 1), v37 + 1, 1, v47);
          v47 = result;
        }

        *(v47 + 16) = v37 + 1;
        v38 = v47 + 16 * v37;
        *(v38 + 32) = v44;
        *(v38 + 40) = v34;
        if (!v24)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      sub_2191ED3E8(v47);
      sub_2186F20D4();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_219C09BA0;
      v40 = *(v48 + 16);
      v41 = MEMORY[0x277D83C10];
      *(v39 + 56) = MEMORY[0x277D83B88];
      *(v39 + 64) = v41;
      *(v39 + 32) = v40;
      sub_2186C6148(0, &qword_280E8D790);
      v42 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      __swift_project_boxed_opaque_existential_1((a2 + 192), *(a2 + 216));
      v43 = sub_219BF1E44();

      return v43;
    }

    v24 = *(v3 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_30;
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_21933BE2C@<X0>(char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  sub_2186C6148(0, &qword_280E8D790);
  v8 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((a2 + 232), *(a2 + 256));
  v9 = sub_21945CCB8(v4);
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {
    v14 = MEMORY[0x277D84F98];
LABEL_17:

    *a3 = v14;
    return result;
  }

  v12 = 0;
  v13 = (v9 + 32);
  v14 = MEMORY[0x277D84F98];
  while (v12 < *(v10 + 16))
  {
    v19 = *(v13 + 9);
    *v43 = *v13;
    *&v43[9] = v19;
    v20 = *v43;
    sub_218950CAC(v43, v42);
    v21 = [v20 identifier];
    v22 = sub_219BF5414();
    v24 = v23;

    sub_218950CAC(v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_21870F700(v22, v24);
    v28 = v14[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_19;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_219485D2C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_21870F700(v22, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v39 = v26;
    sub_219495238();
    v26 = v39;
    if (v32)
    {
LABEL_3:
      v15 = v26;

      v16 = (v14[7] + 32 * v15);
      v17 = *(v16 + 9);
      *v42 = *v16;
      *&v42[9] = v17;
      v18 = *v43;
      *(v16 + 9) = *&v43[9];
      *v16 = v18;
      sub_218950D08(v42);
      sub_218950D08(v43);
      goto LABEL_4;
    }

LABEL_12:
    v14[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v14[6] + 16 * v26);
    *v34 = v22;
    v34[1] = v24;
    v35 = (v14[7] + 32 * v26);
    v36 = *&v43[9];
    *v35 = *v43;
    *(v35 + 9) = v36;
    sub_218950D08(v43);
    v37 = v14[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v14[2] = v38;
LABEL_4:
    ++v12;
    v13 += 2;
    if (v11 == v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_21933C144(uint64_t a1, uint64_t a2)
{
  *(*v2 + 64) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_21933C18C()
{
  v1 = *(*v0 + 32);

  return v1;
}

unint64_t sub_21933C1C8@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(*v1 + 48);
  *a1 = v2;
  return sub_2189EB264(v2);
}

unint64_t sub_21933C1FC(uint64_t a1)
{
  result = sub_21933C224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21933C224()
{
  result = qword_27CC18FD0;
  if (!qword_27CC18FD0)
  {
    type metadata accessor for MagazineCategoryGridModelLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18FD0);
  }

  return result;
}

void sub_21933C2B0()
{
  if (!qword_27CC18FD8)
  {
    type metadata accessor for MagazineCategoryConfig(255);
    sub_2186C6148(255, &qword_280E8DDC0);
    sub_21933C354();
    sub_21933C3BC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC18FD8);
    }
  }
}

void sub_21933C354()
{
  if (!qword_27CC18FE0)
  {
    type metadata accessor for TagModel();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18FE0);
    }
  }
}

void sub_21933C3BC()
{
  if (!qword_27CC18FE8)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18FE8);
    }
  }
}

void sub_21933C438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21933C49C()
{
  if (!qword_27CC13080)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13080);
    }
  }
}

uint64_t sub_21933C4EC(uint64_t a1, uint64_t a2)
{
  sub_21933C438(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21933C580(uint64_t a1)
{
  sub_21933C438(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21933C60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21933C674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21933C748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21933C81C(uint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_2186CFDE4(0, qword_280EA4728);
  result = sub_219BE1E34();
  if (v11)
  {
    sub_2186CB1F0(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(a1, v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong showViewController:v7 sender:v2];
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21933C91C()
{
  sub_2187C50B4(0, &qword_280EE39F8, &qword_280EE3A00, MEMORY[0x277D6EBA0], sub_21933D324);
  sub_219BE3204();
  v0 = sub_219BE1C44();
  sub_219BE2F94();
}

unint64_t sub_21933CA34(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  sub_21896FA3C();
  v45 = *(v3 - 8);
  v4 = *(v45 + 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = MEMORY[0x277D6EBA0];
  sub_2187C50B4(0, &qword_280EE39F8, &qword_280EE3A00, MEMORY[0x277D6EBA0], sub_21933D324);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  sub_21933D324(0, &qword_280EE3A00, v8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = a1;
  v17 = v16;
  v19 = v18;
  sub_21933D2B0(v15, v11, &qword_280EE39F8, &qword_280EE3A00, v8, sub_21933D324);
  if ((*(v17 + 48))(v11, 1, v19) == 1)
  {
    return sub_21933D388(v11, &qword_280EE39F8, &qword_280EE3A00, MEMORY[0x277D6EBA0], sub_21933D324);
  }

  v43 = v17;
  (*(v17 + 32))(v14, v11, v19);
  v21 = *(v47 + 72);
  sub_219BEA7A4();
  v22 = v58;
  v23 = sub_219BDFA44();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = v21;
  sub_21933D2B0(v54, &v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
  v44 = v19;
  v42 = v14;
  if (*(&v50 + 1))
  {
    sub_2186CB1F0(&v49, v51);
    *&v49 = v22;
    v24 = sub_2194DA78C(v51);
    v47 = v25;
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_21933D388(&v49, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v24 = qword_280ED32D8;
    v28 = qword_280ED32E0;
    v27 = qword_280ED32E8;

    v47 = v28;
    sub_2188202A8(v28);
  }

  v48 = v22;
  v50 = 0u;
  v49 = 0u;
  v29 = v46;
  sub_2189B4E2C(v7, v46);
  sub_21933D2B0(v56, v51, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
  v30 = (v45[80] + 24) & ~v45[80];
  v31 = (v4 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = v7;
  v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v33 = v22;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  sub_2189B4EAC(v29, v34 + v30);
  v35 = v34 + v31;
  v36 = v51[1];
  *v35 = v51[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v52;
  v37 = (v34 + v32);
  v38 = (v34 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v37 = 0;
  v37[1] = 0;
  v39 = v47;
  *v38 = v24;
  v38[1] = v39;
  v38[2] = v27;

  sub_2188202A8(v39);
  sub_21933D324(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  sub_2189B4DD4();
  v40 = v59;
  sub_219BEB464();

  if (v40)
  {
    sub_218806FD0(&v49);
    sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();

    sub_218932F9C(v33);

    sub_2187FABEC(v39);
    sub_21933D388(v54, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_21933D388(v56, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_218A42D80(v45);
    return (*(v43 + 8))(v42, v44);
  }

  else
  {

    sub_2187FABEC(v39);
    sub_21933D388(v54, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_21933D388(v56, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_218A42D80(v45);
    (*(v43 + 8))(v42, v44);
    sub_218806FD0(&v49);
    return sub_218932F9C(v33);
  }
}

uint64_t sub_21933D1C8()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21933D244()
{
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  v1 = off_282A31BE0[0];
  type metadata accessor for SportsOnboardingFlowManager(0);
  return v1();
}

uint64_t sub_21933D2B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_2187C50B4(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_21933D324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186CF9A8();
    v7 = a3(a1, &type metadata for NewsActivity2, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21933D388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2187C50B4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_21933D408(double a1)
{
  v1 = sub_218E9331C(a1);
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v1;
  v5 = *MEMORY[0x277D740C0];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = objc_opt_self();
  v7 = v3;
  v8 = v1;
  v9 = v5;
  v10 = [v6 labelColor];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v10;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v13 = sub_219BF5204();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}

uint64_t sub_21933D5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  sub_219004C80();
  sub_2193489FC(&qword_280E8DA40, 255, sub_219004C80);
  v5 = sub_219BF5D44();

  v6 = sub_218C87DAC(v5);

  if (!v6)
  {
    return sub_218718690(v1 + 16, a1);
  }

  v7 = [v6 delegate];

  if (!v7)
  {
    return sub_218718690(v1 + 16, a1);
  }

  type metadata accessor for SceneDelegate();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    return sub_218718690(v1 + 16, a1);
  }

  sub_2187B13AC(v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2186CFDE4(0, &unk_280EE6290);
  sub_219BE1E34();
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_2186CB1F0(&v9, a1);
  }

  else
  {
    sub_218718690(v1 + 16, a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_21933D7D4(char *a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v67 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v68 = (&v59 - v8);
  v72 = sub_219BE3D84();
  v9 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = v10;
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE3EE4();
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = a2;
  v15 = sub_219BE3ED4();
  v16 = sub_218ED23F8(v15);
  v18 = v17;

  if (v18)
  {
    v20 = v11;
    MEMORY[0x28223BE20](v19);
    *(&v59 - 4) = v3;
    *(&v59 - 3) = v16;
    *(&v59 - 2) = v18;
    sub_218731D50();
    v64 = sub_219BE3204();

    v21 = v9;
    v22 = v3;
    v59 = v3;
    v23 = v70;
    v24 = *(v70 + 16);
    v65 = v14;
    v66 = v70 + 16;
    v68 = v24;
    v25 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v14;
    v27 = v71;
    v24(v25, v26, v71);
    v28 = v13;
    v29 = *(v21 + 16);
    v62 = v21 + 16;
    v67 = v29;
    v30 = v72;
    v29(v20, v74, v72);
    v31 = *(v23 + 80);
    v32 = *(v21 + 80);
    v33 = v28 + v32 + ((v31 + 24) & ~v31);
    v34 = (v31 + 24) & ~v31;
    v61 = v34;
    v35 = v33 & ~v32;
    v63 = (v31 | v32);
    v36 = swift_allocObject();
    *(v36 + 16) = v22;
    v70 = *(v23 + 32);
    v37 = v36 + v34;
    v38 = v25;
    v39 = v25;
    v40 = v27;
    (v70)(v37, v39, v27);
    v60 = *(v21 + 32);
    v41 = v20;
    v60(v36 + v35, v20, v30);

    v42 = sub_219BE2E54();
    v69 = sub_219BE2F74();

    v68(v38, v65, v40);
    v67(v41, v74, v30);
    v43 = swift_allocObject();
    *(v43 + 16) = v59;
    (v70)(v43 + v61, v38, v40);
    v60(v43 + v35, v41, v30);

    v44 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v45 = sub_219BDF0E4();
    v46 = v68;
    (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
    v64 = *(v3 + 16);
    v69 = swift_allocObject();
    swift_weakInit();
    v63 = MEMORY[0x277D2D8A8];
    sub_21934897C(v46, v67, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    v47 = v70;
    v48 = v14;
    v49 = v71;
    (*(v70 + 16))(&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v71);
    (*(v9 + 16))(v11, v74, v72);
    v50 = *(v66 + 80);
    v74 = v11;
    v51 = (v50 + 16) & ~v50;
    v52 = (v6 + *(v47 + 80) + v51) & ~*(v47 + 80);
    v53 = (v13 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v9 + 80) + v53 + 8) & ~*(v9 + 80);
    v55 = swift_allocObject();
    sub_219345214(v67, v55 + v51);
    v56 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v69;
    (*(v47 + 32))(v55 + v52, v56, v49);
    *(v55 + v53) = v57;
    (*(v9 + 32))(v55 + v54, v74, v72);

    sub_219BDD154();

    sub_21934890C(v68, &unk_280EE88A0, v63);
  }
}

uint64_t sub_21933DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v266 = a5;
  v271 = a4;
  v286 = a3;
  v287 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_2193451B0(0, &unk_27CC19028, MEMORY[0x277D350B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v233 = &v213 - v8;
  v269 = sub_219BE4404();
  v270 = *(v269 - 8);
  v9 = MEMORY[0x28223BE20](v269);
  v11 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v213 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v268 = &v213 - v16;
  MEMORY[0x28223BE20](v15);
  v267 = &v213 - v17;
  v236 = sub_219BE09B4();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v237 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_219BE09A4();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v238 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_219BE3D84();
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v274 = &v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_219BE1464();
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v217 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_219BDF3D4();
  v262 = *(v263 - 8);
  v22 = MEMORY[0x28223BE20](v263);
  v231 = &v213 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v229 = &v213 - v24;
  v265 = sub_219BDF3C4();
  v264 = *(v265 - 8);
  v25 = MEMORY[0x28223BE20](v265);
  v232 = &v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v230 = &v213 - v27;
  sub_2193451B0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v6);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v228 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v261 = &v213 - v31;
  v276 = sub_219BDB954();
  v275 = *(v276 - 8);
  v32 = MEMORY[0x28223BE20](v276);
  v216 = &v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v234 = &v213 - v34;
  sub_2193451B0(0, &unk_280EE8830, MEMORY[0x277D2D970], v6);
  MEMORY[0x28223BE20](v35 - 8);
  v258 = &v213 - v36;
  v260 = sub_219BDF1E4();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v227 = &v213 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &qword_280EE8008, MEMORY[0x277D2F280], v6);
  MEMORY[0x28223BE20](v38 - 8);
  v255 = &v213 - v39;
  v257 = sub_219BE14A4();
  v256 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v226 = &v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &unk_280EE86F0, MEMORY[0x277D2DC88], v6);
  MEMORY[0x28223BE20](v41 - 8);
  v252 = &v213 - v42;
  v254 = sub_219BDF654();
  v253 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v225 = &v213 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], v6);
  MEMORY[0x28223BE20](v44 - 8);
  v249 = &v213 - v45;
  v251 = sub_219BDF2F4();
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v224 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_219BE0484();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v246 = &v213 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_219BE1444();
  v279 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v277 = &v213 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &unk_280EE88F0, MEMORY[0x277D2D798], v6);
  MEMORY[0x28223BE20](v49 - 8);
  v285 = &v213 - v50;
  v51 = sub_219BDEFE4();
  v282 = *(v51 - 8);
  *&v283 = v51;
  MEMORY[0x28223BE20](v51);
  v223 = &v213 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &qword_280EE8908, MEMORY[0x277D2D788], v6);
  MEMORY[0x28223BE20](v53 - 8);
  v278 = &v213 - v54;
  v284 = sub_219BDEF94();
  v280 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v222 = &v213 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v6);
  MEMORY[0x28223BE20](v56 - 8);
  v243 = &v213 - v57;
  v245 = sub_219BE16D4();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v221 = &v213 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &qword_280EE8188, MEMORY[0x277D2ECA0], v6);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v213 - v60;
  v242 = sub_219BE0D44();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v220 = &v213 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], v6);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v213 - v65;
  v67 = sub_219BDF0E4();
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v213 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934897C(a2, v66, &unk_280EE88A0, v63);
  v71 = (*(v68 + 48))(v66, 1, v67);
  v214 = v11;
  v215 = v14;
  if (v71 == 1)
  {
    sub_21934890C(v66, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  }

  else
  {
    (*(v68 + 32))(v70, v66, v67);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v72 = sub_219BDCD44();
    v73 = *(v72 - 8);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C09BA0;
    (*(v73 + 104))(v75 + v74, *MEMORY[0x277CEAD18], v72);
    sub_2193489FC(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
    sub_219BDCCC4();

    (*(v68 + 8))(v70, v67);
  }

  v76 = sub_219BE3ED4();
  sub_218ED2B28(v76, v61);

  v77 = v241;
  v78 = v242;
  if ((*(v241 + 48))(v61, 1, v242) == 1)
  {
    sub_21934890C(v61, &qword_280EE8188, MEMORY[0x277D2ECA0]);
  }

  else
  {
    v79 = v220;
    (*(v77 + 32))(v220, v61, v78);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v80 = sub_219BDCD44();
    v81 = *(v80 - 8);
    v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_219C09BA0;
    (*(v81 + 104))(v83 + v82, *MEMORY[0x277CEAD18], v80);
    sub_2193489FC(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
    sub_219BDCCC4();

    (*(v77 + 8))(v79, v78);
  }

  v84 = v245;
  v85 = sub_219BE3ED4();
  v86 = v243;
  sub_218ED2ED4(v85, v243);

  v87 = v244;
  if ((*(v244 + 48))(v86, 1, v84) == 1)
  {
    sub_21934890C(v86, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v88 = v221;
    (*(v87 + 32))(v221, v86, v84);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v89 = sub_219BDCD44();
    v90 = *(v89 - 8);
    v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_219C09BA0;
    (*(v90 + 104))(v92 + v91, *MEMORY[0x277CEAD18], v89);
    sub_2193489FC(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v87 + 8))(v88, v84);
  }

  v93 = sub_219BE3ED4();
  v94 = v278;
  sub_218ED3460(v93, v278);

  v95 = v280;
  v96 = v284;
  if ((*(v280 + 48))(v94, 1, v284) == 1)
  {
    sub_21934890C(v94, &qword_280EE8908, MEMORY[0x277D2D788]);
  }

  else
  {
    v97 = v222;
    (*(v95 + 32))(v222, v94, v96);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v98 = sub_219BDCD44();
    v99 = *(v98 - 8);
    v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_219C09BA0;
    (*(v99 + 104))(v101 + v100, *MEMORY[0x277CEAD18], v98);
    sub_2193489FC(&qword_280EE8910, 255, MEMORY[0x277D2D788]);
    sub_219BDCCC4();

    (*(v95 + 8))(v97, v96);
  }

  v102 = v282;
  v103 = v283;
  v104 = sub_219BE3ED4();
  v105 = v285;
  sub_218ED376C(v104, v285);

  if ((*(v102 + 48))(v105, 1, v103) == 1)
  {
    sub_21934890C(v105, &unk_280EE88F0, MEMORY[0x277D2D798]);
    LODWORD(v284) = *MEMORY[0x277CEAD18];
    v285 = 0x8000000219D18240;
    v106 = &unk_219C09000;
  }

  else
  {
    v107 = v223;
    (*(v102 + 32))(v223, v105, v103);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v108 = *(sub_219BDCD44() - 8);
    v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_219C09BA0;
    v111 = *(v108 + 104);
    LODWORD(v284) = *MEMORY[0x277CEAD18];
    v111(v110 + v109);
    sub_2193489FC(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
    v285 = 0x8000000219D18240;
    sub_219BDCCC4();

    (*(v102 + 8))(v107, v103);
    v106 = &unk_219C09000;
  }

  sub_219BE3EB4();
  v112 = v277;
  sub_219BE1424();
  sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v282 = v113;
  v114 = sub_219BDCD44();
  v115 = *(v114 - 8);
  v116 = *(v115 + 72);
  v117 = *(v115 + 80);
  v118 = (v117 + 32) & ~v117;
  v119 = swift_allocObject();
  v283 = v106[186];
  *(v119 + 16) = v283;
  v280 = *(v115 + 104);
  (v280)(v119 + v118, v284, v114);
  sub_2193489FC(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v120 = v281;
  sub_219BDCCC4();

  (*(v279 + 8))(v112, v120);
  sub_219BE3EC4();
  v121 = v246;
  sub_219BE0474();
  v281 = v116;
  v122 = swift_allocObject();
  *(v122 + 16) = v283;
  v245 = v118;
  v277 = v114;
  v123 = v114;
  v124 = v280;
  v279 = v115 + 104;
  (v280)(v122 + v118, v284, v123);
  sub_2193489FC(&unk_280EE83F0, 255, MEMORY[0x277D2E550]);
  v125 = v248;
  sub_219BDCCC4();

  (*(v247 + 8))(v121, v125);
  v126 = sub_219BE3ED4();
  v127 = v249;
  sub_218ED2038(v126, v249);

  v128 = v250;
  v129 = v251;
  v130 = (*(v250 + 48))(v127, 1, v251);
  v278 = v117;
  if (v130 == 1)
  {
    sub_21934890C(v127, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
    v131 = v245;
    v132 = v285;
  }

  else
  {
    v133 = v124;
    v134 = v224;
    (*(v128 + 32))(v224, v127, v129);
    v135 = v245;
    v136 = swift_allocObject();
    *(v136 + 16) = v283;
    v133(v136 + v135, v284, v277);
    sub_2193489FC(&qword_280EE8800, 255, MEMORY[0x277D2D9E8]);
    v132 = v285;
    sub_219BDCCC4();

    (*(v128 + 8))(v134, v129);
    v131 = v135;
  }

  v137 = sub_219BE3ED4();
  v138 = v252;
  sub_218ED221C(v137, v252);

  v139 = v253;
  v140 = v254;
  v141 = (*(v253 + 48))(v138, 1, v254);
  v285 = v132;
  if (v141 == 1)
  {
    sub_21934890C(v138, &unk_280EE86F0, MEMORY[0x277D2DC88]);
    v142 = v280;
  }

  else
  {
    v143 = v225;
    (*(v139 + 32))(v225, v138, v140);
    v144 = swift_allocObject();
    *(v144 + 16) = v283;
    v142 = v280;
    (v280)(v144 + v131, v284, v277);
    sub_2193489FC(&qword_280EE8700, 255, MEMORY[0x277D2DC88]);
    sub_219BDCCC4();

    (*(v139 + 8))(v143, v140);
  }

  v145 = v257;
  v146 = sub_219BE3ED4();
  v147 = v255;
  sub_218ED26E0(v146, v255);

  v148 = v256;
  if ((*(v256 + 48))(v147, 1, v145) == 1)
  {
    sub_21934890C(v147, &qword_280EE8008, MEMORY[0x277D2F280]);
    v149 = v131;
  }

  else
  {
    v150 = v226;
    (*(v148 + 32))(v226, v147, v145);
    v149 = v131;
    v151 = swift_allocObject();
    *(v151 + 16) = v283;
    v142(v151 + v131, v284, v277);
    sub_2193489FC(&qword_280EE8010, 255, MEMORY[0x277D2F280]);
    sub_219BDCCC4();

    (*(v148 + 8))(v150, v145);
  }

  v152 = v259;
  v153 = sub_219BE3ED4();
  v154 = v258;
  sub_218ED292C(v153, v258);

  v155 = v260;
  if ((*(v152 + 48))(v154, 1, v260) == 1)
  {
    sub_21934890C(v154, &unk_280EE8830, MEMORY[0x277D2D970]);
  }

  else
  {
    v156 = v227;
    (*(v152 + 32))(v227, v154, v155);
    v157 = swift_allocObject();
    *(v157 + 16) = v283;
    v142(v157 + v149, v284, v277);
    sub_2193489FC(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
    sub_219BDCCC4();

    (*(v152 + 8))(v156, v155);
  }

  v158 = v275;
  v159 = v274;
  v160 = v261;
  sub_219BE3E54();
  v161 = *(v158 + 48);
  v162 = v276;
  if (v161(v160, 1, v276) != 1)
  {
    v166 = *(v158 + 32);
    v167 = v234;
    v166(v234, v160, v162);
    v168 = v167;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_218718690(Strong + 72, &v288);

      __swift_project_boxed_opaque_existential_1(&v288, *(&v289 + 1));
      v170 = v228;
      sub_218B04028(v168, v228);
      v171 = v276;
      __swift_destroy_boxed_opaque_existential_1(&v288);
      v172 = v161(v170, 1, v171);
      v173 = v170;
      v174 = v270;
      v175 = v269;
      v167 = v168;
      if (v172 != 1)
      {
        v176 = v216;
        v166(v216, v173, v171);
        sub_219BDB804();
        v177 = v217;
        sub_219BE1454();
        v178 = swift_allocObject();
        *(v178 + 16) = v283;
        (v280)(v178 + v149, v284, v277);
        sub_2193489FC(&qword_280EE8020, 255, MEMORY[0x277D2F270]);
        v179 = v219;
        v164 = v287;
        sub_219BDCCC4();

        v180 = v177;
        v167 = v234;
        (*(v218 + 8))(v180, v179);
        (*(v275 + 8))(v176, v171);
LABEL_38:
        v185 = v274;
        (*(v262 + 104))(v231, *MEMORY[0x277D2DA68], v263);
        v186 = v232;
        sub_219BDF3B4();
        v187 = swift_allocObject();
        *(v187 + 16) = v283;
        v181 = v277;
        (v280)(v187 + v149, v284, v277);
        sub_2193489FC(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
        v188 = v265;
        sub_219BDCCC4();

        (*(v264 + 8))(v186, v188);
        (*(v275 + 8))(v167, v276);
        v159 = v185;
        goto LABEL_39;
      }
    }

    else
    {
      v173 = v228;
      (*(v158 + 56))(v228, 1, 1, v162);
      v174 = v270;
      v175 = v269;
    }

    sub_21934890C(v173, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v164 = v287;
    goto LABEL_38;
  }

  sub_21934890C(v160, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_219BE3E74();
  v163 = sub_219BE3E94();
  v164 = v287;
  if (v163 > 5)
  {
    v165 = MEMORY[0x277D2DA58];
  }

  else
  {
    v165 = qword_278242BF8[v163];
  }

  v174 = v270;
  v181 = v277;
  (*(v262 + 104))(v229, *v165, v263);
  v182 = v230;
  sub_219BDF3B4();
  v183 = swift_allocObject();
  *(v183 + 16) = v283;
  (v280)(v183 + v149, v284, v181);
  sub_2193489FC(&qword_280EE87E0, 255, MEMORY[0x277D2DA30]);
  v184 = v265;
  sub_219BDCCC4();

  (*(v264 + 8))(v182, v184);
  v175 = v269;
LABEL_39:
  v189 = v272;
  v190 = v273;
  (*(v272 + 16))(v159, v266, v273);
  v191 = (*(v189 + 88))(v159, v190);
  v192 = v268;
  v193 = v267;
  if (v191 == *MEMORY[0x277D34DC0])
  {
    (*(v189 + 96))(v159, v190);
    (*(v174 + 32))(v193, v159, v175);
    (*(v235 + 104))(v237, *MEMORY[0x277D2E990], v236);
    v194 = v238;
    sub_219BE0994();
    v195 = swift_allocObject();
    *(v195 + 16) = v283;
    (v280)(v195 + v149, v284, v181);
    sub_2193489FC(&qword_27CC19040, 255, MEMORY[0x277D2E968]);
    v196 = v240;
    sub_219BDCCC4();

    (*(v239 + 8))(v194, v196);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v197 = v233;
      (*(v174 + 16))(v233, v193, v175);
      (*(v174 + 56))(v197, 0, 1, v175);
      sub_219346144(v164, v197);

      sub_21934890C(v197, &unk_27CC19028, MEMORY[0x277D350B8]);
    }

    (*(v174 + 8))(v193, v175);
  }

  else
  {
    if (v191 != *MEMORY[0x277D34DA8])
    {
      if (v191 == *MEMORY[0x277D34DB0])
      {
        (*(v272 + 96))(v159, v273);
        v202 = v215;
        (*(v174 + 32))(v215, v159, v175);
        (*(v235 + 104))(v237, *MEMORY[0x277D2E978], v236);
        v203 = v238;
        sub_219BE0994();
        v204 = swift_allocObject();
        *(v204 + 16) = v283;
        (v280)(v204 + v149, v284, v181);
        sub_2193489FC(&qword_27CC19040, 255, MEMORY[0x277D2E968]);
      }

      else
      {
        if (v191 != *MEMORY[0x277D34DC8])
        {
          if (v191 == *MEMORY[0x277D34DB8])
          {
            (*(v235 + 104))(v237, *MEMORY[0x277D2E988], v236);
            v210 = v238;
            sub_219BE0994();
            v211 = swift_allocObject();
            *(v211 + 16) = v283;
            (v280)(v211 + v149, v284, v181);
            sub_2193489FC(&qword_27CC19040, 255, MEMORY[0x277D2E968]);
            v212 = v240;
            sub_219BDCCC4();

            (*(v239 + 8))(v210, v212);
          }

          else
          {
            (*(v272 + 8))(v159, v273);
          }

          goto LABEL_54;
        }

        (*(v272 + 96))(v159, v273);
        v202 = v214;
        (*(v174 + 32))(v214, v159, v175);
        (*(v235 + 104))(v237, *MEMORY[0x277D2E970], v236);
        v203 = v238;
        sub_219BE0994();
        v205 = swift_allocObject();
        *(v205 + 16) = v283;
        (v280)(v205 + v149, v284, v181);
        sub_2193489FC(&qword_27CC19040, 255, MEMORY[0x277D2E968]);
      }

      v206 = v240;
      sub_219BDCCC4();

      (*(v239 + 8))(v203, v206);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v207 = v202;
        v208 = v233;
        (*(v174 + 16))(v233, v207, v175);
        (*(v174 + 56))(v208, 0, 1, v175);
        sub_219346144(v164, v208);

        sub_21934890C(v208, &unk_27CC19028, MEMORY[0x277D350B8]);
        (*(v174 + 8))(v207, v175);
      }

      else
      {
        (*(v174 + 8))(v202, v175);
      }

      goto LABEL_54;
    }

    (*(v272 + 96))(v159, v273);
    (*(v174 + 32))(v192, v159, v175);
    (*(v235 + 104))(v237, *MEMORY[0x277D2E980], v236);
    v198 = v238;
    sub_219BE0994();
    v199 = swift_allocObject();
    *(v199 + 16) = v283;
    (v280)(v199 + v149, v284, v181);
    sub_2193489FC(&qword_27CC19040, 255, MEMORY[0x277D2E968]);
    v200 = v240;
    sub_219BDCCC4();

    (*(v239 + 8))(v198, v200);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v201 = v233;
      (*(v174 + 16))(v233, v192, v175);
      (*(v174 + 56))(v201, 0, 1, v175);
      sub_219346144(v164, v201);

      sub_21934890C(v201, &unk_27CC19028, MEMORY[0x277D350B8]);
    }

    (*(v174 + 8))(v192, v175);
  }

LABEL_54:
  sub_219BE0AE4();
  sub_2193489FC(&qword_27CC19038, 255, MEMORY[0x277D2EB08]);
  v288 = 0u;
  v289 = 0u;
  sub_219BDCCE4();
  return sub_2193458E0(&v288, sub_21880702C);
}

uint64_t sub_21934114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v37 = sub_219BE3D84();
  v41 = *(v37 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE3EE4();
  v27 = v5;
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D2D8A8];
  v30 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  swift_getObjectType();
  sub_219BF67F4();
  v13 = sub_219BDF0E4();
  v14 = *(*(v13 - 8) + 56);
  v31 = v12;
  v14(v12, 0, 1, v13);
  v33 = *(v35 + 16);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_21934897C(v12, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_280EE88A0, v7);
  v16 = v34;
  (*(v34 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v5);
  v17 = v41;
  v18 = v36;
  v19 = v37;
  (*(v41 + 16))(v36, v39, v37);
  v20 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v21 = (v9 + *(v16 + 80) + v20) & ~*(v16 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v17 + 80) + v22 + 8) & ~*(v17 + 80);
  v24 = swift_allocObject();
  sub_219345214(v29, v24 + v20);
  (*(v16 + 32))(v24 + v21, v28, v27);
  *(v24 + v22) = v15;
  (*(v41 + 32))(v24 + v23, v18, v19);

  sub_219BDD154();

  sub_21934890C(v31, &unk_280EE88A0, v30);
}

uint64_t sub_21934154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = sub_219BE3D84();
  v34 = *(v37 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3EE4();
  v26 = v6;
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D2D8A8];
  v30 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = sub_219BDF0E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v32 = *(a2 + 16);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v13;
  sub_21934897C(v13, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_280EE88A0, v8);
  v17 = v31;
  (*(v31 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v6);
  v19 = v33;
  v18 = v34;
  (*(v34 + 16))(v33, v36, v37);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = (v10 + *(v17 + 80) + v20) & ~*(v17 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v18 + 80) + v22 + 8) & ~*(v18 + 80);
  v24 = swift_allocObject();
  sub_219345214(v28, v24 + v20);
  (*(v17 + 32))(v24 + v21, v27, v26);
  *(v24 + v22) = v15;
  (*(v18 + 32))(v24 + v23, v19, v37);

  sub_219BDD154();

  sub_21934890C(v16, &unk_280EE88A0, v30);
}

uint64_t sub_21934191C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v63 = a3;
  v73 = a1;
  v53 = sub_219BE09E4();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = v49 - v7;
  v60 = sub_219BDF2F4();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v49[0] = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1094();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BE0E44();
  v55 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BE0E34();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE1444();
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v16 = [a2 identifier];
  sub_219BF5414();

  sub_219BE1424();
  sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v18 = v17;
  v19 = sub_219BDCD44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  v72 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;
  v71 = *MEMORY[0x277CEAD18];
  v67 = *(v20 + 104);
  v67(v24 + v23);
  v66 = "TransactionTracker.swift";
  sub_2193489FC(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  sub_219BDCCC4();

  (*(v54 + 8))(v15, v13);
  (*(v55 + 104))(v59, *MEMORY[0x277D2ED50], v65);
  (*(v69 + 104))(v68, *MEMORY[0x277D2EED0], v70);
  v25 = v56;
  sub_219BE0E24();
  v69 = v18;
  v70 = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = v72;
  v59 = v23;
  v65 = v19;
  v68 = (v20 + 104);
  v27 = v67;
  (v67)(v26 + v23, v71, v19);
  v28 = v27;
  sub_2193489FC(&unk_27CC22080, 255, MEMORY[0x277D2ED40]);
  v29 = v58;
  sub_219BDCCC4();

  (*(v61 + 8))(v25, v29);
  v30 = sub_219BE3ED4();
  v31 = v62;
  sub_218ED2038(v30, v62);

  v32 = v57;
  v33 = v60;
  v34 = (*(v57 + 48))(v31, 1);
  v49[1] = v22;
  if (v34 == 1)
  {
    sub_21934890C(v31, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
    v35 = v59;
    v36 = v71;
  }

  else
  {
    v37 = v49[0];
    (*(v32 + 32))(v49[0], v31, v33);
    v35 = v59;
    v38 = swift_allocObject();
    *(v38 + 16) = v72;
    v39 = v71;
    (v28)(&v35[v38], v71, v65);
    sub_2193489FC(&qword_280EE8800, 255, MEMORY[0x277D2D9E8]);
    sub_219BDCCC4();

    (*(v32 + 8))(v37, v33);
    v36 = v39;
  }

  v40 = [v64 asChannel];
  if (v40)
  {
    v64 = *(v51 + 24);
    v41 = v50;
    v63 = v40;
    sub_219BE01E4();
    v42 = swift_allocObject();
    *(v42 + 16) = v72;
    v43 = v36;
    v44 = v65;
    (v28)(&v35[v42], v43, v65);
    v62 = sub_2193489FC(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v45 = v53;
    sub_219BDCCC4();

    v46 = *(v52 + 8);
    v46(v41, v45);
    sub_219BE01E4();
    v47 = swift_allocObject();
    *(v47 + 16) = v72;
    (v67)(&v35[v47], v71, v44);
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    v46(v41, v45);
  }

  sub_219BE0E14();
  sub_2193489FC(&qword_27CC19020, 255, MEMORY[0x277D2ED30]);
  memset(v74, 0, sizeof(v74));
  sub_219BDCCE4();
  return sub_2193458E0(v74, sub_21880702C);
}

uint64_t sub_2193423D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v68 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v69 = &v54 - v7;
  v78 = sub_219BE41A4();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = v9;
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE3F14();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BE3EE4();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v15 = sub_219BE3ED4();
  v16 = sub_218ED23F8(v15);
  v18 = v17;

  v71 = v11;
  if (v18)
  {
    v20 = v8;
    v54 = v10;
    MEMORY[0x28223BE20](v19);
    *(&v54 - 4) = v77;
    *(&v54 - 3) = v16;
    *(&v54 - 2) = v18;
    sub_218731D50();
    v63 = sub_219BE3204();

    v21 = v13;
    v68 = *(v13 + 16);
    v69 = v13 + 16;
    (v68)(v79, v72, v80);
    v22 = v76;
    v66 = *(v76 + 16);
    v67 = v76 + 16;
    v23 = v70;
    v66();
    v64 = *(v8 + 16);
    v65 = v8 + 16;
    v24 = v54;
    v64(v54, v75, v78);
    v25 = *(v13 + 80);
    v26 = (v25 + 24) & ~v25;
    v27 = *(v22 + 80);
    v60 = v26;
    v28 = *(v8 + 80);
    v29 = (v14 + v27 + v26) & ~v27;
    v57 = v29;
    v62 = v25 | v27 | v28;
    v30 = (v12 + v28 + v29) & ~v28;
    v31 = swift_allocObject();
    *(v31 + 16) = v77;
    v59 = *(v21 + 32);
    v61 = v21 + 32;
    v59(v31 + v26, v79, v80);
    v32 = *(v22 + 32);
    v76 = v22 + 32;
    v58 = v32;
    v32(v31 + v29, v23, v71);
    v55 = *(v20 + 32);
    v56 = v20 + 32;
    v55(v31 + v30, v24, v78);

    v33 = sub_219BE2E54();
    sub_219BE2F74();

    v35 = v79;
    v34 = v80;
    (v68)(v79, v72, v80);
    v36 = v71;
    (v66)(v23, v74, v71);
    v37 = v78;
    v64(v24, v75, v78);
    v38 = swift_allocObject();
    *(v38 + 16) = v77;
    v59(v38 + v60, v35, v34);
    v58(v38 + v57, v23, v36);
    v55(v38 + v30, v24, v37);

    v39 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v41 = sub_219BDF0E4();
    v42 = v69;
    (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
    v66 = *(v77 + 2);
    v77 = MEMORY[0x277D2D8A8];
    sub_21934897C(v42, v68, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    (*(v13 + 16))(v79, v72, v80);
    v43 = v76;
    (*(v76 + 16))(v70, v74, v11);
    v44 = v78;
    (*(v8 + 16))(v10, v75, v78);
    v45 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v46 = *(v13 + 80);
    v47 = v5 + v46 + v45;
    v48 = v8;
    v49 = v10;
    v50 = v47 & ~v46;
    v51 = (v14 + *(v43 + 80) + v50) & ~*(v43 + 80);
    v52 = (v12 + *(v48 + 80) + v51) & ~*(v48 + 80);
    v53 = swift_allocObject();
    sub_219345214(v68, v53 + v45);
    (*(v13 + 32))(v53 + v50, v79, v80);
    (*(v43 + 32))(v53 + v51, v70, v71);
    (*(v48 + 32))(v53 + v52, v49, v44);
    sub_219BDD154();

    return sub_21934890C(v69, &unk_280EE88A0, v77);
  }
}

uint64_t sub_219342C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v105 = a4;
  v128 = a3;
  v130 = a1;
  v111 = sub_219BE41A4();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v117 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BE0B44();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v110 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE0B34();
  v114 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BE3F14();
  v116 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v115 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BE0634();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v104 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE0624();
  v112 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v121 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE0484();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_2193451B0(0, &unk_280EE8830, MEMORY[0x277D2D970], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v89 - v16;
  v96 = sub_219BDF1E4();
  v119 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193451B0(0, &qword_280EE8008, MEMORY[0x277D2F280], v14);
  MEMORY[0x28223BE20](v18 - 8);
  v92 = &v89 - v19;
  v94 = sub_219BE14A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE1444();
  v123 = *(v21 - 8);
  v124 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], v14);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v89 - v26;
  v28 = sub_219BDF0E4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934897C(a2, v27, &unk_280EE88A0, v24);
  v32 = (*(v29 + 48))(v27, 1, v28);
  v122 = v11;
  if (v32 == 1)
  {
    sub_21934890C(v27, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    v33 = *MEMORY[0x277CEAD18];
    v129 = 0x8000000219D18240;
  }

  else
  {
    (*(v29 + 32))(v31, v27, v28);
    sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v34 = sub_219BDCD44();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09BA0;
    v38 = v37 + v36;
    v39 = *MEMORY[0x277CEAD18];
    (*(v35 + 104))(v38, v39, v34);
    sub_2193489FC(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
    v129 = 0x8000000219D18240;
    sub_219BDCCC4();

    (*(v29 + 8))(v31, v28);
    v33 = v39;
  }

  sub_219BE3EB4();
  sub_219BE1424();
  sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v41 = v40;
  v42 = sub_219BDCD44();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = v23;
  v46 = *(v43 + 80);
  v47 = (v46 + 32) & ~v46;
  v125 = v41;
  v48 = swift_allocObject();
  v127 = xmmword_219C09BA0;
  *(v48 + 16) = xmmword_219C09BA0;
  v49 = *(v43 + 104);
  v118 = v42;
  v126 = v43 + 104;
  v49(v48 + v47, v33, v42);
  sub_2193489FC(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v50 = v124;
  sub_219BDCCC4();

  (*(v123 + 1))(v45, v50);
  v51 = sub_219BE3ED4();
  v52 = v33;
  v53 = v92;
  sub_218ED26E0(v51, v92);
  v54 = v53;

  v55 = v93;
  v56 = v94;
  v57 = (*(v93 + 48))(v53, 1, v94);
  v123 = v49;
  v124 = v44;
  v120 = v46;
  v91 = v52;
  if (v57 == 1)
  {
    sub_21934890C(v53, &qword_280EE8008, MEMORY[0x277D2F280]);
    v58 = v118;
  }

  else
  {
    v59 = v89;
    (*(v55 + 32))(v89, v54, v56);
    v60 = swift_allocObject();
    *(v60 + 16) = v127;
    v58 = v118;
    v49(v60 + v47, v52, v118);
    sub_2193489FC(&qword_280EE8010, 255, MEMORY[0x277D2F280]);
    sub_219BDCCC4();

    (*(v55 + 8))(v59, v56);
  }

  v61 = sub_219BE3ED4();
  v62 = v95;
  sub_218ED292C(v61, v95);

  v63 = v96;
  if ((*(v119 + 48))(v62, 1, v96) == 1)
  {
    sub_21934890C(v62, &unk_280EE8830, MEMORY[0x277D2D970]);
    v64 = v91;
  }

  else
  {
    v65 = v119;
    v66 = v58;
    v67 = v90;
    (*(v119 + 32))(v90, v62, v63);
    v68 = swift_allocObject();
    *(v68 + 16) = v127;
    v64 = v91;
    v123(v68 + v47, v91, v66);
    sub_2193489FC(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
    sub_219BDCCC4();

    (*(v65 + 8))(v67, v63);
    v58 = v118;
  }

  sub_219BE3EC4();
  v69 = v97;
  sub_219BE0474();
  v70 = swift_allocObject();
  *(v70 + 16) = v127;
  v123(v70 + v47, v64, v58);
  sub_2193489FC(&unk_280EE83F0, 255, MEMORY[0x277D2E550]);
  v71 = v99;
  sub_219BDCCC4();

  (*(v98 + 8))(v69, v71);
  v72 = v116;
  v73 = v115;
  v74 = v103;
  (*(v116 + 16))(v115, v105, v103);
  v75 = (*(v72 + 88))(v73, v74);
  if (v75 == *MEMORY[0x277D34EA0])
  {
    (*(v101 + 104))(v104, *MEMORY[0x277D2E668], v102);
    v76 = v64;
    v77 = v123;
  }

  else
  {
    v76 = v64;
    v77 = v123;
    if (v75 == *MEMORY[0x277D34E98])
    {
      (*(v101 + 104))(v104, *MEMORY[0x277D2E660], v102);
    }

    else
    {
      v78 = *(v101 + 104);
      if (v75 == *MEMORY[0x277D34E90])
      {
        v78(v104, *MEMORY[0x277D2E658], v102);
      }

      else
      {
        v78(v104, *MEMORY[0x277D2E668], v102);
        (*(v116 + 8))(v115, v74);
      }
    }
  }

  sub_219BE0614();
  v79 = swift_allocObject();
  *(v79 + 16) = v127;
  v77(v79 + v47, v76, v58);
  sub_2193489FC(&qword_27CC19008, 255, MEMORY[0x277D2E650]);
  sub_219BDCCC4();

  v80 = v109;
  v81 = v117;
  v82 = v111;
  (*(v109 + 16))(v117, v106, v111);
  v83 = (*(v80 + 88))(v81, v82);
  if (v83 == *MEMORY[0x277D34FD0])
  {
    (*(v107 + 104))(v110, *MEMORY[0x277D2EB38], v108);
  }

  else if (v83 == *MEMORY[0x277D34FC8])
  {
    (*(v107 + 104))(v110, *MEMORY[0x277D2EB48], v108);
  }

  else
  {
    v84 = *(v107 + 104);
    if (v83 == *MEMORY[0x277D34FD8])
    {
      v84(v110, *MEMORY[0x277D2EB40], v108);
    }

    else
    {
      v84(v110, *MEMORY[0x277D2EB50], v108);
      (*(v80 + 8))(v117, v82);
    }
  }

  v85 = v113;
  sub_219BE0B24();
  v86 = swift_allocObject();
  *(v86 + 16) = v127;
  v77(v86 + v47, v76, v58);
  sub_2193489FC(&qword_27CC19010, 255, MEMORY[0x277D2EB30]);
  v87 = v100;
  sub_219BDCCC4();

  sub_219BDF794();
  sub_2193489FC(&qword_27CC19018, 255, MEMORY[0x277D2DD58]);
  memset(v131, 0, sizeof(v131));
  sub_219BDCCE4();
  sub_2193458E0(v131, sub_21880702C);
  (*(v114 + 8))(v85, v87);
  return (*(v112 + 8))(v121, v122);
}

uint64_t sub_219344040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a3;
  v33 = a2;
  v36 = sub_219BE41A4();
  v42 = *(v36 - 8);
  v39 = *(v42 + 64);
  MEMORY[0x28223BE20](v36);
  v43 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BE3F14();
  v32 = *(v41 - 8);
  v34 = *(v32 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3EE4();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D2D8A8];
  v31 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v29 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  swift_getObjectType();
  sub_219BF67F4();
  v16 = sub_219BDF0E4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v33 = *(v33 + 16);
  sub_21934897C(v15, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), &unk_280EE88A0, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v7);
  v17 = v32;
  (*(v32 + 16))(v40, v37, v41);
  v18 = v42;
  v19 = v36;
  (*(v42 + 16))(v43, v38, v36);
  v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v21 = (v12 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = (v9 + *(v17 + 80) + v21) & ~*(v17 + 80);
  v23 = (v34 + *(v18 + 80) + v22) & ~*(v18 + 80);
  v24 = swift_allocObject();
  sub_219345214(v29, v24 + v20);
  (*(v8 + 32))(v24 + v21, v28, v27);
  (*(v17 + 32))(v24 + v22, v40, v41);
  (*(v42 + 32))(v24 + v23, v43, v19);
  sub_219BDD154();

  return sub_21934890C(v15, &unk_280EE88A0, v31);
}

uint64_t sub_2193444CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v35 = a2;
  v43 = sub_219BE41A4();
  v41 = *(v43 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3F14();
  v29 = v6;
  v34 = *(v6 - 8);
  v36 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE3EE4();
  v28 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D2D8A8];
  v33 = MEMORY[0x277D2D8A8];
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = sub_219BDF0E4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v35 = *(v35 + 16);
  sub_21934897C(v17, v15, &unk_280EE88A0, v11);
  (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v8);
  v19 = v34;
  v20 = v32;
  (*(v34 + 16))(v32, v38, v6);
  v21 = v41;
  (*(v41 + 16))(v42, v39, v43);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = (v13 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = (v10 + *(v19 + 80) + v23) & ~*(v19 + 80);
  v25 = (v36 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  sub_219345214(v15, v26 + v22);
  (*(v9 + 32))(v26 + v23, v30, v28);
  (*(v19 + 32))(v26 + v24, v20, v29);
  (*(v41 + 32))(v26 + v25, v42, v43);
  sub_219BDD154();

  return sub_21934890C(v17, &unk_280EE88A0, v33);
}

void *sub_21934493C(void *a1)
{
  v1 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  type metadata accessor for SKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2193489FC(&unk_27CC0A6F0, 255, type metadata accessor for SKError);
  sub_219BDB6E4();

  return v3;
}

uint64_t sub_219344A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = *v3;
  v6 = sub_219BE46F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE15B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D35330])
  {
    v17 = *MEMORY[0x277D2F4F0];
    v41 = *(v11 + 104);
    v41(v16, v17, v10);
    v18 = sub_219BDD0F4();
    v39 = v3[3];
    v40 = v18;
    sub_218718690((v3 + 4), v47);
    sub_218718690((v3 + 9), v45);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v42 = &v38;
    MEMORY[0x28223BE20](v19);
    v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    v24 = type metadata accessor for FinanceURLSanitizer();
    v44[3] = v24;
    v44[4] = &off_282A36FF0;
    v44[0] = v23;
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v44, v24);
    v38 = &v38;
    MEMORY[0x28223BE20](v26);
    v28 = v5;
    v29 = (&v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v29;
    v25[12] = v24;
    v25[13] = &off_282A36FF0;
    v25[9] = v31;
    v41(v14, *MEMORY[0x277D2F4F8], v10);
    v32 = v39;

    v33 = sub_219BDD0F4();

    v34 = *(v11 + 8);
    v34(v14, v10);
    v25[2] = v33;
    v25[3] = v32;
    sub_2186CB1F0(v47, (v25 + 4));
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v35 = v43;
    v43[3] = v28;
    v35[4] = sub_2193489FC(&qword_280EBAC38, v36, type metadata accessor for PurchaseTransactionTracker);
    *v35 = v25;
    return (v34)(v16, v10);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_219344F1C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_219344F90(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE3EE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *v2;
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  swift_unknownObjectRetain();

  sub_219BDD154();
}

void sub_219345148()
{
  if (!qword_27CC19000)
  {
    sub_2186CFDE4(255, &unk_280EE6290);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC19000);
    }
  }
}

void sub_2193451B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219345214(uint64_t a1, uint64_t a2)
{
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193452C4(uint64_t a1)
{
  v3 = *(sub_219BE3EE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3F14() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BE41A4() - 8);
  return sub_219344040(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));
}

uint64_t objectdestroy_8Tm_4()
{
  v12 = sub_219BE3EE4();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_219BE3F14();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_219BE41A4();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2193455E0(uint64_t a1)
{
  v3 = *(sub_219BE3EE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3F14() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BE41A4() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_2193444CC(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_21934571C(uint64_t a1)
{
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BE3EE4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BE3F14() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_219BE41A4() - 8);
  v13 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_219342C00(a1, v1 + v4, v1 + v7, v1 + v10, v13);
}

uint64_t sub_2193458E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219345940(uint64_t a1)
{
  v3 = *(sub_219BE3EE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21934191C(a1, v5, (v1 + v4), v6);
}

uint64_t sub_219345A4C(uint64_t a1)
{
  v3 = *(sub_219BE3EE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D84() - 8);
  return sub_21934114C(a1, *(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = sub_219BE3EE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BE3D84();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_219345C80(uint64_t a1)
{
  v3 = *(sub_219BE3EE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D84() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21934154C(a1, v7, v1 + v4, v8);
}

uint64_t objectdestroy_28Tm()
{
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 8) + 64);
  v16 = sub_219BE3EE4();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v14 = *(v4 + 64);
  v6 = sub_219BE3D84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = sub_219BDF0E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v15 + v5) & ~v5;
  v12 = (((v14 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  (*(v4 + 8))(v0 + v11, v16);

  (*(v7 + 8))(v0 + v12, v6);

  return swift_deallocObject();
}

uint64_t sub_219345FCC(uint64_t a1)
{
  sub_2193451B0(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BE3EE4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BE3D84() - 8);
  v10 = *(v1 + v8);
  v11 = v1 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_21933DEA4(a1, v1 + v4, v1 + v7, v10, v11);
}

void sub_219346144(uint64_t a1, uint64_t a2)
{
  v147 = a1;
  v3 = sub_219BDF264();
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF5D4();
  v143 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0074();
  v10 = *(v9 - 8);
  v145 = v9;
  v146 = v10;
  MEMORY[0x28223BE20](v9);
  v144 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D350B8];
  sub_2193451B0(0, &unk_27CC19028, MEMORY[0x277D350B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v140 - v14;
  v16 = sub_219BE4404();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v140 - v20;
  v22 = a2;
  v24 = v23;
  v25 = v12;
  v27 = v26;
  sub_21934897C(v22, v15, &unk_27CC19028, v25);
  if ((*(v24 + 48))(v15, 1, v27) == 1)
  {
    sub_21934890C(v15, &unk_27CC19028, MEMORY[0x277D350B8]);
    return;
  }

  (*(v24 + 32))(v21, v15, v27);
  (*(v24 + 16))(v19, v21, v27);
  v28 = (*(v24 + 88))(v19, v27);
  if (v28 == *MEMORY[0x277D350A8])
  {
    (*(v24 + 96))(v19, v27);
    v29 = *v19;
    v30 = sub_21934493C(*v19);
    v31 = v21;
    v141 = v27;
    switch(v30)
    {
      case 0uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC38], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v33 = sub_219BDCD44();
        v34 = *(v33 - 8);
        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_219C09BA0;
        (*(v34 + 104))(v36 + v35, *MEMORY[0x277CEAD18], v33);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        v37 = v145;
        sub_219BDCCC4();

        goto LABEL_36;
      case 1uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DB90], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v104 = sub_219BDCD44();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_219C09BA0;
        (*(v105 + 104))(v107 + v106, *MEMORY[0x277CEAD18], v104);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 2uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBC8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v88 = sub_219BDCD44();
        v89 = *(v88 - 8);
        v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_219C09BA0;
        (*(v89 + 104))(v91 + v90, *MEMORY[0x277CEAD18], v88);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 3uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBB0], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v96 = sub_219BDCD44();
        v97 = *(v96 - 8);
        v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_219C09BA0;
        (*(v97 + 104))(v99 + v98, *MEMORY[0x277CEAD18], v96);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 4uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBD8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v76 = sub_219BDCD44();
        v77 = *(v76 - 8);
        v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_219C09BA0;
        (*(v77 + 104))(v79 + v78, *MEMORY[0x277CEAD18], v76);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 5uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC10], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v112 = sub_219BDCD44();
        v113 = *(v112 - 8);
        v114 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_219C09BA0;
        (*(v113 + 104))(v115 + v114, *MEMORY[0x277CEAD18], v112);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 6uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC20], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v120 = sub_219BDCD44();
        v121 = *(v120 - 8);
        v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_219C09BA0;
        (*(v121 + 104))(v123 + v122, *MEMORY[0x277CEAD18], v120);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 7uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC30], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v100 = sub_219BDCD44();
        v101 = *(v100 - 8);
        v102 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_219C09BA0;
        (*(v101 + 104))(v103 + v102, *MEMORY[0x277CEAD18], v100);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 8uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBF0], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v132 = sub_219BDCD44();
        v133 = *(v132 - 8);
        v134 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_219C09BA0;
        (*(v133 + 104))(v135 + v134, *MEMORY[0x277CEAD18], v132);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 9uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC28], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v84 = sub_219BDCD44();
        v85 = *(v84 - 8);
        v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_219C09BA0;
        (*(v85 + 104))(v87 + v86, *MEMORY[0x277CEAD18], v84);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xAuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC08], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v128 = sub_219BDCD44();
        v129 = *(v128 - 8);
        v130 = (*(v129 + 80) + 32) & ~*(v129 + 80);
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_219C09BA0;
        (*(v129 + 104))(v131 + v130, *MEMORY[0x277CEAD18], v128);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xBuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC00], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v72 = sub_219BDCD44();
        v73 = *(v72 - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_219C09BA0;
        (*(v73 + 104))(v75 + v74, *MEMORY[0x277CEAD18], v72);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xCuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBB8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v80 = sub_219BDCD44();
        v81 = *(v80 - 8);
        v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_219C09BA0;
        (*(v81 + 104))(v83 + v82, *MEMORY[0x277CEAD18], v80);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xDuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBE8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v116 = sub_219BDCD44();
        v117 = *(v116 - 8);
        v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_219C09BA0;
        (*(v117 + 104))(v119 + v118, *MEMORY[0x277CEAD18], v116);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xEuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBD0], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v68 = sub_219BDCD44();
        v69 = *(v68 - 8);
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_219C09BA0;
        (*(v69 + 104))(v71 + v70, *MEMORY[0x277CEAD18], v68);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0xFuLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBC0], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v92 = sub_219BDCD44();
        v93 = *(v92 - 8);
        v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_219C09BA0;
        (*(v93 + 104))(v95 + v94, *MEMORY[0x277CEAD18], v92);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0x10uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DC18], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v64 = sub_219BDCD44();
        v65 = *(v64 - 8);
        v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_219C09BA0;
        (*(v65 + 104))(v67 + v66, *MEMORY[0x277CEAD18], v64);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0x11uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBA8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v108 = sub_219BDCD44();
        v109 = *(v108 - 8);
        v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_219C09BA0;
        (*(v109 + 104))(v111 + v110, *MEMORY[0x277CEAD18], v108);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0x12uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBE0], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v124 = sub_219BDCD44();
        v125 = *(v124 - 8);
        v126 = (*(v125 + 80) + 32) & ~*(v125 + 80);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_219C09BA0;
        (*(v125 + 104))(v127 + v126, *MEMORY[0x277CEAD18], v124);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
        goto LABEL_35;
      case 0x13uLL:
        (*(v143 + 104))(v8, *MEMORY[0x277D2DBF8], v6);
        v32 = v144;
        sub_219BE0064();
        sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v136 = sub_219BDCD44();
        v137 = *(v136 - 8);
        v138 = (*(v137 + 80) + 32) & ~*(v137 + 80);
        v139 = swift_allocObject();
        *(v139 + 16) = xmmword_219C09BA0;
        (*(v137 + 104))(v139 + v138, *MEMORY[0x277CEAD18], v136);
        sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
LABEL_35:
        v37 = v145;
        sub_219BDCCC4();

LABEL_36:
        (*(v146 + 8))(v32, v37);
        v45 = *(v24 + 8);
        v46 = v31;
        goto LABEL_37;
      default:
        if (v30 == 1001)
        {
          (*(v143 + 104))(v8, *MEMORY[0x277D2DB98], v6);
          v56 = v144;
          sub_219BE0064();
          sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
          v57 = v27;
          v58 = sub_219BDCD44();
          v59 = *(v58 - 8);
          v60 = v21;
          v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_219C09BA0;
          (*(v59 + 104))(v62 + v61, *MEMORY[0x277CEAD18], v58);
          sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
          v63 = v145;
          sub_219BDCCC4();

          (*(v146 + 8))(v56, v63);
          (*(v24 + 8))(v60, v57);
        }

        else
        {
          (*(v24 + 8))(v21, v27);
        }

        return;
    }
  }

  if (v28 != *MEMORY[0x277D350A0])
  {
    if (v28 == *MEMORY[0x277D350B0])
    {
      (*(v143 + 104))(v8, *MEMORY[0x277D2DBA0], v6);
      v47 = v144;
      sub_219BE0064();
      sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v48 = v27;
      v49 = sub_219BDCD44();
      v50 = *(v49 - 8);
      v51 = v21;
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_219C09BA0;
      (*(v50 + 104))(v53 + v52, *MEMORY[0x277CEAD18], v49);
      sub_2193489FC(&qword_27CC19048, 255, MEMORY[0x277D2E300]);
      v54 = v145;
      sub_219BDCCC4();

      (*(v146 + 8))(v47, v54);
      (*(v24 + 8))(v51, v48);
    }

    else
    {
      v55 = *(v24 + 8);
      v55(v21, v27);
      v55(v19, v27);
    }

    return;
  }

  (*(v24 + 96))(v19, v27);
  v38 = *v19;
  v39 = sub_219BDB714();

  v40 = [v39 code];
  if (v40 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_40;
  }

  v141 = v27;
  if (v40 > 0x7FFFFFFF)
  {
LABEL_40:
    __break(1u);
    return;
  }

  sub_219BDF254();
  sub_2193451B0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C09BA0;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x277CEAD18], v41);
  sub_2193489FC(&qword_27CC19050, 255, MEMORY[0x277D2D9B8]);
  sub_219BDCCC4();

  (*(v142 + 8))(v5, v3);
  v45 = *(v24 + 8);
  v46 = v21;
LABEL_37:
  v45(v46, v141);
}

uint64_t sub_21934890C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193451B0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21934897C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2193451B0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2193489FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_219348A64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    [v6 userInterfaceIdiom];
  }

  return v5;
}

uint64_t sub_219348B64@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219348A64(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_219348BAC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8970);
  __swift_project_value_buffer(v0, qword_27CCD8970);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_219348E00()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8988);
  __swift_project_value_buffer(v0, qword_27CCD8988);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219348FAC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89A0);
  __swift_project_value_buffer(v0, qword_27CCD89A0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_2193491FC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89B8);
  __swift_project_value_buffer(v0, qword_27CCD89B8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2193493A4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD89D0);
  __swift_project_value_buffer(v0, qword_27CCD89D0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219349614(uint64_t a1, uint64_t a2, char a3)
{
  v84 = a2;
  v85 = a1;
  sub_21934AB64(0, qword_280ED0FF8, type metadata accessor for MagazineKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v72 - v5;
  sub_21934AB64(0, qword_280ED37B0, type metadata accessor for MagazineFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v72 - v8;
  sub_21934AB64(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v72 - v11;
  v13 = type metadata accessor for MagazineFeedConfig();
  v82 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v72 - v20);
  v22 = type metadata accessor for MagazineConfig();
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v77 = &v72 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v29 = &v72 - v28;
  v83 = v6;
  v81 = v26;
  if (a3)
  {
    v30 = v85 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig;
    sub_21934AC18();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    v32 = swift_allocObject();
    *(v32 + 16) = v84;
    *(v31 + 32) = v32 | 0xE000000000000000;
    v33 = v82;
    v34 = MEMORY[0x277CC9578];
    sub_21934AAF8(v30 + v13[5], v12, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_21934AAF8(v30 + v13[7], v21 + v13[7], &qword_280E91B80, MEMORY[0x277D32028]);
    *v21 = v31;
    sub_21934AAF8(v12, v21 + v13[5], &qword_280EE9C40, v34);

    sub_2189DD39C(v12);
    v35 = (v21 + v13[6]);
    v36 = MEMORY[0x277D84F90];
    *v35 = MEMORY[0x277D84F90];
    v35[1] = v36;
    sub_21934AA90(v21, v9, type metadata accessor for MagazineFeedConfig);
    (*(v33 + 56))(v9, 0, 1, v13);
    v37 = v83;
    sub_21934AA90(v30 + *(v81 + 20), v83, type metadata accessor for MagazineKnobsConfig);
    v38 = type metadata accessor for MagazineKnobsConfig();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    sub_21937C038(v9, v37, v29);
    sub_21934ABB8(v21, type metadata accessor for MagazineFeedConfig);
    goto LABEL_59;
  }

  v74 = v19;
  v75 = v13;
  v76 = v9;
  v39 = OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig;
  v41 = v84;
  v40 = v85;
  v73 = v27;
  sub_21934AA90(v85 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig, v27, type metadata accessor for MagazineConfig);
  result = sub_21934AA90(v40 + v39, v16, type metadata accessor for MagazineFeedConfig);
  v43 = *(v40 + v39);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  v46 = v16;
  if (!v44)
  {
    goto LABEL_58;
  }

  v47 = 0;
  v48 = 0x69726F6765746163;
  v86 = *(v43 + 16);
  v87 = v43 + 32;
  v79 = 0x8000000219CD6680;
  v80 = 0x8000000219CD66C0;
  v78 = 0x8000000219CD66A0;
  v72 = v44 - 1;
  v49 = v41;
LABEL_5:
  v84 = v45;
  v50 = v47;
  while (2)
  {
    if (v50 >= *(v43 + 16))
    {
      __break(1u);
      return result;
    }

    v51 = *(v87 + 8 * v50);
    v52 = v50 + 1;

    v53 = 0xEA00000000007365;
    v54 = sub_219151874(v51);
    v55 = v48;
    switch(v54)
    {
      case 1:
        v55 = 0xD000000000000010;
        v53 = v78;
        break;
      case 2:
        v55 = 0x6465727574616566;
        v53 = 0xEF656C6369747241;
        break;
      case 3:
        v55 = 0x6465727574616566;
        v53 = 0xED00006575737349;
        break;
      case 4:
        v55 = 0xD000000000000014;
        v53 = v79;
        break;
      case 5:
        v55 = 0x697A6167614D796DLL;
        v53 = 0xEB0000000073656ELL;
        break;
      case 6:
        v53 = 0xE800000000000000;
        v55 = 0x657573734977656ELL;
        break;
      case 7:
        v53 = 0xE700000000000000;
        v55 = 0x6C6C6177796170;
        break;
      case 8:
        v55 = 0xD000000000000011;
        v53 = v80;
        break;
      case 9:
        v53 = 0xE500000000000000;
        v55 = 0x6369706F74;
        break;
      case 10:
        v53 = 0xE800000000000000;
        v55 = 0x676E69646E657274;
        break;
      case 11:
        v55 = 0x7542664F74736562;
        v53 = 0xEC000000656C646ELL;
        break;
      case 12:
        v55 = 0x657061707377656ELL;
        v53 = 0xE900000000000072;
        break;
      case 13:
        v53 = 0xE700000000000000;
        v55 = 0x64657461727563;
        break;
      default:
        break;
    }

    v56 = v48;
    v57 = v48;
    v58 = 0xEA00000000007365;
    switch(v49)
    {
      case 1:
        v58 = v78;
        if (v55 == 0xD000000000000010)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      case 2:
        v58 = 0xEF656C6369747241;
        if (v55 != 0x6465727574616566)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 3:
        v58 = 0xED00006575737349;
        if (v55 != 0x6465727574616566)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 4:
        v58 = v79;
        if (v55 != 0xD000000000000014)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 5:
        v58 = 0xEB0000000073656ELL;
        if (v55 != 0x697A6167614D796DLL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 6:
        v58 = 0xE800000000000000;
        if (v55 != 0x657573734977656ELL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 7:
        v58 = 0xE700000000000000;
        if (v55 != 0x6C6C6177796170)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 8:
        v58 = v80;
        if (v55 != 0xD000000000000011)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 9:
        v58 = 0xE500000000000000;
        if (v55 != 0x6369706F74)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 10:
        v58 = 0xE800000000000000;
        v57 = 0x676E69646E657274;
        goto LABEL_45;
      case 11:
        v58 = 0xEC000000656C646ELL;
        if (v55 != 0x7542664F74736562)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 12:
        v58 = 0xE900000000000072;
        if (v55 != 0x657061707377656ELL)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      case 13:
        v58 = 0xE700000000000000;
        if (v55 != 0x64657461727563)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      default:
LABEL_45:
        if (v55 != v57)
        {
          goto LABEL_47;
        }

LABEL_46:
        if (v53 != v58)
        {
LABEL_47:
          v59 = sub_219BF78F4();

          if (v59)
          {
            goto LABEL_53;
          }

          ++v50;
          v48 = v56;
          if (v86 == v52)
          {
            v45 = v84;
            goto LABEL_58;
          }

          continue;
        }

LABEL_53:
        v60 = swift_allocObject();
        *(v60 + 16) = v51;
        v45 = v84;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2191F8B04(0, *(v45 + 16) + 1, 1, v45);
          v45 = result;
        }

        v62 = *(v45 + 16);
        v61 = *(v45 + 24);
        if (v62 >= v61 >> 1)
        {
          result = sub_2191F8B04((v61 > 1), v62 + 1, 1, v45);
          v45 = result;
        }

        v47 = v50 + 1;
        *(v45 + 16) = v62 + 1;
        *(v45 + 8 * v62 + 32) = v60 | 0xE000000000000000;
        v48 = v56;
        if (v72 != v50)
        {
          goto LABEL_5;
        }

LABEL_58:
        v64 = v74;
        v63 = v75;
        sub_21934AAF8(v46 + v75[5], v74 + v75[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_21934AAF8(v46 + v63[7], v64 + v63[7], &qword_280E91B80, MEMORY[0x277D32028]);
        *v64 = v45;
        v65 = (v64 + v63[6]);
        v66 = MEMORY[0x277D84F90];
        *v65 = MEMORY[0x277D84F90];
        v65[1] = v66;
        sub_21934ABB8(v46, type metadata accessor for MagazineFeedConfig);
        v67 = v76;
        sub_21934AA90(v64, v76, type metadata accessor for MagazineFeedConfig);
        (*(v82 + 56))(v67, 0, 1, v63);
        v68 = v73;
        v69 = v83;
        sub_21934AA90(v73 + *(v81 + 20), v83, type metadata accessor for MagazineKnobsConfig);
        v70 = type metadata accessor for MagazineKnobsConfig();
        (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
        v29 = v77;
        sub_21937C038(v67, v69, v77);
        sub_21934ABB8(v64, type metadata accessor for MagazineFeedConfig);
        sub_21934ABB8(v68, type metadata accessor for MagazineConfig);
LABEL_59:
        v71 = sub_219AA2A10(v29);
        sub_21934ABB8(v29, type metadata accessor for MagazineConfig);
        return v71;
    }
  }
}

uint64_t sub_21934A1CC(void *a1, uint64_t a2, char a3)
{
  v12[0] = a2;
  sub_21934B46C(0, &qword_280E8C220, sub_21934AED4, &type metadata for MagazineTodayFeedGroupConfigProcessor.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934AED4();
  sub_219BF7B44();
  if (a3)
  {
    v18 = 1;
    v17 = 0;
    sub_21934AFD0();
    sub_219BF7834();
    if (!v3)
    {
      v12[1] = v12[0];
      v16 = 1;
      sub_21915A308();
LABEL_6:
      sub_219BF7834();
    }
  }

  else
  {
    v15 = 0;
    sub_21934AFD0();
    sub_219BF7834();
    if (!v3)
    {
      v14 = v12[0];
      v13 = 1;
      sub_21934B024();
      goto LABEL_6;
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21934A3F8(void *a1, char a2)
{
  sub_21934B46C(0, &qword_280E8C218, sub_21934B418, &type metadata for MagazineTodayFeedGroupConfigProcessor.Filter.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21934B418();
  sub_219BF7B44();
  v11 = a2;
  sub_218CD67F4();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21934A57C@<X0>(char *a1@<X8>)
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

uint64_t sub_21934A5E0(uint64_t a1)
{
  v2 = sub_21934AED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21934A61C(uint64_t a1)
{
  v2 = sub_21934AED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21934A658(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6769666E6F63;
  }

  else
  {
    v2 = 0x7265746C6966;
  }

  if (*a2)
  {
    v3 = 0x6769666E6F63;
  }

  else
  {
    v3 = 0x7265746C6966;
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

uint64_t sub_21934A6D8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21934A748()
{
  sub_219BF5524();
}

uint64_t sub_21934A79C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21934A814(uint64_t *a1@<X8>)
{
  v2 = 0x7265746C6966;
  if (*v1)
  {
    v2 = 0x6769666E6F63;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_21934A8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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