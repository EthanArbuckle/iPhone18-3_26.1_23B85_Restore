uint64_t sub_218E5A2F8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] <= v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) <= *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_218E5A4FC(unint64_t a1, uint64_t *a2)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v18)
  {
    v19 = a1;
    v3 = 0;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = a1 & 0xC000000000000001;
    v20 = a1 + 32;
    while (1)
    {
      if (v22)
      {
        a1 = MEMORY[0x21CECE0F0](v3, v19);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v20 + 8 * v3);
      }

      v4 = a1;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v6 = *a2;

      v7 = [v4 identifier];
      v8 = sub_219BF5414();
      v10 = v9;

      if (*(v6 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v11 = sub_219BF7AE4(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = (*(v6 + 48) + 16 * v13);
          v16 = *v15 == v8 && v15[1] == v10;
          if (v16 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        a1 = sub_219BF73E4();
      }

      if (v3 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v18 = a1;
    i = sub_219BF7214();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218E5A740(uint64_t a1, uint64_t *a2)
{
  v40 = a2;
  v3 = sub_219BEDC04();
  v4 = MEMORY[0x28223BE20](v3);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v39 = *(a1 + 16);
  if (!v39)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v43 = *(v10 + 56);
  v34 = v12;
  v35 = a1 + v12;
  v36 = v11;
  v33 = (v10 - 8);
  v41 = (v10 + 16);
  v13 = MEMORY[0x277D84F90];
  v37 = v3;
  v38 = v10;
  v11(v8, a1 + v12, v3);
  while (1)
  {
    v15 = *v40;

    v16 = v8;
    v17 = sub_219BEDBA4();
    v19 = v18;
    if (*(v15 + 16) && (v20 = v17, sub_219BF7AA4(), sub_219BF5524(), v21 = sub_219BF7AE4(), v22 = -1 << *(v15 + 32), v23 = v21 & ~v22, ((*(v15 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(v15 + 48) + 16 * v23);
        v26 = *v25 == v20 && v25[1] == v19;
        if (v26 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v8 = v16;
      v14 = v37;
      (*v33)(v16, v37);
    }

    else
    {
LABEL_15:

      v27 = *v41;
      v8 = v16;
      v14 = v37;
      (*v41)(v42, v16, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34908(0, *(v13 + 16) + 1, 1);
        v13 = v44;
      }

      v30 = *(v13 + 16);
      v29 = *(v13 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_218C34908(v29 > 1, v30 + 1, 1);
        v13 = v44;
      }

      *(v13 + 16) = v30 + 1;
      v27((v13 + v34 + v30 * v43), v42, v14);
    }

    if (++v9 == v39)
    {
      return v13;
    }

    v36(v8, v35 + v43 * v9, v14);
  }
}

uint64_t sub_218E5AA78(uint64_t a1, uint64_t a2, void **a3)
{
  v29 = a3;
  v36 = a2;
  v33 = sub_219BEDC04();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v35 = a1;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  v27 = (v5 + 32);
  v28 = (v5 + 16);
  v31 = v3;
  v34 = v8;
  do
  {
    v30 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v8)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v12 = *(v5 + 72);
      v13 = v35 + v11 + v12 * i;
      v14 = sub_219BEDBA4();
      if (*(v36 + 16))
      {
        break;
      }

LABEL_5:
      v8 = v34;
      if (v9 == v34)
      {
        return v30;
      }
    }

    v16 = v5;
    v17 = sub_21870F700(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_5;
    }

    v20 = *(*(v36 + 56) + 8 * v17);
    (*v28)(v32, v13, v33);
    v21 = v29;
    v22 = *v29;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2191F9164(0, v22[2] + 1, 1, v22);
      *v29 = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2191F9164(v24 > 1, v25 + 1, 1, v22);
      *v29 = v22;
    }

    v22[2] = v25 + 1;
    (*v27)(v22 + v11 + v25 * v12, v32, v33);
    v26 = sub_219BEDBC4();
    [v20 setScoreProfile_];

    MEMORY[0x21CECC690]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    result = v37;
    v8 = v34;
    v5 = v16;
  }

  while (v9 != v34);
  return result;
}

id sub_218E5AD64(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_218845F78(a3);

  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_35:
    v7 = sub_219BF7214();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v39 = a1 & 0xC000000000000001;
      v35 = a1;
      v36 = v7;
      v37 = a1 + 32;
      a1 = a2 + 56;
      v9 = v6 + 56;
      while (1)
      {
        if (v39)
        {
          v10 = MEMORY[0x21CECE0F0](v8, v35);
        }

        else
        {
          if (v8 >= *(v38 + 16))
          {
            goto LABEL_34;
          }

          v10 = *(v37 + 8 * v8);
        }

        v11 = v10;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v13 = [v10 identifier];
        v14 = sub_219BF5414();
        v16 = v15;

        if (*(a2 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v17 = sub_219BF7AE4();
          v18 = -1 << *(a2 + 32);
          v19 = v17 & ~v18;
          if ((*(a1 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            break;
          }
        }

LABEL_19:

        result = [v11 sourceChannelID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v24 = result;
        v25 = sub_219BF5414();
        v27 = v26;

        if (*(v6 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v28 = sub_219BF7AE4();
          v29 = -1 << *(v6 + 32);
          v30 = v28 & ~v29;
          if ((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            v31 = ~v29;
            while (1)
            {
              v32 = (*(v6 + 48) + 16 * v30);
              v33 = *v32 == v25 && v32[1] == v27;
              if (v33 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v30 = (v30 + 1) & v31;
              if (((*(v9 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

LABEL_30:

            goto LABEL_5;
          }
        }

LABEL_4:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
LABEL_5:
        if (v8 == v36)
        {
          v34 = v40;
          goto LABEL_37;
        }
      }

      v20 = ~v18;
      while (1)
      {
        v21 = (*(a2 + 48) + 16 * v19);
        v22 = *v21 == v14 && v21[1] == v16;
        if (v22 || (sub_219BF78F4() & 1) != 0)
        {
          goto LABEL_30;
        }

        v19 = (v19 + 1) & v20;
        if (((*(a1 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_37:

  return v34;
}

void sub_218E5B108(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218E5B164(unint64_t *a1, char *a2)
{
  v5 = *(type metadata accessor for SportsTopicClusteringRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218E58CAC(a1, a2, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_218E5B244()
{
  result = qword_280EE9C90;
  if (!qword_280EE9C90)
  {
    sub_219BDBD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9C90);
  }

  return result;
}

char *sub_218E5B2BC(uint64_t a1, char *a2)
{
  v3 = *(a1 + *(type metadata accessor for SportsTopicClusteringRequest() + 44));
  sub_219BF6214();
  sub_219BE5314();
  if (v3)
  {
  }

  else
  {
    v5 = a2;

    sub_218E54E8C(&v5);
    return v5;
  }

  return a2;
}

unint64_t sub_218E5B3A8()
{
  result = qword_280E8EF80;
  if (!qword_280E8EF80)
  {
    sub_218E5B470(255, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF80);
  }

  return result;
}

void sub_218E5B470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218E5B618()
{
  if (!qword_280EE6A70[0])
  {
    sub_218E5B108(255, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, qword_280EE6A70);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI219SportsForYouClusterVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroy_12Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_218E5B724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_218E5B7BC(void **a1)
{
  v2 = *(type metadata accessor for ScoredTagFeedCuration(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C81224(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_218E62658(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_218E5B864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218E5B904;

  return sub_218E5BA98(a3);
}

uint64_t sub_218E5B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = v9[1];

    return v10();
  }

  else
  {
    v8[4] = a3;
    v8[5] = a2;
    v8[6] = a1;

    return MEMORY[0x2822009F8](sub_218E5BA68, 0, 0);
  }
}

uint64_t sub_218E5BA68()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2[1].i64[0] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_218E5BA98(uint64_t a1)
{
  v2[211] = v1;
  v2[205] = a1;
  v2[217] = *(type metadata accessor for ScoredTagFeedCuration(0) - 8);
  v2[223] = swift_task_alloc();
  v2[224] = *(type metadata accessor for TagFeedCuration(0) - 8);
  v2[225] = swift_task_alloc();
  v3 = type metadata accessor for TagFeedCurationRequest();
  v2[226] = v3;
  v4 = *(v3 - 8);
  v2[227] = v4;
  v2[228] = *(v4 + 64);
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218E5BC2C, 0, 0);
}

uint64_t sub_218E5BC2C()
{
  v0[232] = *(v0[205] + 16);
  sub_219BF6214();
  sub_219BE5314();
  v1 = swift_task_alloc();
  v0[233] = v1;
  *v1 = v0;
  v1[1] = sub_218E5BD00;
  v2 = v0[205];

  return sub_218E5D698(v2);
}

uint64_t sub_218E5BD00(uint64_t a1)
{
  v4 = *v2;
  v4[234] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v4[235] = a1;

    return MEMORY[0x2822009F8](sub_218E5BE8C, 0, 0);
  }
}

uint64_t sub_218E5BE8C()
{
  v1 = v0[235];
  v2 = v0[231];
  v3 = v0[226];
  v4 = v0[205];
  v20 = v0[232];
  v21 = *v4;

  sub_2191EEC2C(v1);
  v6 = *(v4 + 3);
  v5 = *(v4 + 4);
  v8 = *(v4 + 5);
  v7 = *(v4 + 6);
  v0[236] = v7;
  v9 = *(v4 + 7);
  v0[237] = v9;
  v10 = *(v3 + 44);
  v11 = sub_219BEFBD4();
  (*(*(v11 - 8) + 16))(&v2[v10], &v4[v10], v11);
  v12 = *(v3 + 48);
  v13 = sub_219BEF9C4();
  (*(*(v13 - 8) + 16))(&v2[v12], &v4[v12], v13);
  v14 = MEMORY[0x277D84F90];
  *v2 = v21;
  *(v2 + 1) = v14;
  *(v2 + 2) = v20;
  *(v2 + 3) = v6;
  *(v2 + 4) = v5;
  *(v2 + 5) = v8;
  *(v2 + 6) = v7;
  *(v2 + 7) = v9;
  v15 = v20;
  v16 = v6;

  sub_219BF6214();
  sub_219BE5314();
  v17 = swift_task_alloc();
  v0[238] = v17;
  *v17 = v0;
  v17[1] = sub_218E5C080;
  v18 = v0[231];

  return sub_218E5E038(v18);
}

uint64_t sub_218E5C080(uint64_t a1)
{
  *(*v1 + 1912) = a1;

  return MEMORY[0x2822009F8](sub_218E5C180, 0, 0);
}

uint64_t sub_218E5C180()
{
  v1 = v0[239];
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[239];
    v3 = v0[231];
    v4 = v0[230];
    v27 = v0[228];
    v28 = v0[229];
    v5 = v0[227];
    v6 = v0[211];
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    v8 = sub_218DDFB04(sub_218E62248, v7, v2);

    v0[175] = v8;
    sub_218E63DA4(0, &qword_280E8F070, type metadata accessor for TagFeedCurationServiceConfig, MEMORY[0x277D83940]);
    sub_218E62284();
    v9 = sub_219BF56E4();
    v0[240] = v9;

    sub_2186F20D4();
    v0[241] = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    v12 = *(v9 + 16);
    v13 = MEMORY[0x277D83B88];
    v0[242] = v12;
    v14 = MEMORY[0x277D83C10];
    *(v11 + 56) = v13;
    *(v11 + 64) = v14;
    *(v11 + 32) = v12;
    sub_219BF6214();
    sub_219BE5314();

    sub_218E625F0(v3, v4, type metadata accessor for TagFeedCurationRequest);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = (v27 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v0[243] = v17;
    *(v17 + 16) = v6;
    sub_218E639E4(v4, v17 + v15, type metadata accessor for TagFeedCurationRequest);
    *(v17 + v16) = v9;

    sub_218E62544(0, &qword_280E8FA70, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
    swift_asyncLet_begin();
    sub_218E625F0(v3, v28, type metadata accessor for TagFeedCurationRequest);
    v18 = swift_allocObject();
    v0[244] = v18;
    *(v18 + 16) = v6;
    sub_218E639E4(v28, v18 + v15, type metadata accessor for TagFeedCurationRequest);
    *(v18 + v16) = v9;

    sub_218E62544(0, &unk_280E8FA60, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 2, v0 + 181, sub_218E5C66C, v0 + 162);
  }

  sub_219BF6214();
  v19 = MEMORY[0x277D84F90];
  sub_219BE5314();
  v20 = sub_219B7F578(v19);
  v22 = v21;
  v24 = v23;
  sub_218E63838(v0[231], type metadata accessor for TagFeedCurationRequest);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v25 = v0[1];

  return v25(v20, v22, v24);
}

uint64_t sub_218E5C66C()
{
  v1[245] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 187, sub_218E5CDA8, v1 + 170);
  }

  else
  {
    v1[246] = v1[181];

    return MEMORY[0x282200930](v1 + 82, v1 + 187, sub_218E5C728, v1 + 182);
  }
}

uint64_t sub_218E5C728()
{
  *(v1 + 1976) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1496, sub_218E5CED8, v1 + 1504);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_218E5C7E0, 0, 0);
  }
}

uint64_t sub_218E5C7E0()
{
  v39 = v0;
  v1 = v0[246];
  v35 = v0[247];
  v36 = v0[242];
  v2 = v0[240];
  v3 = v0[237];
  v4 = v0[231];
  v37 = v4;
  v5 = v0[211];
  v6 = v0[187];
  v0[193] = v0[236];
  v0[199] = v3;
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v0 + 193;
  v7[5] = v5;
  v7[6] = v6;
  v7[7] = v0 + 199;

  v8 = sub_218F8E744(sub_218E625B0, v7, v2);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = v8[2];
  v11 = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v12;
  *(v9 + 32) = v10;
  *(v9 + 96) = v11;
  *(v9 + 104) = v12;
  *(v9 + 72) = v36;
  sub_219BF6214();
  sub_219BE5314();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v14 = swift_task_alloc();
  *(v14 + 16) = v5;
  *(v14 + 24) = v37;
  v15 = MEMORY[0x277D84F90];
  v16 = sub_218D24EF0(MEMORY[0x277D84F90], sub_218E625D4, v14, v8);
  v0[248] = v35;

  if (v35)
  {

    v17 = sub_218E5D008;
    v18 = v0 + 82;
    v19 = v0 + 187;
    v20 = v0 + 200;
  }

  else
  {

    v38 = v16;

    sub_218E5B7BC(&v38);

    v21 = v38;
    v22 = v38[2];
    if (v22)
    {
      v23 = v0[224];
      v24 = v0[217];
      v38 = v15;
      sub_218C35E68(0, v22, 0);
      v15 = v38;
      v25 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v26 = *(v24 + 72);
      do
      {
        v27 = v0[225];
        v28 = v0[223];
        sub_218E625F0(v25, v28, type metadata accessor for ScoredTagFeedCuration);
        sub_218E639E4(v28, v27, type metadata accessor for TagFeedCuration);
        v38 = v15;
        v30 = v15[2];
        v29 = v15[3];
        if (v30 >= v29 >> 1)
        {
          sub_218C35E68(v29 > 1, v30 + 1, 1);
          v15 = v38;
        }

        v31 = v0[225];
        v15[2] = v30 + 1;
        sub_218E639E4(v31, v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, type metadata accessor for TagFeedCuration);
        v25 += v26;
        --v22;
      }

      while (v22);
    }

    v0[167] = sub_219B7F578(v15);
    v0[168] = v32;
    v0[169] = v33;
    v17 = sub_218E5CC20;
    v18 = v0 + 82;
    v19 = v0 + 187;
    v20 = v0 + 212;
  }

  return MEMORY[0x282200920](v18, v19, v17, v20);
}

uint64_t sub_218E5CC78()
{
  v5 = v0[167];
  v1 = v0[168];
  v2 = v0[169];
  sub_218E63838(v0[231], type metadata accessor for TagFeedCurationRequest);
  sub_2187FABEC(&unk_219C404C0);
  sub_2187FABEC(&unk_219C404D0);

  v3 = v0[1];

  return v3(v5, v1, v2);
}

uint64_t sub_218E5CE00()
{
  sub_218E63838(*(v0 + 1848), type metadata accessor for TagFeedCurationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218E5CF30()
{
  sub_218E63838(*(v0 + 1848), type metadata accessor for TagFeedCurationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218E5D060()
{
  sub_218E63838(*(v0 + 1848), type metadata accessor for TagFeedCurationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218E5D138()
{
  sub_219BF6214();

  return sub_219BE5314();
}

uint64_t sub_218E5D194(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = a4;
  v36 = a2;
  v8 = sub_219BEE754();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDBD64();
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3;
  sub_219BF6214();
  sub_219BE5314();
  sub_2186C6148(0, &unk_280E8DDB0);
  v14 = *(v4 + 136);
  swift_getObjectType();
  sub_2186C6148(0, &qword_280E8E6C0);
  v15 = v14;
  swift_unknownObjectRetain();
  v16 = sub_2190CE55C(v15, a1, a2);

  swift_unknownObjectRelease();
  v17 = v16;
  v18 = v35;
  sub_219BDBD54();
  v19 = sub_219BDBD44();
  v21 = v20;
  (*(v10 + 8))(v12, v33);
  v22 = v34;
  sub_219BEE724();
  type metadata accessor for TagFeedServiceContext();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  *(v23 + 32) = v17;
  *(v23 + 40) = v18;
  *(v23 + 48) = v13;
  *(v23 + 56) = 3;
  (*(v37 + 32))(v23 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v22, v38);
  v39 = v32[1];
  v40 = v23;
  type metadata accessor for TagFeedServiceConfig();
  sub_219BE3204();
  v24 = sub_219BE2E54();
  type metadata accessor for TagFeedSportsScoresKnobsResult();
  sub_219BE2F74();

  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = a1;
  v25[3] = v26;
  v25[4] = v13;
  v25[5] = v18;
  v27 = v13;
  swift_unknownObjectRetain();
  v28 = v18;
  v29 = sub_219BE2E54();
  v30 = sub_219BE3024();

  return v30;
}

uint64_t sub_218E5D538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  sub_218E63DA4(0, &qword_280EE6E58, type metadata accessor for TagFeedServiceConfig, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_219BE2F54();
}

uint64_t sub_218E5D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*a1 + 24) + 24);
  sub_218E625F0(*(v3 + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs, a2, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  v4 = *(v3 + 16);
  v5 = OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs;
  v6 = type metadata accessor for TagFeedSportsScoresKnobsResult();
  return sub_218E625F0(v4 + v5, a2 + *(v6 + 20), type metadata accessor for SportsScoresTagFeedGroupKnobs);
}

uint64_t sub_218E5D698(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_218E5D6B8, 0, 0);
}

uint64_t sub_218E5D6B8(unint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v67 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v4, 0);
    v5 = v67;
    v6 = v3 + 32;
    do
    {
      v7 = [swift_unknownObjectRetain() identifier];
      v8 = sub_219BF5414();
      v10 = v9;

      a1 = swift_unknownObjectRelease();
      v12 = *(v67 + 16);
      v11 = *(v67 + 24);
      if (v12 >= v11 >> 1)
      {
        a1 = sub_21870B65C((v11 > 1), v12 + 1, 1);
      }

      *(v67 + 16) = v12 + 1;
      v13 = v67 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v6 += 16;
      --v4;
    }

    while (v4);
    v2 = v66[10];
  }

  v14 = v2[1];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_19:

    v29 = *(v16 + 16);
    if (!v29)
    {
      v32 = MEMORY[0x277D84F98];
LABEL_35:
      v66[12] = v32;
      sub_218718690(v66[11] + 56, (v66 + 2));
      __swift_project_boxed_opaque_existential_1(v66 + 2, v66[5]);
      v51 = v16;
      v52 = *(v16 + 16);
      if (v52)
      {
        v53 = v51;
        v68 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v52, 0);
        v54 = 0;
        v55 = *(v68 + 16);
        v56 = 16 * v55;
        do
        {
          v57 = *(v53 + v54 + 32);
          v58 = *(v53 + v54 + 40);
          v59 = *(v68 + 24);
          v60 = v55 + 1;

          if (v55 >= v59 >> 1)
          {
            sub_21870B65C((v59 > 1), v60, 1);
          }

          *(v68 + 16) = v60;
          v61 = v68 + v56;
          *(v61 + 32) = v57;
          *(v61 + 40) = v58;
          v56 += 16;
          v54 += 24;
          ++v55;
          --v52;
        }

        while (v52);
      }

      v66[13] = sub_219BF1C34();

      v62 = swift_task_alloc();
      v66[14] = v62;
      *v62 = v66;
      v62[1] = sub_218E5DC80;
      a1 = (v66 + 9);

      return MEMORY[0x2821D23D8](a1);
    }

    v30 = 0;
    v31 = (v16 + 48);
    v32 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v30 >= *(v16 + 16))
      {
        goto LABEL_47;
      }

      v34 = v16;
      v36 = *(v31 - 2);
      v35 = *(v31 - 1);
      v37 = *v31;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = sub_21870F700(v36, v35);
      v40 = v32[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_48;
      }

      v44 = v39;
      if (v32[3] < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v50 = a1;
      sub_219493238();
      a1 = v50;
      v16 = v34;
      if (v44)
      {
LABEL_21:
        v33 = (v32[7] + 24 * a1);
        *v33 = v36;
        v33[1] = v35;
        v33[2] = v37;

        goto LABEL_22;
      }

LABEL_30:
      v32[(a1 >> 6) + 8] |= 1 << a1;
      v46 = (v32[6] + 16 * a1);
      *v46 = v36;
      v46[1] = v35;
      v47 = (v32[7] + 24 * a1);
      *v47 = v36;
      v47[1] = v35;
      v47[2] = v37;
      v48 = v32[2];
      v42 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v42)
      {
        goto LABEL_49;
      }

      v32[2] = v49;
LABEL_22:
      ++v30;
      v31 += 3;
      if (v29 == v30)
      {
        goto LABEL_35;
      }
    }

    sub_219482A40(v43, isUniquelyReferenced_nonNull_native);
    a1 = sub_21870F700(v36, v35);
    if ((v44 & 1) != (v45 & 1))
    {

      return sub_219BF79A4();
    }

LABEL_29:
    v16 = v34;
    if (v44)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v17 = 0;
  v65 = -v15;
  v18 = v14 + 48;
LABEL_9:
  v64 = v16;
  v19 = (v18 + 24 * v17++);
  while ((v17 - 1) < *(v14 + 16))
  {
    v20 = *(v19 - 2);
    v21 = *(v19 - 1);
    v22 = *v19;
    v66[7] = v20;
    v66[8] = v21;
    v23 = swift_task_alloc();
    *(v23 + 16) = v66 + 7;

    v24 = sub_2186D128C(sub_2186D1338, v23, v5);

    if ((v24 & 1) == 0)
    {
      v25 = v64;
      a1 = swift_isUniquelyReferenced_nonNull_native();
      if ((a1 & 1) == 0)
      {
        a1 = sub_218C35E48(0, *(v64 + 16) + 1, 1);
        v25 = v64;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (v27 >= v26 >> 1)
      {
        a1 = sub_218C35E48((v26 > 1), v27 + 1, 1);
        v25 = v64;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (v25 + 24 * v27);
      v28[4] = v20;
      v28[5] = v21;
      v28[6] = v22;
      v16 = v25;
      v18 = v14 + 48;
      if (!(v65 + v17))
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    ++v17;
    v19 += 3;
    if (v65 + v17 == 1)
    {
      v16 = v64;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_218E5DC80()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v3 = sub_218E5DFD4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_218E5DDB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_218E5DDB4()
{
  v1 = v0[9];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v21 = v1;
  v22 = MEMORY[0x277D84F90];
  result = sub_218C35E18(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v20 = v0;
  v5 = v0[12];
  v6 = v22;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v4, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    v8 = [v7 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    if (*(v5 + 16))
    {
      v12 = sub_21870F700(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v5 + 56) + 24 * v12 + 16);
      }

      else
      {
        v15 = 0;
      }

      v1 = v21;
    }

    else
    {

      v15 = 0;
    }

    v17 = *(v22 + 16);
    v16 = *(v22 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_218C35E18((v16 > 1), v17 + 1, 1);
      v1 = v21;
    }

    ++v4;
    *(v22 + 16) = v17 + 1;
    v18 = v22 + 16 * v17;
    *(v18 + 32) = v7;
    *(v18 + 40) = v15;
  }

  while (v2 != v4);
  v0 = v20;

LABEL_20:
  v19 = v0[1];

  return v19(v6);
}

uint64_t sub_218E5DFD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218E5E038(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_218E5E058, 0, 0);
}

uint64_t sub_218E5E058()
{
  v1 = swift_task_alloc();
  v2 = **(v0 + 24);
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_218947F38(sub_218E63C2C, v1, v2);

  if (v3 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = *(*(v0 + 32) + 144);
    sub_218E63DA4(0, &qword_280EE6B18, sub_218E63C4C, MEMORY[0x277D6CF30]);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    *(v0 + 40) = sub_219BE2F54();
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_218E5E284;

    return MEMORY[0x2821D23D8](v0 + 16);
  }

  sub_219BF6214();
  v7 = MEMORY[0x277D84F90];
  sub_219BE5314();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_218E5E284()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_218E5E3B8;
  }

  else
  {

    v2 = sub_218E5E3A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218E5E3B8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D84F90];

  return v2(v3);
}

uint64_t sub_218E5E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_218D42644;

  return sub_218E5E4DC(a3, a4);
}

uint64_t sub_218E5E4DC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for TagFeedCurationServiceConfig();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218E5E5A0, 0, 0);
}

uint64_t sub_218E5E5A0()
{
  v1 = v0[8];
  v2 = MEMORY[0x277D84F90];
  v40 = *(v1 + 16);
  if (!v40)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_26:
    v24 = v0[9];
    v25 = v0[7];
    v0[4] = v5;
    sub_2186D0BA8();
    sub_218E63898(&qword_280E8EDE0, sub_2186D0BA8);
    v26 = sub_219BF56E4();

    v0[13] = *(v25 + 16);
    sub_2186F20D4();
    v0[14] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09EC0;
    v29 = *(v26 + 16);
    v30 = MEMORY[0x277D83B88];
    v31 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v31;
    *(v28 + 32) = v29;
    *(v28 + 96) = v30;
    *(v28 + 104) = v31;
    *(v28 + 72) = v40;
    sub_219BF6214();
    sub_219BE5314();

    v33 = v24[5];
    v32 = v24[6];
    __swift_project_boxed_opaque_existential_1(v24 + 2, v33);
    v0[15] = MEMORY[0x21CEC9610](v26, *(v25 + 24), v33, v32);

    v34 = swift_task_alloc();
    v0[16] = v34;
    *v34 = v0;
    v34[1] = sub_218E5EA10;
    isUniquelyReferenced_nonNull_native = (v0 + 5);

    return MEMORY[0x2821D23D8](isUniquelyReferenced_nonNull_native);
  }

  v3 = 0;
  v4 = v0[11];
  v39 = v0[12];
  v38 = *(v0[10] + 32);
  v37 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v36 = *(v4 + 72);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218E625F0(v37 + v3 * v36, v0[12], type metadata accessor for TagFeedCurationServiceConfig);
    v7 = *(v39 + v38);
    v8 = *(v7 + 16);
    if (v8)
    {
      v41 = v5;
      sub_21870B65C(0, v8, 0);
      v9 = v2;
      v10 = v7 + 48;
      do
      {

        v11 = sub_219BF16A4();
        v13 = v12;

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21870B65C((v14 > 1), v15 + 1, 1);
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v10 += 24;
        --v8;
      }

      while (v8);
      isUniquelyReferenced_nonNull_native = sub_218E63838(v0[12], type metadata accessor for TagFeedCurationServiceConfig);
      v5 = v41;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      isUniquelyReferenced_nonNull_native = sub_218E63838(v0[12], type metadata accessor for TagFeedCurationServiceConfig);
      v9 = v2;
    }

    v17 = *(v9 + 16);
    v18 = *(v5 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v5 + 3) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      isUniquelyReferenced_nonNull_native = sub_218840D24(isUniquelyReferenced_nonNull_native, v20, 1, v5);
      v5 = isUniquelyReferenced_nonNull_native;
      if (*(v9 + 16))
      {
LABEL_21:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v17)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = *(v5 + 2);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_32;
          }

          *(v5 + 2) = v23;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (++v3 == v40)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return MEMORY[0x2821D23D8](isUniquelyReferenced_nonNull_native);
}

uint64_t sub_218E5EA10()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_218E5EDFC;
  }

  else
  {

    v2 = sub_218E5EB2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218E5EB2C()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CECE0F0](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v8 = [v6 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_21870F700(v9, v11);
        v15 = v4[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v24 = v13;
        sub_2194902C8();
        v13 = v24;
        if (v19)
        {
LABEL_4:
          v5 = v13;

          *(v4[7] + 8 * v5) = v6;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v4[(v13 >> 6) + 8] |= 1 << v13;
        v21 = (v4[6] + 16 * v13);
        *v21 = v9;
        v21[1] = v11;
        *(v4[7] + 8 * v13) = v6;
        swift_unknownObjectRelease();
        v22 = v4[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v4[2] = v23;
LABEL_5:
        ++v3;
        if (v7 == v2)
        {
          goto LABEL_31;
        }
      }

      sub_21947DE18(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_21870F700(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {

        return sub_219BF79A4();
      }

LABEL_14:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = MEMORY[0x277D84F98];
LABEL_31:

  v26 = *(v27 + 8);

  return v26(v4);
}

uint64_t sub_218E5EDFC()
{
  v1 = v0[17];

  sub_219BF61F4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_218E5EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_218E5F004;

  return sub_218E5F150(a3, a4);
}

uint64_t sub_218E5F004(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_218E63F1C, 0, 0);
  }
}

uint64_t sub_218E5F150(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for TagFeedCurationServiceConfig();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218E5F214, 0, 0);
}

uint64_t sub_218E5F214()
{
  v1 = v0[7];
  v2 = MEMORY[0x277D84F90];
  v36 = *(v1 + 16);
  if (!v36)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_26:
    v26 = v0[8];
    v0[4] = v5;
    sub_2186D0BA8();
    sub_218E63898(&qword_280E8EDE0, sub_2186D0BA8);
    v27 = sub_219BF56E4();
    v0[12] = v27;

    v28 = v26[15];
    v29 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v28);
    v30 = swift_task_alloc();
    v0[13] = v30;
    *v30 = v0;
    v30[1] = sub_218E5F5D8;
    isUniquelyReferenced_nonNull_native = v27;
    v7 = v28;
    v8 = v29;

    return MEMORY[0x282192298](isUniquelyReferenced_nonNull_native, v7, v8);
  }

  v3 = 0;
  v4 = v0[10];
  v35 = v0[11];
  v34 = *(v0[9] + 36);
  v33 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v32 = *(v4 + 72);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218E625F0(v33 + v3 * v32, v0[11], type metadata accessor for TagFeedCurationServiceConfig);
    v9 = *(v35 + v34);
    v10 = *(v9 + 16);
    if (v10)
    {
      v37 = v5;
      sub_21870B65C(0, v10, 0);
      v11 = v2;
      v12 = v9 + 48;
      do
      {

        v13 = sub_219BF14D4();
        v15 = v14;

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v12 += 24;
        --v10;
      }

      while (v10);
      isUniquelyReferenced_nonNull_native = sub_218E63838(v0[11], type metadata accessor for TagFeedCurationServiceConfig);
      v5 = v37;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      isUniquelyReferenced_nonNull_native = sub_218E63838(v0[11], type metadata accessor for TagFeedCurationServiceConfig);
      v11 = v2;
    }

    v19 = *(v11 + 16);
    v20 = *(v5 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= *(v5 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      isUniquelyReferenced_nonNull_native = sub_218840D24(isUniquelyReferenced_nonNull_native, v22, 1, v5);
      v5 = isUniquelyReferenced_nonNull_native;
      if (*(v11 + 16))
      {
LABEL_21:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v19)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v23 = *(v5 + 2);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_32;
          }

          *(v5 + 2) = v25;
        }

        goto LABEL_4;
      }
    }

    if (v19)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (++v3 == v36)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return MEMORY[0x282192298](isUniquelyReferenced_nonNull_native, v7, v8);
}

uint64_t sub_218E5F5D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_218E5F9E0;
  }

  else
  {
    v4 = sub_218E5F714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218E5F714()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_219BF7214();
    v3 = *(v0 + 112);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 112);
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v33 = v1 & 0xC000000000000001;
      v32 = v1 & 0xFFFFFFFFFFFFFF8;
      v0 = v3 + 32;
      v1 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v33)
        {
          v8 = MEMORY[0x21CECE0F0](v4, *(v31 + 112));
        }

        else
        {
          if (v4 >= *(v32 + 16))
          {
            goto LABEL_26;
          }

          v8 = *(v0 + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v11 = [v8 identifier];
        v12 = sub_219BF5414();
        v14 = v13;

        v15 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_21870F700(v12, v14);
        v19 = *(v1 + 16);
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_27;
        }

        v23 = v18;
        if (*(v1 + 24) < v22)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v28 = v17;
        sub_2194931B8();
        v17 = v28;
        if (v23)
        {
LABEL_4:
          v5 = v17;

          v6 = *(v1 + 56);
          v7 = *(v6 + 8 * v5);
          *(v6 + 8 * v5) = v15;

          goto LABEL_5;
        }

LABEL_16:
        *(v1 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v25 = (*(v1 + 48) + 16 * v17);
        *v25 = v12;
        v25[1] = v14;
        *(*(v1 + 56) + 8 * v17) = v15;

        v26 = *(v1 + 16);
        v21 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v21)
        {
          goto LABEL_28;
        }

        *(v1 + 16) = v27;
LABEL_5:
        ++v4;
        if (v10 == v2)
        {
          v0 = v31;
          goto LABEL_31;
        }
      }

      sub_2194829C0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_21870F700(v12, v14);
      if ((v23 & 1) != (v24 & 1))
      {

        return sub_219BF79A4();
      }

LABEL_15:
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  v1 = MEMORY[0x277D84F98];
LABEL_31:

  v30 = *(v0 + 8);

  return v30(v1);
}

uint64_t sub_218E5F9E0()
{
  v1 = v0[15];
  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_218E5FB3C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v76 = a1;
  v75 = type metadata accessor for ScoredTagFeedCuration(0);
  v7 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v71 - v11;
  v12 = sub_219BEE6F4();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v71 - v17;
  v19 = *(a2 + 8);
  v20 = *(v19 + 16);
  if (v20)
  {
    v71 = a2;
    v72 = v7;
    v79 = v4;
    v82 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v21 = v19 + 32;
    do
    {
      v21 += 24;
      swift_unknownObjectRetain();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v20;
    }

    while (v20);
    v22 = v82;
    v23 = *(a3 + 176);
    __swift_project_boxed_opaque_existential_1((a3 + 152), v23);
    v24 = v77;
    v74 = v23;
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      sub_2186D6710(0, &qword_280E8DF60);

      sub_219BF7534();

      v26 = v79;
    }

    else
    {

      sub_219BF7924();
      sub_2186D6710(0, &qword_280E8DF60);
      v25 = swift_dynamicCastMetatype();
      v26 = v79;
      if (v25 || (v39 = *(v22 + 16)) == 0)
      {
      }

      else
      {
        v40 = 32;
        do
        {
          v81 = &unk_282B48780;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v40 += 8;
          --v39;
        }

        while (v39);

        v26 = v79;
      }
    }

    v54 = *(type metadata accessor for TagFeedCurationRequest() + 44);
    v55 = sub_219BEFBD4();
    (*(*(v55 - 8) + 16))(v18, v80 + v54, v55);
    v36 = v78;
    (*(v24 + 104))(v18, *MEMORY[0x277D320E8], v78);
    sub_219BF0054();
    if (v26)
    {
      goto LABEL_28;
    }

    v57 = v56;
    (*(v24 + 8))(v18, v36);

    sub_2186F20D4();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_219C09EC0;
    v59 = v71;
    v60 = [*v71 identifier];
    v61 = sub_219BF5414();
    v63 = v62;

    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = sub_2186FC3BC();
    v64 = MEMORY[0x277D839F8];
    *(v58 + 32) = v61;
    *(v58 + 40) = v63;
    v65 = MEMORY[0x277D83A80];
    *(v58 + 96) = v64;
    *(v58 + 104) = v65;
    *(v58 + 72) = v57;
    sub_219BF6214();
    sub_219BE5314();

    v66 = v73;
    sub_218E625F0(v59, v73, type metadata accessor for TagFeedCuration);
    v67 = v76;
    *(v66 + *(v75 + 20)) = v57;
    v68 = *v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_2191F9338(0, v68[2] + 1, 1, v68);
    }

    v70 = v68[2];
    v69 = v68[3];
    if (v70 >= v69 >> 1)
    {
      v68 = sub_2191F9338(v69 > 1, v70 + 1, 1, v68);
    }

    v68[2] = v70 + 1;
    result = sub_218E639E4(v66, v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, type metadata accessor for ScoredTagFeedCuration);
    *v67 = v68;
  }

  else
  {
    v74 = v10;
    v27 = *(a2 + 16);
    v28 = *(v27 + 16);
    if (v28)
    {
      v72 = v7;
      v79 = v4;
      v82 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v29 = (v27 + 32);
      do
      {
        v30 = *v29;
        v29 += 3;
        v31 = v30;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        --v28;
      }

      while (v28);
      v32 = v82;
      __swift_project_boxed_opaque_existential_1((a3 + 152), *(a3 + 176));
      v24 = v77;
      if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
      {
        sub_2186D6710(0, &qword_280E8DF60);

        sub_219BF7534();
      }

      else
      {

        sub_219BF7924();
        sub_2186D6710(0, &qword_280E8DF60);
      }

      v33 = v80;

      v34 = *(type metadata accessor for TagFeedCurationRequest() + 48);
      v35 = sub_219BEF9C4();
      (*(*(v35 - 8) + 16))(v15, v33 + v34, v35);
      v36 = v78;
      (*(v24 + 104))(v15, *MEMORY[0x277D320D8], v78);
      v37 = v79;
      sub_219BF0054();
      if (!v37)
      {
        v41 = v38;
        (*(v24 + 8))(v15, v36);

        v42 = v74;
        sub_218E625F0(a2, v74, type metadata accessor for TagFeedCuration);
        v43 = v76;
        *(v42 + *(v75 + 20)) = v41;
        v44 = *v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2191F9338(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45 >> 1)
        {
          v44 = sub_2191F9338(v45 > 1, v46 + 1, 1, v44);
        }

        v44[2] = v46 + 1;
        sub_218E639E4(v42, v44 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v46, type metadata accessor for ScoredTagFeedCuration);
        *v43 = v44;
        sub_2186F20D4();
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_219C09EC0;
        v48 = [*a2 identifier];
        v49 = sub_219BF5414();
        v51 = v50;

        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = sub_2186FC3BC();
        v52 = MEMORY[0x277D839F8];
        *(v47 + 32) = v49;
        *(v47 + 40) = v51;
        v53 = MEMORY[0x277D83A80];
        *(v47 + 96) = v52;
        *(v47 + 104) = v53;
        *(v47 + 72) = v41;
        sub_219BF6214();
        sub_219BE5314();
      }

      v18 = v15;
LABEL_28:
      (*(v24 + 8))(v18, v36);
    }
  }

  return result;
}

uint64_t sub_218E60418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v31 = a4;
  v6 = sub_219BEE754();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_2186C6148(0, &unk_280E8DDB0);
  v14 = *(a2 + 136);
  swift_getObjectType();
  sub_2186C6148(0, &qword_280E8E6C0);
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = sub_2190CE55C(v15, v12, v13);

  swift_unknownObjectRelease();
  v17 = *(v27 + 16);
  v18 = *(v27 + 24);
  v19 = v17;
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v9 + 8))(v11, v8);
  v23 = v28;
  sub_219BEE724();
  type metadata accessor for TagFeedServiceContext();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v22;
  *(v24 + 32) = v16;
  *(v24 + 40) = v18;
  *(v24 + 48) = v19;
  *(v24 + 56) = 3;
  result = (*(v29 + 32))(v24 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v23, v30);
  *v31 = v24;
  return result;
}

uint64_t sub_218E60698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a2;
  v7 = type metadata accessor for CuratedTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A27A84();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if (((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) == 7)
  {
    v26 = v4;
    v18 = swift_projectBox();
    v19 = *(v12 + 16);
    v19(v17, v18, v11);
    sub_219BEDD14();
    v20 = v9[*(v7 + 60)];
    sub_218E63838(v9, type metadata accessor for CuratedTagFeedGroupConfigData);
    if (v20 == 1)
    {
      v19(v15, v17, v11);
      v21 = *(v27 + 32);
      v22 = *(v27 + 40);
      v23 = v28;

      sub_219AB5FB8(v15, v23, v21, v22, a4);
      return (*(v12 + 8))(v17, v11);
    }

    (*(v12 + 8))(v17, v11);
  }

  v25 = type metadata accessor for TagFeedCurationServiceConfig();
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

uint64_t sub_218E60928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X8>)
{
  v111 = a7;
  v110 = a6;
  v108 = a5;
  v107 = a4;
  v105 = a3;
  v106 = a2;
  v121 = a1;
  v114 = a8;
  v102 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v8 = MEMORY[0x28223BE20](v102);
  v104 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v92 - v11;
  MEMORY[0x28223BE20](v10);
  v101 = &v92 - v12;
  sub_2189AD5C8();
  v96 = v13;
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v94 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_218E63DA4(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v92 - v17;
  sub_218E63DA4(0, &qword_280E91A70, sub_2189AD5C8, v15);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v92 - v21;
  sub_218E63DA4(0, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs, v15);
  MEMORY[0x28223BE20](v22 - 8);
  v115 = &v92 - v23;
  v98 = type metadata accessor for CuratedTagFeedGroupKnobs();
  v116 = *(v98 - 8);
  v24 = MEMORY[0x28223BE20](v98);
  v97 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v120 = &v92 - v26;
  sub_218A27A84();
  v118 = *(v27 - 8);
  v119 = v27;
  MEMORY[0x28223BE20](v27);
  v117 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E63DA4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v15);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v92 - v30;
  v113 = sub_219BF2034();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BEC004();
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  v35 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v35);
  sub_219A951A0(v35);
  sub_219A951B8(v35);
  sub_219A952CC(v35);
  sub_219A952E4(v35);
  sub_219A953F8(v35);
  v36 = v121;
  v37 = v105;
  sub_219BF2024();
  v38 = type metadata accessor for TagFeedCurationServiceConfig();
  v39 = *(v36 + v38[8]);
  v130 = v106;
  v131 = v37;
  v132 = v107;
  v133 = v36;
  v40 = v108;
  v134 = v108;
  v135 = v33;
  v41 = v109;
  v42 = sub_218F8ED54(sub_218E638E0, v129, v39);
  v43 = *(v36 + v38[9]);
  v123 = v110;
  v124 = v37;
  v125 = v111;
  v126 = v36;
  v127 = v40;
  v128 = v33;
  v111 = v33;
  v44 = sub_218F8EEE4(sub_218E6390C, v122, v43);
  if (*(v42 + 2) || *(v44 + 2))
  {
    v108 = v44;
    v109 = v42;
    v110 = v41;
    v45 = *(v36 + 16);
    v46 = v38[6];
    (*(v118 + 16))(v117, v36 + v46, v119);
    v107 = v45;
    swift_unknownObjectRetain();

    v47 = v115;
    sub_2197F2D70(v115);

    v49 = v116 + 48;
    v48 = *(v116 + 48);
    v50 = v98;
    if (v48(v47, 1, v98) == 1)
    {
      v51 = v50;
      v92 = v48;
      v105 = v38;
      v106 = v46;
      v116 = v49;
      v52 = v95;
      v53 = v99;
      v54 = v96;
      (*(v95 + 56))(v99, 1, 1, v96);
      v55 = sub_219BEF814();
      (*(*(v55 - 8) + 56))(v100, 1, 1, v55);
      v56 = v93;
      sub_218E63964(v53, v93, &qword_280E91A70, sub_2189AD5C8);
      v57 = *(v52 + 48);
      if (v57(v56, 1, v54) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_218E63898(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v58 = v94;
        sub_219BEE974();
        if (v57(v56, 1, v54) != 1)
        {
          sub_2187BC630(v56, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v58 = v94;
        (*(v52 + 32))(v94, v56, v54);
      }

      v59 = v97;
      (*(v52 + 32))(v97, v58, v54);
      sub_218CC4F9C();
      swift_allocObject();
      *(v59 + v51[5]) = sub_219BEEE04();
      v136 = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v59 + v51[6]) = sub_219BEF534();
      v136 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v59 + v51[7]) = sub_219BEF534();
      LOBYTE(v136) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v59 + v51[8]) = sub_219BEF534();
      v136 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v59 + v51[9]) = sub_219BEF534();
      LOBYTE(v136) = 1;
      swift_allocObject();
      *(v59 + v51[10]) = sub_219BEF534();
      *(v59 + v51[11]) = 7;
      v60 = MEMORY[0x277D32720];
      v61 = v100;
      sub_218E63964(v100, v59 + v51[12], &qword_280E912E0, MEMORY[0x277D32720]);
      LOBYTE(v136) = 1;
      swift_allocObject();
      v62 = sub_219BEF534();
      sub_2187BC630(v61, &qword_280E912E0, v60);
      sub_2187BC630(v99, &qword_280E91A70, sub_2189AD5C8);
      *(v59 + v51[13]) = v62;
      sub_218E639E4(v59, v120, type metadata accessor for CuratedTagFeedGroupKnobs);
      v63 = v115;
      v64 = v92(v115, 1, v51);
      v38 = v105;
      if (v64 != 1)
      {
        sub_2187BC630(v63, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_218E639E4(v47, v120, type metadata accessor for CuratedTagFeedGroupKnobs);
    }

    v65 = v38[10];
    v66 = type metadata accessor for TagFeedCuration(0);
    v67 = v114;
    sub_218E625F0(v121 + v65, &v114[v66[9]], type metadata accessor for TagFeedCurationHeader);
    v68 = v101;
    v69 = v119;
    sub_219BEDD14();
    v70 = v102;
    LODWORD(v116) = *(v68 + *(v102 + 64));
    sub_218E63838(v68, type metadata accessor for CuratedTagFeedGroupConfigData);
    v71 = v103;
    sub_219BEDD14();
    v72 = *(v70 + 20);
    v73 = v66[11];
    v74 = sub_219BF1934();
    (*(*(v74 - 8) + 16))(&v67[v73], v71 + v72, v74);
    sub_218E63838(v71, type metadata accessor for CuratedTagFeedGroupConfigData);
    v75 = v104;
    sub_219BEDD14();
    v77 = *v75;
    v76 = v75[1];

    sub_218E63838(v75, type metadata accessor for CuratedTagFeedGroupConfigData);
    v78 = v109;
    *v67 = v107;
    *(v67 + 1) = v78;
    *(v67 + 2) = v108;
    (*(v118 + 32))(&v67[v66[7]], v117, v69);
    sub_218E639E4(v120, &v67[v66[8]], type metadata accessor for CuratedTagFeedGroupKnobs);
    v67[v66[10]] = v116;
    v79 = &v67[v66[12]];
    *v79 = v77;
    *(v79 + 1) = v76;
    (*(*(v66 - 1) + 56))(v67, 0, 1, v66);
  }

  else
  {
    v81 = v44;
    sub_2186F20D4();
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_219C0B8C0;
    v83 = [*(v36 + 16) identifier];
    v84 = sub_219BF5414();
    v86 = v85;

    *(v82 + 56) = MEMORY[0x277D837D0];
    *(v82 + 64) = sub_2186FC3BC();
    *(v82 + 32) = v84;
    *(v82 + 40) = v86;
    v87 = *(v42 + 2);

    v88 = MEMORY[0x277D83B88];
    v89 = MEMORY[0x277D83C10];
    *(v82 + 96) = MEMORY[0x277D83B88];
    *(v82 + 104) = v89;
    *(v82 + 72) = v87;
    v90 = *(v81 + 2);

    *(v82 + 136) = v88;
    *(v82 + 144) = v89;
    *(v82 + 112) = v90;
    sub_219BF6214();
    sub_219BE5314();

    v91 = type metadata accessor for TagFeedCuration(0);
    (*(*(v91 - 8) + 56))(v114, 1, 1, v91);
  }

  return (*(v112 + 8))(v111, v113);
}

uint64_t sub_218E618C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v63 = a3;
  v59 = a6;
  v57 = a5;
  v65 = a8;
  sub_218E63DA4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v54 - v13;
  v15 = sub_219BF3034();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v58 = *(a1 + 8);
  v62 = *(a1 + 16);
  v21 = sub_219BF16A4();
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v56 = a7;
  v23 = sub_21870F700(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_6:
    sub_2186F20D4();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    v39 = sub_219BF16A4();
    v41 = v40;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_2186FC3BC();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_7;
  }

  v26 = *(*(a2 + 56) + 8 * v23);
  v27 = *a4;
  v54[1] = swift_getObjectType();
  swift_unknownObjectRetain();

  v55 = v26;
  v28 = [v26 identifier];
  v29 = sub_219BF5414();
  v31 = v30;

  LOBYTE(v28) = sub_2188537B8(v29, v31, v27);

  if ((v28 & 1) == 0)
  {
    v43 = [v55 identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    sub_219497B60(&v64, v44, v46);

    sub_219BF16C4();
    type metadata accessor for TagFeedCurationServiceConfig();
    swift_unknownObjectRetain();
    sub_219BF16C4();
    sub_219BF3024();
    v47 = *(v60 + 8);
    v48 = v18;
    v49 = v61;
    v47(v48, v61);
    v50 = sub_219BF6844();
    swift_unknownObjectRelease();
    sub_2187BC630(v14, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v51 = (v47)(v20, v49);
    MEMORY[0x28223BE20](v51);
    v54[-2] = v56;
    v52 = sub_218DDFD74(sub_218E63F04, &v54[-4], v58);
    swift_unknownObjectRelease();
    v53 = v65;
    *v65 = v50;
    v53[1] = v52;
    v53[2] = v62;
  }

  sub_2186F20D4();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C09BA0;
  v33 = [v55 identifier];
  v34 = sub_219BF5414();
  v36 = v35;

  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = sub_2186FC3BC();
  *(v32 + 32) = v34;
  *(v32 + 40) = v36;
  sub_219BF6214();
  sub_219BE5314();

  result = swift_unknownObjectRelease();
LABEL_7:
  v42 = v65;
  *v65 = 0;
  v42[1] = 0;
  v42[2] = 0;
  return result;
}

void sub_218E61DD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t *a7@<X8>)
{
  v50 = a4;
  v51 = a5;
  v55 = a7;
  v11 = sub_219BF2E24();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v53 = *(a1 + 8);
  v54 = v14;
  v15 = sub_219BF14D4();
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v49 = a6;
  v17 = sub_21870F700(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_6:
    sub_2186F20D4();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v34 = sub_219BF14D4();
    v36 = v35;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_2186FC3BC();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_7;
  }

  v20 = *(*(a2 + 56) + 8 * v17);
  v21 = *a3;
  v22 = v20;

  v48 = v22;
  v23 = [v22 identifier];
  v24 = sub_219BF5414();
  v26 = v25;

  LOBYTE(v23) = sub_2188537B8(v24, v26, v21);

  if ((v23 & 1) == 0)
  {
    v38 = v48;
    v39 = [v48 identifier];
    v40 = sub_219BF5414();
    v42 = v41;

    sub_219497B60(&v56, v40, v42);

    sub_219BF14F4();
    type metadata accessor for TagFeedCurationServiceConfig();
    swift_unknownObjectRetain();
    v43 = sub_219BF6DA4();
    swift_unknownObjectRelease();
    v44 = (*(v52 + 8))(v13, v11);
    MEMORY[0x28223BE20](v44);
    *(&v48 - 2) = v49;
    v45 = sub_218DDFD74(sub_218E63A4C, (&v48 - 4), v53);

    v46 = v54;
    v47 = v55;
    *v55 = v43;
    v47[1] = v45;
    v47[2] = v46;

    return;
  }

  sub_2186F20D4();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  v28 = v48;
  v29 = [v48 identifier];
  v30 = sub_219BF5414();
  v32 = v31;

  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2186FC3BC();
  *(v27 + 32) = v30;
  *(v27 + 40) = v32;
  sub_219BF6214();
  sub_219BE5314();

LABEL_7:
  v37 = v55;
  *v55 = 0;
  v37[1] = 0;
  v37[2] = 0;
}

uint64_t sub_218E621E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return swift_deallocClassInstance();
}

void *sub_218E62248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_218E63A90(*(v2 + 24), *a1);
  *a2 = result;
  return result;
}

unint64_t sub_218E62284()
{
  result = qword_280E8F068;
  if (!qword_280E8F068)
  {
    sub_218E63DA4(255, &qword_280E8F070, type metadata accessor for TagFeedCurationServiceConfig, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F068);
  }

  return result;
}

uint64_t sub_218E6230C(uint64_t a1)
{
  v4 = *(type metadata accessor for TagFeedCurationRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_218E5E42C(a1, v6, v1 + v5, v7);
}

uint64_t sub_218E62428(uint64_t a1)
{
  v4 = *(type metadata accessor for TagFeedCurationRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_218E5EF54(a1, v6, v1 + v5, v7);
}

void sub_218E62544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF52A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218E625F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E62658(unint64_t *a1)
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
        type metadata accessor for ScoredTagFeedCuration(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ScoredTagFeedCuration(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_218E629DC(v8, v9, a1, v4);
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
    return sub_218E62784(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218E62784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ScoredTagFeedCuration(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_218E625F0(v24, v18, type metadata accessor for ScoredTagFeedCuration);
      sub_218E625F0(v21, v14, type metadata accessor for ScoredTagFeedCuration);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_218E63838(v14, type metadata accessor for ScoredTagFeedCuration);
      result = sub_218E63838(v18, type metadata accessor for ScoredTagFeedCuration);
      if (v27 > v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_218E639E4(v24, v11, type metadata accessor for ScoredTagFeedCuration);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_218E639E4(v11, v21, type metadata accessor for ScoredTagFeedCuration);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218E629DC(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for ScoredTagFeedCuration(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_218C81048(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_218E63340(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_218C81048(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_218C80FBC(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_218E625F0(v117 + v24 * v23, v18, type metadata accessor for ScoredTagFeedCuration);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_218E625F0(v26, v122, type metadata accessor for ScoredTagFeedCuration);
      v29 = *(v9 + 20);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_218E63838(v28, type metadata accessor for ScoredTagFeedCuration);
      result = sub_218E63838(v18, type metadata accessor for ScoredTagFeedCuration);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_218E625F0(v33, v18, type metadata accessor for ScoredTagFeedCuration);
        v34 = v122;
        sub_218E625F0(v5, v122, type metadata accessor for ScoredTagFeedCuration);
        v35 = *(v123 + 20);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_218E63838(v34, type metadata accessor for ScoredTagFeedCuration);
        result = sub_218E63838(v18, type metadata accessor for ScoredTagFeedCuration);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 <= v30 == v37 > v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 <= v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_218E639E4(v44 + v43, v113, type metadata accessor for ScoredTagFeedCuration);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_218E639E4(v113, v44 + v38, type metadata accessor for ScoredTagFeedCuration);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_2191F6B60(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_2191F6B60((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_218E63340(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_218C81048(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_218C80FBC(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_218E625F0(v5, v18, type metadata accessor for ScoredTagFeedCuration);
    v97 = v122;
    sub_218E625F0(v93, v122, type metadata accessor for ScoredTagFeedCuration);
    v98 = *(v96 + 20);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_218E63838(v97, type metadata accessor for ScoredTagFeedCuration);
    result = sub_218E63838(v18, type metadata accessor for ScoredTagFeedCuration);
    if (v100 > v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_218E639E4(v5, v121, type metadata accessor for ScoredTagFeedCuration);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_218E639E4(v101, v93, type metadata accessor for ScoredTagFeedCuration);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_218E63340(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for ScoredTagFeedCuration(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
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

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_218E625F0(v33, v12, type metadata accessor for ScoredTagFeedCuration);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_218E625F0(v35, v46, type metadata accessor for ScoredTagFeedCuration);
          v38 = *(v47 + 20);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_218E63838(v41, type metadata accessor for ScoredTagFeedCuration);
          sub_218E63838(v36, type metadata accessor for ScoredTagFeedCuration);
          if (v40 <= v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
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

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_218E625F0(a2, v12, type metadata accessor for ScoredTagFeedCuration);
        v21 = v46;
        sub_218E625F0(a4, v46, type metadata accessor for ScoredTagFeedCuration);
        v22 = *(v47 + 20);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_218E63838(v21, type metadata accessor for ScoredTagFeedCuration);
        sub_218E63838(v12, type metadata accessor for ScoredTagFeedCuration);
        if (v24 <= v23)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_2189F1954(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_218E63838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E63898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E63964(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218E63DA4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E639E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E63A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF1A24();
  *a1 = result;
  return result;
}

void *sub_218E63A90(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 24) + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);
  v13[2] = a2;
  v13[3] = a1;

  v4 = sub_218F8EA5C(sub_218E63C10, v13, v3);

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = v4[2];
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  v8 = [objc_msgSend(*(a2 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) backingTag)];
  swift_unknownObjectRelease();
  v9 = sub_219BF5414();
  v11 = v10;

  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = sub_2186FC3BC();
  *(v5 + 72) = v9;
  *(v5 + 80) = v11;
  sub_219BF6214();
  sub_219BE5314();

  return v4;
}

uint64_t sub_218E63C80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193CB930(a1, v5, v4);
}

uint64_t sub_218E63D48()
{
  sub_219BF6214();

  return sub_219BE5314();
}

void sub_218E63DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_31Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_218E63E58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193CAAE0(a1, v5, v4);
}

uint64_t sub_218E63F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218E63FA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_218E64000()
{
  v1 = v0;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000020, 0x8000000219CFCDD0);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x6275732020200A2CLL, 0xEF203A656C746974);
  MEMORY[0x21CECC330](v1[2], v1[3]);
  MEMORY[0x21CECC330](0x6C72752020200A2CLL, 0xEA0000000000203ALL);
  MEMORY[0x21CECC330](v1[4], v1[5]);
  MEMORY[0x21CECC330](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_218E640E4(void *a1)
{
  sub_218E647D8(0, &qword_280E8C600, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E64784();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF77F4();
    v9[13] = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E64270()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_218E642C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E64954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E642E8(uint64_t a1)
{
  v2 = sub_218E64784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E64324(uint64_t a1)
{
  v2 = sub_218E64784();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_218E64360@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_218E644B8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_218E643BC(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_219BF78F4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_218E644B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218E647D8(0, &qword_280E8CEE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E64784();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v10 = sub_219BF7694();
  v12 = v11;
  v29 = v10;
  v31 = 1;
  v13 = sub_219BF7694();
  v15 = v14;
  v28 = v13;
  v30 = 2;
  v16 = sub_219BF7694();
  if (v12)
  {
    v19 = v29;
  }

  else
  {
    v19 = 0x742D726564616568;
  }

  v20 = 0xEC000000656C7469;
  if (v12)
  {
    v20 = v12;
  }

  v27 = v20;
  v21 = v28;
  if (!v15)
  {
    v21 = 0x732D726564616568;
  }

  v28 = v21;
  v29 = v19;
  if (!v15)
  {
    v15 = 0xEF656C7469746275;
  }

  if (v17)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0x752D726564616568;
  }

  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = 0xEA00000000006C72;
  }

  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v27;
  v24 = v28;
  *a2 = v29;
  a2[1] = v25;
  a2[2] = v24;
  a2[3] = v15;
  a2[4] = v22;
  a2[5] = v23;
  return result;
}

unint64_t sub_218E64784()
{
  result = qword_280ECED48;
  if (!qword_280ECED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECED48);
  }

  return result;
}

void sub_218E647D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E64784();
    v7 = a3(a1, &type metadata for FeedGroupSectionKeys.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E64850()
{
  result = qword_27CC12B88;
  if (!qword_27CC12B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12B88);
  }

  return result;
}

unint64_t sub_218E648A8()
{
  result = qword_280ECED38;
  if (!qword_280ECED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECED38);
  }

  return result;
}

unint64_t sub_218E64900()
{
  result = qword_280ECED40;
  if (!qword_280ECED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECED40);
  }

  return result;
}

uint64_t sub_218E64954(uint64_t a1, uint64_t a2)
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

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t type metadata accessor for SeenContentMarkTodayFeedGroupKnobs()
{
  result = qword_280E9F0F8;
  if (!qword_280E9F0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E64ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_2189AF794(a1, v14, sub_2189AF720);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v26 = v10;
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v10 = v26;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189AF7FC(v14, sub_2189AF720);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a3, v19, v16);
  v21 = v27;
  sub_2189AF794(v27, v7, sub_2189AF700);
  v22 = *(v10 + 48);
  if (v22(v7, 1, v9) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v23 = v29;
    sub_219BEEC74();
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    if (v22(v7, 1, v9) != 1)
    {
      sub_2189AF7FC(v7, sub_2189AF700);
    }
  }

  else
  {
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    v23 = v29;
    (*(v10 + 32))(v29, v7, v9);
  }

  v24 = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  return (*(v10 + 32))(a3 + *(v24 + 20), v23, v9);
}

uint64_t sub_218E64FC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E65650(0, &qword_280E8C918, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E655FC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AE994(0);
    v18 = 0;
    sub_2186DF908(&qword_280E91A28, sub_2189AE994);
    sub_219BF7674();
    sub_2189AE9B4(0);
    v17 = 1;
    sub_2186DF908(&qword_280E91868, sub_2189AE9B4);
    sub_219BF7674();
    sub_218E64ADC(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218E65274(void *a1)
{
  sub_218E65650(0, &qword_280E8C2B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E655FC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AE994(0);
  sub_2186DF908(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
    v9[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E65484(uint64_t a1)
{
  v2 = sub_218E655FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E654C0(uint64_t a1)
{
  v2 = sub_218E655FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E6552C()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_218E655FC()
{
  result = qword_280E9F128[0];
  if (!qword_280E9F128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9F128);
  }

  return result;
}

void sub_218E65650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E655FC();
    v7 = a3(a1, &type metadata for SeenContentMarkTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E656C8()
{
  result = qword_27CC12B90;
  if (!qword_27CC12B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12B90);
  }

  return result;
}

unint64_t sub_218E65720()
{
  result = qword_280E9F118;
  if (!qword_280E9F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F118);
  }

  return result;
}

unint64_t sub_218E65778()
{
  result = qword_280E9F120;
  if (!qword_280E9F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F120);
  }

  return result;
}

id sub_218E657CC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CC12B98 = result;
  return result;
}

id static NSBundle.newsUI2.getter()
{
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CC12B98;

  return v0;
}

void static NSBundle.newsUI2.setter(uint64_t a1)
{
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CC12B98;
  qword_27CC12B98 = a1;
}

uint64_t (*static NSBundle.newsUI2.modify())()
{
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

unint64_t sub_218E659B0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_218805E54();
    v8 = sub_219BF6DD4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_218E65AA0()
{
  sub_2187FAD00();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  sub_218E7283C(&qword_280EE3730, 255, sub_21880B928);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE58E0, 255, sub_2187FAD00);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E65D18()
{
  sub_218954350();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  sub_218E7283C(&unk_280EE36D0, 255, sub_218954408);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE5870, 255, sub_218954350);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E65F90()
{
  sub_218BD34A8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284();
  sub_218E7283C(&qword_27CC12BA8, 255, sub_218BD3284);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&unk_27CC12BB0, 255, sub_218BD34A8);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E66208()
{
  sub_218B58FCC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  sub_218E7283C(&qword_280EE35D8, 255, sub_218BD7A90);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_27CC12BC0, 255, sub_218B58FCC);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E66480()
{
  sub_218951DB0();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  sub_218E7283C(&unk_280EE3610, 255, sub_218951F54);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE5950, 255, sub_218951DB0);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E666F8()
{
  sub_218953904();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F3FBC(0);
  sub_218E7283C(&qword_280EE3698, 255, sub_2189F3FBC);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE57F0, 255, sub_218953904);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E66970()
{
  sub_218E847D8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E848CC();
  sub_218E7283C(&qword_280EE37B8, 255, sub_218E848CC);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE59D0, 255, sub_218E847D8);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E66BE8()
{
  sub_218953A84();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  sub_218E7283C(&qword_280EE36F8, 255, sub_218AF3D74);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE58A0, 255, sub_218953A84);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E66E60()
{
  sub_218950B84();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  sub_218E7283C(&qword_280EE5760, 255, sub_218950928);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&unk_280EE5C80, 255, sub_218950B84);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E670D8()
{
  sub_218950928();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  sub_218E7283C(&unk_280EE3770, 255, sub_218950ACC);
  sub_219BF5E34();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_219BF5DF4();
  sub_219BF5E84();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = sub_219BF5EC4();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_218E7283C(&qword_280EE5770, 255, sub_218950928);
    LOBYTE(v8) = sub_219BF53A4();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    sub_219BF5E94();
    sub_219BF5E84();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_218E67350@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v85 = a3;
  v96 = a4;
  v97 = a1;
  sub_218951E9C();
  v82 = v5;
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v84 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = v78 - v10;
  sub_218D51CC0();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v90 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v78 - v14;
  sub_218951DB0();
  v98 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v83 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v78 - v20;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0600(0);
  v95 = v25;
  v93 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v91 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v78 - v28;
  sub_218951F54();
  v31 = v30;
  v92 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v94 = v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v78 - v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v37 = Strong;

  sub_219BDEC74();

  v89 = v29;
  sub_219BDEC44();

  v78[1] = *(v37 + 96);

  v86 = a2;
  sub_219BEE5E4();
  sub_219BEB294();
  sub_218B588AC(v99);
  v79 = *(v17 + 48);
  v38 = v79(v15, 1, v98);
  v88 = v17;
  if (v38 == 1)
  {
    sub_218E728E8(v15, sub_218D51CC0);
    v39 = sub_219BE16D4();
    (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
    v40 = v35;
  }

  else
  {
    (*(v17 + 32))(v21, v15, v98);
    v41 = sub_218E66480();
    v40 = v35;
    if (v42)
    {
      v43 = 1;
    }

    else
    {
      v44 = v41;
      v45 = v31;
      sub_218E7283C(&unk_280EE5A50, 255, sub_218CA0600);
      sub_219BF5DF4();
      sub_219BF5E84();
      if (v44 >= sub_219BF5E74())
      {
        v43 = 1;
      }

      else
      {
        v46 = v80;
        sub_219BE65A4();
        v47 = v82;
        sub_219BE8194();
        (*(v81 + 8))(v46, v47);
        v43 = 0;
      }

      v31 = v45;
      v40 = v35;
    }

    v48 = sub_219BE97D4();
    v49 = v87;
    (*(*(v48 - 8) + 56))(v87, v43, 1, v48);
    sub_2198388B8(v21, v40, v49, v24);
    sub_218E728E8(v49, sub_218B58900);
    (*(v88 + 8))(v21, v98);
    v50 = sub_219BE16D4();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v24, 1, v50) != 1)
    {

      (*(v93 + 8))(v89, v95);
      (*(v92 + 8))(v40, v31);
      v68 = v96;
      (*(v51 + 32))(v96, v24, v50);
      return (*(v51 + 56))(v68, 0, 1, v50);
    }
  }

  sub_218E728E8(v24, sub_218B58D58);

  v52 = v94;
  sub_219BDEBD4();

  v53 = v91;
  sub_219BDEBA4();

  sub_219BEE5E4();
  v54 = v90;
  sub_219BEB294();
  sub_218B588AC(v100);
  v55 = v79(v54, 1, v98);
  v56 = v89;
  if (v55 == 1)
  {

    v57 = *(v93 + 8);
    v58 = v95;
    v57(v53, v95);
    v59 = v52;
    v60 = *(v92 + 8);
    v60(v59, v31);
    v57(v56, v58);
    v60(v40, v31);
    sub_218E728E8(v54, sub_218D51CC0);
LABEL_13:
    v61 = sub_219BE16D4();
    return (*(*(v61 - 8) + 56))(v96, 1, 1, v61);
  }

  v97 = v40;
  v63 = v83;
  (*(v88 + 32))(v83, v54, v98);
  v64 = sub_218E66480();
  v65 = v95;
  if (v66)
  {
    v67 = 1;
LABEL_20:
    v71 = v84;
    goto LABEL_21;
  }

  v69 = v64;
  sub_218E7283C(&unk_280EE5A50, 255, sub_218CA0600);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v69 >= sub_219BF5E74())
  {
    v67 = 1;
    goto LABEL_20;
  }

  v70 = v80;
  sub_219BE65A4();
  v71 = v84;
  v72 = v82;
  sub_219BE8194();
  v73 = v70;
  v53 = v91;
  v56 = v89;
  (*(v81 + 8))(v73, v72);
  v67 = 0;
LABEL_21:
  v74 = sub_219BE97D4();
  (*(*(v74 - 8) + 56))(v71, v67, 1, v74);
  v75 = v94;
  sub_2198388B8(v63, v94, v71, v96);

  sub_218E728E8(v71, sub_218B58900);
  (*(v88 + 8))(v63, v98);
  v76 = *(v93 + 8);
  v76(v53, v65);
  v77 = *(v92 + 8);
  v77(v75, v31);
  v76(v56, v65);
  return (v77)(v97, v31);
}

uint64_t sub_218E67F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v57 = a2;
  sub_218951E9C();
  v51 = v4;
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v16 - 8);
  v58 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE16D4();
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v52 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = v48 - v21;
  sub_218CA0600(0);
  v63 = v22;
  v60 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v26 = v25;
  v59 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v54 = a3;
    v64[0] = *(Strong + 16);
    sub_2187EE318();
    sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
    sub_219BE7B94();
    v64[0] = *(v30 + 24);
    sub_2187EE748(0);
    sub_218E7283C(&unk_280EE4C90, 255, sub_2187EE748);
    sub_219BE91E4();
    v31 = *(v30 + 96);

    sub_219BEE5E4();
    v57 = v26;
    sub_219BEB294();
    sub_218B588AC(v64);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {

      sub_218E728E8(v10, sub_218D51CC0);
      v32 = v58;
      (*(v61 + 56))(v58, 1, 1, v62);
      a3 = v54;
    }

    else
    {
      v48[1] = v31;
      v56 = v13;
      (*(v13 + 32))(v15, v10, v12);
      v34 = sub_218E66480();
      v32 = v58;
      if ((v35 & 1) != 0 || (v36 = v34, sub_218E7283C(&unk_280EE5A50, 255, sub_218CA0600), sub_219BF5DF4(), sub_219BF5E84(), v36 >= sub_219BF5E74()))
      {
        v40 = 1;
        a3 = v54;
        v38 = v55;
      }

      else
      {
        v37 = v49;
        sub_219BE65A4();
        v38 = v55;
        v39 = v51;
        sub_219BE8194();
        (*(v50 + 8))(v37, v39);
        v40 = 0;
        a3 = v54;
      }

      v41 = sub_219BE97D4();
      (*(*(v41 - 8) + 56))(v38, v40, 1, v41);
      sub_2198388B8(v15, v28, v38, v32);
      sub_218E728E8(v38, sub_218B58900);
      (*(v56 + 8))(v15, v12);
      v43 = v61;
      v42 = v62;
      if ((*(v61 + 48))(v32, 1, v62) != 1)
      {
        v45 = v53;
        (*(v43 + 32))(v53, v32, v42);
        (*(v43 + 16))(v52, v45, v42);
        sub_219BE0004();

        (*(v43 + 8))(v45, v42);
        (*(v60 + 8))(v24, v63);
        (*(v59 + 8))(v28, v57);
        v33 = 0;
        goto LABEL_13;
      }
    }

    v44 = v57;
    (*(v60 + 8))(v24, v63);
    (*(v59 + 8))(v28, v44);
    sub_218E728E8(v32, sub_218B58D58);
    v33 = 1;
  }

  else
  {
    v33 = 1;
  }

LABEL_13:
  v46 = sub_219BE0014();
  return (*(*(v46 - 8) + 56))(a3, v33, 1, v46);
}

uint64_t sub_218E687F0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_219BE14C4();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE14A4();
  MEMORY[0x28223BE20](v5 - 8);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  sub_218951F54();
  v14 = v13;
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = *(a1 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  sub_219BEB354();
  sub_218951DB0();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  if (v20(v10, 1, v17) == 1)
  {

    sub_219BEE5E4();
    sub_219BEB294();
    sub_218B588AC(v33);
    if (v20(v10, 1, v18) != 1)
    {
      sub_218E728E8(v10, sub_218D51CC0);
    }
  }

  else
  {
    (*(v19 + 32))(v12, v10, v18);
    (*(v19 + 56))(v12, 0, 1, v18);
  }

  v21 = v20(v12, 1, v18);
  sub_218E728E8(v12, sub_218D51CC0);
  if (v21 == 1)
  {
    result = (*(v31 + 8))(v16, v14);
    v23 = v32;
    *(v32 + 32) = 0;
    *v23 = 0u;
    v23[1] = 0u;
  }

  else
  {
    (*(v28 + 104))(v27, *MEMORY[0x277D2F348], v29);
    sub_219BE1484();
    v24 = sub_219BDFE54();
    v25 = v32;
    *(v32 + 24) = v24;
    v25[4] = sub_218E7283C(&qword_280EE8540, 255, MEMORY[0x277D2E1A8]);
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_219BDFE44();
    return (*(v31 + 8))(v16, v14);
  }

  return result;
}

uint64_t sub_218E68C9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_218E72884(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218E690E0(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_219BDBD34();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_219BDF244();
  v32 = *(v17 - 8);
  v33 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  sub_219BE8F44();
  (*(v11 + 32))(v14, v16, v10);
  v20 = (*(v11 + 88))(v14, v10);
  if (v20 == *MEMORY[0x277D6E830])
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D2F428], v6);
  }

  else
  {
    v21 = *(v7 + 104);
    if (v20 == *MEMORY[0x277D6E840] || v20 == *MEMORY[0x277D6E848] || v20 == *MEMORY[0x277D6E838])
    {
      v21(v9, *MEMORY[0x277D2F420], v6);
    }

    else
    {
      v21(v9, *MEMORY[0x277D2F430], v6);
      (*(v11 + 8))(v14, v10);
    }
  }

  sub_219BDF234();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v24 = sub_219BDCD44();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x277CEAD18], v24);
  sub_218E7283C(&qword_280EE8810, 255, MEMORY[0x277D2D9A8]);
  v28 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v19, v28);
  sub_219BDF524();
  sub_219BE8F64();
  sub_218E7283C(&qword_280EE8760, 255, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v29 = v36;
  v30 = *(v35 + 8);
  v30(v5, v36);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v30)(v5, v29);
}

void sub_218E69674(uint64_t a1)
{
  v97 = sub_219BDBD34();
  v96 = *(v97 - 8);
  v2 = MEMORY[0x28223BE20](v97);
  v95 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v94 = &v93 - v4;
  sub_218E82FA4();
  v6 = v5;
  v144 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v142 = v7;
  v143 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0B74();
  v140 = *(v8 - 8);
  v141 = v8;
  MEMORY[0x28223BE20](v8);
  v139 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v146 = *(v10 - 8);
  v147 = v10;
  MEMORY[0x28223BE20](v10);
  v145 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF04A4();
  v137 = *(v12 - 8);
  v138 = v12;
  MEMORY[0x28223BE20](v12);
  v134 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v135 = *(v14 - 8);
  v136 = v14;
  MEMORY[0x28223BE20](v14);
  v133 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BEDB94();
  v131 = *(v16 - 8);
  v132 = v16;
  MEMORY[0x28223BE20](v16);
  v130 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v129 = v18;
  v128 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v127 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BF0AC4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v123 = v21;
  v122 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v121 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_219BEDAE4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v117 = v24;
  v116 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v115 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BF1094();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v111 = v27;
  v110 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v109 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF07A4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FACE4();
  v105 = v30;
  v104 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v103 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BF0F34();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758();
  v100 = v33;
  v99 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MagazineFeedModel(0);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  sub_218953870();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v93 - v48;
  v148 = v6;
  v150 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  v50 = *(v44 + 8);
  v50(v49, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = sub_219BF1584();
      (*(*(v85 - 8) + 8))(v41, v85);
      return;
    case 2u:
      v78 = v99;
      v79 = v100;
      (*(v99 + 32))(v35, v41, v100);
      v80 = v98;
      sub_219BF07D4();
      v81 = sub_219BF0F14();
      (*(v101 + 8))(v80, v102);
      sub_218E6A910(v150, v81);
      swift_unknownObjectRelease();
      (*(v78 + 8))(v35, v79);
      return;
    case 3u:
    case 0xAu:
      v51 = type metadata accessor for MagazineFeedModel;
      v52 = v41;
      goto LABEL_19;
    case 4u:
      v58 = v104;
      v59 = v103;
      v60 = v105;
      (*(v104 + 32))(v103, v41, v105);
      v82 = v106;
      sub_219BF07D4();
      sub_218E6B064(v150, v82);
      v62 = *(v107 + 8);
      v63 = v82;
      v64 = &v140;
      goto LABEL_14;
    case 5u:
      v58 = v110;
      v59 = v109;
      v60 = v111;
      (*(v110 + 32))(v109, v41, v111);
      v61 = v112;
      sub_219BF07D4();
      sub_218E6B650(v150, v61, MEMORY[0x277D330F8], MEMORY[0x277D330F0], &unk_282A4CC68, sub_218E83420);
      v62 = *(v113 + 8);
      v63 = v61;
      v64 = &v146;
      goto LABEL_14;
    case 6u:
      sub_218E728E8(v41, type metadata accessor for MagazineFeedModel);
      sub_219BE7564();
      sub_219BE5FC4();
      v50(v47, v43);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v86 = sub_219BE5B64();
        swift_getObjectType();
        v151 = v86;
        v87 = v94;
        sub_219BE75A4();
        v88 = v95;
        sub_219BE7574();
        sub_219BEB4C4();

        v89 = *(v96 + 8);
        v90 = v97;
        v89(v88, v97);
        v89(v87, v90);
      }

      else
      {
        v51 = type metadata accessor for MagazineFeedModel;
        v52 = v39;
LABEL_19:
        sub_218E728E8(v52, v51);
      }

      return;
    case 7u:
      v58 = v116;
      v59 = v115;
      v60 = v117;
      (*(v116 + 32))(v115, v41, v117);
      v91 = v118;
      sub_219BF07D4();
      sub_218E6B650(v150, v91, MEMORY[0x277D31D50], MEMORY[0x277D31D48], &unk_282A4CC90, sub_218E83460);
      v62 = *(v119 + 8);
      v63 = v91;
      v64 = &v152;
      goto LABEL_14;
    case 8u:
      v58 = v122;
      v59 = v121;
      v60 = v123;
      (*(v122 + 32))(v121, v41, v123);
      v83 = v124;
      sub_219BF07D4();
      sub_218E6BD80(v150, v83);
      v62 = *(v125 + 8);
      v63 = v83;
      v64 = &v153;
LABEL_14:
      v62(v63, *(v64 - 32));
      goto LABEL_15;
    case 9u:
      v58 = v128;
      v59 = v127;
      v60 = v129;
      (*(v128 + 32))(v127, v41, v129);
      v92 = v130;
      sub_219BF07D4();
      sub_219BEDB74();
      swift_unknownObjectRelease();
      (*(v131 + 8))(v92, v132);
LABEL_15:
      (*(v58 + 8))(v59, v60);
      return;
    case 0xBu:
      v54 = v135;
      v53 = v136;
      v55 = v133;
      (*(v135 + 32))(v133, v41, v136);
      v56 = v134;
      sub_219BF07D4();
      v57 = sub_219BF0404();
      (*(v137 + 8))(v56, v138);
      sub_218E6C728(v150, v57);
      swift_unknownObjectRelease();
      (*(v54 + 8))(v55, v53);
      return;
    case 0xCu:
      (*(v146 + 32))(v145, v41, v147);
      v65 = v139;
      sub_219BF07D4();
      v66 = sub_219BF0B44();
      (*(v140 + 8))(v65, v141);
      v67 = v149;
      __swift_project_boxed_opaque_existential_1((v149 + 160), *(v149 + 184));
      v68 = [v66 identifier];
      sub_219BF5414();

      v69 = sub_219BF4774();

      v141 = *(v67 + 32);
      v70 = v143;
      v71 = v144;
      v72 = v148;
      (*(v144 + 16))(v143, v150, v148);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = (v142 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      (*(v71 + 32))(v75 + v73, v70, v72);
      *(v75 + v74) = v66;
      v76 = v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v76 = v67;
      *(v76 + 8) = v69 & 1;
      v77 = v66;

      sub_219BDD154();

      (*(v146 + 8))(v145, v147);
      return;
    default:

      sub_2186F6F00();
      v51 = type metadata accessor for MagazineFeedGapLocation;
      v52 = &v41[*(v84 + 48)];
      goto LABEL_19;
  }
}

uint64_t sub_218E6A910(uint64_t a1, void *a2)
{
  v3 = v2;
  v70 = a2;
  sub_218E82FA4();
  v68 = v5;
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v64 = v6;
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v61 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  MEMORY[0x28223BE20](v8);
  v69 = &v53 - v10;
  v11 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v57 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v58 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v59 = v25;
  v60 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - v26;
  v55 = v3[12];
  sub_219BE7594();
  v62 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v16 + 8))(v18, v15);
  v28 = v70;
  sub_219310654();
  sub_218E728E8(v13, type metadata accessor for MagazineFeedModel);
  v29 = v27;
  sub_219838374(v22, v27);

  (*(v20 + 8))(v22, v57);
  __swift_project_boxed_opaque_existential_1(v3 + 20, v3[23]);
  v30 = [v28 identifier];
  sub_219BF5414();

  LODWORD(v57) = sub_219BF4774();

  sub_218718690((v3 + 25), v71);
  v31 = v72;
  v32 = __swift_project_boxed_opaque_existential_1(v71, v72);
  v33 = [v28 respondsToSelector_];
  if ((v33 & 1) != 0 && (v33 = [v70 dismissingIdentifier]) != 0)
  {
    v34 = v33;
    v35 = sub_219BF5414();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  MEMORY[0x28223BE20](v33);
  v39 = &v53 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, v32, v31);
  v41 = v69;
  sub_218A75968(v35, v37, v39, v31, v69);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v54 = v3;
  v55 = v3[4];
  v42 = v65;
  v43 = v66;
  v44 = v68;
  (*(v66 + 16))(v65, v62, v68);
  v56 = v29;
  v45 = v60;
  sub_218E83700(v29, v60, sub_218B58D58);
  sub_218E83700(v41, v67, sub_218B59134);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = (v64 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (*(v58 + 80) + v47 + 9) & ~*(v58 + 80);
  v49 = (v59 + *(v61 + 80) + v48) & ~*(v61 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v70;
  (*(v43 + 32))(v50 + v46, v42, v44);
  v51 = v50 + v47;
  *v51 = v54;
  *(v51 + 8) = v57 & 1;
  sub_218E830C4(v45, v50 + v48, sub_218B58D58);
  sub_218E830C4(v67, v50 + v49, sub_218B59134);
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_218E728E8(v69, sub_218B59134);
  return sub_218E728E8(v56, sub_218B58D58);
}

uint64_t sub_218E6B064(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v49 = a2;
  sub_218E82FA4();
  v3 = v2;
  v58 = *(v2 - 8);
  v54 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_219BF07A4();
  v57 = *(v51 - 8);
  v52 = *(v57 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218953870();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218951F54();
  v44 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218B58D58(0);
  v48 = *(v18 - 8);
  v47 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v46 = &v41[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v41[-v21];
  v45 = v3;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v11 + 8))(v13, v10);
  sub_219310654();
  sub_218E728E8(v8, type metadata accessor for MagazineFeedModel);
  v43 = v22;
  sub_219838374(v17, v22);

  (*(v15 + 8))(v17, v44);
  v23 = v55;
  __swift_project_boxed_opaque_existential_1((v55 + 160), *(v55 + 184));
  v24 = v49;
  v25 = sub_219BF06B4();
  v26 = [v25 identifier];

  sub_219BF5414();
  v42 = sub_219BF4774();

  v44 = *(v23 + 32);
  v27 = v46;
  sub_218E83700(v22, v46, sub_218B58D58);
  v28 = v57;
  v30 = v50;
  v29 = v51;
  (*(v57 + 16))(v50, v24, v51);
  v31 = v58;
  v32 = v53;
  v33 = v45;
  (*(v58 + 16))(v53, v56, v45);
  v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v35 = (v47 + *(v28 + 80) + v34) & ~*(v28 + 80);
  v36 = (v52 + *(v31 + 80) + v35) & ~*(v31 + 80);
  v37 = (v54 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_218E830C4(v27, v38 + v34, sub_218B58D58);
  (*(v57 + 32))(v38 + v35, v30, v29);
  (*(v58 + 32))(v38 + v36, v32, v33);
  v39 = v38 + v37;
  *v39 = v55;
  *(v39 + 8) = v42 & 1;

  sub_219BDD154();

  return sub_218E728E8(v43, sub_218B58D58);
}

uint64_t sub_218E6B650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v62 = a4;
  v61 = a2;
  v73 = a1;
  sub_218E82FA4();
  v8 = v7;
  v68 = *(v7 - 8);
  v70 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3(0);
  v63 = *(v10 - 8);
  v64 = v10;
  v69 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v56 - v11;
  sub_218B59134(0);
  v67 = *(v12 - 8);
  v65 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v77 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v56 - v15;
  v16 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v57 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v60 = *(v28 - 8);
  v59 = *(v60 + 64);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v76 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v56 - v31;
  v74 = &v56 - v31;
  v58 = v8;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v21 + 8))(v23, v20);
  sub_219310654();
  sub_218E728E8(v18, type metadata accessor for MagazineFeedModel);
  sub_219838374(v27, v32);

  (*(v25 + 8))(v27, v57);
  v33 = v56;
  v34 = *(v56 + 224);
  v35 = __swift_project_boxed_opaque_existential_1((v56 + 200), v34);
  v36 = v61;
  v37 = v62();
  v39 = v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v35, v34);
  v43 = v75;
  sub_218A75968(v37, v39, v41, v34, v75);
  v62 = *(v33 + 32);
  v44 = v63;
  v45 = v64;
  (*(v63 + 16))(v78, v36, v64);
  v46 = v68;
  v47 = v66;
  v48 = v58;
  (*(v68 + 16))(v66, v73, v58);
  sub_218E83700(v74, v76, sub_218B58D58);
  sub_218E83700(v43, v77, sub_218B59134);
  v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v50 = v46;
  v51 = (v69 + *(v46 + 80) + v49) & ~*(v46 + 80);
  v52 = (v70 + *(v60 + 80) + v51) & ~*(v60 + 80);
  v53 = (v59 + *(v67 + 80) + v52) & ~*(v67 + 80);
  v54 = swift_allocObject();
  (*(v44 + 32))(v54 + v49, v78, v45);
  (*(v50 + 32))(v54 + v51, v47, v48);
  sub_218E830C4(v76, v54 + v52, sub_218B58D58);
  sub_218E830C4(v77, v54 + v53, sub_218B59134);
  sub_219BDD154();

  sub_218E728E8(v75, sub_218B59134);
  return sub_218E728E8(v74, sub_218B58D58);
}

uint64_t sub_218E6BD80(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v74 = a1;
  sub_218E82FA4();
  v3 = v2;
  v71 = *(v2 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v83 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BF0AC4();
  v80 = *(v82 - 8);
  v70 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDEF94();
  v65 = *(v6 - 8);
  v66 = v6;
  v69 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v79 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v58 - v9;
  sub_218B59134(0);
  v68 = *(v10 - 8);
  v67 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v58 - v13;
  v14 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v61 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v64 = *(v26 - 8);
  v63 = *(v64 + 64);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v76 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - v29;
  v78 = &v58 - v29;
  v75 = v3;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v19 + 8))(v21, v18);
  sub_219310654();
  sub_218E728E8(v16, type metadata accessor for MagazineFeedModel);
  sub_219838374(v25, v30);

  (*(v23 + 8))(v25, v61);
  v31 = v59;
  __swift_project_boxed_opaque_existential_1(v59 + 20, v59[23]);
  v32 = v62;
  v33 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  LODWORD(v61) = sub_219BF4774();

  v34 = v31[28];
  v35 = __swift_project_boxed_opaque_existential_1(v31 + 25, v34);
  v36 = sub_219BF0A64();
  v38 = v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v58 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v35, v34);
  v42 = v73;
  sub_218A75968(v36, v38, v40, v34, v73);
  __swift_project_boxed_opaque_existential_1(v31 + 15, v31[18]);
  v43 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v44 = sub_219BF3424();
  v60 = v44;

  sub_219BF0AA4();
  swift_getObjectType();
  v45 = v77;
  sub_2194CA7FC(v44, v77);
  swift_unknownObjectRelease();
  v59 = v31[4];
  v47 = v65;
  v46 = v66;
  (*(v65 + 16))(v79, v45, v66);
  sub_218E83700(v42, v81, sub_218B59134);
  sub_218E83700(v78, v76, sub_218B58D58);
  v48 = v80;
  (*(v80 + 16))(v84, v32, v82);
  v49 = v71;
  (*(v71 + 16))(v83, v74, v75);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = v50 + v69;
  v52 = (*(v68 + 80) + v50 + v69 + 1) & ~*(v68 + 80);
  v53 = (v67 + *(v64 + 80) + v52) & ~*(v64 + 80);
  v54 = (v63 + *(v48 + 80) + v53) & ~*(v48 + 80);
  v55 = (v70 + *(v49 + 80) + v54) & ~*(v49 + 80);
  v56 = swift_allocObject();
  (*(v47 + 32))(v56 + v50, v79, v46);
  *(v56 + v51) = v61 & 1;
  sub_218E830C4(v81, v56 + v52, sub_218B59134);
  sub_218E830C4(v76, v56 + v53, sub_218B58D58);
  (*(v80 + 32))(v56 + v54, v84, v82);
  (*(v49 + 32))(v56 + v55, v83, v75);
  sub_219BDD154();

  (*(v47 + 8))(v77, v46);
  sub_218E728E8(v73, sub_218B59134);
  return sub_218E728E8(v78, sub_218B58D58);
}

uint64_t sub_218E6C728(uint64_t a1, void *a2)
{
  v3 = v2;
  v64 = a2;
  v62 = a1;
  sub_218E82FA4();
  v5 = v4;
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v6;
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v50 - v10;
  v11 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v51 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v52 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v53 = v25;
  v54 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - v26;
  v50 = *(v2 + 96);
  sub_219BE7594();
  v61 = v5;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v16 + 8))(v18, v15);
  sub_219310654();
  sub_218E728E8(v13, type metadata accessor for MagazineFeedModel);
  v63 = v27;
  sub_219838374(v22, v27);

  (*(v20 + 8))(v22, v51);
  sub_218718690(v2 + 200, v66);
  v28 = v67;
  v29 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v30 = [v64 dismissingIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_219BF5414();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  MEMORY[0x28223BE20](v30);
  v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v29, v28);
  v38 = v65;
  sub_218A75968(v32, v34, v36, v28, v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v51 = *(v3 + 32);
  v40 = v59;
  v39 = v60;
  v41 = v61;
  (*(v60 + 16))(v59, v62, v61);
  v42 = v58;
  sub_218E83700(v38, v58, sub_218B59134);
  v43 = v54;
  sub_218E83700(v63, v54, sub_218B58D58);
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v55 + 80) + v45 + 8) & ~*(v55 + 80);
  v47 = (v56 + *(v52 + 80) + v46) & ~*(v52 + 80);
  v48 = swift_allocObject();
  (*(v39 + 32))(v48 + v44, v40, v41);
  *(v48 + v45) = v64;
  sub_218E830C4(v42, v48 + v46, sub_218B59134);
  sub_218E830C4(v43, v48 + v47, sub_218B58D58);
  swift_unknownObjectRetain();
  sub_219BDD154();

  sub_218E728E8(v65, sub_218B59134);
  return sub_218E728E8(v63, sub_218B58D58);
}

uint64_t sub_218E6CDD0(uint64_t a1)
{
  v2 = v1;
  sub_218E82DDC();
  v5 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = v6;
  v50 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE16E4();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v54 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v46 - v10;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v58 = *(v14 - 1);
  v59 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v57 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE16D4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v46[1] = v27;
  v47 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v60 = v46 - v28;
  v48 = v2;
  sub_219BE8EF4();
  sub_219BE8F04();
  v52 = v5;
  v29 = a1;
  sub_219BE8F24();
  sub_2198388B8(v20, v16, v13, v23);
  sub_218E728E8(v13, sub_218B58900);
  (*(v58 + 8))(v16, v59);
  (*(v18 + 8))(v20, v57);
  v30 = v25;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_218E728E8(v23, sub_218B58D58);
  }

  v59 = *(v25 + 32);
  v59(v60, v23, v24);
  v32 = v53;
  sub_219BE16B4();
  v34 = v54;
  v33 = v55;
  v35 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277D2F818], v56);
  sub_218E7283C(&unk_280EE7F80, 255, MEMORY[0x277D2F870]);
  v36 = sub_219BF53A4();
  v37 = *(v33 + 8);
  v37(v34, v35);
  v37(v32, v35);
  if ((v36 & 1) == 0)
  {
    v58 = *(v48 + 32);
    v38 = v50;
    v39 = v51;
    v40 = v29;
    v41 = v52;
    (*(v51 + 16))(v50, v40, v52);
    v42 = v47;
    (*(v30 + 16))(v47, v60, v24);
    v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v44 = (v49 + *(v30 + 80) + v43) & ~*(v30 + 80);
    v45 = swift_allocObject();
    (*(v39 + 32))(v45 + v43, v38, v41);
    v59((v45 + v44), v42, v24);
    sub_219BDD154();
  }

  return (*(v30 + 8))(v60, v24);
}

char *sub_218E6D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v82 = a1;
  v4 = sub_219BDBD34();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BDFD04();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v72);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1444();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v14);
  v75 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E82DDC();
  v76 = v24;
  v79 = a2;
  sub_219BE8EF4();
  sub_219BE6934();
  (*(v21 + 8))(v23, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v26 = v75;
      sub_218E830C4(v18, v75, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED874();
      v27 = sub_219BF1844();
      (*(v71 + 8))(v13, v11);
      if (v27)
      {
        v28 = [v27 identifier];
        sub_219BF5414();

        v29 = v67;
        sub_219BE1424();
        sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v30 = sub_219BDCD44();
        v31 = *(v30 - 8);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v33 = swift_allocObject();
        v34 = &unk_219C09000;
        *(v33 + 16) = xmmword_219C09BA0;
        v35 = MEMORY[0x277CEAD18];
        (*(v31 + 104))(v33 + v32, *MEMORY[0x277CEAD18], v30);
        sub_218E7283C(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
        v36 = v29;
        v37 = v69;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v68 + 8))(v36, v37);
        sub_218E728E8(v75, type metadata accessor for TopicMagazineFeedGroup);
LABEL_21:
        sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v59 = sub_219BDCD44();
        v60 = *(v59 - 8);
        v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = v34[186];
        (*(v60 + 104))(v62 + v61, *v35, v59);
        sub_219BE16D4();
        sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
        sub_219BDCCC4();

        sub_219BE0254();
        v63 = v78;
        sub_219BE8F14();
        sub_218E7283C(&qword_280EE8470, 255, MEMORY[0x277D2E3F8]);
        sub_219BDCC64();
        v64 = v81;
        v65 = *(v80 + 8);
        v65(v63, v81);
        sub_219BE8EE4();
        sub_219BDCC74();
        return (v65)(v63, v64);
      }

      v52 = type metadata accessor for TopicMagazineFeedGroup;
      v53 = v26;
    }

    else
    {
      v52 = type metadata accessor for MagazineFeedSectionDescriptor;
      v53 = v18;
    }

    sub_218E728E8(v53, v52);
    v35 = MEMORY[0x277CEAD18];
    v34 = &unk_219C09000;
    goto LABEL_21;
  }

  sub_218E830C4(v18, v8, type metadata accessor for NewspaperMagazineFeedGroup);
  v38 = *&v8[*(v72 + 24)];
  v66 = v8;
  if (v38 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277CEAD18];
  v34 = &unk_219C09000;
  v40 = v73;
  v41 = v74;
  if (!v39)
  {
LABEL_18:
    sub_219BDFCF4();
    sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v34[186];
    (*(v55 + 104))(v57 + v56, *v35, v54);
    sub_218E7283C(&unk_280EE8580, 255, MEMORY[0x277D2E068]);
    v58 = v70;
    sub_219BDCCC4();

    (*(v41 + 8))(v40, v58);
    sub_218E728E8(v66, type metadata accessor for NewspaperMagazineFeedGroup);
    goto LABEL_21;
  }

  v83 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = v83;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v43, v38);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v45 = [swift_unknownObjectRetain() identifier];
      v46 = sub_219BF5414();
      v48 = v47;
      swift_unknownObjectRelease_n();

      v83 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_21870B65C((v49 > 1), v50 + 1, 1);
        v44 = v83;
      }

      ++v43;
      *(v44 + 16) = v50 + 1;
      v51 = v44 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v48;
    }

    while (v39 != v43);
    v35 = MEMORY[0x277CEAD18];
    v34 = &unk_219C09000;
    v40 = v73;
    v41 = v74;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E6DFC0()
{
  v0 = sub_219BF0AC4();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v50 = v3;
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1094();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C();
  v12 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDD0A4();
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v34 = sub_219BF1584();
      return (*(*(v34 - 8) + 8))(v20, v34);
    case 2u:
      v24 = 0x656E696C64616568;
      v25 = 0xE800000000000000;
      goto LABEL_15;
    case 3u:
    case 6u:
    case 0xAu:
      goto LABEL_16;
    case 4u:
      v24 = 0x6575737369;
      v25 = 0xE500000000000000;
      goto LABEL_15;
    case 5u:
      v36 = v45;
      (*(v45 + 32))(v14, v20, v12);
      sub_219BF07D4();
      sub_219BF1074();
      (*(v44 + 8))(v10, v8);
      v37 = sub_219BF0F34();
      v38 = (*(*(v37 - 8) + 48))(v7, 1, v37);
      sub_218E728E8(v7, sub_218A127E0);
      if (v38 != 1)
      {
        v39 = v51;
        *v17 = 0x656E696C64616568;
        v17[1] = 0xE800000000000000;
        v40 = v52;
        (*(v39 + 104))(v17, *MEMORY[0x277CEAE48], v52);
        sub_219BDD204();
        (*(v39 + 8))(v17, v40);
      }

      return (*(v36 + 8))(v14, v12);
    case 7u:
      v24 = 0x74496D6F74737563;
      v25 = 0xEA00000000006D65;
      goto LABEL_15;
    case 8u:
      v26 = v46 + 32;
      v28 = v49;
      v27 = v50;
      (*(v46 + 32))(v49, v20, v50);
      sub_219BF07D4();
      v29 = sub_219BF0A34();
      (*(v47 + 8))(v2, v48);
      v30 = (v51 + 104);
      v31 = (v51 + 8);
      if (v29)
      {
        v32 = 0x6554656C7A7A7570;
        v33 = 0xEC00000072657361;
      }

      else
      {
        v32 = 0x656C7A7A7570;
        v33 = 0xE600000000000000;
      }

      *v17 = v32;
      v17[1] = v33;
      v43 = v52;
      (*v30)(v17, *MEMORY[0x277CEAE48], v52);
      sub_219BDD204();
      (*v31)(v17, v43);
      return (*(v26 - 24))(v28, v27);
    case 9u:
      v24 = 0x7954656C7A7A7570;
      v25 = 0xEA00000000006570;
      goto LABEL_15;
    case 0xBu:
      v24 = 6775156;
      v25 = 0xE300000000000000;
      goto LABEL_15;
    case 0xCu:
      v24 = 0x657069636572;
      v25 = 0xE600000000000000;
LABEL_15:
      *v17 = v24;
      v17[1] = v25;
      v42 = v51;
      v41 = v52;
      (*(v51 + 104))(v17, *MEMORY[0x277CEAE48], v52);
      sub_219BDD204();
      (*(v42 + 8))(v17, v41);
LABEL_16:
      v22 = type metadata accessor for MagazineFeedModel;
      v23 = v20;
      break;
    default:

      sub_2186F6F00();
      v22 = type metadata accessor for MagazineFeedGapLocation;
      v23 = &v20[*(v21 + 48)];
      break;
  }

  return sub_218E728E8(v23, v22);
}

unint64_t sub_218E6E728(uint64_t a1)
{
  v83 = a1;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E72884(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v75 - v5;
  v6 = sub_219BE16E4();
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF584();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BE16D4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MagazineFeedSectionDescriptor();
  v11 = MEMORY[0x28223BE20](v100);
  v78 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v75 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v75 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  sub_218951DB0();
  v20 = v19;
  v96 = *(v19 - 1);
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v101 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v99 = &v75 - v25;
  sub_218D75F00();
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v92 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v94 = &v75 - v33;
  sub_218951F54();
  v35 = v34;
  v36 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v75 - v40;
  v85 = v1;
  v102 = *(v1 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v91 = v36;
  v42 = *(v36 + 16);
  v93 = v41;
  v42(v39, v41, v35);
  sub_218E7283C(&qword_280EE3620, 255, sub_218951F54);
  sub_219BF56A4();
  v43 = *(v27 + 44);
  sub_218E7283C(&unk_280EE3610, 255, sub_218951F54);
  sub_219BF5E84();
  if (*&v29[v43] == v102)
  {
LABEL_5:
    sub_218E728E8(v29, sub_218D75F00);
    v49 = 1;
    v50 = v94;
  }

  else
  {
    v97 = (v96 + 16);
    v98 = (v96 + 32);
    v44 = (v96 + 8);
    while (1)
    {
      v45 = sub_219BF5EC4();
      v46 = v99;
      (*v97)(v99);
      v45(&v102, 0);
      sub_219BF5E94();
      v47 = v35;
      v48 = *v98;
      (*v98)(v101, v46, v20);
      sub_219BE6934();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        break;
      }

      sub_218E728E8(v18, type metadata accessor for MagazineFeedSectionDescriptor);
      (*v44)(v101, v20);
      sub_219BF5E84();
      v35 = v47;
      if (*&v29[v43] == v102)
      {
        goto LABEL_5;
      }
    }

    sub_218E728E8(v18, type metadata accessor for MyMagazinesMagazineFeedGroup);
    sub_218E728E8(v29, sub_218D75F00);
    v50 = v94;
    v48(v94, v101, v20);
    v49 = 0;
    v35 = v47;
  }

  v51 = v96;
  (*(v96 + 56))(v50, v49, 1, v20);
  v52 = v92;
  sub_218E83700(v50, v92, sub_218D51CC0);
  if ((*(v51 + 48))(v52, 1, v20) == 1)
  {
    sub_218E728E8(v50, sub_218D51CC0);
    (*(v91 + 8))(v93, v35);
    return sub_218E728E8(v52, sub_218D51CC0);
  }

  (*(v51 + 32))(v95, v52, v20);
  result = sub_218BB7DB4();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_22:

    (*(v51 + 8))(v95, v20);
    sub_218E728E8(v50, sub_218D51CC0);
    return (*(v91 + 8))(v93, v35);
  }

  v73 = result;
  v74 = sub_219BF7214();
  result = v73;
  if (!v74)
  {
    goto LABEL_22;
  }

LABEL_11:
  v101 = v20;
  v76 = v35;
  if ((result & 0xC000000000000001) != 0)
  {
    v54 = MEMORY[0x21CECE0F0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v54 = *(result + 32);
  }

  v55 = *(v85 + 96);
  v56 = v55[5];
  v99 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v56);
  sub_219BE6944();
  type metadata accessor for MagazineFeedModel(0);
  sub_218E7283C(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_218E7283C(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
  v57 = sub_219BF00F4();

  v58 = sub_219BE5B64();
  swift_getObjectType();
  v102 = v58;
  v59 = sub_219BEB4B4();

  v100 = v54;
  v60 = sub_219BE5B64();
  swift_getObjectType();
  v102 = v60;
  sub_219BEB4D4();

  (*(v86 + 104))(v89, *MEMORY[0x277D2DB58], v87);
  v61 = v84;
  sub_219BE6934();
  sub_2193B127C(v90);
  sub_218E728E8(v61, type metadata accessor for MagazineFeedSectionDescriptor);
  result = sub_219BE6944();
  if (v59 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v57 < 0xFFFFFFFF80000000 || v59 < 0xFFFFFFFF80000000)
  {
    goto LABEL_26;
  }

  if (v57 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v98 = v62;
  v99 = result;
  v63 = v77;
  sub_219BE6934();
  v64 = v88;
  sub_2193AE788(v88);
  sub_218E728E8(v63, type metadata accessor for MagazineFeedSectionDescriptor);
  v65 = sub_219BE0674();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = v78;
  sub_219BE6934();
  v67 = sub_2193B1600();
  sub_218E728E8(v66, type metadata accessor for MagazineFeedSectionDescriptor);
  if (v67)
  {
    v68 = [v67 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();

    v51 = v96;
  }

  v69 = v94;
  v70 = sub_219BDF474();
  (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
  v71 = v79;
  sub_219BE15E4();
  sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  v72 = v81;
  sub_219BDD1F4();

  (*(v80 + 8))(v71, v72);
  (*(v51 + 8))(v95, v101);
  sub_218E728E8(v69, sub_218D51CC0);
  return (*(v91 + 8))(v93, v76);
}

uint64_t sub_218E6F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v76 = a2;
  v59 = sub_219BF0B74();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BF04A4();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BF0AC4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BEDAE4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BF1094();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF07A4();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0F34();
  v74 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0614();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  v75 = a1;
  sub_219BE7564();
  sub_219BE5FD4();
  (*(v23 + 8))(v25, v22);
  result = (*(v18 + 88))(v20, v17);
  if (result == *MEMORY[0x277D32DB8] || result == *MEMORY[0x277D32D10] || result == *MEMORY[0x277D32E00])
  {
    return (*(v18 + 8))(v20, v17);
  }

  if (result == *MEMORY[0x277D32E10])
  {
    (*(v18 + 96))(v20, v17);
    v27 = v74;
    (*(v74 + 32))(v16, v20, v14);
    v28 = sub_219BF0F14();
    sub_218E7013C(v75, v28);
    swift_unknownObjectRelease();
    return (*(v27 + 8))(v16, v14);
  }

  if (result == *MEMORY[0x277D32E18])
  {
    (*(v18 + 96))(v20, v17);
    v29 = v69;
    v30 = v71;
    (*(v69 + 32))(v11, v20, v71);
    v31 = v70;
    sub_219BF1044();
    sub_218E709E4(v75, v31, v76, v77);
    (*(v72 + 8))(v31, v73);
    return (*(v29 + 8))(v11, v30);
  }

  if (result != *MEMORY[0x277D32DD8])
  {
    if (result != *MEMORY[0x277D32CF8])
    {
      if (result == *MEMORY[0x277D32DC0])
      {
        (*(v18 + 96))(v20, v17);
        v45 = v64;
        v46 = v63;
        v47 = v65;
        (*(v64 + 32))(v63, v20, v65);
        v48 = sub_219BF0404();
        sub_218E71D5C(v75, v48);
        swift_unknownObjectRelease();
        return (*(v45 + 8))(v46, v47);
      }

      if (result == *MEMORY[0x277D32CF0])
      {
        (*(v18 + 96))(v20, v17);
        v49 = v61;
        v50 = v60;
        v51 = v62;
        (*(v61 + 32))(v60, v20, v62);
        sub_218E70E4C(v75, v50);
        return (*(v49 + 8))(v50, v51);
      }

      if (result != *MEMORY[0x277D32E08] && result != *MEMORY[0x277D32DB0] && result != *MEMORY[0x277D32DE0])
      {
        if (result == *MEMORY[0x277D32DF0])
        {
          (*(v18 + 96))(v20, v17);
          v45 = v58;
          v46 = v57;
          v47 = v59;
          (*(v58 + 32))(v57, v20, v59);
          v52 = sub_219BF0B44();
          sub_218E72344(v75, v52, v76);

          return (*(v45 + 8))(v46, v47);
        }

        if (result != *MEMORY[0x277D32D38])
        {
          if (result == *MEMORY[0x277D32DE8])
          {
            (*(v18 + 96))(v20, v17);
            v49 = v55;
            v50 = v54;
            v51 = v56;
            (*(v55 + 32))(v54, v20, v56);
            sub_218E7149C(v75, v50);
            return (*(v49 + 8))(v50, v51);
          }

          if (result != *MEMORY[0x277D32D18] && result != *MEMORY[0x277D32DA8] && result != *MEMORY[0x277D32DF8] && result == *MEMORY[0x277D32DD0])
          {
            return result;
          }
        }
      }
    }

    return (*(v18 + 8))(v20, v17);
  }

  (*(v18 + 96))(v20, v17);
  v33 = v67;
  v32 = v68;
  v34 = v66;
  (*(v67 + 32))(v66, v20, v68);
  __swift_project_boxed_opaque_existential_1((v78 + 40), *(v78 + 64));
  v35 = sub_219BF06B4();
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C146A0;
  *(v36 + 32) = v35;
  v37 = v35;
  v38 = sub_21945CCB8(v36);

  if (*(v38 + 16))
  {
    *v80 = *(v38 + 32);
    *&v80[9] = *(v38 + 41);
    sub_218950CAC(v80, v79);

    v39 = 256;
    if (!v80[9])
    {
      v39 = 0;
    }

    v40 = v39 | v80[8];
    v41 = 0x10000;
    if (!v80[10])
    {
      v41 = 0;
    }

    v42 = 0x1000000;
    if (!v80[11])
    {
      v42 = 0;
    }

    v43 = v40 | v41 | v42;
    v44 = 0x100000000;
    if (!v80[12])
    {
      v44 = 0;
    }

    sub_218E70564(v75, *v80, v43 | v44, *&v80[16], v80[24], v76);
    sub_218950D08(v80);
    return (*(v33 + 8))(v34, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E7013C(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = a2;
  v37 = a1;
  sub_218B58D38(0);
  v35 = v5;
  v6 = *(v5 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218B58D58(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v31 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-v11];
  sub_218951F54();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v15;
  v40 = *(v2 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v29 = v12;
  sub_219838374(v15, v12);
  __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
  v16 = [a2 identifier];
  sub_219BF5414();

  v27 = sub_219BF4774();

  v30 = *(v2 + 32);
  v17 = v32;
  v18 = v35;
  (*(v6 + 16))(v32, v37, v35);
  v19 = v31;
  sub_218E83700(v12, v31, sub_218B58D58);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v34 + 80) + v21 + 9) & ~*(v34 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  (*(v6 + 32))(v23 + v20, v17, v18);
  v24 = v23 + v21;
  *v24 = v3;
  *(v24 + 8) = v27 & 1;
  sub_218E830C4(v19, v23 + v22, sub_218B58D58);
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_218E728E8(v29, sub_218B58D58);
  return (*(v38 + 8))(v33, v39);
}

uint64_t sub_218E70564(uint64_t a1, void *a2, unint64_t a3, void *a4, int a5, uint64_t a6)
{
  v7 = v6;
  v41 = a6;
  v52 = a5;
  v51 = a4;
  v47 = a1;
  v48 = a3;
  v38 = a2;
  sub_218B58D38(0);
  v45 = v9;
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_218951F54();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v18;
  v54 = *(v6 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v40 = v15;
  sub_219838374(v18, v15);
  __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
  v19 = [a2 identifier];
  sub_219BF5414();

  v39 = sub_219BF4774();

  v41 = *(v6 + 32);
  v20 = v53;
  v21 = v43;
  v22 = v45;
  (*(v53 + 16))(v43, v47, v45);
  v23 = v15;
  v24 = v42;
  sub_218E83700(v23, v42, sub_218B58D58);
  v25 = (*(v20 + 80) + 41) & ~*(v20 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v44 + 80) + v26 + 9) & ~*(v44 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v38;
  v30 = v48;
  *(v28 + 24) = v48 & 1;
  v31 = vdupq_n_s64(v30);
  *v31.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v31, xmmword_219C40920), vshlq_u64(v31, xmmword_219C40910))), 0x1000100010001);
  *(v28 + 25) = vuzp1_s8(*v31.i8, *v31.i8).u32[0];
  v32 = v51;
  *(v28 + 32) = v51;
  *(v28 + 40) = v52;
  (*(v53 + 32))(v28 + v25, v21, v22);
  v33 = v28 + v26;
  *v33 = v7;
  *(v33 + 8) = v39 & 1;
  sub_218E830C4(v24, v28 + v27, sub_218B58D58);
  v34 = v29;
  v35 = v32;

  sub_219BDD154();

  sub_218E728E8(v40, sub_218B58D58);
  return (*(v49 + 8))(v46, v50);
}

uint64_t sub_218E709E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v40 = a2;
  v42 = a1;
  sub_218B58D38(0);
  v39 = v5;
  v36 = *(v5 - 8);
  v43 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDB954();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  sub_218B58D58(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  sub_218951F54();
  v44 = v14;
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v16;
  v45 = *(v4 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v31 = v13;
  sub_219838374(v16, v13);
  v38 = *(v4 + 32);
  v17 = v7;
  v18 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v33;
  (*(v7 + 16))(v18, v40, v33);
  v20 = v35;
  v21 = v36;
  v22 = v39;
  (*(v36 + 16))(v35, v42, v39);
  sub_218E83700(v13, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), sub_218B58D58);
  v23 = v17;
  v24 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v25 = v21;
  v26 = (v8 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v27 = (v43 + *(v34 + 80) + v26) & ~*(v34 + 80);
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + v24, v18, v19);
  (*(v25 + 32))(v28 + v26, v20, v22);
  sub_218E830C4(v30, v28 + v27, sub_218B58D58);
  sub_219BDD154();

  sub_218E728E8(v31, sub_218B58D58);
  return (*(v41 + 8))(v32, v44);
}

uint64_t sub_218E70E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  sub_218B58D38(0);
  v58 = *(v5 - 8);
  v59 = v5;
  v63 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEDAE4();
  v52 = *(v7 - 8);
  v53 = v7;
  v57 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v9;
  sub_218B59134(0);
  v56 = *(v10 - 8);
  v54 = *(v56 + 64);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v66 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v45 - v13;
  sub_218B58D58(0);
  v50 = *(v14 - 8);
  v49 = *(v50 + 64);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v65 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  sub_218951F54();
  v61 = *(v19 - 8);
  v62 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v21;
  v67 = v2[2];
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v47 = v18;
  sub_219838374(v21, v18);
  v22 = v2[28];
  v23 = __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v24 = a2;
  v25 = sub_219BEDAB4();
  v27 = v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v23, v22);
  v31 = v64;
  sub_218A75968(v25, v27, v29, v22, v64);
  v48 = v3[4];
  v32 = v52;
  v33 = v9;
  v34 = v53;
  (*(v52 + 16))(v33, v24, v53);
  v35 = v58;
  v36 = v59;
  v37 = v55;
  (*(v58 + 16))(v55, v60, v59);
  sub_218E83700(v18, v65, sub_218B58D58);
  sub_218E83700(v31, v66, sub_218B59134);
  v38 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v39 = v35;
  v40 = (v57 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v41 = (v63 + *(v50 + 80) + v40) & ~*(v50 + 80);
  v42 = (v49 + *(v56 + 80) + v41) & ~*(v56 + 80);
  v43 = swift_allocObject();
  (*(v32 + 32))(v43 + v38, v46, v34);
  (*(v39 + 32))(v43 + v40, v37, v36);
  sub_218E830C4(v65, v43 + v41, sub_218B58D58);
  sub_218E830C4(v66, v43 + v42, sub_218B59134);
  sub_219BDD154();

  sub_218E728E8(v64, sub_218B59134);
  sub_218E728E8(v47, sub_218B58D58);
  return (*(v61 + 8))(v51, v62);
}

uint64_t sub_218E7149C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  sub_218B58D38(0);
  v75 = v5;
  v61 = *(v5 - 8);
  v64 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BF0AC4();
  v58 = *(v69 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v74 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDEF94();
  v67 = *(v73 - 8);
  v57 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v73);
  v72 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v50 - v10;
  sub_218B59134(0);
  v55 = *(v11 - 8);
  v54 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v71 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v50 - v14;
  sub_218B58D58(0);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v70 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  v68 = v50 - v18;
  sub_218951F54();
  v62 = v20;
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v22;
  v77 = v2[2];
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  sub_219838374(v22, v19);
  __swift_project_boxed_opaque_existential_1(v3 + 20, v3[23]);
  v23 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v52 = sub_219BF4774();

  v24 = v2[28];
  v25 = __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  v26 = sub_219BF0A64();
  v28 = v27;
  MEMORY[0x28223BE20](v26);
  v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v25, v24);
  v32 = v65;
  sub_218A75968(v26, v28, v30, v24, v65);
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  v33 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v34 = sub_219BF3424();
  v51 = v34;

  v35 = a2;
  sub_219BF0AA4();
  swift_getObjectType();
  v36 = v66;
  sub_2194CA7FC(v34, v66);
  swift_unknownObjectRelease();
  v50[1] = v3[4];
  v37 = v67;
  (*(v67 + 16))(v72, v36, v73);
  v38 = v58;
  (*(v58 + 16))(v74, v35, v69);
  sub_218E83700(v32, v71, sub_218B59134);
  sub_218E83700(v68, v70, sub_218B58D58);
  v39 = v61;
  (*(v61 + 16))(v76, v63, v75);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = v40 + v57;
  v42 = (*(v38 + 80) + v40 + v57 + 1) & ~*(v38 + 80);
  v43 = (v59 + *(v55 + 80) + v42) & ~*(v55 + 80);
  v44 = (v54 + *(v53 + 80) + v43) & ~*(v53 + 80);
  v45 = (v16 + *(v39 + 80) + v44) & ~*(v39 + 80);
  v46 = swift_allocObject();
  v47 = v46 + v40;
  v48 = v73;
  (*(v37 + 32))(v47, v72, v73);
  *(v46 + v41) = v52 & 1;
  (*(v38 + 32))(v46 + v42, v74, v69);
  sub_218E830C4(v71, v46 + v43, sub_218B59134);
  sub_218E830C4(v70, v46 + v44, sub_218B58D58);
  (*(v39 + 32))(v46 + v45, v76, v75);
  sub_219BDD154();

  (*(v67 + 8))(v66, v48);
  sub_218E728E8(v65, sub_218B59134);
  sub_218E728E8(v68, sub_218B58D58);
  return (*(v60 + 8))(v56, v62);
}

uint64_t sub_218E71D5C(uint64_t a1, void *a2)
{
  v51 = a1;
  sub_218B58D38(0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = v5;
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  sub_218B58D58(0);
  v45 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  sub_218951F54();
  v55 = v16;
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[0] = *(v2 + 16);
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  v59 = v15;
  v50 = v18;
  sub_219838374(v18, v15);
  v19 = v2;
  sub_218718690(v2 + 200, v60);
  v20 = v61;
  v21 = __swift_project_boxed_opaque_existential_1(v60, v61);
  v58 = a2;
  v22 = [a2 dismissingIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_219BF5414();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  MEMORY[0x28223BE20](v22);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v21, v20);
  v43 = v10;
  sub_218A75968(v24, v26, v28, v20, v10);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v44 = *(v19 + 32);
  v31 = v56;
  v30 = v57;
  v32 = v49;
  (*(v56 + 16))(v49, v51, v57);
  v33 = v10;
  v34 = v54;
  sub_218E83700(v33, v54, sub_218B59134);
  v35 = v48;
  sub_218E83700(v59, v48, sub_218B58D58);
  v36 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v47 + 80) + v37 + 8) & ~*(v47 + 80);
  v39 = (v7 + *(v45 + 80) + v38) & ~*(v45 + 80);
  v40 = swift_allocObject();
  (*(v31 + 32))(v40 + v36, v32, v30);
  *(v40 + v37) = v58;
  sub_218E830C4(v34, v40 + v38, sub_218B59134);
  sub_218E830C4(v35, v40 + v39, sub_218B58D58);
  swift_unknownObjectRetain();
  sub_219BDD154();

  sub_218E728E8(v43, sub_218B59134);
  sub_218E728E8(v59, sub_218B58D58);
  return (*(v53 + 8))(v50, v55);
}

uint64_t sub_218E72344(uint64_t a1, void *a2, uint64_t a3)
{
  v25[0] = a2;
  v25[1] = a3;
  v31 = a1;
  sub_218B58D38(0);
  v30 = v5;
  v6 = *(v5 - 8);
  v29 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v9 - 8);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v28 = v11;
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v27 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3[2];
  sub_2187EE318();
  sub_218E7283C(&unk_280EE5410, 255, sub_2187EE318);
  sub_219BE7B94();
  sub_219BEB244();
  __swift_project_boxed_opaque_existential_1(v3 + 20, v3[23]);
  v13 = [a2 identifier];
  sub_219BF5414();

  v14 = sub_219BF4774();

  v15 = v8;
  v16 = v8;
  v17 = v30;
  (*(v6 + 16))(v16, v31, v30);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v29 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v15, v17);
  v21 = v25[0];
  *(v20 + v19) = v25[0];
  v22 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v3;
  *(v22 + 8) = v14 & 1;
  v23 = v21;

  sub_219BDD154();

  sub_218E728E8(v26, sub_218D51CC0);
  return (*(v32 + 8))(v27, v28);
}

uint64_t sub_218E726B8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  return v0;
}

uint64_t sub_218E72730()
{
  sub_218E726B8();

  return swift_deallocClassInstance();
}

uint64_t sub_218E727E4(uint64_t a1, uint64_t a2)
{
  result = sub_218E7283C(&qword_280ED1178, a2, type metadata accessor for MagazineFeedTracker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218E7283C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218E72884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E728E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E72948(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v185 = a7;
  v212 = a6;
  v211 = a5;
  v224 = a4;
  v229 = a3;
  v241 = a1;
  v191 = sub_219BDBD34();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v9 - 8);
  v186 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_219BDF754();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v171 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v12 - 8);
  v220 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_219BDF4A4();
  v184 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v170 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BDBD64();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BDFFB4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BE1714();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE0444();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E83280(0);
  MEMORY[0x28223BE20](v19 - 8);
  v174 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v218 = v21;
  v223 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v214 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v217 = v23;
  v216 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v213 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v25 - 8);
  v215 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v219 = v27;
  v222 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v192 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_219BE09E4();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BDF104();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v31 - 8);
  v208 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_219BE0724();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v173 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BE1774();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v175 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v35 - 8);
  v205 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_219BE16D4();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v172 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BDF8A4();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BEFBD4();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_219BDF1A4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_219BDFCE4();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_219BE0D44();
  v228 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BDF0E4();
  v225 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v240 = v46;
  v47 = sub_219BDCD44();
  v48 = *(v47 - 8);
  v49 = *(v48 + 80);
  v50 = (v49 + 32) & ~v49;
  v51 = v50 + *(v48 + 72);
  v52 = swift_allocObject();
  v242 = xmmword_219C09BA0;
  *(v52 + 16) = xmmword_219C09BA0;
  v53 = *MEMORY[0x277CEAD18];
  v232 = *(v48 + 104);
  v232(v52 + v50, v53, v47);
  v237 = "Unknown enum case.";
  sub_218E7283C(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v225 + 8))(v45, v43);
  v54 = v48 + 104;
  v55 = v226;
  v56 = v49;
  v57 = v54;
  sub_219BF6834();
  v235 = v51;
  v58 = swift_allocObject();
  *(v58 + 16) = v242;
  v236 = v50;
  v59 = v232;
  v238 = v53;
  v239 = v47;
  v231 = v57;
  v232(v58 + v50, v53, v47);
  v60 = sub_218E7283C(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
  v61 = v227;
  sub_219BDCCC4();

  v62 = v228[1];
  ++v228;
  v62(v55, v61);
  sub_218E82FA4();
  v64 = v63;
  v65 = sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v166 = v65;
  v225 = v64;
  v67 = v193;
  sub_219BDFCD4();
  v68 = swift_allocObject();
  v183 = v62;
  *(v68 + 16) = v242;
  v234 = v56;
  v182 = v60;
  v69 = v239;
  v59(v68 + v236, v238, v239);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v70 = v195;
  sub_219BDCCC4();

  (*(v194 + 8))(v67, v70);
  v71 = v197;
  v72 = v196;
  v73 = v198;
  (*(v197 + 104))(v196, *MEMORY[0x277D32930], v198);
  v74 = v199;
  sub_219BE02C4();
  (*(v71 + 8))(v72, v73);
  v75 = v69;
  v76 = swift_allocObject();
  *(v76 + 16) = v242;
  v77 = v238;
  v59(v76 + v236, v238, v75);
  sub_218E7283C(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v78 = v201;
  sub_219BDCCC4();

  (*(v200 + 8))(v74, v78);
  v79 = v226;
  sub_219BF6834();
  v80 = swift_allocObject();
  *(v80 + 16) = v242;
  v81 = v236;
  v82 = v77;
  v83 = v232;
  v232(v80 + v236, v82, v239);
  v84 = v227;
  sub_219BDCCC4();

  v183(v79, v84);
  v85 = v202;
  sub_219BDF894();
  v86 = swift_allocObject();
  *(v86 + 16) = v242;
  v83(v86 + v81, v238, v239);
  sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v87 = v204;
  sub_219BDCCC4();

  v88 = v85;
  v89 = v83;
  (*(v203 + 8))(v88, v87);
  v90 = v205;
  sub_218E83700(v212, v205, sub_218B58D58);
  v91 = v206;
  v92 = v207;
  if ((*(v206 + 48))(v90, 1, v207) == 1)
  {
    sub_218E728E8(v90, sub_218B58D58);
  }

  else
  {
    v95 = v172;
    (*(v91 + 32))(v172, v90, v92);
    v96 = swift_allocObject();
    *(v96 + 16) = v242;
    v89(v96 + v81, v238, v239);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v91 + 8))(v95, v92);
  }

  v93 = v210;
  v94 = v209;
  v97 = v233;
  v98 = [v233 scoreProfile];
  if (v98)
  {
    v99 = v98;
    if ([v98 hasShadowScores])
    {
      [v99 shadowTabiScore];
      [v99 shadowAgedPersonalizationScore];
      sub_219BE1764();
      v100 = swift_allocObject();
      *(v100 + 16) = v242;
      v232(v100 + v236, v238, v239);
      sub_218E7283C(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0]);
      v101 = v165;
      sub_219BDCCC4();

      (*(v164 + 8))(v175, v101);
    }

    else
    {
    }
  }

  v102 = v208;
  sub_219BF6824();
  if ((*(v94 + 48))(v102, 1, v93) == 1)
  {
    sub_218E728E8(v102, sub_218B58FEC);
  }

  else
  {
    v103 = v173;
    (*(v94 + 32))(v173, v102, v93);
    v104 = swift_allocObject();
    *(v104 + 16) = v242;
    v232(v104 + v236, v238, v239);
    sub_218E7283C(&unk_27CC0DC50, 255, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v94 + 8))(v103, v93);
  }

  v105 = [v97 sourceChannel];
  if (v105)
  {
    v106 = v176;
    v228 = v105;
    sub_219BE01F4();
    v107 = swift_allocObject();
    *(v107 + 16) = v242;
    v108 = v236;
    v109 = v232;
    v232(v107 + v236, v238, v239);
    sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v110 = v178;
    sub_219BDCCC4();

    (*(v177 + 8))(v106, v110);
    v111 = v179;
    sub_219BE01E4();
    v112 = swift_allocObject();
    *(v112 + 16) = v242;
    v109(v112 + v108, v238, v239);
    sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v113 = v181;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v180 + 8))(v111, v113);
  }

  v114 = v213;
  sub_219BE7594();
  v115 = v214;
  sub_219BE7564();
  v116 = v218;
  sub_219BE5F84();
  (*(v223 + 8))(v115, v116);
  v117 = v215;
  v118 = v217;
  sub_219BEB244();

  (*(v216 + 8))(v114, v118);
  v119 = v222;
  v120 = v219;
  if ((*(v222 + 48))(v117, 1, v219) == 1)
  {
    sub_218E728E8(v117, sub_218D51CC0);
    goto LABEL_20;
  }

  (*(v119 + 32))(v192, v117, v120);
  v121 = v223;
  v122 = v174;
  sub_219BE7564();
  (*(v121 + 56))(v122, 0, 1, v116);
  v123 = sub_219BE6A34();
  result = sub_218E728E8(v122, sub_218E83280);
  if (v123 < 0xFFFFFFFF80000000)
  {
    goto LABEL_32;
  }

  if (v123 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v124 = v167;
  sub_219BE0434();
  v125 = swift_allocObject();
  *(v125 + 16) = v242;
  v232(v125 + v236, v238, v239);
  sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v126 = v222;
  v127 = v120;
  v128 = v169;
  sub_219BDCCC4();

  (*(v168 + 8))(v124, v128);
  (*(v126 + 8))(v192, v127);
LABEL_20:
  v129 = v233;
  v130 = [v233 respondsToSelector_];
  v131 = v220;
  v132 = v188;
  if (v130)
  {
    v133 = [v129 parentIssue];
    if (v133)
    {
      v134 = v155;
      v228 = v133;
      sub_21934C4BC();
      v135 = swift_allocObject();
      *(v135 + 16) = v242;
      v136 = v238;
      v137 = v232;
      v232(v135 + v236, v238, v239);
      sub_218E7283C(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
      v138 = v157;
      sub_219BDCCC4();

      (*(v156 + 8))(v134, v138);
      v139 = v158;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v159 + 8))(v139, v160);
      v140 = v161;
      sub_219BDFFA4();
      v141 = swift_allocObject();
      *(v141 + 16) = v242;
      v137(v141 + v236, v136, v239);
      sub_218E7283C(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
      v142 = v163;
      sub_219BDCCC4();
      v131 = v220;

      (*(v162 + 8))(v140, v142);
    }
  }

  sub_218E83700(v185, v131, sub_218B59134);
  v143 = v184;
  if ((*(v184 + 48))(v131, 1, v221) == 1)
  {
    sub_218E728E8(v131, sub_218B59134);
  }

  else
  {
    v144 = v170;
    v145 = v221;
    (*(v143 + 32))(v170, v131, v221);
    v146 = swift_allocObject();
    *(v146 + 16) = v242;
    v232(v146 + v236, v238, v239);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v143 + 8))(v144, v145);
  }

  v147 = v186;
  v148 = v187;
  sub_219BF6804();
  if ((*(v148 + 48))(v147, 1, v132) == 1)
  {
    sub_218E728E8(v147, sub_218BD3B80);
  }

  else
  {
    v149 = v171;
    (*(v148 + 32))(v171, v147, v132);
    v150 = swift_allocObject();
    *(v150 + 16) = v242;
    v232(v150 + v236, v238, v239);
    sub_218E7283C(&unk_280EE86A0, 255, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v148 + 8))(v149, v132);
  }

  sub_219BE0834();
  v151 = v189;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE82C0, 255, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v152 = *(v190 + 8);
  v153 = v191;
  v152(v151, v191);
  sub_219BE7574();
  v243[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v243);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v152(v151, v153);
  return sub_218806FD0(v243);
}

uint64_t sub_218E74DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v102 = a6;
  v97 = a5;
  v117 = a4;
  v122 = a3;
  v108 = sub_219BDBD34();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDF8A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE09E4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BDF104();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BDF1A4();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BDFCE4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDBD64();
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x28223BE20](v14);
  v111 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDFFB4();
  v115 = *(v16 - 8);
  v116 = v16;
  MEMORY[0x28223BE20](v16);
  v114 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE1714();
  v19 = *(v18 - 8);
  v109 = v18;
  v110 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE16D4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E83700(a2, v24, sub_218B58D58);
  v29 = (*(v26 + 48))(v24, 1, v25);
  v30 = &unk_219C09000;
  v125 = a1;
  if (v29 == 1)
  {
    sub_218E728E8(v24, sub_218B58D58);
    v128 = *MEMORY[0x277CEAD18];
    v126 = 0x8000000219CFCEC0;
  }

  else
  {
    (*(v26 + 32))(v28, v24, v25);
    sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v31 = *(sub_219BDCD44() - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v128 = *MEMORY[0x277CEAD18];
    (*(v31 + 104))(v33 + v32);
    v126 = 0x8000000219CFCEC0;
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    v30 = &unk_219C09000;
    sub_219BDCCC4();

    (*(v26 + 8))(v28, v25);
  }

  v34 = sub_219BF06B4();
  sub_21934C4BC();

  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v121 = v35;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = v39 + *(v37 + 72);
  v41 = swift_allocObject();
  v127 = v30[186];
  *(v41 + 16) = v127;
  v42 = *(v37 + 104);
  v42(v41 + v39, v128, v36);
  sub_218E7283C(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
  v43 = v109;
  sub_219BDCCC4();

  (*(v110 + 8))(v21, v43);
  v44 = v111;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v112 + 8))(v44, v113);
  v45 = v114;
  sub_219BDFFA4();
  v123 = v38;
  v124 = v40;
  v46 = v37 + 104;
  v47 = swift_allocObject();
  *(v47 + 16) = v127;
  v120 = v39;
  v48 = v36;
  v49 = v42;
  v42(v47 + v39, v128, v36);
  sub_218E7283C(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
  v50 = v116;
  sub_219BDCCC4();

  (*(v115 + 8))(v45, v50);
  sub_218E82FA4();
  v52 = v51;
  sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v54 = v48;
    v55 = v89;
    sub_219BDFCD4();
    v56 = swift_allocObject();
    v116 = v52;
    *(v56 + 16) = v127;
    v57 = v120;
    v58 = v128;
    v118 = v46;
    v119 = v49;
    v49(v56 + v120, v128, v54);
    sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
    v59 = v126;
    v60 = v91;
    sub_219BDCCC4();

    (*(v90 + 8))(v55, v60);
    v61 = sub_219BF0674();
    v62 = v58;
    v128 = v58;
    v126 = v59;
    v63 = v93;
    sub_219BF6AC4();

    v64 = swift_allocObject();
    *(v64 + 16) = v127;
    v88 = v54;
    v119(v64 + v57, v62, v54);
    sub_218E7283C(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
    v65 = v92;
    sub_219BDCCC4();

    (*(v94 + 8))(v63, v65);
    v115 = *(v97 + 88);
    v66 = sub_219BF06B4();
    v67 = [v66 sourceChannel];

    v68 = v95;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v69 = swift_allocObject();
    *(v69 + 16) = v127;
    v70 = v128;
    v119(v69 + v120, v128, v54);
    sub_218E7283C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v71 = v98;
    sub_219BDCCC4();

    (*(v96 + 8))(v68, v71);
    v72 = sub_219BF06B4();
    v73 = [v72 sourceChannel];

    v74 = v99;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v75 = swift_allocObject();
    *(v75 + 16) = v127;
    v77 = v119;
    v76 = v120;
    v78 = v70;
    v79 = v88;
    v119(v75 + v120, v78, v88);
    sub_218E7283C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v80 = v101;
    sub_219BDCCC4();

    (*(v100 + 8))(v74, v80);
    v81 = v103;
    sub_219BDF894();
    v82 = swift_allocObject();
    *(v82 + 16) = v127;
    v77(v82 + v76, v128, v79);
    sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
    v83 = v105;
    sub_219BDCCC4();

    (*(v104 + 8))(v81, v83);
    sub_219BE0274();
    v84 = v106;
    sub_219BE75A4();
    sub_218E7283C(&unk_280EE8460, 255, MEMORY[0x277D2E418]);
    sub_219BDCC64();
    v85 = *(v107 + 8);
    v86 = v108;
    v85(v84, v108);
    sub_219BE7574();
    sub_219BDCC74();
    return (v85)(v84, v86);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E75EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a5;
  v89 = a4;
  v111 = a3;
  v119 = a1;
  v94 = sub_219BDBD34();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BDF4A4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE16D4();
  v107 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE0444();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E83280(0);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x28223BE20](v15);
  v100 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v102 = *(v17 - 8);
  v103 = v17;
  MEMORY[0x28223BE20](v17);
  v99 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v19 - 8);
  v101 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v110 = v21;
  v106 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v95 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDFCE4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDB954();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDF464();
  v87 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1044();
  sub_219BDB804();
  (*(v28 + 8))(v30, v27);
  sub_219BDF454();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = v34;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v115 = *(v37 + 80);
  v116 = v38;
  v40 = swift_allocObject();
  v112 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v42 = *(v37 + 104);
  v41 = v37 + 104;
  v114 = *MEMORY[0x277CEAD18];
  v118 = v36;
  v113 = v42;
  v42(v40 + v39);
  sub_218E7283C(&qword_280EE87C0, 255, MEMORY[0x277D2DAA8]);
  v117 = "Unknown enum case.";
  v86 = v33;
  v88 = v31;
  sub_219BDCCC4();

  sub_218E82FA4();
  v44 = v43;
  v45 = sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v45;
  sub_219BDFCD4();
  v109 = v35;
  v47 = swift_allocObject();
  *(v47 + 16) = v112;
  v83 = v39;
  v108 = v41;
  v113(v47 + v39, v114, v118);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  sub_219BDCCC4();

  (*(v24 + 8))(v26, v23);
  v48 = v99;
  sub_219BE7594();
  v49 = v100;
  sub_219BE7564();
  v50 = v105;
  sub_219BE5F84();
  v51 = v104;
  (*(v104 + 8))(v49, v50);
  v52 = v101;
  v53 = v103;
  sub_219BEB244();

  (*(v102 + 8))(v48, v53);
  v54 = v106;
  v55 = v110;
  v56 = (*(v106 + 48))(v52, 1, v110);
  v84 = v44;
  if (v56 != 1)
  {
    (*(v54 + 32))(v95, v52, v55);
    v62 = v82;
    sub_219BE7564();
    (*(v51 + 56))(v62, 0, 1, v50);
    v63 = sub_219BE6A34();
    result = sub_218E728E8(v62, sub_218E83280);
    v60 = v107;
    if (v63 >= 0xFFFFFFFF80000000)
    {
      v57 = v98;
      v58 = v97;
      v59 = v96;
      if (v63 <= 0x7FFFFFFF)
      {
        v64 = v77;
        sub_219BE0434();
        v61 = v83;
        v65 = swift_allocObject();
        *(v65 + 16) = v112;
        v113(v65 + v61, v114, v118);
        sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
        v66 = v79;
        sub_219BDCCC4();

        (*(v78 + 8))(v64, v66);
        (*(v54 + 8))(v95, v110);
        goto LABEL_8;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_218E728E8(v52, sub_218D51CC0);
  v57 = v98;
  v58 = v97;
  v59 = v96;
  v60 = v107;
  v61 = v83;
LABEL_8:
  v67 = v85;
  sub_218E83700(v89, v85, sub_218B58D58);
  if ((*(v60 + 48))(v67, 1, v59) == 1)
  {
    sub_218E728E8(v67, sub_218B58D58);
  }

  else
  {
    v69 = v80;
    (*(v60 + 32))(v80, v67, v59);
    v70 = swift_allocObject();
    *(v70 + 16) = v112;
    v113(v70 + v61, v114, v118);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v60 + 8))(v69, v59);
  }

  v68 = v90;
  sub_218E83700(v91, v90, sub_218B59134);
  if ((*(v58 + 48))(v68, 1, v57) == 1)
  {
    sub_218E728E8(v68, sub_218B59134);
  }

  else
  {
    v71 = v81;
    (*(v58 + 32))(v81, v68, v57);
    v72 = swift_allocObject();
    *(v72 + 16) = v112;
    v113(v72 + v61, v114, v118);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v58 + 8))(v71, v57);
  }

  sub_219BE08D4();
  v73 = v92;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE82B0, 255, MEMORY[0x277D2E8B8]);
  sub_219BDCC64();
  v74 = *(v93 + 8);
  v75 = v94;
  v74(v73, v94);
  sub_219BE7574();
  sub_219BDCC74();
  v74(v73, v75);
  return (*(v87 + 8))(v86, v88);
}

uint64_t sub_218E76F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v131 = a5;
  v146 = a4;
  v160 = a1;
  v161 = a3;
  v130 = sub_219BDBD34();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v7 - 8);
  v127 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDF4A4();
  v132 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v122 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E834A0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A830(0);
  MEMORY[0x28223BE20](v14 - 8);
  v112 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BDF474();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v110 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BE0444();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E83280(0);
  MEMORY[0x28223BE20](v20 - 8);
  v124 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870();
  v144 = *(v22 - 8);
  v145 = v22;
  MEMORY[0x28223BE20](v22);
  v140 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v143 = v24;
  v142 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v139 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0();
  MEMORY[0x28223BE20](v26 - 8);
  v141 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v147 = v28;
  v149 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v125 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v30 - 8);
  v136 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BE16D4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v123 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDFCE4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BF1DF4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDF674();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDA84();
  sub_219BF1DB4();
  (*(v35 + 8))(v37, v34);
  v111 = a2;
  sub_219BEDAC4();
  sub_219BDF664();
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v43 = v42;
  v44 = sub_219BDCD44();
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v156 = *(v45 + 72);
  v153 = v43;
  v48 = swift_allocObject();
  v157 = xmmword_219C09BA0;
  *(v48 + 16) = xmmword_219C09BA0;
  v49 = *(v45 + 104);
  v158 = *MEMORY[0x277CEAD18];
  v154 = v44;
  v155 = v49;
  v152 = v45 + 104;
  v49(v48 + v47);
  sub_218E7283C(&unk_280EE86E0, 255, MEMORY[0x277D2DC98]);
  v159 = "Unknown enum case.";
  sub_219BDCCC4();

  (*(v39 + 8))(v41, v38);
  sub_218E82FA4();
  v51 = v50;
  v52 = sub_218E7283C(&qword_280ED5CC8, 255, type metadata accessor for MagazineFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v113 = v52;
  v151 = v51;
  v54 = v133;
  sub_219BDFCD4();
  v150 = v46;
  v55 = swift_allocObject();
  *(v55 + 16) = v157;
  v57 = v154;
  v56 = v155;
  v58 = (v46 + 32) & ~v46;
  v155(v55 + v47, v158, v154);
  sub_218E7283C(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v59 = v135;
  sub_219BDCCC4();

  (*(v134 + 8))(v54, v59);
  v60 = v136;
  sub_218E83700(v146, v136, sub_218B58D58);
  v61 = v137;
  v62 = v138;
  v63 = (*(v137 + 48))(v60, 1, v138);
  v126 = v58;
  if (v63 == 1)
  {
    sub_218E728E8(v60, sub_218B58D58);
  }

  else
  {
    v64 = v60;
    v65 = v123;
    (*(v61 + 32))(v123, v64, v62);
    v66 = swift_allocObject();
    *(v66 + 16) = v157;
    v56(v66 + v58, v158, v57);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v61 + 8))(v65, v62);
  }

  v67 = v147;
  v68 = v149;
  v69 = v139;
  sub_219BE7594();
  v70 = v140;
  sub_219BE7564();
  v71 = v145;
  sub_219BE5F84();
  v72 = v144;
  (*(v144 + 8))(v70, v71);
  v73 = v141;
  v74 = v143;
  sub_219BEB244();

  (*(v142 + 8))(v69, v74);
  v75 = (*(v68 + 48))(v73, 1, v67);
  v76 = v126;
  if (v75 != 1)
  {
    v81 = *(v68 + 32);
    v82 = v125;
    v81(v125, v73, v67);
    v83 = v124;
    sub_219BE7564();
    (*(v72 + 56))(v83, 0, 1, v71);
    v84 = sub_219BE6A34();
    result = sub_218E728E8(v83, sub_218E83280);
    v78 = v148;
    v85 = v155;
    if (v84 >= 0xFFFFFFFF80000000)
    {
      if (v84 <= 0x7FFFFFFF)
      {
        v86 = v114;
        sub_219BE0434();
        v87 = swift_allocObject();
        *(v87 + 16) = v157;
        v85(v87 + v76, v158, v154);
        sub_218E7283C(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
        v88 = v116;
        sub_219BDCCC4();

        (*(v115 + 8))(v86, v88);
        v89 = v117;
        sub_219BE6934();
        v90 = v82;
        v91 = v118;
        sub_2193AEC54(v118);
        sub_218E728E8(v89, type metadata accessor for MagazineFeedSectionDescriptor);
        v92 = type metadata accessor for MagazineFeedGroup();
        if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
        {
          (*(v149 + 8))(v90, v67);
          sub_218E728E8(v91, sub_218E834A0);
          v77 = v130;
          v93 = v119;
        }

        else
        {
          v94 = v112;
          sub_218CDCFC4(v112);
          v95 = v94;
          sub_218E728E8(v91, type metadata accessor for MagazineFeedGroup);
          v96 = sub_219BF1904();
          v97 = *(v96 - 8);
          v98 = (*(v97 + 48))(v95, 1, v96);
          v77 = v130;
          v93 = v119;
          if (v98 != 1)
          {
            sub_219BEDA94();
            sub_219BF17B4();

            (*(v97 + 8))(v95, v96);
            v105 = v120;
            v106 = v121;
            if ((*(v120 + 48))(v93, 1, v121) != 1)
            {
              v107 = v110;
              (*(v105 + 32))();
              v108 = swift_allocObject();
              *(v108 + 16) = v157;
              v155(v108 + v76, v158, v154);
              sub_218E7283C(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
              sub_219BDCCC4();

              (*(v105 + 8))(v107, v106);
              (*(v149 + 8))(v125, v147);
              v78 = v148;
              v79 = v132;
              v80 = v131;
              goto LABEL_16;
            }

            (*(v149 + 8))(v125, v147);
            v78 = v148;
            goto LABEL_15;
          }

          (*(v149 + 8))(v125, v67);
          sub_218E728E8(v95, sub_218B5A830);
        }

        (*(v120 + 56))(v93, 1, 1, v121);
LABEL_15:
        v79 = v132;
        v80 = v131;
        sub_218E728E8(v93, sub_218B58F30);
        goto LABEL_16;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_218E728E8(v73, sub_218D51CC0);
  v77 = v130;
  v78 = v148;
  v79 = v132;
  v80 = v131;
LABEL_16:
  v99 = v80;
  v100 = v127;
  sub_218E83700(v99, v127, sub_218B59134);
  if ((*(v79 + 48))(v100, 1, v78) == 1)
  {
    sub_218E728E8(v100, sub_218B59134);
  }

  else
  {
    v101 = v122;
    (*(v79 + 32))(v122, v100, v78);
    v102 = swift_allocObject();
    *(v102 + 16) = v157;
    v155(v102 + v76, v158, v154);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v79 + 8))(v101, v78);
  }

  sub_219BE0A64();
  v103 = v128;
  sub_219BE75A4();
  sub_218E7283C(&qword_280EE8230, 255, MEMORY[0x277D2EA20]);
  sub_219BDCC64();
  v104 = *(v129 + 8);
  v104(v103, v77);
  sub_219BE7574();
  sub_219BDCC74();
  return (v104)(v103, v77);
}

uint64_t sub_218E78588(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v74 = a5;
  v75 = a6;
  v70 = a4;
  LODWORD(v83) = a3;
  v82 = a2;
  v86 = a1;
  v79 = sub_219BDBD34();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDF3E4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDFDE4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE16D4();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BDF4A4();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v54 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BDF8A4();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E72884(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v84 = v19;
  v20 = sub_219BDCD44();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v87 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v85 = *MEMORY[0x277CEAD18];
  v26 = *(v21 + 104);
  v26(v25 + v24);
  sub_219BDEF94();
  sub_218E7283C(&qword_280EE8910, 255, MEMORY[0x277D2D788]);
  sub_219BDCCC4();

  sub_219BDF894();
  v82 = v23;
  v83 = v22;
  v27 = v85;
  v28 = swift_allocObject();
  *(v28 + 16) = v87;
  v68 = v20;
  v62 = v21 + 104;
  v81 = v26;
  (v26)(v28 + v24, v27, v20);
  sub_218E7283C(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v80 = "Unknown enum case.";
  v29 = v63;
  sub_219BDCCC4();
  v30 = v67;
  v31 = v65;

  v32 = v66;
  (*(v64 + 8))(v18, v29);
  sub_218E83700(v70, v30, sub_218B59134);
  v33 = (*(v32 + 48))(v30, 1, v31);
  v69 = v24;
  if (v33 == 1)
  {
    sub_218E728E8(v30, sub_218B59134);
    v34 = v68;
  }

  else
  {
    v35 = v54;
    (*(v32 + 32))(v54, v30, v31);
    v36 = swift_allocObject();
    *(v36 + 16) = v87;
    v37 = v36 + v24;
    v38 = v68;
    v81(v37, v27, v68);
    sub_218E7283C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v32 + 8))(v35, v31);
    v34 = v38;
  }

  v39 = v71;
  sub_218E83700(v74, v71, sub_218B58D58);
  v41 = v72;
  v40 = v73;
  if ((*(v72 + 48))(v39, 1, v73) == 1)
  {
    v42 = v34;
    sub_218E728E8(v39, sub_218B58D58);
    v43 = v69;
  }

  else
  {
    v44 = v55;
    (*(v41 + 32))(v55, v39, v40);
    v43 = v69;
    v45 = swift_allocObject();
    *(v45 + 16) = v87;
    v42 = v34;
    v81(v45 + v43, v85, v34);
    sub_218E7283C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v41 + 8))(v44, v40);
  }

  if (sub_219BF0A34())
  {
    (*(v57 + 104))(v56, *MEMORY[0x277D2DA78], v58);
    v46 = v59;
    sub_219BDFDD4();
    v47 = swift_allocObject();
    *(v47 + 16) = v87;
    v81(v47 + v43, v85, v42);
    sub_218E7283C(&unk_27CC18730, 255, MEMORY[0x277D2E148]);
    v48 = v61;
    sub_219BDCCC4();

    (*(v60 + 8))(v46, v48);
  }

  sub_219BE0494();
  sub_218E82FA4();
  v49 = v76;
  sub_219BE75A4();
  sub_218E7283C(&unk_280EE83E0, 255, MEMORY[0x277D2E560]);
  sub_219BDCC64();
  v50 = *(v77 + 8);
  v51 = v79;
  v50(v49, v79);
  sub_219BE7574();
  sub_219BDCC74();
  return (v50)(v49, v51);
}